uint64_t sub_1A7D80CF4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B6E38);
  sub_1A7B0CB00(v0, qword_1EB2B6E38);
  return sub_1A7E22050();
}

uint64_t LinksProbingController.Input.description.getter()
{
  v1 = *(v0 + 24);
  sub_1A7E22D30();
  MEMORY[0x1AC561C90](8250, 0xE200000000000000);
  if (v1)
  {
    v2 = 0x64657463656C6553;
  }

  else
  {
    v2 = 0x656C655320746F4ELL;
  }

  if (v1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xEC00000064657463;
  }

  MEMORY[0x1AC561C90](v2, v3);

  return 0;
}

uint64_t LinksProbingController.__allocating_init(selector:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1A7CC9920(a1, v3);
  v6 = sub_1A7D81214(v5, v1, v3, v4);
  sub_1A7B0CD6C(a1);
  return v6;
}

uint64_t LinksProbingController.init(selector:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1A7CC9920(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1A7D81148(v8, v1, v3, v4);
  sub_1A7B0CD6C(a1);
  return v10;
}

uint64_t LinksProbingController.deinit()
{
  sub_1A7B0CD6C((v0 + 16));

  return v0;
}

uint64_t LinksProbingController.__deallocating_deinit()
{
  sub_1A7B0CD6C((v0 + 16));

  return swift_deallocClassInstance();
}

double LinkEngine.linksProbingController.setter(uint64_t a1)
{
  sub_1A7D81300(a1);

  return result;
}

void (*LinkEngine.linksProbingController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  os_unfair_lock_lock((v1 + 200));
  sub_1A7CC95A0((v1 + 208), v4);
  os_unfair_lock_unlock((v1 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  v4[8] = type metadata accessor for LinksProbingController();
  v5 = swift_dynamicCast();
  v6 = v4[5];
  if (!v5)
  {
    v6 = 0;
  }

  v4[4] = v6;
  return sub_1A7CEA880;
}

uint64_t sub_1A7D81148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  v7 = sub_1A7CC98BC(&v12);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  sub_1A7CC7FFC(&qword_1EB2B6E50, &unk_1A7E4DD00);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1A7CE34F8(MEMORY[0x1E69E7CC0]);
  *(v8 + 16) = 0;
  *(v8 + 24) = v10;
  *(v8 + 32) = v9;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = 0;
  *(a2 + 56) = v8;
  sub_1A7B14FF0(&v12, a2 + 16);
  return a2;
}

uint64_t sub_1A7D81214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_1A7D81148(v9, v10, a3, a4);
}

double sub_1A7D81300(uint64_t a1)
{

  os_unfair_lock_lock(v1 + 50);
  v3 = type metadata accessor for LinksProbingController();
  v4 = v3;
  if (!a1)
  {
    v4 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  v6[0] = a1;
  v6[3] = v4;

  sub_1A7CC8D74(v6, v3);
  os_unfair_lock_unlock(v1 + 50);

  return result;
}

uint64_t sub_1A7D813C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1A7D8140C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D81460(uint64_t *a1, int a2)
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

uint64_t sub_1A7D814A8(uint64_t result, int a2, int a3)
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

uint64_t LinksProbingInputLink.scoredLink.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
}

void LinksProbingInputLink.scoredLink.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
}

void LinksProbingInputLink.probingState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t LinksProbingInputLink.probingState.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1A7D815E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1A7D81628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D81698(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v19 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 16);
      v24[0] = *(a3 + v9);
      v24[1] = v10;
      v11 = *(a3 + v9 + 48);
      v25 = *(a3 + v9 + 32);
      v26 = v11;
      v27 = v24[0];
      v28 = v10;
      v29 = v25;
      v30 = v11;
      sub_1A7D841C0(v24, &v20);
      v12 = v6(&v27);
      if (v3)
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        sub_1A7D841F8(&v20);

        goto LABEL_15;
      }

      if (v12)
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        v31 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1A7CCEA58(0, *(v8 + 16) + 1, 1);
          v8 = v31;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_1A7CCEA58((v13 > 1), v14 + 1, 1);
          v8 = v31;
        }

        *(v8 + 16) = v14 + 1;
        v15 = (v8 + (v14 << 6));
        v16 = v20;
        v17 = v21;
        v18 = v23;
        v15[4] = v22;
        v15[5] = v18;
        v15[2] = v16;
        v15[3] = v17;
        v6 = v19;
      }

      else
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        result = sub_1A7D841F8(&v20);
      }

      ++v7;
      v9 += 64;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1A7D81850()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B6E58);
  sub_1A7B0CB00(v0, qword_1EB2B6E58);
  return sub_1A7E22050();
}

uint64_t LinksProbingSelectorRuleBased.Rule.Link.scoreResolvedLink.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v2;
}

__n128 LinksProbingSelectorRuleBased.Rule.Link.scoreResolvedLink.setter(uint64_t a1)
{
  v2 = *a1;
  v5 = *(a1 + 8);
  v3 = *(a1 + 24);

  v1->n128_u64[1] = v2;
  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v3;
  return result;
}

void LinksProbingSelectorRuleBased.Rule.Link.currentProbingState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t LinksProbingSelectorRuleBased.Rule.Link.currentProbingState.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t LinksProbingSelectorRuleBased.Rule.Link.withProbingScore(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = a2;
}

uint64_t LinksProbingSelectorRuleBased.Rule.Link.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1A7E22B70();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  MEMORY[0x1AC561C90](v3, v4);

  MEMORY[0x1AC561C90](10272, 0xE200000000000000);
  if (v1)
  {
    v5 = 0x64657463656C6553;
  }

  else
  {
    v5 = 0x656C655320746F4ELL;
  }

  if (v1)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEC00000064657463;
  }

  MEMORY[0x1AC561C90](v5, v6);

  MEMORY[0x1AC561C90](2112041, 0xE300000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](0xD000000000000013, 0x80000001A7EB04E0);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](0xD000000000000018, 0x80000001A7EB0500);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](0xD000000000000015, 0x80000001A7EB0520);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0;
}

uint64_t LinksProbingSelectorRuleBased.Rule.Scores.links.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void LinksProbingSelectorRuleBased.Rule.Scores.selectedLinks.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(v1 + 16);
      v6 = (v1 + 32 + (v3 << 6));
      for (i = v3; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
          return;
        }

        v8 = v6[3];
        v10 = *v6;
        v9 = v6[1];
        v21 = v6[2];
        v22 = v8;
        v19 = v10;
        v20 = v9;
        v3 = i + 1;
        if (v10)
        {
          break;
        }

        v6 += 4;
        if (v2 == v3)
        {
          return;
        }
      }

      sub_1A7D841C0(&v19, &v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A7CCEA58(0, *(v4 + 16) + 1, 1);
        v4 = v23;
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A7CCEA58((v12 > 1), v13 + 1, 1);
        v4 = v23;
      }

      *(v4 + 16) = v13 + 1;
      v14 = (v4 + (v13 << 6));
      v15 = v19;
      v16 = v20;
      v17 = v22;
      v14[4] = v21;
      v14[5] = v17;
      v14[2] = v15;
      v14[3] = v16;
    }

    while (v2 - 1 != i);
  }
}

void LinksProbingSelectorRuleBased.Rule.Scores.nonSelectedLinks.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(v1 + 16);
      v6 = (v1 + 32 + (v3 << 6));
      for (i = v3; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
          return;
        }

        v8 = v6[3];
        v10 = *v6;
        v9 = v6[1];
        v21 = v6[2];
        v22 = v8;
        v19 = v10;
        v20 = v9;
        v3 = i + 1;
        if ((v10 & 1) == 0)
        {
          break;
        }

        v6 += 4;
        if (v2 == v3)
        {
          return;
        }
      }

      sub_1A7D841C0(&v19, &v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A7CCEA58(0, *(v4 + 16) + 1, 1);
        v4 = v23;
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A7CCEA58((v12 > 1), v13 + 1, 1);
        v4 = v23;
      }

      *(v4 + 16) = v13 + 1;
      v14 = (v4 + (v13 << 6));
      v15 = v19;
      v16 = v20;
      v17 = v22;
      v14[4] = v21;
      v14[5] = v17;
      v14[2] = v15;
      v14[3] = v16;
    }

    while (v2 - 1 != i);
  }
}

void (*LinksProbingSelectorRuleBased.Rule.Scores.withNonSelectedLinks(_:)@<X0>(void (*result)(__int128 *__return_ptr, __int128 *)@<X0>, void *a2@<X8>))(__int128 *__return_ptr, __int128 *)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = result;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v5, 0);
    v6 = v27;
    v8 = (v4 + 32);
    do
    {
      v9 = v8[3];
      v11 = *v8;
      v10 = v8[1];
      v26[2] = v8[2];
      v26[3] = v9;
      v26[0] = v11;
      v26[1] = v10;
      if (v11 == 1)
      {
        v22 = *v8;
        v23 = v8[1];
        v24 = v8[2];
        v25 = v8[3];
        result = sub_1A7D841C0(v26, &v18);
      }

      else
      {
        v18 = *v8;
        v19 = v8[1];
        v20 = v8[2];
        v21 = v8[3];
        sub_1A7D841C0(v26, &v22);
        v7(&v22, &v18);
        result = sub_1A7D841F8(v26);
      }

      v20 = v24;
      v21 = v25;
      v18 = v22;
      v19 = v23;
      v27 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1A7CCEA58((v12 > 1), v13 + 1, 1);
        v6 = v27;
      }

      *(v6 + 16) = v13 + 1;
      v14 = (v6 + (v13 << 6));
      v15 = v18;
      v16 = v19;
      v17 = v21;
      v14[4] = v20;
      v14[5] = v17;
      v14[2] = v15;
      v14[3] = v16;
      v8 += 4;
      --v5;
    }

    while (v5);
  }

  *a2 = v6;
  return result;
}

void (*LinksProbingSelectorRuleBased.Rule.Scores.withLinks(_:)@<X0>(void (*result)(_OWORD *__return_ptr, _OWORD *)@<X0>, void *a2@<X8>))(_OWORD *__return_ptr, _OWORD *)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = result;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v5, 0);
    v6 = v23;
    v8 = (v4 + 32);
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      v21[2] = v8[2];
      v21[3] = v11;
      v21[0] = v9;
      v21[1] = v10;
      v12 = v8[1];
      v20[0] = *v8;
      v20[1] = v12;
      v13 = v8[3];
      v20[2] = v8[2];
      v20[3] = v13;
      sub_1A7D841C0(v21, v22);
      v7(v22, v20);
      result = sub_1A7D841F8(v21);
      v23 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1A7CCEA58((v14 > 1), v15 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v15 + 1;
      v16 = (v6 + (v15 << 6));
      v17 = v22[0];
      v18 = v22[1];
      v19 = v22[3];
      v16[4] = v22[2];
      v16[5] = v19;
      v16[2] = v17;
      v16[3] = v18;
      v8 += 4;
      --v5;
    }

    while (v5);
  }

  *a2 = v6;
  return result;
}

uint64_t LinksProbingSelectorRuleBased.Rule.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_1A7D82214(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_1A7D84B9C;
  *(a2 + 24) = v5;
}

uint64_t LinksProbingSelectorRuleBased.Rule.rule.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void LinksProbingSelectorRuleBased.Rule.rule.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t LinksProbingSelectorRuleBased.Rule.init(name:rule:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static LinksProbingSelectorRuleBased.Rule.multiplyNonSelectedProbingScoreBy(_:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000022, 0x80000001A7EB0540);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = sub_1A7D84228;
  a1[3] = result;
  return result;
}

uint64_t *sub_1A7D823F0@<X0>(uint64_t *result@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = *result;
  v5 = *(*result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v5, 0);
    v6 = v33;
    v8 = v4 + 73;
    do
    {
      v9 = *(v8 - 25);
      v10 = *(v8 + 7);
      v11 = *(v8 - 41);
      v31 = *(v8 - 9);
      v32 = v10;
      v29 = v11;
      v30 = v9;
      if (v11 == 1)
      {
        v12 = v29;
        v28[0] = *(v8 - 40);
        *(v28 + 3) = *(v8 - 37);
        v13 = *(&v29 + 1);
        v23 = v30;
        v14 = v31;
        v15 = BYTE8(v31);
        v27[0] = *v8;
        *(v27 + 3) = *(v8 + 3);
        v17 = *(&v32 + 1);
        v16 = v32;
      }

      else
      {
        v12 = 0;
        v17 = *(&v32 + 1) * a3;
        v13 = *(&v29 + 1);
        v23 = v30;
        v14 = v31;
        v15 = BYTE8(v31);
        v16 = v32;
      }

      v26[0] = v28[0];
      *(v26 + 3) = *(v28 + 3);
      v25[0] = v27[0];
      *(v25 + 3) = *(v27 + 3);
      result = sub_1A7D841C0(&v29, v24);
      v33 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1A7CCEA58((v18 > 1), v19 + 1, 1);
        v6 = v33;
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + (v19 << 6);
      *(v20 + 32) = v12;
      v21 = *(v26 + 3);
      *(v20 + 33) = v26[0];
      *(v20 + 36) = v21;
      *(v20 + 40) = v13;
      *(v20 + 48) = v23;
      *(v20 + 64) = v14;
      *(v20 + 72) = v15;
      v22 = v25[0];
      *(v20 + 76) = *(v25 + 3);
      *(v20 + 73) = v22;
      *(v20 + 80) = v16;
      *(v20 + 88) = v17;
      v8 += 64;
      --v5;
    }

    while (v5);
  }

  *a2 = v6;
  return result;
}

uint64_t static LinksProbingSelectorRuleBased.Rule.multiplyByInverseSelectedQuality(excludingSelectedLinks:defaultSelectedLinkQuality:)@<X0>(char a1@<W0>, void *a2@<X8>, double a3@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a1;
  *a2 = 0xD000000000000020;
  a2[1] = 0x80000001A7EB0570;
  a2[2] = sub_1A7D84230;
  a2[3] = result;
  return result;
}

void sub_1A7D8264C(uint64_t *a1@<X0>, char a2@<W2>, void *a3@<X8>, double a4@<D0>)
{
  v5 = *a1;
  *&v46 = *a1;
  LinksProbingSelectorRuleBased.Rule.Scores.selectedLinks.getter();
  v7 = *(v6 + 16);

  if (v7)
  {
    *&v46 = v5;
    LinksProbingSelectorRuleBased.Rule.Scores.selectedLinks.getter();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = (v8 + 64);
      a4 = 0.0;
      do
      {
        v11 = *v10;
        v10 += 8;
        v12 = v11;
        if (a4 <= v11)
        {
          a4 = v12;
        }

        --v9;
      }

      while (v9);
    }

    else
    {
      a4 = 0.0;
    }

    if (qword_1EB2B4830 != -1)
    {
      swift_once();
    }

    v18 = sub_1A7E22060();
    sub_1A7B0CB00(v18, qword_1EB2B6E58);
    v14 = sub_1A7E22040();
    v15 = sub_1A7E228D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a4;
      v17 = "multiplyByInverseSelectedQuality: best selected link has quality %f";
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_1EB2B4830 != -1)
    {
      swift_once();
    }

    v13 = sub_1A7E22060();
    sub_1A7B0CB00(v13, qword_1EB2B6E58);
    v14 = sub_1A7E22040();
    v15 = sub_1A7E228D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a4;
      v17 = "multiplyByInverseSelectedQuality: no selected links; using %f";
LABEL_17:
      _os_log_impl(&dword_1A7AD9000, v14, v15, v17, v16, 0xCu);
      MEMORY[0x1AC5654B0](v16, -1, -1);
    }
  }

  v19 = *(v5 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v19, 0);
    v20 = v50;
    v21 = (v5 + 32);
    do
    {
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[3];
      v48 = v21[2];
      v49 = v24;
      v46 = v22;
      v47 = v23;
      if ((a2 & 1) != 0 && v46 == 1)
      {
        v25 = *(&v46 + 1);
        v40 = v47;
        v26 = v48;
        v27 = BYTE8(v48);
        v28 = 0.0;
        v29 = 1;
      }

      else
      {
        if (qword_1EB2B4830 != -1)
        {
          swift_once();
        }

        v30 = sub_1A7E22060();
        sub_1A7B0CB00(v30, qword_1EB2B6E58);
        sub_1A7D841C0(&v46, v43);
        v31 = sub_1A7E22040();
        v32 = sub_1A7E228D0();
        sub_1A7D841F8(&v46);
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134218240;
          *(v33 + 4) = *(&v49 + 1);
          *(v33 + 12) = 2048;
          *(v33 + 14) = a4;
          _os_log_impl(&dword_1A7AD9000, v31, v32, "multiplyByInverseSelectedQuality: %f * (1.0 - %f)", v33, 0x16u);
          MEMORY[0x1AC5654B0](v33, -1, -1);
        }

        v28 = *(&v49 + 1) * (1.0 - a4);
        v29 = v46;
        v25 = *(&v46 + 1);
        v40 = v47;
        v26 = v48;
        v27 = BYTE8(v48);
      }

      v34 = v49;
      *v42 = *v45;
      *&v42[3] = *&v45[3];
      *v41 = *v44;
      *&v41[3] = *&v44[3];
      sub_1A7D841C0(&v46, v43);
      v50 = v20;
      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1A7CCEA58((v35 > 1), v36 + 1, 1);
        v20 = v50;
      }

      *(v20 + 16) = v36 + 1;
      v37 = v20 + (v36 << 6);
      *(v37 + 32) = v29;
      *(v37 + 33) = *v42;
      *(v37 + 36) = *&v42[3];
      *(v37 + 40) = v25;
      *(v37 + 48) = v40;
      *(v37 + 64) = v26;
      *(v37 + 72) = v27;
      *(v37 + 76) = *&v41[3];
      *(v37 + 73) = *v41;
      *(v37 + 80) = v34;
      *(v37 + 88) = v28;
      v21 += 4;
      --v19;
    }

    while (v19);
  }

  *a3 = v20;
}

uint64_t static LinksProbingSelectorRuleBased.Rule.applyingProbingRecencyCurve(duration:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000026, 0x80000001A7EB05A0);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = sub_1A7D8423C;
  a1[3] = result;
  return result;
}

uint64_t *sub_1A7D82B80@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v4 = *result;
  v5 = *(*result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_21:
    *a3 = v6;
    return result;
  }

  v32 = a3;
  v44 = MEMORY[0x1E69E7CC0];
  result = sub_1A7CCEA58(0, v5, 0);
  v6 = v44;
  v8 = v4 + 73;
  while (1)
  {
    v9 = *(v8 - 41);
    v10 = *(v8 - 25);
    v11 = *(v8 + 7);
    v42 = *(v8 - 9);
    __x = v11;
    v40 = v9;
    v41 = v10;
    v12 = v11;
    if (BYTE8(v42) == 1)
    {
      break;
    }

    v24 = v40;
    v39[0] = *(v8 - 40);
    *(v39 + 3) = *(v8 - 37);
    v25 = *(&v40 + 1);
    v34 = v41;
    v22 = v42;
    v26 = BYTE8(v42);
    v38[0] = *v8;
    *(v38 + 3) = *(v8 + 3);
    v23 = *(&__x + 1);
LABEL_17:
    v37[0] = v39[0];
    *(v37 + 3) = *(v39 + 3);
    v36[0] = v38[0];
    *(v36 + 3) = *(v38 + 3);
    result = sub_1A7D841C0(&v40, v35);
    v44 = v6;
    v28 = *(v6 + 16);
    v27 = *(v6 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_1A7CCEA58((v27 > 1), v28 + 1, 1);
      v6 = v44;
    }

    *(v6 + 16) = v28 + 1;
    v29 = v6 + (v28 << 6);
    *(v29 + 32) = v24;
    v30 = *(v37 + 3);
    *(v29 + 33) = v37[0];
    *(v29 + 36) = v30;
    *(v29 + 40) = v25;
    *(v29 + 48) = v34;
    *(v29 + 64) = v22;
    *(v29 + 72) = v26;
    v31 = v36[0];
    *(v29 + 76) = *(v36 + 3);
    *(v29 + 73) = v31;
    *(v29 + 80) = v12;
    *(v29 + 88) = v23;
    v8 += 64;
    if (!--v5)
    {
      a3 = v32;
      goto LABEL_21;
    }
  }

  if (((v11 | a2) & 0x8000000000000000) == 0)
  {
    v13 = (a2 - v11);
    v14 = v13 / 1000000.0;
    if (v13 / 1000000.0 <= a4)
    {
      v15 = v13 / 1000000.0;
    }

    else
    {
      v15 = a4;
    }

    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    if (qword_1EB2B4830 != -1)
    {
      swift_once();
    }

    v17 = v16 / a4;
    v18 = sub_1A7E22060();
    sub_1A7B0CB00(v18, qword_1EB2B6E58);
    sub_1A7D841C0(&v40, v35);
    v19 = sub_1A7E22040();
    v20 = sub_1A7E228D0();
    sub_1A7D841F8(&v40);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      *(v21 + 4) = v14;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v17;
      *(v21 + 22) = 2048;
      *(v21 + 24) = pow(*(&__x + 1), v17);
      _os_log_impl(&dword_1A7AD9000, v19, v20, "applyingProbingRecencyCurve: timeElapsedInSeconds: %f, t: %f, result score: %f", v21, 0x20u);
      MEMORY[0x1AC5654B0](v21, -1, -1);
    }

    v22 = v42;
    v23 = 1.0 - v17 * (1.0 - *(&__x + 1));
    v24 = v40;
    v25 = *(&v40 + 1);
    v34 = v41;
    v26 = 1;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t static LinksProbingSelectorRuleBased.Rule.multiplyByInverseConfidence(relativeToSelected:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000030, 0x80000001A7EB05D0);
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1AC561C90](v4, v5);

  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = sub_1A7D84244;
  a2[3] = result;
  return result;
}

uint64_t sub_1A7D82F9C@<X0>(uint64_t *a1@<X0>, char a2@<W2>, void *a3@<X8>)
{
  v5 = *a1;
  *&v34[0] = *a1;
  LinksProbingSelectorRuleBased.Rule.Scores.selectedLinks.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 56);
    v9 = 0.0;
    do
    {
      v10 = *v8;
      v8 += 8;
      v11 = v10;
      if (v9 <= v10)
      {
        v9 = v11;
      }

      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v13 = *(v5 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v13, 0);
    v14 = v37;
    v15 = (v5 + 32);
    if ((a2 & 1) == 0)
    {
      v9 = 1.0;
    }

    do
    {
      v16 = v15[3];
      v17 = *v15;
      v18 = v15[1];
      v35 = v15[2];
      v36 = v16;
      v34[0] = v17;
      v34[1] = v18;
      v19 = v18;
      if (v9 - *(&v18 + 1) < 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v9 - *(&v18 + 1);
      }

      v21 = *(&v36 + 1);
      v22 = v34[0];
      v23 = *(&v34[0] + 1);
      v24 = v35;
      v25 = BYTE8(v35);
      v26 = v36;
      result = sub_1A7D841C0(v34, v32);
      v37 = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_1A7CCEA58((v27 > 1), v28 + 1, 1);
        v14 = v37;
      }

      *(v14 + 16) = v28 + 1;
      v29 = v14 + (v28 << 6);
      *(v29 + 32) = v22;
      v30 = *(v32 + 3);
      *(v29 + 33) = v32[0];
      *(v29 + 36) = v30;
      *(v29 + 40) = v23;
      *(v29 + 48) = v19;
      *(v29 + 64) = v24;
      *(v29 + 72) = v25;
      v31 = *v33;
      *(v29 + 76) = *&v33[3];
      *(v29 + 73) = v31;
      *(v29 + 80) = v26;
      *(v29 + 88) = v20 * v21;
      v15 += 4;
      --v13;
    }

    while (v13);
  }

  *a3 = v14;
  return result;
}

void sub_1A7D8315C()
{
  qword_1EB2B6E70 = 0xD000000000000018;
  *algn_1EB2B6E78 = 0x80000001A7EB0680;
  qword_1EB2B6E80 = sub_1A7D83198;
  qword_1EB2B6E88 = 0;
}

uint64_t *sub_1A7D83198@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v4, 0);
    v5 = v31;
    v6 = v3 + 73;
    do
    {
      v7 = *(v6 - 25);
      v8 = *(v6 + 7);
      v9 = *(v6 - 41);
      v29 = *(v6 - 9);
      v30 = v8;
      v27 = v9;
      v28 = v7;
      if (v9 == 1)
      {
        v10 = *(&v27 + 1);
        v21 = v28;
        v11 = v29;
        v12 = BYTE8(v29);
        v13 = 1;
        v14 = 1.0;
      }

      else
      {
        v13 = v27;
        v26[0] = *(v6 - 40);
        *(v26 + 3) = *(v6 - 37);
        v10 = *(&v27 + 1);
        v21 = v28;
        v11 = v29;
        v12 = BYTE8(v29);
        v25[0] = *v6;
        *(v25 + 3) = *(v6 + 3);
        v14 = *(&v30 + 1);
      }

      v15 = v30;
      v24[0] = v26[0];
      *(v24 + 3) = *(v26 + 3);
      v23[0] = v25[0];
      *(v23 + 3) = *(v25 + 3);
      result = sub_1A7D841C0(&v27, v22);
      v31 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1A7CCEA58((v16 > 1), v17 + 1, 1);
        v5 = v31;
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + (v17 << 6);
      *(v18 + 32) = v13;
      v19 = *(v24 + 3);
      *(v18 + 33) = v24[0];
      *(v18 + 36) = v19;
      *(v18 + 40) = v10;
      *(v18 + 48) = v21;
      *(v18 + 64) = v11;
      *(v18 + 72) = v12;
      v20 = v23[0];
      *(v18 + 76) = *(v23 + 3);
      *(v18 + 73) = v20;
      *(v18 + 80) = v15;
      *(v18 + 88) = v14;
      v6 += 64;
      --v4;
    }

    while (v4);
  }

  *a2 = v5;
  return result;
}

uint64_t static LinksProbingSelectorRuleBased.Rule.alwaysProbeSelectedLinks.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4838 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB2B6E88;
  *a1 = qword_1EB2B6E70;
  *(a1 + 8) = *algn_1EB2B6E78;
  *(a1 + 24) = v1;
}

uint64_t static LinksProbingSelectorRuleBased.Rule.whenSelectedLinksWorseThan(score:confidence:rule:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *a1;
  v9 = a1[3];
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000022, 0x80000001A7EB0610);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](0x6469666E6F63202CLL, 0xEE00203A65636E65);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](0x203A656C7572202CLL, 0xE800000000000000);
  v12 = *(a1 + 1);
  MEMORY[0x1AC561C90](v8, a1[1]);
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = v8;
  *(v10 + 40) = v12;
  *(v10 + 56) = v9;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = sub_1A7D8424C;
  a2[3] = v10;
}

uint64_t sub_1A7D83584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X4>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = *a1;
  v21 = *a1;
  LinksProbingSelectorRuleBased.Rule.Scores.selectedLinks.getter();
  v12 = 0;
  v14 = (v13 + 64);
  v15 = *(v13 + 16) + 1;
  while (--v15)
  {
    v17 = *(v14 - 1);
    v16 = *v14;
    v14 += 8;
    v18 = v17 < a6 || v16 < a5;
    v19 = __OFADD__(v12, v18);
    v12 += v18;
    if (v19)
    {
      __break(1u);
      break;
    }
  }

  if (v12 < 1)
  {
    v21 = v11;
    return a3(&v21, a2);
  }

  else
  {
    *a4 = v11;
  }
}

uint64_t static LinksProbingSelectorRuleBased.Rule.multiplyByInversePrimaryQuality(raisedToPower:defaultSelectedLinkQuality:)@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a2;
  *a1 = 0xD00000000000001FLL;
  a1[1] = 0x80000001A7EB0640;
  a1[2] = sub_1A7D8425C;
  a1[3] = result;
  return result;
}

void sub_1A7D836F8(uint64_t *a1@<X0>, void *a2@<X8>, double a3@<D0>, long double a4@<D1>)
{
  v7 = *a1;
  *&v42[0] = *a1;
  LinksProbingSelectorRuleBased.Rule.Scores.selectedLinks.getter();
  v9 = *(v8 + 16);

  if (v9)
  {
    *&v42[0] = v7;
    LinksProbingSelectorRuleBased.Rule.Scores.selectedLinks.getter();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 64);
      a3 = 0.0;
      do
      {
        v13 = *v12;
        v12 += 8;
        v14 = v13;
        if (a3 <= v13)
        {
          a3 = v14;
        }

        --v11;
      }

      while (v11);
    }

    else
    {
      a3 = 0.0;
    }

    if (qword_1EB2B4830 != -1)
    {
      swift_once();
    }

    v20 = sub_1A7E22060();
    sub_1A7B0CB00(v20, qword_1EB2B6E58);
    v16 = sub_1A7E22040();
    v17 = sub_1A7E228D0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a3;
      v19 = "multiplyByInversePrimaryQuality: best selected link has quality %f";
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_1EB2B4830 != -1)
    {
      swift_once();
    }

    v15 = sub_1A7E22060();
    sub_1A7B0CB00(v15, qword_1EB2B6E58);
    v16 = sub_1A7E22040();
    v17 = sub_1A7E228D0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a3;
      v19 = "multiplyByInversePrimaryQuality: no selected links; using %f";
LABEL_17:
      _os_log_impl(&dword_1A7AD9000, v16, v17, v19, v18, 0xCu);
      MEMORY[0x1AC5654B0](v18, -1, -1);
    }
  }

  v21 = pow(a3, a4);
  v22 = *(v7 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v24 = 1.0 - v21;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v22, 0);
    v23 = v44;
    v25 = (v7 + 32);
    do
    {
      v26 = v25[1];
      v27 = v25[2];
      v28 = v25[3];
      v42[0] = *v25;
      v42[1] = v26;
      v42[2] = v27;
      v42[3] = v28;
      v29 = *(&v28 + 1);
      v30 = v42[0];
      v31 = *(&v42[0] + 1);
      v32 = v26;
      v33 = v27;
      v34 = BYTE8(v27);
      v35 = v28;
      sub_1A7D841C0(v42, v41);
      v44 = v23;
      v37 = *(v23 + 16);
      v36 = *(v23 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1A7CCEA58((v36 > 1), v37 + 1, 1);
        v23 = v44;
      }

      *(v23 + 16) = v37 + 1;
      v38 = v23 + (v37 << 6);
      *(v38 + 32) = v30;
      v39 = *(v41 + 3);
      *(v38 + 33) = v41[0];
      *(v38 + 36) = v39;
      *(v38 + 40) = v31;
      *(v38 + 48) = v32;
      *(v38 + 64) = v33;
      *(v38 + 72) = v34;
      v40 = *v43;
      *(v38 + 76) = *&v43[3];
      *(v38 + 73) = v40;
      *(v38 + 80) = v35;
      *(v38 + 88) = v24 * v29;
      v25 += 4;
      --v22;
    }

    while (v22);
  }

  *a2 = v23;
}

void static LinksProbingSelectorRuleBased.Rule.invert.getter(void *a1@<X8>)
{
  *a1 = 0x747265766E69;
  a1[1] = 0xE600000000000000;
  a1[2] = sub_1A7D83A58;
  a1[3] = 0;
}

uint64_t *sub_1A7D83A58@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = *(*result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v21 = a2;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v3, 0);
    v4 = v25;
    v5 = (v2 + 32);
    do
    {
      v6 = v5[1];
      v7 = v5[2];
      v8 = v5[3];
      v23[0] = *v5;
      v23[1] = v6;
      v23[2] = v7;
      v23[3] = v8;
      v9 = *(&v8 + 1);
      v10 = v23[0];
      v11 = *(&v23[0] + 1);
      v12 = v6;
      v13 = v7;
      v14 = BYTE8(v7);
      v15 = v8;
      result = sub_1A7D841C0(v23, v22);
      v25 = v4;
      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1A7CCEA58((v16 > 1), v17 + 1, 1);
        v4 = v25;
      }

      *(v4 + 16) = v17 + 1;
      v18 = v4 + (v17 << 6);
      *(v18 + 32) = v10;
      v19 = *(v22 + 3);
      *(v18 + 33) = v22[0];
      *(v18 + 36) = v19;
      *(v18 + 40) = v11;
      *(v18 + 48) = v12;
      *(v18 + 64) = v13;
      *(v18 + 72) = v14;
      v20 = *v24;
      *(v18 + 76) = *&v24[3];
      *(v18 + 73) = v20;
      *(v18 + 80) = v15;
      *(v18 + 88) = 1.0 - v9;
      v5 += 4;
      --v3;
    }

    while (v3);
    a2 = v21;
  }

  *a2 = v4;
  return result;
}

uint64_t static LinksProbingSelectorRuleBased.Rule.toPower(_:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  MEMORY[0x1AC561C90](0x287265776F506F74, 0xE800000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = sub_1A7D84264;
  a1[3] = result;
  return result;
}

uint64_t *sub_1A7D83C80@<X0>(uint64_t *result@<X0>, void *a2@<X8>, long double a3@<D0>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v23 = a2;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v4, 0);
    v5 = v30;
    v7 = (v3 + 32);
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v27 = v7[2];
      __x = v10;
      v25 = v8;
      v26 = v9;
      v11 = pow(*(&v10 + 1), a3);
      v12 = v25;
      v13 = *(&v25 + 1);
      v14 = v26;
      v15 = v27;
      v16 = BYTE8(v27);
      v17 = __x;
      result = sub_1A7D841C0(&v25, v24);
      v30 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1A7CCEA58((v18 > 1), v19 + 1, 1);
        v5 = v30;
      }

      *(v5 + 16) = v19 + 1;
      v20 = v5 + (v19 << 6);
      *(v20 + 32) = v12;
      v21 = *(v24 + 3);
      *(v20 + 33) = v24[0];
      *(v20 + 36) = v21;
      *(v20 + 40) = v13;
      *(v20 + 48) = v14;
      *(v20 + 64) = v15;
      *(v20 + 72) = v16;
      v22 = *v29;
      *(v20 + 76) = *&v29[3];
      *(v20 + 73) = v22;
      *(v20 + 80) = v17;
      *(v20 + 88) = v11;
      v7 += 4;
      --v4;
    }

    while (v4);
    a2 = v23;
  }

  *a2 = v5;
  return result;
}

uint64_t static LinksProbingSelectorRuleBased.Rule.raisePenaltyToPower(_:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000014, 0x80000001A7EB0660);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = sub_1A7D8426C;
  a1[3] = result;
  return result;
}

uint64_t *sub_1A7D83EC8@<X0>(uint64_t *result@<X0>, void *a2@<X8>, long double a3@<D0>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v23 = a2;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEA58(0, v4, 0);
    v5 = v30;
    v7 = (v3 + 32);
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v27 = v7[2];
      v28 = v10;
      v25 = v8;
      v26 = v9;
      v11 = pow(1.0 - *(&v10 + 1), a3);
      v12 = v25;
      v13 = *(&v25 + 1);
      v14 = v26;
      v15 = v27;
      v16 = BYTE8(v27);
      v17 = v28;
      result = sub_1A7D841C0(&v25, v24);
      v30 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1A7CCEA58((v18 > 1), v19 + 1, 1);
        v5 = v30;
      }

      *(v5 + 16) = v19 + 1;
      v20 = v5 + (v19 << 6);
      *(v20 + 32) = v12;
      v21 = *(v24 + 3);
      *(v20 + 33) = v24[0];
      *(v20 + 36) = v21;
      *(v20 + 40) = v13;
      *(v20 + 48) = v14;
      *(v20 + 64) = v15;
      *(v20 + 72) = v16;
      v22 = *v29;
      *(v20 + 76) = *&v29[3];
      *(v20 + 73) = v22;
      *(v20 + 80) = v17;
      *(v20 + 88) = 1.0 - v11;
      v7 += 4;
      --v4;
    }

    while (v4);
    a2 = v23;
  }

  *a2 = v5;
  return result;
}

uint64_t LinksProbingSelectorRuleBased.Rule.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinksProbingSelectorRuleBased.rules.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LinksProbingSelectorRuleBased.resolver.setter(__int128 *a1)
{
  sub_1A7B0CD6C((v1 + 8));

  return sub_1A7B14FF0(a1, v1 + 8);
}

uint64_t LinksProbingSelectorRuleBased.init(rules:resolver:threshold:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a1;
  result = sub_1A7B14FF0(a2, a3 + 8);
  *(a3 + 48) = a4;
  return result;
}

uint64_t sub_1A7D84274(uint64_t *a1, uint64_t a2)
{
  sub_1A7CC99E0(v2 + 8, &v91);
  v5 = *(&v92 + 1);
  v6 = v93;
  v7 = sub_1A7CC9878(&v91, *(&v92 + 1));
  v8 = a1[2];
  v9 = MEMORY[0x1E69E7CC0];
  *&v86 = v8;
  if (v8)
  {
    v83 = v7;
    v85 = a2;
    *&v88[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCE8F8(0, v8, 0);
    v10 = v9;
    v11 = *(v9 + 16);
    v12 = 24 * v11 + 48;
    v84 = a1;
    v13 = a1 + 6;
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      *&v88[0] = v10;
      v17 = v11 + 1;
      v18 = *(v10 + 24);

      if (v11 >= v18 >> 1)
      {
        sub_1A7CCE8F8((v18 > 1), v17, 1);
        v10 = *&v88[0];
      }

      *(v10 + 16) = v17;
      v19 = (v10 + v12);
      *(v19 - 2) = v14;
      *(v19 - 1) = v15;
      *v19 = v16;
      v12 += 24;
      v13 += 6;
      ++v11;
      --v8;
    }

    while (v8);
    a2 = v85;
    a1 = v84;
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v20 = (*(v6 + 8))(v10, v5, v6);

  sub_1A7B0CD6C(&v91);
  v21 = *(v20 + 16);
  if (v21)
  {
    v87[0] = v9;
    sub_1A7CCEA58(0, v21, 0);
    if (!*(v20 + 16))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_44;
    }

    v22 = 0;
    v83 = (v20 + 32);
    v82 = a1 + 4;
    v23 = v87[0];
    v81 = v86 + 1;
    v24 = 1;
    v80 = xmmword_1A7E4DBE0;
    v84 = v20;
    while (1)
    {
      v25 = &v83[4 * v22];
      v22 = v24;
      v26 = *v25;
      v86 = *(v25 + 1);
      v27 = v25[3];
      v28 = v81;
      v29 = v82;
      while (--v28)
      {
        v30 = v29 + 6;
        v31 = *v29;
        v29 += 6;
        if (v31 == v26)
        {
          v32 = v23;
          LODWORD(v85) = *(v30 - 8);
          goto LABEL_16;
        }
      }

      v32 = v23;
      LODWORD(v85) = 0;
LABEL_16:
      swift_retain_n();
      os_unfair_lock_lock((v26 + 40));
      v33 = *(v26 + 48);
      if (*(v33 + 16) && (v34 = sub_1A7CD0DFC(&type metadata for LinkProbingState), (v35 & 1) != 0))
      {
        sub_1A7B0CD10(*(v33 + 56) + 32 * v34, &v91);
      }

      else
      {
        v91 = 0u;
        v92 = 0u;
      }

      a1 = v21;
      os_unfair_lock_unlock((v26 + 40));

      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if (swift_dynamicCast())
      {
        v36 = LOBYTE(v88[0]);
        v37 = *(&v88[0] + 1);
      }

      else
      {
        v37 = 0;
        v88[0] = v80;
        v36 = 2;
      }

      v23 = v32;
      v5 = a2;
      if (v36 == 2)
      {
        v38 = a2;
      }

      else
      {
        v38 = v37;
      }

      v87[0] = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1A7CCEA58((v39 > 1), v40 + 1, 1);
        v23 = v87[0];
      }

      *(v23 + 16) = v40 + 1;
      v41 = v23 + (v40 << 6);
      *(v41 + 32) = v85;
      v42 = *(&v91 + 3);
      *(v41 + 33) = v91;
      *(v41 + 36) = v42;
      *(v41 + 40) = v26;
      *(v41 + 48) = v86;
      *(v41 + 64) = v27;
      *(v41 + 72) = (v36 != 2) & v36;
      v43 = v89;
      *(v41 + 76) = *(&v89 + 3);
      *(v41 + 73) = v43;
      *(v41 + 80) = v38;
      *(v41 + 88) = 0x3FF0000000000000;
      if (v22 == a1)
      {
        break;
      }

      v21 = a1;
      v24 = v22 + 1;
      a2 = v5;
      if (v22 >= *(v84 + 16))
      {
        goto LABEL_53;
      }
    }

    v44 = v23;

    v45 = v44;
    a2 = v5;
  }

  else
  {

    v45 = MEMORY[0x1E69E7CC0];
  }

  v46 = *(*v79 + 16);
  if (v46)
  {
    v47 = *v79 + 56;
    do
    {
      v48 = *(v47 - 8);
      v47 += 32;
      *&v88[0] = v45;

      v48(&v91, v88, a2);

      v45 = v91;
      --v46;
    }

    while (v46);
  }

  v49 = *(v45 + 16);
  a2 = MEMORY[0x1E69E7CC0];
  v50 = v45;
  if (v49)
  {
    v95 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v49, 0);
    v51 = v95;
    a1 = v50;
    v52 = (v50 + 32);
    do
    {
      v53 = *v52;
      v54 = v52[1];
      v55 = v52[3];
      v93 = v52[2];
      v94 = v55;
      v91 = v53;
      v92 = v54;
      v89 = 8237;
      v90 = 0xE200000000000000;
      v88[0] = v53;
      v88[1] = v54;
      v88[2] = v93;
      v88[3] = v55;
      sub_1A7D841C0(&v91, v87);
      v56 = LinksProbingSelectorRuleBased.Rule.Link.description.getter();
      MEMORY[0x1AC561C90](v56);

      sub_1A7D841F8(&v91);
      v58 = v89;
      v57 = v90;
      v95 = v51;
      v60 = *(v51 + 16);
      v59 = *(v51 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1A7CCE918((v59 > 1), v60 + 1, 1);
        v51 = v95;
      }

      *(v51 + 16) = v60 + 1;
      v61 = v51 + 16 * v60;
      *(v61 + 32) = v58;
      *(v61 + 40) = v57;
      v52 += 4;
      --v49;
    }

    while (v49);
    a2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    a1 = v45;
    v51 = MEMORY[0x1E69E7CC0];
  }

  *&v91 = v51;
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v21 = sub_1A7E221F0();
  v5 = v62;

  if (qword_1EB2B4830 != -1)
  {
    goto LABEL_54;
  }

LABEL_44:
  v63 = sub_1A7E22060();
  sub_1A7B0CB00(v63, qword_1EB2B6E58);

  v64 = sub_1A7E22040();
  v65 = sub_1A7E228D0();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v91 = v67;
    *v66 = 136315138;
    v68 = sub_1A7B0CB38(v21, v5, &v91);

    *(v66 + 4) = v68;
    _os_log_impl(&dword_1A7AD9000, v64, v65, "Link Probing Scores:\n%s", v66, 0xCu);
    sub_1A7B0CD6C(v67);
    MEMORY[0x1AC5654B0](v67, -1, -1);
    MEMORY[0x1AC5654B0](v66, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v69);
  v78[2] = v79;
  v70 = sub_1A7D81698(sub_1A7D84C00, v78, a1);
  v71 = *(v70 + 16);
  if (v71)
  {
    v87[0] = a2;
    sub_1A7E22C20();
    v72 = v71 - 1;
    for (i = 32; ; i += 64)
    {
      v74 = *(v70 + i + 48);
      v76 = *(v70 + i);
      v75 = *(v70 + i + 16);
      v93 = *(v70 + i + 32);
      v94 = v74;
      v91 = v76;
      v92 = v75;
      sub_1A7D841C0(&v91, v88);
      sub_1A7E22BF0();
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
      if (!v72)
      {
        break;
      }

      --v72;
    }

    return v87[0];
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1A7D84AC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A7D84B10(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1A7D84B9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

void LinkEngine.links.getter(void *a1@<X8>)
{
  a1[3] = sub_1A7CC7FFC(&qword_1EB2B4A58, &qword_1A7E4DED0);
  a1[4] = sub_1A7CF3788(&qword_1EB2B4A60, &qword_1EB2B4A58, &qword_1A7E4DED0, MEMORY[0x1E69E5DE8]);
  os_unfair_lock_lock((v1 + 16));
  *a1 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
}

uint64_t LinkEngine.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((v3 + 200));
  sub_1A7D90D6C((v3 + 208), a1, v9);
  os_unfair_lock_unlock((v3 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  v7 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v7 ^ 1u, 1, a2);
}

uint64_t LinkEngine.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A7D9240C(a1, a2, a3);
  v4 = sub_1A7E229A0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t sub_1A7D84DF4(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v25 = MEMORY[0x1E69E7CC0];
  a2(0, v2, 0);
  v3 = v25;
  v24 = a1 + 64;
  result = sub_1A7E22AD0();
  v6 = result;
  v7 = 0;
  v22 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v24 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    v23 = *(*(a1 + 56) + 32 * v6);

    if (v13 >= v12 >> 1)
    {
      result = a2(v12 > 1, v13 + 1, 1);
    }

    *(v25 + 16) = v13 + 1;
    *(v25 + 16 * v13 + 32) = v23;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v10);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v9 = v22;
      v18 = (a1 + 72 + 8 * v10);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1A7CD29F0(v6, v11, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1A7CD29F0(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t LinkEngine.add(linkWithUniqueName:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v6 = sub_1A7E22060();
  sub_1A7B0CB00(v6, qword_1EB2B3308);

  v7 = sub_1A7E22040();
  v8 = sub_1A7E228F0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1A7B0CB38(0xD000000000000018, 0x80000001A7EB06A0, &v23);
    *(v9 + 12) = 2080;
    os_unfair_lock_lock((v3 + 120));
    v11 = *(v3 + 128);
    v12 = *(v3 + 136);

    os_unfair_lock_unlock((v3 + 120));
    v13 = sub_1A7B0CB38(v11, v12, &v23);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_1A7B0CB38(a1, a2, &v23);
    _os_log_impl(&dword_1A7AD9000, v7, v8, "LinkEngine.%s[%s]: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v10, -1, -1);
    MEMORY[0x1AC5654B0](v9, -1, -1);
  }

  os_unfair_lock_lock((v3 + 16));
  sub_1A7D8B140((v3 + 24), a1, a2, v3, &v23);
  os_unfair_lock_unlock((v3 + 16));
  v14 = v23;
  if (v24)
  {
    v15 = *(v3 + 56);
    os_unfair_lock_lock((v15 + 16));
    if (*(v15 + 40) == 1)
    {
      sub_1A7D85308();
    }

    v17 = sub_1A7D84DF4(v16, sub_1A7CCE9F8);

    os_unfair_lock_unlock((v15 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 40;
      do
      {
        v20 = *(v19 - 8);
        v24 = a2;
        v25 = v3;
        v22 = v14;
        v23 = a1;

        v20(&v25, &v23, &v22);

        v19 += 16;
        --v18;
      }

      while (v18);
    }
  }

  return v14;
}

void sub_1A7D85308()
{

  v1 = MEMORY[0x1E69E7CC0];
  v0[1] = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v58 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v57 = swift_allocObject();
  *(v57 + 16) = v3;
  v59 = v0;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1A7CE267C(v1);
  v4 = (v60 + 16);
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v61 = (v6 + 63) >> 6;
  v63 = *v0;

  v9 = 0;
  v62 = v5;
  while (1)
  {
    if (v8)
    {
      v10 = v9;
LABEL_15:
      v13 = __clz(__rbit64(v8));
      v14 = (v8 - 1) & v8;
      v15 = v13 | (v10 << 6);
      sub_1A7CD1F00(*(v63 + 48) + 24 * v15, v72, &qword_1EB2B4B30, &qword_1A7E41A70);
      v16 = (*(v63 + 56) + 32 * v15);
      v66 = *v16;
      v68 = v16[1];
      sub_1A7CE5028(v72, v74, &qword_1EB2B4B30, &qword_1A7E41A70);
      v75 = v66;
      v76 = v68;
    }

    else
    {
      v11 = v61 <= v9 + 1 ? v9 + 1 : v61;
      v12 = v11 - 1;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_63;
        }

        if (v10 >= v61)
        {
          break;
        }

        v8 = *(v5 + 8 * v10);
        ++v9;
        if (v8)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v14 = 0;
      v74[0] = 0;
      v74[1] = 0;
      v74[2] = 1;
      v75 = 0u;
      v9 = v12;
      v76 = 0u;
    }

    sub_1A7CE5028(v74, v77, &qword_1EB2B6F88, &qword_1A7E4E270);
    if (!v78 && v79 == 1)
    {

      v50 = 1 << *(v63 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v63 + 64);
      v53 = (v50 + 63) >> 6;

      v54 = 0;
      if (!v52)
      {
        goto LABEL_52;
      }

      while (1)
      {
        for (i = v54; ; v54 = i)
        {
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          sub_1A7CD1F00(*(v63 + 48) + 24 * (v56 | (i << 6)), v77, &qword_1EB2B4B30, &qword_1A7E41A70);
          sub_1A7D87F48(v77, v57, v58, v60, v59);
          sub_1A7CC9970(v77, &qword_1EB2B4B30, &qword_1A7E41A70);
          if (v52)
          {
            break;
          }

          do
          {
LABEL_52:
            i = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_64;
            }

            if (i >= v53)
            {

              *(v59 + 16) = 0;
              return;
            }

            v52 = *(v5 + 8 * i);
            ++v54;
          }

          while (!v52);
        }
      }
    }

    v64 = v9;
    v65 = v14;
    sub_1A7CE5028(v77, v74, &qword_1EB2B4B30, &qword_1A7E41A70);
    v69 = v80;
    v67 = v81;
    v17 = *(v81 + 16);
    if (v17)
    {
      break;
    }

LABEL_32:
    v34 = *(v69 + 16);
    if (v34)
    {
      sub_1A7CC7FFC(&qword_1EB2B4B30, &qword_1A7E41A70);
      v35 = (v69 + 40);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v73 = 0;
        swift_unknownObjectWeakInit();
        v72[0] = v37;
        v73 = v36;
        swift_unknownObjectWeakAssign();
        sub_1A7CD1F00(v74, v70, &qword_1EB2B4B30, &qword_1A7E41A70);
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = *v4;
        v39 = v71[0];
        v41 = sub_1A7CD12C0(v72);
        v42 = v39[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_60;
        }

        v45 = v40;
        if (v39[3] >= v44)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v4 = v39;
            if (v40)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_1A7DC6D10();
            v39 = v71[0];
            *v4 = v71[0];
            if (v45)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          sub_1A7DBF780(v44, isUniquelyReferenced_nonNull_native);
          v39 = v71[0];
          v46 = sub_1A7CD12C0(v72);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_65;
          }

          v41 = v46;
          *v4 = v39;
          if (v45)
          {
            goto LABEL_34;
          }
        }

        v39[(v41 >> 6) + 8] |= 1 << v41;
        sub_1A7CD1F00(v72, v39[6] + 24 * v41, &qword_1EB2B4B30, &qword_1A7E41A70);
        *(v39[7] + 8 * v41) = MEMORY[0x1E69E7CD0];
        v48 = v39[2];
        v32 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v32)
        {
          goto LABEL_62;
        }

        v39[2] = v49;
LABEL_34:
        sub_1A7CF0130(v71, v70);
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_1A7CC9970(v71, &qword_1EB2B4B30, &qword_1A7E41A70);
        sub_1A7CC9970(v72, &qword_1EB2B4B30, &qword_1A7E41A70);
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    sub_1A7CC9970(v74, &qword_1EB2B4B30, &qword_1A7E41A70);

    v5 = v62;
    v9 = v64;
    v8 = v65;
  }

  sub_1A7CC7FFC(&qword_1EB2B4B30, &qword_1A7E41A70);
  v18 = (v67 + 40);
  while (1)
  {
    v20 = *(v18 - 1);
    v19 = *v18;
    v73 = 0;
    swift_unknownObjectWeakInit();
    v72[0] = v20;
    v73 = v19;
    swift_unknownObjectWeakAssign();
    sub_1A7CD1F00(v72, v70, &qword_1EB2B4B30, &qword_1A7E41A70);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *v4;
    v22 = v71[0];
    v24 = sub_1A7CD12C0(v74);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (v21)
      {
        *v4 = v22;
        if (v23)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1A7DC6D10();
        v22 = v71[0];
        *v4 = v71[0];
        if (v28)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1A7DBF780(v27, v21);
      v22 = v71[0];
      v29 = sub_1A7CD12C0(v74);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_65;
      }

      v24 = v29;
      *v4 = v22;
      if (v28)
      {
        goto LABEL_20;
      }
    }

    v22[(v24 >> 6) + 8] |= 1 << v24;
    sub_1A7CD1F00(v74, v22[6] + 24 * v24, &qword_1EB2B4B30, &qword_1A7E41A70);
    *(v22[7] + 8 * v24) = MEMORY[0x1E69E7CD0];
    v31 = v22[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_61;
    }

    v22[2] = v33;
LABEL_20:
    sub_1A7CF0130(v71, v70);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1A7CC9970(v71, &qword_1EB2B4B30, &qword_1A7E41A70);
    sub_1A7CC9970(v72, &qword_1EB2B4B30, &qword_1A7E41A70);
    v18 += 2;
    if (!--v17)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_1A7E23140();
  __break(1u);
}

void sub_1A7D85A68()
{

  v1 = MEMORY[0x1E69E7CC0];
  v0[1] = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v58 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v57 = swift_allocObject();
  *(v57 + 16) = v3;
  v59 = v0;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1A7CE27BC(v1);
  v4 = (v60 + 16);
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v61 = (v6 + 63) >> 6;
  v63 = *v0;

  v9 = 0;
  v62 = v5;
  while (1)
  {
    if (v8)
    {
      v10 = v9;
LABEL_15:
      v13 = __clz(__rbit64(v8));
      v14 = (v8 - 1) & v8;
      v15 = v13 | (v10 << 6);
      sub_1A7CD1F00(*(v63 + 48) + 24 * v15, v72, &qword_1EB2B4B00, &qword_1A7E41A40);
      v16 = (*(v63 + 56) + 32 * v15);
      v66 = *v16;
      v68 = v16[1];
      sub_1A7CE5028(v72, v74, &qword_1EB2B4B00, &qword_1A7E41A40);
      v75 = v66;
      v76 = v68;
    }

    else
    {
      v11 = v61 <= v9 + 1 ? v9 + 1 : v61;
      v12 = v11 - 1;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_63;
        }

        if (v10 >= v61)
        {
          break;
        }

        v8 = *(v5 + 8 * v10);
        ++v9;
        if (v8)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v14 = 0;
      v74[0] = 0;
      v74[1] = 0;
      v74[2] = 1;
      v75 = 0u;
      v9 = v12;
      v76 = 0u;
    }

    sub_1A7CE5028(v74, v77, &qword_1EB2B6F10, &qword_1A7E4E180);
    if (!v78 && v79 == 1)
    {

      v50 = 1 << *(v63 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v63 + 64);
      v53 = (v50 + 63) >> 6;

      v54 = 0;
      if (!v52)
      {
        goto LABEL_52;
      }

      while (1)
      {
        for (i = v54; ; v54 = i)
        {
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          sub_1A7CD1F00(*(v63 + 48) + 24 * (v56 | (i << 6)), v77, &qword_1EB2B4B00, &qword_1A7E41A40);
          sub_1A7D8830C(v77, v57, v58, v60, v59);
          sub_1A7CC9970(v77, &qword_1EB2B4B00, &qword_1A7E41A40);
          if (v52)
          {
            break;
          }

          do
          {
LABEL_52:
            i = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_64;
            }

            if (i >= v53)
            {

              *(v59 + 16) = 0;
              return;
            }

            v52 = *(v5 + 8 * i);
            ++v54;
          }

          while (!v52);
        }
      }
    }

    v64 = v9;
    v65 = v14;
    sub_1A7CE5028(v77, v74, &qword_1EB2B4B00, &qword_1A7E41A40);
    v69 = v80;
    v67 = v81;
    v17 = *(v81 + 16);
    if (v17)
    {
      break;
    }

LABEL_32:
    v34 = *(v69 + 16);
    if (v34)
    {
      sub_1A7CC7FFC(&qword_1EB2B4B00, &qword_1A7E41A40);
      v35 = (v69 + 40);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v73 = 0;
        swift_unknownObjectWeakInit();
        v72[0] = v37;
        v73 = v36;
        swift_unknownObjectWeakAssign();
        sub_1A7CD1F00(v74, v70, &qword_1EB2B4B00, &qword_1A7E41A40);
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = *v4;
        v39 = v71[0];
        v41 = sub_1A7CD1220(v72);
        v42 = v39[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_60;
        }

        v45 = v40;
        if (v39[3] >= v44)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v4 = v39;
            if (v40)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_1A7DC6D34();
            v39 = v71[0];
            *v4 = v71[0];
            if (v45)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          sub_1A7DBF7A4(v44, isUniquelyReferenced_nonNull_native);
          v39 = v71[0];
          v46 = sub_1A7CD1220(v72);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_65;
          }

          v41 = v46;
          *v4 = v39;
          if (v45)
          {
            goto LABEL_34;
          }
        }

        v39[(v41 >> 6) + 8] |= 1 << v41;
        sub_1A7CD1F00(v72, v39[6] + 24 * v41, &qword_1EB2B4B00, &qword_1A7E41A40);
        *(v39[7] + 8 * v41) = MEMORY[0x1E69E7CD0];
        v48 = v39[2];
        v32 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v32)
        {
          goto LABEL_62;
        }

        v39[2] = v49;
LABEL_34:
        sub_1A7CF02A4(v71, v70);
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_1A7CC9970(v71, &qword_1EB2B4B00, &qword_1A7E41A40);
        sub_1A7CC9970(v72, &qword_1EB2B4B00, &qword_1A7E41A40);
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    sub_1A7CC9970(v74, &qword_1EB2B4B00, &qword_1A7E41A40);

    v5 = v62;
    v9 = v64;
    v8 = v65;
  }

  sub_1A7CC7FFC(&qword_1EB2B4B00, &qword_1A7E41A40);
  v18 = (v67 + 40);
  while (1)
  {
    v20 = *(v18 - 1);
    v19 = *v18;
    v73 = 0;
    swift_unknownObjectWeakInit();
    v72[0] = v20;
    v73 = v19;
    swift_unknownObjectWeakAssign();
    sub_1A7CD1F00(v72, v70, &qword_1EB2B4B00, &qword_1A7E41A40);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *v4;
    v22 = v71[0];
    v24 = sub_1A7CD1220(v74);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (v21)
      {
        *v4 = v22;
        if (v23)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1A7DC6D34();
        v22 = v71[0];
        *v4 = v71[0];
        if (v28)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1A7DBF7A4(v27, v21);
      v22 = v71[0];
      v29 = sub_1A7CD1220(v74);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_65;
      }

      v24 = v29;
      *v4 = v22;
      if (v28)
      {
        goto LABEL_20;
      }
    }

    v22[(v24 >> 6) + 8] |= 1 << v24;
    sub_1A7CD1F00(v74, v22[6] + 24 * v24, &qword_1EB2B4B00, &qword_1A7E41A40);
    *(v22[7] + 8 * v24) = MEMORY[0x1E69E7CD0];
    v31 = v22[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_61;
    }

    v22[2] = v33;
LABEL_20:
    sub_1A7CF02A4(v71, v70);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1A7CC9970(v71, &qword_1EB2B4B00, &qword_1A7E41A40);
    sub_1A7CC9970(v72, &qword_1EB2B4B00, &qword_1A7E41A40);
    v18 += 2;
    if (!--v17)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_1A7E23140();
  __break(1u);
}

void sub_1A7D861C8()
{

  v1 = MEMORY[0x1E69E7CC0];
  v0[1] = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v58 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v57 = swift_allocObject();
  *(v57 + 16) = v3;
  v59 = v0;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1A7CE2C50(v1);
  v4 = (v60 + 16);
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v61 = (v6 + 63) >> 6;
  v63 = *v0;

  v9 = 0;
  v62 = v5;
  while (1)
  {
    if (v8)
    {
      v10 = v9;
LABEL_15:
      v13 = __clz(__rbit64(v8));
      v14 = (v8 - 1) & v8;
      v15 = v13 | (v10 << 6);
      sub_1A7CD1F00(*(v63 + 48) + 24 * v15, v72, &qword_1EB2B4BE0, &qword_1A7E41B28);
      v16 = (*(v63 + 56) + 32 * v15);
      v66 = *v16;
      v68 = v16[1];
      sub_1A7CE5028(v72, v74, &qword_1EB2B4BE0, &qword_1A7E41B28);
      v75 = v66;
      v76 = v68;
    }

    else
    {
      v11 = v61 <= v9 + 1 ? v9 + 1 : v61;
      v12 = v11 - 1;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_63;
        }

        if (v10 >= v61)
        {
          break;
        }

        v8 = *(v5 + 8 * v10);
        ++v9;
        if (v8)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v14 = 0;
      v74[0] = 0;
      v74[1] = 0;
      v74[2] = 1;
      v75 = 0u;
      v9 = v12;
      v76 = 0u;
    }

    sub_1A7CE5028(v74, v77, &qword_1EB2B6F68, &qword_1A7E4E240);
    if (!v78 && v79 == 1)
    {

      v50 = 1 << *(v63 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v63 + 64);
      v53 = (v50 + 63) >> 6;

      v54 = 0;
      if (!v52)
      {
        goto LABEL_52;
      }

      while (1)
      {
        for (i = v54; ; v54 = i)
        {
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          sub_1A7CD1F00(*(v63 + 48) + 24 * (v56 | (i << 6)), v77, &qword_1EB2B4BE0, &qword_1A7E41B28);
          sub_1A7D886D0(v77, v57, v58, v60, v59);
          sub_1A7CC9970(v77, &qword_1EB2B4BE0, &qword_1A7E41B28);
          if (v52)
          {
            break;
          }

          do
          {
LABEL_52:
            i = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_64;
            }

            if (i >= v53)
            {

              *(v59 + 16) = 0;
              return;
            }

            v52 = *(v5 + 8 * i);
            ++v54;
          }

          while (!v52);
        }
      }
    }

    v64 = v9;
    v65 = v14;
    sub_1A7CE5028(v77, v74, &qword_1EB2B4BE0, &qword_1A7E41B28);
    v69 = v80;
    v67 = v81;
    v17 = *(v81 + 16);
    if (v17)
    {
      break;
    }

LABEL_32:
    v34 = *(v69 + 16);
    if (v34)
    {
      sub_1A7CC7FFC(&qword_1EB2B4BE0, &qword_1A7E41B28);
      v35 = (v69 + 40);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v73 = 0;
        swift_unknownObjectWeakInit();
        v72[0] = v37;
        v73 = v36;
        swift_unknownObjectWeakAssign();
        sub_1A7CD1F00(v74, v70, &qword_1EB2B4BE0, &qword_1A7E41B28);
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = *v4;
        v39 = v71[0];
        v41 = sub_1A7CD1368(v72);
        v42 = v39[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_60;
        }

        v45 = v40;
        if (v39[3] >= v44)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v4 = v39;
            if (v40)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_1A7DC7104();
            v39 = v71[0];
            *v4 = v71[0];
            if (v45)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          sub_1A7DBFE88(v44, isUniquelyReferenced_nonNull_native);
          v39 = v71[0];
          v46 = sub_1A7CD1368(v72);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_65;
          }

          v41 = v46;
          *v4 = v39;
          if (v45)
          {
            goto LABEL_34;
          }
        }

        v39[(v41 >> 6) + 8] |= 1 << v41;
        sub_1A7CD1F00(v72, v39[6] + 24 * v41, &qword_1EB2B4BE0, &qword_1A7E41B28);
        *(v39[7] + 8 * v41) = MEMORY[0x1E69E7CD0];
        v48 = v39[2];
        v32 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v32)
        {
          goto LABEL_62;
        }

        v39[2] = v49;
LABEL_34:
        sub_1A7CF04AC(v71, v70);
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_1A7CC9970(v71, &qword_1EB2B4BE0, &qword_1A7E41B28);
        sub_1A7CC9970(v72, &qword_1EB2B4BE0, &qword_1A7E41B28);
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    sub_1A7CC9970(v74, &qword_1EB2B4BE0, &qword_1A7E41B28);

    v5 = v62;
    v9 = v64;
    v8 = v65;
  }

  sub_1A7CC7FFC(&qword_1EB2B4BE0, &qword_1A7E41B28);
  v18 = (v67 + 40);
  while (1)
  {
    v20 = *(v18 - 1);
    v19 = *v18;
    v73 = 0;
    swift_unknownObjectWeakInit();
    v72[0] = v20;
    v73 = v19;
    swift_unknownObjectWeakAssign();
    sub_1A7CD1F00(v72, v70, &qword_1EB2B4BE0, &qword_1A7E41B28);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *v4;
    v22 = v71[0];
    v24 = sub_1A7CD1368(v74);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (v21)
      {
        *v4 = v22;
        if (v23)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1A7DC7104();
        v22 = v71[0];
        *v4 = v71[0];
        if (v28)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1A7DBFE88(v27, v21);
      v22 = v71[0];
      v29 = sub_1A7CD1368(v74);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_65;
      }

      v24 = v29;
      *v4 = v22;
      if (v28)
      {
        goto LABEL_20;
      }
    }

    v22[(v24 >> 6) + 8] |= 1 << v24;
    sub_1A7CD1F00(v74, v22[6] + 24 * v24, &qword_1EB2B4BE0, &qword_1A7E41B28);
    *(v22[7] + 8 * v24) = MEMORY[0x1E69E7CD0];
    v31 = v22[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_61;
    }

    v22[2] = v33;
LABEL_20:
    sub_1A7CF04AC(v71, v70);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1A7CC9970(v71, &qword_1EB2B4BE0, &qword_1A7E41B28);
    sub_1A7CC9970(v72, &qword_1EB2B4BE0, &qword_1A7E41B28);
    v18 += 2;
    if (!--v17)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_1A7E23140();
  __break(1u);
}

void sub_1A7D86928()
{

  v1 = MEMORY[0x1E69E7CC0];
  v0[1] = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v58 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v57 = swift_allocObject();
  *(v57 + 16) = v3;
  v59 = v0;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1A7CE2ED4(v1);
  v4 = (v60 + 16);
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v61 = (v6 + 63) >> 6;
  v63 = *v0;

  v9 = 0;
  v62 = v5;
  while (1)
  {
    if (v8)
    {
      v10 = v9;
LABEL_15:
      v13 = __clz(__rbit64(v8));
      v14 = (v8 - 1) & v8;
      v15 = v13 | (v10 << 6);
      sub_1A7CD1F00(*(v63 + 48) + 24 * v15, v72, &qword_1EB2B4B40, &qword_1A7E41A80);
      v16 = (*(v63 + 56) + 32 * v15);
      v66 = *v16;
      v68 = v16[1];
      sub_1A7CE5028(v72, v74, &qword_1EB2B4B40, &qword_1A7E41A80);
      v75 = v66;
      v76 = v68;
    }

    else
    {
      v11 = v61 <= v9 + 1 ? v9 + 1 : v61;
      v12 = v11 - 1;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_63;
        }

        if (v10 >= v61)
        {
          break;
        }

        v8 = *(v5 + 8 * v10);
        ++v9;
        if (v8)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v14 = 0;
      v74[0] = 0;
      v74[1] = 0;
      v74[2] = 1;
      v75 = 0u;
      v9 = v12;
      v76 = 0u;
    }

    sub_1A7CE5028(v74, v77, &qword_1EB2B6F78, &qword_1A7E4E258);
    if (!v78 && v79 == 1)
    {

      v50 = 1 << *(v63 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v63 + 64);
      v53 = (v50 + 63) >> 6;

      v54 = 0;
      if (!v52)
      {
        goto LABEL_52;
      }

      while (1)
      {
        for (i = v54; ; v54 = i)
        {
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          sub_1A7CD1F00(*(v63 + 48) + 24 * (v56 | (i << 6)), v77, &qword_1EB2B4B40, &qword_1A7E41A80);
          sub_1A7D88A94(v77, v57, v58, v60, v59);
          sub_1A7CC9970(v77, &qword_1EB2B4B40, &qword_1A7E41A80);
          if (v52)
          {
            break;
          }

          do
          {
LABEL_52:
            i = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_64;
            }

            if (i >= v53)
            {

              *(v59 + 16) = 0;
              return;
            }

            v52 = *(v5 + 8 * i);
            ++v54;
          }

          while (!v52);
        }
      }
    }

    v64 = v9;
    v65 = v14;
    sub_1A7CE5028(v77, v74, &qword_1EB2B4B40, &qword_1A7E41A80);
    v69 = v80;
    v67 = v81;
    v17 = *(v81 + 16);
    if (v17)
    {
      break;
    }

LABEL_32:
    v34 = *(v69 + 16);
    if (v34)
    {
      sub_1A7CC7FFC(&qword_1EB2B4B40, &qword_1A7E41A80);
      v35 = (v69 + 40);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v73 = 0;
        swift_unknownObjectWeakInit();
        v72[0] = v37;
        v73 = v36;
        swift_unknownObjectWeakAssign();
        sub_1A7CD1F00(v74, v70, &qword_1EB2B4B40, &qword_1A7E41A80);
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = *v4;
        v39 = v71[0];
        v41 = sub_1A7CD137C(v72);
        v42 = v39[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_60;
        }

        v45 = v40;
        if (v39[3] >= v44)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v4 = v39;
            if (v40)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_1A7DC7128();
            v39 = v71[0];
            *v4 = v71[0];
            if (v45)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          sub_1A7DBFEAC(v44, isUniquelyReferenced_nonNull_native);
          v39 = v71[0];
          v46 = sub_1A7CD137C(v72);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_65;
          }

          v41 = v46;
          *v4 = v39;
          if (v45)
          {
            goto LABEL_34;
          }
        }

        v39[(v41 >> 6) + 8] |= 1 << v41;
        sub_1A7CD1F00(v72, v39[6] + 24 * v41, &qword_1EB2B4B40, &qword_1A7E41A80);
        *(v39[7] + 8 * v41) = MEMORY[0x1E69E7CD0];
        v48 = v39[2];
        v32 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v32)
        {
          goto LABEL_62;
        }

        v39[2] = v49;
LABEL_34:
        sub_1A7CF04D0(v71, v70);
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_1A7CC9970(v71, &qword_1EB2B4B40, &qword_1A7E41A80);
        sub_1A7CC9970(v72, &qword_1EB2B4B40, &qword_1A7E41A80);
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    sub_1A7CC9970(v74, &qword_1EB2B4B40, &qword_1A7E41A80);

    v5 = v62;
    v9 = v64;
    v8 = v65;
  }

  sub_1A7CC7FFC(&qword_1EB2B4B40, &qword_1A7E41A80);
  v18 = (v67 + 40);
  while (1)
  {
    v20 = *(v18 - 1);
    v19 = *v18;
    v73 = 0;
    swift_unknownObjectWeakInit();
    v72[0] = v20;
    v73 = v19;
    swift_unknownObjectWeakAssign();
    sub_1A7CD1F00(v72, v70, &qword_1EB2B4B40, &qword_1A7E41A80);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *v4;
    v22 = v71[0];
    v24 = sub_1A7CD137C(v74);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (v21)
      {
        *v4 = v22;
        if (v23)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1A7DC7128();
        v22 = v71[0];
        *v4 = v71[0];
        if (v28)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1A7DBFEAC(v27, v21);
      v22 = v71[0];
      v29 = sub_1A7CD137C(v74);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_65;
      }

      v24 = v29;
      *v4 = v22;
      if (v28)
      {
        goto LABEL_20;
      }
    }

    v22[(v24 >> 6) + 8] |= 1 << v24;
    sub_1A7CD1F00(v74, v22[6] + 24 * v24, &qword_1EB2B4B40, &qword_1A7E41A80);
    *(v22[7] + 8 * v24) = MEMORY[0x1E69E7CD0];
    v31 = v22[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_61;
    }

    v22[2] = v33;
LABEL_20:
    sub_1A7CF04D0(v71, v70);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1A7CC9970(v71, &qword_1EB2B4B40, &qword_1A7E41A80);
    sub_1A7CC9970(v72, &qword_1EB2B4B40, &qword_1A7E41A80);
    v18 += 2;
    if (!--v17)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_1A7E23140();
  __break(1u);
}

void sub_1A7D87088()
{

  v1 = MEMORY[0x1E69E7CC0];
  v0[1] = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v58 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v57 = swift_allocObject();
  *(v57 + 16) = v3;
  v59 = v0;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1A7CE4674(v1);
  v4 = (v60 + 16);
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v61 = (v6 + 63) >> 6;
  v63 = *v0;

  v9 = 0;
  v62 = v5;
  while (1)
  {
    if (v8)
    {
      v10 = v9;
LABEL_15:
      v13 = __clz(__rbit64(v8));
      v14 = (v8 - 1) & v8;
      v15 = v13 | (v10 << 6);
      sub_1A7CD1F00(*(v63 + 48) + 24 * v15, v72, &qword_1EB2B4B18, &qword_1A7E4F270);
      v16 = (*(v63 + 56) + 32 * v15);
      v66 = *v16;
      v68 = v16[1];
      sub_1A7CE5028(v72, v74, &qword_1EB2B4B18, &qword_1A7E4F270);
      v75 = v66;
      v76 = v68;
    }

    else
    {
      v11 = v61 <= v9 + 1 ? v9 + 1 : v61;
      v12 = v11 - 1;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_63;
        }

        if (v10 >= v61)
        {
          break;
        }

        v8 = *(v5 + 8 * v10);
        ++v9;
        if (v8)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v14 = 0;
      v74[0] = 0;
      v74[1] = 0;
      v74[2] = 1;
      v75 = 0u;
      v9 = v12;
      v76 = 0u;
    }

    sub_1A7CE5028(v74, v77, &qword_1EB2B6F48, &qword_1A7E4E1F0);
    if (!v78 && v79 == 1)
    {

      v50 = 1 << *(v63 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v63 + 64);
      v53 = (v50 + 63) >> 6;

      v54 = 0;
      if (!v52)
      {
        goto LABEL_52;
      }

      while (1)
      {
        for (i = v54; ; v54 = i)
        {
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          sub_1A7CD1F00(*(v63 + 48) + 24 * (v56 | (i << 6)), v77, &qword_1EB2B4B18, &qword_1A7E4F270);
          sub_1A7D88E58(v77, v57, v58, v60, v59);
          sub_1A7CC9970(v77, &qword_1EB2B4B18, &qword_1A7E4F270);
          if (v52)
          {
            break;
          }

          do
          {
LABEL_52:
            i = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_64;
            }

            if (i >= v53)
            {

              *(v59 + 16) = 0;
              return;
            }

            v52 = *(v5 + 8 * i);
            ++v54;
          }

          while (!v52);
        }
      }
    }

    v64 = v9;
    v65 = v14;
    sub_1A7CE5028(v77, v74, &qword_1EB2B4B18, &qword_1A7E4F270);
    v69 = v80;
    v67 = v81;
    v17 = *(v81 + 16);
    if (v17)
    {
      break;
    }

LABEL_32:
    v34 = *(v69 + 16);
    if (v34)
    {
      sub_1A7CC7FFC(&qword_1EB2B4B18, &qword_1A7E4F270);
      v35 = (v69 + 40);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v73 = 0;
        swift_unknownObjectWeakInit();
        v72[0] = v37;
        v73 = v36;
        swift_unknownObjectWeakAssign();
        sub_1A7CD1F00(v74, v70, &qword_1EB2B4B18, &qword_1A7E4F270);
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = *v4;
        v39 = v71[0];
        v41 = sub_1A7CD1390(v72);
        v42 = v39[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_60;
        }

        v45 = v40;
        if (v39[3] >= v44)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v4 = v39;
            if (v40)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_1A7DC89FC();
            v39 = v71[0];
            *v4 = v71[0];
            if (v45)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          sub_1A7DC297C(v44, isUniquelyReferenced_nonNull_native);
          v39 = v71[0];
          v46 = sub_1A7CD1390(v72);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_65;
          }

          v41 = v46;
          *v4 = v39;
          if (v45)
          {
            goto LABEL_34;
          }
        }

        v39[(v41 >> 6) + 8] |= 1 << v41;
        sub_1A7CD1F00(v72, v39[6] + 24 * v41, &qword_1EB2B4B18, &qword_1A7E4F270);
        *(v39[7] + 8 * v41) = MEMORY[0x1E69E7CD0];
        v48 = v39[2];
        v32 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v32)
        {
          goto LABEL_62;
        }

        v39[2] = v49;
LABEL_34:
        sub_1A7CF07C4(v71, v70);
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_1A7CC9970(v71, &qword_1EB2B4B18, &qword_1A7E4F270);
        sub_1A7CC9970(v72, &qword_1EB2B4B18, &qword_1A7E4F270);
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    sub_1A7CC9970(v74, &qword_1EB2B4B18, &qword_1A7E4F270);

    v5 = v62;
    v9 = v64;
    v8 = v65;
  }

  sub_1A7CC7FFC(&qword_1EB2B4B18, &qword_1A7E4F270);
  v18 = (v67 + 40);
  while (1)
  {
    v20 = *(v18 - 1);
    v19 = *v18;
    v73 = 0;
    swift_unknownObjectWeakInit();
    v72[0] = v20;
    v73 = v19;
    swift_unknownObjectWeakAssign();
    sub_1A7CD1F00(v72, v70, &qword_1EB2B4B18, &qword_1A7E4F270);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *v4;
    v22 = v71[0];
    v24 = sub_1A7CD1390(v74);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (v21)
      {
        *v4 = v22;
        if (v23)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1A7DC89FC();
        v22 = v71[0];
        *v4 = v71[0];
        if (v28)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1A7DC297C(v27, v21);
      v22 = v71[0];
      v29 = sub_1A7CD1390(v74);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_65;
      }

      v24 = v29;
      *v4 = v22;
      if (v28)
      {
        goto LABEL_20;
      }
    }

    v22[(v24 >> 6) + 8] |= 1 << v24;
    sub_1A7CD1F00(v74, v22[6] + 24 * v24, &qword_1EB2B4B18, &qword_1A7E4F270);
    *(v22[7] + 8 * v24) = MEMORY[0x1E69E7CD0];
    v31 = v22[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_61;
    }

    v22[2] = v33;
LABEL_20:
    sub_1A7CF07C4(v71, v70);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1A7CC9970(v71, &qword_1EB2B4B18, &qword_1A7E4F270);
    sub_1A7CC9970(v72, &qword_1EB2B4B18, &qword_1A7E4F270);
    v18 += 2;
    if (!--v17)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_1A7E23140();
  __break(1u);
}

void sub_1A7D877E8()
{

  v1 = MEMORY[0x1E69E7CC0];
  v0[1] = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v58 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v57 = swift_allocObject();
  *(v57 + 16) = v3;
  v59 = v0;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1A7CE47B4(v1);
  v4 = (v60 + 16);
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v61 = (v6 + 63) >> 6;
  v63 = *v0;

  v9 = 0;
  v62 = v5;
  while (1)
  {
    if (v8)
    {
      v10 = v9;
LABEL_15:
      v13 = __clz(__rbit64(v8));
      v14 = (v8 - 1) & v8;
      v15 = v13 | (v10 << 6);
      sub_1A7CD1F00(*(v63 + 48) + 24 * v15, v72, &qword_1EB2B4AE8, &qword_1A7E43370);
      v16 = (*(v63 + 56) + 32 * v15);
      v66 = *v16;
      v68 = v16[1];
      sub_1A7CE5028(v72, v74, &qword_1EB2B4AE8, &qword_1A7E43370);
      v75 = v66;
      v76 = v68;
    }

    else
    {
      v11 = v61 <= v9 + 1 ? v9 + 1 : v61;
      v12 = v11 - 1;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_63;
        }

        if (v10 >= v61)
        {
          break;
        }

        v8 = *(v5 + 8 * v10);
        ++v9;
        if (v8)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v14 = 0;
      v74[0] = 0;
      v74[1] = 0;
      v74[2] = 1;
      v75 = 0u;
      v9 = v12;
      v76 = 0u;
    }

    sub_1A7CE5028(v74, v77, &qword_1EB2B6F38, &qword_1A7E4E1E0);
    if (!v78 && v79 == 1)
    {

      v50 = 1 << *(v63 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v63 + 64);
      v53 = (v50 + 63) >> 6;

      v54 = 0;
      if (!v52)
      {
        goto LABEL_52;
      }

      while (1)
      {
        for (i = v54; ; v54 = i)
        {
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          sub_1A7CD1F00(*(v63 + 48) + 24 * (v56 | (i << 6)), v77, &qword_1EB2B4AE8, &qword_1A7E43370);
          sub_1A7D8921C(v77, v57, v58, v60, v59);
          sub_1A7CC9970(v77, &qword_1EB2B4AE8, &qword_1A7E43370);
          if (v52)
          {
            break;
          }

          do
          {
LABEL_52:
            i = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_64;
            }

            if (i >= v53)
            {

              *(v59 + 16) = 0;
              return;
            }

            v52 = *(v5 + 8 * i);
            ++v54;
          }

          while (!v52);
        }
      }
    }

    v64 = v9;
    v65 = v14;
    sub_1A7CE5028(v77, v74, &qword_1EB2B4AE8, &qword_1A7E43370);
    v69 = v80;
    v67 = v81;
    v17 = *(v81 + 16);
    if (v17)
    {
      break;
    }

LABEL_32:
    v34 = *(v69 + 16);
    if (v34)
    {
      sub_1A7CC7FFC(&qword_1EB2B4AE8, &qword_1A7E43370);
      v35 = (v69 + 40);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v73 = 0;
        swift_unknownObjectWeakInit();
        v72[0] = v37;
        v73 = v36;
        swift_unknownObjectWeakAssign();
        sub_1A7CD1F00(v74, v70, &qword_1EB2B4AE8, &qword_1A7E43370);
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = *v4;
        v39 = v71[0];
        v41 = sub_1A7CD1234(v72);
        v42 = v39[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_60;
        }

        v45 = v40;
        if (v39[3] >= v44)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v4 = v39;
            if (v40)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_1A7DC8A20();
            v39 = v71[0];
            *v4 = v71[0];
            if (v45)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          sub_1A7DC29A0(v44, isUniquelyReferenced_nonNull_native);
          v39 = v71[0];
          v46 = sub_1A7CD1234(v72);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_65;
          }

          v41 = v46;
          *v4 = v39;
          if (v45)
          {
            goto LABEL_34;
          }
        }

        v39[(v41 >> 6) + 8] |= 1 << v41;
        sub_1A7CD1F00(v72, v39[6] + 24 * v41, &qword_1EB2B4AE8, &qword_1A7E43370);
        *(v39[7] + 8 * v41) = MEMORY[0x1E69E7CD0];
        v48 = v39[2];
        v32 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v32)
        {
          goto LABEL_62;
        }

        v39[2] = v49;
LABEL_34:
        sub_1A7CF07E8(v71, v70);
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_1A7CC9970(v71, &qword_1EB2B4AE8, &qword_1A7E43370);
        sub_1A7CC9970(v72, &qword_1EB2B4AE8, &qword_1A7E43370);
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    sub_1A7CC9970(v74, &qword_1EB2B4AE8, &qword_1A7E43370);

    v5 = v62;
    v9 = v64;
    v8 = v65;
  }

  sub_1A7CC7FFC(&qword_1EB2B4AE8, &qword_1A7E43370);
  v18 = (v67 + 40);
  while (1)
  {
    v20 = *(v18 - 1);
    v19 = *v18;
    v73 = 0;
    swift_unknownObjectWeakInit();
    v72[0] = v20;
    v73 = v19;
    swift_unknownObjectWeakAssign();
    sub_1A7CD1F00(v72, v70, &qword_1EB2B4AE8, &qword_1A7E43370);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *v4;
    v22 = v71[0];
    v24 = sub_1A7CD1234(v74);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (v21)
      {
        *v4 = v22;
        if (v23)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1A7DC8A20();
        v22 = v71[0];
        *v4 = v71[0];
        if (v28)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1A7DC29A0(v27, v21);
      v22 = v71[0];
      v29 = sub_1A7CD1234(v74);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_65;
      }

      v24 = v29;
      *v4 = v22;
      if (v28)
      {
        goto LABEL_20;
      }
    }

    v22[(v24 >> 6) + 8] |= 1 << v24;
    sub_1A7CD1F00(v74, v22[6] + 24 * v24, &qword_1EB2B4AE8, &qword_1A7E43370);
    *(v22[7] + 8 * v24) = MEMORY[0x1E69E7CD0];
    v31 = v22[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_61;
    }

    v22[2] = v33;
LABEL_20:
    sub_1A7CF07E8(v71, v70);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1A7CC9970(v71, &qword_1EB2B4AE8, &qword_1A7E43370);
    sub_1A7CC9970(v72, &qword_1EB2B4AE8, &qword_1A7E43370);
    v18 += 2;
    if (!--v17)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_1A7E23140();
  __break(1u);
}

uint64_t sub_1A7D87F48(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  v10 = *(a2 + 16);

  v11 = sub_1A7D895E0(a1, v10, &qword_1EB2B4B30, &qword_1A7E41A70);

  if ((v11 & 1) == 0)
  {
    sub_1A7CD1F00(a1, v32, &qword_1EB2B4B30, &qword_1A7E41A70);
    swift_beginAccess();
    sub_1A7CF0130(v33, v32);
    swift_endAccess();
    sub_1A7CC9970(v33, &qword_1EB2B4B30, &qword_1A7E41A70);
    swift_beginAccess();
    v13 = *(a4 + 16);
    if (*(v13 + 16) && (v14 = sub_1A7CD12C0(a1), (v15 & 1) != 0))
    {
      *&v31 = a5;
      v16 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 56);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      while (v19)
      {
        v22 = v21;
LABEL_12:
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        a5 = &qword_1EB2B4B30;
        sub_1A7CD1F00(*(v16 + 48) + 24 * (v23 | (v22 << 6)), v33, &qword_1EB2B4B30, &qword_1A7E41A70);
        sub_1A7D87F48(v33, a2, a3, a4, v31);
        sub_1A7CC9970(v33, &qword_1EB2B4B30, &qword_1A7E41A70);
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {

          a5 = v31;
          goto LABEL_16;
        }

        v19 = *(v16 + 56 + 8 * v22);
        v21 = (v21 + 1);
        if (v19)
        {
          v21 = v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
LABEL_16:
      v24 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_22;
      }

      v25 = sub_1A7CD12C0(a1);
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      v21 = a5[1];
      v31 = *(*(v24 + 56) + 32 * v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5[1] = v21;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_19:
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          a5[1] = sub_1A7CCCDEC((v28 > 1), v29 + 1, 1, v21);
        }

        v30 = a5[1];
        *(v30 + 16) = v29 + 1;
        *(v30 + 16 * v29 + 32) = v31;
LABEL_22:
        swift_beginAccess();
        sub_1A7D91B7C(a1, &qword_1EB2B4B30, &qword_1A7E41A70, sub_1A7CF2130, v33);
        swift_endAccess();
        sub_1A7CC9970(v33, &qword_1EB2B6F90, &qword_1A7E4E278);
        sub_1A7CD1F00(a1, v32, &qword_1EB2B4B30, &qword_1A7E41A70);
        swift_beginAccess();
        sub_1A7CF0130(v33, v32);
        swift_endAccess();
        return sub_1A7CC9970(v33, &qword_1EB2B4B30, &qword_1A7E41A70);
      }
    }

    v21 = sub_1A7CCCDEC(0, v21[2] + 1, 1, v21);
    a5[1] = v21;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1A7D8830C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  v10 = *(a2 + 16);

  v11 = sub_1A7D895E0(a1, v10, &qword_1EB2B4B00, &qword_1A7E41A40);

  if ((v11 & 1) == 0)
  {
    sub_1A7CD1F00(a1, v32, &qword_1EB2B4B00, &qword_1A7E41A40);
    swift_beginAccess();
    sub_1A7CF02A4(v33, v32);
    swift_endAccess();
    sub_1A7CC9970(v33, &qword_1EB2B4B00, &qword_1A7E41A40);
    swift_beginAccess();
    v13 = *(a4 + 16);
    if (*(v13 + 16) && (v14 = sub_1A7CD1220(a1), (v15 & 1) != 0))
    {
      *&v31 = a5;
      v16 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 56);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      while (v19)
      {
        v22 = v21;
LABEL_12:
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        a5 = &qword_1EB2B4B00;
        sub_1A7CD1F00(*(v16 + 48) + 24 * (v23 | (v22 << 6)), v33, &qword_1EB2B4B00, &qword_1A7E41A40);
        sub_1A7D8830C(v33, a2, a3, a4, v31);
        sub_1A7CC9970(v33, &qword_1EB2B4B00, &qword_1A7E41A40);
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {

          a5 = v31;
          goto LABEL_16;
        }

        v19 = *(v16 + 56 + 8 * v22);
        v21 = (v21 + 1);
        if (v19)
        {
          v21 = v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
LABEL_16:
      v24 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_22;
      }

      v25 = sub_1A7CD1220(a1);
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      v21 = a5[1];
      v31 = *(*(v24 + 56) + 32 * v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5[1] = v21;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_19:
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          a5[1] = sub_1A7CCCE34((v28 > 1), v29 + 1, 1, v21);
        }

        v30 = a5[1];
        *(v30 + 16) = v29 + 1;
        *(v30 + 16 * v29 + 32) = v31;
LABEL_22:
        swift_beginAccess();
        sub_1A7D91B7C(a1, &qword_1EB2B4B00, &qword_1A7E41A40, sub_1A7CF22B0, v33);
        swift_endAccess();
        sub_1A7CC9970(v33, &qword_1EB2B6F18, &unk_1A7E4E188);
        sub_1A7CD1F00(a1, v32, &qword_1EB2B4B00, &qword_1A7E41A40);
        swift_beginAccess();
        sub_1A7CF02A4(v33, v32);
        swift_endAccess();
        return sub_1A7CC9970(v33, &qword_1EB2B4B00, &qword_1A7E41A40);
      }
    }

    v21 = sub_1A7CCCE34(0, v21[2] + 1, 1, v21);
    a5[1] = v21;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1A7D886D0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  v10 = *(a2 + 16);

  v11 = sub_1A7D895E0(a1, v10, &qword_1EB2B4BE0, &qword_1A7E41B28);

  if ((v11 & 1) == 0)
  {
    sub_1A7CD1F00(a1, v32, &qword_1EB2B4BE0, &qword_1A7E41B28);
    swift_beginAccess();
    sub_1A7CF04AC(v33, v32);
    swift_endAccess();
    sub_1A7CC9970(v33, &qword_1EB2B4BE0, &qword_1A7E41B28);
    swift_beginAccess();
    v13 = *(a4 + 16);
    if (*(v13 + 16) && (v14 = sub_1A7CD1368(a1), (v15 & 1) != 0))
    {
      *&v31 = a5;
      v16 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 56);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      while (v19)
      {
        v22 = v21;
LABEL_12:
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        a5 = &qword_1EB2B4BE0;
        sub_1A7CD1F00(*(v16 + 48) + 24 * (v23 | (v22 << 6)), v33, &qword_1EB2B4BE0, &qword_1A7E41B28);
        sub_1A7D886D0(v33, a2, a3, a4, v31);
        sub_1A7CC9970(v33, &qword_1EB2B4BE0, &qword_1A7E41B28);
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {

          a5 = v31;
          goto LABEL_16;
        }

        v19 = *(v16 + 56 + 8 * v22);
        v21 = (v21 + 1);
        if (v19)
        {
          v21 = v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
LABEL_16:
      v24 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_22;
      }

      v25 = sub_1A7CD1368(a1);
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      v21 = a5[1];
      v31 = *(*(v24 + 56) + 32 * v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5[1] = v21;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_19:
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          a5[1] = sub_1A7CCD204((v28 > 1), v29 + 1, 1, v21);
        }

        v30 = a5[1];
        *(v30 + 16) = v29 + 1;
        *(v30 + 16 * v29 + 32) = v31;
LABEL_22:
        swift_beginAccess();
        sub_1A7D91B7C(a1, &qword_1EB2B4BE0, &qword_1A7E41B28, sub_1A7CF2450, v33);
        swift_endAccess();
        sub_1A7CC9970(v33, &qword_1EB2B6F70, &unk_1A7E4E248);
        sub_1A7CD1F00(a1, v32, &qword_1EB2B4BE0, &qword_1A7E41B28);
        swift_beginAccess();
        sub_1A7CF04AC(v33, v32);
        swift_endAccess();
        return sub_1A7CC9970(v33, &qword_1EB2B4BE0, &qword_1A7E41B28);
      }
    }

    v21 = sub_1A7CCD204(0, v21[2] + 1, 1, v21);
    a5[1] = v21;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1A7D88A94(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  v10 = *(a2 + 16);

  v11 = sub_1A7D895E0(a1, v10, &qword_1EB2B4B40, &qword_1A7E41A80);

  if ((v11 & 1) == 0)
  {
    sub_1A7CD1F00(a1, v32, &qword_1EB2B4B40, &qword_1A7E41A80);
    swift_beginAccess();
    sub_1A7CF04D0(v33, v32);
    swift_endAccess();
    sub_1A7CC9970(v33, &qword_1EB2B4B40, &qword_1A7E41A80);
    swift_beginAccess();
    v13 = *(a4 + 16);
    if (*(v13 + 16) && (v14 = sub_1A7CD137C(a1), (v15 & 1) != 0))
    {
      *&v31 = a5;
      v16 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 56);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      while (v19)
      {
        v22 = v21;
LABEL_12:
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        a5 = &qword_1EB2B4B40;
        sub_1A7CD1F00(*(v16 + 48) + 24 * (v23 | (v22 << 6)), v33, &qword_1EB2B4B40, &qword_1A7E41A80);
        sub_1A7D88A94(v33, a2, a3, a4, v31);
        sub_1A7CC9970(v33, &qword_1EB2B4B40, &qword_1A7E41A80);
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {

          a5 = v31;
          goto LABEL_16;
        }

        v19 = *(v16 + 56 + 8 * v22);
        v21 = (v21 + 1);
        if (v19)
        {
          v21 = v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
LABEL_16:
      v24 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_22;
      }

      v25 = sub_1A7CD137C(a1);
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      v21 = a5[1];
      v31 = *(*(v24 + 56) + 32 * v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5[1] = v21;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_19:
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          a5[1] = sub_1A7CCD228((v28 > 1), v29 + 1, 1, v21);
        }

        v30 = a5[1];
        *(v30 + 16) = v29 + 1;
        *(v30 + 16 * v29 + 32) = v31;
LABEL_22:
        swift_beginAccess();
        sub_1A7D91B7C(a1, &qword_1EB2B4B40, &qword_1A7E41A80, sub_1A7CF2474, v33);
        swift_endAccess();
        sub_1A7CC9970(v33, &qword_1EB2B6F80, &unk_1A7E4E260);
        sub_1A7CD1F00(a1, v32, &qword_1EB2B4B40, &qword_1A7E41A80);
        swift_beginAccess();
        sub_1A7CF04D0(v33, v32);
        swift_endAccess();
        return sub_1A7CC9970(v33, &qword_1EB2B4B40, &qword_1A7E41A80);
      }
    }

    v21 = sub_1A7CCD228(0, v21[2] + 1, 1, v21);
    a5[1] = v21;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1A7D88E58(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  v10 = *(a2 + 16);

  v11 = sub_1A7D895E0(a1, v10, &qword_1EB2B4B18, &qword_1A7E4F270);

  if ((v11 & 1) == 0)
  {
    sub_1A7CD1F00(a1, v32, &qword_1EB2B4B18, &qword_1A7E4F270);
    swift_beginAccess();
    sub_1A7CF07C4(v33, v32);
    swift_endAccess();
    sub_1A7CC9970(v33, &qword_1EB2B4B18, &qword_1A7E4F270);
    swift_beginAccess();
    v13 = *(a4 + 16);
    if (*(v13 + 16) && (v14 = sub_1A7CD1390(a1), (v15 & 1) != 0))
    {
      *&v31 = a5;
      v16 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 56);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      while (v19)
      {
        v22 = v21;
LABEL_12:
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        a5 = &qword_1EB2B4B18;
        sub_1A7CD1F00(*(v16 + 48) + 24 * (v23 | (v22 << 6)), v33, &qword_1EB2B4B18, &qword_1A7E4F270);
        sub_1A7D88E58(v33, a2, a3, a4, v31);
        sub_1A7CC9970(v33, &qword_1EB2B4B18, &qword_1A7E4F270);
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {

          a5 = v31;
          goto LABEL_16;
        }

        v19 = *(v16 + 56 + 8 * v22);
        v21 = (v21 + 1);
        if (v19)
        {
          v21 = v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
LABEL_16:
      v24 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_22;
      }

      v25 = sub_1A7CD1390(a1);
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      v21 = a5[1];
      v31 = *(*(v24 + 56) + 32 * v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5[1] = v21;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_19:
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          a5[1] = sub_1A7CCE0A4((v28 > 1), v29 + 1, 1, v21);
        }

        v30 = a5[1];
        *(v30 + 16) = v29 + 1;
        *(v30 + 16 * v29 + 32) = v31;
LABEL_22:
        swift_beginAccess();
        sub_1A7D91B7C(a1, &qword_1EB2B4B18, &qword_1A7E4F270, sub_1A7CF2764, v33);
        swift_endAccess();
        sub_1A7CC9970(v33, &qword_1EB2B6F50, &qword_1A7E4E1F8);
        sub_1A7CD1F00(a1, v32, &qword_1EB2B4B18, &qword_1A7E4F270);
        swift_beginAccess();
        sub_1A7CF07C4(v33, v32);
        swift_endAccess();
        return sub_1A7CC9970(v33, &qword_1EB2B4B18, &qword_1A7E4F270);
      }
    }

    v21 = sub_1A7CCE0A4(0, v21[2] + 1, 1, v21);
    a5[1] = v21;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1A7D8921C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  v10 = *(a2 + 16);

  v11 = sub_1A7D895E0(a1, v10, &qword_1EB2B4AE8, &qword_1A7E43370);

  if ((v11 & 1) == 0)
  {
    sub_1A7CD1F00(a1, v32, &qword_1EB2B4AE8, &qword_1A7E43370);
    swift_beginAccess();
    sub_1A7CF07E8(v33, v32);
    swift_endAccess();
    sub_1A7CC9970(v33, &qword_1EB2B4AE8, &qword_1A7E43370);
    swift_beginAccess();
    v13 = *(a4 + 16);
    if (*(v13 + 16) && (v14 = sub_1A7CD1234(a1), (v15 & 1) != 0))
    {
      *&v31 = a5;
      v16 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 56);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      while (v19)
      {
        v22 = v21;
LABEL_12:
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        a5 = &qword_1EB2B4AE8;
        sub_1A7CD1F00(*(v16 + 48) + 24 * (v23 | (v22 << 6)), v33, &qword_1EB2B4AE8, &qword_1A7E43370);
        sub_1A7D8921C(v33, a2, a3, a4, v31);
        sub_1A7CC9970(v33, &qword_1EB2B4AE8, &qword_1A7E43370);
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {

          a5 = v31;
          goto LABEL_16;
        }

        v19 = *(v16 + 56 + 8 * v22);
        v21 = (v21 + 1);
        if (v19)
        {
          v21 = v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
LABEL_16:
      v24 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_22;
      }

      v25 = sub_1A7CD1234(a1);
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      v21 = a5[1];
      v31 = *(*(v24 + 56) + 32 * v25);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5[1] = v21;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_19:
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          a5[1] = sub_1A7CCE2F8((v28 > 1), v29 + 1, 1, v21);
        }

        v30 = a5[1];
        *(v30 + 16) = v29 + 1;
        *(v30 + 16 * v29 + 32) = v31;
LABEL_22:
        swift_beginAccess();
        sub_1A7D91B7C(a1, &qword_1EB2B4AE8, &qword_1A7E43370, sub_1A7CF2788, v33);
        swift_endAccess();
        sub_1A7CC9970(v33, &qword_1EB2B6F40, &qword_1A7E4E1E8);
        sub_1A7CD1F00(a1, v32, &qword_1EB2B4AE8, &qword_1A7E43370);
        swift_beginAccess();
        sub_1A7CF07E8(v33, v32);
        swift_endAccess();
        return sub_1A7CC9970(v33, &qword_1EB2B4AE8, &qword_1A7E43370);
      }
    }

    v21 = sub_1A7CCE2F8(0, v21[2] + 1, 1, v21);
    a5[1] = v21;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1A7D895E0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1A7E23200();
  MEMORY[0x1AC562AF0](*a1);
  v8 = sub_1A7E23240();
  v9 = -1 << *(a2 + 32);
  v10 = v8 & ~v9;
  if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    sub_1A7CD1F00(*(a2 + 48) + 24 * v10, v15, a3, a4);
    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = swift_unknownObjectWeakLoadStrong();
    sub_1A7CC9970(v15, a3, a4);
    if (!Strong)
    {
      if (!v13)
      {
        return 1;
      }

      goto LABEL_5;
    }

    if (v13)
    {
      break;
    }

LABEL_5:
    swift_unknownObjectRelease();
LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (Strong != v13)
  {
    goto LABEL_6;
  }

  return 1;
}

BOOL sub_1A7D89740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A7E23200();
  MEMORY[0x1AC562AF0](a1);
  v5 = sub_1A7E23240();
  v6 = -1 << *(a3 + 32);
  v7 = v5 & ~v6;
  if (((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a3 + 48) + 16 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t LinkEngine.__allocating_init()()
{
  v0 = swift_allocObject();
  LinkEngine.init()();
  return v0;
}

void LinkEngine.add(plugin:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_1A7D92318(a1, v2, ObjectType, a2);
}

uint64_t LinkEngine.tag.getter()
{
  os_unfair_lock_lock((v0 + 120));
  v1 = *(v0 + 128);

  os_unfair_lock_unlock((v0 + 120));
  return v1;
}

Swift::Void __swiftcall LinkEngine.scheduleUpdate()()
{
  v1 = v0;
  v2 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1A7E226D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v9 = sub_1A7E22060();
  sub_1A7B0CB00(v9, qword_1EB2B3308);

  v10 = sub_1A7E22040();
  v11 = sub_1A7E228F0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v12 = 136315394;
    os_unfair_lock_lock((v0 + 120));
    v13 = *(v0 + 128);
    v14 = *(v1 + 136);

    os_unfair_lock_unlock((v1 + 120));
    v15 = sub_1A7B0CB38(v13, v14, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    sub_1A7E22710();
    sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v16 = sub_1A7E23090();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1A7B0CB38(v16, v18, &v23);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1A7AD9000, v10, v11, "scheduleUpdate %s for ASAP creating Task.immediate (%s)", v12, 0x16u);
    v20 = v22;
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v20, -1, -1);
    MEMORY[0x1AC5654B0](v12, -1, -1);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v1;

  sub_1A7D9252C(0, 0, v4, 0, 0, &unk_1A7E4DEE0, v21);

  sub_1A7CC9970(v4, &unk_1EB2B61C0, &qword_1A7E451A0);
}

uint64_t LinkEngine.link(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 16));
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_1A7CD1248(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v3 + 4);
  return v9;
}

void LinkEngine.tag.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 120));

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  os_unfair_lock_unlock((v2 + 120));
}

uint64_t LinkEngine.allowOngoingTasks.getter()
{
  os_unfair_lock_lock((v0 + 32));
  v1 = *(v0 + 36);
  os_unfair_lock_unlock((v0 + 32));
  return v1;
}

void LinkEngine.allowOngoingTasks.setter(char a1)
{
  os_unfair_lock_lock((v1 + 32));
  *(v1 + 36) = a1;
  os_unfair_lock_unlock((v1 + 32));

  LinkEngine.scheduleUpdate()();
}

Swift::Void __swiftcall LinkEngine.remove(linkWithUniqueName:)(Swift::String linkWithUniqueName)
{
  v2 = v1;
  object = linkWithUniqueName._object;
  countAndFlagsBits = linkWithUniqueName._countAndFlagsBits;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v5 = sub_1A7E22060();
  sub_1A7B0CB00(v5, qword_1EB2B3308);

  v6 = sub_1A7E22040();
  v7 = sub_1A7E228F0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1A7B0CB38(0xD00000000000001BLL, 0x80000001A7EB06C0, v31);
    *(v8 + 12) = 2080;
    os_unfair_lock_lock((v2 + 120));
    v10 = *(v2 + 128);
    v11 = *(v2 + 136);

    os_unfair_lock_unlock((v2 + 120));
    v12 = sub_1A7B0CB38(v10, v11, v31);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_1A7B0CB38(countAndFlagsBits, object, v31);
    _os_log_impl(&dword_1A7AD9000, v6, v7, "LinkEngine.%s[%s]: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
  }

  os_unfair_lock_lock((v2 + 16));
  v13 = *(v2 + 24);
  if (*(v13 + 16) && (v14 = sub_1A7CD1248(countAndFlagsBits, object), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  sub_1A7CC8E78(0, countAndFlagsBits, object);
  os_unfair_lock_unlock((v2 + 16));
  if (v16)
  {

    v17 = sub_1A7E22040();
    v18 = sub_1A7E228F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31[0] = v20;
      *v19 = 136315650;
      *(v19 + 4) = sub_1A7B0CB38(0xD00000000000001BLL, 0x80000001A7EB06C0, v31);
      *(v19 + 12) = 2080;
      os_unfair_lock_lock((v2 + 120));
      v21 = *(v2 + 128);
      v22 = *(v2 + 136);

      os_unfair_lock_unlock((v2 + 120));
      v23 = sub_1A7B0CB38(v21, v22, v31);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_1A7B0CB38(countAndFlagsBits, object, v31);
      _os_log_impl(&dword_1A7AD9000, v17, v18, "LinkEngine.%s[%s]: removed: %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v20, -1, -1);
      MEMORY[0x1AC5654B0](v19, -1, -1);
    }

    v24 = *(v2 + 64);
    os_unfair_lock_lock((v24 + 16));
    if (*(v24 + 40) == 1)
    {
      sub_1A7D85308();
    }

    v26 = sub_1A7D84DF4(v25, sub_1A7CCE9F8);

    os_unfair_lock_unlock((v24 + 16));
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v26 + 40;
      do
      {
        v29 = *(v28 - 8);
        v31[1] = object;
        v32 = v2;
        v30 = v16;
        v31[0] = countAndFlagsBits;

        v29(&v32, v31, &v30);

        v28 += 16;
        --v27;
      }

      while (v27);
    }
  }
}

Swift::Void __swiftcall LinkEngine.removeAllLinks()()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = (*(v1 + 48) + ((v7 << 10) | (16 * v8)));
      v10 = *v9;
      v11 = v9[1];

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      LinkEngine.remove(linkWithUniqueName:)(v12);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }
}

Swift::Void __swiftcall LinkEngine.invalidate()()
{
  os_unfair_lock_lock((v0 + 32));
  *(v0 + 36) = 0;
  os_unfair_lock_unlock((v0 + 32));
  LinkEngine.scheduleUpdate()();

  LinkEngine.removeAllLinks()();
}

uint64_t sub_1A7D8A394()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B3308);
  sub_1A7B0CB00(v0, qword_1EB2B3308);
  return sub_1A7E22050();
}

uint64_t sub_1A7D8A41C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B33A0);
  sub_1A7B0CB00(v0, qword_1EB2B33A0);
  return sub_1A7E22050();
}

uint64_t sub_1A7D8A4A4()
{
  v0 = sub_1A7E22130();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v15 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A7E22110();
  v2 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A7E22920();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A7E22910();
  MEMORY[0x1EEE9AC00](v8);
  v12[0] = sub_1A7D92F8C();
  v12[1] = "ongoingTaskState";
  sub_1A7CC7FFC(&qword_1EB2B6F58, &qword_1A7E4E218);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A7E418C0;
  sub_1A7E22900();
  v16 = v9;
  sub_1A7D92FD8(&qword_1EB2B3078, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A7CC7FFC(&qword_1EB2B6F60, &qword_1A7E4E220);
  sub_1A7CF3788(&qword_1EB2B3080, &qword_1EB2B6F60, &qword_1A7E4E220, MEMORY[0x1E69E6328]);
  sub_1A7E22AC0();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v13);
  v10 = v14;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E7FA0], v14);
  sub_1A7E22950();
  (*(v2 + 8))(v4, v10);
  sub_1A7E22120();
  result = sub_1A7E22940();
  qword_1EB2B33C8 = result;
  return result;
}

id static LinkEngine.asyncLogQueue.getter()
{
  if (qword_1EB2B33C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB2B33C8;

  return v1;
}

void (*LinkEngine.allowOngoingTasks.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = v1;
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 36);
  os_unfair_lock_unlock((v1 + 32));
  *(a1 + 8) = v3;
  return sub_1A7D8A914;
}

void sub_1A7D8A914(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 8);
  *(v1 + 36) = v2;
  os_unfair_lock_unlock((v1 + 32));
  LinkEngine.scheduleUpdate()();
}

uint64_t LinkEngine.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1A7CE3028(MEMORY[0x1E69E7CC0]);
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  sub_1A7CC7FFC(&qword_1EB2B6E90, &qword_1A7E4DEE8);
  v4 = swift_allocObject();
  v5 = sub_1A7CE33B4(v2);
  *(v4 + 16) = 0;
  *(v4 + 24) = v5;
  *(v4 + 32) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = 0;
  *(v1 + 40) = v4;
  sub_1A7CC7FFC(&qword_1EB2B6E98, &qword_1A7E4DEF0);
  v6 = swift_allocObject();
  v7 = sub_1A7CE3270(v2);
  *(v6 + 16) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = v2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 40) = 0;
  *(v1 + 48) = v6;
  sub_1A7CC7FFC(&qword_1EB2B6EA0, &qword_1A7E4DEF8);
  v8 = swift_allocObject();
  v9 = sub_1A7CE312C(v2);
  *(v8 + 16) = 0;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = 0;
  *(v1 + 56) = v8;
  v10 = swift_allocObject();
  v11 = sub_1A7CE312C(v2);
  *(v10 + 16) = 0;
  *(v10 + 24) = v11;
  *(v10 + 32) = v2;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 40) = 0;
  *(v1 + 64) = v10;
  *(v1 + 72) = 0;
  *(v1 + 80) = v2;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = v2;
  *(v1 + 112) = v2;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = MEMORY[0x1E69E7CD0];
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 192) = v2;
  v12 = sub_1A7CE2568(v2);
  *(v1 + 200) = 0;
  *(v1 + 208) = v12;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v13 = sub_1A7E22060();
  sub_1A7B0CB00(v13, qword_1EB2B3308);
  v14 = sub_1A7E22040();
  v15 = sub_1A7E228F0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A7AD9000, v14, v15, "LinkEngine.init", v16, 2u);
    MEMORY[0x1AC5654B0](v16, -1, -1);
  }

  v17 = *(v1 + 40);
  v18 = swift_allocObject();
  swift_weakInit();
  os_unfair_lock_lock((v17 + 16));
  v19 = *(v17 + 48);
  v20 = *(v17 + 56);
  *(v17 + 48) = sub_1A7D928A4;
  *(v17 + 56) = v18;

  sub_1A7B15088(v19, v20);
  os_unfair_lock_unlock((v17 + 16));

  return v1;
}

double sub_1A7D8AC48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    sub_1A7D92D80(&unk_1A7E4E208, v6);
  }

  return result;
}

uint64_t sub_1A7D8ACF0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1A7D8ADF0;

  return v5(v2 + 24, v2 + 16);
}

uint64_t sub_1A7D8ADF0()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v1 + 24);
  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t LinkEngine.deinit()
{
  v1 = v0;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v2 = sub_1A7E22060();
  sub_1A7B0CB00(v2, qword_1EB2B3308);

  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    os_unfair_lock_lock((v1 + 120));
    v7 = *(v1 + 128);
    v8 = *(v1 + 136);

    os_unfair_lock_unlock((v1 + 120));
    v9 = sub_1A7B0CB38(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1A7AD9000, v3, v4, "LinkEngine.deinit[%s]", v5, 0xCu);
    sub_1A7B0CD6C(v6);
    MEMORY[0x1AC5654B0](v6, -1, -1);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  sub_1A7CC9970(v1 + 24, &qword_1EB2B6EA8, &qword_1A7E4DF00);

  sub_1A7CC9970(v1 + 80, &qword_1EB2B6EB0, &qword_1A7E4DF08);
  sub_1A7D928AC(v1 + 96);
  sub_1A7D928DC(v1 + 128);
  sub_1A7CC9970(v1 + 168, &qword_1EB2B6EB8, &qword_1A7E4DF10);
  sub_1A7D92930(v1 + 184);
  sub_1A7CC9970(v1 + 208, &qword_1EB2B6EC0, &qword_1A7E4DF18);
  return v1;
}

uint64_t LinkEngine.__deallocating_deinit()
{
  LinkEngine.deinit();

  return swift_deallocClassInstance();
}

void sub_1A7D8B140(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1A7CD1248(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    v14 = qword_1EB2B3300;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_1A7E22060();
    sub_1A7B0CB00(v15, qword_1EB2B3308);

    v16 = sub_1A7E22040();
    v17 = sub_1A7E228F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1A7B0CB38(a2, a3, &v34);
      _os_log_impl(&dword_1A7AD9000, v16, v17, "... link already exists with unique name: %s", v18, 0xCu);
      sub_1A7B0CD6C(v19);
      MEMORY[0x1AC5654B0](v19, -1, -1);
      MEMORY[0x1AC5654B0](v18, -1, -1);
    }

    v20 = 0;
  }

  else
  {
    type metadata accessor for LinkEngineLink();
    swift_allocObject();

    v13 = sub_1A7DF1800(v21, a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a1;
    sub_1A7DC3E9C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v34;
    if (qword_1EB2B3300 != -1)
    {
      swift_once();
    }

    v23 = sub_1A7E22060();
    sub_1A7B0CB00(v23, qword_1EB2B3308);

    v24 = sub_1A7E22040();
    v25 = sub_1A7E228F0();

    if (os_log_type_enabled(v24, v25))
    {
      v32 = a2;
      v26 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v26 = 136315650;
      *(v26 + 4) = sub_1A7B0CB38(0xD000000000000018, 0x80000001A7EB06A0, &v34);
      *(v26 + 12) = 2080;
      os_unfair_lock_lock((a4 + 120));
      v31 = v25;
      v27 = a5;
      v28 = *(a4 + 128);
      v29 = *(a4 + 136);

      os_unfair_lock_unlock((a4 + 120));
      v30 = sub_1A7B0CB38(v28, v29, &v34);
      a5 = v27;

      *(v26 + 14) = v30;
      *(v26 + 22) = 2080;
      *(v26 + 24) = sub_1A7B0CB38(v32, a3, &v34);
      _os_log_impl(&dword_1A7AD9000, v24, v31, "LinkEngine.%s[%s]: added: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v33, -1, -1);
      MEMORY[0x1AC5654B0](v26, -1, -1);
    }

    v20 = 1;
  }

  *a5 = v13;
  *(a5 + 8) = v20;
}

void sub_1A7D8B538(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 30);
  v5 = *&v3[32]._os_unfair_lock_opaque;
  v4 = *&v3[34]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 30);
  *a2 = v5;
  a2[1] = v4;
}

void sub_1A7D8B584(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  os_unfair_lock_lock((v4 + 120));

  *(v4 + 128) = v3;
  *(v4 + 136) = v2;

  os_unfair_lock_unlock((v4 + 120));
}

void (*LinkEngine.tag.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  os_unfair_lock_lock((v1 + 120));
  v4 = *(v1 + 128);
  v3 = *(v1 + 136);

  os_unfair_lock_unlock((v1 + 120));
  *a1 = v4;
  a1[1] = v3;
  return sub_1A7D8B648;
}

void sub_1A7D8B648(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    os_unfair_lock_lock((v4 + 120));

    *(v4 + 128) = v3;
    *(v4 + 136) = v2;
    os_unfair_lock_unlock((v4 + 120));
  }

  else
  {
    os_unfair_lock_lock((v4 + 120));

    *(v4 + 128) = v3;
    *(v4 + 136) = v2;

    os_unfair_lock_unlock((v4 + 120));
  }
}

uint64_t sub_1A7D8B6E8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_1A7E226D0();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D8B7A8, 0, 0);
}

uint64_t sub_1A7D8B7A8()
{
  v21 = v0;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  sub_1A7B0CB00(v1, qword_1EB2B3308);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v19 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    os_unfair_lock_lock((v6 + 120));
    v9 = *(v6 + 128);
    v10 = *(v6 + 136);

    os_unfair_lock_unlock((v6 + 120));
    v11 = sub_1A7B0CB38(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_1A7E22710();
    sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v12 = sub_1A7E23090();
    v14 = v13;
    (*(v5 + 8))(v4, v19);
    v15 = sub_1A7B0CB38(v12, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1A7AD9000, v2, v3, "scheduleUpdate %s for ASAP in Task.immediate (%s)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1A7D8BA40;

  return LinkEngine.update()(v17);
}

uint64_t sub_1A7D8BA40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t LinkEngine.update()(double a1)
{
  v2[2] = v1;
  v3 = sub_1A7E226D0();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D8BC10, 0, 0);
}

uint64_t sub_1A7D8BC10()
{
  v20 = v0;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  sub_1A7B0CB00(v1, qword_1EB2B3308);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v18 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    os_unfair_lock_lock((v6 + 120));
    v9 = *(v6 + 128);
    v10 = *(v6 + 136);

    os_unfair_lock_unlock((v6 + 120));
    v11 = sub_1A7B0CB38(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_1A7E22710();
    sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v12 = sub_1A7E23090();
    v14 = v13;
    (*(v5 + 8))(v4, v18);
    v15 = sub_1A7B0CB38(v12, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1A7AD9000, v2, v3, "update %s (%s)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1A7D8BEE8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A7D8BEE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7D8BFE4, 0, 0);
}

uint64_t sub_1A7D8BFE4()
{

  v1 = *(v0 + 8);

  return v1();
}

double LinkEngine.scheduleUpdate(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v42 - v5;
  v6 = sub_1A7E226D0();
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A7E22CF0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v15 = sub_1A7E22060();
  sub_1A7B0CB00(v15, qword_1EB2B3308);
  v52 = *(v9 + 16);
  v52(v14, a1, v8);

  v16 = sub_1A7E22040();
  v17 = sub_1A7E228F0();

  v46 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = a1;
    v19 = v18;
    v44 = swift_slowAlloc();
    v53 = v44;
    *v19 = 136315650;
    os_unfair_lock_lock((v2 + 120));
    v43 = v16;
    v50 = v6;
    v21 = *(v2 + 128);
    v20 = *(v2 + 136);

    os_unfair_lock_unlock((v2 + 120));
    v22 = sub_1A7B0CB38(v21, v20, &v53);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v52(v11, v14, v8);
    v23 = sub_1A7E222F0();
    v25 = v24;
    (*(v9 + 8))(v14, v8);
    v26 = sub_1A7B0CB38(v23, v25, &v53);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    v27 = v47;
    sub_1A7E22710();
    sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v28 = sub_1A7E23090();
    v30 = v29;
    v31 = v48;
    (*(v48 + 8))(v27, v50);
    v32 = sub_1A7B0CB38(v28, v30, &v53);

    *(v19 + 24) = v32;
    v6 = v50;
    v33 = v43;
    _os_log_impl(&dword_1A7AD9000, v43, v46, "scheduleUpdate %s for time %s (%s)", v19, 0x20u);
    v34 = v44;
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v34, -1, -1);
    v35 = v19;
    a1 = v45;
    MEMORY[0x1AC5654B0](v35, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
    v31 = v48;
  }

  v36 = *(v31 + 56);
  v37 = v51;
  v36(v51, 1, 1, v6);
  v38 = swift_allocObject();
  swift_weakInit();
  v52(v11, a1, v8);
  v39 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v38;
  (*(v9 + 32))(&v40[v39], v11, v8);
  sub_1A7D94654(0, 0, v37, &unk_1A7E4DF30, v40);

  return result;
}

uint64_t sub_1A7D8C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_1A7E22D10();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_1A7E226D0();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D8C6B4, 0, 0);
}

uint64_t sub_1A7D8C6B4()
{
  v22 = v0;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  v0[19] = sub_1A7B0CB00(v1, qword_1EB2B3308);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      os_unfair_lock_lock(Strong + 30);
      v9 = *&v7[32]._os_unfair_lock_opaque;
      v8 = *&v7[34]._os_unfair_lock_opaque;

      os_unfair_lock_unlock(v7 + 30);
    }

    else
    {
      v9 = 0;
      v8 = 0xE000000000000000;
    }

    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];
    v13 = sub_1A7B0CB38(v9, v8, &v21);

    *(v4 + 4) = v13;
    *(v4 + 12) = 2080;
    sub_1A7E22710();
    sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v14 = sub_1A7E23090();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1A7B0CB38(v14, v16, &v21);

    *(v4 + 14) = v17;
    _os_log_impl(&dword_1A7AD9000, v2, v3, "scheduleUpdate %s waiting for time... (%s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v5, -1, -1);
    MEMORY[0x1AC5654B0](v4, -1, -1);
  }

  sub_1A7E22D00();
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_1A7D8C9A8;
  v19 = v0[12];

  return MEMORY[0x1EEE6DC10](v19, 0, 0, 1);
}

uint64_t sub_1A7D8C9A8()
{
  v2 = *v1;

  v3 = v2[15];
  v4 = v2[14];
  v5 = v2[13];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A7D93190;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A7D8CB40;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A7D8CB40()
{
  v20 = v0;

  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      os_unfair_lock_lock(Strong + 30);
      v8 = *&v6[32]._os_unfair_lock_opaque;
      v7 = *&v6[34]._os_unfair_lock_opaque;

      os_unfair_lock_unlock(v6 + 30);
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }

    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[16];
    v12 = sub_1A7B0CB38(v8, v7, &v19);

    *(v3 + 4) = v12;
    *(v3 + 12) = 2080;
    sub_1A7E22710();
    sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v13 = sub_1A7E23090();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1A7B0CB38(v13, v15, &v19);

    *(v3 + 14) = v16;
    _os_log_impl(&dword_1A7AD9000, v1, v2, "scheduleUpdate  %s scheduling for ASAP... (%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v4, -1, -1);
    MEMORY[0x1AC5654B0](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LinkEngine.scheduleUpdate()();
  }

  v17 = v0[1];

  return v17();
}

void sub_1A7D8CDDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B4C18, &qword_1A7E41B60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  os_unfair_lock_lock((a2 + 88));
  if (*(a2 + 96) == 1)
  {
    (*(v8 + 16))(v13, a1, v7);
    v14 = *(a2 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 112) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1A7CCE0C8(0, v14[2] + 1, 1, v14);
      *(a2 + 112) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1A7CCE0C8((v16 > 1), v17 + 1, 1, v14);
      *(a2 + 112) = v14;
    }

    v14[2] = v17 + 1;
    (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v13, v7);
    os_unfair_lock_unlock((a2 + 88));
  }

  else
  {
    *(a2 + 96) = 1;
    (*(v8 + 16))(v10, a1, v7);
    v18 = *(a2 + 104);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 104) = v18;
    if ((v19 & 1) == 0)
    {
      v18 = sub_1A7CCE0C8(0, v18[2] + 1, 1, v18);
      *(a2 + 104) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1A7CCE0C8((v20 > 1), v21 + 1, 1, v18);
      *(a2 + 104) = v18;
    }

    v18[2] = v21 + 1;
    (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v10, v7);
    os_unfair_lock_unlock((a2 + 88));
    v22 = sub_1A7E226D0();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = a2;

    sub_1A7D9252C(0, 0, v6, 0, 0, &unk_1A7E4E1A0, v23);

    sub_1A7CC9970(v6, &unk_1EB2B61C0, &qword_1A7E451A0);
  }
}

uint64_t sub_1A7D8D178(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_1A7E226D0();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D8D238, 0, 0);
}

uint64_t sub_1A7D8D238()
{
  v20 = v0;
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  sub_1A7B0CB00(v1, qword_1EB2B3308);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v18 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    os_unfair_lock_lock((v6 + 120));
    v9 = *(v6 + 128);
    v10 = *(v6 + 136);

    os_unfair_lock_unlock((v6 + 120));
    v11 = sub_1A7B0CB38(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_1A7E22710();
    sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v12 = sub_1A7E23090();
    v14 = v13;
    (*(v5 + 8))(v4, v18);
    v15 = sub_1A7B0CB38(v12, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1A7AD9000, v2, v3, "update %s created Task.immediate (%s)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1A7D93194;

  return sub_1A7D8D4D0();
}

uint64_t sub_1A7D8D4D0()
{
  v1[22] = v0;
  v2 = sub_1A7E22100();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_1A7E22130();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v4 = sub_1A7E226D0();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D8D648, 0, 0);
}

uint64_t sub_1A7D8D648()
{
  v23 = v0;
  v1 = v0[22];
  os_unfair_lock_lock((v1 + 144));
  v2 = *(v1 + 152);
  v3 = v2 + 1;
  v0[32] = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 152) = v3;
    os_unfair_lock_unlock((v1 + 144));
    if (qword_1EB2B3300 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B3308);

  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[30];
    v7 = v0[31];
    v20 = v0[29];
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v10 = 136315650;
    os_unfair_lock_lock((v9 + 120));
    v11 = *(v9 + 128);
    v12 = *(v9 + 136);

    os_unfair_lock_unlock((v9 + 120));
    v13 = sub_1A7B0CB38(v11, v12, &v22);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v3;
    *(v10 + 22) = 2080;
    sub_1A7E22710();
    sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v14 = sub_1A7E23090();
    v16 = v15;
    (*(v8 + 8))(v7, v20);
    v17 = sub_1A7B0CB38(v14, v16, &v22);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "LinkEngine %s _update %ld (%s)", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v21, -1, -1);
    MEMORY[0x1AC5654B0](v10, -1, -1);
  }

  v18 = swift_task_alloc();
  v0[33] = v18;
  *v18 = v0;
  v18[1] = sub_1A7D8D91C;

  return sub_1A7D8F14C();
}

uint64_t sub_1A7D8D91C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7D8DA18, 0, 0);
}

void sub_1A7D8DA18()
{
  v62 = v0;
  v1 = *(v0[22] + 48);
  os_unfair_lock_lock((v1 + 16));
  if (*(v1 + 40) == 1)
  {
    sub_1A7D877E8();
  }

  v3 = sub_1A7D84DF4(v2, sub_1A7CCED60);
  v0[34] = v3;
  v0[35] = 0;

  os_unfair_lock_unlock((v1 + 16));
  v4 = *(v3 + 16);
  v0[36] = v4;
  if (v4)
  {
    v0[37] = 0;
    v5 = v0[34];
    v6 = v0[22];
    v7 = *(v5 + 32);
    v0[38] = *(v5 + 40);
    v0[20] = v6;

    v55 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v8[1] = sub_1A7D8E200;

    v55();
  }

  else
  {

    v9 = v0[35];
    v10 = v0[22];
    os_unfair_lock_lock(v10 + 22);
    sub_1A7D90514(&v10[24], v10, &v60);
    os_unfair_lock_unlock(v10 + 22);
    if (!v9)
    {
      if (v60)
      {
        v11 = swift_task_alloc();
        v0[40] = v11;
        *v11 = v0;
        v11[1] = sub_1A7D8EAA4;

        sub_1A7D8D4D0();
      }

      else
      {
        v12 = v0[22];
        v13 = MEMORY[0x1E69E7CC0];
        v57 = MEMORY[0x1E69E7CC0];
        os_unfair_lock_lock((v12 + 72));
        v14 = *(v12 + 80);

        os_unfair_lock_unlock((v12 + 72));
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = 0;
          v17 = v14 + 32;
          v52 = *(v14 + 16);
          v50 = v14 + 32;
          do
          {
            v56 = *(v17 + 16 * v16);
            v60 = 8237;
            v61 = 0xE200000000000000;
            ObjectType = swift_getObjectType();
            v19 = *(*(&v56 + 1) + 8);
            swift_unknownObjectRetain();
            v20 = v19(ObjectType, *(&v56 + 1));
            MEMORY[0x1AC561C90](v20);

            v21 = v60;
            v22 = v61;
            v23 = v57;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1A7CCCAA4(0, *(v57 + 2) + 1, 1, v57);
            }

            v25 = *(v23 + 2);
            v24 = *(v23 + 3);
            if (v25 >= v24 >> 1)
            {
              v23 = sub_1A7CCCAA4((v24 > 1), v25 + 1, 1, v23);
            }

            *(v23 + 2) = v25 + 1;
            v26 = &v23[16 * v25];
            *(v26 + 4) = v21;
            *(v26 + 5) = v22;
            v57 = v23;
            *(v0 + 9) = v56;
            swift_unknownObjectRetain();
            sub_1A7CC7FFC(&qword_1EB2B4B58, &unk_1A7E41AA0);
            sub_1A7CC7FFC(&qword_1EB2B6F20, &qword_1A7E4E1C0);
            if (swift_dynamicCast())
            {
              v27 = v0[22];
              sub_1A7B14FF0((v0 + 13), (v0 + 8));
              v58 = v13;
              v28 = v0[11];
              v29 = v0[12];
              sub_1A7CC9878(v0 + 8, v28);
              (*(v29 + 8))(&v58, v27, v28, v29);
              v30 = v58;
              v31 = *(v58 + 16);
              if (v31)
              {
                v59 = v13;
                sub_1A7CCE918(0, v31, 0);
                v32 = v59;
                v33 = (v30 + 40);
                do
                {
                  v34 = *(v33 - 1);
                  v35 = *v33;
                  v60 = 538976288;
                  v61 = 0xE400000000000000;

                  MEMORY[0x1AC561C90](v34, v35);

                  v36 = v60;
                  v37 = v61;
                  v59 = v32;
                  v39 = *(v32 + 16);
                  v38 = *(v32 + 24);
                  if (v39 >= v38 >> 1)
                  {
                    sub_1A7CCE918((v38 > 1), v39 + 1, 1);
                    v32 = v59;
                  }

                  *(v32 + 16) = v39 + 1;
                  v40 = v32 + 16 * v39;
                  *(v40 + 32) = v36;
                  *(v40 + 40) = v37;
                  v33 += 2;
                  --v31;
                }

                while (v31);
                v13 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v32 = v13;
              }

              sub_1A7DDEE7C(v32);
              swift_unknownObjectRelease();

              sub_1A7B0CD6C(v0 + 8);
              v17 = v50;
              v15 = v52;
            }

            else
            {
              swift_unknownObjectRelease();
              v0[17] = 0;
              *(v0 + 15) = 0u;
              *(v0 + 13) = 0u;
              sub_1A7CC9970((v0 + 13), &qword_1EB2B6F28, &qword_1A7E4E1C8);
            }

            ++v16;
          }

          while (v16 != v15);

          v41 = v57;
        }

        else
        {

          v41 = MEMORY[0x1E69E7CC0];
        }

        if (qword_1EB2B33C0 != -1)
        {
          swift_once();
        }

        v42 = v0[32];
        v43 = v0[28];
        v44 = v0[25];
        v54 = v0[26];
        v45 = v0[23];
        v51 = v0[24];
        v53 = v0[27];
        v46 = v0[22];
        v47 = swift_allocObject();
        v47[2] = v46;
        v47[3] = v42;
        v47[4] = v41;
        v0[6] = sub_1A7D92C44;
        v0[7] = v47;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1A7D3E75C;
        v0[5] = &unk_1F1AB4830;
        v48 = _Block_copy(v0 + 2);

        sub_1A7E22120();
        v0[21] = MEMORY[0x1E69E7CC0];
        sub_1A7D92FD8(&qword_1EB2B30A8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1A7CC7FFC(&qword_1EB2B6F30, &unk_1A7E4E1D0);
        sub_1A7CF3788(&qword_1EB2B3090, &qword_1EB2B6F30, &unk_1A7E4E1D0, MEMORY[0x1E69E6328]);
        sub_1A7E22AC0();
        MEMORY[0x1AC562210](0, v43, v44, v48);
        _Block_release(v48);
        (*(v51 + 8))(v44, v45);
        (*(v53 + 8))(v43, v54);

        v49 = v0[1];

        v49();
      }
    }
  }
}

uint64_t sub_1A7D8E200()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7D8E318, 0, 0);
}

void sub_1A7D8E318()
{
  v59 = v0;
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {

    v2 = v0[35];
    v3 = v0[22];
    os_unfair_lock_lock(v3 + 22);
    sub_1A7D90514(&v3[24], v3, &v57);
    os_unfair_lock_unlock(v3 + 22);
    if (!v2)
    {
      if (v57)
      {
        v8 = swift_task_alloc();
        v0[40] = v8;
        *v8 = v0;
        v8[1] = sub_1A7D8EAA4;

        sub_1A7D8D4D0();
      }

      else
      {
        v9 = v0[22];
        v10 = MEMORY[0x1E69E7CC0];
        v54 = MEMORY[0x1E69E7CC0];
        os_unfair_lock_lock((v9 + 72));
        v11 = *(v9 + 80);

        os_unfair_lock_unlock((v9 + 72));
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = 0;
          v14 = v11 + 32;
          v49 = *(v11 + 16);
          v47 = v11 + 32;
          do
          {
            v53 = *(v14 + 16 * v13);
            v57 = 8237;
            v58 = 0xE200000000000000;
            ObjectType = swift_getObjectType();
            v16 = *(*(&v53 + 1) + 8);
            swift_unknownObjectRetain();
            v17 = v16(ObjectType, *(&v53 + 1));
            MEMORY[0x1AC561C90](v17);

            v18 = v57;
            v19 = v58;
            v20 = v54;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1A7CCCAA4(0, *(v54 + 2) + 1, 1, v54);
            }

            v22 = *(v20 + 2);
            v21 = *(v20 + 3);
            if (v22 >= v21 >> 1)
            {
              v20 = sub_1A7CCCAA4((v21 > 1), v22 + 1, 1, v20);
            }

            *(v20 + 2) = v22 + 1;
            v23 = &v20[16 * v22];
            *(v23 + 4) = v18;
            *(v23 + 5) = v19;
            v54 = v20;
            *(v0 + 9) = v53;
            swift_unknownObjectRetain();
            sub_1A7CC7FFC(&qword_1EB2B4B58, &unk_1A7E41AA0);
            sub_1A7CC7FFC(&qword_1EB2B6F20, &qword_1A7E4E1C0);
            if (swift_dynamicCast())
            {
              v24 = v0[22];
              sub_1A7B14FF0((v0 + 13), (v0 + 8));
              v55 = v10;
              v25 = v0[11];
              v26 = v0[12];
              sub_1A7CC9878(v0 + 8, v25);
              (*(v26 + 8))(&v55, v24, v25, v26);
              v27 = v55;
              v28 = *(v55 + 16);
              if (v28)
              {
                v56 = v10;
                sub_1A7CCE918(0, v28, 0);
                v29 = v56;
                v30 = (v27 + 40);
                do
                {
                  v31 = *(v30 - 1);
                  v32 = *v30;
                  v57 = 538976288;
                  v58 = 0xE400000000000000;

                  MEMORY[0x1AC561C90](v31, v32);

                  v33 = v57;
                  v34 = v58;
                  v56 = v29;
                  v36 = *(v29 + 16);
                  v35 = *(v29 + 24);
                  if (v36 >= v35 >> 1)
                  {
                    sub_1A7CCE918((v35 > 1), v36 + 1, 1);
                    v29 = v56;
                  }

                  *(v29 + 16) = v36 + 1;
                  v37 = v29 + 16 * v36;
                  *(v37 + 32) = v33;
                  *(v37 + 40) = v34;
                  v30 += 2;
                  --v28;
                }

                while (v28);
                v10 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v29 = v10;
              }

              sub_1A7DDEE7C(v29);
              swift_unknownObjectRelease();

              sub_1A7B0CD6C(v0 + 8);
              v14 = v47;
              v12 = v49;
            }

            else
            {
              swift_unknownObjectRelease();
              v0[17] = 0;
              *(v0 + 15) = 0u;
              *(v0 + 13) = 0u;
              sub_1A7CC9970((v0 + 13), &qword_1EB2B6F28, &qword_1A7E4E1C8);
            }

            ++v13;
          }

          while (v13 != v12);

          v38 = v54;
        }

        else
        {

          v38 = MEMORY[0x1E69E7CC0];
        }

        if (qword_1EB2B33C0 != -1)
        {
          swift_once();
        }

        v39 = v0[32];
        v40 = v0[28];
        v41 = v0[25];
        v51 = v0[26];
        v42 = v0[23];
        v48 = v0[24];
        v50 = v0[27];
        v43 = v0[22];
        v44 = swift_allocObject();
        v44[2] = v43;
        v44[3] = v39;
        v44[4] = v38;
        v0[6] = sub_1A7D92C44;
        v0[7] = v44;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1A7D3E75C;
        v0[5] = &unk_1F1AB4830;
        v45 = _Block_copy(v0 + 2);

        sub_1A7E22120();
        v0[21] = MEMORY[0x1E69E7CC0];
        sub_1A7D92FD8(&qword_1EB2B30A8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1A7CC7FFC(&qword_1EB2B6F30, &unk_1A7E4E1D0);
        sub_1A7CF3788(&qword_1EB2B3090, &qword_1EB2B6F30, &unk_1A7E4E1D0, MEMORY[0x1E69E6328]);
        sub_1A7E22AC0();
        MEMORY[0x1AC562210](0, v40, v41, v45);
        _Block_release(v45);
        (*(v48 + 8))(v41, v42);
        (*(v50 + 8))(v40, v51);

        v46 = v0[1];

        v46();
      }
    }
  }

  else
  {
    v0[37] = v1;
    v4 = v0[22];
    v5 = v0[34] + 16 * v1;
    v6 = *(v5 + 32);
    v0[38] = *(v5 + 40);
    v0[20] = v4;

    v52 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[39] = v7;
    *v7 = v0;
    v7[1] = sub_1A7D8E200;

    v52();
  }
}

uint64_t sub_1A7D8EAA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7D8EBA0, 0, 0);
}

uint64_t sub_1A7D8EBA0()
{
  v51 = v0;
  v1 = v0[22];
  v2 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  os_unfair_lock_lock((v1 + 72));
  v3 = *(v1 + 80);

  os_unfair_lock_unlock((v1 + 72));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v42 = *(v3 + 16);
    v40 = v3 + 32;
    do
    {
      v45 = *(v6 + 16 * v5);
      v49 = 8237;
      v50 = 0xE200000000000000;
      ObjectType = swift_getObjectType();
      v8 = *(*(&v45 + 1) + 8);
      swift_unknownObjectRetain();
      v9 = v8(ObjectType, *(&v45 + 1));
      MEMORY[0x1AC561C90](v9);

      v10 = v49;
      v11 = v50;
      v12 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1A7CCCAA4(0, *(v46 + 2) + 1, 1, v46);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1A7CCCAA4((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v11;
      v46 = v12;
      *(v0 + 9) = v45;
      swift_unknownObjectRetain();
      sub_1A7CC7FFC(&qword_1EB2B4B58, &unk_1A7E41AA0);
      sub_1A7CC7FFC(&qword_1EB2B6F20, &qword_1A7E4E1C0);
      if (swift_dynamicCast())
      {
        v16 = v0[22];
        sub_1A7B14FF0((v0 + 13), (v0 + 8));
        v47 = v2;
        v17 = v0[11];
        v18 = v0[12];
        sub_1A7CC9878(v0 + 8, v17);
        (*(v18 + 8))(&v47, v16, v17, v18);
        v19 = v47;
        v20 = *(v47 + 16);
        if (v20)
        {
          v48 = v2;
          sub_1A7CCE918(0, v20, 0);
          v21 = v48;
          v22 = (v19 + 40);
          do
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            v49 = 538976288;
            v50 = 0xE400000000000000;

            MEMORY[0x1AC561C90](v23, v24);

            v25 = v49;
            v26 = v50;
            v48 = v21;
            v28 = *(v21 + 16);
            v27 = *(v21 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_1A7CCE918((v27 > 1), v28 + 1, 1);
              v21 = v48;
            }

            *(v21 + 16) = v28 + 1;
            v29 = v21 + 16 * v28;
            *(v29 + 32) = v25;
            *(v29 + 40) = v26;
            v22 += 2;
            --v20;
          }

          while (v20);
          v2 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v21 = v2;
        }

        sub_1A7DDEE7C(v21);
        swift_unknownObjectRelease();

        sub_1A7B0CD6C(v0 + 8);
        v6 = v40;
        v4 = v42;
      }

      else
      {
        swift_unknownObjectRelease();
        v0[17] = 0;
        *(v0 + 15) = 0u;
        *(v0 + 13) = 0u;
        sub_1A7CC9970((v0 + 13), &qword_1EB2B6F28, &qword_1A7E4E1C8);
      }

      ++v5;
    }

    while (v5 != v4);

    v30 = v46;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EB2B33C0 != -1)
  {
    swift_once();
  }

  v31 = v0[32];
  v32 = v0[28];
  v33 = v0[25];
  v44 = v0[26];
  v34 = v0[23];
  v41 = v0[24];
  v43 = v0[27];
  v35 = v0[22];
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = v31;
  v36[4] = v30;
  v0[6] = sub_1A7D92C44;
  v0[7] = v36;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A7D3E75C;
  v0[5] = &unk_1F1AB4830;
  v37 = _Block_copy(v0 + 2);

  sub_1A7E22120();
  v0[21] = MEMORY[0x1E69E7CC0];
  sub_1A7D92FD8(&qword_1EB2B30A8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A7CC7FFC(&qword_1EB2B6F30, &unk_1A7E4E1D0);
  sub_1A7CF3788(&qword_1EB2B3090, &qword_1EB2B6F30, &unk_1A7E4E1D0, MEMORY[0x1E69E6328]);
  sub_1A7E22AC0();
  MEMORY[0x1AC562210](0, v32, v33, v37);
  _Block_release(v37);
  (*(v41 + 8))(v33, v34);
  (*(v43 + 8))(v32, v44);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1A7D8F16C()
{
  v74 = v0;
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 32));
  os_unfair_lock_lock((v1 + 176));
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  *(v0 + 56) = v3;
  v4 = *(v1 + 36);
  *(v1 + 184) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 192) = MEMORY[0x1E69E7CC0];
  if (v4 != 1)
  {

    os_unfair_lock_unlock((v1 + 176));
    os_unfair_lock_unlock((v1 + 32));
    if ((v2 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {

    os_unfair_lock_unlock((v1 + 176));
    os_unfair_lock_unlock((v1 + 32));
    goto LABEL_18;
  }

  v6 = v3;
  os_unfair_lock_unlock((v1 + 176));
  os_unfair_lock_unlock((v1 + 32));
  if (!v6)
  {
    goto LABEL_42;
  }

  if (v6 == 1)
  {
LABEL_18:
    if (qword_1EB2B3300 != -1)
    {
      swift_once();
    }

    v31 = sub_1A7E22060();
    sub_1A7B0CB00(v31, qword_1EB2B3308);

    v32 = sub_1A7E22040();
    v33 = sub_1A7E228F0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 48);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v73[0] = v36;
      *v35 = 136315138;
      os_unfair_lock_lock((v34 + 120));
      v37 = *(v34 + 128);
      v38 = *(v34 + 136);

      os_unfair_lock_unlock((v34 + 120));
      v39 = sub_1A7B0CB38(v37, v38, v73);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1A7AD9000, v32, v33, "LinkEngine %s scheduleOrUnschedulePeriodicTasks: activate", v35, 0xCu);
      sub_1A7B0CD6C(v36);
      MEMORY[0x1AC5654B0](v36, -1, -1);
      MEMORY[0x1AC5654B0](v35, -1, -1);
    }

    v40 = *(*(v0 + 48) + 40);
    os_unfair_lock_lock((v40 + 16));
    if (*(v40 + 40) == 1)
    {
      sub_1A7D87088();
    }

    v42 = sub_1A7D84DF4(v41, sub_1A7CCED30);
    *(v0 + 72) = v42;

    os_unfair_lock_unlock((v40 + 16));
    v43 = *(v42 + 16);
    *(v0 + 80) = v43;
    if (v43)
    {
      *(v0 + 88) = 0;
      *(v0 + 96) = v5;
      v44 = *(v0 + 72);
      v45 = *(v0 + 48);
      v46 = *(v44 + 32);
      *(v0 + 104) = *(v44 + 40);
      *(v0 + 32) = v45;
      v11 = v0 + 32;

      v72 = (v46 + *v46);
      v47 = swift_task_alloc();
      *(v0 + 112) = v47;
      *v47 = v0;
      v47[1] = sub_1A7D8FA08;
      v13 = v0 + 40;
LABEL_26:
      v48 = v11;
      v49 = v72;

      return v49(v13, v48);
    }

    v51 = *(v0 + 48);
    os_unfair_lock_lock(v51 + 40);
    v52 = *(v5 + 16);
    if (v52)
    {

      v53 = (v5 + 40);
      do
      {
        v54 = *(v53 - 1);
        v55 = *v53;
        swift_unknownObjectRetain();
        sub_1A7CF0694(v73, v54, v55);
        swift_unknownObjectRelease();
        v53 += 2;
        --v52;
      }

      while (v52);
    }

    os_unfair_lock_unlock(v51 + 40);
    v56 = 1;
    goto LABEL_34;
  }

  if (v6 != 2)
  {
    v7 = *(v6 + 16);
    *(v0 + 64) = v7;
    if (v7)
    {
      *(v0 + 168) = 0;
      *(v0 + 176) = v5;
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      v10 = *(v8 + 32);
      *(v0 + 184) = *(v8 + 40);
      *(v0 + 16) = v9;
      v11 = v0 + 16;

      v72 = (v10 + *v10);
      v12 = swift_task_alloc();
      *(v0 + 192) = v12;
      *v12 = v0;
      v12[1] = sub_1A7D9010C;
      v13 = v0 + 24;
      goto LABEL_26;
    }

    v65 = *(v0 + 48);
    os_unfair_lock_lock(v65 + 40);
    v66 = *(v5 + 16);
    if (v66)
    {

      v67 = (v5 + 40);
      do
      {
        v68 = *(v67 - 1);
        v69 = *v67;
        swift_unknownObjectRetain();
        sub_1A7CF0694(v73, v68, v69);
        swift_unknownObjectRelease();
        v67 += 2;
        --v66;
      }

      while (v66);
    }

    v70 = *(v0 + 56);

    os_unfair_lock_unlock(v65 + 40);
    v56 = v70;
LABEL_34:
    sub_1A7D92CBC(v56);
    goto LABEL_42;
  }

LABEL_9:
  if (qword_1EB2B3300 != -1)
  {
    swift_once();
  }

  v14 = sub_1A7E22060();
  sub_1A7B0CB00(v14, qword_1EB2B3308);

  v15 = sub_1A7E22040();
  v16 = sub_1A7E228F0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 48);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v73[0] = v19;
    *v18 = 136315138;
    os_unfair_lock_lock((v17 + 120));
    v20 = *(v17 + 128);
    v21 = *(v17 + 136);

    os_unfair_lock_unlock((v17 + 120));
    v22 = sub_1A7B0CB38(v20, v21, v73);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1A7AD9000, v15, v16, "LinkEngine %s scheduleOrUnschedulePeriodicTasks: deactivate", v18, 0xCu);
    sub_1A7B0CD6C(v19);
    MEMORY[0x1AC5654B0](v19, -1, -1);
    MEMORY[0x1AC5654B0](v18, -1, -1);
  }

  v23 = *(v0 + 48);
  os_unfair_lock_lock((v23 + 160));
  v24 = *(v23 + 168);
  *(v0 + 128) = v24;
  *(v23 + 168) = MEMORY[0x1E69E7CD0];
  os_unfair_lock_unlock((v23 + 160));
  v25 = *(v24 + 32);
  *(v0 + 208) = v25;
  v26 = -1;
  v27 = -1 << v25;
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v24 + 56);
  if (v28)
  {
    v29 = 0;
    v30 = *(v0 + 128);
LABEL_38:
    *(v0 + 136) = v28;
    *(v0 + 144) = v29;
    v59 = (*(v30 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v28)))));
    *(v0 + 152) = *v59;
    v60 = v59[1];
    ObjectType = swift_getObjectType();
    v62 = *(v60 + 16);
    swift_unknownObjectRetain();
    v71 = (v62 + *v62);
    v63 = swift_task_alloc();
    *(v0 + 160) = v63;
    *v63 = v0;
    v63[1] = sub_1A7D8FE14;
    v13 = ObjectType;
    v48 = v60;
    v49 = v71;

    return v49(v13, v48);
  }

  v57 = 0;
  v58 = ((63 - v27) >> 6) - 1;
  v30 = *(v0 + 128);
  while (v58 != v57)
  {
    v29 = v57 + 1;
    v28 = *(v30 + 8 * v57++ + 64);
    if (v28)
    {
      goto LABEL_38;
    }
  }

  sub_1A7D92CBC(2uLL);

LABEL_42:
  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1A7D8FA08()
{
  v1 = *v0;

  *(v1 + 120) = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A7D8FB40, 0, 0);
}

void *sub_1A7D8FB40()
{
  v24 = v0;
  v1 = v0[15];
  result = v0[12];
  v3 = *(v1 + 16);
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_26;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[12];
  if (result && v5 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v10 = v4 + v3;
    }

    else
    {
      v10 = v4;
    }

    result = sub_1A7CCE2D4(result, v10, 1, v0[12]);
    v6 = result;
    if (*(v1 + 16))
    {
LABEL_5:
      if ((v6[3] >> 1) - v6[2] >= v3)
      {
        sub_1A7CC7FFC(&qword_1EB2B4C08, &qword_1A7E41B50);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v7 = v6[2];
        v8 = __OFADD__(v7, v3);
        v9 = v7 + v3;
        if (!v8)
        {
          v6[2] = v9;
          goto LABEL_14;
        }

LABEL_28:
        __break(1u);
        return result;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_14:
  v11 = v0[11] + 1;
  if (v11 == v0[10])
  {

    v12 = v0[6];
    os_unfair_lock_lock(v12 + 40);
    v13 = v6[2];
    if (v13)
    {

      v14 = v6 + 5;
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        swift_unknownObjectRetain();
        sub_1A7CF0694(&v23, v15, v16);
        swift_unknownObjectRelease();
        v14 += 2;
        --v13;
      }

      while (v13);
    }

    os_unfair_lock_unlock(v12 + 40);
    sub_1A7D92CBC(1uLL);
    v17 = v0[1];

    return v17();
  }

  else
  {
    v0[11] = v11;
    v0[12] = v6;
    v18 = v0[6];
    v19 = v0[9] + 16 * v11;
    v20 = *(v19 + 32);
    v0[13] = *(v19 + 40);
    v0[4] = v18;

    v22 = (v20 + *v20);
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_1A7D8FA08;

    return (v22)(v0 + 5, v0 + 4);
  }
}

uint64_t sub_1A7D8FE14()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7D8FF10, 0, 0);
}

uint64_t sub_1A7D8FF10()
{
  result = swift_unknownObjectRelease();
  v2 = *(v0 + 144);
  v3 = (*(v0 + 136) - 1) & *(v0 + 136);
  if (v3)
  {
    v4 = *(v0 + 128);
LABEL_7:
    *(v0 + 136) = v3;
    *(v0 + 144) = v2;
    v6 = (*(v4 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
    *(v0 + 152) = *v6;
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v12 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_1A7D8FE14;

    return v12(ObjectType, v7);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      v4 = *(v0 + 128);
      if (v5 >= (((1 << *(v0 + 208)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    sub_1A7D92CBC(2uLL);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1A7D9010C()
{
  v1 = *v0;

  *(v1 + 200) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1A7D90244, 0, 0);
}

void *sub_1A7D90244()
{
  v25 = v0;
  v1 = v0[25];
  result = v0[22];
  v3 = *(v1 + 16);
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_26;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[22];
  if (result && v5 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v10 = v4 + v3;
    }

    else
    {
      v10 = v4;
    }

    result = sub_1A7CCE2D4(result, v10, 1, v0[22]);
    v6 = result;
    if (*(v1 + 16))
    {
LABEL_5:
      if ((v6[3] >> 1) - v6[2] >= v3)
      {
        sub_1A7CC7FFC(&qword_1EB2B4C08, &qword_1A7E41B50);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v7 = v6[2];
        v8 = __OFADD__(v7, v3);
        v9 = v7 + v3;
        if (!v8)
        {
          v6[2] = v9;
          goto LABEL_14;
        }

LABEL_28:
        __break(1u);
        return result;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_14:
  v11 = v0[21] + 1;
  if (v11 == v0[8])
  {
    v12 = v0[6];
    os_unfair_lock_lock(v12 + 40);
    v13 = v6[2];
    if (v13)
    {

      v14 = v6 + 5;
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        swift_unknownObjectRetain();
        sub_1A7CF0694(&v24, v15, v16);
        swift_unknownObjectRelease();
        v14 += 2;
        --v13;
      }

      while (v13);
    }

    v17 = v0[7];

    os_unfair_lock_unlock(v12 + 40);
    sub_1A7D92CBC(v17);
    v18 = v0[1];

    return v18();
  }

  else
  {
    v0[21] = v11;
    v0[22] = v6;
    v19 = v0[6];
    v20 = v0[7] + 16 * v11;
    v21 = *(v20 + 32);
    v0[23] = *(v20 + 40);
    v0[2] = v19;

    v23 = (v21 + *v21);
    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_1A7D9010C;

    return (v23)(v0 + 3, v0 + 2);
  }
}

void sub_1A7D90514(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v43 = a3;
  v41 = a2;
  v5 = sub_1A7E226D0();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A7CC7FFC(&qword_1EB2B4C18, &qword_1A7E41B60);
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v42 = a1;
  v12 = *(a1 + 8);
  v13 = *(v12 + 16);
  if (v13)
  {
    v16 = *(v8 + 16);
    v14 = v8 + 16;
    v15 = v16;
    v17 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v11, v17, v7, v9);
      sub_1A7E22620();
      (*(v14 - 8))(v11, v7);
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  v19 = v42;
  v20 = *(v42 + 16);

  *(v19 + 8) = v20;

  *(v19 + 16) = MEMORY[0x1E69E7CC0];
  v21 = *(v20 + 16);
  if (v21)
  {
    if (qword_1EB2B3300 != -1)
    {
      swift_once();
    }

    v22 = sub_1A7E22060();
    sub_1A7B0CB00(v22, qword_1EB2B3308);
    v23 = v41;

    v24 = sub_1A7E22040();
    v25 = sub_1A7E228F0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315394;
      os_unfair_lock_lock((v23 + 120));
      v28 = *(v23 + 128);
      v29 = *(v23 + 136);

      os_unfair_lock_unlock((v23 + 120));
      v30 = sub_1A7B0CB38(v28, v29, &v44);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = v38;
      sub_1A7E22710();
      sub_1A7D92FD8(&qword_1EB2B30A0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
      v32 = v40;
      v33 = sub_1A7E23090();
      v35 = v34;
      (*(v39 + 8))(v31, v32);
      v36 = sub_1A7B0CB38(v33, v35, &v44);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_1A7AD9000, v24, v25, "_update: %s there is another scheduled update. triggering... (%s)", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v27, -1, -1);
      MEMORY[0x1AC5654B0](v26, -1, -1);
    }

    LOBYTE(v21) = 1;
  }

  else
  {
    *v19 = 0;
  }

  *v43 = v21;
}

void sub_1A7D90900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB2B3398 != -1)
  {
    swift_once();
  }

  v5 = sub_1A7E22060();
  sub_1A7B0CB00(v5, qword_1EB2B33A0);

  oslog = sub_1A7E22040();
  v6 = sub_1A7E228F0();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315650;
    os_unfair_lock_lock((a1 + 120));
    v9 = *(a1 + 128);
    v10 = *(a1 + 136);

    os_unfair_lock_unlock((a1 + 120));
    v11 = sub_1A7B0CB38(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    *(v7 + 22) = 2080;
    sub_1A7D92C68();

    v12 = sub_1A7E23090();
    v14 = v13;

    v15 = sub_1A7B0CB38(v12, v14, &v17);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_1A7AD9000, oslog, v6, "LinkEngine %s _update %ld:\n%s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t LinkEngine.isOngoingTaskActive(_:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v2 + 160));
  LOBYTE(a2) = sub_1A7D89740(a1, a2, *(v2 + 168));
  os_unfair_lock_unlock((v2 + 160));
  swift_unknownObjectRelease();
  return a2 & 1;
}

uint64_t LinkEngine.components.getter()
{
  os_unfair_lock_lock((v0 + 200));
  v1 = *(v0 + 208);

  os_unfair_lock_unlock((v0 + 200));
  return v1;
}

void sub_1A7D90BD8(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 200));

  *(v3 + 208) = v2;

  os_unfair_lock_unlock((v3 + 200));
}

void LinkEngine.components.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 200));

  *(v1 + 208) = a1;

  os_unfair_lock_unlock((v1 + 200));
}

uint64_t (*LinkEngine.components.modify(void *a1))()
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 200));
  v3 = *(v1 + 208);

  os_unfair_lock_unlock((v1 + 200));
  *a1 = v3;
  return sub_1A7D90CDC;
}

void sub_1A7D90CDC(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 200));

    *(v3 + 208) = v2;
    os_unfair_lock_unlock((v3 + 200));
  }

  else
  {
    os_unfair_lock_lock((v3 + 200));

    *(v3 + 208) = v2;

    os_unfair_lock_unlock((v3 + 200));
  }
}

double sub_1A7D90D6C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_1A7CD0DFC(a2);
    if (v6)
    {
      sub_1A7B0CD10(*(v4 + 56) + 32 * v5, a3);
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_OWORD *sub_1A7D90DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A7E229A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a3, v7, v9);
  v12 = *(a4 - 8);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *(&v16 + 1) = a4;
    v13 = sub_1A7CC98BC(&v15);
    (*(v12 + 32))(v13, v11, a4);
  }

  return sub_1A7CC8D74(&v15, a2);
}

void (*LinkEngine.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = sub_1A7E229A0();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  LinkEngine.subscript.getter(a2, a3, v13);
  return sub_1A7D91094;
}

void sub_1A7D91094(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1A7D9240C(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1A7D9240C((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void LinkEngine.withComponent<A, B>(_:_:)(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  os_unfair_lock_lock((v6 + 200));
  sub_1A7D91268((v6 + 208), a1, a2, a4, a5, &v12, x8_0);
  sub_1A7CC7FFC(&qword_1EB2B6EC0, &qword_1A7E4DF18);
  sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
  j__os_unfair_lock_unlock((v6 + 200));
}

uint64_t sub_1A7D91268@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v33 = a6;
  v34 = a3;
  v31 = a7;
  v32 = a5;
  v30 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A7E229A0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v28 = a2;
  v29 = a1;
  v19 = *a1;
  if (*(v19 + 16) && (v20 = sub_1A7CD0DFC(a2), (v21 & 1) != 0))
  {
    sub_1A7B0CD10(*(v19 + 56) + 32 * v20, &v35);
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  v22 = swift_dynamicCast();
  v23 = *(a4 - 8);
  (*(v23 + 56))(v18, v22 ^ 1u, 1, a4);
  v24 = v37;
  v34(v18);
  if (v24)
  {
    result = (*(v13 + 8))(v18, v12);
    *v33 = v24;
  }

  else
  {
    (*(v13 + 16))(v15, v18, v12);
    if ((*(v23 + 48))(v15, 1, a4) == 1)
    {
      (*(v13 + 8))(v15, v12);
      v35 = 0u;
      v36 = 0u;
    }

    else
    {
      *(&v36 + 1) = a4;
      v26 = sub_1A7CC98BC(&v35);
      (*(v23 + 32))(v26, v15, a4);
    }

    sub_1A7CC8D74(&v35, v28);
    (*(v30 + 32))(v31, v11, v32);
    return (*(v13 + 8))(v18, v12);
  }

  return result;
}

uint64_t sub_1A7D915A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return LinkEngine.update()(v2);
}

uint64_t sub_1A7D9167C()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 200));
  v2 = *(v1 + 208);

  os_unfair_lock_unlock((v1 + 200));
  return v2;
}

void sub_1A7D916BC(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 200));

  *(v3 + 208) = a1;

  os_unfair_lock_unlock((v3 + 200));
}

uint64_t (*sub_1A7D91708(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = LinkEngine.components.modify(v2);
  return sub_1A7D9177C;
}

uint64_t sub_1A7D917A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A7D9240C(a1, a2, a3);
  v4 = sub_1A7E229A0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t (*sub_1A7D91820(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = LinkEngine.subscript.modify(v6, a2, a3);
  return sub_1A7D93198;
}

void sub_1A7D918AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1A7D918F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A7E23200();
  sub_1A7E22350();
  v6 = sub_1A7E23240();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A7E230D0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A7CF2154();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1A7D91D40(v8);
  *v2 = v16;
  return v12;
}

void sub_1A7D91A30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_1A7E23200();
  sub_1A7E22350();
  v8 = sub_1A7E23240();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 32 * v10);
      v13 = *v12 == a1 && v12[1] == a2;
      if (v13 || (sub_1A7E230D0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v21 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A7CF2498();
      v15 = v21;
    }

    v16 = *(v15 + 48) + 32 * v10;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    *a3 = v17;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v20;
    sub_1A7D92138(v10);
    *v3 = v21;
  }

  else
  {
LABEL_9:
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

void sub_1A7D91B7C(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = *v5;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](*a1);
  v10 = sub_1A7E23240();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 1;
    return;
  }

  v13 = ~v11;
  while (1)
  {
    sub_1A7CD1F00(*(v9 + 48) + 24 * v12, v21, a2, a3);
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = swift_unknownObjectWeakLoadStrong();
    sub_1A7CC9970(v21, a2, a3);
    if (!Strong)
    {
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    if (v15)
    {
      break;
    }

LABEL_4:
    swift_unknownObjectRelease();
LABEL_5:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (Strong != v15)
  {
    goto LABEL_5;
  }

LABEL_12:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v19;
  v21[0] = *v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v17 = v21[0];
  }

  sub_1A7CE5028(*(v17 + 48) + 24 * v12, a5, a2, a3);
  sub_1A7D91F04(v12, a2, a3);
  *v19 = v21[0];
}

void sub_1A7D91D40(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A7E22AE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1A7E23200();

        sub_1A7E22350();
        v10 = sub_1A7E23240();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_1A7D91F04(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  v5 = *v3;
  v6 = *v3 + 56;
  v7 = -1 << *(*v3 + 32);
  v8 = (a1 + 1) & ~v7;
  if (((1 << v8) & *(v6 + 8 * (v8 >> 6))) != 0)
  {
    v11 = ~v7;

    v12 = sub_1A7E22AE0();
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v19 = v6;
      while (1)
      {
        sub_1A7CD1F00(*(v5 + 48) + 24 * v8, v20, a2, a3);
        sub_1A7E23200();
        MEMORY[0x1AC562AF0](v20[0]);
        v14 = sub_1A7E23240();
        sub_1A7CC9970(v20, a2, a3);
        v15 = v14 & v11;
        if (v4 >= v13)
        {
          break;
        }

        if (v15 < v13)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v4 < v8 || *(v5 + 48) + 24 * v4 >= *(v5 + 48) + 24 * v8 + 24)
        {
          sub_1A7CC7FFC(a2, a3);
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v4 == v8)
          {
            goto LABEL_6;
          }

          sub_1A7CC7FFC(a2, a3);
          swift_arrayInitWithTakeBackToFront();
        }

        v4 = v8;
LABEL_6:
        v8 = (v8 + 1) & v11;
        v6 = v19;
        if (((*(v19 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v15 < v13)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v4 < v15)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v6 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  }

  else
  {
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v5 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v18;
    ++*(v5 + 36);
  }
}

void sub_1A7D92138(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A7E22AE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1A7E23200();

        sub_1A7E22350();
        v11 = sub_1A7E23240();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 32 * v2);
          v15 = (v13 + 32 * v6);
          if (v2 != v6 || v14 >= v15 + 2)
          {
            v10 = v15[1];
            *v14 = *v15;
            v14[1] = v10;
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_1A7D92318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a2, a3, a4);
  os_unfair_lock_lock((a2 + 72));
  v7 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A7CCD4CC(0, v7[2] + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A7CCD4CC((v9 > 1), v10 + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a1;
  v11[5] = a4;
  swift_unknownObjectRetain();

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9240C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 50);
  sub_1A7D90DDC(&v3[52], a2, a1, a3);

  os_unfair_lock_unlock(v3 + 50);
}

uint64_t sub_1A7D92478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A7CD2A2C;

  return sub_1A7D8B6E8(v8, a1, v4, v5, v6);
}

uint64_t sub_1A7D9252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1A7E225F0();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1A7CD1F00(a3, v13, &unk_1EB2B61C0, &qword_1A7E451A0);
  v18 = sub_1A7E226D0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1A7CC9970(v13, &unk_1EB2B61C0, &qword_1A7E451A0);
  }

  else
  {
    sub_1A7E226C0();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = sub_1A7E22300() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

uint64_t sub_1A7D92968(uint64_t a1)
{
  v4 = *(sub_1A7E22CF0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A7CD22FC;

  return sub_1A7D8C598(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1A7D92AE4()
{
  result = qword_1EB2B33B8;
  if (!qword_1EB2B33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B33B8);
  }

  return result;
}

uint64_t sub_1A7D92B38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A7CD2A2C;

  return sub_1A7D8D178(v8, a1, v4, v5, v6);
}

uint64_t sub_1A7D92BEC(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t sub_1A7D92C50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A7D92C68()
{
  result = qword_1EB2B3358;
  if (!qword_1EB2B3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3358);
  }

  return result;
}

unint64_t sub_1A7D92CBC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1A7D92CCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7D017E0;

  return sub_1A7D8ACF0(a1, v4);
}

void sub_1A7D92D80(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36) == 1)
  {
    os_unfair_lock_lock((v2 + 176));
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = *(v2 + 192);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 192) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1A7CCE0A4(0, v6[2] + 1, 1, v6);
      *(v2 + 192) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1A7CCE0A4((v8 > 1), v9 + 1, 1, v6);
      *(v2 + 192) = v6;
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = &unk_1A7E4E210;
    v10[5] = v5;
    os_unfair_lock_unlock((v2 + 176));
    os_unfair_lock_unlock((v2 + 32));

    LinkEngine.scheduleUpdate()();
  }

  else
  {

    os_unfair_lock_unlock((v2 + 32));
  }
}

uint64_t sub_1A7D92EC4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD2A2C;

  return sub_1A7D9F0E8(a1, a2, v6);
}

unint64_t sub_1A7D92F8C()
{
  result = qword_1EB2B3070;
  if (!qword_1EB2B3070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B3070);
  }

  return result;
}

uint64_t sub_1A7D92FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A7D93020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D95F38(a1, v4);
}

uint64_t sub_1A7D930D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD22FC;

  return sub_1A7D95F38(a1, v4);
}

uint64_t dispatch thunk of LinkEngineOngoingTask.stop()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD22FC;

  return v7(a1, a2);
}

uint64_t LinkEndpoint.interfaceIndex.getter()
{
  v1 = *v0;
  if (!*(v1 + 16) || (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v3 & 1) == 0) || (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, &v7), sub_1A7B1503C(&v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v10 = v15;
  v11 = v16;
  v8 = v13;
  v9 = v14;
  v7 = v12;
  if (!*(&v16 + 1))
  {
    return 0;
  }

  v4 = v8;
  sub_1A7D5C958(&v7);
  return v4;
}

uint64_t LinkEndpoint.isDelegated.getter()
{
  v1 = *v0;
  if (!*(v1 + 16) || (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v3 & 1) == 0) || (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v9 = v14;
  v10 = v15;
  v7[1] = v12;
  v8 = v13;
  v7[0] = v11;
  if (!*(&v15 + 1))
  {
    return 0;
  }

  v4 = *(&v8 + 1);

  sub_1A7D5C958(v7);
  if (!v4)
  {
    return 0;
  }

  return 1;
}