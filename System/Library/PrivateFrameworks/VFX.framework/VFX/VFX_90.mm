uint64_t _s8MetadataVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t _s8MetadataVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _s12MetadataTypeOwxx(void *a1)
{
  result = a1[1];
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 _s12MetadataTypeOwcp(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
    *(a1 + 32) = *(a2 + 32);
  }

  return result;
}

void *_s12MetadataTypeOwca(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];

      return a1;
    }

LABEL_7:
    v5 = *a2;
    v6 = *(a2 + 1);
    a1[4] = a2[4];
    *a1 = v5;
    *(a1 + 1) = v6;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t _s12MetadataTypeOwta(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      v6 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v6;
      *(v4 + 32) = *(a2 + 32);
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      *(v4 + 16) = *(a2 + 16);

      *(v4 + 24) = *(a2 + 24);
    }

    return v4;
  }

  return result;
}

uint64_t _s12MetadataTypeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFC4 && *(a1 + 40))
  {
    return (*a1 + 2147483589);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 58;
  if (v4 >= 0x3C)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s12MetadataTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFC5)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483589;
    if (a3 >= 0x7FFFFFC5)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFC5)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 58;
    }
  }

  return result;
}

double sub_1AF8053FC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AF80543C()
{
  result = qword_1EB63EEF0;
  if (!qword_1EB63EEF0)
  {
    result = swift_getWitnessTable(byte_1AFE79384, &_s12MetadataTypeON, v0, v1);
    atomic_store(result, &qword_1EB63EEF0);
  }

  return result;
}

unint64_t sub_1AF805494()
{
  result = qword_1EB63EEF8;
  if (!qword_1EB63EEF8)
  {
    result = swift_getWitnessTable(byte_1AFE793AC, &_s8MetadataVN, v0, v1);
    atomic_store(result, &qword_1EB63EEF8);
  }

  return result;
}

uint64_t sub_1AF8054E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1AF805568(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v6 = *(a1 + 16);

  if (v6)
  {
    v7 = (a1 + 64);
    do
    {
      v8 = *(v7 - 4);
      v9 = *(v7 - 3);
      v10 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;
      v42 = v8;
      v43 = v9;
      v44 = v10;
      v45 = v11;
      v46 = v12;
      sub_1AF687F90(v8, v9, v10, v11, v12);
      a2(&v47, &v42);
      sub_1AF687FE4(v8, v9, v10, v11, v12);
      v13 = v48;
      if (!v48)
      {
        break;
      }

      v14 = v6;
      v15 = v47;
      v42 = v47;
      v43 = v48;
      v37 = v50;
      v38 = v51;
      v39 = v49;
      v40 = v52;
      v41 = v53;
      v16 = *a5;
      v18 = sub_1AF419914(v47, v48);
      v19 = v17;
      v20 = v16[2] + ((v17 & 1) == 0);
      if (v16[3] >= v20)
      {
        if (a4)
        {
          v23 = *a5;
          if (v17)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_1AF849A64();
          v23 = *a5;
          if (v19)
          {
LABEL_13:
            v26 = (v23[7] + 40 * v18);
            v27 = *v26;
            v28 = v26[1];
            v29 = v26[2];
            v30 = v26[3];
            v31 = v26[4];
            v32 = swift_allocError();
            swift_willThrow();
            sub_1AF687F90(v27, v28, v29, v30, v31);

            swift_bridgeObjectRelease_n();
            sub_1AF687FE4(v27, v28, v29, v30, v31);
            v54 = v32;
            v33 = v32;
            sub_1AF61FF58();
            if ((swift_dynamicCast() & 1) == 0)
            {
              sub_1AF687FE4(v39, v37, v38, v40, v41);

              return;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_1AF835D54(v20, a4 & 1);
        v21 = sub_1AF419914(v15, v13);
        if ((v19 & 1) != (v22 & 1))
        {
          sub_1AFDFF1A8();
          __break(1u);
LABEL_17:
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v18 = v21;
        v23 = *a5;
        if (v19)
        {
          goto LABEL_13;
        }
      }

      v7 += 5;
      a4 = 1;
      v23[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v23[6] + 16 * v18);
      *v24 = v15;
      v24[1] = v13;
      v25 = (v23[7] + 40 * v18);
      *v25 = v39;
      v25[1] = v37;
      v25[2] = v38;
      v25[3] = v40;
      v25[4] = v41;
      ++v23[2];
      v6 = v14 - 1;
    }

    while (v14 != 1);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF80592C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1AF805A8C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1AF805C64(v8, v4, v2);
  result = MEMORY[0x1B271DEA0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF805A8C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_10:
    v14 = (*(a3 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    sub_1AF4455CC(*(a3 + 56) + 88 * v10, v22);
    v20[0] = v15;
    v20[1] = v16;
    sub_1AF4455CC(v22, &v21);
    sub_1AF770DF0();
    sub_1AF770E44();
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1AFDFCD68();
    sub_1AF80C450(v20, sub_1AF7711B0);
    sub_1AF761390(v22);

    if ((v15 & 1) == 0)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++v23;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return sub_1AF8FAF28(a1, a2, v23, a3);
    }

    v13 = *(a3 + 8 * v4 + 72);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF805C64(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a1;
    v5 = a2;
    bzero(a1, 8 * a2);
    a1 = v4;
    a2 = v5;
  }

  v6 = sub_1AF805A8C(a1, a2, a3);

  return v6;
}

uint64_t sub_1AF805CD4(float32x4_t *a1, void *a2)
{
  v2 = a2;
  v4 = a1->i64[0] == *a2 && a1->i64[1] == a2[1];
  if (!v4 && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = a1[2];
  v171 = a1[1];
  v172 = v5;
  v173 = a1[3].i64[0];
  v6 = *(v2 + 2);
  v168 = *(v2 + 1);
  v169 = v6;
  v170 = v2[6];
  v7 = sub_1AF7FE65C();
  v9 = v8;
  if (v7 != sub_1AF7FE65C() || v9 != v10)
  {
    v11 = sub_1AFDFEE28();

    if (v11)
    {
      goto LABEL_10;
    }

LABEL_17:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

LABEL_10:
  switch(v171.i64[1])
  {
    case 0:
      v38 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v39 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v38 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      LOBYTE(v2) = v39 ^ v156.i8[0] ^ 1;
      return v2 & 1;
    case 1:
    case 5:
      v57 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v52 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v57 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v53 = v156.u8[0];
      goto LABEL_47;
    case 2:
    case 6:
      v51 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v52 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v51 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v53 = v156.u16[0];
      goto LABEL_47;
    case 3:
    case 7:
    case 0x1BLL:
      v56 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v52 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v56 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v53 = v156.i32[0];
LABEL_47:
      LOBYTE(v2) = v52 == v53;
      return v2 & 1;
    case 4:
    case 8:
    case 9:
      v36 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v37 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v36 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      LOBYTE(v2) = v37 == v156.i64[0];
      return v2 & 1;
    case 0xALL:
      v43 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80DBD4(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
      swift_dynamicCast();
      v44 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v43 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v45 = 0;
LABEL_103:
      v138 = v44;
      v109 = *(&v138 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v45 & 1)));
      v139 = v156.i64[0];
      LOBYTE(v2) = v109 == *(&v139 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v45 & 1)));
      while (v45 != 1)
      {
        ++v45;
        if (v2)
        {
          goto LABEL_103;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0xBLL:
      v54 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80DBD4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
      swift_dynamicCast();
      v129 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v54 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v55 = 0;
LABEL_109:
      v140 = v129;
      v111 = *(&v140 & 0xFFFFFFFFFFFFFFF3 | (4 * (v55 & 3)));
      v141 = v156;
      LOBYTE(v2) = v111 == *(&v141 & 0xFFFFFFFFFFFFFFF3 | (4 * (v55 & 3)));
      while (v55 != 2)
      {
        ++v55;
        if (v2)
        {
          goto LABEL_109;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0xCLL:
      v70 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80DBD4(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
      swift_dynamicCast();
      v132 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v70 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v71 = 0;
LABEL_115:
      v142 = v132;
      v113 = *(&v142 & 0xFFFFFFFFFFFFFFF3 | (4 * (v71 & 3)));
      v143 = v156;
      LOBYTE(v2) = v113 == *(&v143 & 0xFFFFFFFFFFFFFFF3 | (4 * (v71 & 3)));
      while (v71 != 3)
      {
        ++v71;
        if (v2)
        {
          goto LABEL_115;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0xDLL:
      v46 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v47 = *&v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v46 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      LOBYTE(v2) = v47 == v156.f32[0];
      return v2 & 1;
    case 0xELL:
      v48 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80DBD4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      swift_dynamicCast();
      v49 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v48 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v50 = 0;
LABEL_106:
      v144 = v49;
      v110 = *(&v144 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v50 & 1)));
      v145 = v156.i64[0];
      LOBYTE(v2) = v110 == *(&v145 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v50 & 1)));
      while (v50 != 1)
      {
        ++v50;
        if (v2)
        {
          goto LABEL_106;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0xFLL:
      v68 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80DBD4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      swift_dynamicCast();
      v131 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v68 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v69 = 0;
LABEL_112:
      v146 = v131;
      v112 = *(&v146 & 0xFFFFFFFFFFFFFFF3 | (4 * (v69 & 3)));
      v147 = v156;
      LOBYTE(v2) = v112 == *(&v147 & 0xFFFFFFFFFFFFFFF3 | (4 * (v69 & 3)));
      while (v69 != 2)
      {
        ++v69;
        if (v2)
        {
          goto LABEL_112;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0x10:
      v72 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80DBD4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      swift_dynamicCast();
      v133 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v72 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v73 = 0;
LABEL_118:
      v148 = v133;
      v114 = *(&v148 & 0xFFFFFFFFFFFFFFF3 | (4 * (v73 & 3)));
      v149 = v156;
      LOBYTE(v2) = v114 == *(&v149 & 0xFFFFFFFFFFFFFFF3 | (4 * (v73 & 3)));
      while (v73 != 3)
      {
        ++v73;
        if (v2)
        {
          goto LABEL_118;
        }

        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 0x11:
      v30 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      type metadata accessor for simd_float2x2(0);
      swift_dynamicCast();
      v31 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v30 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v32 = vand_s8(vceq_f32(*(&v31 + 8), *&v156.u32[2]), vceq_f32(*&v31, *v156.f32));
      goto LABEL_57;
    case 0x12:
      v28 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      type metadata accessor for simd_float2x3(0);
      swift_dynamicCast();
      v121 = v167;
      v127 = v166;
      sub_1AF80C918((v2 + 7), &v158, &qword_1ED726850, v28 + 8);
      sub_1AF449D40(&v158, v165);
      swift_dynamicCast();
      v29 = vandq_s8(vceqq_f32(v121, v157), vceqq_f32(v127, v156));
      goto LABEL_67;
    case 0x13:
      v86 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      type metadata accessor for simd_float2x4(0);
      swift_dynamicCast();
      v126 = v167;
      v137 = v166;
      sub_1AF80C918((v2 + 7), &v158, &qword_1ED726850, v86 + 8);
      sub_1AF449D40(&v158, v165);
      swift_dynamicCast();
      v29 = vandq_s8(vceqq_f32(v126, v157), vceqq_f32(v137, v156));
      goto LABEL_81;
    case 0x14:
      v21 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      type metadata accessor for simd_float3x2(0);
      swift_dynamicCast();
      v22 = v158;
      v23 = v159;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v21 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v24 = vand_s8(vceq_f32(*(&v22 + 8), *&v156.u32[2]), vceq_f32(*&v22, *v156.f32));
      v25 = vceq_f32(v23, *v157.f32);
      goto LABEL_56;
    case 0x15:
      v74 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], v165, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v165, &v166);
      type metadata accessor for simd_float3x3(0);
      swift_dynamicCast();
      v119 = v162;
      v124 = v161;
      v134 = v163;
      sub_1AF80C918((v2 + 7), &v156, &qword_1ED726850, v74 + 8);
      sub_1AF449D40(&v156, &v158);
      swift_dynamicCast();
      v41 = vandq_s8(vceqq_f32(v119, v153), vceqq_f32(v124, v152));
      v42 = vceqq_f32(v134, v154);
      goto LABEL_66;
    case 0x16:
      v82 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], v165, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v165, &v166);
      type metadata accessor for simd_float3x4(0);
      swift_dynamicCast();
      v120 = v162;
      v125 = v161;
      v135 = v163;
      sub_1AF80C918((v2 + 7), &v156, &qword_1ED726850, v82 + 8);
      sub_1AF449D40(&v156, &v158);
      swift_dynamicCast();
      v66 = vandq_s8(vceqq_f32(v120, v153), vceqq_f32(v125, v152));
      v67 = vceqq_f32(v135, v154);
      goto LABEL_73;
    case 0x17:
      v61 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      type metadata accessor for simd_float4x2(0);
      swift_dynamicCast();
      v62 = v166;
      v63 = v167;
      sub_1AF80C918((v2 + 7), &v158, &qword_1ED726850, v61 + 8);
      sub_1AF449D40(&v158, v165);
      swift_dynamicCast();
      v24 = vand_s8(vceq_f32(*&v62.u32[2], *&v156.u32[2]), vceq_f32(*v62.f32, *v156.f32));
      v25 = vand_s8(vceq_f32(*v63.f32, *v157.f32), vceq_f32(*&v63.u32[2], *&v157.u32[2]));
LABEL_56:
      v32 = vand_s8(v24, v25);
LABEL_57:
      v64 = vpmin_u32(v32, v32).u32[0];
      goto LABEL_82;
    case 0x18:
      v40 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], v165, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v165, &v166);
      type metadata accessor for simd_float4x3(0);
      swift_dynamicCast();
      v115 = v162;
      v117 = v161;
      v122 = v164;
      v128 = v163;
      sub_1AF80C918((v2 + 7), &v156, &qword_1ED726850, v40 + 8);
      sub_1AF449D40(&v156, &v158);
      swift_dynamicCast();
      v41 = vandq_s8(vceqq_f32(v115, v153), vceqq_f32(v117, v152));
      v42 = vandq_s8(vceqq_f32(v128, v154), vceqq_f32(v122, v155));
LABEL_66:
      v29 = vandq_s8(v41, v42);
LABEL_67:
      v29.i32[3] = v29.i32[2];
      goto LABEL_81;
    case 0x19:
      v65 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], v165, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v165, &v166);
      type metadata accessor for simd_float4x4(0);
      swift_dynamicCast();
      v116 = v162;
      v118 = v161;
      v123 = v164;
      v130 = v163;
      sub_1AF80C918((v2 + 7), &v156, &qword_1ED726850, v65 + 8);
      sub_1AF449D40(&v156, &v158);
      swift_dynamicCast();
      v66 = vandq_s8(vceqq_f32(v116, v153), vceqq_f32(v118, v152));
      v67 = vandq_s8(vceqq_f32(v130, v154), vceqq_f32(v123, v155));
LABEL_73:
      v29 = vandq_s8(v66, v67);
LABEL_81:
      v64 = vminvq_u32(v29);
LABEL_82:
      LODWORD(v2) = v64 >> 31;
      return v2 & 1;
    case 0x1ALL:
      v26 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v27 = *&v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v26 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      LOBYTE(v2) = v27 == *v156.i64;
      return v2 & 1;
    case 0x1CLL:
      v16 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v17 = v158;
      v18 = v159;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v16 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v19 = v156.i64[1];
      v20 = v157.u8[0];
      if ((sub_1AFB7B0BC(v17, v156.i64[0]) & 1) != 0 && sub_1AFB7B128(*(&v17 + 1), v19))
      {

        LOBYTE(v2) = v18 == v20;
        return v2 & 1;
      }

LABEL_16:

      goto LABEL_17;
    case 0x1DLL:
    case 0x1ELL:
    case 0x1FLL:
    case 0x20:
    case 0x21:
    case 0x26:
    case 0x29:
LABEL_11:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v161.i64[0] = 0;
      v161.i64[1] = 0xE000000000000000;
      sub_1AFDFE218();
      v152 = v161;
      MEMORY[0x1B2718AE0](0xD000000000000030, 0x80000001AFF35FB0);
      v161 = v171;
      v162 = v172;
      v163.i64[0] = v173;
      sub_1AFDFE458();
      v12 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v108 = v12;
        swift_once();
        v12 = v108;
      }

      v161.i64[0] = 0;
      sub_1AF0D4F18(v12, &v161, v152.i64[0], v152.i64[1]);
      goto LABEL_16;
    case 0x22:
    case 0x23:
      v14 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      swift_dynamicCast();
      v15 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v14 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      if (v15 == *&v156)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = sub_1AFDFEE28();
      }

      goto LABEL_69;
    case 0x24:
      v83 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      type metadata accessor for simd_quatf(0);
      swift_dynamicCast();
      v136 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v83 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      v84 = 0;
      break;
    case 0x25:
      v75 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
      swift_dynamicCast();
      v76 = v158;
      v77 = v159;
      v78 = v160;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v75 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      LOBYTE(v2) = sub_1AF67930C(v76, *(&v76 + 1), v77, v78, v156.i64[0], v156.i64[1], v157.i64[0], v157.i8[8]);

LABEL_69:

      return v2 & 1;
    case 0x27:
      v33 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      swift_dynamicCast();
      v34 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v33 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      LOBYTE(v2) = v34 == v156.i64[0] && *(&v34 + 1) == v156.i64[1];
      return v2 & 1;
    case 0x28:
      v58 = MEMORY[0x1E69E7CA0];
      sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(&v152, &v161);
      sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
      swift_dynamicCast();
      v59 = v158;
      sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v58 + 8);
      sub_1AF449D40(v165, &v166);
      swift_dynamicCast();
      LOBYTE(v2) = *(&v59 + 1) == v156.f32[1] && *&v59 == v156.f32[0];
      return v2 & 1;
    default:
      switch(v171.i64[1])
      {
        case '*':
          goto LABEL_11;
        case '+':
          v79 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v80 = v158;
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v79 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB7B688(v80, v156.i64[0]);
          goto LABEL_100;
        case ',':
          v97 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v97 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B44();
          goto LABEL_100;
        case '-':
          v100 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v100 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B48();
          goto LABEL_100;
        case '.':
          v93 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v93 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B4C();
          goto LABEL_100;
        case '/':
          v102 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v102 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B50();
          goto LABEL_100;
        case '0':
          v105 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v105 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B44();
          goto LABEL_100;
        case '1':
          v101 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v101 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B48();
          goto LABEL_100;
        case '2':
          v107 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v107 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B4C();
          goto LABEL_100;
        case '3':
          v96 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v96 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B50();
          goto LABEL_100;
        case '4':
          v106 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v106 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB93B50();
          goto LABEL_100;
        case '5':
          v91 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v92 = v158;
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v91 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB7B128(v92, v156.i64[0]);
          goto LABEL_100;
        case '6':
          v94 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF44219C(0);
          swift_dynamicCast();
          v95 = v158;
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v94 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB7B864(v95, v156.i64[0]);
          goto LABEL_100;
        case '7':
          v103 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF4420DC(0);
          swift_dynamicCast();
          v104 = v158;
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v103 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB7B8D0(v104, v156.i64[0]);
          goto LABEL_100;
        case '8':
          v89 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF6560F0(0);
          swift_dynamicCast();
          v90 = v158;
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v89 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB7B0BC(v90, v156.i64[0]);
          goto LABEL_100;
        case '9':
          v98 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF80C8C8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          swift_dynamicCast();
          v99 = v158;
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v98 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB7B948(v99, v156.i64[0]);
          goto LABEL_100;
        case ':':
          v87 = MEMORY[0x1E69E7CA0];
          sub_1AF80C918(&a1[3].i64[1], &v152, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
          sub_1AF449D40(&v152, &v161);
          sub_1AF5877E4(0);
          swift_dynamicCast();
          v88 = v158;
          sub_1AF80C918((v2 + 7), v165, &qword_1ED726850, v87 + 8);
          sub_1AF449D40(v165, &v166);
          swift_dynamicCast();
          v81 = sub_1AFB7B9D0(v88, v156.i64[0]);
LABEL_100:
          LOBYTE(v2) = v81;

          break;
        default:
          LOBYTE(v2) = 1;
          break;
      }

      return v2 & 1;
  }

LABEL_77:
  v150 = v136;
  v85 = *(&v150 & 0xFFFFFFFFFFFFFFF3 | (4 * (v84 & 3)));
  v151 = v156;
  LOBYTE(v2) = v85 == *(&v151 & 0xFFFFFFFFFFFFFFF3 | (4 * (v84 & 3)));
  while (v84 != 3)
  {
    ++v84;
    if (v2)
    {
      goto LABEL_77;
    }

    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t sub_1AF8083E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1AFDFD078();

  return sub_1AFDFD1F8();
}

uint64_t sub_1AF808478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_dynamicCastMetatype();
  v5 = 0uLL;
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    sub_1AF80C8C8(0, &qword_1EB63E718, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      result = swift_dynamicCastMetatype();
      if (result || (sub_1AF80C8C8(0, &qword_1EB63F060, MEMORY[0x1E69E7508], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
      {
        v6 = 0;
        v8 = 0;
        v7 = 1;
      }

      else
      {
        result = swift_dynamicCastMetatype();
        if (result || (sub_1AF80C8C8(0, &qword_1EB63F068, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
        {
          v6 = 0;
          v8 = 0;
          v7 = 2;
        }

        else
        {
          result = swift_dynamicCastMetatype();
          if (result || (sub_1AF80C8C8(0, &qword_1EB63F070, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
          {
            v6 = 0;
            v8 = 0;
            v7 = 3;
          }

          else
          {
            result = swift_dynamicCastMetatype();
            if (result || (sub_1AF80C8C8(0, &qword_1EB642E50, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
            {
              v6 = 0;
              v8 = 0;
              v7 = 4;
            }

            else
            {
              result = swift_dynamicCastMetatype();
              if (result || (sub_1AF80C8C8(0, &qword_1EB63F078, MEMORY[0x1E69E7230], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
              {
                v6 = 0;
                v8 = 0;
                v7 = 5;
              }

              else
              {
                result = swift_dynamicCastMetatype();
                if (result || (sub_1AF80C8C8(0, &qword_1EB63F080, MEMORY[0x1E69E7290], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                {
                  v6 = 0;
                  v8 = 0;
                  v7 = 6;
                }

                else
                {
                  result = swift_dynamicCastMetatype();
                  if (result || (sub_1AF80C8C8(0, &qword_1ED7268C0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                  {
                    v6 = 0;
                    v8 = 0;
                    v7 = 7;
                  }

                  else
                  {
                    result = swift_dynamicCastMetatype();
                    if (result || (sub_1AF80C8C8(0, &qword_1EB63F088, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                    {
                      v6 = 0;
                      v8 = 0;
                      v7 = 8;
                    }

                    else
                    {
                      result = swift_dynamicCastMetatype();
                      if (result || (sub_1AF80C8C8(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                      {
                        v6 = 0;
                        v8 = 0;
                        v7 = 9;
                      }

                      else
                      {
                        sub_1AF80DBD4(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
                        result = swift_dynamicCastMetatype();
                        if (result || (sub_1AF80C514(0), (result = swift_dynamicCastMetatype()) != 0))
                        {
                          v6 = 0;
                          v8 = 0;
                          v7 = 10;
                        }

                        else
                        {
                          sub_1AF80DBD4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
                          result = swift_dynamicCastMetatype();
                          if (result || (sub_1AF80C5A4(0), (result = swift_dynamicCastMetatype()) != 0))
                          {
                            v6 = 0;
                            v8 = 0;
                            v7 = 11;
                          }

                          else
                          {
                            sub_1AF80DBD4(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
                            result = swift_dynamicCastMetatype();
                            if (result || (sub_1AF80C634(0), (result = swift_dynamicCastMetatype()) != 0))
                            {
                              v6 = 0;
                              v8 = 0;
                              v7 = 12;
                            }

                            else
                            {
                              result = swift_dynamicCastMetatype();
                              if (result || (sub_1AF80C8C8(0, &qword_1EB63B188, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                              {
                                v6 = 0;
                                v8 = 0;
                                v7 = 13;
                              }

                              else
                              {
                                sub_1AF80DBD4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
                                result = swift_dynamicCastMetatype();
                                if (result || (sub_1AF80C6C4(0), (result = swift_dynamicCastMetatype()) != 0))
                                {
                                  v6 = 0;
                                  v8 = 0;
                                  v7 = 14;
                                }

                                else
                                {
                                  sub_1AF80DBD4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
                                  result = swift_dynamicCastMetatype();
                                  if (result || (sub_1AF5972FC(0), (result = swift_dynamicCastMetatype()) != 0))
                                  {
                                    v6 = 0;
                                    v8 = 0;
                                    v7 = 15;
                                  }

                                  else
                                  {
                                    sub_1AF80DBD4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
                                    result = swift_dynamicCastMetatype();
                                    if (result || (sub_1AF582D5C(0), (result = swift_dynamicCastMetatype()) != 0))
                                    {
                                      v6 = 0;
                                      v8 = 0;
                                      v7 = 16;
                                    }

                                    else
                                    {
                                      type metadata accessor for simd_float2x2(0);
                                      result = swift_dynamicCastMetatype();
                                      if (result || (sub_1AF80C4B0(0, &qword_1EB63F0B0, type metadata accessor for simd_float2x2, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                      {
                                        v6 = 0;
                                        v8 = 0;
                                        v7 = 17;
                                      }

                                      else
                                      {
                                        type metadata accessor for simd_float2x3(0);
                                        result = swift_dynamicCastMetatype();
                                        if (result || (sub_1AF80C4B0(0, &qword_1EB63F0B8, type metadata accessor for simd_float2x3, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                        {
                                          v6 = 0;
                                          v8 = 0;
                                          v7 = 18;
                                        }

                                        else
                                        {
                                          type metadata accessor for simd_float2x4(0);
                                          result = swift_dynamicCastMetatype();
                                          if (result || (sub_1AF80C4B0(0, &qword_1EB63F0C0, type metadata accessor for simd_float2x4, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                          {
                                            v6 = 0;
                                            v8 = 0;
                                            v7 = 19;
                                          }

                                          else
                                          {
                                            type metadata accessor for simd_float3x2(0);
                                            result = swift_dynamicCastMetatype();
                                            if (result || (sub_1AF80C4B0(0, &qword_1EB63F0C8, type metadata accessor for simd_float3x2, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                            {
                                              v6 = 0;
                                              v8 = 0;
                                              v7 = 20;
                                            }

                                            else
                                            {
                                              type metadata accessor for simd_float3x3(0);
                                              result = swift_dynamicCastMetatype();
                                              if (result || (sub_1AF80C4B0(0, &qword_1EB63F0D0, type metadata accessor for simd_float3x3, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                              {
                                                v6 = 0;
                                                v8 = 0;
                                                v7 = 21;
                                              }

                                              else
                                              {
                                                type metadata accessor for simd_float3x4(0);
                                                result = swift_dynamicCastMetatype();
                                                if (result || (sub_1AF80C4B0(0, &qword_1EB63F0D8, type metadata accessor for simd_float3x4, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                {
                                                  v6 = 0;
                                                  v8 = 0;
                                                  v7 = 22;
                                                }

                                                else
                                                {
                                                  type metadata accessor for simd_float4x2(0);
                                                  result = swift_dynamicCastMetatype();
                                                  if (result || (sub_1AF80C4B0(0, &qword_1EB63F0E0, type metadata accessor for simd_float4x2, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                  {
                                                    v6 = 0;
                                                    v8 = 0;
                                                    v7 = 23;
                                                  }

                                                  else
                                                  {
                                                    type metadata accessor for simd_float4x3(0);
                                                    result = swift_dynamicCastMetatype();
                                                    if (result || (sub_1AF80C4B0(0, &qword_1EB63F0E8, type metadata accessor for simd_float4x3, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                    {
                                                      v6 = 0;
                                                      v8 = 0;
                                                      v7 = 24;
                                                    }

                                                    else
                                                    {
                                                      type metadata accessor for simd_float4x4(0);
                                                      result = swift_dynamicCastMetatype();
                                                      if (result || (sub_1AF80C4B0(0, &qword_1EB632A48, type metadata accessor for simd_float4x4, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                      {
                                                        v6 = 0;
                                                        v8 = 0;
                                                        v7 = 25;
                                                      }

                                                      else
                                                      {
                                                        result = swift_dynamicCastMetatype();
                                                        if (result || (sub_1AF80C8C8(0, &qword_1EB639818, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                        {
                                                          v6 = 0;
                                                          v8 = 0;
                                                          v7 = 26;
                                                        }

                                                        else
                                                        {
                                                          result = swift_dynamicCastMetatype();
                                                          if (result || (sub_1AF80C8C8(0, &qword_1EB63F0F0, &type metadata for ColorU8, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                          {
                                                            v6 = 0;
                                                            v8 = 0;
                                                            v7 = 27;
                                                          }

                                                          else
                                                          {
                                                            result = swift_dynamicCastMetatype();
                                                            if (result || (sub_1AF80C8C8(0, &qword_1EB63F0F8, &type metadata for ColorRamp, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                            {
                                                              v6 = 0;
                                                              v8 = 0;
                                                              v7 = 28;
                                                            }

                                                            else
                                                            {
                                                              result = swift_dynamicCastMetatype();
                                                              if (result || (sub_1AF80C8C8(0, &qword_1EB63F100, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedVN, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                              {
                                                                v6 = 0;
                                                                v8 = 0;
                                                                v7 = 30;
                                                              }

                                                              else
                                                              {
                                                                result = swift_dynamicCastMetatype();
                                                                if (result || (sub_1AF80C8C8(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                {
                                                                  v6 = 0;
                                                                  v8 = 0;
                                                                  v7 = 34;
                                                                }

                                                                else
                                                                {
                                                                  sub_1AFDFC128();
                                                                  result = swift_dynamicCastMetatype();
                                                                  if (result || (sub_1AF80C4B0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                  {
                                                                    v6 = 0;
                                                                    v8 = 0;
                                                                    v7 = 35;
                                                                  }

                                                                  else
                                                                  {
                                                                    type metadata accessor for simd_quatf(0);
                                                                    result = swift_dynamicCastMetatype();
                                                                    if (result || (sub_1AF80C4B0(0, &qword_1EB63F108, type metadata accessor for simd_quatf, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                    {
                                                                      v6 = 0;
                                                                      v8 = 0;
                                                                      v7 = 36;
                                                                    }

                                                                    else
                                                                    {
                                                                      sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
                                                                      result = swift_dynamicCastMetatype();
                                                                      if (result || (sub_1AF593DD4(0), (result = swift_dynamicCastMetatype()) != 0))
                                                                      {
                                                                        v6 = 0;
                                                                        v8 = 0;
                                                                        v7 = 37;
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
                                                                        result = swift_dynamicCastMetatype();
                                                                        if (result || (sub_1AF80C754(0), (result = swift_dynamicCastMetatype()) != 0))
                                                                        {
                                                                          v6 = 0;
                                                                          v8 = 0;
                                                                          v7 = 39;
                                                                        }

                                                                        else
                                                                        {
                                                                          sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
                                                                          result = swift_dynamicCastMetatype();
                                                                          if (result || (sub_1AF80C7D8(0), (result = swift_dynamicCastMetatype()) != 0))
                                                                          {
                                                                            v6 = 0;
                                                                            v8 = 0;
                                                                            v7 = 40;
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_1AF80C8C8(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
                                                                            result = swift_dynamicCastMetatype();
                                                                            if (result || (sub_1AF80C85C(0, &qword_1EB63F120, &qword_1EB63ED80, MEMORY[0x1E69E6370]), (result = swift_dynamicCastMetatype()) != 0))
                                                                            {
                                                                              v6 = 0;
                                                                              v8 = 0;
                                                                              v7 = 43;
                                                                            }

                                                                            else
                                                                            {
                                                                              sub_1AF80C8C8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
                                                                              result = swift_dynamicCastMetatype();
                                                                              if (result || (sub_1AF80C85C(0, &qword_1EB63F128, &unk_1ED726C20, MEMORY[0x1E69E7508]), (result = swift_dynamicCastMetatype()) != 0))
                                                                              {
                                                                                v6 = 0;
                                                                                v8 = 0;
                                                                                v7 = 44;
                                                                              }

                                                                              else
                                                                              {
                                                                                sub_1AF80C8C8(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
                                                                                result = swift_dynamicCastMetatype();
                                                                                if (result || (sub_1AF80C85C(0, &qword_1EB63F130, &qword_1EB6332D0, MEMORY[0x1E69E75F8]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                {
                                                                                  v6 = 0;
                                                                                  v8 = 0;
                                                                                  v7 = 45;
                                                                                }

                                                                                else
                                                                                {
                                                                                  sub_1AF80C8C8(0, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
                                                                                  result = swift_dynamicCastMetatype();
                                                                                  if (result || (sub_1AF80C85C(0, &qword_1EB63F138, &qword_1EB63ED78, MEMORY[0x1E69E7668]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                  {
                                                                                    v6 = 0;
                                                                                    v8 = 0;
                                                                                    v7 = 46;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_1AF80C8C8(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
                                                                                    result = swift_dynamicCastMetatype();
                                                                                    if (result || (sub_1AF80C85C(0, &qword_1EB63F140, &qword_1EB63ED70, MEMORY[0x1E69E76D8]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                    {
                                                                                      v6 = 0;
                                                                                      v8 = 0;
                                                                                      v7 = 47;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      sub_1AF80C8C8(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
                                                                                      result = swift_dynamicCastMetatype();
                                                                                      if (result || (sub_1AF80C85C(0, &qword_1EB63F148, &qword_1EB63ED68, MEMORY[0x1E69E7230]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                      {
                                                                                        v6 = 0;
                                                                                        v8 = 0;
                                                                                        v7 = 48;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        sub_1AF80C8C8(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
                                                                                        result = swift_dynamicCastMetatype();
                                                                                        if (result || (sub_1AF80C85C(0, &qword_1EB63F150, &qword_1EB63ED60, MEMORY[0x1E69E7290]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                        {
                                                                                          v6 = 0;
                                                                                          v8 = 0;
                                                                                          v7 = 49;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          sub_1AF80C8C8(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
                                                                                          result = swift_dynamicCastMetatype();
                                                                                          if (result || (sub_1AF80C85C(0, &qword_1EB63F158, &qword_1EB63ED58, MEMORY[0x1E69E72F0]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                          {
                                                                                            v6 = 0;
                                                                                            v8 = 0;
                                                                                            v7 = 50;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            sub_1AF80C8C8(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
                                                                                            result = swift_dynamicCastMetatype();
                                                                                            if (result || (sub_1AF80C85C(0, &qword_1EB63F160, &qword_1EB63ED50, MEMORY[0x1E69E7360]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                            {
                                                                                              v6 = 0;
                                                                                              v8 = 0;
                                                                                              v7 = 51;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              sub_1AF80C8C8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
                                                                                              result = swift_dynamicCastMetatype();
                                                                                              if (result || (sub_1AF80C85C(0, &qword_1EB63A438, &qword_1ED726C50, MEMORY[0x1E69E6530]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                              {
                                                                                                v6 = 0;
                                                                                                v8 = 0;
                                                                                                v7 = 52;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1AF80C8C8(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
                                                                                                result = swift_dynamicCastMetatype();
                                                                                                if (result || (sub_1AF80C85C(0, &qword_1EB63F168, &qword_1ED723210, MEMORY[0x1E69E6448]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                {
                                                                                                  v6 = 0;
                                                                                                  v8 = 0;
                                                                                                  v7 = 53;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  sub_1AF44219C(0);
                                                                                                  result = swift_dynamicCastMetatype();
                                                                                                  if (result || (sub_1AF80C4B0(0, &qword_1EB63F170, sub_1AF44219C, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                  {
                                                                                                    v6 = 0;
                                                                                                    v8 = 0;
                                                                                                    v7 = 54;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    sub_1AF4420DC(0);
                                                                                                    result = swift_dynamicCastMetatype();
                                                                                                    if (result || (sub_1AF80C4B0(0, &qword_1EB63F178, sub_1AF4420DC, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                    {
                                                                                                      v6 = 0;
                                                                                                      v8 = 0;
                                                                                                      v7 = 55;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      sub_1AF6560F0(0);
                                                                                                      result = swift_dynamicCastMetatype();
                                                                                                      if (result || (sub_1AF80C4B0(0, &qword_1EB63F180, sub_1AF6560F0, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                      {
                                                                                                        v6 = 0;
                                                                                                        v8 = 0;
                                                                                                        v7 = 56;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        sub_1AF80C8C8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
                                                                                                        result = swift_dynamicCastMetatype();
                                                                                                        if (result || (sub_1AF80C85C(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                        {
                                                                                                          v6 = 0;
                                                                                                          v8 = 0;
                                                                                                          v7 = 57;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          sub_1AF5877E4(0);
                                                                                                          result = swift_dynamicCastMetatype();
                                                                                                          if (result || (sub_1AF80C4B0(0, &qword_1EB63F188, sub_1AF5877E4, MEMORY[0x1E69E6720]), (result = swift_dynamicCastMetatype()) != 0))
                                                                                                          {
                                                                                                            v6 = 0;
                                                                                                            v8 = 0;
                                                                                                            v7 = 58;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v11 = sub_1AF75D128(a1);
                                                                                                            v12 = v9;
                                                                                                            sub_1AF770DF0();
                                                                                                            sub_1AF770E44();
                                                                                                            v10 = sub_1AFDFCD68();

                                                                                                            if ((v10 & 1) == 0)
                                                                                                            {
                                                                                                              result = sub_1AF7F3770(&v11);
                                                                                                              v7 = v12;
                                                                                                              if (v12)
                                                                                                              {
                                                                                                                v5 = v14;
                                                                                                                v8 = v13;
                                                                                                                v6 = v11;
                                                                                                                goto LABEL_9;
                                                                                                              }
                                                                                                            }

                                                                                                            v6 = 0;
                                                                                                            v8 = 0;
                                                                                                            v7 = 42;
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v5 = 0uLL;
  }

LABEL_9:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  return result;
}

double sub_1AF809A8C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF770EE8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1AFDFF358();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D5A54(a1, v28);
  sub_1AFDFF318();
  sub_1AF441150(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  sub_1AFDFF338();
  v15 = sub_1AFDFF328();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    goto LABEL_15;
  }

  sub_1AF775228(v9, v6);
  v17 = (*(v16 + 88))(v6, v15);
  if (v17 == *MEMORY[0x1E69E75B8])
  {
    if (DynamicType == &type metadata for Entity)
    {
      v18 = 0;
      v26 = 0u;
      v27 = xmmword_1AFE76100;
LABEL_16:
      (*(v11 + 8))(v13, v10);
      goto LABEL_17;
    }

LABEL_15:
    sub_1AF808478(DynamicType, v28);
    v26 = v28[1];
    v27 = v28[0];
    v18 = v29;
    goto LABEL_16;
  }

  if (v17 == *MEMORY[0x1E69E75B0])
  {
    (*(v11 + 8))(v13, v10);
    v18 = 0;
    v26 = 0u;
    v27 = xmmword_1AFE76100;
  }

  else
  {
    if (v17 != *MEMORY[0x1E69E75A8])
    {
      (*(v16 + 8))(v6, v15);
      goto LABEL_15;
    }

    (*(v11 + 8))(v13, v10);
    sub_1AF441150(a1, a1[3]);
    v19 = swift_getDynamicType();
    v20 = swift_conformsToProtocol2();
    v18 = 0;
    if (v19)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = 41;
    if (v21)
    {
      v22 = 42;
    }

    *&v23 = 0;
    v26 = 0u;
    *(&v23 + 1) = v22;
    v27 = v23;
  }

LABEL_17:
  sub_1AF80C450(v9, sub_1AF770EE8);
  v25 = v26;
  result = *&v27;
  *a2 = v27;
  *(a2 + 16) = v25;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_1AF809DF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_1EB633E58 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB6C2AC8;
  if (!*(qword_1EB6C2AC8 + 16) || (v7 = sub_1AF419914(a1, a2), (v8 & 1) == 0))
  {
    v31 = a1;
    v32 = a2;
    sub_1AF770DF0();
    sub_1AF770E44();
    if (sub_1AFDFCD68())
    {
      if (sub_1AFDFD178())
      {
        v15 = sub_1AFDFD048();
        v16 = sub_1AF701628(v15, a1, a2);
        v18 = v17;
        v20 = v19;
        v22 = v21;

        a1 = MEMORY[0x1B27189E0](v16, v18, v20, v22);
        a2 = v23;
      }

      v24 = MEMORY[0x10];
      if (*(MEMORY[0x10] + 16))
      {
        v25 = sub_1AF419914(a1, a2);
        if (v26)
        {
          v27 = (*(v24 + 56) + 40 * v25);
          v10 = *v27;
          v11 = v27[1];
          v12 = v27[2];
          v13 = v27[3];
          v14 = v27[4];

          goto LABEL_12;
        }
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v32 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF33D30);
      MEMORY[0x1B2718AE0](a1, a2);

      v29 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v30 = v29;
        swift_once();
        v29 = v30;
      }

      v31 = 0;
      sub_1AF0D4F18(v29, &v31, 0, 0xE000000000000000);
    }

    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 59;
    goto LABEL_19;
  }

  v9 = (*(v6 + 56) + 40 * v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = v9[4];
  sub_1AF687F90(*v9, v11, v12, v13, v14);
LABEL_12:

LABEL_19:
  *a3 = v10;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v13;
  a3[4] = v14;
  return result;
}

uint64_t sub_1AF80A0EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF80A204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  sub_1AF80DBD4(0, &qword_1EB63EF00, sub_1AF80A4DC, &_s12MetadataTypeO6CustomV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF80A4DC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v6;
  v10 = v22;
  v26 = 0;
  v11 = sub_1AFDFE708();
  v13 = v12;
  v21 = v11;
  v25 = 1;
  v19 = sub_1AFDFE708();
  v20 = v14;
  sub_1AF7E88F0(0);
  v24 = 2;
  sub_1AF80A530(&qword_1EB63EF10, sub_1AF7DB4F8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1AFDFE768();
  (*(v9 + 8))(v8, v5);
  v15 = v23;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v21;
  v10[1] = v13;
  v17 = v20;
  v10[2] = v19;
  v10[3] = v17;
  v10[4] = v15;
  return result;
}

unint64_t sub_1AF80A4DC()
{
  result = qword_1EB63EF08;
  if (!qword_1EB63EF08)
  {
    result = swift_getWitnessTable(asc_1AFE79790, &_s12MetadataTypeO6CustomV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EF08);
  }

  return result;
}

uint64_t sub_1AF80A530(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7E88F0(255);
    v10 = v9;
    v11[0] = a2();
    v11[1] = a3;
    result = swift_getWitnessTable(a4, v10, v11);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80A5A8()
{
  result = qword_1ED72F780;
  if (!qword_1ED72F780)
  {
    sub_1AF80DBD4(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7440], v3, v0, v1);
    atomic_store(result, &qword_1ED72F780);
  }

  return result;
}

unint64_t sub_1AF80A638()
{
  result = qword_1ED72F748;
  if (!qword_1ED72F748)
  {
    sub_1AF80DBD4(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7468], v3, v0, v1);
    atomic_store(result, &qword_1ED72F748);
  }

  return result;
}

unint64_t sub_1AF80A6C8()
{
  result = qword_1ED72F6F0;
  if (!qword_1ED72F6F0)
  {
    sub_1AF80DBD4(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E74C0], v3, v0, v1);
    atomic_store(result, &qword_1ED72F6F0);
  }

  return result;
}

unint64_t sub_1AF80A758()
{
  result = qword_1EB63EF28;
  if (!qword_1EB63EF28)
  {
    result = swift_getWitnessTable(byte_1AFE71B88, &type metadata for ColorU8, v0, v1);
    atomic_store(result, &qword_1EB63EF28);
  }

  return result;
}

unint64_t sub_1AF80A7AC()
{
  result = qword_1ED7232E8;
  if (!qword_1ED7232E8)
  {
    result = swift_getWitnessTable(byte_1AFE6CB84, &type metadata for ColorRamp, v0, v1);
    atomic_store(result, &qword_1ED7232E8);
  }

  return result;
}

unint64_t sub_1AF80A800()
{
  result = qword_1ED724010[0];
  if (!qword_1ED724010[0])
  {
    sub_1AF80AF34(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    result = swift_getWitnessTable(byte_1AFE6CCDC, v3, v0, v1);
    atomic_store(result, qword_1ED724010);
  }

  return result;
}

unint64_t sub_1AF80A884()
{
  result = qword_1EB63EF30;
  if (!qword_1EB63EF30)
  {
    result = swift_getWitnessTable(asc_1AFE79768, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedVN, v0, v1);
    atomic_store(result, &qword_1EB63EF30);
  }

  return result;
}

unint64_t sub_1AF80A8D8()
{
  result = qword_1ED723208;
  if (!qword_1ED723208)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E6478];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1ED723208);
  }

  return result;
}

unint64_t sub_1AF80A96C()
{
  result = qword_1ED726C40;
  if (!qword_1ED726C40)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E6560];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1ED726C40);
  }

  return result;
}

unint64_t sub_1AF80AA00()
{
  result = qword_1EB63EF48;
  if (!qword_1EB63EF48)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7390];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF48);
  }

  return result;
}

unint64_t sub_1AF80AA94()
{
  result = qword_1EB63EF50;
  if (!qword_1EB63EF50)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7320];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF50);
  }

  return result;
}

unint64_t sub_1AF80AB28()
{
  result = qword_1EB63EF58;
  if (!qword_1EB63EF58)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E72B0];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF58);
  }

  return result;
}

unint64_t sub_1AF80ABBC()
{
  result = qword_1EB63EF60;
  if (!qword_1EB63EF60)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7250];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF60);
  }

  return result;
}

unint64_t sub_1AF80AC50()
{
  result = qword_1EB63EF68;
  if (!qword_1EB63EF68)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7708];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF68);
  }

  return result;
}

unint64_t sub_1AF80ACE4()
{
  result = qword_1EB63EF70;
  if (!qword_1EB63EF70)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7698];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF70);
  }

  return result;
}

unint64_t sub_1AF80AD78()
{
  result = qword_1EB63EF78;
  if (!qword_1EB63EF78)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7628];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF78);
  }

  return result;
}

unint64_t sub_1AF80AE0C()
{
  result = qword_1EB63EF80;
  if (!qword_1EB63EF80)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7528];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF80);
  }

  return result;
}

unint64_t sub_1AF80AEA0()
{
  result = qword_1EB63EF88;
  if (!qword_1EB63EF88)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E6390];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB63EF88);
  }

  return result;
}

void sub_1AF80AF34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF80AF88(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF80AF34(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80B014()
{
  result = qword_1EB63EF90;
  if (!qword_1EB63EF90)
  {
    sub_1AF80DBD4(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E74C0], v3, v0, v1);
    atomic_store(result, &qword_1EB63EF90);
  }

  return result;
}

unint64_t sub_1AF80B0A4()
{
  result = qword_1EB63EF98;
  if (!qword_1EB63EF98)
  {
    sub_1AF80DBD4(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7468], v3, v0, v1);
    atomic_store(result, &qword_1EB63EF98);
  }

  return result;
}

unint64_t sub_1AF80B134()
{
  result = qword_1EB63EFA0;
  if (!qword_1EB63EFA0)
  {
    sub_1AF80DBD4(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7440], v3, v0, v1);
    atomic_store(result, &qword_1EB63EFA0);
  }

  return result;
}

unint64_t sub_1AF80B1C4()
{
  result = qword_1EB63EFA8;
  if (!qword_1EB63EFA8)
  {
    result = swift_getWitnessTable(byte_1AFE79740, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedVN, v0, v1);
    atomic_store(result, &qword_1EB63EFA8);
  }

  return result;
}

uint64_t sub_1AF80B218(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5877E4(255);
    v10 = v9;
    v11 = sub_1AF5F8A30(a2, a3);
    result = swift_getWitnessTable(a4, v10, &v11);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80B294()
{
  result = qword_1ED72F710;
  if (!qword_1ED72F710)
  {
    sub_1AF80DBD4(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E74B0], v3, v0, v1);
    atomic_store(result, &qword_1ED72F710);
  }

  return result;
}

unint64_t sub_1AF80B324()
{
  result = qword_1ED72F758;
  if (!qword_1ED72F758)
  {
    sub_1AF80DBD4(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7458], v3, v0, v1);
    atomic_store(result, &qword_1ED72F758);
  }

  return result;
}

uint64_t sub_1AF80B3B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9 = a3();
    result = swift_getWitnessTable(a4, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80B424()
{
  result = qword_1ED72F798;
  if (!qword_1ED72F798)
  {
    sub_1AF80DBD4(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7430], v3, v0, v1);
    atomic_store(result, &qword_1ED72F798);
  }

  return result;
}

unint64_t sub_1AF80B4B4()
{
  result = qword_1EB63D188;
  if (!qword_1EB63D188)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E6458];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63D188);
  }

  return result;
}

unint64_t sub_1AF80B548()
{
  result = qword_1EB63C1C0;
  if (!qword_1EB63C1C0)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E6538];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63C1C0);
  }

  return result;
}

unint64_t sub_1AF80B5DC()
{
  result = qword_1EB63EFC8;
  if (!qword_1EB63EFC8)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7368];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63EFC8);
  }

  return result;
}

unint64_t sub_1AF80B670()
{
  result = qword_1EB63EFD0;
  if (!qword_1EB63EFD0)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E72F8];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63EFD0);
  }

  return result;
}

unint64_t sub_1AF80B704()
{
  result = qword_1EB63EFD8;
  if (!qword_1EB63EFD8)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7298];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63EFD8);
  }

  return result;
}

unint64_t sub_1AF80B798()
{
  result = qword_1EB63EFE0;
  if (!qword_1EB63EFE0)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7238];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63EFE0);
  }

  return result;
}

unint64_t sub_1AF80B82C()
{
  result = qword_1EB63EFE8;
  if (!qword_1EB63EFE8)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E76E0];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63EFE8);
  }

  return result;
}

unint64_t sub_1AF80B8C0()
{
  result = qword_1EB63EFF0;
  if (!qword_1EB63EFF0)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7670];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63EFF0);
  }

  return result;
}

unint64_t sub_1AF80B954()
{
  result = qword_1EB63EFF8;
  if (!qword_1EB63EFF8)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7600];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63EFF8);
  }

  return result;
}

unint64_t sub_1AF80B9E8()
{
  result = qword_1EB63F000;
  if (!qword_1EB63F000)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E7510];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63F000);
  }

  return result;
}

unint64_t sub_1AF80BA7C()
{
  result = qword_1EB63F008;
  if (!qword_1EB63F008)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF80C8C8(255, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E6378];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB63F008);
  }

  return result;
}

uint64_t sub_1AF80BB10(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF80AF34(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF80BB9C()
{
  result = qword_1EB63F018;
  if (!qword_1EB63F018)
  {
    sub_1AF80AF34(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    result = swift_getWitnessTable(byte_1AFE6CCB4, v3, v0, v1);
    atomic_store(result, &qword_1EB63F018);
  }

  return result;
}

unint64_t sub_1AF80BC20()
{
  result = qword_1EB63F020;
  if (!qword_1EB63F020)
  {
    result = swift_getWitnessTable(byte_1AFE6CB5C, &type metadata for ColorRamp, v0, v1);
    atomic_store(result, &qword_1EB63F020);
  }

  return result;
}

unint64_t sub_1AF80BC74()
{
  result = qword_1EB63F028;
  if (!qword_1EB63F028)
  {
    result = swift_getWitnessTable(byte_1AFE71B60, &type metadata for ColorU8, v0, v1);
    atomic_store(result, &qword_1EB63F028);
  }

  return result;
}

unint64_t sub_1AF80BCC8()
{
  result = qword_1EB63F030;
  if (!qword_1EB63F030)
  {
    sub_1AF80DBD4(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E74B0], v3, v0, v1);
    atomic_store(result, &qword_1EB63F030);
  }

  return result;
}

unint64_t sub_1AF80BD58()
{
  result = qword_1EB63F038;
  if (!qword_1EB63F038)
  {
    sub_1AF80DBD4(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7458], v3, v0, v1);
    atomic_store(result, &qword_1EB63F038);
  }

  return result;
}

unint64_t sub_1AF80BDE8()
{
  result = qword_1EB63F040;
  if (!qword_1EB63F040)
  {
    sub_1AF80DBD4(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7430], v3, v0, v1);
    atomic_store(result, &qword_1EB63F040);
  }

  return result;
}

uint64_t sub_1AF80BE78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    sub_1AF448018(v20, v21);
    v6 = sub_1AFDFEA78();
    sub_1AF809DF8(v6, v13, &v23);
    v8 = v24;
    if (v24 >= 0x3B)
    {
      sub_1AF448018(v20, v21);
      sub_1AF80C0BC();
      sub_1AFDFEAD8();

      sub_1AF80C110(&v23, &qword_1EB63E690, &_s12MetadataTypeON);
      v9 = v15;
      v8 = v16;
      v10 = v17;
      v11 = v18;
      v12 = v19;
    }

    else
    {
      v11 = v26;
      v12 = v27;
      v10 = v25;
      v9 = v23;
    }
  }

  else
  {
    sub_1AF441150(v20, v21);
    v5 = sub_1AFDFEE38();
    sub_1AF809DF8(v5, v7, v22);
    v9 = v22[0];
    v8 = v22[1];
    v10 = v22[2];
    v11 = v22[3];
    v12 = v22[4];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v9;
  a2[1] = v8;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  return result;
}

unint64_t sub_1AF80C0BC()
{
  result = qword_1EB63F048;
  if (!qword_1EB63F048)
  {
    result = swift_getWitnessTable(byte_1AFE79494, &_s12MetadataTypeO6CustomVN, v0, v1);
    atomic_store(result, &qword_1EB63F048);
  }

  return result;
}

uint64_t sub_1AF80C110(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF80C8C8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF80C180()
{
  result = qword_1EB63F050;
  if (!qword_1EB63F050)
  {
    result = swift_getWitnessTable(byte_1AFE7946C, &_s12MetadataTypeO6CustomVN, v0, v1);
    atomic_store(result, &qword_1EB63F050);
  }

  return result;
}

unint64_t sub_1AF80C1D4()
{
  result = qword_1EB6335D0;
  if (!qword_1EB6335D0)
  {
    result = swift_getWitnessTable(byte_1AFE796F0, &_s11MetadataSetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB6335D0);
  }

  return result;
}

void sub_1AF80C228(uint64_t a1)
{
  if (!qword_1EB633338)
  {
    sub_1AF80C2A4(255, &qword_1EB633348, &_s8MetadataVN, MEMORY[0x1E69E5E28]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB633338);
    }
  }
}

void sub_1AF80C2A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF80C304()
{
  result = qword_1EB633330;
  if (!qword_1EB633330)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF80C228(255);
    v4 = v3;
    v5[0] = sub_1AF80C3B4(&qword_1EB633340, sub_1AF774FD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v4, v5);
    atomic_store(result, &qword_1EB633330);
  }

  return result;
}

uint64_t sub_1AF80C3B4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF80C2A4(255, &qword_1EB633348, &_s8MetadataVN, MEMORY[0x1E69E5E28]);
    v10 = v9;
    v11[0] = a3;
    v11[1] = a2();
    result = swift_getWitnessTable(a4, v10, v11);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF80C450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF80C4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF80C514(uint64_t a1)
{
  if (!qword_1EB63F090)
  {
    sub_1AF80DBD4(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F090);
    }
  }
}

void sub_1AF80C5A4(uint64_t a1)
{
  if (!qword_1EB63F098)
  {
    sub_1AF80DBD4(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F098);
    }
  }
}

void sub_1AF80C634(uint64_t a1)
{
  if (!qword_1EB63F0A0)
  {
    sub_1AF80DBD4(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F0A0);
    }
  }
}

void sub_1AF80C6C4(uint64_t a1)
{
  if (!qword_1EB63F0A8)
  {
    sub_1AF80DBD4(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F0A8);
    }
  }
}

void sub_1AF80C754(uint64_t a1)
{
  if (!qword_1EB63F110)
  {
    sub_1AF80AF34(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F110);
    }
  }
}

void sub_1AF80C7D8(uint64_t a1)
{
  if (!qword_1EB63F118)
  {
    sub_1AF80AF34(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F118);
    }
  }
}

void sub_1AF80C85C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF80C8C8(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1AFDFDD58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF80C8C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF80C918(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF80C8C8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AF80C998(uint64_t a1)
{
  if (!qword_1EB63F190)
  {
    sub_1AF80C8C8(255, &qword_1EB6335B0, &_s8MetadataVN, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63F190);
    }
  }
}

uint64_t sub_1AF80CA20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  sub_1AF80DBD4(0, &qword_1EB63F1D0, sub_1AF80DB80, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF80DB80();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v13;
  v10 = sub_1AFDFE7E8();
  (*(v6 + 8))(v8, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v9 = v10;
  v9[1] = v10 + 0x76E15D3EFEFDCBBFLL;
  v9[2] = 0xC5004E441C522FB3 * v10 - 0x3AFFB1BBE3ADD04DLL;
  v9[3] = 0x77710069854EE241 - v10;
  v9[4] = 0x39109BB02ACBE635 * v10;
  return result;
}

uint64_t sub_1AF80CC24(uint64_t a1)
{
  sub_1AF80D868(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE79060;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  v3 = MEMORY[0x1E69E6370];
  *(v2 + 64) = 0;
  *(v2 + 72) = v3;
  *(v2 + 80) = xmmword_1AFE21110;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = MEMORY[0x1E69E7508];
  *(v2 + 128) = xmmword_1AFE72020;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 168) = MEMORY[0x1E69E75F8];
  *(v2 + 176) = xmmword_1AFE4C400;
  *(v2 + 192) = 0u;
  v4 = MEMORY[0x1E69E7668];
  *(v2 + 208) = 0;
  *(v2 + 216) = v4;
  *(v2 + 224) = xmmword_1AFE685E0;
  *(v2 + 240) = 0u;
  v5 = MEMORY[0x1E69E76D8];
  *(v2 + 256) = 0;
  *(v2 + 264) = v5;
  *(v2 + 272) = xmmword_1AFE72010;
  *(v2 + 288) = 0u;
  v6 = MEMORY[0x1E69E7230];
  *(v2 + 304) = 0;
  *(v2 + 312) = v6;
  *(v2 + 320) = xmmword_1AFE79040;
  *(v2 + 336) = 0u;
  v7 = MEMORY[0x1E69E7290];
  *(v2 + 352) = 0;
  *(v2 + 360) = v7;
  *(v2 + 368) = xmmword_1AFE79030;
  *(v2 + 384) = 0u;
  v8 = MEMORY[0x1E69E72F0];
  *(v2 + 400) = 0;
  *(v2 + 408) = v8;
  *(v2 + 416) = xmmword_1AFE79020;
  *(v2 + 432) = 0u;
  v9 = MEMORY[0x1E69E7360];
  *(v2 + 448) = 0;
  *(v2 + 456) = v9;
  *(v2 + 464) = xmmword_1AFE75F70;
  *(v2 + 480) = 0u;
  v10 = MEMORY[0x1E69E6530];
  *(v2 + 496) = 0;
  *(v2 + 504) = v10;
  *(v2 + 512) = xmmword_1AFE79070;
  v11 = MEMORY[0x1E69E7428];
  sub_1AF80DBD4(0, &qword_1ED722EC0, sub_1AF477BB4, v4, MEMORY[0x1E69E7428]);
  *(v2 + 528) = 0;
  *(v2 + 536) = 0u;
  *(v2 + 552) = v12;
  *(v2 + 560) = xmmword_1AFE79080;
  v13 = MEMORY[0x1E69E7450];
  sub_1AF80DBD4(0, &qword_1ED72F730, sub_1AF477BB4, v4, MEMORY[0x1E69E7450]);
  *(v2 + 576) = 0;
  *(v2 + 584) = 0u;
  *(v2 + 600) = v14;
  *(v2 + 608) = xmmword_1AFE79090;
  v15 = MEMORY[0x1E69E74A8];
  sub_1AF80DBD4(0, &qword_1ED722EB8, sub_1AF477BB4, v4, MEMORY[0x1E69E74A8]);
  *(v2 + 624) = 0;
  *(v2 + 632) = 0u;
  *(v2 + 648) = v16;
  *(v2 + 656) = xmmword_1AFE79010;
  *(v2 + 672) = 0;
  v17 = MEMORY[0x1E69E6448];
  *(v2 + 680) = 0u;
  *(v2 + 696) = v17;
  *(v2 + 704) = xmmword_1AFE76110;
  sub_1AF80DBD4(0, &unk_1ED72F770, sub_1AF43A0C8, v17, v11);
  *(v2 + 720) = 0;
  *(v2 + 728) = 0u;
  *(v2 + 744) = v18;
  *(v2 + 752) = xmmword_1AFE78720;
  sub_1AF80DBD4(0, &qword_1ED72F740, sub_1AF43A0C8, v17, v13);
  *(v2 + 768) = 0;
  *(v2 + 776) = 0u;
  *(v2 + 792) = v19;
  *(v2 + 800) = xmmword_1AFE78710;
  sub_1AF80DBD4(0, &qword_1ED72F6E0, sub_1AF43A0C8, v17, v15);
  *(v2 + 816) = 0;
  *(v2 + 824) = 0u;
  *(v2 + 840) = v20;
  *(v2 + 848) = xmmword_1AFE790A0;
  type metadata accessor for simd_float2x2(0);
  *(v2 + 864) = 0;
  *(v2 + 872) = 0u;
  *(v2 + 888) = v21;
  *(v2 + 896) = xmmword_1AFE790B0;
  type metadata accessor for simd_float2x3(0);
  *(v2 + 912) = 0;
  *(v2 + 920) = 0u;
  *(v2 + 936) = v22;
  *(v2 + 944) = xmmword_1AFE790C0;
  type metadata accessor for simd_float2x4(0);
  *(v2 + 960) = 0;
  *(v2 + 968) = 0u;
  *(v2 + 984) = v23;
  *(v2 + 992) = xmmword_1AFE790D0;
  type metadata accessor for simd_float3x2(0);
  *(v2 + 1008) = 0;
  *(v2 + 1016) = 0u;
  *(v2 + 1032) = v24;
  *(v2 + 1040) = xmmword_1AFE790E0;
  type metadata accessor for simd_float3x3(0);
  *(v2 + 1056) = 0;
  *(v2 + 1064) = 0u;
  *(v2 + 1080) = v25;
  *(v2 + 1088) = xmmword_1AFE790F0;
  type metadata accessor for simd_float3x4(0);
  *(v2 + 1104) = 0;
  *(v2 + 1112) = 0u;
  *(v2 + 1128) = v26;
  *(v2 + 1136) = xmmword_1AFE79100;
  type metadata accessor for simd_float4x2(0);
  *(v2 + 1152) = 0;
  *(v2 + 1160) = 0u;
  *(v2 + 1176) = v27;
  *(v2 + 1184) = xmmword_1AFE79110;
  type metadata accessor for simd_float4x3(0);
  *(v2 + 1200) = 0;
  *(v2 + 1208) = 0u;
  *(v2 + 1224) = v28;
  *(v2 + 1232) = xmmword_1AFE79120;
  type metadata accessor for simd_float4x4(0);
  *(v2 + 1248) = 0;
  *(v2 + 1256) = 0u;
  *(v2 + 1272) = v29;
  *(v2 + 1280) = xmmword_1AFE79000;
  *(v2 + 1296) = 0;
  *(v2 + 1304) = 0u;
  *(v2 + 1320) = MEMORY[0x1E69E63B0];
  *(v2 + 1328) = xmmword_1AFE78FF0;
  *(v2 + 1344) = 0;
  *(v2 + 1352) = 0u;
  *(v2 + 1368) = &type metadata for ColorU8;
  *(v2 + 1376) = xmmword_1AFE78FE0;
  *(v2 + 1392) = 0u;
  *(v2 + 1408) = 0;
  *(v2 + 1416) = &type metadata for ColorRamp;
  *(v2 + 1424) = xmmword_1AFE79130;
  *(v2 + 1440) = 0u;
  *(v2 + 1456) = 0;
  *(v2 + 1464) = &type metadata for ColorRamp;
  *(v2 + 1472) = xmmword_1AFE79140;
  type metadata accessor for __vfx_sampler1d(0);
  *(v2 + 1488) = 0;
  *(v2 + 1504) = 0;
  *(v2 + 1496) = 0;
  *(v2 + 1512) = v30;
  *(v2 + 1520) = xmmword_1AFE79150;
  type metadata accessor for __vfx_sampler2d(0);
  *(v2 + 1536) = 0;
  *(v2 + 1552) = 0;
  *(v2 + 1544) = 0;
  *(v2 + 1560) = v31;
  *(v2 + 1568) = xmmword_1AFE79160;
  type metadata accessor for __vfx_sampler3d(0);
  *(v2 + 1584) = 0;
  *(v2 + 1600) = 0;
  *(v2 + 1592) = 0;
  *(v2 + 1608) = v32;
  *(v2 + 1616) = xmmword_1AFE79170;
  *(v2 + 1632) = 0;
  *(v2 + 1648) = 0;
  *(v2 + 1640) = 0;
  *(v2 + 1656) = &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedVN;
  *(v2 + 1664) = xmmword_1AFE79050;
  *(v2 + 1680) = 0;
  *(v2 + 1696) = 0;
  *(v2 + 1688) = 0;
  v33 = MEMORY[0x1E69E6158];
  *(v2 + 1704) = MEMORY[0x1E69E6158];
  *(v2 + 1712) = xmmword_1AFE79180;
  v34 = sub_1AFDFC128();
  *(v2 + 1728) = 0;
  *(v2 + 1744) = 0;
  *(v2 + 1736) = 0;
  *(v2 + 1752) = v34;
  *(v2 + 1760) = xmmword_1AFE79190;
  type metadata accessor for simd_quatf(0);
  *(v2 + 1776) = 0;
  *(v2 + 1792) = 0;
  *(v2 + 1784) = 0;
  *(v2 + 1800) = v35;
  *(v2 + 1808) = xmmword_1AFE78FD0;
  sub_1AF80AF34(0, qword_1ED72F9E0, v17, &off_1F2532E98, type metadata accessor for Curve);
  *(v2 + 1824) = 0;
  *(v2 + 1840) = 0;
  *(v2 + 1832) = 0;
  *(v2 + 1848) = v36;
  *(v2 + 1856) = xmmword_1AFE791A0;
  *(v2 + 1872) = 0;
  *(v2 + 1888) = 0;
  *(v2 + 1880) = 0;
  *(v2 + 1896) = v36;
  *(v2 + 1904) = xmmword_1AFE791B0;
  v37 = MEMORY[0x1E69E66A8];
  v38 = MEMORY[0x1E69E6530];
  sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  *(v2 + 1920) = 0;
  *(v2 + 1936) = 0;
  *(v2 + 1928) = 0;
  *(v2 + 1944) = v39;
  *(v2 + 1952) = xmmword_1AFE791C0;
  sub_1AF80AF34(0, &qword_1ED72F958, v17, MEMORY[0x1E69E6468], v37);
  *(v2 + 1968) = 0;
  *(v2 + 1984) = 0;
  *(v2 + 1976) = 0;
  *(v2 + 1992) = v40;
  *(v2 + 2000) = xmmword_1AFE791D0;
  v41 = MEMORY[0x1E69E62F8];
  sub_1AF80C8C8(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
  *(v2 + 2016) = 0;
  *(v2 + 2032) = 0;
  *(v2 + 2024) = 0;
  *(v2 + 2040) = v42;
  *(v2 + 2048) = xmmword_1AFE791E0;
  sub_1AF80C8C8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], v41);
  *(v2 + 2064) = 0;
  *(v2 + 2080) = 0;
  *(v2 + 2072) = 0;
  *(v2 + 2088) = v43;
  *(v2 + 2096) = xmmword_1AFE791F0;
  sub_1AF80C8C8(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], v41);
  *(v2 + 2112) = 0;
  *(v2 + 2128) = 0;
  *(v2 + 2120) = 0;
  *(v2 + 2136) = v44;
  *(v2 + 2144) = xmmword_1AFE79200;
  sub_1AF80C8C8(0, &qword_1EB63ED78, v4, v41);
  *(v2 + 2160) = 0;
  *(v2 + 2168) = 0;
  *(v2 + 2176) = 0;
  *(v2 + 2184) = v45;
  *(v2 + 2192) = xmmword_1AFE79210;
  sub_1AF80C8C8(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], v41);
  *(v2 + 2208) = 0;
  *(v2 + 2216) = 0;
  *(v2 + 2224) = 0;
  *(v2 + 2232) = v46;
  *(v2 + 2240) = xmmword_1AFE79220;
  sub_1AF80C8C8(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], v41);
  *(v2 + 2256) = 0;
  *(v2 + 2264) = 0;
  *(v2 + 2272) = 0;
  *(v2 + 2280) = v47;
  *(v2 + 2288) = xmmword_1AFE79230;
  sub_1AF80C8C8(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], v41);
  *(v2 + 2304) = 0;
  *(v2 + 2312) = 0;
  *(v2 + 2320) = 0;
  *(v2 + 2328) = v48;
  *(v2 + 2336) = xmmword_1AFE79240;
  sub_1AF80C8C8(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], v41);
  *(v2 + 2352) = 0;
  *(v2 + 2360) = 0;
  *(v2 + 2368) = 0;
  *(v2 + 2376) = v49;
  *(v2 + 2384) = xmmword_1AFE79250;
  v50 = MEMORY[0x1E69E7360];
  sub_1AF80C8C8(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], v41);
  *(v2 + 2400) = 0;
  *(v2 + 2408) = 0;
  *(v2 + 2416) = 0;
  *(v2 + 2424) = v51;
  *(v2 + 2432) = xmmword_1AFE79260;
  sub_1AF80C8C8(0, &qword_1ED726C50, v38, v41);
  *(v2 + 2448) = 0;
  *(v2 + 2456) = 0;
  *(v2 + 2464) = 0;
  *(v2 + 2472) = v52;
  *(v2 + 2480) = xmmword_1AFE786F0;
  sub_1AF80C8C8(0, &qword_1ED723210, v17, v41);
  *(v2 + 2496) = 0;
  *(v2 + 2504) = 0;
  *(v2 + 2512) = 0;
  *(v2 + 2520) = v53;
  *(v2 + 2528) = xmmword_1AFE79270;
  sub_1AF44219C(0);
  *(v2 + 2544) = 0;
  *(v2 + 2552) = 0;
  *(v2 + 2560) = 0;
  *(v2 + 2568) = v54;
  *(v2 + 2576) = xmmword_1AFE79280;
  sub_1AF4420DC(0);
  *(v2 + 2592) = 0;
  *(v2 + 2600) = 0;
  *(v2 + 2608) = 0;
  *(v2 + 2616) = v55;
  *(v2 + 2624) = xmmword_1AFE78700;
  sub_1AF6560F0(0);
  *(v2 + 2640) = 0;
  *(v2 + 2648) = 0;
  *(v2 + 2656) = 0;
  *(v2 + 2664) = v56;
  *(v2 + 2672) = xmmword_1AFE79290;
  sub_1AF80C8C8(0, &qword_1ED726C70, v33, v41);
  *(v2 + 2688) = 0;
  *(v2 + 2696) = 0;
  *(v2 + 2704) = 0;
  *(v2 + 2712) = v57;
  *(v2 + 2720) = xmmword_1AFE792A0;
  sub_1AF5877E4(0);
  *(v2 + 2736) = 0;
  *(v2 + 2744) = 0;
  *(v2 + 2752) = 0;
  *(v2 + 2760) = v58;
  *(v2 + 2768) = xmmword_1AFE792B0;
  *(v2 + 2784) = 0;
  *(v2 + 2792) = 0;
  *(v2 + 2800) = 0;
  *(v2 + 2808) = v50;
  v59 = sub_1AF43EF78(v2);
  swift_setDeallocating();
  sub_1AF80D8DC(0, &qword_1EB63F1A8, sub_1AF602AF8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (!v59[2] || (sub_1AF41A308(a1), (v60 & 1) == 0))
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v68[0] = 0;
    *(&v68[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v70 = v68[0];
    MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF36040);
    v61 = *(a1 + 16);
    v68[0] = *a1;
    v68[1] = v61;
    v69 = *(a1 + 32);
    sub_1AFDFE458();
    v62 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v67 = v62;
      swift_once();
      v62 = v67;
    }

    *&v68[0] = 0;
    sub_1AF0D4F18(v62, v68, v70, *(&v70 + 1));
  }

  if (v59[2] && (v63 = sub_1AF41A308(a1), (v64 & 1) != 0))
  {
    v65 = *(v59[7] + 8 * v63);
  }

  else
  {
    v65 = MEMORY[0x1E69E6448];
  }

  return v65;
}

void sub_1AF80D868(uint64_t a1)
{
  if (!qword_1EB63F198)
  {
    sub_1AF80D8DC(255, &qword_1EB63F1A0, sub_1AF445888);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F198);
    }
  }
}

void sub_1AF80D8DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1AF80D974()
{
  result = qword_1EB63F1B0;
  if (!qword_1EB63F1B0)
  {
    result = swift_getWitnessTable(aQ_58, &_s12MetadataTypeO6CustomV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63F1B0);
  }

  return result;
}

unint64_t sub_1AF80D9CC()
{
  result = qword_1EB63F1B8;
  if (!qword_1EB63F1B8)
  {
    result = swift_getWitnessTable(byte_1AFE796C8, &_s11MetadataSetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63F1B8);
  }

  return result;
}

unint64_t sub_1AF80DA24()
{
  result = qword_1EB6335C0;
  if (!qword_1EB6335C0)
  {
    result = swift_getWitnessTable(byte_1AFE79600, &_s11MetadataSetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB6335C0);
  }

  return result;
}

unint64_t sub_1AF80DA7C()
{
  result = qword_1EB6335C8;
  if (!qword_1EB6335C8)
  {
    result = swift_getWitnessTable(asc_1AFE79628, &_s11MetadataSetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB6335C8);
  }

  return result;
}

unint64_t sub_1AF80DAD4()
{
  result = qword_1EB63F1C0;
  if (!qword_1EB63F1C0)
  {
    result = swift_getWitnessTable(byte_1AFE79548, &_s12MetadataTypeO6CustomV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63F1C0);
  }

  return result;
}

unint64_t sub_1AF80DB2C()
{
  result = qword_1EB63F1C8;
  if (!qword_1EB63F1C8)
  {
    result = swift_getWitnessTable(byte_1AFE79570, &_s12MetadataTypeO6CustomV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63F1C8);
  }

  return result;
}

unint64_t sub_1AF80DB80()
{
  result = qword_1EB63F1D8;
  if (!qword_1EB63F1D8)
  {
    result = swift_getWitnessTable(byte_1AFE798D0, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63F1D8);
  }

  return result;
}

void sub_1AF80DBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF80DC50()
{
  result = qword_1EB63F1E8;
  if (!qword_1EB63F1E8)
  {
    result = swift_getWitnessTable(byte_1AFE798A8, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63F1E8);
  }

  return result;
}

unint64_t sub_1AF80DCA8()
{
  result = qword_1EB63F1F0;
  if (!qword_1EB63F1F0)
  {
    result = swift_getWitnessTable(byte_1AFE797E0, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63F1F0);
  }

  return result;
}

unint64_t sub_1AF80DD00()
{
  result = qword_1EB63F1F8;
  if (!qword_1EB63F1F8)
  {
    result = swift_getWitnessTable(asc_1AFE79808, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63F1F8);
  }

  return result;
}

uint64_t sub_1AF80DD54()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](*(v0 + 32));
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();

  return MEMORY[0x1B271ACB0](v1);
}

uint64_t sub_1AF80DDB0()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF80DE0C()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](*(v0 + 32));
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();

  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF80DED8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF80DD54();
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF80DF28()
{
  result = qword_1EB63F200;
  if (!qword_1EB63F200)
  {
    v3 = type metadata accessor for VFXAttribute();
    result = swift_getWitnessTable(byte_1AFE79980, v3, v0, v1);
    atomic_store(result, &qword_1EB63F200);
  }

  return result;
}

double sub_1AF80DF7C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    swift_unownedRetainStrong();
    sub_1AF67E3AC(v3, v6, *(v1 + 24), v12);

    v7 = v13;
    if (v13)
    {
      v8 = v14;
      v9 = sub_1AF441150(v12, v13);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(v8 + 8);
      v10 = sub_1AF585714(a1);
      (*(*(v7 - 8) + 16))(v10, v9, v7);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
      return result;
    }

    sub_1AF80E114(v12);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

BOOL sub_1AF80E090(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  v6 = *(a2 + 16);
  swift_unownedRetainStrong();

  return v4 == v6;
}

uint64_t sub_1AF80E114(uint64_t a1)
{
  sub_1AF80E170(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF80E170(uint64_t a1)
{
  if (!qword_1EB634220)
  {
    sub_1AF47BC9C();
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB634220);
    }
  }
}

uint64_t sub_1AF80E1C8(int32x2_t *a1, uint64_t a2, unint64_t a3)
{
  if (a3 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v4 = 0;
  if ((a3 & 0x80000000) == 0 && a3 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    if (HIDWORD(a3) != 0xFFFFFFFF && *(*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3 + 8) != HIDWORD(a3))
    {
      goto LABEL_2;
    }

    v7 = off_1F2563650;

    sub_1AF64B03C(&type metadata for EmitterDescription, v7);
    if (v8)
    {

LABEL_2:
      v4 = 0;
      return v4 & 1;
    }

    v9 = swift_modifyAtWritableKeyPath();
    v11 = v10;
    v12 = sub_1AFB7BCF0(*v10, a1);
    if ((v12 & 1) == 0)
    {
      *v11 = a1;
    }

    v4 = v12 ^ 1;
    v9(&v13, 0);
  }

  return v4 & 1;
}

uint64_t sub_1AF80E324(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 == 0xFFFFFFFF)
  {
    return 0;
  }

  v4 = 0;
  if ((a3 & 0x80000000) == 0 && a3 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    if (HIDWORD(a3) != 0xFFFFFFFF && *(*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3 + 8) != HIDWORD(a3))
    {
      return 0;
    }

    v7 = off_1F2529CA0;

    sub_1AF64B03C(&type metadata for Parent, v7);
    if (v8)
    {

      return 0;
    }

    v9 = a1;
    v10 = HIDWORD(a1);
    v12 = swift_modifyAtWritableKeyPath();
    v13 = *v11 == v9 && v11[1] == v10;
    v14 = !v13;
    if (!v13)
    {
      *v11 = v9;
      v11[1] = v10;
    }

    v12(&v15, 0);

    return v14;
  }

  return v4;
}

uint64_t sub_1AF80E468(unsigned __int8 a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1AF820374(&type metadata for EmitterDescription, &off_1F2563648, a2, a3);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    sub_1AF80DF7C(v41);
    if (v42)
    {
      sub_1AF5D1678();
      if (swift_dynamicCast())
      {
        v36 = v39[4];
        v37 = v39[5];
        v32 = v39[0];
        v33 = v39[1];
        v38 = v40;
        v34 = v39[2];
        v35 = v39[3];
        if (a1 <= 1u)
        {
          if (a1)
          {
            v13 = *(v32 + 16);
            if (v13)
            {
              sub_1AFC072B4(0, v13, 0);
              v14 = (v32 + 32);
              do
              {
                v15 = *v14;
                v17 = *(v6 + 16);
                v16 = *(v6 + 24);
                if (v17 >= v16 >> 1)
                {
                  sub_1AFC072B4(v16 > 1, v17 + 1, 1);
                }

                *(v6 + 16) = v17 + 1;
                v18 = v6 + 16 * v17;
                *(v18 + 32) = v15;
                *(v18 + 40) = a3;
                ++v14;
                --v13;
              }

              while (v13);
            }
          }
        }

        else if (a1 == 2)
        {
          v19 = *(*(&v32 + 1) + 16);
          if (v19)
          {
            sub_1AFC072B4(0, v19, 0);
            v20 = (*(&v32 + 1) + 32);
            do
            {
              v21 = *v20;
              v23 = *(v6 + 16);
              v22 = *(v6 + 24);
              if (v23 >= v22 >> 1)
              {
                sub_1AFC072B4(v22 > 1, v23 + 1, 1);
              }

              *(v6 + 16) = v23 + 1;
              v24 = v6 + 16 * v23;
              *(v24 + 32) = v21;
              *(v24 + 40) = a3;
              ++v20;
              --v19;
            }

            while (v19);
          }
        }

        else if (a1 == 3)
        {
          v7 = *(v33 + 16);
          if (v7)
          {
            sub_1AFC072B4(0, v7, 0);
            v8 = (v33 + 32);
            do
            {
              v9 = *v8;
              v11 = *(v6 + 16);
              v10 = *(v6 + 24);
              if (v11 >= v10 >> 1)
              {
                sub_1AFC072B4(v10 > 1, v11 + 1, 1);
              }

              *(v6 + 16) = v11 + 1;
              v12 = v6 + 16 * v11;
              *(v12 + 32) = v9;
              *(v12 + 40) = a3;
              ++v8;
              --v7;
            }

            while (v7);
          }
        }

        else
        {
          v25 = *(*(&v33 + 1) + 16);
          if (v25)
          {
            sub_1AFC072B4(0, v25, 0);
            v26 = (*(&v33 + 1) + 32);
            do
            {
              v27 = *v26;
              v29 = *(v6 + 16);
              v28 = *(v6 + 24);
              if (v29 >= v28 >> 1)
              {
                sub_1AFC072B4(v28 > 1, v29 + 1, 1);
              }

              *(v6 + 16) = v29 + 1;
              v30 = v6 + 16 * v29;
              *(v30 + 32) = v27;
              *(v30 + 40) = a3;
              ++v26;
              --v25;
            }

            while (v25);
          }
        }

        sub_1AF57A684(&v32);
      }

      else
      {
      }
    }

    else
    {

      sub_1AF80F3A4(v41, sub_1AF645A60);
    }
  }

  return v6;
}

uint64_t sub_1AF80E7C4(uint64_t result, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  v6 = HIDWORD(a4);
  if (a2 <= 1u)
  {
    if (!a2)
    {
      return result;
    }

    sub_1AF80F2BC(result, v36);
    v13 = *(a3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v13, 0);
      v8 = v34[0];
      v14 = (a3 + 32);
      v15 = *(v34[0] + 16);
      do
      {
        v16 = *v14;
        v34[0] = v8;
        v17 = v8[3];
        if (v15 >= v17 >> 1)
        {
          sub_1AFC07194(v17 > 1, v15 + 1, 1);
          v8 = v34[0];
        }

        v8[2] = (v15 + 1);
        v8[v15 + 4] = v16;
        v14 += 2;
        ++v15;
        --v13;
      }

      while (v13);
    }
  }

  else if (a2 == 2)
  {
    sub_1AF80F2BC(result, v36);
    v18 = *(a3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v18, 0);
      v8 = v34[0];
      v19 = (a3 + 32);
      v20 = *(v34[0] + 16);
      do
      {
        v21 = *v19;
        v34[0] = v8;
        v22 = v8[3];
        if (v20 >= v22 >> 1)
        {
          sub_1AFC07194(v22 > 1, v20 + 1, 1);
          v8 = v34[0];
        }

        v8[2] = (v20 + 1);
        v8[v20 + 4] = v21;
        v19 += 2;
        ++v20;
        --v18;
      }

      while (v18);
    }
  }

  else if (a2 == 3)
  {
    sub_1AF80F2BC(result, v36);
    v7 = *(a3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v7, 0);
      v8 = v34[0];
      v9 = (a3 + 32);
      v10 = *(v34[0] + 16);
      do
      {
        v11 = *v9;
        v34[0] = v8;
        v12 = v8[3];
        if (v10 >= v12 >> 1)
        {
          sub_1AFC07194(v12 > 1, v10 + 1, 1);
          v8 = v34[0];
        }

        v8[2] = (v10 + 1);
        v8[v10 + 4] = v11;
        v9 += 2;
        ++v10;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_1AF80F2BC(result, v36);
    v23 = *(a3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v23, 0);
      v8 = v34[0];
      v24 = (a3 + 32);
      v25 = *(v34[0] + 16);
      do
      {
        v26 = *v24;
        v34[0] = v8;
        v27 = v8[3];
        if (v25 >= v27 >> 1)
        {
          sub_1AFC07194(v27 > 1, v25 + 1, 1);
          v8 = v34[0];
        }

        v8[2] = (v25 + 1);
        v8[v25 + 4] = v26;
        v24 += 2;
        ++v25;
        --v23;
      }

      while (v23);
    }
  }

  KeyPath = swift_getKeyPath();
  if (v6 || a4 != -1)
  {
    v29 = v36[0];
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    v30 = sub_1AF80E1C8(v8, KeyPath, a4);

    Strong = swift_unknownObjectUnownedLoadStrong();
    if ((v30 & 1) == 0)
    {
      v33 = Strong;

      if (v33)
      {
        swift_unknownObjectRelease();
      }

      return sub_1AF579490(v36);
    }

    if (Strong)
    {
      swift_unknownObjectRelease();
    }

    if (v37 == 1)
    {
      swift_unownedRetainStrong();
      v34[0] = __PAIR64__(v6, a4);
      v34[1] = v29;
      sub_1AF80F318(0);
      v34[5] = v32;
      v34[6] = &off_1F2536190;
      v34[2] = KeyPath;
      v34[3] = v8;
      v35 = 11;

      sub_1AF6C67D0(v34);

      sub_1AF57955C(v34);
    }
  }

  return sub_1AF579490(v36);
}

char *sub_1AF80EBCC(char a1)
{
  v2 = v1;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v88 = qword_1ED73B840;
  v89 = 0;
  v90 = 2;
  v91 = 0;
  v92 = 2;
  v93 = 0;
  sub_1AF702F8C(1, &v67);
  v82 = v67;
  v83 = v68;
  v84 = v69;
  v85 = v70 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  v86 = v71;
  v87 = v72;
  sub_1AF6B06C0(v1, &v82, 0x200000000, v73);
  v53 = *v73;
  if (!*v73)
  {
    sub_1AF80F3A4(&v67, sub_1AF701034);
    return MEMORY[0x1E69E7CC0];
  }

  v52 = *&v73[40];
  v4 = *(&v74 + 1);
  v58 = *(&v75 + 1);
  v77 = *&v73[8];
  v78 = *&v73[24];
  if (v76 <= 0)
  {
    sub_1AF80F3A4(&v67, sub_1AF701034);
    sub_1AF5D1564(v73);
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(&v74 + 1))
  {
    v63 = *&v73[32];
    v64 = v74;
    v65 = v75;
    v66 = v76;
    v61 = *v73;
    v62 = *&v73[16];
    sub_1AF5DD298(&v61, v59);
    sub_1AF80F3A4(&v67, sub_1AF701034);
    sub_1AF5D1564(v73);
    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  v57 = *(*(&v75 + 1) + 32);
  v56 = *(v75 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v63 = *&v73[32];
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v61 = *v73;
  v62 = *&v73[16];
  sub_1AF5DD298(&v61, v59);
  v5 = 0;
  v6 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  v51 = v4;
  while (1)
  {
    v54 = v6;
    v55 = v5;
    v7 = (v52 + 48 * v5);
    v9 = *v7;
    v8 = v7[1];
    v11 = *(v7 + 2);
    v10 = *(v7 + 3);
    v12 = *(v7 + 4);
    v13 = *(v7 + 5);
    if (v56)
    {
      v14 = *(v13 + 376);

      os_unfair_lock_lock(v14);
      os_unfair_lock_lock(*(v13 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v57);
    v15 = *(v58 + 64);
    v59[0] = *(v58 + 48);
    v59[1] = v15;
    v60 = *(v58 + 80);
    v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
    *(v58 + 48) = ecs_stack_allocator_allocate(*(v58 + 32), 48 * v16, 8);
    *(v58 + 56) = v16;
    *(v58 + 72) = 0;
    *(v58 + 80) = 0;
    *(v58 + 64) = 0;
    sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v11, v10, v12, v58);
    if (v11)
    {
      if (v12)
      {
        while (1)
        {
          v18 = *v11++;
          v17 = v18;

          if (*(v13 + 184))
          {
            goto LABEL_67;
          }

          v20 = *(*(v13 + 168) + 4 * v17);
          v21 = *(*(v19 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v20 + 8);

          if (v20 == -1)
          {
            if (!v21)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v22 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

            if ((v20 & 0x80000000) == 0 && *(v2 + v22 + 8) > v20)
            {
              v23 = *(v2 + v22) + 12 * v20;
              if (v21 == -1 || *(v23 + 8) == v21)
              {
                v25 = *(*(*(v2 + 88) + 8 * *(v23 + 6) + 32) + 16);
                v26 = *(v25 + 128);
                if (*(v26 + 16))
                {
                  v27 = sub_1AF449CB8(&type metadata for EmitterDescription);
                  if (v28)
                  {
                    v29 = *(*(v25 + 24) + 16 * *(*(v26 + 56) + 8 * v27) + 32);

                    if (v29 == &type metadata for EmitterDescription)
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v30 = v50;
                      }

                      else
                      {
                        v30 = sub_1AF423F84(0, *(v50 + 2) + 1, 1, v50);
                      }

                      v32 = *(v30 + 2);
                      v31 = *(v30 + 3);
                      if (v32 >= v31 >> 1)
                      {
                        v30 = sub_1AF423F84(v31 > 1, v32 + 1, 1, v30);
                      }

                      *(v30 + 2) = v32 + 1;
                      v50 = v30;
                      v33 = &v30[16 * v32];
                      *(v33 + 8) = v20;
                      *(v33 + 9) = v21;
                      *(v33 + 5) = v2;
                    }

                    goto LABEL_15;
                  }
                }
              }
            }
          }

LABEL_15:
          if (!--v12)
          {
            goto LABEL_37;
          }
        }
      }

      goto LABEL_37;
    }

    if (v9 != v8)
    {
      break;
    }

LABEL_37:
    v6 = v54;
    v79 = v53;
    v80 = v77;
    v81 = v78;
    sub_1AF630994(v58, &v79, v59);
    sub_1AF62D29C(v13);
    ecs_stack_allocator_pop_snapshot(v57);
    if (v56)
    {
      os_unfair_lock_unlock(*(v13 + 344));
      os_unfair_lock_unlock(*(v13 + 376));
    }

    v5 = v55 + 1;
    if (v55 + 1 == v51)
    {
      sub_1AF80F3A4(&v67, sub_1AF701034);
      sub_1AF5D1564(v73);
LABEL_66:
      sub_1AF5D1564(v73);
      return v50;
    }
  }

  while (1)
  {

    if (*(v13 + 184))
    {
      break;
    }

    v35 = *(*(v13 + 168) + 4 * v9);
    v36 = *(*(v34 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v35 + 8);

    if (v35 == -1)
    {
      if (!v36)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v37 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

      if ((v35 & 0x80000000) == 0 && *(v2 + v37 + 8) > v35)
      {
        v38 = *(v2 + v37) + 12 * v35;
        if (v36 == -1 || *(v38 + 8) == v36)
        {
          v40 = *(*(*(v2 + 88) + 8 * *(v38 + 6) + 32) + 16);
          v41 = *(v40 + 128);
          if (*(v41 + 16))
          {
            v42 = sub_1AF449CB8(&type metadata for EmitterDescription);
            if (v43)
            {
              v44 = *(*(v40 + 24) + 16 * *(*(v41 + 56) + 8 * v42) + 32);

              if (v44 == &type metadata for EmitterDescription)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v45 = v50;
                }

                else
                {
                  v45 = sub_1AF423F84(0, *(v50 + 2) + 1, 1, v50);
                }

                v47 = *(v45 + 2);
                v46 = *(v45 + 3);
                if (v47 >= v46 >> 1)
                {
                  v45 = sub_1AF423F84(v46 > 1, v47 + 1, 1, v45);
                }

                *(v45 + 2) = v47 + 1;
                v50 = v45;
                v48 = &v45[16 * v47];
                *(v48 + 8) = v35;
                *(v48 + 9) = v36;
                *(v48 + 5) = v2;
              }

              goto LABEL_40;
            }
          }
        }
      }
    }

LABEL_40:
    if (v8 == ++v9)
    {
      goto LABEL_37;
    }
  }

LABEL_67:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF80F318(uint64_t a1)
{
  if (!qword_1EB63F208)
  {
    sub_1AF7021F8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v3 = type metadata accessor for ComponentValueWriter(a1, &type metadata for EmitterDescription, v2, &off_1F2563648);
    if (!v4)
    {
      atomic_store(v3, &qword_1EB63F208);
    }
  }
}

uint64_t sub_1AF80F3A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF80F414(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1AF80F444(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AF80F574@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF81BC00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF80F5A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0x4E7463656A6F7250;
  v5 = 0xEE0079726F747369;
  v6 = 0x486E6F6973726556;
  if (v2 != 5)
  {
    v6 = 0x6C6946656E656353;
    v5 = 0xED0000656D616E65;
  }

  v7 = 0xEA00000000006465;
  v8 = 0x74726F7078457349;
  if (v2 != 3)
  {
    v8 = 0x325846567349;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145656661;
  if (v2 != 1)
  {
    v10 = 0x6E6F6973726556;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AF80F69C()
{
  v1 = *v0;
  v2 = 0x4E7463656A6F7250;
  v3 = 0x486E6F6973726556;
  if (v1 != 5)
  {
    v3 = 0x6C6946656E656353;
  }

  v4 = 0x74726F7078457349;
  if (v1 != 3)
  {
    v4 = 0x325846567349;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1145656661;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726556;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AF80F790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF81BC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF80F7B8(uint64_t a1)
{
  v2 = sub_1AF817678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF80F7F4(uint64_t a1)
{
  v2 = sub_1AF817678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF80F830@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_1AF81B9D0(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v39 - v4;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF817768(0, &qword_1ED726A98, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v50 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for BundleInfo(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v14[*(v15 + 40)];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AF817678();
  v17 = v51;
  sub_1AFDFF3B8();
  if (v17)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v51 = v16;
  v42 = a1;
  v43 = v14;
  v44 = v12;
  LOBYTE(v53) = 1;
  sub_1AF820200(&qword_1ED72DF38, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v19 = v47;
  v18 = v48;
  sub_1AFDFE768();
  v21 = v43;
  v20 = v44;
  (*(v49 + 32))(v43 + v44[5], v19, v18);
  LOBYTE(v53) = 2;
  v22 = sub_1AFDFE748();
  *(v21 + v20[6]) = v22;
  sub_1AF81F62C(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  LOBYTE(v55) = 5;
  sub_1AF80A96C();
  sub_1AFDFE768();
  v47 = v9;
  v41 = v11;
  v24 = v53;
  v25 = MEMORY[0x1B27191B0](*(v53 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v55 = v25;
  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = 32;
    do
    {
      sub_1AF70D168(&v52, *(v24 + v27));
      v27 += 8;
      --v26;
    }

    while (v26);

    v28 = v55;
    v21 = v43;
    v20 = v44;
  }

  else
  {
    v28 = v25;
  }

  *(v21 + v20[9]) = v28;
  if (v22 < 1023)
  {
    v29 = v22;
    v30 = 0;
    *v21 = 0;
    v21[1] = 0;
LABEL_10:
    v31 = v51;
    *(v21 + v20[7]) = 0;
    v32 = v41;
    goto LABEL_11;
  }

  sub_1AF81F62C(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  LOBYTE(v55) = 0;
  sub_1AF81B94C(&qword_1ED726CB8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
  sub_1AFDFE768();
  v30 = v54;
  *v21 = v53;
  v21[1] = v30;
  v29 = v22;
  if (v22 < 0x421)
  {
    goto LABEL_10;
  }

  LOBYTE(v53) = 3;
  *(v21 + v20[7]) = sub_1AFDFE718() & 1;
  if (v22 >= 0x7D9)
  {
    LOBYTE(v55) = 6;
    v35 = v41;
    sub_1AFDFE768();
    v40 = v30;
    v32 = v35;
    v36 = v54;
    v37 = v51;
    *v51 = v53;
    *(v37 + 1) = v36;
    goto LABEL_12;
  }

  v32 = v41;
  v31 = v51;
LABEL_11:
  v40 = v30;
  *v31 = 0;
  *(v31 + 1) = 0;
LABEL_12:
  LOBYTE(v53) = 4;
  v33 = sub_1AFDFE6A8();
  v34 = v42;
  *(v21 + v20[8]) = v33 & 1;
  v38 = v45;
  sub_1AF70D168(&v53, v29);
  (*(v50 + 8))(v32, v47);
  sub_1AF81B8E8(v21, v38);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  return sub_1AF81F384(v21, type metadata accessor for BundleInfo);
}

uint64_t sub_1AF81055C(void *a1, double a2)
{
  v4 = v2;
  sub_1AF817768(0, &qword_1EB63F230, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF817678();
  sub_1AFDFF3F8();
  v14 = *v4;
  v15 = 0;
  sub_1AF81F62C(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1AF81B94C(&qword_1EB6442C0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
  sub_1AFDFE918();
  if (!v3)
  {
    v11 = type metadata accessor for BundleInfo(0);
    LOBYTE(v14) = 3;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 4;
    sub_1AFDFE8C8();
    v13[1] = v11[5];
    LOBYTE(v14) = 1;
    sub_1AFDFC318();
    sub_1AF820200(&qword_1EB639808, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1AFDFE918();
    LOBYTE(v14) = 2;
    sub_1AFDFE8F8();
    *&v14 = *(v4 + v11[9]);
    v15 = 5;
    sub_1AF8201AC(0, &qword_1EB63F238, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    sub_1AF8176CC();
    sub_1AFDFE918();
    v14 = *(v4 + v11[10]);
    v15 = 6;
    sub_1AFDFE918();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF81090C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for SwiftTrampolineCodeGen();
  swift_initStackObject();

  sub_1AFB0F318(a1, a2, a3);

  v12 = sub_1AFB081E0(1);
  if (v5)
  {
  }

  else
  {
    v15 = v12;
    v24 = v14;
    v23 = v13;
    type metadata accessor for CTrampolineCodeGen();
    swift_initStackObject();

    sub_1AFB0F318(a1, a2, a3);

    sub_1AFB06C28(1);
    v19 = v16;
    v20 = v17;
    if (v15 < 1)
    {

      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = v23;
      v22 = v24;
    }

    v6 = sub_1AF810AF8(v21, v22, v19, v20, a4, a5 & 1);
  }

  return v6;
}

uint64_t sub_1AF810AF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v77 = a6;
  v87 = a4;
  v79 = a3;
  v80 = a1;
  v86 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v86);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v75 - v13;
  v14 = MEMORY[0x1E69E7CC0];
  v96 = MEMORY[0x1E69E7CC0];
  v15 = 1 << *(a5 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a5 + 56);
  v18 = (v15 + 63) >> 6;
  v85 = v12;
  v82 = v12 + 32;

  v19 = 0;
  v88 = a5;
  v83 = v18;
  v84 = a2;
  if (v17)
  {
LABEL_7:
    do
    {
      LOWORD(v92) = *(*(a5 + 48) + ((v19 << 7) | (2 * __clz(__rbit64(v17)))));
      type metadata accessor for XcodeCommandBuilder();
      v21 = swift_allocObject();
      v22 = sub_1AF45D418(&v92);
      if (!v22)
      {
        goto LABEL_37;
      }

      v23 = v22;
      v24 = *(v22 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 32) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1AF420554(0, *(v24 + 2) + 1, 1, v24);
        *(v23 + 32) = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_1AF420554(v26 > 1, v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[16 * v27];
      *(v28 + 4) = 5785174;
      *(v28 + 5) = 0xE300000000000000;
      *(v23 + 32) = v24;
      v89 = v14;
      if (a2)
      {
        type metadata accessor for SwiftCodeLoader();
        swift_allocObject();
        sub_1AF45207C();
        v21 = v29;
        *(v29 + 120) = v23;

        v30 = v91;
        v31 = sub_1AF452240(v80, a2);
        if (v30)
        {
          v91 = v30;

          goto LABEL_56;
        }

        sub_1AF4531AC(v31, v32);
        v91 = 0;
        v33 = v94;
        v34 = v95;

        v35 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1AF420554(v36 > 1, v37 + 1, 1, v35);
        }

        *(v35 + 2) = v37 + 1;
        v38 = &v35[16 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v34;
        a5 = v88;
      }

      else
      {
        v35 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for CCodeLoader();
      *(swift_allocObject() + 128) = 0;
      sub_1AF45207C();
      v40 = v39;
      v39[15] = v23;

      if (v87)
      {
        v21 = v40;
        v41 = v91;
        v42 = sub_1AF452240(v79, v87);
        if (v41)
        {
          v91 = v41;
LABEL_55:

          goto LABEL_56;
        }

        (*(*v40 + 456))(&v92, v42);
        v91 = 0;
        v43 = v94;
        v81 = v95;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1AF420554(0, *(v35 + 2) + 1, 1, v35);
        }

        v45 = *(v35 + 2);
        v44 = *(v35 + 3);
        v46 = v91;
        if (v45 >= v44 >> 1)
        {
          v51 = sub_1AF420554(v44 > 1, v45 + 1, 1, v35);
          v46 = v91;
          v35 = v51;
        }

        *(v35 + 2) = v45 + 1;
        v47 = &v35[16 * v45];
        v48 = v81;
        *(v47 + 4) = v43;
        *(v47 + 5) = v48;
        a5 = v88;
      }

      else
      {
        v46 = v91;
      }

      v21 = v40;
      sub_1AF4528AC(v35);
      v91 = v46;
      if (v46)
      {
        goto LABEL_55;
      }

      if (*(a5 + 16) == 1)
      {
        if (v77)
        {

          v65 = v76;
          sub_1AFDFC018();

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v92 = 0;
          v93 = 0xE000000000000000;
          sub_1AFDFE218();

          v92 = 0xD000000000000013;
          v93 = 0x80000001AFF362C0;
          v66 = sub_1AFDFC028();
          MEMORY[0x1B2718AE0](v66);

          v68 = v92;
          v67 = v93;
          v69 = sub_1AFDFD9F8();
          if (qword_1ED731058 != -1)
          {
            v74 = v69;
            swift_once();
            v69 = v74;
          }

          v92 = 0;
          sub_1AF0D4F18(v69, &v92, v68, v67);

          sub_1AF45F6E8();

          sub_1AF432980(MEMORY[0x1E69E7CC0]);

          v21 = 0x80000001AFF28A10;
          sub_1AF4563A0();
          v70 = swift_allocError();
          *v71 = 0xD000000000000027;
          *(v71 + 8) = 0x80000001AFF28A10;
          *(v71 + 16) = 0;
          *(v71 + 24) = 0;
          *(v71 + 32) = 3;
          v91 = v70;
          swift_willThrow();

          (*(v85 + 8))(v65, v86);
        }

        else
        {

          v21 = v40[4];
        }

        goto LABEL_57;
      }

      sub_1AFDFC018();

      v14 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1AF422744(0, v14[2] + 1, 1, v14);
      }

      v50 = v14[2];
      v49 = v14[3];
      if (v50 >= v49 >> 1)
      {
        v14 = sub_1AF422744(v49 > 1, v50 + 1, 1, v14);
      }

      v17 &= v17 - 1;

      v14[2] = v50 + 1;
      (*(v85 + 32))(v14 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v50, v90, v86);
      v96 = v14;
      v18 = v83;
      a2 = v84;
    }

    while (v17);
  }

  while (1)
  {
    v20 = v19 + 1;
    if (v19 + 1 >= v18)
    {
      break;
    }

    v17 = *(a5 + 8 * v19++ + 64);
    if (v17)
    {
      v19 = v20;
      goto LABEL_7;
    }
  }

  type metadata accessor for SwiftCodeLoader();
  swift_allocObject();
  sub_1AF45207C();
  v53 = v52;
  LOWORD(v92) = 512;
  type metadata accessor for XcodeCommandBuilder();
  v21 = swift_allocObject();
  v54 = sub_1AF45D418(&v92);
  if (!v54)
  {
LABEL_37:
    sub_1AF81F330();
    v57 = swift_allocError();
    *v58 = 0;
    v58[1] = 0;
    v91 = v57;
    swift_willThrow();
    goto LABEL_56;
  }

  *(v53 + 120) = v54;

  v55 = v78;
  v21 = v53;
  v56 = v91;
  sub_1AF452E2C(v14);
  if (v56)
  {
    v91 = v56;

LABEL_56:

    goto LABEL_57;
  }

  if (v77)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1AFDFE218();

    v92 = 0xD000000000000013;
    v93 = 0x80000001AFF362C0;
    v59 = sub_1AFDFC028();
    MEMORY[0x1B2718AE0](v59);

    v61 = v92;
    v60 = v93;
    v62 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v73 = v62;
      swift_once();
      v62 = v73;
    }

    v92 = 0;
    sub_1AF0D4F18(v62, &v92, v61, v60);

    sub_1AF45F6E8();

    sub_1AF432980(MEMORY[0x1E69E7CC0]);

    v21 = 0x80000001AFF28A10;
    sub_1AF4563A0();
    v63 = swift_allocError();
    *v64 = 0xD000000000000027;
    *(v64 + 8) = 0x80000001AFF28A10;
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    *(v64 + 32) = 3;
    v91 = v63;
    swift_willThrow();

    (*(v85 + 8))(v55, v86);
  }

  else
  {
    v91 = 0;
    v21 = sub_1AFDFC0D8();

    (*(v85 + 8))(v55, v86);
  }

LABEL_57:
  sub_1AF811668(&v96);

  return v21;
}

void sub_1AF811668(uint64_t *a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v22 = v10;
    v23 = v8;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    v21 = v6;

    do
    {
      v15 = v9;
      v22(v5, v11, v2);
      v16 = [v23 defaultManager];
      v17 = sub_1AFDFC048();
      v24[0] = 0;
      v18 = [v16 removeItemAtURL:v17 error:v24];

      if (v18)
      {
        v14 = v24[0];
      }

      else
      {
        v19 = v24[0];
        v20 = sub_1AFDFBF58();

        swift_willThrow();
      }

      (*v13)(v5, v2);
      v11 += v12;
      --v7;
      v9 = v15;
    }

    while (v7);
  }
}

double sub_1AF811870()
{
  *(v0 + 16) = 0;
  *&result = 16777217;
  *(v0 + 20) = 16777217;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

void sub_1AF81188C(_BYTE *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v1 = [objc_opt_self() defaultManager];
    v2 = sub_1AFDFC048();
    v8[0] = 0;
    v3 = [v1 removeItemAtURL:v2 error:v8];

    v4 = v8[0];
    if (v3)
    {

      v5 = v4;
    }

    else
    {
      v6 = v8[0];
      v7 = sub_1AFDFBF58();

      swift_willThrow();
    }
  }
}

uint64_t sub_1AF8119B8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  type metadata accessor for JavaScriptCodeLoader();
  swift_allocObject();
  sub_1AF45207C();
  v9 = v8;
  type metadata accessor for JavaScriptTrampolineCodeGen();
  swift_initStackObject();

  sub_1AFB0F318(a1, a2, a3);

  v11 = sub_1AFB01F1C(v4);
  v12 = *(v11 + 16);
  v18 = sub_1AFAFA374();
  v19 = v13;
  if (qword_1ED724988 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B2718AE0](qword_1ED73B400, *algn_1ED73B408);
  v14 = sub_1AFB02608(v11);

  v15 = sub_1AFA5413C(v14);
  v17 = v16;

  MEMORY[0x1B2718AE0](v15, v17);

  if (v12)
  {
    sub_1AF4553C4(v18, v19);
  }

  else
  {

    return 0;
  }

  return v9;
}

void sub_1AF811BB0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v12;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    (*(v8 + 16))(&v33 - v12, a1, v7, v13);
    v26 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v27 = sub_1AF81B794(v14, 0);
    if (v3)
    {
      return;
    }

    v15 = v27;
  }

  v16 = a2;
  v17 = [v15 fileWrappers];
  if (!v17)
  {
    goto LABEL_12;
  }

  sub_1AF0D4478(0, &unk_1ED726BA0, 0x1E696AC38);
  v18 = sub_1AFDFCC08();

  if (!*(v18 + 16) || (v19 = sub_1AF419914(0x6F736A2E6F666E69, 0xE90000000000006ELL), (v20 & 1) == 0))
  {

    v17 = 0;
    goto LABEL_12;
  }

  v17 = *(*(v18 + 56) + 8 * v19);

  v21 = [v17 regularFileContents];
  if (!v21)
  {
LABEL_12:
    sub_1AF4567E0();
    swift_allocError();
    *v28 = 0xD000000000000022;
    *(v28 + 8) = 0x80000001AFF36930;
    *(v28 + 16) = 96;
    swift_willThrow();
    goto LABEL_13;
  }

  v34 = v8;
  v22 = v21;
  v36 = sub_1AFDFC1B8();
  v37 = v23;

  sub_1AFDFBBB8();
  swift_allocObject();
  v24 = sub_1AFDFBBA8();
  v35 = a3;
  v25 = v24;
  type metadata accessor for BundleInfo(0);
  sub_1AF820200(&qword_1ED72DF00, type metadata accessor for BundleInfo, a9_34);
  sub_1AFDFBB88();
  if (v3)
  {

    sub_1AF439ED8(v36, v37);
LABEL_13:

    return;
  }

  v33 = v25;
  v29 = v35;
  if (v35[1])
  {

    sub_1AF439ED8(v36, v37);
  }

  else
  {
    sub_1AFDFC068();
    v30 = sub_1AFDFC028();
    v32 = v31;

    sub_1AF439ED8(v36, v37);

    (*(v34 + 8))(v10, v7);
    *v29 = v30;
    v29[1] = v32;
  }
}

uint64_t sub_1AF811F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1AF81B9D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v29 - v4;
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  (*(v6 + 16))(&v29 - v11, a1, v5, v10);
  if (sub_1AFDFC028() == 47 && v13 == 0xE100000000000000)
  {
LABEL_10:
  }

  else
  {
    while (1)
    {
      v15 = sub_1AFDFEE28();

      if (v15)
      {
        break;
      }

      sub_1AFDFC028();
      v16 = sub_1AFDFD188();

      if (v16)
      {
        break;
      }

      sub_1AFDFC028();
      v17 = sub_1AFDFD188();

      if (v17)
      {
        break;
      }

      sub_1AFDFC098();
      (*(v6 + 40))(v12, v8, v5);
      if (sub_1AFDFC028() == 47 && v18 == 0xE100000000000000)
      {
        goto LABEL_10;
      }
    }
  }

  v19 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v20 = sub_1AFDFC048();
  v21 = [v19 initWithURL_];

  if (v21)
  {
    v22 = sub_1AFDFCEC8();
    v23 = sub_1AFDFCEC8();
    v24 = [v21 URLForResource:v22 withExtension:v23];

    if (v24)
    {
      v25 = v29;
      sub_1AFDFC0B8();

      v26 = 0;
    }

    else
    {
      v26 = 1;
      v25 = v29;
    }

    v27 = v30;
    (*(v6 + 8))(v12, v5);
    (*(v6 + 56))(v25, v26, 1, v5);
    return sub_1AF6EE3D0(v25, v27);
  }

  else
  {
    (*(v6 + 8))(v12, v5);
    return (*(v6 + 56))(v30, 1, 1, v5);
  }
}

unsigned __int8 *sub_1AF81237C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1AF8123A8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_1AF812444@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void (*sub_1AF81249C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, int a2, uint64_t a3)
{
  v7 = v6;
  v240 = a6;
  v227 = a5;
  v254 = a2;
  v255 = a3;
  v226 = a1;
  v225 = *v6;
  sub_1AF81B9D0(0, &qword_1ED726B50, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v231 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v238 = &v206 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v229 = &v206 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v220 = &v206 - v16;
  v237 = sub_1AFDFE488();
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v230 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v235 = &v206 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v228 = &v206 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v219 = &v206 - v23;
  v24 = sub_1AFDFC538();
  v243 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v242 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF81B9D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v232 = &v206 - v27;
  v245 = type metadata accessor for BundleInfo(0);
  v222 = *(v245 - 1);
  MEMORY[0x1EEE9AC00](v245);
  v224 = &v206 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v206 - v30);
  v32 = sub_1AFDFC128();
  v248 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v239 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v247 = &v206 - v35;
  v36 = sub_1AFDFC4F8();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v241 = &v206 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v206 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v206 - v43;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v244 = v24;
  v45 = sub_1AF477C68(v24, qword_1ED73B608);
  v250 = v37;
  isa = v37[2].isa;
  v246 = a4;
  v234 = OBJC_IVAR____TtC3VFX13EntityManager_signpostID;
  v252 = v37 + 2;
  v253 = v36;
  v251 = isa;
  isa(v44, (a4 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID), v36);
  v233 = v45;
  v47 = sub_1AFDFC528();
  v48 = sub_1AFDFDB88();
  v49 = sub_1AFDFDCE8();
  v249 = v32;
  v50 = v254;
  if (v49)
  {
    v51 = v254;
    v52 = v7;
    v53 = v31;
    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v47, v48, v55, "VFXLoader.load", "", v54, 2u);
    v56 = v54;
    v31 = v53;
    v7 = v52;
    v50 = v51;
    v32 = v249;
    MEMORY[0x1B271DEA0](v56, -1, -1);
  }

  v57 = v253;
  v251(v41, v44, v253);
  sub_1AFDFC578();
  swift_allocObject();
  v58 = sub_1AFDFC568();
  v59 = v250[1].isa;
  v59(v44, v57);
  v60 = v255;
  if (v255)
  {
    v61 = v255;
    v62 = v256;
  }

  else
  {
    v64 = v247;
    (*(v248 + 16))(v247, v50, v32);
    v65 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v66 = v256;
    v67 = sub_1AF81B794(v64, 0);
    v62 = v66;
    if (v66)
    {
      goto LABEL_51;
    }

    v61 = v67;
    v60 = v255;
  }

  v63 = v60;
  sub_1AF811BB0(v50, v61, v31);
  if (v62)
  {

LABEL_51:
    sub_1AF8169E8(v58, "VFXLoader.load");
  }

  if (*(v7 + 19))
  {
    v68 = v245;
    v69 = *(v31 + v245[7]) ^ 1;
    v70 = v246;
  }

  else
  {
    v70 = v246;
    v68 = v245;
    if (*(v246 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) != *(v31 + v245[8]))
    {
      sub_1AF4567E0();
      swift_allocError();
      *v71 = 0xD000000000000052;
      *(v71 + 8) = 0x80000001AFF36640;
      *(v71 + 16) = 96;
      swift_willThrow();
LABEL_49:

      goto LABEL_50;
    }

    v69 = 0;
  }

  v72 = v69 & 1;
  *(v70 + 56) = v72;
  *(*(v70 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 16) = v72;
  v73 = *(v31 + v68[6]);
  if (*(v31 + v68[7]) == 1)
  {
    if (v73 >= 1106)
    {
      if (v73 < 0x7D6)
      {
        v74 = 1;
      }

      else
      {
        v74 = 2;
      }
    }

    else
    {
      v74 = 0;
    }
  }

  else
  {
    v74 = 3;
  }

  v75 = (v31 + v68[10]);
  v76 = v75[1];
  v255 = *(v31 + v68[6]);
  v218 = v7;
  v256 = 0;
  if (v76)
  {
    v77 = *v75;
    v78 = v76;
    goto LABEL_31;
  }

  if (v74 > 1u)
  {
    if (v74 == 2)
    {
      v78 = 0xEC0000006E696278;
      v77 = 0x66762E656E656373;
      goto LABEL_31;
    }
  }

  else if (v74)
  {
    v78 = 0xEB00000000747369;
    v77 = 0x6C702E656E656373;
    goto LABEL_31;
  }

  v78 = 0xEA00000000006E6FLL;
  v77 = 0x736A2E656E656373;
LABEL_31:

  v79 = [v61 fileWrappers];
  if (v79)
  {
    v80 = v59;
    sub_1AF0D4478(0, &unk_1ED726BA0, 0x1E696AC38);
    v81 = sub_1AFDFCC08();

    if (*(v81 + 16) && (v82 = sub_1AF419914(v77, v78), (v83 & 1) != 0))
    {
      v79 = *(*(v81 + 56) + 8 * v82);
    }

    else
    {

      v79 = 0;
    }

    v59 = v80;
  }

  v84 = sub_1AF81BC4C(v77, v78);
  if (v84 == 5)
  {
    v260 = 0;
    v261 = 0xE000000000000000;
    sub_1AFDFE218();

    v260 = 0xD000000000000018;
    v261 = 0x80000001AFF366A0;
    MEMORY[0x1B2718AE0](v77, v78);

    v85 = v260;
    v86 = v261;
    sub_1AF4567E0();
    swift_allocError();
    *v87 = v85;
    *(v87 + 8) = v86;
    *(v87 + 16) = 96;
    swift_willThrow();

LABEL_50:
    sub_1AF81F384(v31, type metadata accessor for BundleInfo);
    goto LABEL_51;
  }

  v250 = v59;
  if (!v79 || (v88 = v84, (v89 = [v79 regularFileContents]) == 0))
  {
    v260 = 0;
    v261 = 0xE000000000000000;
    sub_1AFDFE218();

    v260 = 0x742064656C696166;
    v261 = 0xEF2064616F6C206FLL;
    MEMORY[0x1B2718AE0](v77, v78);

    MEMORY[0x1B2718AE0](0x6964206D6F726620, 0xEA00000000006B73);
    v123 = v260;
    v124 = v261;
    sub_1AF4567E0();
    swift_allocError();
    *v125 = v123;
    *(v125 + 8) = v124;
    *(v125 + 16) = 96;
    swift_willThrow();

    goto LABEL_49;
  }

  v90 = v89;
  v211 = v88;
  v213 = v79;

  v245 = sub_1AFDFC1B8();
  v247 = v91;

  v93 = *v31;
  v92 = v31[1];
  v216 = v31;
  v94 = qword_1ED730EA0;

  if (v94 != -1)
  {
    swift_once();
  }

  v214 = v58;
  v260 = 0;
  v261 = 0xE000000000000000;
  sub_1AFDFE218();

  v260 = 91;
  v261 = 0xE100000000000000;
  *&v258 = 3031;
  v95 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v95);

  MEMORY[0x1B2718AE0](0x6E6964616F6C205DLL, 0xEE00207866762067);
  v215 = v93;
  v217 = v92;
  MEMORY[0x1B2718AE0](v93, v92);
  MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  v96 = v255;
  *&v258 = v255;
  v97 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v97);

  MEMORY[0x1B2718AE0](0x207461205DLL, 0xE500000000000000);
  v98 = sub_1AFDFC0D8();
  MEMORY[0x1B2718AE0](v98);

  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v100 = v260;
  v99 = v261;
  v101 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v205 = v101;
    swift_once();
    v101 = v205;
  }

  v260 = 0;
  sub_1AF0D4F18(v101, &v260, v100, v99);

  v212 = v61;
  if (v96 >= 3032)
  {
    v260 = 0;
    v261 = 0xE000000000000000;
    sub_1AFDFE218();
    v102 = v215;
    v103 = v217;
    MEMORY[0x1B2718AE0](v215, v217);
    MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF367A0);
    *&v258 = 3031;
    v104 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v104);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF367D0);
    *&v258 = v255;
    v105 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v105);

    v106 = v260;
    v107 = v261;
    v108 = sub_1AFDFDA28();
    v260 = 0;
    sub_1AF0D4F18(v108, &v260, v106, v107);

    v260 = 0;
    v261 = 0xE000000000000000;
    sub_1AFDFE218();
    v109 = v102;
    v110 = v255;
    MEMORY[0x1B2718AE0](v109, v103);
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF367F0);
    *&v258 = v110;
    v111 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v111);

    MEMORY[0x1B2718AE0](0xD00000000000003FLL, 0x80000001AFF36810);
    *&v258 = 3031;
    v112 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v112);

    MEMORY[0x1B2718AE0](11817, 0xE200000000000000);
    v114 = v260;
    v113 = v261;
    v115 = v218;
    if (*(v218 + 22))
    {
      v260 = 0;
      v261 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](v114, v113);

      MEMORY[0x1B2718AE0](0xD000000000000044, 0x80000001AFF36850);
      v116 = v260;
      v117 = v261;
      sub_1AF4567E0();
      v118 = swift_allocError();
      *v119 = v116;
      *(v119 + 8) = v117;
      *(v119 + 16) = -96;
      v120 = v115[3];
      v115[3] = v118;

      v121 = v256;
      v122 = v240;
      goto LABEL_54;
    }

    sub_1AF4567E0();
    swift_allocError();
    *v143 = v114;
    *(v143 + 8) = v113;
    *(v143 + 16) = -96;
    swift_willThrow();
    sub_1AF439ED8(v245, v247);

LABEL_59:
    sub_1AF81F384(v216, type metadata accessor for BundleInfo);
LABEL_71:
    v58 = v214;
    goto LABEL_51;
  }

  v121 = v256;
  v127 = v215;
  v122 = v240;
  if (v96 <= 1025)
  {
    v260 = 0;
    v261 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](v127, v217);

    MEMORY[0x1B2718AE0](0x6F69737265762820, 0xEA0000000000206ELL);
    *&v258 = v96;
    v128 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v128);

    MEMORY[0x1B2718AE0](0xD000000000000064, 0x80000001AFF366E0);
    *&v258 = 1026;
    v129 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v129);

    MEMORY[0x1B2718AE0](0xD000000000000047, 0x80000001AFF36750);
    v130 = v260;
    v131 = v261;
    sub_1AF4567E0();
    swift_allocError();
    *v132 = v130;
    *(v132 + 8) = v131;
    *(v132 + 16) = -64;
    swift_willThrow();
    sub_1AF439ED8(v245, v247);

    goto LABEL_59;
  }

LABEL_54:
  v133 = *(v246 + 184);

  v134 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v133);
  v240 = v121;

  v135 = v248;
  if (v134)
  {
    v136 = v239;
    sub_1AFDFC078();
    v137 = v232;
    v138 = v249;
    (*(v135 + 16))(v232, v136, v249);
    (*(v135 + 56))(v137, 0, 1, v138);
    sub_1AF825B54(v137, v122 | ((HIDWORD(v122) & 1) << 32));

    (*(v135 + 8))(v136, v138);
  }

  if ((v122 & 0x100000000) != 0)
  {
    v139 = 0;
    v140 = 1;
    v141 = v218;
    v142 = v244;
  }

  else
  {
    LOBYTE(v260) = 0;
    v142 = v244;
    v139 = v122;
    v141 = v218;
    v140 = v139 == 0;
  }

  v209 = v141[21];
  LODWORD(v232) = v141[20];
  v210 = v141[19];
  (*(v243 + 16))(v242, v233, v142);
  v144 = v246;
  v251(v241, &v234[v246], v253);
  v145 = swift_slowAlloc();
  *v145 = 0;
  v146 = sub_1AFDFC528();
  v147 = sub_1AFDFDB88();
  v148 = sub_1AFDFC4E8();
  v252 = v146;
  v207 = v145;
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v146, v147, v148, "EntityManager.unserialize", "", v145, 2u);
  v149 = type metadata accessor for SerializationContext();
  swift_allocObject();
  LOBYTE(v258) = v140;
  v233 = v139;
  v150 = sub_1AF69D428(v144, v255, 0, v139 | (v140 << 32));
  *(v150 + 82) = 257;
  *(v150 + 80) = v210;
  *(v150 + 81) = v232;
  v208 = v140;
  v256 = v149;
  if (v211 <= 1u)
  {
    v151 = v237;
    v152 = v236;
    if (v211)
    {
      v169 = sub_1AFDFBE78();
      swift_allocObject();
      v232 = sub_1AFDFBE68();
      v170 = v220;
      v255 = 0x80000001AFF279D0;
      sub_1AFDFE478();
      v171 = *(v152 + 48);
      v246 = (v152 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v251 = v171;
      v171(v170, 1, v151);
      v172 = *(v152 + 32);
      v159 = v152;
      v173 = v219;
      v234 = v172;
      (v172)(v219, v170, v151);
      v259 = v149;
      *&v258 = v150;

      v174 = sub_1AFDFBE58();
      sub_1AF824640(&v258, v173);
      v174(&v257, 0);
      v160 = &off_1F2533B78;
      v161 = v169;
      v262 = v169;
      v263 = &off_1F2533B78;

      v260 = v232;
      goto LABEL_69;
    }

LABEL_67:
    v162 = sub_1AFDFBBB8();
    swift_allocObject();
    v236 = sub_1AFDFBBA8();
    v163 = v229;
    v255 = 0x80000001AFF279D0;
    sub_1AFDFE478();
    v164 = *(v152 + 48);
    v246 = (v152 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v251 = v164;
    v164(v163, 1, v151);
    v165 = *(v152 + 32);
    v159 = v152;
    v237 = (v152 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v166 = v228;
    v234 = v165;
    (v165)(v228, v163, v151);
    v259 = v149;
    *&v258 = v150;

    v167 = v236;
    v168 = sub_1AFDFBB98();
    sub_1AF824640(&v258, v166);
    v168(&v257, 0);
    v160 = &off_1F2533B38;
    v161 = v162;
    v262 = v162;
    v263 = &off_1F2533B38;

    v260 = v167;
    goto LABEL_69;
  }

  v151 = v237;
  v152 = v236;
  if (v211 == 3)
  {
    goto LABEL_67;
  }

  v153 = v237;
  if (qword_1ED727D50 != -1)
  {
    swift_once();
  }

  v154 = qword_1ED73B620;
  v232 = type metadata accessor for BinaryDecoder();
  v155 = swift_allocObject();

  *(v155 + 48) = sub_1AF43A744(MEMORY[0x1E69E7CC0]);
  *(v155 + 16) = v154;
  *(v155 + 24) = v209;
  *(v155 + 32) = sub_1AF69B6E0;
  *(v155 + 40) = 0;
  v156 = v231;
  v255 = 0x80000001AFF279D0;
  sub_1AFDFE478();
  v157 = *(v152 + 48);
  v246 = (v152 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v251 = v157;
  v157(v156, 1, v153);
  v158 = v230;
  v234 = *(v152 + 32);
  (v234)(v230, v156, v153);
  v259 = v256;
  *&v258 = v150;

  sub_1AF8247D4(&v258, v158);
  v159 = v152;
  v160 = &off_1F2533B98;
  v161 = v232;
  v262 = v232;
  v263 = &off_1F2533B98;

  v260 = v155;
  v151 = v153;
LABEL_69:
  sub_1AF441150(&v260, v161);
  v175 = v238;
  sub_1AFDFE478();
  v251(v175, 1, v151);
  v176 = v235;
  (v234)(v235, v175, v151);
  v177 = (v160[2])(v176, &v257);
  (*(v159 + 8))(v176, v151, v177);
  sub_1AF449D40(&v257, &v258);
  swift_dynamicCast();
  v178 = thread_serialization_context;
  v180 = thread_serialization_context(v179);
  v181 = *v180;
  v256 = v182;
  *v180 = v182;
  v183 = v262;
  v184 = v263;
  sub_1AF441150(&v260, v262);
  v185 = v184[3];
  v186 = sub_1AF81FEE8();
  v187 = v240;
  v185(&v258, &type metadata for EntityManagerCoder, v245, v247, &type metadata for EntityManagerCoder, v186, v183, v184);
  if (v187)
  {
    *(v178)(&thread_serialization_context) = v181;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v260);

    sub_1AF439ED8(v245, v247);

    sub_1AF81F384(v216, type metadata accessor for BundleInfo);
    (v250)(v241, v253);
    (*(v243 + 8))(v242, v244);
    goto LABEL_71;
  }

  swift_unownedRelease();
  *(v178)(&thread_serialization_context) = v181;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v260);
  v188 = sub_1AFDFDB78();
  v189 = v241;
  v190 = sub_1AFDFC4E8();
  v191 = v188;
  v192 = v252;
  v193 = v207;
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v252, v191, v190, "EntityManager.unserialize", "", v207, 2u);

  MEMORY[0x1B271DEA0](v193, -1, -1);
  sub_1AF439ED8(v245, v247);
  (v250)(v189, v253);
  (*(v243 + 8))(v242, v244);
  v218[4] = v256;

  v194 = v224;
  sub_1AF81B8E8(v216, v224);
  v195 = v248;
  (*(v248 + 16))(v239, v254, v249);
  v196 = (*(v222 + 80) + 16) & ~*(v222 + 80);
  v254 = (v196 + v223 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v197 = (v196 + v223 + 15) & 0xFFFFFFFFFFFFFFF8;
  v198 = (*(v195 + 80) + v197 + 8) & ~*(v195 + 80);
  v199 = (v221 + v198 + 7) & 0xFFFFFFFFFFFFFFF8;
  v255 = (v199 + 23) & 0xFFFFFFFFFFFFFFF8;
  v256 = 0;
  v200 = (v255 + 15) & 0xFFFFFFFFFFFFFFF8;
  v201 = swift_allocObject();
  sub_1AF81FF3C(v194, v201 + v196);
  v202 = v201 + v254;
  *v202 = v233;
  *(v202 + 4) = v208;
  *(v201 + v197) = v218;
  (*(v195 + 32))(v201 + v198, v239, v249);
  v203 = (v201 + v199);
  v204 = v217;
  *v203 = v215;
  v203[1] = v204;
  *(v201 + v255) = v212;
  *(v201 + v200) = v227;
  *(v201 + ((v200 + 15) & 0xFFFFFFFFFFFFFFF8)) = v225;
  sub_1AF81FF3C(v216, v226);

  sub_1AF8169E8(v214, "VFXLoader.load");

  return sub_1AF81FFA0;
}

void sub_1AF814300(uint64_t a1, int a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t a9, void *a10, uint64_t a11)
{
  v12 = v11;
  v108 = a8;
  v109 = a3;
  v111 = a7;
  v112 = a4;
  v116 = a6;
  v114 = a5;
  v127 = sub_1AFDFC128();
  v110 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v105 - v17;
  v115 = a1;
  if ((a2 & 1) == 0)
  {
LABEL_59:
    v101 = a2;
    if ((a2 & 2) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v18 = type metadata accessor for BundleInfo(0);
  if (!qword_1ED73B858)
  {
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v19 = *(v112 + *(v18 + 24));
  v20 = *(v116 + 19);
  v21 = *(v112 + *(v18 + 28));
  v106 = a2;
  v107 = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_1AF16CDEC(Strong);
    swift_unknownObjectRetain();

    objc_opt_self();
    v130 = swift_dynamicCastObjCClass();
    if (!v130)
    {
      swift_unknownObjectRelease();
      v130 = 0;
    }

    a1 = v115;
  }

  else
  {
    v130 = 0;
  }

  v24 = *(qword_1ED73B858 + 16);
  if (v24)
  {
    v25 = 0x1000000000000;
    if (!v107)
    {
      v25 = 0;
    }

    v26 = 0x10000000000;
    if (!v20)
    {
      v26 = 0;
    }

    v27 = v26 | v25;
    v28 = v114;
    v129 = v114;

    v29 = v125 + 6;
    ObjectType = v27 | ((HIDWORD(v28) & 1) << 32);
    while (1)
    {
      if (v19 < *(v29 - 2))
      {
        v160 = *(v29 - 1);
        swift_retain_n();
        v30 = v19;
        v31 = v130;
        v32 = v130;

        v34 = v31;
        v19 = v30;
        v160(v33, a1, v34, ObjectType | v129, v30);
        if (v12)
        {

          return;
        }
      }

      v29 += 3;
      if (!--v24)
      {

        goto LABEL_20;
      }
    }
  }

LABEL_20:
  sub_1AF65DAB0();
  sub_1AFDFC088();
  if ((*(v116 + 19) & 1) != 0 && (v35 = a1, v36 = *(a1 + 184), , v37 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v36), , v37))
  {

    v38 = *(v35 + 184);

    v39 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v38);

    v40 = type metadata accessor for AssetManagerPathResolver();
    v41 = objc_allocWithZone(v40);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v131.receiver = v41;
    v131.super_class = v40;
    v160 = objc_msgSendSuper2(&v131, sel_init);

    v42 = &off_1F2541778;
  }

  else
  {
    v43 = v110;
    v44 = *(v110 + 16);
    v45 = v126;
    v46 = v127;
    v44(v126, v113, v127);
    v47 = type metadata accessor for BundleResolver(0);
    v48 = objc_allocWithZone(v47);
    v44(&v48[OBJC_IVAR____TtC3VFX14BundleResolver_bundle], v45, v46);
    v140.receiver = v48;
    v140.super_class = v47;
    v160 = objc_msgSendSuper2(&v140, sel_init);
    (*(v43 + 8))(v45, v46);
    v42 = &off_1F2544728;
  }

  v130 = v42;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v154 = qword_1ED73B840;
  v155 = 0;
  v156 = 2;
  v157 = 0;
  v158 = 2;
  v159 = 0;
  sub_1AF705030(2, v141);
  if ((v114 & 0x100000000) != 0)
  {
    v49 = 0x200000000;
  }

  else
  {
    v49 = v114;
  }

  v150[0] = v141[0];
  v150[1] = v141[1];
  v151 = v142;
  sub_1AF6B06C0(v115, v150, v49, v143);
  v136 = v143[2];
  v137 = v144;
  v138 = v145;
  v139 = v146;
  v134 = v143[0];
  v135 = v143[1];
  sub_1AF820124(v141);
  if (!*&v143[0])
  {
    goto LABEL_55;
  }

  LOBYTE(a2) = v106;
  if (v146 > 0)
  {
    v119 = *(&v144 + 1);
    if (*(&v144 + 1))
    {
      v50 = *(&v145 + 1);
      v124 = *(*(&v145 + 1) + 32);
      v123 = *(v145 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v148 = *(v143 + 8);
      v149 = *(&v143[1] + 8);
      v133[3] = v137;
      v133[4] = v138;
      v133[5] = v139;
      v133[0] = v134;
      v117 = *(&v143[2] + 1);
      v147 = *&v143[0];
      v133[1] = v135;
      v133[2] = v136;
      sub_1AF5DD298(v133, &v132);
      v51 = 0;
      v125 = (v110 + 8);
      v118 = v50;
      do
      {
        v121 = v51;
        v122 = v12;
        v52 = (v117 + 48 * v51);
        v53 = *v52;
        v129 = v52[1];
        v55 = *(v52 + 2);
        v54 = *(v52 + 3);
        v57 = *(v52 + 4);
        v56 = *(v52 + 5);
        if (v123)
        {
          v58 = *(v56 + 376);

          os_unfair_lock_lock(v58);
          os_unfair_lock_lock(*(v56 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v124);
        v59 = *(v50 + 4);
        v152[0] = *(v50 + 3);
        v152[1] = v59;
        v153 = v50[10];
        v60 = *(*(*(*(v56 + 40) + 16) + 32) + 16) + 1;
        v50[6] = ecs_stack_allocator_allocate(v50[4], 48 * v60, 8);
        v50[7] = v60;
        v50[9] = 0;
        v50[10] = 0;
        v50[8] = 0;
        v61 = v57;
        v120 = v56;
        v62 = sub_1AF64B110(&type metadata for VirtualFileAsset, &off_1F2545DB8, v55, v54, v57, v50);
        if (v55)
        {
          if (v57)
          {
            v63 = (v62 + 24);
            do
            {
              v65 = v63[1];
              v66 = v160;
              v67 = v130;
              v63[1] = v160;
              v63[2] = v67;
              v68 = v66;

              v69 = v63[1];
              if (v69)
              {
                v129 = v61;
                v70 = v63[2];
                ObjectType = swift_getObjectType();
                v72 = *(v63 - 1);
                v71 = *v63;
                v73 = *(v70 + 8);
                v74 = v69;

                v75 = v126;
                v76 = v70;
                v61 = v129;
                v73(v72, v71, ObjectType, v76);

                v77 = sub_1AFDFC0C8();
                v79 = v78;
                (*v125)(v75, v127);
                *(v63 - 3) = v77;
                *(v63 - 2) = v79;
              }

              else
              {
                v64 = *v63;
                *(v63 - 3) = *(v63 - 1);
                *(v63 - 2) = v64;
              }

              v63 += 6;
              --v61;
            }

            while (v61);
          }
        }

        else if (v53 != v129)
        {
          v82 = v129 - v53;
          v83 = &v62[48 * v53 + 24];
          do
          {
            v93 = *(v83 + 1);
            v94 = v160;
            v95 = v130;
            *(v83 + 1) = v160;
            *(v83 + 2) = v95;
            v96 = v94;

            v97 = *(v83 + 1);
            if (v97)
            {
              v84 = *(v83 + 2);
              v85 = swift_getObjectType();
              v86 = *(v83 - 1);
              v87 = *v83;
              ObjectType = *(v84 + 8);
              v129 = v85;
              v88 = v97;

              v89 = v126;
              (ObjectType)(v86, v87, v129, v84);

              v90 = sub_1AFDFC0C8();
              v92 = v91;
              (*v125)(v89, v127);
              *(v83 - 3) = v90;
              *(v83 - 2) = v92;
            }

            else
            {
              v98 = *v83;
              *(v83 - 3) = *(v83 - 1);
              *(v83 - 2) = v98;
            }

            v83 += 48;
            --v82;
          }

          while (v82);
        }

        v50 = v118;
        v80 = v122;
        sub_1AF630994(v118, &v147, v152);
        v12 = v80;
        v81 = v120;
        sub_1AF62D29C(v120);
        ecs_stack_allocator_pop_snapshot(v124);
        if (v123)
        {
          os_unfair_lock_unlock(*(v81 + 43));
          os_unfair_lock_unlock(*(v81 + 47));
        }

        v51 = v121 + 1;
      }

      while (v121 + 1 != v119);
      sub_1AF5D1564(v143);
      sub_1AF5D1564(v143);
LABEL_55:
      v99 = v115;
      v100 = v116;
      LOBYTE(a2) = v106;
      goto LABEL_56;
    }
  }

  sub_1AF5D1564(v143);
  v99 = v115;
  v100 = v116;
LABEL_56:
  if (*(v100 + 19) != 1 || (v107 & 1) != 0)
  {
    (*(v110 + 8))(v113, v127);

    goto LABEL_59;
  }

  sub_1AF7D3C8C(v99, 1);

  (*(v110 + 8))(v113, v127);
  v101 = a2;
  if ((a2 & 2) == 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  sub_1AF814E2C(v112, v108, a9, v111, a10, v115, v114 | ((HIDWORD(v114) & 1) << 32), v109);
  if (v12)
  {
    return;
  }

  sub_1AF678C34();
LABEL_63:
  if ((v101 & 4) != 0 && *(v116 + 23) == 1)
  {
    if (a11)
    {

      sub_1AF6F7F40(v102);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v103 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v104 = v103;
        swift_once();
        v103 = v104;
      }

      *&v134 = 0;
      sub_1AF0D4F18(v103, &v134, 0xD00000000000001CLL, 0x80000001AFF368B0);
    }
  }
}

double sub_1AF814E2C(void *a1, void *a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v166 = a8;
  v168 = a7;
  v180 = a4;
  v165 = a3;
  v164 = a2;
  v160 = *v8;
  sub_1AF81B9D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v169 = &v148[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v159 = &v148[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v148[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v148[-v19];
  v20 = sub_1AFDFC4F8();
  v167 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v148[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v148[-v24];
  v175 = sub_1AFDFC128();
  v176 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v156 = &v148[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v158 = &v148[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v154 = &v148[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v152 = &v148[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v153 = &v148[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v155 = &v148[-v36];
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v148[-v38];
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v148[-v41];
  sub_1AF7D5A90(a6, 1, 1);
  v43 = type metadata accessor for BundleInfo(0);
  v179 = *(a1 + *(v43 + 24));
  v181 = a6;
  v172 = a1;
  if (v179 > 2025)
  {
    goto LABEL_6;
  }

  if ((*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) & 1) == 0)
  {
    sub_1AFBF8FF0(a6, a1);
  }

  if (v179 >= 1003)
  {
LABEL_6:
    v174 = *(v187 + 16);
  }

  else
  {
    v174 = 0;
  }

  v182 = v42;
  sub_1AFDFC088();
  v171 = a5;
  v44 = [a5 fileWrappers];
  if (v44)
  {
    v45 = v44;
    sub_1AF0D4478(0, &unk_1ED726BA0, 0x1E696AC38);
    v46 = sub_1AFDFCC08();

    if (*(v46 + 16) && (v47 = sub_1AF419914(0x2E73747069726373, 0xEE00656C646E7562), (v48 & 1) != 0))
    {
      v178 = *(*(v46 + 56) + 8 * v47);
      v49 = v178;
    }

    else
    {
      v178 = 0;
    }

    v50 = v181;
  }

  else
  {
    v178 = 0;
    v50 = v181;
  }

  v162 = *(v50 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
  v186 = 0;
  v161 = *(v50 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v51 = v161;
  v52 = CFXMTLCreateSystemDefaultDevice();
  v53 = v182;
  if (v52)
  {
    v173 = v52;
    ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 = _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v52);
    if (*(v187 + 19) != 1 || (*(v187 + 18) & 1) != 0 || sub_1AFA9A520(v50) < 1)
    {
      v71 = 0;
      if (!v174)
      {
        v72 = v175;
        v73 = v176;
LABEL_39:
        (*(v73 + 8))(v53, v72);
        swift_unknownObjectRelease();

        goto LABEL_70;
      }

      LODWORD(v167) = 0;
      v72 = v175;
      v73 = v176;
      v74 = v177;
LABEL_30:
      v151 = v51;
      v75 = v173;
      swift_unknownObjectRetain();
      v176 = sub_1AF81EBE8(v180, v75);
      v77 = v76;
      v79 = v78;
      swift_unknownObjectRelease();
      if (v79)
      {
        swift_unknownObjectRelease();
LABEL_32:
        v186 = v79;
        goto LABEL_41;
      }

      if (v71)
      {
LABEL_41:
        if (v179 >= 1033)
        {
          v86 = [v171 fileWrappers];
          if (v86)
          {
            v87 = v86;
            sub_1AF0D4478(0, &unk_1ED726BA0, 0x1E696AC38);
            v88 = sub_1AFDFCC08();

            if (*(v88 + 16) && (v89 = sub_1AF419914(0xD000000000000010, 0x80000001AFF36210), (v90 & 1) != 0))
            {
              v91 = *(*(v88 + 56) + 8 * v89);

              v92 = [v91 regularFileContents];
              if (v92)
              {
                v177 = v74;
                v93 = v92;
                v94 = sub_1AFDFC1B8();
                v96 = v95;

                v97 = v173;
                swift_unknownObjectRetain();
                v175 = v94;
                v180 = v96;
                v98 = v177;
                sub_1AF81BA24(v94, v96, &v186, v97);
                v74 = v98;
                if (v98)
                {

                  sub_1AF439ED8(v175, v180);
                  swift_unknownObjectRelease();
                  (*(v73 + 8))(v182, v72);
                  goto LABEL_70;
                }

                sub_1AF439ED8(v175, v180);
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }

        v99 = v182;
        if (v167)
        {
          v100 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
          v101 = 0;
        }

        else
        {
          v100 = *(*(v187 + 32) + 128);
          if (v166)
          {
            v100 = sub_1AF81F1BC(v166, *(*(v187 + 32) + 128));
          }

          else
          {
          }

          v101 = v179;
        }

        v108 = v169;
        (*(v73 + 16))(v169, v99, v72);
        (*(v73 + 56))(v108, 0, 1, v72);
        v147 = v101;
        v109 = v178;
        sub_1AF81C078(v181, v176, v77, v178, v108, v186, *v172, v172[1], v147, v167, v100, v168 | ((HIDWORD(v168) & 1) << 32), *(v187 + 17));
        if (v74)
        {
          swift_unknownObjectRelease();

          sub_1AF81FE8C(v108, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
          (*(v73 + 8))(v99, v72);
        }

        else
        {
          sub_1AF81FE8C(v108, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);

          if (v179 >= 2026)
          {
            (*(v73 + 8))(v182, v72);
            swift_unknownObjectRelease();
          }

          else
          {
            v110 = v151;
            if ((*(v181 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) & 1) == 0)
            {
              sub_1AFBF9C14(v181, v172);
              swift_unknownObjectRelease();

              (*(v73 + 8))(v182, v72);
              goto LABEL_70;
            }

            (*(v73 + 8))(v182, v72);
            swift_unknownObjectRelease();
          }
        }

LABEL_70:
        swift_unknownObjectRelease();
        return result;
      }

      v111 = OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
      v112 = v50 + *(type metadata accessor for ScriptingConfiguration(0) + 28) + v111;
      v113 = v163;
      sub_1AF456C4C(v112, v163);
      v114 = *(v73 + 48);
      if (v114(v113, 1, v72) == 1)
      {
        sub_1AF81FE8C(v113, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
        v115 = v159;
        sub_1AF811F6C(v180, v159);
        if (v114(v115, 1, v72) == 1)
        {
          sub_1AF81FE8C(v115, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
          v79 = *(_s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v173) + 24);
          swift_unknownObjectRetain();

          goto LABEL_32;
        }

        v125 = v156;
        (*(v73 + 32))();
        _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v173);
        v126 = sub_1AF744858(v125, v162, v161);
        if (!v74)
        {
          v128 = v126;
          (*(v73 + 8))(v125, v72);

          v186 = v128;
          goto LABEL_41;
        }

        swift_unknownObjectRelease();

        v123 = *(v73 + 8);
        v123(v125, v72);
      }

      else
      {
        v121 = v158;
        (*(v73 + 32))(v158, v113, v72);
        v122 = sub_1AF744858(v121, v162, v161);
        if (!v74)
        {
          v127 = v122;
          (*(v73 + 8))(v121, v72);
          v186 = v127;
          goto LABEL_41;
        }

        swift_unknownObjectRelease();

        v123 = *(v73 + 8);
        v123(v121, v72);
      }

      v123(v182, v72);
      goto LABEL_70;
    }

    v151 = v51;
    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v54 = sub_1AFDFC538();
    sub_1AF477C68(v54, qword_1ED73B608);
    v150 = *(v167 + 16);
    v150(v25, v50 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v20);
    v55 = sub_1AFDFC528();
    v149 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v55, v149, v57, "initialBuildScripts", "", v56, 2u);
      v58 = v56;
      v50 = v181;
      MEMORY[0x1B271DEA0](v58, -1, -1);
    }

    v150(v22, v25, v20);
    sub_1AFDFC578();
    swift_allocObject();
    v150 = sub_1AFDFC568();
    (*(v167 + 8))(v25, v20);
    if (*(v172 + *(v43 + 28)) == 1)
    {
      v59 = v180;
      v60 = sub_1AF81EEE0(v180, 0);
      v62 = v61;
      v63 = sub_1AF81EEE0(v59, 3u);
      v65 = v64;
      v184 = v63;
      v185 = v64;
      v66 = sub_1AF81EEE0(v59, 2u);
      v68 = v67;
      v69 = v178;
      if (v179 <= 2000 && v65)
      {
        sub_1AFB125E8(&v184, *v172, v172[1], v179);
        v65 = v185;
      }

      if (!(v62 | v65))
      {

        sub_1AF4567E0();
        swift_allocError();
        *v70 = 0xD000000000000037;
        *(v70 + 8) = 0x80000001AFF36260;
        *(v70 + 16) = 96;
        swift_willThrow();
        sub_1AF8169E8(v150, "initialBuildScripts");
        swift_unknownObjectRelease();

        (*(v176 + 8))(v182, v175);
        goto LABEL_70;
      }

      v116 = v184;
      sub_1AF81F62C(0, &qword_1EB63F248, &type metadata for Target, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 512;
      v118 = sub_1AF757304(inited);
      swift_setDeallocating();
      v119 = v177;
      v120 = sub_1AF810AF8(v116, v65, v60, v62, v118, 0);
      if (v119)
      {

        sub_1AF8169E8(v150, "initialBuildScripts");
        swift_unknownObjectRelease();

        (*(v176 + 8))(v182, v175);
        goto LABEL_70;
      }

      v177 = v120;

      if (v68)
      {
        type metadata accessor for MetalTrampolineCodeGen();
        v183 = 512;
        sub_1AFAF8704(v66, v68, &v183);

        v71 = sub_1AF744858(v39, v162, v161);
        v72 = v175;
        (*(v176 + 8))(v39, v175);
        v186 = v71;
      }

      else
      {
        v71 = 0;
        v72 = v175;
      }

      v129 = v155;
      sub_1AFDFC018();

      v73 = v176;
      v130 = v182;
      v177 = *(v176 + 8);
      v177(v182, v72);
      (*(v73 + 32))(v130, v129, v72);
      v131 = v153;
      (*(v73 + 16))(v153, v130, v72);
      v132 = objc_allocWithZone(MEMORY[0x1E696AC38]);
      v134 = sub_1AF81B794(v131, 0);

      v50 = v181;
      *(v181 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig) = 0;

      LODWORD(v167) = 0;
      v135 = 1;
      v178 = v134;
      v74 = 0;
    }

    else
    {
      sub_1AF81F62C(0, &qword_1EB63F248, &type metadata for Target, MEMORY[0x1E69E6F90]);
      v102 = swift_initStackObject();
      *(v102 + 16) = xmmword_1AFE431C0;
      *(v102 + 32) = 512;
      v103 = sub_1AF757304(v102);
      swift_setDeallocating();
      v104 = v164;
      v105 = v165;
      v106 = v177;
      v107 = sub_1AF81090C(v50, v164, v165, v103, 0);
      if (v106)
      {

        v71 = 0;
        v74 = 0;
        v72 = v175;
        v73 = v176;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v184 = 0;
        v185 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000027, 0x80000001AFF36230);
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v141 = v184;
        v142 = v185;
        v143 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v146 = v143;
          swift_once();
          v143 = v146;
        }

        v184 = 0;
        sub_1AF0D4F18(v143, &v184, v141, v142);

        LODWORD(v167) = 0;
        v50 = v181;
        v51 = v151;
        v135 = v174;
LABEL_94:
        sub_1AF8169E8(v150, "initialBuildScripts");

        v53 = v182;
        if ((v135 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      v177 = v107;

      type metadata accessor for MetalTrampolineCodeGen();
      swift_initStackObject();

      sub_1AFB0F318(v50, v104, v105);

      LOWORD(v184) = 512;
      v124 = v157;
      sub_1AFB03BB4(&v184, v157);
      v72 = v175;
      v73 = v176;

      if ((*(v73 + 48))(v124, 1, v72) == 1)
      {
        sub_1AF81FE8C(v124, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
        v71 = 0;
      }

      else
      {
        v133 = v152;
        (*(v73 + 32))(v152, v124, v72);
        v71 = sub_1AF744858(v133, v162, v161);
        (*(v73 + 8))(v133, v72);
        v186 = v71;
      }

      v136 = v182;
      v137 = v155;
      sub_1AFDFC018();

      (*(v73 + 8))(v136, v72);
      (*(v73 + 32))(v136, v137, v72);
      v138 = v154;
      (*(v73 + 16))(v154, v136, v72);
      v139 = objc_allocWithZone(MEMORY[0x1E696AC38]);
      v140 = sub_1AF81B794(v138, 0);
      v74 = 0;
      v144 = v140;

      LODWORD(v167) = 1;
      v135 = 1;
      v178 = v144;
    }

    v51 = v151;
    goto LABEL_94;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v80 = v51;
  v81 = sub_1AFDFDA08();
  v82 = v175;
  v83 = v176;
  v84 = v178;
  if (qword_1ED731058 != -1)
  {
    v145 = v81;
    swift_once();
    v81 = v145;
  }

  v184 = 0;
  sub_1AF0D4F18(v81, &v184, 0xD000000000000028, 0x80000001AFF361E0);

  (*(v83 + 8))(v182, v82);
  return result;
}

uint64_t sub_1AF8169E8(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1AFDFC548();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFC4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1AFDFC538();
  sub_1AF477C68(v10, qword_1ED73B608);
  v11 = sub_1AFDFC528();
  sub_1AFDFC558();
  v12 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1B271DEA0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1AF816C78(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1AFDFCAF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFCAE8();
  v10 = sub_1AFDFCAD8();
  (*(v7 + 8))(v9, v6);
  v15[0] = 0;
  v11 = [a4 newLibraryWithData:v10 error:v15];

  v12 = v15[0];
  if (v11)
  {
    *a3 = v11;
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v15[0];
    sub_1AFDFBF58();

    swift_willThrow();
  }
}

uint64_t sub_1AF816E08()
{

  return swift_deallocClassInstance();
}

char *sub_1AF816E68(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = a3[5];
    v9 = sub_1AFDFC318();
    v10 = *(*(v9 - 8) + 16);

    v10(&v3[v6], &a2[v6], v9);
    v11 = a3[7];
    *&v3[a3[6]] = *&a2[a3[6]];
    v3[v11] = a2[v11];
    v12 = a3[9];
    v3[a3[8]] = a2[a3[8]];
    *&v3[v12] = *&a2[v12];
    v13 = a3[10];
    v14 = &v3[v13];
    v15 = &a2[v13];
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
  }

  return v3;
}

uint64_t sub_1AF816F94(uint64_t a1, int *a2)
{

  v4 = a2[5];
  v5 = sub_1AFDFC318();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

char *sub_1AF81702C(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_1AFDFC318();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v10] = a2[v10];
  v11 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[10];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = *(v14 + 1);
  *v13 = *v14;
  *(v13 + 1) = v15;

  return a1;
}

char *sub_1AF81710C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = sub_1AFDFC318();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];

  v8 = a3[10];
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 1) = *(v10 + 1);

  return a1;
}

char *sub_1AF81720C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AFDFC318();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v9] = *&a2[v9];
  *&a1[a3[10]] = *&a2[a3[10]];
  return a1;
}

char *sub_1AF8172BC(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = sub_1AFDFC318();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v9] = a2[v9];
  v10 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v10] = *&a2[v10];

  v11 = a3[10];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v15 = *v13;
  v14 = *(v13 + 1);
  *v12 = v15;
  *(v12 + 1) = v14;

  return a1;
}

uint64_t type metadata accessor for BundleInfo(uint64_t a1)
{
  result = qword_1ED72DEF0;
  if (!qword_1ED72DEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF817400(uint64_t a1)
{
  result = sub_1AFDFC318();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1AF8174C4()
{
  result = qword_1EB63F210;
  if (!qword_1EB63F210)
  {
    result = swift_getWitnessTable(byte_1AFE79BA8, &type metadata for VFXLoader.InitializePhases, v0, v1);
    atomic_store(result, &qword_1EB63F210);
  }

  return result;
}

unint64_t sub_1AF81751C()
{
  result = qword_1EB63F218;
  if (!qword_1EB63F218)
  {
    result = swift_getWitnessTable(byte_1AFE79B78, &type metadata for VFXLoader.InitializePhases, v0, v1);
    atomic_store(result, &qword_1EB63F218);
  }

  return result;
}

unint64_t sub_1AF817574()
{
  result = qword_1EB63F220;
  if (!qword_1EB63F220)
  {
    result = swift_getWitnessTable(aQ_59, &type metadata for VFXLoader.InitializePhases, v0, v1);
    atomic_store(result, &qword_1EB63F220);
  }

  return result;
}

unint64_t sub_1AF8175CC()
{
  result = qword_1EB63F228;
  if (!qword_1EB63F228)
  {
    result = swift_getWitnessTable(byte_1AFE79C08, &type metadata for VFXLoader.InitializePhases, v0, v1);
    atomic_store(result, &qword_1EB63F228);
  }

  return result;
}

unint64_t sub_1AF817624()
{
  result = qword_1EB632B80;
  if (!qword_1EB632B80)
  {
    result = swift_getWitnessTable(aA_47, &type metadata for EffectID, v0, v1);
    atomic_store(result, &qword_1EB632B80);
  }

  return result;
}

unint64_t sub_1AF817678()
{
  result = qword_1ED72DF18;
  if (!qword_1ED72DF18)
  {
    result = swift_getWitnessTable(asc_1AFE79E94, &type metadata for BundleInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED72DF18);
  }

  return result;
}

unint64_t sub_1AF8176CC()
{
  result = qword_1EB63F240;
  if (!qword_1EB63F240)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF8201AC(255, &qword_1EB63F238, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    v4[0] = MEMORY[0x1E69E6538];
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EB63F240);
  }

  return result;
}

void sub_1AF817768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF817678();
    v7 = a3(a1, &type metadata for BundleInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF8177CC(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v246 = qword_1ED73B840;
  v247 = 0;
  v248 = 2;
  v249 = 0;
  v250 = 2;
  v251 = 0;
  sub_1AF7044B4(1, &v169);
  v252 = v169;
  v253 = v170;
  v254 = v171;
  v255 = v172 | 1;
  v256 = v173;
  v257 = v174;
  if ((a11 & 0x100000000) != 0)
  {
    v16 = 0x200000000;
  }

  else
  {
    v16 = a11;
  }

  v118 = v16;
  sub_1AF6B06C0(v123, &v252, v16, v175);
  v153 = a8;
  v116 = a1;
  if (*&v175[0])
  {
    v17 = v123;
    if (v179 >= 1 && *(&v177 + 1))
    {
      v129 = a7;
      v132 = v12;
      v18 = *(&v176 + 1);
      v19 = *(&v178 + 1);
      v20 = *(&v176 + 1) + 48 * *(&v177 + 1);
      sub_1AF81F4A8(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      v142 = v21;
      v240 = v176;
      v241 = v177;
      v242 = v178;
      v243 = v179;
      v238 = v175[0];
      v239 = v175[1];
      sub_1AF5DD298(&v238, &v218);
      v119 = v20;
      v121 = v19;
      do
      {
        v22 = *(v18 + 40);
        v23 = *(v22 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v23);
        os_unfair_lock_lock(*(v22 + 344));
        v24 = *(v22 + 24);

        v220 = 0;
        v219 = 0u;
        v218 = 0u;
        memset(v199, 0, sizeof(v199));
        v25 = sub_1AF65A4B4(v24, v142, &off_1F2558F90, 0, 0, &v218, v199);

        sub_1AF5DD41C(v199);
        sub_1AF5DD41C(&v218);
        if (sub_1AF649CEC(v25))
        {
          sub_1AF649D40(v25, v19);
        }

        else
        {
          v138 = v18;
          v26 = *(v22 + 232);
          v27 = *(v22 + 240);
          v124 = *(v22 + 120);
          v166 = *(v22 + 28);
          v164 = *(v22 + 32);
          v28 = *(v22 + 16);
          v29 = *(v22 + 40);
          v30 = *(v29 + 200);
          v161 = *(*(v28 + 88) + 8 * v25 + 32);

          if ((v30 & 1) != 0 || *(v161 + 200) == 1)
          {
            *(v28 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v29 = *(v22 + 40);
          }

          v157 = *(v22 + 128);
          v31 = *(v22 + 256);
          sub_1AF5B4FCC(v29, v26, v27, 0, v22);
          v145 = *(v22 + 256);
          v149 = v31;
          v32 = v145 - v31;
          if (v145 == v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v31;
          }

          *v199 = v33;
          v34 = *(*(v22 + 40) + 24);
          v35 = *(v34 + 16);
          if (v35)
          {
            v36 = v34 + 32;

            for (i = 0; i != v35; ++i)
            {
              v38 = (v36 + 40 * i);
              if ((v38[4] & 1) == 0)
              {
                v39 = *v38;
                v41 = v38[2];
                v40 = v38[3];
                v42 = *(v161 + 24);
                v43 = *(v42 + 16);
                if (v43)
                {
                  v44 = (v42 + 32);
                  while (*v44 != v39)
                  {
                    v44 += 5;
                    if (!--v43)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:
                  sub_1AF640BC8(v157 + v41 * v33 + v40, v32);
                }
              }
            }
          }

          v19 = v121;
          if (*(v28 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v28 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v22 + 72) * v32);
          }

          if (*(v22 + 184))
          {
            v45 = 0;
          }

          else
          {
            v45 = *(v22 + 168);
          }

          v191 = 0;

          MEMORY[0x1EEE9AC00](v46);
          v47 = v166;
          v48 = v164;
          *&v219 = v45;
          DWORD2(v219) = -1;
          v220 = v149;
          v221 = v145;
          v222 = v149;
          v223 = v145;
          *&v218 = v149;
          *(&v218 + 1) = v145;
          if (v32 < 1)
          {

            v18 = v138;
          }

          else
          {
            v18 = v138;
            do
            {
              LOBYTE(v180[0]) = v48;
              sub_1AF6248A8(v25, v47 | (v48 << 32), v124, v28, &v218, sub_1AF5C5E08);
              v48 = v164;
              v47 = v166;
            }

            while ((*(&v218 + 1) - v218) > 0);
          }

          v49 = *(v22 + 192);
          v20 = v119;
          if (v49)
          {
            v50 = *(v22 + 208);
            sub_1AF75D364(v149, v145, v49);
            sub_1AF75D364(v149, v145, v50);
          }
        }

        v18 += 48;
        os_unfair_lock_unlock(*(v22 + 344));
        os_unfair_lock_unlock(*(v22 + 376));
      }

      while (v18 != v20);
      sub_1AF5D1564(v175);
      sub_1AF5D1564(v175);
      v17 = v123;
      a7 = v129;
      v12 = v132;
    }

    else
    {
      sub_1AF5D1564(v175);
    }
  }

  else
  {
    v17 = v123;
  }

  sub_1AF6B06C0(v17, &v252, v118, v180);
  if (*&v180[0])
  {
    v51 = a2;
    if (v184 < 1 || !*(&v182 + 1))
    {
      sub_1AF5D1564(v180);
      goto LABEL_84;
    }

    v130 = a7;
    v133 = v12;
    v52 = *(&v181 + 1);
    v146 = *(&v183 + 1);
    v53 = *(&v181 + 1) + 48 * *(&v182 + 1);
    sub_1AF81F4A8(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v55 = v54;
    v240 = v181;
    v241 = v182;
    v242 = v183;
    v243 = v184;
    v238 = v180[0];
    v239 = v180[1];
    sub_1AF5DD298(&v238, &v218);
    v120 = v55;
    v122 = v53;
    do
    {
      v56 = *(v52 + 40);
      v57 = *(v56 + 376);
      swift_retain_n();
      os_unfair_lock_lock(v57);
      os_unfair_lock_lock(*(v56 + 344));
      v58 = *(v56 + 24);

      v220 = 0;
      v219 = 0u;
      v218 = 0u;
      memset(v199, 0, sizeof(v199));
      v59 = sub_1AF65A4B4(v58, v55, &off_1F250F310, 0, 0, &v218, v199);

      sub_1AF5DD41C(v199);
      sub_1AF5DD41C(&v218);
      if (sub_1AF649CEC(v59))
      {
        sub_1AF649D40(v59, v146);
      }

      else
      {
        v143 = v52;
        v60 = *(v56 + 232);
        v61 = *(v56 + 240);
        v125 = *(v56 + 120);
        v162 = *(v56 + 28);
        v62 = *(v56 + 32);
        v63 = *(v56 + 16);
        v64 = *(v56 + 40);
        v65 = *(v64 + 200);
        v167 = *(*(v63 + 88) + 8 * v59 + 32);

        if ((v65 & 1) != 0 || *(v167 + 200) == 1)
        {
          *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
          v64 = *(v56 + 40);
        }

        v139 = v62;
        v66 = v162;
        v165 = *(v56 + 128);
        v67 = *(v56 + 256);
        sub_1AF5B4FCC(v64, v60, v61, 0, v56);
        v150 = *(v56 + 256);
        v68 = v150 - v67;
        v158 = v67;
        if (v150 == v67)
        {
          v69 = 0;
        }

        else
        {
          v69 = v67;
        }

        *v199 = v69;
        v70 = *(*(v56 + 40) + 24);
        v71 = *(v70 + 16);
        if (v71)
        {
          v72 = v70 + 32;

          v73 = 0;
          v74 = v68;
          do
          {
            v75 = (v72 + 40 * v73);
            if ((v75[4] & 1) == 0)
            {
              v76 = *v75;
              v78 = v75[2];
              v77 = v75[3];
              v79 = *(v167 + 24);
              v80 = *(v79 + 16);
              if (v80)
              {
                v81 = (v79 + 32);
                while (*v81 != v76)
                {
                  v81 += 5;
                  if (!--v80)
                  {
                    goto LABEL_61;
                  }
                }
              }

              else
              {
LABEL_61:
                sub_1AF640BC8(v165 + v78 * v69 + v77, v68);
              }
            }

            ++v73;
          }

          while (v73 != v71);

          v66 = v162;
        }

        else
        {
          v74 = v150 - v67;
        }

        if (*(v63 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v56 + 72) * v74);
        }

        v82 = v74;
        if (*(v56 + 184))
        {
          v83 = 0;
        }

        else
        {
          v83 = *(v56 + 168);
        }

        v191 = 0;

        MEMORY[0x1EEE9AC00](v84);
        *&v219 = v83;
        DWORD2(v219) = -1;
        v220 = v158;
        v221 = v150;
        v222 = v158;
        v223 = v150;
        *&v218 = v158;
        *(&v218 + 1) = v150;
        if (v82 >= 1)
        {
          do
          {
            LOBYTE(v236[0]) = v139;
            sub_1AF6248A8(v59, v66 | (v139 << 32), v125, v63, &v218, sub_1AF5C5E08);
          }

          while ((*(&v218 + 1) - v218) > 0);
        }

        v85 = *(v56 + 192);
        v55 = v120;
        if (v85)
        {
          v86 = *(v56 + 208);
          sub_1AF75D364(v158, v150, v85);
          sub_1AF75D364(v158, v150, v86);
        }

        v52 = v143;
        v53 = v122;
      }

      v52 += 48;
      os_unfair_lock_unlock(*(v56 + 344));
      os_unfair_lock_unlock(*(v56 + 376));
    }

    while (v52 != v53);
    sub_1AF5D1564(v180);
    sub_1AF5D1564(v180);
    a7 = v130;
    v12 = v133;
  }

  v51 = a2;
LABEL_84:
  v163 = sub_1AFB08304(0, v116, v51);
  if (v87)
  {
    v88 = v87;
    sub_1AF8D5F10(1, 2, 2, &v185);
    v230 = v185;
    v231 = v186;
    v232 = v187;
    v233 = v188 | 1;
    v234 = v189;
    v235 = v190;
    sub_1AF6B06C0(v123, &v230, v118, &v191);
    v168 = v88;
    v128 = v191;
    if (v191)
    {
      v89 = v194;
      v90 = v197;
      v207 = v192;
      v208 = v193;
      v126 = v198;
      v127 = v196;
      if (v198 < 1)
      {
        sub_1AF5D1564(&v191);
      }

      else
      {
        if (v195)
        {
          v151 = v195;
          v159 = *(v197 + 32);
          v147 = *(v196 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

          sub_1AF5D15C0(&v191, &v238);
          v91 = (v89 + 24);
          v131 = a7;
          v134 = v12;
          do
          {
            v93 = *(v91 - 6);
            v92 = *(v91 - 5);
            v94 = *(v91 - 4);
            v96 = *(v91 - 1);
            v95 = *v91;
            v98 = v91[1];
            v97 = v91[2];
            v140 = v91;
            if (v147)
            {
              v99 = *(v97 + 376);

              os_unfair_lock_lock(v99);
              os_unfair_lock_lock(*(v97 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v159);
            v100 = *(v90 + 64);
            v236[0] = *(v90 + 48);
            v236[1] = v100;
            v237 = *(v90 + 80);
            v101 = *(*(*(*(v97 + 40) + 16) + 32) + 16) + 1;
            *(v90 + 48) = ecs_stack_allocator_allocate(*(v90 + 32), 48 * v101, 8);
            *(v90 + 56) = v101;
            *(v90 + 72) = 0;
            *(v90 + 80) = 0;
            *(v90 + 64) = 0;
            LOBYTE(v218) = 1;
            *&v238 = v127;
            *(&v238 + 1) = v97;
            *&v239 = v90;
            *(&v239 + 1) = v94;
            *&v240 = (v92 - v93 + v94);
            *(&v240 + 1) = v126;
            *&v241 = v93;
            *(&v241 + 1) = v92;
            v242 = 0uLL;
            LOBYTE(v243) = 1;
            *(&v243 + 1) = v96;
            v244 = v95;
            v245 = v98;

            sub_1AFD3D69C(&v238, a9, a3, a4 & 1, v163, v168, a6, v153, v102, a5, v131, v134, a10);

            v209 = v128;
            v210 = v207;
            v211 = v208;
            sub_1AF630994(v90, &v209, v236);
            sub_1AF62D29C(v97);
            ecs_stack_allocator_pop_snapshot(v159);
            if (v147)
            {
              os_unfair_lock_unlock(*(v97 + 344));
              os_unfair_lock_unlock(*(v97 + 376));
            }

            v91 = v140 + 6;
            --v151;
          }

          while (v151);
          sub_1AF5D1564(&v191);
          sub_1AF5D1564(&v191);
        }

        else
        {

          sub_1AF5D1564(&v191);
        }
      }
    }

    sub_1AF6B06C0(v123, &v230, v118, v199);
    v144 = *v199;
    if (*v199)
    {
      v103 = v200;
      v104 = v201;
      v105 = v203;
      v205 = *&v199[8];
      v206 = *&v199[24];
      v137 = v204;
      v141 = v202;
      if (v204 <= 0)
      {
        sub_1AF5D15C0(v199, &v218);

        sub_1AF81F384(&v169, sub_1AF81FB10);
        sub_1AF81F384(&v185, sub_1AF81FB4C);
        sub_1AF5D1564(v199);
        return sub_1AF5D1564(v199);
      }

      if (v201)
      {
        v106 = *(v203 + 32);
        v160 = *(v202 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(v199, &v218);
        v107 = (v103 + 24);
        do
        {
          v109 = *(v107 - 6);
          v108 = *(v107 - 5);
          v110 = *(v107 - 4);
          v152 = *v107;
          v154 = *(v107 - 1);
          v111 = v107[2];
          v148 = v107[1];
          if (v160)
          {
            v112 = *(v111 + 376);

            os_unfair_lock_lock(v112);
            os_unfair_lock_lock(*(v111 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v106);
          v113 = *(v105 + 64);
          v216[0] = *(v105 + 48);
          v216[1] = v113;
          v217 = *(v105 + 80);
          v114 = *(*(*(*(v111 + 40) + 16) + 32) + 16) + 1;
          *(v105 + 48) = ecs_stack_allocator_allocate(*(v105 + 32), 48 * v114, 8);
          *(v105 + 56) = v114;
          *(v105 + 72) = 0;
          *(v105 + 80) = 0;
          *(v105 + 64) = 0;
          v215 = 1;
          *&v218 = v141;
          *(&v218 + 1) = v111;
          *&v219 = v105;
          *(&v219 + 1) = v110;
          v220 = (v108 - v109 + v110);
          v221 = v137;
          v222 = v109;
          v223 = v108;
          v224 = 0;
          v225 = 0;
          v226 = 1;
          v227 = v154;
          v228 = v152;
          v229 = v148;

          sub_1AFD3BDCC(&v218, a9, a3, a4 & 1, v163, v168);

          v212 = v144;
          v213 = v205;
          v214 = v206;
          sub_1AF630994(v105, &v212, v216);
          sub_1AF62D29C(v111);
          ecs_stack_allocator_pop_snapshot(v106);
          if (v160)
          {
            os_unfair_lock_unlock(*(v111 + 344));
            os_unfair_lock_unlock(*(v111 + 376));
          }

          v107 += 6;
          --v104;
        }

        while (v104);
      }

      else
      {

        sub_1AF5D15C0(v199, &v218);
      }

      sub_1AF81F384(&v169, sub_1AF81FB10);
      sub_1AF81F384(&v185, sub_1AF81FB4C);
      sub_1AF5D1564(v199);

      sub_1AF5D1564(v199);
    }

    else
    {

      sub_1AF81F384(&v169, sub_1AF81FB10);
      sub_1AF81F384(&v185, sub_1AF81FB4C);
    }
  }

  else
  {
    *&v238 = 0;
    *(&v238 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v238 = 0xD000000000000011;
    *(&v238 + 1) = 0x80000001AFF365C0;
    MEMORY[0x1B2718AE0](v116, v51);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF365E0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF818CCC(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v16 = a11;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v253 = qword_1ED73B840;
  v254 = 0;
  v255 = 2;
  v256 = 0;
  v257 = 2;
  v258 = 0;
  sub_1AF70424C(1, &v176);
  v259 = v176;
  v260 = v177;
  v261 = v178;
  v262 = v179 | 1;
  v263 = v180;
  v264 = v181;
  if ((a11 & 0x100000000) != 0)
  {
    v16 = 0x200000000;
  }

  sub_1AF6B06C0(v124, &v259, v16, v182);
  if (*&v182[0])
  {
    v17 = v124;
    if (v186 >= 1 && *(&v184 + 1))
    {
      v117 = a1;
      v119 = a2;
      v121 = v16;
      v138 = a8;
      v141 = v12;
      v18 = *(&v183 + 1);
      v19 = *(&v185 + 1);
      v20 = *(&v183 + 1) + 48 * *(&v184 + 1);
      sub_1AF81F4A8(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      v22 = v21;
      v247 = v183;
      v248 = v184;
      v249 = v185;
      v250 = v186;
      v245 = v182[0];
      v246 = v182[1];
      sub_1AF5DD298(&v245, &v225);
      v128 = v20;
      v130 = v19;
      v125 = v22;
      do
      {
        v23 = *(v18 + 40);
        v24 = *(v23 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v24);
        os_unfair_lock_lock(*(v23 + 344));
        v25 = *(v23 + 24);

        v227 = 0;
        v226 = 0u;
        v225 = 0u;
        memset(v206, 0, sizeof(v206));
        v26 = sub_1AF65A4B4(v25, v22, &off_1F2558F90, 0, 0, &v225, v206);

        sub_1AF5DD41C(v206);
        sub_1AF5DD41C(&v225);
        if (sub_1AF649CEC(v26))
        {
          sub_1AF649D40(v26, v19);
        }

        else
        {
          v153 = v18;
          v27 = *(v23 + 232);
          v28 = *(v23 + 240);
          v134 = *(v23 + 120);
          v173 = *(v23 + 28);
          v171 = *(v23 + 32);
          v29 = *(v23 + 16);
          v30 = *(v23 + 40);
          v31 = *(v30 + 200);
          v168 = *(*(v29 + 88) + 8 * v26 + 32);

          if ((v31 & 1) != 0 || *(v168 + 200) == 1)
          {
            *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v30 = *(v23 + 40);
          }

          v164 = *(v23 + 128);
          v32 = *(v23 + 256);
          sub_1AF5B4FCC(v30, v27, v28, 0, v23);
          v157 = *(v23 + 256);
          v160 = v32;
          v33 = v157 - v32;
          if (v157 == v32)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          *v206 = v34;
          v35 = *(*(v23 + 40) + 24);
          v36 = *(v35 + 16);
          if (v36)
          {
            v37 = v35 + 32;

            for (i = 0; i != v36; ++i)
            {
              v39 = (v37 + 40 * i);
              if ((v39[4] & 1) == 0)
              {
                v40 = *v39;
                v42 = v39[2];
                v41 = v39[3];
                v43 = *(v168 + 24);
                v44 = *(v43 + 16);
                if (v44)
                {
                  v45 = (v43 + 32);
                  while (*v45 != v40)
                  {
                    v45 += 5;
                    if (!--v44)
                    {
                      goto LABEL_20;
                    }
                  }
                }

                else
                {
LABEL_20:
                  sub_1AF640BC8(v164 + v42 * v34 + v41, v33);
                }
              }
            }
          }

          v19 = v130;
          if (*(v29 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v23 + 72) * v33);
          }

          if (*(v23 + 184))
          {
            v46 = 0;
          }

          else
          {
            v46 = *(v23 + 168);
          }

          v198 = 0;

          MEMORY[0x1EEE9AC00](v47);
          v48 = v173;
          v49 = v171;
          *&v226 = v46;
          DWORD2(v226) = -1;
          v227 = v160;
          v228 = v157;
          v229 = v160;
          v230 = v157;
          *&v225 = v160;
          *(&v225 + 1) = v157;
          if (v33 < 1)
          {

            v18 = v153;
          }

          else
          {
            v18 = v153;
            do
            {
              LOBYTE(v187[0]) = v49;
              sub_1AF6248A8(v26, v48 | (v49 << 32), v134, v29, &v225, sub_1AF5C5E08);
              v49 = v171;
              v48 = v173;
            }

            while ((*(&v225 + 1) - v225) > 0);
          }

          v50 = *(v23 + 192);
          v22 = v125;
          v20 = v128;
          if (v50)
          {
            v51 = *(v23 + 208);
            sub_1AF75D364(v160, v157, v50);
            sub_1AF75D364(v160, v157, v51);
          }
        }

        v18 += 48;
        os_unfair_lock_unlock(*(v23 + 344));
        os_unfair_lock_unlock(*(v23 + 376));
      }

      while (v18 != v20);
      sub_1AF5D1564(v182);
      sub_1AF5D1564(v182);
      v16 = v121;
      v17 = v124;
      a8 = v138;
      v12 = v141;
      a2 = v119;
      a1 = v117;
    }

    else
    {
      sub_1AF5D1564(v182);
    }
  }

  else
  {
    v17 = v124;
  }

  sub_1AF6B06C0(v17, &v259, v16, v187);
  if (*&v187[0])
  {
    if (v191 >= 1 && *(&v189 + 1))
    {
      v118 = a1;
      v120 = a2;
      v122 = v16;
      v139 = a8;
      v142 = v12;
      v52 = *(&v188 + 1);
      v158 = *(&v190 + 1);
      v53 = *(&v188 + 1) + 48 * *(&v189 + 1);
      sub_1AF81F4A8(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
      v55 = v54;
      v247 = v188;
      v248 = v189;
      v249 = v190;
      v250 = v191;
      v245 = v187[0];
      v246 = v187[1];
      sub_1AF5DD298(&v245, &v225);
      v126 = v55;
      v129 = v53;
      do
      {
        v56 = *(v52 + 40);
        v57 = *(v56 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v57);
        os_unfair_lock_lock(*(v56 + 344));
        v58 = *(v56 + 24);

        v227 = 0;
        v226 = 0u;
        v225 = 0u;
        memset(v206, 0, sizeof(v206));
        v59 = sub_1AF65A4B4(v58, v55, &off_1F250F310, 0, 0, &v225, v206);

        sub_1AF5DD41C(v206);
        sub_1AF5DD41C(&v225);
        if (sub_1AF649CEC(v59))
        {
          sub_1AF649D40(v59, v158);
        }

        else
        {
          v154 = v52;
          v60 = *(v56 + 232);
          v61 = *(v56 + 240);
          v132 = *(v56 + 120);
          v169 = *(v56 + 28);
          v62 = *(v56 + 32);
          v63 = *(v56 + 16);
          v64 = *(v56 + 40);
          v65 = *(v64 + 200);
          v174 = *(*(v63 + 88) + 8 * v59 + 32);

          if ((v65 & 1) != 0 || *(v174 + 200) == 1)
          {
            *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v64 = *(v56 + 40);
          }

          v150 = v62;
          v66 = v169;
          v172 = *(v56 + 128);
          v67 = *(v56 + 256);
          sub_1AF5B4FCC(v64, v60, v61, 0, v56);
          v161 = *(v56 + 256);
          v165 = v67;
          v68 = v161 - v67;
          if (v161 == v67)
          {
            v69 = 0;
          }

          else
          {
            v69 = v67;
          }

          *v206 = v69;
          v70 = *(*(v56 + 40) + 24);
          v71 = *(v70 + 16);
          if (v71)
          {
            v72 = v70 + 32;

            v73 = 0;
            v74 = v68;
            do
            {
              v75 = (v72 + 40 * v73);
              if ((v75[4] & 1) == 0)
              {
                v76 = *v75;
                v78 = v75[2];
                v77 = v75[3];
                v79 = *(v174 + 24);
                v80 = *(v79 + 16);
                if (v80)
                {
                  v81 = (v79 + 32);
                  while (*v81 != v76)
                  {
                    v81 += 5;
                    if (!--v80)
                    {
                      goto LABEL_60;
                    }
                  }
                }

                else
                {
LABEL_60:
                  sub_1AF640BC8(v172 + v78 * v69 + v77, v68);
                }
              }

              ++v73;
            }

            while (v73 != v71);

            v66 = v169;
          }

          else
          {
            v74 = v161 - v67;
          }

          if (*(v63 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v56 + 72) * v74);
          }

          v82 = v74;
          if (*(v56 + 184))
          {
            v83 = 0;
          }

          else
          {
            v83 = *(v56 + 168);
          }

          v198 = 0;

          MEMORY[0x1EEE9AC00](v84);
          *&v226 = v83;
          DWORD2(v226) = -1;
          v227 = v165;
          v228 = v161;
          v229 = v165;
          v230 = v161;
          *&v225 = v165;
          *(&v225 + 1) = v161;
          if (v82 >= 1)
          {
            do
            {
              LOBYTE(v243[0]) = v150;
              sub_1AF6248A8(v59, v66 | (v150 << 32), v132, v63, &v225, sub_1AF5C5E08);
            }

            while ((*(&v225 + 1) - v225) > 0);
          }

          v85 = *(v56 + 192);
          v55 = v126;
          if (v85)
          {
            v86 = *(v56 + 208);
            sub_1AF75D364(v165, v161, v85);
            sub_1AF75D364(v165, v161, v86);
          }

          v52 = v154;
          v53 = v129;
        }

        v52 += 48;
        os_unfair_lock_unlock(*(v56 + 344));
        os_unfair_lock_unlock(*(v56 + 376));
      }

      while (v52 != v53);
      sub_1AF5D1564(v187);
      sub_1AF5D1564(v187);
      a8 = v139;
      v12 = v142;
      v16 = v122;
      a1 = v118;
      a2 = v120;
    }

    else
    {
      sub_1AF5D1564(v187);
    }
  }

  v170 = sub_1AFB08304(0, a1, a2);
  v175 = v87;
  if (v87)
  {
    sub_1AF8D5C88(1, 2, 2, &v192);
    v237 = v192;
    v238 = v193;
    v239 = v194;
    v240 = v195 | 1;
    v241 = v196;
    v242 = v197;
    sub_1AF6B06C0(v124, &v237, v16, &v198);
    v135 = v198;
    if (v198)
    {
      v88 = v201;
      v89 = v202;
      v90 = v204;
      v214 = v199;
      v215 = v200;
      v131 = v205;
      v133 = v203;
      if (v205 < 1)
      {
        sub_1AF5D1564(&v198);
      }

      else
      {
        if (v202)
        {
          v123 = v16;
          v91 = *(v204 + 32);
          v166 = *(v203 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

          sub_1AF5D15C0(&v198, &v245);
          v92 = (v88 + 24);
          v140 = a8;
          v143 = v12;
          v127 = v91;
          do
          {
            v93 = *(v92 - 6);
            v94 = *(v92 - 5);
            v95 = *(v92 - 4);
            v148 = *v92;
            v151 = *(v92 - 1);
            v97 = v92[1];
            v96 = v92[2];
            v155 = v92;
            v162 = v89;
            if (v166)
            {
              v98 = *(v96 + 376);

              os_unfair_lock_lock(v98);
              os_unfair_lock_lock(*(v96 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v91);
            v99 = *(v90 + 64);
            v243[0] = *(v90 + 48);
            v243[1] = v99;
            v244 = *(v90 + 80);
            v100 = *(*(*(*(v96 + 40) + 16) + 32) + 16) + 1;
            *(v90 + 48) = ecs_stack_allocator_allocate(*(v90 + 32), 48 * v100, 8);
            *(v90 + 56) = v100;
            *(v90 + 72) = 0;
            *(v90 + 80) = 0;
            *(v90 + 64) = 0;
            LOBYTE(v225) = 1;
            *&v245 = v133;
            *(&v245 + 1) = v96;
            *&v246 = v90;
            *(&v246 + 1) = v95;
            *&v247 = (v94 - v93 + v95);
            *(&v247 + 1) = v131;
            *&v248 = v93;
            *(&v248 + 1) = v94;
            v249 = 0uLL;
            LOBYTE(v250) = 1;
            *(&v250 + 1) = v151;
            v251 = v148;
            v252 = v97;

            sub_1AFD40BCC(&v245, a9, a3, a4 & 1, v170, v175, a6, v140, v101, a5, a7, v143, a10);

            v216 = v135;
            v217 = v214;
            v218 = v215;
            sub_1AF630994(v90, &v216, v243);
            sub_1AF62D29C(v96);
            ecs_stack_allocator_pop_snapshot(v127);
            if (v166)
            {
              os_unfair_lock_unlock(*(v96 + 344));
              os_unfair_lock_unlock(*(v96 + 376));
            }

            v92 = v155 + 6;
            --v89;
            v91 = v127;
          }

          while (v162 != 1);
          sub_1AF5D1564(&v198);
          sub_1AF5D1564(&v198);

          v16 = v123;
        }

        else
        {

          sub_1AF5D1564(&v198);
        }
      }

      v102 = v124;
    }

    else
    {
      v102 = v124;
    }

    sub_1AF6B06C0(v102, &v237, v16, v206);
    v152 = *v206;
    if (*v206)
    {
      v103 = v207;
      v104 = v208;
      v105 = v210;
      v212 = *&v206[8];
      v213 = *&v206[24];
      v147 = v211;
      v149 = v209;
      if (v211 <= 0)
      {
        sub_1AF5D15C0(v206, &v225);

        sub_1AF81F384(&v176, sub_1AF81F9C4);
        sub_1AF81F384(&v192, sub_1AF81FA00);
        sub_1AF5D1564(v206);
        return sub_1AF5D1564(v206);
      }

      if (v208)
      {
        v106 = *(v210 + 32);
        v167 = *(v209 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(v206, &v225);
        v107 = (v103 + 24);
        do
        {
          v108 = v106;
          v110 = *(v107 - 6);
          v109 = *(v107 - 5);
          v111 = *(v107 - 4);
          v159 = *v107;
          v163 = *(v107 - 1);
          v112 = v107[2];
          v156 = v107[1];
          if (v167)
          {
            v113 = *(v112 + 376);

            os_unfair_lock_lock(v113);
            os_unfair_lock_lock(*(v112 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v108);
          v114 = *(v105 + 64);
          v223[0] = *(v105 + 48);
          v223[1] = v114;
          v224 = *(v105 + 80);
          v115 = *(*(*(*(v112 + 40) + 16) + 32) + 16) + 1;
          *(v105 + 48) = ecs_stack_allocator_allocate(*(v105 + 32), 48 * v115, 8);
          *(v105 + 56) = v115;
          *(v105 + 72) = 0;
          *(v105 + 80) = 0;
          *(v105 + 64) = 0;
          v222 = 1;
          *&v225 = v149;
          *(&v225 + 1) = v112;
          *&v226 = v105;
          *(&v226 + 1) = v111;
          v227 = (v109 - v110 + v111);
          v228 = v147;
          v229 = v110;
          v230 = v109;
          v231 = 0;
          v232 = 0;
          v233 = 1;
          v234 = v163;
          v235 = v159;
          v236 = v156;

          sub_1AFD3F8E8(&v225, a9, v170, v175);

          v219 = v152;
          v220 = v212;
          v221 = v213;
          sub_1AF630994(v105, &v219, v223);
          sub_1AF62D29C(v112);
          ecs_stack_allocator_pop_snapshot(v108);
          v106 = v108;
          if (v167)
          {
            os_unfair_lock_unlock(*(v112 + 344));
            os_unfair_lock_unlock(*(v112 + 376));
          }

          v107 += 6;
          --v104;
        }

        while (v104);

        sub_1AF81F384(&v176, sub_1AF81F9C4);
        sub_1AF81F384(&v192, sub_1AF81FA00);
        sub_1AF5D1564(v206);

        sub_1AF5D1564(v206);
      }

      else
      {

        sub_1AF5D15C0(v206, &v225);

        sub_1AF81F384(&v176, sub_1AF81F9C4);
        sub_1AF81F384(&v192, sub_1AF81FA00);
        sub_1AF5D1564(v206);

        sub_1AF5D1564(v206);
      }
    }

    else
    {

      sub_1AF81F384(&v176, sub_1AF81F9C4);
      sub_1AF81F384(&v192, sub_1AF81FA00);
    }
  }

  else
  {
    *&v245 = 0;
    *(&v245 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v245 = 0xD000000000000011;
    *(&v245 + 1) = 0x80000001AFF365C0;
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF365E0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF81A254(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t *__return_ptr, uint64_t), uint64_t (*a13)(void, __n128), uint64_t (*a14)(uint64_t, uint64_t, uint64_t), unint64_t *a15, uint64_t (*a16)(uint64_t), uint64_t a17, uint64_t (*a18)(uint64_t, uint64_t, uint64_t), void (*a19)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), void (*a20)(uint64_t *__return_ptr, uint64_t, __n128), uint64_t (*a21)(void), void (*a22)(void *, uint64_t), uint64_t (*a23)(void), uint64_t (*a24)(void), void (*a25)(__int128 *, uint64_t, uint64_t, void, uint64_t, uint64_t), void (*a26)(__int128 *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = v26;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v293 = qword_1ED73B840;
  v294 = 0;
  v295 = 2;
  v296 = 0;
  v297 = 2;
  v298 = 0;
  a12(&v200, 1);
  v309 = v200;
  v310 = v201;
  v311 = v202;
  v312 = v203 | 1;
  v313 = v204;
  v314 = v205;
  if ((a11 & 0x100000000) != 0)
  {
    v31 = 0x200000000;
  }

  else
  {
    v31 = a11;
  }

  v145 = v31;
  v32 = sub_1AF6B06C0(v144, &v309, v31, v206);
  v172 = a1;
  if (*&v206[0])
  {
    v33 = v144;
    if (v210 >= 1 && *(&v208 + 1))
    {
      v158 = a8;
      v161 = a7;
      v164 = v27;
      v34 = *(&v207 + 1);
      v155 = *(&v209 + 1);
      v35 = *(&v207 + 1) + 48 * *(&v208 + 1);
      v152 = a13(0, v32);
      v303 = v207;
      v304 = v208;
      v305 = v209;
      v306 = v210;
      v301 = v206[0];
      v302 = v206[1];
      sub_1AF5DD298(&v301, &v264);
      v36 = 0;
      v142 = v35;
      do
      {
        v37 = *(v34 + 40);
        v38 = *(v37 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v38);
        os_unfair_lock_lock(*(v37 + 344));
        v39 = *(v37 + 24);

        v266 = 0;
        v265 = 0u;
        v264 = 0u;
        memset(v282, 0, sizeof(v282));
        v40 = sub_1AF65A4B4(v39, v152, &off_1F2558F90, 0, 0, &v264, v282);

        sub_1AF5DD41C(v282);
        sub_1AF5DD41C(&v264);
        if (sub_1AF649CEC(v40))
        {
          sub_1AF649D40(v40, v155);
        }

        else
        {
          v149 = v34;
          v41 = *(v37 + 232);
          v42 = *(v37 + 240);
          v146 = *(v37 + 120);
          v196 = *(v37 + 28);
          v193 = *(v37 + 32);
          v43 = *(v37 + 16);
          v44 = *(v37 + 40);
          v45 = *(v44 + 200);
          v191 = *(*(v43 + 88) + 8 * v40 + 32);

          if ((v45 & 1) != 0 || *(v191 + 200) == 1)
          {
            *(v43 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v44 = *(v37 + 40);
          }

          v46 = v36;
          v47 = a14;
          v186 = *(v37 + 128);
          v48 = *(v37 + 256);
          sub_1AF5B4FCC(v44, v41, v42, 0, v37);
          v175 = *(v37 + 256);
          v179 = v48;
          v49 = v175 - v48;
          if (v175 == v48)
          {
            v50 = 0;
          }

          else
          {
            v50 = v48;
          }

          v282[0] = v50;
          v51 = *(*(v37 + 40) + 24);
          v52 = *(v51 + 16);
          if (v52)
          {
            v189 = v46;
            v53 = v51 + 32;

            v54 = 0;
            v55 = v49;
            do
            {
              v56 = (v53 + 40 * v54);
              if ((v56[4] & 1) == 0)
              {
                v57 = *v56;
                v59 = v56[2];
                v58 = v56[3];
                v60 = *(v191 + 24);
                v61 = *(v60 + 16);
                if (v61)
                {
                  v62 = (v60 + 32);
                  while (*v62 != v57)
                  {
                    v62 += 5;
                    if (!--v61)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:
                  sub_1AF640BC8(v186 + v59 * v50 + v58, v49);
                }
              }

              ++v54;
            }

            while (v54 != v52);

            v36 = v189;
            v47 = a14;
          }

          else
          {
            v36 = v46;
            v55 = v49;
          }

          if (*(v43 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v43 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v37 + 72) * v55);
          }

          v63 = v55;
          if (*(v37 + 184))
          {
            v64 = 0;
          }

          else
          {
            v64 = *(v37 + 168);
          }

          v243 = 0;

          MEMORY[0x1EEE9AC00](v65);
          v66 = v196;
          v67 = v193;
          *&v265 = v64;
          DWORD2(v265) = -1;
          v266 = v179;
          v267 = v175;
          v268 = v179;
          v269 = v175;
          *&v264 = v179;
          *(&v264 + 1) = v175;
          if (v63 >= 1)
          {
            do
            {
              LOBYTE(v236) = v67;
              sub_1AF6248A8(v40, v66 | (v67 << 32), v146, v43, &v264, v47);
              v67 = v193;
              v66 = v196;
            }

            while ((*(&v264 + 1) - v264) > 0);
          }

          v68 = *(v37 + 192);
          a1 = v172;
          v34 = v149;
          if (v68)
          {
            v69 = *(v37 + 208);
            sub_1AF75D364(v179, v175, v68);
            sub_1AF75D364(v179, v175, v69);
          }

          v35 = v142;
        }

        v34 += 48;
        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v37 + 376));
      }

      while (v34 != v35);
      sub_1AF5D1564(v206);
      sub_1AF5D1564(v206);
      v33 = v144;
      a7 = v161;
      v27 = v164;
      a8 = v158;
    }

    else
    {
      sub_1AF5D1564(v206);
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
    v33 = v144;
  }

  sub_1AF6B06C0(v33, &v309, v145, v211);
  if (*&v211[0])
  {
    v70 = a2;
    if (v215 < 1 || !*(&v213 + 1))
    {
      sub_1AF5D1564(v211);
      goto LABEL_82;
    }

    v159 = a8;
    v162 = a7;
    v165 = v27;
    v71 = *(&v212 + 1);
    v156 = *(&v214 + 1);
    v72 = *(&v212 + 1) + 48 * *(&v213 + 1);
    sub_1AF81F4A8(0, a15, a16, a17, type metadata accessor for ScriptCompileAttempt);
    v153 = v73;
    v303 = v212;
    v304 = v213;
    v305 = v214;
    v306 = v215;
    v301 = v211[0];
    v302 = v211[1];
    sub_1AF5DD298(&v301, &v264);
    v143 = v72;
    do
    {
      v74 = *(v71 + 40);
      v75 = *(v74 + 376);
      swift_retain_n();
      os_unfair_lock_lock(v75);
      os_unfair_lock_lock(*(v74 + 344));
      v76 = *(v74 + 24);

      v266 = 0;
      v265 = 0u;
      v264 = 0u;
      memset(v282, 0, sizeof(v282));
      v77 = sub_1AF65A4B4(v76, v153, &off_1F250F310, 0, 0, &v264, v282);

      sub_1AF5DD41C(v282);
      sub_1AF5DD41C(&v264);
      if (sub_1AF649CEC(v77))
      {
        sub_1AF649D40(v77, v156);
      }

      else
      {
        v150 = v71;
        v78 = *(v74 + 232);
        v79 = *(v74 + 240);
        v147 = *(v74 + 120);
        v197 = *(v74 + 28);
        v194 = *(v74 + 32);
        v80 = *(v74 + 16);
        v81 = *(v74 + 40);
        v82 = *(v81 + 200);
        v192 = *(*(v80 + 88) + 8 * v77 + 32);

        if ((v82 & 1) != 0 || *(v192 + 200) == 1)
        {
          *(v80 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
          v81 = *(v74 + 40);
        }

        v83 = v36;
        v84 = a18;
        v187 = *(v74 + 128);
        v85 = *(v74 + 256);
        sub_1AF5B4FCC(v81, v78, v79, 0, v74);
        v176 = *(v74 + 256);
        v180 = v85;
        v86 = v176 - v85;
        if (v176 == v85)
        {
          v87 = 0;
        }

        else
        {
          v87 = v85;
        }

        v282[0] = v87;
        v88 = *(*(v74 + 40) + 24);
        v89 = *(v88 + 16);
        if (v89)
        {
          v190 = v83;
          v90 = v88 + 32;

          v91 = 0;
          v92 = v86;
          do
          {
            v93 = (v90 + 40 * v91);
            if ((v93[4] & 1) == 0)
            {
              v94 = *v93;
              v96 = v93[2];
              v95 = v93[3];
              v97 = *(v192 + 24);
              v98 = *(v97 + 16);
              if (v98)
              {
                v99 = (v97 + 32);
                while (*v99 != v94)
                {
                  v99 += 5;
                  if (!--v98)
                  {
                    goto LABEL_59;
                  }
                }
              }

              else
              {
LABEL_59:
                sub_1AF640BC8(v187 + v96 * v87 + v95, v86);
              }
            }

            ++v91;
          }

          while (v91 != v89);

          v36 = v190;
          v84 = a18;
        }

        else
        {
          v36 = v83;
          v92 = v86;
        }

        if (*(v80 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v80 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v74 + 72) * v92);
        }

        v100 = v92;
        if (*(v74 + 184))
        {
          v101 = 0;
        }

        else
        {
          v101 = *(v74 + 168);
        }

        v243 = 0;

        MEMORY[0x1EEE9AC00](v102);
        v103 = v197;
        v104 = v194;
        *&v265 = v101;
        DWORD2(v265) = -1;
        v266 = v180;
        v267 = v176;
        v268 = v180;
        v269 = v176;
        *&v264 = v180;
        *(&v264 + 1) = v176;
        if (v100 >= 1)
        {
          do
          {
            LOBYTE(v236) = v104;
            sub_1AF6248A8(v77, v103 | (v104 << 32), v147, v80, &v264, v84);
            v104 = v194;
            v103 = v197;
          }

          while ((*(&v264 + 1) - v264) > 0);
        }

        v105 = *(v74 + 192);
        a1 = v172;
        v71 = v150;
        if (v105)
        {
          v106 = *(v74 + 208);
          sub_1AF75D364(v180, v176, v105);
          sub_1AF75D364(v180, v176, v106);
        }

        v72 = v143;
      }

      v71 += 48;
      os_unfair_lock_unlock(*(v74 + 344));
      os_unfair_lock_unlock(*(v74 + 376));
    }

    while (v71 != v72);
    sub_1AF5D1564(v211);
    sub_1AF5D1564(v211);
    a7 = v162;
    v27 = v165;
    a8 = v159;
  }

  v70 = a2;
LABEL_82:
  v188 = sub_1AFB08304(0, a1, v70);
  if (v107)
  {
    v108 = v107;
    a19(&v216, 1, 2, 2);
    v276 = v216;
    v277 = v217;
    v278 = v218;
    v279 = v219 | 1;
    v280 = v220;
    v281 = v221;
    v109 = sub_1AF6B06C0(v144, &v276, v145, &v222);
    v195 = v108;
    v157 = v222;
    if (v222)
    {
      v110 = v225;
      v111 = v228;
      v253 = v223;
      v254 = v224;
      v151 = v229;
      v154 = v227;
      if (v229 < 1)
      {
        sub_1AF5D1564(&v222);
      }

      else
      {
        if (v226)
        {
          v112 = *(v228 + 32);
          v181 = v226;
          v177 = *(v227 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

          sub_1AF5D15C0(&v222, &v301);
          v113 = v181;
          v114 = (v110 + 24);
          v163 = a7;
          v166 = v27;
          v160 = a8;
          v148 = v112;
          do
          {
            v182 = v113;
            v115 = v112;
            v116 = *(v114 - 6);
            v117 = *(v114 - 5);
            v118 = *(v114 - 4);
            v120 = *(v114 - 1);
            v119 = *v114;
            v122 = v114[1];
            v121 = v114[2];
            v173 = v114;
            v198 = v121;
            if (v177)
            {
              v123 = *(v121 + 376);

              v124 = v123;
              v121 = v198;
              os_unfair_lock_lock(v124);
              os_unfair_lock_lock(*(v198 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v115);
            v125 = *(v111 + 64);
            v299[0] = *(v111 + 48);
            v299[1] = v125;
            v300 = *(v111 + 80);
            v126 = v121;
            v127 = *(*(*(*(v121 + 40) + 16) + 32) + 16) + 1;
            *(v111 + 48) = ecs_stack_allocator_allocate(*(v111 + 32), 48 * v127, 8);
            *(v111 + 56) = v127;
            *(v111 + 72) = 0;
            *(v111 + 80) = 0;
            *(v111 + 64) = 0;
            LOBYTE(v264) = 1;
            *&v301 = v154;
            *(&v301 + 1) = v126;
            *&v302 = v111;
            *(&v302 + 1) = v118;
            *&v303 = (v117 - v116 + v118);
            *(&v303 + 1) = v151;
            *&v304 = v116;
            *(&v304 + 1) = v117;
            v305 = 0uLL;
            LOBYTE(v306) = 1;
            *(&v306 + 1) = v120;
            v307 = v119;
            v308 = v122;

            a26(&v301, a9, a3, a4 & 1, v188, v195, a6, v160, a5, v163, v166, a10);

            v255 = v157;
            v256 = v253;
            v257 = v254;
            sub_1AF630994(v111, &v255, v299);
            sub_1AF62D29C(v198);
            v112 = v148;
            ecs_stack_allocator_pop_snapshot(v148);
            if (v177)
            {
              os_unfair_lock_unlock(*(v198 + 344));
              os_unfair_lock_unlock(*(v198 + 376));
            }

            v114 = v173 + 6;
            v113 = v182 - 1;
          }

          while (v182 != 1);
          sub_1AF5D1564(&v222);
          sub_1AF5D1564(&v222);
        }

        else
        {

          sub_1AF5D1564(&v222);
        }
      }
    }

    a20(&v230, 1, v109);
    v287 = v230;
    v288 = v231;
    v289 = v232;
    v290 = v233 | 1;
    v291 = v234;
    v292 = v235;
    sub_1AF6B06C0(v144, &v287, v145, &v236);
    if (v236)
    {
      v283 = v239;
      v284 = v240;
      v285 = v241;
      *&v282[1] = v237;
      *&v282[3] = v238;
      v286 = v242;
      v282[0] = v236;

      a22(v282, v144);

      sub_1AF81F384(&v230, a21);
      sub_1AF5D1564(&v236);
    }

    else
    {
      sub_1AF81F384(&v230, a21);
    }

    sub_1AF6B06C0(v144, &v276, v145, &v243);
    v171 = v243;
    if (v243)
    {
      v128 = v246;
      v129 = v247;
      v130 = v249;
      v251 = v244;
      v252 = v245;
      v167 = v250;
      v169 = v248;
      if (v250 <= 0)
      {
        sub_1AF5D15C0(&v243, &v264);

        sub_1AF81F384(&v200, a23);
        sub_1AF81F384(&v216, a24);
        sub_1AF5D1564(&v243);
        return sub_1AF5D1564(&v243);
      }

      if (v247)
      {
        v131 = *(v249 + 32);
        v199 = *(v248 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v243, &v264);
        v132 = (v128 + 24);
        do
        {
          v134 = *(v132 - 6);
          v133 = *(v132 - 5);
          v135 = *(v132 - 4);
          v178 = *v132;
          v183 = *(v132 - 1);
          v136 = v132[2];
          v174 = v132[1];
          if (v199)
          {
            v137 = *(v136 + 376);

            os_unfair_lock_lock(v137);
            os_unfair_lock_lock(*(v136 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v131);
          v138 = *(v130 + 64);
          v262[0] = *(v130 + 48);
          v262[1] = v138;
          v263 = *(v130 + 80);
          v139 = *(*(*(*(v136 + 40) + 16) + 32) + 16) + 1;
          *(v130 + 48) = ecs_stack_allocator_allocate(*(v130 + 32), 48 * v139, 8);
          *(v130 + 56) = v139;
          *(v130 + 72) = 0;
          *(v130 + 80) = 0;
          *(v130 + 64) = 0;
          v261 = 1;
          *&v264 = v169;
          *(&v264 + 1) = v136;
          *&v265 = v130;
          *(&v265 + 1) = v135;
          v266 = (v133 - v134 + v135);
          v267 = v167;
          v268 = v134;
          v269 = v133;
          v270 = 0;
          v271 = 0;
          v272 = 1;
          v273 = v183;
          v274 = v178;
          v275 = v174;

          a25(&v264, a9, a3, a4 & 1, v188, v195);

          v258 = v171;
          v259 = v251;
          v260 = v252;
          sub_1AF630994(v130, &v258, v262);
          sub_1AF62D29C(v136);
          ecs_stack_allocator_pop_snapshot(v131);
          if (v199)
          {
            os_unfair_lock_unlock(*(v136 + 344));
            os_unfair_lock_unlock(*(v136 + 376));
          }

          v132 += 6;
          --v129;
        }

        while (v129);

        sub_1AF81F384(&v200, a23);
        sub_1AF81F384(&v216, a24);
        sub_1AF5D1564(&v243);

        sub_1AF5D1564(&v243);
      }

      else
      {

        sub_1AF5D15C0(&v243, &v264);

        sub_1AF81F384(&v200, a23);
        sub_1AF81F384(&v216, a24);
        sub_1AF5D1564(&v243);

        sub_1AF5D1564(&v243);
      }
    }

    else
    {

      sub_1AF81F384(&v200, a23);
      sub_1AF81F384(&v216, a24);
    }
  }

  else
  {
    *&v301 = 0;
    *(&v301 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v301 = 0xD000000000000011;
    *(&v301 + 1) = 0x80000001AFF365C0;
    MEMORY[0x1B2718AE0](a1, v70);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF365E0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}