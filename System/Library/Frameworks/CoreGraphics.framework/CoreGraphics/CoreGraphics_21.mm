void sub_183F92768(uint64_t a1, uint64_t *a2, char **a3)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  if (*a1 <= 1)
  {
    if (!v7)
    {
      v61 = *v8;
      v62 = *(v8 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8, &qword_184398528);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1843982F0;
      *(inited + 32) = v62;
      *(inited + 40) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0, &unk_184398530);
      v64 = swift_allocObject();
      v65 = _swift_stdlib_malloc_size(v64);
      v66 = v65 - 40;
      if (v65 < 40)
      {
        v66 = v65 - 33;
      }

      v64[2] = v66 >> 3;
      v64[3] = 0;
      v64[4] = 0;
      sub_183FBA808(v64 + 2, v64 + 5, 2uLL, inited);
      swift_setDeallocating();
      *a2 = v64;
      *(a2 + 8) = 0;

      return;
    }

    if (v7 != 1)
    {
      return;
    }

    v12 = *a2;
    if (!*a2)
    {
      goto LABEL_88;
    }

    v13 = v12[3];
    v14 = v13 - 2;
    if (__OFSUB__(v13, 2))
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v14 < 0)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v14 >= v13)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v13 - 1 >= v13)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v16 = *v8;
    v15 = *(v8 + 8);
    v17 = v12 + 5;
    v18 = v12[4];
    v19 = v12[2];
    if (v18 + v14 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = *&v17[v18 + v14 - v20];
    v22 = v18 + v14 + 1;
    if (v22 < v19)
    {
      v19 = 0;
    }

    v23 = *&v17[v22 - v19];
    v24 = ((*(a2 + 8) ^ v14) & 1) == 0;
    if ((*(a2 + 8) ^ v14))
    {
      v25 = *&v17[v18 + v14 - v20];
    }

    else
    {
      v25 = *&v17[v22 - v19];
    }

    goto LABEL_83;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        return;
      }

      v9 = *a2;
      if (*a2)
      {
        v8 = v9[3];
        v10 = v8 - 1;
        if (!__OFSUB__(v8, 1))
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            if (v10 < 4)
            {
              v11 = 1;
LABEL_89:
              sub_183F92DAC();
              v59 = swift_allocError();
              *v60 = v11;
              swift_willThrow();

LABEL_90:
              *a2 = 0;
              *(a2 + 8) = 0;

              return;
            }

            if (v8 >= 1)
            {
              if (v8 != 1)
              {
                v67 = v9 + 5;
                v68 = v9[4];
                v69 = v9[2];
                if (v68 >= v69)
                {
                  v70 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v71 = *&v67[v68 - v70];
                if (v68 + 1 >= v69)
                {
                  v72 = v69;
                }

                else
                {
                  v72 = 0;
                }

                v73 = v68 + 1 - v72;
                if (a2[1])
                {
                  v74 = v71;
                }

                else
                {
                  v74 = *&v67[v73];
                }

                if (a2[1])
                {
                  v71 = *&v67[v73];
                }

                v75 = v8 + v68;
                if (v75 - 2 >= v69)
                {
                  v76 = v69;
                }

                else
                {
                  v76 = 0;
                }

                v77 = v75 - 2 - v76;
                v78 = *&v67[v77];
                v79 = v75 - 1;
                if (v79 < v69)
                {
                  v69 = 0;
                }

                v80 = v79 - v69;
                v81 = v8 ^ *(a2 + 8);
                if (v81)
                {
                  v82 = *&v67[v77];
                }

                else
                {
                  v82 = *&v67[v80];
                }

                if (v81)
                {
                  v78 = *&v67[v80];
                }

                if (v82 == v74)
                {
                  v83 = a3;
                  if (v78 != v71)
                  {
                    sub_183F911D4(v71);
                  }

LABEL_127:
                  if (*a2)
                  {
                    sub_183F91488();
                    v3 = *a2;
                    if (*a2)
                    {
                      v5 = *(a2 + 8);
                      v84 = v83;
                      v4 = *v83;

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v8 = v84;
                      *v84 = v4;
                      if (isUniquelyReferenced_nonNull_native)
                      {
LABEL_130:
                        v86 = *(v4 + 2);
                        v87 = *(v4 + 3);
                        v88 = v86 + 1;
                        if (v86 >= v87 >> 1)
                        {
                          v96 = v86 + 1;
                          v91 = v8;
                          v92 = v4;
                          v93 = *(v4 + 2);
                          v94 = sub_183F81D24((v87 > 1), v86 + 1, 1, v92);
                          v86 = v93;
                          v88 = v96;
                          v4 = v94;
                          *v91 = v94;
                        }

                        *(v4 + 2) = v88;
                        v89 = &v4[16 * v86];
                        *(v89 + 4) = v3;
                        v89[40] = v5 & 1;
                        goto LABEL_90;
                      }

LABEL_150:
                      v95 = v8;
                      v90 = sub_183F81D24(0, *(v4 + 2) + 1, 1, v4);
                      v8 = v95;
                      v4 = v90;
                      *v95 = v90;
                      goto LABEL_130;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
                  return;
                }

                if (v78 == v71)
                {
                  v83 = a3;
                  sub_183F912E8(v74);
                  goto LABEL_127;
                }

LABEL_133:
                v11 = 2;
                goto LABEL_89;
              }

LABEL_149:
              __break(1u);
              goto LABEL_150;
            }

LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          goto LABEL_140;
        }

        goto LABEL_136;
      }

LABEL_88:
      v11 = 3;
      goto LABEL_89;
    }

    v41 = *a2;
    if (!*a2)
    {
      goto LABEL_88;
    }

    v42 = v41[3];
    v43 = v42 - 2;
    if (!__OFSUB__(v42, 2))
    {
      if (v43 < 0)
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v43 >= v42)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v44 = v41[4];
      v45 = v41[2];
      if (v44 + v43 >= v45)
      {
        v46 = v41[2];
      }

      else
      {
        v46 = 0;
      }

      if (v42 - 1 >= v42)
      {
        goto LABEL_146;
      }

      v47 = v44 + v43 - v46;
      v48 = v41 + 5;
      v21 = *&v48[v47];
      v49 = v44 + v42 - 1;
      if (v49 < v45)
      {
        v45 = 0;
      }

      v50 = v49 - v45;
      v23 = *&v48[v50];
      v36 = v43 ^ *(a2 + 8);
      if (v36)
      {
        v25 = *&v48[v47];
      }

      else
      {
        v25 = *&v48[v50];
      }

      v51 = *(v8 + 16);
      v16 = *(v8 + 32);
      v15 = *(v8 + 40);
      if (v25 != *v8 || *v8 != v51 || v51 != v16)
      {
        v54 = *(v8 + 24);
        v55 = *(v8 + 8);
        v56 = (v36 & 1) != 0 ? *&v48[v50] : *&v48[v47];
        v57 = v56 == v55 && v55 == v54;
        if (!v57 || v54 != v15)
        {
          return;
        }
      }

      goto LABEL_82;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v26 = *a2;
  if (!*a2)
  {
    goto LABEL_88;
  }

  v27 = v26[3];
  v28 = v27 - 2;
  if (__OFSUB__(v27, 2))
  {
    __break(1u);
    goto LABEL_135;
  }

  if (v28 < 0)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v28 >= v27)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v29 = v26[4];
  v30 = v26[2];
  if (v29 + v28 >= v30)
  {
    v31 = v26[2];
  }

  else
  {
    v31 = 0;
  }

  if (v27 - 1 >= v27)
  {
    goto LABEL_145;
  }

  v32 = v29 + v28 - v31;
  v33 = v26 + 5;
  v21 = *&v33[v32];
  v34 = v29 + v27 - 1;
  if (v34 < v30)
  {
    v30 = 0;
  }

  v35 = v34 - v30;
  v23 = *&v33[v35];
  v36 = v28 ^ *(a2 + 8);
  if (v36)
  {
    v25 = *&v33[v32];
  }

  else
  {
    v25 = *&v33[v35];
  }

  v16 = *(v8 + 16);
  v15 = *(v8 + 24);
  v37 = v25 == *v8 && *v8 == v16;
  if (v37 || ((v38 = *(v8 + 8), (v36 & 1) == 0) ? (v39 = *&v33[v32]) : (v39 = *&v33[v35]), v39 == v38 ? (v40 = v38 == v15) : (v40 = 0), v40))
  {
LABEL_82:
    v24 = (v36 & 1) == 0;
LABEL_83:
    if (!v24)
    {
      v21 = v23;
    }

    if (v25 != v16)
    {
      if (v21 == v15)
      {
        sub_183F912E8(v16);
        return;
      }

      goto LABEL_133;
    }

    if (v21 != v15)
    {
      sub_183F911D4(v15);
    }
  }
}

void *sub_183F92D0C(void *result, uint64_t a2, double a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_183F92DAC()
{
  result = qword_1EA8545D8;
  if (!qword_1EA8545D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Orthogon.PathError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Orthogon.PathError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Orthogon.Vertical(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Orthogon.Vertical(uint64_t result, int a2, int a3)
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

unint64_t sub_183F92FCC()
{
  result = qword_1EA8545E0;
  if (!qword_1EA8545E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545E0);
  }

  return result;
}

unint64_t sub_183F93024()
{
  result = qword_1EA8545E8;
  if (!qword_1EA8545E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545E8);
  }

  return result;
}

unint64_t sub_183F9308C()
{
  result = qword_1EA8545F0;
  if (!qword_1EA8545F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545F0);
  }

  return result;
}

CGPoint __swiftcall CGPoint.init(x:y:)(Swift::Int x, Swift::Int y)
{
  v2 = x;
  v3 = y;
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint_optional __swiftcall CGPoint.init(dictionaryRepresentation:)(CFDictionaryRef dictionaryRepresentation)
{
  v7 = *MEMORY[0x1E69E9840];
  point.x = 0.0;
  point.y = 0.0;
  v2 = CGPointMakeWithDictionaryRepresentation(dictionaryRepresentation, &point);

  if (v2)
  {
    x_low = LOBYTE(point.x);
  }

  else
  {
    x_low = 0;
  }

  result.value.y = v4;
  result.value.x = v3;
  result.is_nil = x_low;
  return result;
}

uint64_t CGPoint.customMirror.getter(double a1, double a2)
{
  v4 = sub_184390378();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8, &qword_1843985A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  *v17 = a1;
  *&v17[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C0, &qword_1843985B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1843982F0;
  *(v11 + 32) = 120;
  *(v11 + 40) = 0xE100000000000000;
  v12 = MEMORY[0x1E69E7DE0];
  *(v11 + 48) = a1;
  *(v11 + 72) = v12;
  *(v11 + 80) = 121;
  *(v11 + 88) = 0xE100000000000000;
  *(v11 + 120) = v12;
  *(v11 + 96) = a2;
  v13 = *MEMORY[0x1E69E75B8];
  v14 = sub_184390368();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v10, v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E75D8], v4);
  type metadata accessor for CGPoint(0);
  return sub_184390398();
}

void CGPoint.customPlaygroundQuickLook.getter(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 11;
}

__n128 sub_183F93404@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[2].n128_u8[0] = 11;
  return result;
}

uint64_t CGPoint.debugDescription.getter(uint64_t a1, double a2, double a3)
{
  v3 = sub_18438FDD8();
  MEMORY[0x1865EC630](v3);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v4 = sub_18438FDD8();
  MEMORY[0x1865EC630](v4);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_183F934AC(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1865ECC40](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1865ECC40](*&v3);
}

uint64_t sub_183F934FC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_184390358();
  sub_183F934AC(v1, v2);
  return sub_184390338();
}

uint64_t sub_183F93554()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1843902E8();
  sub_183F934AC(v1, v2);
  return sub_184390348();
}

BOOL CGPoint.isNearlyEqual(to:tolerance:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a4 == a1)
  {
    if (a5 == a2)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a4, a1);
    if (a5 == a2)
    {
      if (a4 - a1 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a5, a2);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a4);
  v9 = fabs(a5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a1);
  v11 = fabs(a2);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v10 <= 1.0)
  {
    v10 = 1.0;
  }

  return v6 <= v10 * a3;
}

Swift::Bool __swiftcall CGPointNearlyEqualToPoint(_:_:)(CGPoint a1, CGPoint a2)
{
  if (qword_1EA853EA8 != -1)
  {
    y = a2.y;
    x = a2.x;
    v11 = a1.y;
    v12 = a1.x;
    swift_once();
    a1.x = v12;
    a1.y = v11;
    a2.x = x;
    a2.y = y;
  }

  if (a1.x == a2.x)
  {
    if (a1.y == a2.y)
    {
      return 1;
    }

    v3 = 0.0;
  }

  else
  {
    v3 = vabdd_f64(a1.x, a2.x);
    if (a1.y == a2.y)
    {
      if (a1.x - a2.x == 0.0)
      {
        v3 = 0.0;
      }

      goto LABEL_13;
    }
  }

  v4 = vabdd_f64(a1.y, a2.y);
  if (v3 <= v4)
  {
    v3 = v4;
  }

LABEL_13:
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = fabs(a1.x);
  v6 = fabs(a1.y);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = fabs(a2.x);
  v8 = fabs(a2.y);
  if (v7 <= v8)
  {
    v7 = v8;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  if (v5 <= 1.0)
  {
    v5 = 1.0;
  }

  return v3 <= v5 * *&qword_1EA853EB0;
}

BOOL CGPointNearlyEqualToPointWithTolerance(_:_:_:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a1, a3);
    if (a2 == a4)
    {
      if (a1 - a3 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a2, a4);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a1);
  v9 = fabs(a2);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a3);
  v11 = fabs(a4);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 <= v10)
  {
    v8 = v10;
  }

  if (v8 <= 1.0)
  {
    v8 = 1.0;
  }

  return v6 <= v8 * a5;
}

unint64_t sub_183F9387C()
{
  result = qword_1EA8545F8;
  if (!qword_1EA8545F8)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545F8);
  }

  return result;
}

unint64_t sub_183F938D4(uint64_t a1)
{
  result = sub_183F9387C();
  *(a1 + 8) = result;
  return result;
}

uint64_t Region.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = (*v0 >> 52) & 0x7FFLL;
  v7 = *v0 & 0xFFFFFFFFFFFFFLL;
  if (v6 | v7)
  {
    v8 = *v0;
  }

  else
  {
    v8 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v8);
  if (v1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v1;
  }

  MEMORY[0x1865ECC40](*&v9);
  if (v2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v2;
  }

  MEMORY[0x1865ECC40](*&v10);
  if (v3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x1865ECC40](*&v11);
  v12 = *(v4 + 16);
  if (v6 == 2047 && v7 != 0)
  {
    MEMORY[0x1865ECC10](v12);
LABEL_21:
    v14 = *(v5 + 16);
    return MEMORY[0x1865ECC10](v14);
  }

  v14 = 2;
  if (!v12)
  {
    v12 = 2;
  }

  MEMORY[0x1865ECC10](v12);
  if (*(v4 + 16))
  {
    goto LABEL_21;
  }

  return MEMORY[0x1865ECC10](v14);
}

uint64_t Region.hashValue.getter()
{
  sub_1843902E8();
  Region.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F93A3C()
{
  sub_1843902E8();
  Region.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F93A9C()
{
  sub_1843902E8();
  Region.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F93AF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183F93B50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_183F93BB0()
{
  result = qword_1EA854600;
  if (!qword_1EA854600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854600);
  }

  return result;
}

uint64_t sub_183F93C10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if ((a3 & 1) == 0)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_22;
  }

  if (a2 < 2)
  {
    if (a2 != 1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_22;
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
    for (i = a2; i > 1; i -= i >> 1)
    {
      if (*(result + 8 * (v6 + (i >> 1))) <= a5)
      {
        v6 += i >> 1;
      }
    }

    if (v6 >= a2)
    {
      goto LABEL_14;
    }
  }

  if (*(result + 8 * v6) <= a5)
  {
    ++v6;
  }

LABEL_14:
  v9 = a2 - v6;
  v8 = v6;
  if (a2 - v6 >= 2)
  {
    do
    {
      v10 = v9 >> 1;
      v9 -= v9 >> 1;
      v11 = v8 + v10;
      if (*(result + 8 * v11) < a6)
      {
        v8 = v11;
      }
    }

    while (v9 > 1);
  }

  if (v8 < a2 && *(result + 8 * v8) < a6)
  {
    ++v8;
  }

LABEL_22:
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = v6;
  *(a4 + 40) = v8;
  return result;
}

uint64_t Region.isSuperset(of:)(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 32);
  v5 = *v1 & 0x7FF0000000000000;
  v6 = *v1 & 0xFFFFFFFFFFFFFLL;
  if (v6)
  {
    v7 = v5 == 0x7FF0000000000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = !v7 && *(v4 + 16) == 0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = *(v1 + 8);
  v17 = *(v1 + 16);
  v19 = *a1;
  v20 = *&v2 & 0x7FF0000000000000;
  v21 = *(v1 + 24);
  if ((*&v2 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v24 = *&v19 & 0xFFFFFFFFFFFFFLL;
    if (v5 == 0x7FF0000000000000 && v6)
    {
      if (!v24)
      {
        return 0;
      }
    }

    else if (!v24)
    {
      v23 = v16 < v17 || v21 < v14;
      goto LABEL_22;
    }

    return 1;
  }

  v22 = v16 < v17 || v7;
  if (v22)
  {
    return 0;
  }

  v23 = v21 < v14;
LABEL_22:
  if (v23 || v18 < v2 || v15 < v3)
  {
    return 0;
  }

  if (v8)
  {
    v28 = v3 <= v2;
    if (v15 > v18)
    {
      v28 = 0;
    }

    if (v17 > v14)
    {
      v28 = 0;
    }

    result = v16 <= v21 && v28;
    if (v20 == 0x7FF0000000000000 && (result & 1) == 0)
    {
      return (*&v19 & 0xFFFFFFFFFFFFFLL) != 0;
    }
  }

  else
  {
    v41 = *v1;
    v42 = v18;
    v43 = v17;
    v44 = v21;
    v45 = v4;
    v46 = v13;
    v47 = v12;
    v29 = sub_183FA42A4(0, v14, v16);
    if (*(v4 + 16))
    {
      v31 = 1;
    }

    else
    {
      v31 = v7;
    }

    if (v31)
    {
      v32 = (*&v19 & 0xFFFFFFFFFFFFFLL) != 0 && v20 == 0x7FF0000000000000;
      v33 = *(v9 + 16);
      if (v32 || v33)
      {
        sub_183F9AD98(v4 + 32, v13 + 32, v12 + 32, v9 + 32, &v41, v33, 0, v10 + 32, *(v10 + 16), v11 + 32, *(v11 + 16), v29, v30);
        return LOBYTE(v41);
      }

      else
      {
        v41 = v2;
        v42 = v15;
        v43 = v14;
        v44 = v16;
        v38[0] = 0x200000002;
        sub_183F9AD98(v4 + 32, v13 + 32, v12 + 32, &v43, v40, 2, 0, v38, 2, &v41, 2, v29, v30);
        return v40[0];
      }
    }

    else
    {
      v34 = (*&v19 & 0xFFFFFFFFFFFFFLL) != 0 && v20 == 0x7FF0000000000000;
      v41 = v3;
      v42 = v18;
      v43 = v17;
      v44 = v21;
      *v40 = 0x200000002;
      v35 = *(v9 + 16);
      if (v34 || v35)
      {
        sub_183F9AD98(&v43, v40, &v41, v9 + 32, v38, v35, 0, v10 + 32, *(v10 + 16), v11 + 32, *(v11 + 16), v29, v30);
        return LOBYTE(v38[0]);
      }

      else
      {
        *v38 = v2;
        *&v38[1] = v15;
        *v39 = v14;
        *&v39[1] = v16;
        v37 = 0x200000002;
        sub_183F9AD98(&v43, v40, &v41, v39, &v36, 2, 0, &v37, 2, v38, 2, v29, v30);
        return v36;
      }
    }
  }

  return result;
}

uint64_t sub_183F94060(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    if (a1)
    {
      if (a2 >= 2)
      {
        v3 = 0;
        for (i = a2; i > 1; i -= i >> 1)
        {
          if (*(a1 + 8 * (v3 + (i >> 1))) < *&a3)
          {
            v3 += i >> 1;
          }
        }

        if (v3 >= a2)
        {
          return v3;
        }

        goto LABEL_27;
      }

      v3 = 0;
      if (a2 == 1)
      {
LABEL_27:
        if (*(a1 + 8 * v3) >= *&a3)
        {
          return v3;
        }

        else
        {
          return v3 + 1;
        }
      }

      return v3;
    }

    return 0;
  }

  if (a3 >= 0.0)
  {
    if (a2 < 2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      v3 = 0;
    }

    else
    {
      v3 = 0;
      for (j = a2; j > 1; j -= j >> 1)
      {
        if (*(a1 + 8 * (v3 + (j >> 1))) < 0.0)
        {
          v3 += j >> 1;
        }
      }

      if (v3 >= a2)
      {
        return v3;
      }
    }

    if (*(a1 + 8 * v3) < 0.0)
    {
      return v3 + 1;
    }

    return v3;
  }

  if (!a1)
  {
    return 0;
  }

  if (a2 < 2)
  {
    v3 = 0;
    if (a2 != 1)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    for (k = a2; k > 1; k -= k >> 1)
    {
      if (*(a1 + 8 * (v3 + (k >> 1))) > *&a3)
      {
        v3 += k >> 1;
      }
    }

    if (v3 >= a2)
    {
      return v3;
    }
  }

  if (*(a1 + 8 * v3) <= *&a3)
  {
    return v3;
  }

  else
  {
    return v3 + 1;
  }
}

uint64_t sub_183F94198(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    if (a1)
    {
      if (a2 >= 2)
      {
        v3 = 0;
        for (i = a2; i > 1; i -= i >> 1)
        {
          if (*(a1 + 8 * (v3 + (i >> 1))) <= *&a3)
          {
            v3 += i >> 1;
          }
        }

        if (v3 >= a2)
        {
          return v3;
        }

        goto LABEL_27;
      }

      v3 = 0;
      if (a2 == 1)
      {
LABEL_27:
        if (*(a1 + 8 * v3) > *&a3)
        {
          return v3;
        }

        else
        {
          return v3 + 1;
        }
      }

      return v3;
    }

    return 0;
  }

  if (a3 >= 0.0)
  {
    if (a2 < 2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      v3 = 0;
    }

    else
    {
      v3 = 0;
      for (j = a2; j > 1; j -= j >> 1)
      {
        if (*(a1 + 8 * (v3 + (j >> 1))) <= 0.0)
        {
          v3 += j >> 1;
        }
      }

      if (v3 >= a2)
      {
        return v3;
      }
    }

    if (*(a1 + 8 * v3) <= 0.0)
    {
      return v3 + 1;
    }

    return v3;
  }

  if (!a1)
  {
    return 0;
  }

  if (a2 < 2)
  {
    v3 = 0;
    if (a2 != 1)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    for (k = a2; k > 1; k -= k >> 1)
    {
      if (*(a1 + 8 * (v3 + (k >> 1))) >= *&a3)
      {
        v3 += k >> 1;
      }
    }

    if (v3 >= a2)
    {
      return v3;
    }
  }

  if (*(a1 + 8 * v3) < *&a3)
  {
    return v3;
  }

  else
  {
    return v3 + 1;
  }
}

uint64_t sub_183F942D0()
{
  v1 = v0[1];
  if (!v1)
  {
    result = 0;
    goto LABEL_7;
  }

  v2 = v0[2];
  v3 = __OFADD__(v1 - 1, v2);
  v4 = v1 - 1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v4))
  {
    v5 = v0[3];
    v7 = *(*v0 + 8 * (v1 - 1));
    v8 = v4;
    v5(&v9, &v7);
    result = v9;
LABEL_7:
    LOBYTE(v9) = v1 == 0;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

double sub_183F94370@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v25 - v12;
  v33 = vdupq_n_s64(0x7FF8000000000000uLL);
  v34 = v33;
  v27 = v33;
  v14 = MEMORY[0x1E69E7CC0];
  *&v35 = MEMORY[0x1E69E7CC0];
  *(&v35 + 1) = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v15 = *(v7 + 16);
  v26 = a1;
  v15(v9, a1, a2);
  sub_18438FD38();
  swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  if ((v30 & 1) == 0)
  {
    v19 = v28;
    v20 = v29;
    do
    {
      v21 = v27;
      v22 = v27;
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v19, 1), v19)).u32[0])
      {
        v23 = vdup_lane_s32(vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v20, 1), v20)), 0);
        v24.i64[0] = v23.i32[0];
        v24.i64[1] = v23.i32[1];
        v22 = vbslq_s8(v24, v19, v27);
        v21 = vbslq_s8(v24, v20, v27);
      }

      v30 = v14;
      v31 = v14;
      v32 = v14;
      v28 = v22;
      v29 = v21;
      Region.formUnion(_:)(&v28);

      sub_18438FF58();
      v19 = v28;
      v20 = v29;
    }

    while ((v30 & 1) == 0);
  }

  (*(v7 + 8))(v26, a2);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  v16 = v36;
  v17 = v34;
  *a4 = v33;
  *(a4 + 16) = v17;
  result = *&v35;
  *(a4 + 32) = v35;
  *(a4 + 48) = v16;
  return result;
}

void Region.formSymmetricDifference(_:)(uint64_t result)
{
  v3 = v1;
  v367 = *MEMORY[0x1E69E9840];
  v4 = *(result + 16);
  v360 = *result;
  v361 = v4;
  v362 = *(result + 32);
  v363 = *(result + 48);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(&v360 + 1);
  v9 = v360;
  v11 = *(v1 + 32);
  v12 = *v1 & 0x7FF0000000000000;
  v13 = *v1 & 0xFFFFFFFFFFFFFLL;
  if (v12 == 0x7FF0000000000000 && v13)
  {
    if ((~v360 & 0x7FF0000000000000) == 0 && (v360 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return;
    }

LABEL_5:
    sub_183F705CC(&v360, v1);
    sub_183F70628(&v360, &v356);
    return;
  }

  v14 = *(v11 + 16);
  v15 = v360;
  v16 = v360 & 0x7FF0000000000000;
  if ((v360 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v17 = v360 & 0xFFFFFFFFFFFFFLL;
    if (v12 == 0x7FF0000000000000 && v13)
    {
      if (v17)
      {
        return;
      }

      goto LABEL_5;
    }

    if (v17)
    {
      return;
    }
  }

  v353 = (v1 + 32);
  if (*(&v4 + 1) >= v7)
  {
    if (v8 < *&v4)
    {
      if (v14)
      {
        v27 = v14;
      }

      else
      {
        v27 = 2;
      }

      if (((v360 & 0xFFFFFFFFFFFFFLL) == 0 || v16 != 0x7FF0000000000000) && *(v362 + 16) == 0)
      {
        v20 = 2;
      }

      else
      {
        v20 = *(v362 + 16);
      }

      v40 = *(result + 16);
      v356 = *result;
      v357 = v40;
      v358 = *(result + 32);
      v359 = *(result + 48);
      v41 = sub_183FA4388(0, v20);
      v349 = &v339;
      MEMORY[0x1EEE9AC00](v41);
      v24 = &v336;
      v338 = &v360;
      v42 = sub_183FA5A00();
      v23 = v1 + 40;
      v43 = *(v1 + 40);
      v44 = *(v43 + 16);
      if (v27 - 1 >= v44)
      {
        goto LABEL_425;
      }

      v45 = v43 + 32;
      v15 = *(v45 + 4 * (v27 - 1));
      if (v27 == 1)
      {
        v26 = 0;
      }

      else
      {
        if (v27 - 2 >= v44)
        {
LABEL_446:
          __break(1u);
          goto LABEL_447;
        }

        v26 = *(v45 + 4 * (v27 - 2));
      }

      v11 = v20 * v41;
      if ((v20 * v41) >> 64 != (v20 * v41) >> 63)
      {
        goto LABEL_427;
      }

      v45 = v20 >> 60;
      if (!(v20 >> 60))
      {
        v345 = v44;
        if ((8 * v20) >= 1025)
        {
          goto LABEL_430;
        }

        goto LABEL_99;
      }

      goto LABEL_448;
    }

    v350 = (v1 + 24);
    v349 = (v1 + 16);
    if (v5 < *&v360)
    {
      v46 = *(v1 + 40);
      v351 = (v1 + 40);
      v47 = *(v1 + 48);
      v344 = (v1 + 48);
      *v356.i64 = v6;
      *&v356.i64[1] = v5;
      *&v357 = v7;
      *(&v357 + 1) = v8;
      *&v358 = v11;
      *(&v358 + 1) = v46;
      v359 = v47;
      v48 = sub_183FA42A4(v14 == 0, *&v4, *(&v4 + 1));
      v352 = v49;
      v2 = v46;
      v27 = v47;

      v50 = (v360 & 0xFFFFFFFFFFFFFLL) != 0 && v16 == 0x7FF0000000000000;
      v51 = v352;
      if (!v50 && *(v362 + 16) == 0)
      {
        v24 = 2;
      }

      else
      {
        v24 = *(v362 + 16);
      }

      v45 = v352 - v48;
      if (__OFSUB__(v352, v48))
      {
        goto LABEL_444;
      }

      v53 = __OFADD__(v45, v24);
      v45 += v24;
      v345 = v45;
      if (v53)
      {
LABEL_445:
        __break(1u);
        goto LABEL_446;
      }

      v20 = *(v1 + 32);
      v27 = *(v1 + 40);
      v359 = *(v1 + 48);
      v2 = v48;
      v348 = sub_183FA4388(v48, v352);
      v15 = v359;

      v356 = v360;
      v357 = v361;
      v358 = v362;
      v359 = v363;
      v54 = sub_183FA4388(0, v24);
      v45 = v348;
      v22 = v348 + v54;
      if (__OFADD__(v348, v54))
      {
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
LABEL_449:
        __break(1u);
        goto LABEL_450;
      }

      v343 = &v339;
      MEMORY[0x1EEE9AC00](v54);
      v27 = &v335 + 8;
      v336 = &v360;
      v337 = v2;
      v338 = v51;
      isStackAllocationSafe = sub_183FA5A00();
      v56 = *(v1 + 40);
      v15 = *(v56 + 16);
      v24 = v51 == v15;
      v36 = v2;
      if (v2)
      {
        v57 = v2 - 1;
        v2 = v345;
        if (__OFSUB__(v36, 1))
        {
LABEL_463:
          __break(1u);
          goto LABEL_464;
        }

        if (v57 >= v15)
        {
LABEL_464:
          __break(1u);
          goto LABEL_465;
        }

        v346 = *(v56 + 32 + 4 * v57);
        if (v36 > 1)
        {
          if (v36 - 2 >= v15)
          {
LABEL_513:
            __break(1u);
            goto LABEL_514;
          }

          v24 = 0;
          v45 = *(v56 + 32 + 4 * (v36 - 2));
          if (!v51)
          {
            v58 = 0;
            goto LABEL_158;
          }

LABEL_155:
          v109 = v51 - 1;
          if (__OFSUB__(v51, 1))
          {
LABEL_465:
            __break(1u);
            goto LABEL_466;
          }

          if (v109 >= v15)
          {
LABEL_466:
            __break(1u);
            goto LABEL_467;
          }

          v58 = *(v56 + 4 * v109 + 32);
LABEL_158:
          v37 = v2 * v22;
          if ((v2 * v22) >> 64 == (v2 * v22) >> 63)
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
LABEL_481:
              __break(1u);
              goto LABEL_482;
            }

            if (v2 >> 60)
            {
LABEL_482:
              __break(1u);
              goto LABEL_483;
            }

            v347 = v58;
            v348 = v36;
            if ((8 * v2) < 1025)
            {
              goto LABEL_162;
            }

            goto LABEL_452;
          }

LABEL_451:
          __break(1u);
LABEL_452:
          v260 = v45;
          v261 = v37;
          v262 = v36;
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          v263 = v262;
          if ((isStackAllocationSafe & 1) == 0)
          {
            v264 = v352;
            v265 = v2;
            v266 = v263;
            v267 = swift_slowAlloc();
            sub_183FA6CB0(v267, v265, v265, v261, v3, v260, v346, sub_183FA3240, &v368, v27, v261, 0, v24, v347, v266, v264, v266);
            MEMORY[0x1865EFCB0](v267, -1, -1);
            v197 = v353;
            goto LABEL_297;
          }

LABEL_162:
          v22 = &v335 + 8;
          v110 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v20 = &v335 - v114 + 8;
          v23 = v346;
          if (v2 >= 0x101)
          {
            v341 = &v335 + 8;
            v268 = v113;
            v269 = v112;
            v270 = v111;
            v110 = swift_stdlib_isStackAllocationSafe();
            v271 = v268;
            v22 = v341;
            if ((v110 & 1) == 0)
            {
              v340 = v271;
              v272 = v269;
              v273 = v345;
              v274 = swift_slowAlloc();
              HIBYTE(v329) = v24;
              LOBYTE(v329) = 0;
              sub_183FA86D0(v274, v273, v272, v20, v273, v3, v340, v23, v364, sub_183FA3240, v27, v272, v329, v347, v270, v352, v270);
              MEMORY[0x1865EFCB0](v274, -1, -1);
              v197 = v353;
              goto LABEL_297;
            }
          }

          v342 = &v335 + 1;
          v115 = MEMORY[0x1EEE9AC00](v110);
          v11 = &v335 - v119 + 8;
          if ((v117 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (!(v117 >> 60))
          {
            if ((8 * v117) >= 1025)
            {
              v340 = v118;
              v341 = v22;
              v275 = v117;
              v276 = v116;
              v115 = swift_stdlib_isStackAllocationSafe();
              v277 = v275;
              v22 = v341;
              if ((v115 & 1) == 0)
              {
                v278 = v277;
                v279 = v345;
                HIBYTE(v326) = v24;
                LOBYTE(v326) = 0;
                v280 = swift_slowAlloc();
                sub_183FA8F50(v280, v278, v20, v279, v11, v279, v3, v340, v23, sub_183FA3240, v27, v278, v326, v347, v276, v352, v276);
                MEMORY[0x1865EFCB0](v280, -1, -1);
                v197 = v353;
                goto LABEL_297;
              }
            }

            v345 = &v335 + 1;
            MEMORY[0x1EEE9AC00](v115);
            v27 = &v335 - v121 + 8;
            v355 = 0;
            v354 = 0;
            if (v23 < v120)
            {
              __break(1u);
            }

            else
            {
              v122 = *(v3 + 48);
              v123 = *v3;
              v124 = *(v3 + 16);
              v125 = *(v3 + 32);
              v365 = v122 + 8 * v120 + 32;
              v366 = (v23 - v120);
              v356 = v123;
              v357 = v124;
              v358 = v125;
              v359 = v122;
              sub_183FA1304(&v356, &v360, v36, v352, &v335 - v121 + 8, &v354, v37, 0, &v365, v20, &v355, v11, v23);
              v126 = v354;
              v127 = v344;
              if ((v354 & 0x8000000000000000) == 0)
              {
                if (!v24)
                {
                  goto LABEL_171;
                }

                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if (v126 <= *(*v127 + 3) >> 1)
                  {
LABEL_171:
                    if (v347 < v23)
                    {
LABEL_467:
                      __break(1u);
                      goto LABEL_468;
                    }

                    sub_183F7DC7C(v23, v347, v27, v126);
                    v27 = v355;
                    if ((v355 & 0x8000000000000000) == 0)
                    {
                      if (!v24)
                      {
                        v128 = v15;
                        v129 = v22;
                        v130 = v348;
                        v24 = v352;
                        sub_183F7DC7C(v348, v352, v20, v355);
LABEL_274:
                        sub_183F7DCA8(v130, v24, v11, v27);
                        v22 = v129;
                        v15 = v128;
                        v23 = v346;
                        goto LABEL_279;
                      }

LABEL_264:
                      v192 = v353;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (v27 <= *(*v192 + 24) >> 1)
                        {
                          sub_183F7DC7C(v348, v352, v20, v27);
                          goto LABEL_271;
                        }
                      }

                      else if (!v27)
                      {
                        v193 = MEMORY[0x1E69E7CC0];
                        goto LABEL_270;
                      }

                      v193 = sub_183EA76E4(v27, 0);
                      memcpy(v193 + 4, v20, 8 * v27);
LABEL_270:
                      v194 = v353;

                      *v194 = v193;
LABEL_271:
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (v27 <= *(*v351 + 3) >> 1)
                        {
                          v128 = v15;
                          v129 = v22;
                          v24 = v352;
                          v130 = v348;
                          goto LABEL_274;
                        }
                      }

                      else if (!v27)
                      {
                        v195 = MEMORY[0x1E69E7CC0];
                        goto LABEL_278;
                      }

                      v195 = sub_183F9BAB8(v27, 0);
                      memcpy(v195 + 4, v11, 4 * v27);
LABEL_278:
                      v24 = v351;

                      *v24 = v195;
LABEL_279:
                      v196 = v23 + v126;
                      if (!__OFADD__(v23, v126))
                      {
                        v24 = v196 - v347;
                        v197 = v353;
                        if (!__OFSUB__(v196, v347))
                        {
                          if (v24)
                          {
                            v198 = v348 + v27;
                            if (__OFADD__(v348, v27))
                            {
LABEL_471:
                              __break(1u);
                              goto LABEL_472;
                            }

                            v199 = *(*v351 + 2);
                            if (v199 < v198)
                            {
LABEL_472:
                              __break(1u);
LABEL_473:
                              __break(1u);
LABEL_474:
                              __break(1u);
                              goto LABEL_475;
                            }

                            if (v199 != v198)
                            {
                              if (v199 <= v198)
                              {
LABEL_522:
                                __break(1u);
                                goto LABEL_523;
                              }

                              if (v198 < 0)
                              {
LABEL_523:
                                __break(1u);
                                goto LABEL_524;
                              }

                              v20 = &v199[-v198];
                              if (v199 <= v198)
                              {
LABEL_524:
                                __break(1u);
                                goto LABEL_525;
                              }

                              v200 = v351;
                              sub_183F9C0C8();
                              v201 = *v200;
                              v27 += (v348 + 1);
                              do
                              {
                                if (v27 - 8 >= *(v201 + 2))
                                {
                                  goto LABEL_402;
                                }

                                v202 = *&v201[4 * v27];
                                v11 = v202 + v24;
                                if (__OFADD__(v202, v24))
                                {
                                  goto LABEL_403;
                                }

                                if ((v11 & 0x8000000000000000) != 0)
                                {
                                  goto LABEL_404;
                                }

                                if (HIDWORD(v11))
                                {
                                  goto LABEL_405;
                                }

                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  v201 = sub_183F9C14C(v201);
                                }

                                *&v201[4 * v27++] = v11;
                                --v20;
                              }

                              while (v20);
                              *v351 = v201;
                            }
                          }

LABEL_297:
                          v203 = *v197;
                          v204 = *(*v197 + 16);
                          if (v204)
                          {
                            v205 = *v3;
                            v206 = (v203 + 32);
                            if (v348)
                            {
                              v206 = v349;
                            }

                            v207 = *v206;
                            v208 = (v203 + 8 * v204 + 24);
                            if (v352 != v15)
                            {
                              v208 = v350;
                            }

                            v209 = *v208;
                          }

                          else
                          {
                            v205 = 0x7FF8000000000000;
                            v10 = 0x7FF8000000000000;
                            v207 = 0x7FF8000000000000;
                            v209 = 0x7FF8000000000000;
                          }

                          *v3 = v205;
                          *(v3 + 8) = v10;
                          *(v3 + 16) = v207;
                          *(v3 + 24) = v209;
                          sub_183FA5EA0();
                          return;
                        }

                        goto LABEL_462;
                      }

LABEL_461:
                      __break(1u);
LABEL_462:
                      __break(1u);
                      goto LABEL_463;
                    }

LABEL_460:
                    __break(1u);
                    goto LABEL_461;
                  }
                }

                else if (!v126)
                {
                  v24 = MEMORY[0x1E69E7CC0];
LABEL_263:

                  *v127 = v24;
                  v27 = v355;
                  if ((v355 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_264;
                  }

                  goto LABEL_460;
                }

                v24 = sub_183EA76E4(v126, 0);
                memcpy((v24 + 32), v27, 8 * v126);
                goto LABEL_263;
              }
            }

            __break(1u);
            goto LABEL_460;
          }

          __break(1u);
LABEL_493:
          v340 = v22;
          v308 = v117;
          v341 = v23;
          v309 = v116;
          v145 = swift_stdlib_isStackAllocationSafe();
          v310 = v309;
          v23 = v341;
          v311 = v308;
          v22 = v340;
          if ((v145 & 1) == 0)
          {
            v312 = v345;
            v313 = v340;
            v314 = v311;
            v315 = v310;
            v332 = v24;
            HIBYTE(v327) = v27;
            LOBYTE(v327) = 0;
            v316 = swift_slowAlloc();
            sub_183FA8F50(v316, v314, v11, v312, v15, v312, v3, v313, v346, sub_183FA3220, v20, v314, v327, v332, v315, v348, v315);
            MEMORY[0x1865EFCB0](v316, -1, -1);
            v218 = v353;
            goto LABEL_340;
          }

LABEL_227:
          v345 = &v335 + 1;
          MEMORY[0x1EEE9AC00](v145);
          v150 = &v335 - v149 + 8;
          v355 = 0;
          v354 = 0;
          v20 = v346;
          if (v346 >= v22)
          {
            v151 = *(v3 + 48);
            v152 = *v3;
            v153 = *(v3 + 16);
            v154 = *(v3 + 32);
            v365 = v151 + 8 * v22 + 32;
            v366 = v346 - v22;
            v356 = v152;
            v357 = v153;
            v358 = v154;
            v359 = v151;
            sub_183FA02A0(&v356, &v360, v147, v348, v150, &v354, v148, 0, &v365, v11, &v355, v15, v346);
            v155 = v354;
            if ((v354 & 0x8000000000000000) == 0)
            {
              if (!v27)
              {
                goto LABEL_232;
              }

              v156 = v351;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (v155 <= *(*v156 + 3) >> 1)
                {
LABEL_232:
                  if (v24 < v20)
                  {
LABEL_516:
                    __break(1u);
                    goto LABEL_517;
                  }

                  sub_183F7DC7C(v20, v24, v150, v155);
                  v157 = v355;
                  if ((v355 & 0x8000000000000000) == 0)
                  {
                    if (!v27)
                    {
                      v158 = v23;
                      v159 = v347;
                      v160 = v348;
                      sub_183F7DC7C(v347, v348, v11, v355);
LABEL_317:
                      sub_183F7DCA8(v159, v160, v15, v157);
                      v23 = v158;
                      v20 = v346;
                      goto LABEL_322;
                    }

LABEL_307:
                    v211 = v353;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      if (v157 <= *(*v211 + 24) >> 1)
                      {
                        sub_183F7DC7C(v347, v348, v11, v157);
                        goto LABEL_314;
                      }
                    }

                    else if (!v157)
                    {
                      v212 = MEMORY[0x1E69E7CC0];
                      goto LABEL_313;
                    }

                    v212 = sub_183EA76E4(v157, 0);
                    memcpy(v212 + 4, v11, 8 * v157);
LABEL_313:
                    v213 = v353;

                    *v213 = v212;
LABEL_314:
                    v214 = v352;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      if (v157 <= *(*v214 + 3) >> 1)
                      {
                        v158 = v23;
                        v160 = v348;
                        v159 = v347;
                        goto LABEL_317;
                      }
                    }

                    else if (!v157)
                    {
                      v215 = MEMORY[0x1E69E7CC0];
                      goto LABEL_321;
                    }

                    v215 = sub_183F9BAB8(v157, 0);
                    memcpy(v215 + 32, v15, 4 * v157);
LABEL_321:
                    v216 = v352;

                    *v216 = v215;
LABEL_322:
                    v217 = v20 + v155;
                    if (!__OFADD__(v20, v155))
                    {
                      v15 = v217 - v24;
                      v218 = v353;
                      if (!__OFSUB__(v217, v24))
                      {
                        if (!v15)
                        {
                          goto LABEL_340;
                        }

                        v219 = v347 + v157;
                        if (!__OFADD__(v347, v157))
                        {
                          v220 = *(*v352 + 2);
                          if (v220 >= v219)
                          {
                            if (v220 != v219)
                            {
                              if (v220 > v219)
                              {
                                if ((v219 & 0x8000000000000000) == 0)
                                {
                                  v27 = &v220[-v219];
                                  if (v220 > v219)
                                  {
                                    v221 = v352;
                                    sub_183F9C0C8();
                                    v222 = *v221;
                                    v22 = v347 + v157 + 8;
                                    do
                                    {
                                      if ((v22 - 8) >= *(v222 + 2))
                                      {
                                        goto LABEL_406;
                                      }

                                      v223 = *&v222[4 * v22];
                                      v11 = v223 + v15;
                                      if (__OFADD__(v223, v15))
                                      {
                                        goto LABEL_408;
                                      }

                                      if ((v11 & 0x8000000000000000) != 0)
                                      {
                                        goto LABEL_410;
                                      }

                                      if (HIDWORD(v11))
                                      {
                                        goto LABEL_412;
                                      }

                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v222 = sub_183F9C14C(v222);
                                      }

                                      *&v222[4 * v22++] = v11;
                                      --v27;
                                    }

                                    while (v27);
                                    *v352 = v222;
                                    goto LABEL_340;
                                  }

                                  goto LABEL_539;
                                }

                                goto LABEL_537;
                              }

                              goto LABEL_535;
                            }

LABEL_340:
                            v224 = *v218;
                            v225 = *(*v218 + 16);
                            if (v225)
                            {
                              v226 = *(v3 + 8);
                              v227 = (v224 + 32);
                              if (v347)
                              {
                                v227 = v349;
                              }

                              v228 = *v227;
                              v229 = (v224 + 8 * v225 + 24);
                              if (v348 != v344)
                              {
                                v229 = v350;
                              }

                              v230 = *v229;
                            }

                            else
                            {
                              v9 = 0x7FF8000000000000;
                              v226 = 0x7FF8000000000000;
                              v228 = 0x7FF8000000000000;
                              v230 = 0x7FF8000000000000;
                            }

                            *v3 = v9;
                            *(v3 + 8) = v226;
                            *(v3 + 16) = v228;
                            *(v3 + 24) = v230;
                            goto LABEL_392;
                          }

                          goto LABEL_520;
                        }

                        goto LABEL_518;
                      }

                      goto LABEL_505;
                    }

                    goto LABEL_503;
                  }

                  goto LABEL_501;
                }
              }

              else if (!v155)
              {
                v190 = MEMORY[0x1E69E7CC0];
LABEL_306:
                v210 = v351;

                *v210 = v190;
                v157 = v355;
                if ((v355 & 0x8000000000000000) == 0)
                {
                  goto LABEL_307;
                }

                goto LABEL_501;
              }

              v190 = sub_183EA76E4(v155, 0);
              memcpy(v190 + 32, v150, 8 * v155);
              goto LABEL_306;
            }

            goto LABEL_499;
          }

          __break(1u);
LABEL_498:
          __break(1u);
LABEL_499:
          __break(1u);
          goto LABEL_500;
        }

        v24 = 0;
      }

      else
      {
        v346 = 0;
        v2 = v345;
      }

      v58 = 0;
      v45 = 0;
      if (!v51)
      {
        goto LABEL_158;
      }

      goto LABEL_155;
    }

    v24 = *(v1 + 40);
    v352 = (v1 + 40);
    v59 = *(v1 + 48);
    v351 = (v1 + 48);
    if (*(&v360 + 1) < v6)
    {
      *v356.i64 = v6;
      *&v356.i64[1] = v5;
      *&v357 = v7;
      *(&v357 + 1) = v8;
      *&v358 = v11;
      *(&v358 + 1) = v24;
      v359 = v59;
      v27 = sub_183FA42A4(v14 == 0, *&v4, *(&v4 + 1));
      v348 = v60;
      v20 = v24;

      if (((v360 & 0xFFFFFFFFFFFFFLL) == 0 || v16 != 0x7FF0000000000000) && *(v362 + 16) == 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = *(v362 + 16);
      }

      v63 = v348 - v27;
      if (__OFSUB__(v348, v27))
      {
        goto LABEL_473;
      }

      v345 = &v63[v22];
      if (__OFADD__(v63, v22))
      {
LABEL_475:
        __break(1u);
        goto LABEL_476;
      }

      v64 = *(v1 + 48);
      *(&v358 + 1) = *(v1 + 40);
      v65 = v27;
      v66 = v348;
      v347 = sub_183FA4388(v27, v348);
      v20 = *(&v358 + 1);
      LODWORD(v27) = v64;

      v356 = v360;
      v357 = v361;
      v358 = v362;
      v359 = v363;
      v67 = sub_183FA4388(0, v22);
      v24 = v347 + v67;
      if (__OFADD__(v347, v67))
      {
LABEL_477:
        __break(1u);
        goto LABEL_478;
      }

      MEMORY[0x1EEE9AC00](v67);
      v20 = &v335 + 8;
      v336 = &v360;
      v337 = v65;
      v338 = v348;
      v68 = sub_183FA5A00();
      v69 = *(v1 + 40);
      v70 = *(v69 + 16);
      LODWORD(v27) = v66 == v70;
      v36 = v65;
      if (v65)
      {
        v71 = v65 - 1;
        v72 = v345;
        if (__OFSUB__(v65, 1))
        {
LABEL_507:
          __break(1u);
          goto LABEL_508;
        }

        if (v71 >= v70)
        {
LABEL_509:
          __break(1u);
          goto LABEL_510;
        }

        v346 = *(v69 + 32 + 4 * v71);
        if (v65 > 1)
        {
          if (v65 - 2 >= v70)
          {
LABEL_533:
            __break(1u);
            goto LABEL_534;
          }

          LODWORD(v27) = 0;
          v22 = *(v69 + 32 + 4 * (v65 - 2));
          if (!v66)
          {
            v73 = 0;
            goto LABEL_219;
          }

LABEL_216:
          v139 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
LABEL_511:
            __break(1u);
            goto LABEL_512;
          }

          if (v139 >= v70)
          {
LABEL_514:
            __break(1u);
            goto LABEL_515;
          }

          v73 = *(v69 + 4 * v139 + 32);
LABEL_219:
          v37 = v72 * v24;
          if ((v72 * v24) >> 64 == (v72 * v24) >> 63)
          {
            if (v72 < 0)
            {
LABEL_525:
              __break(1u);
              goto LABEL_526;
            }

            v344 = v70;
            if (v72 >> 60)
            {
LABEL_527:
              __break(1u);
              goto LABEL_528;
            }

            v24 = v73;
            v347 = v65;
            v343 = &v339;
            if (8 * v72 < 1025)
            {
LABEL_223:
              v23 = &v335 + 8;
              v140 = MEMORY[0x1EEE9AC00](v68);
              v11 = &v335 - v143 + 8;
              if (v144 >= 0x101)
              {
                v292 = v142;
                v341 = &v335 + 8;
                v293 = v141;
                v140 = swift_stdlib_isStackAllocationSafe();
                v294 = v345;
                v295 = v293;
                v23 = v341;
                if ((v140 & 1) == 0)
                {
                  v296 = v22;
                  v297 = v292;
                  v298 = v295;
                  v299 = swift_slowAlloc();
                  HIBYTE(v330) = v27;
                  LOBYTE(v330) = 0;
                  sub_183FA86D0(v299, v294, v297, v11, v294, v3, v296, v346, &v368, sub_183FA3220, v20, v297, v330, v24, v298, v348, v298);
                  MEMORY[0x1865EFCB0](v299, -1, -1);
                  v218 = v353;
                  goto LABEL_340;
                }
              }

              v145 = MEMORY[0x1EEE9AC00](v140);
              v15 = &v335 - v146 + 8;
              if ((v117 & 0x8000000000000000) != 0)
              {
                goto LABEL_529;
              }

              if (v117 >> 60)
              {
LABEL_531:
                __break(1u);
                goto LABEL_532;
              }

              v342 = &v335 + 1;
              if ((8 * v117) < 1025)
              {
                goto LABEL_227;
              }

              goto LABEL_493;
            }

LABEL_483:
            v281 = v37;
            v282 = v36;
            v68 = swift_stdlib_isStackAllocationSafe();
            if ((v68 & 1) == 0)
            {
              v283 = v345;
              v284 = swift_slowAlloc();
              sub_183FA6CB0(v284, v283, v283, v281, v3, v22, v346, sub_183FA3220, &v368, v20, v281, 0, v27, v24, v282, v348, v282);
              MEMORY[0x1865EFCB0](v284, -1, -1);
              v218 = v353;
              goto LABEL_340;
            }

            goto LABEL_223;
          }

          goto LABEL_479;
        }

        LODWORD(v27) = 0;
      }

      else
      {
        v346 = 0;
        v72 = v345;
      }

      v73 = 0;
      v22 = 0;
      if (!v66)
      {
        goto LABEL_219;
      }

      goto LABEL_216;
    }

    *v356.i64 = v6;
    *&v356.i64[1] = v5;
    *&v357 = v7;
    *(&v357 + 1) = v8;
    *&v358 = v11;
    *(&v358 + 1) = v24;
    v359 = v59;
    v96 = sub_183FA42A4(v14 == 0, *&v4, *(&v4 + 1));
    v20 = v24;
    LODWORD(v27) = v59;
    v98 = v97;

    if (((v360 & 0xFFFFFFFFFFFFFLL) == 0 || v16 != 0x7FF0000000000000) && *(v362 + 16) == 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = *(v362 + 16);
    }

    v101 = v98 - v96;
    if (__OFSUB__(v98, v96))
    {
      goto LABEL_474;
    }

    v344 = &v101[v22];
    if (__OFADD__(v101, v22))
    {
LABEL_476:
      __break(1u);
      goto LABEL_477;
    }

    v24 = *(v1 + 32);
    LODWORD(v359) = *(v1 + 48);
    v348 = sub_183FA4388(v96, v98);
    v20 = v96;
    LODWORD(v27) = v359;

    v356 = v360;
    v357 = v361;
    v358 = v362;
    v359 = v363;
    v102 = sub_183FA4388(0, v22);
    v22 = v348 + v102;
    if (__OFADD__(v348, v102))
    {
LABEL_478:
      __break(1u);
LABEL_479:
      __break(1u);
      goto LABEL_480;
    }

    MEMORY[0x1EEE9AC00](v102);
    v24 = &v335 + 8;
    v336 = &v360;
    v337 = v96;
    v338 = v98;
    v103 = sub_183FA5A00();
    v104 = *(v1 + 40);
    v105 = *(v104 + 16);
    v27 = v351;
    if (v96)
    {
      v106 = v96 - 1;
      v107 = v344;
      if (__OFSUB__(v96, 1))
      {
LABEL_508:
        __break(1u);
        goto LABEL_509;
      }

      if (v106 >= v105)
      {
LABEL_510:
        __break(1u);
        goto LABEL_511;
      }

      v20 = *(v104 + 32 + 4 * v106);
      if (v96 > 1)
      {
        if (v96 - 2 >= v105)
        {
LABEL_534:
          __break(1u);
LABEL_535:
          __break(1u);
          goto LABEL_536;
        }

        LODWORD(v343) = 0;
        v108 = *(v104 + 32 + 4 * (v96 - 2));
        if (!v98)
        {
          v345 = 0;
          goto LABEL_241;
        }

LABEL_238:
        v161 = v98 - 1;
        if (__OFSUB__(v98, 1))
        {
LABEL_512:
          __break(1u);
          goto LABEL_513;
        }

        if (v161 >= v105)
        {
LABEL_515:
          __break(1u);
          goto LABEL_516;
        }

        v345 = *(v104 + 4 * v161 + 32);
LABEL_241:
        v162 = v107 * v22;
        if ((v107 * v22) >> 64 != (v107 * v22) >> 63)
        {
LABEL_480:
          __break(1u);
          goto LABEL_481;
        }

        if ((v107 & 0x8000000000000000) != 0)
        {
LABEL_526:
          __break(1u);
          goto LABEL_527;
        }

        if (v107 >> 60)
        {
LABEL_528:
          __break(1u);
LABEL_529:
          __break(1u);
          goto LABEL_530;
        }

        v339 = v105;
        v347 = v98;
        v348 = v96;
        v342 = &v339;
        if ((8 * v107) >= 1025)
        {
          v285 = v20;
          v286 = v108;
          v103 = swift_stdlib_isStackAllocationSafe();
          v287 = v286;
          v20 = v285;
          v107 = v344;
          if ((v103 & 1) == 0)
          {
            v288 = v287;
            v289 = swift_slowAlloc();
            v290 = v20;
            v291 = v289;
            sub_183FA6B50(v289, v107, v107, v162, v3, v288, v290, sub_183FA0258, 1uLL, &v335 + 8, v162, 1u, v343, v345, v96, v98, v96);
            MEMORY[0x1865EFCB0](v291, -1, -1);
            v20 = v353;
            v11 = v350;
            v236 = v349;
            v91 = v352;
            v184 = v351;
            goto LABEL_383;
          }
        }

        v341 = &v335 + 8;
        v163 = MEMORY[0x1EEE9AC00](v103);
        v15 = &v335 - v165 + 8;
        if (v107 >= 0x101)
        {
          v300 = v20;
          v301 = v164;
          v163 = swift_stdlib_isStackAllocationSafe();
          v302 = v301;
          v20 = v300;
          v303 = v344;
          if ((v163 & 1) == 0)
          {
            v304 = v302;
            v305 = swift_slowAlloc();
            v306 = v20;
            v307 = v305;
            HIBYTE(v331) = v343;
            LOBYTE(v331) = 1;
            sub_183FA8588(v305, v303, v162, v15, v303, v3, v304, v306, 1uLL, sub_183FA0258, &v335 + 8, v162, v331, v345, v96, v347, v96);
            MEMORY[0x1865EFCB0](v307, -1, -1);
            v20 = v353;
            v11 = v350;
            v236 = v349;
            v91 = v352;
            v184 = v351;
            goto LABEL_383;
          }
        }

        v166 = MEMORY[0x1EEE9AC00](v163);
        v346 = (&v335 - v169 + 8);
        if ((v162 & 0x8000000000000000) != 0)
        {
LABEL_530:
          __break(1u);
          goto LABEL_531;
        }

        v340 = v168;
        if (v162 >> 60)
        {
LABEL_532:
          __break(1u);
          goto LABEL_533;
        }

        v170 = v27;
        if ((8 * v162) >= 1025)
        {
          v317 = v20;
          v318 = v167;
          v166 = swift_stdlib_isStackAllocationSafe();
          v319 = v318;
          v20 = v317;
          v320 = v344;
          if ((v166 & 1) == 0)
          {
            v321 = v319;
            v322 = swift_slowAlloc();
            v323 = v20;
            v324 = v322;
            HIBYTE(v328) = v343;
            LOBYTE(v328) = 1;
            sub_183FA8E88(v322, v162, v15, v320, v346, v320, v3, v321, v323, sub_183FA0258, &v335 + 8, v162, v328, v345, v96, v347, v96);
            MEMORY[0x1865EFCB0](v324, -1, -1);
            v20 = v353;
            v11 = v350;
            v236 = v349;
            v91 = v352;
            v184 = v351;
            goto LABEL_383;
          }
        }

        v344 = &v335 + 1;
        MEMORY[0x1EEE9AC00](v166);
        v173 = &v335 - v172 + 8;
        v355 = 0;
        v354 = 0;
        v174 = (v20 - v171);
        if (v20 < v171)
        {
          goto LABEL_498;
        }

        v175 = v20;
        v177 = *(v3 + 40);
        v176 = *(v3 + 48);
        v178 = *v3;
        v179 = *(v3 + 16);
        v180 = *(v3 + 32);
        v365 = v176 + 8 * v171 + 32;
        v366 = v174;
        v356 = v178;
        v357 = v179;
        *&v358 = v180;
        *(&v358 + 1) = v177;
        v359 = v176;
        swift_retain_n();

        v181 = v175;
        sub_183FA2360(v356.i8, &v360, v348, v347, v173, &v354, v162, 1, &v365, v15, &v355, v346, v175, &qword_1EA854120, byte_1EA868CEB, sub_183FBF7F0);

        v182 = v354;
        if ((v354 & 0x8000000000000000) != 0)
        {
LABEL_500:
          __break(1u);
LABEL_501:
          __break(1u);
          goto LABEL_502;
        }

        v183 = v175;
        v184 = v170;
        v185 = v345;
        v186 = v343;
        if (!v343)
        {
LABEL_254:
          if (v185 < v181)
          {
LABEL_517:
            __break(1u);
LABEL_518:
            __break(1u);
            goto LABEL_519;
          }

          sub_183F7DC7C(v181, v185, v173, v182);
          v187 = v355;
          if ((v355 & 0x8000000000000000) != 0)
          {
            goto LABEL_502;
          }

          if (!v186)
          {
            v188 = v348;
            v189 = v347;
            sub_183F7DC7C(v348, v347, v15, v355);
            v91 = v352;
LABEL_360:
            sub_183F7DCA8(v188, v189, v346, v187);
LABEL_365:
            v235 = v183 + v182;
            if (__OFADD__(v183, v182))
            {
LABEL_504:
              __break(1u);
LABEL_505:
              __break(1u);
              goto LABEL_506;
            }

            v53 = __OFSUB__(v235, v185);
            v24 = v235 - v185;
            v20 = v353;
            v11 = v350;
            v236 = v349;
            if (v53)
            {
LABEL_506:
              __break(1u);
              goto LABEL_507;
            }

            if (v24)
            {
              v237 = v348 + v187;
              if (__OFADD__(v348, v187))
              {
LABEL_519:
                __break(1u);
LABEL_520:
                __break(1u);
                goto LABEL_521;
              }

              v238 = *(*v91 + 16);
              if (v238 < v237)
              {
LABEL_521:
                __break(1u);
                goto LABEL_522;
              }

              if (v238 != v237)
              {
                if (v238 <= v237)
                {
LABEL_536:
                  __break(1u);
LABEL_537:
                  __break(1u);
                  goto LABEL_538;
                }

                if (v237 < 0)
                {
LABEL_538:
                  __break(1u);
LABEL_539:
                  __break(1u);
                  goto LABEL_540;
                }

                v23 = &v238[-v237];
                if (v238 <= v237)
                {
LABEL_540:
                  __break(1u);
LABEL_541:
                  __break(1u);
                }

                sub_183F9C0C8();
                v27 = *v91;
                v22 = v348 + v187 + 8;
                do
                {
                  if ((v22 - 8) >= *(v27 + 16))
                  {
                    goto LABEL_407;
                  }

                  v239 = *(v27 + 4 * v22);
                  v15 = v239 + v24;
                  if (__OFADD__(v239, v24))
                  {
                    goto LABEL_409;
                  }

                  if ((v15 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_411;
                  }

                  if (HIDWORD(v15))
                  {
                    goto LABEL_413;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v27 = sub_183F9C14C(v27);
                  }

                  *(v27 + 4 * v22++) = v15;
                  --v23;
                }

                while (v23);
                v91 = v352;
                *v352 = v27;
                v184 = v351;
              }
            }

LABEL_383:
            v24 = *v20;
            if (*(*v20 + 16))
            {
              v240 = *v236;
              v241 = *v11;
              sub_183FA58E8((*v91 + 32), *(*v91 + 16), (*v184 + 32), v356.i64);
              v242 = v356;
              v90 = v342;
              if (!v348)
              {
                if (!*(v24 + 16))
                {
                  goto LABEL_541;
                }

                v240 = *(v24 + 32);
              }

              if (v347 == v339)
              {
                v243 = *(v24 + 16);
                if (!v243)
                {
                  goto LABEL_543;
                }

                v241 = *(v24 + 8 * v243 + 24);
              }
            }

            else
            {
              v242 = vdupq_n_s64(0x7FF8000000000000uLL);
              v240 = 0x7FF8000000000000;
              v241 = 0x7FF8000000000000;
            }

            *v3 = v242;
            *(v3 + 16) = v240;
            *(v3 + 24) = v241;
LABEL_392:
            sub_183FA5EA0();
            return;
          }

LABEL_350:
          v231 = v353;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v187 <= *(*v231 + 24) >> 1)
            {
              sub_183F7DC7C(v348, v347, v15, v187);
              goto LABEL_357;
            }
          }

          else if (!v187)
          {
            v232 = MEMORY[0x1E69E7CC0];
            goto LABEL_356;
          }

          v232 = sub_183EA76E4(v187, 0);
          memcpy(v232 + 4, v15, 8 * v187);
LABEL_356:
          v233 = v353;

          *v233 = v232;
LABEL_357:
          v91 = v352;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v187 <= *(*v91 + 24) >> 1)
            {
              v189 = v347;
              v188 = v348;
              goto LABEL_360;
            }
          }

          else if (!v187)
          {
            v234 = MEMORY[0x1E69E7CC0];
            goto LABEL_364;
          }

          v234 = sub_183F9BAB8(v187, 0);
          memcpy(v234 + 4, v346, 4 * v187);
LABEL_364:

          *v91 = v234;
          goto LABEL_365;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v182 <= *(*v184 + 24) >> 1)
          {
            goto LABEL_254;
          }
        }

        else if (!v182)
        {
          v191 = MEMORY[0x1E69E7CC0];
LABEL_349:

          *v184 = v191;
          v187 = v355;
          if ((v355 & 0x8000000000000000) != 0)
          {
LABEL_502:
            __break(1u);
LABEL_503:
            __break(1u);
            goto LABEL_504;
          }

          goto LABEL_350;
        }

        v191 = sub_183EA76E4(v182, 0);
        memcpy(v191 + 4, v173, 8 * v182);
        goto LABEL_349;
      }

      LODWORD(v343) = 0;
    }

    else
    {
      LODWORD(v343) = v98 == v105;
      v107 = v344;
    }

    v345 = 0;
    v108 = 0;
    if (!v98)
    {
      goto LABEL_241;
    }

    goto LABEL_238;
  }

  if (((v360 & 0xFFFFFFFFFFFFFLL) == 0 || v16 != 0x7FF0000000000000) && *(v362 + 16) == 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = *(v362 + 16);
  }

  v21 = *(result + 16);
  v356 = *result;
  v357 = v21;
  v358 = *(result + 32);
  v359 = *(result + 48);
  v22 = sub_183FA4388(0, v20);
  v23 = &v339;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v336;
  v338 = &v360;
  v25 = sub_183FA5A00();
  v27 = v20 * v22;
  if ((v20 * v22) >> 64 != (v20 * v22) >> 63)
  {
    goto LABEL_414;
  }

  if (v20 >> 60)
  {
    goto LABEL_426;
  }

  v22 = v1 + 40;
  v351 = *(*(v1 + 40) + 16);
  v350 = &v339;
  if ((8 * v20) >= 1025)
  {
    goto LABEL_415;
  }

  while (1)
  {
    v11 = &v336;
    v28 = MEMORY[0x1EEE9AC00](v25);
    v15 = &v336 - v29;
    v349 = &v336;
    if (v20 >= 0x101)
    {
      v28 = swift_stdlib_isStackAllocationSafe();
      if ((v28 & 1) == 0)
      {
        v247 = v351 == 0;
        v248 = swift_slowAlloc();
        BYTE1(v334) = v247;
        LOBYTE(v334) = 0;
        sub_183FA862C(v248, v20, v27, v15, v20, v3, 0, 0, v249, sub_183FA3320, v24, v27, v334, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v248, -1, -1);
        v2 = v353;
        v23 = v351;
        goto LABEL_204;
      }
    }

    v30 = MEMORY[0x1EEE9AC00](v28);
    v352 = (&v336 - v31);
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_428;
    }

    if (v27 >> 60)
    {
      goto LABEL_429;
    }

    v348 = v26;
    if ((8 * v27) >= 1025)
    {
      v30 = swift_stdlib_isStackAllocationSafe();
      if ((v30 & 1) == 0)
      {
        v250 = v351 == 0;
        v251 = swift_slowAlloc();
        BYTE1(v333) = v250;
        LOBYTE(v333) = 0;
        sub_183FA8EEC(v251, v27, v15, v20, v352, v20, v3, 0, 0, sub_183FA3320, v24, v27, v333, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v251, -1, -1);
        v2 = v353;
        v23 = v351;
LABEL_204:
        v135 = *v2;
        if (*(*v2 + 16))
        {
          v9 = *(v3 + 24);
          sub_183FA58E8((*(v3 + 40) + 32), *(*(v3 + 40) + 16), (*(v3 + 48) + 32), v356.i64);
          v24 = v350;
          v136 = *(v135 + 16);
          if (!v136)
          {
            goto LABEL_424;
          }

          v137 = v356;
          v138 = *(v135 + 32);
          if (!v23)
          {
            v9 = *(v135 + 8 * v136 + 24);
          }
        }

        else
        {
          v137 = vdupq_n_s64(0x7FF8000000000000uLL);
          v138 = 0x7FF8000000000000;
          v9 = 0x7FF8000000000000;
        }

        *v3 = v137;
        *(v3 + 16) = v138;
        *(v3 + 24) = v9;
        sub_183FA5EA0();
        return;
      }
    }

    v347 = &v336;
    MEMORY[0x1EEE9AC00](v30);
    v11 = &v336 - v32;
    v355 = 0;
    v354 = 0;
    v33 = v3 + 48;
    v24 = *(v3 + 48);
    v34 = *(v3 + 32);
    v23 = *(v3 + 40);
    v365 = v24 + 32;
    v366 = 0;
    v35 = *(v3 + 16);
    v356 = *v3;
    v357 = v35;
    *&v358 = v34;
    *(&v358 + 1) = v23;
    v359 = v24;
    swift_retain_n();

    sub_183F99AD4(&v356, &v360, v11, v27, &v354, v27, 0, &v365, v15, v20, &v355, v352, v20, 0);

    v20 = v354;
    if ((v354 & 0x8000000000000000) != 0)
    {
      break;
    }

    v2 = v353;
    v23 = v351;
    if (v351)
    {
      sub_183F7DC7C(0, 0, v11, v354);
      v27 = v355;
      if ((v355 & 0x8000000000000000) != 0)
      {
        goto LABEL_422;
      }

      sub_183F7DC7C(0, 0, v15, v355);
LABEL_33:
      sub_183F7DCA8(0, 0, v352, v27);
      if (!v20)
      {
        goto LABEL_204;
      }

      goto LABEL_192;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v20 <= *(*v33 + 24) >> 1)
      {
        sub_183F7DC7C(0, 0, v11, v20);
        goto LABEL_177;
      }
    }

    else if (!v20)
    {
      v24 = MEMORY[0x1E69E7CC0];
      goto LABEL_176;
    }

    v24 = sub_183EA76E4(v20, 0);
    memcpy((v24 + 32), v11, 8 * v20);
LABEL_176:

    *v33 = v24;
LABEL_177:
    v27 = v355;
    if ((v355 & 0x8000000000000000) != 0)
    {
      goto LABEL_422;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v27 <= *(*v2 + 24) >> 1)
      {
        sub_183F7DC7C(0, 0, v15, v27);
        goto LABEL_185;
      }
    }

    else if (!v27)
    {
      v131 = MEMORY[0x1E69E7CC0];
      goto LABEL_184;
    }

    v131 = sub_183EA76E4(v27, 0);
    memcpy(v131 + 4, v15, 8 * v27);
LABEL_184:

    *v2 = v131;
LABEL_185:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v27 <= *(*v22 + 24) >> 1)
      {
        goto LABEL_33;
      }

LABEL_189:
      v132 = sub_183F9BAB8(v27, 0);
      memcpy(v132 + 4, v352, 4 * v27);
      goto LABEL_191;
    }

    if (v27)
    {
      goto LABEL_189;
    }

    v132 = MEMORY[0x1E69E7CC0];
LABEL_191:

    *v22 = v132;
    if (!v20)
    {
      goto LABEL_204;
    }

LABEL_192:
    v45 = *(*v22 + 16);
    if (v45 < v27)
    {
      goto LABEL_423;
    }

    if (v45 == v27)
    {
      goto LABEL_204;
    }

    v24 = v45 - v27;
    if (v45 <= v27)
    {
      goto LABEL_441;
    }

    sub_183F9C0C8();
    v133 = *v22;
    v23 = v27 + 8;
    while (v23 - 8 < *(v133 + 2))
    {
      v134 = *&v133[4 * v23];
      v15 = v134 + v20;
      if (__OFADD__(v134, v20))
      {
        goto LABEL_395;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_396;
      }

      if (HIDWORD(v15))
      {
        goto LABEL_397;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = sub_183F9C14C(v133);
      }

      *&v133[4 * v23++] = v15;
      if (!--v24)
      {
        *v22 = v133;
        v23 = v351;
        goto LABEL_204;
      }
    }

    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
LABEL_399:
    __break(1u);
LABEL_400:
    __break(1u);
LABEL_401:
    __break(1u);
LABEL_402:
    __break(1u);
LABEL_403:
    __break(1u);
LABEL_404:
    __break(1u);
LABEL_405:
    __break(1u);
LABEL_406:
    __break(1u);
LABEL_407:
    __break(1u);
LABEL_408:
    __break(1u);
LABEL_409:
    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
LABEL_413:
    __break(1u);
LABEL_414:
    __break(1u);
LABEL_415:
    v25 = swift_stdlib_isStackAllocationSafe();
    if ((v25 & 1) == 0)
    {
      v244 = v351 == 0;
      v245 = swift_slowAlloc();
      sub_183FA6C00(v245, v20, v20, v27, v3, 0, 0, sub_183FA3320, v246, v24, v27, 0, v244, 0, 0, 0, 0);
      MEMORY[0x1865EFCB0](v245, -1, -1);
      v2 = v353;
      v23 = v351;
      goto LABEL_204;
    }
  }

  __break(1u);
LABEL_422:
  __break(1u);
LABEL_423:
  __break(1u);
LABEL_424:
  __break(1u);
LABEL_425:
  __break(1u);
LABEL_426:
  __break(1u);
LABEL_427:
  __break(1u);
LABEL_428:
  __break(1u);
LABEL_429:
  __break(1u);
LABEL_430:
  v252 = v26;
  v42 = swift_stdlib_isStackAllocationSafe();
  if ((v42 & 1) == 0)
  {
    v253 = swift_slowAlloc();
    v254 = v252;
    v90 = 0;
    sub_183FA6C00(v253, v20, v20, v11, v3, v254, v15, sub_183FA3260, v255, v24, v11, 0, 0, v15, v27, v27, v27);
    v24 = 0;
    MEMORY[0x1865EFCB0](v253, -1, -1);
    v20 = v353;
    goto LABEL_127;
  }

LABEL_99:
  v351 = v23;
  v74 = MEMORY[0x1EEE9AC00](v42);
  v352 = (&v336 - v76);
  v348 = &v336;
  if (v20 >= 0x101)
  {
    v256 = v75;
    v74 = swift_stdlib_isStackAllocationSafe();
    if ((v74 & 1) == 0)
    {
      v257 = swift_slowAlloc();
      sub_183FA862C(v257, v20, v11, v352, v20, v3, v256, v15, &v370, sub_183FA3260, v24, v11, 0, v15, v27, v27, v27);
      MEMORY[0x1865EFCB0](v257, -1, -1);
      v90 = 0;
      v20 = v353;
      goto LABEL_127;
    }
  }

  v347 = &v336;
  v77 = MEMORY[0x1EEE9AC00](v74);
  v2 = &v336 - v45;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_449;
  }

  v45 = v11 >> 60;
  if (v11 >> 60)
  {
LABEL_450:
    __break(1u);
    goto LABEL_451;
  }

  if (8 * v11) < 1025 || (v258 = v78, v77 = swift_stdlib_isStackAllocationSafe(), (v77))
  {
    v350 = v27;
    v346 = &v336;
    MEMORY[0x1EEE9AC00](v77);
    v24 = &v336 - v80;
    v355 = 0;
    v354 = 0;
    v45 = v15 - v79;
    if (v15 < v79)
    {
      __break(1u);
    }

    else
    {
      v81 = *(v3 + 48);
      v82 = *v3;
      v83 = *(v3 + 16);
      v84 = *(v3 + 32);
      v27 = *(v3 + 40);
      v365 = v81 + 8 * v79 + 32;
      v366 = (v15 - v79);
      v356 = v82;
      v357 = v83;
      *&v358 = v84;
      *(&v358 + 1) = v27;
      v359 = v81;
      swift_retain_n();

      *(&v335 + 1) = v20;
      *&v334 = v20;
      v85 = v352;
      sub_183F99AD4(&v356, &v360, v24, v11, &v354, v11, 0, &v365, v352, v334, &v355, v2, *(&v335 + 1), v15);

      v45 = &v371;
      v86 = v354;
      if ((v354 & 0x8000000000000000) == 0)
      {
        sub_183F7DC7C(v15, v15, v24, v354);
        v22 = v355;
        v45 = &v369;
        v27 = v350;
        if ((v355 & 0x8000000000000000) == 0)
        {
          sub_183F7DC7C(v350, v350, v85, v355);
          v87 = v351;
          sub_183F7DCA8(v27, v27, v2, v22);
          v45 = v15 + v86;
          if (!__OFADD__(v15, v86))
          {
            v24 = v86;
            if (!__OFSUB__(v45, v15))
            {
              v20 = v353;
              if (!v86)
              {
                goto LABEL_126;
              }

              v45 = v27 + v22;
              if (!__OFADD__(v27, v22))
              {
                v88 = *(*v87 + 16);
                if (v88 >= v45)
                {
                  if (v88 != v45)
                  {
                    if (v88 > v45)
                    {
                      if ((v45 & 0x8000000000000000) == 0)
                      {
                        v23 = v88 - v45;
                        if (v88 > v45)
                        {
                          sub_183F9C0C8();
                          v11 = *v87;
                          v22 += v27 + 8;
                          do
                          {
                            if ((v22 - 8) >= *(v11 + 16))
                            {
                              goto LABEL_398;
                            }

                            v89 = *(v11 + 4 * v22);
                            v15 = v89 + v24;
                            if (__OFADD__(v89, v24))
                            {
                              goto LABEL_399;
                            }

                            if ((v15 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_400;
                            }

                            if (HIDWORD(v15))
                            {
                              goto LABEL_401;
                            }

                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v11 = sub_183F9C14C(v11);
                            }

                            *(v11 + 4 * v22++) = v15;
                            --v23;
                          }

                          while (v23);
                          *v87 = v11;
                          goto LABEL_126;
                        }

                        goto LABEL_470;
                      }

LABEL_469:
                      __break(1u);
LABEL_470:
                      __break(1u);
                      goto LABEL_471;
                    }

LABEL_468:
                    __break(1u);
                    goto LABEL_469;
                  }

LABEL_126:
                  v90 = 0;
                  goto LABEL_127;
                }

                goto LABEL_443;
              }

LABEL_442:
              __break(1u);
LABEL_443:
              __break(1u);
LABEL_444:
              __break(1u);
              goto LABEL_445;
            }

LABEL_440:
            __break(1u);
LABEL_441:
            __break(1u);
            goto LABEL_442;
          }

LABEL_439:
          __break(1u);
          goto LABEL_440;
        }

LABEL_438:
        __break(1u);
        goto LABEL_439;
      }
    }

    __break(1u);
    goto LABEL_438;
  }

  v259 = swift_slowAlloc();
  sub_183FA8EEC(v259, v11, v352, v20, v2, v20, v3, v258, v15, sub_183FA3260, v24, v11, 0, v15, v27, v27, v27);
  MEMORY[0x1865EFCB0](v259, -1, -1);
  v90 = 0;
  v20 = v353;
LABEL_127:
  v91 = *v20;
  if (*(*v20 + 16))
  {
    v92 = *(v3 + 16);
    v93 = *(v3 + 24);
    sub_183FA58E8((*(v3 + 40) + 32), *(*(v3 + 40) + 16), (*(v3 + 48) + 32), v356.i64);
    v94 = v356;
    if (v27 != v345)
    {
      goto LABEL_132;
    }

    v95 = *(v91 + 2);
    if (v95)
    {
      v93 = *&v91[8 * v95 + 24];
      goto LABEL_132;
    }

    __break(1u);
LABEL_543:
    __break(1u);

    __break(1u);
    for (i = v91; ; i = v20)
    {
      MEMORY[0x1865EFCB0](i, -1, -1);
      __break(1u);
    }
  }

  v94 = vdupq_n_s64(0x7FF8000000000000uLL);
  v92 = 0x7FF8000000000000;
  v93 = 0x7FF8000000000000;
LABEL_132:
  *v3 = v94;
  *(v3 + 16) = v92;
  *(v3 + 24) = v93;
  sub_183FA5EA0();
}

uint64_t Region.isDisjoint(with:)(uint64_t a1)
{
  v189 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *v1;
  v9 = *(v1 + 8);
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  v15 = *(v1 + 48);
  v182 = *v1;
  v183 = v9;
  v184 = v12;
  v185 = v11;
  v186 = v14;
  v187 = v13;
  v188 = v15;
  v175 = *&v3;
  v176 = v2;
  v177 = v5;
  v178 = v4;
  v179 = v6;
  v180 = v7;
  v181 = v8;
  v16 = sub_183F72694(&v175);
  if (v16 > 3)
  {
    if (v16 != 4)
    {
      if (v16 != 5)
      {
        v57 = *(v14 + 16);
        v58 = sub_183F94060(v14 + 32, v57, v5);
        v59 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          goto LABEL_431;
        }

        v60 = v58;
        if (v57 < v58)
        {
          goto LABEL_434;
        }

        v61 = sub_183F94198(v14 + 32 + 8 * v58, v57 - v58, v4);
        if (__OFADD__(v61, v60))
        {
          goto LABEL_436;
        }

        if (v61 + v60 < (v59 & ~(v59 >> 63)))
        {
          goto LABEL_438;
        }

        v62 = (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v10 & 0x7FF0000000000000) == 0;
        if (!v62 && !*(v14 + 16))
        {
          v182 = v10;
          v183 = v9;
          v184 = v12;
          v185 = v11;
          v174[0] = 0x200000002;
          v63 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
          v64 = *(v6 + 16);
          if (v63 || v64)
          {
            sub_183F9AAE4(&v184, v174, &v182, v6 + 32, &v175, v64, 0, v7 + 32, *(v7 + 16), v8 + 32, *(v8 + 16), v59 & ~(v59 >> 63), v61 + v60);
            return v175;
          }

          v175 = *&v3;
          v176 = v2;
          v177 = v5;
          v178 = v4;
          v173 = 0x200000002;
          sub_183F9AAE4(&v184, v174, &v182, &v177, &v172, 2, 0, &v173, 2, &v175, 2, v59 & ~(v59 >> 63), v61 + v60);
          return v172;
        }

        v65 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
        v66 = *(v6 + 16);
        if (v65 || v66)
        {
          sub_183F9AAE4(v14 + 32, v13 + 32, v15 + 32, v6 + 32, &v182, v66, 0, v7 + 32, *(v7 + 16), v8 + 32, *(v8 + 16), v59 & ~(v59 >> 63), v61 + v60);
          return LOBYTE(v182);
        }

        v182 = v3;
        v183 = v2;
        v184 = v5;
        v185 = v4;
        v175 = 0x200000002;
        sub_183F9AAE4(v14 + 32, v13 + 32, v15 + 32, &v184, v174, 2, 0, &v175, 2, &v182, 2, v59 & ~(v59 >> 63), v61 + v60);
        return LOBYTE(v174[0]);
      }

      if (v11 >= v5)
      {
        v18 = 0;
        if (v11 <= v4)
        {
          v19 = 2;
        }

        else
        {
          v19 = v12 <= v4;
        }
      }

      else if (v11 <= v4)
      {
        v19 = 2;
        v18 = 1;
      }

      else
      {
        if (v12 > v4)
        {
          goto LABEL_432;
        }

        v18 = 1;
        v19 = 1;
      }

      v90 = (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v10 & 0x7FF0000000000000) == 0;
      if (!v90 && !*(v14 + 16))
      {
        v182 = v10;
        v183 = v9;
        v184 = v12;
        v185 = v11;
        v174[0] = 0x200000002;
        v91 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
        v92 = *(v6 + 16);
        if (!v91 && !v92)
        {
          v175 = *&v3;
          v176 = v2;
          v177 = v5;
          v178 = v4;
          v173 = 0x200000002;
          sub_183F9A840(&v184, &v177, &v172, v10, v9, v5, v4, 2, 0, &v173, 2, &v175, 2, v18, v19);
          return v172;
        }

        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = v6 + 32;
        v126 = v19 - v18;
        v127 = 1;
        while (1)
        {
          if (v124 == v126)
          {
            if (v123 == v92)
            {
              return 1;
            }

            if ((v123 & 0x8000000000000000) != 0)
            {
              goto LABEL_395;
            }

            if (HIDWORD(v123))
            {
              goto LABEL_397;
            }

            v128 = *(v125 + 8 * v123);
            LODWORD(v129) = v123++;
            LOBYTE(v175) = 0;
            v124 = v126;
          }

          else
          {
            v128 = *(&v184 + v18 + v124);
            v130 = v124 + v18;
            v131 = __OFADD__(v124, v18);
            if (v123 == v92)
            {
              if (v131)
              {
                goto LABEL_415;
              }

              if ((v130 & 0x8000000000000000) != 0)
              {
                goto LABEL_419;
              }

              v129 = HIDWORD(v130);
              if (v129)
              {
                goto LABEL_423;
              }

              ++v124;
              LOBYTE(v175) = 1;
              v123 = v92;
            }

            else
            {
              if (v131)
              {
                goto LABEL_417;
              }

              if ((v130 & 0x8000000000000000) != 0)
              {
                goto LABEL_421;
              }

              if (HIDWORD(v130))
              {
                goto LABEL_425;
              }

              if ((v123 & 0x8000000000000000) != 0)
              {
                goto LABEL_427;
              }

              if (HIDWORD(v123))
              {
                goto LABEL_429;
              }

              v132 = *(v125 + 8 * v123);
              if (v128 >= v132)
              {
                if (v132 >= v128)
                {
                  ++v124;
                  LODWORD(v129) = v123++;
                  LOBYTE(v175) = 0;
                }

                else
                {
                  LODWORD(v129) = v123++;
                  LOBYTE(v175) = 0;
                  v128 = v132;
                }
              }

              else
              {
                LODWORD(v129) = 0;
                ++v124;
                LOBYTE(v175) = 1;
              }
            }
          }

          v127 &= v175;
          if (v175)
          {
            LODWORD(v129) = v122;
          }

          if (v127)
          {
            v133 = 0;
            v134 = 0;
            goto LABEL_303;
          }

          v135 = v129 ? *(v7 + 28 + 4 * v129) : 0;
          if (v5 <= v128 && v128 < v4)
          {
            break;
          }

          v133 = 0;
          v134 = 0;
LABEL_302:
          v122 = v129;
LABEL_303:
          v143 = v134 & 1;
          if (v134 < 0)
          {
            v143 = -v143;
          }

          v53 = __OFSUB__(v134, v143);
          v144 = v134 - v143;
          if (v53)
          {
            goto LABEL_389;
          }

          v145 = v133 & 1;
          if (v133 < 0)
          {
            v145 = -v145;
          }

          v53 = __OFADD__(v133, v145);
          v146 = v133 + v145;
          if (v53)
          {
            goto LABEL_391;
          }

          if (v144 != v146)
          {
            return 0;
          }
        }

        v137 = v8 + 32 + 8 * v135;
        v138 = *(v7 + 32 + 4 * v129) - v135;
        if (v138 < 2)
        {
          v134 = 0;
          v133 = 0;
          if (v138 != 1)
          {
LABEL_299:
            if (v133 < v138 && *(v137 + 8 * v133) < v9)
            {
              ++v133;
            }

            goto LABEL_302;
          }
        }

        else
        {
          v134 = 0;
          for (i = v138; i > 1; i -= i >> 1)
          {
            if (*(v137 + 8 * (v134 + (i >> 1))) <= v10)
            {
              v134 += i >> 1;
            }
          }

          if (v134 >= v138)
          {
            goto LABEL_295;
          }
        }

        if (*(v137 + 8 * v134) <= v10)
        {
          ++v134;
        }

LABEL_295:
        v140 = v138 - v134;
        v133 = v134;
        if (v138 - v134 >= 2)
        {
          do
          {
            v141 = v140 >> 1;
            v140 -= v140 >> 1;
            v142 = v133 + v141;
            if (*(v137 + 8 * v142) < v9)
            {
              v133 = v142;
            }
          }

          while (v140 > 1);
        }

        goto LABEL_299;
      }

      v93 = v14 + 32;
      v94 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
      v95 = *(v6 + 16);
      if (!v94 && !v95)
      {
        v182 = v3;
        v183 = v2;
        v184 = v5;
        v185 = v4;
        v175 = 0x200000002;
        sub_183F9A840(v93, &v184, v174, v10, v9, v5, v4, 2, 0, &v175, 2, &v182, 2, v18, v19);
        return LOBYTE(v174[0]);
      }

      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = v6 + 32;
      v100 = v19 - v18;
      v101 = 1;
      v102 = v93 + 8 * v18;
      while (1)
      {
        if (v98 == v100)
        {
          if (v97 == v95)
          {
            return 1;
          }

          if ((v97 & 0x8000000000000000) != 0)
          {
            goto LABEL_394;
          }

          if (HIDWORD(v97))
          {
            goto LABEL_396;
          }

          v103 = *(v99 + 8 * v97);
          LODWORD(v104) = v97++;
          LOBYTE(v182) = 0;
          v98 = v100;
        }

        else
        {
          v103 = *(v102 + 8 * v98);
          v105 = v98 + v18;
          v106 = __OFADD__(v98, v18);
          if (v97 == v95)
          {
            if (v106)
            {
              goto LABEL_414;
            }

            if ((v105 & 0x8000000000000000) != 0)
            {
              goto LABEL_418;
            }

            v104 = HIDWORD(v105);
            if (v104)
            {
              goto LABEL_422;
            }

            ++v98;
            LOBYTE(v182) = 1;
            v97 = v95;
          }

          else
          {
            if (v106)
            {
              goto LABEL_416;
            }

            if ((v105 & 0x8000000000000000) != 0)
            {
              goto LABEL_420;
            }

            if (HIDWORD(v105))
            {
              goto LABEL_424;
            }

            if ((v97 & 0x8000000000000000) != 0)
            {
              goto LABEL_426;
            }

            if (HIDWORD(v97))
            {
              goto LABEL_428;
            }

            v107 = *(v99 + 8 * v97);
            if (v103 >= v107)
            {
              if (v107 >= v103)
              {
                ++v98;
                LODWORD(v104) = v97++;
                LOBYTE(v182) = 0;
              }

              else
              {
                LODWORD(v104) = v97++;
                LOBYTE(v182) = 0;
                v103 = v107;
              }
            }

            else
            {
              LODWORD(v104) = 0;
              ++v98;
              LOBYTE(v182) = 1;
            }
          }
        }

        v101 &= LOBYTE(v182);
        if (LOBYTE(v182))
        {
          LODWORD(v104) = v96;
        }

        if (v101)
        {
          v108 = 0;
          v109 = 0;
          goto LABEL_241;
        }

        v110 = v104 ? *(v7 + 28 + 4 * v104) : 0;
        if (v5 <= v103 && v103 < v4)
        {
          break;
        }

        v108 = 0;
        v109 = 0;
LABEL_240:
        v96 = v104;
LABEL_241:
        v118 = v109 & 1;
        if (v109 < 0)
        {
          v118 = -v118;
        }

        v53 = __OFSUB__(v109, v118);
        v119 = v109 - v118;
        if (v53)
        {
          goto LABEL_388;
        }

        v120 = v108 & 1;
        if (v108 < 0)
        {
          v120 = -v120;
        }

        v121 = v108 + v120;
        if (__OFADD__(v108, v120))
        {
          goto LABEL_390;
        }

        result = 0;
        if (v119 != v121)
        {
          return result;
        }
      }

      v112 = v8 + 32 + 8 * v110;
      v113 = *(v7 + 32 + 4 * v104) - v110;
      if (v113 < 2)
      {
        v109 = 0;
        v108 = 0;
        if (v113 != 1)
        {
LABEL_237:
          if (v108 < v113 && *(v112 + 8 * v108) < v9)
          {
            ++v108;
          }

          goto LABEL_240;
        }
      }

      else
      {
        v109 = 0;
        for (j = v113; j > 1; j -= j >> 1)
        {
          if (*(v112 + 8 * (v109 + (j >> 1))) <= v10)
          {
            v109 += j >> 1;
          }
        }

        if (v109 >= v113)
        {
          goto LABEL_233;
        }
      }

      if (*(v112 + 8 * v109) <= v10)
      {
        ++v109;
      }

LABEL_233:
      v115 = v113 - v109;
      v108 = v109;
      if (v113 - v109 >= 2)
      {
        do
        {
          v116 = v115 >> 1;
          v115 -= v115 >> 1;
          v117 = v108 + v116;
          if (*(v112 + 8 * v117) < v9)
          {
            v108 = v117;
          }
        }

        while (v115 > 1);
      }

      goto LABEL_237;
    }

    v20 = *(v14 + 16);
    v21 = v14 + 32;
    v22 = sub_183F94060(v14 + 32, v20, v5);
    v23 = v22 - 1;
    if (__OFSUB__(v22, 1))
    {
      goto LABEL_430;
    }

    v24 = v22;
    if (v20 < v22)
    {
      goto LABEL_433;
    }

    v25 = sub_183F94198(v21 + 8 * v22, v20 - v22, v4);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_435;
    }

    v27 = v23 & ~(v23 >> 63);
    v28 = v26 - v27;
    if (v26 < v27)
    {
      goto LABEL_437;
    }

    if ((~*&v10 & 0x7FF0000000000000) == 0 && (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 || *(v14 + 16))
    {
      v29 = v13 + 32;
      v30 = v15 + 32;
      v31 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
      v32 = *(v6 + 16);
      v33 = v21 + 8 * v27;
      if (!v31 && !v32)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v182 = v3;
        v183 = v2;
        v184 = v5;
        v185 = v4;
        v37 = 1;
        while (1)
        {
          if (v36 == v28)
          {
            if (v35 == 2)
            {
              return 1;
            }

            LODWORD(v38) = 0;
            v39 = *(&v184 + v35++);
            LOBYTE(v175) = 1;
            v36 = v28;
          }

          else
          {
            v39 = *(v33 + 8 * v36);
            v38 = v36 + v27;
            v40 = __OFADD__(v36, v27);
            if (v35 == 2)
            {
              if (v40)
              {
                goto LABEL_398;
              }

              if ((v38 & 0x8000000000000000) != 0)
              {
                goto LABEL_401;
              }

              if (HIDWORD(v38))
              {
                goto LABEL_403;
              }

              ++v36;
              LOBYTE(v175) = 0;
              v35 = 2;
            }

            else
            {
              if (v40)
              {
                goto LABEL_399;
              }

              if ((v38 & 0x8000000000000000) != 0)
              {
                goto LABEL_400;
              }

              if (HIDWORD(v38))
              {
                goto LABEL_402;
              }

              v41 = *(&v184 + v35);
              if (v39 >= v41)
              {
                if (v41 < v39)
                {
                  LODWORD(v38) = 0;
                  ++v35;
                  LOBYTE(v175) = 1;
                  v39 = v41;
                  goto LABEL_43;
                }

                ++v36;
                ++v35;
              }

              else
              {
                ++v36;
              }

              LOBYTE(v175) = 0;
            }
          }

LABEL_43:
          v37 &= v175;
          if (v175)
          {
            LODWORD(v38) = v34;
          }

          if (v37)
          {
            v42 = 0;
            v43 = 0;
            goto LABEL_73;
          }

          if (v38)
          {
            v44 = *(v13 + 28 + 4 * v38);
          }

          else
          {
            v44 = 0;
          }

          if (v5 <= v39 && v39 < v4)
          {
            v46 = v30 + 8 * v44;
            v47 = *(v29 + 4 * v38) - v44;
            if (v47 < 2)
            {
              v43 = 0;
              v42 = 0;
              if (v47 != 1)
              {
LABEL_69:
                if (v42 < v47 && *(v46 + 8 * v42) < v2)
                {
                  ++v42;
                }

                goto LABEL_72;
              }
            }

            else
            {
              v43 = 0;
              for (k = v47; k > 1; k -= k >> 1)
              {
                if (*(v46 + 8 * (v43 + (k >> 1))) <= v3)
                {
                  v43 += k >> 1;
                }
              }

              if (v43 >= v47)
              {
LABEL_65:
                v49 = v47 - v43;
                v42 = v43;
                if (v47 - v43 >= 2)
                {
                  do
                  {
                    v50 = v49 >> 1;
                    v49 -= v49 >> 1;
                    v51 = v42 + v50;
                    if (*(v46 + 8 * v51) < v2)
                    {
                      v42 = v51;
                    }
                  }

                  while (v49 > 1);
                }

                goto LABEL_69;
              }
            }

            if (*(v46 + 8 * v43) <= v3)
            {
              ++v43;
            }

            goto LABEL_65;
          }

          v42 = 0;
          v43 = 0;
LABEL_72:
          v34 = v38;
LABEL_73:
          v52 = v43 & 1;
          if (v43 < 0)
          {
            v52 = -v52;
          }

          v53 = __OFSUB__(v43, v52);
          v54 = v43 - v52;
          if (v53)
          {
            __break(1u);
LABEL_385:
            __break(1u);
LABEL_386:
            __break(1u);
            goto LABEL_387;
          }

          v55 = v42 & 1;
          if (v42 < 0)
          {
            v55 = -v55;
          }

          v53 = __OFADD__(v42, v55);
          v56 = v42 + v55;
          if (v53)
          {
            goto LABEL_385;
          }

          if (v54 != v56)
          {
            return 0;
          }
        }
      }

      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = v6 + 32;
      v71 = 1;
      while (1)
      {
        if (v69 == v28)
        {
          if (v68 == v32)
          {
            return 1;
          }

          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_392;
          }

          if (HIDWORD(v68))
          {
            goto LABEL_393;
          }

          LODWORD(v72) = 0;
          v73 = *(v70 + 8 * v68++);
          LOBYTE(v182) = 1;
          v69 = v28;
        }

        else
        {
          v73 = *(v33 + 8 * v69);
          v72 = v69 + v27;
          v74 = __OFADD__(v69, v27);
          if (v68 == v32)
          {
            if (v74)
            {
              goto LABEL_404;
            }

            if ((v72 & 0x8000000000000000) != 0)
            {
              goto LABEL_406;
            }

            if (HIDWORD(v72))
            {
              goto LABEL_408;
            }

            ++v69;
            LOBYTE(v182) = 0;
            v68 = v32;
          }

          else
          {
            if (v74)
            {
              goto LABEL_405;
            }

            if ((v72 & 0x8000000000000000) != 0)
            {
              goto LABEL_407;
            }

            if (HIDWORD(v72))
            {
              goto LABEL_409;
            }

            if ((v68 & 0x8000000000000000) != 0)
            {
              goto LABEL_410;
            }

            if (HIDWORD(v68))
            {
              goto LABEL_411;
            }

            v75 = *(v70 + 8 * v68);
            if (v73 >= v75)
            {
              if (v75 < v73)
              {
                LODWORD(v72) = 0;
                ++v68;
                LOBYTE(v182) = 1;
                v73 = v75;
                goto LABEL_129;
              }

              ++v69;
              ++v68;
            }

            else
            {
              ++v69;
            }

            LOBYTE(v182) = 0;
          }
        }

LABEL_129:
        v71 &= LOBYTE(v182);
        if (LOBYTE(v182))
        {
          LODWORD(v72) = v67;
        }

        if (v71)
        {
          v76 = 0;
          v77 = 0;
          goto LABEL_159;
        }

        if (v72)
        {
          v78 = *(v13 + 28 + 4 * v72);
        }

        else
        {
          v78 = 0;
        }

        if (v5 <= v73 && v73 < v4)
        {
          v80 = v30 + 8 * v78;
          v81 = *(v29 + 4 * v72) - v78;
          if (v81 < 2)
          {
            v77 = 0;
            v76 = 0;
            if (v81 != 1)
            {
LABEL_155:
              if (v76 < v81 && *(v80 + 8 * v76) < v2)
              {
                ++v76;
              }

              goto LABEL_158;
            }
          }

          else
          {
            v77 = 0;
            for (m = v81; m > 1; m -= m >> 1)
            {
              if (*(v80 + 8 * (v77 + (m >> 1))) <= v3)
              {
                v77 += m >> 1;
              }
            }

            if (v77 >= v81)
            {
LABEL_151:
              v83 = v81 - v77;
              v76 = v77;
              if (v81 - v77 >= 2)
              {
                do
                {
                  v84 = v83 >> 1;
                  v83 -= v83 >> 1;
                  v85 = v76 + v84;
                  if (*(v80 + 8 * v85) < v2)
                  {
                    v76 = v85;
                  }
                }

                while (v83 > 1);
              }

              goto LABEL_155;
            }
          }

          if (*(v80 + 8 * v77) <= v3)
          {
            ++v77;
          }

          goto LABEL_151;
        }

        v76 = 0;
        v77 = 0;
LABEL_158:
        v67 = v72;
LABEL_159:
        v86 = v77 & 1;
        if (v77 < 0)
        {
          v86 = -v86;
        }

        v53 = __OFSUB__(v77, v86);
        v87 = v77 - v86;
        if (v53)
        {
          goto LABEL_386;
        }

        v88 = v76 & 1;
        if (v76 < 0)
        {
          v88 = -v88;
        }

        v53 = __OFADD__(v76, v88);
        v89 = v76 + v88;
        if (v53)
        {
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          __break(1u);
LABEL_399:
          __break(1u);
LABEL_400:
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          __break(1u);
LABEL_403:
          __break(1u);
LABEL_404:
          __break(1u);
LABEL_405:
          __break(1u);
LABEL_406:
          __break(1u);
LABEL_407:
          __break(1u);
LABEL_408:
          __break(1u);
LABEL_409:
          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
          goto LABEL_413;
        }

        if (v87 != v89)
        {
          return 0;
        }
      }
    }

    v182 = v10;
    v183 = v9;
    v184 = v12;
    v185 = v11;
    v174[0] = 0x200000002;
    v147 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
    v148 = *(v6 + 16);
    if (!v147 && !v148)
    {
      v175 = *&v3;
      v176 = v2;
      v177 = v5;
      v178 = v4;
      v173 = 0x200000002;
      sub_183F9A5AC(&v184, v174, &v182, &v177, &v172, v3, v2, v5, v4, 2, 0, &v173, 2, &v175, 2, v23 & ~(v23 >> 63), v26);
      return v172;
    }

    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = v6 + 32;
    v153 = 1;
    while (1)
    {
      if (v151 == v28)
      {
        if (v150 == v148)
        {
          return 1;
        }

        if ((v150 & 0x8000000000000000) != 0)
        {
          goto LABEL_439;
        }

        if (HIDWORD(v150))
        {
          goto LABEL_440;
        }

        LODWORD(v154) = 0;
        v155 = *(v152 + 8 * v150++);
        LOBYTE(v175) = 1;
        v151 = v28;
      }

      else
      {
        v155 = *(&v184 + v27 + v151);
        v154 = v151 + v27;
        v156 = __OFADD__(v151, v27);
        if (v150 == v148)
        {
          if (v156)
          {
            goto LABEL_441;
          }

          if ((v154 & 0x8000000000000000) != 0)
          {
            goto LABEL_443;
          }

          if (HIDWORD(v154))
          {
            goto LABEL_445;
          }

          ++v151;
          LOBYTE(v175) = 0;
          v150 = v148;
        }

        else
        {
          if (v156)
          {
            goto LABEL_442;
          }

          if ((v154 & 0x8000000000000000) != 0)
          {
            goto LABEL_444;
          }

          if (HIDWORD(v154))
          {
            goto LABEL_446;
          }

          if ((v150 & 0x8000000000000000) != 0)
          {
            goto LABEL_447;
          }

          if (HIDWORD(v150))
          {
            goto LABEL_448;
          }

          v157 = *(v152 + 8 * v150);
          if (v155 >= v157)
          {
            if (v157 < v155)
            {
              LODWORD(v154) = 0;
              ++v150;
              LOBYTE(v175) = 1;
              v155 = v157;
              goto LABEL_345;
            }

            ++v151;
            ++v150;
          }

          else
          {
            ++v151;
          }

          LOBYTE(v175) = 0;
        }
      }

LABEL_345:
      v153 &= v175;
      if (v175)
      {
        LODWORD(v154) = v149;
      }

      if (v153)
      {
        v158 = 0;
        v159 = 0;
        goto LABEL_375;
      }

      if (v154)
      {
        v160 = *(&v173 + v154 + 1);
      }

      else
      {
        v160 = 0;
      }

      if (v5 <= v155 && v155 < v4)
      {
        v162 = &v182 + v160;
        v163 = *(v174 + v154) - v160;
        if (v163 < 2)
        {
          v159 = 0;
          v158 = 0;
          if (v163 != 1)
          {
LABEL_371:
            if (v158 < v163 && v162[v158] < v2)
            {
              ++v158;
            }

            goto LABEL_374;
          }
        }

        else
        {
          v159 = 0;
          for (n = v163; n > 1; n -= n >> 1)
          {
            if (v162[v159 + (n >> 1)] <= v3)
            {
              v159 += n >> 1;
            }
          }

          if (v159 >= v163)
          {
LABEL_367:
            v165 = v163 - v159;
            v158 = v159;
            if (v163 - v159 >= 2)
            {
              do
              {
                v166 = v165 >> 1;
                v165 -= v165 >> 1;
                v167 = v158 + v166;
                if (v162[v167] < v2)
                {
                  v158 = v167;
                }
              }

              while (v165 > 1);
            }

            goto LABEL_371;
          }
        }

        if (v162[v159] <= v3)
        {
          ++v159;
        }

        goto LABEL_367;
      }

      v158 = 0;
      v159 = 0;
LABEL_374:
      v149 = v154;
LABEL_375:
      v168 = v159 & 1;
      if (v159 < 0)
      {
        v168 = -v168;
      }

      v53 = __OFSUB__(v159, v168);
      v169 = v159 - v168;
      if (v53)
      {
        goto LABEL_412;
      }

      v170 = v158 & 1;
      if (v158 < 0)
      {
        v170 = -v170;
      }

      v53 = __OFADD__(v158, v170);
      v171 = v158 + v170;
      if (v53)
      {
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
      }

      if (v169 != v171)
      {
        return 0;
      }
    }
  }

  return v16 - 1 >= 3;
}

void Region.subtract(_:)(__int128 *a1)
{
  v3 = v1;
  v120[2] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v116 = *a1;
  v117 = v4;
  v118 = a1[2];
  v119 = *(a1 + 6);
  v5 = *v1;
  v6 = *v1 & 0x7FF0000000000000;
  v7 = v6 == 0x7FF0000000000000;
  v8 = *v1 & 0xFFFFFFFFFFFFFLL;
  if (!v8)
  {
    v7 = 0;
  }

  v9 = !v7 && *(*(v1 + 32) + 16) == 0;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  if ((~v116 & 0x7FF0000000000000) != 0)
  {
    v13 = *(&v117 + 1) < v11 || v7;
    if (v13)
    {
      return;
    }
  }

  else if (v6 == 0x7FF0000000000000 && v8 || (v116 & 0xFFFFFFFFFFFFFLL) != 0 || *(&v117 + 1) < v11)
  {
    return;
  }

  if (v12 < *&v117 || v10 < *&v116 || *(&v116 + 1) < v5)
  {
    return;
  }

  v14 = *(v1 + 40);
  v15 = *(v1 + 32);
  v103 = v1 + 40;
  v16 = *(v1 + 48);
  v105 = (v1 + 48);
  *&v112 = v5;
  *(&v112 + 1) = v10;
  *&v113 = v11;
  *(&v113 + 1) = v12;
  *&v114 = v15;
  *(&v114 + 1) = v14;
  v115 = v16;
  v17 = sub_183FA42A4(v9, *&v117, *(&v117 + 1));
  v19 = v18;
  v21 = v14;
  v20 = v15;
  v22 = v16;

  if (*(v118 + 16))
  {
    v24 = *(v118 + 16);
  }

  else
  {
    v24 = 2;
  }

  v25 = v19 - v17;
  if (__OFSUB__(v19, v17))
  {
    goto LABEL_133;
  }

  v26 = __OFADD__(v25, v24);
  v27 = (v25 + v24);
  if (v26)
  {
    goto LABEL_134;
  }

  v104 = v27;
  v15 = *(v3 + 40);
  v21 = *(v3 + 48);
  v109 = sub_183FA4388(v17, v19);
  v22 = v17;
  v17 = v15;
  LODWORD(v2) = v21;

  v112 = v116;
  v113 = v117;
  v114 = v118;
  v115 = v119;
  v20 = &v112;
  v28 = sub_183FA4388(0, v24);
  v29 = v109 + v28;
  if (__OFADD__(v109, v28))
  {
    goto LABEL_135;
  }

  v102[3] = v102;
  MEMORY[0x1EEE9AC00](v28);
  v15 = v101;
  v101[2] = &v116;
  v101[3] = v22;
  v101[4] = v19;
  v30 = sub_183FA5A00();
  v31 = *(v3 + 40);
  v32 = *(v31 + 16);
  LODWORD(v2) = v19 == v32;
  v21 = v19;
  v17 = v22;
  if (v22)
  {
    v33 = v22 - 1;
    v34 = v104;
    if (__OFSUB__(v22, 1))
    {
      goto LABEL_148;
    }

    if (v33 >= v32)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v23 = *(v31 + 32 + 4 * v33);
    if (v22 > 1)
    {
      if (v22 - 2 >= v32)
      {
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
      }

      LODWORD(v2) = 0;
      v20 = *(v31 + 32 + 4 * (v22 - 2));
      if (!v19)
      {
        v106 = 0;
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    LODWORD(v2) = 0;
  }

  else
  {
    v23 = 0;
    v34 = v104;
  }

  v106 = 0;
  v20 = 0;
  if (!v19)
  {
    goto LABEL_38;
  }

LABEL_35:
  v35 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v35 >= v32)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v106 = *(v31 + 4 * v35 + 32);
LABEL_38:
  v22 = v34 * v29;
  if ((v34 * v29) >> 64 != (v34 * v29) >> 63)
  {
    goto LABEL_136;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v102[0] = v32;
  if (v34 >> 60)
  {
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if ((8 * v34) >= 1025)
  {
    goto LABEL_137;
  }

  while (1)
  {
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v30);
    v38 = v101 - v37;
    v107 = v39;
    if (v40 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v91 = v104;
        HIBYTE(v100) = v2;
        LOBYTE(v100) = 1;
        v98 = v15;
        v92 = swift_slowAlloc();
        sub_183FA8588(v92, v91, v22, v38, v91, v3, v20, v107, &v121, sub_183FA327C, v98, v22, v100, v106, v17, v21, v17);
        MEMORY[0x1865EFCB0](v92, -1, -1);
        goto LABEL_91;
      }
    }

    v108 = v17;
    v109 = v21;
    v41 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v44 = v101 - v43;
    if (v22 < 0)
    {
      goto LABEL_157;
    }

    if (v22 >> 60)
    {
      goto LABEL_158;
    }

    v102[2] = v42;
    if (8 * v22 >= 1025)
    {
      v41 = swift_stdlib_isStackAllocationSafe();
      if ((v41 & 1) == 0)
      {
        break;
      }
    }

    v104 = v101;
    MEMORY[0x1EEE9AC00](v41);
    v48 = v101 - v47;
    v110 = 0;
    v111 = 0;
    if (v45 < v20)
    {
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v102[1] = v46;
    v49 = *(v3 + 40);
    v50 = *(v3 + 48);
    v51 = *v3;
    v52 = *(v3 + 16);
    v53 = *(v3 + 32);
    v120[0] = v50 + 8 * v20 + 32;
    v120[1] = v45 - v20;
    v112 = v51;
    v113 = v52;
    *&v114 = v53;
    *(&v114 + 1) = v49;
    v115 = v50;
    v54 = v45;
    swift_retain_n();

    sub_183FA2360(&v112, &v116, v108, v109, v48, &v110, v22, 1, v120, v38, &v111, v44, v54, &qword_1EA853EC0, &byte_1EA868CE9, sub_183FBF818);

    v22 = v110;
    if (v110 < 0)
    {
      goto LABEL_144;
    }

    v55 = v105;
    v56 = v106;
    if (v2)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v22)
        {
LABEL_56:
          v60 = sub_183EA76E4(v22, 0);
          memcpy(v60 + 4, v48, 8 * v22);
        }

        else
        {
          v60 = MEMORY[0x1E69E7CC0];
        }

        *v55 = v60;
        v57 = v111;
        if ((v111 & 0x8000000000000000) != 0)
        {
          goto LABEL_145;
        }

        goto LABEL_59;
      }

      if (v22 > *(*v55 + 24) >> 1)
      {
        goto LABEL_56;
      }
    }

    if (v56 < v107)
    {
      goto LABEL_152;
    }

    sub_183F7DC7C(v107, v56, v48, v22);
    v57 = v111;
    if ((v111 & 0x8000000000000000) != 0)
    {
      goto LABEL_145;
    }

    if (!v2)
    {
      v58 = v108;
      v59 = v109;
      sub_183F7DC7C(v108, v109, v38, v111);
      v20 = v103;
      goto LABEL_69;
    }

LABEL_59:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v57)
      {
LABEL_63:
        v61 = sub_183EA76E4(v57, 0);
        memcpy(v61 + 4, v38, 8 * v57);
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
      }

      *(v3 + 32) = v61;
      goto LABEL_66;
    }

    if (v57 > *(*(v3 + 32) + 24) >> 1)
    {
      goto LABEL_63;
    }

    sub_183F7DC7C(v108, v109, v38, v57);
LABEL_66:
    v20 = v103;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v57)
      {
LABEL_71:
        v62 = sub_183F9BAB8(v57, 0);
        memcpy(v62 + 4, v44, 4 * v57);
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
      }

      *v20 = v62;
      goto LABEL_74;
    }

    if (v57 > *(*v20 + 24) >> 1)
    {
      goto LABEL_71;
    }

    v59 = v109;
    v58 = v108;
LABEL_69:
    sub_183F7DCA8(v58, v59, v44, v57);
LABEL_74:
    v63 = v107 + v22;
    if (__OFADD__(v107, v22))
    {
      goto LABEL_146;
    }

    v2 = v63 - v56;
    if (__OFSUB__(v63, v56))
    {
      goto LABEL_147;
    }

    v21 = v109;
    v17 = v108;
    if (!v2)
    {
      goto LABEL_91;
    }

    v64 = v108 + v57;
    if (__OFADD__(v108, v57))
    {
      goto LABEL_153;
    }

    v65 = *v20;
    v15 = *(*v20 + 16);
    if (v15 < v64)
    {
      goto LABEL_154;
    }

    if (v64 == v15)
    {
      goto LABEL_91;
    }

    if (v64 >= v15)
    {
      goto LABEL_160;
    }

    if (v64 < 0)
    {
      goto LABEL_161;
    }

    if (!v15)
    {
      goto LABEL_162;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_183F9C14C(v65);
    }

    while (v64 < *(v65 + 2))
    {
      v66 = &v65[4 * v64];
      v67 = *(v66 + 8);
      v26 = __OFADD__(v67, v2);
      v68 = v67 + v2;
      if (v26)
      {
        goto LABEL_130;
      }

      if ((v68 & 0x8000000000000000) != 0)
      {
        goto LABEL_131;
      }

      if (HIDWORD(v68))
      {
        goto LABEL_132;
      }

      ++v64;
      *(v66 + 8) = v68;
      if (v15 == v64)
      {
        *v20 = v65;
        goto LABEL_91;
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    v88 = v23;
    v30 = swift_stdlib_isStackAllocationSafe();
    if ((v30 & 1) == 0)
    {
      v89 = v104;
      v90 = swift_slowAlloc();
      sub_183FA6B50(v90, v89, v89, v22, v3, v20, v88, sub_183FA327C, 1uLL, v15, v22, 1u, v2, v106, v17, v21, v17);
      MEMORY[0x1865EFCB0](v90, -1, -1);
      goto LABEL_91;
    }
  }

  v93 = v104;
  v94 = swift_slowAlloc();
  v21 = v109;
  HIBYTE(v99) = v2;
  LOBYTE(v99) = 1;
  v97 = v15;
  v95 = v94;
  v96 = v44;
  v17 = v108;
  sub_183FA8E88(v94, v22, v38, v93, v96, v93, v3, v20, v107, sub_183FA327C, v97, v22, v99, v106, v108, v109, v108);
  MEMORY[0x1865EFCB0](v95, -1, -1);
LABEL_91:
  v69 = *(v3 + 32);
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = *(v3 + 40);
    v72 = *(v71 + 16);
    if (v72)
    {
      v73 = (*v105 + 32);
      v74 = *v105 + 24;
      v75 = *(v71 + 32);
      if (v75)
      {
        v76 = *v73;
        v77 = *(v74 + 8 * v75);
        v78 = NAN;
        if ((*v73 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v78 = *v73;
        }

        if ((~*v73 & 0x7FF0000000000000) == 0)
        {
          v76 = v78;
        }

        if ((~*&v77 & 0x7FF0000000000000) == 0 && (*(v74 + 8 * v75) & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v77 = NAN;
        }

        v79 = v72 - 1;
        if (v79)
        {
LABEL_114:
          v82 = (v71 + 36);
          do
          {
            v84 = *v82++;
            v83 = v84;
            if (v75 != v84)
            {
              v85 = v73[v75];
              v86 = *(v74 + 8 * v83);
              if ((*&v85 & 0xFFFFFFFFFFFFFLL) != 0)
              {
                v87 = v76;
              }

              else
              {
                v87 = v85;
              }

              if ((~*&v85 & 0x7FF0000000000000) != 0)
              {
                v87 = v85;
              }

              if (v76 > v85)
              {
                v76 = v87;
              }

              if (v86 >= v77)
              {
                if ((~*&v86 & 0x7FF0000000000000) != 0)
                {
                  v77 = *(v74 + 8 * v83);
                }

                else if ((*(v74 + 8 * v83) & 0xFFFFFFFFFFFFFLL) == 0)
                {
                  v77 = *(v74 + 8 * v83);
                }
              }
            }

            v75 = v83;
            --v79;
          }

          while (v79);
        }
      }

      else
      {
        v77 = NAN;
        v76 = NAN;
        v79 = v72 - 1;
        if (v79)
        {
          goto LABEL_114;
        }
      }
    }

    else
    {
      v77 = NAN;
      v76 = NAN;
    }

    if (v17)
    {
      v80 = *(v3 + 16);
    }

    else
    {
      v80 = *(v69 + 32);
    }

    if (v21 == v102[0])
    {
      v81 = *(v69 + 8 * v70 + 24);
    }

    else
    {
      v81 = *(v3 + 24);
    }
  }

  else
  {
    v76 = NAN;
    v77 = NAN;
    v80 = 0x7FF8000000000000;
    v81 = 0x7FF8000000000000;
  }

  *v3 = v76;
  *(v3 + 8) = v77;
  *(v3 + 16) = v80;
  *(v3 + 24) = v81;
  sub_183FA5EA0();
}

uint64_t sub_183F99594(uint64_t a1, uint64_t (*a2)(_BYTE **), double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_183F9986C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_183F995EC(uint64_t a1, uint64_t (*a2)(_BYTE **), double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v13 && !*(v11 + 16))
  {
    v25 = *(a1 + 16);
    *v33 = *a1;
    *&v33[16] = v25;
    v32 = 0x200000002;
    v26 = (*a8 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a8 & 0x7FF0000000000000) == 0;
    v27 = *(a8 + 32);
    v28 = *(v27 + 16);
    if (v26 || v28)
    {
      v34 = &v33[8 * a9 + 16];
      v35 = a10 - a9;
      v36 = a9;
      v37 = (v27 + 32);
      v38 = v28;
      v39 = 0x7FF8000000000000;
      v40 = 0;
      v41 = 1;
      v42 = 0;
      v43 = 1;
      v44 = &v32;
      v45 = 2;
      v46 = v33;
      v47 = 2;
      v48 = a3;
      v49 = a4;
      v50 = a5;
      v51 = a6;
      v52 = 1;
    }

    else
    {
      v29 = *(a8 + 24);
      v30 = *(a8 + 8);
      v31 = v29;
      v34 = &v33[8 * a9 + 16];
      v35 = a10 - a9;
      v36 = a9;
      v37 = &v30 + 8;
      v38 = xmmword_184399820;
      v39 = 0x7FF8000000000000;
      v40 = 0;
      v41 = 1;
      v42 = 0;
      v43 = 1;
      v44 = &v32;
      v45 = 2;
      v46 = v33;
      v47 = 2;
      v48 = a3;
      v49 = a4;
      v50 = a5;
      v51 = a6;
      v52 = 1;
    }
  }

  else
  {
    v14 = v11 + 32;
    v15 = (v10 + 32);
    v16 = *(v10 + 16);
    v17 = (v12 + 32);
    v18 = *(v12 + 16);
    v19 = (*a8 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a8 & 0x7FF0000000000000) == 0;
    v20 = *(a8 + 32);
    v21 = *(v20 + 16);
    if (!v19 && v21 == 0)
    {
      v23 = *(a8 + 24);
      *v33 = *a8;
      *&v33[8] = *(a8 + 8);
      *&v33[24] = v23;
      v34 = (v14 + 8 * a9);
      v35 = a10 - a9;
      v36 = a9;
      v37 = &v33[16];
      v38 = xmmword_184399820;
    }

    else
    {
      v33[0] = 1;
      v34 = (v14 + 8 * a9);
      v35 = a10 - a9;
      v36 = a9;
      v37 = (v20 + 32);
      v38 = v21;
    }

    v39 = 0x7FF8000000000000;
    v40 = 0;
    v41 = 1;
    v42 = 0;
    v43 = 1;
    v44 = v15;
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = a3;
    v49 = a4;
    v50 = a5;
    v51 = a6;
    v52 = 1;
  }

  return a2(&v34);
}

uint64_t sub_183F9986C(uint64_t a1, uint64_t (*a2)(_BYTE **), double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v11 && !*(v10 + 16))
  {
    v30 = *(a1 + 16);
    *v41 = *a1;
    *&v41[16] = v30;
    v31 = (*a8 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a8 & 0x7FF0000000000000) == 0;
    v32 = *(a8 + 32);
    v15 = *(v32 + 16);
    if (v31 || v15 != 0)
    {
      v17 = (v32 + 32);
      v34 = *(a8 + 40);
      v35 = *(a8 + 48);
      v20 = (v34 + 32);
      v21 = *(v34 + 16);
      v22 = (v35 + 32);
      v23 = *(v35 + 16);
      v24 = &v41[8 * a9 + 16];
      v25 = a10 - a9;
      LOBYTE(v42) = 1;
      LOBYTE(v38) = 1;
      goto LABEL_15;
    }

    v36 = *(a8 + 24);
    v38 = *a8;
    v27 = &v38;
    v39 = *(a8 + 8);
    v40 = v36;
    v37 = 0x200000002;
    v42 = &v41[8 * a9 + 16];
    v43 = a10 - a9;
    v44 = a9;
    v45 = &v39 + 8;
    v46 = xmmword_184399820;
    v47 = 0x7FF8000000000000;
    v48 = 0;
    v49 = 1;
    v50 = 0;
    v51 = 1;
    v28 = &v37;
LABEL_17:
    v52 = v28;
    v53 = 2;
    v54 = v27;
    v55 = 2;
    goto LABEL_18;
  }

  v12 = v10 + 32;
  v13 = (*a8 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a8 & 0x7FF0000000000000) == 0;
  v14 = *(a8 + 32);
  v15 = *(v14 + 16);
  if (!v13 && v15 == 0)
  {
    v26 = *(a8 + 24);
    *v41 = *a8;
    v27 = v41;
    *&v41[8] = *(a8 + 8);
    *&v41[24] = v26;
    v38 = 0x200000002;
    LOBYTE(v37) = 1;
    v42 = (v12 + 8 * a9);
    v43 = a10 - a9;
    v44 = a9;
    v45 = &v41[16];
    v46 = xmmword_184399820;
    v47 = 0x7FF8000000000000;
    v48 = 0;
    v49 = 1;
    v50 = 0;
    v51 = 1;
    v28 = &v38;
    goto LABEL_17;
  }

  v17 = (v14 + 32);
  v18 = *(a8 + 40);
  v19 = *(a8 + 48);
  v20 = (v18 + 32);
  v21 = *(v18 + 16);
  v22 = (v19 + 32);
  v23 = *(v19 + 16);
  v24 = (v12 + 8 * a9);
  v25 = a10 - a9;
  LOBYTE(v42) = 1;
  v41[0] = 1;
LABEL_15:
  v42 = v24;
  v43 = v25;
  v44 = a9;
  v45 = v17;
  v46 = v15;
  v47 = 0x7FF8000000000000;
  v48 = 0;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = v20;
  v53 = v21;
  v54 = v22;
  v55 = v23;
LABEL_18:
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = 0;
  return a2(&v42);
}

void sub_183F99AD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a5;
  v16 = a3;
  v17 = a14;
  v18 = a12;
  v63 = *MEMORY[0x1E69E9840];
  v21 = a2[4];
  v22 = *(v21 + 16);
  v23 = (~*a2 & 0x7FF0000000000000) != 0 || (*a2 & 0xFFFFFFFFFFFFFLL) == 0;
  v59 = a7;
  v58 = a6;
  if (v23)
  {
    if (v22)
    {
LABEL_16:
      v29 = 0;
      v27 = v21 + 32;
      v30 = a2[5];
      v31 = v30 + 32;
      v56 = a2[6] + 32;
      v32 = v30 + 28;
      v55 = v30 + 28;
      while (1)
      {
        if (v29 == 0x100000000)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
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
          goto LABEL_90;
        }

        if (v29)
        {
          v33 = *(v32 + 4 * v29);
        }

        else
        {
          v33 = 0;
        }

        v34 = *v15;
        v35 = a6 - *v15;
        if (a6 < *v15)
        {
          goto LABEL_82;
        }

        v24 = *(v27 + 8 * v29);
        v36 = *(v31 + 4 * v29);
        if (v16)
        {
          v26 = (v16 + 8 * v34);
        }

        else
        {
          v26 = 0;
        }

        if (v36 == v33 || a6 == v34)
        {
          v37 = 0;
          if ((a7 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v38 = a11;
          v39 = v16;
          v40 = v31;
          v41 = a9;
          v42 = a8;
          if (v36 - v33 >= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v36 - v33;
          }

          memcpy(v26, (v56 + 8 * v33), 8 * v37);
          a7 = v59;
          if ((v59 & 1) == 0)
          {
            v17 = a14;
            v18 = a12;
            a8 = v42;
            a9 = v41;
            v31 = v40;
            v16 = v39;
            a11 = v38;
            v15 = a5;
            a6 = v58;
            v32 = v55;
            goto LABEL_43;
          }

          v17 = a14;
          v18 = a12;
          a8 = v42;
          a9 = v41;
          v31 = v40;
          v16 = v39;
          a11 = v38;
          v15 = a5;
          a6 = v58;
          v32 = v55;
          if (v37 < 0)
          {
            goto LABEL_87;
          }
        }

        if (*(a8 + 8) == v37)
        {
          if (!v37)
          {
            goto LABEL_17;
          }

          v43 = *a8;
          v44 = v37;
          v45 = v26;
          while (*v43 == *v45)
          {
            ++v45;
            ++v43;
            if (!--v44)
            {
              goto LABEL_17;
            }
          }
        }

        *a8 = v26;
        *(a8 + 8) = v37;
LABEL_43:
        if (__OFADD__(*v15, v37))
        {
          goto LABEL_83;
        }

        *v15 += v37;
        *(a9 + 8 * *a11) = v24;
        v46 = v17 + *v15;
        if (__OFADD__(v17, *v15))
        {
          goto LABEL_84;
        }

        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        if (HIDWORD(v46))
        {
          goto LABEL_86;
        }

        *(v18 + 4 * *a11) = v46;
        if (__OFADD__(*a11, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        ++*a11;
LABEL_17:
        if (++v29 == v22)
        {
          return;
        }
      }
    }

    v14 = a2[2];
    v24 = a2[3];
    __src = *a2;
    v61 = v14;
    v62 = v24;
    v25 = *a5;
    if (a6 < *a5)
    {
      goto LABEL_88;
    }

    if (a3)
    {
      v26 = (a3 + 8 * v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = a6 - v25;
    if (a6 == v25)
    {
      if ((a7 & 1) == 0)
      {
        v28 = 0;
        goto LABEL_63;
      }

      if (!*(a8 + 8))
      {
        goto LABEL_69;
      }

      v28 = 0;
    }

    else
    {
LABEL_50:
      v47 = a8;
      if (v27 >= 2)
      {
        v28 = 2;
      }

      else
      {
        v28 = v27;
      }

      memcpy(v26, &__src, 8 * v28);
      a7 = v59;
      if ((v59 & 1) == 0)
      {
        v17 = a14;
        v18 = a12;
        a8 = v47;
        a6 = v58;
        goto LABEL_63;
      }

      v17 = a14;
      v18 = a12;
      if (v27 < 0)
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
      }

      a8 = v47;
      a6 = v58;
      if (*(v47 + 8) == v28)
      {
        v48 = *v47;
        v49 = v28;
        v50 = v26;
        while (*v48 == *v50)
        {
          ++v50;
          ++v48;
          if (!--v49)
          {
            goto LABEL_69;
          }
        }
      }
    }

    *a8 = v26;
    *(a8 + 8) = v28;
LABEL_63:
    if (__OFADD__(*v15, v28))
    {
      goto LABEL_94;
    }

    *v15 += v28;
    *(a9 + 8 * *a11) = v14;
    v51 = v17 + *v15;
    if (__OFADD__(v17, *v15))
    {
      goto LABEL_89;
    }

    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    if (HIDWORD(v51))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    *(v18 + 4 * *a11) = v51;
    if (__OFADD__(*a11, 1))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    ++*a11;
LABEL_69:
    v52 = *v15;
    if (*v15 > a6)
    {
      goto LABEL_88;
    }

    v53 = v16 + 8 * v52;
    if (!v16)
    {
      v53 = 0;
    }

    if (a7)
    {
      if (!*(a8 + 8))
      {
        return;
      }

      *a8 = v53;
      *(a8 + 8) = 0;
      v52 = *v15;
    }

    *v15 = v52;
    *(a9 + 8 * *a11) = v24;
    v54 = v17 + *v15;
    if (__OFADD__(v17, *v15))
    {
      goto LABEL_89;
    }

    if ((v54 & 0x8000000000000000) != 0)
    {
LABEL_90:
      __break(1u);
    }

    else if (!HIDWORD(v54))
    {
      *(v18 + 4 * *a11) = v54;
      if (!__OFADD__(*a11, 1))
      {
        ++*a11;
        return;
      }

      goto LABEL_92;
    }

    goto LABEL_91;
  }

  if (v22)
  {
    goto LABEL_16;
  }
}

uint64_t sub_183F99EF8(uint64_t a1, uint64_t (*a2)(char **), uint64_t a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
  v5 = a4[4];
  v6 = *(v5 + 16);
  if (!v4 && v6 == 0)
  {
    v14 = a4[3];
    v17 = *a4;
    v18 = *(a4 + 1);
    v19 = v14;
    v16 = 0x200000002;
    v20 = &v18 + 8;
    v21 = xmmword_184399820;
    v22 = &v16;
    v23 = 2;
    v24 = &v17;
    v25 = 2;
  }

  else
  {
    v8 = a4[5];
    v9 = a4[6];
    v10 = (v8 + 32);
    v11 = *(v8 + 16);
    v12 = (v9 + 32);
    v13 = *(v9 + 16);
    v20 = (v5 + 32);
    v21 = v6;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
  }

  return a2(&v20);
}

uint64_t sub_183F99FF0(uint64_t a1, uint64_t (*a2)(char **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v9 && !*(v7 + 16))
  {
    v27 = *(a1 + 16);
    *v43 = *a1;
    *&v43[16] = v27;
    v42 = 0x200000002;
    v28 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v29 = *(a4 + 32);
    v30 = *(v29 + 16);
    if (v28 || v30)
    {
      v32 = *(a4 + 40);
      v33 = *(a4 + 48);
      v34 = (v32 + 32);
      v35 = *(v32 + 16);
      v36 = (v33 + 32);
      v37 = *(v33 + 16);
      LOBYTE(v39) = 1;
      v44 = (v29 + 32);
      v45 = v30;
      v46 = &v43[8 * a5 + 16];
      v47 = a6 - a5;
      v48 = a5;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = v34;
      v55 = v35;
      v56 = v36;
      v57 = v37;
      v58 = &v42;
      v59 = 2;
    }

    else
    {
      v31 = *(a4 + 24);
      v39 = *a4;
      v40 = *(a4 + 8);
      v41 = v31;
      v38 = 0x200000002;
      v44 = &v40 + 8;
      v45 = xmmword_184399820;
      v46 = &v43[8 * a5 + 16];
      v47 = a6 - a5;
      v48 = a5;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = &v38;
      v55 = 2;
      v56 = &v39;
      v57 = 2;
      v58 = &v42;
      v59 = 2;
    }

    v60 = v43;
    v61 = 2;
  }

  else
  {
    v10 = v7 + 32;
    v11 = (v6 + 32);
    v12 = *(v6 + 16);
    v13 = (v8 + 32);
    v14 = *(v8 + 16);
    v15 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v16 = *(a4 + 32);
    v17 = *(v16 + 16);
    if (!v15 && v17 == 0)
    {
      v25 = *(a4 + 24);
      *v43 = *a4;
      *&v43[8] = *(a4 + 8);
      *&v43[24] = v25;
      v39 = 0x200000002;
      LOBYTE(v42) = 1;
      v44 = &v43[16];
      v45 = xmmword_184399820;
      v46 = (v10 + 8 * a5);
      v47 = a6 - a5;
      v48 = a5;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = &v39;
      v55 = 2;
      v56 = v43;
      v57 = 2;
    }

    else
    {
      v19 = *(a4 + 40);
      v20 = *(a4 + 48);
      v21 = (v19 + 32);
      v22 = *(v19 + 16);
      v23 = (v20 + 32);
      v24 = *(v20 + 16);
      v43[0] = 1;
      v44 = (v16 + 32);
      v45 = v17;
      v46 = (v10 + 8 * a5);
      v47 = a6 - a5;
      v48 = a5;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = v21;
      v55 = v22;
      v56 = v23;
      v57 = v24;
    }

    v58 = v11;
    v59 = v12;
    v60 = v13;
    v61 = v14;
  }

  return a2(&v44);
}

uint64_t sub_183F9A2CC(uint64_t a1, uint64_t (*a2)(_BYTE **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v9 && !*(v7 + 16))
  {
    v27 = *(a1 + 16);
    *v43 = *a1;
    *&v43[16] = v27;
    v42 = 0x200000002;
    v28 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v29 = *(a4 + 32);
    v30 = *(v29 + 16);
    if (v28 || v30)
    {
      v32 = *(a4 + 40);
      v33 = *(a4 + 48);
      v34 = (v32 + 32);
      v35 = *(v32 + 16);
      v36 = (v33 + 32);
      v37 = *(v33 + 16);
      LOBYTE(v39) = 1;
      v44 = &v43[8 * a5 + 16];
      v45 = a6 - a5;
      v46 = a5;
      v47 = (v29 + 32);
      v48 = v30;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = &v42;
      v55 = 2;
      v56 = v43;
      v57 = 2;
      v58 = v34;
      v59 = v35;
      v60 = v36;
      v61 = v37;
    }

    else
    {
      v31 = *(a4 + 24);
      v39 = *a4;
      v40 = *(a4 + 8);
      v41 = v31;
      v38 = 0x200000002;
      v44 = &v43[8 * a5 + 16];
      v45 = a6 - a5;
      v46 = a5;
      v47 = &v40 + 8;
      v48 = xmmword_184399820;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = &v42;
      v55 = 2;
      v56 = v43;
      v57 = 2;
      v58 = &v38;
      v59 = 2;
      v60 = &v39;
      v61 = 2;
    }
  }

  else
  {
    v10 = v7 + 32;
    v11 = (v6 + 32);
    v12 = *(v6 + 16);
    v13 = (v8 + 32);
    v14 = *(v8 + 16);
    v15 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v16 = *(a4 + 32);
    v17 = *(v16 + 16);
    if (!v15 && v17 == 0)
    {
      v25 = *(a4 + 24);
      *v43 = *a4;
      *&v43[8] = *(a4 + 8);
      *&v43[24] = v25;
      v39 = 0x200000002;
      LOBYTE(v42) = 1;
      v44 = (v10 + 8 * a5);
      v45 = a6 - a5;
      v46 = a5;
      v47 = &v43[16];
      v48 = xmmword_184399820;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = v11;
      v55 = v12;
      v56 = v13;
      v57 = v14;
      v58 = &v39;
      v59 = 2;
      v60 = v43;
      v61 = 2;
    }

    else
    {
      v19 = *(a4 + 40);
      v20 = *(a4 + 48);
      v21 = (v19 + 32);
      v22 = *(v19 + 16);
      v23 = (v20 + 32);
      v24 = *(v20 + 16);
      v43[0] = 1;
      v44 = (v10 + 8 * a5);
      v45 = a6 - a5;
      v46 = a5;
      v47 = (v16 + 32);
      v48 = v17;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = v11;
      v55 = v12;
      v56 = v13;
      v57 = v14;
      v58 = v21;
      v59 = v22;
      v60 = v23;
      v61 = v24;
    }
  }

  return a2(&v44);
}

unint64_t sub_183F9A5AC@<X0>(unint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, char *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = result + 8 * a16;
  if (!result)
  {
    v20 = 0;
  }

  v21 = 1;
  while (1)
  {
    if (v19 == a17 - a16)
    {
      if (v18 == a10)
      {
        v39 = 1;
        goto LABEL_69;
      }

      result = v18 + a11;
      if (__OFADD__(v18, a11))
      {
        goto LABEL_72;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      result >>= 32;
      if (result)
      {
        goto LABEL_74;
      }

      v22 = *(a4 + 8 * v18++);
      v40 = 1;
      v19 = a17 - a16;
    }

    else
    {
      v22 = *(v20 + 8 * v19);
      result = v19 + a16;
      v23 = __OFADD__(v19, a16);
      if (v18 == a10)
      {
        if (v23)
        {
          goto LABEL_76;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        if (HIDWORD(result))
        {
          goto LABEL_80;
        }

        ++v19;
        v40 = 0;
        v18 = a10;
      }

      else
      {
        if (v23)
        {
          goto LABEL_75;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (HIDWORD(result))
        {
          goto LABEL_79;
        }

        v24 = v18 + a11;
        if (__OFADD__(v18, a11))
        {
          goto LABEL_81;
        }

        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_82;
        }

        if (HIDWORD(v24))
        {
          goto LABEL_83;
        }

        v25 = *(a4 + 8 * v18);
        if (v22 >= v25)
        {
          if (v25 < v22)
          {
            LODWORD(result) = 0;
            ++v18;
            v40 = 1;
            v22 = v25;
            goto LABEL_30;
          }

          ++v19;
          ++v18;
        }

        else
        {
          ++v19;
        }

        v40 = 0;
      }
    }

LABEL_30:
    v21 &= v40;
    if (v40)
    {
      LODWORD(result) = v17;
    }

    if (v21)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_60;
    }

    if (result)
    {
      v28 = *(a2 - 4 + 4 * result);
    }

    else
    {
      v28 = 0;
    }

    v26 = 0;
    v29 = a3 + 8 * v28;
    if (!a3)
    {
      v29 = 0;
    }

    if (v22 < a8 || v22 >= a9)
    {
      v17 = result;
      v27 = 0;
      goto LABEL_60;
    }

    v30 = *(a2 + 4 * result) - v28;
    if (v30 >= 2)
    {
      v27 = 0;
      for (i = v30; i > 1; i -= i >> 1)
      {
        if (*(v29 + 8 * (v27 + (i >> 1))) <= a6)
        {
          v27 += i >> 1;
        }
      }

      if (v27 < v30)
      {
LABEL_50:
        if (*(v29 + 8 * v27) <= a6)
        {
          ++v27;
        }
      }

      v32 = v30 - v27;
      v26 = v27;
      if (v30 - v27 >= 2)
      {
        do
        {
          v33 = v32 >> 1;
          v32 -= v32 >> 1;
          v34 = v26 + v33;
          if (*(v29 + 8 * v34) < a7)
          {
            v26 = v34;
          }
        }

        while (v32 > 1);
      }

      goto LABEL_56;
    }

    v27 = 0;
    v26 = 0;
    if (v30 == 1)
    {
      goto LABEL_50;
    }

LABEL_56:
    if (v26 < v30 && *(v29 + 8 * v26) < a7)
    {
      ++v26;
    }

    v17 = result;
LABEL_60:
    v35 = v27 & 1;
    if (v27 < 0)
    {
      v35 = -v35;
    }

    v36 = __OFSUB__(v27, v35);
    result = v27 - v35;
    if (v36)
    {
      break;
    }

    v37 = v26 & 1;
    if (v26 < 0)
    {
      v37 = -v37;
    }

    v36 = __OFADD__(v26, v37);
    v38 = v26 + v37;
    if (v36)
    {
      goto LABEL_71;
    }

    if (result != v38)
    {
      v39 = 0;
LABEL_69:
      *a5 = v39;
      return result;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_183F9A840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, char *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = a1 + 8 * a14;
  if (!a1)
  {
    v18 = 0;
  }

  result = 1;
  v20 = 1;
  while (1)
  {
    if (v17 == a15 - a14)
    {
      if (v16 == a8)
      {
        v40 = 1;
        goto LABEL_68;
      }

      v21 = v16 + a9;
      if (__OFADD__(v16, a9))
      {
        goto LABEL_71;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_73;
      }

      v22 = *(a2 + 8 * v16++);
      v41 = 0;
      v17 = a15 - a14;
    }

    else
    {
      v22 = *(v18 + 8 * v17);
      v23 = v17 + a14;
      v24 = __OFADD__(v17, a14);
      if (v16 == a8)
      {
        if (v24)
        {
          goto LABEL_75;
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (HIDWORD(v23))
        {
          goto LABEL_79;
        }

        LODWORD(v21) = 0;
        ++v17;
        v41 = 1;
        v16 = a8;
      }

      else
      {
        if (v24)
        {
          goto LABEL_74;
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        if (HIDWORD(v23))
        {
          goto LABEL_78;
        }

        v21 = v16 + a9;
        if (__OFADD__(v16, a9))
        {
          goto LABEL_80;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        if (HIDWORD(v21))
        {
          goto LABEL_82;
        }

        v25 = *(a2 + 8 * v16);
        if (v22 >= v25)
        {
          if (v25 >= v22)
          {
            ++v17;
            ++v16;
            v41 = 0;
          }

          else
          {
            ++v16;
            v41 = 0;
            v22 = v25;
          }
        }

        else
        {
          LODWORD(v21) = 0;
          ++v17;
          v41 = 1;
        }
      }
    }

    v20 &= v41;
    if (v41)
    {
      LODWORD(v21) = v15;
    }

    if (v20)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_59;
    }

    if (v21)
    {
      v28 = *(a10 - 4 + 4 * v21);
    }

    else
    {
      v28 = 0;
    }

    v26 = 0;
    v29 = a12 + 8 * v28;
    if (!a12)
    {
      v29 = 0;
    }

    if (v22 < a6 || v22 >= a7)
    {
      v15 = v21;
      v27 = 0;
      goto LABEL_59;
    }

    v30 = *(a10 + 4 * v21) - v28;
    if (v30 >= 2)
    {
      v27 = 0;
      for (i = v30; i > 1; i -= i >> 1)
      {
        if (*(v29 + 8 * (v27 + (i >> 1))) <= a4)
        {
          v27 += i >> 1;
        }
      }

      if (v27 < v30)
      {
LABEL_49:
        if (*(v29 + 8 * v27) <= a4)
        {
          ++v27;
        }
      }

      v32 = v30 - v27;
      v26 = v27;
      if (v30 - v27 >= 2)
      {
        do
        {
          v33 = v32 >> 1;
          v32 -= v32 >> 1;
          v34 = v26 + v33;
          if (*(v29 + 8 * v34) < a5)
          {
            v26 = v34;
          }
        }

        while (v32 > 1);
      }

      goto LABEL_55;
    }

    v27 = 0;
    v26 = 0;
    if (v30 == 1)
    {
      goto LABEL_49;
    }

LABEL_55:
    if (v26 < v30 && *(v29 + 8 * v26) < a5)
    {
      ++v26;
    }

    v15 = v21;
LABEL_59:
    v35 = v27 & 1;
    if (v27 < 0)
    {
      v35 = -v35;
    }

    v36 = __OFSUB__(v27, v35);
    v37 = v27 - v35;
    if (v36)
    {
      break;
    }

    v38 = v26 & 1;
    if (v26 < 0)
    {
      v38 = -v38;
    }

    v36 = __OFADD__(v26, v38);
    v39 = v26 + v38;
    if (v36)
    {
      goto LABEL_70;
    }

    if (v37 != v39)
    {
      v40 = 0;
LABEL_68:
      *a3 = v40;
      return result;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_183F9AAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, char *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = a1 + 8 * a12;
  if (!a1)
  {
    v17 = 0;
  }

  result = a2 - 4;
  v19 = 1;
  v20 = 1;
LABEL_4:
  if (v16 == a13 - a12)
  {
    if (v15 == a6)
    {
      v36 = 1;
LABEL_61:
      *a5 = v36;
      return result;
    }

    v21 = v15 + a7;
    if (__OFADD__(v15, a7))
    {
      __break(1u);
    }

    else if ((v21 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v21))
      {
        LODWORD(v22) = 0;
        ++v15;
        v38 = 1;
        v37 = 0;
        v16 = a13 - a12;
        goto LABEL_27;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v15 == a6)
  {
    v22 = v16 + a12;
    if (__OFADD__(v16, a12))
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (HIDWORD(v22))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    LODWORD(v21) = 0;
    ++v16;
    v38 = 0;
    v37 = 1;
    v15 = a6;
LABEL_27:
    if ((v38 & 1) == 0)
    {
      v14 = v22;
    }

    v20 &= v38;
    if ((v37 & 1) == 0)
    {
      v13 = v21;
    }

    if (v20)
    {
      v25 = 0;
      v26 = 0;
      v19 &= v37;
      if ((v19 & 1) == 0)
      {
LABEL_33:
        if (v13)
        {
          v27 = *(a8 - 4 + 4 * v13);
        }

        else
        {
          v27 = 0;
        }

        v29 = a10 + 8 * v27;
        if (!a10)
        {
          v29 = 0;
        }

        v30 = *(a8 + 4 * v13) - v27;
LABEL_46:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          while (v33 != v26)
          {
            while (1)
            {
              if (v32 != v30)
              {
                v34 = *(v25 + 8 * v33);
                v35 = *(v29 + 8 * v32);
                if (v34 >= v35)
                {
                  break;
                }
              }

              if (v31 == 2)
              {
                goto LABEL_60;
              }

              ++v33;
              v31 ^= 1u;
              if (v26 == v33)
              {
                goto LABEL_52;
              }
            }

            if (v35 >= v34)
            {
              if (!v31)
              {
                goto LABEL_60;
              }

              v31 ^= 3u;
              ++v33;
              ++v32;
            }

            else
            {
              if (v31 == 1)
              {
                goto LABEL_60;
              }

              v31 ^= 2u;
              ++v32;
            }
          }

LABEL_52:
          if (v32 == v30)
          {
            goto LABEL_4;
          }

          if (v31 == 1)
          {
            break;
          }

          v31 ^= 2u;
          v33 = v26;
          ++v32;
        }

LABEL_60:
        v36 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      if (v14)
      {
        v28 = *(result + 4 * v14);
      }

      else
      {
        v28 = 0;
      }

      v25 = a3 + 8 * v28;
      if (!a3)
      {
        v25 = 0;
      }

      v26 = *(a2 + 4 * v14) - v28;
      v19 &= v37;
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v29 = 0;
    v30 = 0;
    goto LABEL_46;
  }

  v22 = v16 + a12;
  if (__OFADD__(v16, a12))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (HIDWORD(v22))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v21 = v15 + a7;
  if (__OFADD__(v15, a7))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!HIDWORD(v21))
  {
    v23 = *(v17 + 8 * v16);
    v24 = *(a4 + 8 * v15);
    if (v23 >= v24)
    {
      if (v24 >= v23)
      {
        ++v16;
        ++v15;
        v38 = 0;
      }

      else
      {
        LODWORD(v22) = 0;
        ++v15;
        v38 = 1;
      }

      v37 = 0;
    }

    else
    {
      LODWORD(v21) = 0;
      ++v16;
      v38 = 0;
      v37 = 1;
    }

    goto LABEL_27;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_183F9AD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, char *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = a1 + 8 * a12;
  if (!a1)
  {
    v17 = 0;
  }

  result = a2 - 4;
  v19 = 1;
  v20 = 1;
  while (1)
  {
LABEL_4:
    if (v16 != a13 - a12)
    {
      if (v15 == a6)
      {
        v22 = v16 + a12;
        if (__OFADD__(v16, a12))
        {
          goto LABEL_70;
        }

        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        if (HIDWORD(v22))
        {
          goto LABEL_74;
        }

        LODWORD(v21) = 0;
        ++v16;
        v38 = 0;
        v37 = 1;
        v15 = a6;
      }

      else
      {
        v22 = v16 + a12;
        if (__OFADD__(v16, a12))
        {
          goto LABEL_69;
        }

        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        if (HIDWORD(v22))
        {
          goto LABEL_73;
        }

        v21 = v15 + a7;
        if (__OFADD__(v15, a7))
        {
          goto LABEL_75;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        if (HIDWORD(v21))
        {
          goto LABEL_77;
        }

        v23 = *(v17 + 8 * v16);
        v24 = *(a4 + 8 * v15);
        if (v23 >= v24)
        {
          if (v24 >= v23)
          {
            ++v16;
            ++v15;
            v38 = 0;
          }

          else
          {
            LODWORD(v22) = 0;
            ++v15;
            v38 = 1;
          }

          v37 = 0;
        }

        else
        {
          LODWORD(v21) = 0;
          ++v16;
          v38 = 0;
          v37 = 1;
        }
      }

      goto LABEL_27;
    }

    if (v15 == a6)
    {
      v36 = 1;
LABEL_64:
      *a5 = v36;
      return result;
    }

    v21 = v15 + a7;
    if (__OFADD__(v15, a7))
    {
      break;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    if (HIDWORD(v21))
    {
      goto LABEL_68;
    }

    LODWORD(v22) = 0;
    ++v15;
    v38 = 1;
    v37 = 0;
    v16 = a13 - a12;
LABEL_27:
    if ((v38 & 1) == 0)
    {
      v14 = v22;
    }

    v20 &= v38;
    if ((v37 & 1) == 0)
    {
      v13 = v21;
    }

    if (v20)
    {
      v25 = 0;
      v26 = 0;
      v19 &= v37;
      if ((v19 & 1) == 0)
      {
LABEL_40:
        if (v13)
        {
          v28 = *(a8 - 4 + 4 * v13);
        }

        else
        {
          v28 = 0;
        }

        v29 = (a10 + 8 * v28);
        if (!a10)
        {
          v29 = 0;
        }

        v30 = *(a8 + 4 * v13) - v28;
        if (v30)
        {
          if (v26 && v25[v26 - 1] > *v29 && v29[v30 - 1] > *v25)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            while (1)
            {
              while (v33 != v26)
              {
                while (1)
                {
                  if (v32 != v30)
                  {
                    v34 = v25[v33];
                    v35 = v29[v32];
                    if (v34 >= v35)
                    {
                      break;
                    }
                  }

                  if (v31 == 3)
                  {
                    goto LABEL_63;
                  }

                  ++v33;
                  v31 ^= 1u;
                  if (v26 == v33)
                  {
                    goto LABEL_55;
                  }
                }

                if (v35 >= v34)
                {
                  if (v31 == 1)
                  {
                    goto LABEL_63;
                  }

                  v31 ^= 3u;
                  ++v33;
                  ++v32;
                }

                else
                {
                  if (!v31)
                  {
                    goto LABEL_63;
                  }

                  v31 ^= 2u;
                  ++v32;
                }
              }

LABEL_55:
              if (v32 == v30)
              {
                goto LABEL_4;
              }

              if (!v31)
              {
                break;
              }

              v31 ^= 2u;
              v33 = v26;
              ++v32;
            }
          }

LABEL_63:
          v36 = 0;
          goto LABEL_64;
        }
      }
    }

    else
    {
      if (v14)
      {
        v27 = *(result + 4 * v14);
      }

      else
      {
        v27 = 0;
      }

      v25 = (a3 + 8 * v27);
      if (!a3)
      {
        v25 = 0;
      }

      v26 = *(a2 + 4 * v14) - v27;
      v19 &= v37;
      if ((v19 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_183F9B070(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, _BYTE *a8, uint64_t a9)
{
  v94 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v12 && !*(v9 + 16))
  {
    v36 = *(a1 + 16);
    *v74 = *a1;
    *&v74[16] = v36;
    v73 = 0x200000002;
    v37 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v38 = *(a4 + 32);
    v39 = *(v38 + 16);
    if (v37 || v39)
    {
      v43 = (v38 + 32);
      v44 = *(a4 + 40);
      v45 = *(a4 + 48);
      v46 = (v44 + 32);
      v47 = *(v44 + 16);
      v48 = (v45 + 32);
      v49 = *(v45 + 16);
      v50 = &v74[8 * a5 + 16];
      v51 = a6 - a5;
      LOBYTE(v75) = 1;
      LOBYTE(v70) = 1;
      if (*a7 != -1)
      {
        v65 = a5;
        v68 = a2;
        v62 = a8;
        swift_once();
        a8 = v62;
        a5 = v65;
        a2 = v68;
      }

      v31 = *a8;
      v75 = v50;
      v76 = v51;
      v77 = a5;
      v78 = v43;
      v79 = v39;
      v80 = 0x7FF8000000000000;
      v81 = 0;
      v82 = 1;
      v83 = 0;
      v84 = 1;
      v85 = &v73;
      v86 = 2;
      v87 = v74;
      v88 = 2;
      v89 = v46;
      v90 = v47;
      v91 = v48;
      v92 = v49;
    }

    else
    {
      v40 = *(a4 + 24);
      v70 = *a4;
      v71 = *(a4 + 8);
      v72 = v40;
      v69 = 0x200000002;
      v41 = &v74[8 * a5 + 16];
      v42 = a6 - a5;
      LOBYTE(v75) = 1;
      if (*a7 != -1)
      {
        v53 = a2;
        v54 = a5;
        v55 = a8;
        swift_once();
        a8 = v55;
        a5 = v54;
        a2 = v53;
      }

      v31 = *a8;
      v75 = v41;
      v76 = v42;
      v77 = a5;
      v78 = &v71 + 8;
      v79 = xmmword_184399820;
      v80 = 0x7FF8000000000000;
      v81 = 0;
      v82 = 1;
      v83 = 0;
      v84 = 1;
      v85 = &v73;
      v86 = 2;
      v87 = v74;
      v88 = 2;
      v89 = &v69;
      v90 = 2;
      v91 = &v70;
      v92 = 2;
    }
  }

  else
  {
    v13 = v9 + 32;
    v14 = (v10 + 32);
    v15 = *(v10 + 16);
    v16 = (v11 + 32);
    v17 = *(v11 + 16);
    v18 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v19 = *(a4 + 32);
    v20 = *(v19 + 16);
    if (!v18 && v20 == 0)
    {
      v32 = *(a4 + 24);
      *v74 = *a4;
      *&v74[8] = *(a4 + 8);
      *&v74[24] = v32;
      v70 = 0x200000002;
      v33 = (v13 + 8 * a5);
      v34 = a6 - a5;
      LOBYTE(v75) = 1;
      LOBYTE(v73) = 1;
      if (*a7 != -1)
      {
        v64 = a5;
        v67 = a2;
        v61 = a8;
        v52 = (v11 + 32);
        swift_once();
        v16 = v52;
        a8 = v61;
        a5 = v64;
        a2 = v67;
      }

      v31 = *a8;
      v75 = v33;
      v76 = v34;
      v77 = a5;
      v78 = &v74[16];
      v79 = xmmword_184399820;
      v80 = 0x7FF8000000000000;
      v81 = 0;
      v82 = 1;
      v83 = 0;
      v84 = 1;
      v85 = v14;
      v86 = v15;
      v87 = v16;
      v88 = v17;
      v89 = &v70;
      v90 = 2;
      v91 = v74;
      v92 = 2;
    }

    else
    {
      v22 = (v19 + 32);
      v23 = *(a4 + 40);
      v24 = *(a4 + 48);
      v25 = (v23 + 32);
      v26 = *(v23 + 16);
      v27 = (v24 + 32);
      v28 = *(v24 + 16);
      v29 = (v13 + 8 * a5);
      v30 = a6 - a5;
      LOBYTE(v75) = 1;
      v74[0] = 1;
      if (*a7 != -1)
      {
        v63 = a5;
        v66 = a2;
        v60 = a8;
        v58 = v25;
        v59 = v16;
        v56 = v26;
        v57 = (v24 + 32);
        swift_once();
        v26 = v56;
        v27 = v57;
        v25 = v58;
        v16 = v59;
        a8 = v60;
        a5 = v63;
        a2 = v66;
      }

      v31 = *a8;
      v75 = v29;
      v76 = v30;
      v77 = a5;
      v78 = v22;
      v79 = v20;
      v80 = 0x7FF8000000000000;
      v81 = 0;
      v82 = 1;
      v83 = 0;
      v84 = 1;
      v85 = v14;
      v86 = v15;
      v87 = v16;
      v88 = v17;
      v89 = v25;
      v90 = v26;
      v91 = v27;
      v92 = v28;
    }
  }

  v93 = v31;
  return a2(&v75);
}

int64x2_t sub_183F9B464@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *a1 = result;
  a1[1] = result;
  v2 = MEMORY[0x1E69E7CC0];
  a1[2].i64[0] = MEMORY[0x1E69E7CC0];
  a1[2].i64[1] = v2;
  a1[3].i64[0] = v2;
  return result;
}

uint64_t sub_183F9B484(double *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (*a1 >= v4 || v5 >= v6)
  {
    v3 = 0x7FF8000000000000;
    v4 = NAN;
    v5 = NAN;
    v6 = NAN;
  }

  v10[9] = v1;
  v10[10] = v2;
  v10[0] = v3;
  *&v10[1] = v4;
  *&v10[2] = v5;
  *&v10[3] = v6;
  v10[4] = MEMORY[0x1E69E7CC0];
  v10[5] = MEMORY[0x1E69E7CC0];
  v10[6] = MEMORY[0x1E69E7CC0];
  v8 = Region.isSuperset(of:)(v10);

  return v8 & 1;
}

__n128 sub_183F9B54C@<Q0>(void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  a2();

  v5 = *(v3 + 48);
  v6 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v6;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  return result;
}

BOOL sub_183F9B5BC(double *a1, double *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *a2 < v4 && v5 < v6;
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  if (!v7)
  {
    v8 = 0x7FF8000000000000;
    v9 = 0x7FF8000000000000;
    v10 = 0x7FF8000000000000;
    v11 = 0x7FF8000000000000;
  }

  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = MEMORY[0x1E69E7CC0];
  v14[5] = MEMORY[0x1E69E7CC0];
  v14[6] = MEMORY[0x1E69E7CC0];
  v12 = Region.isSuperset(of:)(v14);
  if ((v12 & 1) == 0)
  {
    Region.formUnion(_:)(v14);
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return (v12 & 1) == 0;
}

__n128 sub_183F9B684@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *v4.i64 < *(a1 + 24) && *v3.i64 < *(a1 + 8);
  v6 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = vdupq_n_s64(v7);
  v13 = *a1;
  v15 = *(a1 + 16);
  v17[0] = vbslq_s8(v8, v3, v6);
  v17[1] = vbslq_s8(v8, v4, v6);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v9 = Region.isDisjoint(with:)(v17);
  v10 = 0uLL;
  v11 = 0uLL;
  if ((v9 & 1) == 0)
  {
    Region.subtract(_:)(v17);
    v10 = v13;
    v11 = v15;
  }

  v14 = v11;
  v16 = v10;

  result = v16;
  *a2 = v16;
  *(a2 + 16) = v14;
  *(a2 + 32) = v9 & 1;
  return result;
}

__n128 sub_183F9B740@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *v4.i64 < *(a1 + 24) && *v3.i64 < *(a1 + 8);
  v6 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = vdupq_n_s64(v7);
  v11 = *(a1 + 16);
  v12 = *a1;
  v13[0] = vbslq_s8(v8, v3, v6);
  v13[1] = vbslq_s8(v8, v4, v6);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v9 = Region.isSuperset(of:)(v13);
  if ((v9 & 1) == 0)
  {
    Region.formUnion(_:)(v13);
    v11 = 0u;
    v12 = 0u;
  }

  result = v12;
  *a2 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = (v9 & 1) == 0;
  return result;
}

uint64_t sub_183F9B82C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  (a4)(a1, a2, a3);
}

__n128 sub_183F9B89C@<Q0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  a1();
  v4 = *(v2 + 48);
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

Swift::Bool __swiftcall Region.contains(_:)(__C::CGRect a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v12 = *v1;
  v13 = v3;
  v14 = v1[2];
  v15 = v2;
  v4 = sub_183F728C4(a1.origin.x, a1.origin.y, a1.size.width);
  if (v4 >= v5 || v6 >= v7)
  {
    v4 = NAN;
    v5 = NAN;
    v6 = NAN;
    v7 = NAN;
  }

  *v11 = v4;
  *&v11[1] = v5;
  *&v11[2] = v6;
  *&v11[3] = v7;
  v11[4] = MEMORY[0x1E69E7CC0];
  v11[5] = MEMORY[0x1E69E7CC0];
  v11[6] = MEMORY[0x1E69E7CC0];
  v9 = Region.isSuperset(of:)(v11);

  return v9 & 1;
}

uint64_t sub_183F9BA34(void (*a1)(void *), double a2, double a3, double a4)
{
  v5 = sub_183F728C4(a2, a3, a4);
  if (v5 >= v6 || v7 >= v8)
  {
    v5 = NAN;
    v6 = NAN;
    v7 = NAN;
    v8 = NAN;
  }

  *v11 = v5;
  *&v11[1] = v6;
  *&v11[2] = v7;
  *&v11[3] = v8;
  v11[4] = MEMORY[0x1E69E7CC0];
  v11[5] = MEMORY[0x1E69E7CC0];
  v11[6] = MEMORY[0x1E69E7CC0];
  a1(v11);
}

void *sub_183F9BAB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854638, &qword_184399958);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_183F9BB3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854620, &qword_184399940);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_183F9BBE0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854628, &qword_184399948);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_183F9BC8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_183F9BD08(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854618, &qword_184399938);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

char *sub_183F9BD98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854638, &qword_184399958);
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

char *sub_183F9BE9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8, &qword_184398528);
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

char *sub_183F9BFA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854610, &qword_184399930);
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

uint64_t sub_183F9C0C8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((result & 1) == 0)
  {
    result = sub_183F9C14C(v1);
    *v0 = result;
  }

  return result;
}

char *sub_183F9C174(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

void *sub_183F9C1E4(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = 0;
  v15 = 0;
  v16 = a10;
  v17 = result[1];
  v57 = *result;
  v58 = result[2];
  v59 = result[3];
  v69 = result[4];
  v60 = result[5];
  v18 = *(result + 14);
  v19 = *(result + 60);
  v20 = *(result + 16);
  v70 = *(result + 68);
  v55 = result[11];
  v56 = result[9];
  v52 = result[13] - 4;
  v53 = result[15];
  v54 = result[13];
  v62 = a5;
  v61 = v17;
  while (1)
  {
LABEL_2:
    if (v15 == v17)
    {
      if (v14 == v69)
      {
        return result;
      }

      v21 = v14 + v60;
      if (__OFADD__(v14, v60))
      {
        goto LABEL_95;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_96;
      }

      v22 = HIDWORD(v21);
      if (HIDWORD(v21))
      {
        goto LABEL_97;
      }

      v23 = *(v59 + 8 * v14++);
      v72 = 1;
      v15 = v17;
      goto LABEL_8;
    }

    v22 = v15 + v58;
    v24 = __OFADD__(v15, v58);
    if (v14 == v69)
    {
      if (v24)
      {
        goto LABEL_99;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      v21 = HIDWORD(v22);
      if (HIDWORD(v22))
      {
        goto LABEL_103;
      }

      v23 = *(v57 + 8 * v15++);
      v72 = 0;
      v14 = v69;
    }

    else
    {
      if (v24)
      {
        goto LABEL_98;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_100;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_102;
      }

      v21 = v14 + v60;
      if (__OFADD__(v14, v60))
      {
        goto LABEL_104;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_106;
      }

      v25 = *(v57 + 8 * v15);
      v26 = *(v59 + 8 * v14);
      if (v25 >= v26)
      {
        if (v26 >= v25)
        {
          ++v15;
          ++v14;
          v23 = v25;
          v72 = 0;
        }

        else
        {
          LODWORD(v22) = 0;
          ++v14;
          v23 = v26;
          v72 = 1;
        }

LABEL_8:
        v71 = 0;
        goto LABEL_26;
      }

      LODWORD(v21) = 0;
      ++v15;
      v23 = v25;
      v72 = 0;
    }

    v71 = 1;
LABEL_26:
    if ((v72 & 1) == 0)
    {
      v18 = v22;
    }

    v19 &= v72;
    if ((v71 & 1) == 0)
    {
      v20 = v21;
    }

    if (v19)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v29 = v18 ? *(v56 - 4 + 4 * v18) : 0;
      v27 = v55 ? (v55 + 8 * v29) : 0;
      v28 = *(v56 + 4 * v18) - v29;
    }

    v70 &= v71;
    if (v70)
    {
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v32 = v20 ? *(v52 + 4 * v20) : 0;
      v30 = v53 ? (v53 + 8 * v32) : 0;
      v31 = *(v54 + 4 * v20) - v32;
    }

    v33 = *a4;
    v34 = a5 - *a4;
    if (a5 < *a4)
    {
      break;
    }

    v35 = 0;
    if (a2)
    {
      v36 = (a2 + 8 * v33);
    }

    else
    {
      v36 = 0;
    }

    if (v28 && a5 != v33)
    {
      if (v28 >= v34)
      {
        v35 = a5 - *a4;
      }

      else
      {
        v35 = v28;
      }

      v64 = v15;
      v65 = v23;
      v37 = v14;
      v38 = a4;
      v39 = v20;
      v40 = v18;
      v41 = v19;
      v42 = v30;
      result = memcpy(v36, v27, 8 * v35);
      v30 = v42;
      v19 = v41;
      v18 = v40;
      v20 = v39;
      a4 = v38;
      v14 = v37;
      v15 = v64;
      v23 = v65;
      v17 = v61;
      v16 = a10;
      a5 = v62;
    }

    v43 = v34 - v35;
    if (__OFSUB__(v34, v35))
    {
      goto LABEL_87;
    }

    if (v43 >= v31)
    {
      v44 = 0;
      if (v31 && v43)
      {
        if (v36)
        {
          v45 = &v36[8 * v35];
        }

        else
        {
          v45 = 0;
        }

        v46 = v19;
        result = memcpy(v45, v30, 8 * v31);
        v19 = v46;
        v17 = v61;
        v16 = a10;
        a5 = v62;
        v44 = v31;
      }

      v47 = __OFADD__(v35, v44);
      v35 += v44;
      if (v47)
      {
        goto LABEL_93;
      }
    }

    if (a6)
    {
      if (v35 < 0)
      {
        goto LABEL_94;
      }

      if (*(a7 + 8) != v35)
      {
        goto LABEL_75;
      }

      if (v35)
      {
        v48 = *a7;
        v49 = v35;
        v50 = v36;
        while (*v48 == *v50)
        {
          ++v50;
          ++v48;
          if (!--v49)
          {
            goto LABEL_2;
          }
        }

LABEL_75:
        *a7 = v36;
        *(a7 + 8) = v35;
        goto LABEL_76;
      }
    }

    else
    {
LABEL_76:
      if (__OFADD__(*a4, v35))
      {
        goto LABEL_88;
      }

      *a4 += v35;
      *(a8 + 8 * *v16) = v23;
      v51 = a13 + *a4;
      if (__OFADD__(a13, *a4))
      {
        goto LABEL_89;
      }

      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      if (HIDWORD(v51))
      {
        goto LABEL_91;
      }

      *(a11 + 4 * *v16) = v51;
      if (__OFADD__(*v16, 1))
      {
        goto LABEL_92;
      }

      ++*v16;
    }
  }

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
  __break(1u);
LABEL_98:
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
  return result;
}