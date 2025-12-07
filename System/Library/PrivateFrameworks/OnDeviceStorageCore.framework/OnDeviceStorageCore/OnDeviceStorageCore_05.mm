uint64_t sub_1DB207494(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1DB2074E8()
{
  result = qword_1ECC281D8;
  if (!qword_1ECC281D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC281D8);
  }

  return result;
}

uint64_t sub_1DB207554(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
  }

  else
  {
    v25[2] = v1;
    v3 = MEMORY[0x1EEE9AC00](a1);

    v4 = sub_1DB288AD0(sub_1DB208758, v25, v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v33 = MEMORY[0x1E69E7CC0];
      sub_1DB138680(0, v5, 0);
      v2 = v33;
      v25[5] = v4;
      v6 = v4 + 32;
      v26 = xmmword_1DB2BD5A0;
      do
      {
        v27 = v5;
        sub_1DB164AE0(v6, v31);
        sub_1DB164980(v31, v28);
        v7 = sub_1DB2B995C(34, 0xE100000000000000, 0x646564756C637865, 0xE800000000000000);
        v9 = v8;
        sub_1DB164980(v28, v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        inited = swift_initStackObject();
        *(inited + 16) = v26;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 56) = v11;
        v12 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
        *(inited + 64) = v12;
        *(inited + 32) = v7;
        *(inited + 40) = v9;
        *(inited + 48) = MEMORY[0x1E69E7CC0];
        v13 = v2;
        v15 = v29;
        v14 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v16 = *(v14 + 24);
        *(inited + 96) = v11;
        *(inited + 104) = v12;
        v17 = v14;
        v2 = v13;
        v16(v15, v17);
        sub_1DB2B9A70(inited, &v32[2] + 1);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
        sub_1DB164B3C(v31);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v33 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1DB138680((v18 > 1), v19 + 1, 1);
          v2 = v33;
        }

        *(v2 + 16) = v19 + 1;
        v20 = (v2 + 80 * v19);
        v20[2] = v32[0];
        v21 = v32[1];
        v22 = v32[2];
        v23 = v32[4];
        v20[5] = v32[3];
        v20[6] = v23;
        v20[3] = v21;
        v20[4] = v22;
        v6 += 80;
        v5 = v27 - 1;
      }

      while (v27 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

__n128 OnConflictClause.init(_:_:where:)@<Q0>(__int128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v8 = *a3;
  v6 = a3[1].n128_u64[0];
  sub_1DB1355D0(a1, a4);
  a4[2].n128_u64[1] = a2;
  result = v8;
  a4[3] = v8;
  a4[4].n128_u64[0] = v6;
  return result;
}

void OnConflictClause.init(_:_:where:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  sub_1DB164980(a1, a4);
  a4[5] = a2;
  if (v7)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1DB1718E4(v8, v7, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v8 = 0;
    v9 = 0;
  }

  a4[6] = v8;
  a4[7] = v7;
  a4[8] = v9;
}

uint64_t sub_1DB207940(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = sub_1DB286324(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == sub_1DB286324(v8, v9) && v7 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_1DB2BB924();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_1DB207A20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65756C6156746573;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x737265746C6966;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7463696C666E6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000676E69;
  }

  v7 = 0x65756C6156746573;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x737265746C6966;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7463696C666E6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000676E69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB207B30()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB207BE0(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB207C7C(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

unint64_t sub_1DB207D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB20870C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB207D58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0xE900000000000073;
  v5 = 0x65756C6156746573;
  if (v2 != 1)
  {
    v5 = 0x737265746C6966;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7463696C666E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DB207DC4()
{
  v1 = 0x65756C6156746573;
  if (*v0 != 1)
  {
    v1 = 0x737265746C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463696C666E6F63;
  }
}

unint64_t sub_1DB207E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB20870C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB207E54(uint64_t a1)
{
  v2 = sub_1DB208148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB207E90(uint64_t a1)
{
  v2 = sub_1DB208148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OnConflictClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281E8, &qword_1DB2C4F40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB208148();
  sub_1DB2BBA94();
  sub_1DB164980(v3, &v13);
  HIBYTE(v12) = 0;
  sub_1DB164B90();
  sub_1DB2BB8A4();
  sub_1DB164BE4(&v13);
  if (!v2)
  {
    v13 = v3[5];
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
    sub_1DB2084A4(&qword_1EE13F2A8, sub_1DB201414, MEMORY[0x1E69E6300]);
    sub_1DB2BB854();
    v9 = v3[7];
    v10 = v3[8];
    v13 = v3[6];
    v14 = v9;
    v15 = v10;
    HIBYTE(v12) = 2;
    sub_1DB1757B0(v13, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB1688F0(&qword_1EE13F5B8, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    sub_1DB2BB854();
    sub_1DB1718E4(v13, v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DB208148()
{
  result = qword_1ECC281F0;
  if (!qword_1ECC281F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC281F0);
  }

  return result;
}

uint64_t OnConflictClause.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281F8, &qword_1DB2C4F48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB208148();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  sub_1DB1355D0(&v10, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
  v16 = 1;
  sub_1DB2084A4(&qword_1EE13E620, sub_1DB165BF0, MEMORY[0x1E69E6330]);
  sub_1DB2BB764();
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v16 = 2;
  sub_1DB1688F0(&qword_1EE13EF58, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  sub_1DB2BB764();
  (*(v6 + 8))(v8, v5);
  v14 = v10;
  v15 = v11;
  sub_1DB201088(v12, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB2010E4(v12);
}

uint64_t sub_1DB2084A4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB20854C(uint64_t a1, int a2)
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

uint64_t sub_1DB208594(uint64_t result, int a2, int a3)
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

unint64_t sub_1DB208608()
{
  result = qword_1ECC28200;
  if (!qword_1ECC28200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28200);
  }

  return result;
}

unint64_t sub_1DB208660()
{
  result = qword_1ECC28208;
  if (!qword_1ECC28208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28208);
  }

  return result;
}

unint64_t sub_1DB2086B8()
{
  result = qword_1ECC28210;
  if (!qword_1ECC28210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28210);
  }

  return result;
}

unint64_t sub_1DB20870C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB2BB6F4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t static Expression<A>.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B597C(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59AC(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59AC(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59AC(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.+ infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB208DB8(a1, a2, a3, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, sub_1DB2B597C);
}

{
  return sub_1DB208DB8(a1, a2, a3, &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, sub_1DB2B59AC);
}

uint64_t sub_1DB208DB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19[0] = v14;
  v19[1] = v13;
  v19[4] = sub_1DB21132C(a6, a4, a5);
  v19[2] = v15;
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = &protocol witness table for String;
  v18[0] = a2;
  v18[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v19, inited + 32);
  sub_1DB164980(v18, inited + 72);

  a7(inited, 1, 31868, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t static Expression<A>.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  return sub_1DB208F78(a1, a2, a3, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, sub_1DB2B597C);
}

{
  return sub_1DB208F78(a1, a2, a3, &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, sub_1DB2B59AC);
}

uint64_t sub_1DB208F78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = &protocol witness table for String;
  v17[0] = a1;
  v17[1] = a2;
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16[0] = v12;
  v16[1] = v11;
  v16[4] = sub_1DB21132C(a6, a4, a5);
  v16[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v17, inited + 32);
  sub_1DB164980(v16, inited + 72);

  a7(inited, 1, 31868, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t static Expression<A>.+ infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20919C(a1, a2, a3, a4, 0, x8_0);
}

{
  return sub_1DB209298(a1, a2, a3, a4, 0, x8_0);
}

uint64_t static Expression<A>.+ infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB209830(a1, a2, a4, a6, 0, x8_0);
}

{
  return sub_1DB209940(a1, a2, a4, a6, 0, x8_0);
}

uint64_t static Expression<A>.- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20919C(a1, a2, a3, a4, 1, x8_0);
}

{
  return sub_1DB209298(a1, a2, a3, a4, 1, x8_0);
}

uint64_t static Expression<A>.- infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB209830(a1, a2, a4, a6, 1, x8_0);
}

{
  return sub_1DB209940(a1, a2, a4, a6, 1, x8_0);
}

uint64_t static Expression<A>.* infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20919C(a1, a2, a3, a4, 5, x8_0);
}

{
  return sub_1DB209298(a1, a2, a3, a4, 5, x8_0);
}

uint64_t static Expression<A>.* infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB209830(a1, a2, a4, a6, 5, x8_0);
}

{
  return sub_1DB209940(a1, a2, a4, a6, 5, x8_0);
}

uint64_t static Expression<A>./ infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20919C(a1, a2, a3, a4, 6, x8_0);
}

{
  return sub_1DB209298(a1, a2, a3, a4, 6, x8_0);
}

uint64_t sub_1DB20919C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v8 = a7;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v15 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v20 = type metadata accessor for Expression(0, a4, a3, a4);
  v19[0] = v12;
  v19[1] = v11;
  WitnessTable = swift_getWitnessTable();
  v19[2] = v13;
  v18[3] = v20;
  v18[4] = WitnessTable;
  v18[0] = v15;
  v18[1] = v14;
  v18[2] = v16;

  sub_1DB2883C4(v19, v18, 1, v8, a4, x8_0);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1DB209298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v8 = a7;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v21[3] = type metadata accessor for Expression(0, a4, a3, a4);
  v21[0] = v11;
  v21[1] = v10;
  v21[4] = swift_getWitnessTable();
  v21[2] = v12;
  v16 = sub_1DB2BB364();
  v20[3] = type metadata accessor for Expression(0, v16, v17, v18);
  v20[0] = v14;
  v20[1] = v13;
  v20[4] = swift_getWitnessTable();
  v20[2] = v15;

  sub_1DB2883C4(v21, v20, 1, v8, v16, x8_0);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DB2093C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, char a7@<W6>, uint64_t *x8_0@<X8>)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = sub_1DB2BB364();
  v24[3] = type metadata accessor for Expression(0, v16, v17, v18);
  v24[0] = v11;
  v24[1] = v10;
  v24[4] = swift_getWitnessTable();
  v24[2] = v12;
  v23[3] = type metadata accessor for Expression(0, a4, v19, v20);
  v23[0] = v13;
  v23[1] = v14;
  v23[4] = swift_getWitnessTable();
  v23[2] = v15;

  sub_1DB2883C4(v24, v23, 1, a7, v16, x8_0);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DB2094E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v8 = a7;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v16 = sub_1DB2BB364();
  v22 = type metadata accessor for Expression(0, v16, v17, v18);
  v21[0] = v11;
  v21[1] = v10;
  WitnessTable = swift_getWitnessTable();
  v21[2] = v12;
  v20[3] = v22;
  v20[4] = WitnessTable;
  v20[0] = v14;
  v20[1] = v13;
  v20[2] = v15;

  sub_1DB2883C4(v21, v20, 1, v8, v16, x8_0);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DB2095F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v8 = a7;
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v20[3] = type metadata accessor for Expression(0, a4, a3, a4);
  v20[0] = v14;
  v20[1] = v13;
  v20[4] = swift_getWitnessTable();
  v20[2] = v15;
  v16 = *(a6 + 8);
  v19[3] = a4;
  v19[4] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);

  sub_1DB2883C4(v20, v19, 1, v8, a4, x8_0);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1DB209704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v8 = a7;
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = sub_1DB2BB364();
  v23[3] = type metadata accessor for Expression(0, v16, v17, v18);
  v23[0] = v14;
  v23[1] = v13;
  v23[4] = swift_getWitnessTable();
  v23[2] = v15;
  v19 = *(a6 + 8);
  v22[3] = a4;
  v22[4] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);

  sub_1DB2883C4(v23, v22, 1, v8, v16, x8_0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t static Expression<A>./ infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB209830(a1, a2, a4, a6, 6, x8_0);
}

{
  return sub_1DB209940(a1, a2, a4, a6, 6, x8_0);
}

uint64_t sub_1DB209830@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v8 = a7;
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = *(a6 + 8);
  v21[3] = a4;
  v21[4] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v20[3] = type metadata accessor for Expression(0, a4, v17, v18);
  v20[0] = v13;
  v20[1] = v12;
  v20[4] = swift_getWitnessTable();
  v20[2] = v14;

  sub_1DB2883C4(v21, v20, 1, v8, a4, x8_0);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DB209940@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v8 = a7;
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = *(a6 + 8);
  v22[3] = a4;
  v22[4] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v17 = sub_1DB2BB364();
  v21[3] = type metadata accessor for Expression(0, v17, v18, v19);
  v21[0] = v13;
  v21[1] = v12;
  v21[4] = swift_getWitnessTable();
  v21[2] = v14;

  sub_1DB2883C4(v22, v21, 1, v8, v17, x8_0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t static Expression<A>.- prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10[3] = type metadata accessor for Expression(0, a3, a3, x3_0);
  v10[0] = v7;
  v10[1] = v6;
  v10[4] = swift_getWitnessTable();
  v10[2] = v8;

  sub_1DB288444(v10, 1, a4);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.- prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, void *x8_0@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = sub_1DB2BB364();
  v12[3] = type metadata accessor for Expression(0, v8, v9, v10);
  v12[0] = v6;
  v12[1] = v5;
  v12[4] = swift_getWitnessTable();
  v12[2] = v7;

  sub_1DB288444(v12, 1, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t static Expression<A>.% infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.% infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.% infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.<< infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.<< infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.<< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.>> infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.>> infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.>> infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.& infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.| infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.| infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.| infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.^ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v20 = *a1;
  v3 = v20;
  *&v21 = v4;
  *(&v21 + 1) = v5;
  v24 = v6;
  *&v25 = v7;
  *(&v25 + 1) = v8;
  static Expression<A>.& infix(_:_:)(&v20, &v24, &v26);
  v9 = v26;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v10 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v20 = v9;
  v21 = v27;
  v23 = v10;
  v24 = 126;
  *&v25 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v11 = __swift_project_boxed_opaque_existential_1(&v20, v22);
  v12 = v20;
  v13 = v21;

  MEMORY[0x1E1283490](v12, v13);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v15 = v24;
  v14 = v25;
  v16 = v11[2];

  __swift_destroy_boxed_opaque_existential_1(&v20);
  v20 = v15;
  *&v21 = v14;
  *(&v21 + 1) = v16;
  v24 = v3;
  *&v25 = v4;
  *(&v25 + 1) = v5;
  v19[0] = v6;
  v19[1] = v7;
  v19[2] = v8;
  static Expression<A>.| infix(_:_:)(&v24, v19, &v26);
  v24 = v26;
  v25 = v27;
  static Expression<A>.& infix(_:_:)(&v20, &v24, a3);
}

{
  return sub_1DB20D5E8(a1, a2, static Expression<A>.& infix(_:_:), static Expression<A>.| infix(_:_:), a3);
}

{
  return sub_1DB20D5E8(a1, a2, static Expression<A>.& infix(_:_:), static Expression<A>.| infix(_:_:), a3);
}

{
  return sub_1DB20D5E8(a1, a2, static Expression<A>.& infix(_:_:), static Expression<A>.| infix(_:_:), a3);
}

uint64_t static Expression<A>.~ prefix(_:)(uint64_t *a1)
{
  return sub_1DB20D508(a1, &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, sub_1DB203564);
}

{
  return sub_1DB20D508(a1, &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, sub_1DB203564);
}

uint64_t sub_1DB20D508(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(void *, uint64_t, unint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13[0] = v10;
  v13[1] = v9;
  v13[4] = sub_1DB21132C(a4, a2, a3);
  v13[2] = v11;

  a5(v13, 126, 0xE100000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DB20D5E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *)@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t *, void *)@<X3>, uint64_t *a5@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v23 = *a1;
  v5 = v23;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v27 = v9;
  *&v28 = v8;
  *(&v28 + 1) = v10;
  a3(&v29, &v23, &v27);
  v11 = v29;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v23 = v11;
  v24 = v30;
  v26 = v12;
  v27 = 126;
  *&v28 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v13 = __swift_project_boxed_opaque_existential_1(&v23, v25);
  v14 = v23;
  v15 = v24;

  MEMORY[0x1E1283490](v14, v15);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v17 = v27;
  v16 = v28;
  v18 = v13[2];

  __swift_destroy_boxed_opaque_existential_1(&v23);
  v23 = v17;
  *&v24 = v16;
  *(&v24 + 1) = v18;
  v27 = v5;
  *&v28 = v6;
  *(&v28 + 1) = v7;
  v22[0] = v9;
  v22[1] = v8;
  v22[2] = v10;
  a4(&v29, &v27, v22);
  v27 = v29;
  v28 = v30;
  static Expression<A>.& infix(_:_:)(&v23, &v27, a5);
}

uint64_t static Expression<A>.^ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v16 = *a1;
  v5 = v16;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  static Expression<A>.& infix(_:_:)(&v16, a2, &v20);
  v8 = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v19 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v16 = v8;
  v17 = v21;
  v14 = 126;
  *&v15 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v10 = v16;
  v11 = v17;

  MEMORY[0x1E1283490](v10, v11);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v12 = v9[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = 126;
  *&v17 = 0xE100000000000000;
  *(&v17 + 1) = v12;
  v14 = v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  static Expression<A>.| infix(_:_:)(&v14, a2, &v20);
  v14 = v20;
  v15 = v21;
  static Expression<A>.& infix(_:_:)(&v16, &v14, a3);
}

{
  v6 = a1[1];
  v7 = a1[2];
  v16 = *a1;
  v5 = v16;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  static Expression<A>.& infix(_:_:)(&v16, a2, &v20);
  v8 = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v19 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v16 = v8;
  v17 = v21;
  v14 = 126;
  *&v15 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v10 = v16;
  v11 = v17;

  MEMORY[0x1E1283490](v10, v11);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v12 = v9[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = 126;
  *&v17 = 0xE100000000000000;
  *(&v17 + 1) = v12;
  v14 = v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  static Expression<A>.| infix(_:_:)(&v14, a2, &v20);
  v14 = v20;
  v15 = v21;
  static Expression<A>.& infix(_:_:)(&v16, &v14, a3);
}

uint64_t static Expression<A>.^ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[1];
  v7 = a2[2];
  v16 = *a2;
  v5 = v16;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  static Expression<A>.& infix(_:_:)(a1, &v16, &v20);
  v8 = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v19 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v16 = v8;
  v17 = v21;
  v14 = 126;
  *&v15 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v10 = v16;
  v11 = v17;

  MEMORY[0x1E1283490](v10, v11);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v12 = v9[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = 126;
  *&v17 = 0xE100000000000000;
  *(&v17 + 1) = v12;
  v14 = v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  static Expression<A>.| infix(_:_:)(a1, &v14, &v20);
  v14 = v20;
  v15 = v21;
  static Expression<A>.& infix(_:_:)(&v16, &v14, a3);
}

{
  v6 = a2[1];
  v7 = a2[2];
  v16 = *a2;
  v5 = v16;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  static Expression<A>.& infix(_:_:)(a1, &v16, &v20);
  v8 = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v19 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v16 = v8;
  v17 = v21;
  v14 = 126;
  *&v15 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v10 = v16;
  v11 = v17;

  MEMORY[0x1E1283490](v10, v11);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v12 = v9[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = 126;
  *&v17 = 0xE100000000000000;
  *(&v17 + 1) = v12;
  v14 = v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  static Expression<A>.| infix(_:_:)(a1, &v14, &v20);
  v14 = v20;
  v15 = v21;
  static Expression<A>.& infix(_:_:)(&v16, &v14, a3);
}

uint64_t static Expression<A>.== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20EAB8(a1, a2, a3, a4, 61, 0xE100000000000000, x8_0);
}

{
  return sub_1DB20EC24(a1, a2, a3, a4, 61, 0xE100000000000000, x8_0);
}

uint64_t static Expression<A>.== infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a4, a6, 61, 0xE100000000000000, x8_0);
}

{
  return sub_1DB20E3A4(a1, a2, a4, a6, 61, 0xE100000000000000, x8_0, 21321, 0xE200000000000000);
}

uint64_t static Expression<A>.!= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20EAB8(a1, a2, a3, a4, 15649, 0xE200000000000000, x8_0);
}

{
  return sub_1DB20EC24(a1, a2, a3, a4, 15649, 0xE200000000000000, x8_0);
}

uint64_t sub_1DB20DF08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v38 = a7;
  v12 = sub_1DB2BB364();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v37 = *a1;
  v21 = a1[2];
  (*(v13 + 16))(v16, a2, v12);
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v45 = type metadata accessor for Expression(0, v12, v22, v23);
    WitnessTable = swift_getWitnessTable();
    v42 = v37;
    v43 = v20;
    v46 = WitnessTable;
    v44 = v21;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v41 = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DB2BCC40;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0;
    v39[0] = 63;
    v39[1] = 0xE100000000000000;
    v39[2] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v42, inited + 32);
    sub_1DB164980(v39, inited + 72);

    sub_1DB2B594C(inited, 1, a8, a9, v38);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    (*(v17 + 32))(v19, v16, a3);
    v45 = type metadata accessor for Expression(0, v12, v27, v28);
    v29 = swift_getWitnessTable();
    v42 = v37;
    v43 = v20;
    v46 = v29;
    v44 = v21;
    v30 = *(v34 + 8);
    v40 = a3;
    v41 = v30;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
    (*(v17 + 16))(boxed_opaque_existential_0, v19, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v42, v32 + 32);
    sub_1DB164980(v39, v32 + 72);

    sub_1DB2B594C(v32, 1, v35, v36, v38);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    (*(v17 + 8))(v19, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return __swift_destroy_boxed_opaque_existential_1(&v42);
}

uint64_t static Expression<A>.!= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a4, a6, 15649, 0xE200000000000000, x8_0);
}

{
  return sub_1DB20E3A4(a1, a2, a4, a6, 15649, 0xE200000000000000, x8_0, 0x544F4E205349, 0xE600000000000000);
}

uint64_t sub_1DB20E3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v35 = a5;
  v36 = a6;
  v39 = a7;
  v13 = sub_1DB2BB364();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2[1];
  v37 = *a2;
  v38 = v21;
  v22 = a2[2];
  (*(v14 + 16))(v17, a1, v13);
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v47 = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB2BCC40;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0;
    v45[0] = 63;
    v45[1] = 0xE100000000000000;
    v45[2] = v23;
    v43 = type metadata accessor for Expression(0, v13, v24, v25);
    WitnessTable = swift_getWitnessTable();
    v40 = v37;
    v41 = v38;
    v44 = WitnessTable;
    v42 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v45, inited + 32);
    sub_1DB164980(&v40, inited + 72);

    sub_1DB2B594C(inited, 1, a8, a9, v39);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    (*(v18 + 32))(v20, v17, a3);
    v28 = *(a4 + 8);
    v46 = a3;
    v47 = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
    (*(v18 + 16))(boxed_opaque_existential_0, v20, a3);
    v43 = type metadata accessor for Expression(0, v13, v30, v31);
    v32 = swift_getWitnessTable();
    v40 = v37;
    v41 = v38;
    v44 = v32;
    v42 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v45, v33 + 32);
    sub_1DB164980(&v40, v33 + 72);

    sub_1DB2B594C(v33, 1, v35, v36, v39);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    (*(v18 + 8))(v20, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(&v40);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t static Expression<A>.=== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20EAB8(a1, a2, a3, a4, 21321, 0xE200000000000000, x8_0);
}

{
  return sub_1DB20EC24(a1, a2, a3, a4, 21321, 0xE200000000000000, x8_0);
}

uint64_t static Expression<A>.!== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20EAB8(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, x8_0);
}

{
  return sub_1DB20EC24(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, x8_0);
}

uint64_t static Expression<A>.> infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20EAB8(a1, a2, a3, a4, 62, 0xE100000000000000, x8_0);
}

{
  return sub_1DB20EC24(a1, a2, a3, a4, 62, 0xE100000000000000, x8_0);
}

uint64_t static Expression<A>.> infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a4, a6, 62, 0xE100000000000000, x8_0);
}

{
  return sub_1DB20F584(a1, a2, a4, a6, 62, 0xE100000000000000, x8_0);
}

uint64_t static Expression<A>.>= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20EAB8(a1, a2, a3, a4, 15678, 0xE200000000000000, x8_0);
}

{
  return sub_1DB20EC24(a1, a2, a3, a4, 15678, 0xE200000000000000, x8_0);
}

uint64_t static Expression<A>.>= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a4, a6, 15678, 0xE200000000000000, x8_0);
}

{
  return sub_1DB20F584(a1, a2, a4, a6, 15678, 0xE200000000000000, x8_0);
}

uint64_t static Expression<A>.< infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20EAB8(a1, a2, a3, a4, 60, 0xE100000000000000, x8_0);
}

{
  return sub_1DB20EC24(a1, a2, a3, a4, 60, 0xE100000000000000, x8_0);
}

uint64_t static Expression<A>.< infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a4, a6, 60, 0xE100000000000000, x8_0);
}

{
  return sub_1DB20F584(a1, a2, a4, a6, 60, 0xE100000000000000, x8_0);
}

uint64_t static Expression<A>.<= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20EAB8(a1, a2, a3, a4, 15676, 0xE200000000000000, x8_0);
}

{
  return sub_1DB20EC24(a1, a2, a3, a4, 15676, 0xE200000000000000, x8_0);
}

uint64_t sub_1DB20EAB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v16 = *a2;
  v15 = a2[1];
  v17 = a2[2];
  v22 = type metadata accessor for Expression(0, a4, a3, a4);
  v21[0] = v13;
  v21[1] = v12;
  WitnessTable = swift_getWitnessTable();
  v21[2] = v14;
  v20[3] = v22;
  v20[4] = WitnessTable;
  v20[0] = v16;
  v20[1] = v15;
  v20[2] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v21, inited + 32);
  sub_1DB164980(v20, inited + 72);

  sub_1DB2B57D4(inited, 1, a7, a8, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DB20EC24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v24[3] = type metadata accessor for Expression(0, a4, a3, a4);
  v24[0] = v12;
  v24[1] = v11;
  v24[4] = swift_getWitnessTable();
  v24[2] = v13;
  v17 = sub_1DB2BB364();
  v23[3] = type metadata accessor for Expression(0, v17, v18, v19);
  v23[0] = v14;
  v23[1] = v15;
  v23[4] = swift_getWitnessTable();
  v23[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v24, inited + 32);
  sub_1DB164980(v23, inited + 72);

  sub_1DB2B594C(inited, 1, a7, a8, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DB20EDBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = sub_1DB2BB364();
  v27[3] = type metadata accessor for Expression(0, v18, v19, v20);
  v27[0] = v13;
  v27[1] = v12;
  v27[4] = swift_getWitnessTable();
  v27[2] = v14;
  v26[3] = type metadata accessor for Expression(0, a4, v21, v22);
  v26[0] = v15;
  v26[1] = v16;
  v26[4] = swift_getWitnessTable();
  v26[2] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v27, inited + 32);
  sub_1DB164980(v26, inited + 72);

  sub_1DB2B594C(inited, 1, a7, a8, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_1DB20EF54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v16 = *a2;
  v15 = a2[1];
  v17 = a2[2];
  v18 = sub_1DB2BB364();
  v25 = type metadata accessor for Expression(0, v18, v19, v20);
  v24[0] = v13;
  v24[1] = v12;
  WitnessTable = swift_getWitnessTable();
  v24[2] = v14;
  v23[3] = v25;
  v23[4] = WitnessTable;
  v23[0] = v16;
  v23[1] = v15;
  v23[2] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v24, inited + 32);
  sub_1DB164980(v23, inited + 72);

  sub_1DB2B594C(inited, 1, a7, a8, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DB20F0CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>)
{
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v23[3] = type metadata accessor for Expression(0, a4, a3, a4);
  v23[0] = v16;
  v23[1] = v15;
  v23[4] = swift_getWitnessTable();
  v23[2] = v17;
  v18 = *(a6 + 8);
  v22[3] = a4;
  v22[4] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v23, inited + 32);
  sub_1DB164980(v22, inited + 72);

  sub_1DB2B57D4(inited, 1, a7, a8, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1DB20F25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>)
{
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = sub_1DB2BB364();
  v26[3] = type metadata accessor for Expression(0, v18, v19, v20);
  v26[0] = v16;
  v26[1] = v15;
  v26[4] = swift_getWitnessTable();
  v26[2] = v17;
  v21 = *(a6 + 8);
  v25[3] = a4;
  v25[4] = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v26, inited + 32);
  sub_1DB164980(v25, inited + 72);

  sub_1DB2B594C(inited, 1, a7, a8, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v25);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t static Expression<A>.<= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a4, a6, 15676, 0xE200000000000000, x8_0);
}

{
  return sub_1DB20F584(a1, a2, a4, a6, 15676, 0xE200000000000000, x8_0);
}

uint64_t sub_1DB20F3F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>)
{
  v15 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v17 = *(a6 + 8);
  v24[3] = a4;
  v24[4] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v23[3] = type metadata accessor for Expression(0, a4, v19, v20);
  v23[0] = v15;
  v23[1] = v14;
  v23[4] = swift_getWitnessTable();
  v23[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v24, inited + 32);
  sub_1DB164980(v23, inited + 72);

  sub_1DB2B57D4(inited, 1, a7, a8, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DB20F584@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>)
{
  v15 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v17 = *(a6 + 8);
  v25[3] = a4;
  v25[4] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v19 = sub_1DB2BB364();
  v24[3] = type metadata accessor for Expression(0, v19, v20, v21);
  v24[0] = v15;
  v24[1] = v14;
  v24[4] = swift_getWitnessTable();
  v24[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v25, inited + 32);
  sub_1DB164980(v24, inited + 72);

  sub_1DB2B594C(inited, 1, a7, a8, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v24);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1DB20F720(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1DB1384B0((v8 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
      v10 = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
      *&v12 = v5;
      *(&v12 + 1) = v6;
      v15 = v10;
      v13 = v7;
      *(v2 + 16) = v9 + 1;
      sub_1DB1355D0(&v12, v2 + 40 * v9 + 32);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DB20F850(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1DB138530(0, v1, 0);
    v2 = v12;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DB138530((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t static Expression<A>.&& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B57D4(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.&& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB2109DC(a1, a2, 4476481, 0xE300000000000000, a3);
}

{
  return sub_1DB20FF94(a1, a2, 4476481, 0xE300000000000000, a3);
}

uint64_t sub_1DB20FF94@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v15[0] = v10;
  v15[1] = v9;
  v15[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v15[2] = v11;
  v14[3] = MEMORY[0x1E69E6370];
  v14[4] = &protocol witness table for Bool;
  LOBYTE(v14[0]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B594C(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t static Expression<A>.&& infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB210B50(a1, a2, 4476481, 0xE300000000000000, a3);
}

{
  return sub_1DB210110(a1, a2, 4476481, 0xE300000000000000, a3);
}

uint64_t sub_1DB210110@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v14[3] = MEMORY[0x1E69E6370];
  v14[4] = &protocol witness table for Bool;
  LOBYTE(v14[0]) = a1;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v9;
  v13[1] = v8;
  v13[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v14, inited + 32);
  sub_1DB164980(v13, inited + 72);

  sub_1DB2B594C(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DB210274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  *(inited + 64) = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  *(inited + 48) = v11;

  v13 = sub_1DB20F720(a2);
  sub_1DB1414E8(v13);
  sub_1DB2B57D4(inited, 1, a3, a4, a5);
}

uint64_t sub_1DB210390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1DB20F720(a1);
  sub_1DB2B57D4(v7, 1, a2, a3, a4);
}

uint64_t static Expression<A>.|| infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B57D4(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DB2109DC@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v15[0] = v10;
  v15[1] = v9;
  v15[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v15[2] = v11;
  v14[3] = MEMORY[0x1E69E6370];
  v14[4] = &protocol witness table for Bool;
  LOBYTE(v14[0]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B57D4(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DB210B50@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v14[3] = MEMORY[0x1E69E6370];
  v14[4] = &protocol witness table for Bool;
  LOBYTE(v14[0]) = a1;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v9;
  v13[1] = v8;
  v13[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v14, inited + 32);
  sub_1DB164980(v13, inited + 72);

  sub_1DB2B57D4(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t static Expression<A>.! prefix(_:)(uint64_t *a1)
{
  return sub_1DB210D14(a1, &qword_1ECC28178, &unk_1DB2CE7D0, &qword_1EE13EF60, sub_1DB203564);
}

{
  return sub_1DB210D14(a1, &qword_1ECC27E20, &qword_1DB2C3AF0, &qword_1EE13F5C0, sub_1DB203564);
}

uint64_t sub_1DB210D14(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(void *, uint64_t, unint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13[0] = v10;
  v13[1] = v9;
  v13[4] = sub_1DB21132C(a4, a2, a3);
  v13[2] = v11;

  a5(v13, 542396238, 0xE400000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void *sub_1DB210DD0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v16 = a1[2];

  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4800);
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v11 = *(a3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  v11(a2, a3);
  sub_1DB2BAD34();
  *(inited + 96) = AssociatedTypeWitness;
  *(inited + 104) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_0((inited + 72));
  v11(a2, a3);
  result = sub_1DB141510(inited);
  *a5 = v8;
  a5[1] = v15;
  a5[2] = v16;
  return result;
}

void *sub_1DB210F94@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](0x4E41203F203D3E20, 0xEA00000000002044);
  MEMORY[0x1E1283490](v7, v8);
  MEMORY[0x1E1283490](1059077152, 0xE400000000000000);
  v17 = v8;
  v18 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  v11 = *(a3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  v11(a2, a3);
  v20 = v9;

  sub_1DB141510(inited);

  sub_1DB141510(v14);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1DB2BCC40;
  sub_1DB2BB244();
  *(v15 + 56) = AssociatedTypeWitness;
  *(v15 + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_0((v15 + 32));
  v11(a2, a3);
  result = sub_1DB141510(v15);
  *a5 = v18;
  a5[1] = v17;
  a5[2] = v20;
  return result;
}

void *sub_1DB2111E4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  v11 = a1[2];
  v15 = *a1;
  v16 = a1[1];

  MEMORY[0x1E1283490](a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  v13 = *(a3 + 56);
  *(inited + 56) = swift_getAssociatedTypeWitness();
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  v13(a2, a3);
  result = sub_1DB141510(inited);
  *a6 = v15;
  a6[1] = v16;
  a6[2] = v11;
  return result;
}

uint64_t sub_1DB21132C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DB211394(uint64_t a1, unsigned __int8 a2)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB2114B8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7463656C6573;
    v6 = 1852403562;
    if (a1 != 2)
    {
      v6 = 0x737265746C6966;
    }

    if (a1)
    {
      v5 = 1836020326;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74696D696CLL;
    v2 = 0x6E6F696E75;
    if (a1 != 7)
    {
      v2 = 1752459639;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x70756F7267;
    if (a1 != 4)
    {
      v3 = 0x726564726FLL;
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

uint64_t sub_1DB2115B4()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB211394(v3, v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB211604(uint64_t a1)
{
  v2 = *v1;
  sub_1DB2BBA04();
  sub_1DB211394(v4, v2);
  return sub_1DB2BBA54();
}

unint64_t sub_1DB211648@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB2170F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DB211678@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB2114B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DB2116C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB2170F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB2116E8(uint64_t a1)
{
  v2 = sub_1DB211D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB211724(uint64_t a1)
{
  v2 = sub_1DB211D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28220, &qword_1DB2C5160);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  v45 = *(v1 + 2);
  v46 = v9;
  v11 = *(v1 + 5);
  v43 = *(v1 + 6);
  v44 = v10;
  v12 = *(v1 + 7);
  v13 = *(v1 + 8);
  v47 = v11;
  v48 = v12;
  v14 = *(v1 + 9);
  v41 = *(v1 + 10);
  v42 = v13;
  v15 = *(v1 + 11);
  v16 = *(v1 + 12);
  v39 = v14;
  v40 = v15;
  v17 = *(v1 + 13);
  v37 = *(v1 + 14);
  v38 = v17;
  v19 = *(v1 + 15);
  v18 = *(v1 + 16);
  v35 = v16;
  v36 = v19;
  v34 = v18;
  v20 = *(v1 + 18);
  v33 = *(v1 + 17);
  v32 = v20;
  v56 = v1[152];
  v31 = v1[153];
  v30 = *(v1 + 20);
  HIDWORD(v29) = v1[168];
  v21 = *(v1 + 22);
  v22 = a1[3];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1DB211D0C();

  sub_1DB2BBA94();
  LOBYTE(v50) = v7;
  v51 = v8;
  v57 = 0;
  sub_1DB211D60();
  v26 = v49;
  sub_1DB2BB8A4();
  if (!v26)
  {
    v28 = v42;

    v50 = v45;
    v51 = v46;
    v52 = v44;
    v53 = v47;
    v54 = v43;
    v55 = v48;
    v57 = 1;
    sub_1DB20118C();

    sub_1DB2BB8A4();

    v50 = v28;
    v57 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28228, &qword_1DB2C5168);
    sub_1DB211DB4();
    sub_1DB2BB8A4();
    v50 = v39;
    v51 = v41;
    v52 = v40;
    v57 = 3;
    sub_1DB1757B0(v39, v41, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB1688F0(&qword_1EE13F5B8, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    sub_1DB2BB854();
    sub_1DB1718E4(v50, v51, v52);
    v50 = v35;
    v51 = v38;
    v52 = v37;
    v53 = v36;
    v57 = 4;
    sub_1DB211E8C(v35, v38, v37, v36);
    sub_1DB211EE4();
    sub_1DB2BB854();
    sub_1DB1755F8(v50, v51, v52, v53);
    v50 = v34;
    v57 = 5;
    sub_1DB2018B0();

    sub_1DB2BB854();

    v50 = v33;
    v51 = v32;
    LOBYTE(v52) = v56;
    BYTE1(v52) = v31;
    v57 = 6;
    sub_1DB201904();
    sub_1DB2BB854();
    v50 = v30;
    v57 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28230, &qword_1DB2C5170);
    sub_1DB211F38();
    sub_1DB2BB8A4();
    LOBYTE(v50) = BYTE4(v29);
    v51 = v21;
    v57 = 8;
    sub_1DB212010();

    sub_1DB2BB8A4();
  }

  return (*(v4 + 8))(v6, v25);
}

unint64_t sub_1DB211D0C()
{
  result = qword_1EE13F500;
  if (!qword_1EE13F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F500);
  }

  return result;
}

unint64_t sub_1DB211D60()
{
  result = qword_1EE13EBE0;
  if (!qword_1EE13EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBE0);
  }

  return result;
}

unint64_t sub_1DB211DB4()
{
  result = qword_1EE13E668;
  if (!qword_1EE13E668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28228, &qword_1DB2C5168);
    sub_1DB211E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E668);
  }

  return result;
}

unint64_t sub_1DB211E38()
{
  result = qword_1EE13EC30;
  if (!qword_1EE13EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC30);
  }

  return result;
}

void sub_1DB211E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    sub_1DB1757B0(a2, a3, a4);
  }
}

unint64_t sub_1DB211EE4()
{
  result = qword_1EE13EC20;
  if (!qword_1EE13EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC20);
  }

  return result;
}

unint64_t sub_1DB211F38()
{
  result = qword_1EE13E658;
  if (!qword_1EE13E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28230, &qword_1DB2C5170);
    sub_1DB211FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E658);
  }

  return result;
}

unint64_t sub_1DB211FBC()
{
  result = qword_1EE13EBF0;
  if (!qword_1EE13EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBF0);
  }

  return result;
}

unint64_t sub_1DB212010()
{
  result = qword_1EE13EC80;
  if (!qword_1EE13EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC80);
  }

  return result;
}

uint64_t QueryClauses.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28238, &qword_1DB2C5178);
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB2BCC40;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v7 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 32) = 42;
  *(v7 + 40) = 0xE100000000000000;
  *(v7 + 48) = v8;
  v93 = 1;
  v9 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB211D0C();
  v10 = v6;
  sub_1DB2BBA84();
  if (v2)
  {
    v51 = 0;
    v52 = 0uLL;
    v53 = 0uLL;
    v95 = 0;
    v54 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1(v50);

    sub_1DB1718E4(v54, *(&v54 + 1), v95);
    sub_1DB1755F8(v52, *(&v52 + 1), v53, *(&v53 + 1));
  }

  else
  {
    v47 = v4;
    LOBYTE(v55) = 0;
    sub_1DB2160C0();
    v11 = v49;
    sub_1DB2BB7B4();
    v12 = v66;
    v13 = *(&v66 + 1);

    LOBYTE(v55) = 1;
    sub_1DB201510();
    sub_1DB2BB7B4();
    v41 = v12;
    v42 = v67;
    v43 = v66;
    v45 = *(&v67 + 1);
    v46 = *(&v66 + 1);
    v14 = v68;
    v44 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28228, &qword_1DB2C5168);
    LOBYTE(v55) = 2;
    sub_1DB216114();
    sub_1DB2BB7B4();
    v39 = v14;
    v40 = v13;
    v15 = v43;
    v16 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    LOBYTE(v55) = 3;
    sub_1DB1688F0(&qword_1EE13EF58, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    sub_1DB2BB764();
    v54 = v66;
    v95 = v67;
    sub_1DB1718E4(0, 0, 0);
    LOBYTE(v55) = 4;
    sub_1DB2161EC();
    sub_1DB2BB764();
    v38 = v16;
    v52 = v66;
    v53 = v67;
    sub_1DB1755F8(0, 0, 0, 0);
    LOBYTE(v55) = 5;
    sub_1DB201958();
    sub_1DB2BB764();
    v51 = v66;

    LOBYTE(v55) = 6;
    sub_1DB2019AC();
    sub_1DB2BB764();
    v36 = *(&v66 + 1);
    v37 = v66;
    HIDWORD(v35) = v67;
    v93 = BYTE1(v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28230, &qword_1DB2C5170);
    LOBYTE(v55) = 7;
    sub_1DB216240();
    sub_1DB2BB7B4();
    v17 = v66;
    v88 = 8;
    sub_1DB216318();
    sub_1DB2BB7B4();
    (*(v47 + 8))(v10, v11);
    LOBYTE(v14) = v89;
    v18 = v90;

    v19 = v41;
    LOBYTE(v55) = v41;
    *(&v55 + 1) = v40;
    *&v56 = v15;
    v20 = v46;
    *(&v56 + 1) = v46;
    *&v57 = v42;
    v21 = v44;
    *(&v57 + 1) = v45;
    *&v58 = v39;
    *(&v58 + 1) = v44;
    *v59 = v38;
    *&v59[8] = v54;
    *&v59[24] = v95;
    v60 = v52;
    v61 = v53;
    v22 = v51;
    *&v62 = v51;
    *(&v62 + 1) = v37;
    *&v63 = v36;
    BYTE8(v63) = BYTE4(v35);
    LODWORD(v49) = v93;
    BYTE9(v63) = v93;
    *&v64 = v17;
    BYTE8(v64) = v14;
    v23 = v18;
    v47 = v18;
    v65 = v18;
    v24 = *v59;
    v25 = *&v59[16];
    v26 = v53;
    v27 = v48;
    *(v48 + 96) = v52;
    *(v27 + 112) = v26;
    *(v27 + 64) = v24;
    *(v27 + 80) = v25;
    v28 = v62;
    v29 = v63;
    v30 = v64;
    *(v27 + 176) = v23;
    *(v27 + 144) = v29;
    *(v27 + 160) = v30;
    *(v27 + 128) = v28;
    v31 = v55;
    v32 = v56;
    v33 = v58;
    *(v27 + 32) = v57;
    *(v27 + 48) = v33;
    *v27 = v31;
    *(v27 + 16) = v32;
    sub_1DB1754EC(&v55, &v66);
    __swift_destroy_boxed_opaque_existential_1(v50);
    LOBYTE(v66) = v19;
    *(&v66 + 1) = v94[0];
    DWORD1(v66) = *(v94 + 3);
    *(&v66 + 1) = v40;
    *&v67 = v43;
    *(&v67 + 1) = v20;
    v68 = v42;
    v69 = v45;
    v70 = v39;
    v71 = v21;
    v72 = v38;
    v73 = v54;
    v74 = v95;
    v75 = v52;
    v76 = v53;
    v77 = v22;
    v78 = v37;
    v79 = v36;
    v80 = BYTE4(v35);
    v81 = v49;
    v83 = v92;
    v82 = *&v91[7];
    v84 = v17;
    v85 = v14;
    *&v86[3] = *&v91[3];
    *v86 = *v91;
    v87 = v47;
    return sub_1DB17181C(&v66);
  }
}

uint64_t sub_1DB212984(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6D756C6F63;
  }

  else
  {
    v3 = 0x74636E6974736964;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6D756C6F63;
  }

  else
  {
    v5 = 0x74636E6974736964;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB212A2C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB212AB0(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB212B20(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB212BAC(uint64_t *a1@<X8>)
{
  v2 = 0x74636E6974736964;
  if (*v1)
  {
    v2 = 0x736E6D756C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB212BEC()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 0x74636E6974736964;
  }
}

uint64_t sub_1DB212C34(uint64_t a1)
{
  v2 = sub_1DB21636C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB212C70(uint64_t a1)
{
  v2 = sub_1DB21636C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.SelectClause.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28240, &qword_1DB2C5180);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v21 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB21636C();
  sub_1DB2BBA94();
  LOBYTE(v22[0]) = 0;
  sub_1DB2BB874();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v20 = v5;
  v9 = v21;
  v10 = *(v21 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v19 = v4;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DB1385A0(0, v10, 0);
    v11 = v24;
    v12 = v9 + 32;
    do
    {
      sub_1DB164980(v12, v22);
      v24 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DB1385A0((v13 > 1), v14 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + 40 * v14;
      v16 = v22[0];
      v17 = v22[1];
      *(v15 + 64) = v23;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
      v12 += 40;
      --v10;
    }

    while (v10);
    v4 = v19;
  }

  *&v22[0] = v11;
  LOBYTE(v24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  sub_1DB2163C0();
  sub_1DB2BB8A4();
  v18 = v20;

  return (*(v18 + 8))(v7, v4);
}

uint64_t QueryClauses.SelectClause.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28248, &qword_1DB2C5188);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB21636C();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v32[0]) = 0;
    v9 = v8;
    v10 = sub_1DB2BB784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    LOBYTE(v32[0]) = 1;
    sub_1DB216444();
    sub_1DB2BB7B4();
    v30 = v9;
    v12 = v10 & 1;
    v13 = v36;
    v14 = *(v36 + 16);
    if (v14)
    {
      v26 = v12;
      v27 = v6;
      v28 = v5;
      v29 = a2;
      v35 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v14, 0);
      v15 = v35;
      v25[1] = v13;
      v16 = v13 + 32;
      do
      {
        sub_1DB164C68(v16, v31);
        sub_1DB164980(v31, v32);
        sub_1DB164BE4(v31);
        v35 = v15;
        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1DB1384B0((v17 > 1), v18 + 1, 1);
        }

        v19 = v33;
        v20 = v34;
        v21 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
        MEMORY[0x1EEE9AC00](v21);
        v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v23);
        sub_1DB16412C(v18, v23, &v35, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v15 = v35;
        v16 += 40;
        --v14;
      }

      while (v14);
      (*(v27 + 8))(v30, v28);

      a2 = v29;
      LOBYTE(v12) = v26;
    }

    else
    {

      (*(v6 + 8))(v30, v5);
      v15 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v12;
    *(a2 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2132D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7972657571;
  if (v2 != 1)
  {
    v4 = 0x6F697469646E6F63;
    v3 = 0xE90000000000006ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7972657571;
  if (*a2 != 1)
  {
    v8 = 0x6F697469646E6F63;
    v7 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB2133D0()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB21346C(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB2134F4(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

unint64_t sub_1DB21358C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB217144(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB2135BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7972657571;
  if (v2 != 1)
  {
    v5 = 0x6F697469646E6F63;
    v4 = 0xE90000000000006ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DB213614()
{
  v1 = 0x7972657571;
  if (*v0 != 1)
  {
    v1 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_1DB213668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB217144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB213690(uint64_t a1)
{
  v2 = sub_1DB2164C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2136CC(uint64_t a1)
{
  v2 = sub_1DB2164C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.JoinClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28250, &qword_1DB2C5190);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2164C8();
  sub_1DB2BBA94();
  v10[0] = *v3;
  v11 = 0;
  sub_1DB21651C();
  sub_1DB2BB8A4();
  if (!v2)
  {
    sub_1DB164980((v3 + 8), v10);
    v11 = 1;
    sub_1DB201468();
    sub_1DB2BB8A4();
    sub_1DB2014BC(v10);
    sub_1DB164980((v3 + 48), v10);
    v11 = 2;
    sub_1DB164B90();
    sub_1DB2BB8A4();
    sub_1DB164BE4(v10);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t QueryClauses.JoinClause.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28268, &qword_1DB2C5198);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2164C8();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_1DB216570();
  sub_1DB2BB7B4();
  v11[0] = v10[0];
  v14 = 1;
  sub_1DB201798();
  sub_1DB2BB7B4();
  sub_1DB1355D0(v10, &v12);
  v14 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  sub_1DB1355D0(v10, &v13);
  sub_1DB175548(v11, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB1755A4(v11);
}

uint64_t sub_1DB213B7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69766168;
  }

  else
  {
    v3 = 31074;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69766168;
  }

  else
  {
    v5 = 31074;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB213C14()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB213C88(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB213CE8(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB213D64(uint64_t *a1@<X8>)
{
  v2 = 31074;
  if (*v1)
  {
    v2 = 0x676E69766168;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB213D94()
{
  if (*v0)
  {
    return 0x676E69766168;
  }

  else
  {
    return 31074;
  }
}

uint64_t sub_1DB213DCC(uint64_t a1)
{
  v2 = sub_1DB2165C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB213E08(uint64_t a1)
{
  v2 = sub_1DB2165C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.GroupClause.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28278, &qword_1DB2C51A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[3];
  v22 = v1[2];
  v23 = v7;
  v21 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2165C4();
  sub_1DB2BBA94();
  v10 = *(v8 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v20 = v4;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1DB1385A0(0, v10, 0);
    v11 = v28;
    v12 = v8 + 32;
    do
    {
      sub_1DB164980(v12, &v25);
      v28 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DB1385A0((v13 > 1), v14 + 1, 1);
        v11 = v28;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + 40 * v14;
      v16 = v25;
      v17 = v26;
      *(v15 + 64) = v27;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
      v12 += 40;
      --v10;
    }

    while (v10);
    v4 = v20;
  }

  *&v25 = v11;
  LOBYTE(v28) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  sub_1DB2163C0();
  v18 = v24;
  sub_1DB2BB8A4();

  if (!v18)
  {
    *&v25 = v23;
    *(&v25 + 1) = v22;
    *&v26 = v21;
    LOBYTE(v28) = 1;
    sub_1DB1757B0(v23, v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB1688F0(&qword_1EE13F5B8, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    sub_1DB2BB854();
    sub_1DB1718E4(v25, *(&v25 + 1), v26);
  }

  return (*(v4 + 8))(v6, v3);
}

void QueryClauses.GroupClause.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28288, &qword_1DB2C51A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2165C4();
  sub_1DB2BBA84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    LOBYTE(v31[0]) = 0;
    sub_1DB216444();
    sub_1DB2BB7B4();
    v28 = v8;
    v29 = v6;
    v9 = v35;
    v10 = *(v35 + 16);
    if (v10)
    {
      v26 = v5;
      v27 = a2;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v10, 0);
      v11 = v34;
      v25 = v9;
      v12 = v9 + 32;
      do
      {
        sub_1DB164C68(v12, v30);
        sub_1DB164980(v30, v31);
        sub_1DB164BE4(v30);
        v34 = v11;
        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1DB1384B0((v13 > 1), v14 + 1, 1);
        }

        v15 = v32;
        v16 = v33;
        v17 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        MEMORY[0x1EEE9AC00](v17);
        v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_1DB16412C(v14, v19, &v34, v15, v16);
        __swift_destroy_boxed_opaque_existential_1(v31);
        v11 = v34;
        v12 += 40;
        --v10;
      }

      while (v10);

      v5 = v26;
      a2 = v27;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v30[0] = 1;
    sub_1DB1688F0(&qword_1EE13EF58, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    v21 = v28;
    sub_1DB2BB764();
    (*(v29 + 8))(v21, v5);
    v22 = v31[0];
    v23 = v31[1];
    v24 = v31[2];
    *a2 = v11;
    a2[1] = v22;
    a2[2] = v23;
    a2[3] = v24;

    sub_1DB1757B0(v22, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1DB1718E4(v22, v23, v24);
  }
}

uint64_t sub_1DB214538()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB21458C(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB2145D0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DB2BB6F4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DB214640@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DB2BB6F4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DB214698(uint64_t a1)
{
  v2 = sub_1DB216618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2146D4(uint64_t a1)
{
  v2 = sub_1DB216618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.OrderClause.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28290, &qword_1DB2C51B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB216618();
  sub_1DB2BBA94();
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v18[1] = v2;
    v19 = v4;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1DB1385A0(0, v9, 0);
    v10 = v22;
    v11 = v8 + 32;
    do
    {
      sub_1DB164980(v11, v20);
      v22 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DB1385A0((v12 > 1), v13 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v13 + 1;
      v14 = v10 + 40 * v13;
      v15 = v20[0];
      v16 = v20[1];
      *(v14 + 64) = v21;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      v11 += 40;
      --v9;
    }

    while (v9);
    v4 = v19;
  }

  *&v20[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  sub_1DB2163C0();
  sub_1DB2BB8A4();

  return (*(v5 + 8))(v7, v4);
}

uint64_t QueryClauses.OrderClause.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282A0, &qword_1DB2C51B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB216618();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    sub_1DB216444();
    sub_1DB2BB7B4();
    v9 = v32;
    v10 = *(v32 + 16);
    if (v10)
    {
      v23 = v8;
      v24 = v6;
      v25 = v5;
      v26 = a2;
      v31 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v10, 0);
      v11 = v31;
      v22 = v9;
      v12 = v9 + 32;
      do
      {
        sub_1DB164C68(v12, v27);
        sub_1DB164980(v27, v28);
        sub_1DB164BE4(v27);
        v31 = v11;
        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1DB1384B0((v13 > 1), v14 + 1, 1);
        }

        v15 = v29;
        v16 = v30;
        v17 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
        MEMORY[0x1EEE9AC00](v17);
        v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_1DB16412C(v14, v19, &v31, v15, v16);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v11 = v31;
        v12 += 40;
        --v10;
      }

      while (v10);
      (*(v24 + 8))(v23, v25);

      a2 = v26;
    }

    else
    {

      (*(v6 + 8))(v8, v5);
      v11 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB214C88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C626174;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C626174;
  }

  else
  {
    v5 = 7105633;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB214D24()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB214D9C(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB214E00(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB214E80@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB2BB6F4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1DB214EDC(uint64_t *a1@<X8>)
{
  v2 = 7105633;
  if (*v1)
  {
    v2 = 0x656C626174;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB214F10()
{
  if (*v0)
  {
    return 0x656C626174;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1DB214F4C@<X0>(char *a4@<X8>)
{
  v5 = sub_1DB2BB6F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1DB214FAC(uint64_t a1)
{
  v2 = sub_1DB21666C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB214FE8(uint64_t a1)
{
  v2 = sub_1DB21666C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.UnionClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282A8, &qword_1DB2C51C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB21666C();
  sub_1DB2BBA94();
  v11[0] = 0;
  sub_1DB2BB874();
  if (!v2)
  {
    sub_1DB164980(v3 + 8, v11);
    v10[7] = 1;
    sub_1DB201468();
    sub_1DB2BB8A4();
    sub_1DB2014BC(v11);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t QueryClauses.UnionClause.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282B8, &qword_1DB2C51C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB21666C();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v12) = 0;
    LOBYTE(v13[0]) = sub_1DB2BB784() & 1;
    v14 = 1;
    sub_1DB201798();
    sub_1DB2BB7B4();
    (*(v6 + 8))(v8, v5);
    sub_1DB1355D0(&v12, v13 + 8);
    v9 = v13[1];
    *a2 = v13[0];
    a2[1] = v9;
    a2[2] = v13[2];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2153C0()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB215474(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB215514(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

unint64_t sub_1DB2155C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB217190(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB2155F4(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7361696C61;
  v4 = 0xE400000000000000;
  v5 = 1953393000;
  if (*v1 != 2)
  {
    v5 = 0x7972657571;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x736E6D756C6F63;
    v2 = 0xE700000000000000;
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

uint64_t sub_1DB215664()
{
  v1 = 0x7361696C61;
  v2 = 1953393000;
  if (*v0 != 2)
  {
    v2 = 0x7972657571;
  }

  if (*v0)
  {
    v1 = 0x736E6D756C6F63;
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

unint64_t sub_1DB2156D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB217190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB2156F8(uint64_t a1)
{
  v2 = sub_1DB2166C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB215734(uint64_t a1)
{
  v2 = sub_1DB2166C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WithClauses.Clause.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282C0, &qword_1DB2C51D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2166C0();
  sub_1DB2BBA94();
  v10 = v4[9];
  v11 = v4[7];
  v69 = v4[8];
  v70 = v10;
  v12 = v4[9];
  v71 = v4[10];
  v13 = v4[5];
  v14 = v4[3];
  v65 = v4[4];
  v66 = v13;
  v15 = v4[5];
  v16 = v4[7];
  v67 = v4[6];
  v68 = v16;
  v17 = v4[1];
  v62[0] = *v4;
  v62[1] = v17;
  v18 = v4[3];
  v20 = *v4;
  v19 = v4[1];
  v63 = v4[2];
  v64 = v18;
  v58 = v69;
  v59 = v12;
  v60 = v4[10];
  v54 = v65;
  v55 = v15;
  v56 = v67;
  v57 = v11;
  v50 = v20;
  v51 = v19;
  v72 = *(v4 + 22);
  v61 = *(v4 + 22);
  v52 = v63;
  v53 = v14;
  v73 = 0;
  sub_1DB175954(v62, &v38);
  sub_1DB216714();
  sub_1DB2BB8A4();
  if (v2)
  {
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    sub_1DB1759B0(&v38);
  }

  else
  {
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    sub_1DB1759B0(&v38);
    v21 = *(v4 + 23);
    if (v21)
    {
      v34 = v9;
      v22 = *(v21 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (v22)
      {
        v31 = 0;
        v32 = v7;
        v33 = v6;
        v35 = MEMORY[0x1E69E7CC0];
        sub_1DB1385A0(0, v22, 0);
        v23 = v35;
        v24 = v21 + 32;
        do
        {
          sub_1DB164980(v24, v36);
          v35 = v23;
          v26 = *(v23 + 16);
          v25 = *(v23 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1DB1385A0((v25 > 1), v26 + 1, 1);
            v23 = v35;
          }

          *(v23 + 16) = v26 + 1;
          v27 = v23 + 40 * v26;
          v28 = v36[0];
          v29 = v36[1];
          *(v27 + 64) = v37;
          *(v27 + 32) = v28;
          *(v27 + 48) = v29;
          v24 += 40;
          --v22;
        }

        while (v22);
        v7 = v32;
        v6 = v33;
        v3 = v31;
      }

      v9 = v34;
    }

    else
    {
      v23 = 0;
    }

    *&v36[0] = v23;
    LOBYTE(v35) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    sub_1DB2163C0();
    sub_1DB2BB854();

    if (!v3)
    {
      LOBYTE(v36[0]) = *(v4 + 192);
      LOBYTE(v35) = 2;
      sub_1DB216768();
      sub_1DB2BB854();
      sub_1DB164980(v4 + 200, v36);
      LOBYTE(v35) = 3;
      sub_1DB201468();
      sub_1DB2BB8A4();
      sub_1DB2014BC(v36);
    }
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t WithClauses.Clause.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282D8, &qword_1DB2C51D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v72 = 2;
  v10 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DB2166C0();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v46 = 0;
  sub_1DB16889C();
  sub_1DB2BB7B4();
  v11 = v9;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  LOBYTE(v33) = 1;
  sub_1DB216444();
  sub_1DB2BB764();
  v13 = v45;
  v30 = v7;
  if (v45)
  {
    v29 = v6;
    v14 = *(v45 + 16);
    if (v14)
    {
      v26 = v11;
      v27 = a2;
      v28 = 0;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v14, 0);
      v15 = v32;
      v16 = v13 + 32;
      do
      {
        sub_1DB164C68(v16, v31);
        sub_1DB164980(v31, &v33);
        sub_1DB164BE4(v31);
        v32 = v15;
        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1DB1384B0((v17 > 1), v18 + 1, 1);
        }

        v19 = *(&v34 + 1);
        v20 = v35;
        v21 = __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
        MEMORY[0x1EEE9AC00](v21);
        v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v23);
        sub_1DB16412C(v18, v23, &v32, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        v15 = v32;
        v16 += 40;
        --v14;
      }

      while (v14);

      a2 = v27;
      v3 = v28;
      v6 = v29;
      v11 = v26;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
      v6 = v29;
    }
  }

  else
  {
    v15 = 0;
  }

  v71 = v15;
  v31[0] = 2;
  sub_1DB2167BC();
  sub_1DB2BB764();
  if (v3)
  {
    (*(v30 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v41 = v67;
    v42 = v68;
    v43 = v69;
    v44 = v70;
    v37 = v63;
    v38 = v64;
    v39 = v65;
    v40 = v66;
    v33 = v59;
    v34 = v60;
    v35 = v61;
    v36 = v62;
    sub_1DB1759B0(&v33);
  }

  else
  {
    v72 = v33;
    v31[0] = 3;
    sub_1DB201798();
    sub_1DB2BB7B4();
    (*(v30 + 8))(v11, v6);
    sub_1DB1355D0(&v33, &v73);
    sub_1DB175700(&v59, a2);
    __swift_destroy_boxed_opaque_existential_1(v74);
    return sub_1DB17575C(&v59);
  }
}

unint64_t sub_1DB2160C0()
{
  result = qword_1EE13EBD8;
  if (!qword_1EE13EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBD8);
  }

  return result;
}

unint64_t sub_1DB216114()
{
  result = qword_1EE13E660;
  if (!qword_1EE13E660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28228, &qword_1DB2C5168);
    sub_1DB216198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E660);
  }

  return result;
}

unint64_t sub_1DB216198()
{
  result = qword_1EE13EC28;
  if (!qword_1EE13EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC28);
  }

  return result;
}

unint64_t sub_1DB2161EC()
{
  result = qword_1EE13EC18;
  if (!qword_1EE13EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC18);
  }

  return result;
}

unint64_t sub_1DB216240()
{
  result = qword_1EE13E650;
  if (!qword_1EE13E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28230, &qword_1DB2C5170);
    sub_1DB2162C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E650);
  }

  return result;
}

unint64_t sub_1DB2162C4()
{
  result = qword_1EE13EBE8;
  if (!qword_1EE13EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBE8);
  }

  return result;
}

unint64_t sub_1DB216318()
{
  result = qword_1EE13EC78;
  if (!qword_1EE13EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC78);
  }

  return result;
}

unint64_t sub_1DB21636C()
{
  result = qword_1EE13F4E0;
  if (!qword_1EE13F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4E0);
  }

  return result;
}

unint64_t sub_1DB2163C0()
{
  result = qword_1EE13E648;
  if (!qword_1EE13E648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    sub_1DB164B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E648);
  }

  return result;
}

unint64_t sub_1DB216444()
{
  result = qword_1EE13E640;
  if (!qword_1EE13E640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    sub_1DB164A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E640);
  }

  return result;
}

unint64_t sub_1DB2164C8()
{
  result = qword_1ECC28258;
  if (!qword_1ECC28258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28258);
  }

  return result;
}

unint64_t sub_1DB21651C()
{
  result = qword_1ECC28260;
  if (!qword_1ECC28260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28260);
  }

  return result;
}

unint64_t sub_1DB216570()
{
  result = qword_1ECC28270;
  if (!qword_1ECC28270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28270);
  }

  return result;
}

unint64_t sub_1DB2165C4()
{
  result = qword_1ECC28280;
  if (!qword_1ECC28280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28280);
  }

  return result;
}

unint64_t sub_1DB216618()
{
  result = qword_1ECC28298;
  if (!qword_1ECC28298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28298);
  }

  return result;
}

unint64_t sub_1DB21666C()
{
  result = qword_1ECC282B0;
  if (!qword_1ECC282B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282B0);
  }

  return result;
}

unint64_t sub_1DB2166C0()
{
  result = qword_1ECC282C8;
  if (!qword_1ECC282C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282C8);
  }

  return result;
}

unint64_t sub_1DB216714()
{
  result = qword_1EE13F748;
  if (!qword_1EE13F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F748);
  }

  return result;
}

unint64_t sub_1DB216768()
{
  result = qword_1ECC282D0;
  if (!qword_1ECC282D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282D0);
  }

  return result;
}

unint64_t sub_1DB2167BC()
{
  result = qword_1ECC282E0;
  if (!qword_1ECC282E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282E0);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB2169C4()
{
  result = qword_1ECC282E8;
  if (!qword_1ECC282E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282E8);
  }

  return result;
}

unint64_t sub_1DB216A1C()
{
  result = qword_1ECC282F0;
  if (!qword_1ECC282F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282F0);
  }

  return result;
}

unint64_t sub_1DB216A74()
{
  result = qword_1ECC282F8;
  if (!qword_1ECC282F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282F8);
  }

  return result;
}

unint64_t sub_1DB216ACC()
{
  result = qword_1ECC28300;
  if (!qword_1ECC28300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28300);
  }

  return result;
}

unint64_t sub_1DB216B24()
{
  result = qword_1ECC28308;
  if (!qword_1ECC28308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28308);
  }

  return result;
}

unint64_t sub_1DB216B7C()
{
  result = qword_1ECC28310;
  if (!qword_1ECC28310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28310);
  }

  return result;
}

unint64_t sub_1DB216BD4()
{
  result = qword_1ECC28318;
  if (!qword_1ECC28318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28318);
  }

  return result;
}

unint64_t sub_1DB216C2C()
{
  result = qword_1ECC28320;
  if (!qword_1ECC28320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28320);
  }

  return result;
}

unint64_t sub_1DB216C84()
{
  result = qword_1ECC28328;
  if (!qword_1ECC28328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28328);
  }

  return result;
}

unint64_t sub_1DB216CDC()
{
  result = qword_1ECC28330;
  if (!qword_1ECC28330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28330);
  }

  return result;
}

unint64_t sub_1DB216D34()
{
  result = qword_1ECC28338;
  if (!qword_1ECC28338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28338);
  }

  return result;
}

unint64_t sub_1DB216D8C()
{
  result = qword_1ECC28340;
  if (!qword_1ECC28340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28340);
  }

  return result;
}

unint64_t sub_1DB216DE4()
{
  result = qword_1ECC28348;
  if (!qword_1ECC28348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28348);
  }

  return result;
}

unint64_t sub_1DB216E3C()
{
  result = qword_1ECC28350;
  if (!qword_1ECC28350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28350);
  }

  return result;
}

unint64_t sub_1DB216E94()
{
  result = qword_1ECC28358;
  if (!qword_1ECC28358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28358);
  }

  return result;
}

unint64_t sub_1DB216EEC()
{
  result = qword_1ECC28360;
  if (!qword_1ECC28360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28360);
  }

  return result;
}

unint64_t sub_1DB216F44()
{
  result = qword_1ECC28368;
  if (!qword_1ECC28368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28368);
  }

  return result;
}

unint64_t sub_1DB216F9C()
{
  result = qword_1EE13F4D0;
  if (!qword_1EE13F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4D0);
  }

  return result;
}

unint64_t sub_1DB216FF4()
{
  result = qword_1EE13F4D8;
  if (!qword_1EE13F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4D8);
  }

  return result;
}

unint64_t sub_1DB21704C()
{
  result = qword_1EE13F4F0;
  if (!qword_1EE13F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4F0);
  }

  return result;
}

unint64_t sub_1DB2170A4()
{
  result = qword_1EE13F4F8;
  if (!qword_1EE13F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4F8);
  }

  return result;
}

unint64_t sub_1DB2170F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB2BB6F4();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB217144(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB2BB6F4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB217190(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB2BB6F4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t QueryType.name.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4, a1);
  v2 = v4[2];

  sub_1DB17181C(v4);

  return v2;
}

uint64_t QueryType.database.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4, a1);
  v2 = v4[6];

  sub_1DB17181C(v4);

  return v2;
}

Swift::String __swiftcall QueryType.qualifiedName(quoted:)(Swift::Bool quoted)
{
  v3 = v2;
  v4 = v1;
  v6 = QueryType.database.getter(v1, v2);
  if (v7)
  {
    if (quoted)
    {
      v8 = sub_1DB2B995C(34, 0xE100000000000000, v6, v7);
      v10 = v9;

      v23 = v8;
      v24 = v10;
      MEMORY[0x1E1283490](46, 0xE100000000000000);
      v11 = QueryType.name.getter(v4, v3);
      v13 = sub_1DB2B995C(34, 0xE100000000000000, v11, v12);
      v15 = v14;

      MEMORY[0x1E1283490](v13, v15);
    }

    else
    {
      v23 = v6;
      v24 = v7;
      MEMORY[0x1E1283490](46, 0xE100000000000000);
      v21 = QueryType.name.getter(v4, v3);
      MEMORY[0x1E1283490](v21);
    }

    v16 = v23;
    v17 = v24;
  }

  else
  {
    v16 = QueryType.name.getter(v4, v3);
    if (quoted)
    {
      v18 = sub_1DB2B995C(34, 0xE100000000000000, v16, v17);
      v20 = v19;

      v16 = v18;
      v17 = v20;
    }
  }

  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_1DB217454()
{
  v12 = *(v0 + 48);
  sub_1DB2BB4F4();

  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v2 = ClientError.errorDescription.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000014;
    v4 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v2, v4);

  v5 = ClientError.failureReason.getter();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v7, v8);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  if (v12 == 4)
  {
    MEMORY[0x1E1283490](0x1000000000000055, 0x80000001DB2D4A10);
  }

  sub_1DB14A00C();
  v9 = sub_1DB2BA734();
  if (v10)
  {
    MEMORY[0x1E1283490](v9);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB217684()
{
  sub_1DB2BB4F4();

  v0 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v0);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v1 = DaemonError.errorDescription.getter();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0xD000000000000014;
    v3 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v1, v3);

  sub_1DB151D04();
  v4 = sub_1DB2BA744();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v6, v7);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v8 = sub_1DB2BA764();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v10, v11);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v12 = sub_1DB2BA734();
  if (v13)
  {
    MEMORY[0x1E1283490](v12);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB217A2C()
{
  sub_1DB2BB4F4();

  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  if (v0[2])
  {
    v2 = v0[1];
    v3 = v0[2];
  }

  else
  {
    v3 = 0x80000001DB2D1750;
    v2 = 0xD000000000000014;
  }

  MEMORY[0x1E1283490](v2, v3);

  v4 = v0[4];
  if (v4)
  {
    v5 = v0[3];
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v5, v4);
    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v6 = v0[6];
  if (v6)
  {
    v7 = v0[5];
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v7, v6);
    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  if (v0[8])
  {
    MEMORY[0x1E1283490](v0[7]);
    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB217C60()
{
  sub_1DB2BB4F4();

  v0 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v0);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v1 = sub_1DB1592D4();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0xD000000000000014;
    v3 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v1, v3);

  sub_1DB15AFA0();
  v4 = sub_1DB2BA744();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v6, v7);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v8 = sub_1DB2BA764();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v10, v11);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v12 = sub_1DB2BA734();
  if (v13)
  {
    MEMORY[0x1E1283490](v12);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB217EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  sub_1DB2BB4F4();

  v8 = v5;
  v9 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v9);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v10 = sub_1DB2189C0(a1, a2, v5, a4);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0xD000000000000014;
    v12 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v10, v12);

  if (v5 == 10)
  {
    v13 = "et (Different user DSID?)";
    v14 = 0xD000000000000041;
    goto LABEL_8;
  }

  if (v5 == 14)
  {
    v14 = 0xD000000000000049;
LABEL_8:
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v14, v13 | 0x8000000000000000);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);

    if (v8 == 10)
    {
      v15 = "ser account (DSID)";
      v16 = 0xD000000000000038;
    }

    else
    {
      v15 = " BETWEEN ? AND ?";
      v16 = 0xD000000000000072;
    }

    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v16, v15 | 0x8000000000000000);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  sub_1DB218FD8();
  v17 = sub_1DB2BA734();
  if (v18)
  {
    MEMORY[0x1E1283490](v17);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB2181D4()
{
  sub_1DB2BB4F4();

  v0 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v0);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v1 = AccessCredential.Error.errorDescription.getter();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0xD000000000000014;
    v3 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v1, v3);

  sub_1DB219160();
  v4 = sub_1DB2BA744();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v6, v7);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v8 = sub_1DB2BA764();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v10, v11);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v12 = sub_1DB2BA734();
  if (v13)
  {
    MEMORY[0x1E1283490](v12);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB218528(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1DB2BB4F4();

  v3 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v3);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v4 = JWT.Error.errorDescription.getter();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0xD000000000000014;
    v6 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v4, v6);

  if (a3 <= 8u && ((1 << a3) & 0x184) != 0)
  {
    sub_1DB219128(a1, a2, a3);
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](a1, a2);
    sub_1DB219144(a1, a2, a3);
    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  sub_1DB2190D4();
  v7 = sub_1DB2BA764();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v9, v10);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v11 = sub_1DB2BA734();
  if (v12)
  {
    MEMORY[0x1E1283490](v11);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

unint64_t sub_1DB21886C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1 == 14)
  {
    v11 = 0;
    v12 = 0;
    v3 = 0;
    v2 = 0;
    v4 = 0x80000001DB2D4AD0;
    v9 = 0x80000001DB2D4AF0;
    v5 = 0x80000001DB2D4B10;
    v7 = 0xD000000000000014;
    v6 = 0xD00000000000001CLL;
    result = 0xD00000000000008DLL;
  }

  else
  {
    v2 = 0x80000001DB2D4AA0;
    v3 = 0xD00000000000002DLL;
    v4 = 0xE800000000000000;
    v5 = 0x80000001DB2D4BA0;
    v6 = 0x4F2F49206B736944;
    v7 = 0x4F496B736964;
    v8 = a1 == 10;
    if (a1 == 10)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v7 = 0x726F7272456C7173;
    }

    if (a1 == 10)
    {
      v9 = 0xEE00726F72726520;
    }

    else
    {
      v6 = 0xD000000000000025;
      v9 = 0x80000001DB2D4A70;
    }

    if (a1 == 10)
    {
      result = 0xD000000000000060;
    }

    else
    {
      result = 0;
    }

    if (v8)
    {
      v11 = 0xD000000000000034;
    }

    else
    {
      v5 = 0;
      v11 = 0;
    }

    if (v8)
    {
      v12 = 0x80000001DB2D4C10;
    }

    else
    {
      v12 = 0;
    }

    if (v8)
    {
      v3 = 0xD000000000000060;
    }

    if (v8)
    {
      v2 = 0x80000001DB2D4C50;
    }
  }

  *a2 = v7;
  a2[1] = v4;
  a2[2] = 5001555;
  a2[3] = 0xE300000000000000;
  a2[4] = v6;
  a2[5] = v9;
  a2[6] = result;
  a2[7] = v5;
  a2[8] = v11;
  a2[9] = v12;
  a2[10] = v3;
  a2[11] = v2;
  return result;
}

const char *sub_1DB2189C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 14)
  {
    sub_1DB2BB4F4();

    v22 = 0xD00000000000001ALL;
    if (a4)
    {

      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](a1, a2);
      MEMORY[0x1E1283490](10272, 0xE200000000000000);
      v7 = *(a4 + 16);
      os_unfair_lock_lock((v7 + 24));
      result = sqlite3_sql(*(v7 + 16));
      if (result)
      {
LABEL_8:
        v9 = sub_1DB2BAF04();
        v11 = v10;
        os_unfair_lock_unlock((v7 + 24));
        MEMORY[0x1E1283490](v9, v11);

        MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D49A0);
        v12 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v12);

        MEMORY[0x1E1283490](41, 0xE100000000000000);

LABEL_13:
        MEMORY[0x1E1283490](0, 0xE000000000000000);

        v19 = 10542;
        v20 = 0xE200000000000000;
LABEL_14:
        MEMORY[0x1E1283490](v19, v20);
        return v22;
      }

      goto LABEL_18;
    }

LABEL_12:
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](a1, a2);
    MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D4980);
    v18 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v18);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    goto LABEL_13;
  }

  if (a3 == 10)
  {
    sub_1DB2BB4F4();

    v22 = 0xD00000000000002BLL;
    if (a4)
    {

      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](a1, a2);
      MEMORY[0x1E1283490](10272, 0xE200000000000000);
      v7 = *(a4 + 16);
      os_unfair_lock_lock((v7 + 24));
      result = sqlite3_sql(*(v7 + 16));
      if (result)
      {
        goto LABEL_8;
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    v22 = 0;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](a1, a2);
    MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D4980);
    v21 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v21);

    v19 = 41;
    v20 = 0xE100000000000000;
    goto LABEL_14;
  }

  v22 = 0;

  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](a1, a2);
  MEMORY[0x1E1283490](10272, 0xE200000000000000);
  v13 = *(a4 + 16);
  os_unfair_lock_lock((v13 + 24));
  result = sqlite3_sql(*(v13 + 16));
  if (result)
  {
    v14 = sub_1DB2BAF04();
    v16 = v15;
    os_unfair_lock_unlock((v13 + 24));
    MEMORY[0x1E1283490](v14, v16);

    MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D49A0);
    v17 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v17);

    MEMORY[0x1E1283490](41, 0xE100000000000000);

    return v22;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1DB218EDC()
{
  v1 = *(v0 + 16);
  v2 = 0xD000000000000041;
  if (v1 != 10)
  {
    v2 = 0;
  }

  if (v1 == 14)
  {
    return 0xD000000000000049;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB218F30()
{
  v1 = *(v0 + 16);
  v2 = 0xD000000000000038;
  if (v1 != 10)
  {
    v2 = 0;
  }

  if (v1 == 14)
  {
    return 0xD000000000000072;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB218FA0(void *a1)
{
  a1[1] = sub_1DB218FD8();
  a1[2] = sub_1DB21902C();
  result = sub_1DB219080();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB218FD8()
{
  result = qword_1EE13E858;
  if (!qword_1EE13E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E858);
  }

  return result;
}

unint64_t sub_1DB21902C()
{
  result = qword_1EE13E848;
  if (!qword_1EE13E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E848);
  }

  return result;
}

unint64_t sub_1DB219080()
{
  result = qword_1EE13E850;
  if (!qword_1EE13E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E850);
  }

  return result;
}

unint64_t sub_1DB2190D4()
{
  result = qword_1ECC28370;
  if (!qword_1ECC28370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28370);
  }

  return result;
}

uint64_t sub_1DB219128(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 7)
  {
  }

  return result;
}

uint64_t sub_1DB219144(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 7)
  {
  }

  return result;
}

unint64_t sub_1DB219160()
{
  result = qword_1ECC28378;
  if (!qword_1ECC28378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28378);
  }

  return result;
}

uint64_t TableBuilder.column(_:datatype:isPrimaryKey:isUnique:isNullable:defaultValue:)(void *a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, uint64_t a7)
{
  v9 = a6;
  v10 = a5;
  if (a4 & 1) != 0 && ((a6 | a5))
  {
    if (a6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = Expressible.columnName.getter(v15, v16);
    v19 = v18;
    sub_1DB135B68();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = v14;
    return swift_willThrow();
  }

  else
  {
    v69[0] = a7;
    v69[1] = v8;
    v70 = v7;
    v84 = 0;
    memset(v83, 0, sizeof(v83));
    memset(v82, 0, sizeof(v82));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
    v23 = swift_allocObject();
    sub_1DB164980(a1, v23 + 32);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(v23 + 96) = v24;
    v25 = sub_1DB219960();
    v26 = 0uLL;
    v27 = v25;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(v23 + 104) = v25;
    *(v23 + 72) = a2;
    *(v23 + 80) = a3;
    v31 = MEMORY[0x1E69E7CC0];
    *(v23 + 88) = MEMORY[0x1E69E7CC0];
    if (a4)
    {
      v26 = xmmword_1DB2C5DD0;
      v30 = MEMORY[0x1E69E7CC0];
      v28 = v24;
      v29 = v25;
    }

    *(v23 + 136) = v28;
    *(v23 + 144) = v29;
    *(v23 + 112) = v26;
    *(v23 + 128) = v30;
    if (v9)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
      v33 = 0xE800000000000000;
      v32 = 0x4C4C554E20544F4ELL;
      v35 = v24;
      v36 = v25;
    }

    *(v23 + 152) = v32;
    *(v23 + 160) = v33;
    *(v23 + 168) = v34;
    *(v23 + 176) = v35;
    *(v23 + 184) = v36;
    if (v10)
    {
      v37 = xmmword_1DB2C5DE0;
      v38 = MEMORY[0x1E69E7CC0];
      v39 = v24;
      v40 = v25;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v37 = 0uLL;
    }

    *(v23 + 216) = v39;
    *(v23 + 224) = v40;
    *(v23 + 192) = v37;
    *(v23 + 208) = v38;
    sub_1DB1446A4(v83, &v77, &qword_1ECC27898, &unk_1DB2CCD00);
    v71 = v23;
    if (*(&v78 + 1))
    {
      sub_1DB1355D0(&v77, &v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v41 = v23;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;
      *(inited + 56) = v24;
      *(inited + 64) = v27;
      *(inited + 32) = 0x4B43454843;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v31;
      sub_1DB164980(&v72, inited + 72);

      sub_1DB2B9A70(inited, (v41 + 232));
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(&v72);
    }

    else
    {
      *(v23 + 264) = 0;
      *(v23 + 248) = 0u;
      *(v23 + 232) = 0u;
    }

    sub_1DB1446A4(v69[0], &v77, &qword_1ECC27898, &unk_1DB2CCD00);
    if (*(&v78 + 1))
    {
      sub_1DB1355D0(&v77, &v72);
      v43 = v71;
      v71[37] = v24;
      v43[38] = v27;
      sub_1DB203564();
      __swift_destroy_boxed_opaque_existential_1(&v72);
    }

    else
    {
      v43 = v71;
      v71[38] = 0;
      *(v43 + 17) = 0u;
      *(v43 + 18) = 0u;
    }

    v44 = v43 + 39;
    sub_1DB1446A4(v82, &v77, &qword_1ECC28380, &qword_1DB2C5DF0);
    if (*(&v78 + 1))
    {
      v74[0] = v79;
      v74[1] = v80;
      v74[2] = v81;
      v72 = v77;
      v73 = v78;
      sub_1DB2B3DEC(&v72, v74 + 8, v44);
      sub_1DB1445E0(&v72, &qword_1ECC28388, &qword_1DB2D0EA0);
    }

    else
    {
      v44[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
    }

    v45 = v71;
    v71[48] = 0;
    v46 = MEMORY[0x1E69E7CC0];
    *(v45 + 22) = 0u;
    *(v45 + 23) = 0u;
    for (i = 4; i != 49; i += 5)
    {
      sub_1DB1446A4(&v45[i], &v77, &qword_1ECC27898, &unk_1DB2CCD00);
      v75[0] = v77;
      v75[1] = v78;
      v76 = v79;
      if (*(&v78 + 1))
      {
        sub_1DB1355D0(v75, &v72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = sub_1DB1573FC(0, v46[2] + 1, 1, v46);
          v85 = v46;
        }

        v50 = v46[2];
        v49 = v46[3];
        if (v50 >= v49 >> 1)
        {
          v46 = sub_1DB1573FC((v49 > 1), v50 + 1, 1, v46);
          v85 = v46;
        }

        v51 = *(&v73 + 1);
        v52 = *&v74[0];
        v53 = __swift_mutable_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
        MEMORY[0x1EEE9AC00](v53);
        v55 = v69 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v56 + 16))(v55);
        sub_1DB200A54(v50, v55, &v85, v51, v52);
        __swift_destroy_boxed_opaque_existential_1(&v72);
        v45 = v71;
      }

      else
      {
        sub_1DB1445E0(v75, &qword_1ECC27898, &unk_1DB2CCD00);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1DB2B9A70(v46, &v77);

    v57 = v70;
    swift_beginAccess();
    v58 = *(v57 + 16);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 16) = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1DB1573FC(0, v58[2] + 1, 1, v58);
      *(v57 + 16) = v58;
    }

    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1DB1573FC((v60 > 1), v61 + 1, 1, v58);
      *(v57 + 16) = v58;
    }

    v62 = *(&v78 + 1);
    v63 = v79;
    v64 = __swift_mutable_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
    MEMORY[0x1EEE9AC00](v64);
    v66 = v69 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v67 + 16))(v66);
    v68 = v70;
    sub_1DB200A54(v61, v66, (v70 + 16), v62, v63);
    __swift_destroy_boxed_opaque_existential_1(&v77);
    *(v68 + 16) = v58;
    swift_endAccess();
    sub_1DB1445E0(v82, &qword_1ECC28380, &qword_1DB2C5DF0);
    return sub_1DB1445E0(v83, &qword_1ECC27898, &unk_1DB2CCD00);
  }
}

unint64_t sub_1DB219960()
{
  result = qword_1EE1400B8;
  if (!qword_1EE1400B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1400B8);
  }

  return result;
}

uint64_t Table.addColumn(_:datatype:isNullable:isUnique:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v48 = a7;
  v12 = v7[9];
  v72 = v7[8];
  v73 = v12;
  v74 = v7[10];
  v75 = *(v7 + 22);
  v13 = v7[5];
  v68 = v7[4];
  v69 = v13;
  v14 = v7[7];
  v70 = v7[6];
  v71 = v14;
  v15 = v7[1];
  v64 = *v7;
  v65 = v15;
  v16 = v7[3];
  v66 = v7[2];
  v67 = v16;
  v63[3] = MEMORY[0x1E69E6158];
  v63[4] = &protocol witness table for String;
  v63[0] = a1;
  v63[1] = a2;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  memset(v60, 0, sizeof(v60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v17 = swift_allocObject();
  sub_1DB164980(v63, v17 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v17 + 96) = v18;
  v19 = sub_1DB219960();
  v20 = 0uLL;
  v21 = v19;
  *(v17 + 104) = v19;
  *(v17 + 72) = a3;
  *(v17 + 80) = a4;
  v22 = MEMORY[0x1E69E7CC0];
  *(v17 + 88) = MEMORY[0x1E69E7CC0];
  *(v17 + 112) = 0u;
  *(v17 + 128) = 0u;
  v49 = v17;
  *(v17 + 144) = 0;
  if (a5)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v24 = 0xE800000000000000;
    v23 = 0x4C4C554E20544F4ELL;
    v26 = v18;
    v27 = v19;
  }

  v28 = v49;
  v49[19] = v23;
  v28[20] = v24;
  v28[21] = v25;
  v28[22] = v26;
  v28[23] = v27;
  if (a6)
  {
    v20 = xmmword_1DB2C5DE0;
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v18;
    v31 = v19;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  v32 = v49;
  v49[27] = v30;
  v32[28] = v31;
  *(v32 + 12) = v20;
  v32[26] = v29;
  sub_1DB1446A4(v61, &v55, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v56 + 1))
  {
    sub_1DB1355D0(&v55, &v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DB2BD5A0;
    *(v33 + 56) = v18;
    *(v33 + 64) = v21;
    *(v33 + 32) = 0x4B43454843;
    *(v33 + 40) = 0xE500000000000000;
    *(v33 + 48) = v22;
    sub_1DB164980(&v50, v33 + 72);

    sub_1DB2B9A70(v33, v32 + 29);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  else
  {
    v32[33] = 0;
    *(v32 + 31) = 0u;
    *(v32 + 29) = 0u;
  }

  sub_1DB1446A4(v48, &v55, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v56 + 1))
  {
    sub_1DB1355D0(&v55, &v50);
    v32[37] = v18;
    v32[38] = v21;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  else
  {
    v32[38] = 0;
    *(v32 + 17) = 0u;
    *(v32 + 18) = 0u;
  }

  sub_1DB1446A4(v60, &v55, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v56 + 1))
  {
    v52[0] = v57;
    v52[1] = v58;
    v52[2] = v59;
    v50 = v55;
    v51 = v56;
    sub_1DB2B3DEC(&v50, v52 + 8, v32 + 39);
    sub_1DB1445E0(&v50, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {
    v32[43] = 0;
    *(v32 + 39) = 0u;
    *(v32 + 41) = 0u;
  }

  v32[48] = 0;
  v34 = MEMORY[0x1E69E7CC0];
  *(v32 + 22) = 0u;
  *(v32 + 23) = 0u;
  for (i = 4; i != 49; i += 5)
  {
    sub_1DB1446A4(&v32[i], &v55, &qword_1ECC27898, &unk_1DB2CCD00);
    v53[0] = v55;
    v53[1] = v56;
    v54 = v57;
    if (*(&v56 + 1))
    {
      sub_1DB1355D0(v53, &v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_1DB1573FC(0, v34[2] + 1, 1, v34);
        v76 = v34;
      }

      v38 = v34[2];
      v37 = v34[3];
      if (v38 >= v37 >> 1)
      {
        v34 = sub_1DB1573FC((v37 > 1), v38 + 1, 1, v34);
        v76 = v34;
      }

      v39 = *(&v51 + 1);
      v40 = *&v52[0];
      v41 = __swift_mutable_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      MEMORY[0x1EEE9AC00](v41);
      v43 = &v47 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43);
      sub_1DB200A54(v38, v43, &v76, v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v32 = v49;
    }

    else
    {
      sub_1DB1445E0(v53, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v34, &v55);

  sub_1DB1445E0(v60, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v61, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v45 = sub_1DB2A4B8C(&v55);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  return v45;
}

uint64_t Expressible.unqualifiedColumnName.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v4(&v12);

  sub_1DB143508();
  v5 = sub_1DB2BB3A4();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 16 + 16 * v6);
    v9 = *v7;
    v8 = v7[1];
  }

  else
  {

    (v4)(&v12, a1, a2);
    v9 = v12;
    v8 = v13;
  }

  v12 = v9;
  v13 = v8;
  v10 = sub_1DB2BB3D4();

  return v10;
}

uint64_t Expressible.columnName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4, a1);
  sub_1DB1F8BD4(v4[0], v4[1], v4[2]);

  sub_1DB143508();
  v2 = sub_1DB2BB3D4();

  return v2;
}

uint64_t sub_1DB21A248()
{
  if (qword_1EE13E870 != -1)
  {
    swift_once();
  }

  qword_1EE13F100 = qword_1EE13E878;
  *algn_1EE13F108 = unk_1EE13E880;
  qword_1EE13F110 = qword_1EE13E888;
}

uint64_t static Connection.ServiceColumns.rowId.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F0F8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F108;
  v2 = qword_1EE13F110;
  *a1 = qword_1EE13F100;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A350()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x4D4954435F42425FLL, 0xE900000000000045);
  qword_1EE13F150 = result;
  *algn_1EE13F158 = v1;
  qword_1EE13F160 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Connection.ServiceColumns.creationTime.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F148 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F158;
  v2 = qword_1EE13F160;
  *a1 = qword_1EE13F150;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A424()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x4D49544D5F42425FLL, 0xE900000000000045);
  qword_1EE13F130 = result;
  *algn_1EE13F138 = v1;
  qword_1EE13F140 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Connection.ServiceColumns.modificationTime.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F128 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F138;
  v2 = qword_1EE13F140;
  *a1 = qword_1EE13F130;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A4F8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x534449425F42425FLL, 0xE800000000000000);
  qword_1EE13F0C0 = result;
  *algn_1EE13F0C8 = v1;
  qword_1EE13F0D0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Connection.ServiceColumns.bundleIds.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F0B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F0C8;
  v2 = qword_1EE13F0D0;
  *a1 = qword_1EE13F0C0;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A5C8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000, 0x534449525F42425FLL, 0xE800000000000000);
  qword_1EE13F170 = result;
  *algn_1EE13F178 = v1;
  qword_1EE13F180 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Connection.ServiceColumns.requestIds.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F168 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F178;
  v2 = qword_1EE13F180;
  *a1 = qword_1EE13F170;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A698()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB2C3A50;
  if (qword_1EE13F148 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE13F150;
  v1 = *algn_1EE13F158;
  v3 = qword_1EE13F160;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28148, &qword_1DB2C4B70);
  *(v0 + 56) = v4;
  v5 = sub_1DB21132C(qword_1EE13EF80, &qword_1ECC28148, &qword_1DB2C4B70);
  *(v0 + 64) = v5;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  v6 = qword_1EE13F128;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE13F130;
  v7 = *algn_1EE13F138;
  v9 = qword_1EE13F140;
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v8;
  *(v0 + 80) = v7;
  *(v0 + 88) = v9;
  v10 = qword_1EE13F0B8;

  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE13F0C0;
  v11 = *algn_1EE13F0C8;
  v13 = qword_1EE13F0D0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  *(v0 + 136) = v14;
  v15 = sub_1DB21132C(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  *(v0 + 144) = v15;
  *(v0 + 112) = v12;
  *(v0 + 120) = v11;
  *(v0 + 128) = v13;
  v16 = qword_1EE13F168;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE13F170;
  v17 = *algn_1EE13F178;
  v19 = qword_1EE13F180;
  *(v0 + 176) = v14;
  *(v0 + 184) = v15;
  *(v0 + 152) = v18;
  *(v0 + 160) = v17;
  *(v0 + 168) = v19;
  qword_1EE13F0E0 = v0;
}

uint64_t sub_1DB21A914()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB2BCC40;
  if (qword_1EE13F0F8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE13F100;
  v1 = *algn_1EE13F108;
  v3 = qword_1EE13F110;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  *(v0 + 64) = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  v4 = qword_1EE13F0D8;

  if (v4 != -1)
  {
    swift_once();
  }

  result = sub_1DB1414E8(v5);
  qword_1EE13F120 = v0;
  return result;
}

void sub_1DB21AAD8(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v18 = a3;
    swift_once();
    a3 = v18;
  }

  v6 = *a3;
  v7 = *(*a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v22 = MEMORY[0x1E69E7CC0];

    sub_1DB138470(0, v7, 0);
    v8 = v22;
    v9 = v6 + 32;
    do
    {
      sub_1DB164980(v9, v19);
      v10 = v20;
      v11 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v12 = Expressible.columnName.getter(v10, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(v19);
      v22 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1DB138470((v15 > 1), v16 + 1, 1);
        v8 = v22;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  *a4 = v8;
}

uint64_t sub_1DB21AC40(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1DB21ACB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v15[0] = a1;
  v15[1] = a2;
  v15[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v15[2] = a3;
  v14[3] = MEMORY[0x1E69E7360];
  v14[4] = &protocol witness table for Int64;
  v14[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B5A0C(inited, 1, a5, 0xE100000000000000, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DB21AE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v15[0] = a1;
  v15[1] = a2;
  v15[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v15[2] = a3;
  v14[3] = MEMORY[0x1E69E7360];
  v14[4] = &protocol witness table for Int64;
  v14[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B59DC(inited, 1, a5, 0xE100000000000000, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t static Expression<A>.+= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.+ infix(_:_:), &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.+ infix(_:_:), &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.+ infix(_:_:), &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, a3);
}

uint64_t static Expression<A>.+= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  return sub_1DB21B13C(a1, static Expression<A>.+ infix(_:_:), &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, x8_0);
}

{
  return sub_1DB21B13C(a1, static Expression<A>.+ infix(_:_:), &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, x8_0);
}

uint64_t sub_1DB21AFF8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *, uint64_t *)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, unint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a1[1];
  v13 = a1[2];
  v14 = *a2;
  v21[0] = *a1;
  v12 = v21[0];
  v21[1] = v11;
  v21[2] = v13;
  v19 = v14;
  v20 = *(a2 + 1);
  a3(&v22, v21, &v19);
  v15 = v22;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(a7 + 24) = v16;
  v17 = sub_1DB21132C(a6, a4, a5);
  *a7 = v12;
  *(a7 + 8) = v11;
  *(a7 + 16) = v13;
  *(a7 + 64) = v16;
  *(a7 + 72) = v17;
  *(a7 + 32) = v17;
  *(a7 + 40) = v15;
  *(a7 + 48) = v23;
}

uint64_t sub_1DB21B13C@<X0>(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, unint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = a1[1];
  v12 = a1[2];
  v17[0] = *a1;
  v11 = v17[0];
  v17[1] = v10;
  v17[2] = v12;
  a2(&v18, v17);
  v13 = v18;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(a6 + 24) = v14;
  v15 = sub_1DB21132C(a5, a3, a4);
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = v12;
  *(a6 + 64) = v14;
  *(a6 + 72) = v15;
  *(a6 + 32) = v15;
  *(a6 + 40) = v13;
  *(a6 + 48) = v19;
}

uint64_t static Expression<A>.+= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.+= infix<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.-= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.-= infix<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.*= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.*= infix<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>./= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>./= infix<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t sub_1DB21B550(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t *, uint64_t *, uint64_t, uint64_t, uint64_t), void (*a8)(void *, uint64_t *, uint64_t, uint64_t))
{
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v21[0] = *a1;
  v21[1] = v11;
  v21[2] = v12;
  v17 = v21[0];
  *&v18 = v11;
  *(&v18 + 1) = v12;
  v15 = v13;
  v16 = *(a2 + 1);
  a7(&v19, &v17, &v15, a3, a4, a5);
  v17 = v19;
  v18 = v20;
  a8(v21, &v17, a4, a6);
}

uint64_t sub_1DB21B63C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void *, uint64_t *, uint64_t, uint64_t))
{
  v11 = a1[1];
  v12 = a1[2];
  v18[0] = *a1;
  v18[1] = v11;
  v18[2] = v12;
  v14 = v18[0];
  *&v15 = v11;
  *(&v15 + 1) = v12;
  a7(&v16, &v14, a2, a3, a4, a5);
  v14 = v16;
  v15 = v17;
  a8(v18, &v14, a4, a6);
}

uint64_t static Expression<A>.%= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.% infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.% infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.% infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.%= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.% infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, x8_0);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.% infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, x8_0);
}

uint64_t sub_1DB21B7D8@<X0>(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, unint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v10 = a1[1];
  v12 = a1[2];
  v17[0] = *a1;
  v11 = v17[0];
  v17[1] = v10;
  v17[2] = v12;
  a2(&v18, v17);
  v13 = v18;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(a6 + 24) = v14;
  v15 = sub_1DB21132C(a5, a3, a4);
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = v12;
  *(a6 + 64) = v14;
  *(a6 + 72) = v15;
  *(a6 + 32) = v15;
  *(a6 + 40) = v13;
  *(a6 + 48) = v19;
}

uint64_t static Expression<A>.++ postfix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B994(a1, 43, a2);
}

{
  return sub_1DB21B8B8(a1, 43, a2);
}

uint64_t sub_1DB21B8B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_1DB21ACB0(*a1, v5, v6, 1, a2, &v11);
  v7 = v11;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  *(a3 + 24) = v8;
  v9 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 64) = v8;
  *(a3 + 72) = v9;
  *(a3 + 32) = v9;
  *(a3 + 40) = v7;
  *(a3 + 48) = v12;
}

uint64_t static Expression<A>.-- postfix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B994(a1, 45, a2);
}

{
  return sub_1DB21B8B8(a1, 45, a2);
}

uint64_t sub_1DB21B994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_1DB21AE0C(*a1, v5, v6, 1, a2, &v11);
  v7 = v11;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  *(a3 + 24) = v8;
  v9 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 64) = v8;
  *(a3 + 72) = v9;
  *(a3 + 32) = v9;
  *(a3 + 40) = v7;
  *(a3 + 48) = v12;
}

uint64_t static Expression<A>.<<= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.<< infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.<< infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.<< infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.<<= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.<< infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.<< infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t static Expression<A>.>>= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.>> infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.>> infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.>> infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.>>= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.>> infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.>> infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t static Expression<A>.&= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.& infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.& infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.& infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.&= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.& infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.& infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t static Expression<A>.|= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.| infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.| infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.| infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.|= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.| infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.| infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t static Expression<A>.^= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.^ infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.^ infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.^ infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.^= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.^ infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.^ infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t Insert.removingOversizeValues(using:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = a1[9];
  v40[8] = a1[8];
  v40[9] = v6;
  v40[10] = a1[10];
  v7 = a1[5];
  v40[4] = a1[4];
  v40[5] = v7;
  v8 = a1[7];
  v40[6] = a1[6];
  v40[7] = v8;
  v9 = a1[1];
  v40[0] = *a1;
  v40[1] = v9;
  v10 = a1[3];
  v40[2] = a1[2];
  v40[3] = v10;
  sub_1DB1446A4(v4, v29, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v30)
  {
    v11 = *v29;
    v12 = *&v29[8];
    v13 = *&v29[24];
    v14 = *&v29[40];
    v15 = *&v29[56];
    v16 = *&v29[72];
    v17 = *&v29[88];
    v19 = *&v29[104];
    v18 = *&v29[120];
  }

  else
  {
    sub_1DB1445E0(v29, &qword_1ECC27CC8, &unk_1DB2C3860);
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v19 = 0uLL;
    v18 = 0uLL;
  }

  *v31 = v11;
  *&v31[8] = v12;
  *&v31[24] = v13;
  *&v31[40] = v14;
  *&v31[56] = v15;
  *&v31[72] = v16;
  *&v31[88] = v17;
  *&v31[104] = v19;
  *&v31[120] = v18;
  if (v12)
  {
    v36 = *&v31[80];
    v37 = *&v31[96];
    v38 = *&v31[112];
    v32[1] = *&v31[16];
    v33 = *&v31[32];
    v34 = *&v31[48];
    v35 = *&v31[64];
    v39 = *&v31[128];
    v32[0] = *v31;
    if (*&v31[40])
    {
      v20 = sub_1DB21C18C(*&v32[0], *(&v32[0] + 1), v33, *&v31[40], v40, v35);
      if (!v3)
      {
        v21 = v20;
        sub_1DB16D26C(v32, v29);

        *&v29[64] = v21;
        v22 = *&v29[112];
        *(a2 + 96) = *&v29[96];
        *(a2 + 112) = v22;
        *(a2 + 128) = *&v29[128];
        v23 = *&v29[48];
        *(a2 + 32) = *&v29[32];
        *(a2 + 48) = v23;
        v24 = *&v29[16];
        *a2 = *v29;
        *(a2 + 16) = v24;
        v25 = *&v29[80];
        *(a2 + 64) = *&v29[64];
        *(a2 + 80) = v25;
        *(a2 + 136) = 1;
      }
    }

    else
    {
      v27 = v32[0];
      sub_1DB14A10C();
      swift_allocError();
      *v28 = v27;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 3;
      swift_willThrow();
    }

    return sub_1DB1F7130(v32);
  }

  else
  {
    sub_1DB1445E0(v31, &qword_1ECC27CD0, &unk_1DB2CB840);
    return sub_1DB16D210(v4, a2);
  }
}

void *sub_1DB21C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = v6;
  v9 = a6;
  v79 = MEMORY[0x1E69E7CD0];
  v13 = a6[2];

  v65 = a5;
  sub_1DB1F8988(a5, &v76);

  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v63 = v15;
      v15 = v14;
      while (1)
      {
        if (v15 >= v13)
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_48;
        }

        v7 = v9[v15 + 4];

        v16 = sub_1DB21D488(a1, a2, a3, a4, v65, v7);
        if (v8)
        {

          sub_1DB1F89E4(v65);

          goto LABEL_45;
        }

        v17 = v16;

        sub_1DB21E370(v18);
        v19 = *(v17 + 16);

        if (!v19)
        {
          break;
        }

        ++v15;
        if (v14 == v13)
        {
          v15 = v63;
          goto LABEL_18;
        }
      }

      v15 = v63;
      *&v69 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DB1386A0(0, *(v63 + 16) + 1, 1);
        v15 = v69;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_1DB1386A0((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v15 = v69;
      }

      *(v15 + 16) = v22;
      *(v15 + 8 * v21 + 32) = v7;
    }

    while (v14 != v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:

  sub_1DB1F89E4(v65);

  v14 = v79;
  if (!*(v79 + 16))
  {

    return v9;
  }

  v7 = v13 - *(v15 + 16);
  if (qword_1EE13F2E0 != -1)
  {
LABEL_49:
    swift_once();
  }

  sub_1DB2BBAF4();
  v23 = v77;
  v68 = v78;
  __swift_project_boxed_opaque_existential_1(&v76, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1DB2BCC40;
  v75 = sub_1DB156674(0, 73, 0, MEMORY[0x1E69E7CC0]);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  v25 = MEMORY[0x1E69E6530];
  v74 = MEMORY[0x1E69E6530];
  v73[0] = v7;
  sub_1DB1446A4(v73, v72, &qword_1ECC26F30, &unk_1DB2BFA90);
  v69 = 0u;
  v70 = 0u;
  sub_1DB156864(v72, &v69);
  LOBYTE(v71) = 0;
  v26 = v75;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1DB156674(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1DB156674((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[40 * v28];
  v30 = v69;
  v31 = v70;
  v29[64] = v71;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  v75 = v26;
  sub_1DB1445E0(v73, &qword_1ECC26F30, &unk_1DB2BFA90);
  v32._countAndFlagsBits = 0xD00000000000002CLL;
  v32._object = 0x80000001DB2D4CC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  v33 = *(v14 + 16);
  v74 = v25;
  v73[0] = v33;
  sub_1DB1446A4(v73, v72, &qword_1ECC26F30, &unk_1DB2BFA90);
  v69 = 0u;
  v70 = 0u;
  sub_1DB156864(v72, &v69);
  LOBYTE(v71) = 0;
  v34 = v75;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1DB156674(0, *(v34 + 2) + 1, 1, v34);
    v75 = v34;
  }

  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_1DB156674((v35 > 1), v36 + 1, 1, v34);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[40 * v36];
  v38 = v69;
  v39 = v70;
  v37[64] = v71;
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  v75 = v34;
  sub_1DB1445E0(v73, &qword_1ECC26F30, &unk_1DB2BFA90);
  v40._object = 0x80000001DB2D4CF0;
  v40._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v41 = *(v14 + 16);
  if (v41)
  {
    v42 = sub_1DB1383EC(v41, 0);
    v43 = sub_1DB149DC0(&v69, v42 + 4, v41, v14);
    v44 = v69;

    sub_1DB149FCC(v44);
    if (v43 != v41)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  *&v69 = v42;
  v44 = v8;
  sub_1DB148C3C(&v69);
  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v45 = sub_1DB2BAD24();
    v47 = v46;

    v74 = MEMORY[0x1E69E6158];
    v73[0] = v45;
    v73[1] = v47;
    sub_1DB1446A4(v73, v72, &qword_1ECC26F30, &unk_1DB2BFA90);
    v69 = 0u;
    v70 = 0u;
    sub_1DB156864(v72, &v69);
    LOBYTE(v71) = 0;
    v48 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1DB156674(0, *(v48 + 2) + 1, 1, v48);
      v75 = v48;
    }

    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_1DB156674((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v51 = &v48[40 * v50];
    v52 = v69;
    v53 = v70;
    v51[64] = v71;
    *(v51 + 2) = v52;
    *(v51 + 3) = v53;
    v75 = v48;
    sub_1DB1445E0(v73, &qword_1ECC26F30, &unk_1DB2BFA90);
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    v9 = v66;
    *(v66 + 32) = v75;
    Logger.error(_:)(v66, v23, v68);

    __swift_destroy_boxed_opaque_existential_1(&v76);
    if (*(v15 + 16))
    {

      return v15;
    }

    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();
    v69 = v76;
    MEMORY[0x1E1283490](0xD00000000000004BLL, 0x80000001DB2D4D10);
    v55 = *(v14 + 16);
    if (!v55)
    {
      v56 = MEMORY[0x1E69E7CC0];
      goto LABEL_44;
    }

    v56 = sub_1DB1383EC(v55, 0);
    v9 = sub_1DB149DC0(&v76, v56 + 4, v55, v14);
    v44 = v76;

    sub_1DB149FCC(v44);
    if (v9 == v55)
    {
LABEL_44:
      *&v76 = v56;
      sub_1DB148C3C(&v76);
      v57 = sub_1DB2BAD24();
      v59 = v58;

      MEMORY[0x1E1283490](v57, v59);

      v60 = v69;
      sub_1DB14A10C();
      swift_allocError();
      *v61 = v60;
      *(v61 + 16) = 0u;
      *(v61 + 32) = 0u;
      *(v61 + 48) = 4;
      swift_willThrow();
LABEL_45:

      return v9;
    }

    goto LABEL_51;
  }

LABEL_52:
  MEMORY[0x1E1284A10](v8);

  __break(1u);
  MEMORY[0x1E1284A10](v44);

  __break(1u);
  return result;
}

uint64_t removingOversizeValues<A>(for:in:using:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = a6;
  v11 = a5[9];
  v85 = a5[8];
  v86 = v11;
  v87 = a5[10];
  v12 = a5[5];
  v81 = a5[4];
  v82 = v12;
  v13 = a5[7];
  v83 = a5[6];
  v84 = v13;
  v14 = a5[1];
  v77 = *a5;
  v78 = v14;
  v15 = a5[3];
  v79 = a5[2];
  v80 = v15;
  v88 = MEMORY[0x1E69E7CD0];
  *&v74 = a6;
  sub_1DB2BB154();

  swift_getWitnessTable();
  v16 = sub_1DB2BB5D4();
  if (v8)
  {
    goto LABEL_26;
  }

  v17 = v16;
  v18 = v88;
  if (!*(v88 + 16))
  {

LABEL_26:

    return v10;
  }

  v19 = sub_1DB2BB124();
  v66 = v17;
  v20 = sub_1DB2BB124();
  v21 = v19 - v20;
  if (__OFSUB__(v19, v20))
  {
    __break(1u);
  }

  else if (qword_1EE13F2E0 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  sub_1DB2BBAF4();
  v22 = v75;
  v64 = v76;
  __swift_project_boxed_opaque_existential_1(&v74, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1DB2BCC40;
  v73 = sub_1DB156674(0, 73, 0, MEMORY[0x1E69E7CC0]);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v24 = MEMORY[0x1E69E6530];
  v72 = MEMORY[0x1E69E6530];
  v71[0] = v21;
  sub_1DB1446A4(v71, v70, &qword_1ECC26F30, &unk_1DB2BFA90);
  v67 = 0u;
  v68 = 0u;
  sub_1DB156864(v70, &v67);
  LOBYTE(v69) = 0;
  v25 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1DB156674(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  v65 = v22;
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1DB156674((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[40 * v27];
  v29 = v67;
  v30 = v68;
  v28[64] = v69;
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  v73 = v25;
  sub_1DB1445E0(v71, &qword_1ECC26F30, &unk_1DB2BFA90);
  v31._countAndFlagsBits = 0xD00000000000002CLL;
  v31._object = 0x80000001DB2D4CC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  v32 = *(v18 + 16);
  v72 = v24;
  v71[0] = v32;
  sub_1DB1446A4(v71, v70, &qword_1ECC26F30, &unk_1DB2BFA90);
  v67 = 0u;
  v68 = 0u;
  sub_1DB156864(v70, &v67);
  LOBYTE(v69) = 0;
  v33 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1DB156674(0, *(v33 + 2) + 1, 1, v33);
    v73 = v33;
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1DB156674((v34 > 1), v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = &v33[40 * v35];
  v37 = v67;
  v38 = v68;
  v36[64] = v69;
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  v73 = v33;
  sub_1DB1445E0(v71, &qword_1ECC26F30, &unk_1DB2BFA90);
  v39._object = 0x80000001DB2D4CF0;
  v39._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v39);
  v40 = *(v18 + 16);
  if (v40)
  {
    v41 = sub_1DB1383EC(v40, 0);
    v42 = sub_1DB149DC0(&v67, v41 + 4, v40, v18);
    v43 = v67;
    v9 = v18;

    sub_1DB149FCC(v43);
    if (v42 != v40)
    {
      __break(1u);
      goto LABEL_32;
    }

    v9 = 0;
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  *&v67 = v41;
  sub_1DB148C3C(&v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  v44 = sub_1DB2BAD24();
  v46 = v45;

  v72 = MEMORY[0x1E69E6158];
  v71[0] = v44;
  v71[1] = v46;
  sub_1DB1446A4(v71, v70, &qword_1ECC26F30, &unk_1DB2BFA90);
  v67 = 0u;
  v68 = 0u;
  sub_1DB156864(v70, &v67);
  LOBYTE(v69) = 0;
  v47 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1DB156674(0, *(v47 + 2) + 1, 1, v47);
    v73 = v47;
  }

  v10 = v66;
  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1DB156674((v48 > 1), v49 + 1, 1, v47);
  }

  *(v47 + 2) = v49 + 1;
  v50 = &v47[40 * v49];
  v51 = v67;
  v52 = v68;
  v50[64] = v69;
  *(v50 + 2) = v51;
  *(v50 + 3) = v52;
  v73 = v47;
  sub_1DB1445E0(v71, &qword_1ECC26F30, &unk_1DB2BFA90);
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v53);
  *(v63 + 32) = v73;
  Logger.error(_:)(v63, v65, v64);

  __swift_destroy_boxed_opaque_existential_1(&v74);
  *&v74 = v66;
  swift_getWitnessTable();
  if ((sub_1DB2BB224() & 1) == 0)
  {
    goto LABEL_26;
  }

  *&v74 = 0;
  *(&v74 + 1) = 0xE000000000000000;
  sub_1DB2BB4F4();
  v67 = v74;
  MEMORY[0x1E1283490](0xD00000000000004BLL, 0x80000001DB2D4D10);
  v54 = *(v18 + 16);
  if (!v54)
  {
    v55 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *&v74 = v55;
    sub_1DB148C3C(&v74);
    v58 = sub_1DB2BAD24();
    v60 = v59;

    MEMORY[0x1E1283490](v58, v60);

    v61 = v67;
    sub_1DB14A10C();
    swift_allocError();
    *v62 = v61;
    *(v62 + 16) = 0u;
    *(v62 + 32) = 0u;
    *(v62 + 48) = 4;
    swift_willThrow();
    goto LABEL_26;
  }

  v55 = sub_1DB1383EC(v54, 0);
  v56 = sub_1DB149DC0(&v74, v55 + 4, v54, v18);
  v10 = *(&v74 + 1);
  v43 = v74;

  sub_1DB149FCC(v43);
  if (v56 == v54)
  {
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
  MEMORY[0x1E1284A10](v9);

  __break(1u);
  MEMORY[0x1E1284A10](v43);

  __break(1u);
  return result;
}

_OWORD *Update.checkOversizeValues(using:)(_OWORD *result)
{
  v3 = result[9];
  v19[8] = result[8];
  v19[9] = v3;
  v19[10] = result[10];
  v4 = result[5];
  v19[4] = result[4];
  v19[5] = v4;
  v5 = result[7];
  v19[6] = result[6];
  v19[7] = v5;
  v6 = result[1];
  v19[0] = *result;
  v19[1] = v6;
  v7 = result[3];
  v19[2] = result[2];
  v19[3] = v7;
  *&v24[11] = *(v1 + 91);
  v8 = v1[5];
  v23 = v1[4];
  *v24 = v8;
  v9 = v1[1];
  v20[0] = *v1;
  v20[1] = v9;
  v10 = v1[3];
  v21 = v1[2];
  v22 = v10;
  if (v24[26])
  {
    v11 = v20[0];
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      v13 = v22;
      v14 = v21;
      sub_1DB1446A4(v20, &v18, &qword_1ECC28398, &qword_1DB2CEF70);

      v15 = sub_1DB21D488(v11, *(&v11 + 1), v14, v12, v19, v13);

      sub_1DB1445E0(v20, &qword_1ECC28398, &qword_1DB2CEF70);

      if (!v2)
      {
        if (*(v15 + 16))
        {
          sub_1DB14A10C();
          swift_allocError();
          *v16 = v15;
          *(v16 + 8) = 0u;
          *(v16 + 24) = 0u;
          *(v16 + 40) = 0;
          *(v16 + 48) = 6;
          return swift_willThrow();
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1DB14A10C();
      swift_allocError();
      *v17 = v20[0];
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      *(v17 + 48) = 3;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1DB21D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  *&v70 = *(a5 + 168);
  DataSpecification.subscript.getter(a3, a4, &v77);
  v11 = *(&v77 + 1);
  if (*(&v77 + 1))
  {
    v83 = a6;
    v12 = v78;
    v13 = v8;
    v14 = v7;
    v15 = v77;
    v70 = v77;
    v71 = v78;
    DataSpecification.Namespace.subscript.getter(a1, a2, &v77);
    v16 = *(&v77 + 1);
    v57 = v77;
    v59 = v78;
    v60 = v79;
    v61 = v80;
    v62 = v81[0];
    v17 = a2;
    v18 = a1;
    v19 = v81[1];
    v20 = v15;
    v7 = v14;
    v8 = v13;
    v21 = v17;
    sub_1DB1718E4(v20, v11, v12);
    v58 = v16;
    if (v16)
    {
      v66 = *(v83 + 16);
      if (!v66)
      {
        sub_1DB171928(v57, v58, v59, v60, v61, v62, v19);
        v55 = MEMORY[0x1E69E7CC0];
LABEL_43:
        v53 = sub_1DB21FB80(v55);

        return v53;
      }

      v22 = 0;
      v23 = *(v19 + 16);
      v64 = (v19 + 56);
      v65 = v83 + 32;
      v24 = -v23;
      v63 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        sub_1DB164AE0(v65 + 80 * v22, &v77);
        v83 = v22 + 1;
        v25 = v79;
        v26 = v80;
        __swift_project_boxed_opaque_existential_1(&v77, v79);
        v27 = Expressible.columnName.getter(v25, v26);
        v29 = v28;
        v30 = v82;
        v31 = __swift_project_boxed_opaque_existential_1(v81, v82);
        v76[3] = v30;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v76);
        result = (*(*(v30 - 8) + 16))(boxed_opaque_existential_0, v31, v30);
        v34 = -1;
        v35 = v64;
        do
        {
          if (v24 + v34 == -1)
          {
            goto LABEL_34;
          }

          if (++v34 >= *(v19 + 16))
          {
            __break(1u);
            return result;
          }

          v36 = *(v35 - 1);
          v37 = *v35;
          if (*(v35 - 3) == v27 && *(v35 - 2) == v29)
          {
            break;
          }

          v35 += 40;
          result = sub_1DB2BB924();
        }

        while ((result & 1) == 0);
        if (v37 >> 6)
        {
          if (v37 >> 6 != 1 || (v37 & 1) != 0)
          {
            break;
          }
        }

        else if (v37)
        {
          break;
        }

        sub_1DB1446A4(v76, &v70, &qword_1ECC26F30, &unk_1DB2BFA90);
        if (!v72)
        {
          sub_1DB1445E0(&v70, &qword_1ECC26F30, &unk_1DB2BFA90);

          v22 = v83;
LABEL_35:
          sub_1DB1445E0(v76, &qword_1ECC26F30, &unk_1DB2BFA90);
          sub_1DB164B3C(&v77);
          goto LABEL_36;
        }

        sub_1DB144640(&v70, &v74);
        sub_1DB1444CC(&v74, &v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C78, &qword_1DB2C2D80);
        if (swift_dynamicCast())
        {
          sub_1DB1355D0(v67, &v70);
          v39 = v72;
          v40 = v73;
          __swift_project_boxed_opaque_existential_1(&v70, v72);
          v41 = sub_1DB21E8CC(v39, v40);
          __swift_destroy_boxed_opaque_existential_1(&v70);
        }

        else
        {
          v68 = 0;
          memset(v67, 0, sizeof(v67));
          sub_1DB1445E0(v67, &qword_1ECC27C70, &qword_1DB2C2D68);
          v42 = __swift_project_boxed_opaque_existential_1(&v74, v75);
          MEMORY[0x1EEE9AC00](v42);
          (*(v44 + 16))(&v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
          v45 = sub_1DB2BADF4();
          v47 = v46;
          if ((v46 & 0x1000000000000000) != 0)
          {
            v41 = sub_1DB2BAF34();
          }

          else
          {

            if ((v47 & 0x2000000000000000) != 0)
            {
              v41 = HIBYTE(v47) & 0xF;
            }

            else
            {
              v41 = v45 & 0xFFFFFFFFFFFFLL;
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v74);
        if (v41 > 0 && v36 < v41)
        {
          sub_1DB1445E0(v76, &qword_1ECC26F30, &unk_1DB2BFA90);
          sub_1DB164B3C(&v77);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v48 = v63;
          }

          else
          {
            v48 = sub_1DB1572F0(0, *(v63 + 2) + 1, 1, v63);
          }

          v50 = *(v48 + 2);
          v49 = *(v48 + 3);
          if (v50 >= v49 >> 1)
          {
            v48 = sub_1DB1572F0((v49 > 1), v50 + 1, 1, v48);
          }

          *(v48 + 2) = v50 + 1;
          v63 = v48;
          v51 = &v48[16 * v50];
          *(v51 + 4) = v27;
          *(v51 + 5) = v29;
          v22 = v83;
LABEL_36:
          if (v22 != v66)
          {
            continue;
          }

          sub_1DB171928(v57, v58, v59, v60, v61, v62, v19);
          v55 = v63;
          goto LABEL_43;
        }

        break;
      }

LABEL_34:

      v22 = v83;
      goto LABEL_35;
    }
  }

  else
  {
    v21 = a2;
    v18 = a1;
  }

  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
  MEMORY[0x1E1283490](v18, v21);
  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
  MEMORY[0x1E1283490](v8, v7);
  v52 = v77;
  v78 = 0;
  LOBYTE(v79) = 5;
  v53 = sub_1DB171870();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v54 = v52;
  *(v54 + 16) = 0;
  *(v54 + 24) = 5;
  return v53;
}

uint64_t sub_1DB21DB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v32 = *(a5 + 168);
  DataSpecification.subscript.getter(a3, a4, &v26);
  v11 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    v40 = a6;
    v12 = v26;
    v13 = v27;
    v32 = v26;
    v33 = v27;
    DataSpecification.Namespace.subscript.getter(a1, a2, &v26);
    v14 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v15 = v30;
      v25 = v31;
      v17 = v28;
      v16 = v29;
      v18 = v27;
      v19 = v26;
      v34 = v26;
      v35 = v27;
      v36 = v28 & 1;
      v37 = v29;
      v38 = v30 & 1;
      v39 = v31;
      sub_1DB1718E4(v12, v11, v13);
      sub_1DB21FED0(v19, v14, v18, v17, v16, v15, v25);
      v20 = sub_1DB21FCFC(v40, &v34);
      sub_1DB171928(v19, v14, v18, v17, v16, v15, v25);
      sub_1DB171928(v19, v14, v18, v17, v16, v15, v25);
      v21 = sub_1DB21FB80(v20);

      return v21;
    }

    sub_1DB1718E4(v12, v11, v13);
  }

  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
  MEMORY[0x1E1283490](a1, a2);
  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
  MEMORY[0x1E1283490](a3, a4);
  v23 = v26;
  v27 = 0;
  LOBYTE(v28) = 5;
  sub_1DB171870();
  swift_willThrowTypedImpl();
  result = swift_allocError();
  *v24 = v23;
  *(v24 + 16) = 0;
  *(v24 + 24) = 5;
  return result;
}

unint64_t RowSetters.columnsForOversizeValues(in:database:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = *(a5 + 168);
  DataSpecification.subscript.getter(a3, a4, &v30);
  v12 = v31;
  if (!v31)
  {
    goto LABEL_5;
  }

  v29 = a7;
  v13 = v30;
  v14 = v32;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  DataSpecification.Namespace.subscript.getter(a1, a2, &v30);
  v15 = v31;
  if (!v31)
  {
    sub_1DB1718E4(v13, v12, v14);
LABEL_5:
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
    MEMORY[0x1E1283490](a1, a2);
    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
    MEMORY[0x1E1283490](a3, a4);
    v23 = v30;
    v24 = v31;
    v32 = 0;
    LOBYTE(v33) = 5;
    v22 = sub_1DB171870();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v25 = v23;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0;
    *(v25 + 24) = 5;
    return v22;
  }

  v27 = v36;
  v28 = v35;
  v17 = v33;
  v16 = v34;
  v18 = v32;
  v19 = v30;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v43 = v33 & 1;
  v44 = v34;
  v45 = v35 & 1;
  v46 = v36;
  sub_1DB1718E4(v13, v12, v14);
  MEMORY[0x1EEE9AC00](v20);
  v21 = (*(v29 + 24))(sub_1DB21FB78);
  sub_1DB171928(v19, v15, v18, v17, v16, v28, v27);
  v22 = sub_1DB21FB80(v21);

  return v22;
}

uint64_t sub_1DB21E010(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = a4[1];
  v21 = *a4;
  v22 = v6;
  v23 = a4[2];
  v24 = *(a4 + 6);
  DataSpecification.Namespace.Table.subscript.getter(a1, a2, &v25);
  result = *(&v25 + 1);
  if (!*(&v25 + 1))
  {
    return result;
  }

  v8 = v26;

  if (BYTE8(v8) & 0x80) != 0 || (BYTE8(v8))
  {
    return 0;
  }

  sub_1DB1446A4(a3, &v21, &qword_1ECC26F30, &unk_1DB2BFA90);
  if (!*(&v22 + 1))
  {
    sub_1DB1445E0(&v21, &qword_1ECC26F30, &unk_1DB2BFA90);
    return 0;
  }

  sub_1DB144640(&v21, &v19);
  sub_1DB1444CC(&v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C78, &qword_1DB2C2D80);
  if (swift_dynamicCast())
  {
    sub_1DB1355D0(&v25, &v21);
    v9 = *(&v22 + 1);
    v10 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    v11 = sub_1DB21E8CC(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_1DB1445E0(&v25, &qword_1ECC27C70, &qword_1DB2C2D68);
    v12 = __swift_project_boxed_opaque_existential_1(&v19, v20);
    MEMORY[0x1EEE9AC00](v12);
    (*(v14 + 16))(&v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v15 = sub_1DB2BADF4();
    v17 = v16;
    if ((v16 & 0x1000000000000000) != 0)
    {
      v11 = sub_1DB2BAF34();
    }

    else
    {

      if ((v17 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v17) & 0xF;
      }

      else
      {
        v11 = v15 & 0xFFFFFFFFFFFFLL;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v19);
  result = 0;
  if (v11 >= 1 && v8 < *(&v8 + 1))
  {

    return a1;
  }

  return result;
}

BOOL sub_1DB21E2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a6[9];
  v21[8] = a6[8];
  v21[9] = v10;
  v21[10] = a6[10];
  v11 = a6[5];
  v21[4] = a6[4];
  v21[5] = v11;
  v12 = a6[7];
  v21[6] = a6[6];
  v21[7] = v12;
  v13 = a6[1];
  v21[0] = *a6;
  v21[1] = v13;
  v14 = a6[3];
  v21[2] = a6[2];
  v21[3] = v14;
  v15 = (*(a9 + 16))(a2, a3, a4, a5, v21, a8);
  if (!v9)
  {
    v17 = v15;

    sub_1DB21E370(v18);
    v19 = *(v17 + 16);

    return v19 == 0;
  }

  return v16;
}

uint64_t sub_1DB21E370(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1DB21EB60(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}