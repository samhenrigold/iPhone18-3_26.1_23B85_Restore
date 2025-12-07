uint64_t (*sub_21B338564(uint64_t (*result)(void *)))(void *)
{
  v18 = result;
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0;
LABEL_3:
    v4 = 40 * v3 + 32;
    v5 = v3;
    while (1)
    {
      if (v3 < 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v6 = *v1;
      if (v5 >= *(*v1 + 16))
      {
        goto LABEL_22;
      }

      v7 = v1[3];
      sub_21B233A74(v6 + v4, v19);
      v9 = v20;
      v8 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(*(v8 + 8) + 128))(v22, v7, v9);
      sub_21B233960(v19);
      v10 = v23;
      v11 = v18(v22);
      result = sub_21B261664(v22, &qword_27CD7E0F8, &unk_21B3557C0);
      v23 = v10;
      if (v10)
      {
        return v5;
      }

      if (v11)
      {
        break;
      }

      ++v5;
      v4 += 40;
      v1 = v17;
      if (v5 >= v2)
      {
        return v5;
      }
    }

    v12 = v23;
    while (1)
    {
      v13 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v5 >= v13)
      {
        v23 = v12;
        return v5;
      }

      if (v13 >= *(v6 + 16))
      {
        goto LABEL_24;
      }

      sub_21B233A74(v6 + 32 + 40 * v13, v19);
      v15 = v20;
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(*(v14 + 8) + 128))(v22, v7, v15);
      sub_21B233960(v19);
      v16 = v18(v22);
      result = sub_21B261664(v22, &qword_27CD7E0F8, &unk_21B3557C0);
      ++v2;
      if ((v16 & 1) == 0)
      {
        v23 = 0;
        v1 = v17;
        result = sub_21B334CEC(v5, v13);
        v3 = v5 + 1;
        v2 = v13;
        if (v5 + 1 < v13)
        {
          goto LABEL_3;
        }

        return ++v5;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_21B3387A8(uint64_t (*a1)(void *))
{
  v3 = v1;
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  v7 = (*(*(v5 + 8) + 32))(v6);
  v9 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  v10 = (*(*(v8 + 8) + 40))(v9);
  if (v7 < v10)
  {
    v11 = v10;
    do
    {
      v12 = v3[3];
      v13 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v12);
      (*(*(v13 + 8) + 128))(v24, v7, v12);
      v14 = a1(v24);
      sub_21B261664(v24, &qword_27CD7E0F8, &unk_21B3557C0);
      if (v2)
      {
        break;
      }

      if (v14)
      {
        while (1)
        {
          v17 = v3[3];
          v18 = v3[4];
          __swift_project_boxed_opaque_existential_1(v3, v17);
          v19 = (*(*(v18 + 8) + 72))(v11, v17);
          if (v7 >= v19)
          {
            return v7;
          }

          v11 = v19;
          v20 = v3[3];
          v21 = v3[4];
          __swift_project_boxed_opaque_existential_1(v3, v20);
          (*(*(v21 + 8) + 128))(v24, v11, v20);
          v22 = a1(v24);
          sub_21B261664(v24, &qword_27CD7E0F8, &unk_21B3557C0);
          if ((v22 & 1) == 0)
          {
            sub_21B334ADC(v7, v11);
            break;
          }
        }
      }

      v15 = v3[3];
      v16 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v15);
      v7 = (*(*(v16 + 8) + 64))(v7, v15);
    }

    while (v7 < v11);
  }

  return v7;
}

unint64_t sub_21B3389F8()
{
  result = qword_27CD7F620;
  if (!qword_27CD7F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F620);
  }

  return result;
}

unint64_t sub_21B338A50()
{
  result = qword_27CD7F628;
  if (!qword_27CD7F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F628);
  }

  return result;
}

unint64_t sub_21B338AA4()
{
  result = qword_27CD7F630;
  if (!qword_27CD7F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F630);
  }

  return result;
}

unint64_t sub_21B338AFC()
{
  result = qword_27CD7F638;
  if (!qword_27CD7F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F638);
  }

  return result;
}

unint64_t sub_21B338B54()
{
  result = qword_27CD7F640;
  if (!qword_27CD7F640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E530, &qword_21B352028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F640);
  }

  return result;
}

uint64_t Column<A>.numericSummary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v10 = *(a1 + 16);
  v11 = a2;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  type metadata accessor for NumericSummary(0, v10, a2, a4);
  return sub_21B328CA8(sub_21B339C1C, &v9, v7, v10);
}

uint64_t Column<A>.numericSummary()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v8 = *(a1 + 16);
  v9 = a2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F648, &qword_21B358088);
  return sub_21B328CA8(sub_21B33AADC, &v7, v5, v8);
}

uint64_t ColumnSlice<A>.numericSummary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[1];
  v18[0] = *v4;
  v18[1] = v6;
  v19 = *(v4 + 4);
  v7 = v4[1];
  v15 = *v4;
  v16 = v7;
  v17 = *(v4 + 4);
  v8 = *(a1 + 16);
  type metadata accessor for Column(255, v8, a3, a4);
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v14, v9);
  v10 = v14[2];

  v13[2] = v8;
  v13[3] = a2;
  v13[4] = v18;
  type metadata accessor for NumericSummary(0, v8, a2, v11);
  sub_21B328CA8(sub_21B33AB00, v13, v10, v8);
}

{
  v6 = v4[1];
  v17[0] = *v4;
  v17[1] = v6;
  v18 = *(v4 + 4);
  v7 = v4[1];
  v14 = *v4;
  v15 = v7;
  v16 = *(v4 + 4);
  v8 = *(a1 + 16);
  type metadata accessor for Column(255, v8, a3, a4);
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v13, v9);
  v10 = v13[2];

  v12[2] = v8;
  v12[3] = a2;
  v12[4] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F648, &qword_21B358088);
  sub_21B328CA8(sub_21B33AE28, v12, v10, v8);
}

uint64_t DiscontiguousColumnSlice<A>.numericSummary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v12 = *v4;
  v13[0] = v5;
  *(v13 + 9) = *(v4 + 25);
  v6 = v5;
  v9 = *(a1 + 16);
  v10 = a2;
  v11 = &v12;
  type metadata accessor for NumericSummary(0, v9, a2, a4);
  return sub_21B328CA8(sub_21B33AE48, &v8, v6, v9);
}

uint64_t DiscontiguousColumnSlice<A>.numericSummary()(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v10 = *v2;
  v11[0] = v3;
  *(v11 + 9) = *(v2 + 25);
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = a2;
  v9 = &v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F648, &qword_21B358088);
  return sub_21B328CA8(sub_21B33B214, &v6, v4, v7);
}

__n128 sub_21B339014@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v21 = NAN;
    a4.n128_u64[0] = 0x7FF8000000000000;
    v48 = a4;
    v49.i64[0] = 0x7FF8000000000000;
    v22 = 0x7FF8000000000000;
    goto LABEL_7;
  }

  v8 = 0;
  v9 = vdupq_n_s64(0x7FF8000000000000uLL);
  v10 = (a1 + 32);
  v11 = 0.0;
  v12 = vdupq_n_s64(0x7FF0000000000000uLL);
  v13 = vdupq_n_s64(0xFFFFFFFFFFFFFuLL);
  do
  {
    v14 = *&v10[v8++];
    v11 = v11 + v14;
    *&v15.f64[0] = v9.i64[0];
    v15.f64[1] = v14;
    *&v16.f64[1] = v9.i64[1];
    v16.f64[0] = v14;
    v17 = vcgtq_f64(v16, v15);
    v18 = vdupq_laneq_s64(v15, 1);
    v9 = vbslq_s8(vornq_s8(vceqzq_s64(vandq_s8(v9, v13)), vceqq_s64(vandq_s8(v9, v12), v12)), vbslq_s8(v17, v18, v9), v18);
  }

  while (v6 != v8);
  v16.f64[0] = v11 / v6;
  if (v6 >= 4)
  {
    v19 = v6 & 0x7FFFFFFFFFFFFFFCLL;
    v34 = vdupq_lane_s64(*&v16.f64[0], 0);
    v35 = (a1 + 48);
    v20 = 0.0;
    v36 = v6 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v37 = vsubq_f64(v35[-1], v34);
      v38 = vsubq_f64(*v35, v34);
      v39 = vmulq_f64(v37, v37);
      v40 = vmulq_f64(v38, v38);
      v20 = v20 + v39.f64[0] + v39.f64[1] + v40.f64[0] + v40.f64[1];
      v35 += 2;
      v36 -= 4;
    }

    while (v36);
    if (v6 == v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
  }

  v41 = v6 - v19;
  v42 = (a1 + 8 * v19 + 32);
  do
  {
    v43 = *v42++;
    v20 = v20 + (v43 - v16.f64[0]) * (v43 - v16.f64[0]);
    --v41;
  }

  while (v41);
LABEL_13:
  v48 = v16;
  v49 = v9;
  if (v20 <= 0.0)
  {
    v21 = NAN;
  }

  else
  {
    v21 = sqrt(v20 / (v6 - 1));
  }

  v7 = sub_21B24A18C(0, *(MEMORY[0x277D84F90] + 16) + 1, 1, MEMORY[0x277D84F90]);
  v44 = *(v7 + 2);
  v22 = v49.i64[1];
  v45 = v6;
  do
  {
    v46 = *v10;
    v47 = *(v7 + 3);
    if (v44 >= v47 >> 1)
    {
      v7 = sub_21B24A18C((v47 > 1), v44 + 1, 1, v7);
    }

    *(v7 + 2) = v44 + 1;
    *&v7[8 * v44 + 32] = v46;
    ++v10;
    ++v44;
    --v45;
  }

  while (v45);
LABEL_7:
  v50 = v7;

  sub_21B33D904(&v50);

  v23 = v50;
  v24.n128_u64[0] = 0.25;
  sub_21B339590(v50, v24);
  v26 = v25;
  v27.n128_u64[0] = 0.5;
  sub_21B339590(v23, v27);
  v29 = v28;
  v30.n128_u64[0] = 0.75;
  sub_21B339590(v23, v30);
  v32 = v31;

  *a3 = v6;
  *(a3 + 8) = a2;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  result = v48;
  *(a3 + 64) = v49.i64[0];
  *(a3 + 16) = v29;
  *(a3 + 24) = v26;
  *(a3 + 32) = v32;
  *(a3 + 40) = v48.n128_u64[0];
  return result;
}

__n128 sub_21B3392C8@<Q0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v7 = a1[1].u64[0];
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    a4.n128_u64[0] = vneg_f32(0x3F0000003FLL);
    v45 = a4.n128_u64[0];
    v18 = NAN;
    a4.n128_u32[0] = 2143289344;
    v44 = a4;
    goto LABEL_7;
  }

  v9 = 0;
  v10 = vneg_f32(0x3F0000003FLL);
  v11 = a1 + 2;
  v12 = 0.0;
  v13 = vneg_f32(0x7F0000007FLL);
  do
  {
    v14 = v11->f32[v9++];
    v12 = v12 + v14;
    v15 = vdup_lane_s32(__PAIR64__(v10.u32[1], LODWORD(v14)), 0);
    v10 = vbsl_s8(vorn_s8(vceqz_s32(vand_s8(v10, 0x7F0000007FLL)), vceq_s32(vand_s8(v10, v13), v13)), vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v14), v10.u32[0]), __PAIR64__(v10.u32[1], LODWORD(v14))), v15, v10), v15);
  }

  while (v7 != v9);
  v4.n128_f32[0] = v12 / v7;
  if (v7 >= 8)
  {
    v16 = v7 & 0x7FFFFFFFFFFFFFF8;
    v30 = vdupq_lane_s32(v4.n128_u64[0], 0);
    v31 = a1 + 3;
    v17 = 0.0;
    v32 = v7 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v33 = vsubq_f32(v31[-1], v30);
      v34 = vsubq_f32(*v31, v30);
      v35 = vmulq_f32(v33, v33);
      v36 = vmulq_f32(v34, v34);
      v17 = (((((((v17 + v35.f32[0]) + v35.f32[1]) + v35.f32[2]) + v35.f32[3]) + v36.f32[0]) + v36.f32[1]) + v36.f32[2]) + v36.f32[3];
      v31 += 2;
      v32 -= 8;
    }

    while (v32);
    if (v7 == v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0.0;
  }

  v37 = v7 - v16;
  v38 = &a1[2].f32[v16];
  do
  {
    v39 = *v38++;
    v17 = v17 + ((v39 - v4.n128_f32[0]) * (v39 - v4.n128_f32[0]));
    --v37;
  }

  while (v37);
LABEL_13:
  v44 = v4;
  v45 = v10;
  if (v17 <= 0.0)
  {
    v18 = NAN;
  }

  else
  {
    v18 = sqrtf(v17 / (v7 - 1));
  }

  v8 = sub_21B24A290(0, *(MEMORY[0x277D84F90] + 16) + 1, 1, MEMORY[0x277D84F90]);
  v40 = *(v8 + 2);
  v41 = v7;
  do
  {
    v42 = v11->i32[0];
    v43 = *(v8 + 3);
    if (v40 >= v43 >> 1)
    {
      v8 = sub_21B24A290((v43 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v40 + 1;
    *&v8[4 * v40 + 32] = v42;
    v11 = (v11 + 4);
    ++v40;
    --v41;
  }

  while (v41);
LABEL_7:
  v46 = v8;

  sub_21B33DA38(&v46);

  v19 = v46;
  v20.n128_u32[0] = 0.25;
  sub_21B3397B8(v46, v20);
  v22 = v21;
  v23.n128_u32[0] = 0.5;
  sub_21B3397B8(v19, v23);
  v25 = v24;
  v26.n128_u32[0] = 0.75;
  sub_21B3397B8(v19, v26);
  v28 = v27;

  *a3 = v7;
  *(a3 + 8) = a2;
  result = v44;
  *(a3 + 36) = v45;
  *(a3 + 16) = v25;
  *(a3 + 20) = v22;
  *(a3 + 28) = v44.n128_u32[0];
  *(a3 + 32) = v18;
  *(a3 + 24) = v28;
  return result;
}

uint64_t sub_21B339590(uint64_t result, __n128 a2)
{
  if (a2.n128_f64[0] < 0.0 || a2.n128_f64[0] > 1.0)
  {
    goto LABEL_24;
  }

  v3 = *(result + 16);
  if (v3)
  {
    v4 = (v3 - 1) * a2.n128_f64[0];
    v5 = trunc(v4);
    v6 = floor(v4);
    v7 = ceil(v4);
    if (v4 >= 0.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (v5 == v8)
    {
      a2.n128_f64[0] = v4;
      result = sub_21B33B40C(&v10, a2);
      if ((v11 & 1) == 0)
      {
        if (v10 < v3)
        {
          return result;
        }

        __break(1u);
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    a2.n128_f64[0] = v5;
    sub_21B33B40C(&v10, a2);
    if (v11)
    {
      goto LABEL_23;
    }

    if (v10 >= v3)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v9.n128_f64[0] = v8;
    result = sub_21B33B40C(&v10, v9);
    if (v11)
    {
LABEL_23:
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0x656C62756F44, 0xE600000000000000);
      MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34DAE0);
      MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
      MEMORY[0x21CEED5E0](0xD00000000000002ELL, 0x800000021B34DB00);
LABEL_24:
      result = sub_21B34B824();
      __break(1u);
      return result;
    }

    if (v10 >= v3)
    {
LABEL_21:
      __break(1u);
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_21B3397B8(uint64_t result, __n128 a2)
{
  if (a2.n128_f32[0] < 0.0 || a2.n128_f32[0] > 1.0)
  {
    goto LABEL_24;
  }

  v3 = *(result + 16);
  if (v3)
  {
    *&v4 = (v3 - 1) * a2.n128_f32[0];
    v5 = truncf(*&v4);
    v6 = floorf(*&v4);
    v7 = ceilf(*&v4);
    if (v4 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (v5 == v8)
    {
      a2.n128_u32[0] = v4;
      result = sub_21B33B5FC(&v10, a2);
      if ((v11 & 1) == 0)
      {
        if (v10 < v3)
        {
          return result;
        }

        __break(1u);
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    a2.n128_f32[0] = v5;
    sub_21B33B5FC(&v10, a2);
    if (v11)
    {
      goto LABEL_23;
    }

    if (v10 >= v3)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v9.n128_f32[0] = v8;
    result = sub_21B33B5FC(&v10, v9);
    if (v11)
    {
LABEL_23:
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0x74616F6C46, 0xE500000000000000);
      MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34DAE0);
      MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
      MEMORY[0x21CEED5E0](0xD00000000000002ELL, 0x800000021B34DB00);
LABEL_24:
      result = sub_21B34B824();
      __break(1u);
      return result;
    }

    if (v10 >= v3)
    {
LABEL_21:
      __break(1u);
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_21B3399E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = result;
    v27 = a8;
    v28 = a6;
    v29 = a7;
    if (a2)
    {
      type metadata accessor for Column(0, a6, a3, a4);
      v12 = 0;
      v13 = MEMORY[0x277D84F90];
      v30 = a5;
      do
      {
        v31[0] = a3;
        v31[1] = a4;
        v31[2] = a5;
        result = Column.isNil(at:)(v12);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v32 = v13;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v13 + 16) + 1, 1);
            v13 = v32;
          }

          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            result = sub_21B254034((v14 > 1), v15 + 1, 1);
            v13 = v32;
          }

          *(v13 + 16) = v15 + 1;
          *(v13 + 8 * v15 + 32) = v12;
          a5 = v30;
        }

        ++v12;
      }

      while (a2 != v12);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v16 = a2 - *(v13 + 16);
    v31[0] = v13;
    MEMORY[0x28223BE20](result);
    v18 = v28;
    v17 = v29;
    v25[2] = v28;
    v25[3] = v29;
    v25[4] = v26;
    v25[5] = a2;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v20 = sub_21B26F384();
    v22 = sub_21B2FCC28(sub_21B26F44C, v25, v19, v28, MEMORY[0x277D84A98], v20, MEMORY[0x277D84AC0], v21);

    v31[0] = v22;
    v23 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B308E68(v31, v16, v18, v23, v17, WitnessTable, v27);
  }

  return result;
}

uint64_t sub_21B339C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v33 = a2;
  v32 = a1;
  v10 = a3[1];
  v42 = *a3;
  v43 = v10;
  v44 = *(a3 + 4);
  v11 = a3[1];
  v39 = *a3;
  v40 = v11;
  v41 = *(a3 + 4);
  type metadata accessor for Column(255, a4, a3, a4);
  swift_getWitnessTable();
  v48 = sub_21B34BB44();
  result = sub_21B34BB14();
  v16 = v37;
  v15 = v38;
  v35 = a5;
  v34 = a6;
  if (v37 == v38)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_3:
    v45 = v42;
    v46 = v43;
    v47 = v44;
    result = sub_21B34BB14();
    v18 = *(&v39 + 1) - v39;
    if (!__OFSUB__(*(&v39 + 1), v39))
    {
      v19 = *(v17 + 16);
      v20 = v18 - v19;
      if (!__OFSUB__(v18, v19))
      {
        *&v45 = v17;
        MEMORY[0x28223BE20](result);
        v21 = v35;
        v31[2] = a4;
        v31[3] = v35;
        v31[4] = v32;
        v31[5] = v33;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
        v23 = sub_21B26F384();
        v25 = sub_21B2FCC28(sub_21B26F36C, v31, v22, a4, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v24);

        *&v45 = v25;
        v26 = sub_21B34B054();
        WitnessTable = swift_getWitnessTable();
        sub_21B308E68(&v45, v20, a4, v26, v21, WitnessTable, v34);
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v38 >= v37)
  {
    v17 = MEMORY[0x277D84F90];
    while (v15 != v16)
    {
      v30 = a3[1];
      v45 = *a3;
      v46 = v30;
      v47 = *(a3 + 4);
      type metadata accessor for ColumnSlice(0, a4, v13, v14);
      result = ColumnSlice.isNil(at:)(v16);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v36 = v17;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v17 + 16) + 1, 1);
          v17 = v36;
        }

        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_21B254034((v28 > 1), v29 + 1, 1);
          v17 = v36;
        }

        *(v17 + 16) = v29 + 1;
        *(v17 + 8 * v29 + 32) = v16;
      }

      if (v15 == ++v16)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B339F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v41 = a2;
  v42 = a6;
  v43 = a5;
  v40 = a1;
  v69 = *a3;
  v8 = *(a3 + 3);
  v70 = *(a3 + 2);
  v9 = *(a3 + 4);
  v10 = *(a3 + 40);
  v45 = v9;
  v46 = v8;
  v44 = v10;
  result = sub_21B2FB104(v8, v9, v10);
  v14 = result;
  v15 = *(result + 16);
  if (v15)
  {
    v16 = 0;
    v49 = result + 32;
    v17 = MEMORY[0x277D84F90];
    v47 = result;
    v48 = a4;
    while (v16 < *(v14 + 16))
    {
      v20 = *(v49 + 8 * v16);
      v21 = a3[1];
      v65 = *a3;
      *v66 = v21;
      *&v66[9] = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice(0, a4, v12, v13);
      result = DiscontiguousColumnSlice.isNil(at:)(v20);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v71 = v17;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v17 + 16) + 1, 1);
          v17 = v71;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_21B254034((v18 > 1), v19 + 1, 1);
          v17 = v71;
        }

        *(v17 + 16) = v19 + 1;
        *(v17 + 8 * v19 + 32) = v20;
        v14 = v47;
        a4 = v48;
      }

      if (v15 == ++v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_12:

    v60 = v69;
    v61 = v70;
    v62 = v46;
    v63 = v45;
    v64 = v44;
    v24 = type metadata accessor for Column(255, a4, v22, v23);
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for _DiscontiguousSlice(0, v24, WitnessTable, v26);
    swift_getWitnessTable();
    sub_21B34B2E4();
    *&v66[16] = v57;
    v67 = v58;
    v68 = v59;
    v65 = v55;
    *v66 = v56;
    v52 = v57;
    v53 = v58;
    v54 = v59;
    v50 = v55;
    v51 = v56;
    v27 = sub_21B34AAF4();
    swift_getWitnessTable();
    v28 = sub_21B34B264();
    result = (*(*(v27 - 8) + 8))(&v65, v27);
    v29 = *(v17 + 16);
    v30 = v28 - v29;
    if (!__OFSUB__(v28, v29))
    {
      *&v55 = v17;
      MEMORY[0x28223BE20](result);
      v31 = v43;
      v39[2] = a4;
      v39[3] = v43;
      v39[4] = v40;
      v39[5] = v41;
      v32 = a4;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
      v34 = sub_21B26F384();
      v36 = sub_21B2FCC28(sub_21B26F44C, v39, v33, v32, MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v35);

      *&v55 = v36;
      v37 = sub_21B34B054();
      v38 = swift_getWitnessTable();
      sub_21B308E68(&v55, v30, v32, v37, v31, v38, v42);
    }
  }

  __break(1u);
  return result;
}

uint64_t FilledColumn<>.numericSummary()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v19 = a3;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - v9;
  sub_21B34B204();
  v21 = v6;
  v22 = v5;
  v23 = a2;
  v24 = v3;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_21B2FCC28(sub_21B26CA3C, v20, AssociatedTypeWitness, v11, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v13);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v25 = v14;
  v15 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  sub_21B308E68(&v25, 0, v11, v15, a2, WitnessTable, v19);
}

uint64_t FilledColumn<>.numericSummary()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v17[-v10];
  sub_21B34B204();
  v18 = v6;
  v19 = v7;
  v20 = a2;
  v21 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_21B2FCC28(sub_21B33B234, v17, AssociatedTypeWitness, MEMORY[0x277D839F8], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v13);
  v15.n128_f64[0] = (*(v9 + 8))(v11, AssociatedTypeWitness);
  sub_21B339014(v14, 0, a3, v15);
}

uint64_t sub_21B33A6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v19 - v11;
  v14 = type metadata accessor for FilledColumn(0, a2, a3, v13);
  FilledColumn.subscript.getter(a1, v14, v12);
  if (sub_21B34B524() < 65)
  {
    v17 = sub_21B34B534();
    v18 = sub_21B34B514();
    result = (*(v10 + 8))(v12, AssociatedTypeWitness);
    if (v17)
    {
      v16 = v18;
    }

    else
    {
      v16 = v18;
    }
  }

  else
  {
    sub_21B2CFB44();
    sub_21B2659F4();
    sub_21B34A9B4();
    result = (*(v10 + 8))(v12, AssociatedTypeWitness);
    v16 = *&v19[3];
  }

  *a5 = v16;
  return result;
}

void *sub_21B33A89C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return v18;
  }

  v8 = a6;
  v10 = MEMORY[0x277D84F90];
  if (a2)
  {
    type metadata accessor for Column(0, a6, a3, a4);
    v14 = 0;
    v26 = a5;
    v27 = v8;
    do
    {
      v30 = a3;
      v31 = a4;
      v32 = a5;
      if (!Column.isNil(at:)(v14))
      {
        v29 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21B254034(0, *(v10 + 16) + 1, 1);
          v10 = v29;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21B254034((v15 > 1), v16 + 1, 1);
          v10 = v29;
        }

        *(v10 + 16) = v16 + 1;
        *(v10 + 8 * v16 + 32) = v14;
        a5 = v26;
        v8 = v27;
      }

      ++v14;
    }

    while (a2 != v14);
  }

  v17 = *(v10 + 16);
  if (v17)
  {
    v30 = MEMORY[0x277D84F90];
    v18 = sub_21B2542A8(0, v17, 0);
    v19 = 0;
    v20 = v30;
    while (v19 < *(v10 + 16))
    {
      v28 = *(v10 + 8 * v19 + 32);
      v18 = sub_21B33B258(&v28, v8, &v29);
      v21 = v29;
      v30 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        v18 = sub_21B2542A8((v22 > 1), v23 + 1, 1);
        v20 = v30;
      }

      ++v19;
      *(v20 + 16) = v23 + 1;
      *(v20 + 8 * v23 + 32) = v21;
      if (v17 == v19)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_19:
  sub_21B339014(v20, a2 - v17, a8, v24);
}

uint64_t sub_21B33AB20@<X0>(__int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v8 = a3[1];
  v35 = *a3;
  v36 = v8;
  v37 = *(a3 + 4);
  v9 = a3[1];
  v33[0] = *a3;
  v33[1] = v9;
  v34 = *(a3 + 4);
  type metadata accessor for Column(255, a4, a3, a4);
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v14 = v31;
  v13 = v32;
  v15 = MEMORY[0x277D84F90];
  if (v31 != v32)
  {
    if (v32 >= v31)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_21B254034((v25 > 1), v26 + 1, 1);
      v15 = v30;
    }

    *(v15 + 16) = v26 + 1;
    *(v15 + 8 * v26 + 32) = v14;
    while (v13 != ++v14)
    {
LABEL_17:
      if (v13 == v14)
      {
        goto LABEL_24;
      }

      v27 = a3[1];
      v38 = *a3;
      v39 = v27;
      v40 = *(a3 + 4);
      type metadata accessor for ColumnSlice(0, a4, v11, v12);
      result = ColumnSlice.isNil(at:)(v14);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v30 = v15;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v15 + 16) + 1, 1);
        }

        goto LABEL_13;
      }
    }
  }

  v38 = v35;
  v39 = v36;
  v40 = v37;
  result = sub_21B34BB14();
  v16 = *(&v33[0] + 1) - *&v33[0];
  if (__OFSUB__(*(&v33[0] + 1), *&v33[0]))
  {
    goto LABEL_25;
  }

  v17 = *(v15 + 16);
  v18 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v17)
  {
    v29 = v16 - v17;
    *&v38 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v17, 0);
    v19 = 0;
    v20 = v38;
    while (v19 < *(v15 + 16))
    {
      v31 = *(v15 + 8 * v19 + 32);
      result = sub_21B33B258(&v31, a4, v33);
      v21 = *&v33[0];
      *&v38 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_21B2542A8((v22 > 1), v23 + 1, 1);
        v20 = v38;
      }

      ++v19;
      *(v20 + 16) = v23 + 1;
      *(v20 + 8 * v23 + 32) = v21;
      if (v17 == v19)
      {

        v18 = v29;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_22:
  sub_21B339014(v20, v18, a6, v24);
}

uint64_t sub_21B33AE68@<X0>(__int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v57 = *a3;
  v7 = *(a3 + 3);
  v58 = *(a3 + 2);
  v38 = v7;
  v37 = *(a3 + 4);
  v36 = *(a3 + 40);
  result = sub_21B2FB104(v7, v37, v36);
  v11 = result;
  v12 = *(result + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v15 = result + 32;
    v39 = result + 32;
    while (v14 < *(v11 + 16))
    {
      v18 = *(v15 + 8 * v14);
      v19 = a3[1];
      v52 = *a3;
      *v53 = v19;
      *&v53[9] = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice(0, a4, v9, v10);
      result = DiscontiguousColumnSlice.isNil(at:)(v18);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v56 = v13;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v13 + 16) + 1, 1);
          v13 = v56;
        }

        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
          v13 = v56;
        }

        *(v13 + 16) = v17 + 1;
        *(v13 + 8 * v17 + 32) = v18;
        v15 = v39;
      }

      if (v12 == ++v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_11:

  v47 = v57;
  v48 = v58;
  v49 = v38;
  v50 = v37;
  v51 = v36;
  v22 = type metadata accessor for Column(255, a4, v20, v21);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _DiscontiguousSlice(0, v22, WitnessTable, v24);
  swift_getWitnessTable();
  sub_21B34B2E4();
  *&v53[16] = v44;
  v54 = v45;
  v55 = v46;
  v52 = v42;
  *v53 = v43;
  v41[2] = v44;
  v41[3] = v45;
  v41[4] = v46;
  v41[0] = v42;
  v41[1] = v43;
  v25 = sub_21B34AAF4();
  swift_getWitnessTable();
  v26 = sub_21B34B264();
  result = (*(*(v25 - 8) + 8))(&v52, v25);
  v27 = *(v13 + 16);
  v28 = v26 - v27;
  if (__OFSUB__(v26, v27))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v27)
  {
    *&v42 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v27, 0);
    v29 = 0;
    v30 = v42;
    while (v29 < *(v13 + 16))
    {
      *&v47 = *(v13 + 8 * v29 + 32);
      result = sub_21B33B258(&v47, a4, v41);
      v31 = *&v41[0];
      *&v42 = v30;
      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_21B2542A8((v32 > 1), v33 + 1, 1);
        v30 = v42;
      }

      ++v29;
      *(v30 + 16) = v33 + 1;
      *(v30 + 8 * v33 + 32) = v31;
      if (v27 == v29)
      {

        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_20:
  sub_21B339014(v30, v28, a6, v34);
}

uint64_t sub_21B33B258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a4@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v11 + *(v10 + 72) * *v7, v12);
  if (sub_21B34B524() < 65)
  {
    v15 = sub_21B34B534();
    v16 = sub_21B34B514();
    result = (*(v6 + 8))(v9, a2);
    if (v15)
    {
      v14 = v16;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    sub_21B2CFB44();
    sub_21B2659F4();
    sub_21B34A9B4();
    result = (*(v6 + 8))(v9, a2);
    v14 = *&v17[1];
  }

  *a4 = v14;
  return result;
}

BOOL sub_21B33B40C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v5 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_21B34B0C4();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_21B34B0B4();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (v2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (v2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (v2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (v2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_21B33B5FC(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = (a2.n128_u32[0] >> 23);
  v5 = a2.n128_u32[0] & 0x7FFFFF;
  v6 = v4 | a2.n128_u8[0];
  if (!(v4 | v5))
  {
    v12 = 0;
    result = 1;
    goto LABEL_32;
  }

  if (v4 == 255 || (v7 = sub_21B34B0E4(), v7 > 63))
  {
LABEL_44:
    v12 = 0;
    result = 0;
    v6 = 1;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = sub_21B34B0D4();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 > 63)
  {
    if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
      goto LABEL_13;
    }

    if (v12 < 0)
    {
      if (v12 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = v5 >> (v11 - v8);
      }

      goto LABEL_17;
    }

    if (v12 >= 0x20)
    {
LABEL_13:
      LODWORD(v12) = 0;
    }

    else
    {
      LODWORD(v12) = v5 << v12;
    }

LABEL_17:
    v12 = v12;
LABEL_18:
    if (v8 != 63)
    {
      if (v8 > -65)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v13 = 1 << v8;
          goto LABEL_26;
        }

        if (v8 != -64)
        {
          v13 = 0;
LABEL_26:
          v12 |= v13;
        }
      }

      if (v2 >= 0.0)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_31:
          v6 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        __break(1u);
      }

      __break(1u);
LABEL_43:
      if (v2 >= 0.0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v6 = 0;
      v12 = 0x8000000000000000;
      goto LABEL_32;
    }

LABEL_37:
    if (v2 >= 0.0 || v12)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 == -64)
      {
        goto LABEL_8;
      }

      v12 = v5 >> (v11 - v8);
    }

    else
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

      v12 = v5 << v12;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 63)
  {
    goto LABEL_43;
  }

  if (v8 < -64)
  {
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v8 != -64)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v12 = 0;
  if (v2 >= 0.0)
  {
    goto LABEL_31;
  }

LABEL_29:
  v6 = 0;
  v12 = -v12;
LABEL_32:
  *a1 = v12;
  *(a1 + 8) = v6;
  return result;
}

void *sub_21B33B7E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F700, &qword_21B358140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E200, &unk_21B352050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33B944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_21B33BA48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4D8, &qword_21B351D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4E0, &qword_21B351D98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33BB98(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21B33BD00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F750, &qword_21B358190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_21B33BE18(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_21B33BF4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F740, &qword_21B358180);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_21B33C074(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_21B33C190(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F718, &qword_21B358158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B33C2F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F730, &qword_21B358170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E548, &unk_21B352060);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33C444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F710, &qword_21B358150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33C554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E458, &qword_21B351D58);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B33C660(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E448, &qword_21B351D48);
  v10 = *(sub_21B34A834() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21B34A834() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21B33C838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E438, &qword_21B351D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21B33C92C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21B33CA30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E400, &qword_21B351D00);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21B33CB34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E418, &qword_21B351D18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_21B33CC54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D0, &qword_21B351CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33CDB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E388, &qword_21B351C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B33CF1C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_21B33D200(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B33D370(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B33D510(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 + 31;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 6);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[8 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, v14 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B33D668(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B33D7D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_21B33D904(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B33EA20(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_21B34B914();
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
      v7 = sub_21B34AFE4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21B33DB6C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21B33DA38(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B33EA34(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_21B34B914();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
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
        v10 += 4;
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
      v7 = sub_21B34AFE4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21B33E0C8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21B33DB6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_21B23A330(v8);
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
        sub_21B33E624((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
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
  v8 = MEMORY[0x277D84F90];
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
      result = sub_21B2356AC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_21B2356AC((v30 > 1), v5 + 1, 1, v8);
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
        sub_21B33E624((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
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

uint64_t sub_21B33E0C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_21B23A330(v8);
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
        sub_21B33E818((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
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
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
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
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
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
          v16 -= 4;
          v17 += 4;
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
      result = sub_21B2356AC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_21B2356AC((v30 > 1), v5 + 1, 1, v8);
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
        sub_21B33E818((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
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
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
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

uint64_t sub_21B33E624(double *__dst, double *__src, double *a3, double *a4)
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

uint64_t sub_21B33E818(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
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
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
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
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t FormattingOptions.init()@<X0>(uint64_t a1@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = sub_21B34A6A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = sub_21B34A874();
  MEMORY[0x28223BE20](v9 - 8);
  *a1 = xmmword_21B3581C0;
  *(a1 + 16) = 20;
  *(a1 + 24) = 257;
  *(a1 + 26) = 1;
  v10 = [objc_opt_self() processInfo];
  v11 = [v10 environment];

  v12 = sub_21B34A9D4();
  v13 = *(v12 + 16);
  v52 = v6;
  if (!v13 || (v14 = sub_21B24B534(0x534E4D554C4F43, 0xE700000000000000), (v15 & 1) == 0) || ((v16 = (*(v12 + 56) + 16 * v14), v18 = *v16, v17 = v16[1], , , v19 = HIBYTE(v17) & 0xF, v20 = v18 & 0xFFFFFFFFFFFFLL, (v17 & 0x2000000000000000) != 0) ? (v21 = HIBYTE(v17) & 0xF) : (v21 = v18 & 0xFFFFFFFFFFFFLL), !v21))
  {

    goto LABEL_23;
  }

  if ((v17 & 0x1000000000000000) == 0)
  {
    if ((v17 & 0x2000000000000000) != 0)
    {
      *&v54 = v18;
      *(&v54 + 1) = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v24 = 0;
            v40 = &v54 + 1;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                break;
              }

              v42 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = v42 + v41;
              if (__OFADD__(v42, v41))
              {
                break;
              }

              ++v40;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_79:
        __break(1u);
      }

      if (v18 != 45)
      {
        if (v19)
        {
          v24 = 0;
          v45 = &v54;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              break;
            }

            v47 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              break;
            }

            v45 = (v45 + 1);
            if (!--v19)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v19)
      {
        if (--v19)
        {
          v24 = 0;
          v34 = &v54 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v36 - v35;
            if (__OFSUB__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v19)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v22 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22 = sub_21B34B6F4();
      }

      v23 = *v22;
      if (v23 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v24 = 0;
            if (v22)
            {
              v37 = v22 + 1;
              while (1)
              {
                v38 = *v37 - 48;
                if (v38 > 9)
                {
                  goto LABEL_69;
                }

                v39 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  goto LABEL_69;
                }

                v24 = v39 + v38;
                if (__OFADD__(v39, v38))
                {
                  goto LABEL_69;
                }

                ++v37;
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_78;
      }

      if (v23 != 45)
      {
        if (v20)
        {
          v24 = 0;
          if (v22)
          {
            while (1)
            {
              v43 = *v22 - 48;
              if (v43 > 9)
              {
                goto LABEL_69;
              }

              v44 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_69;
              }

              v24 = v44 + v43;
              if (__OFADD__(v44, v43))
              {
                goto LABEL_69;
              }

              ++v22;
              if (!--v20)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v24 = 0;
        LOBYTE(v19) = 1;
        goto LABEL_70;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v24 = 0;
          if (v22)
          {
            v25 = v22 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_69;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_69;
              }

              v24 = v27 - v26;
              if (__OFSUB__(v27, v26))
              {
                goto LABEL_69;
              }

              ++v25;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v19) = 0;
LABEL_70:
          v53 = v19;
          v48 = v19;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v24 = sub_21B3411A0(v18, v17, 10);
  v48 = v49;
LABEL_71:

  if ((v48 & 1) == 0)
  {
    v28 = v3;
    v30 = v2;
    *a1 = v24;
    goto LABEL_27;
  }

LABEL_23:
  v28 = v3;
  *&v54 = 0;
  v29 = sub_21B34A934();
  if (!MEMORY[0x21CEED120](1, v29, &v54) && WORD1(v54))
  {
    *a1 = WORD1(v54);
  }

  v30 = v2;
LABEL_27:
  type metadata accessor for FormattingOptions(0);
  sub_21B34A864();
  sub_21B2CFAF0();
  sub_21B34A634();
  sub_21B34A864();
  sub_21B2CFB44();
  sub_21B34A674();
  v54 = xmmword_21B354DD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910, MEMORY[0x277D83D30]);
  sub_21B34A694();
  v31 = v52;
  MEMORY[0x21CEECE60](v5, v52);
  (*(v28 + 8))(v5, v30);
  v32 = (*(v51 + 8))(v8, v31);
  return MEMORY[0x21CEECE20](v32);
}

uint64_t sub_21B33F0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v1, 0);
    v3 = v16;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      v5 = sub_21B34AE74();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_21B231F10((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
  v12 = sub_21B34AB74();
  v14 = v13;

  MEMORY[0x21CEED5E0](v12, v14);

  MEMORY[0x21CEED5E0](10196194, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  return 9934050;
}

uint64_t FormattingOptions.init(maximumLineWidth:maximumCellWidth:maximumRowCount:includesColumnTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_21B34A6A4();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - v14;
  v16 = sub_21B34A874();
  MEMORY[0x28223BE20](v16 - 8);
  *(a5 + 25) = 257;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  type metadata accessor for FormattingOptions(0);
  sub_21B34A864();
  sub_21B2CFAF0();
  sub_21B34A634();
  sub_21B34A864();
  sub_21B2CFB44();
  sub_21B34A674();
  v24 = xmmword_21B354DD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910, MEMORY[0x277D83D30]);
  sub_21B34A694();
  v17 = v21;
  MEMORY[0x21CEECE60](v12, v21);
  (*(v22 + 8))(v12, v23);
  v18 = (*(v13 + 8))(v15, v17);
  return MEMORY[0x21CEECE20](v18);
}

int64_t sub_21B33F588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

unint64_t sub_21B33F63C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_21B34B6F4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_21B3411A0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t FormattingOptions.floatingPointFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormattingOptions(0) + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21B33FAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for FormattingOptions(0) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_21B33FB70(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FormattingOptions(0) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v6 = *(*(v5 - 8) + 24);

  return v6(a2 + v4, a1, v5);
}

uint64_t FormattingOptions.floatingPointFormatStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormattingOptions(0) + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*FormattingOptions.floatingPointFormatStyle.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[3] = v9;
  v11 = *(type metadata accessor for FormattingOptions(0) + 40);
  *(v5 + 8) = v11;
  (*(v8 + 16))(v10, v1 + v11, v6);
  return sub_21B341CC4;
}

uint64_t FormattingOptions.integerFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormattingOptions(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21B33FE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for FormattingOptions(0) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_21B33FEBC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FormattingOptions(0) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v6 = *(*(v5 - 8) + 24);

  return v6(a2 + v4, a1, v5);
}

uint64_t FormattingOptions.integerFormatStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormattingOptions(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*FormattingOptions.integerFormatStyle.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[3] = v9;
  v11 = *(type metadata accessor for FormattingOptions(0) + 44);
  *(v5 + 8) = v11;
  (*(v8 + 16))(v10, v1 + v11, v6);
  return sub_21B341CC4;
}

uint64_t FormattingOptions.dateFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormattingOptions(0) + 48);
  v4 = sub_21B34A784();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormattingOptions.dateFormatStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormattingOptions(0) + 48);
  v4 = sub_21B34A784();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*FormattingOptions.dateFormatStyle.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_21B34A784();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[3] = v9;
  v11 = *(type metadata accessor for FormattingOptions(0) + 48);
  *(v5 + 8) = v11;
  (*(v8 + 16))(v10, v1 + v11, v6);
  return sub_21B340304;
}

void sub_21B340308(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  (*(*(*a1 + 16) + 40))(**a1 + *(*a1 + 32), v2, *(*a1 + 8));
  free(v2);

  free(v1);
}

uint64_t FormattingOptions.locale.getter()
{
  type metadata accessor for FormattingOptions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  return sub_21B34A614();
}

uint64_t sub_21B3403BC()
{
  type metadata accessor for FormattingOptions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  return sub_21B34A614();
}

uint64_t sub_21B340414(uint64_t a1)
{
  v2 = sub_21B34A874();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return FormattingOptions.locale.setter(v4);
}

uint64_t FormattingOptions.locale.setter(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v4 = sub_21B34A784();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = sub_21B34A874();
  v40 = *(v11 - 8);
  v12 = v40;
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 16);
  v16 = a1;
  v18 = v17;
  v15(v14, v16);
  v35 = v15;
  v19 = type metadata accessor for FormattingOptions(0);
  v20 = *(v19 + 44);
  v36 = v19;
  (*(v8 + 16))(v10, v2 + v20, v7);
  sub_21B34A624();
  (*(v8 + 40))(v2 + v20, v10, v7);
  v21 = v37;
  (v15)(v14, v37, v18);
  v22 = *(v19 + 40);
  v23 = v38;
  v24 = v39;
  v25 = v41;
  (*(v38 + 16))(v39, v2 + v22, v41);
  sub_21B34A664();
  v26 = v2;
  (*(v23 + 40))(v2 + v22, v24, v25);
  v27 = v18;
  v35(v14, v21, v18);
  v28 = *(v36 + 48);
  v30 = v43;
  v29 = v44;
  v31 = v26 + v28;
  v32 = v26;
  v33 = v42;
  (*(v43 + 16))(v42, v31, v44);
  sub_21B34A774();
  (*(v40 + 8))(v21, v27);
  return (*(v30 + 40))(v32 + v28, v33, v29);
}

void (*FormattingOptions.locale.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_21B34A874();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  type metadata accessor for FormattingOptions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  sub_21B34A614();
  return sub_21B3409DC;
}

void sub_21B3409DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    FormattingOptions.locale.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    FormattingOptions.locale.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t FormattingOptions.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v4 = sub_21B34A784();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v36 - v8;
  v10 = sub_21B34A874();
  v42 = *(v10 - 8);
  v11 = v42;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  FormattingOptions.init()(a2);
  v14 = *(v11 + 16);
  v15 = a1;
  v16 = v10;
  v14(v13, v15, v10);
  v37 = v14;
  v17 = type metadata accessor for FormattingOptions(0);
  v18 = *(v17 + 44);
  v38 = v17;
  v19 = a2 + v18;
  v20 = a2;
  v21 = v40;
  (*(v7 + 16))(v9, v19, v40);
  sub_21B34A624();
  (*(v7 + 40))(v20 + v18, v9, v21);
  v22 = v39;
  v14(v13, v39, v16);
  v23 = *(v17 + 40);
  v24 = v41;
  v26 = v43;
  v25 = v44;
  (*(v41 + 16))(v43, v20 + v23, v44);
  sub_21B34A664();
  v27 = v20;
  (*(v24 + 40))(v20 + v23, v26, v25);
  v28 = v16;
  v37(v13, v22, v16);
  v29 = *(v38 + 48);
  v31 = v46;
  v30 = v47;
  v32 = v27 + v29;
  v33 = v27;
  v34 = v45;
  (*(v46 + 16))(v45, v32, v47);
  sub_21B34A774();
  (*(v42 + 8))(v22, v28);
  return (*(v31 + 40))(v33 + v29, v34, v30);
}

void *sub_21B340E7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (v7)
  {
    v29 = MEMORY[0x277D84F90];
    result = sub_21B231F10(0, v7, 0);
    if (v6[2] < 2uLL)
    {
      goto LABEL_14;
    }

    v9 = v29;
    v10 = a2 + 32;
    do
    {
      v10 += 8;

      result = sub_21B34AE74();
      v30 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v27 = result;
        v15 = v11;
        sub_21B231F10((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v27;
        v9 = v30;
      }

      *(v9 + 16) = v13 + 1;
      v14 = v9 + 16 * v13;
      *(v14 + 32) = result;
      *(v14 + 40) = v11;
      --v7;
    }

    while (v7);
  }

  v16 = v6[2];
  if (v16 < 3)
  {
    __break(1u);
  }

  else
  {
    v18 = v6[8];
    v17 = v6[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
    v19 = sub_21B34AB74();
    v21 = v20;

    if (a5)
    {

      v22 = sub_21B34AE74();
      v24 = v23;

      MEMORY[0x21CEED5E0](v22, v24);

      MEMORY[0x21CEED5E0](v18, v17);
    }

    v28 = v6[4];
    swift_bridgeObjectRetain_n();
    MEMORY[0x21CEED5E0](v19, v21);

    if (v16 != 3)
    {
      v26 = v6[10];
      v25 = v6[11];

      MEMORY[0x21CEED5E0](v26, v25);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      return v28;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FormattingOptions(uint64_t a1)
{
  result = qword_280C83AF0;
  if (!qword_280C83AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *sub_21B3411A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21B34AEA4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21B2E1664(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21B34B6F4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_21B341754(uint64_t a1)
{
  sub_21B341884(319, qword_280C83968, sub_21B2CFB44, MEMORY[0x277D839F8], MEMORY[0x277CC9160]);
  if (v1 <= 0x3F)
  {
    sub_21B341884(319, qword_27CD7F778, sub_21B2CFAF0, MEMORY[0x277D83B88], MEMORY[0x277CC8CD0]);
    if (v2 <= 0x3F)
    {
      sub_21B34A784();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B341884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

int64_t sub_21B3418EC(int64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 8 * a2);
    v5 = a2 + 1;
    if (a2 + 1 == v3)
    {
      return v4;
    }

    if (a2 + 1 < v3)
    {
      v6 = v3 + ~a2;
      if (v6 < 4)
      {
        goto LABEL_10;
      }

      v5 += v6 & 0xFFFFFFFFFFFFFFFCLL;
      v7 = vdupq_n_s64(v4);
      v8 = (result + 8 * a2 + 24);
      v9 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = v7;
      do
      {
        v7 = vbslq_s8(vcgtq_s64(v7, v8[-1]), v7, v8[-1]);
        v10 = vbslq_s8(vcgtq_s64(v10, *v8), v10, *v8);
        v8 += 2;
        v9 -= 4;
      }

      while (v9);
      v11 = vbslq_s8(vcgtq_s64(v7, v10), v7, v10);
      v12 = vextq_s8(v11, v11, 8uLL).u64[0];
      v4 = vbsl_s8(vcgtd_s64(v11.i64[0], v12), *v11.i8, v12);
      if (v6 != (v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v13 = v3 - v5;
        v14 = (result + 8 * v5);
        do
        {
          v16 = *v14++;
          v15 = v16;
          if (v4 <= v16)
          {
            v4 = v15;
          }

          --v13;
        }

        while (v13);
      }

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B3419B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a2;
  v10 = a1;
  v37 = sub_21B2A0B58(a1, a2);
  v12 = *(a5 + 16);
  if (v12)
  {
    v33 = v10;
    v34 = v9;
    v35 = a3;
    v36 = a4;
    v38 = MEMORY[0x277D84F90];
    sub_21B254034(0, v12, 0);
    v10 = 0;
    v13 = v38;
    a3 = a5 + 32;
    do
    {
      v14 = *(a3 + 16 * v10 + 8);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      while (1)
      {
        v15 = sub_21B34AE14();
        if (!v16)
        {
          break;
        }

        v17 = v16;
        a4 = sub_21B2A0BE0(v15, v16);

        v19 = __OFADD__(v9, a4);
        v9 += a4;
        if (v19)
        {
          __break(1u);
          goto LABEL_16;
        }
      }

      v21 = *(v38 + 16);
      v20 = *(v38 + 24);
      v14 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_21B254034((v20 > 1), v21 + 1, 1);
      }

      ++v10;
      *(v38 + 16) = v14;
      *(v38 + 8 * v21 + 32) = v9;
    }

    while (v10 != v12);
    a3 = v35;
    a4 = v36;
    v10 = v33;
    v9 = v34;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    if (!v14)
    {
      v17 = 0;
      goto LABEL_25;
    }
  }

  v17 = *(v13 + 32);
  v18 = v14 - 1;
  if (v14 == 1)
  {
    goto LABEL_25;
  }

  if (v14 >= 5)
  {
LABEL_16:
    v22 = v18 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v23 = vdupq_n_s64(v17);
    v24 = (v13 + 56);
    v25 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v23;
    do
    {
      v23 = vbslq_s8(vcgtq_s64(v23, v24[-1]), v23, v24[-1]);
      v26 = vbslq_s8(vcgtq_s64(v26, *v24), v26, *v24);
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v27 = vbslq_s8(vcgtq_s64(v23, v26), v23, v26);
    v28 = vextq_s8(v27, v27, 8uLL).u64[0];
    v17 = vbsl_s8(vcgtd_s64(v27.i64[0], v28), *v27.i8, v28);
    if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v22 = 1;
  }

  v29 = v14 - v22;
  v30 = 8 * v22 + 32;
  do
  {
    if (v17 <= *(v13 + v30))
    {
      v17 = *(v13 + v30);
    }

    v30 += 8;
    --v29;
  }

  while (v29);
LABEL_25:

  if (v17 <= v37)
  {
    v17 = v37;
  }

  result = sub_21B2A0B58(a3, a4);
  if (result <= v17)
  {
    v32 = v17;
  }

  else
  {
    v32 = result;
  }

  *a6 = v10;
  a6[1] = v9;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v32;
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

uint64_t sub_21B341C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21B341C68(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static OptionalColumnProtocol<>.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  return sub_21B341EB0(a1, a3, a4, a5, sub_21B341DE8, sub_21B3434B0, 42, x8_0);
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](42, 0xE100000000000000);
  v11 = (*(*(a4 + 8) + 16))(a3);
  MEMORY[0x21CEED5E0](v11);

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B342E38, v13, a3, a4, x8_0, *(a5 + 8));
}

uint64_t static OptionalColumnProtocol<>./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  return sub_21B341EB0(a1, a3, a4, a5, sub_21B341E4C, sub_21B3434B0, 47, x8_0);
}

{
  return sub_21B341EB0(a1, a3, a4, a5, sub_21B342474, sub_21B342550, 47, x8_0);
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9D4();
  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v11 = (*(*(a4 + 8) + 16))(a3);
  MEMORY[0x21CEED5E0](v11);

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B3430D4, v13, a3, a4, x8_0, *(*(a5 + 24) + 8));
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v11 = (*(*(a4 + 8) + 16))(a3);
  MEMORY[0x21CEED5E0](v11);

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B3433EC, v13, a3, a4, x8_0, *(*(*(a5 + 16) + 8) + 8));
}

uint64_t sub_21B341EB0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *)@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v35 = a8;
  v34 = a7;
  v32 = a6;
  v33 = a1;
  v36 = a9;
  v12 = *(a4 + 8);
  v13 = *(*(*(v12 + 8) + 8) + 8);
  v47 = a3;
  v48 = a3;
  v49 = v13;
  v50 = v13;
  v14 = sub_21B34B674();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  sub_21B34BA54();
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = v32;
  v42 = &v43;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_21B34B474();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_21B23CCA8(v34, v37, v14, v19, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);
  (*(v15 + 8))(v17, v14);
  v23 = *(v12 + 16);
  v47 = v23(a3, v12);
  v48 = v24;
  MEMORY[0x21CEED5E0](v35, 0xE100000000000000);
  v25 = v23(a3, v12);
  MEMORY[0x21CEED5E0](v25);

  v26 = v47;
  v27 = v48;
  v47 = v22;
  v28 = sub_21B34B054();
  v29 = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v26, v27, &v47, AssociatedTypeWitness, v28, v29, v36);
}

uint64_t sub_21B34214C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v34 = a5;
  v35 = a6;
  v36 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21B34B474();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v33 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v37 = v11;
  v38 = &v31 - v21;
  v22 = *(v11 + 16);
  v22(v17, a1, v10);
  v23 = *(v18 + 48);
  if (v23(v17, 1, AssociatedTypeWitness) == 1)
  {
    v14 = v17;
  }

  else
  {
    v32 = a7;
    v24 = v17;
    v25 = *(v18 + 32);
    v25(v38, v24, AssociatedTypeWitness);
    v22(v14, v36, v10);
    if (v23(v14, 1, AssociatedTypeWitness) != 1)
    {
      v27 = v33;
      v25(v33, v14, AssociatedTypeWitness);
      a7 = v32;
      v28 = v38;
      v35(v38, v27, AssociatedTypeWitness, v34);
      v29 = *(v18 + 8);
      v29(v27, AssociatedTypeWitness);
      v29(v28, AssociatedTypeWitness);
      v26 = 0;
      return (*(v18 + 56))(a7, v26, 1, AssociatedTypeWitness);
    }

    (*(v18 + 8))(v38, AssociatedTypeWitness);
    a7 = v32;
  }

  (*(v37 + 8))(v14, v10);
  v26 = 1;
  return (*(v18 + 56))(a7, v26, 1, AssociatedTypeWitness);
}

uint64_t sub_21B3424A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21B342568@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *x8_0@<X8>, uint64_t a9)
{
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a9;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_21B34B474();
  v22 = sub_21B2FCC28(sub_21B343480, v21, a7, v16, MEMORY[0x277D84A98], *(*(*(a8 + 8) + 8) + 8), MEMORY[0x277D84AC0], v17);
  v18 = sub_21B34B054();

  WitnessTable = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(a3, a4, &v22, AssociatedTypeWitness, v18, WitnessTable, x8_0);
}

uint64_t sub_21B3426A0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X8>)
{
  v21 = a3;
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_21B34B474();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v21 - v17;
  (*(v12 + 16))(v15, a1, v11);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v15, v11);
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(v18, v15, AssociatedTypeWitness);
    v22(v18, a4);
    (*(v16 + 8))(v18, AssociatedTypeWitness);
    v19 = 0;
  }

  return (*(v16 + 56))(a7, v19, 1, AssociatedTypeWitness);
}

uint64_t sub_21B34294C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *x8_0@<X8>)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  v15 = (*(*(a4 + 8) + 16))(a3);
  MEMORY[0x21CEED5E0](v15);

  MEMORY[0x21CEED5E0](a6, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v18 = a3;
  v19 = a4;
  v20 = a5;
  sub_21B342568(a2, 0, 0xE000000000000000, a7, v17, a3, a4, x8_0, a5);
}

uint64_t sub_21B342AA4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *x8_0@<X8>)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](a6, 0xE100000000000000);
  v15 = (*(*(a4 + 8) + 16))(a3);
  MEMORY[0x21CEED5E0](v15);

  v18 = a3;
  v19 = a4;
  v20 = a5;
  sub_21B342568(a1, 0, 0xE000000000000000, a7, v17, a3, a4, x8_0, a5);
}

uint64_t static OptionalColumnProtocol<>.* infix(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  v11 = (*(*(a4 + 8) + 16))(a3);
  MEMORY[0x21CEED5E0](v11);

  MEMORY[0x21CEED5E0](42, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B342568(a2, 0, 0xE000000000000000, sub_21B3434AC, v13, a3, a4, x8_0, *(a5 + 8));
}

uint64_t static OptionalColumnProtocol<>./ infix(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  v11 = (*(*(a4 + 8) + 16))(a3);
  MEMORY[0x21CEED5E0](v11);

  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9D4();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B342568(a2, 0, 0xE000000000000000, sub_21B342F88, v13, a3, a4, x8_0, *(*(a5 + 24) + 8));
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  v11 = (*(*(a4 + 8) + 16))(a3);
  MEMORY[0x21CEED5E0](v11);

  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B342568(a2, 0, 0xE000000000000000, sub_21B343224, v13, a3, a4, x8_0, *(*(*(a5 + 16) + 8) + 8));
}

uint64_t sub_21B3434C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B34351C(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  if (a4 <= 0.0 || a4 >= 1.0)
  {
    goto LABEL_70;
  }

  v72 = *v4;
  v8 = *(v4 + 16);
  v73 = v8;
  v70 = *(v4 + 24);
  v71 = *(v4 + 40);
  v9 = v71;
  v63 = v72;
  sub_21B2A62E0(&v72, &v74);
  v10 = v70;
  if (v71)
  {
    if (v71 == 1 && *(v70 + 16))
    {
      v10 = *(v70 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = v11;
      }
    }
  }

  sub_21B2A6400();
  v74 = v63;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v75 = v8;
  v76 = v70;
  v77 = v71;
  v78 = v10;
  v79 = v15;
  sub_21B2A62E0(&v72, &v65);
  sub_21B2A62E0(&v72, &v65);
  sub_21B2A633C(&v70, &v65);
  v16 = sub_21B2640C4(&v74);
  sub_21B2803D4(&v74);
  v62 = v16;
  v17 = v16[2];
  v18 = v17 * a4;
  if (COERCE__INT64(fabs(v18)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_66;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v19 = v18;
  v20 = MEMORY[0x277D84FA0];
  v69 = MEMORY[0x277D84FA0];
  v9 = v62;

  v22 = sub_21B25EF30(v21);

  v68 = v22;
  if (v19 < 1)
  {
LABEL_40:

    v66 = 0uLL;
    v67 = 2;
    v38 = *(v20 + 16);
    if (v38)
    {
      v39 = sub_21B2642A8(*(v20 + 16), 0);
      v40 = sub_21B26566C(&v65, v39 + 4, v38, v20);
      v41 = v65;

      sub_21B26139C(v41);
      if (v40 == v38)
      {
        goto LABEL_44;
      }

      __break(1u);
    }

    v39 = MEMORY[0x277D84F90];
LABEL_44:
    v65 = v39;
    v9 = 0;
    sub_21B264924(&v65);

    v42 = *(v65 + 2);
    if (v42)
    {
      v43 = v65 + 32;
      while (1)
      {
        v45 = *v43;
        v43 += 8;
        v44 = v45;
        v46 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v46 < v44)
        {
          goto LABEL_63;
        }

        sub_21B248A60(v44, v46);
        if (!--v42)
        {
          goto LABEL_49;
        }
      }

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
      goto LABEL_67;
    }

LABEL_49:

    v47 = v68;
    v48 = *(v68 + 16);
    if (v48)
    {
      v49 = sub_21B2642A8(*(v68 + 16), 0);
      v50 = sub_21B26566C(&v65, v49 + 4, v48, v47);
      v51 = v65;

      sub_21B26139C(v51);
      if (v50 == v48)
      {
LABEL_53:
        v65 = v49;
        sub_21B264924(&v65);

        v9 = v65;
        v52 = *(v65 + 2);
        if (!v52)
        {
LABEL_58:

          v57 = v67;
          v58 = v72;
          *a1 = v72;
          v59 = v73;
          *(a1 + 16) = v73;
          *(a1 + 24) = v66;
          *(a1 + 40) = v57;
          *a2 = v58;
          *(a2 + 16) = v59;
          *(a2 + 24) = 0uLL;
          *(a2 + 40) = 2;
          return result;
        }

        v53 = 32;
        while (1)
        {
          v54 = *(v9 + v53);
          v55 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_64;
          }

          if (v55 < v54)
          {
            goto LABEL_65;
          }

          sub_21B248A60(v54, v55);
          v53 += 8;
          if (!--v52)
          {
            goto LABEL_58;
          }
        }
      }

      __break(1u);
    }

    v49 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  if (v17)
  {
    v23 = *a3;
    v64 = v62 + 4;
    v24 = -v17 % v17;
LABEL_23:
    v9 = v20 + 56;
    while (1)
    {
      sub_21B262EB0();
      v26 = (v25 * v17) >> 64;
      if (v17 > v25 * v17 && v24 > v25 * v17)
      {
        break;
      }

LABEL_33:
      if (v26 >= v62[2])
      {
        goto LABEL_61;
      }

      v33 = v64[v26];
      if (!*(v20 + 16) || (v34 = sub_21B34BBB4(), v35 = -1 << *(v20 + 32), v36 = v34 & ~v35, ((*(v9 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0))
      {
LABEL_22:
        sub_21B254588(&v65, v33);
        sub_21B2644EC(v64[v26]);
        v20 = v69;
        if (*(v69 + 16) >= v19)
        {
          goto LABEL_40;
        }

        goto LABEL_23;
      }

      v37 = ~v35;
      while (*(*(v20 + 48) + 8 * v36) != v33)
      {
        v36 = (v36 + 1) & v37;
        if (((*(v9 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v27 = *(v23 + 128);
    while (1)
    {
      if (v27 == 624)
      {
        sub_21B262BA0();
        v27 = *(v23 + 128);
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        break;
      }

      v28 = *(v23 + 120);
      if (v27 >= *(v28 + 16))
      {
        goto LABEL_60;
      }

      v29 = v28 + 8 * v27++;
      v30 = (*(v29 + 32) >> 29) & 0x5555555555555555 ^ *(v29 + 32);
      v31 = (((v30 << 17) & 0x71D67FFFEDA60000 ^ v30) << 37) & 0xFFF7EEE000000000 ^ (v30 << 17) & 0x71D67FFFEDA60000 ^ v30;
      v32 = v31 ^ (v31 >> 43);
      *(v23 + 128) = v27;
      if (v24 <= v32 * v17)
      {
        v26 = (v32 * v17) >> 64;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_69:
  __break(1u);
  MEMORY[0x21CEEE840](v9);

  __break(1u);
LABEL_70:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B343AF4(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= 0.0 || a3 >= 1.0)
  {
    goto LABEL_63;
  }

  v62 = *v3;
  v6 = *(v3 + 16);
  v63 = v6;
  v60 = *(v3 + 24);
  v7 = *(v3 + 40);
  v61 = v7;
  v54 = v62;
  sub_21B2A62E0(&v62, &v64);
  v8 = v60;
  if (v7)
  {
    if (v7 == 1 && *(v60 + 16))
    {
      v8 = *(v60 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v8 = v9;
      }
    }
  }

  sub_21B2A6400();
  v64 = v54;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v65 = v6;
  v66 = v60;
  v67 = v7;
  v68 = v8;
  v69 = v13;
  sub_21B2A62E0(&v62, &v55);
  sub_21B2A62E0(&v62, &v55);
  sub_21B2A633C(&v60, &v55);
  v14 = sub_21B2640C4(&v64);
  sub_21B2803D4(&v64);
  v15 = v14[2];
  v16 = v15 * a3;
  if (COERCE__INT64(fabs(v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v17 = v16;
  v18 = MEMORY[0x277D84FA0];
  v59 = MEMORY[0x277D84FA0];

  v20 = sub_21B25EF30(v19);

  v58 = v20;
  if (v17 < 1)
  {
LABEL_35:

    v56 = 0uLL;
    v57 = 2;
    v30 = *(v18 + 16);
    if (v30)
    {
      v31 = sub_21B2642A8(*(v18 + 16), 0);
      v32 = sub_21B26566C(&v55, v31 + 4, v30, v18);
      v33 = v55;

      sub_21B26139C(v33);
      if (v32 == v30)
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    v31 = MEMORY[0x277D84F90];
LABEL_39:
    v55 = v31;
    v14 = 0;
    sub_21B264924(&v55);

    v34 = *(v55 + 16);
    if (v34)
    {
      v35 = (v55 + 32);
      while (1)
      {
        v37 = *v35;
        v35 += 8;
        v36 = v37;
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v38 < v36)
        {
          goto LABEL_56;
        }

        sub_21B248A60(v36, v38);
        if (!--v34)
        {
          goto LABEL_44;
        }
      }

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
      goto LABEL_60;
    }

LABEL_44:

    v39 = v58;
    v40 = *(v58 + 16);
    if (v40)
    {
      v41 = sub_21B2642A8(*(v58 + 16), 0);
      v42 = sub_21B26566C(&v55, v41 + 4, v40, v39);
      v43 = v55;

      sub_21B26139C(v43);
      if (v42 == v40)
      {
LABEL_48:
        v55 = v41;
        sub_21B264924(&v55);

        v14 = v55;
        v44 = *(v55 + 16);
        if (!v44)
        {
LABEL_53:

          v49 = v57;
          v50 = v62;
          *a1 = v62;
          v51 = v63;
          *(a1 + 16) = v63;
          *(a1 + 24) = v56;
          *(a1 + 40) = v49;
          *a2 = v50;
          *(a2 + 16) = v51;
          *(a2 + 24) = 0uLL;
          *(a2 + 40) = 2;
          return result;
        }

        v45 = 4;
        while (1)
        {
          v46 = v14[v45];
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_57;
          }

          if (v47 < v46)
          {
            goto LABEL_58;
          }

          sub_21B248A60(v46, v47);
          ++v45;
          if (!--v44)
          {
            goto LABEL_53;
          }
        }
      }

      __break(1u);
    }

    v41 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  if (v15)
  {
    v21 = v14 + 4;
    v22 = -v15 % v15;
LABEL_23:
    v23 = v18 + 56;
    while (1)
    {
      v55 = 0;
      MEMORY[0x21CEEEA50](&v55, 8);
      v24 = (v55 * v15) >> 64;
      if (v15 > v55 * v15 && v22 > v55 * v15)
      {
        do
        {
          v55 = 0;
          MEMORY[0x21CEEEA50](&v55, 8);
        }

        while (v22 > v55 * v15);
        v24 = (v55 * v15) >> 64;
      }

      if (v24 >= v14[2])
      {
        break;
      }

      v25 = v21[v24];
      if (!*(v18 + 16) || (v26 = sub_21B34BBB4(), v27 = -1 << *(v18 + 32), v28 = v26 & ~v27, ((*(v23 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
      {
LABEL_22:
        sub_21B254588(&v55, v25);
        sub_21B2644EC(v21[v24]);
        v18 = v59;
        if (*(v59 + 16) >= v17)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      v29 = ~v27;
      while (*(*(v18 + 48) + 8 * v28) != v25)
      {
        v28 = (v28 + 1) & v29;
        if (((*(v23 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_62:
  __break(1u);
  MEMORY[0x21CEEE840](v14);

  __break(1u);
LABEL_63:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B344048(uint64_t a1)
{
  sub_21B3440E4(a1, v6);
  v1 = v6[3];
  v2 = v6[4];
  v3 = v7;
  v4 = DataFrame.Slice.columns.getter();

  sub_21B23A9F4(v1, v2, v3);
  return v4;
}

double sub_21B3440E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v7 = &v14 - v6;
  v16 = *v2;
  sub_21B34B054();
  swift_getWitnessTable();
  if (sub_21B34B2B4())
  {
    v15 = vdupq_n_s64(MEMORY[0x277D84F90]);
    v8 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    v9 = 0uLL;
    v10 = 2;
  }

  else
  {
    sub_21B34B094();
    v11 = &v7[*(TupleTypeMetadata2 + 48)];
    v12 = *v11;
    v8 = *(v11 + 2);
    v14 = *(v11 + 24);
    v15 = v12;
    v10 = v11[40];
    (*(*(v4 - 8) + 8))(v7, v4);
    v9 = v14;
  }

  result = *v15.i64;
  *a2 = v15;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_21B34426C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B3440E4(a3, &v7);
  sub_21B23A9F4(v8, v9, v10);
  v5 = sub_21B23AC94(a1, a2);

  return v5;
}

uint64_t sub_21B3442FC(void *a1)
{
  v3 = type metadata accessor for FormattingOptions(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1[2] - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = sub_21B34B474();
  v81 = *(v77 - 8);
  v10 = MEMORY[0x28223BE20](v77);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v75 = &v63 - v14;
  v15 = a1[3];
  v64 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v1[1])(v16);
  v19 = *v1;
  v20 = sub_21B34B004();
  v21 = a1[5];
  v22 = *(v21 + 24);
  v78 = v18;
  v79 = v15;
  v22(v20, v15, v21);
  v91 = 1937207154;
  v92 = 0xE400000000000000;
  sub_21B234EF8(MEMORY[0x277D84F90]);
  v93 = v23;
  sub_21B2351E8(v20);
  v24 = 0;
  v80 = TupleTypeMetadata2 - 8;
  v76 = (v81 + 32);
  v68 = (v6 + 32);
  v74 = v21;
  v67 = v21 + 32;
  v66 = (v6 + 8);
  v71 = TupleTypeMetadata2;
  v70 = v12;
  v69 = v19;
  while (1)
  {
    if (v24 == sub_21B34B004())
    {
      v25 = *(TupleTypeMetadata2 - 8);
      (*(v25 + 56))(v12, 1, 1, TupleTypeMetadata2);
      goto LABEL_7;
    }

    v26 = sub_21B34AFF4();
    sub_21B34AFA4();
    if (v26)
    {
      v27 = *(TupleTypeMetadata2 - 8);
      (*(v27 + 16))(v12, v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, TupleTypeMetadata2);
      v28 = __OFADD__(v24++, 1);
      if (v28)
      {
        break;
      }

      goto LABEL_6;
    }

    result = sub_21B34B684();
    v27 = *(TupleTypeMetadata2 - 8);
    if (*(v27 + 64) != 8)
    {
      goto LABEL_27;
    }

    v82 = result;
    (*(v27 + 16))(v12, &v82, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v28 = __OFADD__(v24++, 1);
    if (v28)
    {
      break;
    }

LABEL_6:
    v25 = v27;
    (*(v27 + 56))(v12, 0, 1, TupleTypeMetadata2);
LABEL_7:
    v29 = v75;
    (*v76)(v75, v12, v77);
    if ((*(v25 + 48))(v29, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_13;
    }

    v30 = &v29[*(TupleTypeMetadata2 + 48)];
    v32 = *v30;
    v31 = *(v30 + 1);
    v33 = *(v30 + 2);
    v34 = *(v30 + 3);
    v35 = *(v30 + 4);
    v36 = *v68;
    v37 = v30[40];
    v81 = v24;
    v38 = v72;
    v39 = v73;
    v36(v72, v29, v73);
    (*(v74 + 32))(v38, v79);
    v40 = sub_21B2FB1D4(v34, v35, v37);
    v82 = v32;
    v83 = v31;
    v84 = v33;
    v85 = v34;
    v86 = v35;
    v87 = v37;
    DataFrame.Slice.columns.getter();

    v41 = v34;
    v12 = v70;
    v42 = v37;
    v19 = v69;
    sub_21B23A9F4(v41, v35, v42);

    sub_21B235528(v40, 0);
    v43 = v38;
    v24 = v81;
    v44 = v39;
    TupleTypeMetadata2 = v71;
    (*v66)(v43, v44);
  }

  __break(1u);
LABEL_13:
  v88 = MEMORY[0x277D84F90];
  v89 = MEMORY[0x277D84F90];
  v90 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  result = (*(v74 + 40))(&v88, 1, v79);
  v46 = v88;
  v47 = v88 + 32;
  v48 = -*(v88 + 16);
  v49 = -1;
  while (1)
  {
    if (v48 + v49 == -1)
    {
      v56 = v91;
      v55 = v92;
      goto LABEL_25;
    }

    if (++v49 >= *(v46 + 16))
    {
      break;
    }

    sub_21B233A74(v47, &v82);
    v51 = v85;
    v50 = v86;
    __swift_project_boxed_opaque_existential_1(&v82, v85);
    if ((*(v50[1] + 1))(v51) == 1937207154 && v52 == 0xE400000000000000)
    {

      sub_21B233960(&v82);
LABEL_24:
      v56 = 0x73776F725FLL;
      v55 = 0xE500000000000000;
LABEL_25:
      v57 = v93;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
      v86 = &off_282CAA128;
      v82 = v56;
      v83 = v55;
      v84 = v57;

      DataFrame.append(column:)(&v82);
      sub_21B233960(&v82);
      v58 = v88;
      v59 = v89;
      v60 = v90;
      v61 = v65;
      FormattingOptions.init()(v65);
      v62 = sub_21B2C6E78(v61, v58, v59, v60);

      sub_21B2B42B0(v61);
      (*(v64 + 8))(v78, v79);

      return v62;
    }

    v47 += 40;
    v54 = sub_21B34B9F4();

    result = sub_21B233960(&v82);
    if (v54)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21B344B58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a8 - 8) + 16))(a1, a3, a8);
  (*(a13 + 24))(v34, a10, a13);
  v17 = v34[0];
  v18 = v34[1];
  v19 = v34[2];
  if (!*(v34[0] + 16))
  {

    goto LABEL_6;
  }

  v30 = a4;
  v20 = a6;
  sub_21B233A74(v34[0] + 32, v31);
  v21 = v32;
  v22 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v23 = *(v22 + 8);
  v24 = *(v23 + 48);

  v25 = v24(v21, v23);
  result = sub_21B233960(v31);
  if ((v25 & 0x8000000000000000) == 0)
  {
    a6 = v20;
    a4 = v30;
    if (v25)
    {
      v27 = 0;
LABEL_7:
      sub_21B254074(0, v25, v27);

      sub_21B23A9F4(0, v25, v27);
      result = sub_21B248CCC(a4, a5, a6, 0, v25, v27);
      *a2 = v17;
      *(a2 + 8) = v18;
      *(a2 + 16) = v19;
      *(a2 + 24) = result;
      *(a2 + 32) = v28;
      *(a2 + 40) = v29;
      return result;
    }

LABEL_6:
    v25 = 0;
    v27 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B344D24@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  v7 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a4, a4 + *(TupleTypeMetadata2 + 48), a1, v8, v9, v10);
}

double sub_21B344E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*(a5 - 8) + 16))(a1, a3, a5);
  (*(a10 + 24))(&v22, a7, a10);
  v13 = v23;
  (*(a10 + 32))(&v18, a7, a10);
  v14 = v19;
  v15 = v20;
  v16 = v21;
  sub_21B254074(v19, v20, v21);

  sub_21B23A9F4(v14, v15, v16);
  result = *&v22;
  *a2 = v22;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

Swift::Int sub_21B344F20@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v59 = a3;
  v76 = *(a2[2] - 8);
  MEMORY[0x28223BE20](a1);
  v66 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = sub_21B34B474();
  v70 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v69 = &v56[-v13];
  v14 = a2[3];
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v56[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = *a1;
  v72 = *v3;
  v17 = sub_21B34B004();
  (v3[1])();
  v18 = a2[5];
  v19 = *(v18 + 24);
  v73 = v16;
  v74 = v14;
  v19(v17, v14, v18);
  v83 = 0x746E756F63;
  v84 = 0xE500000000000000;
  *v78 = 0x746E756F63;
  *&v78[8] = 0xE500000000000000;
  v20 = MEMORY[0x277D84F90];
  sub_21B234EF8(MEMORY[0x277D84F90]);
  *&v78[16] = v21;
  sub_21B2351E8(0);
  *v78 = 0x746E756F63;
  *&v78[8] = 0xE500000000000000;
  sub_21B234EF8(v20);
  *&v78[16] = v22;
  sub_21B2351E8(v17);
  v23 = *v78;

  v24 = 0;
  v85 = v23;
  v75 = TupleTypeMetadata2 - 8;
  v60 = *&v78[8];
  v86 = *&v78[8];
  v70 += 4;
  v63 = (v76 + 32);
  v68 = v18;
  v62 = v18 + 32;
  v61 = (v76 + 8);
  v65 = TupleTypeMetadata2;
  v64 = v11;
  while (1)
  {
    v25 = v72;
    if (v24 == sub_21B34B004())
    {
      v26 = *(TupleTypeMetadata2 - 8);
      (*(v26 + 56))(v11, 1, 1, TupleTypeMetadata2);
      goto LABEL_7;
    }

    v27 = sub_21B34AFF4();
    sub_21B34AFA4();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v28 = *(TupleTypeMetadata2 - 8);
    (*(v28 + 16))(v11, v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, TupleTypeMetadata2);
    v29 = __OFADD__(v24++, 1);
    if (v29)
    {
      goto LABEL_12;
    }

LABEL_6:
    v26 = v28;
    (*(v28 + 56))(v11, 0, 1, TupleTypeMetadata2);
LABEL_7:
    v30 = v69;
    (*v70)(v69, v11, v71);
    if ((*(v26 + 48))(v30, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_13;
    }

    v31 = &v30[*(TupleTypeMetadata2 + 48)];
    v76 = v24;
    v32 = *(v31 + 3);
    v33 = *(v31 + 4);
    v34 = v31[40];
    v35 = v66;
    v36 = v67;
    (*v63)(v66, v30, v67);
    (*(v68 + 32))(v35, v74);

    sub_21B254074(v32, v33, v34);

    sub_21B23A9F4(v32, v33, v34);
    v37 = sub_21B2FB1D4(v32, v33, v34);
    v24 = v76;

    v38 = v32;
    v11 = v64;
    sub_21B23A9F4(v38, v33, v34);
    sub_21B235528(v37, 0);
    v39 = v36;
    TupleTypeMetadata2 = v65;
    (*v61)(v35, v39);
  }

  v40.value = sub_21B34B684();
  v28 = *(TupleTypeMetadata2 - 8);
  if (*(v28 + 64) != 8)
  {
    goto LABEL_25;
  }

  *v78 = v40.value;
  (*(v28 + 16))(v11, v78, TupleTypeMetadata2);
  swift_unknownObjectRelease();
  v29 = __OFADD__(v24++, 1);
  if (!v29)
  {
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *&v81 = MEMORY[0x277D84F90];
  *(&v81 + 1) = MEMORY[0x277D84F90];
  v82 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  (*(v68 + 40))(&v81, 0, v74);

  v41 = 0x746E756F63;
  v85 = 0x746E756F63;
  *&v86 = 0xE500000000000000;
  v42 = v81;
  v43 = v82;
  *v78 = v81;
  *&v78[16] = v82;

  v44._countAndFlagsBits = 0x746E756F63;
  v44._object = 0xE500000000000000;
  v87 = DataFrame.indexOfColumn(_:)(v44);
  is_nil = v87.is_nil;

  v46 = 0xE500000000000000;
  if (!is_nil)
  {
    v47 = 0;
    while (!__OFADD__(v47, 1))
    {
      *v78 = 0x746E756F63;
      *&v78[8] = 0xE500000000000000;
      MEMORY[0x21CEED5E0](46, 0xE100000000000000);
      v77 = v47 + 1;
      v48 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v48);

      v41 = *v78;
      v46 = *&v78[8];
      *v78 = v42;
      *&v78[16] = v43;
      v49._countAndFlagsBits = v41;
      v49._object = v46;
      v40 = DataFrame.indexOfColumn(_:)(v49);
      ++v47;
      if (v40.is_nil)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return v40.value;
  }

LABEL_17:
  v50 = *(&v86 + 1);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
  v80 = &off_282CAA128;
  *v78 = v41;
  *&v78[8] = v46;
  *&v78[16] = v50;

  DataFrame.append(column:)(v78);
  sub_21B233960(v78);
  if (v57 == 2)
  {
    (*(v58 + 8))(v73, v74);

    v51 = v82;
    v52 = v59;
    *v59 = v81;
    *(v52 + 2) = v51;
  }

  else
  {
    v53 = (v58 + 8);
    if (v57)
    {
      v54 = sub_21B301618;
    }

    else
    {
      v54 = sub_21B301604;
    }

    sub_21B2FEAB0(0x746E756F63, 0xE500000000000000, v54, 0, v81, *(&v81 + 1), v82, v59);
    (*v53)(v73, v74);
  }

  return v40.value;
}

void sub_21B3458C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v107 = a7;
  v105 = a5;
  v104 = a4;
  v117 = a3;
  v116 = a2;
  v83 = a9;
  v102 = sub_21B34B474();
  v115 = *(v102 - 8);
  v13 = MEMORY[0x28223BE20](v102);
  v106 = &v82 - v14;
  v15 = a6[2];
  v114 = *(v15 - 8);
  MEMORY[0x28223BE20](v13);
  v100 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = sub_21B34B474();
  v113 = *(v90 - 8);
  v18 = MEMORY[0x28223BE20](v90);
  v92 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v91 = &v82 - v21;
  v22 = a6[3];
  v84 = *(v22 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *v9;
  v93 = TupleTypeMetadata2;
  v25 = sub_21B34B004();
  (v9[1])();
  v26 = a6[5];
  v27 = *(v26 + 24);
  v96 = v24;
  v27(v25, v22, v26);
  v108 = a1;
  *&v135 = a1;
  v94 = v15;
  v119 = v15;
  v97 = v22;
  v120 = v22;
  v121 = v107;
  v122 = a8;
  v123 = a6[4];
  v98 = v26;
  v124 = v26;
  v125 = v116;
  v126 = v117;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  v31 = type metadata accessor for SingleColumnBuilder(0, a8, v29, v30);
  v32 = sub_21B305404();
  v33 = v141;
  v140 = sub_21B2FCC28(sub_21B349F70, v118, v28, v31, MEMORY[0x277D84A98], v32, MEMORY[0x277D84AC0], v34);

  v111 = v31;
  v35 = sub_21B34B004();

  if (v35 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v141 = v33;
    v36 = v111;
    if (v35)
    {
      sub_21B34B054();
      sub_21B34AFC4();
      nullsub_14();
      sub_21B34AFC4();
      nullsub_14();
      v37 = 0;
      v38 = 32;
      do
      {
        sub_21B34AFC4();
        sub_21B305254(v37, v140, v36);
        sub_21B265F40(v25, v36);
        nullsub_14();
        v38 += 40;
        ++v37;
      }

      while (v35 != v37);
    }

    v39 = sub_21B34B054();
    sub_21B34AFC4();
    nullsub_14();
    sub_21B34AFC4();
    v110 = v39;
    nullsub_14();
    v40 = 0;
    v41 = v93;
    v99 = v93 - 8;
    v89 = (v113 + 32);
    v88 = (v114 + 32);
    v87 = v98 + 32;
    v101 = (v115 + 8);
    v86 = (v114 + 8);
    v85 = (v108 + 40);
    v42 = v141;
    v43 = v109;
    v44 = v94;
    while (1)
    {
      v45 = sub_21B34B004();
      v46 = v92;
      v47 = v91;
      if (v40 == v45)
      {
        v95 = v40;
        v48 = *(v41 - 8);
        (*(v48 + 56))(v92, 1, 1, v41);
      }

      else
      {
        v49 = sub_21B34AFF4();
        sub_21B34AFA4();
        if (v49)
        {
          v50 = *(v41 - 8);
          (*(v50 + 16))(v46, v43 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40, v41);
          v51 = __OFADD__(v40, 1);
          v52 = v40 + 1;
          if (v51)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v73 = sub_21B34B684();
          v50 = *(v41 - 8);
          if (*(v50 + 64) != 8)
          {
            goto LABEL_35;
          }

          *&v135 = v73;
          (*(v50 + 16))(v46, &v135, v41);
          swift_unknownObjectRelease();
          v44 = v94;
          v51 = __OFADD__(v40, 1);
          v52 = v40 + 1;
          if (v51)
          {
LABEL_24:
            __break(1u);
LABEL_25:

            sub_21B23A9F4(v115, v116, v117);
            v74 = v129;
            v75 = v130;

            sub_21B23A9F4(v74, *(&v74 + 1), v75);
            (*v86)(v100, v94);
            (*(v84 + 8))(v96, v97);

            return;
          }
        }

        v95 = v52;
        v48 = v50;
        (*(v50 + 56))(v46, 0, 1, v41);
      }

      (*v89)(v47, v46, v90);
      v53 = (*(v48 + 48))(v47, 1, v41);
      v54 = v111;
      if (v53 == 1)
      {
        break;
      }

      v55 = &v47[*(v41 + 48)];
      v56 = *(v55 + 1);
      v114 = *v55;
      v113 = v56;
      v57 = *(v55 + 3);
      v112 = *(v55 + 2);
      v115 = v57;
      v116 = *(v55 + 4);
      LODWORD(v117) = v55[40];
      v58 = v100;
      (*v88)(v100, v47, v44);
      (*(v98 + 32))(v58, v97);
      v59 = sub_21B34B004();
      if (v59 < 0)
      {
        goto LABEL_32;
      }

      v60 = v59;
      sub_21B34AFC4();
      nullsub_14();
      sub_21B34AFC4();
      nullsub_14();
      if (v60)
      {
        v103 = v60;
        v61 = 0;
        v62 = v85;
        v63 = 32;
        while (v61 < *(v108 + 16))
        {
          v64 = *(v62 - 1);
          v65 = *v62;
          *&v135 = v114;
          *(&v135 + 1) = v113;
          v136 = v112;
          v137 = v115;
          v138 = v116;
          v139 = v117;

          DataFrame.Slice.subscript.getter(v64, v65, v107, &v131);

          v127 = v131;
          v128 = v132;
          v129 = v133;
          v130 = v134;
          v104(&v127);
          if (v42)
          {
            goto LABEL_25;
          }

          v141 = v61 + 1;
          v66 = v129;
          v67 = v130;

          v68 = v67;
          v42 = 0;
          v69 = v106;
          sub_21B23A9F4(v66, *(&v66 + 1), v68);
          sub_21B34AFC4();
          v70 = v111;
          sub_21B305254(v61, v140, v111);
          sub_21B265FC0(v69, v70, v71, v72);
          (*v101)(v69, v102);
          nullsub_14();
          v63 += 40;
          v62 += 2;
          v61 = v141;
          v43 = v109;
          if (v103 == v141)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v43 = v109;
LABEL_20:
      v44 = v94;
      (*v86)(v100, v94);

      sub_21B23A9F4(v115, v116, v117);
      v41 = v93;
      v40 = v95;
    }

    *&v135 = MEMORY[0x277D84F90];
    *(&v135 + 1) = MEMORY[0x277D84F90];
    v136 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    (*(v98 + 40))(&v135, 0, v97);
    v76 = sub_21B34B004();
    if (v76 < 0)
    {
      goto LABEL_34;
    }

    v77 = v76;
    if (v76)
    {
      sub_21B34AFC4();
      nullsub_14();
      sub_21B34AFC4();
      nullsub_14();
      v78 = 0;
      v79 = 32;
      do
      {
        sub_21B34AFC4();
        sub_21B305254(v78, v140, v54);
        sub_21B265FFC(&v135, 0, v54);
        nullsub_14();
        v79 += 40;
        ++v78;
      }

      while (v77 != v78);
    }

    (*(v84 + 8))(v96, v97);

    v80 = v136;
    v81 = v83;
    *v83 = v135;
    *(v81 + 2) = v80;
  }
}

unint64_t sub_21B34663C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *v2;
  *&v33 = v35;
  v4 = a1[3];
  v27 = a1[2];
  v28 = v4;
  v5 = a1[5];
  v29 = a1[4];
  v30 = v5;
  v20 = v27;
  v21 = v4;
  v22 = v29;
  v23 = v5;
  v24 = sub_21B34A034;
  v25 = &v26;

  swift_getTupleTypeMetadata2();
  v6 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_21B2FCC28(sub_21B34A044, v19, v6, &type metadata for DataFrame, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  (*(*(v6 - 8) + 8))(&v35, v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v9 + 48);
    v18 = *(v9 + 32);
    v33 = v18;
    v34 = v11;

    v13 = v10 - 1;
    if (v13)
    {
      v14 = (v9 + 72);
      do
      {
        v15 = *v14;
        v31 = *(v14 - 1);
        v32 = v15;
        v12.columns._rawValue = &v31;
        DataFrame.append(rowsOf:)(v12);
        v14 += 3;
        --v13;
      }

      while (v13);
      v18 = v33;
      v11 = v34;
    }

    *a2 = v18;
    *(a2 + 16) = v11;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    *a2 = MEMORY[0x277D84F90];
    *(a2 + 8) = v17;
    result = sub_21B25DC2C(v17);
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_21B34682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v28 = a2;
  v25 = a5;
  v26 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  v29 = *v10;
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v27 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = sub_21B2FB1D4(v13, v27, v14);

  v16 = v27;
  sub_21B254074(v13, v27, v14);
  v23 = v12;

  v22 = v11;

  v24 = v13;
  v17 = sub_21B23A9F4(v13, v16, v14);
  (*(v28 + 8))(v17);
  result = (*(a4 + 24))(v15, a3, a4);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      v19 = *(a4 + 32);
      do
      {
        v19(a1, a3, a4);
        --v15;
      }

      while (v15);
    }

    v30[0] = v29;
    v30[1] = v22;
    v20 = v24;
    v30[2] = v23;
    v30[3] = v24;
    v30[4] = v16;
    v31 = v14;

    sub_21B254074(v20, v16, v14);
    v21 = v25;
    DataFrame.init(_:)(v30, v25);
    (*(a4 + 40))(v21, 1, a3, a4);
    return (*(v26 + 8))(v9, a3);
  }

  return result;
}

uint64_t sub_21B346A80@<X0>(uint64_t a4@<X8>)
{
  v6 = v4;

  swift_getTupleTypeMetadata2();
  sub_21B34B054();
  swift_getWitnessTable();
  result = sub_21B34B704();
  if (!v5)
  {
    v9 = *(v4 + 8);
    v10 = *(v4 + 32);
    *a4 = result;
    *(a4 + 8) = v9;
    *(a4 + 16) = *(v6 + 16);
    *(a4 + 32) = v10;
  }

  return result;
}

double sub_21B346B88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v42 = *v4;
  v39[1] = v42;
  v8 = a3[2];
  v7 = a3[3];
  v33 = v8;
  v34 = v7;
  v9 = a3[4];
  v10 = a3[5];
  v35 = v9;
  v36 = v10;
  v37 = a1;
  v38 = a2;
  v26 = v8;
  v27 = v7;
  v23 = v7;
  v28 = v9;
  v29 = v10;
  v30 = sub_21B349270;
  v31 = &v32;

  swift_getTupleTypeMetadata2();
  v11 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B2FCC28(sub_21B3492A0, v25, v11, TupleTypeMetadata2, v13, WitnessTable, MEMORY[0x277D84950], v39);
  if (v5)
  {
    (*(*(v11 - 8) + 8))(&v42, v11);
  }

  else
  {
    v17 = v15;
    (*(*(v11 - 8) + 8))(&v42, v11);
    v18 = v6[1];
    v19 = v6[2];
    v21 = v6[3];
    v20 = v6[4];

    sub_21B349CBC(v17, v18, v19, v21, v20, v8, v23, &type metadata for DataFrame, v40, v9, v10, &protocol witness table for DataFrame);

    result = *v40;
    v22 = v40[1];
    *a4 = v40[0];
    *(a4 + 16) = v22;
    *(a4 + 32) = v41;
  }

  return result;
}

uint64_t sub_21B346DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t a6, uint64_t a7)
{
  v16 = *(a4 + 16);
  v11 = *(a4 + 32);
  v12 = *(a4 + 40);
  v13 = *(a7 - 8);
  (*(v13 + 16))(a1, a3, a7);
  v17[0] = *a4;
  v17[1] = v16;
  v18 = v11;
  v19 = v12;
  v14 = v20;
  result = a5(v17);
  if (v14)
  {
    return (*(v13 + 8))(a1, a7);
  }

  return result;
}

uint64_t sub_21B346EE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a4@<X7>, uint64_t a5@<X8>)
{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a5, a5 + *(TupleTypeMetadata2 + 48), a1, a1 + v10);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_21B346FA0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v6 = *(a2 + 2);
  *&v35 = swift_getTupleTypeMetadata2();
  v7 = sub_21B34B474();
  v31 = *(v7 - 8);
  *&v32 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - v8;
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v3[3])(a1);
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    result = (*(v10 + 8))(v13, v9);
    *(a3 + 25) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v18 = (*(v14 + 32))(v16, v13, v6);
    v36 = *v3;
    v37 = v36;
    MEMORY[0x28223BE20](v18);
    *(&v30 - 6) = v6;
    v19 = v33;
    *(&v30 - 5) = *(v33 + 24);
    *(&v30 - 3) = *(v19 + 5);
    *(&v30 - 2) = v16;
    v33 = v16;
    v20 = v35;
    v21 = sub_21B34B054();

    swift_getWitnessTable();
    v22 = v34;
    sub_21B34AF14();
    (*(*(v21 - 8) + 8))(&v37, v21);
    if ((*(*(v20 - 8) + 48))(v22, 1, v20) == 1)
    {
      (*(v31 + 8))(v22, v32);
      v23 = 0;
      v24 = 0;
      v25 = *(v14 + 8);
      v26 = 0uLL;
      v27 = 0uLL;
    }

    else
    {
      v28 = &v22[*(v20 + 48)];
      v35 = *v28;
      v29 = v22;
      v23 = *(v28 + 2);
      v32 = *(v28 + 24);
      v24 = v28[40];
      v25 = *(v14 + 8);
      v25(v29, v6);
      v27 = v32;
      v26 = v35;
    }

    *a3 = v26;
    *(a3 + 16) = v23;
    *(a3 + 24) = v27;
    *(a3 + 40) = v24;
    return (v25)(v33, v6);
  }

  return result;
}

double sub_21B34747C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X4>, uint64_t a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_21B3474C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6)
{
  sub_21B347534(a3, a4 & 1, a5, v14, a6);
  v8 = v15;
  v9 = v18;
  result = *v14;
  v11 = v14[1];
  v12 = v16;
  v13 = v17;
  *a1 = v14[0];
  *(a1 + 16) = v11;
  *(a1 + 32) = v8;
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v9;
  return result;
}

double sub_21B347534@<D0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v65 = *v5;
  *&v63[0] = v65;
  v6 = a3[2];
  v7 = a3[3];
  v54 = v6;
  v55 = v7;
  v8 = a3[5];
  v32 = a3[4];
  v56 = v32;
  v57 = v8;
  v58 = a5;
  v59 = a1;
  v60 = a2 & 1;
  v47 = v6;
  v48 = v7;
  v49 = v32;
  v50 = v8;
  v29 = v8;
  v51 = sub_21B34A0BC;
  v52 = &v53;

  swift_getTupleTypeMetadata2();
  v9 = sub_21B34B054();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_21B2FCC28(sub_21B34A0FC, v46, v9, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  (*(*(v9 - 8) + 8))(&v65, v9);
  *&v63[0] = v13;
  v42 = v6;
  v43 = v7;
  v31 = v7;
  v44 = v32;
  v45 = v8;
  v14 = sub_21B34B054();
  v15 = swift_getTupleTypeMetadata2();
  v16 = swift_getWitnessTable();
  v30 = sub_21B2FCC28(sub_21B34A158, v41, v14, v15, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  *&v63[0] = v13;
  v37 = v6;
  v38 = v7;
  v39 = v32;
  v40 = v29;
  v19 = sub_21B2FCC28(sub_21B34A17C, v36, v14, v15, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v18);

  v20 = v33[1];
  v21 = v33[2];
  v23 = v33[3];
  v22 = v33[4];
  swift_retain_n();
  swift_retain_n();
  sub_21B349CBC(v30, v20, v21, v23, v22, v6, v31, &type metadata for DataFrame.Slice, v61, v32, v29, &protocol witness table for DataFrame.Slice);
  v34 = v62;

  sub_21B349CBC(v19, v20, v21, v23, v22, v6, v31, &type metadata for DataFrame.Slice, v63, v32, v29, &protocol witness table for DataFrame.Slice);
  v24 = v64;

  result = *v61;
  v26 = v61[1];
  v27 = v63[0];
  v28 = v63[1];
  *a4 = v61[0];
  *(a4 + 16) = v26;
  *(a4 + 32) = v34;
  *(a4 + 40) = v27;
  *(a4 + 56) = v28;
  *(a4 + 72) = v24;
  return result;
}

uint64_t sub_21B3478D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v4 = a1[3];
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v2;
  (*(v2 + 8))(v6);
  v40 = v4;
  v41 = a1;
  v9 = a1[5];
  v10 = *(v9 + 16);
  v38 = v8;
  v11 = v10(v4, v9);
  v12 = *(v11 + 16);
  if (v12)
  {
    v37 = v5;
    v43 = MEMORY[0x277D84F90];
    result = sub_21B254034(0, v12, 0);
    v14 = 0;
    v15 = v43;
    v16 = (v11 + 40);
    while (v14 < *(v11 + 16))
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      v19 = v41[4];
      v44[0] = v41[2];
      v44[1] = v40;
      v44[2] = v19;
      v44[3] = v9;
      v20 = type metadata accessor for CustomGrouping(0, v44);
      v21 = sub_21B34426C(v17, v18, v20);

      v43 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_21B254034((v22 > 1), v23 + 1, 1);
        v15 = v43;
      }

      ++v14;
      *(v15 + 16) = v23 + 1;
      *(v15 + 8 * v23 + 32) = v21;
      v16 += 2;
      if (v12 == v14)
      {

        v5 = v37;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_9:
    v24 = sub_21B25EF30(v15);

    v25 = *(sub_21B344048(v41) + 16);

    if (v25)
    {
      v26 = 0;
      v27 = v24 + 56;
      v28 = MEMORY[0x277D84F90];
      do
      {
        if (*(v24 + 16) && (v31 = sub_21B34BBB4(), v32 = -1 << *(v24 + 32), v33 = v31 & ~v32, ((*(v27 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          while (*(*(v24 + 48) + 8 * v33) != v26)
          {
            v33 = (v33 + 1) & v34;
            if (((*(v27 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44[0] = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21B254034(0, *(v28 + 16) + 1, 1);
            v28 = v44[0];
          }

          v30 = *(v28 + 16);
          v29 = *(v28 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_21B254034((v29 > 1), v30 + 1, 1);
            v28 = v44[0];
          }

          *(v28 + 16) = v30 + 1;
          *(v28 + 8 * v30 + 32) = v26;
        }

        ++v26;
      }

      while (v26 != v25);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    sub_21B348734(v28, v41, v39);

    return (*(v5 + 8))(v38, v40);
  }

  return result;
}

uint64_t sub_21B347C84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  v41 = a3;
  if (v4)
  {
    v45[0] = MEMORY[0x277D84F90];
    sub_21B254034(0, v4, 0);
    v6 = v45[0];
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v10 = a2[2];
      v11 = a2[4];
      v12 = a2[5];
      v42 = a2[3];
      v43 = v10;
      *&v46 = v10;
      *(&v46 + 1) = v42;
      v13 = v11;
      *&v47 = v11;
      *(&v47 + 1) = v12;
      v14 = v12;
      v15 = type metadata accessor for CustomGrouping(0, &v46);
      v16 = sub_21B34426C(v8, v9, v15);

      v45[0] = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21B254034((v17 > 1), v18 + 1, 1);
        v6 = v45[0];
      }

      *(v6 + 16) = v18 + 1;
      *(v6 + 8 * v18 + 32) = v16;
      v7 += 2;
      --v4;
    }

    while (v4);
    v19 = v42;
    v20 = v43;
  }

  else
  {
    v20 = a2[2];
    v19 = a2[3];
    v13 = a2[4];
    v14 = a2[5];
    v6 = MEMORY[0x277D84F90];
  }

  v43 = &v40;
  v21 = v44;
  v49 = *v44;
  *&v46 = v49;
  v22 = MEMORY[0x28223BE20](v49);
  v38[10] = v20;
  v38[11] = v19;
  v38[12] = v13;
  v38[13] = v14;
  v39 = v6;
  MEMORY[0x28223BE20](v22);
  v38[2] = v20;
  v38[3] = v19;
  v38[4] = v13;
  v38[5] = v14;
  v38[6] = sub_21B34917C;
  v38[7] = v23;

  swift_getTupleTypeMetadata2();
  v24 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_21B2FCC28(sub_21B349180, v38, v24, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v27);

  (*(*(v24 - 8) + 8))(&v49, v24);
  v29 = v21[1];
  v30 = v21[2];
  v31 = v21[3];
  v32 = v21[4];
  v39 = v14;
  sub_21B2B1CC4(v29, v30, v31, v32, v28, &v46);
  v45[0] = v20;
  v45[1] = v19;
  v45[2] = v13;
  v45[3] = v14;
  v33 = type metadata accessor for _GroupSummaries(0, v45);
  v34 = v41;
  v41[3] = v33;
  v34[4] = swift_getWitnessTable();
  v35 = swift_allocObject();
  *v34 = v35;
  v36 = v47;
  *(v35 + 16) = v46;
  *(v35 + 32) = v36;
  *(v35 + 48) = v48;
}

uint64_t sub_21B347FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8, double a9)
{
  v14 = a5[1];
  v17 = *a5;
  v18[0] = v14;
  *(v18 + 9) = *(a5 + 25);
  result = (*(*(a8 - 8) + 16))(a1, a4, a8);
  if (a7)
  {
    return sub_21B343AF4(a2, a3, a9);
  }

  if (a6 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject();
    v16 = sub_21B262CF4(a6);
    sub_21B34351C(a2, a3, &v16, a9);
  }

  return result;
}

uint64_t sub_21B3480DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a4, a4 + *(TupleTypeMetadata2 + 48), a4 + *(TupleTypeMetadata2 + 48) + 48, a1, a1 + v7);
}

uint64_t sub_21B3481A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v37 = a1;
  v35 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  v41 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-v10];
  v40 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = *(v7 + 16);
  v36 = v7 + 16;
  *&v38 = v12;
  v12(v11, a1, TupleTypeMetadata2);
  v13 = &v11[*(TupleTypeMetadata2 + 48)];
  v14 = *(v13 + 3);
  v15 = *(v13 + 4);
  v16 = *(v13 + 6);
  v34 = *(v13 + 9);
  v17 = *(v13 + 10);
  v32 = v16;
  v33 = v17;
  v18 = v13[40];
  v31 = v13[88];

  sub_21B23A9F4(v14, v15, v18);

  sub_21B23A9F4(v34, v33, v31);
  v19 = *(v41 - 8);
  (*(v19 + 32))(v35, v11);
  v20 = v39;
  (v38)(v39, v37, TupleTypeMetadata2);
  v21 = &v20[*(TupleTypeMetadata2 + 48)];
  v22 = *(v21 + 4);
  LOBYTE(v11) = v21[40];
  v23 = *(v21 + 9);
  v24 = *(v21 + 10);
  v25 = *(v21 + 1);
  v37 = *v21;
  v38 = v25;
  v26 = v21[88];

  sub_21B23A9F4(v23, v24, v26);
  v27 = v40;
  v28 = v38;
  *v40 = v37;
  v27[1] = v28;
  *(v27 + 4) = v22;
  *(v27 + 40) = v11;
  return (*(v19 + 8))(v20, v41);
}

uint64_t sub_21B34846C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v37 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  v36 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v41 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-v10];
  v42 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = *(v7 + 16);
  v38 = v7 + 16;
  v40 = v12;
  v12(v11, a1, TupleTypeMetadata2);
  v13 = &v11[*(TupleTypeMetadata2 + 48)];
  v14 = *(v13 + 3);
  v15 = *(v13 + 4);
  v16 = *(v13 + 6);
  v35 = *(v13 + 9);
  v17 = *(v13 + 10);
  v33 = v16;
  v34 = v17;
  v18 = v13[40];
  v32 = v13[88];

  sub_21B23A9F4(v14, v15, v18);

  sub_21B23A9F4(v35, v34, v32);
  v19 = *(v36 - 8);
  v20 = v11;
  v21 = v36;
  (*(v19 + 32))(v37, v20);
  v22 = v41;
  v40(v41, v39, TupleTypeMetadata2);
  v23 = &v22[*(TupleTypeMetadata2 + 48)];
  v24 = *(v23 + 3);
  v25 = *(v23 + 4);
  v26 = v23[40];

  sub_21B23A9F4(v24, v25, v26);
  v27 = *(v23 + 8);
  v28 = v23[88];
  v29 = v42;
  *v42 = *(v23 + 3);
  *(v29 + 2) = v27;
  *(v29 + 24) = *(v23 + 72);
  *(v29 + 40) = v28;
  return (*(v19 + 8))(v22, v21);
}

uint64_t sub_21B348734@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *v3;
  *&v31[0] = v33;
  v5 = a2[2];
  v6 = a2[3];
  v25 = v5;
  v26 = v6;
  v7 = a2[4];
  v8 = a2[5];
  v27 = v7;
  v28 = v8;
  v29 = a1;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = sub_21B34A1A0;
  v23 = &v24;

  swift_getTupleTypeMetadata2();
  v9 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_21B2FCC28(sub_21B34A1A4, v17, v9, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  (*(*(v9 - 8) + 8))(&v33, v9);
  sub_21B2B1CC4(v3[1], v3[2], v3[3], v3[4], v13, v31);
  v30[0] = v5;
  v30[1] = v6;
  v30[2] = v7;
  v30[3] = v8;
  a3[3] = type metadata accessor for _GroupSummaries(0, v30);
  a3[4] = swift_getWitnessTable();
  v14 = swift_allocObject();
  *a3 = v14;
  v15 = v31[1];
  *(v14 + 16) = v31[0];
  *(v14 + 32) = v15;
  *(v14 + 48) = v32;
}

uint64_t sub_21B3489EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *v2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return a2(v3, TupleTypeMetadata2);
}

__n128 sub_21B348A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v16 - v8;
  sub_21B34B094();
  v10 = &v9[*(TupleTypeMetadata2 + 48)];
  v11 = *v10;
  v17 = *(v10 + 1);
  v12 = *(v10 + 4);
  v13 = v10[40];
  v14 = *(*(v6 - 8) + 32);
  v16 = v11;
  v14(a1, v9, v6);
  result = v17;
  *a2 = v16;
  *(a2 + 16) = result;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  return result;
}

uint64_t sub_21B348B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B3489EC(a1, MEMORY[0x277D83928]);
  *a2 = result;
  return result;
}

void (*sub_21B348BB4(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v9 + 72) = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  *(v9 + 80) = v12;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  *(v9 + 88) = v13;
  v15 = *a2;
  v16 = *(v3 + 16);
  *v9 = *v3;
  *(v9 + 16) = v16;
  *(v9 + 32) = *(v3 + 32);
  v17 = sub_21B348DE8((v9 + 40), v15, a3);
  v19 = v18;
  *(v9 + 96) = v17;
  (*(*(v10 - 8) + 16))(v14);
  v20 = v14 + *(TupleTypeMetadata2 + 48);
  v21 = *v19;
  v22 = v19[1];
  v23 = v19[2];
  v24 = v19[3];
  v25 = v19[4];
  LOBYTE(v19) = *(v19 + 40);
  *v20 = v21;
  *(v20 + 8) = v22;
  *(v20 + 16) = v23;
  *(v20 + 24) = v24;
  *(v20 + 32) = v25;
  *(v20 + 40) = v19;

  sub_21B254074(v24, v25, v19);
  return sub_21B348D6C;
}

void sub_21B348D6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 40;
  (*(*(*a1 + 80) + 8))(*(*a1 + 88), *(*a1 + 72));
  v5 = *(v3 + 88);
  (*(v3 + 96))(v4, a2);
  free(v5);

  free(v3);
}

void (*sub_21B348DE8(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_21B348A58(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_21B2854A4;
}

void *sub_21B348EE4()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

__n128 sub_21B348F50@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_21B348F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B348FB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_21B349140(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B3491C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

void *sub_21B3492CC@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, void (*a5)(void)@<X3>, uint64_t a6@<X4>, void (*a7)(uint64_t *)@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v99 = a7;
  v100 = a8;
  v102 = a5;
  v103 = a6;
  v85 = a4;
  v83 = a3;
  v84 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v86 = &v76 - v19;
  v77 = sub_21B34B474();
  v76 = *(v77 - 8);
  v20 = MEMORY[0x28223BE20](v77);
  v98 = &v76 - v21;
  v22 = *(a9 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v88 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v104 = &v76 - v25;
  v106 = TupleTypeMetadata2;
  v117 = sub_21B34AFD4();
  v26 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v27 = sub_21B34AFD4();
  v107 = a9;
  v101 = a12;
  v28 = sub_21B2E97E8(v27, a9, v26, a12);

  v116 = v28;
  v29 = *(a14 + 32);
  v80 = a2;
  v81 = a11;
  v82 = a14;
  v29(&v110, a11, a14);
  v30 = v110;
  v31 = v111;
  v32 = v113;
  v89 = v112;
  v108 = v114;
  v33 = v115;
  v34 = v113;
  if (v115)
  {
    if (v115 == 1 && *(v113 + 16))
    {
      v34 = *(v113 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v36)
      {
        v34 = 0;
      }

      else
      {
        v34 = v35;
      }
    }
  }

  v79 = a13;
  v78 = a10;
  v96 = (v22 + 32);
  v97 = (v22 + 48);
  v90 = (v22 + 8);
  v95 = (v22 + 16);
  v94 = v30;
  v37 = v107;
  v38 = v89;
  v93 = v31;
  v92 = v33;
  for (i = v32; ; v32 = i)
  {
    sub_21B2A6400();
    if (v40)
    {
      if (!v34)
      {
        goto LABEL_23;
      }
    }

    else if (v34 == v39)
    {
LABEL_23:

      v53 = sub_21B23A9F4(v32, v108, v33);
      v110 = v117;
      MEMORY[0x28223BE20](v53);
      v54 = v78;
      *(&v76 - 8) = v37;
      *(&v76 - 7) = v54;
      v55 = v101;
      *(&v76 - 6) = v81;
      *(&v76 - 5) = v55;
      v56 = v79;
      v57 = v82;
      *(&v76 - 4) = v79;
      *(&v76 - 3) = v57;
      v58 = MEMORY[0x28223BE20](v54);
      *(&v76 - 8) = v37;
      *(&v76 - 7) = v58;
      *(&v76 - 6) = v59;
      *(&v76 - 5) = v60;
      *(&v76 - 4) = v56;
      *(&v76 - 3) = v61;
      v74 = sub_21B349FC4;
      v75 = v62;
      v63 = sub_21B34B054();

      v64 = swift_getTupleTypeMetadata2();
      WitnessTable = swift_getWitnessTable();
      v67 = sub_21B2FCC28(sub_21B349FFC, (&v76 - 10), v63, v64, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v66);
      swift_bridgeObjectRelease_n();

      v69 = v84;
      v70 = v83;
      *v84 = v67;
      v69[1] = v70;
      v72 = v102;
      v71 = v103;
      v69[2] = v85;
      v69[3] = v72;
      v69[4] = v71;
      return result;
    }

    v110 = v30;
    v111 = v31;
    v112 = v38;
    v113 = v32;
    v114 = v108;
    v115 = v33;
    v41 = DataFrame.Rows.index(after:)(v34);
    v110 = v30;
    v111 = v31;
    v112 = v38;
    v113 = v34;
    v99(&v110);
    if (v15)
    {

      sub_21B23A9F4(v32, v108, v33);
    }

    v105 = v41;
    v42 = v98;
    v102();

    v43 = v107;
    if ((*v97)(v42, 1, v107) == 1)
    {
      break;
    }

    v44 = v104;
    (*v96)(v104, v42, v43);
    v42 = MEMORY[0x277D83B88];
    sub_21B34AA14();
    if (v111 == 1)
    {
      v45 = *v95;
      (*v95)(v88, v44, v43);
      v110 = sub_21B34B004();
      LOBYTE(v111) = 0;
      sub_21B34AA04();
      sub_21B34AA24();
      v46 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_26;
      }

      if (v46 < v34)
      {
        goto LABEL_27;
      }

      v47 = v107;
      v48 = &v86[*(v106 + 48)];
      v45(v86, v44, v107);
      *v48 = v34;
      *(v48 + 1) = v46;
      v48[16] = 0;
      sub_21B34B054();
      sub_21B34B024();
      v37 = v47;
      v38 = v89;
      (*v90)(v44, v37);
    }

    else
    {
      v49 = v110;
      v50 = v106;
      sub_21B34B054();
      sub_21B34AFC4();
      sub_21B305254(v49, v117, v50);
      v51 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        break;
      }

      if (v51 < v34)
      {
        goto LABEL_28;
      }

      sub_21B28DFBC(v34, v51);
      v52 = v107;
      (*v90)(v104, v107);
      nullsub_14();
      v37 = v52;
    }

    v31 = v93;

    v30 = v94;

    v34 = v105;
    v15 = 0;
    LOBYTE(v33) = v92;
  }

  (*(v76 + 8))(v42, v77);
  v110 = 0;
  v111 = 0xE000000000000000;

  sub_21B34B634();

  v110 = 0xD00000000000002BLL;
  v111 = 0x800000021B34DBA0;
  v109 = v34;
  v73 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v73);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B349CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a1;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a8;
  v22[5] = a10;
  v22[6] = a11;
  v22[7] = a12;
  v22[8] = sub_21B349E08;
  v22[9] = &v23;
  swift_getTupleTypeMetadata2();
  v17 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  result = sub_21B2FCC28(sub_21B349E38, v22, v17, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  return result;
}

uint64_t sub_21B349E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_21B349EDC(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v4 = *(v3 + 2);
  v5 = *(v3 + 40);
  v7 = *v3;
  v8 = v4;
  v9 = *(v3 + 24);
  v10 = v5;
  return v2(&v7) & 1;
}

double sub_21B349F70@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  v5 = (*(v2 + 64))(*a1, a1[1]);
  return sub_21B265ED0(v5, v6, v4, a2);
}

uint64_t sub_21B34A044(uint64_t a1)
{
  v3 = *(v1 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21B34A1DC(unsigned __int8 **a1, uint64_t a2)
{
  v4 = sub_21B270BB0(a1, a2);
  if (!v3)
  {
    v5 = *(v4 + 2);
    if (v5)
    {
      v13 = MEMORY[0x277D84F90];
      v6 = v4;
      sub_21B2542A8(0, v5, 0);
      v7 = v6;
      v2 = v13;
      v8 = *(v13 + 16);
      v9 = 32;
      do
      {
        v10 = *&v7[v9];
        v11 = *(v13 + 24);
        if (v8 >= v11 >> 1)
        {
          sub_21B2542A8((v11 > 1), v8 + 1, 1);
          v7 = v6;
        }

        *(v13 + 16) = v8 + 1;
        *(v13 + 8 * v8 + 32) = __ROR8__(v10, 1);
        v9 += 8;
        ++v8;
        --v5;
      }

      while (v5);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v2;
}

uint64_t sub_21B34A2DC(unsigned __int8 **a1, uint64_t a2)
{
  v4 = sub_21B270D34(a1, a2);
  if (!v3)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v13 = MEMORY[0x277D84F90];
      v6 = v4;
      sub_21B2542A8(0, v5, 0);
      v7 = v6;
      v2 = v13;
      v8 = *(v13 + 16);
      v9 = 32;
      do
      {
        v10 = *(v7 + v9);
        v11 = *(v13 + 24);
        if (v8 >= v11 >> 1)
        {
          sub_21B2542A8((v11 > 1), v8 + 1, 1);
          v7 = v6;
        }

        *(v13 + 16) = v8 + 1;
        *(v13 + 8 * v8 + 32) = v10;
        v9 += 8;
        ++v8;
        --v5;
      }

      while (v5);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v2;
}

uint64_t sub_21B34A3DC(unsigned __int8 **a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_21B24A18C(0, a3 & ~(a3 >> 63), 0, MEMORY[0x277D84F90]);

  if ((a4 & 8) == 0)
  {
    return sub_21B34A1DC(a1, a2);
  }

  v7 = *(*a1)++;
  if (v7 == 1)
  {
    return sub_21B34A2DC(a1, a2);
  }

  if (!v7)
  {
    return sub_21B34A1DC(a1, a2);
  }

  sub_21B34B634();

  v9 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v9);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  sub_21B239564();
  swift_allocError();
  *v10 = 0xD000000000000024;
  *(v10 + 8) = 0x800000021B34D1D0;
  *(v10 + 16) = 3;
  return swift_willThrow();
}