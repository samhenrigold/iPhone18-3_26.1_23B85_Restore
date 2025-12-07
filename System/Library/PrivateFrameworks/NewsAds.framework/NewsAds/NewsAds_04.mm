uint64_t FirstViewportAdPolicyTraits.hashValue.getter()
{
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](0);
  return sub_1D7704AF0();
}

uint64_t FirstViewportAdPolicy.init(numberOfViewports:traits:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void FirstViewportAdPolicy.validatePlacement(_:in:)(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 1);
  v8 = a1[2];
  v7 = a1[3];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[10];
  v12 = a2[11];
  v14 = a2[12];
  v15 = *(v3 + 16);
  *v16.i64 = (*v3)();
  v17 = -v14;
  v18 = -v12;
  v56 = v16;
  v19 = v11 * *v16.i64;
  *v16.i64 = v17;
  v20 = v18;
  v21 = v10;
  v22 = v19;
  v59.x = v8;
  v59.y = v7;
  if (!CGRectContainsPoint(*v16.i8, v59))
  {
    goto LABEL_14;
  }

  if (*(v15 + 16))
  {
    v23 = v13 < v11;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    *&v57 = v9;

    AdPolicyLayoutEnvironment.content(in:)(0.0, v7 + 1.0, v10, v11);
    v38 = v37;

    if (*(v38 + 16))
    {
      sub_1D76B7FC4(0, &qword_1EE0AEC30, &type metadata for AdPolicyFailure.Info, MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D7709070;
      type metadata accessor for CGRect(0);
      v40 = v39;
      *(v27 + 72) = v39;
      v41 = swift_allocObject();
      *(v41 + 16) = v17;
      *(v41 + 24) = v18;
      *(v41 + 32) = v10;
      *(v41 + 40) = v19;
      strcpy((v27 + 32), "Viewport Size");
      *(v27 + 46) = -4864;
      *(v27 + 48) = v41;
      *(v27 + 120) = v40;
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = v7 + 1.0;
      *(v42 + 32) = v10;
      *(v42 + 40) = v11;
      strcpy((v27 + 80), "Trailing Rect");
      *(v27 + 94) = -4864;
      *(v27 + 96) = v42;

      sub_1D76B76C8(v38);
      v44 = v43;

      *&v57 = v44;
      v45 = MEMORY[0x1E69E6158];
      sub_1D76B7FC4(0, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D7669758();
      v46 = sub_1D7704210();
      v48 = v47;

      *(v27 + 168) = v45;
      *(v27 + 144) = v46;
      *(v27 + 152) = v48;
      *(v27 + 128) = 0x676E696C69617254;
      *(v27 + 136) = 0xEF746E65746E6F43;
      *v49.i64 = *v56.i64 - trunc(*v56.i64);
      v50.f64[0] = NAN;
      v50.f64[1] = NAN;
      if (*vbslq_s8(vnegq_f64(v50), v49, v56).i64 == 0.0)
      {
        sub_1D766DF6C(0);
        v51 = swift_allocObject();
        v52 = MEMORY[0x1E69E63B0];
        *(v51 + 16) = xmmword_1D7708FE0;
        v53 = MEMORY[0x1E69E6438];
        *(v51 + 56) = v52;
        *(v51 + 64) = v53;
        *(v51 + 32) = v56.i64[0];
        v54 = sub_1D7704280();
      }

      else
      {
        v54 = sub_1D77044C0();
      }

      v58 = v45;
      *&v57 = v54;
      *(&v57 + 1) = v55;
      *(v27 + 176) = 0xD000000000000013;
      *(v27 + 184) = 0x80000001D7717100;
      sub_1D766B74C(&v57, (v27 + 192));
      *a3 = v6;
      *(a3 + 8) = v5;
      *(a3 + 16) = v8;
      *(a3 + 24) = v7;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0xD000000000000036;
      *(a3 + 48) = 0x80000001D7717120;
      goto LABEL_17;
    }

LABEL_14:
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v24 = sub_1D76B7E90(v56);
  v26 = v25;
  sub_1D76B7FC4(0, &qword_1EE0AEC30, &type metadata for AdPolicyFailure.Info, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7708FD0;
  type metadata accessor for CGRect(0);
  *(v27 + 72) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v17;
  *(v29 + 24) = v18;
  *(v29 + 32) = v10;
  *(v29 + 40) = v19;
  strcpy((v27 + 32), "Viewport Size");
  *(v27 + 46) = -4864;
  *(v27 + 48) = v29;
  *v30.i64 = *v56.i64 - trunc(*v56.i64);
  v31.f64[0] = NAN;
  v31.f64[1] = NAN;
  if (*vbslq_s8(vnegq_f64(v31), v30, v56).i64 == 0.0)
  {
    sub_1D766DF6C(0);
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E63B0];
    *(v32 + 16) = xmmword_1D7708FE0;
    v34 = MEMORY[0x1E69E6438];
    *(v32 + 56) = v33;
    *(v32 + 64) = v34;
    *(v32 + 32) = v56.i64[0];
    v35 = sub_1D7704280();
  }

  else
  {
    v35 = sub_1D77044C0();
  }

  v58 = MEMORY[0x1E69E6158];
  *&v57 = v35;
  *(&v57 + 1) = v36;
  *(v27 + 80) = 0xD000000000000013;
  *(v27 + 88) = 0x80000001D7717100;
  sub_1D766B74C(&v57, (v27 + 96));
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  *(a3 + 40) = v24;
  *(a3 + 48) = v26;
LABEL_17:
  *(a3 + 56) = v27;
}

unint64_t sub_1D76B7E90(int8x16_t a1)
{
  if (*a1.i64 == 1.0)
  {
    return 0xD000000000000024;
  }

  sub_1D7704740();

  *v2.i64 = *a1.i64 - trunc(*a1.i64);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  if (*vbslq_s8(vnegq_f64(v3), v2, a1).i64 == 0.0)
  {
    sub_1D766DF6C(0);
    v4 = swift_allocObject();
    v5 = MEMORY[0x1E69E63B0];
    *(v4 + 16) = xmmword_1D7708FE0;
    v6 = MEMORY[0x1E69E6438];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = a1.i64[0];
    v7 = sub_1D7704280();
  }

  else
  {
    v7 = sub_1D77044C0();
  }

  MEMORY[0x1DA6FF0D0](v7);

  MEMORY[0x1DA6FF0D0](0x726F707765697620, 0xEA00000000007374);
  return 0xD00000000000001CLL;
}

void sub_1D76B7FC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D76B8018()
{
  result = qword_1EC9BD8D0;
  if (!qword_1EC9BD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD8D0);
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

uint64_t sub_1D76B8094(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D76B80DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D76B812C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D76B8138(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14 = a3;
  v4 = sub_1D7702FD0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7702FA0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_1D7702F90();
  sub_1D7702F70();
  (*(v9 + 8))(v11, v8);
  if (*(v12 + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v5 + 8))(v7, v4);
  return sub_1D7703770();
}

void EngagementBannerAdPolicy.validatePlacement(_:in:)(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 1);
  v40 = *a1;
  v5 = a1[3];
  v39 = *(a1 + 2);
  v6 = *a2;
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v41.origin.x = v7;
  v41.origin.y = v8;
  v41.size.width = v9;
  v41.size.height = v10;
  v11 = v5 - CGRectGetHeight(v41);
  v42.origin.x = v7;
  v42.origin.y = v8;
  v42.size.width = v9;
  v42.size.height = v10;
  Width = CGRectGetWidth(v42);
  v43.origin.x = v7;
  v43.origin.y = v8;
  v43.size.width = v9;
  v43.size.height = v10;
  Height = CGRectGetHeight(v43);
  v14 = Height + Height;

  AdPolicyLayoutEnvironment.content(in:)(0.0, v11, Width, v14);
  v16 = v15;

  v17 = 0;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v21 = (v18 + 63) >> 6;
  v22 = MEMORY[0x1E69E7CC0];
  while (v20)
  {
LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = *(*(v16 + 48) + (v24 | (v17 << 6)));
    if ((v25 & 0xC0) == 0x40)
    {
      if ((v25 & 0x3F) - 2 < 3)
      {
        v32 = 0x80000001D77171D0;
        sub_1D76B8844();
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1D7708FE0;
        type metadata accessor for CGRect(0);
        *(v33 + 72) = v37;
        v38 = swift_allocObject();
        *(v38 + 16) = 0;
        *(v38 + 24) = v11;
        *(v38 + 32) = Width;
        *(v38 + 40) = v14;
        *(v33 + 32) = 0x5220686372616553;
        *(v33 + 40) = 0xEB00000000746365;
        *(v33 + 48) = v38;

        *a3 = v40;
        *(a3 + 8) = v4;
        *(a3 + 16) = v39;
        *(a3 + 24) = v5;
        *(a3 + 32) = 3;
        v36 = 0xD000000000000040;
        goto LABEL_21;
      }

      if (*(v6 + 16) && (sub_1D76B87A4(v25), (v26 & 1) != 0))
      {

        if (!*(v27 + 2))
        {
          goto LABEL_14;
        }

LABEL_16:
        v28 = v27[4];
        v29 = v27[5];
        v30 = v27[6];
        v31 = v27[7];

        v44.origin.x = v28;
        v44.origin.y = v29;
        v44.size.width = v30;
        v44.size.height = v31;
        if (CGRectGetMaxY(v44) <= v5)
        {
          v45.origin.x = v28;
          v45.origin.y = v29;
          v45.size.width = v30;
          v45.size.height = v31;
          if (v5 < CGRectGetMaxY(v45) + 5.0)
          {
            v32 = 0x80000001D7717180;
            sub_1D76B8844();
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_1D7708FE0;
            type metadata accessor for CGRect(0);
            *(v33 + 72) = v34;
            v35 = swift_allocObject();
            *(v35 + 16) = 0;
            *(v35 + 24) = v11;
            *(v35 + 32) = Width;
            *(v35 + 40) = v14;
            *(v33 + 32) = 0x5220686372616553;
            *(v33 + 40) = 0xEB00000000746365;
            *(v33 + 48) = v35;

            *a3 = v40;
            *(a3 + 8) = v4;
            *(a3 + 16) = v39;
            *(a3 + 24) = v5;
            *(a3 + 32) = 3;
            v36 = 0xD000000000000043;
LABEL_21:
            *(a3 + 40) = v36;
            *(a3 + 48) = v32;
            *(a3 + 56) = v33;
            return;
          }
        }
      }

      else
      {
        v27 = v22;
        if (*(v22 + 2))
        {
          goto LABEL_16;
        }

LABEL_14:
      }
    }
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v20 = *(v16 + 56 + 8 * v23);
    ++v17;
    if (v20)
    {
      v17 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1D76B8710(uint64_t a1)
{
  sub_1D7704260();
  sub_1D7704AD0();
  sub_1D77042D0();
  v2 = sub_1D7704AF0();

  return sub_1D76B8948(a1, v2);
}

unint64_t sub_1D76B87A4(uint64_t a1)
{
  v1 = a1;
  sub_1D7704AD0();
  if (!(v1 >> 6))
  {
    v3 = 1;
    v2 = v1;
    goto LABEL_5;
  }

  if (v1 >> 6 == 1)
  {
    v2 = v1 & 0x3F;
    v3 = 2;
LABEL_5:
    MEMORY[0x1DA6FF8B0](v3);
    v4 = v2;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  MEMORY[0x1DA6FF8B0](v4);
  v5 = sub_1D7704AF0();

  return sub_1D76B8A4C(v1, v5);
}

void sub_1D76B8844()
{
  if (!qword_1EE0AEC30)
  {
    v0 = sub_1D7704A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AEC30);
    }
  }
}

unint64_t sub_1D76B88A4(char a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  v2 = sub_1D7704AF0();

  return sub_1D76B8AFC(a1 & 1, v2);
}

unint64_t sub_1D76B8948(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D7704260();
      v8 = v7;
      if (v6 == sub_1D7704260() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D7704A30();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D76B8A4C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 >> 6)
      {
        if (v7 >> 6 == 1)
        {
          if ((a1 & 0xC0) == 0x40 && ((v7 ^ a1) & 0x3F) == 0)
          {
            return result;
          }
        }

        else if (a1 == 128)
        {
          return result;
        }
      }

      else if (a1 <= 0x3Fu && v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D76B8AFC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x63696C627570;
    }

    else
    {
      v6 = 0x65746176697270;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x63696C627570 : 0x65746176697270;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1D7704A30();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t SponsorshipAdContentInfo.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_1D76B8D24(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = v2;
}

void *sub_1D76B8D7C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1D76B8DC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t SponsorshipAdContentInfo.deinit()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return v0;
}

uint64_t SponsorshipAdContentInfo.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

void *sub_1D76B8F10()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = v2;
  return v2;
}

uint64_t sub_1D76B8F5C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t SponsorshipAdContentInfo.metricsViewImpressed(info:)()
{
  v1 = type metadata accessor for SponsorshipAdImpressionInfo(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7708FE0;
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D7668854();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  swift_bridgeObjectRetain_n();
  v8 = sub_1D77045A0();
  sub_1D7703ED0("Ad Sponsorship metrics view did impress placement=%{public}@", 60, 2, &dword_1D7662000, v4, v8, v5);

  sub_1D7667C54(v0 + 64, v22);
  v9 = v23;
  v10 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  [*(v0 + 56) unfilledReason];
  v11 = sub_1D7703880();
  v12 = sub_1D7703880();
  v13 = 0uLL;
  v14 = 0uLL;
  if ((*(v0 + 152) & 1) == 0)
  {
    v14 = *(v0 + 136);
    v13 = *(v0 + 120);
  }

  v20 = v14;
  v21 = v13;
  v15 = v11 == v12;
  sub_1D7703EB0();
  v17 = v16;
  sub_1D7703EC0();
  *v3 = v7;
  *(v3 + 1) = v6;
  v3[16] = v15;
  v18 = v21;
  *(v3 + 40) = v20;
  *(v3 + 24) = v18;
  *(v3 + 7) = v17;
  (*(v10 + 8))(v3, v9, v10);
  sub_1D76B9254(v3);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D76B9254(uint64_t a1)
{
  v2 = type metadata accessor for SponsorshipAdImpressionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContentBannerAdPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContentBannerAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentBannerAdPlacement(0) + 20);
  v4 = sub_1D77038B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentBannerAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContentBannerAdPlacement(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ContentBannerAdPlacement.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentBannerAdPlacement(0) + 32));

  return v1;
}

uint64_t ContentBannerAdPlacement.init(placementIdentifier:boundingSize:insertionType:reuseIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v15 = *a3;
  v16 = type metadata accessor for ContentBannerAdPlacement(0);
  v17 = a6 + v16[5];
  sub_1D7675210(0);
  v19 = *(v18 + 48);
  *v17 = 1;
  v20 = *MEMORY[0x1E69C5F08];
  v21 = sub_1D7703810();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  v22 = *MEMORY[0x1E69C6028];
  v23 = sub_1D77038B0();
  result = (*(*(v23 - 8) + 104))(v17, v22, v23);
  *a6 = a1;
  a6[1] = a2;
  v25 = (a6 + v16[6]);
  *v25 = a7;
  v25[1] = a8;
  *(a6 + v16[7]) = v15;
  v26 = (a6 + v16[8]);
  *v26 = a4;
  v26[1] = a5;
  return result;
}

uint64_t sub_1D76B96CC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_1D76B9740(uint64_t result, uint64_t *a2, __n128 a3)
{
  if (*(result + 8) && a2[1])
  {
    v6 = *(result + 16);
    v5 = *(result + 17);
    v3 = a2[5];
    if ((a2[2] & 1) != 0 || v3 >= 1)
    {

      sub_1D7703990();

      sub_1D7703C90();
    }

    else
    {
      sub_1D7703990();

      sub_1D7703C90();
    }

    sub_1D7703C80();

    sub_1D7703CC0();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1D77039B0();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    sub_1D7703C50();

    sub_1D7703BA0();
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

    return MEMORY[0x1EEE2FA08](v4);
  }

  return result;
}

uint64_t *sub_1D76B98D8(uint64_t *result)
{
  if (result[1])
  {
    v1 = result[5];

    sub_1D7703A60();

    sub_1D77039F0();

    sub_1D77039D0();

    sub_1D7703A00();

    sub_1D7703A30();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

    return sub_1D7703AA0();
  }

  return result;
}

uint64_t *sub_1D76B99C0(uint64_t *result)
{
  if (result[1])
  {
    v1 = result[5];

    sub_1D7703A70();

    sub_1D7703A10();

    sub_1D77039E0();

    sub_1D7703A20();

    sub_1D7703A40();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

    return sub_1D7703AB0();
  }

  return result;
}

uint64_t sub_1D76B9AA8(uint64_t result, uint64_t *a2, __n128 a3)
{
  if (*(result + 8) && a2[1])
  {
    v6 = *(result + 17);
    v3 = *(result + 32);
    v7 = *(result + 24);
    v4 = a2[5];
    if ((a2[2] & 1) != 0 || v4 >= 1)
    {

      sub_1D7703970();

      sub_1D7703C60();
    }

    else
    {
      sub_1D7703970();

      sub_1D7703C60();
    }

    sub_1D7703C40();

    sub_1D7703CA0();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1D77039A0();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    sub_1D7703C30();

    return MEMORY[0x1EEE2F918](v7, v3, v5);
  }

  return result;
}

void sub_1D76B9C1C()
{
  if (!qword_1EE0AEC08)
  {
    v0 = sub_1D7704A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AEC08);
    }
  }
}

void *sub_1D76B9C84()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t NativeAd.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NativeAd.Headline(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NativeAd(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76B9FA0(v1, v10, type metadata accessor for NativeAd);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v12 = *(v10 + 3);
    v16[2] = *(v10 + 2);
    v16[3] = v12;
    v16[4] = *(v10 + 4);
    v17 = *(v10 + 10);
    v13 = *(v10 + 1);
    v16[0] = *v10;
    v16[1] = v13;
    v14 = v13;
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D769E02C(v16);
    }

    else
    {

      sub_1D769DFFC(v16);
    }
  }

  else
  {
    sub_1D76B9F38(v10, v7, type metadata accessor for NativeAd.Headline);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *v7;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D76B9F38(v7, v4, type metadata accessor for NativeAdHeadline);
      v14 = *v4;

      sub_1D76BA8B8(v4, type metadata accessor for NativeAdHeadline);
    }
  }

  return v14;
}

uint64_t sub_1D76B9F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D76B9FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NativeAd.placementIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NativeAd.Headline(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NativeAd(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76B9FA0(v1, v10, type metadata accessor for NativeAd);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v12 = *(v10 + 3);
    v16[2] = *(v10 + 2);
    v16[3] = v12;
    v16[4] = *(v10 + 4);
    v17 = *(v10 + 10);
    v13 = *(v10 + 1);
    v16[0] = *v10;
    v16[1] = v13;
    v14 = *&v16[0];
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D769E02C(v16);
    }

    else
    {

      sub_1D769DFFC(v16);
    }
  }

  else
  {
    sub_1D76B9F38(v10, v7, type metadata accessor for NativeAd.Headline);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *v7;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D76B9F38(v7, v4, type metadata accessor for NativeAdHeadline);
      v14 = *v4;

      sub_1D76BA8B8(v4, type metadata accessor for NativeAdHeadline);
    }
  }

  return v14;
}

uint64_t _s7NewsAds8NativeAdO8HeadlineO10identifierSSvg_0()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NativeAd.Headline(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D76B9FA0(v1, v7, type metadata accessor for NativeAd.Headline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D76B9F38(v7, v4, type metadata accessor for NativeAdHeadline);
    v8 = *v4;

    sub_1D76BA8B8(v4, type metadata accessor for NativeAdHeadline);
  }

  return v8;
}

uint64_t NativeAd.desiredPosition.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NativeAd.Headline(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v11 = type metadata accessor for NativeAd(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76B9FA0(v1, v13, type metadata accessor for NativeAd);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v15 = *(v13 + 4);
    v25[1] = *(v13 + 3);
    v26 = v15;
    v16 = *(v13 + 2);
    v24[1] = *(v13 + 1);
    v25[0] = v16;
    v27 = *(v13 + 10);
    v24[0] = *v13;
    v17 = v26;
    if (EnumCaseMultiPayload == 1)
    {
      __swift_project_boxed_opaque_existential_1(v25 + 1, v26);
      v18 = (*(*(&v17 + 1) + 16))(v17, *(&v17 + 1));
      sub_1D769E02C(v24);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v25 + 1, v26);
      v18 = (*(*(&v17 + 1) + 16))(v17, *(&v17 + 1));
      sub_1D769DFFC(v24);
    }
  }

  else
  {
    sub_1D76B9F38(v13, v10, type metadata accessor for NativeAd.Headline);
    sub_1D76B9FA0(v10, v8, type metadata accessor for NativeAd.Headline);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D76BA8B8(v10, type metadata accessor for NativeAd.Headline);
      v18 = *(v8 + 3);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D76B9F38(v8, v4, type metadata accessor for NativeAdHeadline);
      v19 = *(v2 + 24);
      v20 = &v4[v19 + *(type metadata accessor for NativeAdInfo.Fulfilled(0) + 48)];
      v21 = *(v20 + 3);
      v22 = *(v20 + 4);
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v18 = (*(v22 + 16))(v21, v22);
      sub_1D76BA8B8(v10, type metadata accessor for NativeAd.Headline);
      sub_1D76BA8B8(v4, type metadata accessor for NativeAdHeadline);
    }
  }

  return v18;
}

uint64_t NativeAd.Headline.desiredPosition.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NativeAd.Headline(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76B9FA0(v1, v7, type metadata accessor for NativeAd.Headline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v7 + 3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D76B9F38(v7, v4, type metadata accessor for NativeAdHeadline);
    v9 = *(v2 + 24);
    v10 = &v4[v9 + *(type metadata accessor for NativeAdInfo.Fulfilled(0) + 48)];
    v11 = *(v10 + 3);
    v12 = *(v10 + 4);
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = (*(v12 + 16))(v11, v12);
    sub_1D76BA8B8(v4, type metadata accessor for NativeAdHeadline);
  }

  return v8;
}

uint64_t sub_1D76BA8B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NativeAd.discard(policyFailures:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a1;
  v39 = a2;
  v34 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76BB064(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for NativeAdInfo(0);
  v33 = *(v38 - 8);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for NativeAd.Headline(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = type metadata accessor for NativeAd(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v3;
  sub_1D76B9FA0(v3, v22, type metadata accessor for NativeAd);
  v35 = v20;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D76B9FA0(v36, v39, type metadata accessor for NativeAd);
      return sub_1D76BA8B8(v22, type metadata accessor for NativeAd);
    }

    v24 = *(v22 + 3);
    v40[2] = *(v22 + 2);
    v40[3] = v24;
    v40[4] = *(v22 + 4);
    v41 = *(v22 + 10);
    v25 = *(v22 + 1);
    v40[0] = *v22;
    v40[1] = v25;
    sub_1D769FB64(v40, v11);
    swift_storeEnumTagMultiPayload();
    NativeAdInfo.discard(policyFailures:)(v37, v39);
    sub_1D76BA8B8(v11, type metadata accessor for NativeAdInfo);
    sub_1D769E02C(v40);
  }

  else
  {
    v27 = v33;
    v26 = v34;
    sub_1D76B9F38(v22, v19, type metadata accessor for NativeAd.Headline);
    sub_1D76B9FA0(v19, v17, type metadata accessor for NativeAd.Headline);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D76BA8B8(v17, type metadata accessor for NativeAd.Headline);
      v28 = 1;
      v29 = v27;
      v30 = v38;
    }

    else
    {
      sub_1D76B9F38(v17, v5, type metadata accessor for NativeAdHeadline);
      sub_1D76B9FA0(&v5[*(v26 + 24)], v8, type metadata accessor for NativeAdInfo.Fulfilled);
      sub_1D76BA8B8(v5, type metadata accessor for NativeAdHeadline);
      v30 = v38;
      swift_storeEnumTagMultiPayload();
      v28 = 0;
      v29 = v27;
    }

    (*(v29 + 56))(v8, v28, 1, v30);
    if ((*(v29 + 48))(v8, 1, v30) == 1)
    {
      sub_1D76BA8B8(v19, type metadata accessor for NativeAd.Headline);
      sub_1D76BA8B8(v8, sub_1D76BB064);
      return sub_1D76B9FA0(v36, v39, type metadata accessor for NativeAd);
    }

    sub_1D76B9F38(v8, v13, type metadata accessor for NativeAdInfo);
    NativeAdInfo.discard(policyFailures:)(v37, v39);
    sub_1D76BA8B8(v13, type metadata accessor for NativeAdInfo);
    sub_1D76BA8B8(v19, type metadata accessor for NativeAd.Headline);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t NativeAd.Headline.nativeInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NativeAd.Headline(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76B9FA0(v2, v9, type metadata accessor for NativeAd.Headline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D76BA8B8(v9, type metadata accessor for NativeAd.Headline);
    v10 = type metadata accessor for NativeAdInfo(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    sub_1D76B9F38(v9, v6, type metadata accessor for NativeAdHeadline);
    sub_1D76B9FA0(&v6[*(v4 + 24)], a1, type metadata accessor for NativeAdInfo.Fulfilled);
    sub_1D76BA8B8(v6, type metadata accessor for NativeAdHeadline);
    v12 = type metadata accessor for NativeAdInfo(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }
}

void sub_1D76BB064(uint64_t a1)
{
  if (!qword_1EE0AE9B0)
  {
    type metadata accessor for NativeAdInfo(255);
    v1 = sub_1D77046B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AE9B0);
    }
  }
}

Swift::Void __swiftcall NativeAd.markPresented()()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NativeAd.Headline(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = type metadata accessor for NativeAd(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76B9FA0(v1, v13, type metadata accessor for NativeAd);
  if (swift_getEnumCaseMultiPayload())
  {
    v14 = type metadata accessor for NativeAd;
    v15 = v13;
  }

  else
  {
    sub_1D76B9F38(v13, v10, type metadata accessor for NativeAd.Headline);
    sub_1D76B9FA0(v10, v8, type metadata accessor for NativeAd.Headline);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D76BA8B8(v10, type metadata accessor for NativeAd.Headline);
      v15 = v8;
      v14 = type metadata accessor for NativeAd.Headline;
    }

    else
    {
      sub_1D76B9F38(v8, v4, type metadata accessor for NativeAdHeadline);
      NativeAdInfo.Fulfilled.markPresented()();
      sub_1D76BA8B8(v4, type metadata accessor for NativeAdHeadline);
      v14 = type metadata accessor for NativeAd.Headline;
      v15 = v10;
    }
  }

  sub_1D76BA8B8(v15, v14);
}

uint64_t NativeAd.Headline.headline.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NativeAd.Headline(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76B9FA0(v1, v7, type metadata accessor for NativeAd.Headline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v7 + 2);
  }

  else
  {
    sub_1D76B9F38(v7, v4, type metadata accessor for NativeAdHeadline);
    v8 = *(v4 + 2);
    swift_unknownObjectRetain();
    sub_1D76BA8B8(v4, type metadata accessor for NativeAdHeadline);
  }

  return v8;
}

uint64_t sub_1D76BB4CC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NativeAdHeadline(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D76B9FA0(v2, v8, type metadata accessor for NativeAd.Headline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D76B9F38(v8, v6, type metadata accessor for NativeAdHeadline);
    v9 = *v6;

    sub_1D76BA8B8(v6, type metadata accessor for NativeAdHeadline);
  }

  return v9;
}

uint64_t sub_1D76BB614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76BC2A4(&qword_1EC9BD930, type metadata accessor for NativeAd.Headline, &protocol conformance descriptor for NativeAd.Headline);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t NativeAdHeadline.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NativeAdHeadline.journal.getter()
{
  type metadata accessor for NativeAdHeadline(0);
}

uint64_t NativeAdHeadline.init(identifier:headline:info:journal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for NativeAdHeadline(0);
  result = sub_1D76B9F38(a4, a6 + *(v9 + 24), type metadata accessor for NativeAdInfo.Fulfilled);
  *(a6 + *(v9 + 28)) = a5;
  return result;
}

uint64_t sub_1D76BB808(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1D7704AD0();
  a1(0);
  sub_1D76BC2A4(a2, a3, a4);
  sub_1D77041F0();
  return sub_1D7704AF0();
}

uint64_t sub_1D76BB890(uint64_t a1, uint64_t a2)
{
  sub_1D7704AD0();
  sub_1D77041F0();
  return sub_1D7704AF0();
}

uint64_t sub_1D76BB8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76BC2A4(&qword_1EC9BD928, type metadata accessor for NativeAdHeadline, &protocol conformance descriptor for NativeAdHeadline);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D76BB964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7704AD0();
  sub_1D77041F0();
  return sub_1D7704AF0();
}

uint64_t DebugNativeAdHeadline.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void DebugNativeAdHeadline.init(identifier:headline:desiredPosition:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = a4 == 1701736302 && a5 == 0xE400000000000000;
  if (v11 || (sub_1D7704A30() & 1) != 0)
  {

    v13 = 0;
  }

  else if (a4 == 0x656873696C627570 && a5 == 0xE900000000000072 || (sub_1D7704A30() & 1) != 0)
  {

    v13 = 1102;
  }

  else if (a4 == 0x646574616C6572 && a5 == 0xE700000000000000)
  {

    v13 = 1101;
  }

  else
  {
    v14 = sub_1D7704A30();

    v13 = 1101;
    if ((v14 & 1) == 0)
    {
      v13 = 0;
    }
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = v13;
}

uint64_t DebugNativeAdHeadline.hashValue.getter()
{
  sub_1D7704AD0();
  sub_1D76BC2EC();
  sub_1D77041F0();
  return sub_1D7704AF0();
}

uint64_t sub_1D76BBBB0(uint64_t a1, uint64_t a2)
{
  sub_1D7704AD0();
  sub_1D77041F0();
  return sub_1D7704AF0();
}

uint64_t sub_1D76BBC24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76BC5DC();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D76BBC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7704AD0();
  sub_1D77041F0();
  return sub_1D7704AF0();
}

uint64_t _s7NewsAds16NativeAdHeadlineV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D7704A30() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = [v5 identifier];
  v7 = sub_1D7704260();
  v9 = v8;

  v10 = a2[2];
  v11 = [v10 identifier];
  v12 = sub_1D7704260();
  v14 = v13;

  if (v7 == v12 && v9 == v14)
  {
  }

  else
  {
    v16 = sub_1D7704A30();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = [v5 isDisplayingAsNativeAd];
  if (v17 != [v10 isDisplayingAsNativeAd])
  {
    return 0;
  }

  v19 = *(type metadata accessor for NativeAdHeadline(0) + 24);

  return _s7NewsAds12NativeAdInfoO9FulfilledV2eeoiySbAE_AEtFZ_0((a1 + v19), (a2 + v19));
}

BOOL _s7NewsAds21DebugNativeAdHeadlineV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D7704A30() & 1) == 0)
  {
    return 0;
  }

  v5 = [v2 identifier];
  v6 = sub_1D7704260();
  v8 = v7;

  v9 = [v3 identifier];
  v10 = sub_1D7704260();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_1D7704A30();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = sub_1D7703890();
  return v16 == sub_1D7703890();
}

uint64_t _s7NewsAds8NativeAdO8HeadlineO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdHeadline(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NativeAd.Headline(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v29 - v11);
  sub_1D76BC630(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 56)];
  sub_1D76B9FA0(a1, v16, type metadata accessor for NativeAd.Headline);
  sub_1D76B9FA0(a2, v17, type metadata accessor for NativeAd.Headline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D76B9FA0(v16, v10, type metadata accessor for NativeAd.Headline);
    v18 = v10[1];
    v19 = v10[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v10[3];
      v21 = *v10;
      v22 = *v17;
      v23 = *(v17 + 1);
      v25 = *(v17 + 2);
      v24 = *(v17 + 3);
      v30[0] = v21;
      v30[1] = v18;
      v30[2] = v19;
      v30[3] = v20;
      v29[0] = v22;
      v29[1] = v23;
      v29[2] = v25;
      v29[3] = v24;
      v26 = _s7NewsAds21DebugNativeAdHeadlineV2eeoiySbAC_ACtFZ_0(v30, v29);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

LABEL_9:
      v27 = type metadata accessor for NativeAd.Headline;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D76B9FA0(v16, v12, type metadata accessor for NativeAd.Headline);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D76B9F38(v17, v6, type metadata accessor for NativeAdHeadline);
      v26 = _s7NewsAds16NativeAdHeadlineV2eeoiySbAC_ACtFZ_0(v12, v6);
      sub_1D76BA8B8(v6, type metadata accessor for NativeAdHeadline);
      sub_1D76BA8B8(v12, type metadata accessor for NativeAdHeadline);
      goto LABEL_9;
    }

    sub_1D76BA8B8(v12, type metadata accessor for NativeAdHeadline);
  }

  v26 = 0;
  v27 = sub_1D76BC630;
LABEL_10:
  sub_1D76BA8B8(v16, v27);
  return v26 & 1;
}

uint64_t sub_1D76BC2A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D76BC2EC()
{
  result = qword_1EC9BD8E8;
  if (!qword_1EC9BD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD8E8);
  }

  return result;
}

unint64_t sub_1D76BC4F8()
{
  result = qword_1EC9BD910;
  if (!qword_1EC9BD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD910);
  }

  return result;
}

unint64_t sub_1D76BC550()
{
  result = qword_1EC9BD918;
  if (!qword_1EC9BD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD918);
  }

  return result;
}

unint64_t sub_1D76BC5DC()
{
  result = qword_1EC9BD920;
  if (!qword_1EC9BD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD920);
  }

  return result;
}

void sub_1D76BC630(uint64_t a1)
{
  if (!qword_1EE0AE678)
  {
    type metadata accessor for NativeAd.Headline(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0AE678);
    }
  }
}

uint64_t MinimumDistanceAdPolicy.init(numberOfViewports:adState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

void MinimumDistanceAdPolicy.validatePlacement(_:in:)(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = a1[3];
  v9 = *a2;
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v14 = *v3;
  v15 = *(v3 + 16);

  *v17.i64 = v14(v16);
  v45 = v17;
  *v17.i64 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v8 - *v45.i64 * CGRectGetHeight(*v17.i8);
  v48.origin.x = v10;
  v48.origin.y = v11;
  v48.size.width = v12;
  v48.size.height = v13;
  Width = CGRectGetWidth(v48);
  v49.origin.x = v10;
  v49.origin.y = v11;
  v49.size.width = v12;
  v49.size.height = v13;
  v23 = (*v45.i64 + *v45.i64) * CGRectGetHeight(v49);
  *&v46 = v9;
  AdPolicyLayoutEnvironment.content(in:)(0.0, v21, Width, v23);
  v25 = v24;

  if (*(v25 + 16) && (sub_1D7704AD0(), MEMORY[0x1DA6FF8B0](1), MEMORY[0x1DA6FF8B0](v15), v26 = sub_1D7704AF0(), v27 = -1 << *(v25 + 32), v28 = v26 & ~v27, ((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
  {
    v29 = ~v27;
    while (1)
    {
      v30 = *(*(v25 + 48) + v28);
      if (v30 <= 0x3F && v30 == v15)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v32 = sub_1D76BC9D4(v45);
    v34 = v33;
    sub_1D76B8844();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D7708FD0;
    type metadata accessor for CGRect(0);
    *(v35 + 72) = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = v21;
    *(v37 + 32) = Width;
    *(v37 + 40) = v23;
    *(v35 + 32) = 0x5220686372616553;
    *(v35 + 40) = 0xEB00000000746365;
    *(v35 + 48) = v37;
    *v38.i64 = *v45.i64 - trunc(*v45.i64);
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v39), v38, v45).i64 == 0.0)
    {
      sub_1D766DF6C(0);
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E63B0];
      *(v40 + 16) = xmmword_1D7708FE0;
      v42 = MEMORY[0x1E69E6438];
      *(v40 + 56) = v41;
      *(v40 + 64) = v42;
      *(v40 + 32) = v45.i64[0];
      v43 = sub_1D7704280();
    }

    else
    {
      v43 = sub_1D77044C0();
    }

    v47 = MEMORY[0x1E69E6158];
    *&v46 = v43;
    *(&v46 + 1) = v44;
    *(v35 + 80) = 0xD000000000000010;
    *(v35 + 88) = 0x80000001D77172D0;
    sub_1D766B74C(&v46, (v35 + 96));
    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
    *(a3 + 32) = 1;
    *(a3 + 40) = v32;
    *(a3 + 48) = v34;
    *(a3 + 56) = v35;
  }

  else
  {
LABEL_9:

    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

unint64_t sub_1D76BC9D4(int8x16_t a1)
{
  if (*a1.i64 == 1.0)
  {
    return 0xD000000000000033;
  }

  sub_1D7704740();
  MEMORY[0x1DA6FF0D0](0xD00000000000002BLL, 0x80000001D77172F0);
  *v2.i64 = *a1.i64 - trunc(*a1.i64);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  if (*vbslq_s8(vnegq_f64(v3), v2, a1).i64 == 0.0)
  {
    sub_1D766DF6C(0);
    v4 = swift_allocObject();
    v5 = MEMORY[0x1E69E63B0];
    *(v4 + 16) = xmmword_1D7708FE0;
    v6 = MEMORY[0x1E69E6438];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = a1.i64[0];
    v7 = sub_1D7704280();
  }

  else
  {
    v7 = sub_1D77044C0();
  }

  MEMORY[0x1DA6FF0D0](v7);

  MEMORY[0x1DA6FF0D0](0x726F707765697620, 0xEA00000000007374);
  return 0;
}

uint64_t sub_1D76BCB1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D76BCB64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D76BCBE0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D7717360 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D76BCC74(uint64_t a1)
{
  v2 = sub_1D76BCE88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76BCCB0(uint64_t a1)
{
  v2 = sub_1D76BCE88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserAdData.encode(to:)(void *a1)
{
  sub_1D76BD0A0(0, &qword_1EC9BD938, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76BCE88();

  sub_1D7704B10();
  v10[1] = v8;
  sub_1D76697B0();
  sub_1D768DEEC(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1D7704A00();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76BCE88()
{
  result = qword_1EC9BD940;
  if (!qword_1EC9BD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD940);
  }

  return result;
}

uint64_t UserAdData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76BD0A0(0, &qword_1EC9BD948, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76BCE88();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76697B0();
    sub_1D768DEEC(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D7704970();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76BD0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76BCE88();
    v7 = a3(a1, &type metadata for UserAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76BD148()
{
  result = qword_1EC9BD950;
  if (!qword_1EC9BD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD950);
  }

  return result;
}

unint64_t sub_1D76BD1A0()
{
  result = qword_1EC9BD958;
  if (!qword_1EC9BD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD958);
  }

  return result;
}

unint64_t sub_1D76BD1F8()
{
  result = qword_1EC9BD960;
  if (!qword_1EC9BD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD960);
  }

  return result;
}

uint64_t VideoAdInteractionPresentationHandler.__allocating_init(videoPlayerViewController:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  return v2;
}

uint64_t VideoAdInteractionPresentationHandler.init(videoPlayerViewController:)(void *a1)
{
  swift_unknownObjectUnownedInit();

  return v1;
}

uint64_t VideoAdInteractionPresentationHandler.__deallocating_deinit()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

void __swiftcall VideoAdInteractionPresentationHandler.viewControllerToPresentFrom()(UIViewController *__return_ptr retstr)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong viewControllerForModalPresentation];
}

uint64_t BannerAd.contentIdentifier.getter()
{
  sub_1D766CEFC(v0 + 16, v5);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1D76749B8(v5);
    }

    return 0;
  }

  else
  {
    sub_1D7667CB8(v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }
}

__n128 BannerAd.init(placementIdentifier:state:journal:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v5 = *(a3 + 48);
  *(a5 + 48) = *(a3 + 32);
  *(a5 + 64) = v5;
  *(a5 + 80) = *(a3 + 64);
  *(a5 + 96) = *(a3 + 80);
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  v7 = *(a4 + 16);
  *(a5 + 104) = *a4;
  v8 = *(a4 + 80);
  *(a5 + 168) = *(a4 + 64);
  v9 = *(a4 + 32);
  *(a5 + 152) = *(a4 + 48);
  *(a5 + 136) = v9;
  *(a5 + 120) = v7;
  result = *(a4 + 96);
  v11 = *(a4 + 112);
  *(a5 + 232) = *(a4 + 128);
  *(a5 + 216) = v11;
  *(a5 + 200) = result;
  *(a5 + 184) = v8;
  return result;
}

uint64_t BannerAd.traits.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D766CEFC(v1 + 16, v13);
  if (v14)
  {
    if (v14 == 1)
    {
      result = sub_1D76749B8(v13);
    }

    *(a1 + 2) = 0;
    *a1 = 2;
  }

  else
  {
    sub_1D7667CB8(v13, v15);
    sub_1D7667CB8(v15, v16);
    v4 = v17;
    v5 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v6 = (*(v5 + 24))(v4, v5);
    v7 = v17;
    v8 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    LOBYTE(v7) = (*(v8 + 32))(v7, v8);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v11 = (*(v10 + 40))(v9, v10);
    if (v7)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *a1 = v12 & 0xFFFE | v6 & 1;
    *(a1 + 2) = (v11 & 1) != 0;
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return result;
}

uint64_t BannerAd.hashValue.getter()
{
  sub_1D7704AD0();
  sub_1D76BDA54();
  sub_1D77041F0();
  return sub_1D7704AF0();
}

uint64_t sub_1D76BD7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76BDEE0();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D76BD810(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D7704A30() & 1) == 0 || (_s7NewsAds13BannerAdStateO2eeoiySbAC_ACtFZ_0((a1 + 2), (a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  if (a1[13] == a2[13] && a1[14] == a2[14])
  {
    return 1;
  }

  return sub_1D7704A30();
}

uint64_t BannerAdState.Recover.description.getter()
{
  sub_1D7674980(v0, &v14);
  if (!v15)
  {
    return 0x726576656ELL;
  }

  if (v15 == 1)
  {
    return 0xD000000000000013;
  }

  sub_1D7667CB8(&v14, v11);
  sub_1D7667CB8(&v16, v8);
  sub_1D7704740();

  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v4 = (*(v3 + 8))(v2, v3);
  MEMORY[0x1DA6FF0D0](v4);

  MEMORY[0x1DA6FF0D0](0x736575716572202CLL, 0xEB00000000203A74);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7 = (*(v6 + 8))(v5, v6);
  MEMORY[0x1DA6FF0D0](v7);

  MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return 0xD000000000000017;
}

unint64_t sub_1D76BDA54()
{
  result = qword_1EC9BD968;
  if (!qword_1EC9BD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD968);
  }

  return result;
}

unint64_t sub_1D76BDAB0()
{
  result = qword_1EC9BD970;
  if (!qword_1EC9BD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD970);
  }

  return result;
}

unint64_t sub_1D76BDB08()
{
  result = qword_1EC9BD978;
  if (!qword_1EC9BD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD978);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D76BDB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76BDBBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D76BDC10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 80))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76BDC64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BannerAdTraits(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for BannerAdTraits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1D76BDE0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1D76BDE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76BDEE0()
{
  result = qword_1EC9BD980;
  if (!qword_1EC9BD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD980);
  }

  return result;
}

void __swiftcall AdPolicyViewportEnvironment.init(viewportSize:contentOffset:bounds:contentSize:adjustedContentInset:)(NewsAds::AdPolicyViewportEnvironment *__return_ptr retstr, CGSize viewportSize, CGPoint contentOffset, __C::CGRect bounds, CGSize contentSize, UIEdgeInsets adjustedContentInset)
{
  retstr->viewportSize.width = viewportSize.width;
  retstr->viewportSize.height = viewportSize.height;
  retstr->contentOffset.x = contentOffset.x;
  retstr->contentOffset.y = contentOffset.y;
  retstr->bounds = bounds;
  retstr->contentSize = contentSize;
  retstr->adjustedContentInset = adjustedContentInset;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D76BDFAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76BDFCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 112) = v3;
  return result;
}

__n128 BannerAdViewLayoutAttributes.adViewFrame.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

unint64_t sub_1D76BE05C()
{
  v1 = 0x656D617266;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x676E6964646170;
  }

  if (*v0)
  {
    v1 = 0x7246776569566461;
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

uint64_t sub_1D76BE0E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76BEA4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76BE114(uint64_t a1)
{
  v2 = sub_1D76BE41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76BE150(uint64_t a1)
{
  v2 = sub_1D76BE41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BannerAdViewLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D76BE7C8(0, &qword_1EC9BD988, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = v3[2];
  v16 = v3[3];
  v17 = v10;
  v15 = *(v3 + 64);
  memcpy(v20, v3 + 72, sizeof(v20));
  v11 = *(v3 + 62);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76BE41C();
  sub_1D7704B10();
  v12 = *v3;
  *&v18[16] = v3[1];
  *v18 = v12;
  v19 = 0;
  type metadata accessor for CGRect(0);
  sub_1D769A8D0(&qword_1EC9BD2E8, MEMORY[0x1E695EF68]);
  sub_1D7704A00();
  if (!v2)
  {
    *&v18[16] = v16;
    *v18 = v17;
    v18[32] = v15;
    v19 = 1;
    sub_1D77049B0();
    memcpy(v18, v20, sizeof(v18));
    v19 = 2;
    sub_1D769BCA0();
    sub_1D77049B0();
    *v18 = v11;
    v19 = 3;
    sub_1D76BE470();
    sub_1D7704A00();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1D76BE41C()
{
  result = qword_1EC9BD990;
  if (!qword_1EC9BD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD990);
  }

  return result;
}

unint64_t sub_1D76BE470()
{
  result = qword_1EC9BD998;
  if (!qword_1EC9BD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD998);
  }

  return result;
}

uint64_t BannerAdViewLayoutAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D76BE7C8(0, &qword_1EC9BD9A0, MEMORY[0x1E69E6F48]);
  v21 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76BE41C();
  sub_1D7704B00();
  if (!v2)
  {
    v20 = v6;
    type metadata accessor for CGRect(0);
    LOBYTE(v23) = 0;
    sub_1D769A8D0(&qword_1EC9BD2F8, MEMORY[0x1E695EF80]);
    v9 = v21;
    sub_1D7704970();
    v18 = *&v25[16];
    v19 = *v25;
    LOBYTE(v23) = 1;
    sub_1D7704920();
    v16 = *&v25[16];
    v17 = *v25;
    v27 = v25[32];
    v24 = 2;
    sub_1D769BC48();
    sub_1D7704920();
    v11 = v20;
    memcpy(&v26[7], v25, 0x1A1uLL);
    v22 = 3;
    sub_1D76BE82C();
    sub_1D7704970();
    (*(v11 + 8))(v8, v9);
    v12 = v23;
    v13 = v27;
    v14 = v18;
    *a2 = v19;
    *(a2 + 16) = v14;
    v15 = v16;
    *(a2 + 32) = v17;
    *(a2 + 48) = v15;
    *(a2 + 64) = v13;
    memcpy((a2 + 65), v26, 0x1A8uLL);
    *(a2 + 496) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76BE7C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76BE41C();
    v7 = a3(a1, &type metadata for BannerAdViewLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76BE82C()
{
  result = qword_1EC9BD9A8;
  if (!qword_1EC9BD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD9A8);
  }

  return result;
}

uint64_t sub_1D76BE8B0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1D766EA34();
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return MEMORY[0x1EEE45C50](a1, v10, v11, v12, v13, v14);
}

unint64_t sub_1D76BE948()
{
  result = qword_1EC9BD9B0;
  if (!qword_1EC9BD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD9B0);
  }

  return result;
}

unint64_t sub_1D76BE9A0()
{
  result = qword_1EC9BD9B8;
  if (!qword_1EC9BD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD9B8);
  }

  return result;
}

unint64_t sub_1D76BE9F8()
{
  result = qword_1EC9BD9C0;
  if (!qword_1EC9BD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD9C0);
  }

  return result;
}

uint64_t sub_1D76BEA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7246776569566461 && a2 == 0xEB00000000656D61 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D7717480 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D7704A30();

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

id sub_1D76BEBC8(uint64_t a1, uint64_t a2)
{

  sub_1D7704320();
  sub_1D77042F0();
  sub_1D769943C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708FD0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DB958];
  v6 = v3;
  v7 = [v4 systemFontOfSize:15.0 weight:v5];
  v8 = sub_1D766844C(0, &qword_1EC9BD098, 0x1E69DB878);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 labelColor];
  *(inited + 104) = sub_1D766844C(0, &qword_1EC9BD2D0, 0x1E69DC888);
  *(inited + 80) = v12;
  sub_1D76ADBA0(inited);
  swift_setDeallocating();
  sub_1D7699494(0);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v14 = sub_1D7704230();

  type metadata accessor for Key(0);
  sub_1D76995E8();
  v15 = sub_1D7704190();

  v16 = [v13 initWithString:v14 attributes:v15];

  return v16;
}

id sub_1D76BEE10(uint64_t a1, uint64_t a2)
{
  sub_1D769943C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708FD0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DB968];
  v6 = v3;
  v7 = [v4 systemFontOfSize:15.0 weight:v5];
  v8 = sub_1D766844C(0, &qword_1EC9BD098, 0x1E69DB878);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 secondaryLabelColor];
  *(inited + 104) = sub_1D766844C(0, &qword_1EC9BD2D0, 0x1E69DC888);
  *(inited + 80) = v12;
  sub_1D76ADBA0(inited);
  swift_setDeallocating();
  sub_1D7699494(0);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v14 = sub_1D7704230();
  type metadata accessor for Key(0);
  sub_1D76995E8();
  v15 = sub_1D7704190();

  v16 = [v13 initWithString:v14 attributes:v15];

  return v16;
}

id sub_1D76BEFFC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D769943C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708FD0;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = objc_opt_self();
  v7 = v5;
  [v6 buttonFontSize];
  v8 = [v6 systemFontOfSize_];
  v9 = sub_1D766844C(0, &qword_1EC9BD098, 0x1E69DB878);
  v10 = MEMORY[0x1E69DB650];
  *(inited + 40) = v8;
  v11 = *v10;
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemBlueColor];
  v15 = v14;
  if (a3)
  {
    v16 = [v14 colorWithAlphaComponent_];

    v15 = v16;
  }

  *(inited + 104) = sub_1D766844C(0, &qword_1EC9BD2D0, 0x1E69DC888);
  *(inited + 80) = v15;
  sub_1D76ADBA0(inited);
  swift_setDeallocating();
  sub_1D7699494(0);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = sub_1D7704230();
  type metadata accessor for Key(0);
  sub_1D76995E8();
  v19 = sub_1D7704190();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

uint64_t PrerollAdProvider.prerollAd(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for PrerollAdPlacement(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76BF34C(a1, v7);
  v8 = v2[5];
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 promotedContentVideo];

  v12 = type metadata accessor for PrerollAd(0);
  sub_1D76BF34C(v7, a2 + *(v12 + 24));
  *a2 = v11;
  v13 = [v11 promotedContentInfo];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D77037A0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  result = sub_1D76BF3B0(v7);
  a2[1] = v15;
  a2[2] = v17;
  return result;
}

uint64_t sub_1D76BF34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrerollAdPlacement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D76BF3B0(uint64_t a1)
{
  v2 = type metadata accessor for PrerollAdPlacement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrerollAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D76BF464@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for PrerollAdPlacement(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D76BF34C(a1, v7);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v12 = [v11 promotedContentVideo];

  v13 = type metadata accessor for PrerollAd(0);
  sub_1D76BF34C(v7, a2 + *(v13 + 24));
  *a2 = v12;
  v14 = [v12 promotedContentInfo];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D77037A0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  result = sub_1D76BF3B0(v7);
  a2[1] = v16;
  a2[2] = v18;
  return result;
}

void *sub_1D76BF5D4(void *a1, void *a2)
{
  v3 = v2;
  sub_1D7667C54(a1, (v2 + 2));
  v2[7] = a2;
  v7 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v8 = objc_opt_self();
  v9 = a2;
  v10 = [v8 sharedAccount];
  v11 = [v10 preferredLanguageCodes];

  v12 = sub_1D7704400();
  v15 = v12;
  v13 = sub_1D7668494();
  AdContextBuilderType.pushData<A>(_:)(&v15, v7, &type metadata for UserAdData, v6, v13);

  __swift_destroy_boxed_opaque_existential_1(a1);

  return v3;
}

uint64_t sub_1D76BF6E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D76BF730(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a4 promotedContentInfo];
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      *(v9 + 24) = v8;
      v10 = v6;
      v11 = v8;
      sub_1D7703750();
    }

    else
    {
    }
  }
}

void sub_1D76BF808(uint64_t a1, void *a2)
{
  v14[3] = &type metadata for AdContentInfo;
  v14[4] = &protocol witness table for AdContentInfo;
  v4 = swift_allocObject();
  v14[0] = v4;
  v4[2] = sub_1D77037A0();
  v4[3] = v5;
  v4[4] = sub_1D77037D0();
  v4[5] = a2;
  v6 = OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_contentInfo;
  swift_beginAccess();
  v7 = a2;
  sub_1D76C1280(v14, a1 + v6);
  swift_endAccess();
  [v7 unfilledReason];
  v8 = sub_1D7703880();
  if (v8 != sub_1D7703880())
  {
    [v7 unfilledReason];
    v9 = sub_1D7703880();
    sub_1D769D8F0();
    v10 = swift_allocError();
    *v11 = v9;
    *(v11 + 8) = 0;
    v14[0] = v10;
    sub_1D76899CC();
    sub_1D77034A0();
    sub_1D7689A20(v14[0]);
  }

  v14[0] = v7;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1D7702E80();

  v13 = *(a1 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_unfilledReasonObserver);
  *(a1 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_unfilledReasonObserver) = v12;
}

double sub_1D76BF9D0(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;

  v6 = v4;
  sub_1D7703750();

  return result;
}

void sub_1D76BFA54(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    [a2 unfilledReason];
    v5 = sub_1D7703880();
    sub_1D769D8F0();
    v6 = swift_allocError();
    *v7 = v5;
    *(v7 + 8) = 0;
    v8 = v6;
    sub_1D76899CC();
    sub_1D77034A0();

    sub_1D7689A20(v8);
  }
}

id sub_1D76BFB50(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_impressionFrame];
  v4 = CGRectGetWidth(*&v1[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_impressionFrame]) - *v3;
  [a1 frame];
  if (CGRectGetWidth(v12) >= v4)
  {
    v5 = *v3;
  }

  else
  {
    [a1 frame];
    v5 = *v3 + (v4 - CGRectGetWidth(v13)) * 0.5;
  }

  v6 = *&v1[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_padding];
  [a1 frame];
  Width = CGRectGetWidth(v14);
  [a1 frame];
  Height = CGRectGetHeight(v15);
  v9 = v6 + Height;
  result = [v1 setFrame_];
  v11 = &v1[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_adFrame];
  *v11 = v5;
  v11[1] = v6;
  v11[2] = Width;
  v11[3] = v9;
  *(v11 + 32) = 0;
  return result;
}

uint64_t sub_1D76BFDC4()
{
  v1 = (*v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_contentInfo);
  swift_beginAccess();
  v2 = v1[3];
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v3 + 8))(v2, v3);
  (*(v5 + 8))(v7, v2);
  return v8;
}

uint64_t sub_1D76BFF28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_contentInfo;
  swift_beginAccess();
  return sub_1D7689274(v3 + v4, a1);
}

double sub_1D76BFFAC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_metricsView);
  sub_1D7703D90();
  v3 = v2;

  return v3;
}

void sub_1D76C0018(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_impressionFrame);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1D76C0138()
{
  v1 = type metadata accessor for BannerAdImpressionInfo(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_contentInfo;
  swift_beginAccess();
  sub_1D7689274(v0 + v4, &v28);
  if (!*(&v29 + 1))
  {
    return sub_1D7689730(&v28);
  }

  sub_1D7667CB8(&v28, v37);
  sub_1D7667C54(v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_tracker, v34);
  v5 = v35;
  v6 = v36;
  v27 = __swift_project_boxed_opaque_existential_1(v34, v35);
  v7 = *(v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_placementIdentifier + 8);
  v26 = *(v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_placementIdentifier);
  sub_1D7667C54(v37, &v28);
  v33 = 0;
  v8 = (v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_adFrame);
  v9 = 0uLL;
  v10 = 0uLL;
  if ((*(v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_adFrame + 32) & 1) == 0)
  {
    v9 = *v8;
    v10 = v8[1];
  }

  v24 = v10;
  v25 = v9;

  sub_1D7703EB0();
  v12 = v11;
  sub_1D7702F40();
  v13 = v38;
  v14 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  LOBYTE(v13) = (*(v14 + 24))(v13, v14);
  v15 = v38;
  v16 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  LOBYTE(v15) = (*(v16 + 32))(v15, v16);
  v18 = v38;
  v17 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v19 = (*(v17 + 40))(v18, v17);
  *v3 = v26;
  *(v3 + 1) = v7;
  v20 = v31;
  *(v3 + 3) = v30;
  *(v3 + 4) = v20;
  *(v3 + 5) = v32;
  v3[96] = v33;
  v21 = v29;
  *(v3 + 1) = v28;
  *(v3 + 2) = v21;
  *(v3 + 120) = v24;
  *(v3 + 104) = v25;
  *(v3 + 17) = v12;
  v22 = &v3[*(v1 + 36)];
  *v22 = v13 & 1;
  v22[1] = v15 & 1;
  v22[2] = v19 & 1;
  (*(v6 + 8))(v3, v5, v6);
  sub_1D76C071C(v3);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t _s7NewsAds17BannerAdViewStateO2eeoiySbAC_ACtFZ_0(void **a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_9:
    sub_1D76C1374(*a2);
    sub_1D7689A20(v2);
    sub_1D7689A20(v3);
    v4 = 1;
    return v4 & 1;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v3 < 3)
  {
LABEL_11:
    sub_1D76C1374(*a2);
    sub_1D76C1374(v2);
    sub_1D7689A20(v2);
    sub_1D7689A20(v3);
    v4 = 0;
    return v4 & 1;
  }

  swift_getErrorValue();
  sub_1D76C1374(v3);
  sub_1D76C1374(v2);
  sub_1D76C1374(v3);
  sub_1D76C1374(v2);
  v6 = sub_1D7704A80();
  v8 = v7;
  swift_getErrorValue();
  if (v6 == sub_1D7704A80() && v8 == v9)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D7704A30();
  }

  sub_1D7689A20(v3);
  sub_1D7689A20(v2);
  sub_1D7689A20(v2);
  sub_1D7689A20(v3);
  return v4 & 1;
}

uint64_t get_enum_tag_for_layout_string_7NewsAds17BannerAdViewStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D76C063C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76C0698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D76C071C(uint64_t a1)
{
  v2 = type metadata accessor for BannerAdImpressionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1D76C0778(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  v21 = MEMORY[0x1E69E7CA8];
  sub_1D76C1160(0, &qword_1EE0B0818, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8768]);
  v90 = v22;
  v89 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v84 - v23;
  v24 = &v9[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_adFrame];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v25 = &v9[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_contentInfo];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  v26 = OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_state;
  v92[0] = 0;
  sub_1D76C1160(0, &qword_1EE0B0888, &type metadata for BannerAdViewState, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v9[v26] = sub_1D7703470();
  v27 = OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_onLongPress;
  sub_1D76C1160(0, &qword_1EE0B0810, v21 + 8, MEMORY[0x1E69D8770]);
  *&v10[v27] = [objc_allocWithZone(v28) init];
  *&v10[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_promotedContentInfoObserver] = 0;
  *&v10[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_unfilledReasonObserver] = 0;
  v29 = &v10[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_placementIdentifier];
  *v29 = a1;
  *(v29 + 1) = a2;
  *&v10[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_metricsView] = a3;
  v91 = a4;
  sub_1D7667C54(a4, &v10[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_tracker]);
  v30 = &v10[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_impressionFrame];
  *v30 = a5;
  v30[1] = a6;
  v30[2] = a7;
  v30[3] = a8;
  *&v10[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_padding] = a9;
  v31 = a3;
  v32 = &off_1E84DE000;
  [v31 frame];
  v93.receiver = v10;
  v93.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v93, sel_initWithFrame_);
  v34 = qword_1EE0AF008;
  v35 = v33;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = qword_1EE0AF010;
  sub_1D76C11B0(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7709050;
  v38 = *&v35[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_placementIdentifier];
  v39 = *&v35[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_placementIdentifier + 8];
  v40 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  v87 = sub_1D7668854();
  *(v37 + 64) = v87;
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v41 = &v35[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_contentInfo];
  swift_beginAccess();
  v42 = *(v41 + 3);
  v86 = v41;
  if (v42)
  {
    v43 = *(v41 + 4);
    v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v84 = &v84;
    v45 = *(v42 - 8);
    v85 = v36;
    v46 = v45;
    MEMORY[0x1EEE9AC00](v44);
    v48 = &v84 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v48);
    v49 = v31;
    v50 = *(v43 + 8);

    v51 = v43;
    v40 = MEMORY[0x1E69E6158];
    v52 = v50(v42, v51);
    v31 = v49;
    v32 = &off_1E84DE000;
    v53 = v52;
    v55 = v54;
    (*(v46 + 8))(v48, v42);
    v36 = v85;
  }

  else
  {

    v55 = 0xE700000000000000;
    v53 = 0x6E776F6E6B6E75;
  }

  v56 = v87;
  *(v37 + 96) = v40;
  *(v37 + 104) = v56;
  *(v37 + 72) = v53;
  *(v37 + 80) = v55;
  v57 = [v31 ready];
  v58 = MEMORY[0x1E69E63A8];
  *(v37 + 136) = MEMORY[0x1E69E6370];
  *(v37 + 144) = v58;
  *(v37 + 112) = v57;
  v59 = sub_1D77045A0();
  sub_1D7703ED0("Creating metrics view, placement=%{public}@, contentIdentifier=%{public}@, isReady=%d", 85, 2, &dword_1D7662000, v36, v59, v37);

  [v31 v32[294]];
  sub_1D7704630();
  [v31 setFrame_];
  [v35 addSubview_];
  v60 = v35;
  sub_1D7703DC0();
  sub_1D76C1218();
  sub_1D7703DE0();
  if ([v31 ready])
  {
    sub_1D7703E30();

    v92[0] = [v31 ready];
    sub_1D76899CC();
    sub_1D77034A0();
  }

  else
  {
    v61 = [v31 promotedContentInfo];
    if (!v61)
    {
      goto LABEL_13;
    }

    v62 = v61;
    [v61 unfilledReason];
    v63 = sub_1D7703880();
    if (v63 == sub_1D7703880())
    {

      goto LABEL_13;
    }

    [v62 unfilledReason];
    v64 = sub_1D7703880();
    sub_1D769D8F0();
    v65 = swift_allocError();
    *v66 = v64;
    *(v66 + 8) = 0;
    v92[0] = v65;
    sub_1D76899CC();
    sub_1D77034A0();
  }

  sub_1D7689A20(v92[0]);
LABEL_13:
  v67 = [v31 promotedContentInfo];
  if (v67)
  {
    v68 = v67;
    v92[3] = &type metadata for AdContentInfo;
    v92[4] = &protocol witness table for AdContentInfo;
    v69 = swift_allocObject();
    v92[0] = v69;
    v69[2] = sub_1D77037A0();
    v69[3] = v70;
    v69[4] = sub_1D77037D0();
    v69[5] = v68;
    v71 = v86;
    swift_beginAccess();
    sub_1D76C1280(v92, v71);
    swift_endAccess();
  }

  v92[0] = v31;
  swift_getKeyPath();
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = v31;
  v74 = v31;
  v75 = sub_1D7702E80();

  v76 = *&v60[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_promotedContentInfoObserver];
  *&v60[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_promotedContentInfoObserver] = v75;

  v77 = *&v60[OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_onLongPress];
  v78 = v89;
  v79 = v88;
  v80 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x1E69D8760], v90);
  v81 = v77;
  v82 = sub_1D7704010();

  __swift_destroy_boxed_opaque_existential_1(v91);
  (*(v78 + 8))(v79, v80);
  return v60;
}

void sub_1D76C1008()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_adFrame;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = v0 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_contentInfo;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  v4 = OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_state;
  sub_1D76C1160(0, &qword_1EE0B0888, &type metadata for BannerAdViewState, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v4) = sub_1D7703470();
  v5 = OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_onLongPress;
  sub_1D76C1160(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(v1 + v5) = [objc_allocWithZone(v6) init];
  *(v1 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_promotedContentInfoObserver) = 0;
  *(v1 + OBJC_IVAR____TtC7NewsAds19BannerAdMetricsView_unfilledReasonObserver) = 0;
  sub_1D7704860();
  __break(1u);
}

void sub_1D76C1160(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D76C11B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7665328(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D76C1218()
{
  result = qword_1EE0AF9F0;
  if (!qword_1EE0AF9F0)
  {
    type metadata accessor for BannerAdMetricsView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF9F0);
  }

  return result;
}

uint64_t sub_1D76C1280(uint64_t a1, uint64_t a2)
{
  sub_1D76C11B0(0, &qword_1EE0AFCD8, &qword_1EE0AFCE0, &protocol descriptor for AdContentInfoType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{

  return swift_deallocObject();
}

id sub_1D76C1374(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t FeedBannerAdPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedBannerAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedBannerAdPlacement(0) + 20);
  v4 = sub_1D77038B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedBannerAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedBannerAdPlacement(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1D76C14C8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D77044F0();
  if (!v19)
  {
    return sub_1D7704440();
  }

  v41 = v19;
  v45 = sub_1D7704830();
  v32 = sub_1D7704840();
  sub_1D77047E0();
  result = sub_1D77044E0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1D7704520();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1D7704820();
      result = sub_1D7704500();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D76C18E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D76C196C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D76C19B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76C1A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v52 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v12 = *(v11 + 88);
  v13 = *(v11 + 96);
  v15 = v14;
  v48 = v14;
  v47 = v12;
  v59[3] = type metadata accessor for AdSegment(0, v12, v13, v16);
  v59[4] = &protocol witness table for AdSegment<A>;
  v59[0] = v15;
  v17 = *(v6 + 16);
  v17(v10, a1, a3);
  v18 = *(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v12;
  *(v19 + 3) = a3;
  *(v19 + 4) = v51;
  v20 = *(v6 + 32);
  v45 = v6 + 32;
  v46 = v20;
  v20(&v19[(v18 + 40) & ~v18], v10, a3);
  v21 = swift_allocObject();
  v22 = v50;
  swift_weakInit();
  v23 = v49;
  v17(v49, v52, a3);
  v24 = (v18 + 48) & ~v18;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = v47;
  *(v26 + 3) = a3;
  v27 = v51;
  *(v26 + 4) = v51;
  *(v26 + 5) = v21;
  v28 = v48;
  v46(&v26[v24], v23, a3);
  *&v26[v25] = v28;
  v59[5] = sub_1D76C2660;
  v59[6] = v19;
  v29 = v27;
  v59[7] = sub_1D76C26E8;
  v59[8] = v26;
  v30 = *(v22 + 64);
  v53 = a3;
  v54 = v27;
  v55 = v22;
  v56 = v28;
  v57 = v59;
  v58[0] = v30;
  sub_1D7703390();
  swift_retain_n();

  sub_1D7703580();

  if (qword_1EE0AE9A0 != -1)
  {
    swift_once();
  }

  v31 = qword_1EE0AE9A8;
  sub_1D7669474(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7708FD0;
  v33 = *(v28 + 16);
  v34 = *(v28 + 24);
  v35 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D7668854();
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  v37 = 0x65746176697270;
  if (*(v28 + 32))
  {
    v37 = 0x63696C627570;
  }

  v38 = 0xE700000000000000;
  if (*(v28 + 32))
  {
    v38 = 0xE600000000000000;
  }

  *(v32 + 96) = v35;
  *(v32 + 104) = v36;
  *(v32 + 64) = v36;
  *(v32 + 72) = v37;
  *(v32 + 80) = v38;

  v39 = sub_1D77045A0();
  sub_1D7703ED0("Registering provider for segment=%{public}@, scope=%{public}@", 61, 2, &dword_1D7662000, v31, v39, v32);

  (*(v29 + 24))(a3, v29);
  sub_1D7669BD8();
  v40 = sub_1D77045F0();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  v42[2] = a3;
  v42[3] = v29;
  v42[4] = v41;
  v42[5] = v28;

  sub_1D77034C0();

  v43 = __swift_destroy_boxed_opaque_existential_1(v58);
  sub_1D76C24A4(v43);
  return sub_1D76C430C(v59);
}

uint64_t sub_1D76C1F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = sub_1D76C2050(a2, a3, a4, a5);

    return v9;
  }

  else
  {
    sub_1D76C4C6C();
    swift_allocError();
    sub_1D76C4CC0(0, &qword_1EE0AEA58, &type metadata for AdSegmentManager.SegmentUpdate, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036D0();
  }
}

uint64_t sub_1D76C2050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v23 = *(v10 + 88);
  v11 = v23;
  v24 = v12;
  v25 = v13;
  v26 = v9;
  sub_1D77044B0();
  sub_1D7703720();
  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v11;
  *(v15 + 3) = a3;
  v16 = v22;
  *(v15 + 4) = v22;
  (*(v7 + 32))(&v15[v14], &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *&v15[(v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  sub_1D7703690();

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = v16;
  v17[4] = a2;

  v18 = sub_1D7703620();
  v19 = sub_1D77036C0();

  return v19;
}

uint64_t sub_1D76C2290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_1D76C4394(a3, v6);
  swift_beginAccess();

  sub_1D76EEB4C(v6, v3, v4);
  return swift_endAccess();
}

double sub_1D76C2308(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v4)
    {
      if (qword_1EE0AE9A0 != -1)
      {
        swift_once();
      }

      v6 = qword_1EE0AE9A8;
      sub_1D7669474(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D7708FD0;
      v9 = *(a3 + 16);
      v8 = *(a3 + 24);
      v10 = MEMORY[0x1E69E6158];
      *(v7 + 56) = MEMORY[0x1E69E6158];
      v11 = sub_1D7668854();
      *(v7 + 32) = v9;
      *(v7 + 40) = v8;
      v12 = 0x65746176697270;
      if (*(a3 + 32))
      {
        v12 = 0x63696C627570;
      }

      v13 = 0xE700000000000000;
      if (*(a3 + 32))
      {
        v13 = 0xE600000000000000;
      }

      *(v7 + 96) = v10;
      *(v7 + 104) = v11;
      *(v7 + 64) = v11;
      *(v7 + 72) = v12;
      *(v7 + 80) = v13;

      v14 = sub_1D77045A0();
      sub_1D7703ED0("Segment provider needs updating, segment=%{public}@, scope=%{public}@", 69, 2, &dword_1D7662000, v6, v14, v7);

      sub_1D76C24A4(v15);
    }
  }

  return result;
}

void sub_1D76C24A4(uint64_t a1)
{
  if (qword_1EE0AE9A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0AE9A8;
  v3 = sub_1D77045A0();
  sub_1D7703ED0("Enqueuing update", 16, 2, &dword_1D7662000, v2, v3, MEMORY[0x1E69E7CC0]);
  v4 = *(v1 + 80);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = *(v1 + 88);
  v7 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1D76C433C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D769D7C4;
  v11[3] = &block_descriptor_6;
  v8 = _Block_copy(v11);

  v9 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:v6];
  _Block_release(v8);
  v10 = *(v1 + 80);
  *(v1 + 80) = v9;
}

uint64_t sub_1D76C2660()
{
  (*(*(v0 + 32) + 24))();
  sub_1D77034B0();

  return v2;
}

uint64_t sub_1D76C2764(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v9 = *a1;
  (*(a5 + 24))(a4, a5);
  sub_1D77034D0();

  v28[3] = v8;
  v28[4] = &protocol witness table for AdSegment<A>;
  v28[0] = a3;
  v27[0] = v9;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a3;
  v10 = sub_1D77044B0();

  WitnessTable = swift_getWitnessTable();
  v12 = MEMORY[0x1E69E6158];
  v14 = sub_1D76C14C8(sub_1D76C4DD8, v26, v10, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);
  v28[5] = v14;
  if (qword_1EE0AE9A0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE0AE9A8;
  sub_1D7669474(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7709050;
  v18 = a3[2];
  v17 = a3[3];
  *(v16 + 56) = v12;
  v19 = sub_1D7668854();
  *(v16 + 32) = v18;
  *(v16 + 40) = v17;
  v20 = 0x65746176697270;
  if (*(a3 + 32))
  {
    v20 = 0x63696C627570;
  }

  v21 = 0xE700000000000000;
  if (*(a3 + 32))
  {
    v21 = 0xE600000000000000;
  }

  *(v16 + 96) = v12;
  *(v16 + 104) = v19;
  *(v16 + 64) = v19;
  *(v16 + 72) = v20;
  *(v16 + 80) = v21;
  sub_1D76C4CC0(0, &qword_1EE0AED80, v12, MEMORY[0x1E69E62F8]);
  *(v16 + 136) = v22;
  *(v16 + 144) = sub_1D76C448C(&qword_1EE0AED68, &qword_1EE0AED80, v12, MEMORY[0x1E6969E28]);
  *(v16 + 112) = v14;

  v23 = sub_1D77045A0();
  sub_1D7703ED0("Updated segments for segment=%{public}@, scope=%{public}@, values=%@", 68, 2, &dword_1D7662000, v15, v23, v16);

  sub_1D76C4B9C(v28, v27);
  sub_1D76C4CC0(0, &qword_1EE0AEA58, &type metadata for AdSegmentManager.SegmentUpdate, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v24 = sub_1D77036E0();
  sub_1D76C4BD4(v28);
  return v24;
}

void sub_1D76C2ABC(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v5 = a1[2];
  v6 = a1[3];

  MEMORY[0x1DA6FF0D0](58, 0xE100000000000000);
  v4 = (*(*(v3 + 96) + 8))(*(v3 + 88));
  MEMORY[0x1DA6FF0D0](v4);

  *a2 = v5;
  a2[1] = v6;
}

double sub_1D76C2B80(uint64_t a1, uint64_t a2)
{
  if (qword_1EE0AE9A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0AE9A8;
  v4 = sub_1D7704590();
  sub_1D7669474(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7709050;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D7668854();
  v10 = v9;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v11 = 0x65746176697270;
  if (*(a2 + 32))
  {
    v11 = 0x63696C627570;
  }

  v12 = 0xE700000000000000;
  if (*(a2 + 32))
  {
    v12 = 0xE600000000000000;
  }

  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  swift_getErrorValue();

  v13 = sub_1D7704A80();
  *(v5 + 136) = v8;
  *(v5 + 144) = v10;
  *(v5 + 112) = v13;
  *(v5 + 120) = v14;
  sub_1D7703ED0("Segment provider failed, segment=%{public}@, scope=%{public}@, error: %{public}@", 80, 2, &dword_1D7662000, v3, v4, v5);

  return result;
}

double sub_1D76C2D20(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D77040D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7704110();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v18 = v6;
    v19 = v3;
    if (qword_1EE0AE9A0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE0AE9A8;
    v14 = sub_1D77045A0();
    sub_1D7703ED0("Timer completed, determining scopes", 35, 2, &dword_1D7662000, v13, v14, MEMORY[0x1E69E7CC0]);
    v21 = *(v12 + 64);
    sub_1D7703390();
    sub_1D76C4C04(0, qword_1EE0AE5E8, MEMORY[0x1E69E5E28]);

    sub_1D7703580();

    v15 = aBlock[0];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v12;
    aBlock[4] = sub_1D76C438C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7672F74;
    aBlock[3] = &block_descriptor_18;
    v17 = _Block_copy(aBlock);

    sub_1D77040F0();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D7689834();
    sub_1D7669474(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D76898F0();
    sub_1D77046E0();
    MEMORY[0x1DA6FF3D0](0, v9, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v7 + 8))(v9, v18);
  }

  return result;
}

void sub_1D76C30D4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1D76C4394(*(a1 + 56) + 72 * v11, v30);
    v29[0] = v13;
    v29[1] = v14;
    v15 = v33;

    if (v15(v16))
    {
      v17 = v31;
      v18 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v18 + 16))(&v28, v17, v18);
      v19 = v28;
      sub_1D76C43CC(v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D768C89C(0, *(v8 + 2) + 1, 1, v8);
      }

      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1D768C89C((v20 > 1), v21 + 1, 1, v8);
        v22 = v21 + 1;
        v8 = v23;
      }

      *(v8 + 2) = v22;
      v8[v21 + 32] = v19;
    }

    else
    {
      sub_1D76C43CC(v29);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v29[0] = v8;
  sub_1D76C4CC0(0, &qword_1EE0AE5D8, &type metadata for AdSegmentScope, MEMORY[0x1E69E62F8]);
  sub_1D76C448C(&qword_1EE0AE5D0, &qword_1EE0AE5D8, &type metadata for AdSegmentScope, MEMORY[0x1E69E6328]);
  sub_1D76AE024();
  v24 = sub_1D7704330();

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v24 + 32);
    do
    {
      v27 = *v26++;
      LOBYTE(v29[0]) = v27;
      sub_1D76C3394(v29);
      --v25;
    }

    while (v25);
  }
}

void sub_1D76C3394(unsigned __int8 *a1)
{
  LODWORD(v2) = *a1;
  if (qword_1EE0AE9A0 != -1)
  {
LABEL_53:
    swift_once();
  }

  v3 = qword_1EE0AE9A8;
  sub_1D7669474(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_1D7708FE0;
  v58 = v2;
  v6 = v2 == 0;
  if (v2)
  {
    v7 = 0x63696C627570;
  }

  else
  {
    v7 = 0x65746176697270;
  }

  if (v6)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D7668854();
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  v9 = sub_1D77045A0();
  sub_1D7703ED0("Processing update for scope=%{public}@", 38, 2, &dword_1D7662000, v3, v9, v5);

  swift_beginAccess();
  v57 = v1;
  v10 = v1[7];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v2 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v15 = v2;
    if (!v13)
    {
      break;
    }

LABEL_15:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = v16 | (v2 << 6);
    v18 = (*(v10 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    sub_1D76C4394(*(v10 + 56) + 72 * v17, v69);
    v68[0] = v19;
    v68[1] = v20;
    v21 = *(&v70 + 1);
    v1 = v71;

    if (v21(v22))
    {
      sub_1D76C43CC(v68);
    }

    else
    {
      swift_beginAccess();
      if (*(v57[9] + 16) && (sub_1D76B88A4(v58), (v23 & 1) != 0))
      {
        swift_endAccess();
        v60 = v19;
        v61 = v20;

        sub_1D77035E0();

        if (v67)
        {
          v24 = v67;
        }

        else
        {
          v24 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        swift_endAccess();
        v24 = MEMORY[0x1E69E7CC0];
      }

      sub_1D76C43CC(v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1D768C9A8(0, v56[2] + 1, 1, v56);
      }

      v26 = v56[2];
      v25 = v56[3];
      v1 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v56 = sub_1D768C9A8((v25 > 1), v26 + 1, 1, v56);
      }

      v56[2] = v1;
      v56[v26 + 4] = v24;
    }
  }

  while (1)
  {
    v2 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
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
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v2 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v2);
    ++v15;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  MEMORY[0x1EEE9AC00](v27);

  sub_1D76C497C(v28, sub_1D76C44E4);
  v30 = v29;

  v31 = *(v30 + 16);
  if (v31)
  {
    v67 = MEMORY[0x1E69E7CC0];
    v1 = &v67;
    sub_1D77047F0();
    v59 = v30 + 64;
    v32 = sub_1D77046F0();
    v2 = 0;
    v33 = *(v30 + 36);
    while ((v32 & 0x8000000000000000) == 0 && v32 < 1 << *(v30 + 32))
    {
      v34 = v32 >> 6;
      if ((*(v59 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
      {
        goto LABEL_48;
      }

      if (v33 != *(v30 + 36))
      {
        goto LABEL_49;
      }

      v35 = v31;
      v36 = (*(v30 + 48) + 16 * v32);
      v37 = *v36;
      v38 = v36[1];
      sub_1D76C4394(*(v30 + 56) + 72 * v32, v69);
      v60 = v37;
      v61 = v38;
      v66 = v72;
      v64 = v70;
      v65 = v71;
      v62 = v69[0];
      v63 = v69[1];
      v39 = *(&v71 + 1);

      v39(v40);
      sub_1D76C43CC(&v60);
      sub_1D77047C0();
      sub_1D7704800();
      sub_1D7704810();
      sub_1D77047D0();
      v1 = (1 << *(v30 + 32));
      if (v32 >= v1)
      {
        goto LABEL_50;
      }

      v41 = *(v59 + 8 * v34);
      if ((v41 & (1 << v32)) == 0)
      {
        goto LABEL_51;
      }

      if (v33 != *(v30 + 36))
      {
        goto LABEL_52;
      }

      v31 = v35;
      v42 = v41 & (-2 << (v32 & 0x3F));
      if (v42)
      {
        v1 = (__clz(__rbit64(v42)) | v32 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v43 = v34 << 6;
        v44 = v34 + 1;
        v45 = (v30 + 72 + 8 * v34);
        while (v44 < (v1 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_1D76B812C(v32, v33, 0);
            v1 = (__clz(__rbit64(v46)) + v43);
            goto LABEL_31;
          }
        }

        sub_1D76B812C(v32, v33, 0);
      }

LABEL_31:
      ++v2;
      v32 = v1;
      if (v2 == v35)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_47;
  }

LABEL_45:

  MEMORY[0x1EEE9AC00](v48);
  v49 = MEMORY[0x1E69E62F8];
  sub_1D76C4CC0(0, &qword_1EE0AE5C8, &type metadata for AdSegmentManager.SegmentUpdate, MEMORY[0x1E69E62F8]);
  sub_1D7703720();

  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v58;
  *(v51 + 32) = v56;
  sub_1D76C4CC0(0, &qword_1EE0AED80, MEMORY[0x1E69E6158], v49);
  sub_1D77036A0();

  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v58;
  v54 = sub_1D7703620();
  sub_1D76C4CC0(0, &qword_1EE0AE598, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  sub_1D77036A0();

  *(swift_allocObject() + 16) = v58;
  v55 = sub_1D7703620();
  sub_1D77036C0();
}

uint64_t sub_1D76C3C50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((*(a3 + 40))(a1, a2))
  {
    v6 = *(a3 + 24);
    v7 = *(a3 + 32);
    __swift_project_boxed_opaque_existential_1(a3, v6);
    (*(v7 + 16))(&v15, v6, v7);
    if (v15)
    {
      v8 = 0x63696C627570;
    }

    else
    {
      v8 = 0x65746176697270;
    }

    if (v15)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (a4)
    {
      v10 = 0x63696C627570;
    }

    else
    {
      v10 = 0x65746176697270;
    }

    if (a4)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_1D7704A30();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1D76C3D54(uint64_t *a1@<X0>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v39 = *a1;
  v6 = *(*a1 + 16);
  if (v6)
  {
    v8 = v39 + 32;
    swift_beginAccess();
    v9 = v6;
    do
    {
      sub_1D76C4B9C(v8, v40);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        swift_beginAccess();
        if (*(*(v11 + 72) + 16) && (sub_1D76B88A4(a3 & 1), (v12 & 1) != 0))
        {
          swift_endAccess();

          v14 = v41;
          v13 = v42;
          __swift_project_boxed_opaque_existential_1(v40, v41);
          (*(v13 + 8))(v14, v13);
          v44 = v43;

          sub_1D77035F0();
        }

        else
        {
          swift_endAccess();
        }
      }

      sub_1D76C4BD4(v40);
      v8 += 48;
      --v9;
    }

    while (v9);
  }

  v15 = *(a4 + 16);
  if (!v15)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_28:
    if (!v6)
    {
      v28 = MEMORY[0x1E69E7CC0];
LABEL_46:
      v40[0] = v17;
      sub_1D7669540(v28);
      *a5 = v40[0];
      return;
    }

    v27 = v39 + 32;
    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D76C4B9C(v27, v40);
      v29 = v43;

      sub_1D76C4BD4(v40);
      v30 = *(v29 + 16);
      v31 = *(v28 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v32 <= *(v28 + 3) >> 1)
      {
        if (!*(v29 + 16))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v28 = sub_1D7669634(isUniquelyReferenced_nonNull_native, v34, 1, v28);
        if (!*(v29 + 16))
        {
LABEL_30:

          if (v30)
          {
            goto LABEL_50;
          }

          goto LABEL_31;
        }
      }

      if ((*(v28 + 3) >> 1) - *(v28 + 2) < v30)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v35 = *(v28 + 2);
        v25 = __OFADD__(v35, v30);
        v36 = v35 + v30;
        if (v25)
        {
          goto LABEL_54;
        }

        *(v28 + 2) = v36;
      }

LABEL_31:
      v27 += 48;
      if (!--v6)
      {
        goto LABEL_46;
      }
    }
  }

  v16 = (a4 + 32);
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = *v16;
    v19 = *(*v16 + 16);
    v20 = *(v17 + 2);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    if (v22 && v21 <= *(v17 + 3) >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v17 = sub_1D7669634(v22, v23, 1, v17);
      if (!*(v18 + 16))
      {
LABEL_12:

        if (v19)
        {
          goto LABEL_48;
        }

        goto LABEL_13;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v19)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v24 = *(v17 + 2);
      v25 = __OFADD__(v24, v19);
      v26 = v24 + v19;
      if (v25)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v26;
    }

LABEL_13:
    ++v16;
    if (!--v15)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1D76C40F0(uint64_t *a1@<X0>, char a3@<W2>, BOOL *a4@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    v8 = a3 & 1;
    sub_1D76FE020(v6, &v8);
  }

  *a4 = Strong == 0;
}

double sub_1D76C4188(uint64_t a1, char a2)
{
  if (qword_1EE0AE9A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0AE9A8;
  v4 = sub_1D7704590();
  sub_1D7669474(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1D7708FD0;
  if (a2)
  {
    v7 = 0x63696C627570;
  }

  else
  {
    v7 = 0x65746176697270;
  }

  if (a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D7668854();
  v6[8] = v10;
  v6[4] = v7;
  v6[5] = v8;
  swift_getErrorValue();
  v11 = sub_1D7704A80();
  v6[12] = v9;
  v6[13] = v10;
  v6[9] = v11;
  v6[10] = v12;
  sub_1D7703ED0("Processing segments failed for scope, scope=%{public}@, error: %{public}@", 73, 2, &dword_1D7662000, v3, v4, v6);

  return result;
}

double sub_1D76C4344@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 56);

  return result;
}

uint64_t sub_1D76C43CC(uint64_t a1)
{
  sub_1D76C4428();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D76C4428()
{
  if (!qword_1EE0AE5E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0AE5E0);
    }
  }
}

uint64_t sub_1D76C448C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D76C4CC0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D76C44EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D76C4800(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D76C457C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D76C4C04(0, &qword_1EE0AE5B0, MEMORY[0x1E69E6EC8]);
  result = sub_1D77048B0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1D76C4394(v17 + 72 * v16, v38);
    v35 = v38[2];
    v36 = v38[3];
    v37 = v39;
    v33 = v38[0];
    v34 = v38[1];
    sub_1D7704AD0();

    sub_1D77042D0();
    result = sub_1D7704AF0();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    v30 = *(v9 + 56) + 72 * v24;
    *(v30 + 32) = v35;
    *(v30 + 48) = v36;
    *(v30 + 64) = v37;
    *v30 = v33;
    *(v30 + 16) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1D76C4800(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *, __n128))
{
  v23 = a4;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1D76C4394(*(a3 + 56) + 72 * v14, v22);

    LOBYTE(v16) = (v23)(v16, v17, v22);
    sub_1D76C430C(v22);

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1D76C457C(a1, a2, v21, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1D76C497C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _BYTE *, __n128))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1D76C44EC(v9, v6, v4, a2);
      MEMORY[0x1DA700080](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1D76C4800(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_1D76C4AFC(uint64_t a1)
{
  v1 = sub_1D7703620();
  v2 = sub_1D7703590();

  return v2;
}

void sub_1D76C4C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, ValueMetadata *, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], &type metadata for AdSegmentManager.ProviderContainer, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D76C4C6C()
{
  result = qword_1EC9BDA20;
  if (!qword_1EC9BDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA20);
  }

  return result;
}

void sub_1D76C4CC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D76C4E0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D76C4E54(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1D76C4EB4()
{
  result = qword_1EC9BDA28;
  if (!qword_1EC9BDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA28);
  }

  return result;
}

uint64_t ContentBannerAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D76C5008(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for ContentBannerAdProvider();
  sub_1D7667C54(a1, v5);
  v3 = swift_allocObject();
  sub_1D767FBE4(v5, v3 + 16);
  v4 = sub_1D77033F0();

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsAds14AdPolicyResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D76C5110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76C5160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1D76C51BC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t NativeAdPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NativeAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdPlacement(0) + 20);
  v4 = sub_1D77038B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NativeAdPlacement(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t NativeAdPlacement.init(placementIdentifier:insertionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for NativeAdPlacement(0);
  v9 = *(v8 + 20);
  *&a4[v9] = 1;
  v10 = *MEMORY[0x1E69C6030];
  v11 = sub_1D77038B0();
  result = (*(*(v11 - 8) + 104))(&a4[v9], v10, v11);
  *a4 = a1;
  *(a4 + 1) = a2;
  a4[*(v8 + 24)] = v7;
  return result;
}

void SponsorshipAdType.adKeywords.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
    }

    else if (v1)
    {
      v4 = [v1 adTargetingKeywords];
      if (v4)
      {
        v5 = v4;
        sub_1D7704400();
      }
    }
  }

  else
  {
    v2 = [v1 adTargetingKeywords];
    if (v2)
    {
      v3 = v2;
      sub_1D7704400();
    }

    sub_1D7669540(v6);
  }
}

uint64_t SponsorshipAdType.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v11 = 0x646165687473616DLL;
      v9 = MastheadSponsorship.description.getter();
      MEMORY[0x1DA6FF0D0](v9);

      return v11;
    }

    v11 = 0x2864657461727563;
    v2 = MEMORY[0x1E69E6158];
  }

  else
  {
    v3 = *(v0 + 8);
    v11 = 677863796;
    v4 = [v1 identifier];
    v5 = sub_1D7704260();
    v7 = v6;

    MEMORY[0x1DA6FF0D0](v5, v7);

    MEMORY[0x1DA6FF0D0](8236, 0xE200000000000000);
    v2 = MEMORY[0x1E69E6158];
    v1 = v3;
  }

  v8 = MEMORY[0x1DA6FF1E0](v1, v2);
  MEMORY[0x1DA6FF0D0](v8);

  MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
  return v11;
}

uint64_t sub_1D76C560C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1D76C5748(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D76C58FC()
{

  return swift_deallocClassInstance();
}

void *sub_1D76C5968()
{
  *(v0 + 16) = 0;
  if (qword_1EE0B0BF8 != -1)
  {
    swift_once();
  }

  sub_1D76C60CC();
  swift_allocObject();

  *(v0 + 24) = sub_1D7703160();
  swift_allocObject();

  *(v0 + 32) = sub_1D7703160();
  sub_1D76C6124(0);
  swift_allocObject();

  *(v0 + 40) = sub_1D7703160();
  return v0;
}

void sub_1D76C5AB0(void (*a1)(char *, _UNKNOWN **, uint64_t), float a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D76894A8(0x1000001uLL);
  if (v6 != 0x1000000)
  {
    if (vcvts_n_f32_u32(v6, 0x18uLL) >= a2)
    {
      goto LABEL_3;
    }

LABEL_7:

    sub_1D7703140();

    v10[0] = v10[1];
    v8 = objc_allocWithZone(type metadata accessor for DebugInterstitialAdView());
    v9 = sub_1D768487C(v10);
    a1(v9, &off_1F524F220, 0);

    return;
  }

  if (a2 > 1.0)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1D76C6078();
  v7 = swift_allocError();
  a1(v7, 0, 1);
}

uint64_t sub_1D76C5BE0(void (*a1)(char *, _UNKNOWN **, uint64_t), uint64_t a2)
{
  v5 = sub_1D77040D0();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7704110();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D7704130();
  v23 = *(v27 - 8);
  v11 = MEMORY[0x1EEE9AC00](v27);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;

  sub_1D7703140();

  v16 = *aBlock;

  sub_1D7703140();

  v17 = *aBlock;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v2;
  if (v16 <= 0.0)
  {
    sub_1D7669BD8();

    v19 = sub_1D77045F0();
    sub_1D7704120();
    sub_1D7704150();
    v23 = *(v23 + 8);
    (v23)(v13, v27);
    aBlock[4] = sub_1D76C6068;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7672F74;
    aBlock[3] = &block_descriptor_7;
    v20 = _Block_copy(aBlock);

    sub_1D77040F0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D76857A4(&qword_1EE0AEDA8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D7672E60(0);
    sub_1D76857A4(&qword_1EE0AED88, sub_1D7672E60, MEMORY[0x1E69E6328]);
    sub_1D77046E0();
    MEMORY[0x1DA6FF3A0](v15, v10, v7, v20);
    _Block_release(v20);

    (*(v26 + 8))(v7, v5);
    (*(v24 + 8))(v10, v25);
    (v23)(v15, v27);
  }

  else
  {

    sub_1D76C5AB0(a1, v17, a2, v2);
  }

  type metadata accessor for AdPendingLoadToken();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t sub_1D76C6078()
{
  result = qword_1EC9BDA30;
  if (!qword_1EC9BDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA30);
  }

  return result;
}

void sub_1D76C60CC()
{
  if (!qword_1EE0B0910)
  {
    v0 = sub_1D7703150();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0910);
    }
  }
}

void sub_1D76C6124(uint64_t a1)
{
  if (!qword_1EE0B0920)
  {
    sub_1D76C6180();
    v1 = sub_1D7703150();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0B0920);
    }
  }
}

unint64_t sub_1D76C6180()
{
  result = qword_1EE0AF6F0;
  if (!qword_1EE0AF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF6F0);
  }

  return result;
}

unint64_t sub_1D76C61E8()
{
  result = qword_1EC9BDA38;
  if (!qword_1EC9BDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA38);
  }

  return result;
}

char *FeedBannerAdProvider.adView(for:placementIdentifier:padding:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v17 = sub_1D7702FA0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v8[7] + 16) == 1)
  {
    sub_1D7702F90();
    v21 = sub_1D7702F70();
    v23 = v22;
    (*(v18 + 8))(v20, v17);

    sub_1D7703140();

    v24 = *v36;

    sub_1D7703140();

    v25 = *v36;

    sub_1D7703140();

    HIBYTE(v35) = v36[0];
    v26 = objc_allocWithZone(type metadata accessor for DebugBannerAdView());
    return sub_1D7687E1C(v21, v23, &v35 + 7, v24, v25, a6, a7);
  }

  else
  {
    v28 = v8[5];
    v29 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v28);
    v30 = *(v29 + 8);

    v31 = v30(v28, v29);
    v32 = [v31 promotedContentViewOfType:0 size:1 startsCollapsed:a6 position:{a7, a4, a5, a6, a7}];

    sub_1D7667C54(a3, v36);
    v33 = objc_allocWithZone(type metadata accessor for BannerAdMetricsView());
    v34 = sub_1D76C0778(a1, a2, v32, v36, a4, a5, a6, a7, a8);

    return v34;
  }
}

uint64_t FeedBannerAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t FeedBannerAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

NewsAds::AdLayout __swiftcall AdLayout.init(position:size:)(CGPoint position, CGSize size)
{
  *v2 = position.x;
  v2[1] = position.y;
  v2[2] = size.width;
  v2[3] = size.height;
  result.size.height = size.height;
  result.size.width = size.width;
  result.position.y = position.y;
  result.position.x = position.x;
  return result;
}

uint64_t sub_1D76C65B8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7704260();
  }

  sub_1D7668808();
  result = sub_1D77046A0();
  qword_1EE0AE9A8 = result;
  return result;
}

uint64_t sub_1D76C668C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7704260();
  }

  sub_1D7668808();
  result = sub_1D77046A0();
  qword_1EE0AE8C0 = result;
  return result;
}

uint64_t AdSegment.key.getter()
{
  v0 = sub_1D76C6B04();

  return v0;
}

uint64_t AdSegment.__allocating_init(key:scope:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v7;
  return result;
}

uint64_t AdSegment.init(key:scope:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  return v3;
}

uint64_t AdSegment.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D76C6AA4()
{
  v0 = sub_1D76C6B04();

  return v0;
}

uint64_t static Ads.native.getter()
{
  sub_1D766C68C(0);

  return swift_initStaticObject();
}

uint64_t static Ads.Article.preroll.getter()
{
  sub_1D766C598(0);

  return swift_initStaticObject();
}

uint64_t static Ads.Content.banner.getter()
{
  sub_1D766AF78(0);

  return swift_initStaticObject();
}

uint64_t static Ads.Content.recipeBanner.getter()
{
  sub_1D766BC30(0);

  return swift_initStaticObject();
}

uint64_t static Ads.Feed.banner.getter()
{
  sub_1D766BCE8(0);

  return swift_initStaticObject();
}

uint64_t static Ads.Feed.preroll.getter()
{
  sub_1D766BFD8(0);

  return swift_initStaticObject();
}

uint64_t static Ads.Interstitial.article.getter()
{
  sub_1D766BE64(0);

  return swift_initStaticObject();
}

uint64_t static Ads.Interstitial.preview.getter()
{
  sub_1D766C4A4(0);

  return swift_initStaticObject();
}

void VisibleAdPolicy.validatePlacement(_:in:)(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = a1[2];
  v7 = a1[3];
  v16.origin.x = UIEdgeInsetsInsetRect(a2[3], a2[4], a2[1], a2[2], a2[11], a2[12]);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v15.x = v6;
  v15.y = v7;
  if (CGRectContainsPoint(v16, v15) || (v17.origin.x = x, v17.origin.y = y, v17.size.width = width, v17.size.height = height, CGRectGetMinY(v17) == v7) || (v18.origin.x = x, v18.origin.y = y, v18.size.width = width, v18.size.height = height, CGRectGetMaxY(v18) == v7))
  {
    sub_1D76B8844();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7708FE0;
    type metadata accessor for CGRect(0);

    v13 = sub_1D77042B0();
    *(v12 + 72) = MEMORY[0x1E69E6158];
    *(v12 + 48) = v13;
    *(v12 + 56) = v14;
    *(v12 + 32) = 0x74726F7077656956;
    *(v12 + 40) = 0xE800000000000000;
    *a3 = v5;
    *(a3 + 8) = v4;
    *(a3 + 16) = v6;
    *(a3 + 24) = v7;
    *(a3 + 32) = 258;
    *(a3 + 40) = 0xD00000000000002BLL;
    *(a3 + 48) = 0x80000001D7717B30;
    *(a3 + 56) = v12;
  }

  else
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t PrerollAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D76C7104(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for PrerollAdProvider();
  sub_1D7667C54(a1, v5);
  v3 = swift_allocObject();
  sub_1D767FBE4(v5, v3 + 16);
  v4 = sub_1D77033F0();

  if (!v4)
  {
    __break(1u);
  }
}

double ContentBannerAdContext.userData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t ContentBannerAdContext.articleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v9 = *(v1 + 56);
  v10 = v3;
  v11 = *(v1 + 88);
  v4 = v11;
  v8[0] = *(v1 + 24);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_1D768DF4C(v8, &v7);
}

uint64_t ContentBannerAdContext.channelData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v7[0] = *(v1 + 104);
  v7[1] = v2;
  v4 = *(v1 + 152);
  v8 = *(v1 + 136);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D7690E7C(v7, &v6);
}

double ContentBannerAdContext.issueData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

double ContentBannerAdContext.sectionData.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = *(v1 + 192);
  a1[1] = v2;

  return result;
}

uint64_t ContentBannerAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v4 = *(v1 + 272);
  v10 = *(v1 + 256);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 288);
  v6 = *(v1 + 224);
  v9[0] = *(v1 + 208);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D76C73A0(v9, v8, &qword_1EE0B0468, &type metadata for FeedAdData);
}

uint64_t ContentBannerAdContext.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = *(v1 + 360);
  v3 = *(v1 + 344);
  v9 = *(v1 + 328);
  v2 = v9;
  v10 = v3;
  v4 = *(v1 + 312);
  v8[0] = *(v1 + 296);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 64) = v11;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D76C73A0(v8, v7, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
}

uint64_t sub_1D76C73A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7666F64(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double ContentBannerAdContext.anfDocumentData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 376);

  return result;
}

double ContentBannerAdContext.anfComponentData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 384);

  return result;
}

double ContentBannerAdContext.campaignData.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 400);
  *a1 = *(v1 + 392);
  a1[1] = v2;

  return result;
}

double ContentBannerAdContext.recipeData.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[51];
  v3 = v1[52];
  v4 = v1[53];
  v5 = v1[54];
  v6 = v1[55];
  v7 = v1[56];
  v8 = v1[57];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1D76C7460(v2, v3);
}

double sub_1D76C7460(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void ContentBannerAdContext.init(provider:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v7 = v50;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
    v132 = v50;
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    AdContextDataProviding.data<A>(for:)(&type metadata for CreativeAdData, v10, &type metadata for CreativeAdData, v11);
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    AdContextDataProviding.data<A>(for:)(&type metadata for ArticleAdData, v12, &type metadata for ArticleAdData, v13);
    *(&v131[1] + 7) = v109;
    *(&v131[2] + 7) = v110;
    *(&v131[3] + 7) = v111;
    *(&v131[4] + 7) = v112;
    *(v131 + 7) = v108;
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    AdContextDataProviding.data<A>(for:)(&type metadata for ChannelAdData, v14, &type metadata for ChannelAdData, v15);
    v127 = v104;
    v128 = v105;
    v129 = v106;
    v130 = v107;
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v16, &type metadata for IssueAdData, v17);
    v47 = *(&v50 + 1);
    v48 = v50;
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v18, &type metadata for SectionAdData, v19);
    v44 = *v51;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedAdData, v20, &type metadata for FeedAdData, v21);
    v121 = v100;
    v122 = v101;
    v123 = v102;
    v124 = v103;
    v119 = v98;
    v120 = v99;
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedGroupAdData, v22, &type metadata for FeedGroupAdData, v23);
    v116 = v95;
    v117 = v96;
    v118 = v97;
    v115 = v94;
    v114 = v93;
    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v24, &type metadata for ReferralAdData, v25);
    LOBYTE(v9) = v50;
    v43 = a2;
    v26 = v50;
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ANFDocumentAdData, v27, &type metadata for ANFDocumentAdData, v28);
    v46 = v50;
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ANFComponentAdData, v29, &type metadata for ANFComponentAdData, v30);
    v45 = v50;
    v31 = a1[3];
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v31);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for CampaignAdData, v31, &type metadata for CampaignAdData, v32);
    v33 = v50;
    v34 = a1[3];
    v35 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v34);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for RecipeAdData, v34, &type metadata for RecipeAdData, v35);
    v41 = v90;
    v42 = v89;
    v39 = v91;
    v40 = *(&v90 + 1);
    v37 = v92;
    v38 = *(&v91 + 1);
    v36 = *(&v92 + 1);
    LOBYTE(__src[0]) = v50;
    *(&__src[0] + 1) = v50;
    LOBYTE(__src[1]) = v50;
    *(&__src[3] + 1) = v131[2];
    *(&__src[4] + 1) = v131[3];
    *(&__src[5] + 1) = v131[4];
    *&__src[6] = *(&v112 + 1);
    *(&__src[1] + 1) = v131[0];
    *(&__src[2] + 1) = v131[1];
    *(&__src[6] + 8) = v104;
    *(&__src[7] + 8) = v105;
    *(&__src[8] + 8) = v106;
    *(&__src[9] + 8) = v107;
    *(&__src[10] + 8) = v50;
    WORD4(__src[11]) = *v51;
    __src[12] = v50;
    __src[16] = v101;
    __src[17] = v102;
    __src[13] = v98;
    __src[14] = v99;
    __src[15] = v100;
    *(&__src[20] + 8) = v95;
    *(&__src[21] + 8) = v96;
    *(&__src[18] + 8) = v93;
    *(&__src[19] + 8) = v94;
    *&__src[18] = v103;
    *(&__src[22] + 1) = v97;
    LOBYTE(__src[23]) = v50;
    *(&__src[23] + 1) = v50;
    *&__src[24] = v50;
    *(&__src[24] + 8) = v50;
    *(&__src[25] + 1) = v89;
    __src[26] = v90;
    __src[27] = v91;
    __src[28] = v92;
    memcpy(v43, __src, 0x1D0uLL);
    sub_1D76C7F8C(__src, &v50);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v50) = v7;
    *(&v50 + 1) = v132;
    v51[0] = v9;
    v53 = v131[2];
    v54 = v131[3];
    *v55 = v131[4];
    *&v51[1] = v131[0];
    v52 = v131[1];
    v59 = v130;
    v58 = v129;
    v57 = v128;
    v56 = v127;
    *&v55[15] = *(&v131[4] + 15);
    v60 = v48;
    v61 = v47;
    v62 = v44;
    v63 = v125;
    v64 = v126;
    v65 = v46;
    v69 = v122;
    v70 = v123;
    v67 = v120;
    v68 = v121;
    v66 = v119;
    v74 = v116;
    v75 = v117;
    v72 = v114;
    v73 = v115;
    v71 = v124;
    v76 = v118;
    v77 = v26;
    *v78 = *v113;
    *&v78[3] = *&v113[3];
    v79 = v46;
    v80 = v45;
    v81 = v33;
    v82 = v42;
    v83 = v41;
    v84 = v40;
    v85 = v39;
    v86 = v38;
    v87 = v37;
    v88 = v36;
    sub_1D76C7FC4(&v50);
  }
}

uint64_t sub_1D76C7FF4(char a1)
{
  result = 0x61746144707061;
  switch(a1)
  {
    case 1:
      v3 = 1919251317;
      return v3 | 0x6174614400000000;
    case 2:
      return 0x6576697461657263;
    case 3:
      return 0x44656C6369747261;
    case 4:
      return 0x446C656E6E616863;
    case 5:
      v4 = 0x446575737369;
      goto LABEL_18;
    case 6:
      return 0x446E6F6974636573;
    case 7:
      v3 = 1684366694;
      return v3 | 0x6174614400000000;
    case 8:
      v4 = 0x4470756F7267;
LABEL_18:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 9:
      result = 0x6C61727265666572;
      break;
    case 10:
      result = 0x6D75636F44666E61;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6E676961706D6163;
      break;
    case 13:
      result = 0x6144657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D76C8178@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76CA788(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76C81AC(uint64_t a1)
{
  v2 = sub_1D76C8ACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76C81E8(uint64_t a1)
{
  v2 = sub_1D76C8ACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContentBannerAdContext.encode(to:)(void *a1)
{
  sub_1D76C9968(0, &qword_1EC9BDA40, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  LODWORD(v50) = *v1;
  v49 = *(v1 + 1);
  v48 = v1[16];
  v8 = *(v1 + 40);
  v9 = *(v1 + 72);
  v87 = *(v1 + 56);
  v88 = v9;
  v10 = *(v1 + 88);
  v85 = *(v1 + 24);
  v86 = v8;
  v11 = *(v1 + 104);
  v12 = *(v1 + 120);
  v89 = v10;
  v90 = v11;
  v13 = *(v1 + 136);
  v14 = *(v1 + 152);
  v91 = v12;
  v92 = v13;
  v93 = v14;
  v15 = *(v1 + 22);
  v47 = *(v1 + 21);
  v45 = *(v1 + 92);
  v16 = *(v1 + 25);
  *&v43 = *(v1 + 24);
  *(&v43 + 1) = v16;
  v44 = v15;
  v17 = *(v1 + 16);
  v96 = *(v1 + 15);
  v97 = v17;
  v98 = *(v1 + 17);
  v99 = *(v1 + 36);
  v18 = *(v1 + 14);
  v94 = *(v1 + 13);
  v95 = v18;
  v104 = *(v1 + 45);
  v19 = *(v1 + 344);
  v102 = *(v1 + 328);
  v103 = v19;
  v20 = *(v1 + 312);
  v100 = *(v1 + 296);
  v101 = v20;
  v42 = v1[368];
  v21 = *(v1 + 47);
  v40 = *(v1 + 48);
  v41 = v21;
  v22 = *(v1 + 50);
  v38 = *(v1 + 49);
  v39 = v22;
  v23 = *(v1 + 52);
  v46 = *(v1 + 51);
  v24 = *(v1 + 53);
  v36 = *(v1 + 54);
  v37 = v24;
  v25 = *(v1 + 56);
  v35 = *(v1 + 55);
  v33 = v23;
  v34 = v25;
  v26 = *(v1 + 57);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76C8ACC();
  sub_1D7704B10();
  LOBYTE(v68) = v50;
  LOBYTE(v66[0]) = 0;
  sub_1D7669D40();
  v27 = v51;
  sub_1D7704A00();
  if (v27)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v28 = v48;
  v51 = v26;
  v29 = v46;
  v30 = v47;
  *&v68 = v49;
  LOBYTE(v66[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  LOBYTE(v68) = v28;
  LOBYTE(v66[0]) = 2;
  sub_1D76AA188();
  sub_1D7704A00();
  v82 = v87;
  v83 = v88;
  v84 = v89;
  v80 = v85;
  v81 = v86;
  v109 = 3;
  sub_1D768DF4C(&v85, &v68);
  sub_1D768E278();
  sub_1D7704A00();
  v50 = v5;
  v79[2] = v82;
  v79[3] = v83;
  v79[4] = v84;
  v79[0] = v80;
  v79[1] = v81;
  sub_1D768DF84(v79);
  v75 = v90;
  v76 = v91;
  v77 = v92;
  v78 = v93;
  v108 = 4;
  sub_1D7690E7C(&v90, &v68);
  sub_1D769220C();
  sub_1D7704A00();
  v74[0] = v75;
  v74[1] = v76;
  v74[2] = v77;
  v74[3] = v78;
  sub_1D76917F0(v74);
  *&v68 = v30;
  *(&v68 + 1) = v44;
  LOWORD(v69) = v45;
  LOBYTE(v66[0]) = 5;
  sub_1D76922B4();

  sub_1D77049B0();

  v68 = v43;
  LOBYTE(v66[0]) = 6;
  sub_1D7692308();

  sub_1D77049B0();

  v70 = v96;
  v71 = v97;
  v72 = v98;
  v73 = v99;
  v68 = v94;
  v69 = v95;
  v107 = 7;
  sub_1D76C73A0(&v94, v66, &qword_1EE0B0468, &type metadata for FeedAdData);
  sub_1D766CFCC();
  sub_1D77049B0();
  v66[2] = v70;
  v66[3] = v71;
  v66[4] = v72;
  v67 = v73;
  v66[0] = v68;
  v66[1] = v69;
  sub_1D76939B0(v66, &qword_1EE0B0468, &type metadata for FeedAdData);
  v63 = v102;
  v64 = v103;
  v65 = v104;
  v61 = v100;
  v62 = v101;
  v106 = 8;
  sub_1D76C73A0(&v100, v59, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  sub_1D7692260();
  sub_1D77049B0();
  v59[2] = v63;
  v59[3] = v64;
  v60 = v65;
  v59[0] = v61;
  v59[1] = v62;
  sub_1D76939B0(v59, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  LOBYTE(v52) = v42;
  v105 = 9;
  sub_1D768A434();
  sub_1D77049B0();
  v52 = v41;
  v105 = 10;
  sub_1D76A0B24();

  v50 = v4;
  sub_1D77049B0();

  v52 = v40;
  v105 = 11;
  sub_1D76C8B20();

  sub_1D77049B0();

  v52 = v38;
  v53 = v39;
  v105 = 12;
  sub_1D76C8B74();

  sub_1D77049B0();

  v52 = v29;
  v53 = v33;
  v54 = v37;
  v55 = v36;
  v56 = v35;
  v57 = v34;
  v58 = v51;
  v105 = 13;
  sub_1D76C7460(v29, v33);
  sub_1D76AD1F8();
  sub_1D77049B0();
  sub_1D76C8BC8(v52, v53, v54, v55, v56, v57, v58);
  return (*(v5 + 8))(v7, v50);
}

unint64_t sub_1D76C8ACC()
{
  result = qword_1EC9BDA48;
  if (!qword_1EC9BDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA48);
  }

  return result;
}

unint64_t sub_1D76C8B20()
{
  result = qword_1EC9BDA50;
  if (!qword_1EC9BDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA50);
  }

  return result;
}

unint64_t sub_1D76C8B74()
{
  result = qword_1EC9BDA58;
  if (!qword_1EC9BDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA58);
  }

  return result;
}

double sub_1D76C8BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

void ContentBannerAdContext.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76C9968(0, &qword_1EC9BDA60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[3];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D76C8ACC();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    v11 = v7;
    v12 = a2;
    LOBYTE(v40[0]) = 0;
    sub_1D7669CEC();
    sub_1D7704970();
    v13 = v41;
    LOBYTE(v40[0]) = 1;
    sub_1D76684E8();
    sub_1D7704970();
    v39 = v41;
    LOBYTE(v40[0]) = 2;
    sub_1D76AA9D0();
    sub_1D7704970();
    v14 = v41;
    v102 = 3;
    sub_1D768E224();
    sub_1D7704970();
    v38 = v14;
    *&v126[23] = v104;
    *&v126[39] = v105;
    *&v126[55] = v106;
    *&v126[71] = v107;
    *&v126[7] = v103;
    v97 = 4;
    sub_1D7692D44();
    sub_1D7704970();
    v122 = v98;
    v123 = v99;
    v124 = v100;
    v125 = v101;
    LOBYTE(v40[0]) = 5;
    sub_1D7692DEC();
    sub_1D7704920();
    v35 = v11;
    v33 = v41;
    v37 = v42;
    v15 = *v43;
    LOBYTE(v40[0]) = 6;
    sub_1D7692E40();
    sub_1D7704920();
    v32 = v15;
    v16 = v41;
    v36 = v42;
    v90 = 7;
    sub_1D766CDD0();
    sub_1D7704920();
    v31 = v16;
    v17 = v33;
    v116 = v93;
    v117 = v94;
    v118 = v95;
    v119 = v96;
    v114 = v91;
    v115 = v92;
    v84 = 8;
    sub_1D7692D98();
    sub_1D7704920();
    v111 = v87;
    v112 = v88;
    v113 = v89;
    v110 = v86;
    v109 = v85;
    LOBYTE(v40[0]) = 9;
    sub_1D768AAE4();
    sub_1D7704920();
    v30 = v41;
    LOBYTE(v40[0]) = 10;
    sub_1D76A0AD0();
    sub_1D7704920();
    v35 = v41;
    LOBYTE(v40[0]) = 11;
    sub_1D76C99CC();
    sub_1D7704920();
    v34 = v41;
    LOBYTE(v40[0]) = 12;
    sub_1D76C9A20();
    sub_1D7704920();
    v28 = v41;
    v29 = v42;
    v79 = 13;
    sub_1D76AD1A4();
    sub_1D7704920();
    (*(v11 + 8))(v9, v6);
    v25 = v81;
    v26 = v80;
    v23 = v82;
    v24 = *(&v81 + 1);
    v21 = v83;
    v22 = *(&v82 + 1);
    v20 = *(&v83 + 1);
    v27 = v13;
    LOBYTE(v40[0]) = v13;
    *(v40 + 1) = v127[0];
    DWORD1(v40[0]) = *(v127 + 3);
    *(&v40[0] + 1) = v39;
    LOBYTE(v40[1]) = v38;
    *(&v40[1] + 1) = *v126;
    *(&v40[2] + 1) = *&v126[16];
    *&v40[6] = *&v126[79];
    *(&v40[5] + 1) = *&v126[64];
    *(&v40[4] + 1) = *&v126[48];
    *(&v40[3] + 1) = *&v126[32];
    *(&v40[9] + 8) = v125;
    *(&v40[6] + 8) = v122;
    *(&v40[7] + 8) = v123;
    *(&v40[8] + 8) = v124;
    v18 = v36;
    *(&v40[10] + 1) = v17;
    *&v40[11] = v37;
    LOWORD(v13) = v32;
    WORD4(v40[11]) = v32;
    HIWORD(v40[11]) = v121;
    *(&v40[11] + 10) = v120;
    *&v40[12] = v31;
    *(&v40[12] + 1) = v36;
    v40[13] = v114;
    v40[14] = v115;
    v40[16] = v117;
    v40[17] = v118;
    v40[15] = v116;
    *(&v40[20] + 8) = v111;
    *(&v40[21] + 8) = v112;
    *(&v40[18] + 8) = v109;
    *(&v40[19] + 8) = v110;
    *&v40[18] = v119;
    *(&v40[22] + 1) = v113;
    LOBYTE(v40[23]) = v30;
    *(&v40[23] + 1) = *v108;
    DWORD1(v40[23]) = *&v108[3];
    v19 = v35;
    *(&v40[23] + 1) = v35;
    *&v40[24] = v34;
    *(&v40[24] + 1) = v28;
    *&v40[25] = v29;
    *(&v40[25] + 1) = v80;
    v40[26] = v81;
    v40[27] = v82;
    v40[28] = v83;
    memcpy(v12, v40, 0x1D0uLL);
    sub_1D76C7F8C(v40, &v41);
    __swift_destroy_boxed_opaque_existential_1(v128);
    LOBYTE(v41) = v27;
    *(&v41 + 1) = v127[0];
    HIDWORD(v41) = *(v127 + 3);
    v42 = v39;
    v43[0] = v38;
    v45 = *&v126[32];
    v46 = *&v126[48];
    *v47 = *&v126[64];
    *&v43[1] = *v126;
    v44 = *&v126[16];
    *&v47[23] = v122;
    *&v47[39] = v123;
    *&v47[55] = v124;
    *&v47[71] = v125;
    *&v47[15] = *&v126[79];
    v48 = v17;
    v49 = v37;
    v50 = v13;
    v51 = v120;
    v52 = v121;
    v53 = v31;
    v54 = v18;
    v55 = v114;
    v56 = v115;
    v58 = v117;
    v59 = v118;
    v57 = v116;
    v63 = v111;
    v64 = v112;
    v61 = v109;
    v62 = v110;
    v60 = v119;
    v65 = v113;
    v66 = v30;
    *v67 = *v108;
    *&v67[3] = *&v108[3];
    v68 = v19;
    v69 = v34;
    v70 = v28;
    v71 = v29;
    v72 = v26;
    v73 = v25;
    v74 = v24;
    v75 = v23;
    v76 = v22;
    v77 = v21;
    v78 = v20;
    sub_1D76C7FC4(&v41);
  }
}

void sub_1D76C9968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76C8ACC();
    v7 = a3(a1, &type metadata for ContentBannerAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76C99CC()
{
  result = qword_1EC9BDA68;
  if (!qword_1EC9BDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA68);
  }

  return result;
}

unint64_t sub_1D76C9A20()
{
  result = qword_1EC9BDA70;
  if (!qword_1EC9BDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA70);
  }

  return result;
}

id ContentBannerAdContext.newsSupplementalContext.getter()
{
  v41 = sub_1D77038A0();
  v1 = *(v41 - 8);
  v2 = MEMORY[0x1EEE9AC00](v41);
  v42 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v40 - v4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 72);
  v69 = *(v0 + 56);
  v70 = v7;
  v8 = *(v0 + 88);
  v67 = *(v0 + 24);
  v68 = v6;
  v9 = *(v0 + 104);
  v10 = *(v0 + 120);
  v71 = v8;
  v72 = v9;
  v11 = *(v0 + 136);
  v12 = *(v0 + 152);
  v73 = v10;
  v74 = v11;
  v75 = v12;
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 200);
  v40[0] = *(v0 + 192);
  v40[1] = v13;
  v44 = v16;
  v81 = *(v0 + 288);
  v17 = *(v0 + 272);
  v79 = *(v0 + 256);
  v80 = v17;
  v18 = *(v0 + 240);
  v77 = *(v0 + 224);
  v78 = v18;
  v76 = *(v0 + 208);
  v19 = *(v0 + 296);
  v20 = *(v0 + 312);
  v21 = *(v0 + 328);
  v22 = *(v0 + 344);
  v85 = *(v0 + 360);
  v83 = v21;
  v84 = v22;
  v82[0] = v19;
  v82[1] = v20;
  v45 = *(v0 + 368);
  v23 = *(v0 + 384);
  v46 = *(v0 + 376);
  v47 = v23;
  v24 = *(v0 + 400);
  v43 = *(v0 + 392);
  v48 = v24;
  v25 = objc_allocWithZone(sub_1D7703D00());

  sub_1D768DF4C(&v67, &v55);
  sub_1D7690E7C(&v72, &v55);

  sub_1D76C73A0(v82, &v55, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  v26 = [v25 init];
  sub_1D7703CF0();
  sub_1D7703B50();

  sub_1D7703C00();

  sub_1D7703AE0();
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v55 = v67;
  v56 = v68;
  sub_1D768DF4C(&v67, &v49);
  sub_1D7690E7C(&v72, &v49);
  sub_1D76B9740(&v55, &v61, v27);
  v65[0] = v61;
  v65[1] = v62;
  v65[2] = v63;
  v65[3] = v64;
  sub_1D76939B0(v65, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  v66[2] = v57;
  v66[3] = v58;
  v66[4] = v59;
  v66[0] = v55;
  v66[1] = v56;
  sub_1D76939B0(v66, &qword_1EE0B0300, &type metadata for ArticleAdData);
  sub_1D76917F0(&v72);
  sub_1D768DF84(&v67);
  if (v14)
  {

    sub_1D7703AD0();
    v28 = *(v1 + 104);
    v29 = *MEMORY[0x1E69C5F50];
    v30 = *MEMORY[0x1E69C5F58];
    v31 = v15;
    if (v15)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    v33 = v41;
    v28(v5, v32, v41);
    sub_1D7703B80();
    if ((v31 & 0x100) != 0)
    {
      v34 = v29;
    }

    else
    {
      v34 = v30;
    }

    v28(v42, v34, v33);
    sub_1D7703BE0();
  }

  if (v44 && *(&v76 + 1))
  {
    if ((BYTE8(v77) & 1) != 0 || v77 >= 1)
    {
    }

    sub_1D7703C10();
  }

  v51 = v78;
  v52 = v79;
  v53 = v80;
  v54 = v81;
  v49 = v76;
  v50 = v77;
  sub_1D76C73A0(&v76, &v55, &qword_1EE0B0468, &type metadata for FeedAdData);
  sub_1D768078C(&v49);
  v57 = v51;
  v58 = v52;
  v59 = v53;
  v60 = v54;
  v55 = v49;
  v56 = v50;
  sub_1D76939B0(&v55, &qword_1EE0B0468, &type metadata for FeedAdData);
  if (*(&v82[0] + 1))
  {
    v35 = *(&v83 + 1);

    sub_1D7703A50();

    sub_1D7703A80();

    sub_1D7703A90();

    sub_1D77039C0();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1D7703AC0();
    sub_1D76939B0(v82, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
    v36 = v45;
    if (v45 <= 1)
    {
      v37 = v47;
    }

    else
    {
      v37 = v47;
      if (v45 != 2)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v36 = v45;
    v37 = v47;
    if (v45 > 2)
    {
LABEL_18:
      if (v36 != 3)
      {
        goto LABEL_24;
      }
    }
  }

  sub_1D7703AF0();
  sub_1D768ABAC();
  sub_1D7704680();
  sub_1D7703C70();
LABEL_24:
  if (v46)
  {

    sub_1D7703CB0();
  }

  v38 = v48;
  if (v37)
  {

    sub_1D7703B90();
  }

  if (v38)
  {

    sub_1D7703B70();
  }

  return v26;
}

uint64_t ContentBannerAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = v0[1];
  v9 = v0[10];
  v29 = v0[9];
  v10 = v0[52];
  if (v10)
  {
    v28 = v9;
    v11 = v0[51];
    v12 = v0[53];
    v13 = v0[54];
    v15 = v0[55];
    v14 = v0[56];
    v16 = v0[57];
    if (v16)
    {
      v26 = v0[57];
      v27 = v14;
      v17 = v14;
    }

    else
    {
      v17 = v0[56];
      if (v8[2])
      {
        v18 = v8[4];
        v26 = v8[5];
        v27 = v18;
      }

      else
      {
        v26 = 0xE200000000000000;
        v27 = 28261;
      }
    }

    v25 = v17;

    sub_1D76C7460(v11, v10);

    sub_1D7702FC0();
    sub_1D7702FB0();
    v24 = v12;
    (*(v2 + 8))(v7, v1);
    sub_1D7703780();
    v30 = v13;

    sub_1D7669540(v19);
    v30 = v15;

    sub_1D7669540(v20);
    v21 = sub_1D7703770();
    sub_1D76C8BC8(v11, v10, v24, v13, v15, v25, v16);
    return v21;
  }

  else
  {
    if (!v0[12] && v8[2])
    {
    }

    sub_1D7702FC0();
    sub_1D7702FB0();
    (*(v2 + 8))(v5, v1);
    sub_1D7703780();

    return sub_1D7703770();
  }
}

uint64_t sub_1D76CA430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t sub_1D76CA478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentBannerAdContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentBannerAdContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D76CA684()
{
  result = qword_1EC9BDA78;
  if (!qword_1EC9BDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA78);
  }

  return result;
}

unint64_t sub_1D76CA6DC()
{
  result = qword_1EC9BDA80;
  if (!qword_1EC9BDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA80);
  }

  return result;
}

unint64_t sub_1D76CA734()
{
  result = qword_1EC9BDA88;
  if (!qword_1EC9BDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA88);
  }

  return result;
}

uint64_t sub_1D76CA788(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697461657263 && a2 == 0xEC00000061746144 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D75636F44666E61 && a2 == 0xEF61746144746E65 || (sub_1D7704A30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7717B90 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_1D7704A30() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

NewsAds::ReferralAdData::Origin_optional __swiftcall ReferralAdData.Origin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReferralAdData.Origin.rawValue.getter()
{
  v1 = 7107189;
  v2 = 0x746567646977;
  if (*v0 != 2)
  {
    v2 = 0x6163696669746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x7474656C7377656ELL;
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

uint64_t sub_1D76CAD00()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76CADC4(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76CAE74(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76CAF40(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7107189;
  v4 = 0xE600000000000000;
  v5 = 0x746567646977;
  if (*v1 != 2)
  {
    v5 = 0x6163696669746F6ELL;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 0x7474656C7377656ELL;
    v2 = 0xEA00000000007265;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_1D76CB09C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D76CB120(uint64_t a1)
{
  v2 = sub_1D76CB2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76CB15C(uint64_t a1)
{
  v2 = sub_1D76CB2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReferralAdData.encode(to:)(void *a1)
{
  sub_1D76CB534(0, &qword_1EC9BDA90, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76CB2F4();
  sub_1D7704B10();
  v11 = v8;
  sub_1D76CB348();
  sub_1D7704A00();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76CB2F4()
{
  result = qword_1EC9BDA98;
  if (!qword_1EC9BDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDA98);
  }

  return result;
}

unint64_t sub_1D76CB348()
{
  result = qword_1EC9BDAA0;
  if (!qword_1EC9BDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAA0);
  }

  return result;
}

uint64_t ReferralAdData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D76CB534(0, &qword_1EC9BDAA8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76CB2F4();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76CB598();
    sub_1D7704970();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76CB534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76CB2F4();
    v7 = a3(a1, &type metadata for ReferralAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76CB598()
{
  result = qword_1EC9BDAB0;
  if (!qword_1EC9BDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAB0);
  }

  return result;
}

unint64_t sub_1D76CB5F0()
{
  result = qword_1EC9BDAB8;
  if (!qword_1EC9BDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAB8);
  }

  return result;
}

unint64_t sub_1D76CB644(uint64_t a1)
{
  *(a1 + 8) = sub_1D768AAE4();
  result = sub_1D768A434();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76CB6D8()
{
  result = qword_1EC9BDAC0;
  if (!qword_1EC9BDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAC0);
  }

  return result;
}

unint64_t sub_1D76CB730()
{
  result = qword_1EC9BDAC8;
  if (!qword_1EC9BDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAC8);
  }

  return result;
}

unint64_t sub_1D76CB788()
{
  result = qword_1EC9BDAD0;
  if (!qword_1EC9BDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAD0);
  }

  return result;
}

unint64_t sub_1D76CB7DC()
{
  result = qword_1EC9BDAD8;
  if (!qword_1EC9BDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAD8);
  }

  return result;
}

void AdPolicyLayoutEnvironment.content(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  v27 = MEMORY[0x1E69E7CD0];
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
LABEL_6:
    v15 = v14;
    goto LABEL_10;
  }

LABEL_7:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 64 + 8 * v15);
    ++v14;
    if (v12)
    {
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(*(v9 + 48) + v17);
      v19 = *(*(v9 + 56) + 8 * v17);
      v20 = *(v19 + 16);

      v21 = v19 + 56;
      v22 = -v20;
      v23 = -1;
      do
      {
        if (v22 + v23 == -1)
        {

          v14 = v15;
          if (!v12)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        if (++v23 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v24 = v21 + 32;
        v28.origin.x = a1;
        v28.origin.y = a2;
        v28.size.width = a3;
        v28.size.height = a4;
        v25 = CGRectIntersectsRect(*(v21 - 24), v28);
        v21 = v24;
      }

      while (!v25);

      sub_1D76CC4DC(&v26, v18);
      v14 = v15;
      if (v12)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_18:
  __break(1u);
}

void AdPolicyLayoutEnvironment.rects(for:)(unsigned __int8 *a1)
{
  if (*(*v1 + 16))
  {
    sub_1D76B87A4(*a1);
    if (v2)
    {
    }
  }
}

BOOL static AdPolicyContentType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 <= 0x3F)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t AdPolicyContentType.hash(into:)()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      v3 = 0;
      return MEMORY[0x1DA6FF8B0](v3);
    }

    v1 &= 0x3Fu;
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1DA6FF8B0](v2);
  v3 = v1;
  return MEMORY[0x1DA6FF8B0](v3);
}

uint64_t AdPolicyContentType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  if (!(v1 >> 6))
  {
    v3 = 1;
    goto LABEL_5;
  }

  v2 = 0;
  if (v1 >> 6 == 1)
  {
    v1 &= 0x3Fu;
    v3 = 2;
LABEL_5:
    MEMORY[0x1DA6FF8B0](v3);
    v2 = v1;
  }

  MEMORY[0x1DA6FF8B0](v2);
  return sub_1D7704AF0();
}

BOOL sub_1D76CBB90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t sub_1D76CBBF0()
{
  v1 = *v0;
  sub_1D7704AD0();
  if (!(v1 >> 6))
  {
    v3 = 1;
    goto LABEL_5;
  }

  v2 = 0;
  if (v1 >> 6 == 1)
  {
    v1 &= 0x3Fu;
    v3 = 2;
LABEL_5:
    MEMORY[0x1DA6FF8B0](v3);
    v2 = v1;
  }

  MEMORY[0x1DA6FF8B0](v2);
  return sub_1D7704AF0();
}

uint64_t sub_1D76CBC64()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      v3 = 0;
      return MEMORY[0x1DA6FF8B0](v3);
    }

    v1 &= 0x3Fu;
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1DA6FF8B0](v2);
  v3 = v1;
  return MEMORY[0x1DA6FF8B0](v3);
}

uint64_t sub_1D76CBCC0(uint64_t a1)
{
  v2 = *v1;
  sub_1D7704AD0();
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v2 &= 0x3Fu;
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1DA6FF8B0](v3);
  v4 = v2;
LABEL_7:
  MEMORY[0x1DA6FF8B0](v4);
  return sub_1D7704AF0();
}

void AdPolicyLayoutEnvironment.addContent(_:frame:)(unsigned __int8 *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = *a1;
  v12 = *v5;
  if (*(v12 + 16) && (v13 = sub_1D76B87A4(*a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1D768C9C4(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1D768C9C4((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[32 * v17];
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v6;
  *v6 = 0x8000000000000000;
  sub_1D76CC208(v15, v11, isUniquelyReferenced_nonNull_native);
  *v6 = v20;
}

int8x16_t *AdPolicyContentType.AdState.init(bannerState:)@<X0>(int8x16_t *result@<X0>, char *a2@<X8>)
{
  if (result[5].i8[0])
  {
    if (result[5].i8[0] == 1)
    {
      result = sub_1D76749B8(result);
      v3 = 2;
    }

    else
    {
      v4 = vorrq_s8(vorrq_s8(result[1], result[3]), vorrq_s8(result[2], result[4]));
      v3 = (*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | result->i64[1] | result->i64[0]) != 0;
    }
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1(result);
    v3 = 3;
  }

  *a2 = v3;
  return result;
}

void sub_1D76CBEEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D76689AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D76E305C(v16, a4 & 1);
      v11 = sub_1D76689AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1D7704A70();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1D76E4100();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1D76CC068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D76689AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D76E38A4(v16, a4 & 1);
      v11 = sub_1D76689AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1D7704A70();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1D76E4560();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    sub_1D76CD9C8(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 72 * v11;
  *v24 = *a1;
  v25 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = *(a1 + 48);
  *(v24 + 64) = *(a1 + 64);
  *(v24 + 32) = v26;
  *(v24 + 48) = v27;
  *(v24 + 16) = v25;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void sub_1D76CC208(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D76B87A4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D76E3B98(v14, a3 & 1);
      v9 = sub_1D76B87A4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1D7704A70();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D76E4728();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1D76CC354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D76689AC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D76E3E54(v18, a5 & 1);
      v13 = sub_1D76689AC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1D7704A70();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1D76E4A24();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1D76CC4DC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7704AD0();
  v6 = a2 >> 6;
  if (!(a2 >> 6))
  {
    v8 = 1;
    v7 = a2;
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    v7 = a2 & 0x3F;
    v8 = 2;
LABEL_5:
    MEMORY[0x1DA6FF8B0](v8);
    v9 = v7;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  MEMORY[0x1DA6FF8B0](v9);
  v10 = sub_1D7704AF0();
  v11 = -1 << *(v5 + 32);
  v12 = v10 & ~v11;
  if ((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v14 = *(v5 + 48);
      v15 = *(v14 + v12);
      if (v15 >> 6)
      {
        if (v15 >> 6 == 1)
        {
          if (v6 == 1 && ((v15 ^ a2) & 0x3F) == 0)
          {
LABEL_21:
            result = 0;
            LOBYTE(a2) = *(v14 + v12);
            goto LABEL_20;
          }
        }

        else if (a2 == 128)
        {
          goto LABEL_21;
        }
      }

      else if (a2 <= 0x3Fu && v15 == a2)
      {
        result = 0;
        goto LABEL_20;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  sub_1D76CCC60(a2, v12, isUniquelyReferenced_nonNull_native);
  *v2 = v18;
  result = 1;
LABEL_20:
  *a1 = a2;
  return result;
}

uint64_t sub_1D76CC660(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](a2);
  v6 = sub_1D7704AF0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
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
    sub_1D76CCE24(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1D76CC758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D76CDA24(0, &qword_1EE0AECD8, sub_1D76AE438, &type metadata for AdPolicyContentType);
  v4 = sub_1D7704720();
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
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_36;
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

        v28 = 1 << *(v3 + 32);
        if (v28 >= 64)
        {
          bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v28;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_34;
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D7704AD0();
      if (!(v17 >> 6))
      {
        break;
      }

      if (v17 >> 6 == 1)
      {
        v18 = v17 & 0x3F;
        v19 = 2;
LABEL_19:
        MEMORY[0x1DA6FF8B0](v19);
        goto LABEL_21;
      }

      v18 = 0;
LABEL_21:
      MEMORY[0x1DA6FF8B0](v18);
      v20 = sub_1D7704AF0();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v19 = 1;
    v18 = v17;
    goto LABEL_19;
  }

LABEL_34:

  *v2 = v5;
}

void sub_1D76CC9F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D76CDA24(0, &qword_1EC9BDAF0, sub_1D76A3F14, &type metadata for AdPolicyFailureType);
  v4 = sub_1D7704720();
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
      sub_1D7704AD0();
      MEMORY[0x1DA6FF8B0](v17);
      v18 = sub_1D7704AF0();
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