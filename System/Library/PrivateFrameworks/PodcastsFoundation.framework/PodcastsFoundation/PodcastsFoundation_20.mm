void sub_1D8F298FC(uint64_t a1)
{
  sub_1D8F29A44(319);
  if (v1 <= 0x3F)
  {
    sub_1D91777CC();
    sub_1D91791BC();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1D8F29A44(uint64_t a1)
{
  if (!qword_1ECAB6D58[0])
  {
    sub_1D9177EDC();
    v1 = sub_1D91791BC();
    if (!v2)
    {
      atomic_store(v1, qword_1ECAB6D58);
    }
  }
}

uint64_t sub_1D8F29A9C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8F29B08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1D8F29C48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t CombinedTrace.emit(event:context:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*v5 + 16);
  if (v6)
  {
    v11 = result;
    v12 = *v5 + 32;
    do
    {
      sub_1D8CFD9D8(v12, v15);
      v13 = v16;
      v14 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v14 + 16))(v11, a2, a3, a4, a5, v13, v14);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v12 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_1D8F29EFC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D915C374(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t EmitLifecycle.context.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t EmitLifecycle.LifecycleEmitting.__allocating_init(subscriber:trace:name:context:definesInterval:verbose:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v11 = sub_1D8D71D38(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(*(v9 + 88) - 8) + 8))(a1);
  return v11;
}

uint64_t sub_1D8F2A174(uint64_t a1)
{
  v2 = sub_1D917752C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D8F2A240(v5);
}

uint64_t sub_1D8F2A240(uint64_t a1)
{
  v3 = qword_1EDCDE880;
  swift_beginAccess();
  v4 = sub_1D917752C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t EmitLifecycle.LifecycleEmitting.context.getter()
{
  v1 = *(v0 + *(*v0 + 144));

  return v1;
}

uint64_t sub_1D8F2A464(uint64_t a1)
{
  sub_1D917946C();

  v2 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v2);

  MEMORY[0x1DA7298F0](0x6275506D756E202CLL, 0xED0000203A74754FLL);
  v3 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v3);

  MEMORY[0x1DA7298F0](0x646E616D6564202CLL, 0xEA0000000000203ALL);
  v4 = MEMORY[0x1DA729BD0](a1, MEMORY[0x1E695BEC8]);
  MEMORY[0x1DA7298F0](v4);

  MEMORY[0x1DA7298F0](32032, 0xE200000000000000);
  return 0x6275536D756E207BLL;
}

uint64_t EmitLifecycle.LifecycleEmitting.init(subscriber:trace:name:context:definesInterval:verbose:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v11 = *v9;
  v12 = sub_1D8D6F57C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(*(v11 + 88) - 8) + 8))(a1);
  return v12;
}

uint64_t sub_1D8F2A65C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D8ECCEC8(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1D8ECCEC8((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = a2;
  *a1 = v4;
  return result;
}

uint64_t sub_1D8F2A708(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1D917752C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  if (*(a2 + *(*a2 + 152)) == 1)
  {
    v12 = (a2 + *(v11 + 128));
    v13 = v12[4];
    v36 = v12[3];
    v35 = __swift_project_boxed_opaque_existential_1(v12, v36);
    v14 = a2 + *(*a2 + 136);
    v39 = a3;
    v16 = *v14;
    v15 = *(v14 + 1);
    v37 = v3;
    v17 = v14[16];
    v40 = sub_1D917949C();
    v41 = v18;
    v38 = a1;
    MEMORY[0x1DA7298F0](10272, 0xE200000000000000);
    sub_1D8DB1938(v10);
    v19 = sub_1D917750C();
    (*(v8 + 8))(v10, v7);
    v42 = v19;
    v20 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v20);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    v21 = v15;
    a3 = v39;
    (*(v13 + 24))(&v40, v16, v21, v17, v40, v41, v36, v13);
    a1 = v38;

    sub_1D8DB61B8(&v40, a1 + 40);
  }

  else if (*(a2 + *(v11 + 160)) == 1)
  {
    v22 = (a2 + *(v11 + 128));
    v23 = v22[3];
    v24 = v22[4];
    v37 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v25 = a2 + *(*a2 + 136);
    v26 = *v25;
    v35 = *(v25 + 1);
    v36 = v26;
    v34 = v25[16];
    v40 = 0;
    v41 = 0xE000000000000000;
    v38 = a1;
    sub_1D917946C();
    v27 = (a2 + *(*a2 + 144));
    v39 = a3;
    v29 = *v27;
    v28 = v27[1];

    v40 = v29;
    v41 = v28;
    MEMORY[0x1DA7298F0](0xD000000000000017, 0x80000001D91CD4C0);
    sub_1D8DB1938(v10);
    v30 = sub_1D917750C();
    (*(v8 + 8))(v10, v7);
    v42 = v30;
    v31 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v31);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    (*(v24 + 16))(v36, v35, v34, v40, v41, v23, v24);
    a1 = v38;
    a3 = v39;
  }

  sub_1D8D08A50(a1, qword_1ECAB6CD0, &unk_1D9195040);
  return sub_1D8CFD9D8(a3, a1);
}

double sub_1D8F2AADC()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = *(*v0 + 96);
  v5[0] = *(*v0 + 80);
  v5[1] = v2;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, v5);
  OSAllocatedUnfairLock.current.getter(v1, v5);
  v3 = *(v0 + *(*v0 + 176));
  os_unfair_lock_lock(v3 + 24);
  sub_1D8F2B048(&v3[4]);
  os_unfair_lock_unlock(v3 + 24);

  return result;
}

double sub_1D8F2ABC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = sub_1D917752C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(a1 + 40, &v33, &unk_1ECAB6E00, &qword_1D91952E0);
  if (!v35)
  {
    sub_1D8D08A50(&v33, &unk_1ECAB6E00, &qword_1D91952E0);
    v18 = (a2 + *(*a2 + 128));
    v19 = v18[4];
    v31 = v18[3];
    v29 = v19;
    v30 = __swift_project_boxed_opaque_existential_1(v18, v31);
    v20 = a2 + *(*a2 + 136);
    v21 = *v20;
    v27 = *(v20 + 1);
    v28 = v21;
    v26 = v20[16];
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    v25 = a5;
    sub_1D917946C();
    v32 = v36;
    MEMORY[0x1DA7298F0](*(a2 + *(*a2 + 144)), *(a2 + *(*a2 + 144) + 8));
    MEMORY[0x1DA7298F0](0x454C4C45434E4143, 0xEC00000028202044);
    sub_1D8DB1938(v14);
    v22 = sub_1D917750C();
    (*(v12 + 8))(v14, v11);
    *&v36 = v22;
    v23 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v23);

    MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
    *&v33 = a3;
    *(&v33 + 1) = a4;
    v34 = v25;
    v24 = *(v10 + 96);
    v36 = *(v10 + 80);
    v37 = v24;
    type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, &v36);
    swift_getWitnessTable();
    sub_1D9179A9C();
    (*(v29 + 16))(v28, v27, v26, v32, *(&v32 + 1), v31);

    if (!*(a1 + 24))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1D8D6BCE0(&v33, &v36);
  v15 = *(&v37 + 1);
  v16 = v38;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  (*(v16 + 8))(0x4C45434E4143, 0xE600000000000000, v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  if (*(a1 + 24))
  {
LABEL_3:
    sub_1D8CFD9D8(a1, &v36);
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  }

LABEL_4:
  sub_1D8D08A50(a1, qword_1ECAB6CD0, &unk_1D9195040);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  sub_1D8D08A50(a1 + 40, &unk_1ECAB6E00, &qword_1D91952E0);
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1D8F2B014(uint64_t result)
{
  v1 = *(result + 8);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = v3;
  }

  return result;
}

uint64_t sub_1D8F2B068(uint64_t result)
{
  v1 = *(result + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_1D8F2B0A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8), !*(a1 + v8)))
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1D8F2B208(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1D8F2B554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t LoggerTrace.init(logger:level:identifier:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a3;
  *(a5 + 1) = a4;
  v8 = type metadata accessor for LoggerTrace(0);
  v9 = *(v8 + 20);
  v10 = sub_1D917744C();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a1, v10);
  a5[*(v8 + 24)] = a2;
  return result;
}

uint64_t LoggerTrace.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void LoggerTrace.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t LoggerTrace.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoggerTrace(0) + 20);
  v4 = sub_1D917744C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D8F2B748(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LoggerTrace(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D785B8(v2, v7);
  v8 = (v2 + *(type metadata accessor for LoggerTrace.LogInterval(0) + 20));
  if (a2)
  {
    v9 = v8[1];
    v13 = *v8;
    v14 = v9;

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
    MEMORY[0x1DA7298F0](a1, a2);
    v10 = v13;
    v11 = v14;
  }

  else
  {
    v10 = *v8;
    v11 = v8[1];
  }

  LoggerTrace.emit(event:context:)("END INTERVAL", 12, 2, v10, v11);

  return sub_1D8DB01E0(v7);
}

uint64_t sub_1D8F2B8CC(uint64_t a1)
{
  result = type metadata accessor for LoggerTrace(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8F2B940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D8F2B988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SignpostTrace.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D917739C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SignpostTrace.signpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignpostTrace(0) + 20);
  v4 = sub_1D917734C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignpostTrace.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignpostTrace(0) + 24));

  return v1;
}

uint64_t SignpostTrace.start(interval:context:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v26 = a4;
  v13 = sub_1D917734C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D917739C();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v7, v18);
  v22 = type metadata accessor for SignpostTrace(0);
  (*(v14 + 16))(v16, v7 + *(v22 + 20), v13);
  a6[3] = type metadata accessor for SignpostTrace.Interval(0);
  a6[4] = &protocol witness table for SignpostTrace.Interval;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);

  return SignpostTrace.Interval.init(starting:domain:identifier:with:)(a1, a2, a3, v20, v16, v26, a5, boxed_opaque_existential_0);
}

uint64_t SignpostTrace.Interval.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignpostTrace.Interval(0) + 24);
  v4 = sub_1D917739C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignpostTrace.Interval.init(name:domain:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *a6 = a5;
  v8 = *(type metadata accessor for SignpostTrace.Interval(0) + 24);
  v9 = sub_1D917739C();
  v10 = *(*(v9 - 8) + 32);

  return v10(a6 + v8, a4, v9);
}

uint64_t sub_1D8F2BE00@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Traceable.traced(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v22 = a3;
  v9 = sub_1D9176EAC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 - 8) + 16))(a4, v5, a2, v11);
  v14 = type metadata accessor for LoggerTrace(0);
  v23[3] = v14;
  v23[4] = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  v16 = *(v14 + 20);
  v17 = sub_1D917744C();
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0 + v16, a1, v17);
  LOBYTE(v16) = sub_1D9178CDC();
  sub_1D9176E9C();
  v18 = sub_1D9176E5C();
  v20 = v19;
  (*(v10 + 8))(v13, v9);
  *boxed_opaque_existential_0 = v18;
  boxed_opaque_existential_0[1] = v20;
  *(boxed_opaque_existential_0 + *(v14 + 24)) = v16;
  return (*(v22 + 16))(v23, a2);
}

void AnyCancellable.store<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1D8D056BC(sub_1D8F2C158, v3, a1);
}

void AnyCancellable.store(in:)(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 6);
  sub_1D8F2C1E0(&a1[4]);

  os_unfair_lock_unlock(a1 + 6);
}

uint64_t sub_1D8F2C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v66 = a7;
  v67 = a8;
  v68 = a1;
  v69 = a2;
  v76 = a21;
  v74 = a4;
  v75 = a15;
  v77 = a10;
  v78 = a5;
  v72 = a3;
  v73 = a9;
  v70 = a14;
  v71 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v64 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v79 = &v61 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v61 - v31;
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v33);
  v36 = &v61 - v35;
  v37 = *(AssociatedTypeWitness - 8);
  v38 = *(v37 + 16);
  v63 = AssociatedTypeWitness;
  v38(&v61 - v35, a6, AssociatedTypeWitness, v34);
  v39 = *(TupleTypeMetadata3 + 48);
  v61 = v23;
  v40 = *(v23 - 8);
  (*(v40 + 16))(&v36[v39], v66, v23);
  v41 = *(TupleTypeMetadata3 + 64);
  v62 = v24;
  v42 = *(v24 - 8);
  (*(v42 + 16))(&v36[v41], v67, v24);
  v43 = *(v26 + 16);
  v65 = v32;
  v43(v32, v36, TupleTypeMetadata3);
  v44 = *(TupleTypeMetadata3 + 48);
  v66 = *(TupleTypeMetadata3 + 64);
  v67 = v44;
  (*(v37 + 32))(v68, v32, AssociatedTypeWitness);
  v45 = v79;
  v43(v79, v36, TupleTypeMetadata3);
  v46 = *(TupleTypeMetadata3 + 48);
  v68 = *(TupleTypeMetadata3 + 64);
  v47 = v61;
  (*(v40 + 32))(v69, &v45[v46], v61);
  v48 = v64;
  (*(v26 + 32))(v64, v36, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v50 = v62;
  (*(v42 + 32))(v72, &v48[*(TupleTypeMetadata3 + 64)], v62);
  v51 = swift_getAssociatedTypeWitness();
  (*(*(v51 - 8) + 16))(v74, v73, v51);
  v52 = swift_getAssociatedTypeWitness();
  (*(*(v52 - 8) + 16))(v78, v77, v52);
  v53 = *(v40 + 8);
  v54 = v47;
  v53(&v48[v49], v47);
  v55 = *(v37 + 8);
  v56 = v63;
  v55(v48, v63);
  v57 = *(v42 + 8);
  v58 = v79;
  v57(&v79[v68], v50);
  v55(v58, v56);
  v59 = v65;
  v57(&v65[v66], v50);
  return (v53)(&v59[v67], v54);
}

uint64_t sub_1D8F2C810@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(TupleTypeMetadata3 + 48);
  v23 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v18 = swift_getTupleTypeMetadata3();
  v19 = a1 + *(v18 + 48);
  v20 = a1 + *(v18 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a8, a8 + TupleTypeMetadata[12], a8 + TupleTypeMetadata[16], a8 + TupleTypeMetadata[20], a8 + TupleTypeMetadata[24], a1, a1 + v17, a1 + v23, v19, v20);
}

uint64_t Publishers.PFCombineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v27[0] = a7;
  v27[1] = a8;
  v27[2] = a10;
  v27[3] = a11;
  v27[4] = a12;
  v27[5] = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v21 = type metadata accessor for Publishers.PFCombineLatest6(0, v27);
  (*(*(a8 - 8) + 32))(a9 + v21[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v21[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v21[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v21[33], a6, a13);
}

uint64_t Publishers.PFCombineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v82 = a3;
  v84 = a1;
  v92 = *(a2 + 16);
  v69 = v92;
  v95 = v92;
  v59[1] = *(&v92 + 1);
  v85 = *(a2 + 32);
  AssociatedTypeWitness = v85;
  v91 = *(a2 + 64);
  v73 = v91;
  v97 = v91;
  v72 = *(&v91 + 1);
  v98 = *(a2 + 80);
  *&v90 = v98;
  v89 = sub_1D917753C();
  v5 = *(a2 + 40);
  v94 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v87 = v94;
  v75 = v6;
  v93 = v7;
  v99 = v7;
  v86 = *(&v7 + 1);
  v88 = sub_1D917755C();
  *&v95 = swift_getAssociatedTypeWitness();
  v8 = *(&v92 + 1);
  *(&v95 + 1) = swift_getAssociatedTypeWitness();
  v9 = v85;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v65 = v5;
  *&v97 = swift_getAssociatedTypeWitness();
  v11 = v94;
  *(&v97 + 1) = swift_getAssociatedTypeWitness();
  v98 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v88;
  v77 = swift_getWitnessTable();
  v79 = sub_1D917768C();
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = v59 - v13;
  v70 = *(*(&v94 + 1) - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v66 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v63 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v86 = v59 - v21;
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v60 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v8;
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v69;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(v89 - 8);
  v34 = v62;
  MEMORY[0x1EEE9AC00](v35);
  v59[0] = v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v59 - v39;
  v42 = v76;
  (*(v41 + 16))(v33, v76, v30, v38);
  (*(v26 + 16))(v29, v42 + *(a2 + 116), v25);
  v43 = v85;
  (*(v22 + 16))(v60, v42 + *(a2 + 120), v85);
  v61 = v40;
  sub_1D917754C();
  v44 = v89;
  (*(v34 + 16))(v59[0], v40, v89);
  v45 = v65;
  (*(v64 + 16))(v63, v42 + *(a2 + 124), v65);
  (*(v67 + 16))(v66, v42 + *(a2 + 128), *v87);
  (*(v70 + 16))(v68, v42 + *(a2 + 132), *&v87[8]);
  v46 = v75;
  v47 = v45;
  sub_1D917756C();
  v48 = swift_allocObject();
  *&v49 = v43;
  *(&v49 + 1) = v47;
  *&v87[8] = v49;
  *(v48 + 32) = v49;
  *(v48 + 16) = v92;
  *(v48 + 48) = v94;
  v50 = v82;
  *(v48 + 64) = v82;
  *&v49 = v90;
  *(&v49 + 1) = v46;
  v90 = v49;
  *(v48 + 88) = v49;
  *(v48 + 72) = v91;
  *(v48 + 104) = v93;
  v51 = v83;
  *(v48 + 120) = v83;
  v52 = swift_allocObject();
  v53 = v94;
  *(v52 + 16) = v92;
  *(v52 + 32) = *&v87[8];
  *(v52 + 48) = v53;
  *(v52 + 64) = v50;
  *(v52 + 72) = v91;
  *(v52 + 104) = v93;
  *(v52 + 88) = v90;
  *(v52 + 120) = v51;
  *(v52 + 128) = sub_1D8F2DD1C;
  *(v52 + 136) = v48;
  v54 = v74;
  v55 = v88;
  v56 = v86;
  sub_1D9177B9C();

  v57 = v79;
  sub_1D917767C();
  (*(v80 + 8))(v54, v57);
  (*(v71 + 8))(v56, v55);
  return (*(v62 + 8))(v61, v44);
}

uint64_t sub_1D8F2D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v72 = a8;
  v73 = a1;
  v74 = a2;
  v86 = a12;
  v87 = a6;
  v81 = a4;
  v82 = a11;
  v84 = a25;
  v85 = a5;
  v83 = a18;
  v79 = a17;
  v80 = a24;
  v77 = a3;
  v78 = a10;
  v71 = a9;
  v75 = a16;
  v76 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v68 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v67 = &v65 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v65 - v35;
  v38.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
  v40 = &v65 - v39;
  v41 = AssociatedTypeWitness;
  v42 = *(AssociatedTypeWitness - 8);
  v43 = *(v42 + 16);
  v69 = v41;
  v43(&v65 - v39, a7, v41, v38);
  v44 = *(TupleTypeMetadata3 + 48);
  v65 = v27;
  v45 = *(v27 - 8);
  (*(v45 + 16))(&v40[v44], v72, v27);
  v46 = *(TupleTypeMetadata3 + 64);
  v66 = v28;
  v47 = *(v28 - 8);
  (*(v47 + 16))(&v40[v46], v71, v28);
  v48 = *(v30 + 16);
  v70 = v36;
  v48(v36, v40, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v71 = *(TupleTypeMetadata3 + 64);
  v72 = v49;
  (*(v42 + 32))(v73, v36, v41);
  v50 = v67;
  v48(v67, v40, TupleTypeMetadata3);
  v51 = *(TupleTypeMetadata3 + 48);
  v73 = *(TupleTypeMetadata3 + 64);
  v52 = v65;
  (*(v45 + 32))(v74, &v50[v51], v65);
  v53 = v68;
  (*(v30 + 32))(v68, v40, TupleTypeMetadata3);
  v74 = *(TupleTypeMetadata3 + 48);
  v54 = v66;
  (*(v47 + 32))(v77, &v53[*(TupleTypeMetadata3 + 64)], v66);
  v55 = swift_getAssociatedTypeWitness();
  (*(*(v55 - 8) + 16))(v81, v78, v55);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v85, v82, v56);
  v57 = swift_getAssociatedTypeWitness();
  (*(*(v57 - 8) + 16))(v87, v86, v57);
  v58 = *(v45 + 8);
  v59 = v52;
  v58(&v53[v74], v52);
  v60 = *(v42 + 8);
  v61 = v69;
  v60(v53, v69);
  v62 = *(v47 + 8);
  v62(&v50[v73], v54);
  v60(v50, v61);
  v63 = v70;
  v62(&v70[v71], v54);
  return (v58)(&v63[v72], v59);
}

uint64_t sub_1D8F2DD6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = a1 + *(TupleTypeMetadata3 + 64);
  v26 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = a1 + TupleTypeMetadata[12];
  v21 = a1 + TupleTypeMetadata[16];
  v22 = a1 + TupleTypeMetadata[20];
  v23 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v23[12], a8 + v23[16], a8 + v23[20], a8 + v23[24], a8 + v23[28], a1, a1 + v26, v25, v20, v21, v22);
}

uint64_t Publishers.PFCombineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v29[0] = a8;
  v29[1] = a10;
  v29[2] = a11;
  v29[3] = a12;
  v29[4] = a13;
  v29[5] = a14;
  v29[6] = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v22 = type metadata accessor for Publishers.PFCombineLatest7(0, v29);
  (*(*(a10 - 8) + 32))(a9 + v22[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v22[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v22[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v22[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v22[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v22[38], a7, a15);
}

uint64_t Publishers.PFCombineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a4;
  v97 = a3;
  v99 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v116 = *(a2 + 88);
  v117 = v7;
  v115 = v11;
  v118 = v6;
  AssociatedTypeWitness = v6;
  v120 = v5;
  v121 = v7;
  v111 = v5;
  v122 = v8;
  v123 = v9;
  v108 = v9;
  v109 = v8;
  v124 = v10;
  v125 = v116;
  v107 = v10;
  v126 = v11;
  v12 = sub_1D917755C();
  v13 = *(a2 + 56);
  v110 = *(a2 + 48);
  v112 = v13;
  v113 = *(a2 + 64);
  v114 = v12;
  v103 = MEMORY[0x1E695BC78];
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v89 = *(a2 + 104);
  v126 = v15;
  v106 = v14;
  v105 = v15;
  v104 = sub_1D917755C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v16 = v117;
  v121 = swift_getAssociatedTypeWitness();
  v17 = v109;
  v122 = swift_getAssociatedTypeWitness();
  v18 = v110;
  v123 = swift_getAssociatedTypeWitness();
  v124 = swift_getAssociatedTypeWitness();
  v125 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v104;
  v92 = swift_getWitnessTable();
  v94 = sub_1D917768C();
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v80 - v20;
  v87 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v80 - v28;
  v80 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v81 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v111;
  v36 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v100 = &v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v101 = &v80 - v47;
  v49 = v91;
  (*(v48 + 16))(v42, v91, v46);
  (*(v36 + 16))(v39, v49 + *(a2 + 132), v35);
  (*(v31 + 16))(v34, v49 + *(a2 + 136), v117);
  (*(v80 + 16))(v81, v49 + *(a2 + 140), v109);
  v50 = v101;
  sub_1D917756C();
  (*(v102 + 16))(v100, v50, v114);
  v51 = v110;
  (*(v83 + 16))(v82, v49 + *(a2 + 144), v110);
  v52 = v112;
  (*(v85 + 16))(v84, v49 + *(a2 + 148), v112);
  v53 = v49 + *(a2 + 152);
  v54 = v113;
  (*(v87 + 16))(v86, v53, v113);
  v55 = v105;
  v56 = v106;
  v57 = v89;
  v58 = v51;
  v59 = v52;
  v60 = v54;
  sub_1D917756C();
  v61 = swift_allocObject();
  v62 = v111;
  v61[2] = v118;
  v61[3] = v62;
  v63 = v116;
  v64 = v109;
  v61[4] = v117;
  v61[5] = v64;
  v61[6] = v58;
  v61[7] = v59;
  v65 = v97;
  v61[8] = v60;
  v61[9] = v65;
  v67 = v107;
  v66 = v108;
  v61[10] = v108;
  v61[11] = v67;
  v68 = v115;
  v61[12] = v63;
  v61[13] = v68;
  v61[14] = v57;
  v61[15] = v56;
  v61[16] = v55;
  v69 = v98;
  v61[17] = v98;
  v70 = swift_allocObject();
  v71 = v111;
  v70[2] = v118;
  v70[3] = v71;
  v70[4] = v117;
  v70[5] = v64;
  v73 = v112;
  v72 = v113;
  v70[6] = v110;
  v70[7] = v73;
  v70[8] = v72;
  v70[9] = v65;
  v70[10] = v66;
  v70[11] = v67;
  v70[12] = v63;
  v70[13] = v68;
  v74 = v106;
  v70[14] = v57;
  v70[15] = v74;
  v70[16] = v105;
  v70[17] = v69;
  v70[18] = sub_1D8F2F6E0;
  v70[19] = v61;
  v75 = v90;
  v76 = v104;
  v77 = v103;
  sub_1D9177B9C();

  v78 = v94;
  sub_1D917767C();
  (*(v95 + 8))(v75, v78);
  (*(v88 + 8))(v77, v76);
  return (*(v102 + 8))(v101, v114);
}

uint64_t sub_1D8F2EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v117 = a8;
  v110 = a7;
  v108 = a6;
  v104 = a5;
  v100 = a4;
  v97 = a3;
  v96 = a2;
  v95 = a1;
  v106 = a21;
  v107 = a29;
  v109 = a14;
  v105 = a13;
  v103 = a28;
  v99 = a27;
  v102 = a20;
  v98 = a19;
  v101 = a12;
  v94 = a11;
  v93 = a10;
  v91 = a9;
  v90 = a26;
  v87 = a25;
  v89 = a18;
  v86 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v88 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v92 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v112 = &v85 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v111 = &v85 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v113 = &v85 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v85 - v38;
  v40 = swift_getAssociatedTypeWitness();
  v41 = *(v40 - 8);
  v114 = v40;
  v115 = v41;
  (*(v41 + 16))(v39, v117, v40);
  v42 = TupleTypeMetadata[12];
  v43 = swift_getAssociatedTypeWitness();
  v44 = *(v43 - 8);
  v116 = v43;
  v117 = v44;
  (*(v44 + 16))(&v39[v42], v91, v43);
  v45 = TupleTypeMetadata[16];
  v46 = swift_getAssociatedTypeWitness();
  v47 = *(v46 - 8);
  v48 = &v39[v45];
  v49 = v46;
  (*(v47 + 16))(v48, v93);
  v50 = TupleTypeMetadata[20];
  v51 = swift_getAssociatedTypeWitness();
  v52 = *(v51 - 8);
  v87 = v52;
  v53 = *(v52 + 16);
  v86 = v51;
  v53(&v39[v50], v94, v51);
  v54 = v88;
  v55 = *(v88 + 16);
  v56 = v113;
  v55(v113, v39, TupleTypeMetadata);
  v94 = TupleTypeMetadata[12];
  v93 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v115 + 32))(v95, v56, v114);
  v57 = v111;
  v55(v111, v39, TupleTypeMetadata);
  v58 = TupleTypeMetadata[12];
  v95 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  (*(v117 + 32))(v96, &v57[v58], v116);
  v59 = v112;
  v55(v112, v39, TupleTypeMetadata);
  v96 = TupleTypeMetadata[12];
  v60 = TupleTypeMetadata[16];
  v89 = TupleTypeMetadata[20];
  v61 = *(v47 + 32);
  v85 = v49;
  v61(v97, &v59[v60], v49);
  v62 = v92;
  (*(v54 + 32))(v92, v39, TupleTypeMetadata);
  v63 = TupleTypeMetadata[12];
  v64 = TupleTypeMetadata[16];
  (*(v52 + 32))(v100, &v62[TupleTypeMetadata[20]], v51);
  v65 = swift_getAssociatedTypeWitness();
  (*(*(v65 - 8) + 16))(v104, v101, v65);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v108, v105, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v110, v109, v67);
  v68 = *(v47 + 8);
  v109 = v47 + 8;
  v110 = v68;
  v68(&v62[v64], v49);
  v69 = v116;
  v71 = v117 + 8;
  v70 = *(v117 + 8);
  v70(&v62[v63], v116);
  v72 = v70;
  v108 = v70;
  v117 = v71;
  v73 = v114;
  v74 = *(v115 + 8);
  v74(v62, v114);
  v75 = *(v87 + 8);
  v76 = v112;
  v77 = v86;
  v75(&v112[v89], v86);
  v72(&v76[v96], v69);
  v78 = v76;
  v79 = v73;
  v74(v78, v73);
  v80 = v111;
  v75(&v111[v90], v77);
  v81 = v85;
  v82 = v110;
  v110(&v80[v95], v85);
  v74(v80, v79);
  v83 = v113;
  v75(&v113[v91], v77);
  v82(&v83[v93], v81);
  return v108(&v83[v94], v116);
}

uint64_t sub_1D8F2F738@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v29 = a1 + TupleTypeMetadata[12];
  v28 = a1 + TupleTypeMetadata[16];
  v27 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v21 = swift_getTupleTypeMetadata();
  v22 = a1 + v21[12];
  v23 = a1 + v21[16];
  v24 = a1 + v21[20];
  v25 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v25[12], a8 + v25[16], a8 + v25[20], a8 + v25[24], a8 + v25[28], a8 + v25[32], a1, v29, v28, v27, v22, v23, v24);
}

uint64_t Publishers.PFCombineLatest8.init(_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v32[0] = a10;
  v32[1] = a11;
  v32[2] = a12;
  v32[3] = a13;
  v32[4] = a14;
  v32[5] = a15;
  v32[6] = a16;
  v32[7] = a17;
  v33 = a18;
  v34 = a19;
  v35 = a20;
  v36 = a21;
  v37 = a22;
  v23 = type metadata accessor for Publishers.PFCombineLatest8(0, v32);
  (*(*(a11 - 8) + 32))(a9 + v23[37], a2, a11);
  (*(*(a12 - 8) + 32))(a9 + v23[38], a3, a12);
  (*(*(a13 - 8) + 32))(a9 + v23[39], a4, a13);
  (*(*(a14 - 8) + 32))(a9 + v23[40], a5, a14);
  (*(*(a15 - 8) + 32))(a9 + v23[41], a6, a15);
  (*(*(a16 - 8) + 32))(a9 + v23[42], a7, a16);
  return (*(*(a17 - 8) + 32))(a9 + v23[43], a8, a17);
}

uint64_t Publishers.PFCombineLatest8.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a4;
  v117 = a3;
  v119 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 40);
  v139 = *(a2 + 32);
  v140 = v5;
  v8 = *(a2 + 48);
  v136 = v7;
  v137 = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  v134 = *(a2 + 112);
  AssociatedTypeWitness = v6;
  v142 = v5;
  v138 = v6;
  v143 = v139;
  v144 = v7;
  v145 = v8;
  v146 = v9;
  v129 = v9;
  v147 = v10;
  v148 = v11;
  v128 = v10;
  v127 = v11;
  v149 = v12;
  v150 = v134;
  v126 = v12;
  v13 = type metadata accessor for Publishers.PFCombineLatest5(255, &AssociatedTypeWitness);
  v14 = *(a2 + 64);
  v130 = *(a2 + 56);
  v131 = v14;
  v132 = *(a2 + 72);
  v133 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = *(a2 + 120);
  v16 = *(a2 + 128);
  v135 = *(a2 + 136);
  AssociatedTypeWitness = v13;
  v142 = v130;
  v143 = v14;
  v144 = v132;
  v145 = WitnessTable;
  v146 = v15;
  v125 = v15;
  v147 = v16;
  v148 = v135;
  v124 = v16;
  v123 = sub_1D917755C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = swift_getAssociatedTypeWitness();
  v143 = swift_getAssociatedTypeWitness();
  v17 = v136;
  v144 = swift_getAssociatedTypeWitness();
  v18 = v137;
  v145 = swift_getAssociatedTypeWitness();
  v19 = v130;
  v146 = swift_getAssociatedTypeWitness();
  v147 = swift_getAssociatedTypeWitness();
  v148 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = v123;
  v112 = swift_getWitnessTable();
  v114 = sub_1D917768C();
  v115 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v110 = &v98 - v21;
  v107 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v103 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v98 - v29;
  v102 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v100 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v139;
  v36 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v140;
  v41 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v98 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v99 = &v98 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v120 = &v98 - v52;
  v54 = v111;
  (*(v53 + 16))(v47, v111, v51);
  (*(v41 + 16))(v44, v54 + *(a2 + 148), v40);
  (*(v36 + 16))(v39, v54 + *(a2 + 152), v35);
  v55 = v100;
  v56 = v136;
  (*(v32 + 16))(v100, v54 + *(a2 + 156), v136);
  v57 = v101;
  v58 = v137;
  (*(v102 + 16))(v101, v54 + *(a2 + 160), v137);
  *(&v97 + 1) = v126;
  *&v97 = v127;
  *(&v96 + 1) = v128;
  v95 = v58;
  *&v96 = v129;
  v59 = v120;
  Publishers.PFCombineLatest5.init(_:_:_:_:_:)(v47, v44, v39, v55, v57, v138, v140, v35, v120, v56, v95, v96, v97, v134);
  (*(v121 + 16))(v99, v59, v133);
  v60 = v130;
  (*(v104 + 16))(v103, v54 + *(a2 + 164), v130);
  v61 = v54 + *(a2 + 168);
  v62 = v54;
  v63 = v131;
  (*(v106 + 16))(v105, v61, v131);
  v64 = v62 + *(a2 + 172);
  v65 = v132;
  (*(v107 + 16))(v108, v64, v132);
  v66 = v135;
  v67 = v124;
  sub_1D917756C();
  v68 = swift_allocObject();
  v70 = v139;
  v69 = v140;
  v68[2] = v138;
  v68[3] = v69;
  v72 = v136;
  v71 = v137;
  v68[4] = v70;
  v68[5] = v72;
  v68[6] = v71;
  v68[7] = v60;
  v68[8] = v63;
  v68[9] = v65;
  v73 = v117;
  v74 = v129;
  v68[10] = v117;
  v68[11] = v74;
  v75 = v128;
  v76 = v127;
  v68[12] = v128;
  v68[13] = v76;
  v77 = v126;
  v78 = v134;
  v68[14] = v126;
  v68[15] = v78;
  v79 = v125;
  v68[16] = v125;
  v68[17] = v67;
  v80 = v118;
  v68[18] = v66;
  v68[19] = v80;
  v81 = swift_allocObject();
  v83 = v139;
  v82 = v140;
  v81[2] = v138;
  v81[3] = v82;
  v84 = v136;
  v85 = v137;
  v81[4] = v83;
  v81[5] = v84;
  v86 = v130;
  v87 = v131;
  v81[6] = v85;
  v81[7] = v86;
  v88 = v132;
  v81[8] = v87;
  v81[9] = v88;
  v81[10] = v73;
  v81[11] = v74;
  v81[12] = v75;
  v81[13] = v76;
  v81[14] = v77;
  v81[15] = v78;
  v89 = v124;
  v81[16] = v79;
  v81[17] = v89;
  v81[18] = v135;
  v81[19] = v80;
  v81[20] = sub_1D8F315B0;
  v81[21] = v68;
  v90 = v110;
  v91 = v123;
  v92 = v122;
  sub_1D9177B9C();

  v93 = v114;
  sub_1D917767C();
  (*(v115 + 8))(v90, v93);
  (*(v109 + 8))(v92, v91);
  return (*(v121 + 8))(v120, v133);
}

uint64_t sub_1D8F30A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), void (*a8)(char *, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(char *, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void (*a33)(char *, uint64_t))
{
  v123 = a8;
  v120 = a7;
  v116 = a6;
  v112 = a5;
  v109 = a4;
  v108 = a3;
  v107 = a2;
  v106 = a1;
  v122 = a16;
  v117 = a15;
  v119 = a33;
  v115 = a32;
  v118 = a24;
  v114 = a23;
  v113 = a14;
  v105 = a13;
  v131 = a12;
  v132 = a11;
  v133 = a9;
  v134 = a10;
  v111 = a31;
  v121 = a30;
  v110 = a22;
  v104 = a21;
  v124 = a29;
  v103 = a20;
  v125 = a18;
  v126 = a27;
  v135 = a26;
  v128 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v137 = swift_getAssociatedTypeWitness();
  v138 = swift_getAssociatedTypeWitness();
  v139 = swift_getAssociatedTypeWitness();
  v140 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v97 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v101 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v100 = &v92 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v127 = &v92 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v129 = &v92 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v130 = &v92 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v92 - v44;
  v135 = swift_getAssociatedTypeWitness();
  v128 = *(v135 - 8);
  (*(v128 + 16))(v45, v133, v135);
  v46 = TupleTypeMetadata[12];
  v47 = swift_getAssociatedTypeWitness();
  v48 = *(v47 - 8);
  v133 = v48;
  v49 = *(v48 + 16);
  v50 = &v45[v46];
  v51 = v47;
  v126 = v47;
  v49(v50, v134);
  v52 = TupleTypeMetadata[16];
  v125 = swift_getAssociatedTypeWitness();
  v53 = *(v125 - 8);
  v134 = v53;
  (*(v53 + 16))(&v45[v52], v132, v125);
  v54 = TupleTypeMetadata[20];
  v124 = swift_getAssociatedTypeWitness();
  v132 = *(v124 - 8);
  (*(v132 + 16))(&v45[v54], v131, v124);
  v55 = TupleTypeMetadata[24];
  v56 = swift_getAssociatedTypeWitness();
  v131 = *(v56 - 8);
  (*(v131 + 16))(&v45[v55], v105, v56);
  v57 = v97;
  v58 = *(v97 + 16);
  v59 = v130;
  v58(v130, v45, TupleTypeMetadata);
  v105 = TupleTypeMetadata[12];
  v104 = TupleTypeMetadata[16];
  v103 = TupleTypeMetadata[20];
  v102 = TupleTypeMetadata[24];
  (*(v128 + 32))(v106, v59, v135);
  v60 = v129;
  v58(v129, v45, TupleTypeMetadata);
  v61 = TupleTypeMetadata[12];
  v106 = TupleTypeMetadata[16];
  v99 = TupleTypeMetadata[20];
  v98 = TupleTypeMetadata[24];
  (*(v48 + 32))(v107, &v60[v61], v51);
  v62 = v127;
  v58(v127, v45, TupleTypeMetadata);
  v107 = TupleTypeMetadata[12];
  v63 = TupleTypeMetadata[16];
  v96 = TupleTypeMetadata[20];
  v95 = TupleTypeMetadata[24];
  v64 = v125;
  (*(v53 + 32))(v108, &v62[v63], v125);
  v65 = v100;
  v58(v100, v45, TupleTypeMetadata);
  v108 = TupleTypeMetadata[12];
  v94 = TupleTypeMetadata[16];
  v66 = TupleTypeMetadata[20];
  v93 = TupleTypeMetadata[24];
  v67 = v132;
  v68 = v124;
  (*(v132 + 32))(v109, &v65[v66], v124);
  v69 = v101;
  (*(v57 + 32))(v101, v45, TupleTypeMetadata);
  v109 = TupleTypeMetadata[12];
  v97 = TupleTypeMetadata[16];
  v70 = TupleTypeMetadata[20];
  v71 = TupleTypeMetadata[24];
  v72 = v131;
  (*(v131 + 32))(v112, &v69[v71], v56);
  v73 = swift_getAssociatedTypeWitness();
  (*(*(v73 - 8) + 16))(v116, v113, v73);
  v74 = swift_getAssociatedTypeWitness();
  (*(*(v74 - 8) + 16))(v120, v117, v74);
  v75 = swift_getAssociatedTypeWitness();
  (*(*(v75 - 8) + 16))(v123, v122, v75);
  v76 = *(v67 + 8);
  v132 = v67 + 8;
  v120 = v76;
  v76(&v69[v70], v68);
  v122 = *(v134 + 8);
  v134 += 8;
  v122(&v69[v97], v64);
  v77 = v133 + 8;
  v123 = *(v133 + 8);
  v78 = v126;
  v123(&v69[v109], v126);
  v128 = *(v128 + 8);
  v79 = v69;
  v80 = v135;
  (v128)(v79, v135);
  v119 = *(v72 + 8);
  v121 = v56;
  v119(&v65[v93], v56);
  v131 = v72 + 8;
  v122(&v65[v94], v64);
  v81 = v123;
  v123(&v65[v108], v78);
  v133 = v77;
  v82 = v128;
  (v128)(v65, v80);
  v83 = v127;
  v84 = v119;
  v119(&v127[v95], v56);
  v85 = v124;
  v86 = v120;
  v120(&v83[v96], v124);
  v81(&v83[v107], v78);
  v82(v83, v135);
  v87 = v129;
  v84(&v129[v98], v121);
  v86(&v87[v99], v85);
  v88 = v125;
  v89 = v122;
  v122(&v87[v106], v125);
  (v128)(v87, v135);
  v90 = v130;
  v84(&v130[v102], v121);
  v86(&v90[v103], v85);
  v89(&v90[v104], v88);
  return (v123)(&v90[v105], v126);
}

uint64_t sub_1D8F31618@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v32 = a1 + TupleTypeMetadata[12];
  v31 = a1 + TupleTypeMetadata[16];
  v30 = a1 + TupleTypeMetadata[20];
  v29 = a1 + TupleTypeMetadata[24];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v23 = swift_getTupleTypeMetadata();
  v24 = a1 + v23[12];
  v25 = a1 + v23[16];
  v26 = a1 + v23[20];
  v27 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v27[12], a8 + v27[16], a8 + v27[20], a8 + v27[24], a8 + v27[28], a8 + v27[32], a8 + v27[36], a1, v32, v31, v30, v29, v24, v25, v26);
}

uint64_t sub_1D8F319A4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_1D8F31E44(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_1D8F32364(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D8F32460(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v58 = a3[3];
  v59 = v4;
  v5 = *(v4 + 84);
  v6 = *(v58 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v56 = v9;
  v57 = a3[4];
  v10 = *(v57 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v55 = v14;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v16 + 84);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = *(v14 - 8);
  v21 = *(v20 + 84);
  v22 = *(v4 + 64);
  v23 = *(v6 + 80);
  v24 = *(*(v58 - 8) + 64);
  v25 = *(v10 + 80);
  v26 = *(*(v57 - 8) + 64);
  v27 = *(v12 + 80);
  v28 = *(*(v9 - 8) + 64);
  v29 = *(v16 + 80);
  v30 = *(v16 + 64);
  v31 = *(v20 + 80);
  v32 = *(v20 + 64);
  if (v21 <= v19)
  {
    v33 = v19;
  }

  else
  {
    v33 = *(v20 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v34 = v22 + v23;
  v35 = v28 + v29;
  v36 = v30 + v31;
  v37 = a2 - v33;
  if (a2 > v33)
  {
    v38 = (v36 + ((v35 + ((v26 + v27 + ((v24 + v25 + (v34 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v31;
    v39 = v38 + v32;
    v40 = 8 * (v38 + v32);
    if (v39 <= 3)
    {
      v42 = ((v37 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = *(a1 + v39);
        if (!v41)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 > 0xFF)
      {
        v41 = *(a1 + v39);
        if (!*(a1 + v39))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 < 2)
      {
LABEL_38:
        if (v33)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v41 = *(a1 + v39);
    if (!*(a1 + v39))
    {
      goto LABEL_38;
    }

LABEL_25:
    v43 = (v41 - 1) << v40;
    if (v39 > 3)
    {
      v43 = 0;
    }

    if (v39)
    {
      if (v39 <= 3)
      {
        v44 = v39;
      }

      else
      {
        v44 = 4;
      }

      if (v44 > 2)
      {
        if (v44 == 3)
        {
          v45 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v45 = *a1;
        }
      }

      else if (v44 == 1)
      {
        v45 = *a1;
      }

      else
      {
        v45 = *a1;
      }
    }

    else
    {
      v45 = 0;
    }

    return v33 + (v45 | v43) + 1;
  }

LABEL_39:
  if (v5 == v33)
  {
    v46 = *(v59 + 48);

    return v46(a1);
  }

  v48 = (a1 + v34) & ~v23;
  if (v7 == v33)
  {
    v49 = *(v6 + 48);
    v50 = (a1 + v34) & ~v23;
    v51 = *(v6 + 84);
    v52 = v58;

    return v49(v50, v51, v52);
  }

  if (v11 == v33)
  {
    v49 = *(v10 + 48);
    v50 = (v48 + v24 + v25) & ~v25;
    v51 = *(v10 + 84);
    v52 = v57;

    return v49(v50, v51, v52);
  }

  v50 = (((v48 + v24 + v25) & ~v25) + v26 + v27) & ~v27;
  if (v13 == v33)
  {
    v49 = *(v12 + 48);
    v51 = *(v12 + 84);
    v52 = v56;

    return v49(v50, v51, v52);
  }

  v50 = (v35 + v50) & ~v29;
  if (v18 == v33)
  {
    v49 = *(*(v15 - 8) + 48);
    v51 = v18;
    v52 = v15;

    return v49(v50, v51, v52);
  }

  v53 = *(v20 + 48);
  v54 = (v36 + v50) & ~v31;

  return v53(v54, v21, v55);
}

unsigned int *sub_1D8F329C4(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v54 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v52 = a4[4];
  v13 = *(v52 - 8);
  v53 = *(v13 + 84);
  if (v53 > v11)
  {
    v11 = *(v13 + 84);
  }

  v14 = *(v12 - 8);
  v51 = *(v14 + 84);
  if (v51 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v52 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v54;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v53 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v51 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_1D8F32F44(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              result = swift_checkMetadataState();
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D8F3305C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v53 = a3[2];
  v52 = a3[3];
  v5 = *(*(v53 - 8) + 84);
  v6 = *(v52 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v50 = a3[4];
  v9 = *(v50 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v53 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v51 = *(v9 + 84);
  if (v51 > v10)
  {
    v10 = *(v9 + 84);
  }

  v49 = *(*(v8 - 8) + 84);
  if (v49 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v11 = *(a3[6] - 8);
  if (*(v11 + 84) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v48 = a3[7];
  v13 = *(v48 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v47 = a3[8];
  v16 = *(v47 - 8);
  v17 = *(v6 + 80);
  v54 = *(*(v52 - 8) + 64);
  v18 = *(v9 + 80);
  v19 = *(v8 - 8);
  v20 = *(v9 + 64);
  v21 = *(v19 + 80);
  v22 = *(v11 + 80);
  v23 = *(v13 + 80);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(*(v53 - 8) + 64) + v17;
  v27 = *(v19 + 64) + v22;
  v28 = *(v11 + 64) + v23;
  v29 = *(*(v48 - 8) + 64) + v24;
  v30 = a2 >= v25;
  v31 = a2 - v25;
  if (v31 == 0 || !v30)
  {
    goto LABEL_42;
  }

  v32 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_21;
  }

  v35 = ((v31 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v35))
  {
    v34 = *(a1 + v32);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 > 0xFF)
  {
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 >= 2)
  {
LABEL_21:
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

LABEL_28:
    v36 = (v34 - 1) << v33;
    if (v32 > 3)
    {
      v36 = 0;
    }

    if (v32)
    {
      if (v32 <= 3)
      {
        v37 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
      }

      else
      {
        v37 = 4;
      }

      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v38 = *a1;
        }
      }

      else if (v37 == 1)
      {
        v38 = *a1;
      }

      else
      {
        v38 = *a1;
      }
    }

    else
    {
      v38 = 0;
    }

    return v25 + (v38 | v36) + 1;
  }

LABEL_41:
  if (!v25)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v25)
  {
    v40 = *(v53 - 8);
    v39 = v53;
LABEL_44:
    v41 = *(v40 + 48);
    goto LABEL_48;
  }

  if (v7 == v25)
  {
    v39 = v52;
    v41 = *(*(v52 - 8) + 48);
    a1 = ((a1 + v26) & ~v17);
    v5 = v7;
LABEL_48:

    return v41(a1, v5, v39);
  }

  a1 = ((((a1 + v26) & ~v17) + v54 + v18) & ~v18);
  v5 = v51;
  if (v51 == v25)
  {
    v40 = *(v50 - 8);
    v39 = v50;
    goto LABEL_44;
  }

  v43 = (a1 + v20 + v21) & ~v21;
  if (v49 == v25)
  {
    v44 = *(v19 + 48);

    return v44(v43);
  }

  else
  {
    v45 = (v27 + v43) & ~v22;
    if (*(v11 + 84) != v25)
    {
      a1 = ((v28 + v45) & ~v23);
      if (v14 == v25)
      {
        v41 = *(v13 + 48);
        v5 = *(v13 + 84);
        v39 = v48;
      }

      else
      {
        v41 = *(v16 + 48);
        a1 = ((a1 + v29) & ~v24);
        v5 = *(v16 + 84);
        v39 = v47;
      }

      return v41(a1, v5, v39);
    }

    v46 = *(v11 + 48);

    return v46(v45);
  }
}

_BYTE *sub_1D8F33640(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v4 = *(v51 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v51 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v49 = *(v9 + 84);
  if (v49 > v7)
  {
    v7 = *(v9 + 84);
  }

  v10 = *(v8 - 8);
  v47 = *(v10 + 84);
  if (v47 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v50 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v50 + 64);
  v48 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v48 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *&result[v32] = v37;
            }

            else
            {
              *&result[v32] = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          result[v32] = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v51 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v50 + 56);
    result = (&a1[v30] & ~v19);
    goto LABEL_65;
  }

  result = (((&a1[v30] & ~v19) + v20 + v21) & ~v21);
  if (v49 == v33)
  {
    v42 = v48;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (&result[v22 + v23] & ~v23);
  if (v47 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = &result[v24 + v25] & ~v25;
  if (v45 != v33)
  {
    result = ((v31 + v43) & ~v27);
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (&result[v28 + v29] & ~v29);
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

uint64_t sub_1D8F33C6C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              result = swift_checkMetadataState();
              if (v8 <= 0x3F)
              {
                result = swift_checkMetadataState();
                if (v9 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D8F33DA0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v54 = a3[2];
  v53 = *(v54 - 8);
  v5 = *(v53 + 84);
  v51 = a3[3];
  v6 = *(v51 - 8);
  v7 = *(v6 + 84);
  v52 = v7;
  if (v7 <= v5)
  {
    v7 = *(v53 + 84);
  }

  v49 = a3[4];
  v8 = *(v49 - 8);
  v9 = *(v8 + 84);
  v50 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v10 = a3[6];
  v47 = a3[5];
  v11 = *(v47 - 8);
  v48 = *(v11 + 84);
  if (v48 > v9)
  {
    v9 = *(v11 + 84);
  }

  v12 = *(v10 - 8);
  if (*(v12 + 84) > v9)
  {
    v9 = *(v12 + 84);
  }

  v46 = a3[7];
  v13 = *(v46 - 8);
  v44 = a3[8];
  v14 = *(v44 - 8);
  if (*(v13 + 84) <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v45 = *(v14 + 84);
  if (v45 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v43 = a3[9];
  v17 = *(v43 - 8);
  v18 = *(v6 + 80);
  v56 = *(*(v51 - 8) + 64);
  v19 = *(v8 + 80);
  v55 = *(*(v49 - 8) + 64);
  v20 = *(v11 + 80);
  v21 = *(v12 + 80);
  v22 = *(v13 + 80);
  v23 = *(v14 + 80);
  v24 = *(v14 + 64);
  v25 = *(v17 + 80);
  if (*(v17 + 84) <= v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = *(v17 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(*(v54 - 8) + 64) + v18;
  v28 = *(*(v47 - 8) + 64) + v21;
  v29 = *(*(v10 - 8) + 64) + v22;
  v30 = *(*(v46 - 8) + 64) + v23;
  v31 = v24 + v25;
  if (a2 <= v26)
  {
    goto LABEL_40;
  }

  v32 = ((v31 + ((v30 + ((v29 + ((v28 + ((v55 + v20 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v20)) & ~v21)) & ~v22)) & ~v23)) & ~v25) + *(*(v43 - 8) + 64);
  v33 = 8 * v32;
  if (v32 <= 3)
  {
    v35 = ((a2 - v26 + ~(-1 << v33)) >> v33) + 1;
    if (HIWORD(v35))
    {
      v34 = *(a1 + v32);
      if (!v34)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v35 > 0xFF)
    {
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v35 < 2)
    {
LABEL_39:
      if (v26)
      {
LABEL_40:
        if (v5 == v26)
        {
          v37 = v54;
          v38 = *(v53 + 48);
          v39 = *(v53 + 84);
          goto LABEL_49;
        }

        a1 = ((a1 + v27) & ~v18);
        v39 = v52;
        if (v52 == v26)
        {
          v37 = v51;
          v38 = *(*(v51 - 8) + 48);
          goto LABEL_49;
        }

        v39 = v50;
        if (v50 == v26)
        {
          v37 = v49;
          v38 = *(*(v49 - 8) + 48);
          a1 = ((a1 + v56 + v19) & ~v19);
          goto LABEL_49;
        }

        a1 = ((((a1 + v56 + v19) & ~v19) + v55 + v20) & ~v20);
        v39 = v48;
        if (v48 == v26)
        {
          v38 = *(*(v47 - 8) + 48);
          v37 = v47;
          goto LABEL_49;
        }

        v41 = (a1 + v28) & ~v21;
        if (*(v12 + 84) == v26)
        {
          v42 = *(v12 + 48);
        }

        else
        {
          v41 = (v29 + v41) & ~v22;
          if (*(v13 + 84) != v26)
          {
            a1 = ((v30 + v41) & ~v23);
            v39 = v45;
            if (v45 != v26)
            {
              v38 = *(v17 + 48);
              a1 = ((a1 + v31) & ~v25);
              v39 = *(v17 + 84);
              v37 = v43;

              return v38(a1, v39, v37);
            }

            v37 = v44;
            v38 = *(*(v44 - 8) + 48);
LABEL_49:

            return v38(a1, v39, v37);
          }

          v42 = *(v13 + 48);
        }

        return v42(v41);
      }

      return 0;
    }
  }

  v34 = *(a1 + v32);
  if (!*(a1 + v32))
  {
    goto LABEL_39;
  }

LABEL_28:
  v36 = (v34 - 1) << v33;
  if (v32 > 3)
  {
    v36 = 0;
  }

  if (v32)
  {
    if (v32 > 3)
    {
      LODWORD(v32) = 4;
    }

    if (v32 > 2)
    {
      if (v32 == 3)
      {
        LODWORD(v32) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v32) = *a1;
      }
    }

    else if (v32 == 1)
    {
      LODWORD(v32) = *a1;
    }

    else
    {
      LODWORD(v32) = *a1;
    }
  }

  return v26 + (v32 | v36) + 1;
}

_BYTE *sub_1D8F343F8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v56 = v4;
  v5 = *(v4 + 84);
  v6 = *(a4[3] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[4] - 8);
  v55 = v7;
  if (v7 <= v5)
  {
    v7 = *(v4 + 84);
  }

  v9 = *(v8 + 84);
  v53 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v10 = *(a4[5] - 8);
  v51 = *(v10 + 84);
  if (v51 > v9)
  {
    v9 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v13 = v12;
  v50 = *(v12 + 84);
  if (v50 > v9)
  {
    v9 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v48 = v15;
  if (v15 <= v9)
  {
    v15 = v9;
  }

  v16 = *(a4[8] - 8);
  v47 = *(v16 + 84);
  if (v47 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = *(v16 + 84);
  }

  v18 = *(a4[9] - 8);
  v19 = *(v4 + 64);
  v54 = v6;
  v20 = *(v6 + 80);
  v21 = *(v6 + 64);
  v52 = *(a4[4] - 8);
  v22 = *(v8 + 80);
  v23 = *(v8 + 64);
  v49 = v10;
  v24 = *(v10 + 80);
  v25 = v23;
  v26 = *(v10 + 64);
  v27 = *(v12 + 80);
  v28 = *(v12 + 64);
  v29 = *(v14 + 80);
  v30 = *(*(v11 - 8) + 64);
  v31 = *(v16 + 80);
  v32 = *(v16 + 64);
  v33 = *(v18 + 80);
  v34 = v19 + v20;
  v35 = v26 + v27;
  v36 = v32 + v33;
  v37 = ((v32 + v33 + ((v30 + v31 + ((v28 + v29 + ((v26 + v27 + ((v25 + v24 + ((v21 + v22 + ((v19 + v20) & ~v20)) & ~v22)) & ~v24)) & ~v27)) & ~v29)) & ~v31)) & ~v33) + *(v18 + 64);
  if (*(v18 + 84) <= v17)
  {
    v38 = v17;
  }

  else
  {
    v38 = *(v18 + 84);
  }

  if (a3 > v38)
  {
    if (v37 <= 3)
    {
      v43 = ((a3 - v38 + ~(-1 << (8 * v37))) >> (8 * v37)) + 1;
      if (HIWORD(v43))
      {
        v39 = 4;
      }

      else
      {
        if (v43 < 0x100)
        {
          v44 = 1;
        }

        else
        {
          v44 = 2;
        }

        if (v43 >= 2)
        {
          v39 = v44;
        }

        else
        {
          v39 = 0;
        }
      }
    }

    else
    {
      v39 = 1;
    }
  }

  else
  {
    v39 = 0;
  }

  result = a1;
  if (v38 >= a2)
  {
    if (v39 > 1)
    {
      if (v39 != 2)
      {
        *&a1[v37] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_44;
      }

      *&a1[v37] = 0;
    }

    else if (v39)
    {
      a1[v37] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      return result;
    }

LABEL_44:
    if (v5 == v38)
    {
      v46 = *(v56 + 56);
    }

    else
    {
      result = (&a1[v34] & ~v20);
      if (v55 == v38)
      {
        v46 = *(v54 + 56);
      }

      else if (v53 == v38)
      {
        v46 = *(v52 + 56);
        result = (&result[v21 + v22] & ~v22);
      }

      else
      {
        result = (((&result[v21 + v22] & ~v22) + v25 + v24) & ~v24);
        if (v51 != v38)
        {
          result = (&result[v35] & ~v27);
          if (v50 == v38)
          {
            v46 = *(v13 + 56);
          }

          else
          {
            result = (&result[v28 + v29] & ~v29);
            if (v48 == v38)
            {
              v46 = *(v14 + 56);
            }

            else
            {
              result = (&result[v30 + v31] & ~v31);
              if (v47 == v38)
              {
                v46 = *(v16 + 56);
              }

              else
              {
                v46 = *(v18 + 56);
                result = (&result[v36] & ~v33);
              }
            }
          }

          return v46(result);
        }

        v46 = *(v49 + 56);
      }
    }

    return v46(result);
  }

  v41 = ~v38 + a2;
  if (v37 >= 4)
  {
    bzero(a1, v37);
    result = a1;
    *a1 = v41;
    v42 = 1;
    if (v39 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v42 = (v41 >> (8 * v37)) + 1;
  if (!v37)
  {
LABEL_54:
    if (v39 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v45 = v41 & ~(-1 << (8 * v37));
  bzero(a1, v37);
  result = a1;
  if (v37 == 3)
  {
    *a1 = v45;
    a1[2] = BYTE2(v45);
    goto LABEL_54;
  }

  if (v37 == 2)
  {
    *a1 = v45;
    if (v39 > 1)
    {
LABEL_58:
      if (v39 == 2)
      {
        *&result[v37] = v42;
      }

      else
      {
        *&result[v37] = v42;
      }

      return result;
    }
  }

  else
  {
    *a1 = v41;
    if (v39 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v39)
  {
    result[v37] = v42;
  }

  return result;
}

uint64_t Subscribers.Completion.failure()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v6, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t sub_1D8F34C68()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v0);
  return sub_1D9179E1C();
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation11ConduitListOyxq_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D8F34CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8F34D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8F34D58(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1D8F34DFC(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      v4 = v2;
      v8 = *v2;
      type metadata accessor for ConduitBase(255, a2[2], a2[3], a2[4]);

      swift_getWitnessTable();
      sub_1D9178B4C();
      sub_1D9178B2C();

      v5 = sub_1D9178B0C();
      if (v5 == 1)
      {
        swift_getWitnessTable();
        sub_1D9178BDC();
        if (a1)
        {
          sub_1D8D54860(v3, 1);

          *v2 = a1;
          *(v2 + 8) = 0;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v6 = v5;
        sub_1D8D54860(v3, 1);
        if (v6)
        {
          *v4 = v8;
          *(v4 + 8) = 1;
        }

        else
        {

          *v4 = 0;
          *(v4 + 8) = 2;
        }
      }
    }
  }

  else if (v3 == a1)
  {
    sub_1D8D54860(*v2, 0);
    *v2 = 0;
    *(v2 + 8) = 2;
  }
}

uint64_t sub_1D8F34FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v10 = sub_1D9179EAC();
  v8[4] = v10;
  v8[5] = *(v10 - 8);
  v8[6] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[7] = v11;
  v14 = (a6 + *a6);
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D8F35134;

  return v14(v11);
}

uint64_t sub_1D8F35134()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D8F35300;
  }

  else
  {
    v2 = sub_1D8F35248;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8F35248()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  swift_storeEnumTagMultiPayload();
  v4(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D8F35300()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  v5(v2);

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D8F353D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8D58924;

  return sub_1D8F34FA0(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_1D8F354AC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 32))(a4, a1, AssociatedTypeWitness);
  v7 = *(v9 + 56);

  return v7(a4, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1D8F35588(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a2(v10);
}

uint64_t Publisher.nullifyFirstIf<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a1;
  v33 = a3;
  v40 = a2;
  v7 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v31 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - v13;
  v15 = sub_1D917769C();
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  WitnessTable = swift_getWitnessTable();
  v31[1] = v7;
  v18 = sub_1D917768C();
  v19 = *(v18 - 8);
  v35 = v18;
  v36 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v32 = v31 - v21;
  (*(*(a4 - 8) + 56))(v14, 1, 1, a4, v20);
  v22 = *(TupleTypeMetadata2 + 48);
  *v10 = 0;
  (*(v11 + 32))(&v10[v22], v14, v7);
  v23 = swift_allocObject();
  v24 = v33;
  v23[2] = v33;
  v23[3] = a4;
  v23[4] = a5;
  sub_1D9177BBC();

  (*(v38 + 8))(v10, TupleTypeMetadata2);
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a4;
  v26 = v39;
  v25[4] = a5;
  v25[5] = v26;
  v25[6] = v40;

  v27 = v32;
  sub_1D9177B9C();

  (*(v37 + 8))(v17, v15);
  v28 = v35;
  swift_getWitnessTable();
  v29 = sub_1D9177B1C();
  (*(v36 + 8))(v27, v28);
  return v29;
}

uint64_t sub_1D8F35AC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  result = sub_1D91791BC();
  v8 = __OFADD__(*a1, 1);
  v9 = *a1 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = *(swift_getTupleTypeMetadata2() + 48);
    *a4 = v9;
    v12 = *(*(v10 - 8) + 16);

    return v12(a4 + v11, a2, v10);
  }

  return result;
}

uint64_t sub_1D8F35B84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a2;
  v31 = a5;
  v30 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v28 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - v19;
  (*(v21 + 16))(v12, a1, TupleTypeMetadata2, v18);
  v22 = *v12;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(v13 + 32);
  v24(v20, &v12[v23], v9);
  if (v22 == 1)
  {
    (*(v13 + 16))(v16, v20, v9);
    if ((*(v30 + 48))(v16, 1, a4) == 1)
    {
      (*(v13 + 8))(v16, v9);
    }

    else
    {
      v25 = v30;
      (*(v30 + 32))(v8, v16, a4);
      v26 = v29(v8);
      (*(v25 + 8))(v8, a4);
      if (v26)
      {
        (*(v13 + 8))(v20, v9);
        return (*(v30 + 56))(v31, 1, 1, a4);
      }
    }
  }

  return (v24)(v31, v20, v9);
}

uint64_t *PaginatedPublisher.transformPublisherPart<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v13;
  v18[1] = v14;
  v18[2] = v15;
  v18[3] = v16;
  type metadata accessor for AnyPaginatedPublisherTransformed(0, v18);
  (*(v9 + 16))(v12, v3, a3);
  a1(v3);
  swift_allocObject();
  return sub_1D8F36E1C(v12, v7);
}

uint64_t *PaginatedPublisher.paginatedBufferedMulticast()(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[3] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D917781C();
  swift_getWitnessTable();
  return PaginatedPublisher.transformPublisherPart<A>(_:)(sub_1D8F361A4, v4, a1);
}

uint64_t sub_1D8F361A4@<X0>(uint64_t *a1@<X8>)
{
  result = Publisher.bufferedMulticast()(*(v1 + 16), *(*(v1 + 24) + 8));
  *a1 = result;
  return result;
}

uint64_t *PaginatedPublisher.paginatedMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a1;
  v7[6] = a2;
  sub_1D917768C();
  swift_getWitnessTable();
  return PaginatedPublisher.transformPublisherPart<A>(_:)(sub_1D8F36280, v7, a3);
}

uint64_t *PaginatedPublisher.paginatedPrepend(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v4 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  sub_1D91786FC();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v6[6] = sub_1D917774C();
  v6[7] = a2;
  v6[8] = swift_getWitnessTable();
  v6[9] = v4;
  sub_1D91775CC();
  swift_getWitnessTable();
  return PaginatedPublisher.transformPublisherPart<A>(_:)(sub_1D8F364D8, v6, a2);
}

uint64_t sub_1D8F3642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_1D91786FC();
  swift_getWitnessTable();
  return sub_1D9177CDC();
}

uint64_t *PaginatedPublisher.paginatedPrint(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  sub_1D91776CC();
  swift_getWitnessTable();
  return PaginatedPublisher.transformPublisherPart<A>(_:)(sub_1D8F36580, v7, a4);
}

uint64_t *PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a8;
  v16[8] = a1;
  v16[9] = a2;
  v17 = sub_1D91786FC();
  v20 = type metadata accessor for FRPOutput(0, v17, v18, v19);

  v21 = PaginatedPublisher.paginatedMap<A>(_:)(sub_1D8F36760, v16, a3, v20, a7);

  return v21;
}

uint64_t sub_1D8F36698@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a4@<X8>, uint64_t a5)
{
  type metadata accessor for FRPSectionInfo(255, a2, a1, a5);
  v6 = sub_1D91786FC();
  v9 = type metadata accessor for FRPOutput(0, v6, v7, v8);
  v10 = sub_1D91786FC();
  return FRPOutput.map<A>(_:)(sub_1D8F38158, v9, v10, a4);
}

uint64_t sub_1D8F36794@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v16[11] = *a1;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a10;
  v16[8] = a2;
  v16[9] = a3;
  type metadata accessor for FRPSectionInfo(255, a6, a5, a10);
  v12 = sub_1D91786FC();
  WitnessTable = swift_getWitnessTable();
  result = sub_1D8D175AC(sub_1D8F3818C, v16, v12, a7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);
  *a9 = result;
  return result;
}

uint64_t *PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v15 = type metadata accessor for FRPOutput(0, a5, v13, v14);

  v16 = PaginatedPublisher.paginatedMap<A>(_:)(sub_1D8F36928, v12, a3, v15, a6);

  return v16;
}

uint64_t sub_1D8F36928@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v5 = type metadata accessor for FRPOutput(0, *(v3 + 24), a1, a2);
  return FRPOutput.map<A>(_:)(sub_1D8F38130, v5, v7, a3);
}

void *Publisher<>.paginatedSwitchToLatest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = swift_getAssociatedTypeWitness();
  v6[2] = a2;
  v6[3] = a3;
  type metadata accessor for SwitchToLatestPaginatedPublisher(0, v6);
  swift_allocObject();
  return sub_1D8F37C1C();
}

uint64_t *sub_1D8F36E1C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  (*(*(*(*v2 + 144) - 8) + 32))(v2 + *(*v2 + 176), a1);
  (*(*(*(v4 + 152) - 8) + 32))(v2 + *(*v2 + 184), a2);
  return v2;
}

uint64_t sub_1D8F370C4()
{
  v1 = *v0;
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 176));
  v2 = *(*(*(v1 + 152) - 8) + 8);
  v3 = v0 + *(*v0 + 184);

  return v2(v3);
}

uint64_t *sub_1D8F37198()
{
  v1 = *v0;
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 176));
  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 184));
  return v0;
}

uint64_t sub_1D8F37264()
{
  sub_1D8F37198();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F372B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - v5;
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  sub_1D917791C();
  if ((*(v4 + 48))(v10, 1, v3))
  {
    (*(v8 + 8))(v10, v7);
    v11 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v10, v3);
    (*(v8 + 8))(v10, v7);
    v11 = (*(*(v2 + 168) + 16))(v3);
    (*(v4 + 8))(v6, v3);
  }

  return v11 & 1;
}

uint64_t sub_1D8F374D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - v5;
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  sub_1D917791C();
  if ((*(v4 + 48))(v10, 1, v3))
  {
    (*(v8 + 8))(v10, v7);
    v11 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v10, v3);
    (*(v8 + 8))(v10, v7);
    v11 = (*(*(v2 + 168) + 24))(v3);
    (*(v4 + 8))(v6, v3);
  }

  return v11 & 1;
}

uint64_t sub_1D8F376F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1D917791C();
  if ((*(v4 + 48))(v10, 1, v3))
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v4 + 16))(v6, v10, v3);
  (*(v8 + 8))(v10, v7);
  (*(*(v2 + 168) + 32))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D8F3790C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D917761C();
  sub_1D917781C();
  swift_getWitnessTable();
  v10[0] = v4;
  v10[1] = sub_1D917768C();
  v10[2] = swift_getWitnessTable();
  v10[3] = swift_getWitnessTable();
  v5 = sub_1D917763C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  v10[0] = *(v3 + 16);
  sub_1D9177B0C();
  sub_1D917762C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D8F37B70()
{
}

uint64_t sub_1D8F37BA8()
{

  return v0;
}

uint64_t sub_1D8F37BD8()
{
  sub_1D8F37BA8();

  return swift_deallocClassInstance();
}

void *sub_1D8F37C1C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 152);
  v4 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  sub_1D917793C();
  (*(*(v3 - 8) + 56))(v6, 1, 1, v3);
  v1[3] = sub_1D917794C();
  v7 = Publisher.bufferedMulticast()(*(v2 + 144), *(v2 + 160));
  v1[2] = v7;
  v12[1] = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1D917781C();

  WitnessTable = swift_getWitnessTable();
  v12[0] = Publisher.makeOptional.getter(v8, WitnessTable);
  sub_1D917781C();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1D9177D4C();

  v1[4] = v10;
  return v1;
}

uint64_t sub_1D8F37EAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8F37EE8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8F38008(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
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

uint64_t Publisher.asResult()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D9179EAC();
  v4 = sub_1D917768C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1D9177B9C();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D91779FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D9177BDC();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D8F3840C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D9179EAC();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8F38518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1D9179EAC();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v9 - v7, a1, AssociatedTypeWitness, v6);
  swift_storeEnumTagMultiPayload();
  return sub_1D9177A0C();
}

uint64_t sub_1D8F386A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E75D8];
  v3 = sub_1D9179E5C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t RepublishingValueSubject.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1D8F3924C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*RepublishingValueSubject.value.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  RepublishingValueSubject.value.getter(v9);
  return sub_1D8F388A4;
}

void sub_1D8F388A4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1D8F3924C(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1D8F3924C(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D8F389CC()
{

  v1 = *(*v0 + 200);
  v2 = sub_1D91791BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 248);
  swift_getAssociatedConformanceWitness();
  sub_1D91777CC();
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

void sub_1D8F38B34()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = sub_1D91791BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = *&v0[*(v1 + 216)];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v0 + 200);
  swift_beginAccess();
  (*(v4 + 16))(v9, &v0[v11], v3);
  v12 = *(v2 - 8);
  LODWORD(v1) = (*(v12 + 48))(v9, 1, v2);
  (*(v4 + 8))(v9, v3);
  if (v1 == 1)
  {
    os_unfair_lock_unlock(v10 + 4);
  }

  else
  {
    (*(v12 + 56))(v6, 1, 1, v2);
    swift_beginAccess();
    (*(v4 + 40))(&v0[v11], v6, v3);
    swift_endAccess();
    v13 = *(v0 + 2);
    *(v0 + 2) = 0;
    os_unfair_lock_unlock(v10 + 4);
    if (v13)
    {

      sub_1D8DB34BC(v0);
    }
  }
}

void sub_1D8F38DA0(uint64_t a1@<X8>)
{
  v23 = *v1;
  v2 = v23;
  v24 = a1;
  v22 = sub_1D9179E5C();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CB8, qword_1D9194EF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  os_unfair_lock_lock((*(v1 + v2[27]) + 16));
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9195F30;
  *(v9 + 32) = 0x746E65726170;
  *(v9 + 40) = 0xE600000000000000;
  v10 = v1[2];
  v11 = v2[20];
  v12 = v2[21];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for RepublishingValueSubject(255, v11, v12, AssociatedConformanceWitness);
  v14 = sub_1D91791BC();
  *(v9 + 48) = v10;
  *(v9 + 72) = v14;
  *(v9 + 80) = 0x657274736E776F64;
  *(v9 + 88) = 0xEA00000000006D61;
  v15 = *(*v1 + 200);
  swift_beginAccess();
  v16 = sub_1D91791BC();
  *(v9 + 120) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 96));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v1 + v15, v16);
  *(v9 + 128) = 0x646E616D6564;
  *(v9 + 136) = 0xE600000000000000;
  v18 = *(*v1 + 208);
  swift_beginAccess();
  v19 = MEMORY[0x1E695BEC8];
  *(v9 + 144) = *(v1 + v18);
  *(v9 + 168) = v19;
  *(v9 + 176) = 0x6465646E616D6564;
  *(v9 + 184) = 0xE800000000000000;
  v20 = MEMORY[0x1E69E6370];
  *(v9 + 192) = *(v1 + *(*v1 + 240));
  *(v9 + 216) = v20;
  *(v9 + 224) = 0x7463656A627573;
  *(v9 + 264) = v14;
  *(v9 + 232) = 0xE700000000000000;
  *(v9 + 240) = v10;
  v21 = sub_1D9179E4C();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v22);
  swift_retain_n();

  sub_1D9179E8C();
  os_unfair_lock_unlock((*(v1 + *(*v1 + 216)) + 16));
}

void sub_1D8F391C8(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0xD000000000000013;
  a1[1] = 0x80000001D91CD680;
}

void sub_1D8F3924C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  os_unfair_lock_lock(v4 + 4);
  v5 = *(*v1 + 136);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  os_unfair_lock_unlock(v4 + 4);
  RepublishingValueSubject.send(_:)(a1);
}

uint64_t RetriggerableDeferred.init(createPublisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v27 = a5;
  v28 = a2;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6EB0, &qword_1D9196130);
  v5 = sub_1D9177A8C();
  v25 = sub_1D8F39640();
  v6 = sub_1D917768C();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  WitnessTable = swift_getWitnessTable();
  v21 = WitnessTable;
  v20 = swift_getWitnessTable();
  v29 = v5;
  v30 = v6;
  v31 = WitnessTable;
  v32 = v20;
  v10 = sub_1D917763C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v29 = 0;
  swift_allocObject();
  v14 = sub_1D917795C();
  v29 = v14;
  v15 = swift_allocObject();
  v16 = v23;
  v15[2] = v22;
  v15[3] = v16;
  v15[4] = v24;
  v15[5] = v28;
  v15[6] = v14;

  sub_1D9177B9C();

  MEMORY[0x1DA729340](v6, v20, v21);
  (*(v26 + 8))(v8, v6);
  swift_getWitnessTable();
  v17 = sub_1D9177B1C();

  result = (*(v11 + 8))(v13, v10);
  *v27 = v17;
  return result;
}

unint64_t sub_1D8F39640()
{
  result = qword_1EDCD0B20;
  if (!qword_1EDCD0B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6EB0, &qword_1D9196130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0B20);
  }

  return result;
}

uint64_t sub_1D8F396A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;

  return sub_1D9177A7C();
}

uint64_t sub_1D8F39768(void (*a1)(uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  swift_weakInit();

  a1(sub_1D8F39908, v4);
}

uint64_t sub_1D8F39800(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D917790C();
  }

  return result;
}

uint64_t RetriggerableDeferred.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1E69E73E0];

  return MEMORY[0x1EEDB5BC8](a1, v8, AssociatedTypeWitness, v10, a3, a4);
}

double sub_1D8F39910(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

uint64_t sub_1D8F39958@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = sub_1D91791BC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D8F39A04(uint64_t a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = sub_1D91791BC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void sub_1D8F39AB8()
{
  v1 = *(v0 + 16);
  v3 = sub_1D91791BC();
  v4 = sub_1D8F39B58;
  v5 = v0;
  sub_1D8D056BC(sub_1D8D12F54, v2, v1);
}

char *SubscriptionSubject.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D8F3A2F8(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

char *SubscriptionSubject.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8F3A2F8(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1D8F39C74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F3A0C4(a1);
  }

  return result;
}

char *SubscriptionSubject.deinit()
{
  v1 = v0;
  if (*(v0 + 3))
  {

    sub_1D917785C();
  }

  v2 = *(*v0 + 128);
  v3 = sub_1D91791BC();
  (*(*(v3 - 8) + 8))(&v1[v2], v3);
  return v1;
}

uint64_t SubscriptionSubject.__deallocating_deinit()
{
  SubscriptionSubject.deinit();

  return swift_deallocClassInstance();
}

void sub_1D8F39E04(void (*a1)(_BYTE *), uint64_t a2)
{
  v16[0] = a2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  v14 = v2[2];
  os_unfair_lock_lock(v14 + 4);
  sub_1D8F39958(v9);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v15 = swift_allocObject();
    v15[2] = v5;
    v15[3] = *(v4 + 88);
    v15[4] = *(v4 + 96);
    v15[5] = a1;
    v15[6] = v16[0];
    v16[4] = sub_1D8F3A4E8;
    v16[5] = v15;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1D91786FC();

    sub_1D91786BC();
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }

  else
  {
    (*(v10 + 32))(v13, v9, v5);
    os_unfair_lock_unlock(v14 + 4);
    a1(v13);
    (*(v10 + 8))(v13, v5);
  }
}

void sub_1D8F3A0C4(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5];
  v7 = v1[2];
  os_unfair_lock_lock(v7 + 4);
  v8 = *(v3 - 8);
  (*(v8 + 16))(v6, a1, v3);
  (*(v8 + 56))(v6, 0, 1, v3);
  sub_1D8F39A04(v6);
  swift_beginAccess();
  v9 = v1[4];
  swift_getFunctionTypeMetadata1();

  v10 = sub_1D917866C();
  swift_beginAccess();
  v1[4] = v10;

  os_unfair_lock_unlock(v7 + 4);
  if (sub_1D91786AC())
  {
    v11 = 0;
    v12 = v9 + 40;
    while (1)
    {
      v13 = sub_1D917868C();
      sub_1D917862C();
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

      v15 = *(v12 - 8);

      v15(a1);

      ++v11;
      v12 += 16;
      if (v14 == sub_1D91786AC())
      {
        goto LABEL_6;
      }
    }

    sub_1D91794BC();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

char *sub_1D8F3A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v4 + 2) = v8;
  *(v4 + 3) = 0;
  v9 = *(v7 + 80);
  swift_getFunctionTypeMetadata1();
  *(v4 + 4) = sub_1D9177FFC();
  (*(*(v9 - 8) + 56))(&v4[*(*v4 + 128)], 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v9;
  v11 = *(v7 + 88);
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = a3;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v11;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = v12;

  v14 = sub_1D9177BCC();

  *(v4 + 3) = v14;

  return v4;
}

uint64_t sub_1D8F3A510(uint64_t a1)
{
  result = sub_1D91791BC();
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

uint64_t sub_1D8F3A6B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7070, &qword_1D91964D8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7078, &qword_1D91964E0);
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F08, &qword_1D9196390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7080, &qword_1D91964E8);
  sub_1D8CF48EC(&qword_1ECAB7088, &qword_1ECAB6F08, &qword_1D9196390, MEMORY[0x1E695BD38]);
  sub_1D9177B9C();
  v14 = xmmword_1D918F800;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7090, &qword_1D91964F0);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB7098, &qword_1ECAB7070, &qword_1D91964D8, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB70A0, &qword_1ECAB7090, &qword_1D91964F0, MEMORY[0x1E695BFA8]);
  v7 = sub_1D9177D2C();

  (*(v1 + 8))(v3, v0);
  *&v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70A8, &qword_1D91964F8);
  sub_1D8CF48EC(&qword_1ECAB70B0, &qword_1ECAB70A8, &qword_1D91964F8, MEMORY[0x1E695BE88]);
  v8 = sub_1D917796C();

  *&v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70B8, &qword_1D9196500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  sub_1D8CF48EC(&qword_1ECAB70C0, &qword_1ECAB70B8, &qword_1D9196500, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB70C8, &qword_1ECAB7078, &qword_1D91964E0, MEMORY[0x1E695BC80]);
  v9 = v13;
  v10 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v9);
  return v10;
}

uint64_t sub_1D8F3AACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7048, &qword_1D91964B0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7050, &qword_1D91964B8);
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F40, &qword_1D91963A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  sub_1D8CF48EC(&qword_1ECAB0908, &qword_1ECAB6F40, &qword_1D91963A8, MEMORY[0x1E695BD38]);
  sub_1D9177B9C();
  v14 = 0;
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7058, &qword_1D91964C0);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB0780, &qword_1ECAB7048, &qword_1D91964B0, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB02F0, &qword_1ECAB7058, &qword_1D91964C0, MEMORY[0x1E695BFA8]);
  v7 = sub_1D9177D2C();

  (*(v1 + 8))(v3, v0);
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7060, &qword_1D91964C8);
  sub_1D8CF48EC(&qword_1ECAB04C8, &qword_1ECAB7060, &qword_1D91964C8, MEMORY[0x1E695BE88]);
  v8 = sub_1D917796C();

  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7068, &qword_1D91964D0);
  sub_1D8CF48EC(&qword_1ECAB0AB8, &qword_1ECAB7068, &qword_1D91964D0, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B40, &qword_1ECAB7050, &qword_1D91964B8, MEMORY[0x1E695BC80]);
  v9 = v13;
  v10 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v9);
  return v10;
}

uint64_t NSUserDefaults.codablePublisher<A>(forKey:decoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a1;
  v29 = a7;
  v27 = a5;
  v12 = sub_1D91791BC();
  sub_1D917781C();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1D91775AC();
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v17 = v28;
  v18 = v29;
  v16[4] = a6;
  v16[5] = v18;
  v16[6] = v7;
  v16[7] = v17;
  v16[8] = a2;
  v33 = v18;
  v19 = v7;

  v20 = swift_getWitnessTable();
  v21 = NSUserDefaults.queryPublisher<A>(_:)(sub_1D8F3C0A0, v16, v12, v20);

  v32 = v21;
  v22 = swift_allocObject();
  v23 = v27;
  v22[2] = a4;
  v22[3] = v23;
  v22[4] = a6;
  v22[5] = v18;
  sub_1D9177B2C();

  swift_getWitnessTable();
  v24 = sub_1D9177B1C();
  (*(v31 + 8))(v15, v13);
  return v24;
}

uint64_t NSUserDefaults.stringPublisher(forKey:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_1D9178FBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EF8, &qword_1D9196380);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v41 = &v40 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F00, &qword_1D9196388);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v47 = &v40 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F08, &qword_1D9196390);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v19 = &v40 - v18;
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v42 = a2;
  v20[4] = a2;
  v21 = objc_opt_self();

  v40 = v2;
  v22 = [v21 defaultCenter];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v23 = sub_1D9178E1C();
  v53 = v23;
  v24 = sub_1D9178DBC();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  sub_1D9177CEC();
  sub_1D8D2210C(v7);

  (*(v9 + 8))(v11, v8);
  v25 = v41;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D8F3C0D8;
  *(v26 + 24) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340, MEMORY[0x1E695BE98]);
  v27 = v44;
  sub_1D9177B9C();

  (*(v45 + 8))(v15, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44F0, &qword_1D9189F90);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D9189080;
  v29 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v30 = [v40 stringForKey_];

  if (v30)
  {
    v31 = sub_1D917820C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  sub_1D8CF48EC(&qword_1ECAB6F10, &qword_1ECAB6EF8, &qword_1D9196380, MEMORY[0x1E695BD60]);
  v34 = v47;
  v35 = v51;
  sub_1D9177CCC();

  (*(v49 + 8))(v25, v35);
  sub_1D8CF48EC(&qword_1ECAB6F18, &qword_1ECAB6F00, &qword_1D9196388, MEMORY[0x1E695BCA8]);
  sub_1D8F3C124();
  v36 = v52;
  sub_1D9177D6C();
  (*(v50 + 8))(v34, v36);
  v37 = sub_1D8F3A6B0();
  (*(v46 + 8))(v19, v48);
  v53 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F28, &qword_1D91B9FC0);
  sub_1D8CF48EC(&qword_1EDCD0B98, &qword_1ECAB6F28, &qword_1D91B9FC0, MEMORY[0x1E695BED8]);
  v38 = sub_1D9177B1C();

  return v38;
}

void sub_1D8F3B8D0(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a1 stringForKey_];

  if (v7)
  {
    v8 = sub_1D917820C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a4 = v8;
  a4[1] = v10;
}

uint64_t NSUserDefaults.timestampPublisher(forKey:)(void *a1, void *a2)
{
  v37[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v37 - v6;
  v8 = sub_1D9178FBC();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v37 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F30, &qword_1D9196398);
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v16 = v37 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F38, &qword_1D91963A0);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v39 = v37 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F40, &qword_1D91963A8);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = v37 - v18;
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v37[1] = a2;
  v20[4] = a2;
  v21 = objc_opt_self();

  v37[0] = v2;
  v22 = [v21 defaultCenter];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v23 = sub_1D9178E1C();
  v48 = v23;
  v24 = sub_1D9178DBC();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  sub_1D9177CEC();
  sub_1D8D2210C(v7);

  (*(v38 + 8))(v10, v8);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D8F3C1A0;
  *(v25 + 24) = v20;
  sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340, MEMORY[0x1E695BE98]);

  v26 = v40;
  sub_1D9177B9C();

  (*(v41 + 8))(v14, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB640, &qword_1D9192060);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D9189080;
  v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v37[0] doubleForKey_];
  v30 = v29;

  *(v27 + 32) = v30;
  sub_1D8CF48EC(&qword_1ECAB0718, &qword_1ECAB6F30, &qword_1D9196398, MEMORY[0x1E695BD60]);
  v31 = v39;
  v32 = v43;
  sub_1D9177CCC();

  (*(v46 + 8))(v16, v32);
  sub_1D8CF48EC(&qword_1ECAB0AA0, &qword_1ECAB6F38, &qword_1D91963A0, MEMORY[0x1E695BCA8]);
  v33 = v45;
  sub_1D9177D6C();
  (*(v47 + 8))(v31, v33);
  v34 = sub_1D8F3AACC();
  (*(v42 + 8))(v19, v44);
  v48 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F48, &qword_1D91963B0);
  sub_1D8CF48EC(&qword_1ECAB0358, &qword_1ECAB6F48, &qword_1D91963B0, MEMORY[0x1E695BED8]);
  v35 = sub_1D9177B1C();

  return v35;
}

double sub_1D8F3C0E4@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

unint64_t sub_1D8F3C124()
{
  result = qword_1ECAB6F20;
  if (!qword_1ECAB6F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB5900, &unk_1D9191B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6F20);
  }

  return result;
}

void sub_1D8F3C1A0(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v3 doubleForKey_];
  v6 = v5;

  *a1 = v6;
}

double sub_1D8F3C200@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

double sub_1D8F3C20C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1D8F3C278(v3, v2);
}

double sub_1D8F3C21C@<D0>(double *a1@<X8>)
{
  (*(v1 + 16))(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

double sub_1D8F3C25C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

double sub_1D8F3C278(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1D8F3C290(uint64_t a1, char a2)
{
  v3 = a1;
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1D917935C();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v4)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D8D9AF48(0, v4 & ~(v4 >> 63), 0);
    v5 = v47;
    if (v41)
    {
      v6 = sub_1D917930C();
    }

    else
    {
      v6 = sub_1D91792DC();
      v7 = *(v3 + 36);
    }

    v44 = v6;
    v45 = v7;
    v46 = v41 != 0;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v37 = v3 + 56;
      v35 = v2;
      v36 = v3 + 64;
      v38 = v4;
      v39 = v3;
      while (v8 < v4)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_38;
        }

        v11 = v44;
        v12 = v46;
        v42 = v45;
        sub_1D8D9B074(v44, v45, v46, v3);
        v14 = v13;
        v15 = [v13 entity];
        v16 = [v15 name];

        if (v16)
        {
          v17 = sub_1D917820C();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0xE000000000000000;
        }

        v20 = [v14 objectID];

        v21 = v5;
        v47 = v5;
        v22 = *(v5 + 16);
        v23 = *(v21 + 24);
        if (v22 >= v23 >> 1)
        {
          sub_1D8D9AF48((v23 > 1), v22 + 1, 1);
          v21 = v47;
        }

        *(v21 + 16) = v22 + 1;
        v24 = v21 + 32 * v22;
        *(v24 + 32) = a2;
        *(v24 + 40) = v17;
        *(v24 + 48) = v19;
        *(v24 + 56) = v20;
        if (v41)
        {
          v3 = v39;
          if (!v12)
          {
            goto LABEL_43;
          }

          v5 = v21;
          if (sub_1D917932C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v4 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71D8, &qword_1D91967E0);
          v9 = sub_1D9178AFC();
          sub_1D91793AC();
          v9(v43, 0);
          if (v8 == v38)
          {
LABEL_35:
            sub_1D8D9B144(v44, v45, v46);
            return;
          }
        }

        else
        {
          v3 = v39;
          if (v12)
          {
            goto LABEL_44;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v25 = 1 << *(v39 + 32);
          if (v11 >= v25)
          {
            goto LABEL_39;
          }

          v5 = v21;
          v26 = v11 >> 6;
          v27 = *(v37 + 8 * (v11 >> 6));
          if (((v27 >> v11) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v39 + 36) != v42)
          {
            goto LABEL_41;
          }

          v28 = v27 & (-2 << (v11 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v11 & 0x7FFFFFFFFFFFFFC0;
            v4 = v38;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            v4 = v38;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                sub_1D8D9B144(v11, v42, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_34;
              }
            }

            sub_1D8D9B144(v11, v42, 0);
          }

LABEL_34:
          v34 = *(v39 + 36);
          v44 = v25;
          v45 = v34;
          v46 = 0;
          if (v8 == v4)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

void DatabasePropertyPublisher.init(objectsToObserve:entitiesToObserve:notificationCenter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71B8, &qword_1D91965F0);
  swift_allocObject();
  v6 = a3;
  a4[3] = sub_1D91778DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71C0, &unk_1D91965F8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = MEMORY[0x1E69E7CD0];
  a4[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;

  *(v8 + 16) = 0;
  a4[5] = v8;
}

PodcastsFoundation::DatabaseEntityChange __swiftcall DatabaseEntityChange.init(type:entityName:entityID:)(PodcastsFoundation::DatabaseEntityChangeType type, Swift::String entityName, NSManagedObjectID entityID)
{
  *v3 = *type;
  *(v3 + 8) = entityName;
  *(v3 + 24) = entityID;
  result.entityName = entityName;
  result.entityID = entityID;
  result.type = type;
  return result;
}

void sub_1D8F3C754(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  os_unfair_lock_lock(v3 + 6);
  sub_1D8F3D0C0(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  v4 = *(a2 + 40);
  os_unfair_lock_lock((v4 + 24));
  sub_1D8F3D0D8((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
}

void sub_1D8F3C7D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 6);
  sub_1D8F3D088(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  sub_1D8F3D0A4((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

void sub_1D8F3C84C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = *(v4 + 16);

  if (!v5)
  {
    if (*a1)
    {
      sub_1D917785C();
    }
  }
}

void sub_1D8F3C8B8(uint64_t a1)
{
  sub_1D9176EAC();

  sub_1D8F3C754(a1, v1 + 16);
}

void sub_1D8F3C92C()
{
  sub_1D9176EAC();

  sub_1D8F3C7D0(v0 + 16);
}

uint64_t sub_1D8F3C990(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1D910EDB8(a2, &v7 - v4);
  return sub_1D8D798AC(v5);
}

uint64_t DatabaseEntityChangeType.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t DatabaseEntityChange.entityName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t *sub_1D8F3CAF8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1D8D461A0(a4, &v10);
    sub_1D8F3CBA4(v7, a2, a3, a4);
    v9 = v8;

    sub_1D8D9AE34(a4);
    sub_1D8D9AE34(a4);
    return v9;
  }

  return result;
}

void sub_1D8F3CBA4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v44 = 0;
  v6 = 0;
  v45 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v46 = (v7 + 63) >> 6;
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v13 = v10 | (v6 << 6);
    v14 = *(*(v5 + 48) + 8 * v13);
    v15 = [v14 entity];
    v16 = [v15 name];

    if (!v16)
    {
      goto LABEL_25;
    }

    v51 = v14;
    v49 = v13;
    v17 = v9;
    v18 = v4[1];
    v19 = sub_1D917820C();
    v21 = v20;

    if (*(v18 + 16))
    {
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v22 = sub_1D9179E1C();
      v23 = -1 << *(v18 + 32);
      v24 = v22 & ~v23;
      if ((*(v18 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v18 + 48) + 16 * v24);
          v27 = *v26 == v19 && v26[1] == v21;
          if (v27 || (sub_1D9179ACC() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v18 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v4 = a4;
        v5 = a3;
        v9 = v17;
        v13 = v49;
        v14 = v51;
LABEL_25:
        v28 = v4;
        v29 = *v4;
        if (v29)
        {
          v30 = [v14 objectID];
          if ((v29 & 0xC000000000000001) != 0)
          {
            v31 = v30;
            v32 = sub_1D917939C();

            v4 = v28;
            if (v32)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v33 = v30;
            v52 = v14;
            if (*(v29 + 16))
            {
              v50 = v13;
              v41 = v9;
              sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
              v14 = v33;
              v34 = sub_1D917913C();
              v35 = -1 << *(v29 + 32);
              v36 = v34 & ~v35;
              if ((*(v29 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
              {
                v37 = ~v35;
                while (1)
                {
                  v38 = *(*(v29 + 48) + 8 * v36);
                  v39 = sub_1D917914C();

                  if (v39)
                  {
                    break;
                  }

                  v36 = (v36 + 1) & v37;
                  if (((*(v29 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }

                v4 = a4;
                v5 = a3;
                v9 = v41;
                v13 = v50;
                goto LABEL_38;
              }

LABEL_34:

              v4 = a4;
              v5 = a3;
              v9 = v41;
            }

            else
            {

              v4 = v28;
            }
          }
        }

        else
        {
          v4 = v28;
LABEL_38:

LABEL_39:
          *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v44++, 1))
          {
            __break(1u);
LABEL_42:

            sub_1D8D9ADFC(a1, a2, v44, v5);
            return;
          }
        }
      }

      else
      {
LABEL_22:

        v4 = a4;
        v5 = a3;
        v9 = v17;
      }
    }

    else
    {

      v9 = v17;
    }
  }

  v11 = v6;
  while (1)
  {
    v6 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v6 >= v46)
    {
      goto LABEL_42;
    }

    v12 = *(v45 + 8 * v6);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v9 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_1D8F3CF9C()
{
  result = qword_1ECAB71D0;
  if (!qword_1ECAB71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB71D0);
  }

  return result;
}

uint64_t sub_1D8F3D000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8F3D048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id NSFetchRequest<>.init(episodeListSettings:)(__int128 *a1)
{
  v2 = a1[3];
  v21[2] = a1[2];
  v21[3] = v2;
  v22[0] = a1[4];
  *(v22 + 13) = *(a1 + 77);
  v3 = a1[1];
  v21[0] = *a1;
  v21[1] = v3;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEntityName_];
  v18 = a1[2];
  v19 = a1[3];
  *v20 = a1[4];
  *&v20[13] = *(a1 + 77);
  v16 = *a1;
  v17 = a1[1];
  v5 = v4;
  v13 = EpisodeListSettings.predicate.getter(v5, v6, v7, v8, v9, v10, v11, v12);
  [v5 setPredicate_];

  EpisodeSortType.descriptors.getter(SBYTE1(v22[0]));
  sub_1D8D28BC8();
  v14 = sub_1D91785DC();
  sub_1D8F3D204(v21);

  [v5 setSortDescriptors_];

  return v5;
}

uint64_t static NSManagedObject.predicateForObjects(with:)(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189080;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
  *(v2 + 64) = sub_1D8F3D318();
  *(v2 + 32) = a1;

  return sub_1D9178C8C();
}

unint64_t sub_1D8F3D318()
{
  result = qword_1ECAAFED0;
  if (!qword_1ECAAFED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB71E8, qword_1D91BE010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFED0);
  }

  return result;
}

id sub_1D8F3D37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  v3 = sub_1D91785FC();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
  *(v4 + 64) = sub_1D8F3D318();
  *(v4 + 32) = v3;
  v5 = sub_1D9178C8C();

  return v5;
}

uint64_t static Array.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1D91786FC();
  return sub_1D91786BC();
}

uint64_t sub_1D8F3D590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1D917811C() & 1) != 0 || (sub_1D917812C())
  {
    return 0;
  }

  a3();
  sub_1D917967C();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_1D917946C();
  v10 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v10);

  MEMORY[0x1DA7298F0](0xD00000000000001ELL, 0x80000001D91CD6D0);
  MEMORY[0x1DA7298F0](a5, a6);
  MEMORY[0x1DA7298F0](0xD00000000000002ELL, 0x80000001D91CD6F0);
  result = sub_1D91796DC();
  __break(1u);
  return result;
}

unint64_t sub_1D8F3D710()
{
  result = qword_1ECAB71F0;
  if (!qword_1ECAB71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB71F0);
  }

  return result;
}

id static NSBundle.podcastsFoundation.getter()
{
  if (qword_1ECAAFC78 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAAFC80;

  return v1;
}

double CGSize.init(width:proportionalTo:)(double result, double a2)
{
  if (result <= 0.0)
  {
    return a2;
  }

  return result;
}

uint64_t Data.init(contentsOf:options:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91774AC();
  sub_1D9176AEC();

  v7 = sub_1D9176C3C();
  v8 = sub_1D91774DC();
  (*(*(v8 - 8) + 8))(a1, v8);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t Data.write(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91774AC();
  sub_1D9176AEC();

  sub_1D9176CAC();
  return (*(v5 + 8))(v7, v4);
}

Swift::String __swiftcall Date.verboseDisplayString()()
{
  v0 = sub_1D8F3DA9C(&selRef_verboseDisplayString);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.verboseDisplayStringWithoutTime()()
{
  v0 = sub_1D8F3DA9C(&selRef_verboseDisplayStringWithoutTime);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.lessVerboseDisplayStringWithoutTime()()
{
  v0 = sub_1D8F3DA9C(&selRef_lessVerboseDisplayStringWithoutTime);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.verboseDisplayStringWithoutTimeAndCurrentYear()()
{
  v0 = sub_1D8F3DA9C(&selRef_verboseDisplayStringWithoutTimeAndCurrentYear);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.lessVerboseDisplayStringWithoutTimeAndCurrentYear()()
{
  v0 = sub_1D8F3DA9C(&selRef_lessVerboseDisplayStringWithoutTimeAndCurrentYear);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1D8F3DA9C(SEL *a1)
{
  v2 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v3 = [v2 *a1];

  v4 = sub_1D917820C();
  return v4;
}

uint64_t Date.yearString.getter(uint64_t a1)
{
  v1 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v2 = [v1 yearString];

  v3 = sub_1D917820C();
  return v3;
}

uint64_t sub_1D8F3DB88()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAAFD90 = result;
  return result;
}

uint64_t sub_1D8F3DDD8()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAB71F8 = result;
  return result;
}

uint64_t sub_1D8F3E04C()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAB7200 = result;
  return result;
}

uint64_t sub_1D8F3E2C0()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E6C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1EDCD5B40 = result;
  return result;
}

id SharedDispatchQueues.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedDispatchQueues.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedDispatchQueues();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SharedDispatchQueues.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedDispatchQueues();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8F3E638(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6D888](a1, a2, WitnessTable);
}

uint64_t sub_1D8F3E698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6DAB0](a1, a2, WitnessTable, a3);
}

uint64_t static OS_dispatch_source.memoryPressurePublisher()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7210, &qword_1D91968D8);
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v21 - v1;
  v2 = sub_1D9177E0C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9178ECC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9178EBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7218, qword_1D91968E0);
  swift_allocObject();
  v12 = sub_1D917795C();
  sub_1D8F3EC50();
  sub_1D9178EAC();
  if (qword_1EDCD09A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D9178EDC();
  (*(v9 + 8))(v11, v8);
  swift_getObjectType();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  aBlock[4] = sub_1D8F3EDD8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_35;
  v16 = _Block_copy(aBlock);

  sub_1D9177E4C();
  sub_1D8CF4D08();
  sub_1D9178EFC();
  _Block_release(v16);
  (*(v22 + 8))(v4, v23);
  (*(v5 + 8))(v7, v21);

  sub_1D9178F3C();
  aBlock[0] = v12;
  *(swift_allocObject() + 16) = v13;
  sub_1D8CF48EC(&qword_1ECAB7288, &unk_1ECAB7218, qword_1D91968E0, MEMORY[0x1E695BFB0]);
  swift_unknownObjectRetain_n();
  v17 = v24;
  sub_1D9177B3C();
  swift_unknownObjectRelease();

  sub_1D8CF48EC(&qword_1ECAB7290, &qword_1ECAB7210, &qword_1D91968D8, MEMORY[0x1E695BCC0]);
  v18 = v26;
  v19 = sub_1D9177B1C();
  swift_unknownObjectRelease();

  (*(v25 + 8))(v17, v18);
  return v19;
}

unint64_t sub_1D8F3EC50()
{
  result = qword_1EDCD76E0;
  if (!qword_1EDCD76E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD76E0);
  }

  return result;
}

uint64_t sub_1D8F3EC9C(uint64_t a1, double a2)
{
  v2 = sub_1D9178ECC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (sub_1D9178EEC())
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1D91790CC();
      sub_1D917790C();
      swift_unknownObjectRelease();
      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_1D8F3EDE4(uint64_t a1)
{
  swift_getObjectType();
  result = sub_1D9178EEC();
  if ((result & 1) == 0)
  {
    return sub_1D9178F2C();
  }

  return result;
}

void static NSFileManager.homeDirectoryPath(forUser:)(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v5 = NSHomeDirectoryForUser(v4);

    if (v5)
    {
      v6 = sub_1D917820C();
      v8 = v7;

      MEMORY[0x1DA728AB0](v6, v8);
      v9 = sub_1D91774DC();
      (*(*(v9 - 8) + 56))(a3, 0, 1, v9);

      return;
    }

    v19 = sub_1D91774DC();
    v15 = *(*(v19 - 8) + 56);
    v16 = v19;
    v17 = a3;
    v18 = 1;
  }

  else
  {
    v10 = NSHomeDirectory();
    v11 = sub_1D917820C();
    v13 = v12;

    MEMORY[0x1DA728AB0](v11, v13);
    v14 = sub_1D91774DC();
    v15 = *(*(v14 - 8) + 56);
    v16 = v14;
    v17 = a3;
    v18 = 0;
  }

  v15(v17, v18, 1, v16);
}

void sub_1D8F3EFE0(uint64_t (*a1)(void))
{
  v1 = a1();
  sub_1D917820C();

  JUMPOUT(0x1DA728AB0);
}

uint64_t static NSFileManager.uniqueTemporaryDirectoryPath.getter()
{
  v0 = sub_1D9176EAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D91774DC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = NSTemporaryDirectory();
  v6 = sub_1D917820C();
  v8 = v7;

  MEMORY[0x1DA728AB0](v6, v8);
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v1 + 8))(v3, v0);
  return sub_1D91774BC();
}

id NSFileManager.directoryExists(at:)()
{
  v1 = swift_slowAlloc();
  sub_1D91774AC();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:v1];

  if (v3)
  {
    v3 = *v1;
  }

  MEMORY[0x1DA72CB90](v1, -1, -1);
  return v3;
}

uint64_t NSFileManager.fileExists(at:)()
{
  v1 = swift_slowAlloc();
  sub_1D91774AC();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:v1];

  if (v3)
  {
    LOBYTE(v3) = *v1 ^ 1;
  }

  MEMORY[0x1DA72CB90](v1, -1, -1);
  return v3 & 1;
}

id sub_1D8F3F310(uint64_t a1, SEL *a2)
{
  sub_1D91774AC();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v5 = [v2 *a2];

  return v5;
}

id NSFileManager.contentsOfDirectory(at:)(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v14[0] = 0;
  v5 = [v2 contentsOfDirectoryAtPath:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1D91785FC();
    v8 = v6;

    MEMORY[0x1EEE9AC00](v9);
    v13[2] = a1;
    sub_1D8E7EB44(sub_1D8F3F5C4, v13, v7);
    v11 = v10;
  }

  else
  {
    v11 = v14[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1D8F3F4D0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1D91774DC();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);

  return sub_1D91774BC();
}

uint64_t NSFileManager.DirectoryContentsIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D91774DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v1)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_1D8D64450(&v13);
    goto LABEL_10;
  }

  if ([*v1 nextObject])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v9 = 1;
    return (*(v4 + 56))(a1, v9, 1, v3);
  }

  v8 = type metadata accessor for NSFileManager.DirectoryContentsIterator(0);
  (*(v4 + 16))(v7, v1 + *(v8 + 20), v3);
  sub_1D91774BC();
  v9 = 0;
  return (*(v4 + 56))(a1, v9, 1, v3);
}

uint64_t sub_1D8F3F7E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1D91774DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void NSFileManager.DirectoryContents.makeIterator()(char *a1@<X8>)
{
  v3 = *(type metadata accessor for NSFileManager.DirectoryContents(0) + 20);
  v4 = *(type metadata accessor for NSFileManager.DirectoryContentsIterator(0) + 20);
  v5 = sub_1D91774DC();
  (*(*(v5 - 8) + 16))(&a1[v4], v1 + v3, v5);
  v6 = *v1;
  sub_1D91774AC();
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v8 = [v6 enumeratorAtPath_];

  *a1 = v8;
}

uint64_t sub_1D8F3F950@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 20);
  v6 = *(type metadata accessor for NSFileManager.DirectoryContentsIterator(0) + 20);
  v7 = sub_1D91774DC();
  (*(*(v7 - 8) + 16))(&a2[v6], v3 + v5, v7);
  v8 = *v3;
  sub_1D91774AC();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10 = [v8 enumeratorAtPath_];

  *a2 = v10;
  return sub_1D8F40AB8(v3, type metadata accessor for NSFileManager.DirectoryContents);
}

void *sub_1D8F3FA44()
{
  v1 = sub_1D8F4056C(v0);
  sub_1D8F40AB8(v0, type metadata accessor for NSFileManager.DirectoryContents);
  return v1;
}

id NSFileManager.directoryContents(at:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = swift_slowAlloc();
  sub_1D91774AC();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v14 fileExistsAtPath:v5 isDirectory:v4];

  if (v6)
  {
    v7 = *v4;
    MEMORY[0x1DA72CB90](v4, -1, -1);
    if (v7 == 1)
    {
      v8 = type metadata accessor for NSFileManager.DirectoryContents(0);
      v9 = *(v8 + 20);
      v10 = sub_1D91774DC();
      (*(*(v10 - 8) + 16))(&a2[v9], a1, v10);
      *a2 = v14;
      (*(*(v8 - 8) + 56))(a2, 0, 1, v8);

      return v14;
    }
  }

  else
  {
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v12 = type metadata accessor for NSFileManager.DirectoryContents(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, 1, 1, v12);
}

id NSFileManager.createDirectory(at:withIntermediateDirectories:attributes:)(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v11[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1D8F40354(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey, &unk_1D91881F4);
    a3 = sub_1D917802C();
  }

  v11[0] = 0;
  v8 = [v4 createDirectoryAtPath:v7 withIntermediateDirectories:a2 & 1 attributes:a3 error:v11];

  if (v8)
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_1D9176A6C();

  return swift_willThrow();
}

id NSFileManager.createFile(at:contents:attributes:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  sub_1D91774AC();
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  if (a3 >> 60 == 15)
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  if (a4)
  {
LABEL_5:
    type metadata accessor for FileAttributeKey(0);
    sub_1D8F40354(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey, &unk_1D91881F4);
    a4 = sub_1D917802C();
  }

LABEL_6:
  v10 = [v5 createFileAtPath:v8 contents:v9 attributes:a4];

  return v10;
}

id NSFileManager.removeItem(at:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6[0] = 0;
  v3 = [v1 removeItemAtPath:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1D9176A6C();

  return swift_willThrow();
}

id sub_1D8F400FC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  sub_1D91774AC();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v9[0] = 0;
  LODWORD(a3) = [v3 *a3];

  if (a3)
  {
    return v9[0];
  }

  v8 = v9[0];
  sub_1D9176A6C();

  return swift_willThrow();
}

uint64_t NSFileManager.destinationOfSymbolicLink(at:)(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  sub_1D91774AC();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11[0] = 0;
  v3 = [v1 destinationOfSymbolicLinkAtPath:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1D917820C();
    v7 = v6;
    v8 = v4;

    return MEMORY[0x1DA728AB0](v5, v7);
  }

  else
  {
    v10 = v11[0];
    sub_1D9176A6C();

    return swift_willThrow();
  }
}

uint64_t sub_1D8F40354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D8F403C4(uint64_t a1)
{
  sub_1D8F40448(319);
  if (v1 <= 0x3F)
  {
    sub_1D91774DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8F40448(uint64_t a1)
{
  if (!qword_1ECAB72B0)
  {
    sub_1D8CF2154(255, &qword_1ECAB72B8, 0x1E696ABA8);
    v1 = sub_1D91791BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAB72B0);
    }
  }
}

uint64_t sub_1D8F404D8(uint64_t a1)
{
  result = sub_1D8CF2154(319, &qword_1EDCD0A10, 0x1E696AC08);
  if (v2 <= 0x3F)
  {
    result = sub_1D91774DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1D8F4056C(uint64_t a1)
{
  v2 = sub_1D91774DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v50 - v9;
  v10 = type metadata accessor for NSFileManager.DirectoryContents(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NSFileManager.DirectoryContentsIterator(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 80);
  sub_1D8F40A54(a1, v13);
  v19 = *(v11 + 28);
  v20 = *(v15 + 28);
  v21 = *(v3 + 16);
  v54 = v3 + 16;
  v55 = v20;
  v53 = v21;
  v21(&v17[v20], v13 + v19, v2);
  v22 = *v13;
  sub_1D91774AC();
  v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v24 = [v22 enumeratorAtPath_];

  v57 = v17;
  *v17 = v24;
  sub_1D8F40AB8(v13, type metadata accessor for NSFileManager.DirectoryContents);
  v56 = v24;
  v25 = 0;
  if (v24)
  {
    v50 = v18;
    v26 = MEMORY[0x1E69E7CC0];
    v52 = (v18 + 32) & ~v18;
    v27 = MEMORY[0x1E69E7CC0] + v52;
    v58 = (v3 + 32);
    v28 = v51;
    while (1)
    {
      if ([v56 nextObject])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
      }

      v62 = v60;
      v63 = v61;
      if (!*(&v61 + 1))
      {
        break;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_32;
      }

      v53(v5, &v57[v55], v2);
      sub_1D91774BC();
      v29 = *v58;
      result = (*v58)(v59, v28, v2);
      if (v25)
      {
        v31 = v26;
        v32 = __OFSUB__(v25--, 1);
        if (v32)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = v26[3];
        if (((v33 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_37;
        }

        v34 = v5;
        v35 = v33 & 0xFFFFFFFFFFFFFFFELL;
        if (v35 <= 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v35;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46F0, &qword_1D918A110);
        v37 = v3;
        v38 = *(v3 + 72);
        v39 = v52;
        v31 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v31);
        if (!v38)
        {
          goto LABEL_38;
        }

        v40 = result - v39;
        if ((result - v39) == 0x8000000000000000 && v38 == -1)
        {
          goto LABEL_39;
        }

        v42 = v40 / v38;
        v31[2] = v36;
        v31[3] = 2 * (v40 / v38);
        v43 = v31 + v39;
        v44 = v26[3] >> 1;
        v45 = v44 * v38;
        if (v26[2])
        {
          if (v31 < v26 || v43 >= v26 + v52 + v45)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v31 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26[2] = 0;
        }

        v27 = &v43[v45];
        v46 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - v44;

        v3 = v37;
        v5 = v34;
        v28 = v51;
        v32 = __OFSUB__(v46, 1);
        v25 = v46 - 1;
        if (v32)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v29(v27, v59, v2);
      v27 += *(v3 + 72);
      v26 = v31;
    }
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
    v26 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D64450(&v62);
LABEL_32:
  result = sub_1D8F40AB8(v57, type metadata accessor for NSFileManager.DirectoryContentsIterator);
  v47 = v26[3];
  if (v47 < 2)
  {
    return v26;
  }

  v48 = v47 >> 1;
  v32 = __OFSUB__(v48, v25);
  v49 = v48 - v25;
  if (!v32)
  {
    v26[2] = v49;
    return v26;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D8F40A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSFileManager.DirectoryContents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F40AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8F40B18()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D8F40CA8;
  }

  else
  {

    v2 = sub_1D8F40C40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8F40C40()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1D8F40CA8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1D8F40D24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8F40E58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8F40FA8(uint64_t a1)
{
  if (!sub_1D9179A7C())
  {
    swift_allocError();
  }

  (*(v1[11] + 8))(v1[12], v1[10]);

  v2 = v1[1];

  return v2();
}

uint64_t sub_1D8F41078()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_1D8CF8188(&unk_1ECAAFD00, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1D8D7B788;
  v2 = v0[9];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1D8F41170()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8F41224(uint64_t a1)
{
  if (!sub_1D9179A7C())
  {
    swift_allocError();
  }

  (*(v1[13] + 8))(v1[14], v1[12]);

  v2 = v1[1];

  return v2();
}

uint64_t sub_1D8F412E0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D8F414DC;
  }

  else
  {
    v2 = sub_1D8F413F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8F413F4()
{

  sub_1D8CF48EC(&qword_1ECAAFE98, &qword_1ECAB72D8, &qword_1D9196A58, MEMORY[0x1E69E8690]);
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1D8D60E3C;

  return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
}

uint64_t sub_1D8F414DC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8F4157C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D8F417C8;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D8F41698;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D8F41698()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_1D91789BC())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72D0, &qword_1D9196A50);
  *v4 = v0;
  v4[1] = sub_1D8F4157C;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v7, v6, v5);
}

uint64_t sub_1D8F417C8()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_1D91789BC())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72D0, &qword_1D9196A50);
    *v4 = v0;
    v4[1] = sub_1D8F4157C;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v7, v6, v5);
  }
}

uint64_t DownloadableURLOptions.urlRawString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString);

  return v1;
}

uint64_t DownloadableURLOptions.nonAppInitiated.getter()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DownloadableURLOptions.nonAppInitiated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DownloadableURLOptions.__allocating_init(_:nonAppInitiated:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1D9176ACC();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v7 = [v5 init:v6 nonAppInitiated:a2 & 1];

  v8 = sub_1D9176C2C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id DownloadableURLOptions.init(_:nonAppInitiated:)(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1D9176ACC();
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v7 = [v3 init:v6 nonAppInitiated:a2 & 1];

  v8 = sub_1D9176C2C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id DownloadableURLOptions.__allocating_init(_:nonAppInitiated:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString];
  *v8 = a1;
  v8[1] = a2;
  v7[OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id DownloadableURLOptions.init(_:nonAppInitiated:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString];
  *v8 = a1;
  v8[1] = a2;
  v3[OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id DownloadableURLOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownloadableURLOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Sequence.cartesianProduct<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a2;
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v60 = &v47 - v9;
  v10 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - v11;
  v53 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  v63 = a5;
  v15 = swift_getAssociatedTypeWitness();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v71 = AssociatedTypeWitness;
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v47 - v19;
  v20 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v47 - v21;
  v23 = v68;
  v24 = *(v68 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = swift_getAssociatedTypeWitness();
  v48 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v29 = &v47 - v28;
  v73 = sub_1D917866C();
  (*(v24 + 16))(v27, v69, v23);
  sub_1D91783FC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = v29;
  v58 = AssociatedConformanceWitness;
  sub_1D91791DC();
  v31 = v66;
  v32 = v71;
  v56 = *(v66 + 48);
  v57 = v66 + 48;
  if (v56(v22, 1, v71) != 1)
  {
    v35 = *(v31 + 32);
    v34 = v31 + 32;
    v53 += 2;
    v54 = v35;
    v52 = v8 - 8;
    v51 = (v34 - 16);
    ++v50;
    v66 = v34;
    v49 = (v34 - 24);
    v55 = v22;
    v70 = v15;
    v35(v72, v22, v32);
    while (1)
    {
      (*v53)(v59, v61, v62);
      sub_1D91783FC();
      v69 = swift_getAssociatedConformanceWitness();
      sub_1D91791DC();
      v39 = *(v8 - 8);
      v68 = *(v39 + 48);
      v40 = (v68)(v12, 1, v8);
      v41 = TupleTypeMetadata2;
      v42 = v17;
      v43 = v60;
      if (v40 != 1)
      {
        v44 = *v51;
        v45 = (v39 + 32);
        do
        {
          v46 = *(v41 + 48);
          v44(v43, v72, v71);
          (*v45)(&v43[v46], v12, v8);
          sub_1D91786FC();
          sub_1D91786BC();
          sub_1D91791DC();
        }

        while ((v68)(v12, 1, v8) != 1);
      }

      v17 = v42;
      (*v50)(v42, v70);
      v37 = v71;
      v36 = v72;
      (*v49)(v72, v71);
      v38 = v55;
      sub_1D91791DC();
      if (v56(v38, 1, v37) == 1)
      {
        break;
      }

      v54(v36, v38, v37);
    }
  }

  (*(v48 + 8))(v64, v67);
  return v73;
}

uint64_t Sequence.sorted<A, B>(by:using:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = Sequence.uniqued<A>(by:)(a2, a3, a5, a7);
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a2;
  v13 = sub_1D91786FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1D8D175AC(sub_1D8F42970, v20, v13, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  v27 = v17;
  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D917808C();
  v18 = sub_1D917843C();

  return v18;
}

uint64_t sub_1D8F4289C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  swift_getAtKeyPath();
  return (*(*(v5 - 8) + 16))(&a3[v6], a1, v5);
}

uint64_t static NSThread.performOnMain(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([swift_getObjCClassFromMetadata() isMainThread])
  {
    return a1();
  }

  sub_1D8CFD888();
  v13 = sub_1D9178E1C();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1D8D244E0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_36;
  v15 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D8F42CE4(uint64_t a1)
{
  result = sub_1D917734C();
  if (v2 <= 0x3F)
  {
    result = sub_1D91791BC();
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

uint64_t sub_1D8F42DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-1] - v9;
  v11 = sub_1D9176E3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s29SynchronizedEventSubscriptionCMa(0, a2, a3, v15);
  (*(v12 + 16))(v14, v3, v11);
  swift_allocObject();
  v17 = sub_1D8F43094(v14);
  v18 = *(a2 - 8);
  (*(v18 + 16))(v10, a1, a2);
  (*(v18 + 56))(v10, 0, 1, a2);
  v19 = *(*v17 + 120);
  swift_beginAccess();
  (*(v8 + 40))(v17 + v19, v10, v7);
  swift_endAccess();
  v22[3] = v16;
  v22[4] = swift_getWitnessTable();
  v22[0] = v17;
  sub_1D917779C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t *sub_1D8F43094(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = qword_1EDCD08A8;
  if (qword_1EDCD11B8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917739C();
  __swift_project_value_buffer(v12, qword_1EDCD11C0);
  sub_1D917737C();
  sub_1D917731C();
  *(v1 + qword_1EDCD0898) = 0;
  (*(*(*(v4 + 80) - 8) + 56))(v1 + *(*v1 + 120), 1, 1);
  v13 = *(v6 + 16);
  v13(v10, v1 + v11, v5);
  v14 = sub_1D917737C();
  v15 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v16 = swift_slowAlloc();
    v23 = a1;
    v17 = v16;
    *v16 = 0;
    v18 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v14, v15, v18, "SynchronizedEventSubscription", "", v17, 2u);
    v19 = v17;
    a1 = v23;
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  v13(v24, v10, v5);
  sub_1D91773FC();
  swift_allocObject();
  v20 = sub_1D91773EC();
  (*(v6 + 8))(v10, v5);
  *(v2 + qword_1EDCD08A0) = v20;
  sub_1D8F4379C(a1);
  v21 = sub_1D9176E3C();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v2;
}

void sub_1D8F433AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D91773AC();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D917734C();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 80);
  v10 = sub_1D91791BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = qword_1EDCD0898;
  [*&v1[qword_1EDCD0898] invalidate];
  (*(*(v9 - 8) + 56))(v14, 1, 1, v9);
  v16 = *(*v1 + 120);
  swift_beginAccess();
  (*(v11 + 40))(&v1[v16], v14, v10);
  swift_endAccess();
  if (*&v1[v15])
  {
    if (qword_1EDCD11B8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917739C();
    __swift_project_value_buffer(v17, qword_1EDCD11C0);

    v18 = sub_1D917737C();
    sub_1D91773DC();
    v19 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      sub_1D917740C();

      v20 = v26;
      if ((*(v26 + 88))(v5, v3) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v5, v3);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v18, v19, v23, "SynchronizedEventSubscription", v21, v22, 2u);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    (*(v6 + 8))(v8, v27);
    v24 = *&v1[v15];
    *&v1[v15] = 0;
  }
}

void sub_1D8F4379C(void *a1)
{
  v126 = a1;
  v2 = *v1;
  v113 = sub_1D91773AC();
  v122 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v103 - v5;
  v6 = sub_1D917734C();
  v123 = *(v6 - 8);
  v124 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v103 - v9;
  v10 = *(v2 + 88);
  v11 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v106 = AssociatedTypeWitness;
  v108 = sub_1D91777CC();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v103 - v13;
  v120 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v103 - v15;
  v16 = sub_1D91791BC();
  v118 = *(v16 - 8);
  v119 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v103 - v19;
  v20 = sub_1D9176E3C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v125 = &v103 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v103 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v103 - v30;
  v128 = qword_1EDCD0898;
  [*&v1[qword_1EDCD0898] invalidate];
  sub_1D9176E2C();
  v32 = swift_allocObject();
  v127 = v1;
  swift_weakInit();
  v33 = v126;
  (*(v21 + 16))(v27, v126, v20);
  v34 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v35 = swift_allocObject();
  v121 = v11;
  *(v35 + 2) = v11;
  *(v35 + 3) = v10;
  v109 = v10;
  *(v35 + 4) = v32;
  (*(v21 + 32))(&v35[v34], v27, v20);

  v36 = sub_1D8F44D00(v33, v31, 0, sub_1D8F44C10, v35);
  if (v36)
  {
    v37 = [objc_opt_self() currentRunLoop];
    [v37 addTimer:v36 forMode:*MEMORY[0x1E695DA28]];

    v38 = v36;
  }

  else
  {

    v38 = 0;
  }

  v39 = *(v21 + 8);
  v39(v31, v20);

  v40 = v127;
  v41 = *&v127[v128];
  *&v127[v128] = v36;
  v42 = v38;

  if (!v36)
  {
    v50 = *(*v40 + 120);
    swift_beginAccess();
    v52 = v118;
    v51 = v119;
    v53 = v114;
    (*(v118 + 16))(v114, &v40[v50], v119);
    v55 = v120;
    v54 = v121;
    if ((*(v120 + 48))(v53, 1, v121))
    {
      (*(v52 + 8))(v53, v51);
    }

    else
    {
      v84 = v104;
      (*(v55 + 16))(v104, v53, v54);
      (*(v52 + 8))(v53, v51);
      v85 = v105;
      (*(*(v106 - 8) + 56))(v105, 1, 1);
      sub_1D917778C();
      (*(v107 + 8))(v85, v108);
      (*(v55 + 8))(v84, v54);
    }

    v86 = v122;
    v87 = v115;
    v75 = v116;
    if (qword_1EDCD11B8 != -1)
    {
      swift_once();
    }

    v88 = sub_1D917739C();
    __swift_project_value_buffer(v88, qword_1EDCD11C0);

    v89 = sub_1D917737C();
    sub_1D91773DC();
    v90 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      sub_1D917740C();

      v91 = v113;
      if ((*(v86 + 88))(v87, v113) == *MEMORY[0x1E69E93E8])
      {
        v92 = "[Error] Interval already ended";
      }

      else
      {
        (*(v86 + 8))(v87, v91);
        v92 = "";
      }

      v99 = swift_slowAlloc();
      *v99 = 0;
      v100 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v89, v90, v100, "SynchronizedEventSubscription", v92, v99, 2u);
      MEMORY[0x1DA72CB90](v99, -1, -1);
    }

    goto LABEL_32;
  }

  v43 = [v42 fireDate];
  v44 = v125;
  sub_1D9176DFC();

  sub_1D9176CCC();
  v46 = v45;
  v39(v44, v20);
  v47 = v117;
  sub_1D9176E2C();
  sub_1D9176CCC();
  v49 = v48;
  v39(v47, v20);
  if (v46 > v49)
  {

    return;
  }

  if (qword_1EDCD1028 != -1)
  {
    swift_once();
  }

  v56 = sub_1D917744C();
  __swift_project_value_buffer(v56, qword_1EDCD1030);
  v57 = v42;
  v58 = sub_1D917741C();
  v59 = sub_1D9178CFC();

  v60 = os_log_type_enabled(v58, v59);
  v126 = v57;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v129[0] = v117;
    *v61 = 136315394;
    v62 = [v57 fireDate];
    LODWORD(v116) = v59;
    v63 = v62;
    v64 = v125;
    sub_1D9176DFC();

    sub_1D8F45634();
    v65 = sub_1D9179A4C();
    v67 = v66;
    v39(v64, v20);
    v68 = sub_1D8CFA924(v65, v67, v129);

    *(v61 + 4) = v68;
    *(v61 + 12) = 2080;
    sub_1D9176E2C();
    v69 = sub_1D9179A4C();
    v71 = v70;
    v39(v64, v20);
    v72 = sub_1D8CFA924(v69, v71, v129);

    *(v61 + 14) = v72;
    v57 = v126;
    _os_log_impl(&dword_1D8CEC000, v58, v116, "Scheduled a timer with a fire date (%s in the past! Current date: %s", v61, 0x16u);
    v73 = v117;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v73, -1, -1);
    MEMORY[0x1DA72CB90](v61, -1, -1);
  }

  v74 = v122;
  v75 = v112;
  v76 = v111;
  [v57 invalidate];
  v77 = *&v40[v128];
  *&v40[v128] = 0;

  v78 = *(*v40 + 120);
  swift_beginAccess();
  v80 = v118;
  v79 = v119;
  v81 = v110;
  (*(v118 + 16))(v110, &v40[v78], v119);
  v83 = v120;
  v82 = v121;
  if ((*(v120 + 48))(v81, 1, v121))
  {
    (*(v80 + 8))(v81, v79);
  }

  else
  {
    v93 = v104;
    (*(v83 + 16))(v104, v81, v82);
    (*(v80 + 8))(v81, v79);
    v94 = v105;
    (*(*(v106 - 8) + 56))(v105, 1, 1);
    sub_1D917778C();
    (*(v107 + 8))(v94, v108);
    (*(v83 + 8))(v93, v82);
  }

  if (qword_1EDCD11B8 != -1)
  {
    swift_once();
  }

  v95 = sub_1D917739C();
  __swift_project_value_buffer(v95, qword_1EDCD11C0);

  v89 = sub_1D917737C();
  sub_1D91773DC();
  v96 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    v97 = v113;
    if ((*(v74 + 88))(v76, v113) == *MEMORY[0x1E69E93E8])
    {
      v98 = "[Error] Interval already ended";
    }

    else
    {
      (*(v74 + 8))(v76, v97);
      v98 = "";
    }

    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v89, v96, v102, "SynchronizedEventSubscription", v98, v101, 2u);
    MEMORY[0x1DA72CB90](v101, -1, -1);

LABEL_32:

    goto LABEL_33;
  }

LABEL_33:
  (*(v123 + 8))(v75, v124);
}

uint64_t sub_1D8F44638(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v23 = a1;
  v7 = sub_1D9176E3C();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D91791BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v27 = a3;
    v20 = *(*Strong + 120);
    swift_beginAccess();
    (*(v15 + 16))(v17, v19 + v20, v14);

    if ((*(v10 + 48))(v17, 1, a4))
    {
      (*(v15 + 8))(v17, v14);
    }

    else
    {
      (*(v10 + 16))(v13, v17, a4);
      (*(v15 + 8))(v17, v14);
      v21 = [v23 fireDate];
      sub_1D9176DFC();

      sub_1D91777AC();
      (*(v24 + 8))(v9, v25);
      (*(v10 + 8))(v13, a4);
    }

    a3 = v27;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F4379C(a3);
  }

  return result;
}

uint64_t *sub_1D8F4497C()
{
  v1 = qword_1EDCD08A8;
  v2 = sub_1D917734C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 120);
  v4 = sub_1D91791BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D8F44A68()
{
  sub_1D8F4497C();

  return swift_deallocClassInstance();
}

uint64_t _s26SynchronizedEventPublisherVMa(uint64_t a1)
{
  result = qword_1EDCD0908;
  if (!qword_1EDCD0908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8F44B48(uint64_t a1)
{
  result = sub_1D9176E3C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8F44C10(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_1D9176E3C() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1D8F44638(a1, v6, v7, v3, v4);
}

void sub_1D8F44C98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1D8F44D00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v88 = a5;
  v87 = a4;
  LODWORD(v89) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v81 - v8;
  v10 = sub_1D917701C();
  v95 = *(v10 - 8);
  v96 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9176FDC();
  v90 = *(v12 - 1);
  v91 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D91768DC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v81 - v19;
  v20 = sub_1D9176E3C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v81 - v24;
  sub_1D9176CCC();
  v27 = v26;
  v94 = a1;
  sub_1D9176CCC();
  v28 = v20;
  v30 = v29;
  v101 = v21;
  v31 = *(v21 + 16);
  v97 = a2;
  v31(v25, a2, v20);
  v32 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v33.n128_f64[0] = v27 - v30;
  v85 = v9;
  v99 = v16;
  v100 = v15;
  if (v27 - v30 >= 60.0)
  {
    if (v33.n128_f64[0] >= 3600.0)
    {
      if (v33.n128_f64[0] >= 86400.0)
      {
        if (v33.n128_f64[0] >= 604800.0)
        {
          v80 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
          [v32 inSameYearAs_];

          (*(v101 + 8))(v25, v28);
          return 0;
        }

        v34 = 3;
      }

      else
      {
        v34 = 2;
      }
    }

    else
    {
      v34 = 1;
    }

    v86 = v34;
  }

  else
  {
    v86 = 0;
  }

  v35 = *(v101 + 8);
  v84 = v28;
  v82 = v35;
  (v35)(v25, v28, v33);

  aBlock[4] = v87;
  aBlock[5] = v88;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8F44C98;
  aBlock[3] = &block_descriptor_37;
  v36 = _Block_copy(aBlock);
  v37 = objc_opt_self();

  v89 = [v37 timerWithTimeInterval:v89 & 1 repeats:v36 block:1.0];
  _Block_release(v36);

  sub_1D9176F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72F0, qword_1D9196C50);
  v38 = sub_1D9176FBC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D9189060;
  v43 = v42 + v41;
  v44 = *(v39 + 104);
  v44(v43, *MEMORY[0x1E6969A98], v38);
  v44(v43 + v40, *MEMORY[0x1E6969A88], v38);
  v44(v43 + 2 * v40, *MEMORY[0x1E6969A58], v38);
  sub_1D8FB208C(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v45 = v98;
  sub_1D9176F6C();

  v46 = v91;
  v47 = *(v90 + 8);
  v47(v14, v91);
  sub_1D9176F7C();
  v48 = v92;
  sub_1D917700C();
  v49 = v93;
  sub_1D9176F4C();
  (*(v95 + 8))(v48, v96);
  v47(v14, v46);
  if (v86 >= 2)
  {
    if (v86 != 2)
    {

      v66 = v100;
      v67 = *(v99 + 8);
      v67(v49, v100);
      v67(v45, v66);
      return 0;
    }

    v58 = sub_1D917689C();
    if (v59)
    {
      v60 = 0;
    }

    else
    {
      v60 = v58;
    }

    v61 = sub_1D917689C();
    v57 = v99;
    v56 = v100;
    if (v62)
    {
      v54 = v85;
      if (v60 < 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v54 = v85;
      if (v60 < v61)
      {
        goto LABEL_37;
      }
    }

    v69 = sub_1D917687C();
    if (v70)
    {
      v71 = 0;
    }

    else
    {
      v71 = v69;
    }

    result = (v71 + 1);
    if (__OFADD__(v71, 1))
    {
      goto LABEL_44;
    }

    sub_1D917688C();
LABEL_37:
    sub_1D917689C();
LABEL_38:
    sub_1D91768AC();
    goto LABEL_39;
  }

  v50 = sub_1D917689C();
  if (v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  v53 = sub_1D917689C();
  v54 = v85;
  if ((v55 & 1) == 0)
  {
    v57 = v99;
    v56 = v100;
    if (v52 < v53)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v57 = v99;
  v56 = v100;
  if ((v52 & 0x8000000000000000) == 0)
  {
LABEL_26:
    v63 = sub_1D917689C();
    if (v64)
    {
      v65 = 0;
    }

    else
    {
      v65 = v63;
    }

    result = (v65 + 1);
    if (!__OFADD__(v65, 1))
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

LABEL_39:
  sub_1D91768BC();
  sub_1D91768CC();
  sub_1D917686C();
  v72 = v101;
  v73 = v84;
  if ((*(v101 + 48))(v54, 1, v84) == 1)
  {
    v74 = *(v57 + 8);
    v74(v49, v56);
    v74(v45, v56);
    sub_1D8CF5EF8(v54);
    return v89;
  }

  else
  {
    v75 = v83;
    (*(v72 + 32))(v83, v54, v73);
    v76 = v73;
    v77 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v78 = v89;
    [v89 setFireDate_];

    v82(v75, v76);
    v79 = *(v57 + 8);
    v79(v49, v56);
    v79(v45, v56);
    return v78;
  }
}

unint64_t sub_1D8F45634()
{
  result = qword_1EDCD5930;
  if (!qword_1EDCD5930)
  {
    sub_1D9176E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5930);
  }

  return result;
}

CGImageRef_optional __swiftcall URL.cgImage()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB4A70, &qword_1D918B320);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E696E0A0];
  *(inited + 32) = *MEMORY[0x1E696E0A0];
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v2 = v1;
  sub_1D8DAE1A4(inited);
  swift_setDeallocating();
  sub_1D8F45FBC(inited + 32);
  v3 = sub_1D9176B1C();
  type metadata accessor for CFString(0);
  sub_1D8F46070(&qword_1EDCD5BB0, type metadata accessor for CFString, &unk_1D9188238);
  v4 = sub_1D917802C();
  v5 = CGImageSourceCreateWithURL(v3, v4);

  if (v5)
  {
    if (CGImageSourceGetCount(v5) >= 1)
    {
      v6 = sub_1D917802C();

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, v6);

      return ImageAtIndex;
    }

    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD5E28);
    v10 = sub_1D917741C();
    v11 = sub_1D9178D0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Unexpectedly found no indexs in CGImageSource from artwork URL.", v12, 2u);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }
  }

  else
  {
  }

  return 0;
}

void sub_1D8F458E8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8F46024();
    sub_1D8F46070(&qword_1ECAB72F8, sub_1D8F46024, MEMORY[0x1E69E81B8]);
    sub_1D9178B3C();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v27 = v17;
        v18 = a1(&v27);

        if (v4)
        {
          v19 = v21;
          goto LABEL_24;
        }

        v5 = v21;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1D917938C())
        {
          goto LABEL_20;
        }

        sub_1D8F46024();
        swift_dynamicCast();
        v17 = v27;
        v15 = v8;
        v16 = v9;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v19 = v21;
LABEL_24:
      sub_1D8D1B144(v19);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_1D8D1B144(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void URL.fileSize()(uint64_t *a1@<X8>)
{
  v3 = sub_1D917697C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AB8, &qword_1D9194688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  v8 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v9 = v8;
  sub_1D8DB9EE8(inited);
  swift_setDeallocating();
  sub_1D8DBA0E0(inited + 32);
  sub_1D9176ADC();

  if (!v1)
  {
    v10 = sub_1D917696C();
    if (v11)
    {
      type metadata accessor for FileError(0);
      sub_1D8F46070(&qword_1ECAB5920, type metadata accessor for FileError, &protocol conformance descriptor for FileError);
      swift_allocError();
      v13 = v12;
      v14 = sub_1D9176C2C();
      (*(*(v14 - 8) + 56))(v13, 1, 2, v14);
      swift_willThrow();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v15 = v10;
      (*(v4 + 8))(v6, v3);
      if (v15 < 0)
      {
        __break(1u);
      }

      else
      {
        *a1 = v15;
      }
    }
  }
}