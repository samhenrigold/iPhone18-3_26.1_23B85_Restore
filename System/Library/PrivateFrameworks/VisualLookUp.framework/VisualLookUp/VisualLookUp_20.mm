uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B183BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9B18404(char *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 160) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B09F60(a1, *(v1 + 16), (v1 + 24), (v1 + 96), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9B1850C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double S2Cell.center.getter@<D0>(float64x2_t *a1@<X8>)
{
  S2CellId.rawPoint.getter(v4.f64);
  v2 = sqrt(vaddvq_f64(vmulq_f64(v4, v4)) + v5 * v5);
  if (v2 != 0.0)
  {
    v2 = 1.0 / v2;
  }

  result = v5 * v2;
  *a1 = vmulq_n_f64(v4, v2);
  a1[1].f64[0] = result;
  return result;
}

Swift::Bool __swiftcall S2Cell.contains(point:)(VisualLookUp::S2Point point)
{
  v3 = *(v1 + 2);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v12 = *v1;
  v13 = v3;
  static S2Projections.faceXyzToUv(face:point:)(v4, &v12, &v14);
  if (v16)
  {
    return 0;
  }

  v7 = v5[2];
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v5[4];
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(v8 + 32) > v14)
  {
    return 0;
  }

  if (v9 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 <= *(v8 + 40))
  {
    if (v7 != 1)
    {
      v10 = v5[5];
      v11 = *(v10 + 16);
      if (v11)
      {
        if (*(v10 + 32) > v15)
        {
          return 0;
        }

        if (v11 != 1)
        {
          return v15 <= *(v10 + 40);
        }

LABEL_19:
        __break(1u);
        return result;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return 0;
}

void S2Cell.rectBound.getter(uint64_t a1@<X8>)
{
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  if (v6 >= 1)
  {
    v7 = *(v1 + 2);
    v8 = v7[2];
    if (v8)
    {
      v9 = v7[4];
      v10 = *(v9 + 16);
      if (v10)
      {
        if (v10 != 1)
        {
          if (v8 != 1)
          {
            v11 = v7[5];
            v12 = *(v11 + 16);
            if (v12)
            {
              if (v12 != 1)
              {
                v29 = a1;
                v13 = *v1;
                v14 = *(v1 + 10);
                v15 = *(v9 + 32) + *(v9 + 40);
                v16 = *(v11 + 32) + *(v11 + 40);
                static S2Projections.getUAxis(face:)(v5, &v30);
                if (v31 == 0.0)
                {
                  v17 = v15 < 0.0;
                }

                else
                {
                  v17 = v15 > 0.0;
                }

                static S2Projections.getVAxis(face:)(v5, &v30);
                v18 = v31;
                *&v30 = v13;
                BYTE8(v30) = v5;
                if (v31 == 0.0)
                {
                  v19 = v16 < 0.0;
                }

                else
                {
                  v19 = v16 > 0.0;
                }

                BYTE9(v30) = v6;
                BYTE10(v30) = v14;
                v31 = *&v7;
                v20 = sub_1D9B1A38C(v17, v19, v18);
                *&v30 = v13;
                BYTE8(v30) = v5;
                BYTE9(v30) = v6;
                BYTE10(v30) = v14;
                v31 = *&v7;
                v21 = sub_1D9B1A38C(v17 ^ 1, v19 ^ 1, v20);
                if (v20 <= v21)
                {
                  v22 = v20;
                }

                else
                {
                  v22 = v21;
                }

                if (v20 > v21)
                {
                  v21 = v20;
                }

                if (v21 < v22)
                {
                  v23 = v21;
                }

                else
                {
                  v22 = v22 + -4.4408921e-16;
                  v23 = v21 + 4.4408921e-16;
                }

                if (v22 > -1.57079633)
                {
                  v2 = v22;
                }

                else
                {
                  v2 = -1.57079633;
                }

                if (v23 <= 1.57079633)
                {
                  v3 = v23;
                }

                else
                {
                  v3 = 1.57079633;
                }

                if (v2 != -1.57079633 && v3 != 1.57079633)
                {
                  *&v30 = v13;
                  BYTE8(v30) = v5;
                  BYTE9(v30) = v6;
                  BYTE10(v30) = v14;
                  v31 = *&v7;
                  v24 = sub_1D9B1A480(v17, v19 ^ 1, 1.57079633);
                  *&v30 = v13;
                  BYTE8(v30) = v5;
                  BYTE9(v30) = v6;
                  BYTE10(v30) = v14;
                  v31 = *&v7;
                  sub_1D9B1A480(v17 ^ 1, v19, v24);
                  S1Interval.expanded(radius:)(4.4408921e-16);
                  *v29 = v2;
                  *(v29 + 8) = v3;
                  *(v29 + 16) = v30;
                  return;
                }

                if (qword_1ECB50AD0 == -1)
                {
                  goto LABEL_37;
                }

                goto LABEL_56;
              }

LABEL_55:
              __break(1u);
LABEL_56:
              swift_once();
LABEL_37:
              *v29 = v2;
              *(v29 + 8) = v3;
              *(v29 + 16) = xmmword_1ECB528E0;
              return;
            }

LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

  if (*(v1 + 8) <= 1u)
  {
    if (*(v1 + 8))
    {
      v25 = xmmword_1D9C95410;
      v26 = xmmword_1D9C95450;
      goto LABEL_44;
    }

    v27 = xmmword_1D9C95410;
    *a1 = xmmword_1D9C95410;
    goto LABEL_49;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      v25 = xmmword_1D9C95410;
      v26 = xmmword_1D9C95430;
      goto LABEL_44;
    }

    if (v5 == 4)
    {
      v25 = xmmword_1D9C95410;
      v26 = xmmword_1D9C95420;
LABEL_44:
      *a1 = v25;
      *(a1 + 16) = v26;
      return;
    }

    if (qword_1ECB50C38 != -1)
    {
      swift_once();
    }

    v28 = -*&qword_1ECB53418;
    *a1 = 0xBFF921FB54442D18;
    *(a1 + 8) = v28;
    v27 = xmmword_1D9C90160;
LABEL_49:
    *(a1 + 16) = v27;
    return;
  }

  if (qword_1ECB50C38 != -1)
  {
    swift_once();
  }

  *a1 = qword_1ECB53418;
  *(a1 + 8) = xmmword_1D9C95440;
  *(a1 + 24) = 0x400921FB54442D18;
}

VisualLookUp::S2Point __swiftcall S2Cell.getVertex(_:)(Swift::Int a1)
{
  v2 = sub_1D9B19AB0(S2Cell.getRawVertex(_:), v1);
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

double static S2Cell.averageArea(level:)(uint64_t a1)
{
  if (qword_1ECB508F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *&qword_1ECB513E8;
  v3 = (1.0 - a1) * qword_1ECB513F0;

  return scalb(v2, v3);
}

double S2Cell.init(cellId:)@<D0>(unint64_t *a1@<X0>, int64_t a2@<X8>)
{
  v10 = *a1;
  v48 = 0;
  v49 = 0;
  v11 = sub_1D9B08A90(&v49, &v48, 7, (v10 >> 61) & 1);
  v12 = sub_1D9B08A90(&v49, &v48, 6, v11);
  v13 = sub_1D9B08A90(&v49, &v48, 5, v12);
  v14 = sub_1D9B08A90(&v49, &v48, 4, v13);
  v15 = sub_1D9B08A90(&v49, &v48, 3, v14);
  v16 = sub_1D9B08A90(&v49, &v48, 2, v15);
  v17 = sub_1D9B08A90(&v49, &v48, 1, v16);
  v47 = v10;
  v18 = &v47;
  v19 = sub_1D9B08A90(&v49, &v48, 0, v17);
  if (__OFSUB__(0, v10))
  {
    __break(1u);
    goto LABEL_37;
  }

  v20 = (v10 & -v10 & 0x1111111111111110) != 0;
  if (v19 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = v19 ^ v20;
  if ((v19 ^ v20) > 255)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v47 = v10;
  v18 = &v47;
  v21 = S2CellId.level.getter();
  if (v21 < -128)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = v21;
  if (v21 > 127)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v21 - 95) < 0xFFFFFFFFFFFFFF7FLL)
  {
    goto LABEL_7;
  }

  if (v21 >= 31)
  {
    goto LABEL_55;
  }

  if (v21 <= -34)
  {
    goto LABEL_7;
  }

  v22 = 1 << (30 - v21);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53350, &qword_1D9C94BE0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D9C85EA0;
    v3 = &unk_1F552A048;
    *(v23 + 40) = &unk_1F552A048;
    v5 = -v22;
    if (__OFSUB__(0, v22))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ((v22 + 0x4000000000000000) < 0)
    {
      goto LABEL_42;
    }

    v24 = v49 & v5;
    if (((v49 & v5) + 0x4000000000000000) < 0)
    {
      goto LABEL_43;
    }

    v25 = 2 * v24 - 0x40000000;
    if (__OFADD__(-1073741824, 2 * v24))
    {
      goto LABEL_44;
    }

    v6 = 2 * v22;
    v4 = v25 + 2 * v22;
    if (__OFADD__(v25, 2 * v22))
    {
      goto LABEL_45;
    }

    v46 = a2;
    a2 = v7;
    v7 = v48;
    v26 = vcvtd_n_f64_s64(v25, 0x1EuLL);
    v27 = v26 < 0.0;
    v28 = 1.0 - (1.0 - v26) * (1.0 - v26);
    v29 = (v26 + 1.0) * (v26 + 1.0) + -1.0;
    if (v27)
    {
      v8 = v28;
    }

    else
    {
      v8 = v29;
    }

    v2 = v23;
    v30 = &unk_1F552A018;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = &unk_1F552A018;
    if (isUniquelyReferenced_nonNull_native)
    {
      v32 = qword_1F552A028;
      if (!qword_1F552A028)
      {
        goto LABEL_47;
      }

      goto LABEL_21;
    }

LABEL_46:
    v30 = sub_1D9B1A738(&unk_1F552A018);
    v32 = *(v30 + 2);
    if (!v32)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_21:
    v33 = vcvtd_n_f64_s64(v4, 0x1EuLL);
    *(v30 + 4) = v8 * 0.333333333;
    v34 = (v33 + 1.0) * (v33 + 1.0) + -1.0;
    if (v33 < 0.0)
    {
      v34 = 1.0 - (1.0 - v33) * (1.0 - v33);
    }

    if (v32 == 1)
    {
      goto LABEL_48;
    }

    *(v30 + 5) = v34 * 0.333333333;
    *(v2 + 32) = v30;
    v35 = v7 & v5;
    if ((v7 & v5) + 0x4000000000000000 < 0)
    {
      goto LABEL_49;
    }

    v36 = __OFADD__(-1073741824, 2 * v35);
    v37 = 2 * v35 - 0x40000000;
    if (v36)
    {
      goto LABEL_50;
    }

    v30 = (v37 + v6);
    if (__OFADD__(v37, v6))
    {
      goto LABEL_51;
    }

    v38 = vcvtd_n_f64_s64(v37, 0x1EuLL);
    v27 = v38 < 0.0;
    v39 = 1.0 - (1.0 - v38) * (1.0 - v38);
    v40 = (v38 + 1.0) * (v38 + 1.0) + -1.0;
    if (v27)
    {
      v8 = v39;
    }

    else
    {
      v8 = v40;
    }

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 40) = v3;
    if (v41)
    {
      v42 = *(v3 + 2);
      if (!v42)
      {
        goto LABEL_53;
      }

      goto LABEL_32;
    }

LABEL_52:
    v3 = sub_1D9B1A738(&unk_1F552A048);
    *(v2 + 40) = v3;
    v42 = *(v3 + 2);
    if (!v42)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_32:
    v43 = vcvtd_n_f64_s64(v30, 0x1EuLL);
    *(v3 + 4) = v8 * 0.333333333;
    v44 = (v43 + 1.0) * (v43 + 1.0) + -1.0;
    if (v43 < 0.0)
    {
      v44 = 1.0 - (1.0 - v43) * (1.0 - v43);
    }

    if (v42 != 1)
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    if (v18 >= 0x5E)
    {
LABEL_7:
      v22 = 0;
    }

    else
    {
      v22 = 1uLL >> (v18 + 34);
    }
  }

  result = v44 * 0.333333333;
  *(v3 + 5) = result;
  *v46 = v10;
  *(v46 + 8) = v10 >> 61;
  *(v46 + 9) = v18;
  *(v46 + 10) = a2;
  *(v46 + 16) = v2;
  return result;
}

double S2Cell.approxArea.getter()
{
  v1 = *(v0 + 9);
  if (v1 > 1)
  {
    S2Cell.getRawVertex(_:)(2);
    v5 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    if (v5 != 0.0)
    {
      v5 = 1.0 / v5;
    }

    v6 = v23 * v5;
    v7 = v24 * v5;
    v8 = v25 * v5;
    S2Cell.getRawVertex(_:)(0);
    v9 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    if (v9 != 0.0)
    {
      v9 = 1.0 / v9;
    }

    v10 = v6 - v23 * v9;
    v11 = v7 - v24 * v9;
    v12 = v8 - v25 * v9;
    S2Cell.getRawVertex(_:)(3);
    v13 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    if (v13 != 0.0)
    {
      v13 = 1.0 / v13;
    }

    v14 = v23 * v13;
    v15 = v24 * v13;
    v16 = v25 * v13;
    S2Cell.getRawVertex(_:)(1);
    v17 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    if (v17 != 0.0)
    {
      v17 = 1.0 / v17;
    }

    v18 = v14 - v23 * v17;
    v19 = v15 - v24 * v17;
    v20 = v16 - v25 * v17;
    v21 = sqrt((v10 * v19 - v11 * v18) * (v10 * v19 - v11 * v18) + (v11 * v20 - v12 * v19) * (v11 * v20 - v12 * v19) + (v12 * v18 - v10 * v20) * (v12 * v18 - v10 * v20)) * 0.5;
    v22 = v21 * 0.318309886;
    if (v21 * 0.318309886 > 1.0)
    {
      v22 = 1.0;
    }

    return (v21 + v21) / (sqrt(1.0 - v22) + 1.0);
  }

  else
  {
    if (qword_1ECB508F0 != -1)
    {
      swift_once();
    }

    v2 = *&qword_1ECB513E8;
    v3 = (1.0 - v1) * qword_1ECB513F0;

    return scalb(v2, v3);
  }
}

double S2Cell.exactArea.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 16);
  v31 = *v0;
  LOBYTE(v32) = v2;
  BYTE1(v32) = v3;
  BYTE2(v32) = v4;
  v33 = v5;
  S2Cell.getRawVertex(_:)(0);
  v6 = sqrt(v34 * v34 + v35 * v35 + v36 * v36);
  if (v6 != 0.0)
  {
    v6 = 1.0 / v6;
  }

  v7 = v34 * v6;
  v8 = v35 * v6;
  v31 = *&v1;
  LOBYTE(v32) = v2;
  BYTE1(v32) = v3;
  v9 = v36 * v6;
  BYTE2(v32) = v4;
  v33 = v5;
  S2Cell.getRawVertex(_:)(1);
  v10 = sqrt(v34 * v34 + v35 * v35 + v36 * v36);
  if (v10 != 0.0)
  {
    v10 = 1.0 / v10;
  }

  v26 = v34 * v10;
  v27 = v35 * v10;
  v31 = *&v1;
  LOBYTE(v32) = v2;
  BYTE1(v32) = v3;
  v11 = v36 * v10;
  BYTE2(v32) = v4;
  v33 = v5;
  S2Cell.getRawVertex(_:)(2);
  v12 = sqrt(v34 * v34 + v35 * v35 + v36 * v36);
  if (v12 != 0.0)
  {
    v12 = 1.0 / v12;
  }

  v13 = v34 * v12;
  v14 = v35 * v12;
  v31 = *&v1;
  LOBYTE(v32) = v2;
  BYTE1(v32) = v3;
  v15 = v36 * v12;
  BYTE2(v32) = v4;
  v33 = v5;
  S2Cell.getRawVertex(_:)(3);
  v16 = v36;
  v17 = sqrt(v34 * v34 + v35 * v35 + v16 * v16);
  if (v17 != 0.0)
  {
    v17 = 1.0 / v17;
  }

  v24 = v35 * v17;
  v25 = v34 * v17;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v31 = v26;
  v32 = v27;
  v33 = v11;
  v18 = v16 * v17;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  sub_1D9AEF860(&v34, &v31, &v28, v27, v26, v16);
  v20 = v19;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v28 = v25;
  v29 = v24;
  v30 = v18;
  sub_1D9AEF860(&v34, &v31, &v28, v24, v25, v21);
  return v20 + v22;
}

void S2Cell.capBound.getter(double *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = v2[4];
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v3 == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = v2[5];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v8 == 1)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v9 = *(v1 + 8);
  v10 = (*(v5 + 32) + *(v5 + 40)) * 0.5;
  v11 = (*(v7 + 32) + *(v7 + 40)) * 0.5;
  if (v9 <= 1)
  {
    v12 = 1.0;
    if (!*(v1 + 8))
    {
      goto LABEL_18;
    }

    if (v9 == 1)
    {
      v12 = -v10;
      v10 = 1.0;
      goto LABEL_18;
    }

LABEL_17:
    v12 = (*(v7 + 32) + *(v7 + 40)) * 0.5;
    v11 = -1.0;
    goto LABEL_18;
  }

  if (v9 == 2)
  {
    v12 = -v10;
    v10 = -v11;
    v11 = 1.0;
    goto LABEL_18;
  }

  if (v9 == 3)
  {
    v13 = -v11;
    v11 = -v10;
    v12 = -1.0;
    v10 = v13;
    goto LABEL_18;
  }

  if (v9 != 4)
  {
    goto LABEL_17;
  }

  v12 = (*(v7 + 32) + *(v7 + 40)) * 0.5;
  v11 = -v10;
  v10 = -1.0;
LABEL_18:
  v14 = 0;
  v15 = sqrt(v12 * v12 + v10 * v10 + v11 * v11);
  if (v15 != 0.0)
  {
    v15 = 1.0 / v15;
  }

  v16 = v12 * v15;
  v17 = v10 * v15;
  v18 = v11 * v15;
  v19 = 0.0;
  do
  {
    S2Cell.getRawVertex(_:)(v14);
    v20 = sqrt(v24 * v24 + v25 * v25 + v26 * v26);
    v21 = 1.0 / v20;
    if (v20 == 0.0)
    {
      v21 = v20;
    }

    v22 = v24 * v21;
    v23 = v25 * v21;
    if (v19 < 0.0)
    {
      v16 = v24 * v21;
      v17 = v25 * v21;
      v18 = v26 * v21;
      v19 = 0.0;
    }

    else if (v19 <= ((v18 - v26 * v21) * (v18 - v26 * v21) + (v16 - v22) * (v16 - v22) + (v17 - v23) * (v17 - v23)) * 2.22044605e-16)
    {
      v19 = ((v18 - v26 * v21) * (v18 - v26 * v21) + (v16 - v22) * (v16 - v22) + (v17 - v23) * (v17 - v23)) * 2.22044605e-16;
    }

    ++v14;
  }

  while (v14 != 4);
  *a1 = v16;
  a1[1] = v17;
  a1[2] = v18;
  a1[3] = v19;
}

void S2Cell.init(face:pos:level:)(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (__OFSUB__(30, a3))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (0x400000000000001ELL - a3 < 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = 2 * (30 - a3);
  v6 = v5 - 65;
  v7 = 1 << v5;
  if (v5 >= 0x40)
  {
    v7 = 0;
  }

  v8 = 1uLL >> ((-2 * (30 - a3)) & 0x3E);
  if (v5 <= 0xFFFFFFFFFFFFFFC0)
  {
    v8 = 0;
  }

  if (((30 - a3) & 0x4000000000000000) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v6 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v9 = 0;
  }

  v13 = (a2 | 1u | (a1 << 61)) & -v9 | v9;
  S2Cell.init(cellId:)(&v13, &v14);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a4 = v14;
  *(a4 + 8) = v10;
  *(a4 + 10) = v11;
  *(a4 + 16) = v12;
}

void S2Cell.init(point:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v8 = *a1;
  v9 = v3;
  S2CellId.init(point:)(&v8, &v7);
  S2Cell.init(cellId:)(&v7, &v8);
  v4 = WORD4(v8);
  v5 = BYTE10(v8);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v4;
  *(a2 + 10) = v5;
  *(a2 + 16) = v6;
}

void S2Cell.init(latlng:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = __sincos_stret(*a1);
  v5 = __sincos_stret(v3);
  v10 = v4.__cosval * v5.__cosval;
  v11 = v4.__cosval * v5.__sinval;
  sinval = v4.__sinval;
  S2CellId.init(point:)(&v10, &v9);
  S2Cell.init(cellId:)(&v9, &v10);
  v6 = LOWORD(v11);
  v7 = BYTE2(v11);
  v8 = sinval;
  *a2 = v10;
  *(a2 + 8) = v6;
  *(a2 + 10) = v7;
  *(a2 + 16) = v8;
}

VisualLookUp::S2Point __swiftcall S2Cell.getRawVertex(_:)(Swift::Int a1)
{
  v6 = *(v2 + 16);
  v7 = v6[2];
  if (!v7)
  {
    __break(1u);
    goto LABEL_40;
  }

  v8 = a1 >> 1;
  if (a1 >> 1 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v6[4];
  v10 = v8 ^ a1 & 1;
  if (v10 >= *(v9 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v7 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v11 = v6[5];
  if (v8 >= *(v11 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = *(v2 + 8);
  v13 = v9 + 8 * v10;
  v3 = *(v13 + 32);
  v14 = v11 + 8 * v8;
  v4 = *(v14 + 32);
  v15 = -1.0;
  v16 = -v3;
  v17 = -v4;
  if (v12 == 4)
  {
    v18 = -1.0;
  }

  else
  {
    v18 = *(v13 + 32);
  }

  if (v12 == 4)
  {
    v19 = -v3;
  }

  else
  {
    v19 = -1.0;
  }

  if (v12 == 3)
  {
    v20 = -1.0;
  }

  else
  {
    v20 = *(v14 + 32);
  }

  if (v12 == 3)
  {
    v18 = -v4;
    v19 = -v3;
  }

  if (v12 == 2)
  {
    v20 = -v3;
  }

  else
  {
    v17 = v18;
  }

  if (v12 == 2)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = v19;
  }

  if (v12 == 1)
  {
    v22 = 1.0;
  }

  else
  {
    v16 = *(v14 + 32);
    v22 = *(v13 + 32);
  }

  if (v12 == 1)
  {
    v15 = *(v14 + 32);
  }

  if (*(v2 + 8))
  {
    v3 = v22;
  }

  else
  {
    v16 = 1.0;
  }

  if (*(v2 + 8))
  {
    v4 = v15;
  }

  if (*(v2 + 8) <= 1u)
  {
    v5 = v16;
  }

  else
  {
    v5 = v20;
  }

  if (*(v2 + 8) > 1u)
  {
    v3 = v17;
    v4 = v21;
  }

  *v1 = v5;
  v1[1] = v3;
  v1[2] = v4;
LABEL_44:
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

VisualLookUp::S2Point __swiftcall S2Cell.getEdge(_:)(Swift::Int a1)
{
  v2 = sub_1D9B19AB0(S2Cell.getRawEdge(_:), v1);
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

double sub_1D9B19AB0@<D0>(void (*a1)(float64x2_t *__return_ptr)@<X1>, float64x2_t *a2@<X8>)
{
  a1(&v5);
  v3 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)) + v6 * v6);
  if (v3 != 0.0)
  {
    v3 = 1.0 / v3;
  }

  result = v6 * v3;
  *a2 = vmulq_n_f64(v5, v3);
  a2[1].f64[0] = result;
  return result;
}

VisualLookUp::S2Point __swiftcall S2Cell.getRawEdge(_:)(Swift::Int a1)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (a1 == 2)
  {
    if (v6[2] >= 2uLL)
    {
      v13 = v6[5];
      if (*(v13 + 16) < 2uLL)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v14 = v1;
      static S2Projections.getVNorm(face:v:)(v5, v16.f64, *(v13 + 40));
      goto LABEL_20;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      if (v6[2] >= 2uLL)
      {
        v7 = v6[5];
        if (*(v7 + 16))
        {
          v8 = *(v7 + 32);

          static S2Projections.getVNorm(face:v:)(v5, v1, v8);
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }

    if (!v6[2])
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v15 = v6[4];
    if (!*(v15 + 16))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v14 = v1;
    static S2Projections.getUNorm(face:u:)(v5, v16.f64, *(v15 + 32));
LABEL_20:
    v3 = -v17;
    v9 = vnegq_f64(v16);
    *v14 = v9;
    v14[1].f64[0] = v3;
    goto LABEL_29;
  }

  if (!v6[2])
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v6[4];
  if (*(v11 + 16) < 2uLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v11 + 40);

  static S2Projections.getUNorm(face:u:)(v5, v1, v12);
LABEL_29:
  result.y = v9.f64[0];
  result.z = v10;
  result.x = v3;
  return result;
}

uint64_t S2Cell.subdivide()()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 9);
    v4 = *(v0 + 10);
    v5 = v0[2];
    v35 = *v0;
    v32 = v2;
    v36 = v2;
    v37 = v3;
    v33 = v4;
    v38 = v4;
    v39 = v5;
    result = S2Cell.centerUV.getter(&v34);
    if (!__OFSUB__(0, v1))
    {
      v7 = -v1 & v1;
      v8 = v1 - v7;
      if (v1 < v7)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v9 = v8 + (v7 >> 2);
      if (__CFADD__(v8, v7 >> 2))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v33 > 3)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v31 = v3 + 1;
      if (v31 != (v3 + 1))
      {
LABEL_56:
        __break(1u);
        return result;
      }

      v10 = 0;
      v11 = v34;
      v12 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53350, &qword_1D9C94BE0);
        result = swift_allocObject();
        *(result + 16) = xmmword_1D9C85EA0;
        *(result + 32) = &unk_1F552A598;
        *(result + 40) = &unk_1F552A5C8;
        v13 = qword_1F5528308[v33 + 4];
        if (v10 >= *(v13 + 16))
        {
          break;
        }

        if (v5[2] < 2uLL)
        {
          goto LABEL_39;
        }

        v14 = result;
        v15 = *(v13 + 8 * v10 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14[4] = &unk_1F552A598;
        result = &unk_1F552A598;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          result = sub_1D9B1A738(&unk_1F552A598);
          v14[4] = result;
        }

        v17 = (v15 >> 1) & 1;
        v18 = (v15 & 2) == 0;
        if (v18 >= *(result + 16))
        {
          goto LABEL_40;
        }

        *(result + 8 * v18 + 32) = v11.f64[0];
        v19 = v5[4];
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_41;
        }

        if (!v14[2])
        {
          goto LABEL_42;
        }

        v20 = v14[4];
        v21 = *(v19 + 8 * v17 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        v14[4] = v20;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v20);
          v20 = result;
          v14[4] = result;
        }

        if (v17 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        *(v20 + 8 * v17 + 32) = v21;
        if (v14[2] < 2uLL)
        {
          goto LABEL_44;
        }

        v22 = v14[5];
        result = swift_isUniquelyReferenced_nonNull_native();
        v14[5] = v22;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v22);
          v22 = result;
          v14[5] = result;
        }

        v23 = v15 & 1;
        if ((v23 ^ 1) >= *(v22 + 16))
        {
          goto LABEL_45;
        }

        *(v22 + 8 * (v23 ^ 1) + 32) = v11.f64[1];
        v24 = v5[5];
        if (v23 >= *(v24 + 16))
        {
          goto LABEL_46;
        }

        if (v14[2] < 2uLL)
        {
          goto LABEL_47;
        }

        v25 = v14[5];
        v26 = *(v24 + 8 * v23 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        v14[5] = v25;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v25);
          v25 = result;
          v14[5] = result;
        }

        if (v23 >= *(v25 + 16))
        {
          goto LABEL_48;
        }

        *(v25 + 8 * v23 + 32) = v26;
        v27 = qword_1F5528348[v10 + 4];
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v27 > 0xFF)
        {
          goto LABEL_50;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9AFAF6C(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v29 = *(v12 + 16);
        v28 = *(v12 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1D9AFAF6C((v28 > 1), v29 + 1, 1, v12);
          v12 = result;
        }

        *(v12 + 16) = v29 + 1;
        v30 = v12 + 24 * v29;
        *(v30 + 32) = v9;
        *(v30 + 40) = v32;
        *(v30 + 41) = v31;
        *(v30 + 42) = v33 ^ v27;
        *(v30 + 48) = v14;
        if (__OFSUB__(0, v9))
        {
          goto LABEL_51;
        }

        ++v10;
        v9 += 2 * (-v9 & v9);
        if (v10 == 4)
        {
          return v12;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t S2Cell.centerUV.getter@<X0>(float64x2_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 9);
  v29 = 0;
  v30 = 0;
  v5 = sub_1D9B08A90(&v30, &v29, 7, (v3 >> 61) & 1);
  v6 = sub_1D9B08A90(&v30, &v29, 6, v5);
  v7 = sub_1D9B08A90(&v30, &v29, 5, v6);
  v8 = sub_1D9B08A90(&v30, &v29, 4, v7);
  v9 = sub_1D9B08A90(&v30, &v29, 3, v8);
  v10 = sub_1D9B08A90(&v30, &v29, 2, v9);
  v11 = sub_1D9B08A90(&v30, &v29, 1, v10);
  result = sub_1D9B08A90(&v30, &v29, 0, v11);
  if (v4 - 95 < 0x7F)
  {
    goto LABEL_2;
  }

  if (v4 >= 31)
  {
    goto LABEL_23;
  }

  if (v4 <= -34)
  {
    goto LABEL_2;
  }

  v13 = 1 << (30 - v4);
  v14 = -v13;
  if (__OFSUB__(0, v13))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  while (1)
  {
    v15 = v30 & v14;
    if (((v30 & v14) + 0x4000000000000000) < 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v16 = __OFADD__(v13, 2 * v15);
    v17 = v13 + 2 * v15;
    if (v16)
    {
      goto LABEL_18;
    }

    v16 = __OFADD__(v17, -1073741824);
    v18 = v17 - 0x40000000;
    if (v16)
    {
      goto LABEL_19;
    }

    v19 = vcvtd_n_f64_s64(v18, 0x1EuLL);
    v20 = v19 < 0.0;
    v21 = 1.0 - (1.0 - v19) * (1.0 - v19);
    v22.f64[0] = (v19 + 1.0) * (v19 + 1.0) + -1.0;
    if (v20)
    {
      v22.f64[0] = v21;
    }

    v23 = v29 & v14;
    if (v23 + 0x4000000000000000 < 0)
    {
      goto LABEL_20;
    }

    v16 = __OFADD__(v13, 2 * v23);
    v24 = v13 + 2 * v23;
    if (!v16)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (v4 >= 0x5E)
    {
LABEL_2:
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = 1uLL >> (v4 + 34);
      v14 = -v13;
      if (__OFSUB__(0, v13))
      {
        goto LABEL_26;
      }
    }
  }

  v16 = __OFADD__(v24, -1073741824);
  v25 = v24 - 0x40000000;
  if (v16)
  {
    goto LABEL_22;
  }

  v26 = vcvtd_n_f64_s64(v25, 0x1EuLL);
  v20 = v26 < 0.0;
  v27 = 1.0 - (1.0 - v26) * (1.0 - v26);
  v28 = (v26 + 1.0) * (v26 + 1.0) + -1.0;
  if (v20)
  {
    v28 = v27;
  }

  v22.f64[1] = v28;
  *a1 = vmulq_f64(v22, vdupq_n_s64(0x3FD5555555555555uLL));
  return result;
}

double S2Cell.averageArea.getter()
{
  v1 = *(v0 + 9);
  if (qword_1ECB508F0 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1ECB513E8;
  v3 = (1.0 - v1) * qword_1ECB513F0;

  return scalb(v2, v3);
}

double sub_1D9B1A38C(unint64_t a1, unint64_t a2, double result)
{
  v4 = *(v3 + 16);
  v5 = v4[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v4[4];
  if (*(v6 + 16) <= a1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = v4[5];
  if (*(v7 + 16) > a2)
  {
    v8 = *(v3 + 8);
    v9 = *(v6 + 8 * a1 + 32);
    v10 = *(v7 + 8 * a2 + 32);
    if (v8 <= 1)
    {
      v11 = 1.0;
      if (!*(v3 + 8))
      {
        return atan2(v10, sqrt(v11 * v11 + v9 * v9));
      }

      if (v8 == 1)
      {
        v11 = -v9;
        v9 = 1.0;
        return atan2(v10, sqrt(v11 * v11 + v9 * v9));
      }
    }

    else
    {
      switch(v8)
      {
        case 2u:
          v11 = -v9;
          v9 = -v10;
          v10 = 1.0;
          return atan2(v10, sqrt(v11 * v11 + v9 * v9));
        case 3u:
          v12 = -v10;
          v10 = -v9;
          v11 = -1.0;
          v9 = v12;
          return atan2(v10, sqrt(v11 * v11 + v9 * v9));
        case 4u:
          v11 = *(v7 + 8 * a2 + 32);
          v10 = -v9;
          v9 = -1.0;
          return atan2(v10, sqrt(v11 * v11 + v9 * v9));
      }
    }

    v11 = *(v7 + 8 * a2 + 32);
    v10 = -1.0;
    return atan2(v10, sqrt(v11 * v11 + v9 * v9));
  }

LABEL_24:
  __break(1u);
  return result;
}

long double sub_1D9B1A480(unint64_t a1, unint64_t a2, long double result)
{
  v4 = *(v3 + 16);
  v5 = v4[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v4[4];
  if (*(v6 + 16) <= a1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v4[5];
  if (*(v7 + 16) <= a2)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v8 = *(v3 + 8);
  v9 = v6 + 8 * a1;
  v10 = *(v9 + 32);
  v11 = v7 + 8 * a2;
  v12 = *(v11 + 32);
  v13 = -v12;
  v14 = -1.0;
  if (v8 == 4)
  {
    v15 = -1.0;
  }

  else
  {
    v15 = *(v9 + 32);
  }

  if (v8 == 3)
  {
    v15 = -v12;
  }

  else
  {
    v14 = *(v11 + 32);
  }

  if (v8 == 2)
  {
    v14 = -v10;
  }

  else
  {
    v13 = v15;
  }

  if (v8 == 1)
  {
    v12 = -v10;
    v16 = 1.0;
  }

  else
  {
    v16 = *(v9 + 32);
  }

  if (*(v3 + 8))
  {
    v10 = v16;
  }

  else
  {
    v12 = 1.0;
  }

  if (*(v3 + 8) > 1u)
  {
    v12 = v14;
    v10 = v13;
  }

  return atan2(v10, v12);
}

unint64_t *S2Cell.contains(cell:)(unint64_t *result)
{
  v2 = *v1;
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = -*v1 & v2;
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (__OFSUB__(v2, v5))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*result < v2 - v5)
  {
    return 0;
  }

  v4 = __OFADD__(v2, v5);
  v6 = v2 + v5;
  if (!v4)
  {
    return (*result <= v6);
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t S2Cell.mayIntersect(cell:)(void *a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  return S2CellId.intersects(with:)(v4) & 1;
}

unint64_t sub_1D9B1A5E4(void *a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  return S2CellId.intersects(with:)(v4) & 1;
}

uint64_t sub_1D9B1A7C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D9C7E50C();
  }

  return sub_1D9C7E44C();
}

uint64_t sub_1D9B1A83C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  sub_1D99A3FE8(a1, v1 + OBJC_IVAR____TtC12VisualLookUp25UnifiedModelPostProcessor_modelInfo);
  v7 = *(a1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v7 + 16) && (v8 = sub_1D99EE004(9), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_1D9C7B80C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v11 + *(v13 + 72) * v10, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = sub_1D9C7B80C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  type metadata accessor for FileMapper();
  swift_allocObject();
  v15 = sub_1D9B1E230(v6);
  sub_1D99A404C(a1);
  *(v2 + 16) = v15;
  return v2;
}

void sub_1D9B1AA20(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v253 = a2;
  v254 = a4;
  v242 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v242);
  v241 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v244 = &v214 - v8;
  v256 = sub_1D9C7D8DC();
  v252 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v10 = &v214 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v214 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v214 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v214 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v214 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v214 - v24;
  v26 = *a3;
  v246 = a3[1];
  v247 = v26;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = v255;
  v30 = (*(v28 + 8))(v27, v28);
  if (!v29)
  {
    v31 = v252;
    v234 = v25;
    v232 = v22;
    v231 = v19;
    v255 = v16;
    v245 = v13;
    v237 = v30;
    v32 = *(v30 + 24);
    if (*(v32 + 16) >= 2uLL)
    {
      v33 = v32 + 64;
      v34 = 1 << *(v32 + 32);
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v36 = v35 & *(v32 + 64);
      v229 = OBJC_IVAR____TtC12VisualLookUp25UnifiedModelPostProcessor_modelInfo;
      v37 = (v34 + 63) >> 6;
      v250 = (v252 + 16);
      v251 = (v252 + 8);
      v233 = (v252 + 32);
      v228 = 0x80000001D9CA3A40;
      v227 = 0x80000001D9CAA160;

      v38 = 0;
      *&v39 = 136315138;
      v236 = v39;
      *&v39 = 134217984;
      v226 = v39;
      v230 = MEMORY[0x1E69E7CC0];
      v235 = MEMORY[0x1E69E7CC0];
      v40 = v256;
      v41 = 0;
      v239 = v32 + 64;
      v240 = v32;
      v238 = v37;
LABEL_7:
      v42 = v254;
      while (2)
      {
        v43 = v38;
        while (1)
        {
          if (!v36)
          {
            while (1)
            {
              v38 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                break;
              }

              if (v38 >= v37)
              {

                v203 = v246;
                *v42 = v247;
                *(v42 + 16) = v203;
                v204 = v230;
                *(v42 + 32) = v235;
                *(v42 + 40) = v204;
                return;
              }

              v36 = *(v33 + 8 * v38);
              ++v43;
              if (v36)
              {
                v44 = v40;
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_169:

            v257 = 0;
            v258 = 0xE000000000000000;
            sub_1D9C7E40C();

            v257 = 0xD000000000000016;
            v258 = 0x80000001D9CA3B40;
            MEMORY[0x1DA73DF90](v40, v33);

            v205 = v257;
            v206 = v258;
            sub_1D99A182C();
            swift_allocError();
            *v207 = v205;
            *(v207 + 8) = v206;
            *(v207 + 16) = 4;
            swift_willThrow();

LABEL_171:
            sub_1D99A404C(v244);

            return;
          }

          v44 = v40;
          v38 = v43;
LABEL_17:
          v252 = (v36 - 1) & v36;
          v45 = (*(v32 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
          v47 = *v45;
          v46 = v45[1];

          v248 = v47;
          if (!v253)
          {
            break;
          }

          sub_1D9BDBB08(v253);
          v49 = v48;
          v257 = v47;
          v258 = v46;
          v50 = v46;
          MEMORY[0x1EEE9AC00](v48);
          *(&v214 - 2) = &v257;
          v51 = sub_1D9BC1698(sub_1D99A40D8, (&v214 - 4), v49);

          if (v51)
          {
            goto LABEL_47;
          }

          v249 = v41;
          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          v52 = byte_1EDD354C0;
          v53 = v255;
          v54 = v50;
          if (byte_1EDD354C0 != 1)
          {
            goto LABEL_31;
          }

          if (sub_1D9A75D94())
          {
            v55 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v55 = &off_1ECB51BA8;
            }
          }

          else
          {
            v55 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v55 = &qword_1EDD355A8;
            }
          }

          v56 = *(*v55 + 32);

          v57 = sub_1D9C7DC4C();
          LODWORD(v56) = [v56 BOOLForKey_];

          v53 = v255;
          if (v56)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v58 = __swift_project_value_buffer(v44, qword_1EDD2C990);
            v59 = *v250;
            (*v250)(v53, v58, v44);
          }

          else
          {
LABEL_31:
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
            }

            v60 = __swift_project_value_buffer(v44, qword_1EDD354D8);
            v59 = *v250;
            (*v250)(v53, v60, v44);
            if ((v52 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          if (sub_1D9A75D94())
          {
            v61 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v61 = &off_1ECB51BA8;
            }
          }

          else
          {
            v61 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v61 = &qword_1EDD355A8;
            }
          }

          v62 = *(*v61 + 32);

          v63 = sub_1D9C7DC4C();
          LODWORD(v62) = [v62 BOOLForKey_];

          v53 = v255;
          if (v62)
          {
            v64 = v245;
            v40 = v256;
            (*v233)(v245, v255, v256);
            goto LABEL_44;
          }

LABEL_41:
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
          }

          v65 = v256;
          v66 = __swift_project_value_buffer(v256, qword_1EDD354D8);
          v64 = v245;
          v59(v245, v66, v65);
          v40 = v65;
          (*v251)(v53, v65);
LABEL_44:
          v32 = v240;

          v67 = sub_1D9C7D8BC();
          v68 = sub_1D9C7E09C();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v257 = v70;
            *v69 = v236;
            v71 = sub_1D9A0E224(v248, v54, &v257);
            v72 = v32;
            v73 = v71;

            *(v69 + 4) = v73;
            v32 = v72;
            _os_log_impl(&dword_1D9962000, v67, v68, "Skip result key %s", v69, 0xCu);
            v74 = __swift_destroy_boxed_opaque_existential_0Tm(v70);
            v75 = v70;
            v40 = v256;
            MEMORY[0x1DA7405F0](v75, -1, -1, v74);
            MEMORY[0x1DA7405F0](v69, -1, -1);
          }

          else
          {
          }

          (*v251)(v64, v40);
          v43 = v38;
          v41 = v249;
          v42 = v254;
          v33 = v239;
          v37 = v238;
          v36 = v252;
        }

        v50 = v46;
LABEL_47:
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v76 = byte_1EDD354C0;
        if (byte_1EDD354C0 == 1)
        {
          v77 = byte_1EDD354C0;
          v78 = [objc_opt_self() mainBundle];
          v79 = [v78 bundleIdentifier];

          if (v79)
          {
            v80 = sub_1D9C7DC7C();
            v82 = v81;

            if (v80 == 0xD00000000000002BLL && v228 == v82)
            {
            }

            else
            {
              v84 = sub_1D9C7E7DC();

              if ((v84 & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            v85 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v85 = &off_1ECB51BA8;
            }
          }

          else
          {
LABEL_56:
            v85 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v85 = &qword_1EDD355A8;
            }
          }

          v86 = *(*v85 + 32);

          v87 = sub_1D9C7DC4C();
          LODWORD(v86) = [v86 BOOLForKey_];

          v76 = v77;
          if (v86)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v88 = v256;
            v89 = __swift_project_value_buffer(v256, qword_1EDD2C990);
            v90 = *v250;
            (*v250)(v234, v89, v88);
            goto LABEL_68;
          }
        }

        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v91 = v256;
        v92 = __swift_project_value_buffer(v256, qword_1EDD354D8);
        v90 = *v250;
        v93 = v234;
        (*v250)(v234, v92, v91);
        if ((v76 & 1) == 0)
        {
          goto LABEL_79;
        }

LABEL_68:
        v94 = [objc_opt_self() mainBundle];
        v95 = [v94 bundleIdentifier];

        if (!v95)
        {
          goto LABEL_75;
        }

        v96 = sub_1D9C7DC7C();
        v98 = v97;

        if (v96 != 0xD00000000000002BLL || v228 != v98)
        {
          v99 = sub_1D9C7E7DC();

          if (v99)
          {
            goto LABEL_73;
          }

LABEL_75:
          v100 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v100 = &qword_1EDD355A8;
          }

          goto LABEL_77;
        }

LABEL_73:
        v100 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v100 = &off_1ECB51BA8;
        }

LABEL_77:
        v101 = *(*v100 + 32);

        v102 = sub_1D9C7DC4C();
        LODWORD(v101) = [v101 BOOLForKey_];

        v93 = v234;
        if (v101)
        {
          v103 = v232;
          v104 = v256;
          (*v233)(v232, v234);
          goto LABEL_82;
        }

LABEL_79:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v105 = v256;
        v106 = __swift_project_value_buffer(v256, qword_1EDD354D8);
        v103 = v232;
        v90(v232, v106, v105);
        v107 = v93;
        v104 = v105;
        (*v251)(v107, v105);
LABEL_82:
        v108 = v50;

        v109 = sub_1D9C7D8BC();
        v110 = sub_1D9C7E09C();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v249 = v50;
          v112 = v103;
          v113 = v111;
          v114 = swift_slowAlloc();
          v257 = v114;
          *v113 = v236;
          v40 = v248;
          *(v113 + 4) = sub_1D9A0E224(v248, v249, &v257);
          _os_log_impl(&dword_1D9962000, v109, v110, "Process result key %s", v113, 0xCu);
          v115 = __swift_destroy_boxed_opaque_existential_0Tm(v114);
          v116 = v256;
          MEMORY[0x1DA7405F0](v114, -1, -1, v115);
          MEMORY[0x1DA7405F0](v113, -1, -1);

          v117 = *v251;
          v118 = v112;
          v108 = v249;
          v104 = v116;
          (*v251)(v118, v116);
          v119 = v242;
        }

        else
        {

          v117 = *v251;
          (*v251)(v103, v104);
          v119 = v242;
          v40 = v248;
        }

        if (v40 == 0x6E69646465626D65 && v108 == 0xE900000000000067 || (sub_1D9C7E7DC() & 1) != 0)
        {
          sub_1D99A3FE8(v243 + v229, v244);
          v120 = v253;
          if (!v253 || !*(v253 + 16))
          {
            v33 = v108;
LABEL_93:
            v249 = 0;
            v124 = 0xE000000000000000;
            goto LABEL_94;
          }

          v33 = v108;
          v121 = sub_1D99ED894(v40, v108);
          if ((v122 & 1) == 0)
          {
            goto LABEL_93;
          }

          v123 = *(v120 + 56) + 16 * v121;
          v124 = *(v123 + 8);
          v249 = *v123;

LABEL_94:
          v125 = *(v237 + 24);
          if (!*(v125 + 16))
          {
            goto LABEL_169;
          }

          v126 = sub_1D99ED894(v40, v33);
          if ((v127 & 1) == 0)
          {
            goto LABEL_169;
          }

          v128 = v126;

          v129 = *(*(v125 + 56) + 8 * v128);
          v130 = sub_1D9C18DE8(v129);
          if (v41)
          {

            goto LABEL_171;
          }

          v131 = v130;
          v132 = sub_1D9C19020(v130);
          v133 = v244;
          v134 = (v244 + *(v119 + 24));
          v135 = v134[1];
          v257 = *v134;
          v258 = v135;

          MEMORY[0x1DA73DF90](v249, v124);

          v136 = v257;
          v137 = v258;
          sub_1D99A404C(v133);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v235 = sub_1D9AF870C(0, *(v235 + 2) + 1, 1, v235);
          }

          v36 = v252;
          v139 = *(v235 + 2);
          v138 = *(v235 + 3);
          if (v139 >= v138 >> 1)
          {
            v235 = sub_1D9AF870C((v138 > 1), v139 + 1, 1, v235);
          }

          v140 = v235;
          *(v235 + 2) = v139 + 1;
          v141 = &v140[24 * v139];
          *(v141 + 4) = v132;
          *(v141 + 5) = v136;
          *(v141 + 6) = v137;
          v41 = 0;
          v40 = v256;
          v42 = v254;
          v33 = v239;
          v32 = v240;
          v37 = v238;
          continue;
        }

        break;
      }

      v215 = v117;
      if (v40 == 0xD000000000000010 && v227 == v108 || (sub_1D9C7E7DC() & 1) != 0 || v40 == 0x7373616C63 && v108 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
      {
        sub_1D99A3FE8(v243 + v229, v241);
        v142 = v253;
        if (v253)
        {
          v143 = *(v253 + 16);

          if (v143)
          {
            v144 = sub_1D99ED894(v40, v108);
            if (v145)
            {
              v146 = (*(v142 + 56) + 16 * v144);
              v147 = v146[1];
              v216 = *v146;
              v217 = v147;

LABEL_114:
              v148 = *(v237 + 24);
              if (*(v148 + 16))
              {
                v149 = sub_1D99ED894(v40, v108);
                if (v150)
                {
                  v218 = *(*(v148 + 56) + 8 * v149);
                  v151 = sub_1D99F767C(v218, 2, 0);
                  v220 = sub_1D9AF85D0(0, 2, 0, MEMORY[0x1E69E7CC0]);
                  v152 = 0;
                  v259 = MEMORY[0x1E69E7CD0];
                  v222 = v151;
                  v223 = v151 + 32;
                  v40 = v104;
                  while (1)
                  {
                    v224 = v259;
                    if (v152 == 2)
                    {
LABEL_153:
                      v249 = v41;

LABEL_154:

LABEL_158:
                      v190 = v241;
                      v191 = (v241 + *(v242 + 24));
                      v192 = v191[1];
                      v257 = *v191;
                      v258 = v192;

                      MEMORY[0x1DA73DF90](v216, v217);

                      v193 = v257;
                      v194 = v258;
                      sub_1D99A404C(v190);

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v230 = sub_1D9AF85EC(0, *(v230 + 2) + 1, 1, v230);
                      }

                      v36 = v252;
                      v196 = *(v230 + 2);
                      v195 = *(v230 + 3);
                      if (v196 >= v195 >> 1)
                      {
                        v230 = sub_1D9AF85EC((v195 > 1), v196 + 1, 1, v230);
                      }

                      v197 = v230;
                      *(v230 + 2) = v196 + 1;
                      v198 = &v197[24 * v196];
                      *(v198 + 4) = v193;
                      *(v198 + 5) = v194;
                      *(v198 + 6) = v220;
                      v41 = v249;
                      v33 = v239;
                      v32 = v240;
                      v37 = v238;
                      goto LABEL_7;
                    }

                    v153 = v152;
                    v248 = v259 + 56;
                    while (1)
                    {
                      v249 = v41;
                      if (v153 >= *(v222 + 2))
                      {

                        v186 = v231;
                        static Logger.argos.getter(v231);
                        v187 = sub_1D9C7D8BC();
                        v188 = sub_1D9C7E09C();
                        if (os_log_type_enabled(v187, v188))
                        {
                          v189 = swift_slowAlloc();
                          *v189 = v226;
                          *(v189 + 4) = v153;
                          _os_log_impl(&dword_1D9962000, v187, v188, "Invalid index %ld", v189, 0xCu);
                          MEMORY[0x1DA7405F0](v189, -1, -1);
                        }

                        v215(v186, v40);

                        goto LABEL_158;
                      }

                      v225 = v153 + 1;
                      v154 = *&v223[8 * v153];
                      v155 = *(*(v243 + 16) + 16);
                      v156 = *(v155 + 80);
                      os_unfair_lock_lock(v156 + 4);
                      swift_beginAccess();
                      v157 = *(v155 + 32);
                      if (v157 == 255)
                      {
                        break;
                      }

                      v158 = *(v155 + 24);
                      v159 = v224;
                      if ((v157 & 1) == 0)
                      {

                        os_unfair_lock_unlock(v156 + 4);
                        goto LABEL_129;
                      }

                      v257 = *(v155 + 24);
                      v160 = v158;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030, &unk_1D9C85460);
                      swift_willThrowTypedImpl();
                      os_unfair_lock_unlock(v156 + 4);
                      sub_1D99A40A8(v158, v157);
LABEL_128:
                      v158 = MEMORY[0x1E69E7CC0];
LABEL_129:
                      v164 = v158[2];

                      if ((v154 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_130;
                      }

LABEL_146:
                      v40 = v256;
LABEL_147:
                      v153 = v225;
                      v41 = v249;
                      if (v225 == 2)
                      {
                        goto LABEL_153;
                      }
                    }

                    v161 = *(v155 + 40);
                    v159 = v224;
                    if (!v161)
                    {
                      os_unfair_lock_unlock(v156 + 4);
                      goto LABEL_128;
                    }

                    v162 = v249;
                    v161(&v257);
                    if (v162)
                    {
                      break;
                    }

                    v249 = 0;
                    sub_1D9979BF4(v161, v221);
                    v176 = v257;
                    v177 = *(v155 + 24);
                    *(v155 + 24) = v257;
                    v178 = *(v155 + 32);
                    *(v155 + 32) = 0;

                    sub_1D99A40A8(v177, v178);
                    os_unfair_lock_unlock(v156 + 4);
                    v164 = *(v176 + 16);

                    if ((v154 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_146;
                    }

LABEL_130:
                    if (v154 >= v164)
                    {
                      goto LABEL_146;
                    }

                    v165 = v249;
                    v166 = sub_1D9C196E8();
                    v40 = v256;
                    if (v165)
                    {

                      v165 = 0;
                      v166 = MEMORY[0x1E69E7CC0];
                    }

                    v249 = v165;
                    if (v154 >= *(v166 + 16))
                    {
                      __break(1u);
                      return;
                    }

                    v167 = v166 + 16 * v154;
                    v168 = *(v167 + 32);
                    v169 = *(v167 + 40);

                    if (*(v159 + 16))
                    {
                      sub_1D9C7E8DC();
                      sub_1D9C7DD6C();
                      v170 = sub_1D9C7E93C();
                      v171 = -1 << *(v159 + 32);
                      v172 = v170 & ~v171;
                      if ((*(v248 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172))
                      {
                        v173 = ~v171;
                        while (1)
                        {
                          v174 = (*(v159 + 48) + 16 * v172);
                          v175 = *v174 == v168 && v174[1] == v169;
                          if (v175 || (sub_1D9C7E7DC() & 1) != 0)
                          {
                            break;
                          }

                          v172 = (v172 + 1) & v173;
                          if (((*(v248 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) == 0)
                          {
                            goto LABEL_149;
                          }
                        }

                        goto LABEL_147;
                      }
                    }

LABEL_149:

                    sub_1D9B91DE4(&v257, v168, v169);

                    v179 = [v218 objectAtIndexedSubscript_];
                    [v179 floatValue];
                    v181 = v180;

                    v183 = *(v220 + 2);
                    v182 = *(v220 + 3);
                    if (v183 >= v182 >> 1)
                    {
                      v220 = sub_1D9AF85D0((v182 > 1), v183 + 1, 1, v220);
                    }

                    v184 = v220;
                    *(v220 + 2) = v183 + 1;
                    v185 = &v184[24 * v183];
                    *(v185 + 4) = v168;
                    *(v185 + 5) = v169;
                    *(v185 + 12) = v181;
                    v41 = v249;
                    v152 = v225;
                    if (v183 == 1)
                    {

                      goto LABEL_154;
                    }
                  }

                  v249 = *(v155 + 24);
                  v219 = *(v155 + 32);
                  v163 = v162;
                  *(v155 + 24) = v162;
                  *(v155 + 32) = 1;
                  sub_1D99A40A8(v249, v219);
                  swift_willThrow();
                  sub_1D9979BF4(v161, v221);
                  os_unfair_lock_unlock(v156 + 4);

                  v249 = 0;
                  goto LABEL_128;
                }
              }

              v257 = 0;
              v258 = 0xE000000000000000;
              sub_1D9C7E40C();

              v257 = 0xD00000000000001BLL;
              v258 = 0x80000001D9CA3B20;
              MEMORY[0x1DA73DF90](v40, v108);
              v208 = v257;
              v209 = v258;
              sub_1D99A182C();
              swift_allocError();
              *v210 = v208;
              *(v210 + 8) = v209;
              *(v210 + 16) = 4;
              swift_willThrow();
              sub_1D99A404C(v241);

              goto LABEL_173;
            }
          }
        }

        else
        {
        }

        v216 = 0;
        v217 = 0xE000000000000000;
        goto LABEL_114;
      }

      v257 = 0;
      v258 = 0xE000000000000000;
      sub_1D9C7E40C();

      v257 = 0x7463657078656E75;
      v258 = 0xEF2079656B206465;
      MEMORY[0x1DA73DF90](v40, v108);

      v211 = v257;
      v212 = v258;
      sub_1D99A182C();
      swift_allocError();
      *v213 = v211;
      *(v213 + 8) = v212;
      *(v213 + 16) = 4;
      swift_willThrow();
LABEL_173:

      return;
    }

    static Logger.argos.getter(v10);
    v199 = sub_1D9C7D8BC();
    v200 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      *v201 = 0;
      _os_log_impl(&dword_1D9962000, v199, v200, "Unified model expected at least 1 outputs", v201, 2u);
      MEMORY[0x1DA7405F0](v201, -1, -1);
    }

    (*(v31 + 8))(v10, v256);
    sub_1D99A182C();
    swift_allocError();
    *v202 = 0xD00000000000001BLL;
    *(v202 + 8) = 0x80000001D9CAA140;
    *(v202 + 16) = 4;
    swift_willThrow();
  }
}

uint64_t sub_1D9B1C784()
{

  sub_1D99A404C(v0 + OBJC_IVAR____TtC12VisualLookUp25UnifiedModelPostProcessor_modelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnifiedModelPostProcessor(uint64_t a1)
{
  result = qword_1EDD321C8;
  if (!qword_1EDD321C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B1C844(char a1)
{
  sub_1D99BB148();
  if (!swift_dynamicCastMetatype())
  {
    return sub_1D9C7DD0C();
  }

  sub_1D9A72694();
  v2 = sub_1D9C7E7BC();
  if (!v2)
  {
    v2 = swift_allocError();
    *v3 = a1;
  }

  v4 = v2;
  v5 = sub_1D9C7B6FC();

  v6 = sub_1D9A4FABC();
  return v6;
}

uint64_t sub_1D9B1C914(double a1)
{
  v2 = sub_1D9C7D13C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  sub_1D99BB148();
  v15 = swift_dynamicCastMetatype();
  v17 = *(v3 + 16);
  if (v15)
  {
LABEL_4:
    v18 = v17(v11, v1, v2, v16);
    sub_1D9B1CE3C(v18);
    v19 = sub_1D9C7E7BC();
    if (v19)
    {
      v20 = v19;
      (*(v3 + 8))(v11, v2);
    }

    else
    {
      v20 = swift_allocError();
      (*(v3 + 32))(v21, v11, v2);
    }

    v22 = sub_1D9C7B6FC();

    v23 = sub_1D9A4FABC();
    return v23;
  }

  (v17)(v14, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522B8, &qword_1D9C8BE80);
  if (swift_dynamicCast())
  {
    v16.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0Tm(v27);
    goto LABEL_4;
  }

  (v17)(v8, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522C8, &qword_1D9C95550);
  if (swift_dynamicCast())
  {
    sub_1D99BB604(v27, v26);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v23 = sub_1D9C7E7EC();
    v25.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    (v17)(v5, v1, v2);
    v23 = sub_1D9C7DD0C();
  }

  (*(v3 + 8))(v8, v2, v25);
  return v23;
}

uint64_t sub_1D9B1CC64()
{
  v0 = sub_1D9C7D8DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = VIIsSettingsEnabledForLookup();
  if ((result & 1) == 0)
  {
    static Logger.argos.getter(v3);
    v5 = sub_1D9C7D8BC();
    v6 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      v9 = sub_1D9B1C844(0);
      v11 = sub_1D9A0E224(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D9962000, v5, v6, "%{public}s", v7, 0xCu);
      v12 = __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x1DA7405F0](v8, -1, -1, v12);
      MEMORY[0x1DA7405F0](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    sub_1D9A72694();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D9B1CE3C(double a1)
{
  result = qword_1ECB53038;
  if (!qword_1ECB53038)
  {
    sub_1D9C7D13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53038);
  }

  return result;
}

id sub_1D9B1CEB8(__CVBuffer *a1, uint64_t a2, CGFloat *a3, uint64_t a4, double a5, double a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v13 = sub_1D9C7D8DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v20 = a3[3];
  v21 = [objc_allocWithZone(MEMORY[0x1E6984688]) init];
  v22 = [objc_allocWithZone(MEMORY[0x1E69845A8]) initWithCVPixelBuffer:a1 orientation:1 options:0 session:v21];
  if (!v22)
  {
    sub_1D99A182C();
    swift_allocError();
    *v52 = 0xD000000000000029;
    *(v52 + 8) = 0x80000001D9CAA1E0;
    *(v52 + 16) = 5;
    swift_willThrow();
    goto LABEL_21;
  }

  v23 = v22;
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = 1.0;
  v62.size.height = 1.0;
  if (MinX < CGRectGetMinX(v62) || (v63.origin.x = v17, v63.origin.y = v18, v63.size.width = v19, v63.size.height = v20, MinY = CGRectGetMinY(v63), v64.origin.x = 0.0, v64.origin.y = 0.0, v64.size.width = 1.0, v64.size.height = 1.0, MinY < CGRectGetMinY(v64)) || (v65.origin.x = v17, v65.origin.y = v18, v65.size.width = v19, v65.size.height = v20, MaxX = CGRectGetMaxX(v65), v66.origin.x = 0.0, v66.origin.y = 0.0, v66.size.width = 1.0, v66.size.height = 1.0, CGRectGetMaxX(v66) < MaxX) || (v67.origin.x = v17, v67.origin.y = v18, v67.size.width = v19, v67.size.height = v20, MaxY = CGRectGetMaxY(v67), v68.origin.x = 0.0, v68.origin.y = 0.0, v68.size.width = 1.0, v68.size.height = 1.0, CGRectGetMaxY(v68) < MaxY))
  {
    v57 = a2;
    v56 = a4;
    v28 = v23;
    v29 = v21;
    static Logger.argos.getter(v16);
    v30 = sub_1D9C7D8BC();
    v31 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v14;
      v33 = v13;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D9962000, v30, v31, "WARNING: VIVNImageScaler invoked with normalizedBoundingBox outside (0,0),(1,1) coordinate range, probably a bug! Clipped 0-1 RoI will be used instead", v34, 2u);
      v35 = v34;
      v13 = v33;
      v14 = v32;
      MEMORY[0x1DA7405F0](v35, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    v21 = v29;
    v23 = v28;
    a4 = v56;
    a2 = v57;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v69.origin.x = v17;
  v69.origin.y = v18;
  v69.size.width = v19;
  v69.size.height = v20;
  v70 = VNImageRectForNormalizedRect(v69, Width, Height);
  v71 = CGRectIntegral(v70);
  x = v71.origin.x;
  if (a5 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  if (a6 >= 9.22337204e18)
  {
    goto LABEL_28;
  }

  y = v71.origin.y;
  v40 = v71.size.width;
  v41 = v71.size.height;
  sub_1D9A46194(MEMORY[0x1E69E7CC0]);
  v42 = sub_1D9C7DB3C();

  v58 = 0;
  v6 = [v23 cropAndScaleBufferWithWidth:a5 height:a6 cropRect:a2 format:a4 imageCropAndScaleOption:v42 options:&v58 error:x calculatedNormalizedOriginOffset:y calculatedScaleX:v40 calculatedScaleY:{v41, 0, 0, 0}];

  if (v6)
  {
    v43 = v58;
    if (!v58)
    {

      return v6;
    }

    v58 = 0;
    v59 = 0xE000000000000000;
    v44 = v43;
    sub_1D9C7E40C();

    v58 = 0xD000000000000027;
    v59 = 0x80000001D9CAA240;
    v45 = [v44 localizedDescription];
    v46 = sub_1D9C7DC7C();
    v48 = v47;

    MEMORY[0x1DA73DF90](v46, v48);

    v49 = v58;
    v50 = v59;
    sub_1D99A182C();
    swift_allocError();
    *v51 = v49;
    *(v51 + 8) = v50;
    *(v51 + 16) = 6;
    swift_willThrow();
  }

  else
  {
    sub_1D99A182C();
    swift_allocError();
    *v53 = 0xD000000000000026;
    *(v53 + 8) = 0x80000001D9CAA210;
    *(v53 + 16) = 6;
    swift_willThrow();
  }

LABEL_21:
  return v6;
}

id sub_1D9B1D4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  v59 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v11 = sub_1D9C7B80C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  if (*(a1 + 16) && (v17 = sub_1D99ED894(7368801, 0xE300000000000000), (v18 & 1) != 0) && (sub_1D99A579C(*(a1 + 56) + 32 * v17, v64), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8, &qword_1D9C93AD0), (swift_dynamicCast() & 1) != 0))
  {
    v60 = v7;
    v19 = v63;
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v21 = *(v19 + 16);
    v22 = v20;
    if (v21 && (v23 = sub_1D99ED894(1701667182, 0xE400000000000000), (v24 & 1) != 0) && (sub_1D99A579C(*(v19 + 56) + 32 * v23, v64), (swift_dynamicCast() & 1) != 0))
    {
      v25 = sub_1D9C7DC4C();
    }

    else
    {
      v25 = 0;
    }

    [v22 setName_];

    if (*(v19 + 16) && (v32 = sub_1D99ED894(0x695F656C646E7562, 0xE900000000000064), (v33 & 1) != 0) && (sub_1D99A579C(*(v19 + 56) + 32 * v32, v64), (swift_dynamicCast() & 1) != 0))
    {
      v34 = sub_1D9C7DC4C();
    }

    else
    {
      v34 = 0;
    }

    [v22 setBundleIdentifier_];

    v35 = *(v19 + 16);
    v61 = v11;
    v58 = v2;
    if (v35 && (v36 = sub_1D99ED894(0x6C6562616CLL, 0xE500000000000000), (v37 & 1) != 0) && (sub_1D99A579C(*(v19 + 56) + 32 * v36, v64), (swift_dynamicCast() & 1) != 0))
    {
      v38 = sub_1D9C7DC4C();
    }

    else
    {
      v38 = 0;
    }

    v57 = v22;
    [v22 setLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53420, &qword_1D9C95598);
    v39 = *(v59 + 72);
    v40 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v56 = swift_allocObject();
    v41 = (v56 + v40);
    sub_1D9B1DE44(0x74756F68636E7570, 0xEC0000006972755FLL, v19, v41);
    sub_1D9B1DE44(7107189, 0xE300000000000000, a1, &v41[v39]);

    sub_1D9B1DE44(0x5F6C6C6174736E69, 0xEB000000006C7275, v19, &v41[2 * v39]);

    v42 = (v12 + 48);
    v59 = v12;
    v43 = (v12 + 32);
    v44 = MEMORY[0x1E69E7CC0];
    v45 = 3;
    v55 = v41;
    v46 = v41;
    v47 = v60;
    v48 = v61;
    do
    {
      sub_1D9A58830(v46, v47);
      sub_1D9A59E80(v47, v4);
      if ((*v42)(v4, 1, v48) == 1)
      {
        sub_1D9B1E1C8(v4);
      }

      else
      {
        v49 = *v43;
        (*v43)(v62, v4, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1D9AFA68C(0, v44[2] + 1, 1, v44);
        }

        v51 = v44[2];
        v50 = v44[3];
        if (v51 >= v50 >> 1)
        {
          v44 = sub_1D9AFA68C((v50 > 1), v51 + 1, 1, v44);
        }

        v44[2] = v51 + 1;
        v52 = v44 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v51;
        v48 = v61;
        v49(v52, v62, v61);
        v47 = v60;
      }

      v46 += v39;
      --v45;
    }

    while (v45);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v53 = sub_1D9C7DF1C();

    v26 = v57;
    [v57 setUrls_];
  }

  else
  {
    sub_1D9B1DE44(7107189, 0xE300000000000000, a1, v10);

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1D9B1E1C8(v10);
      return 0;
    }

    else
    {
      (*(v12 + 32))(v16, v10, v11);
      v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB532C8, &qword_1D9C94B60);
      v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1D9C85660;
      (*(v12 + 16))(v29 + v28, v16, v11);
      v30 = v27;
      v31 = sub_1D9C7DF1C();
      v26 = v30;

      [v30 setUrls_];

      (*(v12 + 8))(v16, v11);
    }
  }

  return v26;
}

void sub_1D9B1DC6C(void *a1)
{
  v3 = [v1 inlineCard];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = v3;
  v5 = [v3 cardSections];

  if (!v5)
  {
    return;
  }

  sub_1D9A0835C(0, &qword_1ECB524A0, 0x1E69C9F08);
  v6 = sub_1D9C7DF2C();

  if (v6 >> 62)
  {
    if (sub_1D9C7E50C())
    {
      goto LABEL_5;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA73E610](0, v6);
      goto LABEL_8;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 32);
LABEL_8:
      v8 = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8, &qword_1D9C94280);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D9C88F90;
      *(v9 + 32) = a1;
      sub_1D9A0835C(0, &qword_1ECB524B0, 0x1E69CA320);
      v10 = a1;
      v11 = sub_1D9C7DF1C();

      [v8 setPunchoutOptions_];

      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }
}

uint64_t sub_1D9B1DE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1D9C7B80C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  if (*(a3 + 16) && (v21 = sub_1D99ED894(a1, a2), (v22 & 1) != 0))
  {
    v34 = a4;
    sub_1D99A579C(*(a3 + 56) + 32 * v21, v36);
    v23 = swift_dynamicCast();
    v24 = *(v14 + 56);
    v24(v12, v23 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      v31 = *(v14 + 32);
      v31(v20, v12, v13);
      v32 = v34;
      v31(v34, v20, v13);
      return (v24)(v32, 0, 1, v13);
    }

    a4 = v34;
  }

  else
  {
    v24 = *(v14 + 56);
    (v24)(v12, 1, 1, v13, v18);
  }

  sub_1D9B1E1C8(v12);
  if (*(a3 + 16))
  {
    v25 = sub_1D99ED894(a1, a2);
    if (v26)
    {
      sub_1D99A579C(*(a3 + 56) + 32 * v25, v36);
      if (swift_dynamicCast())
      {
        v27 = v35;
        sub_1D9C7B7EC();

        if ((*(v14 + 48))(v27, 1, v13) != 1)
        {
          v33 = *(v14 + 32);
          v33(v16, v27, v13);
          v33(a4, v16, v13);
          v28 = a4;
          v29 = 0;
          return (v24)(v28, v29, 1, v13);
        }

        sub_1D9B1E1C8(v27);
      }
    }
  }

  v28 = a4;
  v29 = 1;
  return (v24)(v28, v29, 1, v13);
}

uint64_t sub_1D9B1E1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D9B1E230(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v14 - v8;
  sub_1D9A58830(a1, &v14 - v8);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_1D9A59E80(v9, v11 + v10);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53428, &qword_1D9C955D0);
  swift_allocObject();
  v12 = sub_1D9C1B65C();
  sub_1D99A6AE0(a1, &qword_1ECB51FD0, &unk_1D9C862F0);
  v2[2] = v12;
  return v2;
}

uint64_t sub_1D9B1E3D0(int64_t a1)
{
  v2 = *(sub_1D9C196E8() + 16);

  v3 = 0;
  if (a1 < 0 || v2 <= a1)
  {
    return v3;
  }

  result = sub_1D9C196E8();
  if (*(result + 16) > a1)
  {
    v3 = *(result + 16 * a1 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9B1E4B8(uint64_t a1)
{
  sub_1D9B1E560(a1, &v3);
  if (v4)
  {
    sub_1D9A17E50(&v3, v5);
    sub_1D9A17E50(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608, &qword_1D9C86880);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1D99A6AE0(&v3, &unk_1ECB53AC0, &qword_1D9C8BE78);
  }

  return sub_1D9A436D8(MEMORY[0x1E69E7CC0]);
}

_OWORD *sub_1D9B1E560@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-1] - v5;
  v7 = sub_1D9C7B80C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A58830(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D99A6AE0(v6, &qword_1ECB51FD0, &unk_1D9C862F0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1D9C7B81C();
    v14 = v13;
    v16 = sub_1D9B88EB8(v12, v13);
    v18 = v17;
    sub_1D99A5748(v12, v14);
    v19 = objc_opt_self();
    v20 = sub_1D9C7B86C();
    v26[0] = 0;
    v21 = [v19 JSONObjectWithData:v20 options:0 error:v26];

    v22 = v26[0];
    if (v21)
    {
      sub_1D9C7E32C();
      sub_1D99A5748(v16, v18);
      swift_unknownObjectRelease();
      (*(v8 + 8))(v10, v7);
      return sub_1D9A17E50(&v27, a2);
    }

    v23 = v22;
    v24 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99A5748(v16, v18);

    result = (*(v8 + 8))(v10, v7, v15);
  }

  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

char *sub_1D9B1E87C@<X0>(char **a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0) - 8);
  result = sub_1D9B1EA34(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  *a1 = result;
  return result;
}

char *sub_1D9B1E8F4(uint64_t a1)
{
  v2 = sub_1D9AF83AC(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D9B1EDA0();
    v4 = 0;
    while (1)
    {
      v5 = sub_1D9C7E31C();
      if (!*(a1 + 16))
      {
        break;
      }

      v7 = sub_1D99ED894(v5, v6);
      v9 = v8;

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = (*(a1 + 56) + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v14 = *(v2 + 2);
      v13 = *(v2 + 3);

      if (v14 >= v13 >> 1)
      {
        v2 = sub_1D9AF83AC((v13 > 1), v14 + 1, 1, v2);
      }

      ++v4;
      *(v2 + 2) = v14 + 1;
      v15 = &v2[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      if (v3 == v4)
      {
        return v2;
      }
    }

LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

char *sub_1D9B1EA34(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26[-1] - v3;
  v5 = sub_1D9C7B80C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A58830(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D99A6AE0(v4, &qword_1ECB51FD0, &unk_1D9C862F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_1D9C7B81C();
    v11 = v10;
    v13 = sub_1D9B88EB8(v9, v10);
    v15 = v14;
    sub_1D99A5748(v9, v11);
    v16 = objc_opt_self();
    v17 = sub_1D9C7B86C();
    v26[0] = 0;
    v18 = [v16 JSONObjectWithData:v17 options:0 error:v26];

    v19 = v26[0];
    if (v18)
    {
      sub_1D9C7E32C();
      swift_unknownObjectRelease();
      sub_1D9A17E50(v27, v28);
      sub_1D99A579C(v28, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608, &qword_1D9C86880);
      if (swift_dynamicCast())
      {
        v20 = sub_1D9B1E8F4(v26[0]);
        sub_1D99A5748(v13, v15);

        v21 = __swift_destroy_boxed_opaque_existential_0Tm(v28);
        (*(v6 + 8))(v8, v5, v21);
        return v20;
      }

      sub_1D99A5748(v13, v15);
      v24.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    else
    {
      v22 = v19;
      v23 = sub_1D9C7B70C();

      swift_willThrow();
      sub_1D99A5748(v13, v15);
    }

    (*(v6 + 8))(v8, v5, v24);
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D9B1EDA0()
{
  result = qword_1EDD2C650;
  if (!qword_1EDD2C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C650);
  }

  return result;
}

uint64_t sub_1D9B1EDF8(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 < 1 || a4 <= 0.0)
  {
    *(v5 + 24) = 30;
    sub_1D9B1F3F4(0x1EuLL, 0.5, 0.5, 0.5);
    *(v5 + 16) = v16;
    static Logger.argos.getter(v14);
    v17 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E09C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D9962000, v17, v18, "Invalid Box Scorer Config. Create Box Scorer using default config.", v19, 2u);
      MEMORY[0x1DA7405F0](v19, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    *(v5 + 24) = v12;
    sub_1D9B1F3F4(v12, a4, a2, a3);
    *(v5 + 16) = v15;
  }

  return v5;
}

void sub_1D9B1EFAC(double a1, double a2, double a3, double a4)
{
  v13 = sub_1D9C7D8DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    static Logger.argos.getter(v16);
    v32 = sub_1D9C7D8BC();
    v33 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D9962000, v32, v33, "Invalid box input", v34, 2u);
      MEMORY[0x1DA7405F0](v34, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    return;
  }

  v17 = *(v4 + 24);
  v18 = v17;
  v19 = v17 * a1;
  if (COERCE__INT64(fabs(v19)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v20 = v19 & ~(v19 >> 63);
  if (v20 >= v17)
  {
    v20 = *(v4 + 24);
  }

  v21 = v18 * a2;
  if (COERCE__INT64(fabs(v18 * a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_46;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v22 = v21 & ~(v21 >> 63);
  if (v22 >= v17)
  {
    v22 = *(v4 + 24);
  }

  v23 = (a1 + a3) * v18;
  if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((v23 & ~(v23 >> 63)) >= v17)
  {
    v24 = *(v4 + 24);
  }

  else
  {
    v24 = v23 & ~(v23 >> 63);
  }

  v25 = (a2 + a4) * v18;
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_52;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v25 & ~(v25 >> 63)) >= v17)
  {
    v26 = *(v4 + 24);
  }

  else
  {
    v26 = v25 & ~(v25 >> 63);
  }

  if (v17 < 0)
  {
    goto LABEL_55;
  }

  v27 = *(v4 + 16);
  v28 = *(v27 + 16);
  if (v24 >= v28)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v29 = v27 + 32;
  v30 = *(*(v29 + 8 * v24) + 16);
  if (v26 >= v30)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v31 = v20 - 1;
  if (v20 < 2)
  {
    goto LABEL_33;
  }

  if (v20 > v28)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v26 >= *(*(v29 + 8 * v31) + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_33:
  if (v22 < 2)
  {
    return;
  }

  if (v22 > v30)
  {
    goto LABEL_59;
  }

  if (v20 >= 2)
  {
    if (v20 <= v28)
    {
      if (v22 <= *(*(v29 + 8 * v31) + 16))
      {
        return;
      }

LABEL_62:
      __break(1u);
      return;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }
}

uint64_t sub_1D9B1F398()
{

  return swift_deallocClassInstance();
}

void sub_1D9B1F3F4(unint64_t a1, double a2, double a3, double a4)
{
  v4 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v4 < 0)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (a1 == -1)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = sub_1D9C7DF5C();
    *(v9 + 16) = v4;
    bzero((v9 + 32), 8 * a1 + 8);
  }

  v10 = sub_1D9AE662C(v9, v4);

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_76;
  }

  v11 = 0;
  v12 = v4 - 1;
  v13 = a1;
  v14 = 1;
  v15 = 0.0;
  while (2)
  {
    v16 = exp((v15 / v13 - a3) / a2 * ((v15 / v13 - a3) / a2 * -0.5));
    v17 = 0;
    do
    {
      v18 = exp((v17 / v13 - a4) / a2 * ((v17 / v13 - a4) / a2 * -0.5));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D9B1A788(v10);
      }

      if (v11 >= v10[2])
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      v19 = v10 + 4;
      v20 = &v10[v11 + 4];
      v21 = *v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_1D9B1A738(v21);
        *v20 = v21;
      }

      if (v17 >= *(v21 + 2))
      {
        goto LABEL_57;
      }

      *&v21[8 * v17 + 32] = 0;
      if ((v14 & 1) == 0)
      {
        v23 = v10[2];
        if (v11 > v23)
        {
          goto LABEL_65;
        }

        v24 = *(v20 - 8);
        if (v17 >= *(v24 + 16))
        {
          goto LABEL_66;
        }

        if (v11 >= v23)
        {
          goto LABEL_67;
        }

        v25 = *v20;
        v26 = *(v24 + 8 * v17 + 32);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v25;
        if ((v27 & 1) == 0)
        {
          v25 = sub_1D9B1A738(v25);
          *v20 = v25;
        }

        if (v17 >= *(v25 + 2))
        {
          goto LABEL_68;
        }

        *&v25[8 * v17 + 32] = v26 + *&v25[8 * v17 + 32];
      }

      if (v17)
      {
        if (v11 >= v10[2])
        {
          goto LABEL_62;
        }

        v28 = *v20;
        if (v17 > *(*v20 + 16))
        {
          goto LABEL_63;
        }

        v29 = *&v28[8 * v17 + 24];
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v28;
        if ((v30 & 1) == 0)
        {
          v28 = sub_1D9B1A738(v28);
          *v20 = v28;
        }

        if (v17 >= *(v28 + 2))
        {
          goto LABEL_64;
        }

        *&v28[8 * v17 + 32] = v29 + *&v28[8 * v17 + 32];
        if ((v14 & 1) == 0)
        {
          v31 = v10[2];
          if (v11 > v31)
          {
            goto LABEL_70;
          }

          v32 = *(v20 - 8);
          if (v17 > *(v32 + 16))
          {
            goto LABEL_71;
          }

          if (v11 >= v31)
          {
            goto LABEL_72;
          }

          v33 = *(v32 + 8 * v17 + 24);
          v34 = *v20;
          v35 = swift_isUniquelyReferenced_nonNull_native();
          *v20 = v34;
          if ((v35 & 1) == 0)
          {
            v34 = sub_1D9B1A738(v34);
            *v20 = v34;
          }

          if (v17 >= *(v34 + 2))
          {
            goto LABEL_73;
          }

          *&v34[8 * v17 + 32] = *&v34[8 * v17 + 32] - v33;
        }
      }

      if (v11 >= v10[2])
      {
        goto LABEL_58;
      }

      v36 = *v20;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v36;
      if ((v37 & 1) == 0)
      {
        v36 = sub_1D9B1A738(v36);
        *v20 = v36;
      }

      if (v17 >= *(v36 + 2))
      {
        goto LABEL_59;
      }

      *&v36[8 * v17 + 32] = v16 * v18 + *&v36[8 * v17 + 32];
      ++v17;
    }

    while (v4 != v17);
    if (v11 != a1)
    {
      v14 = 0;
      v15 = ++v11;
      continue;
    }

    break;
  }

  if (v10[2] > a1)
  {
    v38 = v19[a1];
    if (*(v38 + 16) <= a1)
    {
      goto LABEL_78;
    }

    v39 = 0;
    v40 = *(v38 + 8 * a1 + 32);
LABEL_48:
    if (v39 >= v10[2])
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    else
    {
      v42 = 0;
      while (1)
      {
        v43 = v19[v39];
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v19[v39] = v43;
        if ((v44 & 1) == 0)
        {
          v43 = sub_1D9B1A738(v43);
          v19[v39] = v43;
        }

        if (v42 >= *(v43 + 2))
        {
          break;
        }

        *&v43[8 * v42 + 32] = *&v43[8 * v42 + 32] / v40;
        if (v12 == v42)
        {
          if (v39++ == a1)
          {
            return;
          }

          goto LABEL_48;
        }

        ++v42;
        if (v39 >= v10[2])
        {
          goto LABEL_61;
        }
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
    goto LABEL_74;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_1D9B1F858(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v43 = a3;
  v45 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534A8, &qword_1D9C95688);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534B0, &qword_1D9C95690);
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v37 - v13;
  v38 = sub_1D9C7DA2C();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D9C7DA4C();
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9C7D06C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1E69E7CC0];
  *(v5 + 32) = 2;
  *(v5 + 40) = v22;
  *(v5 + 48) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = 0;
  *(v5 + 56) = a4;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = *(v19 + 16);
  v42 = v18;
  v24(v21, a3, v18);
  v25 = *(v19 + 80);
  v39 = v19;
  v26 = (v25 + 24) & ~v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  (*(v19 + 32))(v27 + v26, v21, v18);
  aBlock[4] = sub_1D9B21C40;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_29;
  v28 = _Block_copy(aBlock);
  v29 = a1;

  sub_1D9C7DA3C();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1D9B21BC4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
  v30 = v38;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v17, v15, v28);
  _Block_release(v28);
  (*(v41 + 8))(v15, v30);
  (*(v37 + 8))(v17, v40);

  v49 = v29;
  aBlock[0] = v45;
  v31 = sub_1D9C7E0FC();
  v32 = v44;
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534B8, &qword_1D9C95698);
  sub_1D9A0835C(0, &qword_1EDD35490, 0x1E69E9610);
  sub_1D99C7C60(&unk_1EDD2C698, &qword_1ECB534B8, &qword_1D9C95698, MEMORY[0x1E695BED8]);
  sub_1D9B21CA4();
  v33 = v46;
  sub_1D9C7D95C();
  sub_1D9B21D0C(v32);
  swift_allocObject();
  swift_weakInit();

  sub_1D99C7C60(&qword_1EDD2C6A8, &qword_1ECB534B0, &qword_1D9C95690, MEMORY[0x1E695BE98]);
  v34 = v47;
  v35 = sub_1D9C7D96C();

  (*(v39 + 8))(v43, v42);
  (*(v48 + 8))(v33, v34);
  *(v5 + 24) = v35;

  return v5;
}

double sub_1D9B1FF10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D9B20D3C(a2);
  }

  return result;
}

double sub_1D9B1FF70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D9B20478(a1);
  }

  return result;
}

uint64_t sub_1D9B1FFD0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1D9C7DA7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9C7DA9C();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    v4 = sub_1D9AFAE2C(0, v4[2] + 1, 1, v4);
    *(v12 + 5) = v4;
    goto LABEL_16;
  }

  v20 = *(v2 + 32);
  if (v20 != 2)
  {
    static Logger.argos.getter(v12);
    v25 = sub_1D9C7D8BC();
    v26 = sub_1D9C7E09C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = v20 & 1;
      _os_log_impl(&dword_1D9962000, v25, v26, "Valid state %{BOOL}d", v27, 8u);
      MEMORY[0x1DA7405F0](v27, -1, -1);
    }

    (v4[1])(v12, v3);
    v24 = v20 & 1;
    return v38(v24);
  }

  if (*(v2 + 33))
  {
    static Logger.argos.getter(v6);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E09C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D9962000, v21, v22, "Publisher timed out. Default false.", v23, 2u);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (v4[1])(v6, v3);
    v24 = 0;
    return v38(v24);
  }

  v12 = v2;
  if (!*(v2 + 48))
  {
    sub_1D9B20F78();
  }

  static Logger.argos.getter(v9);
  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D9962000, v29, v30, "Pending values", v31, 2u);
    MEMORY[0x1DA7405F0](v31, -1, -1);
  }

  (v4[1])(v9, v3);
  v2 = swift_allocObject();
  v32 = v39;
  *(v2 + 16) = v38;
  *(v2 + 24) = v32;
  swift_beginAccess();
  v4 = *(v12 + 5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 5) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v35 = v4[2];
  v34 = v4[3];
  if (v35 >= v34 >> 1)
  {
    v4 = sub_1D9AFAE2C((v34 > 1), v35 + 1, 1, v4);
  }

  v4[2] = v35 + 1;
  v36 = &v4[2 * v35];
  v36[4] = sub_1D9B21C14;
  v36[5] = v2;
  *(v12 + 5) = v4;
  return swift_endAccess();
}

void sub_1D9B20478(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1D9C7D06C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = sub_1D9C7D8DC();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7DA7C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + 16);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  v19 = sub_1D9C7DA9C();
  (*(v13 + 8))(v16, v12);
  if (v19)
  {
    static Logger.argos.getter(v11);
    v20 = *(v4 + 16);
    v21 = v41;
    v20(v8, v41, v3);
    v38 = v11;
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E09C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = v2;
      v25 = v24;
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136315138;
      v20(v37, v8, v3);
      v27 = sub_1D9C7DD0C();
      v29 = v28;
      (*(v4 + 8))(v8, v3);
      v30 = sub_1D9A0E224(v27, v29, &v42);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D9962000, v22, v23, "Received values %s", v25, 0xCu);
      v31 = __swift_destroy_boxed_opaque_existential_0Tm(v26);
      v32 = v26;
      v21 = v41;
      MEMORY[0x1DA7405F0](v32, -1, -1, v31);
      v33 = v25;
      v2 = v36;
      MEMORY[0x1DA7405F0](v33, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    (*(v39 + 8))(v38, v40);
    sub_1D9B20D3C(v21);
    v34 = *(v2 + 32);
    if (v34 != 2)
    {
      sub_1D9B20A80(v34 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9B2084C()
{
  v1 = v0;
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7DA7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1D9C7DA9C();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    static Logger.argos.getter(v5);
    v14 = sub_1D9C7D8BC();
    v15 = sub_1D9C7E09C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D9962000, v14, v15, "Enable state timed out", v16, 2u);
      MEMORY[0x1DA7405F0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    *(v1 + 33) = 1;
    sub_1D9B20A80(*(v1 + 32) & 1);
    return sub_1D9B21800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D9B20A80(char a1)
{
  v2 = v1;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D9C7DA7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 16);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9C7DA9C();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    swift_beginAccess();
    v15 = *(*(v2 + 40) + 16);
    static Logger.argos.getter(v7);
    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E09C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v15;
      _os_log_impl(&dword_1D9962000, v16, v17, "Releasing %ld completion(s)", v18, 0xCu);
      MEMORY[0x1DA7405F0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = *(v2 + 40);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = a1 & 1;

      v22 = v19 + 40;
      do
      {
        v23 = *(v22 - 8);
        v25 = v21;

        v23(&v25);

        v22 += 16;
        --v20;
      }

      while (v20);
    }

    *(v2 + 40) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9B20D3C(uint64_t a1)
{
  v3 = sub_1D9C7D06C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7DA7C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 16);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9C7DA9C();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    (*(v4 + 16))(v6, a1, v3);
    result = (*(v4 + 88))(v6, v3);
    if (result == *MEMORY[0x1E69BDB28])
    {
      *(v1 + 32) = 0;
      sub_1D9B21800();
      return (*(v4 + 8))(v6, v3);
    }

    if (result != *MEMORY[0x1E69BDB18])
    {
      if (result != *MEMORY[0x1E69BDB20])
      {
        return (*(v4 + 8))(v6, v3);
      }

      *(v1 + 32) = 1;
      return sub_1D9B21800();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D9B20F78()
{
  v1 = sub_1D9C7DA2C();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D9C7DA4C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9C7DA1C();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v38 - v7;
  v52 = sub_1D9C7DA6C();
  v46 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v38 - v11;
  v12 = sub_1D9C7E14C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9C7DA7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = v0;
  v21 = *(v0 + 16);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  LOBYTE(v21) = sub_1D9C7DA9C();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    sub_1D9A0835C(0, &qword_1EDD2C3B8, 0x1E69E9630);
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D9B21BC4(&qword_1EDD2A6A0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53498, &qword_1D9C95680);
    sub_1D99C7C60(&qword_1EDD2A710, &unk_1ECB53498, &qword_1D9C95680, MEMORY[0x1E69E6328]);
    sub_1D9C7E34C();
    v23 = sub_1D9C7E15C();
    (*(v13 + 8))(v15, v12);
    v24 = v51;
    *(v51 + 48) = v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    sub_1D9C7DA5C();
    v25 = v45;
    sub_1D9C7DA8C();
    v46 = *(v46 + 8);
    (v46)(v9, v52);
    v27 = v48;
    v26 = v49;
    v28 = *(v49 + 104);
    v29 = v50;
    v28(v48, *MEMORY[0x1E69E7F40], v50);
    v30 = v47;
    *v47 = 0;
    v28(v30, *MEMORY[0x1E69E7F28], v29);
    MEMORY[0x1DA73E3E0](v25, v27, v30, ObjectType);
    swift_unknownObjectRelease();
    v31 = *(v26 + 8);
    v32 = v30;
    v33 = v24;
    v31(v32, v29);
    v31(v27, v29);
    (v46)(v25, v52);
    if (*(v24 + 48))
    {
      swift_getObjectType();
      v34 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1D9B21C0C;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D9A0A1E0;
      aBlock[3] = &block_descriptor_19;
      v35 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v36 = v38;
      sub_1D9C7DA3C();
      v37 = v40;
      sub_1D9B21714();
      sub_1D9C7E1BC();
      _Block_release(v35);
      swift_unknownObjectRelease();
      (*(v42 + 8))(v37, v43);
      (*(v39 + 8))(v36, v41);

      if (*(v33 + 48))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1D9C7E1DC();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1D9B216B8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D9B2084C();
  }

  return result;
}

uint64_t sub_1D9B21714()
{
  sub_1D9C7DA2C();
  sub_1D9B21BC4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
  return sub_1D9C7E34C();
}

uint64_t sub_1D9B21800()
{
  v1 = v0;
  v19 = sub_1D9C7DA2C();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9C7DA4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7DA7C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 16);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1D9C7DA9C();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (*(v1 + 48))
    {
      swift_getObjectType();
      aBlock[4] = faiss::NormalizationTransform::~NormalizationTransform;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D9A0A1E0;
      aBlock[3] = &block_descriptor_9;
      v17 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      sub_1D9C7DA3C();
      sub_1D9B21714();
      sub_1D9C7E1BC();
      _Block_release(v17);
      swift_unknownObjectRelease();
      (*(v2 + 8))(v4, v19);
      (*(v6 + 8))(v8, v5);
      if (*(v1 + 48))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1D9C7E1CC();
        swift_unknownObjectRelease();
      }

      *(v1 + 48) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B21B38()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B21BC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D9B21C40()
{
  v1 = *(sub_1D9C7D06C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D9B1FF10(v2, v3);
}

unint64_t sub_1D9B21CA4()
{
  result = qword_1EDD2C3F0;
  if (!qword_1EDD2C3F0)
  {
    sub_1D9A0835C(255, &qword_1EDD35490, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C3F0);
  }

  return result;
}

uint64_t sub_1D9B21D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534A8, &qword_1D9C95688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B21D8C(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v340 = a4;
  v336 = a3;
  v346 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  v312 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v314 = v292 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v315 = v292 - v9;
  v317 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v317);
  v316 = (v292 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v318);
  v320 = v292 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v321 = v292 - v13;
  v14 = sub_1D9C7B80C();
  v15 = *(v14 - 8);
  v334 = v14;
  v335 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v319 = v292 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v337 = v292 - v18;
  v19 = sub_1D9C7D8DC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v292 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v332 = v292 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v329 = (v292 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v325 = (v292 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v323 = v292 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v311 = v292 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v324 = v292 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v327 = v292 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v322 = v292 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v326 = v292 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v328 = v292 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v333 = v292 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v292 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v292 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v292 - v52;
  v330 = a1;
  v344 = a1;
  v345 = a2;

  MEMORY[0x1DA73DF90](1868983881, 0xE400000000000000);
  v55 = v344;
  v54 = v345;

  v338 = v55;
  v56 = sub_1D9C16ED0(v55, v54);
  if (v56 == 72)
  {
    v57 = v20;
    v58 = v19;

    static Logger.argos.getter(v22);

    v59 = sub_1D9C7D8BC();
    v60 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v344 = v62;
      *v61 = 136315138;
      v63 = sub_1D9A0E224(v338, v54, &v344);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_1D9962000, v59, v60, "TrialModelProvider failed: model info factor name %s not a supported Trial Factor Name", v61, 0xCu);
      v64 = __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x1DA7405F0](v62, -1, -1, v64);
      MEMORY[0x1DA7405F0](v61, -1, -1);
    }

    else
    {
    }

    (*(v57 + 8))(v22, v58);
    goto LABEL_28;
  }

  v65 = v56;
  v310 = a2;
  static Logger.argos.getter(v53);
  sub_1D9A3E0E0(v50);
  v307 = v20;
  v68 = *(v20 + 8);
  v66 = v20 + 8;
  v67 = v68;
  v68(v53, v19);

  v69 = sub_1D9C7D8BC();
  v70 = sub_1D9C7E09C();

  v71 = os_log_type_enabled(v69, v70);
  v331 = v19;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v344 = v73;
    *v72 = 136315138;
    *(v72 + 4) = sub_1D9A0E224(v338, v54, &v344);
    _os_log_impl(&dword_1D9962000, v69, v70, "TrialModelProvider: init with info factor %s", v72, 0xCu);
    v74 = __swift_destroy_boxed_opaque_existential_0Tm(v73);
    MEMORY[0x1DA7405F0](v73, -1, -1, v74);
    v75 = v72;
    v76 = v331;
    MEMORY[0x1DA7405F0](v75, -1, -1);
  }

  else
  {
    v76 = v19;
  }

  v67(v50, v76);
  v77 = sub_1D9C04AB0(v65, v336, 0x7473696C70, 0xE500000000000000);
  v79 = v78;
  static Logger.argos.getter(v47);

  v80 = sub_1D9C7D8BC();
  v81 = sub_1D9C7E09C();

  v82 = os_log_type_enabled(v80, v81);
  v309 = v67;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v308 = v66;
    v84 = v83;
    v85 = v67;
    v86 = swift_slowAlloc();
    v344 = v86;
    *v84 = 136315394;
    v87 = sub_1D9A0E224(v338, v54, &v344);

    *(v84 + 4) = v87;
    *(v84 + 12) = 2080;
    *(v84 + 14) = sub_1D9A0E224(v77, v79, &v344);
    _os_log_impl(&dword_1D9962000, v80, v81, "TrialModelProvider: init with info factor %s, info path %s", v84, 0x16u);
    swift_arrayDestroy();
    v88 = v86;
    v76 = v331;
    MEMORY[0x1DA7405F0](v88, -1, -1);
    v89 = v84;
    v66 = v308;
    MEMORY[0x1DA7405F0](v89, -1, -1);

    v85(v47, v76);
  }

  else
  {

    v67(v47, v76);
  }

  sub_1D9C7B75C();

  v90 = sub_1D9C7B81C();
  v91 = v335;
  v92 = v90;
  v94 = v93;
  v95 = objc_opt_self();
  v96 = sub_1D9C7B86C();
  v344 = 0;
  v97 = [v95 propertyListWithData:v96 options:1 format:0 error:&v344];

  if (!v97)
  {
    v108 = v344;

    v109 = sub_1D9C7B70C();

    swift_willThrow();
LABEL_23:
    v110 = v333;
    static Logger.argos.getter(v333);
    sub_1D99AF2FC(v92, v94);
    v111 = sub_1D9C7D8BC();
    v112 = sub_1D9C7E0AC();
    sub_1D99A5748(v92, v94);
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v344 = v114;
      *v113 = 136315138;
      sub_1D99AF2FC(v92, v94);
      v115 = sub_1D9C7B82C();
      v308 = v66;
      v116 = v94;
      v117 = v115;
      v119 = v118;
      sub_1D99A5748(v92, v116);
      v120 = sub_1D9A0E224(v117, v119, &v344);

      *(v113 + 4) = v120;
      _os_log_impl(&dword_1D9962000, v111, v112, "TrialModelProvider failed to load info plist %s", v113, 0xCu);
      v121 = __swift_destroy_boxed_opaque_existential_0Tm(v114);
      MEMORY[0x1DA7405F0](v114, -1, -1, v121);
      MEMORY[0x1DA7405F0](v113, -1, -1);

      v122 = sub_1D99A5748(v92, v116);
      v309(v333, v331, v122);
LABEL_27:
      (*(v91 + 8))(v337, v334);
      goto LABEL_28;
    }

    v123.n128_f64[0] = sub_1D99A5748(v92, v94);
    v124 = v110;
LABEL_26:
    (v309)(v124, v76, v123);
    goto LABEL_27;
  }

  v98 = v344;
  sub_1D9C7E32C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8, &qword_1D9C93AD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  v99 = v342;
  if (!*(v342 + 16))
  {

    v101 = v332;
    goto LABEL_31;
  }

  v100 = sub_1D99ED894(0x4C45444F4D5F4956, 0xE800000000000000);
  v101 = v332;
  if ((v102 & 1) == 0)
  {

LABEL_31:
    static Logger.argos.getter(v101);
    v126 = v310;

    v127 = sub_1D9C7D8BC();
    v128 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v344 = v130;
      *v129 = 136315138;
      v131 = sub_1D9A0E224(v330, v126, &v344);
      v338 = v94;
      v132 = v131;

      *(v129 + 4) = v132;
      _os_log_impl(&dword_1D9962000, v127, v128, "TrialModelProvider missing VI_MODEL dict for model name %s", v129, 0xCu);
      v133 = __swift_destroy_boxed_opaque_existential_0Tm(v130);
      MEMORY[0x1DA7405F0](v130, -1, -1, v133);
      MEMORY[0x1DA7405F0](v129, -1, -1);

      v123.n128_f64[0] = sub_1D99A5748(v92, v338);
      v124 = v332;
    }

    else
    {

      v123.n128_f64[0] = sub_1D99A5748(v92, v94);
      v124 = v101;
    }

    goto LABEL_26;
  }

  sub_1D99A579C(*(v99 + 56) + 32 * v100, &v344);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v103 = v342;
  if (*(v342 + 16) && (v104 = sub_1D99ED894(0x6361466C65646F6DLL, 0xEF656D614E726F74), (v105 & 1) != 0) && (sub_1D99A579C(*(v103 + 56) + 32 * v104, &v344), (swift_dynamicCast() & 1) != 0))
  {
    v107 = v342;
    v106 = v343;
  }

  else
  {
    v107 = 0;
    v106 = 0xE000000000000000;
  }

  v134 = sub_1D9C16ED0(v107, v106);
  if (v134 == 72)
  {

    v135 = v329;
    static Logger.argos.getter(v329);

    v136 = sub_1D9C7D8BC();
    v137 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v338 = v94;
      v139 = v138;
      v140 = swift_slowAlloc();
      v308 = v66;
      v141 = v76;
      v142 = v140;
      v344 = v140;
      *v139 = 136315138;
      v143 = sub_1D9A0E224(v107, v106, &v344);

      *(v139 + 4) = v143;
      _os_log_impl(&dword_1D9962000, v136, v137, "TrialModelProvider failed: model factor name %s not a supported Trial Factor Name", v139, 0xCu);
      v144 = __swift_destroy_boxed_opaque_existential_0Tm(v142);
      MEMORY[0x1DA7405F0](v142, -1, -1, v144);
      MEMORY[0x1DA7405F0](v139, -1, -1);

      v145 = sub_1D99A5748(v92, v338);
      v309(v135, v141, v145);
      goto LABEL_27;
    }

    v123.n128_f64[0] = sub_1D99A5748(v92, v94);
    v124 = v135;
    goto LABEL_26;
  }

  v146 = v134;

  v147 = sub_1D9C04AB0(v146, v336, 0, 0xE000000000000000);
  v149 = v148;
  if (!*(v103 + 16) || (v150 = v147, v151 = sub_1D99ED894(1701605234, 0xE400000000000000), (v152 & 1) == 0) || (sub_1D99A579C(*(v103 + 56) + 32 * v151, &v344), (swift_dynamicCast() & 1) == 0))
  {

    v166 = v328;
    static Logger.argos.getter(v328);
    v167 = sub_1D9C7D8BC();
    v168 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_1D9962000, v167, v168, "TrialModelProvider: found model without role", v169, 2u);
      MEMORY[0x1DA7405F0](v169, -1, -1);
    }

    v123.n128_f64[0] = sub_1D99A5748(v92, v94);
    v124 = v166;
    goto LABEL_26;
  }

  v328 = v150;
  v333 = v149;
  v154 = v342;
  v153 = v343;

  v155 = sub_1D9AFE290(v154, v153);
  if (v155 == 9)
  {

    v156 = v325;
    static Logger.argos.getter(v325);

    v157 = sub_1D9C7D8BC();
    v158 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v338 = v94;
      v160 = v159;
      v161 = v76;
      v162 = swift_slowAlloc();
      v344 = v162;
      *v160 = 136315138;
      v163 = sub_1D9A0E224(v154, v153, &v344);

      *(v160 + 4) = v163;
      _os_log_impl(&dword_1D9962000, v157, v158, "TrialModelProvider: found model with unknown role %s", v160, 0xCu);
      v164 = __swift_destroy_boxed_opaque_existential_0Tm(v162);
      MEMORY[0x1DA7405F0](v162, -1, -1, v164);
      MEMORY[0x1DA7405F0](v160, -1, -1);

      v165 = sub_1D99A5748(v92, v338);
      v309(v156, v161, v165);
    }

    else
    {

      v181 = sub_1D99A5748(v92, v94);
      v309(v156, v76, v181);
    }

    (*(v335 + 8))(v337, v334);
    goto LABEL_28;
  }

  v170 = v155;

  v341 = sub_1D9A443C0(MEMORY[0x1E69E7CC0]);
  v171 = *(v103 + 16);
  v338 = v94;
  if (!v171 || (v172 = sub_1D99ED894(0x737465737361, 0xE600000000000000), (v173 & 1) == 0))
  {
LABEL_126:
    if (*(v103 + 16) && (v247 = sub_1D99ED894(0x61656869746C756DLL, 0xE900000000000064), (v248 & 1) != 0) && (sub_1D99A579C(*(v103 + 56) + 32 * v247, &v344), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F50, &unk_1D9C8AFA0), (swift_dynamicCast() & 1) != 0))
    {
      v249 = sub_1D9BDCDE4(v342);
    }

    else
    {
      v249 = 0;
    }

    if (*(v103 + 16) && (v250 = sub_1D99ED894(0x6E65736572706572, 0xEE006E6F69746174), (v251 & 1) != 0) && (v301 = v170, sub_1D99A579C(*(v103 + 56) + 32 * v250, &v344), (swift_dynamicCast() & 1) != 0))
    {
      v300 = v92;
      v252 = sub_1D9C7E56C();

      if (!v252)
      {
        v336 = 0;
        goto LABEL_143;
      }

      if (v252 == 1)
      {
        v336 = 1;
LABEL_143:
        sub_1D9C7B75C();

        if (*(v103 + 16) && (v261 = sub_1D99ED894(7238261, 0xE300000000000000), (v262 & 1) != 0) && (sub_1D99A579C(*(v103 + 56) + 32 * v261, &v344), (swift_dynamicCast() & 1) != 0))
        {
          v263 = v343;
          v333 = v342;
        }

        else
        {
          v333 = 0;
          v263 = 0xE000000000000000;
        }

        if (*(v103 + 16) && (v264 = sub_1D99ED894(0x44496C65646F6DLL, 0xE700000000000000), (v265 & 1) != 0))
        {
          sub_1D99A579C(*(v103 + 56) + 32 * v264, &v344);

          if (swift_dynamicCast())
          {
            v266 = v342;
            v267 = v343;
LABEL_154:
            swift_beginAccess();
            v268 = v341;
            v269 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
            v270 = v315;
            (*(*(v269 - 8) + 56))(v315, 1, 1, v269);
            v271 = v316;
            v272 = v310;
            *v316 = v330;
            *(v271 + 8) = v272;
            v273 = v317;
            v275 = v334;
            v274 = v335;
            (*(v335 + 16))(v271 + *(v317 + 20), v319, v334);
            v276 = (v271 + v273[6]);
            *v276 = v333;
            v276[1] = v263;
            v277 = (v271 + v273[7]);
            *v277 = v266;
            v277[1] = v267;
            *(v271 + v273[8]) = v301;
            *(v271 + v273[9]) = v268;
            *(v271 + v273[12]) = v336;
            *(v271 + v273[10]) = v249;
            v278 = v314;
            sub_1D9B24898(v270, v314);
            v279 = (*(v312 + 80) + 16) & ~*(v312 + 80);
            v280 = (v313 + v279 + 7) & 0xFFFFFFFFFFFFFFF8;
            v281 = swift_allocObject();
            sub_1D9B24908(v278, v281 + v279);
            *(v281 + v280) = v268;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB534C0, &unk_1D9C956D0);
            swift_allocObject();
            swift_bridgeObjectRetain_n();
            v282 = sub_1D9C1A964(2, sub_1D9B24978, v281);

            sub_1D99A5748(v300, v338);
            sub_1D9B24A1C(v270);
            v283 = *(v274 + 8);
            v283(v319, v275);
            v283(v337, v275);
            *(v271 + v273[11]) = v282;
            v284 = v339;
            sub_1D9B24A84(v271, v339 + OBJC_IVAR____TtC12VisualLookUp18TrialModelProvider_info);

            return v284;
          }
        }

        else
        {
        }

        v266 = 0;
        v267 = 0xE000000000000000;
        goto LABEL_154;
      }

      v92 = v300;
    }

    else
    {
    }

    v253 = v323;
    static Logger.argos.getter(v323);
    v254 = sub_1D9C7D8BC();
    v255 = sub_1D9C7E0AC();
    v256 = os_log_type_enabled(v254, v255);
    v257 = v338;
    v258 = v335;
    if (v256)
    {
      v259 = swift_slowAlloc();
      *v259 = 0;
      _os_log_impl(&dword_1D9962000, v254, v255, "TrialModelProvider: found model with unknown representation", v259, 2u);
      MEMORY[0x1DA7405F0](v259, -1, -1);
    }

    v260 = sub_1D99A5748(v92, v257);
    v309(v253, v76, v260);
    (*(v258 + 8))(v337, v334);

    goto LABEL_28;
  }

  v301 = v170;
  v300 = v92;
  sub_1D99A579C(*(v103 + 56) + 32 * v172, &v344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608, &qword_1D9C86880);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_125:
    v76 = v331;
    v92 = v300;
    v170 = v301;
    goto LABEL_126;
  }

  v175 = 0;
  v176 = *(v342 + 64);
  v294 = v342 + 64;
  v298 = v342;
  v177 = 1 << *(v342 + 32);
  v178 = -1;
  if (v177 < 64)
  {
    v178 = ~(-1 << v177);
  }

  v179 = v178 & v176;
  v293 = (v177 + 63) >> 6;
  v329 = (v307 + 16);
  v299 = (v335 + 56);
  v292[1] = v335 + 16;
  *&v174 = 136315650;
  v296 = v174;
  *&v174 = 136315906;
  v295 = v174;
  v180 = v309;
  v308 = v66;
  if ((v178 & v176) == 0)
  {
LABEL_59:
    while (1)
    {
      v182 = v175 + 1;
      if (__OFADD__(v175, 1))
      {
        break;
      }

      if (v182 >= v293)
      {

        goto LABEL_125;
      }

      v179 = *(v294 + 8 * v182);
      ++v175;
      if (v179)
      {
        v175 = v182;
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
    return result;
  }

  while (1)
  {
LABEL_63:
    v183 = (v175 << 10) | (16 * __clz(__rbit64(v179)));
    v184 = (*(v298 + 48) + v183);
    v186 = *v184;
    v185 = v184[1];
    v187 = *(v298 + 56) + v183;
    v188 = *v187;
    v189 = *(v187 + 8);
    swift_bridgeObjectRetain_n();

    v303 = v186;
    v332 = v185;
    v304 = sub_1D99AAF30(v186, v185);
    if (v304 == 12)
    {
      (*(v335 + 8))(v337, v334);

      sub_1D99A5748(v300, v338);

      goto LABEL_161;
    }

    v302 = v188;
    v344 = v188;
    v345 = v189;
    v342 = 46;
    v343 = 0xE100000000000000;
    sub_1D99A57F8();
    result = sub_1D9C7E2AC();
    if (!*(result + 16))
    {
      goto LABEL_163;
    }

    v191 = *(result + 32);
    v190 = *(result + 40);
    swift_bridgeObjectRetain_n();

    v305 = sub_1D9C16ED0(v191, v190);
    if (v305 == 72)
    {
      break;
    }

    v307 = v189;

    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    v306 = byte_1EDD354C0;
    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_78;
    }

    if (sub_1D9A75D94())
    {
      v192 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v192 = &off_1ECB51BA8;
      }
    }

    else
    {
      v192 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v192 = &qword_1EDD355A8;
      }
    }

    v193 = *(*v192 + 32);

    v194 = sub_1D9C7DC4C();
    LODWORD(v193) = [v193 BOOLForKey_];

    v180 = v309;
    if (v193)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v195 = v331;
      v196 = __swift_project_value_buffer(v331, qword_1EDD2C990);
      v325 = *v329;
      (v325)(v326, v196, v195);
      v180 = v309;
    }

    else
    {
LABEL_78:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v197 = v331;
      v198 = __swift_project_value_buffer(v331, qword_1EDD354D8);
      v325 = *v329;
      (v325)(v326, v198, v197);
      if ((v306 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    if (sub_1D9A75D94())
    {
      v199 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v199 = &off_1ECB51BA8;
      }
    }

    else
    {
      v199 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v199 = &qword_1EDD355A8;
      }
    }

    v200 = *(*v199 + 32);

    v201 = sub_1D9C7DC4C();
    LODWORD(v200) = [v200 BOOLForKey_];

    if (v200)
    {
      v202 = v322;
      v203 = v322;
      v204 = v326;
      v205 = v331;
      goto LABEL_91;
    }

LABEL_88:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v205 = v331;
    v204 = __swift_project_value_buffer(v331, qword_1EDD354D8);
    v202 = v322;
    v203 = v322;
LABEL_91:
    (v325)(v203, v204, v205);
    v180(v326, v205);

    v206 = sub_1D9C7D8BC();
    v207 = sub_1D9C7E09C();

    LODWORD(v297) = v207;
    v208 = v207;
    v209 = v206;
    if (os_log_type_enabled(v206, v208))
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v344 = v211;
      *v210 = v296;
      *(v210 + 4) = sub_1D9A0E224(v303, v332, &v344);
      *(v210 + 12) = 2080;
      *(v210 + 14) = sub_1D9A0E224(v302, v307, &v344);
      *(v210 + 22) = 2080;
      v212 = sub_1D9C03CBC(v305);
      v214 = v66;
      v215 = sub_1D9A0E224(v212, v213, &v344);

      *(v210 + 24) = v215;
      v66 = v214;
      _os_log_impl(&dword_1D9962000, v209, v297, "TrialModelProvider: retrieving path for model related asset %s %s %s", v210, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v211, -1, -1);
      MEMORY[0x1DA7405F0](v210, -1, -1);

      v216 = v309;
      (v309)(v322, v331);
    }

    else
    {

      v216 = v309;
      (v309)(v202, v331);
    }

    sub_1D9C04AB0(v305, v336, 1852797802, 0xE400000000000000);
    v217 = v321;
    sub_1D9C7B75C();

    v297 = *v299;
    v297(v217, 0, 1, v334);
    swift_beginAccess();
    sub_1D9AC7E10(v217, v304);
    swift_endAccess();
    if (!v306)
    {
      goto LABEL_104;
    }

    if (sub_1D9A75D94())
    {
      v218 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v218 = &off_1ECB51BA8;
      }
    }

    else
    {
      v218 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v218 = &qword_1EDD355A8;
      }
    }

    v219 = *(*v218 + 32);

    v220 = sub_1D9C7DC4C();
    LODWORD(v219) = [v219 BOOLForKey_];

    if (v219)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v221 = v331;
      v222 = __swift_project_value_buffer(v331, qword_1EDD2C990);
      (v325)(v327, v222, v221);
    }

    else
    {
LABEL_104:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v223 = v331;
      v224 = __swift_project_value_buffer(v331, qword_1EDD354D8);
      (v325)(v327, v224, v223);
      if ((v306 & 1) == 0)
      {
LABEL_114:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v230 = v331;
        v229 = __swift_project_value_buffer(v331, qword_1EDD354D8);
        v228 = v324;
        goto LABEL_117;
      }
    }

    if (sub_1D9A75D94())
    {
      v225 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v225 = &off_1ECB51BA8;
      }
    }

    else
    {
      v225 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v225 = &qword_1EDD355A8;
      }
    }

    v226 = *(*v225 + 32);

    v227 = sub_1D9C7DC4C();
    LODWORD(v226) = [v226 BOOLForKey_];

    if (!v226)
    {
      goto LABEL_114;
    }

    v228 = v324;
    v229 = v327;
    v230 = v331;
LABEL_117:
    (v325)(v228, v229, v230);
    v179 &= v179 - 1;
    v216(v327, v230);

    v231 = sub_1D9C7D8BC();
    v232 = sub_1D9C7E09C();

    LODWORD(v325) = v232;
    if (os_log_type_enabled(v231, v232))
    {
      v233 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v342 = v234;
      *v233 = v295;
      swift_beginAccess();
      v235 = v341;
      if (*(v341 + 16) && (v236 = sub_1D99EE004(v304), (v237 & 1) != 0))
      {
        (*(v335 + 16))(v320, *(v235 + 56) + *(v335 + 72) * v236, v334);
        v238 = 0;
      }

      else
      {
        v238 = 1;
      }

      v297(v320, v238, 1, v334);
      swift_endAccess();
      v239 = sub_1D9C7DCEC();
      v241 = sub_1D9A0E224(v239, v240, &v342);

      *(v233 + 4) = v241;
      *(v233 + 12) = 2080;
      v242 = sub_1D9A0E224(v303, v332, &v342);

      *(v233 + 14) = v242;
      *(v233 + 22) = 2080;
      v243 = sub_1D9A0E224(v302, v307, &v342);

      *(v233 + 24) = v243;
      *(v233 + 32) = 2080;
      v244 = sub_1D9C03CBC(v305);
      v246 = sub_1D9A0E224(v244, v245, &v342);

      *(v233 + 34) = v246;
      _os_log_impl(&dword_1D9962000, v231, v325, "TrialModelProvider: stored url '%s' for model related asset %s %s %s", v233, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v234, -1, -1);
      MEMORY[0x1DA7405F0](v233, -1, -1);

      v66 = v308;
      v180 = v309;
      result = (v309)(v324, v331);
      if (!v179)
      {
        goto LABEL_59;
      }
    }

    else
    {

      result = (v216)(v324, v331);
      v180 = v216;
      if (!v179)
      {
        goto LABEL_59;
      }
    }
  }

  static Logger.argos.getter(v311);

  v285 = sub_1D9C7D8BC();
  v286 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v285, v286))
  {
    v287 = swift_slowAlloc();
    v288 = swift_slowAlloc();
    v344 = v288;
    *v287 = 136315138;
    v289 = sub_1D9A0E224(v191, v190, &v344);

    *(v287 + 4) = v289;
    _os_log_impl(&dword_1D9962000, v285, v286, "TrialModelProvider failed: asset factor name %s not a supported Trial Factor Name", v287, 0xCu);
    v290 = __swift_destroy_boxed_opaque_existential_0Tm(v288);
    MEMORY[0x1DA7405F0](v288, -1, -1, v290);
    MEMORY[0x1DA7405F0](v287, -1, -1);
  }

  else
  {
  }

  v291 = sub_1D99A5748(v300, v338);
  (v180)(v311, v331, v291);
  (*(v335 + 8))(v337, v334);
LABEL_161:

LABEL_28:
  type metadata accessor for TrialModelProvider(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1D9B247CC()
{
  sub_1D99A404C(v0 + OBJC_IVAR____TtC12VisualLookUp18TrialModelProvider_info);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrialModelProvider(uint64_t a1)
{
  result = qword_1EDD33BA8;
  if (!qword_1EDD33BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B24898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B24908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B24978@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_1D99A92D8(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1D9B24A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B24A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLModelInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1D9B24AE8@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_1D9C7B80C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = *(v1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v15 + 16) && (v16 = sub_1D99EE004(2), (v17 & 1) != 0))
  {
    (*(v9 + 16))(v11, *(v15 + 56) + *(v9 + 72) * v16, v8);
    (*(v9 + 32))(v14, v11, v8);
    v27 = sub_1D9C7B81C();
    v22 = v21;
    sub_1D9C7B54C();
    swift_allocObject();
    sub_1D9C7B53C();
    sub_1D9B3472C();
    v26 = v22;
    sub_1D9C7B52C();
    (*(v9 + 8))(v14, v8);
    sub_1D99A5748(v27, v26);

    v23 = v33;
    *(a1 + 64) = v32;
    *(a1 + 80) = v23;
    *(a1 + 96) = v34;
    v24 = v29;
    *a1 = v28;
    *(a1 + 16) = v24;
    result = v31;
    *(a1 + 32) = v30;
    *(a1 + 48) = result;
  }

  else
  {
    static Logger.argos.getter(v7);
    v18 = sub_1D9C7D8BC();
    v19 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D9962000, v18, v19, "missing metadata", v20, 2u);
      MEMORY[0x1DA7405F0](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    result.n128_u64[0] = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

id VisualIntelligenceService.parseCameraFrame(visualQueryContext:image:normalizedRegionOfInterest:annotation:groundingDetections:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v11 = v10;
  v84 = a4;
  v85 = a6;
  v83 = a5;
  v94 = a1;
  v18 = sub_1D9C7DA2C();
  v90 = *(v18 - 8);
  v91 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1D9C7DA4C();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v81 = *(v21 - 8);
  v22 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v82 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  v26 = sub_1D9C7D8DC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a2;
  LODWORD(v93) = *(a2 + 8);
  v31 = a3[1];
  v103 = *a3;
  v104 = v31;
  v32 = a3[3];
  v105 = a3[2];
  v106 = v32;
  static Logger.argos.getter(v29);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v26, qword_1EDD2C990);
  (*(v27 + 8))(v29, v26);
  v33 = sub_1D9C7D8BC();
  v34 = sub_1D9C7E09C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1D9962000, v33, v34, "parseCameraFrame with groundingDetections", v35, 2u);
    MEMORY[0x1DA7405F0](v35, -1, -1);
  }

  v95 = *(v11 + 16);
  v80 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v111.origin.x = 0.0;
  v111.origin.y = 0.0;
  v111.size.width = 1.0;
  v111.size.height = 1.0;
  v109.origin.x = a7;
  v109.origin.y = a8;
  v109.size.width = a9;
  v109.size.height = a10;
  v110 = CGRectIntersection(v109, v111);
  x = v110.origin.x;
  y = v110.origin.y;
  width = v110.size.width;
  height = v110.size.height;
  v40 = *(v11 + 96);
  v41 = v94;
  v42 = v25;
  sub_1D9B331F0(v94, v25, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext(0);
  v44 = *(*(Context - 8) + 56);
  v79 = v25;
  v44(v25, 0, 1, Context);
  v77 = sub_1D9B32C04(v41);
  v101 = &type metadata for PixelImage;
  v102 = &off_1F5533940;
  v99 = v30;
  v100 = v93;
  type metadata accessor for MetricsBucket();
  v45 = swift_allocObject();
  *(v45 + 16) = MEMORY[0x1E69E7CC0];
  v93 = v45;
  v107[0] = 0x6150202D20453245;
  v107[1] = 0xEB00000000657372;
  v107[2] = "Parse Overall";
  v107[3] = 13;
  v108 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();
  v46 = v30;

  v76 = sub_1D9AFD4B8(v107, v45);

  v47 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v75 = sub_1D9C7B87C();
  v92 = v48;

  v78 = *(v40 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v49 = swift_allocObject();
  v94 = v49;
  swift_weakInit();
  sub_1D99A17C8(&v99, v98);
  v50 = v82;
  sub_1D99AB100(v42, v82, &unk_1ECB51B10, &qword_1D9C86550);
  v51 = (*(v81 + 80) + 184) & ~*(v81 + 80);
  v52 = (v22 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v95;
  *(v56 + 16) = v49;
  *(v56 + 24) = v57;
  *(v56 + 32) = v77;
  *(v56 + 40) = v93;
  sub_1D9979B9C(v98, v56 + 48);
  *(v56 + 88) = x;
  *(v56 + 96) = y;
  *(v56 + 104) = width;
  *(v56 + 112) = height;
  v58 = v104;
  *(v56 + 120) = v103;
  *(v56 + 136) = v58;
  v59 = v106;
  *(v56 + 152) = v105;
  *(v56 + 168) = v59;
  sub_1D9A0E758(v50, v56 + v51);
  *(v56 + v52) = v76;
  v60 = v80;
  *(v56 + v53) = v80;
  v61 = (v56 + v54);
  v62 = v75;
  v63 = v92;
  *v61 = v75;
  v61[1] = v63;
  v64 = v83;
  *(v56 + v55) = v84;
  v65 = (v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
  v66 = v85;
  *v65 = v64;
  v65[1] = v66;
  v97[4] = sub_1D9A0E7C8;
  v97[5] = v56;
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 1107296256;
  v97[2] = sub_1D9A0A1E0;
  v97[3] = &block_descriptor_10;
  v83 = _Block_copy(v97);

  sub_1D99AB100(&v103, v96, &qword_1ECB514D0, &unk_1D9C86490);

  v67 = v60;
  v68 = v62;
  sub_1D99AF2FC(v62, v63);

  v69 = v86;
  sub_1D9C7DA3C();
  v96[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v70 = v88;
  v71 = v91;
  sub_1D9C7E34C();
  v72 = v83;
  MEMORY[0x1DA73E300](0, v69, v70, v83);
  _Block_release(v72);
  sub_1D99A5748(v68, v92);

  (*(v90 + 8))(v70, v71);
  (*(v87 + 8))(v69, v89);
  sub_1D99A6AE0(v79, &unk_1ECB51B10, &qword_1D9C86550);

  __swift_destroy_boxed_opaque_existential_0Tm(&v99);
  return v67;
}

double VisualIntelligenceService.searchableVisualUnderstanding(in:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 176);
    v4 = *(a1 + 144);
    v37 = *(a1 + 160);
    v38 = v3;
    v5 = *(a1 + 176);
    v6 = *(a1 + 208);
    v39 = *(a1 + 192);
    v40 = v6;
    v7 = *(a1 + 112);
    v8 = *(a1 + 80);
    v33 = *(a1 + 96);
    v34 = v7;
    v9 = *(a1 + 112);
    v10 = *(a1 + 144);
    v35 = *(a1 + 128);
    v36 = v10;
    v11 = *(a1 + 48);
    v30[0] = *(a1 + 32);
    v30[1] = v11;
    v12 = *(a1 + 80);
    v14 = *(a1 + 32);
    v13 = *(a1 + 48);
    v31 = *(a1 + 64);
    v32 = v12;
    v49 = v37;
    v50 = v5;
    v15 = *(a1 + 208);
    v51 = v39;
    v52 = v15;
    v45 = v33;
    v46 = v9;
    v47 = v35;
    v48 = v4;
    v41 = v14;
    v42 = v13;
    v43 = v31;
    v44 = v8;
    faiss::NormalizationTransform::~NormalizationTransform(&v41);
    v16 = v50;
    a2[8] = v49;
    a2[9] = v16;
    v17 = v52;
    a2[10] = v51;
    a2[11] = v17;
    v18 = v46;
    a2[4] = v45;
    a2[5] = v18;
    v19 = v48;
    a2[6] = v47;
    a2[7] = v19;
    v20 = v42;
    *a2 = v41;
    a2[1] = v20;
    v21 = v44;
    a2[2] = v43;
    a2[3] = v21;
    sub_1D99AB100(v30, &v29, &qword_1ECB51B50, &qword_1D9C88F78);
  }

  else
  {
    sub_1D9B331AC(&v41);
    v23 = v50;
    a2[8] = v49;
    a2[9] = v23;
    v24 = v52;
    a2[10] = v51;
    a2[11] = v24;
    v25 = v46;
    a2[4] = v45;
    a2[5] = v25;
    v26 = v48;
    a2[6] = v47;
    a2[7] = v26;
    v27 = v42;
    *a2 = v41;
    a2[1] = v27;
    result = *&v43;
    v28 = v44;
    a2[2] = v43;
    a2[3] = v28;
  }

  return result;
}

id VisualIntelligenceService.searchCameraFrame(timestamp:visualQueryContext:visualUnderstanding:searchHistoryEntries:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t *, void), uint64_t a5, double a6)
{
  v83 = a1;
  v95 = a4;
  v96 = a5;
  v88 = a3;
  v8 = sub_1D9C7DA2C();
  v93 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D9C7DA4C();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v80 = *(Context - 8);
  v81 = Context;
  v12 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v13 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v84 = *(v17 - 8);
  v18 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v74 - v20;
  v21 = sub_1D9C7D8DC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2[8];
  v143 = a2[9];
  v144 = a2[10];
  v145 = *(a2 + 22);
  v26 = a2[5];
  v138 = a2[4];
  v139 = v26;
  v27 = a2[7];
  v140 = a2[6];
  v141 = v27;
  v142 = v25;
  v28 = a2[1];
  v134 = *a2;
  v135 = v28;
  v29 = a2[3];
  v136 = a2[2];
  v137 = v29;
  static Logger.argos.getter(v24);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EDD2C990);
  (*(v22 + 8))(v24, v21);
  v30 = sub_1D9C7D8BC();
  v31 = sub_1D9C7E09C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D9962000, v30, v31, "searchCameraFrame with searchHistoryEntries", v32, 2u);
    MEMORY[0x1DA7405F0](v32, -1, -1);
  }

  v33 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v131 = v145;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v127 = v141;
  v120 = v134;
  v121 = v135;
  v122 = v136;
  v123 = v137;
  if (sub_1D99EDCB0(&v120) == 1)
  {
    sub_1D9B331CC(&v107);
    v106[10] = v117;
    v106[11] = v118;
    v106[12] = v119;
    v106[6] = v113;
    v106[7] = v114;
    v106[8] = v115;
    v106[9] = v116;
    v106[2] = v109;
    v106[3] = v110;
    v106[4] = v111;
    v106[5] = v112;
    v106[0] = v107;
    v106[1] = v108;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v95(v106, &v100, 0);
  }

  else
  {
    v115 = v128;
    v116 = v129;
    v117 = v130;
    *&v118 = v131;
    v111 = v124;
    v112 = v125;
    v113 = v126;
    v114 = v127;
    v107 = v120;
    v108 = v121;
    v109 = v122;
    v110 = v123;
    v79 = swift_allocBox();
    v35 = v34;
    v75 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
    v36 = v82;
    sub_1D9B331F0(v82 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v34, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v97 = v33;
    v37 = v83;
    v38 = v99;
    v77 = v18;
    v74 = v12;
    v39 = v80;
    sub_1D9B331F0(v83, v99, type metadata accessor for VisualQueryContext);
    v78 = v8;
    v40 = *(v39 + 56);
    v41 = v81;
    v40(v38, 0, 1, v81);
    sub_1D9A3D06C(v38);
    sub_1D99A6AE0(v38, &unk_1ECB51B10, &qword_1D9C86550);
    v82 = *(v36 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
    sub_1D9B331F0(v37, v38, type metadata accessor for VisualQueryContext);
    v40(v38, 0, 1, v41);
    v42 = v98;
    sub_1D9B331F0(v35, v98, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v43 = v37;
    v44 = v75;
    sub_1D9B331F0(v43, v75, type metadata accessor for VisualQueryContext);
    v45 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v46 = (v74 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v83 = v48;
    v49 = v96;
    *(v48 + 16) = v95;
    *(v48 + 24) = v49;
    sub_1D9B34EF0(v44, v48 + v45, type metadata accessor for VisualQueryContext);
    *(v48 + v46) = a6;
    *(v48 + v47) = v88;
    *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
    type metadata accessor for MetricsBucket();
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x1E69E7CC0];
    v51 = v50;
    strcpy(v132, "E2E - Search");
    BYTE5(v132[1]) = 0;
    HIWORD(v132[1]) = -5120;
    v132[2] = "Search Overall";
    v132[3] = 14;
    v133 = 2;
    type metadata accessor for DurationMeasurement(0);
    swift_allocObject();

    v95 = v51;

    v96 = sub_1D9AFD4B8(v132, v51);

    v88 = *(v82 + 56);
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = v87;
    sub_1D99AB100(v99, v87, &unk_1ECB51B10, &qword_1D9C86550);
    sub_1D9B331F0(v42, v94, v76);
    v54 = (*(v84 + 80) + 208) & ~*(v84 + 80);
    v55 = (v77 + *(v85 + 80) + v54) & ~*(v85 + 80);
    v56 = (v86 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v116;
    *(v59 + 152) = v115;
    *(v59 + 168) = v60;
    *(v59 + 184) = v117;
    v61 = v112;
    *(v59 + 88) = v111;
    *(v59 + 104) = v61;
    v62 = v114;
    *(v59 + 120) = v113;
    *(v59 + 136) = v62;
    v63 = v108;
    *(v59 + 24) = v107;
    *(v59 + 40) = v63;
    v64 = v110;
    *(v59 + 56) = v109;
    v81 = v52;
    *(v59 + 16) = v52;
    *(v59 + 200) = v118;
    *(v59 + 72) = v64;
    sub_1D9A0E758(v53, v59 + v54);
    sub_1D9B34EF0(v94, v59 + v55, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v65 = v97;
    *(v59 + v56) = v96;
    *(v59 + v57) = v65;
    *(v59 + v58) = v95;
    v66 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
    v67 = v83;
    *v66 = sub_1D9A0FD08;
    v66[1] = v67;
    v104 = sub_1D9A0F61C;
    v105 = v59;
    v100 = MEMORY[0x1E69E9820];
    v101 = 1107296256;
    v102 = sub_1D9A0A1E0;
    v103 = &block_descriptor_15;
    v68 = _Block_copy(&v100);

    sub_1D99AB100(&v134, v106, &qword_1ECB534D8, qword_1D9C956E0);

    v69 = v97;

    v70 = v89;
    sub_1D9C7DA3C();
    *&v106[0] = MEMORY[0x1E69E7CC0];
    sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
    v71 = v91;
    v72 = v78;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v70, v71, v68);
    _Block_release(v68);
    v33 = v97;

    (*(v93 + 8))(v71, v72);
    (*(v90 + 8))(v70, v92);
    sub_1D9B336AC(v98, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D99A6AE0(v99, &unk_1ECB51B10, &qword_1D9C86550);
  }

  return v33;
}

id VisualIntelligenceService.parseCameraFrame(visualQueryContext:image:normalizedRegionOfInterest:annotation:cachedResults:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v12 = v11;
  v82 = a6;
  v83 = a7;
  v93 = a5;
  v90 = a4;
  v20 = sub_1D9C7DA2C();
  v88 = *(v20 - 8);
  v89 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D9C7DA4C();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v80 = *(v23 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v81 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v73 - v26;
  v27 = sub_1D9C7D8DC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a2;
  LODWORD(v92) = *(a2 + 8);
  v32 = a3[1];
  v102 = *a3;
  v103 = v32;
  v33 = a3[3];
  v104 = a3[2];
  v105 = v33;
  static Logger.argos.getter(v30);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v27, qword_1EDD2C990);
  (*(v28 + 8))(v30, v27);
  v34 = sub_1D9C7D8BC();
  v35 = sub_1D9C7E09C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1D9962000, v34, v35, "parseCameraFrame with input image", v36, 2u);
    MEMORY[0x1DA7405F0](v36, -1, -1);
  }

  v91 = *(v12 + 16);
  v79 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v37 = *(v12 + 96);
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  v110.size.width = 1.0;
  v110.size.height = 1.0;
  v108.origin.x = a8;
  v108.origin.y = a9;
  v108.size.width = a10;
  v108.size.height = a11;
  v109 = CGRectIntersection(v108, v110);
  x = v109.origin.x;
  y = v109.origin.y;
  width = v109.size.width;
  height = v109.size.height;
  v42 = v94;
  sub_1D9B331F0(a1, v94, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext(0);
  (*(*(Context - 8) + 56))(v42, 0, 1, Context);
  v77 = sub_1D9B32C04(a1);
  v44 = 0;
  if (v93 >> 60 != 15)
  {
    v44 = sub_1D9C7B86C();
  }

  v100 = &type metadata for PixelImage;
  v101 = &off_1F5533940;
  v98 = v31;
  v99 = v92;
  type metadata accessor for MetricsBucket();
  v45 = swift_allocObject();
  *(v45 + 16) = MEMORY[0x1E69E7CC0];
  v106[0] = 0x6150202D20453245;
  v106[1] = 0xEB00000000657372;
  v106[2] = "Parse Overall";
  v106[3] = 13;
  v107 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v46 = v31;
  v92 = sub_1D9AFD4B8(v106, v45);
  v93 = v45;

  if (v44)
  {
    v47 = v44;
  }

  else
  {
    v47 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  }

  v78 = v44;
  v48 = sub_1D9C7B87C();
  v74 = v49;
  v75 = v48;

  v76 = *(v37 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v50 = swift_allocObject();
  v90 = v50;
  swift_weakInit();
  sub_1D99A17C8(&v98, v97);
  v51 = v81;
  sub_1D99AB100(v94, v81, &unk_1ECB51B10, &qword_1D9C86550);
  v52 = (*(v80 + 80) + 184) & ~*(v80 + 80);
  v53 = (v24 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v91;
  *(v57 + 16) = v50;
  *(v57 + 24) = v58;
  *(v57 + 32) = v77;
  *(v57 + 40) = v93;
  sub_1D9979B9C(v97, v57 + 48);
  *(v57 + 88) = x;
  *(v57 + 96) = y;
  *(v57 + 104) = width;
  *(v57 + 112) = height;
  v59 = v103;
  *(v57 + 120) = v102;
  *(v57 + 136) = v59;
  v60 = v105;
  *(v57 + 152) = v104;
  *(v57 + 168) = v60;
  sub_1D9A0E758(v51, v57 + v52);
  *(v57 + v53) = v92;
  v61 = v79;
  *(v57 + v54) = v79;
  v62 = (v57 + v55);
  v64 = v74;
  v63 = v75;
  *v62 = v75;
  v62[1] = v64;
  *(v57 + v56) = 0;
  v65 = (v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
  v66 = v83;
  *v65 = v82;
  v65[1] = v66;
  v96[4] = sub_1D9B351E0;
  v96[5] = v57;
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 1107296256;
  v96[2] = sub_1D9A0A1E0;
  v96[3] = &block_descriptor_23;
  v67 = _Block_copy(v96);

  sub_1D99AB100(&v102, v95, &qword_1ECB514D0, &unk_1D9C86490);

  v91 = v61;
  v68 = v64;
  sub_1D99AF2FC(v63, v64);

  v69 = v84;
  sub_1D9C7DA3C();
  v95[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v70 = v86;
  v71 = v89;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v69, v70, v67);
  _Block_release(v67);
  sub_1D99A5748(v63, v68);

  (*(v88 + 8))(v70, v71);
  (*(v85 + 8))(v69, v87);
  sub_1D99A6AE0(v94, &unk_1ECB51B10, &qword_1D9C86550);

  __swift_destroy_boxed_opaque_existential_0Tm(&v98);

  return v91;
}

double sub_1D9B26D94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53580, &qword_1D9C8B5B0);
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 16) = xmmword_1D9C8B510;
  *(v0 + 32) = 0;
  qword_1EDD31300 = v0;
  return result;
}

uint64_t VisualSearchCameraResult.visualSearchResult.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[11];
  v30 = v1[10];
  v31 = v3;
  v4 = v1[11];
  v32 = v1[12];
  v5 = v1[5];
  v6 = v1[7];
  v26 = v1[6];
  v7 = v26;
  v27 = v6;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[1];
  v12 = v1[3];
  v22 = v1[2];
  v13 = v22;
  v23 = v12;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v2;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return sub_1D9B335C8(v21, &v20);
}

double VisualSearchCameraResult.searchHistory.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = *(v1 + 208);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t VisualSearchCameraResult.visualUnderstanding.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  v17[0] = *(v1 + 232);
  v17[1] = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 344);
  v24 = *(v1 + 360);
  v25 = v3;
  v5 = *(v1 + 376);
  v26 = *(v1 + 392);
  v6 = *(v1 + 312);
  v8 = *(v1 + 280);
  v20 = *(v1 + 296);
  v7 = v20;
  v21 = v6;
  v9 = *(v1 + 312);
  v10 = *(v1 + 344);
  v22 = *(v1 + 328);
  v11 = v22;
  v23 = v10;
  v12 = *(v1 + 280);
  v18 = *(v1 + 264);
  v13 = v18;
  v19 = v12;
  *(a1 + 128) = v24;
  *(a1 + 144) = v5;
  *(a1 + 160) = *(v1 + 392);
  *(a1 + 64) = v7;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  v14 = *(v1 + 248);
  *a1 = *(v1 + 232);
  *(a1 + 16) = v14;
  v27 = *(v1 + 408);
  *(a1 + 176) = *(v1 + 408);
  *(a1 + 32) = v13;
  *(a1 + 48) = v8;
  return sub_1D99BB40C(v17, v16);
}

uint64_t VisualSearchCameraResult.searchState.getter()
{
  v1 = *(v0 + 416);

  return v1;
}

uint64_t VisualIntelligenceService.Options.debugParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualIntelligenceService.Options(0) + 24));

  return v1;
}

void VisualIntelligenceService.Options.debugParameters.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VisualIntelligenceService.Options(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t VisualIntelligenceService.Options.mlEngineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualIntelligenceService.Options(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t VisualIntelligenceService.Options.mlEngineType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VisualIntelligenceService.Options(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t VisualIntelligenceService.Options.init(customizedEndpoint:networkTimeoutInterval:debugParameters:mlEngineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = sub_1D9C7D8DC();
  v11 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a5;
  v15 = sub_1D9C7B80C();
  (*(*(v15 - 8) + 56))(a6, 1, 1, v15);
  v16 = type metadata accessor for VisualIntelligenceService.Options(0);
  v17 = v16[5];
  v18 = sub_1D9C7DA1C();
  (*(*(v18 - 8) + 56))(a6 + v17, 1, 1, v18);
  v19 = (a6 + v16[6]);
  sub_1D9B33644(a1, a6, &qword_1ECB51FD0, &unk_1D9C862F0);
  sub_1D9B33644(a2, a6 + v17, &unk_1ECB540C0, &unk_1D9C93B70);
  v20 = v41;
  *v19 = a3;
  v19[1] = v20;
  if (v14 == 3)
  {
    v21 = 2;
  }

  else
  {
    v21 = v14;
  }

  *(a6 + v16[7]) = v21;
  v22 = *(a6 + v16[7]);
  static Logger.argos.getter(v13);
  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E09C();
  if (os_log_type_enabled(v23, v24))
  {
    v41 = v11;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315394;
    v27 = 0xE600000000000000;
    v28 = 0xE800000000000000;
    v29 = 0x6F73736572707365;
    if (v14 != 1)
    {
      v29 = 13669;
      v28 = 0xE200000000000000;
    }

    if (v14)
    {
      v27 = v28;
    }

    else
    {
      v29 = 0x6E6F69736976;
    }

    if (v14 == 3)
    {
      v30 = 7104878;
    }

    else
    {
      v30 = v29;
    }

    if (v14 == 3)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = v27;
    }

    v32 = sub_1D9A0E224(v30, v31, &v43);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    v33 = 0xE800000000000000;
    v34 = 0x6F73736572707365;
    if (v22 != 1)
    {
      v34 = 13669;
      v33 = 0xE200000000000000;
    }

    if (v22)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0x6E6F69736976;
    }

    if (v22)
    {
      v36 = v33;
    }

    else
    {
      v36 = 0xE600000000000000;
    }

    v37 = v41;
    v38 = sub_1D9A0E224(v35, v36, &v43);

    *(v25 + 14) = v38;
    _os_log_impl(&dword_1D9962000, v23, v24, "mlEngineType = %s -> %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v26, -1, -1);
    MEMORY[0x1DA7405F0](v25, -1, -1);

    sub_1D99A6AE0(a2, &unk_1ECB540C0, &unk_1D9C93B70);
    sub_1D99A6AE0(a1, &qword_1ECB51FD0, &unk_1D9C862F0);
    return (*(v37 + 8))(v13, v42);
  }

  else
  {

    sub_1D99A6AE0(a2, &unk_1ECB540C0, &unk_1D9C93B70);
    sub_1D99A6AE0(a1, &qword_1ECB51FD0, &unk_1D9C862F0);
    return (*(v11 + 8))(v13, v42);
  }
}

void *sub_1D9B276C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v224 = a4;
  v234 = a3;
  v243 = a2;
  v232 = a1;
  v229 = *v5;
  v8 = sub_1D9C7D8DC();
  v206 = *(v8 - 8);
  v207 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v221 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534F0, &unk_1D9C8FF00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v220 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v218 = &v206 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v216 = &v206 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v213 = &v206 - v17;
  v240 = type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  v244 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v219 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v217 = (&v206 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v215 = &v206 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v214 = (&v206 - v24);
  v25 = type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v238 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  MEMORY[0x1EEE9AC00](v211);
  v223 = &v206 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v231 = &v206 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v241 = &v206 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v230 = &v206 - v33;
  v34 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v237 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v239 = &v206 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v242 = (&v206 - v39);
  v236 = sub_1D9C7E0EC();
  MEMORY[0x1EEE9AC00](v236);
  v40 = sub_1D9C7DA4C();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v41 = sub_1D9C7E10C();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v206 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = VIAllVisualSearchDomains();
  v46 = sub_1D9C7E03C();

  Set<>.toVisualDomains()(v46);
  v48 = v47;

  v253[0] = v48;
  v49 = sub_1D9B9E6EC(&unk_1F552A5F8);
  sub_1D9B9D9BC(v49);

  v235 = v6;
  v6[2] = v253[0];
  if (qword_1EDD312F0 != -1)
  {
    swift_once();
  }

  v233 = a5;
  v50 = qword_1EDD31300;
  os_unfair_lock_lock((qword_1EDD31300 + 40));
  sub_1D9B29270((v50 + 16));
  os_unfair_lock_unlock((v50 + 40));
  sub_1D9ADC36C();
  (*(v42 + 104))(v44, *MEMORY[0x1E69E8098], v41);
  sub_1D9C7DA3C();
  v253[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD354A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52460, &qword_1D9C94170);
  sub_1D9AE54F4(&qword_1EDD354B0, &unk_1ECB52460, &qword_1D9C94170);
  sub_1D9C7E34C();
  v51 = sub_1D9C7E13C();
  v52 = v235;
  v235[3] = v51;
  v222 = v51;
  v53 = v233;

  sub_1D9C04AB0(7, 0, 1852797802, 0xE400000000000000);
  sub_1D99A41C8(v54, 0, v253);

  v52[4] = v253[0];
  v55 = sub_1D9C04AB0(11, 0, 0x7478746270, 0xE500000000000000);
  sub_1D9B5849C(v55, v56, v242);

  v57 = sub_1D9C04AB0(10, 0, 0x7478746270, 0xE500000000000000);
  v58 = v237;
  sub_1D9A3D1F8(v57, v59, v237);

  sub_1D9B34EF0(v58, v52 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v60 = sub_1D9C04AB0(8, 0, 0x7478746270, 0xE500000000000000);
  v61 = v230;
  sub_1D9B65C80(v60, v62, v230);

  v227 = OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_parseConfig;
  sub_1D9B34EF0(v61, v52 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_parseConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v63 = sub_1D9C04AB0(9, 0, 0x7478746270, 0xE500000000000000);
  sub_1D9B65C80(v63, v64, v61);

  v225 = OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_groundingParseConfig;
  sub_1D9B34EF0(v61, v52 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_groundingParseConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v65 = sub_1D9C04AB0(12, 0, 0x7478746270, 0xE500000000000000);
  v66 = v238;
  sub_1D99F53AC(v65, v67, v238);

  sub_1D9B34EF0(v66, v52 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_refineRegionConfig, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig);
  v68 = type metadata accessor for VisualIntelligenceModelProviderService();
  swift_allocObject();

  v70 = sub_1D9A9283C(v69);
  v52[9] = v68;
  v52[10] = &off_1F552EEE0;
  v52[6] = v70;
  v228 = *(type metadata accessor for VisualIntelligenceService.Options(0) + 28);
  LODWORD(v210) = *(v243 + v228);
  v212 = v52 + 6;
  sub_1D99A17C8((v52 + 6), v253);
  v71 = v52[4];
  v72 = __swift_mutable_project_boxed_opaque_existential_1(v253, v254);
  v229 = &v206;
  v73 = MEMORY[0x1EEE9AC00](v72);
  v75 = (&v206 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75, v73);
  v77 = *v75;
  v251 = v68;
  v252 = &off_1F552EEE0;
  v250[0] = v77;
  type metadata accessor for ObjectDetector();
  v78 = swift_allocObject();
  v79 = __swift_mutable_project_boxed_opaque_existential_1(v250, v68);
  v237 = *(*(v68 - 8) + 64);
  v80 = MEMORY[0x1EEE9AC00](v79);
  v226 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = (&v206 - v226);
  v84 = *(v83 + 16);
  v238 = (v83 + 16);
  v236 = v84;
  v84(&v206 - v226, v80);
  v85 = *v82;

  v86 = sub_1D9B32270(v210, v85, v53, v71, v78);
  __swift_destroy_boxed_opaque_existential_0Tm(v250);
  __swift_destroy_boxed_opaque_existential_0Tm(v253);
  v87 = v228;
  v52[5] = v86;
  v88 = *(v243 + v87);
  sub_1D99A17C8((v52 + 6), v253);
  v89 = v239;
  sub_1D9B331F0(v242, v239, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);
  v90 = __swift_mutable_project_boxed_opaque_existential_1(v253, v254);
  v229 = &v206;
  v91 = MEMORY[0x1EEE9AC00](v90);
  v93 = (&v206 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93, v91);
  v95 = *v93;
  v251 = v68;
  v252 = &off_1F552EEE0;
  v250[0] = v95;
  type metadata accessor for DomainModelRegistry(0);
  v96 = swift_allocObject();
  v97 = __swift_mutable_project_boxed_opaque_existential_1(v250, v68);
  v98 = MEMORY[0x1EEE9AC00](v97);
  v99 = (&v206 - v226);
  v236(&v206 - v226, v98);
  v100 = *v99;
  v248 = v68;
  v249 = &off_1F552EEE0;
  v247[0] = v100;
  __swift_project_boxed_opaque_existential_1(v247, v68);
  *(v96 + 16) = sub_1D9B310D0(v88);
  sub_1D9B34EF0(v89, v96 + OBJC_IVAR____TtC12VisualLookUp19DomainModelRegistry_domainModelConfig, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);
  __swift_destroy_boxed_opaque_existential_0Tm(v247);
  __swift_destroy_boxed_opaque_existential_0Tm(v250);
  __swift_destroy_boxed_opaque_existential_0Tm(v253);
  v52[11] = v96;
  type metadata accessor for MemoryPressureObserver();
  swift_allocObject();
  *(v52 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_memoryObserver) = sub_1D9B76B68();
  v101 = sub_1D9C04AB0(6, 0, 0x7473696C70, 0xE500000000000000);
  v103 = v102;
  v104 = v232;

  v239 = sub_1D99E956C(v101, v103, v104);

  v105 = sub_1D9C04AB0(5, 0, 0x7473696C70, 0xE500000000000000);
  v107 = v106;
  type metadata accessor for VisualDomainGlyphManager();
  swift_initStackObject();
  v229 = sub_1D9BFDA2C(v105, v107);
  sub_1D99A17C8(v212, v253);
  v108 = v52[5];
  v208 = *(v243 + v228);
  v109 = v241;
  sub_1D9B331F0(v52 + v227, v241, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v110 = v231;
  sub_1D9B331F0(v225 + v52, v231, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v111 = v52[4];
  v225 = v52[3];
  v112 = v52[11];
  v227 = v111;
  v228 = v112;
  v113 = __swift_mutable_project_boxed_opaque_existential_1(v253, v254);
  v210 = &v206;
  v114 = MEMORY[0x1EEE9AC00](v113);
  v116 = (&v206 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v117 + 16))(v116, v114);
  v118 = *v116;
  v251 = v68;
  v252 = &off_1F552EEE0;
  v250[0] = v118;
  type metadata accessor for ParseFlow(0);
  v119 = swift_allocObject();
  v120 = __swift_mutable_project_boxed_opaque_existential_1(v250, v68);
  v209 = &v206;
  v121 = MEMORY[0x1EEE9AC00](v120);
  v122 = (&v206 - v226);
  v236(&v206 - v226, v121);
  v123 = *v122;
  v248 = v68;
  v249 = &off_1F552EEE0;
  v212 = v68;
  v247[0] = v123;
  sub_1D99A17C8(v247, v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_modelProviderService);
  v226 = v108;
  *(v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_objectDetector) = v108;
  sub_1D9B331F0(v109, v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_config, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9B331F0(v110, v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_groundingConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v124 = v239;
  v119[14] = v234;
  v119[15] = v124;
  *(v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue) = v225;
  *(v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_trialWrapper) = v53;
  *(v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_mlEngineType) = v208;
  v125 = *(v109 + *(v211 + 20));
  v126 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  swift_beginAccess();
  v127 = v213;
  sub_1D99AB100(v125 + v126, v213, &qword_1ECB534F0, &unk_1D9C8FF00);
  v128 = v244 + 48;
  v129 = *(v244 + 48);
  v130 = v240;
  v131 = v129(v127, 1, v240);
  v244 = v128;
  if (v131 == 1)
  {
    v132 = v127;
    v133 = v214;
    *v214 = 0;
    *(v133 + 1) = 0;
    v134 = v132;
    swift_retain_n();
    swift_retain_n();

    v135 = v225;

    sub_1D9C7D3BC();
    v136 = v129(v134, 1, v130);
    v137 = v215;
    if (v136 != 1)
    {
      sub_1D99A6AE0(v134, &qword_1ECB534F0, &unk_1D9C8FF00);
    }
  }

  else
  {
    v138 = v127;
    v133 = v214;
    sub_1D9B34EF0(v138, v214, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
    swift_retain_n();
    swift_retain_n();

    v139 = v225;

    v137 = v215;
  }

  v225 = *v133;
  sub_1D9B336AC(v133, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  v140 = v216;
  sub_1D99AB100(v125 + v126, v216, &qword_1ECB534F0, &unk_1D9C8FF00);
  v141 = v129(v140, 1, v130);
  v142 = v219;
  if (v141 == 1)
  {
    *v137 = 0;
    *(v137 + 8) = 0;
    sub_1D9C7D3BC();
    if (v129(v140, 1, v130) != 1)
    {
      sub_1D99A6AE0(v140, &qword_1ECB534F0, &unk_1D9C8FF00);
    }
  }

  else
  {
    sub_1D9B34EF0(v140, v137, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  }

  v143 = *(v137 + 4);
  sub_1D9B336AC(v137, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  v144 = v218;
  sub_1D99AB100(v125 + v126, v218, &qword_1ECB534F0, &unk_1D9C8FF00);
  v145 = v240;
  if (v129(v144, 1, v240) == 1)
  {
    v146 = v217;
    *v217 = 0;
    *(v146 + 1) = 0;
    sub_1D9C7D3BC();
    if (v129(v144, 1, v145) != 1)
    {
      sub_1D99A6AE0(v144, &qword_1ECB534F0, &unk_1D9C8FF00);
    }
  }

  else
  {
    v146 = v217;
    sub_1D9B34EF0(v144, v217, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  }

  v147 = v146[2];
  sub_1D9B336AC(v146, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  v148 = v125 + v126;
  v149 = v220;
  sub_1D99AB100(v148, v220, &qword_1ECB534F0, &unk_1D9C8FF00);
  v150 = v240;
  if (v129(v149, 1, v240) == 1)
  {
    *v142 = 0;
    *(v142 + 8) = 0;
    sub_1D9C7D3BC();
    v151 = v129(v149, 1, v150);
    v152 = v226;
    v153 = v221;
    if (v151 != 1)
    {
      sub_1D99A6AE0(v149, &qword_1ECB534F0, &unk_1D9C8FF00);
    }
  }

  else
  {
    sub_1D9B34EF0(v149, v142, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
    v152 = v226;
    v153 = v221;
  }

  v154 = *(v142 + 12);
  sub_1D9B336AC(v142, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  type metadata accessor for BoxScorer();
  v155 = swift_allocObject();
  v156 = v225;
  if (v225 < 1 || v154 <= 0.0)
  {
    *(v155 + 24) = 30;
    sub_1D9B1F3F4(0x1EuLL, 0.5, 0.5, 0.5);
    *(v155 + 16) = v159;
    static Logger.argos.getter(v153);
    v160 = sub_1D9C7D8BC();
    v161 = sub_1D9C7E09C();
    v162 = os_log_type_enabled(v160, v161);
    v158 = v227;
    if (v162)
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&dword_1D9962000, v160, v161, "Invalid Box Scorer Config. Create Box Scorer using default config.", v163, 2u);
      MEMORY[0x1DA7405F0](v163, -1, -1);
    }

    (*(v206 + 8))(v153, v207);
  }

  else
  {
    *(v155 + 24) = v225;
    sub_1D9B1F3F4(v156, v154, v143, v147);
    *(v155 + 16) = v157;
    v158 = v227;
  }

  *(v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_boxScorer) = v155;
  sub_1D99A17C8(v247, v246);
  v164 = __swift_mutable_project_boxed_opaque_existential_1(v246, v246[3]);
  v165 = MEMORY[0x1EEE9AC00](v164);
  v167 = (&v206 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v168 + 16))(v167, v165);
  v169 = *v167;
  v170 = v212;
  v245[3] = v212;
  v245[4] = &off_1F552EEE0;
  v245[0] = v169;
  type metadata accessor for TriggeringModelProcessor();
  v171 = swift_allocObject();
  v172 = __swift_mutable_project_boxed_opaque_existential_1(v245, v170);
  v173 = MEMORY[0x1EEE9AC00](v172);
  v175 = (&v206 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0));
  v236(v175, v173);
  v176 = *v175;
  swift_retain_n();

  v177 = sub_1D9B32690(v152, v176, v158, v155, v171);
  __swift_destroy_boxed_opaque_existential_0Tm(v245);
  __swift_destroy_boxed_opaque_existential_0Tm(v246);
  v119[2] = v177;
  v246[0] = v158;
  v178 = v230;
  sub_1D9B331F0(v241, v230, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v179 = v231;
  v180 = v223;
  sub_1D9B331F0(v231, v223, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  type metadata accessor for DomainAssignmentProcessor();
  swift_allocObject();
  v181 = v233;

  v119[3] = sub_1D9ADEB74(v246, v181, v178, v180);
  type metadata accessor for RegionMergingProcessor();
  v182 = swift_allocObject();
  *(v182 + 16) = v155;
  v119[4] = v182;
  type metadata accessor for RegionGroupingProcessor();
  v183 = swift_allocObject();
  *(v183 + 16) = v155;
  v119[6] = v183;
  type metadata accessor for RegionSelectionProcessor();
  v184 = swift_allocObject();
  *(v184 + 16) = v158;
  v119[5] = v184;
  type metadata accessor for CameraAdditionalSignalProcessor();
  v119[7] = swift_allocObject();
  type metadata accessor for TriggeringPredictionProcessor();
  v119[8] = swift_allocObject();
  type metadata accessor for AnnotationExtractorProcessor();
  v119[9] = swift_allocObject();
  type metadata accessor for NSFWCheckerProcessor();
  swift_allocObject();

  v119[10] = sub_1D99D0F70();
  v246[0] = v158;
  v185 = v241;
  sub_1D9B331F0(v241, v178, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9B331F0(v179, v180, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  type metadata accessor for DomainSelectionProcessor(0);
  swift_allocObject();
  v186 = v228;

  sub_1D9A4AC94(v187, v181, v246, v178, v180);
  v189 = v188;

  sub_1D9B336AC(v179, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  __swift_destroy_boxed_opaque_existential_0Tm(v247);
  sub_1D9B336AC(v185, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v119[11] = v189;
  type metadata accessor for FingerprintExtractorProcessor();
  v190 = swift_allocObject();
  type metadata accessor for ImageFingerprintRequestFactory();
  v191 = swift_allocObject();
  *(v191 + 16) = v186;
  *(v190 + 16) = v191;
  v119[13] = v190;
  type metadata accessor for DetectionUpdatingProcessor();
  v119[12] = swift_allocObject();
  v192 = v229;
  v193 = v229[2];

  *(v119 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_domainGlyphConfig) = v193;
  __swift_destroy_boxed_opaque_existential_0Tm(v250);
  __swift_destroy_boxed_opaque_existential_0Tm(v253);
  v194 = v235;
  v235[12] = v119;
  v195 = v194[11];
  v196 = v194[3];
  type metadata accessor for SearchFlow();
  v197 = swift_allocObject();
  type metadata accessor for SignalsExtractor();
  v198 = swift_allocObject();
  *(v198 + 16) = v195;
  *(v198 + 24) = v181;
  v197[2] = v198;
  type metadata accessor for ServerSearchProcessor();
  v199 = swift_allocObject();
  v199[2] = v232;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534F8, &qword_1D9C95A88);
  swift_allocObject();

  v200 = v196;
  v199[3] = sub_1D9C1B660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53500, &unk_1D9C95A90);
  swift_allocObject();
  v201 = sub_1D9C1B660();

  sub_1D9B336AC(v243, type metadata accessor for VisualIntelligenceService.Options);
  sub_1D9B336AC(v242, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);
  v199[4] = v201;
  v197[3] = v199;
  type metadata accessor for ServerResultsProcessor();
  v202 = swift_allocObject();
  v203 = v224;
  v197[4] = v202;
  v197[5] = v203;
  v197[6] = v239;
  v197[7] = v200;
  v204 = v192[2];

  v197[8] = v204;
  *(v194 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow) = v197;
  return v194;
}

void sub_1D9B29270(uint64_t *a1)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = a1[2];
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  a1[2] = v11;
  v12 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
LABEL_10:
    __break(1u);
    return;
  }

  *a1 = v12;
  v13 = a1[1];
  if (v13 < v12)
  {
    a1[1] = v12;
    v13 = v12;
  }

  static Logger.argos.getter(v26 - v8);
  sub_1D9A3E0E0(v6);
  v27 = *(v4 + 8);
  v27(v9, v3);
  v14 = sub_1D9C7D8BC();
  v15 = sub_1D9C7E09C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26[1] = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26[0] = v3;
    v19 = v18;
    v31 = v18;
    *v17 = 136315138;
    v28 = v12;
    v29 = v13;
    v30 = v11;
    v20 = sub_1D9C7DD0C();
    v22 = sub_1D9A0E224(v20, v21, &v31);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1D9962000, v14, v15, "VisualIntelligenceService.init(): %s", v17, 0xCu);
    v23 = __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x1DA7405F0](v19, -1, -1, v23);
    MEMORY[0x1DA7405F0](v17, -1, -1);

    v24 = v6;
    v25 = v26[0];
  }

  else
  {

    v24 = v6;
    v25 = v3;
  }

  v27(v24, v25);
}

uint64_t VisualIntelligenceService.deinit()
{
  sub_1D9B77488(32);
  if (qword_1EDD312F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD31300;
  os_unfair_lock_lock((qword_1EDD31300 + 40));
  sub_1D9B29648((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  sub_1D9B336AC(v0 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_parseConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9B336AC(v0 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_groundingParseConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);

  sub_1D9B336AC(v0 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9B336AC(v0 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_refineRegionConfig, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig);

  return v0;
}

void sub_1D9B29648(uint64_t *a1)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v10;
    v11 = a1[1];
    if (v11 < v10)
    {
      a1[1] = v10;
      v11 = v10;
    }

    v27 = a1[2];
    static Logger.argos.getter(v26 - v8);
    sub_1D9A3E0E0(v6);
    v12 = *(v4 + 8);
    v12(v9, v3);
    v13 = sub_1D9C7D8BC();
    v14 = v3;
    v15 = sub_1D9C7E09C();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      v26[0] = v14;
      v17 = v16;
      v18 = swift_slowAlloc();
      v26[1] = v1;
      v19 = v18;
      v31 = v18;
      *v17 = 136315138;
      v28 = v10;
      v29 = v11;
      v30 = v27;
      v20 = sub_1D9C7DD0C();
      v22 = sub_1D9A0E224(v20, v21, &v31);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1D9962000, v13, v15, "VisualIntelligenceService.deinit(): %s", v17, 0xCu);
      v23 = __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1DA7405F0](v19, -1, -1, v23);
      MEMORY[0x1DA7405F0](v17, -1, -1);

      v24 = v6;
      v25 = v26[0];
    }

    else
    {

      v24 = v6;
      v25 = v14;
    }

    v12(v24, v25);
  }
}

uint64_t VisualIntelligenceService.__deallocating_deinit()
{
  VisualIntelligenceService.deinit();

  return swift_deallocClassInstance();
}

CGSize_optional __swiftcall VisualIntelligenceService.targetImageSize(for:)(CGSize a1)
{
  v1 = sub_1D9C1D594(a1.width, a1.height);
  result.value.height = v3;
  result.value.width = v2;
  result.is_nil = v1;
  return result;
}

Swift::Void __swiftcall VisualIntelligenceService.warmupSearch()()
{

  sub_1D9C7D0BC();
}

id VisualIntelligenceService.parse(query:cachedResults:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a4;
  v52 = a3;
  v55 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v18 = [a1 domainsOfInterest];
  v19 = sub_1D9C7E03C();

  Set<>.toVisualDomains()(v19);
  v21 = v20;

  static Logger.argos.getter(v17);
  sub_1D9A3E0E0(v13);
  v22 = *(v11 + 8);
  v53 = v11 + 8;
  v22(v17, v10);

  v51 = v13;
  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E09C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v60 = v48;
    *v25 = 134218242;
    *(v25 + 4) = *(v21 + 16);

    *(v25 + 12) = 2080;
    v49 = v22;
    sub_1D99E3A84(v21);
    v26 = MEMORY[0x1DA73E110]();
    v47 = v10;
    v27 = v26;
    v50 = a1;
    v29 = v28;

    v30 = sub_1D9A0E224(v27, v29, &v60);
    a1 = v50;

    *(v25 + 14) = v30;
    _os_log_impl(&dword_1D9962000, v23, v24, "Parse input domain count %ld, domains: %s", v25, 0x16u);
    v31 = v48;
    v32 = __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x1DA7405F0](v31, -1, -1, v32);
    MEMORY[0x1DA7405F0](v25, -1, -1);

    v49(v51, v47);
  }

  else
  {

    v22(v51, v10);
  }

  v33 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v34 = *(v5 + 96);
  v35 = [a1 image];
  swift_getObjectType();
  sub_1D9AF6CF8(v67);
  swift_unknownObjectRelease();
  [a1 normalizedRegionOfInterest];
  v72.origin.x = 0.0;
  v72.origin.y = 0.0;
  v72.size.width = 1.0;
  v72.size.height = 1.0;
  v71 = CGRectIntersection(v70, v72);
  *&v64 = v71.origin.x;
  *(&v64 + 1) = *&v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;
  v36 = [a1 annotation];
  if (v36)
  {
    v37 = v36;
    VIAnnotation.mappedAnnotation.getter(&v60);

    v38 = v60;
    v39 = v61;
    v40 = v62;
    v41 = v63;
  }

  else
  {
    v38 = xmmword_1D9C86A60;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
  }

  v56 = v38;
  v57 = v39;
  v58 = v40;
  v59 = v41;
  VisualQueryContext.init(_:)([a1 queryContext], v9);
  Context = type metadata accessor for VisualQueryContext(0);
  (*(*(Context - 8) + 56))(v9, 0, 1, Context);
  v43 = v68;
  v44 = v69;
  v45 = __swift_project_boxed_opaque_existential_1(v67, v68);
  sub_1D9B141C0(v45, &v64, v21, &v56, v9, v33, 0, v55, 0, v52, v54, v34, v43, v44);

  sub_1D99A6AE0(v9, &unk_1ECB51B10, &qword_1D9C86550);
  v60 = v56;
  v61 = v57;
  v62 = v58;
  v63 = v59;
  sub_1D99A6AE0(&v60, &qword_1ECB514D0, &unk_1D9C86490);
  __swift_destroy_boxed_opaque_existential_0Tm(v67);
  return v33;
}

char *VisualIntelligenceService.search(image:parseResult:annotation:queryContext:completion:)(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v75 = a5;
  v76 = a6;
  v83 = a1;
  v79 = sub_1D9C7DA2C();
  v82 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7DA4C();
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v73 = *(v13 - 8);
  v72 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v71 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v70 = *(v18 - 8);
  v69 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  Context = type metadata accessor for VisualQueryContext(0);
  v24 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3[1];
  v105 = *a3;
  v106 = v27;
  v28 = a3[3];
  v107 = a3[2];
  v108 = v28;
  v29 = a4;
  VisualQueryContext.init(_:)(a4, v26);
  v68 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
  v85 = v22;
  sub_1D9B331F0(v6 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v22, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v30 = v26;
  v74 = v26;
  sub_1D9B331F0(v26, v17, type metadata accessor for VisualQueryContext);
  v31 = *(v24 + 56);
  v31(v17, 0, 1, Context);
  sub_1D9A3D06C(v17);
  sub_1D99A6AE0(v17, &unk_1ECB51B10, &qword_1D9C86550);
  v32 = a2[9];
  v99 = a2[8];
  v100 = v32;
  v101 = a2[10];
  v102 = *(a2 + 22);
  v33 = a2[5];
  v95 = a2[4];
  v96 = v33;
  v34 = a2[7];
  v97 = a2[6];
  v98 = v34;
  v35 = a2[1];
  v91 = *a2;
  v92 = v35;
  v36 = a2[3];
  v93 = a2[2];
  v94 = v36;
  VisualUnderstanding.imageRegions.getter();
  v38 = v37;
  v86[0] = v105;
  v86[1] = v106;
  v86[2] = v107;
  v86[3] = v108;
  sub_1D99AB100(&v105, &v91, &qword_1ECB514D0, &unk_1D9C86490);
  VisualUnderstanding.init(_:annotation:payload:)(v38, v86, 0, 0xF000000000000000, &v91);
  v65 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v39 = *(v66 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
  swift_getObjectType();
  sub_1D9AF6CF8(v90);
  sub_1D9B331F0(v30, v17, type metadata accessor for VisualQueryContext);
  v67 = v17;
  v31(v17, 0, 1, Context);
  type metadata accessor for MetricsBucket();
  v40 = swift_allocObject();
  *(v40 + 16) = MEMORY[0x1E69E7CC0];
  v83 = v40;
  strcpy(v103, "E2E - Search");
  BYTE5(v103[1]) = 0;
  HIWORD(v103[1]) = -5120;
  v103[2] = "Search Overall";
  v103[3] = 14;
  v104 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v64 = sub_1D9AFD4B8(v103, v40);

  v66 = *(v39 + 56);
  v41 = swift_allocObject();
  swift_weakInit();
  sub_1D99AB100(v90, v88, &qword_1ECB51B30, &qword_1D9C99390);
  v42 = v17;
  v43 = v71;
  sub_1D99AB100(v42, v71, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D9B331F0(v85, v84, v68);
  v44 = (*(v73 + 80) + 248) & ~*(v73 + 80);
  v45 = (v72 + *(v70 + 80) + v44) & ~*(v70 + 80);
  v46 = (v69 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  v50 = v100;
  *(v49 + 152) = v99;
  *(v49 + 168) = v50;
  *(v49 + 184) = v101;
  *(v49 + 200) = v102;
  v51 = v96;
  *(v49 + 88) = v95;
  *(v49 + 104) = v51;
  v52 = v98;
  *(v49 + 120) = v97;
  *(v49 + 136) = v52;
  v53 = v92;
  *(v49 + 24) = v91;
  *(v49 + 40) = v53;
  v54 = v94;
  *(v49 + 56) = v93;
  *(v49 + 72) = v54;
  v55 = v88[1];
  *(v49 + 208) = v88[0];
  *(v49 + 224) = v55;
  *(v49 + 240) = v89;
  sub_1D9A0E758(v43, v49 + v44);
  sub_1D9B34EF0(v84, v49 + v45, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v56 = v65;
  *(v49 + v46) = v64;
  *(v49 + v47) = v56;
  *(v49 + v48) = v83;
  v57 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
  v58 = v76;
  *v57 = v75;
  v57[1] = v58;
  v87[4] = sub_1D9A0ED28;
  v87[5] = v49;
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 1107296256;
  v87[2] = sub_1D9A0A1E0;
  v87[3] = &block_descriptor_30_0;
  v59 = _Block_copy(v87);

  sub_1D99BB40C(&v91, v86);

  v84 = v56;

  v60 = v77;
  sub_1D9C7DA3C();
  *&v86[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v61 = v78;
  v62 = v79;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v60, v61, v59);
  _Block_release(v59);
  sub_1D9A0009C(&v91);

  (*(v82 + 8))(v61, v62);
  (*(v80 + 8))(v60, v81);
  sub_1D99A6AE0(v67, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D99A6AE0(v90, &qword_1ECB51B30, &qword_1D9C99390);
  sub_1D9B336AC(v85, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9B336AC(v74, type metadata accessor for VisualQueryContext);

  return v84;
}

char *VisualIntelligenceService.searchCameraFrame(visualQueryContext:visualUnderstanding:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v83 = a3;
  v8 = sub_1D9C7DA2C();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D9C7DA4C();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v74 = v12;
  v75 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v71 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v84 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  v21 = sub_1D9C7D8DC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2[9];
  v95 = a2[8];
  v96 = v25;
  v97 = a2[10];
  v98 = *(a2 + 22);
  v26 = a2[5];
  v91 = a2[4];
  v92 = v26;
  v27 = a2[7];
  v93 = a2[6];
  v94 = v27;
  v28 = a2[1];
  v87 = *a2;
  v88 = v28;
  v29 = a2[3];
  v89 = a2[2];
  v90 = v29;
  static Logger.argos.getter(v24);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EDD2C990);
  (*(v22 + 8))(v24, v21);
  v30 = sub_1D9C7D8BC();
  v31 = sub_1D9C7E09C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D9962000, v30, v31, "searchCameraFrame", v32, 2u);
    MEMORY[0x1DA7405F0](v32, -1, -1);
  }

  v69 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v65 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
  sub_1D9B331F0(v5 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v20, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9B331F0(a1, v15, type metadata accessor for VisualQueryContext);
  v33 = v20;
  Context = type metadata accessor for VisualQueryContext(0);
  v35 = v15;
  v36 = *(*(Context - 8) + 56);
  v36(v35, 0, 1, Context);
  v68 = v33;
  sub_1D9A3D06C(v35);
  v37 = v35;
  sub_1D99A6AE0(v35, &unk_1ECB51B10, &qword_1D9C86550);
  v38 = *(v5 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
  sub_1D9B331F0(a1, v37, type metadata accessor for VisualQueryContext);
  v67 = v37;
  v36(v37, 0, 1, Context);
  v39 = swift_allocObject();
  v66 = v39;
  v40 = v70;
  *(v39 + 16) = v83;
  *(v39 + 24) = v40;
  type metadata accessor for MetricsBucket();
  v41 = swift_allocObject();
  *(v41 + 16) = MEMORY[0x1E69E7CC0];
  v82 = v41;
  strcpy(v99, "E2E - Search");
  BYTE5(v99[1]) = 0;
  HIWORD(v99[1]) = -5120;
  v99[2] = "Search Overall";
  v99[3] = 14;
  v100 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v83 = sub_1D9AFD4B8(v99, v41);

  v70 = *(v38 + 56);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v75;
  sub_1D99AB100(v37, v75, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D9B331F0(v33, v84, v65);
  v44 = (*(v73 + 80) + 208) & ~*(v73 + 80);
  v45 = (v74 + *(v71 + 80) + v44) & ~*(v71 + 80);
  v46 = (v72 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v96;
  *(v49 + 152) = v95;
  *(v49 + 168) = v50;
  *(v49 + 184) = v97;
  v51 = v92;
  *(v49 + 88) = v91;
  *(v49 + 104) = v51;
  v52 = v94;
  *(v49 + 120) = v93;
  *(v49 + 136) = v52;
  v53 = v88;
  *(v49 + 24) = v87;
  *(v49 + 40) = v53;
  v54 = v90;
  *(v49 + 56) = v89;
  *(v49 + 16) = v42;
  *(v49 + 200) = v98;
  *(v49 + 72) = v54;
  sub_1D9A0E758(v43, v49 + v44);
  sub_1D9B34EF0(v84, v49 + v45, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v55 = v82;
  *(v49 + v46) = v83;
  v56 = v69;
  *(v49 + v47) = v69;
  *(v49 + v48) = v55;
  v57 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
  v58 = v66;
  *v57 = sub_1D9B33D88;
  v57[1] = v58;
  v86[4] = sub_1D9B351E4;
  v86[5] = v49;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 1107296256;
  v86[2] = sub_1D9A0A1E0;
  v86[3] = &block_descriptor_41;
  v59 = _Block_copy(v86);

  sub_1D99BB40C(&v87, v85);

  v84 = v56;

  v60 = v76;
  sub_1D9C7DA3C();
  v85[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v61 = v78;
  v62 = v81;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v60, v61, v59);
  _Block_release(v59);

  (*(v80 + 8))(v61, v62);
  (*(v77 + 8))(v60, v79);
  sub_1D99A6AE0(v67, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D9B336AC(v68, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);

  return v84;
}

void sub_1D9B2B15C(uint64_t a1, void (*a2)(__int128 *, void *))
{
  v4 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v20 - v8);
  sub_1D99AB100(a1, &v20 - v8, &unk_1ECB53570, &unk_1D9C9C2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    sub_1D9B331CC(&v58);
    v55 = v68;
    v56 = v69;
    v57 = v70;
    v51 = v64;
    v52 = v65;
    v53 = v66;
    v54 = v67;
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v50 = v63;
    v45 = v58;
    v46 = v59;
    v11 = v10;
    a2(&v45, v10);
  }

  else
  {
    sub_1D9B34EF0(v9, v6, type metadata accessor for VisualSearchResultInternal);
    v12 = *(v6 + 23);
    v44 = *(v6 + 22);
    v13 = *(v6 + 9);
    v41 = *(v6 + 8);
    v42 = v13;
    v43 = *(v6 + 10);
    v14 = *(v6 + 5);
    v37 = *(v6 + 4);
    v38 = v14;
    v15 = *(v6 + 7);
    v39 = *(v6 + 6);
    v40 = v15;
    v16 = *(v6 + 1);
    v33 = *v6;
    v34 = v16;
    v17 = *(v6 + 3);
    v35 = *(v6 + 2);
    v36 = v17;
    sub_1D99BB40C(&v33, &v58);

    v18 = sub_1D99FC1B0();
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    *&v56 = v44;
    *(&v56 + 1) = v12;
    *&v57 = v18;
    *(&v57 + 1) = v19;
    faiss::NormalizationTransform::~NormalizationTransform(&v45);
    v30 = v55;
    v31 = v56;
    v32 = v57;
    v26 = v51;
    v27 = v52;
    v28 = v53;
    v29 = v54;
    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v20 = v45;
    v21 = v46;
    a2(&v20, 0);
    v68 = v30;
    v69 = v31;
    v70 = v32;
    v64 = v26;
    v65 = v27;
    v66 = v28;
    v67 = v29;
    v60 = v22;
    v61 = v23;
    v62 = v24;
    v63 = v25;
    v58 = v20;
    v59 = v21;
    sub_1D99A6AE0(&v58, &unk_1ECB51B60, &unk_1D9C95B00);
    sub_1D9B336AC(v6, type metadata accessor for VisualSearchResultInternal);
  }
}

void sub_1D9B2B464(uint64_t a1, void (*a2)(__int128 *, __int128 *, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v53 = a3;
  *&v54 = a5;
  *&v55 = a4;
  v10 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v48 - v16);
  v18 = swift_projectBox();
  sub_1D99AB100(a1, v17, &unk_1ECB53570, &unk_1D9C9C2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v17;
    sub_1D9B331CC(&v108);
    v93 = v118;
    v94 = v119;
    v95 = v120;
    v89 = v114;
    v90 = v115;
    v91 = v116;
    v92 = v117;
    v85 = v110;
    v86 = v111;
    v87 = v112;
    v88 = v113;
    v83 = v108;
    v84 = v109;
    v70 = 0uLL;
    *&v71 = 0;
    v20 = v19;
    a2(&v83, &v70, v19);

    return;
  }

  v21 = v18;
  sub_1D9B34EF0(v17, v14, type metadata accessor for VisualSearchResultInternal);
  v22 = *(v14 + 23);
  v107 = *(v14 + 22);
  v23 = *(v14 + 9);
  v104 = *(v14 + 8);
  v105 = v23;
  v106 = *(v14 + 10);
  v24 = *(v14 + 5);
  v100 = *(v14 + 4);
  v101 = v24;
  v25 = *(v14 + 7);
  v102 = *(v14 + 6);
  v103 = v25;
  v26 = *(v14 + 1);
  v96 = *v14;
  v97 = v26;
  v27 = *(v14 + 3);
  v98 = *(v14 + 2);
  v99 = v27;
  sub_1D99BB40C(&v96, &v108);

  v28 = sub_1D99FC1B0();
  v116 = v104;
  v117 = v105;
  v118 = v106;
  v112 = v100;
  v113 = v101;
  v114 = v102;
  v115 = v103;
  v108 = v96;
  v109 = v97;
  v110 = v98;
  v111 = v99;
  *&v119 = v107;
  *(&v119 + 1) = v22;
  *&v120 = v28;
  *(&v120 + 1) = v29;
  v30 = v55;
  if (*(v55 + 56) == 5)
  {
    v49 = 1;
    goto LABEL_13;
  }

  v31 = *(v30 + *(type metadata accessor for VisualQueryContext(0) + 84));
  if (v31 > 1)
  {
    v32 = v54;
    v33 = v52;
    if (v31 != 2)
    {
      v34 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v32 = v54;
  v33 = v52;
  if (v31)
  {
LABEL_9:
    v34 = sub_1D9C7E7DC();
    goto LABEL_10;
  }

  v34 = 1;
LABEL_10:

LABEL_12:
  v22 = *(&v119 + 1);
  swift_beginAccess();
  sub_1D9B331F0(v21, v33, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v35 = sub_1D9B5E3A4(v22, v32, v34 & 1);
  sub_1D9B336AC(v33, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v49 = v35 & 1;
LABEL_13:
  v50 = v14;
  v52 = *(v22 + 16);
  if (v52)
  {
    v36 = 0;
    v37 = (v22 + 96);
    v38 = MEMORY[0x1E69E7CC0];
    v51 = v22;
    while (v36 < *(v22 + 16))
    {
      v39 = a2;
      v40 = *(v37 - 4);
      v54 = *(v37 - 3);
      v55 = v40;
      v41 = *(v37 - 4);
      v43 = *(v37 - 1);
      v42 = *v37;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1D9AFB08C(0, *(v38 + 2) + 1, 1, v38);
      }

      v45 = *(v38 + 2);
      v44 = *(v38 + 3);
      if (v45 >= v44 >> 1)
      {
        v38 = sub_1D9AFB08C((v44 > 1), v45 + 1, 1, v38);
      }

      ++v36;
      *(v38 + 2) = v45 + 1;
      v46 = &v38[56 * v45];
      v47 = v54;
      *(v46 + 2) = v55;
      *(v46 + 3) = v47;
      *(v46 + 8) = v41;
      *(v46 + 9) = v43;
      *(v46 + 10) = v42;
      v37 += 9;
      v22 = v51;
      a2 = v39;
      if (v52 == v36)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v80 = v118;
    v81 = v119;
    v82 = v120;
    v76 = v114;
    v77 = v115;
    v78 = v116;
    v79 = v117;
    v72 = v110;
    v73 = v111;
    v74 = v112;
    v75 = v113;
    v70 = v108;
    v71 = v109;
    faiss::NormalizationTransform::~NormalizationTransform(&v70);
    v66 = v79;
    v67 = v80;
    v68 = v81;
    v69 = v82;
    v64 = v77;
    v65 = v78;
    v59 = v72;
    v60 = v73;
    v62 = v75;
    v63 = v76;
    v61 = v74;
    v57 = v70;
    v58 = v71;
    *v56 = a7;
    v56[1] = v49;
    v56[2] = v38;
    sub_1D9B335C8(&v108, &v83);
    a2(&v57, v56, 0);
    sub_1D9B171FC(&v108);

    v93 = v67;
    v94 = v68;
    v95 = v69;
    v89 = v63;
    v90 = v64;
    v91 = v65;
    v92 = v66;
    v85 = v59;
    v86 = v60;
    v87 = v61;
    v88 = v62;
    v83 = v57;
    v84 = v58;
    sub_1D99A6AE0(&v83, &unk_1ECB51B60, &unk_1D9C95B00);
    sub_1D9B336AC(v50, type metadata accessor for VisualSearchResultInternal);
  }
}

id VisualIntelligenceService.answerVisualQA(image:textQuery:dawToken:regionOfInterest:domains:annotation:queryContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v54 = a8;
  v53 = a7;
  v59 = a4;
  v60 = a5;
  v55 = a2;
  v56 = a3;
  v52 = a1;
  v57 = a10;
  v58 = a11;
  v66 = sub_1D9C7DA2C();
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D9C7DA4C();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v17 = *(Context - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v63 = &v49 - v21;
  v23 = type metadata accessor for CancelSession(0);
  v24 = a6[1];
  v50 = *a6;
  v49 = v24;
  v25 = [objc_allocWithZone(v23) init];
  v26 = a9;
  VisualQueryContext.init(_:)(a9, v22);
  v27 = v11;
  v51 = v11;
  v61 = *(v11 + 24);
  sub_1D9B331F0(v22, v19, type metadata accessor for VisualQueryContext);
  v28 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v29 = (v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = a1;
  v34 = v49;
  *(v33 + 32) = v50;
  *(v33 + 48) = v34;
  v35 = v54;
  *(v33 + 64) = v53;
  *(v33 + 72) = v35;
  sub_1D9B34EF0(v19, v33 + v28, type metadata accessor for VisualQueryContext);
  *(v33 + v29) = v25;
  v36 = (v33 + v30);
  v37 = v56;
  *v36 = v55;
  v36[1] = v37;
  v38 = (v33 + v31);
  v39 = v60;
  *v38 = v59;
  v38[1] = v39;
  v40 = (v33 + v32);
  v41 = v58;
  *v40 = v57;
  v40[1] = v41;
  aBlock[4] = sub_1D9B33D90;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_47;
  v42 = _Block_copy(aBlock);
  v43 = v35;
  v44 = v25;

  swift_unknownObjectRetain();

  v45 = v62;
  sub_1D9C7DA3C();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v46 = v64;
  v47 = v66;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v45, v46, v42);
  _Block_release(v42);
  (*(v68 + 8))(v46, v47);
  (*(v65 + 8))(v45, v67);
  sub_1D9B336AC(v63, type metadata accessor for VisualQueryContext);

  return v44;
}

void sub_1D9B2BF9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  v57 = a8;
  v54 = a7;
  v59 = a6;
  v60 = a3;
  v58 = a16;
  v55 = a15;
  v56 = a14;
  v52 = a13;
  Context = type metadata accessor for VisualQueryContext(0);
  v25 = *(Context - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v50 - v29;
  v31 = a1;
  v53 = *(a1 + 96);
  swift_getObjectType();
  v32 = a2;
  sub_1D9AF6CF8(&v73);
  *&v70 = a9;
  *(&v70 + 1) = a10;
  v71 = a11;
  v72 = a12;
  v61 = a4;
  if (a4)
  {
    VIAnnotation.mappedAnnotation.getter(&v66);
    v33 = v66;
    v34 = v67;
    v35 = v68;
    v36 = v69;
  }

  else
  {
    v33 = xmmword_1D9C86A60;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
  }

  v62 = v33;
  v63 = v34;
  v64 = v35;
  v65 = v36;
  v51 = v30;
  sub_1D9B331F0(a5, v30, type metadata accessor for VisualQueryContext);
  (*(v25 + 56))(v30, 0, 1, Context);
  sub_1D9B331F0(a5, &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualQueryContext);
  v37 = (*(v25 + 80) + 72) & ~*(v25 + 80);
  v38 = (v26 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = v31;
  v39[3] = v32;
  v40 = v57;
  v39[4] = v54;
  v39[5] = v40;
  v41 = v56;
  v39[6] = v52;
  v39[7] = v41;
  v39[8] = v61;
  sub_1D9B34EF0(v27, v39 + v37, type metadata accessor for VisualQueryContext);
  v42 = v59;
  *(v39 + v38) = v59;
  v43 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  v44 = v58;
  *v43 = v55;
  v43[1] = v44;
  v45 = v74;
  v46 = v75;
  v55 = __swift_project_boxed_opaque_existential_1(&v73, v74);

  swift_unknownObjectRetain();

  v47 = v61;
  v48 = v42;

  v49 = v51;
  sub_1D9B141C0(v55, &v70, v60, &v62, v51, v48, 5, 0, 0, sub_1D9B34F60, v39, v53, v45, v46);

  sub_1D99A6AE0(v49, &unk_1ECB51B10, &qword_1D9C86550);
  v66 = v62;
  v67 = v63;
  v68 = v64;
  v69 = v65;
  sub_1D99A6AE0(&v66, &qword_1ECB514D0, &unk_1D9C86490);
  __swift_destroy_boxed_opaque_existential_0Tm(&v73);
}

uint64_t sub_1D9B2C3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, void (*a11)(__int128 *), uint64_t a12)
{
  v104 = a5;
  v105 = a7;
  v102 = a4;
  v103 = a6;
  v98 = a3;
  v100 = a2;
  v115 = a11;
  v14 = sub_1D9C7DA2C();
  v110 = *(v14 - 8);
  v111 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v108 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D9C7DA4C();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v99 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v113 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v114 = v94 - v20;
  v21 = sub_1D9C7D8DC();
  v96 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v94 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v97 = *(v30 - 8);
  v31 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v112 = v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v116 = v94 - v33;
  if (a8)
  {
    VIAnnotation.mappedAnnotation.getter(v164);
  }

  else
  {
    memset(v164 + 8, 0, 56);
    *&v164[0] = 1;
  }

  v34 = v116;
  sub_1D9B331F0(a9, v116, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext(0);
  (*(*(Context - 8) + 56))(v34, 0, 1, Context);
  sub_1D99AB100(a1, v29, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v131 = *v29;
    v36 = v131;
    sub_1D9A0EF14(&v131);
    v127 = v141;
    v128 = v142;
    v129 = v143;
    v130 = v144;
    v123 = v137;
    v124 = v138;
    v125 = v139;
    v126 = v140;
    v119 = v133;
    v120 = v134;
    v121 = v135;
    v122 = v136;
    v117 = v131;
    v118 = v132;
    v37 = v36;
    v115(&v117);

    sub_1D99A6AE0(v164, &qword_1ECB514D0, &unk_1D9C86490);
    sub_1D99A6AE0(v34, &unk_1ECB51B10, &qword_1D9C86550);
    v155 = v127;
    v156 = v128;
    v157 = v129;
    v158 = v130;
    v151 = v123;
    v152 = v124;
    v153 = v125;
    v154 = v126;
    v147 = v119;
    v148 = v120;
    v149 = v121;
    v150 = v122;
    v145 = v117;
    v146 = v118;
    return sub_1D99A6AE0(&v145, &qword_1ECB51B40, &unk_1D9C95AF0);
  }

  else
  {
    sub_1D9B34EF0(v29, v26, type metadata accessor for ParseResult);
    v39 = *&a10[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
    os_unfair_lock_lock(v39 + 4);
    v40 = a10[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
    os_unfair_lock_unlock(v39 + 4);
    if (v40)
    {
      static Logger.argos.getter(v23);
      v41 = sub_1D9C7D8BC();
      v42 = sub_1D9C7E09C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1D9962000, v41, v42, "answerVisualQACompletion(): canceled", v43, 2u);
        MEMORY[0x1DA7405F0](v43, -1, -1);
      }

      (*(v96 + 8))(v23, v21);
      sub_1D9A0EEC0();
      v44 = swift_allocError();
      *v45 = 0;
      *&v131 = v44;
      sub_1D9A0EF14(&v131);
      v127 = v141;
      v128 = v142;
      v129 = v143;
      v130 = v144;
      v123 = v137;
      v124 = v138;
      v125 = v139;
      v126 = v140;
      v119 = v133;
      v120 = v134;
      v121 = v135;
      v122 = v136;
      v117 = v131;
      v118 = v132;
      v115(&v117);
      sub_1D99A6AE0(v164, &qword_1ECB514D0, &unk_1D9C86490);
      sub_1D99A6AE0(v34, &unk_1ECB51B10, &qword_1D9C86550);
      v155 = v127;
      v156 = v128;
      v157 = v129;
      v158 = v130;
      v151 = v123;
      v152 = v124;
      v153 = v125;
      v154 = v126;
      v147 = v119;
      v148 = v120;
      v149 = v121;
      v150 = v122;
      v145 = v117;
      v146 = v118;
      sub_1D99A6AE0(&v145, &qword_1ECB51B40, &unk_1D9C95AF0);
    }

    else
    {
      v95 = a10;
      v46 = *(v26 + 9);
      v47 = *(v26 + 7);
      v139 = *(v26 + 8);
      v140 = v46;
      v48 = *(v26 + 9);
      v141 = *(v26 + 10);
      v49 = *(v26 + 5);
      v50 = *(v26 + 3);
      v135 = *(v26 + 4);
      v136 = v49;
      v51 = *(v26 + 5);
      v52 = *(v26 + 7);
      v137 = *(v26 + 6);
      v138 = v52;
      v53 = *(v26 + 1);
      v131 = *v26;
      v132 = v53;
      v54 = *(v26 + 3);
      v56 = *v26;
      v55 = *(v26 + 1);
      v133 = *(v26 + 2);
      v134 = v54;
      v153 = v139;
      v154 = v48;
      v155 = *(v26 + 10);
      v149 = v135;
      v150 = v51;
      v151 = v137;
      v152 = v47;
      v145 = v56;
      v146 = v55;
      *&v142 = *(v26 + 22);
      *&v156 = *(v26 + 22);
      v147 = v133;
      v148 = v50;
      VisualUnderstanding.imageRegions.getter();
      v58 = v57;
      v117 = v164[0];
      v118 = v164[1];
      v119 = v164[2];
      v120 = v164[3];
      sub_1D9C7B59C();
      swift_allocObject();
      sub_1D99AB100(v164, &v145, &qword_1ECB514D0, &unk_1D9C86490);
      sub_1D9C7B58C();
      v153 = v139;
      v154 = v140;
      v155 = v141;
      *&v156 = v142;
      v149 = v135;
      v150 = v136;
      v151 = v137;
      v152 = v138;
      v145 = v131;
      v146 = v132;
      v147 = v133;
      v148 = v134;
      sub_1D9A0EBFC();
      v59 = sub_1D9C7B57C();
      v61 = v60;

      VisualUnderstanding.init(_:annotation:payload:)(v58, &v117, v59, v61, &v145);
      v94[0] = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
      v62 = v100;
      v63 = v114;
      sub_1D9B331F0(v100 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v114, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      v64 = v116;
      sub_1D9A3D06C(v116);
      v65 = *(v62 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
      swift_getObjectType();
      sub_1D9AF6CF8(v161);
      v66 = swift_allocObject();
      v98 = v66;
      v67 = v115;
      *(v66 + 2) = v62;
      *(v66 + 3) = v67;
      *(v66 + 4) = a12;
      type metadata accessor for MetricsBucket();
      v68 = swift_allocObject();
      *(v68 + 16) = MEMORY[0x1E69E7CC0];
      strcpy(v162, "E2E - Search");
      BYTE5(v162[1]) = 0;
      HIWORD(v162[1]) = -5120;
      v162[2] = "Search Overall";
      v162[3] = 14;
      v163 = 2;
      type metadata accessor for DurationMeasurement(0);
      swift_allocObject();

      v96 = v68;
      v100 = sub_1D9AFD4B8(v162, v68);

      v94[1] = *(v65 + 56);
      v115 = swift_allocObject();
      swift_weakInit();
      sub_1D99A17C8(v161, v160);
      sub_1D99AB100(v64, v112, &unk_1ECB51B10, &qword_1D9C86550);
      sub_1D9B331F0(v63, v113, v94[0]);
      v69 = (*(v97 + 80) + 248) & ~*(v97 + 80);
      v70 = (v31 + *(v99 + 80) + v69) & ~*(v99 + 80);
      v71 = (v101 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
      v101 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
      v99 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v76 = v154;
      *(v75 + 152) = v153;
      *(v75 + 168) = v76;
      *(v75 + 184) = v155;
      v77 = v150;
      *(v75 + 88) = v149;
      *(v75 + 104) = v77;
      v78 = v152;
      *(v75 + 120) = v151;
      *(v75 + 136) = v78;
      v79 = v146;
      *(v75 + 24) = v145;
      *(v75 + 40) = v79;
      v80 = v148;
      *(v75 + 56) = v147;
      *(v75 + 16) = v115;
      *(v75 + 200) = v156;
      *(v75 + 72) = v80;
      sub_1D9979B9C(v160, v75 + 208);
      sub_1D9A0E758(v112, v75 + v69);
      sub_1D9B34EF0(v113, v75 + v70, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      v81 = (v75 + v71);
      v82 = v103;
      v84 = v104;
      v83 = v105;
      *v81 = v102;
      v81[1] = v84;
      v85 = (v75 + v72);
      *v85 = v82;
      v85[1] = v83;
      *(v75 + v101) = v100;
      v86 = v95;
      *(v75 + v73) = v95;
      *(v75 + v99) = v96;
      v87 = (v75 + v74);
      v88 = v98;
      *v87 = sub_1D9B35020;
      v87[1] = v88;
      v159[4] = sub_1D9B3503C;
      v159[5] = v75;
      v159[0] = MEMORY[0x1E69E9820];
      v159[1] = 1107296256;
      v159[2] = sub_1D9A0A1E0;
      v159[3] = &block_descriptor_143;
      v113 = _Block_copy(v159);

      sub_1D99BB40C(&v145, &v117);

      v89 = v86;

      v90 = v106;
      sub_1D9C7DA3C();
      *&v117 = MEMORY[0x1E69E7CC0];
      sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
      sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
      v91 = v108;
      v92 = v111;
      sub_1D9C7E34C();
      v93 = v113;
      MEMORY[0x1DA73E300](0, v90, v91, v113);
      _Block_release(v93);

      sub_1D9A0009C(&v145);

      sub_1D99A6AE0(v164, &qword_1ECB514D0, &unk_1D9C86490);
      (*(v110 + 8))(v91, v92);
      (*(v107 + 8))(v90, v109);
      __swift_destroy_boxed_opaque_existential_0Tm(v161);
      sub_1D9B336AC(v114, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D99A6AE0(v116, &unk_1ECB51B10, &qword_1D9C86550);
    }

    return sub_1D9B336AC(v26, type metadata accessor for ParseResult);
  }
}

id VisualIntelligenceService.parseAndEncryptedSearch(image:regionOfInterest:domains:annotation:queryContext:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v76 = a4;
  v77 = a7;
  v74 = a6;
  v79 = a1;
  v78 = sub_1D9C7DA2C();
  v83 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D9C7DA4C();
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Context = type metadata accessor for VisualQueryContext(0);
  v16 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context - 8);
  v72 = v17;
  v73 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v64[-v19];
  v20 = sub_1D9C7D8DC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64[-v25];
  v27 = *a2;
  v70 = a2[1];
  v71 = v27;
  static Logger.argos.getter(&v64[-v25]);
  sub_1D9A3E0E0(v23);
  v28 = *(v21 + 8);
  v28(v26, v20);

  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();
  v31 = os_log_type_enabled(v29, v30);
  v69 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v68 = a5;
    v33 = v32;
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v33 = 134218242;
    *(v33 + 4) = *(a3 + 16);

    *(v33 + 12) = 2080;
    v65 = v30;
    sub_1D99E3A84(a3);
    v34 = v8;
    v35 = MEMORY[0x1DA73E110]();
    v66 = v28;
    v36 = v20;
    v37 = v16;
    v39 = v38;

    v40 = v35;
    v8 = v34;
    v41 = sub_1D9A0E224(v40, v39, aBlock);
    v16 = v37;

    *(v33 + 14) = v41;
    _os_log_impl(&dword_1D9962000, v29, v65, "Parse and search domain count %ld, domains: %s", v33, 0x16u);
    v42 = v67;
    v43 = __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x1DA7405F0](v42, -1, -1, v43);
    v44 = v33;
    a5 = v68;
    MEMORY[0x1DA7405F0](v44, -1, -1);

    v66(v23, v36);
  }

  else
  {

    v28(v23, v20);
  }

  v45 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v46 = a5;
  v47 = v84;
  VisualQueryContext.init(_:)(a5, v84);
  v68 = *(v8 + 24);
  v48 = v73;
  sub_1D9B331F0(v47, v73, type metadata accessor for VisualQueryContext);
  v49 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v50 = (v72 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v79;
  *(v51 + 16) = v8;
  *(v51 + 24) = v52;
  v53 = v70;
  *(v51 + 32) = v71;
  *(v51 + 48) = v53;
  v54 = v76;
  *(v51 + 64) = v69;
  *(v51 + 72) = v54;
  sub_1D9B34EF0(v48, v51 + v49, type metadata accessor for VisualQueryContext);
  *(v51 + v50) = v45;
  v55 = (v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8));
  v56 = v77;
  *v55 = v74;
  v55[1] = v56;
  aBlock[4] = sub_1D9B33E60;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_53;
  v57 = _Block_copy(aBlock);
  v58 = v54;
  v59 = v45;

  swift_unknownObjectRetain();
  v60 = v80;
  sub_1D9C7DA3C();
  v85 = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v61 = v75;
  v62 = v78;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v60, v61, v57);
  _Block_release(v57);
  (*(v83 + 8))(v61, v62);
  (*(v81 + 8))(v60, v82);
  sub_1D9B336AC(v84, type metadata accessor for VisualQueryContext);

  return v59;
}

void sub_1D9B2D90C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v47 = a8;
  v45 = a7;
  v46 = a6;
  v48 = a3;
  Context = type metadata accessor for VisualQueryContext(0);
  v21 = *(Context - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v43 - v24;
  v44 = *(a1 + 96);
  swift_getObjectType();
  sub_1D9AF6CF8(v60);
  *&v57 = a9;
  *(&v57 + 1) = a10;
  v58 = a11;
  v59 = a12;
  if (a4)
  {
    VIAnnotation.mappedAnnotation.getter(&v53);
    v26 = v53;
    v27 = v54;
    v28 = v55;
    v29 = v56;
  }

  else
  {
    v26 = xmmword_1D9C86A60;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
  }

  v49 = v26;
  v50 = v27;
  v51 = v28;
  v52 = v29;
  sub_1D9B331F0(a5, v25, type metadata accessor for VisualQueryContext);
  (*(v21 + 56))(v25, 0, 1, Context);
  sub_1D9B331F0(a5, &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualQueryContext);
  v30 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v31 = (v22 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v32[4] = a4;
  sub_1D9B34EF0(&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v30, type metadata accessor for VisualQueryContext);
  v43 = v25;
  v33 = v46;
  *(v32 + v31) = v46;
  v34 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v47;
  *v34 = v45;
  v34[1] = v35;
  v36 = v61;
  v37 = v62;
  v38 = __swift_project_boxed_opaque_existential_1(v60, v61);

  swift_unknownObjectRetain();
  v39 = a4;
  v40 = v33;

  v42 = v36;
  v41 = v43;
  sub_1D9B141C0(v38, &v57, v48, &v49, v43, v40, 1, 0, 0, sub_1D9B34814, v32, v44, v42, v37);

  sub_1D99A6AE0(v41, &unk_1ECB51B10, &qword_1D9C86550);
  v53 = v49;
  v54 = v50;
  v55 = v51;
  v56 = v52;
  sub_1D99A6AE0(&v53, &qword_1ECB514D0, &unk_1D9C86490);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
}

uint64_t sub_1D9B2DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(__int128 *), uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v20 - v16;
  sub_1D9B331F0(a5, &v20 - v16, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext(0);
  (*(*(Context - 8) + 56))(v17, 0, 1, Context);
  sub_1D9B2DE08(a3, a4, v17, a6, a1, a7, a8);
  return sub_1D99A6AE0(v17, &unk_1ECB51B10, &qword_1D9C86550);
}

uint64_t sub_1D9B2DE08(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v154 = a3;
  v158 = a6;
  v159 = a7;
  v157 = a5;
  v153 = a2;
  v149 = a1;
  v8 = sub_1D9C7DA2C();
  v146 = *(v8 - 8);
  v147 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v143 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7DA4C();
  v144 = *(v10 - 8);
  v145 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v142 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v139 = *(v12 - 8);
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v148 = &v135 - v13;
  v14 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v150 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v137 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v141 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v156 = &v135 - v19;
  v20 = sub_1D9C7D8DC();
  v152 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v135 - v27);
  sub_1D99AB100(v157, &v135 - v27, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v175 = *v28;
    v29 = v175;
    sub_1D9A0EF14(&v175);
    v171 = v185;
    v172 = v186;
    v173 = v187;
    v174 = v188;
    v167 = v181;
    v168 = v182;
    v169 = v183;
    v170 = v184;
    v163 = v177;
    v164 = v178;
    v165 = v179;
    v166 = v180;
    v161 = v175;
    v162 = v176;
    v30 = v29;
    v158(&v161);

    v199 = v171;
    v200 = v172;
    v201 = v173;
    v202 = v174;
    v195 = v167;
    v196 = v168;
    v197 = v169;
    v198 = v170;
    v191 = v163;
    v192 = v164;
    v193 = v165;
    v194 = v166;
    v189 = v161;
    v190 = v162;
    return sub_1D99A6AE0(&v189, &qword_1ECB51B40, &unk_1D9C95AF0);
  }

  sub_1D9B34EF0(v28, v25, type metadata accessor for ParseResult);
  v32 = *&a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v32 + 4);
  v33 = a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v32 + 4);
  if (v33 != 1)
  {
    v41 = *(v25 + 9);
    v42 = *(v25 + 7);
    v211 = *(v25 + 8);
    v212 = v41;
    v43 = *(v25 + 9);
    v213 = *(v25 + 10);
    v44 = *(v25 + 5);
    v45 = *(v25 + 3);
    v207 = *(v25 + 4);
    v208 = v44;
    v46 = *(v25 + 5);
    v47 = *(v25 + 7);
    v209 = *(v25 + 6);
    v210 = v47;
    v48 = *(v25 + 1);
    v203 = *v25;
    v204 = v48;
    v49 = *(v25 + 3);
    v51 = *v25;
    v50 = *(v25 + 1);
    v205 = *(v25 + 2);
    v206 = v49;
    v197 = v211;
    v198 = v43;
    v199 = *(v25 + 10);
    v193 = v207;
    v194 = v46;
    v195 = v209;
    v196 = v42;
    v189 = v51;
    v190 = v50;
    v214 = *(v25 + 22);
    *&v200 = *(v25 + 22);
    v191 = v205;
    v192 = v45;
    VisualUnderstanding.imageRegions.getter();
    v53 = v52;
    v136 = a4;
    if (v153)
    {
      VIAnnotation.mappedAnnotation.getter(&v189);
      v54 = v189;
      v55 = v190;
      v56 = v191;
      v57 = v192;
    }

    else
    {
      v54 = xmmword_1D9C86A60;
      v55 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
    }

    v58 = v156;
    v59 = v154;
    v175 = v54;
    v176 = v55;
    v177 = v56;
    v178 = v57;
    sub_1D9C7B59C();
    swift_allocObject();
    sub_1D9C7B58C();
    v197 = v211;
    v198 = v212;
    v199 = v213;
    *&v200 = v214;
    v193 = v207;
    v194 = v208;
    v195 = v209;
    v196 = v210;
    v189 = v203;
    v190 = v204;
    v191 = v205;
    v192 = v206;
    sub_1D9A0EBFC();
    v60 = sub_1D9C7B57C();
    v62 = v61;

    VisualUnderstanding.init(_:annotation:payload:)(v53, &v175, v60, v62, &v215);
    sub_1D9B331F0(v155 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v58, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9A3D06C(v59);
    v197 = v223;
    v198 = v224;
    v199 = v225;
    *&v200 = v226;
    v193 = v219;
    v194 = v220;
    v195 = v221;
    v196 = v222;
    v189 = v215;
    v190 = v216;
    v191 = v217;
    v192 = v218;
    VisualUnderstanding.imageRegions.getter();
    if (*(v63 + 16) && (v64 = v151, sub_1D9B331F0(v63 + ((*(v150 + 80) + 32) & ~*(v150 + 80)), v151, type metadata accessor for VisualUnderstanding.ImageRegion), , VisualUnderstanding.ImageRegion.domainInfo.getter(), v66 = v65, sub_1D9B336AC(v64, type metadata accessor for VisualUnderstanding.ImageRegion), *(v66 + 16)))
    {
      v67 = *(v66 + 32);

      LOBYTE(v175) = v67;
      v68 = VisualDomain.mappedDomainKey.getter();
      v70 = v69;
      v71 = sub_1D9C7DC7C();
      if (v70)
      {
        v135 = v25;
        if (v68 == v71 && v70 == v72)
        {

LABEL_25:

          v89 = *(v155 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
          swift_getObjectType();
          sub_1D9AF6CF8(&v161);
          v90 = swift_allocObject();
          v157 = v90;
          v91 = v159;
          *(v90 + 16) = v158;
          *(v90 + 24) = v91;
          strcpy(v227, "E2E - Search");
          BYTE5(v227[1]) = 0;
          HIWORD(v227[1]) = -5120;
          v228 = "Search Overall";
          v229 = 14;
          v230 = 2;
          type metadata accessor for DurationMeasurement(0);
          swift_allocObject();

          v92 = sub_1D9AFD4B8(v227, 0);
          v158 = *(v89 + 56);
          v159 = v92;
          v93 = swift_allocObject();
          swift_weakInit();
          sub_1D99A17C8(&v161, v160);
          sub_1D99AB100(v59, v148, &unk_1ECB51B10, &qword_1D9C86550);
          v94 = v141;
          sub_1D9B331F0(v58, v141, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          v95 = (*(v139 + 80) + 248) & ~*(v139 + 80);
          v96 = (v140 + *(v137 + 80) + v95) & ~*(v137 + 80);
          v97 = (v138 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
          v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
          v99 = swift_allocObject();
          v100 = v224;
          *(v99 + 152) = v223;
          *(v99 + 168) = v100;
          *(v99 + 184) = v225;
          v101 = v220;
          *(v99 + 88) = v219;
          *(v99 + 104) = v101;
          v102 = v222;
          *(v99 + 120) = v221;
          *(v99 + 136) = v102;
          v103 = v216;
          *(v99 + 24) = v215;
          *(v99 + 40) = v103;
          v104 = v218;
          *(v99 + 56) = v217;
          v155 = v93;
          *(v99 + 16) = v93;
          *(v99 + 200) = v226;
          *(v99 + 72) = v104;
          sub_1D9979B9C(v160, v99 + 208);
          sub_1D9A0E758(v148, v99 + v95);
          sub_1D9B34EF0(v94, v99 + v96, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          *(v99 + v97) = v159;
          v105 = v136;
          *(v99 + v98) = v136;
          v106 = (v99 + ((v98 + 15) & 0xFFFFFFFFFFFFFFF8));
          v107 = v157;
          *v106 = sub_1D9B3521C;
          v106[1] = v107;
          *&v177 = sub_1D9B34DA4;
          *(&v177 + 1) = v99;
          *&v175 = MEMORY[0x1E69E9820];
          *(&v175 + 1) = 1107296256;
          *&v176 = sub_1D9A0A1E0;
          *(&v176 + 1) = &block_descriptor_130;
          v108 = _Block_copy(&v175);

          sub_1D99BB40C(&v215, &v189);

          v109 = v105;
LABEL_26:

          v110 = v142;
          sub_1D9C7DA3C();
          *&v189 = MEMORY[0x1E69E7CC0];
          sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
          sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
          v111 = v143;
          v112 = v147;
          sub_1D9C7E34C();
          MEMORY[0x1DA73E300](0, v110, v111, v108);
          _Block_release(v108);

          sub_1D9A0009C(&v215);

          (*(v146 + 8))(v111, v112);
          (*(v144 + 8))(v110, v145);
          __swift_destroy_boxed_opaque_existential_0Tm(&v161);
          sub_1D9B336AC(v156, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);

          v87 = v135;
          return sub_1D9B336AC(v87, type metadata accessor for ParseResult);
        }

        v88 = sub_1D9C7E7DC();

        if (v88)
        {
          goto LABEL_25;
        }

        if (v68 == sub_1D9C7DC7C() && v70 == v113)
        {

LABEL_31:

          v115 = *(v155 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
          swift_getObjectType();
          sub_1D9AF6CF8(&v161);
          v116 = swift_allocObject();
          v157 = v116;
          v117 = v159;
          *(v116 + 16) = v158;
          *(v116 + 24) = v117;
          strcpy(v227, "E2E - Search");
          BYTE5(v227[1]) = 0;
          HIWORD(v227[1]) = -5120;
          v228 = "Search Overall";
          v229 = 14;
          v230 = 2;
          type metadata accessor for DurationMeasurement(0);
          swift_allocObject();

          v118 = sub_1D9AFD4B8(v227, 0);
          v158 = *(v115 + 56);
          v159 = v118;
          v119 = swift_allocObject();
          swift_weakInit();
          sub_1D99A17C8(&v161, v160);
          sub_1D99AB100(v59, v148, &unk_1ECB51B10, &qword_1D9C86550);
          v120 = v141;
          sub_1D9B331F0(v58, v141, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          v121 = (*(v139 + 80) + 248) & ~*(v139 + 80);
          v122 = (v140 + *(v137 + 80) + v121) & ~*(v137 + 80);
          v123 = (v138 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
          v124 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
          v125 = swift_allocObject();
          v126 = v224;
          *(v125 + 152) = v223;
          *(v125 + 168) = v126;
          *(v125 + 184) = v225;
          v127 = v220;
          *(v125 + 88) = v219;
          *(v125 + 104) = v127;
          v128 = v222;
          *(v125 + 120) = v221;
          *(v125 + 136) = v128;
          v129 = v216;
          *(v125 + 24) = v215;
          *(v125 + 40) = v129;
          v130 = v218;
          *(v125 + 56) = v217;
          v155 = v119;
          *(v125 + 16) = v119;
          *(v125 + 200) = v226;
          *(v125 + 72) = v130;
          sub_1D9979B9C(v160, v125 + 208);
          sub_1D9A0E758(v148, v125 + v121);
          sub_1D9B34EF0(v120, v125 + v122, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          *(v125 + v123) = v159;
          v131 = v136;
          *(v125 + v124) = v136;
          v132 = (v125 + ((v124 + 15) & 0xFFFFFFFFFFFFFFF8));
          v133 = v157;
          *v132 = sub_1D9B348F0;
          v132[1] = v133;
          *&v177 = sub_1D9B3490C;
          *(&v177 + 1) = v125;
          *&v175 = MEMORY[0x1E69E9820];
          *(&v175 + 1) = 1107296256;
          *&v176 = sub_1D9A0A1E0;
          *(&v176 + 1) = &block_descriptor_120;
          v108 = _Block_copy(&v175);
          sub_1D99BB40C(&v215, &v189);
          v134 = v131;

          goto LABEL_26;
        }

        v114 = sub_1D9C7E7DC();

        if (v114)
        {
          goto LABEL_31;
        }

LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53560, &qword_1D9C95AE8);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1D9C8CDB0;
        *(v73 + 32) = sub_1D9C7DC7C();
        *(v73 + 40) = v74;
        *(v73 + 48) = sub_1D9C7DC7C();
        *(v73 + 56) = v75;
        *(v73 + 64) = sub_1D9C7DC7C();
        *(v73 + 72) = v76;
        *(v73 + 80) = sub_1D9C7DC7C();
        *(v73 + 88) = v77;
        *(v73 + 96) = sub_1D9C7DC7C();
        *(v73 + 104) = v78;
        *(v73 + 112) = sub_1D9C7DC7C();
        *(v73 + 120) = v79;
        *(v73 + 128) = sub_1D9C7DC7C();
        *(v73 + 136) = v80;
        v81 = sub_1D9C7DC7C();
        *(v73 + 144) = v81;
        *(v73 + 152) = v82;
        *&v189 = v68;
        *(&v189 + 1) = v70;
        MEMORY[0x1EEE9AC00](v81);
        *(&v135 - 2) = &v189;
        v83 = sub_1D9BC1A0C(sub_1D9B348C8, (&v135 - 4), v73);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0, &qword_1D9C87610);
        swift_arrayDestroy();
        swift_deallocClassInstance();

        if (v83)
        {
          swift_getObjectType();
          sub_1D9AF6CF8(&v175);
          v197 = v223;
          v198 = v224;
          v199 = v225;
          *&v200 = v226;
          v193 = v219;
          v194 = v220;
          v195 = v221;
          v196 = v222;
          v189 = v215;
          v190 = v216;
          v191 = v217;
          v192 = v218;
          v84 = swift_allocObject();
          *(v84 + 16) = v158;
          *(v84 + 24) = v159;

          sub_1D9B15408(&v189, v58, sub_1D9B348E8, v84);

          __swift_destroy_boxed_opaque_existential_0Tm(&v175);
          sub_1D9B336AC(v58, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          sub_1D9B336AC(v25, type metadata accessor for ParseResult);
          return sub_1D9A0009C(&v215);
        }

        sub_1D9A0009C(&v215);
        sub_1D9A0EEC0();
        v85 = swift_allocError();
        *v86 = 3;
        *&v175 = v85;
        sub_1D9A0EF14(&v175);
        v171 = v185;
        v172 = v186;
        v173 = v187;
        v174 = v188;
        v167 = v181;
        v168 = v182;
        v169 = v183;
        v170 = v184;
        v163 = v177;
        v164 = v178;
        v165 = v179;
        v166 = v180;
        v161 = v175;
        v162 = v176;
        v158(&v161);
        v199 = v171;
        v200 = v172;
        v201 = v173;
        v202 = v174;
        v195 = v167;
        v196 = v168;
        v197 = v169;
        v198 = v170;
        v191 = v163;
        v192 = v164;
        v193 = v165;
        v194 = v166;
        v189 = v161;
        v190 = v162;
        sub_1D99A6AE0(&v189, &qword_1ECB51B40, &unk_1D9C95AF0);
        sub_1D9B336AC(v58, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
        goto LABEL_21;
      }
    }

    else
    {

      sub_1D9C7DC7C();
      v68 = 0;
    }

    sub_1D9C7DC7C();

    v70 = 0;
    goto LABEL_18;
  }

  static Logger.argos.getter(v22);
  v34 = sub_1D9C7D8BC();
  v35 = sub_1D9C7E09C();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v158;
  if (v36)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D9962000, v34, v35, "parseAndSearchCompletion(): canceled", v38, 2u);
    MEMORY[0x1DA7405F0](v38, -1, -1);
  }

  (*(v152 + 8))(v22, v20);
  sub_1D9A0EEC0();
  v39 = swift_allocError();
  *v40 = 0;
  *&v175 = v39;
  sub_1D9A0EF14(&v175);
  v171 = v185;
  v172 = v186;
  v173 = v187;
  v174 = v188;
  v167 = v181;
  v168 = v182;
  v169 = v183;
  v170 = v184;
  v163 = v177;
  v164 = v178;
  v165 = v179;
  v166 = v180;
  v161 = v175;
  v162 = v176;
  v37(&v161);
  v199 = v171;
  v200 = v172;
  v201 = v173;
  v202 = v174;
  v195 = v167;
  v196 = v168;
  v197 = v169;
  v198 = v170;
  v191 = v163;
  v192 = v164;
  v193 = v165;
  v194 = v166;
  v189 = v161;
  v190 = v162;
  sub_1D99A6AE0(&v189, &qword_1ECB51B40, &unk_1D9C95AF0);
LABEL_21:
  v87 = v25;
  return sub_1D9B336AC(v87, type metadata accessor for ParseResult);
}