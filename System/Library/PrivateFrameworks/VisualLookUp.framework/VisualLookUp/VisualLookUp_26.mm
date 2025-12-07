void sub_1D9B8F8F8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_1D9C7E79C();
  if (v5 >= v4)
  {
    if (v4 < 0)
    {
      goto LABEL_32;
    }

    if (v4 <= 1)
    {
LABEL_7:

      return;
    }

    v9 = *a1;

    v10 = -1;
    v11 = 1;
    v12 = v9;
LABEL_12:
    v13 = *(v9 + 8 * v11);
    v14 = v10;
    v15 = v12;
    while ((v13 & 0x8000000000000000) == 0)
    {
      v16 = *(a2 + 16);
      v17 = *(v16 + 16);
      if (v13 >= v17)
      {
        goto LABEL_27;
      }

      v18 = *(a2 + 24);
      v19 = *(v18 + 16);
      if (v13 >= v19)
      {
        goto LABEL_28;
      }

      v20 = *v15;
      if (*v15 >= v17)
      {
        goto LABEL_29;
      }

      if (v20 >= v19)
      {
        goto LABEL_30;
      }

      v21 = v16 + 32;
      v22 = *(v21 + 8 * v13);
      v23 = *(v21 + 8 * v20);
      v24 = *(v18 + 32 + 8 * v13) < *(v18 + 32 + 8 * v20);
      v25 = v22 == v23;
      v26 = v22 < v23;
      if (v25)
      {
        v26 = v24;
      }

      if (v26)
      {
        if (!v9)
        {
          goto LABEL_33;
        }

        *v15 = v13;
        v15[1] = v20;
        --v15;
        if (!__CFADD__(v14++, 1))
        {
          continue;
        }
      }

      ++v11;
      ++v12;
      --v10;
      if (v11 == v4)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
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
  }

  else if (v4 >= -1)
  {
    v6 = v5;
    v7 = v4 / 2;
    if (v4 <= 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v8 = sub_1D9C7DF5C();
      *(v8 + 16) = v7;
    }

    v28[0] = (v8 + 32);
    v28[1] = v7;

    sub_1D9B8F260(v28, v29, a1, v6, a2);

    *(v8 + 16) = 0;

    return;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1D9B8FAF8(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D9B1A6C0(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1D9B8F8F8(v7, a2);

  *a1 = v4;
}

uint64_t sub_1D9B8FBA0(double *a1, double *a2, char a3, double a4, double a5, double a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  *&v84 = *a1;
  *(&v84 + 1) = v9;
  v85 = v10;
  *&v82 = v11;
  *(&v82 + 1) = v12;
  v83 = v13;
  v14 = S2Point.angle(to:)(*&a4);
  if (qword_1ECB50910 != -1)
  {
    swift_once();
  }

  v84 = xmmword_1ECB51428;
  v15 = &v84;
  v16 = S2.Metric.getMaxLevel(value:)(v14 * 1.02);
  v17 = v16;
  if (a3)
  {
    if (v16 == 30)
    {
      v18 = 0x40000000000000;
      goto LABEL_8;
    }

    v46 = (v11 - v8) * 0.01;
    v47 = (v12 - v9) * 0.01;
    v48 = (v13 - v10) * 0.01;
    v49 = v14 * 0.01;
    v50 = v10 * v47 - v9 * v48;
    v51 = v8 * v48 - v10 * v46;
    v52 = v9 * v46 - v8 * v47;
    v53 = sqrt(v52 * v52 + v50 * v50 + v51 * v51);
    if (v53 != 0.0)
    {
      v53 = 1.0 / v53;
    }

    v54 = v49 * (v50 * v53);
    v55 = v49 * (v51 * v53);
    v56 = v49 * (v52 * v53);
    v57 = v8 - v46;
    v58 = v9 - v47;
    v59 = v10 - v48;
    v77 = v12;
    v78 = v11;
    v60 = v11 + v46;
    v61 = v12 + v47;
    v76 = v13;
    v62 = v13 + v48;
    v63 = v57 + v54;
    v64 = v58 + v55;
    v65 = v59 + v56;
    v66 = v60 - v54;
    v67 = v61 - v55;
    v74 = v61 + v55;
    v75 = v60 + v54;
    v72 = v62 - v56;
    v73 = v62 + v56;
    *&v84 = v57 - v54;
    *(&v84 + 1) = v58 - v55;
    v85 = v59 - v56;
    S2CellId.init(point:)(&v84, &v82);
    *&v84 = v63;
    *(&v84 + 1) = v64;
    v85 = v65;
    S2CellId.init(point:)(&v84, &v81);
    *&v84 = v66;
    *(&v84 + 1) = v67;
    v85 = v72;
    S2CellId.init(point:)(&v84, &v80);
    *&v84 = v75;
    *(&v84 + 1) = v74;
    v85 = v73;
    S2CellId.init(point:)(&v84, &v79);
    v20 = v81;
    v18 = v82;
    v68 = v82 >> 61;
    if (v82 >> 61 == v81 >> 61)
    {
      v69 = v80;
      v12 = v77;
      v11 = v78;
      v13 = v76;
      if (v68 == v80 >> 61 && (v70 = v79, v68 == v79 >> 61))
      {
        if (v82 != v81)
        {
          goto LABEL_40;
        }

LABEL_38:
        if (v18 != v69 || v18 != v70)
        {
LABEL_40:
          while (!__OFSUB__(0, v18))
          {
            if (__OFSUB__(0, 4 * (-v18 & v18)))
            {
              goto LABEL_54;
            }

            if (__OFSUB__(0, v20))
            {
              goto LABEL_55;
            }

            if (__OFSUB__(0, 4 * (-v20 & v20)))
            {
              goto LABEL_56;
            }

            if (__OFSUB__(0, v69))
            {
              goto LABEL_57;
            }

            if (__OFSUB__(0, 4 * (-v69 & v69)))
            {
              goto LABEL_58;
            }

            if (__OFSUB__(0, v70))
            {
              goto LABEL_59;
            }

            v71 = 4 * (-v70 & v70);
            if (__OFSUB__(0, v71))
            {
              goto LABEL_60;
            }

            v18 = (-4 * (-v18 & v18)) & v18 | (4 * (-v18 & v18));
            v20 = (-4 * (-v20 & v20)) & v20 | (4 * (-v20 & v20));
            v69 = (-4 * (-v69 & v69)) & v69 | (4 * (-v69 & v69));
            v70 = (-4 * (-v70 & v70)) & v70 | v71;
            if (v18 == v20)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_53;
        }
      }

      else
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v12 = v77;
      v11 = v78;
      v13 = v76;
    }
  }

  else
  {
    type metadata accessor for S2EdgeIndex();
    *&v84 = v8;
    *(&v84 + 1) = v9;
    v85 = v10;
    *&v82 = v11;
    *(&v82 + 1) = v12;
    v83 = v13;
    sub_1D9B8DDC4(&v84, &v82, &v81);
    v18 = v81;
  }

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

LABEL_8:
  *&v84 = v18;
  v15 = &v84;
  v19 = S2CellId.level.getter();
  v20 = v17 - 2;
  if (__OFSUB__(v17, 2))
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v19 >= v20)
  {
    v17 = sub_1D9AFAA28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v17 + 16);
    v20 = *(v17 + 24);
    v15 = (v6 + 1);
    if (v6 < v20 >> 1)
    {
LABEL_18:
      *(v17 + 16) = v15;
      *(v17 + 8 * v6 + 32) = v18;
      *&v84 = v18;
      return S2CellId.level.getter();
    }

LABEL_61:
    v17 = sub_1D9AFAA28((v20 > 1), v15, 1, v17);
    goto LABEL_18;
  }

LABEL_10:
  if (v17)
  {
    v21 = (v8 + v11) * 0.5;
    v22 = (v9 + v12) * 0.5;
    v23 = (v10 + v13) * 0.5;
    v24 = sqrt(v21 * v21 + v22 * v22 + v23 * v23);
    if (v24 != 0.0)
    {
      v24 = 1.0 / v24;
    }

    v25 = v21 * v24;
    v26 = v22 * v24;
    v27 = v23 * v24;
    if (v17 >= 29)
    {
      v28 = 29;
    }

    else
    {
      v28 = v17;
    }

    *&v84 = v25;
    *(&v84 + 1) = v26;
    v85 = v27;
    S2CellId.init(point:)(&v84, &v82);
    S2CellId.getVertexNeighbors(level:)(v28);
    return v28;
  }

  else
  {
    v30 = sub_1D9AFAA28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1D9AFAA28((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v33;
    *&v30[8 * v32 + 32] = 0x1000000000000000;
    v34 = *(v30 + 3);
    v35 = v32 + 2;
    if (v33 >= v34 >> 1)
    {
      v30 = sub_1D9AFAA28((v34 > 1), v35, 1, v30);
    }

    *(v30 + 2) = v35;
    *&v30[8 * v33 + 32] = 0x3000000000000000;
    v37 = *(v30 + 2);
    v36 = *(v30 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v30 = sub_1D9AFAA28((v36 > 1), v37 + 1, 1, v30);
    }

    *(v30 + 2) = v38;
    *&v30[8 * v37 + 32] = 0x5000000000000000;
    v39 = *(v30 + 3);
    v40 = v37 + 2;
    if (v38 >= v39 >> 1)
    {
      v30 = sub_1D9AFAA28((v39 > 1), v40, 1, v30);
    }

    *(v30 + 2) = v40;
    *&v30[8 * v38 + 32] = 0x7000000000000000;
    v42 = *(v30 + 2);
    v41 = *(v30 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v30 = sub_1D9AFAA28((v41 > 1), v42 + 1, 1, v30);
    }

    *(v30 + 2) = v43;
    *&v30[8 * v42 + 32] = 0x9000000000000000;
    v44 = *(v30 + 3);
    v45 = v42 + 2;
    if (v43 >= v44 >> 1)
    {
      v30 = sub_1D9AFAA28((v44 > 1), v45, 1, v30);
    }

    result = 0;
    *(v30 + 2) = v45;
    *&v30[8 * v43 + 32] = 0xB000000000000000;
  }

  return result;
}

unint64_t sub_1D9B901D0()
{
  result = qword_1ECB53D58;
  if (!qword_1ECB53D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D58);
  }

  return result;
}

uint64_t sub_1D9B903C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D9B9040C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9B90498(double *a1, double *a2)
{
  v2 = 0;
  v29 = a1[1];
  v30 = *a1;
  v28 = a1[2];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    S2Cell.getRawVertex(_:)(v2);
    v7 = sqrt(v31 * v31 + v32 * v32 + v33 * v33);
    if (v7 == 0.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1.0 / v7;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D9AFA570(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1D9AFA570((v10 > 1), v11 + 1, 1, v6);
      v6 = result;
    }

    ++v2;
    *(v6 + 16) = v11 + 1;
    v12 = (v6 + 32 + 24 * v11);
    *v12 = v31 * v8;
    v12[1] = v32 * v8;
    v12[2] = v33 * v8;
  }

  while (v2 != 4);
  v13 = v11 + 1;
  v14 = (v6 + 48);
  v15 = 1;
  while (v13)
  {
    if ((v15 & 3u) > v11)
    {
      goto LABEL_24;
    }

    v16 = *(v14 - 2);
    v17 = *(v14 - 1);
    v18 = *v14;
    v19 = v29 * *v14;
    v20 = v30 * *v14;
    v21 = v5 * (v30 * v17 - v29 * v16) + v3 * (v19 - v28 * v17) + v4 * (v28 * v16 - v20);
    if (fabs(v21) < 1.0e-14 || (v22 = (v6 + 32 + 24 * (v15 & 3)), v23 = v22[1], v24 = v22[2], v25 = v28 * (v3 * v23 - v4 * *v22) + v30 * (v4 * v24 - v5 * v23) + v29 * (v5 * *v22 - v3 * v24), fabs(v25) < 1.0e-14) || v21 * v25 >= 0.0 && ((v26 = (v5 * v17 - v4 * v18) * *v22 + (v3 * v18 - v5 * v16) * v23 + (v4 * v16 - v3 * v17) * v24, fabs(v26) < 1.0e-14) || (v27 = v18 * (v29 * v16 - v30 * v17) + v16 * (v28 * v17 - v19) + v17 * (v20 - v28 * v16), fabs(v27) < 1.0e-14) || v21 * v26 >= 0.0 && v21 * v27 >= 0.0))
    {

      return 1;
    }

    --v13;
    ++v15;
    v14 += 3;
    if (v15 == 5)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ObjectKnowledge.Property.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ObjectKnowledge.Property.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ObjectKnowledge.Property.typeKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ObjectKnowledge.Property.typeValue.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D9B9087C()
{
  v1 = 1701667182;
  v2 = 0x79654B65707974;
  if (*v0 != 2)
  {
    v2 = 0x756C615665707974;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_1D9B908F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9B9120C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9B90918(uint64_t a1)
{
  v2 = sub_1D9B90FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B90954(uint64_t a1)
{
  v2 = sub_1D9B90FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectKnowledge.Property.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D60, &qword_1D9C99938);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B90FD0();
  sub_1D9C7E96C();
  v16 = 0;
  v10 = v12[7];
  sub_1D9C7E6EC();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1D9C7E6EC();
  v14 = 2;
  sub_1D9C7E6EC();
  v13 = 3;
  sub_1D9C7E6EC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ObjectKnowledge.Property.hash(into:)(uint64_t a1)
{
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();

  return sub_1D9C7DD6C();
}

uint64_t ObjectKnowledge.Property.hashValue.getter()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

void ObjectKnowledge.Property.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D70, &qword_1D9C99940);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B90FD0();
  sub_1D9C7E95C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    v9 = sub_1D9C7E5FC();
    v26 = v10;
    LOBYTE(v31[0]) = 1;
    v11 = sub_1D9C7E5FC();
    v25 = v12;
    v23 = v11;
    LOBYTE(v31[0]) = 2;
    v22 = sub_1D9C7E5FC();
    v24 = v13;
    v32 = 3;
    v14 = sub_1D9C7E5FC();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = v26;
    *&v27 = v9;
    *(&v27 + 1) = v26;
    v19 = v23;
    v18 = v24;
    *&v28 = v23;
    *(&v28 + 1) = v25;
    *&v29 = v22;
    *(&v29 + 1) = v24;
    *&v30 = v14;
    *(&v30 + 1) = v16;
    v20 = v28;
    *a2 = v27;
    a2[1] = v20;
    v21 = v30;
    a2[2] = v29;
    a2[3] = v21;
    sub_1D9B91024(&v27, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v31[0] = v9;
    v31[1] = v17;
    v31[2] = v19;
    v31[3] = v25;
    v31[4] = v22;
    v31[5] = v18;
    v31[6] = v14;
    v31[7] = v16;
    sub_1D9B9105C(v31);
  }
}

unint64_t sub_1D9B90FD0()
{
  result = qword_1ECB53D68;
  if (!qword_1ECB53D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D68);
  }

  return result;
}

unint64_t sub_1D9B91090()
{
  result = qword_1ECB53D78;
  if (!qword_1ECB53D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D78);
  }

  return result;
}

unint64_t sub_1D9B91108()
{
  result = qword_1ECB53D80;
  if (!qword_1ECB53D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D80);
  }

  return result;
}

unint64_t sub_1D9B91160()
{
  result = qword_1ECB53D88;
  if (!qword_1ECB53D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D88);
  }

  return result;
}

unint64_t sub_1D9B911B8()
{
  result = qword_1ECB53D90;
  if (!qword_1ECB53D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D90);
  }

  return result;
}

uint64_t sub_1D9B9120C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B65707974 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756C615665707974 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void Set<>.toVisualDomains()(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CD0];
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    String.mappedVisualDomain.getter(v11, v12, &v14);

    if (v14 != 27)
    {
      sub_1D9B92014(&v13, v14);
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

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void String.mappedVisualDomain.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1D9C7DC7C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = sub_1D9C7E7DC();

  v9 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v10 == a2)
  {
    v9 = 2;
    goto LABEL_13;
  }

  v12 = sub_1D9C7E7DC();

  if (v12)
  {
    v9 = 2;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v13 == a2)
  {
    v9 = 3;
    goto LABEL_13;
  }

  v15 = sub_1D9C7E7DC();

  if (v15)
  {
    v9 = 3;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v16 == a2)
  {
    v9 = 1;
    goto LABEL_13;
  }

  v17 = sub_1D9C7E7DC();

  if (v17)
  {
    v9 = 1;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v18 == a2)
  {
    v9 = 9;
    goto LABEL_13;
  }

  v19 = sub_1D9C7E7DC();

  if (v19)
  {
    v9 = 9;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v20 == a2)
  {
    v9 = 7;
    goto LABEL_13;
  }

  v21 = sub_1D9C7E7DC();

  if (v21)
  {
    v9 = 7;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v22 == a2)
  {
    v9 = 8;
    goto LABEL_13;
  }

  v23 = sub_1D9C7E7DC();

  if (v23)
  {
    v9 = 8;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v24 == a2)
  {
    v9 = 11;
    goto LABEL_13;
  }

  v25 = sub_1D9C7E7DC();

  if (v25)
  {
    v9 = 11;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v26 == a2)
  {
    v9 = 12;
    goto LABEL_13;
  }

  v27 = sub_1D9C7E7DC();

  if (v27)
  {
    v9 = 12;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v28 == a2)
  {
    v9 = 10;
    goto LABEL_13;
  }

  v29 = sub_1D9C7E7DC();

  if (v29)
  {
    v9 = 10;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v30 == a2)
  {
    v9 = 13;
    goto LABEL_13;
  }

  v31 = sub_1D9C7E7DC();

  if (v31)
  {
    v9 = 13;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v32 == a2)
  {
    v9 = 14;
    goto LABEL_13;
  }

  v33 = sub_1D9C7E7DC();

  if (v33)
  {
    v9 = 14;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v34 == a2)
  {
    v9 = 15;
    goto LABEL_13;
  }

  v35 = sub_1D9C7E7DC();

  if (v35)
  {
    v9 = 15;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v36 == a2)
  {
    v9 = 16;
    goto LABEL_13;
  }

  v37 = sub_1D9C7E7DC();

  if (v37)
  {
    v9 = 16;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v38 == a2)
  {
    v9 = 17;
    goto LABEL_13;
  }

  v39 = sub_1D9C7E7DC();

  if (v39)
  {
    v9 = 17;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v40 == a2)
  {
    v9 = 18;
    goto LABEL_13;
  }

  v41 = sub_1D9C7E7DC();

  if (v41)
  {
    v9 = 18;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v42 == a2)
  {
    v9 = 19;
    goto LABEL_13;
  }

  v43 = sub_1D9C7E7DC();

  if (v43)
  {
    v9 = 19;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v44 == a2)
  {
    v9 = 20;
    goto LABEL_13;
  }

  v45 = sub_1D9C7E7DC();

  if (v45)
  {
    v9 = 20;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v46 == a2)
  {
    v9 = 21;
    goto LABEL_13;
  }

  v47 = sub_1D9C7E7DC();

  if (v47)
  {
    v9 = 21;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v48 == a2)
  {
    v9 = 22;
    goto LABEL_13;
  }

  v49 = sub_1D9C7E7DC();

  if (v49)
  {
    v9 = 22;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v50 == a2)
  {
    v9 = 4;
    goto LABEL_13;
  }

  v51 = sub_1D9C7E7DC();

  if (v51)
  {
    v9 = 4;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v52 == a2)
  {
    v9 = 5;
    goto LABEL_13;
  }

  v53 = sub_1D9C7E7DC();

  if (v53)
  {
    v9 = 5;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v54 == a2)
  {
    v9 = 23;
    goto LABEL_13;
  }

  v55 = sub_1D9C7E7DC();

  if (v55)
  {
    v9 = 23;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v56 == a2)
  {
    v9 = 26;
    goto LABEL_13;
  }

  v57 = sub_1D9C7E7DC();

  if (v57)
  {
    v9 = 26;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v58 == a2)
  {
    v9 = 6;
    goto LABEL_13;
  }

  v59 = sub_1D9C7E7DC();

  if (v59)
  {
    v9 = 6;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v60 == a2)
  {
    v9 = 24;
    goto LABEL_13;
  }

  v61 = sub_1D9C7E7DC();

  if (v61)
  {
    v9 = 24;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v62 == a2)
  {
    v9 = 25;
    goto LABEL_13;
  }

  v63 = sub_1D9C7E7DC();

  if (v63)
  {
    v9 = 25;
  }

  else
  {
    v9 = 27;
  }

LABEL_14:
  *a3 = v9;
}

uint64_t sub_1D9B91DE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  v8 = sub_1D9C7E93C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D9C7E7DC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D9B93830(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D9B91F34(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D9C7E8CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D9B939B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D9B92014(char *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *v2;
  sub_1D9C7E8DC();
  sub_1D9A15C94(v4);
  sub_1D9C7DD6C();

  v7 = sub_1D9C7E93C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_89:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    sub_1D9B93AD0(v4, v9, isUniquelyReferenced_nonNull_native, v22);
    *v3 = v24;
    result = 1;
    goto LABEL_92;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE300000000000000;
    v12 = 7631457;
    switch(*(*(v6 + 48) + v9))
    {
      case 1:
        v11 = 0xE600000000000000;
        v12 = 0x65727574616ELL;
        break;
      case 2:
        v11 = 0xE800000000000000;
        v12 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v12 = 0x4C6C61727574616ELL;
        v11 = 0xEF6B72616D646E61;
        break;
      case 4:
        v11 = 0xE500000000000000;
        v12 = 0x616964656DLL;
        break;
      case 5:
        v11 = 0xE400000000000000;
        v12 = 1802465122;
        break;
      case 6:
        v11 = 0xE500000000000000;
        v12 = 0x6D75626C61;
        break;
      case 7:
        v11 = 0xE400000000000000;
        v12 = 1937006947;
        break;
      case 8:
        v11 = 0xE400000000000000;
        v12 = 1936158564;
        break;
      case 9:
        v11 = 0xE700000000000000;
        v13 = 1835626081;
        goto LABEL_22;
      case 0xA:
        v11 = 0xE500000000000000;
        v12 = 0x7364726962;
        break;
      case 0xB:
        v11 = 0xE700000000000000;
        v12 = 0x73746365736E69;
        break;
      case 0xC:
        v11 = 0xE800000000000000;
        v12 = 0x73656C6974706572;
        break;
      case 0xD:
        v11 = 0xE700000000000000;
        v13 = 1835884909;
LABEL_22:
        v12 = v13 | 0x736C6100000000;
        break;
      case 0xE:
        v12 = 0xD000000000000010;
        v11 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v11 = 0xE700000000000000;
        v12 = 0x6C657261707061;
        break;
      case 0x10:
        v12 = 0x726F737365636361;
        v11 = 0xEB00000000736569;
        break;
      case 0x11:
        v11 = 0xE400000000000000;
        v12 = 1685024614;
        break;
      case 0x12:
        v12 = 0x6F726665726F7473;
        v11 = 0xEA0000000000746ELL;
        break;
      case 0x13:
        v14 = 1852270963;
        goto LABEL_29;
      case 0x14:
        v12 = 0xD000000000000011;
        v11 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v14 = 1869903201;
LABEL_29:
        v12 = v14 | 0x626D795300000000;
        v11 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v12 = 0x676F4C646E617262;
        v11 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v11 = 0xE700000000000000;
        v12 = 0x65646F63726162;
        break;
      case 0x18:
        v12 = 0x727574706C756373;
        v11 = 0xE900000000000065;
        break;
      case 0x19:
        v11 = 0xE700000000000000;
        v12 = 0x656E696C796B73;
        break;
      case 0x1A:
        v11 = 0xE800000000000000;
        v12 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v15 = 0xE300000000000000;
    v16 = 7631457;
    switch(v4)
    {
      case 1:
        v15 = 0xE600000000000000;
        if (v12 == 0x65727574616ELL)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      case 2:
        v15 = 0xE800000000000000;
        if (v12 != 0x6B72616D646E616CLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 3:
        v15 = 0xEF6B72616D646E61;
        if (v12 != 0x4C6C61727574616ELL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 4:
        v15 = 0xE500000000000000;
        if (v12 != 0x616964656DLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 5:
        v15 = 0xE400000000000000;
        if (v12 != 1802465122)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 6:
        v15 = 0xE500000000000000;
        if (v12 != 0x6D75626C61)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 7:
        v15 = 0xE400000000000000;
        if (v12 != 1937006947)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 8:
        v15 = 0xE400000000000000;
        if (v12 != 1936158564)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 9:
        v15 = 0xE700000000000000;
        v18 = 1835626081;
        goto LABEL_65;
      case 10:
        v15 = 0xE500000000000000;
        if (v12 != 0x7364726962)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 11:
        v15 = 0xE700000000000000;
        v17 = 0x746365736E69;
        goto LABEL_66;
      case 12:
        v15 = 0xE800000000000000;
        if (v12 != 0x73656C6974706572)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 13:
        v15 = 0xE700000000000000;
        v18 = 1835884909;
LABEL_65:
        v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_66:
        if (v12 != (v17 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 14:
        v15 = 0x80000001D9CA2910;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 15:
        v15 = 0xE700000000000000;
        if (v12 != 0x6C657261707061)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 16:
        v15 = 0xEB00000000736569;
        if (v12 != 0x726F737365636361)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 17:
        v15 = 0xE400000000000000;
        if (v12 != 1685024614)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 18:
        v15 = 0xEA0000000000746ELL;
        if (v12 != 0x6F726665726F7473)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 19:
        v19 = 1852270963;
        goto LABEL_79;
      case 20:
        v15 = 0x80000001D9CA2950;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 21:
        v19 = 1869903201;
LABEL_79:
        v15 = 0xEA00000000006C6FLL;
        if (v12 != (v19 | 0x626D795300000000))
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 22:
        v15 = 0xEF6C6F626D79536FLL;
        if (v12 != 0x676F4C646E617262)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 23:
        v15 = 0xE700000000000000;
        v16 = 0x65646F63726162;
        goto LABEL_82;
      case 24:
        v15 = 0xE900000000000065;
        if (v12 != 0x727574706C756373)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 25:
        v15 = 0xE700000000000000;
        if (v12 != 0x656E696C796B73)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 26:
        v15 = 0xE800000000000000;
        if (v12 != 0x44327463656A626FLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      default:
LABEL_82:
        if (v12 != v16)
        {
          goto LABEL_84;
        }

LABEL_83:
        if (v11 != v15)
        {
LABEL_84:
          v20 = sub_1D9C7E7DC();

          if (v20)
          {
            goto LABEL_91;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_89;
          }

          continue;
        }

LABEL_91:
        result = 0;
        v4 = *(*(v6 + 48) + v9);
LABEL_92:
        *a1 = v4;
        return result;
    }
  }
}

uint64_t sub_1D9B92748(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_1D9C7E8DC();
  result = a2 + HIDWORD(a2);
  if (__CFADD__(a2, HIDWORD(a2)))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA73EAC0](result);
    v7 = sub_1D9C7E93C();
    v8 = -1 << *(v5 + 32);
    v9 = v7 & ~v8;
    if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      while (*(*(v5 + 48) + 8 * v9) != a2)
      {
        v9 = (v9 + 1) & v10;
        if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      result = 0;
    }

    else
    {
LABEL_6:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      sub_1D9B94254(a2, v9, isUniquelyReferenced_nonNull_native);
      *v2 = v12;
      result = 1;
    }

    *a1 = a2;
  }

  return result;
}

uint64_t sub_1D9B92848(double *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = a2;
  v11 = *v5;
  sub_1D9C7E8DC();
  v12 = 37 * (*&a2 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (*&a2 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (*&a2 & 0x7FFFFFFFFFFFFFFFLL));
  MEMORY[0x1DA73EB00]((v12 + 37 * (v12 + (*&a2 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v12 + 37 * (v12 + (*&a2 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
  v13 = sub_1D9C7E93C();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v11 + 48) + 24 * v15);
      v18 = *v17 == v8 && v17[1] == a3;
      if (v18 && v17[2] == a4)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    result = 0;
    v8 = *v17;
    a3 = v17[1];
    a4 = v17[2];
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_1D9B943A8(v15, isUniquelyReferenced_nonNull_native, v8, a3, a4);
    *v5 = v22;
    result = 1;
  }

  *a1 = v8;
  a1[1] = a3;
  a1[2] = a4;
  return result;
}

void sub_1D9B929A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53410, &unk_1D9C95400);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v21 = sub_1D9C7E93C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D9B92C08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA0, &qword_1D9C99B80);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1D9C7E8CC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D9B92E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53408, &unk_1D9C953F0);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D9C7E8DC();
      sub_1D9A15C94(v17);
      sub_1D9C7DD6C();

      v18 = sub_1D9C7E93C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D9B93098(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DB0, &unk_1D9C99B90);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D9C7E8DC();
      if (__CFADD__(v17, HIDWORD(v17)))
      {
        goto LABEL_32;
      }

      MEMORY[0x1DA73EAC0](v17 + HIDWORD(v17));
      v18 = sub_1D9C7E93C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D9B932F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA8, &qword_1D9C99B88);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *v18;
      v22 = v18[2];
      sub_1D9C7E8DC();
      v23 = 37 * (v21 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (v21 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (v21 & 0x7FFFFFFFFFFFFFFFLL));
      MEMORY[0x1DA73EB00]((v23 + 37 * (v23 + (v21 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v23 + 37 * (v23 + (v21 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
      v24 = sub_1D9C7E93C();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v22;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero((v3 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v32;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D9B93594(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D98, &qword_1D9C99B78);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 8 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 4);
      sub_1D9C7E8DC();
      sub_1D9A15C94(v19);
      sub_1D9C7DD6C();

      sub_1D9C7E91C();
      v21 = sub_1D9C7E93C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 8 * v13;
      *v14 = v19;
      *(v14 + 4) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D9B93830(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D9B929A8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1D9B9D1F4();
      goto LABEL_16;
    }

    sub_1D9B94550(v8 + 1);
  }

  v10 = *v4;
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  v11 = sub_1D9C7E93C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1D9C7E7DC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1D9C7E83C();
  __break(1u);
}

void sub_1D9B939B0(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D9B92C08(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D9B9D350();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D9B94788(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1D9C7E8CC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D9C7E83C();
  __break(1u);
}

void sub_1D9B93AD0(char a1, unint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D9B92E2C(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_1D9B9D490();
        goto LABEL_96;
      }

      sub_1D9B94978(v8 + 1);
    }

    v10 = *v4;
    sub_1D9C7E8DC();
    sub_1D9A15C94(a1);
    sub_1D9C7DD6C();

    v11 = sub_1D9C7E93C();
    v12 = -1 << *(v10 + 32);
    a2 = v11 & ~v12;
    if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      while (2)
      {
        v14 = 0xE300000000000000;
        v15 = 7631457;
        switch(*(*(v10 + 48) + a2))
        {
          case 1:
            v14 = 0xE600000000000000;
            v15 = 0x65727574616ELL;
            break;
          case 2:
            v14 = 0xE800000000000000;
            v15 = 0x6B72616D646E616CLL;
            break;
          case 3:
            v15 = 0x4C6C61727574616ELL;
            v14 = 0xEF6B72616D646E61;
            break;
          case 4:
            v14 = 0xE500000000000000;
            v15 = 0x616964656DLL;
            break;
          case 5:
            v14 = 0xE400000000000000;
            v15 = 1802465122;
            break;
          case 6:
            v14 = 0xE500000000000000;
            v15 = 0x6D75626C61;
            break;
          case 7:
            v14 = 0xE400000000000000;
            v15 = 1937006947;
            break;
          case 8:
            v14 = 0xE400000000000000;
            v15 = 1936158564;
            break;
          case 9:
            v14 = 0xE700000000000000;
            v16 = 1835626081;
            goto LABEL_29;
          case 0xA:
            v14 = 0xE500000000000000;
            v15 = 0x7364726962;
            break;
          case 0xB:
            v14 = 0xE700000000000000;
            v15 = 0x73746365736E69;
            break;
          case 0xC:
            v14 = 0xE800000000000000;
            v15 = 0x73656C6974706572;
            break;
          case 0xD:
            v14 = 0xE700000000000000;
            v16 = 1835884909;
LABEL_29:
            v15 = v16 | 0x736C6100000000;
            break;
          case 0xE:
            v15 = 0xD000000000000010;
            v14 = 0x80000001D9CA2910;
            break;
          case 0xF:
            v14 = 0xE700000000000000;
            v15 = 0x6C657261707061;
            break;
          case 0x10:
            v15 = 0x726F737365636361;
            v14 = 0xEB00000000736569;
            break;
          case 0x11:
            v14 = 0xE400000000000000;
            v15 = 1685024614;
            break;
          case 0x12:
            v14 = 0xEA0000000000746ELL;
            v15 = 0x6F726665726F7473;
            break;
          case 0x13:
            v17 = 1852270963;
            goto LABEL_36;
          case 0x14:
            v15 = 0xD000000000000011;
            v14 = 0x80000001D9CA2950;
            break;
          case 0x15:
            v17 = 1869903201;
LABEL_36:
            v15 = v17 | 0x626D795300000000;
            v14 = 0xEA00000000006C6FLL;
            break;
          case 0x16:
            v15 = 0x676F4C646E617262;
            v14 = 0xEF6C6F626D79536FLL;
            break;
          case 0x17:
            v14 = 0xE700000000000000;
            v15 = 0x65646F63726162;
            break;
          case 0x18:
            v15 = 0x727574706C756373;
            v14 = 0xE900000000000065;
            break;
          case 0x19:
            v14 = 0xE700000000000000;
            v15 = 0x656E696C796B73;
            break;
          case 0x1A:
            v14 = 0xE800000000000000;
            v15 = 0x44327463656A626FLL;
            break;
          default:
            break;
        }

        v18 = 0xE300000000000000;
        v19 = 7631457;
        switch(a1)
        {
          case 1:
            v18 = 0xE600000000000000;
            if (v15 == 0x65727574616ELL)
            {
              goto LABEL_90;
            }

            goto LABEL_91;
          case 2:
            v18 = 0xE800000000000000;
            if (v15 != 0x6B72616D646E616CLL)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 3:
            v18 = 0xEF6B72616D646E61;
            if (v15 != 0x4C6C61727574616ELL)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 4:
            v18 = 0xE500000000000000;
            if (v15 != 0x616964656DLL)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 5:
            v18 = 0xE400000000000000;
            if (v15 != 1802465122)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 6:
            v18 = 0xE500000000000000;
            if (v15 != 0x6D75626C61)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 7:
            v18 = 0xE400000000000000;
            if (v15 != 1937006947)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 8:
            v18 = 0xE400000000000000;
            if (v15 != 1936158564)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 9:
            v18 = 0xE700000000000000;
            v21 = 1835626081;
            goto LABEL_72;
          case 10:
            v18 = 0xE500000000000000;
            if (v15 != 0x7364726962)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 11:
            v18 = 0xE700000000000000;
            v20 = 0x746365736E69;
            goto LABEL_73;
          case 12:
            v18 = 0xE800000000000000;
            if (v15 != 0x73656C6974706572)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 13:
            v18 = 0xE700000000000000;
            v21 = 1835884909;
LABEL_72:
            v20 = v21 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_73:
            if (v15 != (v20 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 14:
            v18 = 0x80000001D9CA2910;
            if (v15 != 0xD000000000000010)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 15:
            v18 = 0xE700000000000000;
            if (v15 != 0x6C657261707061)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 16:
            v18 = 0xEB00000000736569;
            if (v15 != 0x726F737365636361)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 17:
            v18 = 0xE400000000000000;
            if (v15 != 1685024614)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 18:
            v18 = 0xEA0000000000746ELL;
            if (v15 != 0x6F726665726F7473)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 19:
            v22 = 1852270963;
            goto LABEL_86;
          case 20:
            v18 = 0x80000001D9CA2950;
            if (v15 != 0xD000000000000011)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 21:
            v22 = 1869903201;
LABEL_86:
            v18 = 0xEA00000000006C6FLL;
            if (v15 != (v22 | 0x626D795300000000))
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 22:
            v18 = 0xEF6C6F626D79536FLL;
            if (v15 != 0x676F4C646E617262)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 23:
            v18 = 0xE700000000000000;
            v19 = 0x65646F63726162;
            goto LABEL_89;
          case 24:
            v18 = 0xE900000000000065;
            if (v15 != 0x727574706C756373)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 25:
            v18 = 0xE700000000000000;
            if (v15 != 0x656E696C796B73)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 26:
            v18 = 0xE800000000000000;
            if (v15 != 0x44327463656A626FLL)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          default:
LABEL_89:
            if (v15 != v19)
            {
              goto LABEL_91;
            }

LABEL_90:
            if (v14 == v18)
            {
              goto LABEL_99;
            }

LABEL_91:
            v23 = sub_1D9C7E7DC();

            if (v23)
            {
              goto LABEL_100;
            }

            a2 = (a2 + 1) & v13;
            if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_96:
  v24 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = a1;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_99:

LABEL_100:
    sub_1D9C7E83C();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v27;
  }
}

void sub_1D9B94254(unint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_1D9B93098(v5 + 1);
    goto LABEL_8;
  }

  if (v6 > v5)
  {
    v7 = a2;
    sub_1D9B9D5D0();
    a2 = v7;
LABEL_13:
    v12 = *v3;
    *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    *(*(v12 + 48) + 8 * a2) = result;
    v13 = *(v12 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      *(v12 + 16) = v15;
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_1D9B94BB4(v5 + 1);
LABEL_8:
  v8 = *v3;
  sub_1D9C7E8DC();
  if (!__CFADD__(result, HIDWORD(result)))
  {
    MEMORY[0x1DA73EAC0](result + HIDWORD(result));
    v9 = sub_1D9C7E93C();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (*(*(v8 + 48) + 8 * a2) != result)
      {
        a2 = (a2 + 1) & v11;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  sub_1D9C7E83C();
  __break(1u);
}

unint64_t sub_1D9B943A8(unint64_t result, char a2, double a3, double a4, double a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a2 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    sub_1D9B932F0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = result;
      sub_1D9B9D710();
      result = v11;
      goto LABEL_18;
    }

    sub_1D9B94DDC(v9 + 1);
  }

  v12 = *v5;
  sub_1D9C7E8DC();
  v13 = 37 * (*&a3 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (*&a3 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (*&a3 & 0x7FFFFFFFFFFFFFFFLL));
  MEMORY[0x1DA73EB00]((v13 + 37 * (v13 + (*&a3 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v13 + 37 * (v13 + (*&a3 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
  v14 = sub_1D9C7E93C();
  v15 = -1 << *(v12 + 32);
  result = v14 & ~v15;
  if ((*(v12 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v12 + 48) + 24 * result);
      v18 = *v17 == a3 && v17[1] == a4;
      if (v18 && v17[2] == a5)
      {
        goto LABEL_21;
      }

      result = (result + 1) & v16;
    }

    while (((*(v12 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_18:
  v20 = *v5;
  *(*v5 + 8 * (result >> 6) + 56) |= 1 << result;
  v21 = (*(v20 + 48) + 24 * result);
  *v21 = a3;
  v21[1] = a4;
  v21[2] = a5;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_21:
  result = sub_1D9C7E83C();
  __break(1u);
  return result;
}

void sub_1D9B94550(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53410, &unk_1D9C95400);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D9C7E8DC();

      sub_1D9C7DD6C();
      v20 = sub_1D9C7E93C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D9B94788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA0, &qword_1D9C99B80);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1D9C7E8CC();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1D9B94978(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53408, &unk_1D9C953F0);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1D9C7E8DC();
      sub_1D9A15C94(v16);
      sub_1D9C7DD6C();

      v17 = sub_1D9C7E93C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D9B94BB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DB0, &unk_1D9C99B90);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1D9C7E8DC();
      if (__CFADD__(v16, HIDWORD(v16)))
      {
        goto LABEL_30;
      }

      MEMORY[0x1DA73EAC0](v16 + HIDWORD(v16));
      v17 = sub_1D9C7E93C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_29;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_1D9B94DDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA8, &qword_1D9C99B88);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 24 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = *v17;
      v21 = v17[2];
      sub_1D9C7E8DC();
      v22 = 37 * (v20 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (v20 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (v20 & 0x7FFFFFFFFFFFFFFFLL));
      MEMORY[0x1DA73EB00]((v22 + 37 * (v22 + (v20 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v22 + 37 * (v22 + (v20 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
      v23 = sub_1D9C7E93C();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 24 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v21;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1D9B95050(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D98, &qword_1D9C99B78);
  v4 = sub_1D9C7E3BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 8 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 4);
      sub_1D9C7E8DC();
      sub_1D9A15C94(v18);
      sub_1D9C7DD6C();

      sub_1D9C7E91C();
      v20 = sub_1D9C7E93C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 8 * v12;
      *v13 = v18;
      *(v13 + 4) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t type metadata accessor for DomainPredictionDomainAssignmentRule(uint64_t a1)
{
  result = qword_1EDD35408;
  if (!qword_1EDD35408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B95330(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D9B953B8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X8>)
{
  v104 = a3;
  v8 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = (&v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for DomainPredictionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0, &qword_1D9C8AF90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v96 - v12;
  v106 = _s14DetectedResultVMa(0);
  v102 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v105);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v96 - v26;
  v28 = a1[7];
  v150 = a1[6];
  v151 = v28;
  v152[0] = a1[8];
  *(v152 + 13) = *(a1 + 141);
  v29 = a1[3];
  v146 = a1[2];
  v147 = v29;
  v30 = a1[5];
  v148 = a1[4];
  v149 = v30;
  v31 = a1[1];
  v144 = *a1;
  v145 = v31;
  if (*(a2 + 104))
  {
    v32 = a1[7];
    a4[6] = a1[6];
    a4[7] = v32;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v33 = a1[3];
    a4[2] = a1[2];
    a4[3] = v33;
    v34 = a1[5];
    a4[4] = a1[4];
    a4[5] = v34;
    v35 = a1[1];
    *a4 = *a1;
    a4[1] = v35;
LABEL_27:
    sub_1D99D39B8(&v144, &v135);
    return result;
  }

  v36 = a2;
  v37 = v25;
  v97 = v24;
  v98 = a4;
  v99 = v23;
  v38 = v4[2];
  if (*(v38 + 16) && v104[1])
  {
    sub_1D99B1E14(v38);
    if (!v39)
    {
      static Logger.argos.getter(v27);
      sub_1D9A3E0E0(v21);
      v79 = *(v99 + 8);
      v80 = v105;
      v79(v27, v105);
      v81 = sub_1D9C7D8BC();
      v82 = sub_1D9C7E09C();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_1D9962000, v81, v82, "No satisfied coarse label.", v83, 2u);
        MEMORY[0x1DA7405F0](v83, -1, -1);
      }

      v79(v21, v80);
      goto LABEL_26;
    }
  }

  v40 = *(v36 + 56);
  v41 = v4[1];
  if (*(v41 + 16))
  {
    *&v135 = *(v4 + *(v103 + 28));

    v40 = sub_1D9A601D8(v41, &v135, v40);
  }

  else
  {
  }

  sub_1D9A606A4(*v4, v40, *(v36 + 64), v13);

  if ((*(v102 + 48))(v13, 1, v106) == 1)
  {
    sub_1D99D3950(v13);
    static Logger.argos.getter(v17);
    sub_1D9A3E0E0(v37);
    v42 = *(v99 + 8);
    v43 = v105;
    v42(v17, v105);
    v44 = sub_1D9C7D8BC();
    v45 = sub_1D9C7E09C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D9962000, v44, v45, "No satisfied domain prediction net results.", v46, 2u);
      MEMORY[0x1DA7405F0](v46, -1, -1);
    }

    v42(v37, v43);
LABEL_26:
    v84 = v151;
    v85 = v98;
    v98[6] = v150;
    v85[7] = v84;
    v85[8] = v152[0];
    *(v85 + 141) = *(v152 + 13);
    v86 = v147;
    v85[2] = v146;
    v85[3] = v86;
    v87 = v149;
    v85[4] = v148;
    v85[5] = v87;
    v88 = v145;
    *v85 = v144;
    v85[1] = v88;
    goto LABEL_27;
  }

  sub_1D99D3A28(v13, v107);
  v47 = v97;
  static Logger.argos.getter(v97);
  v104 = v4;
  v48 = v100;
  sub_1D9B95EB0(v4, v100, type metadata accessor for DomainPredictionDomainAssignmentRule);
  v49 = v36;
  v50 = v47;
  v51 = v101;
  sub_1D9B95EB0(v49, v101, type metadata accessor for VisualUnderstanding.ImageRegion);
  v52 = sub_1D9C7D8BC();
  v53 = sub_1D9C7E09C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v128[0] = v102;
    *v54 = 136315394;
    v55 = v103;
    v56 = sub_1D9A15C94(*(v48 + *(v103 + 20)));
    v58 = v57;
    sub_1D9B95F18(v48, type metadata accessor for DomainPredictionDomainAssignmentRule);
    v59 = sub_1D9A0E224(v56, v58, v128);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v60 = v51[1];
    v135 = *v51;
    v136 = v60;
    v61 = NormalizedRect.loggingDescription.getter();
    v63 = v62;
    sub_1D9B95F18(v51, type metadata accessor for VisualUnderstanding.ImageRegion);
    v64 = sub_1D9A0E224(v61, v63, v128);

    *(v54 + 14) = v64;
    _os_log_impl(&dword_1D9962000, v52, v53, "Assign %s to region %s", v54, 0x16u);
    v65 = v102;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v65, -1, -1);
    MEMORY[0x1DA7405F0](v54, -1, -1);

    (*(v99 + 8))(v50, v105);
  }

  else
  {

    sub_1D9B95F18(v51, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B95F18(v48, type metadata accessor for DomainPredictionDomainAssignmentRule);
    (*(v99 + 8))(v50, v105);
    v55 = v103;
  }

  v66 = *(v104 + *(v55 + 20));
  v67 = (v107 + *(v106 + 28));
  v68 = *v67;
  v69 = v67[1];
  v70 = v67[2];
  v71 = v67[3];
  v72 = *(v107 + *(v106 + 32));
  LOBYTE(v128[0]) = v66;
  *(v128 + 8) = 0u;
  *(&v128[1] + 8) = 0u;
  BYTE8(v128[2]) = 0;
  v129 = 0u;
  v130 = 0u;
  *&v131 = v68;
  *(&v131 + 1) = v69;
  *&v132 = v70;
  *(&v132 + 1) = v71;
  LODWORD(v133) = 0;
  DWORD1(v133) = v72;
  LOWORD(v134[0]) = 0;
  *(&v133 + 1) = 0;
  *(&v134[1] + 5) = 0;
  *(&v134[0] + 1) = 0;
  *&v134[1] = 0;
  v141 = v150;
  v142 = v151;
  v143[0] = v152[0];
  *(v143 + 13) = *(v152 + 13);
  v137 = v146;
  v138 = v147;
  v139 = v148;
  v140 = v149;
  v135 = v144;
  v136 = v145;
  if (sub_1D99AE104(&v135) != 1)
  {
    v75 = sub_1D9A15C94(v135);
    v77 = v76;
    if (v75 == sub_1D9A15C94(v66) && v77 == v78)
    {
    }

    else
    {
      v90 = sub_1D9C7E7DC();

      if ((v90 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v125 = v141;
    v126 = v142;
    v127[0] = v143[0];
    *(v127 + 13) = *(v143 + 13);
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    v119 = v135;
    v120 = v136;
    v116 = v132;
    v117 = v133;
    v118[0] = v134[0];
    *(v118 + 13) = *(v134 + 13);
    v112 = v128[2];
    v113 = v129;
    v114 = v130;
    v115 = v131;
    v110 = v128[0];
    v111 = v128[1];
    sub_1D9B67854(&v119, &v110, v108);
    sub_1D9B95F18(v107, _s14DetectedResultVMa);
    sub_1D99AE0B0(v128);
    v116 = v108[6];
    v117 = v108[7];
    v118[0] = v109[0];
    *(v118 + 13) = *(v109 + 13);
    v112 = v108[2];
    v113 = v108[3];
    v114 = v108[4];
    v115 = v108[5];
    v73 = v108[0];
    v74 = v108[1];
    goto LABEL_30;
  }

LABEL_19:
  sub_1D9B95F18(v107, _s14DetectedResultVMa);
  v116 = v132;
  v117 = v133;
  v118[0] = v134[0];
  *(v118 + 13) = *(v134 + 13);
  v112 = v128[2];
  v113 = v129;
  v114 = v130;
  v115 = v131;
  v73 = v128[0];
  v74 = v128[1];
LABEL_30:
  v110 = v73;
  v111 = v74;
  faiss::NormalizationTransform::~NormalizationTransform(&v110);
  v127[0] = v118[0];
  *(v127 + 13) = *(v118 + 13);
  v121 = v112;
  v122 = v113;
  v123 = v114;
  v124 = v115;
  v119 = v110;
  v120 = v111;
  v91 = v98;
  v92 = v117;
  v98[6] = v116;
  v91[7] = v92;
  v91[8] = v127[0];
  *(v91 + 141) = *(v127 + 13);
  v93 = v122;
  v91[2] = v121;
  v91[3] = v93;
  v94 = v124;
  v91[4] = v123;
  v91[5] = v94;
  result = *&v119;
  v95 = v120;
  *v91 = v119;
  v91[1] = v95;
  return result;
}

uint64_t sub_1D9B95EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B95F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D9B95F78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v96 = a2;
  v97 = a3;
  v95 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30, &unk_1D9C85040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v94 = &v88 - v7;
  v8 = type metadata accessor for EspressoModel(0);
  v98 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  v14 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = *(a1 + 128);
  v19 = OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo;
  v20 = v99;
  v21 = sub_1D9C1B898(v18, v4 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo, 0x6972656767697274, 0xEA0000000000676ELL, 0x74696E676F636572, 0xEB000000006E6F69);
  if (!v20)
  {
    v89 = v14;
    v90 = v8;
    v91 = v13;
    v22 = v17;
    v99 = 0;
    v23 = *(v4 + 16);
    v24 = v21;
    v93 = v16;
    sub_1D9B6242C(v4 + v19, v16, type metadata accessor for MLModelInfo);
    v25 = v24;
    v88 = v10;
    if (v24)
    {

      sub_1D9BDBB08(v26);
      v92 = v27;
    }

    else
    {
      v92 = 0;
    }

    v28 = v97;
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = v22;
    sub_1D99A170C(v22, v102);
    v31 = swift_allocObject();
    v32 = v102[7];
    *(v31 + 136) = v102[6];
    *(v31 + 152) = v32;
    *(v31 + 168) = v102[8];
    v33 = v102[3];
    *(v31 + 72) = v102[2];
    *(v31 + 88) = v33;
    v34 = v102[5];
    *(v31 + 104) = v102[4];
    *(v31 + 120) = v34;
    v35 = v102[1];
    *(v31 + 40) = v102[0];
    *(v31 + 16) = v96;
    *(v31 + 24) = v28;
    *(v31 + 32) = v29;
    v36 = v103;
    *(v31 + 56) = v35;
    *(v31 + 184) = v36;
    *(v31 + 192) = v25;
    v37 = v30;
    v38 = *(v30 + 15);

    sub_1D9B7E0E0(v38);
    v39 = v99;
    sub_1D9C1947C(v101);
    v40 = v98;
    if (v39)
    {

      v41 = v93;
LABEL_24:
      sub_1D99A19C0(v41, type metadata accessor for MLModelInfo);

      return;
    }

    v97 = v29;
    v41 = v93;
    v99 = 0;
    if (v23)
    {
      if (v23 == 1)
      {
        sub_1D99A17C8(v101, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38, &unk_1D9C87440);
        v42 = v94;
        v43 = v90;
        if (swift_dynamicCast())
        {
          (*(v40 + 56))(v42, 0, 1, v43);
          v44 = v42;
          v45 = v91;
          sub_1D99A18F0(v44, v91);
          v46 = v88;
          sub_1D9B6242C(v45, v88, type metadata accessor for EspressoModel);
          v47 = v37;
          v48 = *(v37 + 18);
          v49 = swift_allocObject();
          *(v49 + 16) = sub_1D9B97690;
          *(v49 + 24) = v31;
          type metadata accessor for EspressoRequest(0);
          v50 = swift_allocObject();
          sub_1D9B6242C(v46, v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model, type metadata accessor for EspressoModel);
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features) = 0;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode) = 2;
          v51 = v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest;
          *v51 = 0;
          *(v51 + 8) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v51 + 16) = _Q0;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs) = v92;
          v57 = (v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler);
          *v57 = sub_1D99A19B8;
          v57[1] = v49;
          v58 = qword_1EDD349F0;

          if (v58 != -1)
          {
            swift_once();
          }

          v59 = qword_1EDD41F40;

          sub_1D99A19C0(v46, type metadata accessor for EspressoModel);
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_engineResult) = v59;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_usesCPUOnly) = 0;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket) = v48;
          v108.origin.x = 0.0;
          v108.origin.y = 0.0;
          v108.size.width = 1.0;
          v108.size.height = 1.0;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest) = CGRectIntersection(*(v47 + 5), v108);
          v60 = v95;
          v95[3] = &type metadata for EspressoModelRequest;
          v60[4] = &off_1F5533650;

          *v60 = v50;
          sub_1D99A19C0(v91, type metadata accessor for EspressoModel);
          goto LABEL_19;
        }

        (*(v40 + 56))(v42, 1, 1, v43);
        sub_1D99A1888(v42);
      }

      else
      {

        sub_1D99A17C8(v101, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38, &unk_1D9C87440);
        type metadata accessor for E5Model(0);
        if (swift_dynamicCast())
        {
          v77 = v105;
          v78 = *(v37 + 18);
          v79 = swift_allocObject();
          *(v79 + 16) = sub_1D9B97690;
          *(v79 + 24) = v31;
          type metadata accessor for E5Request();
          v80 = v37;
          v81 = swift_allocObject();
          *(v81 + 16) = v77;
          *(v81 + 24) = 2;
          *(v81 + 32) = *&v77[OBJC_IVAR____TtC12VisualLookUp7E5Model_preferredMetalDevice];
          *(v81 + 40) = sub_1D99A1880;
          *(v81 + 48) = v79;
          *(v81 + 56) = 0;
          *(v81 + 64) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v81 + 72) = _Q0;
          *(v81 + 88) = 0;
          v83 = qword_1EDD349F0;
          swift_retain_n();

          swift_unknownObjectRetain();

          if (v83 != -1)
          {
            swift_once();
          }

          v84 = qword_1EDD41F40;

          *(v81 + 96) = v84;
          *(v81 + 104) = v78;
          v110.origin.x = 0.0;
          v110.origin.y = 0.0;
          v110.size.width = 1.0;
          v110.size.height = 1.0;
          *(v81 + 56) = CGRectIntersection(*(v80 + 5), v110);
          v85 = v95;
          v95[3] = &type metadata for E5ModelRequest;
          v85[4] = &off_1F552E318;

          *v85 = v81;
          goto LABEL_19;
        }
      }

      sub_1D99A182C();
      swift_allocError();
      *v86 = 0xD00000000000001BLL;
      *(v86 + 8) = 0x80000001D9CA3A70;
      *(v86 + 16) = 3;
      swift_willThrow();
    }

    else
    {

      sub_1D99A7E00(*(v41 + *(v89 + 32)), v104);
      v61 = v30;
      v62 = *(v30 + 18);
      type metadata accessor for DurationMeasurement(0);
      swift_allocObject();

      v63 = sub_1D9AFD4B8(v104, v62);

      sub_1D99A17C8(v101, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38, &unk_1D9C87440);
      if (swift_dynamicCast())
      {
        v64 = v105;
        v65 = swift_allocObject();
        v65[2] = v63;
        v65[3] = sub_1D9B97690;
        v65[4] = v31;
        v66 = objc_allocWithZone(MEMORY[0x1E6984468]);
        v100[4] = sub_1D99A1A20;
        v100[5] = v65;
        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 1107296256;
        v100[2] = sub_1D9BD99E0;
        v100[3] = &block_descriptor_17;
        v67 = _Block_copy(v100);
        v68 = v64;
        v41 = v93;
        v69 = v68;

        v70 = [v66 initWithModel:v69 completionHandler:v67];
        _Block_release(v67);

        [v70 setImageCropAndScaleOption_];
        v71 = v61[5];
        v72 = v61[6];
        v73 = v61[7];
        v74 = v61[8];
        v75 = v70;
        v109.origin.x = 0.0;
        v109.origin.y = 0.0;
        v109.size.width = 1.0;
        v109.size.height = 1.0;
        v106.origin.x = v71;
        v106.origin.y = v72;
        v106.size.width = v73;
        v106.size.height = v74;
        v107 = CGRectIntersection(v106, v109);
        [v75 setRegionOfInterest_];

        v76 = v95;
        v95[3] = &type metadata for VisionModelRequest;
        v76[4] = &off_1F55305B8;

        *v76 = v75;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0Tm(v101);
        sub_1D99A19C0(v41, type metadata accessor for MLModelInfo);

        return;
      }

      sub_1D99A182C();
      swift_allocError();
      *v87 = 0xD00000000000001BLL;
      *(v87 + 8) = 0x80000001D9CA3A70;
      *(v87 + 16) = 3;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    goto LABEL_24;
  }
}

double sub_1D9B96ABC(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D99A1A44(a1, v26);
  if (v27 == 1)
  {
    v9 = v26[0];
    v20 = v26[0];
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = v27;
    v10 = v26[0];
    a2(&v20);

    sub_1D99A1B04(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  }

  else
  {
    sub_1D9979B9C(v26, v25);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo;
      v14 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7FF8(*(v13 + *(v14 + 32)), v28);
      v15 = *(a5 + 144);
      type metadata accessor for DurationMeasurement(0);
      swift_allocObject();

      sub_1D9AFD4B8(v28, v15);

      sub_1D9B96CF4(v25, a5, a6, &v20);
      v16 = v20;
      v17 = v21;
      v19 = v22;
      v18 = v23;
      v24 = 0;
      sub_1D99A1AB4(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, 0);
      a2(&v20);
      sub_1D99A1B04(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
      sub_1D9AFCCA4();

      sub_1D99A1B04(v16, v17, *(&v17 + 1), v19, *(&v19 + 1), v18, 0);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  return result;
}

void sub_1D9B96CF4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v79 = a4;
  v80 = a3;
  v78 = a2;
  v6 = sub_1D9C7D8DC();
  *&v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (!v4)
  {
    v18 = v81;
    v19 = v84;
    v75 = v11;
    v76 = v9;
    v77 = v17;
    if (*(*(v17 + 24) + 16) == 2)
    {
      *&v81 = 0;
      v20 = OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo;
      sub_1D9B6242C(v84 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo, v14, type metadata accessor for MLModelInfo);
      v21 = *(v19 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_postProcessor);
      v22 = v80;
      if (v80)
      {
        v23 = *(v80 + 16);

        v24 = v76;
        if (v23 && (v25 = sub_1D99ED894(0x797469746E656469, 0xE800000000000000), (v26 & 1) != 0))
        {
          v27 = (*(v22 + 56) + 16 * v25);
          v28 = *v27;
          v29 = v27[1];
        }

        else
        {
          v28 = 0;
          v29 = 0xE000000000000000;
        }
      }

      else
      {

        v28 = 0;
        v29 = 0xE000000000000000;
        v24 = v76;
      }

      v35 = *(v77 + 24);
      if (!*(v35 + 16) || (v36 = sub_1D99ED894(0x797469746E656469, 0xE800000000000000), (v37 & 1) == 0))
      {
        v82 = 0;
        v83 = 0xE000000000000000;
        sub_1D9C7E40C();

        v82 = 0xD00000000000001BLL;
        v83 = 0x80000001D9CA3B20;
        MEMORY[0x1DA73DF90](0x797469746E656469, 0xE800000000000000);
        v54 = v82;
        v55 = v83;
        sub_1D99A182C();
        swift_allocError();
        *v56 = v54;
        *(v56 + 8) = v55;
        *(v56 + 16) = 4;
        swift_willThrow();
        sub_1D99A19C0(v14, type metadata accessor for MLModelInfo);

        return;
      }

      v38 = v28;
      v39 = v29;
      v40 = *(*(v35 + 56) + 8 * v36);
      v41 = sub_1D99F767C(v40, 1, 0);
      v74 = sub_1D99F7828(1uLL, v40, v41, sub_1D9B624AC, v21);

      v42 = v14;
      v43 = &v14[*(v24 + 24)];
      v44 = v43[1];
      v82 = *v43;
      v83 = v44;

      MEMORY[0x1DA73DF90](v38, v39);

      v45 = v82;
      v46 = v83;
      sub_1D99A19C0(v42, type metadata accessor for MLModelInfo);

      v47 = v75;
      sub_1D9B6242C(v84 + v20, v75, type metadata accessor for MLModelInfo);
      v48 = v80;
      if (v80 && *(v80 + 16))
      {
        v49 = sub_1D99ED894(0x6E69646465626D65, 0xE900000000000067);
        if (v50)
        {
          v51 = (*(v48 + 56) + 16 * v49);
          v52 = *v51;
          v53 = v51[1];
        }

        else
        {
          v52 = 0;
          v53 = 0xE000000000000000;
        }
      }

      else
      {
        v52 = 0;
        v53 = 0xE000000000000000;
      }

      v57 = *(v77 + 24);
      if (*(v57 + 16) && (v58 = sub_1D99ED894(0x6E69646465626D65, 0xE900000000000067), (v59 & 1) != 0))
      {
        v60 = *(*(v57 + 56) + 8 * v58);
        v61 = v81;
        v62 = sub_1D9C18DE8(v60);
        if (!v61)
        {
          v64 = v62;
          v84 = sub_1D9C19020(v62);
          v65 = (v47 + *(v76 + 24));
          v66 = v65[1];
          v82 = *v65;
          v83 = v66;

          MEMORY[0x1DA73DF90](v52, v53);

          v67 = v82;
          v68 = v83;
          sub_1D99A19C0(v47, type metadata accessor for MLModelInfo);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B8, &unk_1D9C865A0);
          v69 = swift_allocObject();
          v81 = xmmword_1D9C85660;
          *(v69 + 16) = xmmword_1D9C85660;
          *(v69 + 32) = v84;
          *(v69 + 40) = v67;
          *(v69 + 48) = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51960, &unk_1D9C985E0);
          v70 = swift_allocObject();
          *(v70 + 16) = v81;
          *(v70 + 32) = v45;
          *(v70 + 40) = v46;
          *(v70 + 48) = v74;

          v71 = v79;
          v72 = *(v78 + 88);
          *v79 = *(v78 + 72);
          v71[1] = v72;
          *(v71 + 4) = v69;
          *(v71 + 5) = v70;
          return;
        }
      }

      else
      {

        sub_1D99A182C();
        swift_allocError();
        *v63 = 0xD00000000000001FLL;
        *(v63 + 8) = 0x80000001D9CAAEC0;
        *(v63 + 16) = 4;
        swift_willThrow();
      }

      sub_1D99A19C0(v47, type metadata accessor for MLModelInfo);
    }

    else
    {
      v30 = v6;
      static Logger.argos.getter(v8);
      v31 = sub_1D9C7D8BC();
      v32 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D9962000, v31, v32, "SignSymbol model expected 2 outputs", v33, 2u);
        MEMORY[0x1DA7405F0](v33, -1, -1);
      }

      (*(v18 + 8))(v8, v30);
      sub_1D99A182C();
      swift_allocError();
      *v34 = 0xD000000000000013;
      *(v34 + 8) = 0x80000001D9CAAEA0;
      *(v34 + 16) = 4;
      swift_willThrow();
    }
  }
}

double sub_1D9B97478()
{
  sub_1D99A19C0(v0 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo, type metadata accessor for MLModelInfo);

  return result;
}

uint64_t sub_1D9B974DC()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo;

  sub_1D99A19C0(v0 + v1, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignSymbolModelFactory(uint64_t a1)
{
  result = qword_1EDD32CB8;
  if (!qword_1EDD32CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B975E4(uint64_t a1)
{
  result = type metadata accessor for MLModelInfo(319);
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

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D9B976BC(uint64_t a1)
{
  v2 = 0;
  v12[2] = MEMORY[0x1DA73E230](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_1D9B91DE4(v12, v10, v11);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1D9B97860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(_OWORD *))
{
  v56 = a5;
  v57 = a8;
  v53 = a7;
  v54 = a4;
  v15 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v46 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v52 = a11;
    v49 = a10;
    v50 = a9;
    v24 = *(a2 + 144);
    v60[8] = *(a2 + 128);
    v60[9] = v24;
    v60[10] = *(a2 + 160);
    v61 = *(a2 + 176);
    v25 = *(a2 + 80);
    v60[4] = *(a2 + 64);
    v60[5] = v25;
    v26 = *(a2 + 112);
    v60[6] = *(a2 + 96);
    v60[7] = v26;
    v27 = *(a2 + 16);
    v60[0] = *a2;
    v60[1] = v27;
    v28 = *(a2 + 48);
    v60[2] = *(a2 + 32);
    v60[3] = v28;
    v51 = Strong;
    sub_1D99A17C8(a3, v59);
    v47 = v21;
    sub_1D99AB100(v54, v21, &unk_1ECB51B10, &qword_1D9C86550);
    v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D9BA4538(v56, v48, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v29 = (*(v18 + 80) + 64) & ~*(v18 + 80);
    v30 = (v19 + *(v55 + 80) + v29) & ~*(v55 + 80);
    v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = a6;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    sub_1D9979B9C(v59, v34 + 24);
    sub_1D9A0E758(v47, v34 + v29);
    sub_1D9BA45A0(v48, v34 + v30, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v35 = v57;
    *(v34 + v31) = v56;
    v36 = v53;
    *(v34 + v32) = v53;
    v37 = (v34 + v33);
    v38 = v50;
    *v37 = v35;
    v37[1] = v38;
    v39 = v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8);
    v40 = *(a2 + 48);
    *(v39 + 32) = *(a2 + 32);
    *(v39 + 48) = v40;
    v41 = *(a2 + 16);
    *v39 = *a2;
    *(v39 + 16) = v41;
    v42 = *(a2 + 112);
    *(v39 + 96) = *(a2 + 96);
    *(v39 + 112) = v42;
    v43 = *(a2 + 80);
    *(v39 + 64) = *(a2 + 64);
    *(v39 + 80) = v43;
    *(v39 + 176) = *(a2 + 176);
    v44 = *(a2 + 160);
    *(v39 + 144) = *(a2 + 144);
    *(v39 + 160) = v44;
    *(v39 + 128) = *(a2 + 128);

    v45 = v36;

    sub_1D99BB40C(a2, &v58);
    sub_1D9B9B478(v60, v52, v34);
  }

  return result;
}

uint64_t sub_1D9B97BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a1 + 144);
    v27[8] = *(a1 + 128);
    v27[9] = v19;
    v27[10] = *(a1 + 160);
    v28 = *(a1 + 176);
    v20 = *(a1 + 80);
    v27[4] = *(a1 + 64);
    v27[5] = v20;
    v21 = *(a1 + 112);
    v27[6] = *(a1 + 96);
    v27[7] = v21;
    v22 = *(a1 + 16);
    v27[0] = *a1;
    v27[1] = v22;
    v23 = *(a1 + 48);
    v27[2] = *(a1 + 32);
    v27[3] = v23;

    sub_1D99BB40C(a10, &v26);
    a11(a3, v27, a4, a5, a6, a7, v18, a8, a9, a10);

    return sub_1D9A0009C(a10);
  }

  return result;
}

uint64_t sub_1D9B97D94(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v41 = a5;
  v49 = a3;
  v47 = a2;
  v48 = sub_1D9C7D8DC();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0, &unk_1D9C881A0);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v39 - v11;
  v42 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  sub_1D99AB100(a1, &v39 - v18, &unk_1ECB53570, &unk_1D9C9C2A0);
  v43 = v15;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D99A6AE0(v19, &unk_1ECB53570, &unk_1D9C9C2A0);
    return v47(a1);
  }

  else
  {
    sub_1D9BA45A0(v19, v14, type metadata accessor for VisualSearchResultInternal);
    v21 = *(a4 + 144);
    v51[8] = *(a4 + 128);
    v51[9] = v21;
    v51[10] = *(a4 + 160);
    v52 = *(a4 + 176);
    v22 = *(a4 + 80);
    v51[4] = *(a4 + 64);
    v51[5] = v22;
    v23 = *(a4 + 112);
    v51[6] = *(a4 + 96);
    v51[7] = v23;
    v24 = *(a4 + 16);
    v51[0] = *a4;
    v51[1] = v24;
    v25 = *(a4 + 48);
    v51[2] = *(a4 + 32);
    v51[3] = v25;
    sub_1D99BB40C(a4, &v50);
    sub_1D9B79970(v51);
    v26 = sub_1D9C7CF3C();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    v27 = v42;
    sub_1D9BA3EA4(v12, &v14[*(v42 + 28)]);
    static Logger.argos.getter(v10);
    sub_1D9A3E0E0(v46);
    v28 = *(v45 + 8);
    v28(v10, v48);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E09C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v51[0] = v32;
      *v31 = 136315138;
      swift_beginAccess();
      sub_1D99AB100(&v14[*(v27 + 28)], v12, &qword_1ECB519D0, &unk_1D9C881A0);
      v33 = sub_1D9C7DCEC();
      v35 = sub_1D9A0E224(v33, v34, v51);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1D9962000, v29, v30, v41, v31, 0xCu);
      v36 = __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x1DA7405F0](v32, -1, -1, v36);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    v28(v46, v48);
    v37 = v47;
    swift_beginAccess();
    v38 = v44;
    sub_1D9BA4538(v14, v44, type metadata accessor for VisualSearchResultInternal);
    swift_storeEnumTagMultiPayload();
    v37(v38);
    sub_1D99A6AE0(v38, &unk_1ECB53570, &unk_1D9C9C2A0);
    return sub_1D9BA4608(v14, type metadata accessor for VisualSearchResultInternal);
  }
}

double sub_1D9B982C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a5;
  v55 = a8;
  v51 = a4;
  v52 = a7;
  v14 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v46 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v49 = a10;
    v48 = a9;
    v23 = *(a2 + 144);
    v59[8] = *(a2 + 128);
    v59[9] = v23;
    v59[10] = *(a2 + 160);
    v60 = *(a2 + 176);
    v24 = *(a2 + 80);
    v59[4] = *(a2 + 64);
    v59[5] = v24;
    v25 = *(a2 + 112);
    v59[6] = *(a2 + 96);
    v59[7] = v25;
    v26 = *(a2 + 16);
    v59[0] = *a2;
    v59[1] = v26;
    v27 = *(a2 + 48);
    v59[2] = *(a2 + 32);
    v59[3] = v27;
    v50 = Strong;
    sub_1D99AB100(a3, v57, &qword_1ECB51B30, &qword_1D9C99390);
    v46 = v20;
    sub_1D99AB100(v51, v20, &unk_1ECB51B10, &qword_1D9C86550);
    v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D9BA4538(v54, v47, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v28 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v29 = (v18 + *(v53 + 80) + v28) & ~*(v53 + 80);
    v53 = a6;
    v54 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = v55;
    v33 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    v35 = v57[1];
    *(v34 + 24) = v57[0];
    *(v34 + 40) = v35;
    *(v34 + 56) = v58;
    sub_1D9A0E758(v46, v34 + v28);
    sub_1D9BA45A0(v47, v34 + v29, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    *(v34 + v54) = v53;
    v36 = v52;
    *(v34 + v51) = v52;
    *(v34 + v30) = v32;
    v37 = (v34 + v31);
    v38 = v49;
    *v37 = v48;
    v37[1] = v38;
    v39 = v34 + v33;
    v40 = *(a2 + 48);
    *(v39 + 32) = *(a2 + 32);
    *(v39 + 48) = v40;
    v41 = *(a2 + 16);
    *v39 = *a2;
    *(v39 + 16) = v41;
    v42 = *(a2 + 112);
    *(v39 + 96) = *(a2 + 96);
    *(v39 + 112) = v42;
    v43 = *(a2 + 80);
    *(v39 + 64) = *(a2 + 64);
    *(v39 + 80) = v43;
    *(v39 + 176) = *(a2 + 176);
    v44 = *(a2 + 160);
    *(v39 + 144) = *(a2 + 144);
    *(v39 + 160) = v44;
    *(v39 + 128) = *(a2 + 128);

    v45 = v36;

    sub_1D99BB40C(a2, &v56);
    sub_1D9B9B478(v59, sub_1D9BA8388, v34);
  }

  return result;
}

uint64_t sub_1D9B98660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, void *a8, uint64_t (*a9)(char *), uint64_t a10, uint64_t a11)
{
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  v17 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v25[1] = v16;
    v25[3] = v14;
    v20 = *(a1 + 144);
    v31[8] = *(a1 + 128);
    v31[9] = v20;
    v31[10] = *(a1 + 160);
    v32 = *(a1 + 176);
    v21 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v21;
    v22 = *(a1 + 112);
    v31[6] = *(a1 + 96);
    v31[7] = v22;
    v23 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v23;
    v24 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v24;
    swift_retain_n();
    sub_1D99BB40C(a11, &v30);
    v25[2] = a9;
    sub_1D9BA0F6C(v26, v31, v27, v28, v29, a7, a8, v19, a9, a10, a11);

    return sub_1D9A0009C(a11);
  }

  return result;
}

double sub_1D9B98A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a8;
  v53 = a7;
  v50 = a6;
  v51 = a4;
  v54 = a5;
  v12 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v45 - v18;
  swift_beginAccess();
  v55 = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = a9;
    v22 = *(a2 + 144);
    v57[8] = *(a2 + 128);
    v57[9] = v22;
    v57[10] = *(a2 + 160);
    v58 = *(a2 + 176);
    v23 = *(a2 + 80);
    v57[4] = *(a2 + 64);
    v57[5] = v23;
    v24 = *(a2 + 112);
    v57[6] = *(a2 + 96);
    v57[7] = v24;
    v25 = *(a2 + 16);
    v57[0] = *a2;
    v57[1] = v25;
    v26 = *(a2 + 48);
    v57[2] = *(a2 + 32);
    v57[3] = v26;
    v49 = Strong;
    v46 = v19;
    sub_1D99AB100(a3, v19, &unk_1ECB51B10, &qword_1D9C86550);
    v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D9BA4538(v51, v47, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v27 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v28 = (v17 + *(v13 + 80) + v27) & ~*(v13 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = a3;
    v33 = swift_allocObject();
    *(v33 + 16) = v55;
    sub_1D9A0E758(v46, v33 + v27);
    sub_1D9BA45A0(v47, v33 + v28, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v34 = v53;
    *(v33 + v29) = v54;
    v35 = v50;
    *(v33 + v30) = v50;
    *(v33 + v31) = v34;
    v36 = (v33 + v32);
    v37 = v48;
    *v36 = v52;
    v36[1] = v37;
    v38 = v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
    v39 = *(a2 + 48);
    *(v38 + 32) = *(a2 + 32);
    *(v38 + 48) = v39;
    v40 = *(a2 + 16);
    *v38 = *a2;
    *(v38 + 16) = v40;
    v41 = *(a2 + 112);
    *(v38 + 96) = *(a2 + 96);
    *(v38 + 112) = v41;
    v42 = *(a2 + 80);
    *(v38 + 64) = *(a2 + 64);
    *(v38 + 80) = v42;
    *(v38 + 176) = *(a2 + 176);
    v43 = *(a2 + 160);
    *(v38 + 144) = *(a2 + 144);
    *(v38 + 160) = v43;
    *(v38 + 128) = *(a2 + 128);

    v44 = v35;

    sub_1D99BB40C(a2, &v56);
    sub_1D9B99CA4(v57, v51, sub_1D9BA85BC, v33);
  }

  return result;
}

void *sub_1D9B98D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t (*a8)(char *), uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v29 = a5;
  v27 = a4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v26);
  v15 = v25 - v14;
  v16 = sub_1D9C7D8DC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v25[0] = v17;
    v25[1] = v15;
    v20 = *(a1 + 144);
    v31[8] = *(a1 + 128);
    v31[9] = v20;
    v31[10] = *(a1 + 160);
    v32 = *(a1 + 176);
    v21 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v21;
    v22 = *(a1 + 112);
    v31[6] = *(a1 + 96);
    v31[7] = v22;
    v23 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v23;
    v24 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v24;

    sub_1D99BB40C(a10, &v30);
    sub_1D9BA4AEC(v31, a3, v27, v29, v28, a7, v19, a8, a9, a10);

    return sub_1D9A0009C(a10);
  }

  return result;
}

uint64_t sub_1D9B99130(char *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v71 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0, &unk_1D9C881A0);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v61 - v6;
  v68 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D9C7D8DC();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v63 = a1;
  sub_1D99AB100(a1, &v61 - v21, &unk_1ECB53570, &unk_1D9C9C2A0);
  v66 = v18;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D99A6AE0(v22, &unk_1ECB53570, &unk_1D9C9C2A0);
    static Logger.argos.getter(v17);
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
    }

    v23 = v72;
    __swift_project_value_buffer(v72, qword_1EDD2C990);
    v69[1](v17, v23);
    v24 = sub_1D9C7D8BC();
    v25 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D9962000, v24, v25, "search(): failure", v26, 2u);
      MEMORY[0x1DA7405F0](v26, -1, -1);
    }

    return v71(v63);
  }

  else
  {
    v28 = v22;
    v29 = v62;
    sub_1D9BA45A0(v28, v62, type metadata accessor for VisualSearchResultInternal);
    v30 = *(a4 + 144);
    v74[8] = *(a4 + 128);
    v74[9] = v30;
    v74[10] = *(a4 + 160);
    v75 = *(a4 + 176);
    v31 = *(a4 + 80);
    v74[4] = *(a4 + 64);
    v74[5] = v31;
    v32 = *(a4 + 112);
    v74[6] = *(a4 + 96);
    v74[7] = v32;
    v33 = *(a4 + 16);
    v74[0] = *a4;
    v74[1] = v33;
    v34 = *(a4 + 48);
    v74[2] = *(a4 + 32);
    v74[3] = v34;
    sub_1D99BB40C(a4, &v73);
    sub_1D9B79970(v74);
    v35 = sub_1D9C7CF3C();
    (*(*(v35 - 8) + 56))(v7, 0, 1, v35);
    sub_1D9BA3EA4(v7, v29 + *(v68 + 28));
    static Logger.argos.getter(v14);
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
    }

    v63 = v7;
    v36 = v72;
    __swift_project_value_buffer(v72, qword_1EDD2C990);
    v37 = v69[1];
    (v37)(v14, v36);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E09C();
    v40 = os_log_type_enabled(v38, v39);
    v69 = v37;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v74[0] = v42;
      *v41 = 136315138;
      swift_beginAccess();
      v43 = v29;
      v44 = VisualSearchResultInternal.shortDescriptionForConsumerLogging()();
      v45 = sub_1D9A0E224(v44._countAndFlagsBits, v44._object, v74);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1D9962000, v38, v39, "search(): %s", v41, 0xCu);
      v46 = __swift_destroy_boxed_opaque_existential_0Tm(v42);
      v47 = v42;
      v36 = v72;
      MEMORY[0x1DA7405F0](v47, -1, -1, v46);
      v48 = v41;
      v37 = v69;
      MEMORY[0x1DA7405F0](v48, -1, -1);
    }

    else
    {
      v43 = v29;
    }

    v49 = v64;
    v50 = v65;
    static Logger.argos.getter(v64);
    sub_1D9A3E0E0(v50);
    (v37)(v49, v36);
    v51 = sub_1D9C7D8BC();
    v52 = sub_1D9C7E09C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v74[0] = v54;
      *v53 = 136315138;
      v55 = v43;
      swift_beginAccess();
      sub_1D99AB100(v43 + *(v68 + 28), v63, &qword_1ECB519D0, &unk_1D9C881A0);
      v56 = sub_1D9C7DCEC();
      v58 = sub_1D9A0E224(v56, v57, v74);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_1D9962000, v51, v52, "search(): result.userFeedbackIntermediateResults = %s", v53, 0xCu);
      v59 = __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x1DA7405F0](v54, -1, -1, v59);
      MEMORY[0x1DA7405F0](v53, -1, -1);

      (v69)(v50, v72);
    }

    else
    {

      (v37)(v50, v36);
      v55 = v43;
    }

    swift_beginAccess();
    v60 = v67;
    sub_1D9BA4538(v55, v67, type metadata accessor for VisualSearchResultInternal);
    swift_storeEnumTagMultiPayload();
    v71(v60);
    sub_1D99A6AE0(v60, &unk_1ECB53570, &unk_1D9C9C2A0);
    return sub_1D9BA4608(v55, type metadata accessor for VisualSearchResultInternal);
  }
}

uint64_t sub_1D9B998E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v40 = a7;
  v41 = a6;
  v39 = a1;
  v9 = type metadata accessor for ServerSearchResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v37 - v15);
  sub_1D9AFCCA4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    if (a5)
    {
      swift_beginAccess();
      v19 = *(a5 + 16);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D9A19294(v19);
    swift_endAccess();
    sub_1D99AB100(v39, v13, &qword_1ECB53DC0, &unk_1D9C9C160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v16 = *v13;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v20 = v38;
      sub_1D9BA45A0(v13, v38, type metadata accessor for ServerSearchResult);
      v21 = (v20 + *(v9 + 24));
      v23 = *v21;
      v22 = v21[1];
      swift_beginAccess();
      *(a4 + 144) = v23;
      *(a4 + 152) = v22;

      swift_beginAccess();
      v24 = *(a4 + 160);
      v25 = *(a4 + 128);
      v61 = *(a4 + 144);
      v62 = v24;
      v26 = *(a4 + 160);
      v63 = *(a4 + 176);
      v27 = *(a4 + 96);
      v28 = *(a4 + 64);
      v57 = *(a4 + 80);
      v58 = v27;
      v29 = *(a4 + 96);
      v30 = *(a4 + 128);
      v59 = *(a4 + 112);
      v60 = v30;
      v31 = *(a4 + 32);
      v54[0] = *(a4 + 16);
      v54[1] = v31;
      v32 = *(a4 + 64);
      v34 = *(a4 + 16);
      v33 = *(a4 + 32);
      v55 = *(a4 + 48);
      v56 = v32;
      v35 = *(a4 + 176);
      v51 = v26;
      v52 = v35;
      v46 = v57;
      v47 = v29;
      v48 = v59;
      v49 = v25;
      v50 = v61;
      v42 = v34;
      v43 = v33;
      v64 = *(a4 + 192);
      v53 = *(a4 + 192);
      v44 = v55;
      v45 = v28;
      v36 = *(v18 + 64);
      sub_1D99BB40C(v54, v65);
      sub_1D9B3BD0C(v20, &v42, v36, v16);
      v65[8] = v50;
      v65[9] = v51;
      v65[10] = v52;
      v66 = v53;
      v65[4] = v46;
      v65[5] = v47;
      v65[6] = v48;
      v65[7] = v49;
      v65[0] = v42;
      v65[1] = v43;
      v65[2] = v44;
      v65[3] = v45;
      sub_1D9A0009C(v65);
      sub_1D9BA4608(v20, type metadata accessor for ServerSearchResult);
    }

    v41(v16);

    return sub_1D99A6AE0(v16, &unk_1ECB53570, &unk_1D9C9C2A0);
  }

  return result;
}

double sub_1D9B99CA4(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4)
{
  v146 = a4;
  v143 = a3;
  v147 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0, &qword_1D9C93A78);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v144 = &v130 - v6;
  v7 = sub_1D9C7D8DC();
  v148 = *(v7 - 8);
  v149 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v138 = &v130 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v130 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v137 = &v130 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v142 = &v130 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v130 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v132 = &v130 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v130 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v135 = &v130 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v130 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v134 = &v130 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v133 = &v130 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v130 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v130 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v141 = (&v130 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v130 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v130 - v43;
  Context = type metadata accessor for VisualQueryContext(0);
  v46 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v48 = &v130 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a1 + 144);
  v186 = *(a1 + 128);
  v187 = v49;
  v188 = *(a1 + 160);
  v189 = *(a1 + 176);
  v50 = *(a1 + 80);
  v185[4] = *(a1 + 64);
  v185[5] = v50;
  v51 = *(a1 + 112);
  v185[6] = *(a1 + 96);
  v185[7] = v51;
  v52 = *(a1 + 16);
  v185[0] = *a1;
  v185[1] = v52;
  v53 = *(a1 + 48);
  v185[2] = *(a1 + 32);
  v185[3] = v53;
  sub_1D99AB100(v147, v44, &unk_1ECB51B10, &qword_1D9C86550);
  if ((*(v46 + 48))(v44, 1, Context) == 1)
  {
    sub_1D99A6AE0(v44, &unk_1ECB51B10, &qword_1D9C86550);
LABEL_8:
    v60 = v149;
    static Logger.argos.getter(v36);
    sub_1D9A3E0E0(v33);
    v150 = *(v148 + 8);
    v150(v36, v60);
    v61 = sub_1D9C7D8BC();
    v62 = sub_1D9C7E08C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1D9962000, v61, v62, "Location is not set in queryContext", v63, 2u);
      MEMORY[0x1DA7405F0](v63, -1, -1);
    }

    v150(v33, v60);
    v59 = 0;
    goto LABEL_11;
  }

  sub_1D9BA45A0(v44, v48, type metadata accessor for VisualQueryContext);
  if (!*&v48[*(Context + 44)])
  {
    sub_1D9BA4608(v48, type metadata accessor for VisualQueryContext);
    goto LABEL_8;
  }

  static Logger.argos.getter(v41);
  v54 = v141;
  sub_1D9A3E0E0(v141);
  v55 = v149;
  v150 = *(v148 + 8);
  v150(v41, v149);
  v56 = sub_1D9C7D8BC();
  v57 = sub_1D9C7E08C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1D9962000, v56, v57, "Location is set in queryContext", v58, 2u);
    MEMORY[0x1DA7405F0](v58, -1, -1);
  }

  v150(v54, v55);
  sub_1D9BA4608(v48, type metadata accessor for VisualQueryContext);
  v59 = 1;
LABEL_11:
  v64 = swift_allocObject();
  *(v64 + 16) = 1;
  sub_1D99BB40C(v185, &v169);
  v65 = sub_1D9BA3478(v147);
  v66 = dispatch_group_create();
  dispatch_group_enter(v66);
  v67 = sub_1D9C7DFBC();
  v68 = v144;
  (*(*(v67 - 8) + 56))(v144, 1, 1, v67);
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  *(v69 + 32) = v66;
  *(v69 + 40) = v64;
  *(v69 + 48) = v145;
  *(v69 + 56) = v65;
  v70 = v66;
  v147 = v64;

  sub_1D9BC1E20(0, 0, v68, &unk_1D9C99C88, v69);

  sub_1D9C7E0DC();
  swift_beginAccess();
  v71 = *(v64 + 16);
  if (v71)
  {
    v72 = v149;
    v141 = v70;
    if (v71 == 1)
    {
      v73 = v138;
      static Logger.argos.getter(v138);
      v74 = v140;
      sub_1D9A3E0E0(v140);
      v150(v73, v72);
      v75 = sub_1D9C7D8BC();
      v76 = sub_1D9C7E09C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_1D9962000, v75, v76, "Application does not have any allowed domains", v77, 2u);
        MEMORY[0x1DA7405F0](v77, -1, -1);
      }

      v150(v74, v72);
      v78 = MEMORY[0x1E69E7CD0];
      v79 = v143;
      goto LABEL_38;
    }

    v168 = v71;
    sub_1D99E93C8(v71);
    if ((v59 & 1) == 0)
    {
      v98 = v133;
      static Logger.argos.getter(v133);
      v99 = v134;
      sub_1D9A3E0E0(v134);
      v100 = (v148 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v150(v98, v72);
      v101 = sub_1D9C7D8BC();
      v102 = sub_1D9C7E09C();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_1D9962000, v101, v102, "No location signal, disable landmarks domains", v103, 2u);
        MEMORY[0x1DA7405F0](v103, -1, -1);
      }

      v150(v99, v72);
      v104 = sub_1D9B9E6EC(&unk_1F552A9D8);
      sub_1D9B9D9BC(v104);

      v105 = v142;
      goto LABEL_34;
    }

    if (sub_1D9A75D94())
    {
      if (qword_1ECB50988 == -1)
      {
LABEL_27:
        v105 = v142;

        v106 = sub_1D9A16B7C();

        v107 = v148 + 8;
        if (v106)
        {
          v108 = v130;
          static Logger.argos.getter(v130);
          sub_1D9A3E0E0(v135);
          v100 = v107 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v150(v108, v72);
          v109 = sub_1D9C7D8BC();
          v110 = sub_1D9C7E09C();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            *v111 = 0;
            _os_log_impl(&dword_1D9962000, v109, v110, "cameraDomainsLocationFilterEnabled is true, disable landmarks domains", v111, 2u);
            MEMORY[0x1DA7405F0](v111, -1, -1);
          }

          v150(v135, v72);
          v112 = sub_1D9B9E6EC(&unk_1F552AA00);
          sub_1D9B9D9BC(v112);
        }

        else
        {
          v113 = v131;
          static Logger.argos.getter(v131);
          v114 = v132;
          sub_1D9A3E0E0(v132);
          v100 = v107 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v150(v113, v72);
          v115 = sub_1D9C7D8BC();
          v116 = sub_1D9C7E09C();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            *v117 = 0;
            _os_log_impl(&dword_1D9962000, v115, v116, "Domain location filter does not apply", v117, 2u);
            MEMORY[0x1DA7405F0](v117, -1, -1);
          }

          v150(v114, v72);
        }

LABEL_34:
        v118 = v136;
        static Logger.argos.getter(v136);
        sub_1D9A3E0E0(v105);
        v150(v118, v72);
        v78 = v168;

        v119 = sub_1D9C7D8BC();
        v120 = sub_1D9C7E09C();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *&v169 = v122;
          *v121 = 134218242;
          *(v121 + 4) = *(v78 + 16);

          *(v121 + 12) = 2080;
          sub_1D99E3A84(v78);
          v123 = MEMORY[0x1DA73E110]();
          v148 = v100;
          v124 = v123;
          v126 = v125;

          v127 = sub_1D9A0E224(v124, v126, &v169);

          *(v121 + 14) = v127;
          _os_log_impl(&dword_1D9962000, v119, v120, "Application can search domain count: %ld, domains: %s", v121, 0x16u);
          v128 = __swift_destroy_boxed_opaque_existential_0Tm(v122);
          MEMORY[0x1DA7405F0](v122, -1, -1, v128);
          MEMORY[0x1DA7405F0](v121, -1, -1);

          v150(v142, v149);
        }

        else
        {

          v150(v105, v72);
        }

        v79 = v143;
LABEL_38:
        v159 = v186;
        v160 = v187;
        v161 = v188;
        v162 = v189;
        v155 = v185[4];
        v156 = v185[5];
        v157 = v185[6];
        v158 = v185[7];
        v151 = v185[0];
        v152 = v185[1];
        v153 = v185[2];
        v154 = v185[3];
        sub_1D9B69C68(v78, v163);

        v177 = v159;
        v178 = v160;
        v179 = v161;
        v180 = v162;
        v173 = v155;
        v174 = v156;
        v175 = v157;
        v176 = v158;
        v169 = v151;
        v170 = v152;
        v171 = v153;
        v172 = v154;
        sub_1D9A0009C(&v169);
        v97 = *&v163[0];
        v181 = *(v163 + 8);
        v182 = *(&v163[1] + 8);
        v183 = *(&v163[2] + 8);
        v184 = *(&v163[3] + 8);
        v95 = *(&v163[4] + 8);
        v96 = *(&v163[5] + 8);
        v93 = *(&v163[6] + 8);
        v94 = BYTE8(v163[7]);
        v92 = *(&v164 + 1);
        v91 = v164;
        v90 = v165;
        v89 = v166;
        v88 = v167;
        v70 = v141;
        goto LABEL_39;
      }
    }

    else if (qword_1EDD355A0 == -1)
    {
      goto LABEL_27;
    }

    swift_once();
    goto LABEL_27;
  }

  v80 = v137;
  static Logger.argos.getter(v137);
  v81 = v139;
  sub_1D9A3E0E0(v139);
  v82 = v149;
  v150(v80, v149);
  v83 = sub_1D9C7D8BC();
  v84 = sub_1D9C7E09C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v70;
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1D9962000, v83, v84, "Application can search any domain", v86, 2u);
    v87 = v86;
    v70 = v85;
    MEMORY[0x1DA7405F0](v87, -1, -1);
  }

  v150(v81, v82);
  v88 = v189;
  v90 = v187;
  v89 = v188;
  v92 = *(&v186 + 1);
  v91 = v186;
  v93 = *(&v185[6] + 8);
  v94 = BYTE8(v185[7]);
  v95 = *(&v185[4] + 8);
  v96 = *(&v185[5] + 8);
  v97 = *&v185[0];
  v181 = *(v185 + 8);
  v182 = *(&v185[1] + 8);
  v183 = *(&v185[2] + 8);
  v184 = *(&v185[3] + 8);
  v79 = v143;
LABEL_39:
  *(v163 + 8) = v181;
  *(&v163[1] + 8) = v182;
  *(&v163[2] + 8) = v183;
  LOBYTE(v151) = v94;
  *&v163[0] = v97;
  *(&v163[3] + 8) = v184;
  *(&v163[4] + 8) = v95;
  *(&v163[5] + 8) = v96;
  *(&v163[6] + 8) = v93;
  BYTE8(v163[7]) = v94;
  *&v164 = v91;
  *(&v164 + 1) = v92;
  v165 = v90;
  v166 = v89;
  v167 = v88;
  v79(v163);

  v177 = v164;
  v178 = v165;
  v179 = v166;
  v180 = v167;
  v173 = v163[4];
  v174 = v163[5];
  v175 = v163[6];
  v176 = v163[7];
  v169 = v163[0];
  v170 = v163[1];
  v171 = v163[2];
  v172 = v163[3];
  sub_1D9A0009C(&v169);

  return result;
}

uint64_t sub_1D9B9ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 80) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D9B9ACF0, 0, 0);
}

uint64_t sub_1D9B9ACF0()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D9B9AD8C;
  v2 = *(v0 + 80);

  return sub_1D99E465C(v2);
}

uint64_t sub_1D9B9AD8C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D9BA90D4, 0, 0);
}

double sub_1D9B9AE8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v67 = a8;
  v68 = a5;
  v69 = a7;
  v65 = a4;
  v18 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v54 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v63 = a14;
    v62 = a13;
    v61 = a12;
    v60 = a11;
    v59 = a10;
    v58 = a9;
    v27 = *(a2 + 144);
    v72[8] = *(a2 + 128);
    v72[9] = v27;
    v72[10] = *(a2 + 160);
    v73 = *(a2 + 176);
    v28 = *(a2 + 80);
    v72[4] = *(a2 + 64);
    v72[5] = v28;
    v29 = *(a2 + 112);
    v72[6] = *(a2 + 96);
    v72[7] = v29;
    v30 = *(a2 + 16);
    v72[0] = *a2;
    v72[1] = v30;
    v31 = *(a2 + 48);
    v72[2] = *(a2 + 32);
    v72[3] = v31;
    v64 = Strong;
    sub_1D99A17C8(a3, v71);
    v56 = v24;
    sub_1D99AB100(v65, v24, &unk_1ECB51B10, &qword_1D9C86550);
    v57 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D9BA4538(v68, v57, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v32 = (*(v21 + 80) + 64) & ~*(v21 + 80);
    v33 = (v22 + *(v66 + 80) + v32) & ~*(v66 + 80);
    v34 = (v19 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = (((v34 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = a6;
    v35 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    sub_1D9979B9C(v71, v37 + 24);
    sub_1D9A0E758(v56, v37 + v32);
    sub_1D9BA45A0(v57, v37 + v33, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v38 = (v37 + v34);
    v39 = v69;
    *v38 = v55;
    v38[1] = v39;
    v40 = (v37 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8));
    v41 = v58;
    v42 = v59;
    *v40 = v67;
    v40[1] = v41;
    *(v37 + v68) = v42;
    v44 = v60;
    v43 = v61;
    *(v37 + v66) = v60;
    *(v37 + v35) = v43;
    v45 = (v37 + v36);
    v46 = v63;
    *v45 = v62;
    v45[1] = v46;
    v47 = v37 + v65;
    v48 = *(a2 + 48);
    *(v47 + 32) = *(a2 + 32);
    *(v47 + 48) = v48;
    v49 = *(a2 + 16);
    *v47 = *a2;
    *(v47 + 16) = v49;
    v50 = *(a2 + 112);
    *(v47 + 96) = *(a2 + 96);
    *(v47 + 112) = v50;
    v51 = *(a2 + 80);
    *(v47 + 64) = *(a2 + 64);
    *(v47 + 80) = v51;
    *(v47 + 176) = *(a2 + 176);
    v52 = *(a2 + 160);
    *(v47 + 144) = *(a2 + 144);
    *(v47 + 160) = v52;
    *(v47 + 128) = *(a2 + 128);

    v53 = v44;

    sub_1D99BB40C(a2, &v70);
    sub_1D9B9B478(v72, sub_1D9BA4978, v37);
  }

  return result;
}

unint64_t sub_1D9B9B280(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t (*a13)(uint64_t), uint64_t a14, uint64_t a15)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v20);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = *(a1 + 144);
    v31[8] = *(a1 + 128);
    v31[9] = v23;
    v31[10] = *(a1 + 160);
    v32 = *(a1 + 176);
    v24 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v24;
    v25 = *(a1 + 112);
    v31[6] = *(a1 + 96);
    v31[7] = v25;
    v26 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v26;
    v27 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v27;

    sub_1D99BB40C(a15, &v30);
    sub_1D9BA6070(a3, v31, a4, a5, a6, a7, a8, a9, a10, a11, a12, v22, a13, a14, a15);

    return sub_1D9A0009C(a15);
  }

  return result;
}

double sub_1D9B9B478(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v5 = sub_1D9C7D8DC();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v59[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0, &qword_1D9C93A78);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59[-v14];
  v16 = *(a1 + 144);
  v102 = *(a1 + 128);
  v103 = v16;
  v104 = *(a1 + 160);
  v105 = *(a1 + 176);
  v17 = *(a1 + 80);
  v101[4] = *(a1 + 64);
  v101[5] = v17;
  v18 = *(a1 + 112);
  v101[6] = *(a1 + 96);
  v101[7] = v18;
  v19 = *(a1 + 16);
  v101[0] = *a1;
  v101[1] = v19;
  v20 = *(a1 + 48);
  v101[2] = *(a1 + 32);
  v101[3] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  v22 = (v21 + 16);
  sub_1D99BB40C(v101, &v85);
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  v24 = sub_1D9C7DFBC();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v21;
  v25[6] = v3;
  v26 = v23;

  sub_1D9BC1E20(0, 0, v15, &unk_1D9C99C78, v25);

  sub_1D9C7E0DC();
  swift_beginAccess();
  v27 = *v22;
  if (*v22)
  {
    if (v27 == 1)
    {
      static Logger.argos.getter(v7);
      v28 = sub_1D9C7D8BC();
      v29 = sub_1D9C7E09C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v26;
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1D9962000, v28, v29, "Application does not have any allowed domains", v31, 2u);
        v32 = v31;
        v26 = v30;
        MEMORY[0x1DA7405F0](v32, -1, -1);
      }

      (*(v64 + 8))(v7, v65);
      v27 = MEMORY[0x1E69E7CD0];
    }

    else
    {

      v47 = v63;
      static Logger.argos.getter(v63);
      sub_1D99E93C8(v27);
      v48 = sub_1D9C7D8BC();
      v49 = sub_1D9C7E09C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v85 = v61;
        *v50 = 134218242;
        *(v50 + 4) = *(v27 + 16);
        sub_1D99E93D8(v27);
        *(v50 + 12) = 2080;
        sub_1D99E3A84(v27);
        v51 = MEMORY[0x1DA73E110]();
        v60 = v49;
        v52 = v51;
        v62 = v26;
        v54 = v53;

        v55 = sub_1D9A0E224(v52, v54, &v85);
        v26 = v62;

        *(v50 + 14) = v55;
        _os_log_impl(&dword_1D9962000, v48, v60, "Application can search domain count: %ld, domains: %s", v50, 0x16u);
        v56 = v61;
        v57 = __swift_destroy_boxed_opaque_existential_0Tm(v61);
        MEMORY[0x1DA7405F0](v56, -1, -1, v57);
        MEMORY[0x1DA7405F0](v50, -1, -1);

        (*(v64 + 8))(v63, v65);
      }

      else
      {
        sub_1D99E93D8(v27);

        (*(v64 + 8))(v47, v65);
      }
    }

    v76 = v102;
    v77 = v103;
    v78 = v104;
    v79 = v105;
    v72 = v101[4];
    v73 = v101[5];
    v74 = v101[6];
    v75 = v101[7];
    v68 = v101[0];
    v69 = v101[1];
    v70 = v101[2];
    v71 = v101[3];
    sub_1D9B69C68(v27, v80);

    v93 = v76;
    v94 = v77;
    v95 = v78;
    v96 = v79;
    v89 = v72;
    v90 = v73;
    v91 = v74;
    v92 = v75;
    v85 = v68;
    v86 = v69;
    v87 = v70;
    v88 = v71;
    sub_1D9A0009C(&v85);
    v46 = *&v80[0];
    v97 = *(v80 + 8);
    v98 = *(&v80[1] + 8);
    v99 = *(&v80[2] + 8);
    v100 = *(&v80[3] + 8);
    v44 = *(&v80[4] + 8);
    v45 = *(&v80[5] + 8);
    v42 = *(&v80[6] + 8);
    v43 = BYTE8(v80[7]);
    v41 = *(&v81 + 1);
    v40 = v81;
    v39 = v82;
    v38 = v83;
    v37 = v84;
    v33 = v67;
  }

  else
  {
    v33 = v67;
    static Logger.argos.getter(v10);
    v34 = sub_1D9C7D8BC();
    v35 = sub_1D9C7E09C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D9962000, v34, v35, "Application can search any domain", v36, 2u);
      MEMORY[0x1DA7405F0](v36, -1, -1);
    }

    (*(v64 + 8))(v10, v65);
    v37 = v105;
    v39 = v103;
    v38 = v104;
    v41 = *(&v102 + 1);
    v40 = v102;
    v42 = *(&v101[6] + 8);
    v43 = BYTE8(v101[7]);
    v44 = *(&v101[4] + 8);
    v45 = *(&v101[5] + 8);
    v46 = *&v101[0];
    v97 = *(v101 + 8);
    v98 = *(&v101[1] + 8);
    v99 = *(&v101[2] + 8);
    v100 = *(&v101[3] + 8);
  }

  *(v80 + 8) = v97;
  *(&v80[1] + 8) = v98;
  *(&v80[2] + 8) = v99;
  LOBYTE(v68) = v43;
  *&v80[0] = v46;
  *(&v80[3] + 8) = v100;
  *(&v80[4] + 8) = v44;
  *(&v80[5] + 8) = v45;
  *(&v80[6] + 8) = v42;
  BYTE8(v80[7]) = v43;
  *&v81 = v40;
  *(&v81 + 1) = v41;
  v82 = v39;
  v83 = v38;
  v84 = v37;
  v33(v80);

  v93 = v81;
  v94 = v82;
  v95 = v83;
  v96 = v84;
  v89 = v80[4];
  v90 = v80[5];
  v91 = v80[6];
  v92 = v80[7];
  v85 = v80[0];
  v86 = v80[1];
  v87 = v80[2];
  v88 = v80[3];
  sub_1D9A0009C(&v85);

  return result;
}

uint64_t sub_1D9B9BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D9B9BBA4, 0, 0);
}

uint64_t sub_1D9B9BBA4()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D9B0CF78;

  return sub_1D99E465C(0);
}

uint64_t sub_1D9B9BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v78 = a7;
  LODWORD(v77) = a6;
  v75 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = v69 - v13;
  v14 = type metadata accessor for ServerSearchResult(0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v69 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = (v69 - v22);
  sub_1D9AFCCA4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v74 = result;
    v70 = a8;
    v69[0] = a5;
    if (a5)
    {
      swift_beginAccess();
      v24 = *(a5 + 16);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v69[1] = a9;
    swift_beginAccess();
    sub_1D9A19294(v24);
    swift_endAccess();
    sub_1D99AB100(v75, v18, &qword_1ECB53DC0, &unk_1D9C9C160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v76;
      *v76 = *v18;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v26 = v71;
      sub_1D9BA45A0(v18, v71, type metadata accessor for ServerSearchResult);
      v27 = (v26 + *(v14 + 24));
      v29 = *v27;
      v28 = v27[1];
      swift_beginAccess();
      *(a4 + 144) = v29;
      *(a4 + 152) = v28;

      v30 = v74;
      swift_beginAccess();
      v31 = *(a4 + 160);
      v32 = *(a4 + 128);
      v98 = *(a4 + 144);
      v99 = v31;
      v33 = *(a4 + 160);
      v100 = *(a4 + 176);
      v34 = *(a4 + 96);
      v35 = *(a4 + 64);
      v94 = *(a4 + 80);
      v95 = v34;
      v36 = *(a4 + 96);
      v37 = *(a4 + 128);
      v96 = *(a4 + 112);
      v97 = v37;
      v38 = *(a4 + 32);
      v91[0] = *(a4 + 16);
      v91[1] = v38;
      v39 = *(a4 + 64);
      v41 = *(a4 + 16);
      v40 = *(a4 + 32);
      v92 = *(a4 + 48);
      v93 = v39;
      v42 = *(a4 + 176);
      v88 = v33;
      v89 = v42;
      v83 = v94;
      v84 = v36;
      v85 = v96;
      v86 = v32;
      v87 = v98;
      v79 = v41;
      v80 = v40;
      v101 = *(a4 + 192);
      v90 = *(a4 + 192);
      v81 = v92;
      v82 = v35;
      v43 = *(v30 + 64);
      sub_1D99BB40C(v91, &v102);
      v25 = v76;
      sub_1D9B3BD0C(v26, &v79, v43, v76);
      v110 = v87;
      v111 = v88;
      v112 = v89;
      v113 = v90;
      v106 = v83;
      v107 = v84;
      v108 = v85;
      v109 = v86;
      v102 = v79;
      v103 = v80;
      v104 = v81;
      v105 = v82;
      sub_1D9A0009C(&v102);
      sub_1D9BA4608(v26, type metadata accessor for ServerSearchResult);
    }

    v44 = v78;
    if (v77)
    {
      v45 = v72;
      sub_1D99AB100(v25, v72, &unk_1ECB53570, &unk_1D9C9C2A0);
      v46 = v73;
      sub_1D99AB100(v44, v73, &unk_1ECB51B10, &qword_1D9C86550);
      sub_1D9BDB568(v45, v46, v91);
      v117[0] = *(v91 + 8);
      v116 = *(&v91[1] + 1);
      v47 = objc_opt_self();
      *(&v103 + 1) = &type metadata for ResultEvent;
      *&v104 = &off_1F55352A8;
      v48 = swift_allocObject();
      *&v102 = v48;
      v49 = v91[1];
      *(v48 + 16) = v91[0];
      *(v48 + 32) = v49;
      *(v48 + 48) = v92;
      v50 = type metadata accessor for AnyVIAEvent();
      v51 = objc_allocWithZone(v50);
      sub_1D99A17C8(&v102, v51 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(v117, &v79);
      sub_1D99AB100(&v116, &v79, &qword_1ECB53400, &qword_1D9C953C8);
      sub_1D9B1734C(v117, &v79);
      sub_1D99AB100(&v116, &v79, &qword_1ECB53400, &qword_1D9C953C8);
      v115.receiver = v51;
      v115.super_class = v50;
      v52 = objc_msgSendSuper2(&v115, sel_init);
      v53 = __swift_destroy_boxed_opaque_existential_0Tm(&v102);
      v77 = v47;
      [v47 logEvent_];

      sub_1D9B172F8(v117);
      sub_1D99A6AE0(&v116, &qword_1ECB53400, &qword_1D9C953C8);
      v54 = v69[0];
      if (v69[0])
      {
        swift_beginAccess();
        v55 = *(v54 + 16);

        v56 = sub_1D99A7220(v44, 1, v55);
      }

      else
      {
        v56 = MEMORY[0x1E69E7CC0];
      }

      v75 = v56;
      v57 = *(v56 + 16);
      if (v57)
      {
        v58 = (v75 + 64);
        do
        {
          v78 = v57;
          v59 = *(v58 - 4);
          v60 = *(v58 - 3);
          v62 = *(v58 - 2);
          v61 = *(v58 - 1);
          v63 = *v58;
          v58 += 40;
          *(&v103 + 1) = &type metadata for DurationEvent;
          *&v104 = &off_1F552D1E8;
          v64 = swift_allocObject();
          *&v102 = v64;
          *(v64 + 16) = v59;
          *(v64 + 24) = v60;
          *(v64 + 32) = v62;
          *(v64 + 40) = v61;
          *(v64 + 48) = v63;
          v65 = objc_allocWithZone(v50);
          sub_1D99A17C8(&v102, v65 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
          v114.receiver = v65;
          v114.super_class = v50;
          swift_bridgeObjectRetain_n();
          v66 = v61;
          v67 = objc_msgSendSuper2(&v114, &selRef_setFont_size_stop_reporting_threshold_);
          v68 = __swift_destroy_boxed_opaque_existential_0Tm(&v102);
          [v77 logEvent_];

          v57 = v78 - 1;
        }

        while (v78 != 1);
      }

      sub_1D9B172F8(v117);
      sub_1D99A6AE0(&v116, &qword_1ECB53400, &qword_1D9C953C8);
      v25 = v76;
    }

    v70(v25);

    return sub_1D99A6AE0(v25, &unk_1ECB53570, &unk_1D9C9C2A0);
  }

  return result;
}

uint64_t sub_1D9B9C3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void *), uint64_t a9)
{
  LODWORD(v77) = a7;
  v78 = a6;
  v75 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = v69 - v13;
  v14 = type metadata accessor for ServerSearchResult(0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v69 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = (v69 - v22);
  sub_1D9AFCCA4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v74 = result;
    v70 = a8;
    v69[0] = a5;
    if (a5)
    {
      swift_beginAccess();
      v24 = *(a5 + 16);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v69[1] = a9;
    swift_beginAccess();
    sub_1D9A19294(v24);
    swift_endAccess();
    sub_1D99AB100(v75, v18, &qword_1ECB53DC0, &unk_1D9C9C160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v76;
      *v76 = *v18;
      swift_storeEnumTagMultiPayload();
      v26 = v78;
      if ((v77 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v27 = v71;
      sub_1D9BA45A0(v18, v71, type metadata accessor for ServerSearchResult);
      v28 = (v27 + *(v14 + 24));
      v30 = *v28;
      v29 = v28[1];
      swift_beginAccess();
      *(a4 + 144) = v30;
      *(a4 + 152) = v29;

      v31 = v74;
      swift_beginAccess();
      v32 = *(a4 + 160);
      v33 = *(a4 + 128);
      v98 = *(a4 + 144);
      v99 = v32;
      v34 = *(a4 + 160);
      v100 = *(a4 + 176);
      v35 = *(a4 + 96);
      v36 = *(a4 + 64);
      v94 = *(a4 + 80);
      v95 = v35;
      v37 = *(a4 + 96);
      v38 = *(a4 + 128);
      v96 = *(a4 + 112);
      v97 = v38;
      v39 = *(a4 + 32);
      v91[0] = *(a4 + 16);
      v91[1] = v39;
      v40 = *(a4 + 64);
      v42 = *(a4 + 16);
      v41 = *(a4 + 32);
      v92 = *(a4 + 48);
      v93 = v40;
      v43 = *(a4 + 176);
      v88 = v34;
      v89 = v43;
      v83 = v94;
      v84 = v37;
      v85 = v96;
      v86 = v33;
      v87 = v98;
      v79 = v42;
      v80 = v41;
      v101 = *(a4 + 192);
      v90 = *(a4 + 192);
      v81 = v92;
      v82 = v36;
      v44 = *(v31 + 64);
      sub_1D99BB40C(v91, &v102);
      v25 = v76;
      v26 = v78;
      sub_1D9B3CCF0(v27, &v79, v44, v76);
      v110 = v87;
      v111 = v88;
      v112 = v89;
      v113 = v90;
      v106 = v83;
      v107 = v84;
      v108 = v85;
      v109 = v86;
      v102 = v79;
      v103 = v80;
      v104 = v81;
      v105 = v82;
      sub_1D9A0009C(&v102);
      sub_1D9BA4608(v27, type metadata accessor for ServerSearchResult);
      if ((v77 & 1) == 0)
      {
LABEL_16:
        v70(v25);

        return sub_1D99A6AE0(v25, &unk_1ECB53570, &unk_1D9C9C2A0);
      }
    }

    v45 = v72;
    sub_1D99AB100(v25, v72, &unk_1ECB53570, &unk_1D9C9C2A0);
    v46 = v73;
    sub_1D99AB100(v26, v73, &unk_1ECB51B10, &qword_1D9C86550);
    sub_1D9BDB568(v45, v46, v91);
    v117[0] = *(v91 + 8);
    v116 = *(&v91[1] + 1);
    v47 = objc_opt_self();
    *(&v103 + 1) = &type metadata for ResultEvent;
    *&v104 = &off_1F55352A8;
    v48 = swift_allocObject();
    *&v102 = v48;
    v49 = v91[1];
    *(v48 + 16) = v91[0];
    *(v48 + 32) = v49;
    *(v48 + 48) = v92;
    v50 = type metadata accessor for AnyVIAEvent();
    v51 = objc_allocWithZone(v50);
    sub_1D99A17C8(&v102, v51 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(v117, &v79);
    sub_1D99AB100(&v116, &v79, &qword_1ECB53400, &qword_1D9C953C8);
    sub_1D9B1734C(v117, &v79);
    sub_1D99AB100(&v116, &v79, &qword_1ECB53400, &qword_1D9C953C8);
    v115.receiver = v51;
    v115.super_class = v50;
    v52 = objc_msgSendSuper2(&v115, sel_init);
    v53 = __swift_destroy_boxed_opaque_existential_0Tm(&v102);
    v77 = v47;
    [v47 logEvent_];

    sub_1D9B172F8(v117);
    sub_1D99A6AE0(&v116, &qword_1ECB53400, &qword_1D9C953C8);
    v54 = v69[0];
    if (v69[0])
    {
      swift_beginAccess();
      v55 = *(v54 + 16);

      v56 = sub_1D99A7220(v26, 1, v55);
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    v75 = v56;
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = (v75 + 64);
      do
      {
        v78 = v57;
        v59 = *(v58 - 4);
        v60 = *(v58 - 3);
        v62 = *(v58 - 2);
        v61 = *(v58 - 1);
        v63 = *v58;
        v58 += 40;
        *(&v103 + 1) = &type metadata for DurationEvent;
        *&v104 = &off_1F552D1E8;
        v64 = swift_allocObject();
        *&v102 = v64;
        *(v64 + 16) = v59;
        *(v64 + 24) = v60;
        *(v64 + 32) = v62;
        *(v64 + 40) = v61;
        *(v64 + 48) = v63;
        v65 = objc_allocWithZone(v50);
        sub_1D99A17C8(&v102, v65 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
        v114.receiver = v65;
        v114.super_class = v50;
        swift_bridgeObjectRetain_n();
        v66 = v61;
        v67 = objc_msgSendSuper2(&v114, &selRef_setFont_size_stop_reporting_threshold_);
        v68 = __swift_destroy_boxed_opaque_existential_0Tm(&v102);
        [v77 logEvent_];

        v57 = v78 - 1;
      }

      while (v78 != 1);
    }

    sub_1D9B172F8(v117);
    sub_1D99A6AE0(&v116, &qword_1ECB53400, &qword_1D9C953C8);
    v25 = v76;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1D9B9CB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v55 = a8;
  v56 = a7;
  v52 = a6;
  v54 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v49 - v11;
  v12 = type metadata accessor for ServerSearchResult(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v53 = (&v49 - v21);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1D9AFCCA4();
  }

  v23 = Strong;
  sub_1D99AB100(a1, v17, &qword_1ECB53DC0, &unk_1D9C9C160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v53;
    *v53 = *v17;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D9BA45A0(v17, v14, type metadata accessor for ServerSearchResult);
    v26 = &v14[*(v12 + 24)];
    v28 = *v26;
    v27 = *(v26 + 1);
    swift_beginAccess();
    *(a4 + 144) = v28;
    *(a4 + 152) = v27;

    swift_beginAccess();
    v29 = *(a4 + 160);
    v30 = *(a4 + 128);
    v76 = *(a4 + 144);
    v77 = v29;
    v31 = *(a4 + 160);
    v78 = *(a4 + 176);
    v32 = *(a4 + 96);
    v33 = *(a4 + 64);
    v72 = *(a4 + 80);
    v73 = v32;
    v34 = *(a4 + 96);
    v35 = *(a4 + 128);
    v74 = *(a4 + 112);
    v75 = v35;
    v36 = *(a4 + 32);
    v69[0] = *(a4 + 16);
    v69[1] = v36;
    v37 = *(a4 + 64);
    v39 = *(a4 + 16);
    v38 = *(a4 + 32);
    v70 = *(a4 + 48);
    v71 = v37;
    v65 = v76;
    v66 = v31;
    v67 = *(a4 + 176);
    v61 = v72;
    v62 = v34;
    v63 = v74;
    v64 = v30;
    v57 = v39;
    v58 = v38;
    v79 = *(a4 + 192);
    v68 = *(a4 + 192);
    v59 = v70;
    v60 = v33;
    v40 = *(v23 + 64);
    sub_1D99BB40C(v69, &v80);
    v24 = v53;
    sub_1D9B3BD0C(v14, &v57, v40, v53);
    v88 = v65;
    v89 = v66;
    v90 = v67;
    v91 = v68;
    v84 = v61;
    v85 = v62;
    v86 = v63;
    v87 = v64;
    v80 = v57;
    v81 = v58;
    v82 = v59;
    v83 = v60;
    sub_1D9A0009C(&v80);
    sub_1D9BA4608(v14, type metadata accessor for ServerSearchResult);
  }

  sub_1D9AFCCA4();
  if (v54)
  {
    v41 = v50;
    sub_1D99AB100(v24, v50, &unk_1ECB53570, &unk_1D9C9C2A0);
    v42 = v51;
    sub_1D99AB100(v52, v51, &unk_1ECB51B10, &qword_1D9C86550);
    sub_1D9BDB568(v41, v42, v69);
    v43 = objc_opt_self();
    *(&v81 + 1) = &type metadata for ResultEvent;
    *&v82 = &off_1F55352A8;
    v44 = swift_allocObject();
    *&v80 = v44;
    v57 = *(v69 + 8);
    v94[0] = *(&v69[1] + 1);
    v45 = v69[1];
    *(v44 + 16) = v69[0];
    *(v44 + 32) = v45;
    *(v44 + 48) = v70;
    v46 = type metadata accessor for AnyVIAEvent();
    v47 = objc_allocWithZone(v46);
    sub_1D99A17C8(&v80, v47 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v57, v93);
    sub_1D99AB100(v94, v93, &qword_1ECB53400, &qword_1D9C953C8);
    v92.receiver = v47;
    v92.super_class = v46;
    v48 = objc_msgSendSuper2(&v92, sel_init);
    [v43 logEvent_];

    sub_1D9B172F8(&v57);
    sub_1D99A6AE0(v94, &qword_1ECB53400, &qword_1D9C953C8);
  }

  v56(v24);

  return sub_1D99A6AE0(v24, &unk_1ECB53570, &unk_1D9C9C2A0);
}

uint64_t sub_1D9B9D084()
{

  return v0;
}

uint64_t sub_1D9B9D0D4()
{
  sub_1D9B9D084();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9B9D12C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9AD9A18;

  return sub_1D9B9BB80(a1, v4, v5, v6, v7, v8);
}

void sub_1D9B9D1F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53410, &unk_1D9C95400);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D9B9D350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA0, &qword_1D9C99B80);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D9B9D490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53408, &unk_1D9C953F0);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D9B9D5D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DB0, &unk_1D9C99B90);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D9B9D710()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA8, &qword_1D9C99B88);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D9B9D868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D98, &qword_1D9C99B78);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D9B9D9BC(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_1D9B9DAC0(*(*(a1 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1D9B9DAC0(char a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  sub_1D9C7E8DC();
  sub_1D9A15C94(a1);
  sub_1D9C7DD6C();

  v7 = sub_1D9C7E93C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_89:
    *a2 = 27;
    return;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE300000000000000;
    v12 = 7631457;
    switch(*(*(v6 + 48) + v9))
    {
      case 1:
        v11 = 0xE600000000000000;
        v12 = 0x65727574616ELL;
        break;
      case 2:
        v11 = 0xE800000000000000;
        v12 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v12 = 0x4C6C61727574616ELL;
        v11 = 0xEF6B72616D646E61;
        break;
      case 4:
        v11 = 0xE500000000000000;
        v12 = 0x616964656DLL;
        break;
      case 5:
        v11 = 0xE400000000000000;
        v12 = 1802465122;
        break;
      case 6:
        v11 = 0xE500000000000000;
        v12 = 0x6D75626C61;
        break;
      case 7:
        v11 = 0xE400000000000000;
        v12 = 1937006947;
        break;
      case 8:
        v11 = 0xE400000000000000;
        v12 = 1936158564;
        break;
      case 9:
        v11 = 0xE700000000000000;
        v13 = 1835626081;
        goto LABEL_22;
      case 0xA:
        v11 = 0xE500000000000000;
        v12 = 0x7364726962;
        break;
      case 0xB:
        v11 = 0xE700000000000000;
        v12 = 0x73746365736E69;
        break;
      case 0xC:
        v11 = 0xE800000000000000;
        v12 = 0x73656C6974706572;
        break;
      case 0xD:
        v11 = 0xE700000000000000;
        v13 = 1835884909;
LABEL_22:
        v12 = v13 | 0x736C6100000000;
        break;
      case 0xE:
        v12 = 0xD000000000000010;
        v11 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v11 = 0xE700000000000000;
        v12 = 0x6C657261707061;
        break;
      case 0x10:
        v12 = 0x726F737365636361;
        v11 = 0xEB00000000736569;
        break;
      case 0x11:
        v11 = 0xE400000000000000;
        v12 = 1685024614;
        break;
      case 0x12:
        v12 = 0x6F726665726F7473;
        v11 = 0xEA0000000000746ELL;
        break;
      case 0x13:
        v14 = 1852270963;
        goto LABEL_29;
      case 0x14:
        v12 = 0xD000000000000011;
        v11 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v14 = 1869903201;
LABEL_29:
        v12 = v14 | 0x626D795300000000;
        v11 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v12 = 0x676F4C646E617262;
        v11 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v11 = 0xE700000000000000;
        v12 = 0x65646F63726162;
        break;
      case 0x18:
        v12 = 0x727574706C756373;
        v11 = 0xE900000000000065;
        break;
      case 0x19:
        v11 = 0xE700000000000000;
        v12 = 0x656E696C796B73;
        break;
      case 0x1A:
        v11 = 0xE800000000000000;
        v12 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v15 = 0xE300000000000000;
    v16 = 7631457;
    switch(a1)
    {
      case 1:
        v15 = 0xE600000000000000;
        if (v12 == 0x65727574616ELL)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      case 2:
        v15 = 0xE800000000000000;
        if (v12 != 0x6B72616D646E616CLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 3:
        v15 = 0xEF6B72616D646E61;
        if (v12 != 0x4C6C61727574616ELL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 4:
        v15 = 0xE500000000000000;
        if (v12 != 0x616964656DLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 5:
        v15 = 0xE400000000000000;
        if (v12 != 1802465122)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 6:
        v15 = 0xE500000000000000;
        if (v12 != 0x6D75626C61)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 7:
        v15 = 0xE400000000000000;
        if (v12 != 1937006947)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 8:
        v15 = 0xE400000000000000;
        if (v12 != 1936158564)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 9:
        v15 = 0xE700000000000000;
        v18 = 1835626081;
        goto LABEL_65;
      case 10:
        v15 = 0xE500000000000000;
        if (v12 != 0x7364726962)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 11:
        v15 = 0xE700000000000000;
        v17 = 0x746365736E69;
        goto LABEL_66;
      case 12:
        v15 = 0xE800000000000000;
        if (v12 != 0x73656C6974706572)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 13:
        v15 = 0xE700000000000000;
        v18 = 1835884909;
LABEL_65:
        v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_66:
        if (v12 != (v17 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 14:
        v15 = 0x80000001D9CA2910;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 15:
        v15 = 0xE700000000000000;
        if (v12 != 0x6C657261707061)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 16:
        v15 = 0xEB00000000736569;
        if (v12 != 0x726F737365636361)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 17:
        v15 = 0xE400000000000000;
        if (v12 != 1685024614)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 18:
        v15 = 0xEA0000000000746ELL;
        if (v12 != 0x6F726665726F7473)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 19:
        v19 = 1852270963;
        goto LABEL_79;
      case 20:
        v15 = 0x80000001D9CA2950;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 21:
        v19 = 1869903201;
LABEL_79:
        v15 = 0xEA00000000006C6FLL;
        if (v12 != (v19 | 0x626D795300000000))
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 22:
        v15 = 0xEF6C6F626D79536FLL;
        if (v12 != 0x676F4C646E617262)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 23:
        v15 = 0xE700000000000000;
        v16 = 0x65646F63726162;
        goto LABEL_82;
      case 24:
        v15 = 0xE900000000000065;
        if (v12 != 0x727574706C756373)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 25:
        v15 = 0xE700000000000000;
        if (v12 != 0x656E696C796B73)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 26:
        v15 = 0xE800000000000000;
        if (v12 != 0x44327463656A626FLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      default:
LABEL_82:
        if (v12 != v16)
        {
          goto LABEL_84;
        }

LABEL_83:
        if (v11 != v15)
        {
LABEL_84:
          v20 = sub_1D9C7E7DC();

          if (v20)
          {
            goto LABEL_91;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_89;
          }

          continue;
        }

LABEL_91:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v23 = *v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D9B9D490();
          v22 = v23;
        }

        *a2 = *(*(v22 + 48) + v9);
        sub_1D9B9E200(v9);
        *v3 = v23;
        return;
    }
  }
}

void sub_1D9B9E200(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D9C7E36C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D9C7E8DC();
        sub_1D9C7DD6C();

        v10 = sub_1D9C7E93C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

uint64_t sub_1D9B9E654(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA73E230](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D9B91DE4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D9B9E6EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D9ABD044();
  result = MEMORY[0x1DA73E230](v2, &type metadata for VisualDomain, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D9B92014(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1D9B9E760(char a1, uint64_t *a2)
{
  if (a1)
  {
    v2 = a2[2];
    if (v2)
    {
      v3 = a2[3];
      v5 = *a2;
      v4 = a2[1];
      v6 = *(a2 + 32);
      v7 = objc_allocWithZone(MEMORY[0x1E69CA058]);
      sub_1D9BA3E60(v5, v4, v2, v3);

      v8 = v3;
      v9 = [v7 initWithStartSearch_];
      v10 = objc_opt_self();
      v18[3] = &type metadata for LocalSearchEndEvent;
      v18[4] = &off_1F5535278;
      v11 = swift_allocObject();
      v18[0] = v11;
      *(v11 + 16) = v9;
      *(v11 + 24) = v5;
      *(v11 + 32) = v4;
      *(v11 + 40) = v2;
      *(v11 + 48) = v8;
      *(v11 + 56) = v6 & 1;
      *(v11 + 57) = 0;
      v12 = type metadata accessor for AnyVIAEvent();
      v13 = objc_allocWithZone(v12);
      sub_1D99A17C8(v18, v13 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      v17.receiver = v13;
      v17.super_class = v12;
      v14 = v9;

      v15 = v8;
      v16 = objc_msgSendSuper2(&v17, sel_init);
      [v10 logEvent_];

      swift_bridgeObjectRelease_n();
    }
  }
}

void sub_1D9B9E8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v164 = a6;
  v170 = a5;
  v180 = a4;
  v181 = a3;
  v185 = a1;
  v13 = sub_1D9C7D8DC();
  v162 = *(v13 - 8);
  v163 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v161 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v186 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v243 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v184 = &v151 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v159 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v167 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v176 = &v151 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v151 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v165 = &v151 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v151 - v28;
  v160 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v179 = &v151 - v31;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v168);
  v169 = (&v151 - v32);
  v33 = sub_1D9C7DA7C();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = swift_allocObject();
  v173 = a8;
  *(v37 + 16) = a8;
  *(v37 + 24) = a9;
  v38 = *(a10 + 144);
  *(v37 + 160) = *(a10 + 128);
  *(v37 + 176) = v38;
  *(v37 + 192) = *(a10 + 160);
  *(v37 + 208) = *(a10 + 176);
  v39 = *(a10 + 80);
  *(v37 + 96) = *(a10 + 64);
  *(v37 + 112) = v39;
  v40 = *(a10 + 112);
  *(v37 + 128) = *(a10 + 96);
  *(v37 + 144) = v40;
  v41 = *(a10 + 16);
  *(v37 + 32) = *a10;
  *(v37 + 48) = v41;
  v42 = *(a10 + 48);
  *(v37 + 64) = *(a10 + 32);
  *(v37 + 80) = v42;
  v182 = v37;
  v43 = *(a2 + 144);
  v239 = *(a2 + 128);
  v240 = v43;
  v241 = *(a2 + 160);
  v242 = *(a2 + 176);
  v44 = *(a2 + 80);
  v235 = *(a2 + 64);
  v236 = v44;
  v45 = *(a2 + 112);
  v237 = *(a2 + 96);
  v238 = v45;
  v46 = *(a2 + 16);
  v231 = *a2;
  v232 = v46;
  v47 = *(a2 + 48);
  v233 = *(a2 + 32);
  v234 = v47;
  v48 = *(a7 + 56);
  *v36 = v48;
  v49 = *(v34 + 104);
  LODWORD(v178) = *MEMORY[0x1E69E8020];
  v177 = v49;
  (v49)(v36);
  v171 = a9;

  v172 = a10;
  sub_1D99BB40C(a10, &v210);
  v50 = v48;
  LOBYTE(v48) = sub_1D9C7DA9C();
  v51 = *(v34 + 8);
  v51(v36, v33);
  if ((v48 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v174 = v50;
  v52 = v183;
  sub_1D9A723CC(v185);
  if (v52)
  {
LABEL_41:

    return;
  }

  v154 = v51;
  v158 = a7;
  v183 = 0;
  v53 = sub_1D9B9E6EC(&unk_1F552A988);
  v201 = v239;
  v202 = v240;
  v203 = v241;
  v204 = v242;
  v197 = v235;
  v198 = v236;
  v199 = v237;
  v200 = v238;
  v193 = v231;
  v194 = v232;
  v195 = v233;
  v196 = v234;
  sub_1D9B69C68(v53, v205);

  v218 = v206;
  v219 = v207;
  v220 = v208;
  v221 = v209;
  v214 = v205[4];
  v215 = v205[5];
  v216 = v205[6];
  v217 = v205[7];
  v210 = v205[0];
  v211 = v205[1];
  v212 = v205[2];
  v213 = v205[3];
  sub_1D9B67A68();
  v55 = *(v54 + 16);

  if (!v55)
  {
    sub_1D9AFCCA4();
    v62 = type metadata accessor for VisualSearchResultInternal(0);
    v63 = *(v62 + 24);
    v64 = sub_1D9C7CBEC();
    v65 = v169;
    (*(*(v64 - 8) + 56))(v169 + v63, 1, 1, v64);
    v66 = *(v62 + 28);
    v67 = sub_1D9C7CF3C();
    (*(*(v67 - 8) + 56))(v65 + v66, 1, 1, v67);
    v68 = v219;
    *(v65 + 128) = v218;
    *(v65 + 144) = v68;
    *(v65 + 160) = v220;
    v69 = v221;
    v70 = v215;
    *(v65 + 64) = v214;
    *(v65 + 80) = v70;
    v71 = v217;
    *(v65 + 96) = v216;
    *(v65 + 112) = v71;
    v72 = v211;
    *v65 = v210;
    *(v65 + 16) = v72;
    v73 = v213;
    *(v65 + 32) = v212;
    *(v65 + 48) = v73;
    v74 = MEMORY[0x1E69E7CC0];
    *(v65 + 176) = v69;
    *(v65 + 184) = v74;
    swift_storeEnumTagMultiPayload();
    sub_1D9B97D94(v65, v173, v171, v172, "search(): result.userFeedbackIntermediateResults = %s");
    sub_1D99A6AE0(v65, &unk_1ECB53570, &unk_1D9C9C2A0);
    goto LABEL_41;
  }

  v56 = *(v158 + 24);

  sub_1D9C7D0BC();

  v57 = v179;
  sub_1D99AB100(v181, v179, &unk_1ECB51B10, &qword_1D9C86550);
  Context = type metadata accessor for VisualQueryContext(0);
  v59 = *(Context - 8);
  v60 = Context;
  v155 = *(v59 + 48);
  v157 = v59 + 48;
  v61 = v155(v57, 1);
  v153 = v56;
  v156 = v60;
  if (v61 == 1)
  {
    sub_1D99A6AE0(v57, &unk_1ECB51B10, &qword_1D9C86550);
  }

  else
  {
    v75 = *(v57 + 56);
    sub_1D9BA4608(v57, type metadata accessor for VisualQueryContext);
    if (v75 == 3)
    {
      v76 = 0;
      goto LABEL_12;
    }
  }

  v77 = v167;
  sub_1D99AB100(v181, v167, &unk_1ECB51B10, &qword_1D9C86550);
  if ((v155)(v77, 1, v60) == 1)
  {
    sub_1D99A6AE0(v77, &unk_1ECB51B10, &qword_1D9C86550);
    v76 = 1;
  }

  else
  {
    v78 = v77;
    v79 = v77[7];
    sub_1D9BA4608(v78, type metadata accessor for VisualQueryContext);
    v76 = v79 != 5;
  }

LABEL_12:
  v80 = v178;
  v81 = v177;
  v82 = v154;
  v83 = v174;
  *v36 = v174;
  v81(v36, v80, v33);
  v84 = v83;
  LOBYTE(v83) = sub_1D9C7DA9C();
  v82(v36, v33);
  if (v83)
  {
    LOBYTE(v190) = 0;
    memset(v189, 0, sizeof(v189));
    LODWORD(v179) = v76;
    v85 = v181;
    if (v76)
    {
      v86 = v166;
      sub_1D99AB100(v181, v166, &unk_1ECB51B10, &qword_1D9C86550);
      v206 = v218;
      v207 = v219;
      v208 = v220;
      v209 = v221;
      v205[4] = v214;
      v205[5] = v215;
      v205[6] = v216;
      v205[7] = v217;
      v205[0] = v210;
      v205[1] = v211;
      v205[2] = v212;
      v205[3] = v213;
      sub_1D99BB40C(&v210, &v193);
      sub_1D9BDB0A4(v86, v205, v222);
      v230 = *(v222 + 8);
      v229 = *(&v222[1] + 1);
      v228 = *&v222[2];
      v87 = objc_opt_self();
      v154 = v87;
      *(&v205[1] + 1) = &type metadata for EngagedRegionOfInterestEvent;
      *&v205[2] = &off_1F5535308;
      v88 = swift_allocObject();
      *&v205[0] = v88;
      v89 = v222[1];
      v88[1] = v222[0];
      v88[2] = v89;
      *(v88 + 41) = *(&v222[1] + 9);
      v90 = type metadata accessor for AnyVIAEvent();
      v152 = v90;
      v91 = objc_allocWithZone(v90);
      sub_1D99A17C8(v205, v91 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v230, &v193);
      sub_1D99AB100(&v229, &v193, &qword_1ECB53DB8, &qword_1D9C99C90);
      sub_1D99AB100(&v228, &v193, &qword_1ECB53400, &qword_1D9C953C8);
      sub_1D9B1734C(&v230, &v193);
      sub_1D99AB100(&v229, &v193, &qword_1ECB53DB8, &qword_1D9C99C90);
      sub_1D99AB100(&v228, &v193, &qword_1ECB53400, &qword_1D9C953C8);
      v188.receiver = v91;
      v188.super_class = v90;
      v92 = objc_msgSendSuper2(&v188, sel_init);
      [v87 logEvent_];

      sub_1D9B172F8(&v230);
      sub_1D99A6AE0(&v229, &qword_1ECB53DB8, &qword_1D9C99C90);
      sub_1D99A6AE0(&v228, &qword_1ECB53400, &qword_1D9C953C8);
      sub_1D99AB100(v181, v86, &unk_1ECB51B10, &qword_1D9C86550);
      v93 = v165;
      sub_1D99AB100(v86, v165, &unk_1ECB51B10, &qword_1D9C86550);
      sub_1D9A9499C(v93, 0, &v223);
      v94 = v223;
      v95 = v224;
      v96 = v225;
      v97 = v226;
      sub_1D99A6AE0(v86, &unk_1ECB51B10, &qword_1D9C86550);
      v227 = v224;
      *&v189[0] = v94;
      *(v189 + 8) = v95;
      *(&v189[1] + 1) = v96;
      LOBYTE(v190) = v97;
      *(&v205[1] + 1) = &type metadata for LocalSearchStartEvent;
      *&v205[2] = &off_1F55352D8;
      v98 = swift_allocObject();
      *&v205[0] = v98;
      v177 = v95;
      v178 = v94;
      *(v98 + 16) = v94;
      *(v98 + 24) = v95;
      v174 = *(&v95 + 1);
      *(v98 + 32) = *(&v95 + 1);
      *(v98 + 40) = v96;
      LODWORD(v165) = v97;
      *(v98 + 48) = v97;
      v99 = v152;
      v100 = objc_allocWithZone(v152);
      sub_1D99A17C8(v205, v100 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v227, &v193);
      v167 = v96;
      v101 = v96;
      sub_1D9B1734C(&v227, &v193);
      v187.receiver = v100;
      v187.super_class = v99;
      v85 = v181;
      v102 = v101;
      v103 = objc_msgSendSuper2(&v187, sel_init);
      v104 = __swift_destroy_boxed_opaque_existential_0Tm(v205);
      [v154 logEvent_];

      sub_1D9B172F8(&v230);
      sub_1D99A6AE0(&v229, &qword_1ECB53DB8, &qword_1D9C99C90);
      sub_1D99A6AE0(&v228, &qword_1ECB53400, &qword_1D9C953C8);
      sub_1D9B172F8(&v227);
    }

    else
    {
      v177 = 0;
      v178 = 0;
      v174 = 0;
      v167 = 0;
      LODWORD(v165) = 0;
    }

    v105 = v185;
    v107 = v175;
    v106 = v176;
    v108 = v155;
    v109 = *(v158 + 16);
    sub_1D99AB100(v85, v175, &unk_1ECB51B10, &qword_1D9C86550);
    if (v108(v107, 1, v156) == 1)
    {
      sub_1D99A6AE0(v107, &unk_1ECB51B10, &qword_1D9C86550);
      v110 = 0;
    }

    else
    {
      v110 = *(v107 + *(v156 + 48));
      swift_unknownObjectRetain();
      sub_1D9BA4608(v107, type metadata accessor for VisualQueryContext);
    }

    sub_1D99AB100(v85, v106, &unk_1ECB51B10, &qword_1D9C86550);
    if (v108(v106, 1, v156) == 1)
    {
      sub_1D99A6AE0(v106, &unk_1ECB51B10, &qword_1D9C86550);
      v111 = 0;
    }

    else
    {
      v111 = *(v106 + 56);
      sub_1D9BA4608(v106, type metadata accessor for VisualQueryContext);
    }

    v112 = swift_allocObject();
    v113 = *(v109 + 16);
    sub_1D99A17C8(v105, v205);
    v114 = *(v109 + 24);
    type metadata accessor for SignalsExtractionProcessor();
    v115 = swift_allocObject();

    *(v115 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
    *(v115 + 112) = 0u;
    *(v115 + 128) = 0u;
    *(v115 + 144) = 0u;
    *(v115 + 40) = v113;
    sub_1D9979B9C(v205, v115 + 48);
    type metadata accessor for TextDetectionRequestFactory();
    *(v115 + 16) = swift_allocObject();
    type metadata accessor for BarcodeDetectionRequestFactory();
    *(v115 + 24) = swift_allocObject();
    *(v115 + 88) = v114;
    type metadata accessor for ImageFingerprintRequestFactory();
    v116 = swift_allocObject();
    *(v116 + 16) = v113;
    *(v115 + 32) = v116;
    *(v115 + 96) = v110;
    v206 = v218;
    v207 = v219;
    v208 = v220;
    v209 = v221;
    v205[4] = v214;
    v205[5] = v215;
    v205[6] = v216;
    v205[7] = v217;
    v205[0] = v210;
    v205[1] = v211;
    v205[2] = v212;
    v205[3] = v213;
    swift_unknownObjectRetain();

    v117 = v183;
    sub_1D99B54E0(v205, v180, 2, 1, 0, v111, 0, v112 + 16);
    if (v117)
    {

      swift_unknownObjectRelease();
      sub_1D9B9E760(v179, v189);
      sub_1D9A0009C(&v210);
      sub_1D9BA3E1C(v178, v177, v174, v167);
      swift_deallocUninitializedObject();
      goto LABEL_41;
    }

    v183 = 0;

    swift_unknownObjectRelease();
    sub_1D9B9E760(v179, v189);
    sub_1D9A0009C(&v210);
    sub_1D9BA3E1C(v178, v177, v174, v167);
    v185 = v112;
    v118 = *(v112 + 16);
    v119 = *(v118 + 16);

    v120 = MEMORY[0x1E69E7CC0];
    if (!v119)
    {
LABEL_35:

      v128 = v185;
      v129 = *(v185 + 40);
      v189[0] = *(v185 + 24);
      v189[1] = v129;
      v130 = *(v185 + 72);
      v190 = *(v185 + 56);
      v191 = v130;
      v131 = *(v185 + 136);
      v132 = *(v185 + 160);
      *(v205 + 8) = v189[0];
      *(&v205[1] + 8) = v129;
      *(&v205[2] + 8) = v190;
      *(&v205[3] + 8) = v130;
      LOBYTE(v193) = v131;
      *&v205[0] = v120;
      *(&v205[4] + 8) = *(v185 + 88);
      *(&v205[5] + 8) = *(v185 + 104);
      *(&v205[6] + 8) = *(v185 + 120);
      BYTE8(v205[7]) = v131;
      *&v206 = 0;
      *(&v206 + 1) = 0xE000000000000000;
      v207 = v132;
      v208 = 0uLL;
      v209 = MEMORY[0x1E69E7CC0];
      v133 = v164;
      v134 = *(v164 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
      sub_1D99AB100(v189, &v193, &qword_1ECB514D0, &unk_1D9C86490);
      os_unfair_lock_lock(v134 + 4);
      v135 = v133[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
      os_unfair_lock_unlock(v134 + 4);
      if (v135)
      {
        sub_1D9A0009C(v205);
        v136 = v161;
        static Logger.argos.getter(v161);
        v137 = sub_1D9C7D8BC();
        v138 = sub_1D9C7E09C();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          _os_log_impl(&dword_1D9962000, v137, v138, "performSearch(): canceled", v139, 2u);
          MEMORY[0x1DA7405F0](v139, -1, -1);
        }

        (*(v162 + 8))(v136, v163);
        sub_1D9A0EEC0();
        v140 = swift_allocError();
        *v141 = 0;
        v142 = v169;
        *v169 = v140;
        swift_storeEnumTagMultiPayload();
        sub_1D9B97D94(v142, v173, v171, v172, "search(): result.userFeedbackIntermediateResults = %s");
        sub_1D99A6AE0(v142, &unk_1ECB53570, &unk_1D9C9C2A0);
      }

      else
      {
        v201 = v206;
        v202 = v207;
        v203 = v208;
        v204 = v209;
        v197 = v205[4];
        v198 = v205[5];
        v199 = v205[6];
        v200 = v205[7];
        v193 = v205[0];
        v194 = v205[1];
        v195 = v205[2];
        v196 = v205[3];
        v143 = swift_allocObject();
        swift_weakInit();
        v144 = v166;
        sub_1D99AB100(v181, v166, &unk_1ECB51B10, &qword_1D9C86550);
        v145 = (*(v159 + 80) + 41) & ~*(v159 + 80);
        v146 = (v160 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
        v147 = swift_allocObject();
        v148 = v170;
        *(v147 + 16) = v143;
        *(v147 + 24) = v148;
        *(v147 + 32) = v128;
        *(v147 + 40) = v179;
        sub_1D9A0E758(v144, v147 + v145);
        v149 = (v147 + v146);
        v150 = v182;
        *v149 = sub_1D9BA4510;
        v149[1] = v150;

        sub_1D9BBF3F8(&v193, v181, v180, v133, sub_1D9BA48C8, v147);

        sub_1D9A0009C(v205);
      }

      goto LABEL_41;
    }

    v121 = 0;
    v122 = v184;
    while (v121 < *(v118 + 16))
    {
      v123 = (*(v186 + 80) + 32) & ~*(v186 + 80);
      v124 = *(v186 + 72);
      sub_1D9BA4538(v118 + v123 + v124 * v121, v122, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(*(v122 + 56) + 16))
      {
        sub_1D9BA45A0(v122, v243, type metadata accessor for VisualUnderstanding.ImageRegion);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v192 = v120;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D99FE2B8(0, *(v120 + 16) + 1, 1);
          v120 = v192;
        }

        v127 = *(v120 + 16);
        v126 = *(v120 + 24);
        if (v127 >= v126 >> 1)
        {
          sub_1D99FE2B8((v126 > 1), v127 + 1, 1);
          v120 = v192;
        }

        *(v120 + 16) = v127 + 1;
        sub_1D9BA45A0(v243, v120 + v123 + v127 * v124, type metadata accessor for VisualUnderstanding.ImageRegion);
        v122 = v184;
      }

      else
      {
        sub_1D9BA4608(v122, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      if (v119 == ++v121)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_44:
  __break(1u);
}

void sub_1D9B9FD38(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v155 = a6;
  v159 = a5;
  v169 = a4;
  v171 = a3;
  v244 = a1;
  v13 = sub_1D9C7D8DC();
  v150 = *(v13 - 8);
  v151 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v149 = v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v152 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v156 = v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v164 = v143 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v163 = v143 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v154 = v143 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v170 = v143 - v24;
  v153 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v167 = v143 - v27;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v157);
  v158 = (v143 - v28);
  v29 = sub_1D9C7DA7C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  v162 = a8;
  *(v33 + 16) = a8;
  *(v33 + 24) = a9;
  v34 = *(a10 + 144);
  *(v33 + 160) = *(a10 + 128);
  *(v33 + 176) = v34;
  *(v33 + 192) = *(a10 + 160);
  *(v33 + 208) = *(a10 + 176);
  v35 = *(a10 + 80);
  *(v33 + 96) = *(a10 + 64);
  *(v33 + 112) = v35;
  v36 = *(a10 + 112);
  *(v33 + 128) = *(a10 + 96);
  *(v33 + 144) = v36;
  v37 = *(a10 + 16);
  *(v33 + 32) = *a10;
  *(v33 + 48) = v37;
  v38 = *(a10 + 48);
  *(v33 + 64) = *(a10 + 32);
  *(v33 + 80) = v38;
  v172 = v33;
  v39 = a2[9];
  v240 = a2[8];
  v241 = v39;
  v242 = a2[10];
  v243 = *(a2 + 22);
  v40 = a2[5];
  v236 = a2[4];
  v237 = v40;
  v41 = a2[7];
  v238 = a2[6];
  v239 = v41;
  v42 = a2[1];
  v232 = *a2;
  v233 = v42;
  v43 = a2[3];
  v234 = a2[2];
  v235 = v43;
  v44 = *(a7 + 56);
  *v32 = v44;
  v45 = *(v30 + 104);
  LODWORD(v166) = *MEMORY[0x1E69E8020];
  v165 = v45;
  v45(v32);
  v160 = a9;

  v161 = a10;
  sub_1D99BB40C(a10, &v211);
  v46 = v44;
  LOBYTE(v44) = sub_1D9C7DA9C();
  v47 = *(v30 + 8);
  v168 = v29;
  (v47)(v32, v29);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v48 = v173;
  sub_1D9A723CC(v244);
  if (v48)
  {
LABEL_3:

    return;
  }

  v146 = v46;
  v173 = 0;
  v49 = sub_1D9B9E6EC(&unk_1F552A9B0);
  v195 = v240;
  v196 = v241;
  v197 = v242;
  v198 = v243;
  v191 = v236;
  v192 = v237;
  v193 = v238;
  v194 = v239;
  v187 = v232;
  v188 = v233;
  v189 = v234;
  v190 = v235;
  sub_1D9B69C68(v49, &v199);

  v219 = v207;
  v220 = v208;
  v221 = v209;
  v222 = v210;
  v215 = v203;
  v216 = v204;
  v217 = v205;
  v218 = v206;
  v211 = v199;
  v212 = v200;
  v213 = v201;
  v214 = v202;
  sub_1D9B67A68();
  v51 = *(v50 + 16);

  if (!v51)
  {
    sub_1D9AFCCA4();
    v58 = type metadata accessor for VisualSearchResultInternal(0);
    v59 = *(v58 + 24);
    v60 = sub_1D9C7CBEC();
    v61 = v158;
    (*(*(v60 - 8) + 56))(v158 + v59, 1, 1, v60);
    v62 = *(v58 + 28);
    v63 = sub_1D9C7CF3C();
    (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
    v64 = v220;
    *(v61 + 128) = v219;
    *(v61 + 144) = v64;
    *(v61 + 160) = v221;
    v65 = v222;
    v66 = v216;
    *(v61 + 64) = v215;
    *(v61 + 80) = v66;
    v67 = v218;
    *(v61 + 96) = v217;
    *(v61 + 112) = v67;
    v68 = v212;
    *v61 = v211;
    *(v61 + 16) = v68;
    v69 = v214;
    *(v61 + 32) = v213;
    *(v61 + 48) = v69;
    v70 = MEMORY[0x1E69E7CC0];
    *(v61 + 176) = v65;
    *(v61 + 184) = v70;
    swift_storeEnumTagMultiPayload();
    sub_1D9B97D94(v61, v162, v160, v161, "encryptedSearchPIR(): result.userFeedbackIntermediateResults = %s");
    sub_1D99A6AE0(v61, &unk_1ECB53570, &unk_1D9C9C2A0);
    goto LABEL_3;
  }

  v143[1] = *(a7 + 24);
  v144 = v47;

  sub_1D9C7D0BC();

  v52 = v171;
  v53 = v167;
  sub_1D99AB100(v171, v167, &unk_1ECB51B10, &qword_1D9C86550);
  Context = type metadata accessor for VisualQueryContext(0);
  v55 = *(Context - 8);
  v56 = *(v55 + 48);
  v147 = v55 + 48;
  v148 = v56;
  v57 = v56(v53, 1, Context);
  v145 = a7;
  if (v57 == 1)
  {
    sub_1D99A6AE0(v53, &unk_1ECB51B10, &qword_1D9C86550);
  }

  else
  {
    v71 = *(v53 + 56);
    sub_1D9BA4608(v53, type metadata accessor for VisualQueryContext);
    v72 = v71 == 3;
    v52 = v171;
    if (v72)
    {
      v73 = 0;
      goto LABEL_14;
    }
  }

  v74 = v156;
  sub_1D99AB100(v52, v156, &unk_1ECB51B10, &qword_1D9C86550);
  if (v148(v74, 1, Context) == 1)
  {
    sub_1D99A6AE0(v74, &unk_1ECB51B10, &qword_1D9C86550);
    v73 = 1;
  }

  else
  {
    v75 = v74[7];
    sub_1D9BA4608(v74, type metadata accessor for VisualQueryContext);
    v73 = v75 != 5;
  }

LABEL_14:
  v76 = v146;
  *v32 = v146;
  v77 = v168;
  v165(v32, v166, v168);
  v78 = v76;
  LOBYTE(v76) = sub_1D9C7DA9C();
  (v144)(v32, v77);
  if (v76)
  {
    LOBYTE(v177) = 0;
    memset(v176, 0, sizeof(v176));
    LODWORD(v168) = v73;
    if (v73)
    {
      v79 = v170;
      sub_1D99AB100(v52, v170, &unk_1ECB51B10, &qword_1D9C86550);
      v207 = v219;
      v208 = v220;
      v209 = v221;
      v210 = v222;
      v203 = v215;
      v204 = v216;
      v205 = v217;
      v206 = v218;
      v199 = v211;
      v200 = v212;
      v201 = v213;
      v202 = v214;
      sub_1D99BB40C(&v211, &v187);
      sub_1D9BDB0A4(v79, &v199, v223);
      v231 = *(v223 + 8);
      v230 = *(&v223[1] + 1);
      v229 = *&v223[2];
      v146 = objc_opt_self();
      *(&v200 + 1) = &type metadata for EngagedRegionOfInterestEvent;
      *&v201 = &off_1F5535308;
      v80 = swift_allocObject();
      *&v199 = v80;
      v81 = v223[1];
      v80[1] = v223[0];
      v80[2] = v81;
      *(v80 + 41) = *(&v223[1] + 9);
      v82 = type metadata accessor for AnyVIAEvent();
      v144 = v82;
      v83 = objc_allocWithZone(v82);
      sub_1D99A17C8(&v199, v83 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v231, &v187);
      sub_1D99AB100(&v230, &v187, &qword_1ECB53DB8, &qword_1D9C99C90);
      sub_1D99AB100(&v229, &v187, &qword_1ECB53400, &qword_1D9C953C8);
      sub_1D9B1734C(&v231, &v187);
      sub_1D99AB100(&v230, &v187, &qword_1ECB53DB8, &qword_1D9C99C90);
      sub_1D99AB100(&v229, &v187, &qword_1ECB53400, &qword_1D9C953C8);
      v175.receiver = v83;
      v175.super_class = v82;
      v84 = objc_msgSendSuper2(&v175, sel_init);
      v85 = __swift_destroy_boxed_opaque_existential_0Tm(&v199);
      [v146 logEvent_];

      sub_1D9B172F8(&v231);
      sub_1D99A6AE0(&v230, &qword_1ECB53DB8, &qword_1D9C99C90);
      sub_1D99A6AE0(&v229, &qword_1ECB53400, &qword_1D9C953C8);
      v86 = v170;
      sub_1D99AB100(v52, v170, &unk_1ECB51B10, &qword_1D9C86550);
      v87 = v154;
      sub_1D99AB100(v86, v154, &unk_1ECB51B10, &qword_1D9C86550);
      sub_1D9A9499C(v87, 0, &v224);
      v88 = v224;
      v89 = v225;
      v90 = v226;
      v91 = v52;
      v92 = Context;
      v93 = v227;
      sub_1D99A6AE0(v86, &unk_1ECB51B10, &qword_1D9C86550);
      v228 = v225;
      *&v176[0] = v88;
      *(v176 + 8) = v89;
      *(&v176[1] + 1) = v90;
      LOBYTE(v177) = v93;
      *(&v200 + 1) = &type metadata for LocalSearchStartEvent;
      *&v201 = &off_1F55352D8;
      v94 = swift_allocObject();
      *&v199 = v94;
      v166 = v89;
      v167 = v88;
      *(v94 + 16) = v88;
      *(v94 + 24) = v89;
      v165 = *(&v89 + 1);
      *(v94 + 32) = *(&v89 + 1);
      *(v94 + 40) = v90;
      LODWORD(v154) = v93;
      *(v94 + 48) = v93;
      Context = v92;
      v52 = v91;
      v95 = v144;
      v96 = objc_allocWithZone(v144);
      sub_1D99A17C8(&v199, v96 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v228, &v187);
      v156 = v90;
      v97 = v90;
      sub_1D9B1734C(&v228, &v187);
      v174.receiver = v96;
      v174.super_class = v95;
      v98 = v97;
      v99 = objc_msgSendSuper2(&v174, sel_init);
      v100 = __swift_destroy_boxed_opaque_existential_0Tm(&v199);
      [v146 logEvent_];

      sub_1D9B172F8(&v231);
      sub_1D99A6AE0(&v230, &qword_1ECB53DB8, &qword_1D9C99C90);
      sub_1D99A6AE0(&v229, &qword_1ECB53400, &qword_1D9C953C8);
      sub_1D9B172F8(&v228);
    }

    else
    {
      v166 = 0;
      v167 = 0;
      v165 = 0;
      v156 = 0;
      LODWORD(v154) = 0;
    }

    v102 = v163;
    v101 = v164;
    v103 = v148;
    v104 = *(v145 + 16);
    sub_1D99AB100(v52, v163, &unk_1ECB51B10, &qword_1D9C86550);
    if (v103(v102, 1, Context) == 1)
    {
      sub_1D99A6AE0(v102, &unk_1ECB51B10, &qword_1D9C86550);
      v105 = 0;
    }

    else
    {
      v105 = *(v102 + *(Context + 48));
      swift_unknownObjectRetain();
      sub_1D9BA4608(v102, type metadata accessor for VisualQueryContext);
    }

    sub_1D99AB100(v52, v101, &unk_1ECB51B10, &qword_1D9C86550);
    if (v103(v101, 1, Context) == 1)
    {
      sub_1D99A6AE0(v101, &unk_1ECB51B10, &qword_1D9C86550);
      v106 = 0;
    }

    else
    {
      v106 = *(v101 + 56);
      sub_1D9BA4608(v101, type metadata accessor for VisualQueryContext);
    }

    v107 = swift_allocObject();
    v108 = *(v104 + 16);
    sub_1D99A17C8(v244, &v199);
    v109 = *(v104 + 24);
    type metadata accessor for SignalsExtractionProcessor();
    v110 = swift_allocObject();

    *(v110 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
    *(v110 + 112) = 0u;
    *(v110 + 128) = 0u;
    *(v110 + 144) = 0u;
    *(v110 + 40) = v108;
    sub_1D9979B9C(&v199, v110 + 48);
    type metadata accessor for TextDetectionRequestFactory();
    *(v110 + 16) = swift_allocObject();
    type metadata accessor for BarcodeDetectionRequestFactory();
    *(v110 + 24) = swift_allocObject();
    *(v110 + 88) = v109;
    type metadata accessor for ImageFingerprintRequestFactory();
    v111 = swift_allocObject();
    *(v111 + 16) = v108;
    *(v110 + 32) = v111;
    *(v110 + 96) = v105;
    v207 = v219;
    v208 = v220;
    v209 = v221;
    v210 = v222;
    v203 = v215;
    v204 = v216;
    v205 = v217;
    v206 = v218;
    v199 = v211;
    v200 = v212;
    v201 = v213;
    v202 = v214;
    swift_unknownObjectRetain();

    v112 = v173;
    sub_1D99B54E0(&v199, v169, 2, 1, 0, v106, 0, v107 + 16);
    v113 = v168;
    if (v112)
    {

      swift_unknownObjectRelease();
      sub_1D9B9E760(v113, v176);
      sub_1D9A0009C(&v211);
      sub_1D9BA3E1C(v167, v166, v165, v156);
      swift_deallocUninitializedObject();
    }

    else
    {
      v173 = 0;

      swift_unknownObjectRelease();
      sub_1D9B9E760(v113, v176);
      sub_1D9A0009C(&v211);
      sub_1D9BA3E1C(v167, v166, v165, v156);
      v114 = v155;
      v115 = *&v155[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
      os_unfair_lock_lock(v115 + 4);
      v116 = v114[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
      os_unfair_lock_unlock(v115 + 4);
      if (v116)
      {
        v117 = v149;
        static Logger.argos.getter(v149);
        v118 = sub_1D9C7D8BC();
        v119 = sub_1D9C7E09C();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_1D9962000, v118, v119, "performEncryptedSearchPIR(): canceled", v120, 2u);
          MEMORY[0x1DA7405F0](v120, -1, -1);
        }

        (*(v150 + 8))(v117, v151);
        sub_1D9A0EEC0();
        v121 = swift_allocError();
        *v122 = 0;
        v123 = v158;
        *v158 = v121;
        swift_storeEnumTagMultiPayload();
        sub_1D9B97D94(v123, v162, v160, v161, "encryptedSearchPIR(): result.userFeedbackIntermediateResults = %s");
        sub_1D99A6AE0(v123, &unk_1ECB53570, &unk_1D9C9C2A0);
      }

      else
      {
        v124 = *(v107 + 160);
        v125 = *(v107 + 128);
        v195 = *(v107 + 144);
        v196 = v124;
        v126 = *(v107 + 160);
        v197 = *(v107 + 176);
        v127 = *(v107 + 96);
        v128 = *(v107 + 64);
        v191 = *(v107 + 80);
        v192 = v127;
        v129 = *(v107 + 96);
        v130 = *(v107 + 128);
        v193 = *(v107 + 112);
        v194 = v130;
        v131 = *(v107 + 32);
        v187 = *(v107 + 16);
        v188 = v131;
        v132 = *(v107 + 64);
        v134 = *(v107 + 16);
        v133 = *(v107 + 32);
        v189 = *(v107 + 48);
        v190 = v132;
        v183 = v195;
        v184 = v126;
        v185 = *(v107 + 176);
        v179 = v191;
        v180 = v129;
        v181 = v193;
        v182 = v125;
        v176[0] = v134;
        v176[1] = v133;
        v198 = *(v107 + 192);
        v186 = *(v107 + 192);
        v177 = v189;
        v178 = v128;
        v135 = swift_allocObject();
        swift_weakInit();
        v136 = v170;
        sub_1D99AB100(v171, v170, &unk_1ECB51B10, &qword_1D9C86550);
        v137 = (*(v152 + 80) + 41) & ~*(v152 + 80);
        v138 = (v153 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
        v139 = swift_allocObject();
        v140 = v159;
        *(v139 + 16) = v135;
        *(v139 + 24) = v140;
        *(v139 + 32) = v107;
        *(v139 + 40) = v113;
        sub_1D9A0E758(v136, v139 + v137);
        v141 = (v139 + v138);
        v142 = v172;
        *v141 = sub_1D9BA3DF4;
        v141[1] = v142;
        sub_1D99BB40C(&v187, &v199);

        sub_1D9BBFD5C(v176, v171, v169, v155, sub_1D9BA90D0, v139);

        v207 = v183;
        v208 = v184;
        v209 = v185;
        v210 = v186;
        v203 = v179;
        v204 = v180;
        v205 = v181;
        v206 = v182;
        v199 = v176[0];
        v200 = v176[1];
        v201 = v177;
        v202 = v178;
        sub_1D9A0009C(&v199);
      }
    }

    goto LABEL_3;
  }

LABEL_32:
  __break(1u);
}

void sub_1D9BA0F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6, void *a7, uint64_t a8, uint64_t (*a9)(char *), uint64_t a10, uint64_t a11)
{
  v329 = a3;
  v332 = a8;
  v322 = a7;
  v323 = a6;
  v321 = a5;
  v310 = a4;
  v324 = a1;
  v330 = a9;
  v280 = type metadata accessor for ServerSearchResult(0);
  MEMORY[0x1EEE9AC00](v280);
  v281 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v287);
  v282 = (&v279 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v294 = (&v279 - v15);
  v16 = sub_1D9C7DA2C();
  v292 = *(v16 - 8);
  v293 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v290 = &v279 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_1D9C7DA4C();
  v289 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v288 = &v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v284 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v285 = v20;
  v286 = &v279 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9C7D8DC();
  v312 = *(v21 - 8);
  v313 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v283 = &v279 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v308 = &v279 - v24;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v318);
  v295 = &v279 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v319 = (&v279 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v307 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v279 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v316 = &v279 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v299 = &v279 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v298 = &v279 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v317 = &v279 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v305 = &v279 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v309 = &v279 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v314 = &v279 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v306 = &v279 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v326 = (&v279 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v315 = &v279 - v50;
  v311 = v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v279 - v53;
  v55 = sub_1D9C7DA7C();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = (&v279 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = swift_allocObject();
  *(v59 + 16) = v330;
  *(v59 + 24) = a10;
  v60 = *(a11 + 144);
  *(v59 + 160) = *(a11 + 128);
  *(v59 + 176) = v60;
  *(v59 + 192) = *(a11 + 160);
  *(v59 + 208) = *(a11 + 176);
  v61 = *(a11 + 80);
  *(v59 + 96) = *(a11 + 64);
  *(v59 + 112) = v61;
  v62 = *(a11 + 112);
  *(v59 + 128) = *(a11 + 96);
  *(v59 + 144) = v62;
  v63 = *(a11 + 16);
  *(v59 + 32) = *a11;
  *(v59 + 48) = v63;
  v64 = *(a11 + 48);
  *(v59 + 64) = *(a11 + 32);
  *(v59 + 80) = v64;
  v327 = v59;
  v65 = *(a2 + 144);
  v410 = *(a2 + 128);
  v411 = v65;
  v412 = *(a2 + 160);
  v413 = *(a2 + 176);
  v66 = *(a2 + 80);
  v406 = *(a2 + 64);
  v407 = v66;
  v67 = *(a2 + 112);
  v408 = *(a2 + 96);
  v409 = v67;
  v68 = *(a2 + 16);
  v402 = *a2;
  v403 = v68;
  v69 = *(a2 + 48);
  v404 = *(a2 + 32);
  v405 = v69;
  v70 = *(v332 + 56);
  *v58 = v70;
  v71 = *(v56 + 104);
  LODWORD(v301) = *MEMORY[0x1E69E8020];
  v302 = (v56 + 104);
  v300 = v71;
  v71(v58);
  v325 = a10;

  v320 = a11;
  sub_1D99BB40C(a11, &v365);
  v72 = v70;
  LOBYTE(v70) = sub_1D9C7DA9C();
  v73 = *(v56 + 8);
  v303 = v56 + 8;
  v304 = v55;
  v73(v58, v55);
  if ((v70 & 1) == 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v296 = v72;
  v297 = v73;
  v74 = v329;
  sub_1D99AB100(v329, v54, &unk_1ECB51B10, &qword_1D9C86550);
  Context = type metadata accessor for VisualQueryContext(0);
  v76 = *(Context - 8);
  v331 = *(v76 + 48);
  v414 = (v76 + 48);
  if ((v331)(v54, 1, Context) == 1)
  {
    sub_1D99A6AE0(v54, &unk_1ECB51B10, &qword_1D9C86550);
    v77 = v332;
    v78 = v326;
  }

  else
  {
    v79 = *(v54 + 7);
    sub_1D9BA4608(v54, type metadata accessor for VisualQueryContext);
    v77 = v332;
    v78 = v326;
    if (v79 == 3)
    {
      goto LABEL_13;
    }
  }

  sub_1D99AB100(v74, v30, &unk_1ECB51B10, &qword_1D9C86550);
  if ((v331)(v30, 1, Context) == 1)
  {
    sub_1D99A6AE0(v30, &unk_1ECB51B10, &qword_1D9C86550);
  }

  else
  {
    v80 = *(v30 + 7);
    sub_1D9BA4608(v30, type metadata accessor for VisualQueryContext);
    if (v80 == 5)
    {
      goto LABEL_13;
    }
  }

  sub_1D99AB100(v324, &v351, &qword_1ECB51B30, &qword_1D9C99390);
  if (*(&v352 + 1))
  {
    sub_1D9979B9C(&v351, &v365);
    v81 = v328;
    sub_1D9A723CC(&v365);
    __swift_destroy_boxed_opaque_existential_0Tm(&v365);
    if (v81)
    {

      return;
    }

    v328 = 0;
  }

  else
  {
    sub_1D99A6AE0(&v351, &qword_1ECB51B30, &qword_1D9C99390);
  }

LABEL_13:
  v373 = v410;
  v374 = v411;
  v375 = v412;
  v376 = v413;
  v369 = v406;
  v370 = v407;
  v371 = v408;
  v372 = v409;
  v365 = v402;
  v366 = v403;
  v367 = v404;
  v368 = v405;
  sub_1D9B67A68();
  v83 = *(v82 + 16);

  if (!v83)
  {
    sub_1D9AFCCA4();
    v87 = type metadata accessor for VisualSearchResultInternal(0);
    v88 = *(v87 + 24);
    v89 = sub_1D9C7CBEC();
    v90 = v319;
    (*(*(v89 - 8) + 56))(v319 + v88, 1, 1, v89);
    v91 = *(v87 + 28);
    v92 = sub_1D9C7CF3C();
    (*(*(v92 - 8) + 56))(v90 + v91, 1, 1, v92);
    v93 = v411;
    *(v90 + 8) = v410;
    *(v90 + 9) = v93;
    *(v90 + 10) = v412;
    v94 = v413;
    v95 = v407;
    *(v90 + 4) = v406;
    *(v90 + 5) = v95;
    v96 = v409;
    *(v90 + 6) = v408;
    *(v90 + 7) = v96;
    v97 = v403;
    *v90 = v402;
    *(v90 + 1) = v97;
    v98 = v405;
    *(v90 + 2) = v404;
    *(v90 + 3) = v98;
    v99 = MEMORY[0x1E69E7CC0];
    v90[22] = v94;
    v90[23] = v99;
    swift_storeEnumTagMultiPayload();
    sub_1D99BB40C(&v402, &v365);
    sub_1D9B99130(v90, v330, v325, v320);
    sub_1D99A6AE0(v90, &unk_1ECB53570, &unk_1D9C9C2A0);

LABEL_47:

    return;
  }

  v279 = *(v77 + 24);

  sub_1D9C7D0BC();

  v84 = v315;
  sub_1D99AB100(v74, v315, &unk_1ECB51B10, &qword_1D9C86550);
  v85 = v331;
  if ((v331)(v84, 1, Context) == 1)
  {
    sub_1D99A6AE0(v84, &unk_1ECB51B10, &qword_1D9C86550);
    v86 = v316;
  }

  else
  {
    v100 = v84;
    v101 = *(v84 + 56);
    sub_1D9BA4608(v100, type metadata accessor for VisualQueryContext);
    v102 = v101 == 3;
    v86 = v316;
    if (v102)
    {
      LODWORD(v326) = 0;
      goto LABEL_24;
    }
  }

  sub_1D99AB100(v74, v86, &unk_1ECB51B10, &qword_1D9C86550);
  if (v85(v86, 1, Context) == 1)
  {
    sub_1D99A6AE0(v86, &unk_1ECB51B10, &qword_1D9C86550);
    v103 = 1;
  }

  else
  {
    v104 = v86;
    v105 = *(v86 + 56);
    sub_1D9BA4608(v104, type metadata accessor for VisualQueryContext);
    v103 = v105 != 5;
  }

  LODWORD(v326) = v103;
LABEL_24:
  v106 = swift_allocObject();
  v107 = v411;
  *(v106 + 144) = v410;
  *(v106 + 160) = v107;
  *(v106 + 176) = v412;
  *(v106 + 192) = v413;
  v108 = v407;
  *(v106 + 80) = v406;
  *(v106 + 96) = v108;
  v109 = v409;
  *(v106 + 112) = v408;
  *(v106 + 128) = v109;
  v110 = v403;
  *(v106 + 16) = v402;
  *(v106 + 32) = v110;
  v111 = v405;
  *(v106 + 48) = v404;
  *(v106 + 64) = v111;
  sub_1D99AB100(v74, v78, &unk_1ECB51B10, &qword_1D9C86550);
  if (v85(v78, 1, Context) == 1)
  {
    sub_1D99BB40C(&v402, &v365);
    sub_1D99A6AE0(v78, &unk_1ECB51B10, &qword_1D9C86550);
    v112 = v317;
  }

  else
  {
    v113 = *(v78 + 56);
    sub_1D99BB40C(&v402, &v365);
    sub_1D9BA4608(v78, type metadata accessor for VisualQueryContext);
    v102 = v113 == 3;
    v112 = v317;
    if (v102)
    {
      goto LABEL_35;
    }
  }

  sub_1D99AB100(v74, v112, &unk_1ECB51B10, &qword_1D9C86550);
  if (v85(v112, 1, Context) == 1)
  {
    sub_1D99A6AE0(v112, &unk_1ECB51B10, &qword_1D9C86550);
    goto LABEL_30;
  }

  v114 = v112;
  v115 = *(v112 + 56);
  sub_1D9BA4608(v114, type metadata accessor for VisualQueryContext);
  if (v115 == 5)
  {
LABEL_35:
    v139 = v323;
    goto LABEL_36;
  }

LABEL_30:
  sub_1D99AB100(v324, &v365, &qword_1ECB51B30, &qword_1D9C99390);
  if (!*(&v366 + 1))
  {
    sub_1D99A6AE0(&v365, &qword_1ECB51B30, &qword_1D9C99390);
    goto LABEL_35;
  }

  sub_1D9979B9C(&v365, &v339);
  v116 = v296;
  *v58 = v296;
  v117 = v304;
  v300(v58, v301, v304);
  v118 = v116;
  LOBYTE(v116) = sub_1D9C7DA9C();
  v297(v58, v117);
  if ((v116 & 1) == 0)
  {
LABEL_73:
    __break(1u);
    return;
  }

  v324 = Context;
  v336 = 0;
  memset(v335, 0, sizeof(v335));
  v316 = v106;
  if (v326)
  {
    v119 = v309;
    sub_1D99AB100(v74, v309, &unk_1ECB51B10, &qword_1D9C86550);
    v373 = v410;
    v374 = v411;
    v375 = v412;
    v376 = v413;
    v369 = v406;
    v370 = v407;
    v371 = v408;
    v372 = v409;
    v365 = v402;
    v366 = v403;
    v367 = v404;
    v368 = v405;
    sub_1D99BB40C(&v402, &v351);
    sub_1D9BDB0A4(v119, &v365, v379);
    v389 = *(v379 + 8);
    v388 = *(&v379[1] + 1);
    v387 = *&v379[2];
    v302 = objc_opt_self();
    *(&v366 + 1) = &type metadata for EngagedRegionOfInterestEvent;
    *&v367 = &off_1F5535308;
    v120 = swift_allocObject();
    *&v365 = v120;
    v121 = v379[1];
    v120[1] = v379[0];
    v120[2] = v121;
    *(v120 + 41) = *(&v379[1] + 9);
    v122 = type metadata accessor for AnyVIAEvent();
    v301 = v122;
    v123 = objc_allocWithZone(v122);
    sub_1D99A17C8(&v365, v123 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v389, &v351);
    sub_1D99AB100(&v388, &v351, &qword_1ECB53DB8, &qword_1D9C99C90);
    sub_1D99AB100(&v387, &v351, &qword_1ECB53400, &qword_1D9C953C8);
    sub_1D9B1734C(&v389, &v351);
    sub_1D99AB100(&v388, &v351, &qword_1ECB53DB8, &qword_1D9C99C90);
    sub_1D99AB100(&v387, &v351, &qword_1ECB53400, &qword_1D9C953C8);
    v334.receiver = v123;
    v334.super_class = v122;
    v124 = objc_msgSendSuper2(&v334, sel_init);
    v125 = __swift_destroy_boxed_opaque_existential_0Tm(&v365);
    [v302 logEvent_];

    sub_1D9B172F8(&v389);
    sub_1D99A6AE0(&v388, &qword_1ECB53DB8, &qword_1D9C99C90);
    sub_1D99A6AE0(&v387, &qword_1ECB53400, &qword_1D9C953C8);
    sub_1D99AB100(v74, v119, &unk_1ECB51B10, &qword_1D9C86550);
    v126 = v305;
    sub_1D99AB100(v119, v305, &unk_1ECB51B10, &qword_1D9C86550);
    sub_1D9A9499C(v126, 0, &v380);
    v127 = v380;
    v128 = v381;
    v129 = v74;
    v130 = v383;
    v131 = v382;
    sub_1D99A6AE0(v119, &unk_1ECB51B10, &qword_1D9C86550);
    v386 = v381;
    *&v335[0] = v127;
    *(v335 + 8) = v128;
    *(&v335[1] + 1) = v131;
    v336 = v130;
    *(&v366 + 1) = &type metadata for LocalSearchStartEvent;
    *&v367 = &off_1F55352D8;
    v132 = swift_allocObject();
    *&v365 = v132;
    v317 = v127;
    *(v132 + 16) = v127;
    *(v132 + 24) = v128;
    v304 = *(&v128 + 1);
    v315 = v128;
    *(v132 + 32) = *(&v128 + 1);
    *(v132 + 40) = v131;
    LODWORD(v303) = v130;
    *(v132 + 48) = v130;
    v133 = v301;
    v134 = objc_allocWithZone(v301);
    sub_1D99A17C8(&v365, v134 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v386, &v351);
    v135 = v131;
    sub_1D9B1734C(&v386, &v351);
    v333.receiver = v134;
    v333.super_class = v133;
    v136 = v135;
    v137 = objc_msgSendSuper2(&v333, sel_init);
    v138 = __swift_destroy_boxed_opaque_existential_0Tm(&v365);
    [v302 logEvent_];

    v77 = v332;
    sub_1D9B172F8(&v389);
    sub_1D99A6AE0(&v388, &qword_1ECB53DB8, &qword_1D9C99C90);
    sub_1D99A6AE0(&v387, &qword_1ECB53400, &qword_1D9C953C8);
    sub_1D9B172F8(&v386);
  }

  else
  {
    v317 = 0;
    v315 = 0;
    v304 = 0;
    v129 = v74;
    v131 = 0;
    LODWORD(v303) = 0;
  }

  v214 = v310;
  v215 = v298;
  v216 = v299;
  v217 = *(v77 + 16);
  sub_1D99AB100(v129, v298, &unk_1ECB51B10, &qword_1D9C86550);
  v218 = v324;
  if ((v331)(v215, 1, v324) == 1)
  {
    sub_1D99A6AE0(v215, &unk_1ECB51B10, &qword_1D9C86550);
    v219 = 0;
  }

  else
  {
    v219 = *(v215 + *(v218 + 48));
    swift_unknownObjectRetain();
    sub_1D9BA4608(v215, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(v329, v216, &unk_1ECB51B10, &qword_1D9C86550);
  if ((v331)(v216, 1, v218) == 1)
  {
    sub_1D99A6AE0(v216, &unk_1ECB51B10, &qword_1D9C86550);
    v220 = 0;
  }

  else
  {
    v220 = *(v216 + 56);
    sub_1D9BA4608(v216, type metadata accessor for VisualQueryContext);
  }

  v221 = *(v217 + 16);
  sub_1D99A17C8(&v339, &v365);
  v222 = *(v217 + 24);
  type metadata accessor for SignalsExtractionProcessor();
  v223 = swift_allocObject();

  *(v223 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
  *(v223 + 112) = 0u;
  *(v223 + 128) = 0u;
  *(v223 + 144) = 0u;
  *(v223 + 40) = v221;
  sub_1D9979B9C(&v365, v223 + 48);
  type metadata accessor for TextDetectionRequestFactory();
  *(v223 + 16) = swift_allocObject();
  type metadata accessor for BarcodeDetectionRequestFactory();
  *(v223 + 24) = swift_allocObject();
  *(v223 + 88) = v222;
  type metadata accessor for ImageFingerprintRequestFactory();
  v224 = swift_allocObject();
  *(v224 + 16) = v221;
  *(v223 + 32) = v224;
  *(v223 + 96) = v219;
  v373 = v410;
  v374 = v411;
  v375 = v412;
  v376 = v413;
  v369 = v406;
  v370 = v407;
  v371 = v408;
  v372 = v409;
  v365 = v402;
  v366 = v403;
  v367 = v404;
  v368 = v405;
  swift_unknownObjectRetain();

  v225 = v328;
  sub_1D99B54E0(&v365, v214, 1, 1, 0, v220, v322, v337);
  if (v225)
  {

    swift_unknownObjectRelease();
    sub_1D9B9E760(v326, v335);
    sub_1D9BA3E1C(v317, v315, v304, v131);
    __swift_destroy_boxed_opaque_existential_0Tm(&v339);

    return;
  }

  v328 = 0;

  swift_unknownObjectRelease();
  sub_1D9B9E760(v326, v335);
  sub_1D9BA3E1C(v317, v315, v304, v131);
  __swift_destroy_boxed_opaque_existential_0Tm(&v339);
  v106 = v316;
  v226 = *(v316 + 10);
  v359 = *(v316 + 9);
  v360 = v226;
  v361 = *(v316 + 11);
  v362 = *(v316 + 24);
  v227 = *(v316 + 6);
  v355 = *(v316 + 5);
  v356 = v227;
  v228 = *(v316 + 8);
  v357 = *(v316 + 7);
  v358 = v228;
  v229 = *(v316 + 2);
  v351 = *(v316 + 1);
  v352 = v229;
  v230 = *(v316 + 4);
  v353 = *(v316 + 3);
  v354 = v230;
  v231 = v337[9];
  *(v316 + 9) = v337[8];
  *(v106 + 160) = v231;
  *(v106 + 176) = v337[10];
  *(v106 + 192) = v338;
  v232 = v337[5];
  *(v106 + 80) = v337[4];
  *(v106 + 96) = v232;
  v233 = v337[7];
  *(v106 + 112) = v337[6];
  *(v106 + 128) = v233;
  v234 = v337[1];
  *(v106 + 16) = v337[0];
  *(v106 + 32) = v234;
  v235 = v337[3];
  *(v106 + 48) = v337[2];
  *(v106 + 64) = v235;
  sub_1D9A0009C(&v351);
  v139 = v323;
  v74 = v329;
LABEL_36:
  v140 = *&v139[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v140 + 4);
  v141 = OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled;
  v142 = v139[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v140 + 4);
  if (v142 == 1)
  {
    v143 = v308;
    static Logger.argos.getter(v308);
    v144 = sub_1D9C7D8BC();
    v145 = sub_1D9C7E09C();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_1D9962000, v144, v145, "performSearch(): canceled", v146, 2u);
      MEMORY[0x1DA7405F0](v146, -1, -1);
    }

    (*(v312 + 8))(v143, v313);
    sub_1D9A0EEC0();
    v147 = swift_allocError();
    *v148 = 0;
    v149 = v319;
    *v319 = v147;
    swift_storeEnumTagMultiPayload();
    sub_1D9B99130(v149, v330, v325, v320);
    sub_1D99A6AE0(v149, &unk_1ECB53570, &unk_1D9C9C2A0);

    goto LABEL_47;
  }

  v150 = *(v106 + 160);
  v398 = *(v106 + 144);
  v399 = v150;
  v400 = *(v106 + 176);
  v401 = *(v106 + 192);
  v151 = *(v106 + 96);
  v394 = *(v106 + 80);
  v395 = v151;
  v152 = *(v106 + 128);
  v396 = *(v106 + 112);
  v397 = v152;
  v153 = *(v106 + 32);
  v390 = *(v106 + 16);
  v391 = v153;
  v154 = *(v106 + 64);
  v392 = *(v106 + 48);
  v393 = v154;
  v155 = swift_allocObject();
  v414 = v141;
  v156 = v155;
  swift_weakInit();
  v157 = v306;
  sub_1D99AB100(v74, v306, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D99AB100(v157, v314, &unk_1ECB51B10, &qword_1D9C86550);
  v158 = *(v307 + 80);
  v159 = (v158 + 49) & ~v158;
  v324 = v311 + 7;
  v160 = (v311 + 7 + v159) & 0xFFFFFFFFFFFFFFF8;
  v331 = v158;
  v161 = swift_allocObject();
  *(v161 + 16) = v321;
  *(v161 + 24) = v156;
  v162 = v140;
  v163 = v322;
  *(v161 + 32) = v106;
  *(v161 + 40) = v163;
  *(v161 + 48) = v326;
  v164 = v157;
  v165 = v161;
  sub_1D9A0E758(v164, v161 + v159);
  v166 = (v165 + v160);
  v167 = v327;
  *v166 = sub_1D9BA90C4;
  v166[1] = v167;
  swift_retain_n();
  sub_1D99BB40C(&v390, &v365);

  v332 = v156;

  os_unfair_lock_lock(v162 + 4);
  LOBYTE(v159) = v414[v323];
  os_unfair_lock_unlock(v162 + 4);
  if ((v159 & 1) == 0)
  {
    v179 = v331;
    v321 = ~v331;

    v180 = swift_allocObject();
    *(v180 + 16) = sub_1D9BA84D4;
    *(v180 + 24) = v165;
    v181 = v180;
    v326 = v180;
    v182 = *(v279 + 16);
    v183 = v309;
    sub_1D99AB100(v329, v309, &unk_1ECB51B10, &qword_1D9C86550);
    v316 = v106;
    v317 = v165;
    v184 = (v179 + 16) & ~v179;
    v185 = (v324 + v184) & 0xFFFFFFFFFFFFFFF8;
    v186 = (v185 + 191) & 0xFFFFFFFFFFFFFFF8;
    v187 = swift_allocObject();
    sub_1D9A0E758(v183, v187 + v184);
    v188 = v187 + v185;
    v189 = v187;
    v190 = v399;
    *(v188 + 128) = v398;
    *(v188 + 144) = v190;
    *(v188 + 160) = v400;
    *(v188 + 176) = v401;
    v191 = v395;
    *(v188 + 64) = v394;
    *(v188 + 80) = v191;
    v192 = v397;
    *(v188 + 96) = v396;
    *(v188 + 112) = v192;
    v193 = v391;
    *v188 = v390;
    *(v188 + 16) = v193;
    v194 = v393;
    *(v188 + 32) = v392;
    *(v188 + 48) = v194;
    v195 = (v187 + v186);
    v324 = v187;
    *v195 = sub_1D9BA81C8;
    v195[1] = v181;
    v330 = *(v182 + 16);
    v196 = swift_allocObject();
    v414 = v196;
    swift_weakInit();
    v197 = v286;
    sub_1D9BA4538(v310, v286, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v198 = v305;
    sub_1D99AB100(v329, v305, &unk_1ECB51B10, &qword_1D9C86550);
    v199 = (*(v284 + 80) + 240) & ~*(v284 + 80);
    v200 = (v285 + v179 + v199) & v321;
    v201 = swift_allocObject();
    v202 = v322;
    *(v201 + 16) = v196;
    *(v201 + 24) = v202;
    v203 = v323;
    *(v201 + 32) = v323;
    v204 = v399;
    *(v201 + 184) = v398;
    *(v201 + 200) = v204;
    *(v201 + 216) = v400;
    v205 = v395;
    *(v201 + 120) = v394;
    *(v201 + 136) = v205;
    v206 = v397;
    *(v201 + 152) = v396;
    *(v201 + 168) = v206;
    v207 = v391;
    *(v201 + 56) = v390;
    *(v201 + 72) = v207;
    v208 = v393;
    *(v201 + 88) = v392;
    *(v201 + 40) = sub_1D9BA858C;
    *(v201 + 48) = v189;
    *(v201 + 232) = v401;
    *(v201 + 104) = v208;
    sub_1D9BA45A0(v197, v201 + v199, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9A0E758(v198, v201 + v200);
    *&v353 = sub_1D9BA85A4;
    *(&v353 + 1) = v201;
    *&v351 = MEMORY[0x1E69E9820];
    *(&v351 + 1) = 1107296256;
    *&v352 = sub_1D9A0A1E0;
    *(&v352 + 1) = &block_descriptor_126;
    v331 = _Block_copy(&v351);
    sub_1D99BB40C(&v390, &v365);
    sub_1D99BB40C(&v390, &v365);

    v209 = v203;

    v210 = v288;
    sub_1D9C7DA3C();
    *&v365 = MEMORY[0x1E69E7CC0];
    sub_1D9BA8340(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    sub_1D9A0E83C();
    v211 = v290;
    v212 = v293;
    sub_1D9C7E34C();
    v213 = v331;
    MEMORY[0x1DA73E300](0, v210, v211, v331);
    _Block_release(v213);

    sub_1D9A0009C(&v390);
    (*(v292 + 8))(v211, v212);
    (*(v289 + 8))(v210, v291);
    sub_1D99A6AE0(v314, &unk_1ECB51B10, &qword_1D9C86550);

    goto LABEL_47;
  }

  v168 = v283;
  static Logger.argos.getter(v283);
  v169 = sub_1D9C7D8BC();
  v170 = sub_1D9C7E09C();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    *v171 = 0;
    _os_log_impl(&dword_1D9962000, v169, v170, "search(): canceled", v171, 2u);
    MEMORY[0x1DA7405F0](v171, -1, -1);
  }

  (*(v312 + 8))(v168, v313);
  sub_1D9A0EEC0();
  v172 = swift_allocError();
  *v173 = 0;
  v174 = v294;
  *v294 = v172;
  swift_storeEnumTagMultiPayload();
  sub_1D9AFCCA4();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v176 = v322;
  if (Strong)
  {
    v177 = Strong;
    if (v322)
    {
      swift_beginAccess();
      v178 = v176[2];
    }

    else
    {
      v178 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D9A19294(v178);
    swift_endAccess();
    v236 = v282;
    sub_1D99AB100(v174, v282, &qword_1ECB53DC0, &unk_1D9C9C160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v295 = *v236;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v237 = v281;
      sub_1D9BA45A0(v236, v281, type metadata accessor for ServerSearchResult);
      v238 = (v237 + *(v280 + 24));
      v239 = v238[1];
      *(v106 + 144) = *v238;
      *(v106 + 152) = v239;

      v240 = *(v106 + 160);
      v241 = *(v106 + 128);
      v359 = *(v106 + 144);
      v360 = v240;
      v242 = *(v106 + 160);
      v361 = *(v106 + 176);
      v243 = *(v106 + 96);
      v244 = *(v106 + 64);
      v355 = *(v106 + 80);
      v356 = v243;
      v245 = *(v106 + 96);
      v246 = *(v106 + 128);
      v357 = *(v106 + 112);
      v358 = v246;
      v247 = *(v106 + 32);
      v351 = *(v106 + 16);
      v352 = v247;
      v248 = *(v106 + 64);
      v250 = *(v106 + 16);
      v249 = *(v106 + 32);
      v353 = *(v106 + 48);
      v354 = v248;
      v347 = v359;
      v348 = v242;
      v349 = *(v106 + 176);
      v343 = v355;
      v344 = v245;
      v345 = v357;
      v346 = v241;
      v339 = v250;
      v340 = v249;
      v362 = *(v106 + 192);
      v350 = *(v106 + 192);
      v341 = v353;
      v342 = v244;
      v251 = v177[8];
      sub_1D99BB40C(&v351, &v365);
      sub_1D9B3BD0C(v237, &v339, v251, v295);
      v373 = v347;
      v374 = v348;
      v375 = v349;
      v376 = v350;
      v369 = v343;
      v370 = v344;
      v371 = v345;
      v372 = v346;
      v365 = v339;
      v366 = v340;
      v367 = v341;
      v368 = v342;
      sub_1D9A0009C(&v365);
      sub_1D9BA4608(v237, type metadata accessor for ServerSearchResult);
    }

    v331 = v177;
    if (v326)
    {
      v252 = v319;
      sub_1D99AB100(v295, v319, &unk_1ECB53570, &unk_1D9C9C2A0);
      v253 = v314;
      v254 = v309;
      sub_1D99AB100(v314, v309, &unk_1ECB51B10, &qword_1D9C86550);
      sub_1D9BDB568(v252, v254, v377);
      v385 = *(v377 + 8);
      v384 = *(&v377[1] + 1);
      v255 = objc_opt_self();
      *(&v366 + 1) = &type metadata for ResultEvent;
      *&v367 = &off_1F55352A8;
      v256 = swift_allocObject();
      *&v365 = v256;
      v257 = v377[1];
      *(v256 + 16) = v377[0];
      *(v256 + 32) = v257;
      *(v256 + 48) = v378;
      v258 = type metadata accessor for AnyVIAEvent();
      v259 = objc_allocWithZone(v258);
      sub_1D99A17C8(&v365, v259 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v385, &v351);
      sub_1D99AB100(&v384, &v351, &qword_1ECB53400, &qword_1D9C953C8);
      sub_1D9B1734C(&v385, &v351);
      sub_1D99AB100(&v384, &v351, &qword_1ECB53400, &qword_1D9C953C8);
      v364.receiver = v259;
      v326 = v258;
      v364.super_class = v258;
      v260 = objc_msgSendSuper2(&v364, sel_init);
      [v255 logEvent_];

      sub_1D9B172F8(&v385);
      v261 = v322;
      sub_1D99A6AE0(&v384, &qword_1ECB53400, &qword_1D9C953C8);
      v317 = v165;
      v262 = v255;
      if (v261)
      {
        swift_beginAccess();
        v263 = v261[2];

        v264 = sub_1D99A7220(v253, 1, v263);
      }

      else
      {
        v264 = MEMORY[0x1E69E7CC0];
      }

      v316 = v106;
      v265 = *(v264 + 16);
      v329 = v264;
      if (v265)
      {
        v266 = (v264 + 64);
        v414 = v262;
        v267 = v326;
        do
        {
          v268 = *(v266 - 4);
          v269 = *(v266 - 3);
          v271 = *(v266 - 2);
          v270 = *(v266 - 1);
          v272 = *v266;
          v266 += 40;
          *(&v366 + 1) = &type metadata for DurationEvent;
          *&v367 = &off_1F552D1E8;
          v273 = swift_allocObject();
          *&v365 = v273;
          *(v273 + 16) = v268;
          *(v273 + 24) = v269;
          *(v273 + 32) = v271;
          *(v273 + 40) = v270;
          *(v273 + 48) = v272;
          v274 = objc_allocWithZone(v267);
          sub_1D99A17C8(&v365, v274 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
          v363.receiver = v274;
          v363.super_class = v267;
          swift_bridgeObjectRetain_n();
          v275 = v270;
          v276 = objc_msgSendSuper2(&v363, sel_init);
          v277 = __swift_destroy_boxed_opaque_existential_0Tm(&v365);
          [v414 logEvent_];

          --v265;
        }

        while (v265);
      }

      sub_1D9B172F8(&v385);
      sub_1D99A6AE0(&v384, &qword_1ECB53400, &qword_1D9C953C8);
      v174 = v294;
    }

    v278 = v295;
    sub_1D9B99130(v295, v330, v325, v320);

    sub_1D9A0009C(&v390);
    sub_1D99A6AE0(v278, &unk_1ECB53570, &unk_1D9C9C2A0);
    sub_1D99A6AE0(v174, &qword_1ECB53DC0, &unk_1D9C9C160);
    sub_1D99A6AE0(v314, &unk_1ECB51B10, &qword_1D9C86550);
  }

  else
  {

    sub_1D9A0009C(&v390);
    sub_1D99A6AE0(v174, &qword_1ECB53DC0, &unk_1D9C9C160);
    sub_1D99A6AE0(v314, &unk_1ECB51B10, &qword_1D9C86550);
  }
}