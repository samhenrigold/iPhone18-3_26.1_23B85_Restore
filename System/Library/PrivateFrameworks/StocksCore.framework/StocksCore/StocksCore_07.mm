uint64_t sub_1DAB06A90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  if (a3 != a2)
  {
    v37 = *a4;
    v7 = v37 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_4:
    v31 = v7;
    v32 = a3;
    v30 = v8;
    while (1)
    {
      v9 = (v7 + 48);
      v10 = *(v7 + 56);
      v11 = *(v7 + 64);
      v12 = *(v7 + 72);
      v13 = *(v7 + 80);
      v14 = *(v7 + 88);
      v35[0] = *(v7 + 48);
      v35[1] = v10;
      v35[2] = v11;
      v35[3] = v12;
      v35[4] = v13;
      v36 = v14;
      v15 = *(v7 + 8);
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      v18 = *(v7 + 32);
      v19 = *(v7 + 40);
      v33[0] = *v7;
      v33[1] = v15;
      v33[2] = v17;
      v33[3] = v16;
      v33[4] = v18;
      v34 = v19;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v20 = sub_1DAB0213C(v35, v33, a5);

      if (v5)
      {
        break;
      }

      if (v20)
      {
        if (!v37)
        {
          __break(1u);
          return result;
        }

        v21 = *(v7 + 48);
        v22 = *(v7 + 72);
        v23 = *(v7 + 80);
        v24 = *(v7 + 88);
        v25 = *(v7 + 56);
        v26 = *(v7 + 16);
        *v9 = *v7;
        *(v7 + 64) = v26;
        v27 = *(v7 + 32);
        *v7 = v21;
        *(v7 + 8) = v25;
        *(v7 + 24) = v22;
        *(v7 + 32) = v23;
        *(v7 + 40) = v24;
        v7 -= 48;
        v9[2] = v27;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v7 = v31 + 48;
      v8 = v30 - 1;
      if (v32 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1DAB06C38(uint64_t *a1, char *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1DACBA104();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1DACB96C4();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1DACB71E4();
      sub_1DAB060FC(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1DACB71E4();
    sub_1DAB06A90(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAB06D80(char **a1, char *a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DAC06974(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  sub_1DACB71E4();
  sub_1DAB06C38(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1DAB06E28()
{
  result = qword_1ECBE6D98;
  if (!qword_1ECBE6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6D98);
  }

  return result;
}

unint64_t sub_1DAB06E80()
{
  result = qword_1ECBE6DA0;
  if (!qword_1ECBE6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DA0);
  }

  return result;
}

unint64_t sub_1DAB06ED8()
{
  result = qword_1ECBE6DA8;
  if (!qword_1ECBE6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DA8);
  }

  return result;
}

unint64_t sub_1DAB06F30()
{
  result = qword_1ECBE6DB0;
  if (!qword_1ECBE6DB0)
  {
    sub_1DAA6149C(255, &qword_1ECBE69C0, &type metadata for WatchlistEntity, MEMORY[0x1E69E62F8]);
    sub_1DAA8E020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DB0);
  }

  return result;
}

unint64_t sub_1DAB06FCC()
{
  result = qword_1ECBE6DB8;
  if (!qword_1ECBE6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DB8);
  }

  return result;
}

void sub_1DAB0708C(uint64_t a1)
{
  if (!qword_1ECBE6DC0)
  {
    sub_1DAA6149C(255, &unk_1ECBE7F10, &type metadata for Headline, MEMORY[0x1E69E6F28]);
    sub_1DAB07114();
    v1 = sub_1DACB9CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6DC0);
    }
  }
}

unint64_t sub_1DAB07114()
{
  result = qword_1ECBE6DC8;
  if (!qword_1ECBE6DC8)
  {
    sub_1DAA6149C(255, &unk_1ECBE7F10, &type metadata for Headline, MEMORY[0x1E69E6F28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DC8);
  }

  return result;
}

uint64_t sub_1DAB07190(uint64_t a1)
{
  if ((*(a1 + 104) >> 1) > 0x80000000)
  {
    return -(*(a1 + 104) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAB071A8(uint64_t a1)
{
  sub_1DAA6149C(0, &qword_1ECBE6DD0, &type metadata for Headline, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAB07284()
{
  result = qword_1EE1201C0;
  if (!qword_1EE1201C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201C0);
  }

  return result;
}

uint64_t sub_1DAB072D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DAB07284();
  result = MEMORY[0x1E1277300](v2, &type metadata for Stock, v3);
  v14 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 112);
      v15[6] = *(v5 + 96);
      v15[7] = v6;
      v16 = *(v5 + 128);
      v7 = *(v5 + 48);
      v15[2] = *(v5 + 32);
      v15[3] = v7;
      v8 = *(v5 + 80);
      v15[4] = *(v5 + 64);
      v15[5] = v8;
      v9 = *(v5 + 16);
      v15[0] = *v5;
      v15[1] = v9;
      sub_1DAA806E4(v15, v12);
      sub_1DAB88E84(v10, v15);
      v12[6] = v10[6];
      v12[7] = v10[7];
      v13 = v11;
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      sub_1DAA9B1C8(v12);
      v5 += 136;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

unint64_t sub_1DAB073D0()
{
  result = qword_1ECBE6DE8;
  if (!qword_1ECBE6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DE8);
  }

  return result;
}

unint64_t sub_1DAB07424()
{
  result = qword_1ECBE6E00;
  if (!qword_1ECBE6E00)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6E00);
  }

  return result;
}

void sub_1DAB074B4(uint64_t a1)
{
  if (!qword_1ECBE6E08)
  {
    sub_1DAA8D834(255, &qword_1ECBE6DF8, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A630]);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6E08);
    }
  }
}

void sub_1DAB07544(uint64_t a1)
{
  if (!qword_1ECBE6E10)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB02F28();
    sub_1DAADA468();
    sub_1DAA8D9E8();
    v1 = sub_1DACB7104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6E10);
    }
  }
}

void sub_1DAB07624(uint64_t a1)
{
  if (!qword_1ECBE6E18)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB02F28();
    sub_1DAA8D9E8();
    v1 = sub_1DACB72B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6E18);
    }
  }
}

void sub_1DAB076F0(uint64_t a1)
{
  if (!qword_1ECBE6E20)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB02F28();
    sub_1DAA8D9E8();
    v1 = sub_1DACB70D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6E20);
    }
  }
}

void sub_1DAB077B4(uint64_t a1)
{
  if (!qword_1ECBE6E28)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB02F28();
    sub_1DAA8D9E8();
    v1 = sub_1DACB7074();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6E28);
    }
  }
}

id sub_1DAB07C6C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB92F4();
  v13 = [a1 decodeObjectForKey_];

  if (v13)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (!*(&v20 + 1))
  {

    sub_1DAB0826C(v21, sub_1DAADFABC);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v14 = swift_dynamicCast();
  (*(v9 + 56))(v7, v14 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

LABEL_8:
    sub_1DAB0826C(v7, sub_1DAA492B4);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = *(v9 + 32);
  v16(v11, v7, v8);
  v16(&v2[OBJC_IVAR___SCUpdateAppReviewRequestLastSeenDateCommand_appReviewRequestLastSeenDate], v11, v8);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v18, sel_init);

  return v17;
}

uint64_t sub_1DAB08044(void *a1, uint64_t a2)
{
  v3 = [a1 encryptedValues];
  swift_getObjectType();
  v4 = OBJC_IVAR___SCUpdateAppReviewRequestLastSeenDateCommand_appReviewRequestLastSeenDate;
  v5 = sub_1DACB7CC4();
  v8[3] = v5;
  v8[4] = MEMORY[0x1E695B590];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a2 + v4, v5);
  sub_1DACB9A44();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DAB0826C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB082CC(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB083FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB08530(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB08640(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB087D8()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08808()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08838()
{
  v1 = *(v0 + 32);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08868()
{
  v1 = *(v0 + 48);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB088A4()
{
  v1 = *(v0 + 72);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB088D4()
{
  v1 = *(v0 + 88);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08904()
{
  v1 = *(v0 + 104);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08934()
{
  v1 = *(v0 + 120);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v24 = *a7;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](a1, a2);
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = v24;
  v25 = qword_1EE122610;
  result = sub_1DACB71E4();
  if (v25 != -1)
  {
    result = swift_once();
  }

  v27 = a10;
  v28 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (result = sub_1DAA4BF3C(a1, a2), (v29 & 1) != 0))
  {
    v30 = result;

    v31 = (*(v28 + 56) + 16 * v30);
    a8 = *v31;
    v27 = v31[1];
    result = sub_1DACB71E4();
  }

  else if (!a10)
  {
    result = sub_1DACB71E4();
    a8 = a1;
    v27 = a2;
  }

  *(a9 + 72) = a8;
  *(a9 + 80) = v27;
  v32 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (result = sub_1DAA4BF3C(a1, a2), (v33 & 1) != 0))
  {
    v34 = result;

    v35 = (*(v32 + 56) + 16 * v34);
    a1 = *v35;
    a2 = v35[1];
    result = sub_1DACB71E4();
  }

  else if (a12)
  {
    a1 = a11;

    a2 = a12;
  }

  *(a9 + 88) = a1;
  *(a9 + 96) = a2;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  *(a9 + 120) = a15;
  *(a9 + 128) = a16;
  return result;
}

uint64_t sub_1DAB08B28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAB0A6E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAB08B5C(uint64_t a1)
{
  v2 = sub_1DAA85E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB08B98(uint64_t a1)
{
  v2 = sub_1DAA85E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB08BD4(uint64_t a1)
{
  v2 = *(v1 + 112);
  v4 = *(v1 + 128);
  sub_1DACB9404();
  sub_1DACB9404();
  sub_1DACB9404();
  sub_1DACB9404();
  sub_1DACB9404();

  sub_1DACB9404();
  sub_1DACB9404();
  if (!v2)
  {
    sub_1DACBA2A4();
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1DACBA2A4();
  }

  sub_1DACBA2A4();
  sub_1DACB9404();
  if (!v4)
  {
    return sub_1DACBA2A4();
  }

LABEL_3:
  sub_1DACBA2A4();

  return sub_1DACB9404();
}

uint64_t sub_1DAB08E34()
{
  sub_1DACBA284();
  sub_1DAB08BD4(v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB08E74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  sub_1DAA85948(0, &qword_1EE11F598, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA85E4C();
  v79 = v8;
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v56;
  LOBYTE(v66[0]) = 0;
  v11 = v5;
  v12 = sub_1DACB9FA4();
  v55 = v13;
  LOBYTE(v66[0]) = 1;
  v14 = sub_1DACB9FA4();
  v54 = v15;
  v50 = v12;
  v51 = v14;
  LOBYTE(v66[0]) = 2;
  v16 = a1;
  v17 = sub_1DACB9FA4();
  v52 = v18;
  LOBYTE(v66[0]) = 3;
  v49 = sub_1DACB9FA4();
  v53 = v19;
  LOBYTE(v57) = 4;
  sub_1DAB0A548();
  sub_1DACB9FE4();
  v20 = LOBYTE(v66[0]);
  LOBYTE(v66[0]) = 5;
  v21 = sub_1DACB9FA4();
  v48 = v22;
  v43 = v20;
  v44 = v21;
  LOBYTE(v66[0]) = 6;
  v47 = 0;
  v23 = sub_1DACB9FA4();
  v46 = v24;
  v42 = v23;
  LOBYTE(v66[0]) = 7;
  v25 = sub_1DACB9F34();
  v45 = v26;
  v41 = v25;
  v77 = 8;
  v27 = sub_1DACB9F34();
  v40 = v28;
  v29 = v27;
  (*(v9 + 8))(v79, v11);
  v30 = v50;
  *&v57 = v50;
  *(&v57 + 1) = v55;
  *&v58 = v51;
  *(&v58 + 1) = v54;
  v39 = v17;
  *&v59 = v17;
  *(&v59 + 1) = v52;
  *&v60 = v49;
  *(&v60 + 1) = v53;
  LOBYTE(v20) = v43;
  LOBYTE(v61) = v43;
  *(&v61 + 1) = v78[0];
  DWORD1(v61) = *(v78 + 3);
  *(&v61 + 1) = v44;
  *&v62 = v48;
  v31 = v42;
  *(&v62 + 1) = v42;
  *&v63 = v46;
  v32 = v40;
  *(&v63 + 1) = v41;
  *&v64 = v45;
  *(&v64 + 1) = v29;
  v65 = v40;
  v33 = v64;
  *(v10 + 96) = v63;
  *(v10 + 112) = v33;
  *(v10 + 128) = v32;
  v34 = v57;
  v35 = v58;
  v36 = v62;
  *(v10 + 64) = v61;
  *(v10 + 80) = v36;
  v37 = v60;
  *(v10 + 32) = v59;
  *(v10 + 48) = v37;
  *v10 = v34;
  *(v10 + 16) = v35;
  sub_1DAA806E4(&v57, v66);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v66[0] = v30;
  v66[1] = v55;
  v66[2] = v51;
  v66[3] = v54;
  v66[4] = v39;
  v66[5] = v52;
  v66[6] = v49;
  v66[7] = v53;
  v67 = v20;
  *v68 = v78[0];
  *&v68[3] = *(v78 + 3);
  v69 = v44;
  v70 = v48;
  v71 = v31;
  v72 = v46;
  v73 = v41;
  v74 = v45;
  v75 = v29;
  v76 = v32;
  return sub_1DAA9B1C8(v66);
}

uint64_t sub_1DAB09488()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB094B8()
{
  sub_1DACBA284();
  sub_1DAB08BD4(v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB094FC(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DAB08BD4(v2);
  return sub_1DACBA2C4();
}

unint64_t sub_1DAB09554(uint64_t a1)
{
  v2 = sub_1DACB9BF4();

  return sub_1DAB09884(a1, v2);
}

unint64_t sub_1DAB09598(uint64_t a1)
{
  v2 = sub_1DACB9A94();

  return sub_1DAB0994C(a1, v2);
}

unint64_t sub_1DAB095DC(uint64_t *a1)
{
  sub_1DACBA284();
  sub_1DAB08BD4(v4);
  v2 = sub_1DACBA2C4();

  return sub_1DAB09A10(a1, v2);
}

unint64_t sub_1DAB09648(uint64_t a1)
{
  v1 = a1;
  sub_1DACBA284();
  sub_1DACB9404();

  v2 = sub_1DACBA2C4();

  return sub_1DAB09F70(v1, v2);
}

unint64_t sub_1DAB0970C(uint64_t a1)
{
  sub_1DACB9324();
  sub_1DACBA284();
  sub_1DACB9404();
  v2 = sub_1DACBA2C4();

  return sub_1DAB0A100(a1, v2);
}

unint64_t sub_1DAB0979C(uint64_t a1)
{
  sub_1DACB7AB4();
  sub_1DAB0A9D4(&qword_1EE1263D8, MEMORY[0x1E6968FC0]);
  v2 = sub_1DACB91E4();

  return sub_1DAB0A204(a1, v2);
}

unint64_t sub_1DAB09820(uint64_t a1)
{
  sub_1DACB9DF4();
  v2 = sub_1DACB91E4();

  return sub_1DAB0A3B0(a1, v2);
}

unint64_t sub_1DAB09884(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DAB0AA18(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12776E0](v9, a1);
      sub_1DAB0AA74(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DAB0994C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1DAB0AAC8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DACB9AA4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DAB09A10(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = *(a1 + 64);
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v46 = a1[4];
    v47 = a1[3];
    v44 = a1[6];
    v45 = a1[5];
    v42 = a1[9];
    v43 = a1[7];
    v39 = a1[11];
    v40 = a1[10];
    v37 = a1[14];
    v38 = a1[12];
    v34 = a1[15];
    v35 = a1[13];
    v36 = a1[16];
    v41 = ~v4;
    do
    {
      v11 = *(v2 + 48) + 136 * v5;
      v49 = *v11;
      v12 = *(v11 + 64);
      v14 = *(v11 + 16);
      v13 = *(v11 + 32);
      v52 = *(v11 + 48);
      v53 = v12;
      v50 = v14;
      v51 = v13;
      v16 = *(v11 + 96);
      v15 = *(v11 + 112);
      v17 = *(v11 + 80);
      v57 = *(v11 + 128);
      v55 = v16;
      v56 = v15;
      v54 = v17;
      if ((v49 != v8 || *(&v49 + 1) != v9) && (sub_1DACBA174() & 1) == 0 || (v50 != v10 || *(&v50 + 1) != v47) && (sub_1DACBA174() & 1) == 0 || (v51 != v46 || *(&v51 + 1) != v45) && (sub_1DACBA174() & 1) == 0 || (v52 != v44 || *(&v52 + 1) != v43) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_5;
      }

      if (v53 > 3u)
      {
        if (v53 > 5u)
        {
          if (v53 == 6)
          {
            v23 = 0xE500000000000000;
            v22 = 0x7865646E69;
            if (v6 > 3)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v22 = 0x75466C617574756DLL;
            v23 = 0xEA0000000000646ELL;
            if (v6 > 3)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          if (v53 == 4)
          {
            v22 = 6714469;
          }

          else
          {
            v22 = 0x73657275747566;
          }

          if (v53 == 4)
          {
            v23 = 0xE300000000000000;
          }

          else
          {
            v23 = 0xE700000000000000;
          }

          if (v6 > 3)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v18 = 0x75636F7470797263;
        if (v53 != 2)
        {
          v18 = 0x797469757165;
        }

        v19 = 0xEE0079636E657272;
        if (v53 != 2)
        {
          v19 = 0xE600000000000000;
        }

        v20 = 0x79636E6572727563;
        if (!v53)
        {
          v20 = 0x6E776F6E6B6E75;
        }

        v21 = 0xE700000000000000;
        if (v53)
        {
          v21 = 0xE800000000000000;
        }

        if (v53 <= 1u)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v53 <= 1u)
        {
          v23 = v21;
        }

        else
        {
          v23 = v19;
        }

        if (v6 > 3)
        {
LABEL_46:
          v25 = 0x75466C617574756DLL;
          if (v6 == 6)
          {
            v25 = 0x7865646E69;
          }

          v26 = 0xEA0000000000646ELL;
          if (v6 == 6)
          {
            v26 = 0xE500000000000000;
          }

          v27 = 0x73657275747566;
          if (v6 == 4)
          {
            v27 = 6714469;
          }

          v28 = 0xE700000000000000;
          if (v6 == 4)
          {
            v28 = 0xE300000000000000;
          }

          if (v6 <= 5)
          {
            v29 = v27;
          }

          else
          {
            v29 = v25;
          }

          if (v6 <= 5)
          {
            v24 = v28;
          }

          else
          {
            v24 = v26;
          }

          if (v22 != v29)
          {
            goto LABEL_76;
          }

          goto LABEL_74;
        }
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v30 = 0x75636F7470797263;
        }

        else
        {
          v30 = 0x797469757165;
        }

        if (v6 == 2)
        {
          v24 = 0xEE0079636E657272;
        }

        else
        {
          v24 = 0xE600000000000000;
        }

        if (v22 != v30)
        {
          goto LABEL_76;
        }
      }

      else if (v6)
      {
        v24 = 0xE800000000000000;
        if (v22 != 0x79636E6572727563)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v24 = 0xE700000000000000;
        if (v22 != 0x6E776F6E6B6E75)
        {
          goto LABEL_76;
        }
      }

LABEL_74:
      if (v23 == v24)
      {
        sub_1DAA806E4(&v49, v48);

        v7 = v41;
        v3 = v2 + 64;
        goto LABEL_77;
      }

LABEL_76:
      v31 = sub_1DACBA174();
      sub_1DAA806E4(&v49, v48);

      v7 = v41;
      v3 = v2 + 64;
      if ((v31 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_77:
      if ((*(&v53 + 1) != v42 || v54 != v40) && (sub_1DACBA174() & 1) == 0 || (*(&v54 + 1) != v39 || v55 != v38) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v56)
      {
        if (!v37 || (*(&v55 + 1) != v35 || v56 != v37) && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v37)
      {
        goto LABEL_4;
      }

      if (!v57)
      {
        if (!v36)
        {
          goto LABEL_99;
        }

LABEL_4:
        sub_1DAA9B1C8(&v49);
        goto LABEL_5;
      }

      if (!v36)
      {
        goto LABEL_4;
      }

      if (*(&v56 + 1) == v34 && v57 == v36)
      {
LABEL_99:
        sub_1DAA9B1C8(&v49);
        return v5;
      }

      v32 = sub_1DACBA174();
      sub_1DAA9B1C8(&v49);
      if (v32)
      {
        return v5;
      }

LABEL_5:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DAB09F70(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x737961776C61;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x726576656ELL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xEA00000000007372;
            if (v8 != 0x756F487265746661)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0x756F487265746661;
        v7 = 0xEA00000000007372;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x737961776C61;
      }

      else
      {
        v10 = 0x726576656ELL;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1DACBA174();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1DAB0A100(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1DACB9324();
      v8 = v7;
      if (v6 == sub_1DACB9324() && v8 == v9)
      {
        break;
      }

      v11 = sub_1DACBA174();

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

unint64_t sub_1DAB0A204(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1DAB0A9D4(&qword_1EE1252B0, MEMORY[0x1E6968FC8]);
      v15 = sub_1DACB9264();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1DAB0A3B0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1DACB9DF4();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_1DACB9264();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1DAB0A548()
{
  result = qword_1EE120140;
  if (!qword_1EE120140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120140);
  }

  return result;
}

unint64_t sub_1DAB0A5A0()
{
  result = qword_1EE1201B8;
  if (!qword_1EE1201B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201B8);
  }

  return result;
}

unint64_t sub_1DAB0A61C()
{
  result = qword_1ECBE6EB0;
  if (!qword_1ECBE6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EB0);
  }

  return result;
}

uint64_t sub_1DAB0A69C()
{
  sub_1DACBA284();
  v0 = sub_1DACBA2C4();

  return sub_1DAB0A670(v0);
}

uint64_t sub_1DAB0A6E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xE800000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E746361706D6F63 && a2 == 0xEB00000000656D61 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F74636573 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7972747375646E69 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1DAB0A9D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DACB7AB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB0AAC8()
{
  result = qword_1EE123DC0[0];
  if (!qword_1EE123DC0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EE123DC0);
  }

  return result;
}

CGColorSpaceRef sub_1DAB0AB1C()
{
  v1 = v0;
  result = CGImageGetColorSpace(v0);
  if (result)
  {
    v3 = result;
    v4 = [objc_allocWithZone(MEMORY[0x1E695F620]) initWithOptions_];
    v5 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    v6 = *MEMORY[0x1E695F910];
    sub_1DAB689D4(MEMORY[0x1E69E7CC0]);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1DAB0BF58(&qword_1EE11D070, 255, type metadata accessor for CIImageRepresentationOption, &unk_1DACC2414);
    v7 = sub_1DACB9114();

    v8 = [v4 PNGRepresentationOfImage:v5 format:v6 colorSpace:v3 options:v7];

    if (v8)
    {
      v9 = sub_1DACB7B64();

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAB0AC98(void *a1, uint64_t a2, unint64_t a3, double a4)
{
  sub_1DAB0C068(0, &qword_1EE11CF60, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14[-v11];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0BFC0();
  sub_1DACBA304();
  v15 = a2;
  v16 = a3;
  v14[15] = 0;
  sub_1DAB0B080(a2, a3);
  sub_1DAB0C0CC();
  sub_1DACBA0E4();
  sub_1DAA563C0(v15, v16);
  if (!v4)
  {
    LOBYTE(v15) = 1;
    sub_1DACBA0B4();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DAB0AE58()
{
  if (*v0)
  {
    return 0x656C616373;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DAB0AE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAB0AF60(uint64_t a1)
{
  v2 = sub_1DAB0BFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB0AF9C(uint64_t a1)
{
  v2 = sub_1DAB0BFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DAB0AFD8(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v6 = sub_1DAB0B6EC(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 2) = v6;
  }
}

uint64_t sub_1DAB0B080(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }

    sub_1DACB71F4();
  }

  return sub_1DACB71F4();
}

uint64_t sub_1DAB0B0EC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB0B120@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1DAB0B080(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DAB0B1B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAB0B20C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1DAB0B26C(double a1, double a2, double a3)
{
  v3 = ceil(a1 * a3);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = ceil(a2 * a3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 9.22337204e18)
  {
    return v3;
  }

LABEL_13:
  __break(1u);
  return result;
}

int64_t sub_1DAB0B30C(CGDataProvider *a1, double a2)
{
  result = CGPDFDocumentCreateWithProvider(a1);
  if (result)
  {
    v4 = result;
    v5 = CGPDFDocumentGetPage(result, 1uLL);
    if (!v5)
    {
LABEL_13:

      return 0;
    }

    v6 = v5;
    BoxRect = CGPDFPageGetBoxRect(v5, kCGPDFMediaBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!result)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v11 = result;
    result = CGColorSpaceGetNumberOfComponents(result);
    v12 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      result = sub_1DAB0B26C(width, height, a2);
      v13 = result * v12;
      if ((result * v12) >> 64 == (result * v12) >> 63)
      {
        v14 = __OFADD__(v13, 64);
        v15 = v13 + 64;
        if (!v14)
        {
          v17 = v15 - 1;
          v16 = v15 < 1;
          v18 = v15 + 62;
          if (v16)
          {
            v19 = v18;
          }

          else
          {
            v19 = v17;
          }

          v20 = sub_1DAB0B26C(width, height, a2);
          sub_1DAB0B26C(width, height, a2);
          v22 = __CGBitmapContextCreate(v20, v21, v19 & 0xFFFFFFFFFFFFFFC0, v11);
          if (v22)
          {
            v23 = v22;
            CGContextScaleCTM(v23, a2, a2);
            CGContextSetGrayFillColor(v23, 1.0, 0.0);
            v26.origin.x = x;
            v26.origin.y = y;
            v26.size.width = width;
            v26.size.height = height;
            CGContextFillRect(v23, v26);
            CGContextDrawPDFPage(v23, v6);
            Image = CGBitmapContextCreateImage(v23);

            return Image;
          }

          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

double sub_1DAB0B4B0(uint64_t a1, unint64_t a2, double a3)
{
  if (qword_1EE11D360 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE11D368);
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Rasterizing attribution source logo", v9, 2u);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v10 = sub_1DACB7B44();
  v11 = CGDataProviderCreateWithCFData(v10);

  if (v11)
  {
    v12 = CGImageCreateWithPNGDataProvider(v11, 0, 0, kCGRenderingIntentDefault);
    if (v12 || (v12 = CGImageCreateWithJPEGDataProvider(v11, 0, 0, kCGRenderingIntentDefault)) != 0)
    {

      a3 = 1.0;
    }

    else
    {
      v15 = sub_1DAB0B30C(v11, a3);
      if (!v15 || (sub_1DAB0AB1C(), v16 >> 60 == 15))
      {
        sub_1DAB0BF04();
        swift_allocError();
        *v17 = 1;
        swift_willThrow();
        sub_1DAA563C0(a1, a2);

        return a3;
      }

      sub_1DAA563C0(a1, a2);
      v11 = v15;
    }
  }

  else
  {
    sub_1DAB0BF04();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    sub_1DAA563C0(a1, a2);
  }

  return a3;
}

double sub_1DAB0B6EC(void *a1)
{
  sub_1DAB0C068(0, &qword_1EE11CFC8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0BFC0();
  sub_1DACBA2F4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = 0;
    sub_1DAB0C014();
    sub_1DACB9FE4();
    v10 = v13[0];
    v11 = v13[1];
    LOBYTE(v13[0]) = 1;
    sub_1DACB9FC4();
    v2 = v12;
    (*(v6 + 8))(v8, v5);
    sub_1DAB0B080(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1DAA563C0(v10, v11);
  }

  return v2;
}

uint64_t sub_1DAB0B90C(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 48) = a2;
  *(v3 + 40) = a3;
  *(v3 + 32) = a1;
  v4 = sub_1DACB8204();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_1DACB7AB4();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  sub_1DACB74D4();
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB0BA5C, 0, 0);
}

uint64_t sub_1DAB0BA5C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v10 = v0[7];
  v7 = v0[4];
  sub_1DAB0BE74(0);
  (*(v3 + 16))(v1, v7, v2);
  sub_1DACB7484();
  (*(v5 + 16))(v4, v6, v10);
  v0[14] = sub_1DACB8504();
  v11 = (*MEMORY[0x1E69D6520] + MEMORY[0x1E69D6520]);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1DAB0BBB0;

  return v11(v0 + 2);
}

uint64_t sub_1DAB0BBB0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1DAB0BDEC;
  }

  else
  {
    v2 = sub_1DAB0BCC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAB0BCC4()
{
  v1 = *(v0 + 128);
  v4 = sub_1DAB0B4B0(*(v0 + 16), *(v0 + 24), *(v0 + 40));
  v5 = *(v0 + 112);
  if (v1)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v10 = v4;

    v11 = *(v0 + 8);
    v12.n128_f64[0] = v10;

    return v11(v8, v9, v12);
  }
}

uint64_t sub_1DAB0BDEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DAB0BE74(uint64_t a1)
{
  if (!qword_1EE11FFB0)
  {
    type metadata accessor for SDSLogoDeserializer();
    sub_1DAB0BF58(qword_1EE1218E0, v1, type metadata accessor for SDSLogoDeserializer, &unk_1DACC4FA0);
    v2 = sub_1DACB8514();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE11FFB0);
    }
  }
}

unint64_t sub_1DAB0BF04()
{
  result = qword_1ECBE6EB8;
  if (!qword_1ECBE6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EB8);
  }

  return result;
}

uint64_t sub_1DAB0BF58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB0BFC0()
{
  result = qword_1EE123230;
  if (!qword_1EE123230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123230);
  }

  return result;
}

unint64_t sub_1DAB0C014()
{
  result = qword_1EE123A60;
  if (!qword_1EE123A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123A60);
  }

  return result;
}

void sub_1DAB0C068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB0BFC0();
    v7 = a3(a1, &type metadata for DownloadedImage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAB0C0CC()
{
  result = qword_1EE125298;
  if (!qword_1EE125298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125298);
  }

  return result;
}

unint64_t sub_1DAB0C144()
{
  result = qword_1ECBE6EC0;
  if (!qword_1ECBE6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EC0);
  }

  return result;
}

unint64_t sub_1DAB0C19C()
{
  result = qword_1ECBE6EC8;
  if (!qword_1ECBE6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EC8);
  }

  return result;
}

unint64_t sub_1DAB0C1F4()
{
  result = qword_1EE123220;
  if (!qword_1EE123220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123220);
  }

  return result;
}

unint64_t sub_1DAB0C24C()
{
  result = qword_1EE123228;
  if (!qword_1EE123228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123228);
  }

  return result;
}

uint64_t sub_1DAB0C2A4()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB0C310(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB0C360@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DACB9F04();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DAB0C3E8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAB0C440(uint64_t a1)
{
  v2 = sub_1DAB0D174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB0C47C(uint64_t a1)
{
  v2 = sub_1DAB0D174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB0C4C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(*v3 + 16);
  v8 = *v3 + 40;
  v9 = v7 + 1;
  while (1)
  {
    if (!--v9)
    {
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    v11 = *(v8 - 8);
    v10 = *v8;
    v12 = *(v8 + 8);
    v15 = *(v8 + 16);
    v13 = *(v8 + 32);
    if (v11 == v5 && v10 == a2)
    {
      break;
    }

    v8 += 48;
    result = sub_1DACBA174();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v11 = v5;
LABEL_11:
  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = v15;
  *(a3 + 40) = v13;
  sub_1DACB71E4();

  return sub_1DACB71E4();
}

uint64_t sub_1DAB0C5E0()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB0C6AC(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB0C764(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAB0C82C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB0D8A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAB0C85C(uint64_t *a1@<X8>)
{
  v2 = 0xED00004449797469;
  v3 = 0x746E456B636F7473;
  v4 = 0xEA00000000006563;
  v5 = 0x6E6174726F706D69;
  if (*v1 != 2)
  {
    v5 = 0x726F697270;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6F626D7973;
    v2 = 0xE600000000000000;
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

uint64_t sub_1DAB0C8E4()
{
  v1 = 0x746E456B636F7473;
  v2 = 0x6E6174726F706D69;
  if (*v0 != 2)
  {
    v2 = 0x726F697270;
  }

  if (*v0)
  {
    v1 = 0x6C6F626D7973;
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

unint64_t sub_1DAB0C968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB0D8A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB0C990(uint64_t a1)
{
  v2 = sub_1DAB0CD40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB0C9CC(uint64_t a1)
{
  v2 = sub_1DAB0CD40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB0CA08()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB0CA38()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB0CA78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1DAB0D464(0, &qword_1EE11F630, sub_1DAB0CD40, &type metadata for HeadlineMetadata.StockEntityMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0CD40();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v24;
  v28 = 0;
  v11 = sub_1DACB9FA4();
  v23 = v12;
  v27 = 1;
  v21 = sub_1DACB9F34();
  v22 = v13;
  v26 = 2;
  sub_1DACB9FC4();
  v15 = v14;
  v25 = 3;
  sub_1DACB9FC4();
  v18 = v17;
  (*(v9 + 8))(v8, v5);
  v20 = v22;
  v19 = v23;
  *v10 = v11;
  v10[1] = v19;
  v10[2] = v21;
  v10[3] = v20;
  v10[4] = v15;
  v10[5] = v18;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAB0CD40()
{
  result = qword_1EE122B78;
  if (!qword_1EE122B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B78);
  }

  return result;
}

uint64_t sub_1DAB0CD94(void *a1)
{
  sub_1DAB0D464(0, &qword_1ECBE6ED0, sub_1DAB0CD40, &type metadata for HeadlineMetadata.StockEntityMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0CD40();
  sub_1DACBA304();
  v15 = 0;
  v9 = v11[3];
  sub_1DACBA094();
  if (!v9)
  {
    v14 = 1;
    sub_1DACBA024();
    v13 = 2;
    sub_1DACBA0B4();
    v12 = 3;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAB0CFAC(void *a1)
{
  sub_1DAB0D464(0, &qword_1ECBE6ED8, sub_1DAB0D174, &type metadata for HeadlineMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0D174();
  sub_1DACB71E4();
  sub_1DACBA304();
  v10[3] = v8;
  sub_1DAB0D1C8();
  sub_1DAB0D4CC(&qword_1ECBE6EE0, sub_1DAB0D218, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DAB0D174()
{
  result = qword_1EE122B58;
  if (!qword_1EE122B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B58);
  }

  return result;
}

void sub_1DAB0D1C8()
{
  if (!qword_1EE11FB48)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FB48);
    }
  }
}

unint64_t sub_1DAB0D218()
{
  result = qword_1ECBE6EE8;
  if (!qword_1ECBE6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EE8);
  }

  return result;
}

uint64_t sub_1DAB0D26C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  sub_1DAB0D464(0, &qword_1EE11F628, sub_1DAB0D174, &type metadata for HeadlineMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0D174();
  sub_1DACBA2F4();
  if (!v2)
  {
    v9 = v12;
    sub_1DAB0D1C8();
    sub_1DAB0D4CC(&qword_1EE11FB40, sub_1DAB0D538, MEMORY[0x1E69E6330]);
    sub_1DACB9FE4();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1DAB0D464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAB0D4CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAB0D1C8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB0D538()
{
  result = qword_1EE122B60;
  if (!qword_1EE122B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B60);
  }

  return result;
}

uint64_t sub_1DAB0D5CC(uint64_t a1, int a2)
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

uint64_t sub_1DAB0D614(uint64_t result, int a2, int a3)
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

unint64_t sub_1DAB0D694()
{
  result = qword_1ECBE6EF0;
  if (!qword_1ECBE6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EF0);
  }

  return result;
}

unint64_t sub_1DAB0D6EC()
{
  result = qword_1ECBE6EF8;
  if (!qword_1ECBE6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EF8);
  }

  return result;
}

unint64_t sub_1DAB0D744()
{
  result = qword_1EE122B48;
  if (!qword_1EE122B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B48);
  }

  return result;
}

unint64_t sub_1DAB0D79C()
{
  result = qword_1EE122B50;
  if (!qword_1EE122B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B50);
  }

  return result;
}

unint64_t sub_1DAB0D7F4()
{
  result = qword_1EE122B68;
  if (!qword_1EE122B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B68);
  }

  return result;
}

unint64_t sub_1DAB0D84C()
{
  result = qword_1EE122B70;
  if (!qword_1EE122B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B70);
  }

  return result;
}

unint64_t sub_1DAB0D8A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAB0D8EC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (v1)
  {
    v2 = [v1 sc_isEnabledForStocksDataclass];
    sub_1DACB9094();
    if (v2)
    {
      v3 = sub_1DAB956F8();
      v4 = sub_1DACB9074();
    }

    else
    {
      v4 = sub_1DACB9084();
    }

    return v4;
  }

  else
  {
    sub_1DACB9094();
    return sub_1DACB9084();
  }
}

unint64_t sub_1DAB0D9E8()
{
  result = qword_1ECBE6F00;
  if (!qword_1ECBE6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6F00);
  }

  return result;
}

uint64_t sub_1DAB0DA50(uint64_t a1)
{
  v1 = CACurrentMediaTime();
  type metadata accessor for ForYouConfigRecord(0);
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = v1;
  v2 = sub_1DACB89D4();
  sub_1DACB8A64();

  v3 = sub_1DACB89D4();
  sub_1DACB8AA4();

  sub_1DACB8A14();

  v4 = sub_1DACB89D4();
  sub_1DACB8B14();

  type metadata accessor for AppConfiguration(0);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v5 = sub_1DACB89D4();
  sub_1DACB8A54();

  v6 = sub_1DACB89D4();
  sub_1DACB8A64();

  v7 = sub_1DACB89D4();
  sub_1DACB8AA4();

  sub_1DACB8A14();

  v8 = sub_1DACB89D4();
  sub_1DACB8B14();

  v9 = sub_1DACB89D4();
  v10 = sub_1DACB89C4();

  return v10;
}

uint64_t sub_1DAB0DD10(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  if (v2 >> 60 == 15)
  {
    v3 = a1[1];
    if (v3 >> 60 == 15)
    {
      sub_1DAB0EB70();
      swift_allocError();
      *v4 = 0;
      v4[1] = 0;
      return swift_willThrow();
    }

    sub_1DAB0B080(*a1, v3);
  }

  sub_1DAB0ECA4(0, &qword_1EE11D448, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAB0EBC4(v1, v2);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB0DE0C(void *a1)
{
  sub_1DAA41DCC();
  v2 = sub_1DACB9AD4();
  v3 = sub_1DACB9914();
  sub_1DACB8C64("ForYouFeed will fetch config record from CloudKit", 49, 2, &dword_1DAA3F000, v2, v3, MEMORY[0x1E69E7CC0]);

  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  return (*(v5 + 8))(v4, v5);
}

uint64_t sub_1DAB0DEBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v7 = sub_1DACB9364();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA41D64(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DACC1D40;
  v12 = CACurrentMediaTime();
  v13 = MEMORY[0x1E69E6438];
  *(v11 + 56) = MEMORY[0x1E69E63B0];
  *(v11 + 64) = v13;
  *(v11 + 32) = (v12 - a3) * 1000.0;
  v14 = *a1;
  v15 = a1[1];
  *(v11 + 96) = MEMORY[0x1E69E6158];
  *(v11 + 104) = sub_1DAA443C8();
  *(v11 + 72) = v14;
  *(v11 + 80) = v15;
  sub_1DAA41DCC();
  sub_1DACB71E4();
  v16 = sub_1DACB9AD4();
  v17 = sub_1DACB9914();
  sub_1DACB8C64("ForYouFeed successfully fetched config record from CloudKit, time=%fms, id=%{public}@", 85, 2, &dword_1DAA3F000, v16, v17, v11);

  v18 = (a1 + *(type metadata accessor for ForYouConfigRecord(0) + 28));
  v20 = *v18;
  v19 = v18[1];
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v30 = sub_1DACB9904();
    v31 = sub_1DACB9AD4();
    sub_1DACB8C64("ForYouFeed config record from CloudKit has missing feed configuration", 69, 2, &dword_1DAA3F000, v31, v30, MEMORY[0x1E69E7CC0]);

    sub_1DAB0EB70();
    swift_allocError();
    *v32 = xmmword_1DACC57B0;
    return swift_willThrow();
  }

  v33[1] = v3;
  v22 = a2;
  sub_1DACB9354();
  v23 = sub_1DACB9334();
  v25 = v24;
  result = (*(v8 + 8))(v10, v7);
  if (v25 >> 60 == 15)
  {
    v27 = sub_1DACB9904();
    v28 = sub_1DACB9AD4();
    sub_1DACB8C64("ForYouFeed config record from CloudKit has non-UTF8 feed configuration", 70, 2, &dword_1DAA3F000, v28, v27, MEMORY[0x1E69E7CC0]);

    sub_1DAB0EB70();
    swift_allocError();
    *v29 = v20;
    v29[1] = v19;
    sub_1DACB71E4();
    return swift_willThrow();
  }

  *v22 = v23;
  v22[1] = v25;
  return result;
}

void sub_1DAB0E1C0(uint64_t a1)
{
  v1 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1DAA41DCC();
  v3 = sub_1DACB9AD4();
  sub_1DACB8C64("ForYouFeed failed to fetch config record from CloudKit, error=%{public}@", 72, 2, &dword_1DAA3F000, v3, v1, v2);
}

uint64_t sub_1DAB0E2C4(uint64_t a1, void *a2)
{
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D528 != -1)
  {
    swift_once();
  }

  [objc_opt_self() enabledForCurrentLevel_];
  v4 = sub_1DACB8004();

  if (v4)
  {
    v5 = CACurrentMediaTime();
    sub_1DAA41DCC();
    v6 = sub_1DACB9AD4();
    v7 = sub_1DACB9914();
    sub_1DACB8C64("ForYouFeed will fetch feed config from News Edge", 48, 2, &dword_1DAA3F000, v6, v7, MEMORY[0x1E69E7CC0]);

    v8 = a2[10];
    v9 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v8);
    __swift_project_boxed_opaque_existential_1(a2 + 12, a2[15]);
    v10 = sub_1DABBCF20(0xD000000000000018, 0x80000001DACE48B0, 0xD000000000000018, 0x80000001DACE48D0, 0, 0);
    (*(v9 + 8))(v10, v8, v9);

    *(swift_allocObject() + 16) = v5;
    v11 = sub_1DACB89D4();
    v12 = sub_1DACB8A54();

    return v12;
  }

  else
  {
    sub_1DAA41DCC();
    v14 = sub_1DACB9AD4();
    v15 = sub_1DACB9914();
    sub_1DACB8C64("ForYouFeed will not fetch feed config from News Edge because it's disabled in the app config", 92, 2, &dword_1DAA3F000, v14, v15, MEMORY[0x1E69E7CC0]);

    sub_1DAB0EB70();
    swift_allocError();
    *v16 = xmmword_1DACC57C0;
    return swift_willThrow();
  }
}

uint64_t sub_1DAB0E54C(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1DAA41D64(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D20;
  v6 = CACurrentMediaTime();
  v7 = MEMORY[0x1E69E6438];
  *(v5 + 56) = MEMORY[0x1E69E63B0];
  *(v5 + 64) = v7;
  *(v5 + 32) = (v6 - a2) * 1000.0;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64("ForYouFeed successfully fetched feed config from News Edge, time=%fms", v10);

  sub_1DAB0ECA4(0, &qword_1EE1240A8, &type metadata for RemoteConfigurationResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAB0B080(v3, v4);
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB0E6AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1DAB0B080(v3, v2);
}

void sub_1DAB0E6E0(uint64_t a1)
{
  sub_1DAA41D64(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1DAA443C8();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1DAA41DCC();
  v2 = sub_1DACB9AD4();
  v3 = sub_1DACB9914();
  sub_1DACB8C64("ForYouFeed failed to fetch feed config from News Edge, error=%{public}@", 71, 2, &dword_1DAA3F000, v2, v3, v1);
}

uint64_t sub_1DAB0E7E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB0E85C()
{
  sub_1DAB0EAE8(0);
  sub_1DACB8BB4();
  v0 = sub_1DACB89D4();
  v1 = sub_1DACB8A54();

  return v1;
}

void *sub_1DAB0E8F0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a7;
  v31 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  v27 = a8;
  v28 = a10;
  v18 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a8 - 8) + 32))(v18, a3, a8);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v19[15] = type metadata accessor for RemoteConfigurationSettingsFactory();
  v19[16] = &off_1F56896D8;
  v19[12] = v24;
  sub_1DAA4D460(a1, (v19 + 2));
  sub_1DAA4D460(&v29, (v19 + 7));
  v19[17] = a4;
  sub_1DAA4D460(a5, (v19 + 18));
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v19;
}

void sub_1DAB0EAE8(uint64_t a1)
{
  if (!qword_1EE11F110)
  {
    sub_1DAB0ECA4(255, &qword_1EE11F118, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F110);
    }
  }
}

unint64_t sub_1DAB0EB70()
{
  result = qword_1EE11E100;
  if (!qword_1EE11E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E100);
  }

  return result;
}

uint64_t sub_1DAB0EBC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DAB0B080(result, a2);
  }

  return result;
}

uint64_t sub_1DAB0EC10()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  return (*(v2 + 40))(v1, v2);
}

void sub_1DAB0ECA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_10StocksCore23ForYouFeedConfigServiceC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAB0ED0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAB0ED64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1DAB0EDDC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1DAB0EE18()
{
  result = qword_1ECBE6F78;
  if (!qword_1ECBE6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6F78);
  }

  return result;
}

uint64_t sub_1DAB0EE6C(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_1DACB78E4();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_1DACB7E44();
  v1[13] = swift_task_alloc();
  v3 = sub_1DACB92E4();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_1DACB7904();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB0EFEC, 0, 0);
}

uint64_t sub_1DAB0EFEC(uint64_t a1)
{
  sub_1DACB6D24();
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  v1[19] = v4;
  *v4 = v1;
  v4[1] = sub_1DAB0F0B0;

  return sub_1DAC95D1C(v3, v2);
}

uint64_t sub_1DAB0F0B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1DAB0F7B8;
  }

  else
  {
    v4 = sub_1DAB0F1C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB0F1C4()
{
  v1 = v0[20];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v1 + 16);
  if (!v3)
  {
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v4 = 0;
  v57 = -v3;
  v5 = v0[20] + 73;
  v44 = MEMORY[0x1E69E7CC0];
  v49 = v5;
  do
  {
    v6 = (v5 + 48 * v4++);
    while (1)
    {
      if ((v4 - 1) >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v56 = *(v6 - 41);
      v7 = *(v6 - 33);
      v8 = *(v6 - 25);
      v9 = *(v6 - 17);
      v10 = *(v6 - 9);
      v54 = *(v6 - 1);
      v51 = *v6;
      if (v9 == sub_1DACB9324() && v10 == v11)
      {
        goto LABEL_4;
      }

      v13 = sub_1DACBA174();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      if ((v13 & 1) == 0)
      {
        break;
      }

LABEL_4:

      ++v4;
      v6 += 48;
      if (v57 + v4 == 1)
      {
        goto LABEL_20;
      }
    }

    v14 = v44;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAB25C88(0, *(v44 + 16) + 1, 1);
      v14 = v44;
    }

    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1DAB25C88((v15 > 1), v16 + 1, 1);
      v14 = v44;
    }

    *(v14 + 16) = v16 + 1;
    v44 = v14;
    v17 = v14 + 48 * v16;
    *(v17 + 32) = v56;
    *(v17 + 40) = v7;
    *(v17 + 48) = v8;
    *(v17 + 56) = v9;
    *(v17 + 64) = v10;
    *(v17 + 72) = v54;
    *(v17 + 73) = v51;
    v5 = v49;
  }

  while (v57 + v4);
LABEL_20:

  v18 = *(v44 + 16);
  if (v18)
  {
    v19 = v0[15];
    v20 = v0[11];
    v58 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v18, 0);
    sub_1DAA9A574(0);
    v21 = v58;
    v48 = (v20 + 104);
    v45 = (v19 + 8);
    v46 = (v19 + 16);
    v22 = (v44 + 64);
    v47 = *MEMORY[0x1E6968DF0];
    while (1)
    {
      v55 = v18;
      v23 = v0[12];
      v24 = v0[10];
      v50 = *(v22 - 4);
      v52 = *(v22 - 3);
      v25 = *(v22 - 1);
      v26 = *v22;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v48)(v23, v47, v24);
      sub_1DACB7914();
      v27 = sub_1DACB6F34();
      if (v25 == sub_1DACB9324() && v26 == v28)
      {
        break;
      }

      v29 = sub_1DACBA174();
      sub_1DACB71E4();

      v30 = v50;
      v31 = v52;
      if (v29)
      {
        goto LABEL_26;
      }

LABEL_29:

      v0[7] = v30;
      v0[8] = v31;
      sub_1DACB6EE4();

      v41 = *(v58 + 16);
      v40 = *(v58 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1DAB25C68((v40 > 1), v41 + 1, 1);
      }

      *(v58 + 16) = v41 + 1;
      v42 = (v58 + 24 * v41);
      v42[4] = v25;
      v42[5] = v26;
      v42[6] = v27;
      v22 += 6;
      --v18;
      if (v55 == 1)
      {

        goto LABEL_34;
      }
    }

    sub_1DACB71E4();

LABEL_26:
    v53 = v27;
    v32 = v25;
    v34 = v0[16];
    v33 = v0[17];
    v35 = v0[14];
    sub_1DACB9284();
    (*v46)(v34, v33, v35);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v36 = v0[17];
    v37 = v0[14];
    v38 = qword_1EE13E470;
    sub_1DACB7DF4();
    v30 = sub_1DACB9384();
    v31 = v39;
    (*v45)(v36, v37);

    v25 = v32;
    v27 = v53;
    goto LABEL_29;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v43 = v0[1];

  return v43(v21);
}

uint64_t sub_1DAB0F7B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB0F860(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DAAFF1F4;

  return sub_1DAB0EE6C(v3);
}

uint64_t sub_1DAB0F8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

uint64_t sub_1DAB0F9BC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB0FA18(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v4 = v1 + 64;
    result = sub_1DACB9BC4();
    if (result < 0 || result >= 1 << *(v1 + 32))
    {
LABEL_20:
      __break(1u);
      return v39;
    }

    else
    {
      v5 = *(v1 + 36);
      v28 = v1 + 72;
      v29 = v2;
      v6 = 1;
      v31 = v1 + 64;
      v32 = v1;
      v30 = v5;
      while ((*(v4 + 8 * (result >> 6)) & (1 << result)) != 0)
      {
        if (v5 != *(v1 + 36))
        {
          goto LABEL_24;
        }

        v34 = 1 << result;
        v35 = result >> 6;
        v33 = v6;
        v7 = *(v1 + 56) + 136 * result;
        v37[0] = *v7;
        v8 = *(v7 + 64);
        v10 = *(v7 + 16);
        v9 = *(v7 + 32);
        v37[3] = *(v7 + 48);
        v37[4] = v8;
        v37[1] = v10;
        v37[2] = v9;
        v12 = *(v7 + 96);
        v11 = *(v7 + 112);
        v13 = *(v7 + 80);
        v38 = *(v7 + 128);
        v37[6] = v12;
        v37[7] = v11;
        v37[5] = v13;
        v40 = result;
        v14 = objc_allocWithZone(SCWWatchedStock);
        sub_1DAA806E4(v37, v36);
        v15 = sub_1DACB92F4();
        v16 = sub_1DACB92F4();
        v17 = sub_1DACB92F4();
        v18 = sub_1DACB92F4();
        v19 = sub_1DACB92F4();
        [v14 initWithName:v15 shortName:v16 compactName:v17 symbol:v18 exchange:v19];

        v1 = v32;
        sub_1DAA9B1C8(v37);
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
        result = v40;
        v20 = 1 << *(v32 + 32);
        if (v40 >= v20)
        {
          goto LABEL_25;
        }

        v4 = v31;
        v21 = *(v31 + 8 * v35);
        if ((v21 & v34) == 0)
        {
          goto LABEL_26;
        }

        v5 = v30;
        if (v30 != *(v32 + 36))
        {
          goto LABEL_27;
        }

        v22 = v21 & (-2 << (v40 & 0x3F));
        if (v22)
        {
          result = __clz(__rbit64(v22)) | v40 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v35 << 6;
          v24 = v35 + 1;
          v25 = (v28 + 8 * v35);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_1DAAA2C74(v40, v30, 0);
              result = __clz(__rbit64(v26)) + v23;
              goto LABEL_17;
            }
          }

          sub_1DAAA2C74(v40, v30, 0);
          result = v20;
        }

LABEL_17:
        if (v33 == v29)
        {
          return v39;
        }

        if ((result & 0x8000000000000000) == 0)
        {
          v6 = v33 + 1;
          if (result < 1 << *(v32 + 32))
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }
  }

  return result;
}

void sub_1DAB0FD38(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_1DACB88F4();
  v6 = [objc_allocWithZone(SCWWatchlistManager) initWithDatabase:v7 metadataProvider:a1 defaultsProvider:a2];

  *a3 = v6;
}

uint64_t sub_1DAB0FDC4()
{
  sub_1DAB1BCC8(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1DAB0FE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAB0FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v12 = swift_allocObject();
  v13 = a6[4];
  *(v12 + 104) = a6[5];
  v14 = a6[7];
  *(v12 + 120) = a6[6];
  *(v12 + 136) = v14;
  v15 = *a6;
  *(v12 + 40) = a6[1];
  v16 = a6[3];
  *(v12 + 56) = a6[2];
  *(v12 + 72) = v16;
  *(v12 + 88) = v13;
  *(v12 + 16) = a5;
  v17 = *(a6 + 16);
  *(v12 + 24) = v15;
  *(v12 + 152) = v17;
  *(v12 + 160) = a3;
  *(v12 + 168) = a4;
  *(v12 + 176) = a1;
  *(v12 + 184) = a2;
  sub_1DACB71F4();
  sub_1DAA806E4(a6, v19);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB0FFCC(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *a1;
  v11 = a2[7];
  v12 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v11);
  v13 = *(a3 + 112);
  v33[6] = *(a3 + 96);
  v33[7] = v13;
  v34 = *(a3 + 128);
  v14 = *(a3 + 48);
  v33[2] = *(a3 + 32);
  v33[3] = v14;
  v15 = *(a3 + 80);
  v33[4] = *(a3 + 64);
  v33[5] = v15;
  v16 = *(a3 + 16);
  v33[0] = *a3;
  v33[1] = v16;
  (*(v12 + 16))(v33, v11, v12);

  v17 = objc_allocWithZone(SCWWatchedStock);
  v18 = sub_1DACB92F4();
  v19 = sub_1DACB92F4();
  v20 = sub_1DACB92F4();
  v21 = sub_1DACB92F4();
  v22 = sub_1DACB92F4();
  v23 = [v17 initWithName:v18 shortName:v19 compactName:v20 symbol:v21 exchange:v22];

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  *(v24 + 32) = a6;
  *(v24 + 40) = a7;
  v25 = *(a3 + 112);
  *(v24 + 144) = *(a3 + 96);
  *(v24 + 160) = v25;
  *(v24 + 176) = *(a3 + 128);
  v26 = *(a3 + 48);
  *(v24 + 80) = *(a3 + 32);
  *(v24 + 96) = v26;
  v27 = *(a3 + 80);
  *(v24 + 112) = *(a3 + 64);
  *(v24 + 128) = v27;
  v28 = *(a3 + 16);
  *(v24 + 48) = *a3;
  *(v24 + 64) = v28;
  aBlock[4] = sub_1DAB1AA50;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_256;
  v29 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DAA806E4(a3, v33);

  [v31 addStock:v23 completion:v29];
  _Block_release(v29);
}

void sub_1DAB10208(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1DACB71F4();
  v4 = a2;
  v3(a2);
}

uint64_t sub_1DAB10274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = sub_1DAB1BE44;
  v14[7] = v13;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB10368(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = sub_1DACB92F4();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a2;
  v15[7] = a3;
  v17[4] = sub_1DAB1A9B0;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DAB10208;
  v17[3] = &block_descriptor_247;
  v16 = _Block_copy(v17);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();

  [v13 removeSymbol:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_1DAB1049C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a1 + 112);
  v29[7] = *(a1 + 96);
  v29[8] = v6;
  v30 = *(a1 + 128);
  v7 = *(a1 + 48);
  v29[3] = *(a1 + 32);
  v29[4] = v7;
  v8 = *(a1 + 80);
  v29[5] = *(a1 + 64);
  v29[6] = v8;
  v9 = *(a1 + 16);
  v29[1] = *a1;
  v29[2] = v9;
  v10 = a3[7];
  v37 = a3[6];
  v38 = v10;
  v39 = *(a3 + 16);
  v11 = a3[3];
  v33 = a3[2];
  v34 = v11;
  v12 = a3[5];
  v35 = a3[4];
  v36 = v12;
  v13 = a3[1];
  v31 = *a3;
  v32 = v13;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DACC2610;
  v49 = *(a1 + 16);
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1DAA443C8();
  *(v15 + 32) = *(a1 + 16);
  v18 = MEMORY[0x1E69E6870];
  *(v15 + 96) = MEMORY[0x1E69E6810];
  *(v15 + 104) = v18;
  *(v15 + 64) = v17;
  *(v15 + 72) = a2;
  v19 = a3[7];
  v46 = a3[6];
  v47 = v19;
  v48 = *(a3 + 16);
  v20 = a3[3];
  v42 = a3[2];
  v43 = v20;
  v21 = a3[5];
  v44 = a3[4];
  v45 = v21;
  v22 = a3[1];
  v40 = *a3;
  v41 = v22;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v40) == 1)
  {
    v23 = (v15 + 112);
    *(v15 + 136) = v16;
    *(v15 + 144) = v17;
LABEL_7:
    *v23 = 7104878;
    v25 = 0xE300000000000000;
    goto LABEL_8;
  }

  v24 = v41;
  v23 = (v15 + 112);
  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  v25 = sub_1DACB71E4();
  if (!v25)
  {
    goto LABEL_7;
  }

  *v23 = v24;
LABEL_8:
  *(v15 + 120) = v25;
  sub_1DAAA1344(&v49, v29);
  v26 = sub_1DACB9914();
  sub_1DACB8C64("reordering symbol %{public}@ to %lu after %{public}@", 52, 2, &dword_1DAA3F000, v14, v26, v15);

  MEMORY[0x1EEE9AC00](v27);
  sub_1DAA61900(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB1071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v13 = swift_allocObject();
  v14 = *(a6 + 112);
  *(v13 + 112) = *(a6 + 96);
  *(v13 + 128) = v14;
  v15 = *(a6 + 48);
  *(v13 + 48) = *(a6 + 32);
  *(v13 + 64) = v15;
  v16 = *(a6 + 80);
  *(v13 + 80) = *(a6 + 64);
  *(v13 + 96) = v16;
  v17 = *(a6 + 16);
  *(v13 + 16) = *a6;
  *(v13 + 32) = v17;
  v18 = a7[4];
  *(v13 + 232) = a7[5];
  v19 = a7[7];
  *(v13 + 248) = a7[6];
  *(v13 + 264) = v19;
  v20 = *a7;
  *(v13 + 168) = a7[1];
  v21 = a7[3];
  *(v13 + 184) = a7[2];
  *(v13 + 200) = v21;
  *(v13 + 216) = v18;
  *(v13 + 144) = *(a6 + 128);
  v22 = *(a7 + 16);
  *(v13 + 152) = v20;
  *(v13 + 280) = v22;
  *(v13 + 288) = a3;
  *(v13 + 296) = a4;
  *(v13 + 304) = a1;
  *(v13 + 312) = a2;
  sub_1DAA806E4(a6, v24);
  sub_1DAB1A034(a7, v24, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB10868(void **a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = sub_1DACB92F4();
  v15 = a3[7];
  v28[6] = a3[6];
  v28[7] = v15;
  v29 = *(a3 + 16);
  v16 = a3[3];
  v28[2] = a3[2];
  v28[3] = v16;
  v17 = a3[5];
  v28[4] = a3[4];
  v28[5] = v17;
  v18 = a3[1];
  v28[0] = *a3;
  v28[1] = v18;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v28) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_1DACB92F4();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a6;
  *(v20 + 40) = a7;
  v21 = *(a2 + 112);
  *(v20 + 144) = *(a2 + 96);
  *(v20 + 160) = v21;
  *(v20 + 176) = *(a2 + 128);
  v22 = *(a2 + 48);
  *(v20 + 80) = *(a2 + 32);
  *(v20 + 96) = v22;
  v23 = *(a2 + 80);
  *(v20 + 112) = *(a2 + 64);
  *(v20 + 128) = v23;
  v24 = *(a2 + 16);
  *(v20 + 48) = *a2;
  *(v20 + 64) = v24;
  aBlock[4] = sub_1DAB1BE40;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_234;
  v25 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DAA806E4(a2, v26);

  [v13 reorderSymbol:v14 afterSymbol:v19 completion:v25];
  _Block_release(v25);
}

void sub_1DAB10A20(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(_OWORD *), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    a2(a1);
  }

  else
  {
    v9 = *(a6 + 112);
    v13[6] = *(a6 + 96);
    v13[7] = v9;
    v14 = *(a6 + 128);
    v10 = *(a6 + 48);
    v13[2] = *(a6 + 32);
    v13[3] = v10;
    v11 = *(a6 + 80);
    v13[4] = *(a6 + 64);
    v13[5] = v11;
    v12 = *(a6 + 16);
    v13[0] = *a6;
    v13[1] = v12;
    (a4)(v13, a2, a3);
  }
}

uint64_t sub_1DAB10ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D40;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1DAA443C8();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = a3;
  *(v9 + 80) = a4;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v12 = sub_1DACB9914();
  sub_1DACB8C64("replacing symbol %{public}@ with %{public}@", 43, 2, &dword_1DAA3F000, v8, v12, v9);

  MEMORY[0x1EEE9AC00](v13);
  sub_1DAA61900(0, &qword_1EE11D3F0, v10, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB10C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = sub_1DAB1BE44;
  v16[9] = v15;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB10D68(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a1;
  v15 = sub_1DACB92F4();
  v16 = sub_1DACB92F4();
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a4;
  v17[7] = a5;
  v19[4] = sub_1DAB1BE3C;
  v19[5] = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1DAB10208;
  v19[3] = &block_descriptor_212;
  v18 = _Block_copy(v19);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();

  [v14 replaceSymbol:v15 withSymbol:v16 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1DAB10EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_1DAB1BD8C;
  v11[6] = v10;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB10FA0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v14[4] = sub_1DAB1A718;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DAB11714;
  v14[3] = &block_descriptor_199;
  v13 = _Block_copy(v14);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v10 fetchStocksWithCompletion_];
  _Block_release(v13);
}

void sub_1DAB110D4(unint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v14 = sub_1DACB8214();
    sub_1DAB1A1F8();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69D64A0], v14);
    a4(v15);
    goto LABEL_7;
  }

  if (!a2)
  {
    if (a1)
    {
      if (qword_1EE121838 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE13E310;
      sub_1DAA41D64(0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DACC1D40;
      v39 = a6;
      if (a1 >> 62)
      {
        v37 = v18;
        v19 = sub_1DACB9E14();
        v18 = v37;
      }

      else
      {
        v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = MEMORY[0x1E69E65A8];
      *(v18 + 56) = MEMORY[0x1E69E6530];
      *(v18 + 64) = v20;
      v38 = v18;
      *(v18 + 32) = v19;
      if (v19)
      {
        v40 = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v19 & ~(v19 >> 63), 0);
        if (v19 < 0)
        {
          __break(1u);
          return;
        }

        v21 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1E12777A0](v21, a1);
          }

          else
          {
            v22 = *(a1 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = [v22 symbol];
          v25 = sub_1DACB9324();
          v27 = v26;

          v29 = *(v40 + 16);
          v28 = *(v40 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1DAA5859C((v28 > 1), v29 + 1, 1);
          }

          ++v21;
          *(v40 + 16) = v29 + 1;
          v30 = v40 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
        }

        while (v19 != v21);
      }

      v31 = MEMORY[0x1E69E6158];
      sub_1DAA61900(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA61850(&qword_1EE123E90, MEMORY[0x1E69E6310]);
      v32 = sub_1DACB9214();
      v34 = v33;

      v38[12] = v31;
      v38[13] = sub_1DAA443C8();
      v38[9] = v32;
      v38[10] = v34;
      v35 = sub_1DACB9914();
      sub_1DACB8C64("fetched %lu stocks with symbols: %{public}@", 43, 2, &dword_1DAA3F000, v17, v35, v38);

      sub_1DACB71F4();
      v36 = sub_1DAB115B4(a1);

      v39(v36);

      return;
    }

    sub_1DAB19F50();
    v15 = swift_allocError();
    (a4)();

LABEL_7:

    return;
  }

  v10 = a2;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE13E310;
  v12 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DAA443C8();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  sub_1DACB8C64("failed to fetch stocks with error: %{public}@", 45, 2, &dword_1DAA3F000, v11, v12, v13);

  a4(a2);
}

char *sub_1DAB115B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DACB9E14();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_12:
    v15 = sub_1DAB19694(v3);

    return v15;
  }

  result = sub_1DAA5859C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E12777A0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 symbol];
      v9 = sub_1DACB9324();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DAA5859C((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1DAB11728(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a6;
  v14[8] = a7;
  v17[4] = sub_1DAB1A678;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DAB11EFC;
  v17[3] = &block_descriptor_179;
  v15 = _Block_copy(v17);
  v16 = v13;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v16 legacyWatchlistSortState_];
  _Block_release(v15);
}

void sub_1DAB11850(uint64_t a1, uint64_t a2, id a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v11 = a7;
  v12 = a4;
  if (a3)
  {
    v16 = a3;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE13E310;
    v18 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DACC1D20;
    aBlock = 0;
    v32 = 0xE000000000000000;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1DAA443C8();
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    sub_1DACB8C64("failed to fetch legacy watchlist sort state with error: %{public}@", 66, 2, &dword_1DAA3F000, v17, v18, v19);

    v10 = a8;
    v12 = a4;
    v11 = a7;
  }

  if (a2 && (sub_1DACB71E4(), sub_1DABF75BC(a1, a2, &aBlock), v20 = aBlock, aBlock < 0xFEu))
  {
    v21 = sub_1DACB92F4();
    v24 = v20 >> 5;
    if (v20 >> 5 <= 2 || v24 == 3 || v24 == 4)
    {
      v22 = sub_1DACB9844();
      v23 = sub_1DACB9844();
      goto LABEL_13;
    }
  }

  else
  {
    v21 = sub_1DACB92F4();
  }

  v22 = sub_1DACB9844();
  v23 = 0;
LABEL_13:
  v25 = sub_1DACB9844();
  v26 = swift_allocObject();
  v26[2] = v11;
  v26[3] = v10;
  v26[4] = a9;
  v26[5] = a10;
  v35 = sub_1DAB1A6AC;
  v36 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1DAB11E70;
  v34 = &block_descriptor_185;
  v27 = _Block_copy(&aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v12 migrateToDefaultWatchlist:v21 sortState:v22 sortOrderState:v23 displayState:v25 completion:v27];

  _Block_release(v27);
}

void sub_1DAB11B6C(void *a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(id *))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE13E310;
    v9 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DACC1D20;
    v23 = a2;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1DAA443C8();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_1DACB8C64("failed to migrate to default watchlist with error: %{public}@", 61, 2, &dword_1DAA3F000, v8, v9, v10, v23);

    a3(a2);
  }

  else if (a1)
  {
    v12 = qword_1EE121838;
    v13 = a1;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = qword_1EE13E310;
    sub_1DAA41D64(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DACC1D20;
    v16 = [v13 description];
    v17 = sub_1DACB9324();
    v19 = v18;

    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1DAA443C8();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    v20 = sub_1DACB9914();
    sub_1DACB8C64("successfully migrated to default watchlist with result: %{public}@", 66, 2, &dword_1DAA3F000, v14, v20, v15);

    v21 = v13;
    sub_1DABE64D0(v21, &v28);
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    a5(&v23);
  }

  else
  {
    sub_1DAB19F50();
    v22 = swift_allocError();
    (a3)();
  }
}

void sub_1DAB11E70(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1DACB71F4();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1DAB11EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DACB9324();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_1DACB71F4();
  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1DAB11F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB12048(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v28 = a6;
  v12 = sub_1DACB7D04();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  sub_1DACB6D04();
  v16 = sub_1DACB7CE4();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  v19 = sub_1DACB92F4();
  v20 = sub_1DACB92F4();
  v21 = sub_1DACB9844();
  v22 = sub_1DACB9844();
  v23 = swift_allocObject();
  v24 = v28;
  v23[2] = v27;
  v23[3] = a5;
  v23[4] = v24;
  v23[5] = a7;
  v23[6] = a2;
  v23[7] = a3;
  v23[8] = v16;
  v23[9] = v18;
  aBlock[4] = sub_1DAB1A5E8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_170;
  v25 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();

  [v29 addWatchlist:v19 identifier:v20 sortState:v21 sortOrderState:0 displayState:v22 completion:v25];

  _Block_release(v25);
}

void sub_1DAB1227C(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v11 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v12 = qword_1EE13E310;
    v13 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DACC1D20;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1DAA443C8();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    sub_1DACB8C64("failed to create watchlist with error: %{public}@", 49, 2, &dword_1DAA3F000, v12, v13, v14);

    a2(a1);
  }

  else
  {
    v16[0] = a6;
    v16[1] = a7;
    v16[2] = MEMORY[0x1E69E7CC0];
    v16[3] = a8;
    v16[4] = a9;
    v17 = 160;
    sub_1DACB71E4();
    sub_1DACB71E4();
    a4(v16);
  }
}

void sub_1DAB1243C(void **a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = sub_1DACB92F4();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  v14 = a2[1];
  *(v13 + 48) = *a2;
  *(v13 + 64) = v14;
  *(v13 + 74) = *(a2 + 26);
  aBlock[4] = sub_1DAB1A57C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_161;
  v15 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DAA8DB84(a2, &v16);

  [v11 removeWatchlist:v12 completion:v15];
  _Block_release(v15);
}

void sub_1DAB12578(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(__int128 *, void (*)(void *), uint64_t), uint64_t a5, __int128 *a6)
{
  if (a1)
  {
    v8 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v9 = qword_1EE13E310;
    v10 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DACC1D20;
    *&v14 = 0;
    *(&v14 + 1) = 0xE000000000000000;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    v12 = v14;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1DAA443C8();
    *(v11 + 32) = v12;
    sub_1DACB8C64("failed to remove watchlist with error: %{public}@", 49, 2, &dword_1DAA3F000, v9, v10, v11);

    a2(a1);
  }

  else
  {
    v13 = a6[1];
    v14 = *a6;
    v15[0] = v13;
    *(v15 + 10) = *(a6 + 26);
    a4(&v14, a2, a3);
  }
}

uint64_t sub_1DAB126F4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v15 = *a1;
  v16[0] = v6;
  *(v16 + 10) = *(a1 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D40;
  v17 = *a1;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1DAA443C8();
  *(v8 + 32) = *a1;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  sub_1DAAA1344(&v17, v14);
  sub_1DACB71E4();
  v11 = sub_1DACB9914();
  sub_1DACB8C64("renaming watchlist from %{public}@ to %{public}@", 48, 2, &dword_1DAA3F000, v7, v11, v8);

  MEMORY[0x1EEE9AC00](v12);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB128A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v16 = a6[1];
  *(v15 + 16) = *a6;
  *(v15 + 32) = v16;
  *(v15 + 42) = *(a6 + 26);
  *(v15 + 64) = a7;
  *(v15 + 72) = a8;
  *(v15 + 80) = a3;
  *(v15 + 88) = a4;
  *(v15 + 96) = a1;
  *(v15 + 104) = a2;
  sub_1DAA8DB84(a6, &v18);
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB12988(void **a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v16 = sub_1DACB92F4();
  v17 = sub_1DACB92F4();
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a7;
  *(v18 + 40) = a8;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  v19 = a2[1];
  *(v18 + 64) = *a2;
  *(v18 + 80) = v19;
  *(v18 + 90) = *(a2 + 26);
  aBlock[4] = sub_1DAB1A464;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_152;
  v20 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DAA8DB84(a2, &v21);

  [v15 renameWatchlist:v16 newName:v17 completion:v20];
  _Block_release(v20);
}

void sub_1DAB12AF8(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE13E310;
    v12 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DACC1D20;
    *&v20 = a1;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1DAA443C8();
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    sub_1DACB8C64("failed to rename watchlist with error: %{public}@", 49, 2, &dword_1DAA3F000, v11, v12, v13);

    a2(a1);
  }

  else
  {
    v21 = *(a8 + 16);
    v20 = *(a8 + 24);
    v15 = *(a8 + 40);
    v17[0] = a6;
    v17[1] = a7;
    v17[2] = v21;
    v18 = v20;
    v19 = v15;
    sub_1DAB1A034(&v21, v16, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAAA1344(&v20, v16);
    sub_1DACB71E4();
    a4(v17);
  }
}

uint64_t sub_1DAB12CF8(__int128 *a1, char *a2)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACC1D40;
  v4 = sub_1DABF79D8();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1DAA443C8();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = sub_1DABF79D8();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  v11 = sub_1DACB9914();
  sub_1DACB8C64("updating watchlist sort display state from %{public}@ to %{public}@", 67, 2, &dword_1DAA3F000, v2, v11, v3);

  MEMORY[0x1EEE9AC00](v12);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAB12EB8(id *a1, unsigned __int8 a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *a1;
  v12 = a2 >> 5;
  if (v12 > 4)
  {
    v13 = sub_1DACB9844();
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v13 = sub_1DACB9844();
    v14 = sub_1DACB9844();
    if (a2 > 0x5Fu)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_1DACB9844();
    }
  }

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v16 = a3[1];
  aBlock = *a3;
  *v24 = v16;
  *&v24[10] = *(a3 + 26);
  sub_1DAA8DB84(a3, v25);
  v17 = sub_1DAB130EC(&aBlock);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  *(v18 + 40) = a7;
  v19 = a3[1];
  *(v18 + 48) = *a3;
  *(v18 + 64) = v19;
  *(v18 + 74) = *(a3 + 26);
  *(v18 + 90) = a2;
  *&v24[16] = sub_1DAB1A410;
  *&v24[24] = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v24 = sub_1DAB10208;
  *&v24[8] = &block_descriptor_143;
  v20 = _Block_copy(&aBlock);
  sub_1DAA8DB84(a3, v25);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v22 updateSortState:v13 newSortOrderState:v14 newDisplayState:v15 watchlist:v17 completion:v20];
  _Block_release(v20);
}

id sub_1DAB130EC(uint64_t *a1)
{
  v1 = *(a1 + 40);
  v2 = sub_1DACB92F4();
  v3 = sub_1DACB92F4();
  v4 = sub_1DACB9634();
  v5 = v1 >> 5;
  if (v1 >> 5 <= 2 || v5 == 3 || v5 == 4)
  {
    v6 = sub_1DACB9844();
    v7 = sub_1DACB9844();
  }

  else
  {
    v6 = sub_1DACB9844();
    v7 = 0;
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1DACB9844();
  v10 = [v8 initWithIdentifier:v2 name:v3 symbols:v4 sortState:v6 sortOrderState:v7 displayState:v9];

  return v10;
}

void sub_1DAB13260(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(__int128 *), uint64_t a5, __int128 *a6, unsigned __int8 a7)
{
  if (a1)
  {
    v9 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE13E310;
    v11 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DACC1D20;
    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    *&v24 = a1;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    v13 = v17;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1DAA443C8();
    *(v12 + 32) = v13;
    sub_1DACB8C64("failed to update watchlist sort state with error: %{public}@", 60, 2, &dword_1DAA3F000, v10, v11, v12);

    a2(a1);
  }

  else
  {
    v15 = a7 >> 5;
    if (a7 >= 0x60u)
    {
      v15 = *(a6 + 41);
    }

    v24 = *a6;
    v23 = *(a6 + 2);
    v22 = *(a6 + 24);
    v17 = v24;
    v18 = v23;
    v19 = v22;
    v20 = a7;
    v21 = v15;
    sub_1DAAA1344(&v24, v16);
    sub_1DAB1A034(&v23, v16, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAAA1344(&v22, v16);
    a4(&v17);
  }
}

uint64_t sub_1DAB13480(__int128 *a1, char *a2)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACC1D40;
  v4 = sub_1DAC92D38();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1DAA443C8();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = sub_1DAC92D38();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  v11 = sub_1DACB9914();
  sub_1DACB8C64("updating watchlist display state from %{public}@ to %{public}@", 62, 2, &dword_1DAA3F000, v2, v11, v3);

  MEMORY[0x1EEE9AC00](v12);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB13640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = a7[1];
  *(v15 + 24) = *a7;
  *(v15 + 40) = v16;
  *(v15 + 50) = *(a7 + 26);
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;
  *(v15 + 88) = a1;
  *(v15 + 96) = a2;
  sub_1DAA8DB84(a7, &v18);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB13708(void **a1, unsigned __int8 a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = sub_1DACB9844();
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v15 = a3[1];
  v20 = *a3;
  *v21 = v15;
  *&v21[10] = *(a3 + 26);
  sub_1DAA8DB84(a3, v22);
  v16 = sub_1DAB130EC(&v20);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(v17 + 40) = a7;
  v18 = a3[1];
  *(v17 + 48) = *a3;
  *(v17 + 64) = v18;
  *(v17 + 74) = *(a3 + 26);
  *(v17 + 90) = a2;
  *&v21[16] = sub_1DAB1A324;
  *&v21[24] = v17;
  *&v20 = MEMORY[0x1E69E9820];
  *(&v20 + 1) = 1107296256;
  *v21 = sub_1DAB10208;
  *&v21[8] = &block_descriptor_134;
  v19 = _Block_copy(&v20);
  sub_1DAA8DB84(a3, v22);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v13 updateDisplayState:v14 watchlist:v16 completion:v19];
  _Block_release(v19);
}

void sub_1DAB138A0(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(__int128 *), uint64_t a5, __int128 *a6, char a7)
{
  if (a1)
  {
    v9 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE13E310;
    v11 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DACC1D20;
    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    *&v24 = a1;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    v13 = v17;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1DAA443C8();
    *(v12 + 32) = v13;
    sub_1DACB8C64("failed to update watchlist display state with error: %{public}@", 63, 2, &dword_1DAA3F000, v10, v11, v12);

    a2(a1);
  }

  else
  {
    v24 = *a6;
    v23 = *(a6 + 2);
    v22 = *(a6 + 24);
    v15 = *(a6 + 40);
    v17 = v24;
    v18 = v23;
    v19 = v22;
    v20 = v15;
    v21 = a7;
    sub_1DAAA1344(&v24, v16);
    sub_1DAB1A034(&v23, v16, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAAA1344(&v22, v16);
    a4(&v17);
  }
}

void sub_1DAB13AB0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1DAB1A2B8;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAB140E0;
  v12[3] = &block_descriptor_125;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 fetchAllWatchlistsWithCompletion_];
  _Block_release(v11);
}

void sub_1DAB13BB0(unint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void *))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE13E310;
    v9 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DACC1D20;
    v60 = a2;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1DAA443C8();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_1DACB8C64("failed to fetch watchlist with error: %{public}@", 48, 2, &dword_1DAA3F000, v8, v9, v10);

    a3(a2);

    return;
  }

  if (a1)
  {
    v11 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v12 = qword_1EE13E310;
    sub_1DAA41D64(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DACC1D40;
    if (v11 >> 62)
    {
      v14 = sub_1DACB9E14();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = v15;
    *(v13 + 32) = v14;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v14 & ~(v14 >> 63);
    v53 = v14;
    if (v14)
    {
      v51 = v12;
      v54 = MEMORY[0x1E69E7CC0];
      v47 = v14 & ~(v14 >> 63);
      sub_1DAA5859C(0, v17, 0);
      if (v53 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      v18 = 0;
      v16 = v54;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1E12777A0](v18, v11);
        }

        else
        {
          v19 = *(v11 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = [v19 name];
        v22 = sub_1DACB9324();
        v24 = v23;

        v54 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DAA5859C((v25 > 1), v26 + 1, 1);
          v16 = v54;
        }

        ++v18;
        *(v16 + 16) = v26 + 1;
        v27 = v16 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
      }

      while (v53 != v18);
      v12 = v51;
      v17 = v47;
    }

    v54 = v16;
    v28 = MEMORY[0x1E69E6158];
    sub_1DAA61900(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA61850(&qword_1EE123E90, MEMORY[0x1E69E6310]);
    v29 = sub_1DACB9214();
    v31 = v30;

    *(v13 + 96) = v28;
    *(v13 + 104) = sub_1DAA443C8();
    *(v13 + 72) = v29;
    *(v13 + 80) = v31;
    v32 = sub_1DACB9914();
    sub_1DACB8C64("fetched %lu watchlists: %@", 26, 2, &dword_1DAA3F000, v12, v32, v13);

    v33 = MEMORY[0x1E69E7CC0];
    if (!v53)
    {
LABEL_29:
      a5(v33);

      return;
    }

    v60 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C88(0, v17, 0);
    v34 = v53;
    if ((v53 & 0x8000000000000000) == 0)
    {
      v35 = 0;
      v33 = v60;
      v50 = v11 & 0xC000000000000001;
      v52 = v11;
      do
      {
        if (v50)
        {
          v36 = MEMORY[0x1E12777A0](v35, v11);
        }

        else
        {
          v36 = *(v11 + 8 * v35 + 32);
        }

        sub_1DABE64D0(v36, &v54);
        v37 = v54;
        v38 = v55;
        v39 = v56;
        v40 = v57;
        v41 = v58;
        v42 = v59;
        v60 = v33;
        v44 = v33[2];
        v43 = v33[3];
        if (v44 >= v43 >> 1)
        {
          v48 = v55;
          sub_1DAB25C88((v43 > 1), v44 + 1, 1);
          v38 = v48;
          v34 = v53;
          v33 = v60;
        }

        v33[2] = v44 + 1;
        v45 = &v33[6 * v44];
        v45[4] = v37;
        ++v35;
        *(v45 + 5) = v38;
        v45[7] = v39;
        v45[8] = v40;
        *(v45 + 72) = v41;
        *(v45 + 73) = v42;
        v11 = v52;
      }

      while (v34 != v35);
      goto LABEL_29;
    }

LABEL_35:
    __break(1u);
    return;
  }

  sub_1DAB19F50();
  v46 = swift_allocError();
  (a3)();
}

uint64_t sub_1DAB140F4(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1DAA420F4(0, a4, a5);
    v6 = sub_1DACB9644();
  }

  sub_1DACB71F4();
  v8 = a3;
  v7(v6, a3);
}

uint64_t sub_1DAB14190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v14 = a6[1];
  *(v13 + 16) = *a6;
  *(v13 + 32) = v14;
  *(v13 + 42) = *(a6 + 26);
  *(v13 + 64) = a5;
  *(v13 + 72) = a3;
  *(v13 + 80) = a4;
  *(v13 + 88) = sub_1DAA73914;
  *(v13 + 96) = v12;
  sub_1DACB71F4();
  sub_1DAA8DB84(a6, &v16);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB14290(void **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v13 = a2[1];
  v19 = *a2;
  *v20 = v13;
  *&v20[10] = *(a2 + 26);
  sub_1DAA8DB84(a2, v21);
  v14 = sub_1DAB130EC(&v19);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = a2[1];
  *(v16 + 40) = *a2;
  *(v16 + 16) = v15;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 56) = v17;
  *(v16 + 66) = *(a2 + 26);
  *(v16 + 88) = a6;
  *(v16 + 96) = a7;
  *&v20[16] = sub_1DAB1A1E4;
  *&v20[24] = v16;
  *&v19 = MEMORY[0x1E69E9820];
  *(&v19 + 1) = 1107296256;
  *v20 = sub_1DAB11714;
  *&v20[8] = &block_descriptor_113;
  v18 = _Block_copy(&v19);
  sub_1DAA8DB84(a2, v21);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v12 fetchStocksFromWatchlist:v14 completion:v18];
  _Block_release(v18);
}

void sub_1DAB1443C(unint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t *a6, void (*a7)(uint64_t))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v16 = sub_1DACB8214();
    sub_1DAB1A1F8();
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69D64A0], v16);
    a4(v17);
    goto LABEL_7;
  }

  if (!a2)
  {
    if (a1)
    {
      if (qword_1EE121838 != -1)
      {
        swift_once();
      }

      v44 = qword_1EE13E310;
      sub_1DAA41D64(0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DACC2610;
      if (a1 >> 62)
      {
        v20 = sub_1DACB9E14();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = a7;
      v21 = MEMORY[0x1E69E65A8];
      *(v19 + 56) = MEMORY[0x1E69E6530];
      *(v19 + 64) = v21;
      *(v19 + 32) = v20;
      v22 = *a6;
      v23 = a6[1];
      v24 = MEMORY[0x1E69E6158];
      *(v19 + 96) = MEMORY[0x1E69E6158];
      v25 = sub_1DAA443C8();
      v26 = v25;
      *(v19 + 104) = v25;
      *(v19 + 72) = v22;
      *(v19 + 80) = v23;
      v43 = v19;
      if (v20)
      {
        v42 = v25;
        v46 = MEMORY[0x1E69E7CC0];
        sub_1DACB71E4();
        sub_1DAA5859C(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          __break(1u);
          return;
        }

        v27 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x1E12777A0](v27, a1);
          }

          else
          {
            v28 = *(a1 + 8 * v27 + 32);
          }

          v29 = v28;
          v30 = [v28 symbol];
          v31 = sub_1DACB9324();
          v33 = v32;

          v35 = *(v46 + 16);
          v34 = *(v46 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1DAA5859C((v34 > 1), v35 + 1, 1);
          }

          ++v27;
          *(v46 + 16) = v35 + 1;
          v36 = v46 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
        }

        while (v20 != v27);
        v24 = MEMORY[0x1E69E6158];
        v26 = v42;
      }

      else
      {
        sub_1DACB71E4();
      }

      sub_1DAA61900(0, &qword_1EE123EA0, v24, MEMORY[0x1E69E62F8]);
      sub_1DAA61850(&qword_1EE123E90, MEMORY[0x1E69E6310]);
      v37 = sub_1DACB9214();
      v39 = v38;

      v43[17] = v24;
      v43[18] = v26;
      v43[14] = v37;
      v43[15] = v39;
      v40 = sub_1DACB9914();
      sub_1DACB8C64("fetched %lu stocks from watchlist: %{public}@ with symbols: %{public}@", 70, 2, &dword_1DAA3F000, v44, v40, v43);

      sub_1DACB71F4();
      v41 = sub_1DAB115B4(a1);

      v45(v41);

      return;
    }

    sub_1DAB19F50();
    v17 = swift_allocError();
    (a4)();

LABEL_7:

    return;
  }

  v12 = a2;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE13E310;
  v14 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1DAA443C8();
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  sub_1DACB8C64("failed to fetch stocks from watchlist with error: %{public}@", 60, 2, &dword_1DAA3F000, v13, v14, v15);

  a4(a2);
}

uint64_t sub_1DAB14960(__int128 *a1, __int128 *a2)
{
  v4 = a1[7];
  v24 = a1[6];
  v25 = v4;
  v26 = *(a1 + 16);
  v5 = a1[3];
  v20 = a1[2];
  v21 = v5;
  v6 = a1[5];
  v22 = a1[4];
  v23 = v6;
  v7 = *a1;
  v19 = a1[1];
  v18 = v7;
  v8 = a2[1];
  v27 = *a2;
  v28[0] = v8;
  *(v28 + 10) = *(a2 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D40;
  v30 = a1[1];
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1DAA443C8();
  *(v10 + 64) = v12;
  *(v10 + 32) = a1[1];
  v29 = *a2;
  v13 = v29;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v13;
  sub_1DAAA1344(&v30, v17);
  sub_1DAAA1344(&v29, v17);
  v14 = sub_1DACB9914();
  sub_1DACB8C64("adding stock: %{public}@ to watchlist: %{public}@", 49, 2, &dword_1DAA3F000, v9, v14, v10);

  MEMORY[0x1EEE9AC00](v15);
  sub_1DAA61900(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB14B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, _OWORD *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v16 = a6[4];
  *(v15 + 104) = a6[5];
  v17 = a6[7];
  *(v15 + 120) = a6[6];
  *(v15 + 136) = v17;
  v18 = *a6;
  *(v15 + 40) = a6[1];
  v19 = a6[3];
  *(v15 + 56) = a6[2];
  *(v15 + 72) = v19;
  *(v15 + 16) = a5;
  *(v15 + 152) = *(a6 + 16);
  *(v15 + 88) = v16;
  *(v15 + 24) = v18;
  v20 = a7[1];
  *(v15 + 160) = *a7;
  *(v15 + 176) = v20;
  *(v15 + 186) = *(a7 + 26);
  *(v15 + 208) = a3;
  *(v15 + 216) = a4;
  *(v15 + 224) = sub_1DAA98760;
  *(v15 + 232) = v14;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DAA806E4(a6, v22);
  sub_1DAA8DB84(a7, v22);
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB14CA8(id *a1, void *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *a1;
  v11 = a2[7];
  v12 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v11);
  v13 = a3[7];
  v43 = a3[6];
  v44 = v13;
  v45 = *(a3 + 16);
  v14 = a3[3];
  *&v39[16] = a3[2];
  v40 = v14;
  v15 = a3[5];
  v41 = a3[4];
  v42 = v15;
  v16 = a3[1];
  v38 = *a3;
  *v39 = v16;
  (*(v12 + 16))(&v38, v11, v12);

  v17 = objc_allocWithZone(SCWWatchedStock);
  v18 = sub_1DACB92F4();
  v19 = sub_1DACB92F4();
  v20 = sub_1DACB92F4();
  v21 = sub_1DACB92F4();
  v22 = sub_1DACB92F4();
  v23 = [v17 initWithName:v18 shortName:v19 compactName:v20 symbol:v21 exchange:v22];

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v24 = a4[1];
  v38 = *a4;
  *v39 = v24;
  *&v39[10] = *(a4 + 26);
  sub_1DAA8DB84(a4, aBlock);
  v25 = sub_1DAB130EC(&v38);
  v26 = swift_allocObject();
  v27 = a3[7];
  *(v26 + 112) = a3[6];
  *(v26 + 128) = v27;
  v28 = a3[3];
  *(v26 + 48) = a3[2];
  *(v26 + 64) = v28;
  v29 = a3[5];
  *(v26 + 80) = a3[4];
  *(v26 + 96) = v29;
  v30 = a3[1];
  *(v26 + 16) = *a3;
  *(v26 + 32) = v30;
  v31 = a4[1];
  *(v26 + 152) = *a4;
  *(v26 + 144) = *(a3 + 16);
  *(v26 + 168) = v31;
  *(v26 + 178) = *(a4 + 26);
  *(v26 + 200) = a5;
  *(v26 + 208) = a6;
  *(v26 + 216) = a7;
  *(v26 + 224) = a8;
  aBlock[4] = sub_1DAB1A174;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_91;
  v32 = _Block_copy(aBlock);
  sub_1DAA8DB84(a4, &v38);
  sub_1DAA806E4(a3, &v38);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v36 addStock:v23 watchlist:v25 completion:v32];
  _Block_release(v32);
}

void sub_1DAB14F58(void *a1, uint64_t a2, __int128 *a3, void (*a4)(void *), uint64_t a5, void (*a6)(void))
{
  if (a1)
  {
    v10 = a1;
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE13E318;
    v12 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DACC2610;
    v24 = *(a2 + 16);
    v14 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1DAA443C8();
    *(v13 + 64) = v15;
    *(v13 + 32) = *(a2 + 16);
    v23 = *a3;
    v16 = v23;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 72) = v16;
    v21 = 0;
    v22 = 0xE000000000000000;
    v20 = a1;
    sub_1DAAA1344(&v24, v19);
    sub_1DAAA1344(&v23, v19);
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    v17 = v21;
    v18 = v22;
    *(v13 + 136) = v14;
    *(v13 + 144) = v15;
    *(v13 + 112) = v17;
    *(v13 + 120) = v18;
    sub_1DACB8C64("failed to add stock: %{public}@ to watchlist: %{public} with error: %{public}@", 78, 2, &dword_1DAA3F000, v11, v12, v13);

    a4(a1);
  }

  else
  {
    (a6)(0, a2, a3, a4, a5);
  }
}

uint64_t sub_1DAB15110(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a3[1];
  v16 = *a3;
  v17[0] = v6;
  *(v17 + 10) = *(a3 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D40;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1DAA443C8();
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v18 = *a3;
  v11 = v18;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11;
  sub_1DACB71E4();
  sub_1DAAA1344(&v18, v15);
  v12 = sub_1DACB9914();
  sub_1DACB8C64("removing stock: %{public}@ from watchlist: %{public}@", 53, 2, &dword_1DAA3F000, v7, v12, v8);

  MEMORY[0x1EEE9AC00](v13);
  sub_1DAA61900(0, &qword_1EE11D3F0, v9, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB152BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  v17 = a8[1];
  *(v16 + 32) = *a8;
  *(v16 + 48) = v17;
  *(v16 + 58) = *(a8 + 26);
  *(v16 + 80) = a3;
  *(v16 + 88) = a4;
  *(v16 + 96) = sub_1DAB1BE44;
  *(v16 + 104) = v15;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DAA8DB84(a8, &v19);
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB153CC(id *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *a1;
  v15 = sub_1DACB92F4();
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v16 = a4[1];
  aBlock = *a4;
  *v23 = v16;
  *&v23[10] = *(a4 + 26);
  sub_1DAA8DB84(a4, v24);
  v17 = sub_1DAB130EC(&aBlock);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = a4[1];
  *(v18 + 32) = *a4;
  *(v18 + 48) = v19;
  *(v18 + 58) = *(a4 + 26);
  *(v18 + 80) = a5;
  *(v18 + 88) = a6;
  *(v18 + 96) = a7;
  *(v18 + 104) = a8;
  *&v23[16] = sub_1DAB1A13C;
  *&v23[24] = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v23 = sub_1DAB10208;
  *&v23[8] = &block_descriptor_79;
  v20 = _Block_copy(&aBlock);
  sub_1DAA8DB84(a4, v24);
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v21 removeSymbol:v15 watchlist:v17 completion:v20];
  _Block_release(v20);
}

void sub_1DAB15578(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, void (*a5)(void *), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, __int128 *, void (*)(void *), uint64_t))
{
  if (a1)
  {
    v11 = a1;
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    v12 = qword_1EE13E318;
    v13 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DACC2610;
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1DAA443C8();
    *(v14 + 64) = v16;
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    v25 = *a4;
    v17 = v25;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = v17;
    v23 = 0;
    v24 = 0xE000000000000000;
    v22 = a1;
    sub_1DACB71E4();
    sub_1DAAA1344(&v25, v21);
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    v18 = v23;
    v19 = v24;
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
    *(v14 + 112) = v18;
    *(v14 + 120) = v19;
    sub_1DACB8C64("failed to remove stock: %{public}@ from watchlist: %{public} with error: %{public}@", 83, 2, &dword_1DAA3F000, v12, v13, v14);

    a5(a1);
  }

  else
  {
    a7(a2, a3, a3, a4, a5, a6);
  }
}

uint64_t sub_1DAB15730(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *(a1 + 112);
  v29[7] = *(a1 + 96);
  v29[8] = v5;
  v30 = *(a1 + 128);
  v6 = *(a1 + 48);
  v29[3] = *(a1 + 32);
  v29[4] = v6;
  v7 = *(a1 + 80);
  v29[5] = *(a1 + 64);
  v29[6] = v7;
  v8 = *(a1 + 16);
  v29[1] = *a1;
  v29[2] = v8;
  v9 = a2[7];
  v37 = a2[6];
  v38 = v9;
  v39 = *(a2 + 16);
  v10 = a2[3];
  v33 = a2[2];
  v34 = v10;
  v11 = a2[5];
  v35 = a2[4];
  v36 = v11;
  v12 = a2[1];
  v31 = *a2;
  v32 = v12;
  v13 = a3[1];
  v40 = *a3;
  v41[0] = v13;
  *(v41 + 10) = *(a3 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DACC2610;
  v52 = *(a1 + 16);
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1DAA443C8();
  *(v15 + 64) = v17;
  *(v15 + 32) = *(a1 + 16);
  v18 = a2[7];
  v48 = a2[6];
  v49 = v18;
  v50 = *(a2 + 16);
  v19 = a2[3];
  v44 = a2[2];
  v45 = v19;
  v20 = a2[5];
  v46 = a2[4];
  v47 = v20;
  v21 = a2[1];
  v42 = *a2;
  v43 = v21;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v42) == 1)
  {
    v22 = (v15 + 72);
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
LABEL_7:
    *v22 = 7104878;
    v24 = 0xE300000000000000;
    goto LABEL_8;
  }

  v23 = v43;
  v22 = (v15 + 72);
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  v24 = sub_1DACB71E4();
  if (!v24)
  {
    goto LABEL_7;
  }

  *v22 = v23;
LABEL_8:
  *(v15 + 80) = v24;
  v25 = v40;
  v51 = v40;
  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = v25;
  sub_1DAAA1344(&v52, v29);
  sub_1DAAA1344(&v51, v29);
  v26 = sub_1DACB9914();
  sub_1DACB8C64("reordering symbol: %{public}@ after: %{public}@ in watchlist: %{public}@", 72, 2, &dword_1DAA3F000, v14, v26, v15);

  MEMORY[0x1EEE9AC00](v27);
  sub_1DAA61900(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB159CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, _OWORD *a8)
{
  v15 = swift_allocObject();
  v16 = *(a6 + 112);
  *(v15 + 112) = *(a6 + 96);
  *(v15 + 128) = v16;
  v17 = *(a6 + 48);
  *(v15 + 48) = *(a6 + 32);
  *(v15 + 64) = v17;
  v18 = *(a6 + 80);
  *(v15 + 80) = *(a6 + 64);
  *(v15 + 96) = v18;
  v19 = *(a6 + 16);
  *(v15 + 16) = *a6;
  *(v15 + 32) = v19;
  v20 = a7[4];
  *(v15 + 232) = a7[5];
  v21 = a7[7];
  *(v15 + 248) = a7[6];
  *(v15 + 264) = v21;
  v22 = *a7;
  *(v15 + 168) = a7[1];
  v23 = a7[3];
  *(v15 + 184) = a7[2];
  *(v15 + 200) = v23;
  *(v15 + 144) = *(a6 + 128);
  *(v15 + 280) = *(a7 + 16);
  *(v15 + 216) = v20;
  *(v15 + 152) = v22;
  v24 = a8[1];
  *(v15 + 288) = *a8;
  *(v15 + 304) = v24;
  *(v15 + 314) = *(a8 + 26);
  *(v15 + 336) = a3;
  *(v15 + 344) = a4;
  *(v15 + 352) = a1;
  *(v15 + 360) = a2;
  sub_1DAA806E4(a6, v26);
  sub_1DAB1A034(a7, v26, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  sub_1DAA8DB84(a8, v26);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB15B44(id *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *a1;
  v14 = sub_1DACB92F4();
  v15 = a3[7];
  v39[6] = a3[6];
  v39[7] = v15;
  v40 = *(a3 + 16);
  v16 = a3[3];
  v39[2] = a3[2];
  v39[3] = v16;
  v17 = a3[5];
  v39[4] = a3[4];
  v39[5] = v17;
  v18 = a3[1];
  v39[0] = *a3;
  v39[1] = v18;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v39) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_1DACB92F4();
  }

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v20 = a4[1];
  v36 = *a4;
  v37[0] = v20;
  *(v37 + 10) = *(a4 + 26);
  sub_1DAA8DB84(a4, aBlock);
  v21 = sub_1DAB130EC(&v36);
  v22 = swift_allocObject();
  v23 = *(a2 + 112);
  *(v22 + 112) = *(a2 + 96);
  *(v22 + 128) = v23;
  v24 = *(a2 + 48);
  *(v22 + 48) = *(a2 + 32);
  *(v22 + 64) = v24;
  v25 = *(a2 + 80);
  *(v22 + 80) = *(a2 + 64);
  *(v22 + 96) = v25;
  v26 = *(a2 + 16);
  *(v22 + 16) = *a2;
  *(v22 + 32) = v26;
  v27 = a4[1];
  *(v22 + 152) = *a4;
  *(v22 + 168) = v27;
  *(v22 + 178) = *(a4 + 26);
  v28 = a3[7];
  *(v22 + 296) = a3[6];
  *(v22 + 312) = v28;
  v29 = *a3;
  *(v22 + 216) = a3[1];
  v30 = a3[3];
  *(v22 + 232) = a3[2];
  *(v22 + 248) = v30;
  v31 = a3[5];
  *(v22 + 264) = a3[4];
  *(v22 + 280) = v31;
  *(v22 + 144) = *(a2 + 128);
  v32 = *(a3 + 16);
  *(v22 + 200) = v29;
  *(v22 + 328) = v32;
  *(v22 + 336) = a5;
  *(v22 + 344) = a6;
  *(v22 + 352) = a7;
  *(v22 + 360) = a8;
  aBlock[4] = sub_1DAB1A0A4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_66;
  v33 = _Block_copy(aBlock);
  sub_1DAA8DB84(a4, &v36);
  sub_1DAA806E4(a2, &v36);
  sub_1DAB1A034(a3, &v36, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v35 reorderSymbol:v14 afterSymbol:v19 watchlist:v21 completion:v33];
  _Block_release(v33);
}

void sub_1DAB15DD0(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, void (*a5)(void *), uint64_t a6, void (*a7)(__int128 *, __int128 *, __int128 *, __int128 *, void (*)(void *), uint64_t))
{
  if (!a1)
  {
    v23 = a2[7];
    v43 = a2[6];
    v44 = v23;
    v45 = *(a2 + 16);
    v24 = a2[3];
    v39 = a2[2];
    v40 = v24;
    v25 = a2[5];
    v41 = a2[4];
    v42 = v25;
    v26 = a2[1];
    v37 = *a2;
    v38 = v26;
    a7(&v37, a2, a3, a4, a5, a6);
    return;
  }

  v12 = a1;
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  v32 = qword_1EE13E318;
  v31 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DACC5AA0;
  v47[0] = a2[1];
  v14 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1DAA443C8();
  *(v13 + 64) = v15;
  v16 = a2[1];
  *(v13 + 32) = v16;
  v46 = *a3;
  v17 = v46;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 72) = v17;
  *(v13 + 136) = v14;
  *(v13 + 144) = v15;
  *(v13 + 112) = v16;
  v18 = a4[3];
  v39 = a4[2];
  v40 = v18;
  v45 = *(a4 + 16);
  v19 = a4[7];
  v43 = a4[6];
  v44 = v19;
  v20 = a4[5];
  v41 = a4[4];
  v42 = v20;
  v21 = a4[1];
  v37 = *a4;
  v38 = v21;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v37) == 1)
  {
    v22 = (v13 + 152);
    *(v13 + 176) = v14;
    *(v13 + 184) = v15;
LABEL_9:
    *v22 = 7104878;
    v28 = 0xE300000000000000;
    goto LABEL_10;
  }

  v27 = v38;
  v22 = (v13 + 152);
  *(v13 + 176) = v14;
  *(v13 + 184) = v15;
  v28 = sub_1DACB71E4();
  if (!v28)
  {
    goto LABEL_9;
  }

  *v22 = v27;
LABEL_10:
  *(v13 + 160) = v28;
  v35 = 0;
  v36 = 0xE000000000000000;
  v34 = a1;
  sub_1DAAA1344(v47, v33);
  sub_1DAAA1344(v47, v33);
  sub_1DAAA1344(&v46, v33);
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  v29 = v35;
  v30 = v36;
  *(v13 + 216) = v14;
  *(v13 + 224) = v15;
  *(v13 + 192) = v29;
  *(v13 + 200) = v30;
  sub_1DACB8C64("failed to reorder stock: %{public}@ after stock: %{public}@ in watchlist: %{public} with error: %{public}@", 106, 2, &dword_1DAA3F000, v32, v31, v13);

  a5(a1);
}

uint64_t sub_1DAB16048(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v13 = *a2;
  v14[0] = v4;
  *(v14 + 10) = *(a2 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D40;
  v7 = MEMORY[0x1E69E6158];
  sub_1DAA61900(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_1DAA61850(&qword_1EE123E80, MEMORY[0x1E6969E28]);
  *(v6 + 32) = a1;
  v15 = *a2;
  *(v6 + 96) = v7;
  *(v6 + 104) = sub_1DAA443C8();
  *(v6 + 72) = *a2;
  sub_1DACB71E4();
  sub_1DAAA1344(&v15, v12);
  v9 = sub_1DACB9914();
  sub_1DACB8C64("reordering symbols: %{public}@ in watchlist: %{public}@", 55, 2, &dword_1DAA3F000, v5, v9, v6);

  MEMORY[0x1EEE9AC00](v10);
  sub_1DAB19ECC(0, &qword_1EE11FE28, &qword_1EE123EA0, v7);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB16234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  v15 = a7[1];
  *(v14 + 24) = *a7;
  *(v14 + 40) = v15;
  *(v14 + 50) = *(a7 + 26);
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = sub_1DAB1BD8C;
  *(v14 + 96) = v13;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DAA8DB84(a7, &v17);
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB16344(void **a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  sub_1DAB16534(a2);
  v14 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v15 = sub_1DACB9634();

  v16 = [v14 initWithArray_];

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v17 = a3[1];
  v22 = *a3;
  *v23 = v17;
  *&v23[10] = *(a3 + 26);
  sub_1DAA8DB84(a3, v24);
  v18 = sub_1DAB130EC(&v22);
  v19 = swift_allocObject();
  v20 = a3[1];
  *(v19 + 24) = *a3;
  *(v19 + 16) = a2;
  *(v19 + 40) = v20;
  *(v19 + 50) = *(a3 + 26);
  *(v19 + 72) = a4;
  *(v19 + 80) = a5;
  *(v19 + 88) = a6;
  *(v19 + 96) = a7;
  *&v23[16] = sub_1DAB1A8A8;
  *&v23[24] = v19;
  *&v22 = MEMORY[0x1E69E9820];
  *(&v22 + 1) = 1107296256;
  *v23 = sub_1DAB10208;
  *&v23[8] = &block_descriptor_225;
  v21 = _Block_copy(&v22);
  sub_1DAA8DB84(a3, v24);
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v13 reorderSymbols:v16 watchlist:v18 completion:v21];
  _Block_release(v21);
}

uint64_t sub_1DAB16534(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1DAB25CA8(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {
      sub_1DACB71E4();
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DAB25CA8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1DAA5616C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1DAB16634(void *a1, uint64_t a2, __int128 *a3, void (*a4)(void *), uint64_t a5, void (*a6)(uint64_t, uint64_t, __int128 *, void (*)(void *), uint64_t))
{
  if (a1)
  {
    v10 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE13E310;
    v12 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DACC1D40;
    v14 = MEMORY[0x1E69E6158];
    sub_1DAA61900(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    *(v13 + 56) = v15;
    *(v13 + 64) = sub_1DAA61850(&qword_1EE123E80, MEMORY[0x1E6969E28]);
    *(v13 + 32) = a2;
    v17 = *a3;
    *(v13 + 96) = v14;
    *(v13 + 104) = sub_1DAA443C8();
    *(v13 + 72) = *a3;
    sub_1DACB71E4();
    sub_1DAAA1344(&v17, &v16);
    sub_1DACB8C64("failed to reorder symbols: %{public}@ in watchlist: %{public}@", 62, 2, &dword_1DAA3F000, v11, v12, v13);

    a4(a1);
  }

  else
  {
    a6(a2, a2, a3, a4, a5);
  }
}

uint64_t sub_1DAB167DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = a5[1];
  v20 = *a5;
  v21[0] = v10;
  *(v21 + 10) = *(a5 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DACC2610;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1DAA443C8();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;
  v22 = *a5;
  v15 = v22;
  *(v12 + 136) = v13;
  *(v12 + 144) = v14;
  *(v12 + 112) = v15;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAAA1344(&v22, v19);
  v16 = sub_1DACB9914();
  sub_1DACB8C64("replacing symbol %{public}@ with %{public}@ in watchlist %{public}%", 67, 2, &dword_1DAA3F000, v11, v16, v12);

  MEMORY[0x1EEE9AC00](v17);
  sub_1DAA61900(0, &qword_1EE11D3F0, v13, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB169AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = a8;
  *(v17 + 40) = a9;
  v18 = a10[1];
  *(v17 + 48) = *a10;
  *(v17 + 64) = v18;
  *(v17 + 74) = *(a10 + 26);
  *(v17 + 96) = a3;
  *(v17 + 104) = a4;
  *(v17 + 112) = sub_1DAB19FD4;
  *(v17 + 120) = v16;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA8DB84(a10, v21);
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB16AD4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = *a1;
  v20 = sub_1DACB92F4();
  v15 = sub_1DACB92F4();
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v16 = a6[1];
  aBlock = *a6;
  *v23 = v16;
  *&v23[10] = *(a6 + 26);
  sub_1DAA8DB84(a6, v24);
  v17 = sub_1DAB130EC(&aBlock);
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a4;
  v18[7] = a5;
  *&v23[16] = sub_1DAB1BE3C;
  *&v23[24] = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v23 = sub_1DAB10208;
  *&v23[8] = &block_descriptor_57;
  v19 = _Block_copy(&aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();

  [v21 replaceSymbol:v20 withSymbol:v15 watchlist:v17 completion:v19];
  _Block_release(v19);
}

void sub_1DAB16C7C(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = a1;
    a2(a1);
  }

  else
  {
    a4(a6, a7, a3);
  }
}

uint64_t sub_1DAB16CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a8;
  v15[5] = v14;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB16DBC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1DAB19F44;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAB17084;
  v12[3] = &block_descriptor_45;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 fetchWatchlistOrderWithCompletion_];
  _Block_release(v11);
}

void sub_1DAB16EBC(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE13E310;
    v9 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DACC1D20;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1DAA443C8();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_1DACB8C64("failed to fetch watchlist order with error: %{public}@", 54, 2, &dword_1DAA3F000, v8, v9, v10);

    a3(a2);
  }

  else if (a1)
  {
    a5();
  }

  else
  {
    sub_1DAB19F50();
    v11 = swift_allocError();
    (a3)();
  }
}

uint64_t sub_1DAB17084(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DACB9644();
  }

  else
  {
    v5 = 0;
  }

  sub_1DACB71F4();
  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1DAB1711C(__int128 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v17 = *a1;
  v18[0] = v7;
  *(v18 + 10) = *(a1 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D40;
  v20 = *a1;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1DAA443C8();
  *(v9 + 64) = v11;
  *(v9 + 32) = *a1;
  v19 = *(a1 + 24);
  v12 = v19;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  sub_1DAAA1344(&v20, v16);
  sub_1DAAA1344(&v19, v16);
  v13 = sub_1DACB9914();
  sub_1DACB8C64(a2, a3, 2, &dword_1DAA3F000, v8, v13, v9);

  MEMORY[0x1EEE9AC00](v14);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB172C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  v14 = a6[1];
  *(v13 + 16) = *a6;
  *(v13 + 32) = v14;
  *(v13 + 42) = *(a6 + 26);
  *(v13 + 64) = a3;
  *(v13 + 72) = a4;
  *(v13 + 80) = a1;
  *(v13 + 88) = a2;
  sub_1DAA8DB84(a6, &v16);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB1737C(void **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v21 = *a1;
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v16 = a2[1];
  aBlock = *a2;
  *v23 = v16;
  *&v23[10] = *(a2 + 26);
  sub_1DAA8DB84(a2, v24);
  v17 = sub_1DAB130EC(&aBlock);
  v18 = swift_allocObject();
  v19 = a2[1];
  *(v18 + 16) = *a2;
  *(v18 + 32) = v19;
  *(v18 + 42) = *(a2 + 26);
  *(v18 + 64) = a3;
  *(v18 + 72) = a4;
  *(v18 + 80) = a5;
  *(v18 + 88) = a6;
  *&v23[16] = a8;
  *&v23[24] = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v23 = sub_1DAB10208;
  *&v23[8] = a9;
  v20 = _Block_copy(&aBlock);
  sub_1DAA8DB84(a2, v24);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v21 *a10];
  _Block_release(v20);
}

void sub_1DAB174F0(void *a1, __int128 *a2, void (*a3)(void *), uint64_t a4, void (*a5)(__int128 *, __int128 *, void (*)(void *), uint64_t), uint64_t a6, const char *a7, uint64_t a8)
{
  if (a1)
  {
    v13 = a1;
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    v14 = qword_1EE13E318;
    v15 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DACC2610;
    v27 = *a2;
    v17 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1DAA443C8();
    *(v16 + 64) = v18;
    *(v16 + 32) = *a2;
    v29 = *(a2 + 24);
    v19 = v29;
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 72) = v19;
    v25 = 0;
    v26 = 0xE000000000000000;
    v24 = a1;
    sub_1DAAA1344(&v27, v23);
    sub_1DAAA1344(&v29, v23);
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    v20 = v25;
    v21 = v26;
    *(v16 + 136) = v17;
    *(v16 + 144) = v18;
    *(v16 + 112) = v20;
    *(v16 + 120) = v21;
    sub_1DACB8C64(a7, a8, 2, &dword_1DAA3F000, v14, v15, v16);

    a3(a1);
  }

  else
  {
    v22 = a2[1];
    v27 = *a2;
    v28[0] = v22;
    *(v28 + 10) = *(a2 + 26);
    a5(&v27, a2, a3, a4);
  }
}

uint64_t sub_1DAB176C0(__int128 *a1, __int128 *a2)
{
  v3 = a1[1];
  v16[2] = *a1;
  v17[0] = v3;
  *(v17 + 10) = *(a1 + 26);
  v4 = a2[1];
  v15 = *a2;
  v16[0] = v4;
  *(v16 + 10) = *(a2 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D40;
  v18 = *a1;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1DAA443C8();
  *(v6 + 64) = v8;
  *(v6 + 32) = *a1;
  if (*(&v15 + 1))
  {
    v9 = v15;
    v10 = sub_1DACB71E4();
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v9;
  *(v6 + 80) = v10;
  sub_1DAAA1344(&v18, v14);
  v11 = sub_1DACB9914();
  sub_1DACB8C64("reordering watchlist: %{public}@ after: %{public}@ in watchlist order", 69, 2, &dword_1DAA3F000, v5, v11, v6);

  MEMORY[0x1EEE9AC00](v12);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB17894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, _OWORD *a7)
{
  v13 = swift_allocObject();
  v14 = a6[1];
  *(v13 + 16) = *a6;
  *(v13 + 32) = v14;
  *(v13 + 42) = *(a6 + 26);
  v15 = a7[1];
  *(v13 + 64) = *a7;
  *(v13 + 80) = v15;
  *(v13 + 90) = *(a7 + 26);
  *(v13 + 112) = a3;
  *(v13 + 120) = a4;
  *(v13 + 128) = a1;
  *(v13 + 136) = a2;
  sub_1DAB1A034(a6, v17, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  sub_1DAA8DB84(a7, v17);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB1799C(void **a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13 = a2[1];
  v14 = *a1;
  if (v13)
  {
    v18 = *a2;
    *v28 = *(a2 + 1);
    *&v28[10] = *(a2 + 26);
    sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
    *&aBlock = v18;
    *(&aBlock + 1) = v13;
    v8 = a6;
    v7 = a7;
    v9 = a5;
    sub_1DACB71E4();
    v10 = a4;
    sub_1DACB71E4();
    sub_1DACB71E4();
    v19 = sub_1DAB130EC(&aBlock);
  }

  else
  {
    v19 = 0;
  }

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v20 = a3[1];
  aBlock = *a3;
  *v28 = v20;
  *&v28[10] = *(a3 + 26);
  sub_1DAA8DB84(a3, v29);
  v21 = sub_1DAB130EC(&aBlock);
  v22 = swift_allocObject();
  v23 = a3[1];
  *(v22 + 16) = *a3;
  *(v22 + 32) = v23;
  *(v22 + 42) = *(a3 + 26);
  v24 = *(a2 + 1);
  *(v22 + 64) = *a2;
  *(v22 + 80) = v24;
  *(v22 + 90) = *(a2 + 26);
  *(v22 + 112) = v10;
  *(v22 + 120) = v9;
  *(v22 + 128) = v8;
  *(v22 + 136) = v7;
  *&v28[16] = sub_1DAB19D00;
  *&v28[24] = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v28 = sub_1DAB10208;
  *&v28[8] = &block_descriptor_2;
  v25 = _Block_copy(&aBlock);
  sub_1DAB1A034(a2, v29, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  sub_1DAA8DB84(a3, v29);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v14 reorderWatchlist:v21 afterWatchlist:v19 completion:v25];
  _Block_release(v25);
}

void sub_1DAB17C00(void *a1, __int128 *a2, uint64_t *a3, void (*a4)(void *), uint64_t a5, void (*a6)(__int128 *, __int128 *, uint64_t *, void (*)(void *), uint64_t))
{
  if (a1)
  {
    v10 = a1;
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE13E318;
    v12 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DACC2610;
    v25 = *a2;
    v14 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1DAA443C8();
    *(v13 + 64) = v15;
    *(v13 + 32) = *a2;
    if (a3[1])
    {
      v16 = *a3;
      v17 = sub_1DACB71E4();
    }

    else
    {
      v17 = 0xE300000000000000;
      v16 = 7104878;
    }

    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 72) = v16;
    *(v13 + 80) = v17;
    v23 = 0;
    v24 = 0xE000000000000000;
    v22 = a1;
    sub_1DAAA1344(&v25, v21);
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    v19 = v23;
    v20 = v24;
    *(v13 + 136) = v14;
    *(v13 + 144) = v15;
    *(v13 + 112) = v19;
    *(v13 + 120) = v20;
    sub_1DACB8C64("failed to reorder watchlist: %{public}@ after watchlist: %{public}@ in watchlistOrder with error: %{public}@", 108, 2, &dword_1DAA3F000, v11, v12, v13);

    a4(a1);
  }

  else
  {
    v18 = a2[1];
    v25 = *a2;
    v26[0] = v18;
    *(v26 + 10) = *(a2 + 26);
    a6(&v25, a2, a3, a4, a5);
  }
}

uint64_t sub_1DAB17DD8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_65;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v6)
      {
        v8 = sub_1DACB9E14();
      }

      else
      {
        v8 = *(v5 + 16);
      }

      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
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
        v7 = sub_1DACB9E14();
        goto LABEL_3;
      }

      sub_1DACB71F4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      goto LABEL_59;
    }
  }

  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_72;
  }

  if (v6)
  {
    if (v12 != sub_1DACB9E14())
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v4 >> 62)
    {
      v13 = sub_1DACB9E14();
      if (v13 >= v8)
      {
LABEL_23:
        sub_1DACA698C(v8, v13);
        type metadata accessor for WatchlistServiceObserverProxy();
        v14 = swift_allocObject();
        *(v14 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v14 + 24) = a3;
        v15 = swift_unknownObjectWeakAssign();
        MEMORY[0x1E12770F0](v15);
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_1DACB96F4();
        }

LABEL_68:
        sub_1DACB9694();
        return sub_1DACB96F4();
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v12 == *(v5 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:
  v5 = v8 + 5;
  while (2)
  {
    v16 = v5 - 4;
    v6 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v5 - 4, v4);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      sub_1DACB71F4();
    }

    v17 = swift_unknownObjectWeakLoadStrong();

    if (!v17)
    {
      goto LABEL_49;
    }

    result = swift_unknownObjectRelease();
    if (v16 == v8)
    {
      goto LABEL_48;
    }

    if (v6)
    {
      v18 = MEMORY[0x1E12777A0](v8, v4);
      v19 = MEMORY[0x1E12777A0](v5 - 4, v4);
      goto LABEL_38;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v20)
      {
        goto LABEL_70;
      }

      if (v16 >= v20)
      {
        goto LABEL_71;
      }

      v18 = *(v4 + 8 * v8 + 32);
      v19 = *(v4 + 8 * v5);
      sub_1DACB71F4();
      sub_1DACB71F4();
LABEL_38:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1DACA83E4();
        v21 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v21) = 0;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

      if ((v4 & 0x8000000000000000) != 0 || v21)
      {
        v4 = sub_1DACA83E4();
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v16 & 0x8000000000000000) != 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v16 >= *(v6 + 16))
      {
        goto LABEL_64;
      }

      *(v6 + 8 * v5) = v18;

      *a1 = v4;
LABEL_48:
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_63;
      }

LABEL_49:
      v6 = v5 - 3;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_62;
      }

      if (v4 >> 62)
      {
        v22 = sub_1DACB9E14();
      }

      else
      {
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v6 == v22)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1DAB18188(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DAB1BDE4;
  *(v5 + 24) = v4;
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB18244(uint64_t *a1)
{
  v10 = *&v1->_os_unfair_lock_opaque;
  v9 = *a1;
  os_unfair_lock_lock(v1 + 4);
  v2 = *&v1[6]._os_unfair_lock_opaque;
  sub_1DACB71E4();
  os_unfair_lock_unlock(v1 + 4);
  if (v2 >> 62)
  {
    v3 = sub_1DACB9E14();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1E12777A0](i, v2);
          }

          else
          {
            v8 = *(v2 + 8 * i + 32);
            sub_1DACB71F4();
          }

          v12[3] = v10;
          v12[4] = &off_1F56825D8;
          v12[0] = v1;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v5 = *(v8 + 24);
            ObjectType = swift_getObjectType();
            v11 = v9;
            v7 = *(v5 + 8);
            sub_1DACB71F4();
            v7(v12, &v11, ObjectType, v5);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          __swift_destroy_boxed_opaque_existential_1(v12);
        }
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

void sub_1DAB1841C(uint64_t *a1)
{
  v10 = *&v1->_os_unfair_lock_opaque;
  v9 = *a1;
  os_unfair_lock_lock(v1 + 4);
  v2 = *&v1[6]._os_unfair_lock_opaque;
  sub_1DACB71E4();
  os_unfair_lock_unlock(v1 + 4);
  if (v2 >> 62)
  {
    v3 = sub_1DACB9E14();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1E12777A0](i, v2);
          }

          else
          {
            v8 = *(v2 + 8 * i + 32);
            sub_1DACB71F4();
          }

          v12[3] = v10;
          v12[4] = &off_1F56825D8;
          v12[0] = v1;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v5 = *(v8 + 24);
            ObjectType = swift_getObjectType();
            v11 = v9;
            v7 = *(v5 + 16);
            sub_1DACB71F4();
            v7(v12, &v11, ObjectType, v5);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          __swift_destroy_boxed_opaque_existential_1(v12);
        }
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1DAB185F4(__int128 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = v7;
  sub_1DACB71E4();
  v3 = sub_1DACB9914();
  sub_1DACB8C64("adding symbol %{public}@", 24, 2, &dword_1DAA3F000, v1, v3, v2, v6);

  MEMORY[0x1EEE9AC00](v4);
  sub_1DAA61900(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18790(uint64_t a1, uint64_t a2)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D20;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1DAA443C8();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  sub_1DACB71E4();
  v7 = sub_1DACB9914();
  sub_1DACB8C64("removing symbol %{public}@", 26, 2, &dword_1DAA3F000, v4, v7, v5);

  MEMORY[0x1EEE9AC00](v8);
  sub_1DAA61900(0, &qword_1EE11D3F0, v6, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAB18998(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  os_unfair_lock_lock((v5 + 16));
  sub_1DAB17DD8((v5 + 24), a1, a2);

  os_unfair_lock_unlock((v5 + 16));
}

void sub_1DAB18A00(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 4);
  swift_unknownObjectRetain();
  v4 = sub_1DAAFB9C8(&v3[6]._os_unfair_lock_opaque, a1);
  swift_unknownObjectRelease();
  v5 = *&v3[6]._os_unfair_lock_opaque;
  if (v5 >> 62)
  {
    v6 = sub_1DACB9E14();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 < v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1DACA698C(v4, v6);

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1DAB18B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, ...)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DACC1D20;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1DAA443C8();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  sub_1DACB71E4();
  v13 = sub_1DACB9914();
  sub_1DACB8C64(a5, a6, 2, &dword_1DAA3F000, v11, v13, v12);

  MEMORY[0x1EEE9AC00](v14);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18C84(__int128 *a1)
{
  v6 = *a1;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = v6;
  sub_1DACB71E4();
  v3 = sub_1DACB9914();
  sub_1DACB8C64("removing watchlist %{public}@", 29, 2, &dword_1DAA3F000, v1, v3, v2);

  MEMORY[0x1EEE9AC00](v4);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18EA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1DAB19ECC(0, a3, a4, a5);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18EFC(__int128 *a1)
{
  sub_1DAB19ECC(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18F88()
{
  sub_1DAA61900(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAB19290(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  (*(v6 + 40))(v5, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  sub_1DACB71F4();
  sub_1DACB71F4();
  v8 = sub_1DACB89D4();
  sub_1DACB8A64();

  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = a1;
  v9[4] = a2;
  sub_1DACB71F4();
  sub_1DACB71F4();
  v10 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAB19404(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  if ((*a1 & 1) != 0 || !*(*(a1 + 80) + 16))
  {
    return sub_1DAB1B32C(a3);
  }

  else
  {
    return sub_1DAB1B230(a1, a3);
  }
}

void sub_1DAB194E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1DACB9634();
    if (a2)
    {
LABEL_3:
      v6 = sub_1DACB78B4();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1DAB19580(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1DAA7C694(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DAA5859C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1DAB19694(uint64_t a1)
{
  v2 = sub_1DACB8984();
  v3 = *(a1 + 16);
  if (v3)
  {
    v36 = MEMORY[0x1E69E7CC0];
    result = sub_1DAA57914(0, v3, 0);
    if (*(v2 + 16))
    {
      v5 = v36;
      v6 = (a1 + 40);
      while (1)
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        sub_1DACB71E4();
        result = sub_1DAA4BF3C(v7, v8);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v10 = *(v2 + 56) + 136 * result;
        v27 = *v10;
        v11 = *(v10 + 48);
        v12 = *(v10 + 64);
        v13 = *(v10 + 32);
        v28 = *(v10 + 16);
        v29 = v13;
        v30 = v11;
        v31 = v12;
        v14 = *(v10 + 80);
        v15 = *(v10 + 96);
        v16 = *(v10 + 112);
        v35 = *(v10 + 128);
        v33 = v15;
        v34 = v16;
        v32 = v14;
        sub_1DAA806E4(&v27, v26);

        v36 = v5;
        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1DAA57914((v17 > 1), v18 + 1, 1);
          v5 = v36;
        }

        *(v5 + 16) = v18 + 1;
        v19 = v5 + 136 * v18;
        *(v19 + 32) = v27;
        v20 = v28;
        v21 = v29;
        v22 = v31;
        *(v19 + 80) = v30;
        *(v19 + 96) = v22;
        *(v19 + 48) = v20;
        *(v19 + 64) = v21;
        v23 = v32;
        v24 = v33;
        v25 = v34;
        *(v19 + 160) = v35;
        *(v19 + 128) = v24;
        *(v19 + 144) = v25;
        *(v19 + 112) = v23;
        if (!--v3)
        {

          return v5;
        }

        v6 += 2;
        if (!*(v2 + 16))
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DAB19840()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB198A4(uint64_t *a1, uint64_t a2, void (*a3)(int64_t, void))
{
  v4 = *a1;
  sub_1DAB1BBE0();
  sub_1DACB8944();
  v5 = sub_1DAB0FA18(v4);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D40;
  if (v5 >> 62)
  {
    v8 = sub_1DACB9E14();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = MEMORY[0x1E69E6530];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  v10 = sub_1DAA420F4(0, &qword_1EE11F8D0, off_1E85E20E0);
  v11 = MEMORY[0x1E1277130](v5, v10);
  v13 = v12;
  *(v7 + 96) = MEMORY[0x1E69E6158];
  *(v7 + 104) = sub_1DAA443C8();
  *(v7 + 72) = v11;
  *(v7 + 80) = v13;
  v14 = sub_1DACB9914();
  sub_1DACB8C64("Fetched metadata from the watchlist metadata manager, count=%ld, stocks=%@", 74, 2, &dword_1DAA3F000, v6, v14, v7);

  a3(v5, 0);
}

uint64_t sub_1DAB19A50(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE13E310;
  v5 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1DAA443C8();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1DACB8C64("Failed to fetch metadata from the watchlist metadata manager, error=%{public}@", 78, 2, &dword_1DAA3F000, v4, v5, v6);

  return a2(0, a1);
}

void sub_1DAB19C34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1DAA420F4(0, &qword_1EE11F8D0, off_1E85E20E0);
    v5 = sub_1DACB9634();
  }

  if (a2)
  {
    v6 = sub_1DACB78B4();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1DAB19ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA61900(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1DACB8B74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAB19F50()
{
  result = qword_1ECBE7050;
  if (!qword_1ECBE7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7050);
  }

  return result;
}

uint64_t sub_1DAB1A034(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1DAA61900(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t objectdestroy_72Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

unint64_t sub_1DAB1A1F8()
{
  result = qword_1ECBE7058;
  if (!qword_1ECBE7058)
  {
    sub_1DACB8214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7058);
  }

  return result;
}

uint64_t objectdestroy_127Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t objectdestroy_130Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_191Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_166Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[3]);
  a1(v2[5]);
  a2(v2[7]);
  a2(v2[9]);

  return MEMORY[0x1EEE6BDD0](v2, 80, 7);
}

uint64_t objectdestroy_218Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DAB1A8E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t objectdestroy_53Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));

  a2(*(v2 + 56));

  return MEMORY[0x1EEE6BDD0](v2, 64, 7);
}

uint64_t objectdestroy_230Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1DAB1AA78(id a1)
{
  sub_1DAB1BC70();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v71 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v70 = (&v67 - v8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v67 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v67 - v12);
  v14 = [a1 addedWatchlistIDs];
  v15 = sub_1DACB9644();

  v16 = v15;
  v17 = *(v15 + 16);
  v74 = v3;
  v68 = a1;
  if (v17)
  {
    v73 = *MEMORY[0x1E69D6590];
    v72 = *(v4 + 104);
    v69 = v16;
    v18 = (v16 + 40);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v20 = *v18;
      *v13 = *(v18 - 1);
      v13[1] = v20;
      (v72)(v13, v73, v3);
      sub_1DACB71E4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DAADBC84(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1DAADBC84((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      v23 = v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22;
      v3 = v74;
      (*(v4 + 32))(v23, v13, v74);
      v18 += 2;
      --v17;
    }

    while (v17);

    a1 = v68;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v24 = [a1 removedWatchlistIDs];
  v25 = sub_1DACB9644();

  v26 = *(v25 + 16);
  v72 = v25;
  if (v26)
  {
    v73 = *MEMORY[0x1E69D6598];
    v27 = *(v4 + 104);
    v28 = (v25 + 40);
    v29 = v74;
    do
    {
      v30 = *v28;
      *v11 = *(v28 - 1);
      v11[1] = v30;
      v27(v11, v73, v29);
      sub_1DACB71E4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DAADBC84(0, v19[2] + 1, 1, v19);
      }

      v32 = v19[2];
      v31 = v19[3];
      if (v32 >= v31 >> 1)
      {
        v19 = sub_1DAADBC84((v31 > 1), v32 + 1, 1, v19);
      }

      v19[2] = v32 + 1;
      v33 = v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32;
      v29 = v74;
      (*(v4 + 32))(v33, v11, v74);
      v28 += 2;
      --v26;
    }

    while (v26);
  }

  v34 = v68;
  v35 = [v68 addedWatchlistIDs];
  v36 = sub_1DACB9644();

  v37 = *(v36 + 16);
  v67 = v36;
  if (v37)
  {
    v73 = *MEMORY[0x1E69D6588];
    v72 = (v4 + 104);
    v69 = v4 + 32;
    v38 = (v36 + 40);
    v39 = v74;
    do
    {
      v41 = *(v38 - 1);
      v40 = *v38;
      sub_1DACB71E4();
      v42 = [v34 indexesOfAddedWatchlistIDs];
      sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
      v43 = sub_1DACB9124();

      if (*(v43 + 16) && (v44 = sub_1DAA4BF3C(v41, v40), (v45 & 1) != 0))
      {
        v46 = *(*(v43 + 56) + 8 * v44);

        v47 = [v46 integerValue];

        v48 = v70;
        *v70 = v41;
        v48[1] = v40;
        v48[2] = v47;
        (*v72)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1DAADBC84(0, v19[2] + 1, 1, v19);
        }

        v50 = v19[2];
        v49 = v19[3];
        if (v50 >= v49 >> 1)
        {
          v19 = sub_1DAADBC84((v49 > 1), v50 + 1, 1, v19);
        }

        v19[2] = v50 + 1;
        (*(v4 + 32))(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v50, v70, v39);
      }

      else
      {
      }

      v38 += 2;
      --v37;
    }

    while (v37);
  }

  v51 = [v34 reorderedWatchlistIDs];
  v52 = sub_1DACB9644();

  v53 = *(v52 + 16);
  v70 = v52;
  if (v53)
  {
    v73 = *MEMORY[0x1E69D6588];
    v72 = (v4 + 32);
    v54 = (v52 + 40);
    do
    {
      v55 = *(v54 - 1);
      v56 = *v54;
      sub_1DACB71E4();
      v57 = [v34 indexesOfReorderedWatchlistIDs];
      sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
      v58 = sub_1DACB9124();

      if (*(v58 + 16) && (v59 = sub_1DAA4BF3C(v55, v56), (v60 & 1) != 0))
      {
        v61 = *(*(v58 + 56) + 8 * v59);

        v62 = [v61 integerValue];

        v63 = v71;
        *v71 = v55;
        v63[1] = v56;
        v63[2] = v62;
        (*(v4 + 104))();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1DAADBC84(0, v19[2] + 1, 1, v19);
        }

        v65 = v19[2];
        v64 = v19[3];
        if (v65 >= v64 >> 1)
        {
          v19 = sub_1DAADBC84((v64 > 1), v65 + 1, 1, v19);
        }

        v19[2] = v65 + 1;
        (*(v4 + 32))(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v65, v71, v74);
      }

      else
      {
      }

      v54 += 2;
      --v53;
    }

    while (v53);
  }

  v75 = v19;
  sub_1DAB1841C(&v75);
}

uint64_t sub_1DAB1B230(uint64_t a1, void (*a2)(uint64_t, void))
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  sub_1DAB16534(*(a1 + 80));
  v5 = sub_1DACB9634();

  [v4 addObjectsFromArray_];

  v6 = [v4 array];
  v7 = sub_1DACB9644();

  v8 = sub_1DAB19580(v7);

  a2(v8, 0);
}

uint64_t sub_1DAB1B32C(void (*a1)(uint64_t, void))
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v3 = [objc_opt_self() defaultsForCurrentCountry];
  v4 = [v3 defaultSymbols];

  v5 = sub_1DACB9644();
  sub_1DAB16534(v5);

  v6 = sub_1DACB9634();

  [v2 addObjectsFromArray_];

  v7 = [v2 array];
  v8 = sub_1DACB9644();

  v9 = sub_1DAB19580(v8);

  a1(v9, 0);
}

void sub_1DAB1B488(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v64 = sub_1DACB8204();
  v58 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7CC4();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB8344();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB81B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = swift_allocObject();
  *(v65 + 16) = a3;
  v16 = a2;
  _Block_copy(a3);
  v17 = sub_1DACB8984();
  v18 = a1;
  v19 = *(a1 + 16);
  if (*(v17 + 16) == v19)
  {
    v20 = sub_1DAB0FA18(v17);

    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v21 = qword_1EE13E310;
    sub_1DAA41D64(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DACC1D40;
    if (v20 >> 62)
    {
      v23 = sub_1DACB9E14();
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = MEMORY[0x1E69E65A8];
    *(v22 + 56) = MEMORY[0x1E69E6530];
    *(v22 + 64) = v24;
    *(v22 + 32) = v23;
    v25 = sub_1DAA420F4(0, &qword_1EE11F8D0, off_1E85E20E0);
    v26 = MEMORY[0x1E1277130](v20, v25);
    v28 = v27;
    *(v22 + 96) = MEMORY[0x1E69E6158];
    *(v22 + 104) = sub_1DAA443C8();
    *(v22 + 72) = v26;
    *(v22 + 80) = v28;
    v29 = sub_1DACB9914();
    sub_1DACB8C64("Fetched metadata from the watchlist metadata provider cache, count=%ld, stocks=%@", 81, 2, &dword_1DAA3F000, v21, v29, v22);

    v64 = sub_1DACB9634();
    a3[2](a3, v64, 0);

    v30 = v64;
  }

  else
  {

    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v54 = qword_1EE13E310;
    sub_1DAA41D64(0);
    v31 = swift_allocObject();
    v32 = MEMORY[0x1E69E6530];
    *(v31 + 16) = xmmword_1DACC1D40;
    v33 = MEMORY[0x1E69E65A8];
    *(v31 + 56) = v32;
    *(v31 + 64) = v33;
    *(v31 + 32) = v19;
    v34 = MEMORY[0x1E69E6158];
    v56 = v18;
    v35 = MEMORY[0x1E1277130](v18, MEMORY[0x1E69E6158]);
    v37 = v36;
    *(v31 + 96) = v34;
    *(v31 + 104) = sub_1DAA443C8();
    *(v31 + 72) = v35;
    *(v31 + 80) = v37;
    v38 = sub_1DACB9914();
    sub_1DACB8C64("Will fetch metadata from the watchlist metadata manager, count=%ld, symbols=%@", 78, 2, &dword_1DAA3F000, v54, v38, v31);

    v39 = v16[6];
    v54 = v16[5];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v54);
    v40 = *MEMORY[0x1E69D63C8];
    v41 = *(v13 + 104);
    v42 = v15;
    v55 = v12;
    v41(v15, v40, v12);
    v43 = v11;
    sub_1DACB8334();
    v44 = v57;
    sub_1DACB7CB4();
    v46 = v58;
    v45 = v59;
    v47 = v64;
    (*(v58 + 104))(v59, *MEMORY[0x1E69D6490], v64);
    (*(v39 + 8))(v56, v42, v43, v44, v45, v54, v39);
    (*(v46 + 8))(v45, v47);
    (*(v62 + 8))(v44, v63);
    (*(v60 + 8))(v43, v61);
    (*(v13 + 8))(v42, v55);
    v48 = swift_allocObject();
    v48[2] = v16;
    v48[3] = sub_1DAB1BBB0;
    v49 = v65;
    v48[4] = v65;
    sub_1DACB71F4();
    sub_1DACB71F4();
    v50 = sub_1DACB89D4();
    sub_1DACB8A64();

    v51 = swift_allocObject();
    *(v51 + 16) = sub_1DAB1BBB0;
    *(v51 + 24) = v49;
    sub_1DACB71F4();
    v52 = sub_1DACB89D4();
    sub_1DACB8AA4();
  }
}

void sub_1DAB1BBE0()
{
  if (!qword_1EE11FEE8)
  {
    v0 = sub_1DACB8974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FEE8);
    }
  }
}

void sub_1DAB1BC70()
{
  if (!qword_1EE11FFE0)
  {
    v0 = sub_1DACB84A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FFE0);
    }
  }
}

uint64_t sub_1DAB1BCC8(uint64_t a1)
{
  sub_1DAB0FE38(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAB1BD38()
{
  result = qword_1ECBE7060;
  if (!qword_1ECBE7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7060);
  }

  return result;
}

uint64_t sub_1DAB1BE98(uint64_t a1, uint64_t a2)
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE1242C0 = a1;
  qword_1EE1242C8 = a2;
}

uint64_t (*sub_1DAB1BF24(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DAB1BFB0@<X0>(void *a1@<X8>)
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EE1242C8;
  *a1 = qword_1EE1242C0;
  a1[1] = v2;
  return sub_1DACB71E4();
}

uint64_t sub_1DAB1C030(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EE1242B8;
  sub_1DACB71E4();
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE1242C0 = v2;
  qword_1EE1242C8 = v1;
}

uint64_t sub_1DAB1C0C0()
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EE1242C0;
  v1 = qword_1EE1242C8;
  if (qword_1EE1242C0 == 0x313434333431 && qword_1EE1242C8 == 0xE600000000000000)
  {
    v6 = 1;
  }

  else
  {
    v3 = sub_1DACBA174();
    v5 = v0 == 0x343434333431 && v1 == 0xE600000000000000;
    v6 = 1;
    if ((v3 & 1) == 0 && !v5)
    {
      v7 = sub_1DACBA174();
      v8 = v0 == 0x303634333431 && v1 == 0xE600000000000000;
      v9 = v8;
      v6 = 1;
      if ((v7 & 1) == 0 && !v9)
      {
        v10 = sub_1DACBA174();
        v12 = v0 == 0x353534333431 && v1 == 0xE600000000000000;
        v6 = 1;
        if ((v10 & 1) == 0 && !v12)
        {
          v6 = sub_1DACBA174();
        }
      }
    }
  }

  return v6 & 1;
}

id sub_1DAB1C244()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 isUserSignedInToiCloud];

  return v1;
}

uint64_t NewsUserProfile.init(subscribedTagIDs:mutedTagIDs:autoFavoritedTagIDs:purchasedTagIDs:bundleSubscription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1DAB1C2FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DAB1C344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAB1C3A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1DACB9BC4();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 56) + 136 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);
    result = sub_1DACB71E4();
    if (v12 >= v13 >> 1)
    {
      result = sub_1DAA5859C((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DAAA2C74(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DAAA2C74(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
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

uint64_t sub_1DAB1C5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v9 = v3[2];
  v8 = v3[3];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_1DAAFF1F4;

  return sub_1DAB1D96C(a2, a3, v7, v9, v8);
}

unint64_t sub_1DAB1C6A8()
{
  result = qword_1EE11DD48;
  if (!qword_1EE11DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD48);
  }

  return result;
}

unint64_t sub_1DAB1C700()
{
  result = qword_1EE11DD40;
  if (!qword_1EE11DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD40);
  }

  return result;
}

uint64_t sub_1DAB1C79C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DAB1CC4C();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1DAB1C7C8(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAB07898;

  return sub_1DAB1CD9C(a1, v4);
}

unint64_t sub_1DAB1C8C8()
{
  result = qword_1EE11DD50;
  if (!qword_1EE11DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD50);
  }

  return result;
}

unint64_t sub_1DAB1C968()
{
  result = qword_1ECBE7068;
  if (!qword_1ECBE7068)
  {
    sub_1DAB1CA10(255);
    sub_1DAB1D924(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7068);
  }

  return result;
}

void sub_1DAB1CA10(uint64_t a1)
{
  if (!qword_1ECBE7070)
  {
    type metadata accessor for SymbolEntity(255);
    v1 = sub_1DACB9724();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7070);
    }
  }
}

uint64_t sub_1DAB1CA68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1DAAF59D0();
  *v5 = v2;
  v5[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAB1CB28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAB1CB70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DAB1CBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v2;
  v14 = *(a1 + 128);
  v3 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v6;
  v12 = *(a2 + 128);
  v7 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v7;
  v8 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v8;
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  return sub_1DAA9B398(v13, v11) & 1;
}

uint64_t sub_1DAB1CC4C()
{
  sub_1DAAF41C0(0, &qword_1EE123AB8, qword_1EE125F28, &protocol descriptor for SearchServiceType);
  sub_1DACB6D94();
  sub_1DACB6D84();
  v0 = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AA8, &unk_1EE125A10, &protocol descriptor for StockMetadataManagerType);
  sub_1DACB6D84();
  sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  sub_1DACB6D84();
  sub_1DACB6D54();
  sub_1DAB1F9D0(0);
  swift_getKeyPath();
  sub_1DACB7324();
  return v0;
}

uint64_t sub_1DAB1CD9C(uint64_t a1, uint64_t a2)
{
  v2[45] = a1;
  v2[46] = a2;
  v2[47] = *(type metadata accessor for SymbolEntity(0) - 8);
  v2[48] = swift_task_alloc();
  v3 = sub_1DACB8204();
  v2[49] = v3;
  v2[50] = *(v3 - 8);
  v2[51] = swift_task_alloc();
  v4 = sub_1DACB7CC4();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v5 = sub_1DACB8344();
  v2[55] = v5;
  v2[56] = *(v5 - 8);
  v2[57] = swift_task_alloc();
  v6 = sub_1DACB81B4();
  v2[58] = v6;
  v2[59] = *(v6 - 8);
  v2[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB1CFC8, 0, 0);
}

uint64_t sub_1DAB1CFC8()
{
  v28 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[45];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[44] = v4;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8, MEMORY[0x1E69E6310]);
    v7 = sub_1DACB9214();
    v9 = sub_1DAA7ABE4(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching stocks for symbol query with identifiers=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v10 = v0[59];
  v11 = v0[58];
  v20 = v0[57];
  v25 = v0[55];
  v26 = v0[60];
  v12 = v0[54];
  v22 = v0[53];
  v13 = v0[51];
  v23 = v0[52];
  v24 = v0[56];
  v15 = v0[49];
  v14 = v0[50];
  v21 = v0[45];
  sub_1DACB6D24();
  v17 = v0[39];
  v16 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v17);
  (*(v10 + 104))(v26, *MEMORY[0x1E69D63C8], v11);
  sub_1DACB8334();
  sub_1DACB7CB4();
  (*(v14 + 104))(v13, *MEMORY[0x1E69D6490], v15);
  v0[62] = (*(v16 + 8))(v21, v26, v20, v12, v13, v17, v16);
  (*(v14 + 8))(v13, v15);
  (*(v22 + 8))(v12, v23);
  (*(v24 + 8))(v20, v25);
  (*(v10 + 8))(v26, v11);
  v18 = swift_task_alloc();
  v0[63] = v18;
  *v18 = v0;
  v18[1] = sub_1DAB1D348;

  return MEMORY[0x1EEE44EE0](v0 + 41);
}

uint64_t sub_1DAB1D348()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_1DAB1D86C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 288));
    v3 = sub_1DAB1D46C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB1D46C()
{
  v44 = v0;
  v1 = *(v0 + 328);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 360);
    v5 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v42[0] = v41;
    *v5 = 136315394;
    *(v0 + 336) = v4;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8, MEMORY[0x1E69E6310]);
    v6 = sub_1DACB9214();
    v8 = sub_1DAA7ABE4(v6, v7, v42);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_1DACB71E4();
    v10 = sub_1DAB1C3A0(v9);

    *(v0 + 344) = v10;
    v11 = sub_1DACB9214();
    v13 = v12;

    v14 = sub_1DAA7ABE4(v11, v13, v42);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched stocks for symbol query with identifiers=[%s], stocks=[%s]", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v41, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v15 = *(v0 + 360);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v0 + 376);
    v18 = (v15 + 40);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v1 + 16))
      {
        v20 = *(v18 - 1);
        v21 = *v18;
        sub_1DACB71E4();
        v22 = sub_1DAA4BF3C(v20, v21);
        if (v23)
        {
          v24 = *(v0 + 384);
          v25 = *(v1 + 56) + 136 * v22;
          *(v0 + 16) = *v25;
          v26 = *(v25 + 64);
          v28 = *(v25 + 16);
          v27 = *(v25 + 32);
          *(v0 + 64) = *(v25 + 48);
          *(v0 + 80) = v26;
          *(v0 + 32) = v28;
          *(v0 + 48) = v27;
          v30 = *(v25 + 96);
          v29 = *(v25 + 112);
          v31 = *(v25 + 80);
          *(v0 + 144) = *(v25 + 128);
          *(v0 + 112) = v30;
          *(v0 + 128) = v29;
          *(v0 + 96) = v31;
          v32 = *(v25 + 112);
          v42[6] = *(v25 + 96);
          v42[7] = v32;
          v43 = *(v25 + 128);
          v33 = *(v25 + 48);
          v42[2] = *(v25 + 32);
          v42[3] = v33;
          v34 = *(v25 + 80);
          v42[4] = *(v25 + 64);
          v42[5] = v34;
          v35 = *(v25 + 16);
          v42[0] = *v25;
          v42[1] = v35;
          sub_1DAA806E4(v0 + 16, v0 + 152);
          SymbolEntity.init(from:)(v42, v24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1DAADBEA8(0, v19[2] + 1, 1, v19);
          }

          v37 = v19[2];
          v36 = v19[3];
          if (v37 >= v36 >> 1)
          {
            v19 = sub_1DAADBEA8((v36 > 1), v37 + 1, 1, v19);
          }

          v38 = *(v0 + 384);
          v19[2] = v37 + 1;
          sub_1DAAF5AA4(v38, v19 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v37);
        }

        else
        {
        }
      }

      v18 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v0 + 8);

  return v39(v19);
}

uint64_t sub_1DAB1D86C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB1D924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAB1D96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[163] = a5;
  v5[162] = a4;
  v5[161] = a3;
  v5[160] = a2;
  v5[159] = a1;
  v5[164] = *(type metadata accessor for SymbolEntity(0) - 8);
  v5[165] = swift_task_alloc();
  v5[166] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB1DA44, 0, 0);
}

uint64_t sub_1DAB1DA44()
{
  v21 = v0;
  if (sub_1DACB7304())
  {
    swift_getKeyPath();
    sub_1DAA8E020();
    sub_1DACB7054();

    v1 = v0[142];
    v2 = v0[143];
    v3 = v0[144];
  }

  else
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
  }

  v0[169] = v3;
  v0[168] = v2;
  v0[167] = v1;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v4 = sub_1DACB8C94();
  v0[170] = __swift_project_value_buffer(v4, qword_1EE11D390);
  sub_1DACB71E4();
  sub_1DAB1F8B8(v1, v2, v3);
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  sub_1DAB1F8FC(v1, v2, v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[160];
    v8 = v0[159];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DAA7ABE4(v8, v7, &v20);
    *(v9 + 12) = 2080;
    if (v2)
    {
      sub_1DACB6ED4();
      v11 = v0[151];
      v12 = v0[152];
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    v13 = sub_1DAA7ABE4(v11, v12, &v20);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Fetching stocks for symbol entities matching string='%s', watchlist='%s'", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v14 = v0[160];
  v15 = v0[159];
  sub_1DACB6D24();
  v16 = v0[130];
  v17 = v0[131];
  __swift_project_boxed_opaque_existential_1(v0 + 127, v16);
  v0[171] = sub_1DAAEA918(v15, v14, v16, v17);
  v18 = swift_task_alloc();
  v0[172] = v18;
  *v18 = v0;
  v18[1] = sub_1DAB1DD4C;

  return MEMORY[0x1EEE44EE0](v0 + 153);
}

uint64_t sub_1DAB1DD4C()
{
  v2 = *v1;
  *(*v1 + 1384) = v0;

  if (v0)
  {
    v3 = sub_1DAB1F3F8;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 1016));
    v3 = sub_1DAB1DE70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB1DE70()
{
  v70 = v0;
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1336);
  v4 = *(v0 + 1224);
  *(v0 + 1392) = v4;
  sub_1DACB71E4();
  sub_1DAB1F8B8(v3, v2, v1);
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  sub_1DAB1F8FC(v3, v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1280);
    v8 = *(v0 + 1272);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v69[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1DAA7ABE4(v8, v7, v69);
    *(v9 + 12) = 2080;
    v11 = *(v4 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    v66 = v4;
    if (v11)
    {
      v62 = v10;
      v63 = v9;
      v64 = v6;
      v65 = v5;
      *&v67[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v11, 0);
      v12 = *&v67[0];
      v13 = *(*&v67[0] + 16);
      v14 = 16 * v13;
      v15 = (v4 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        *&v67[0] = v12;
        v18 = v13 + 1;
        v19 = *(v12 + 24);
        sub_1DACB71E4();
        if (v13 >= v19 >> 1)
        {
          sub_1DAA5859C((v19 > 1), v18, 1);
          v12 = *&v67[0];
        }

        *(v12 + 16) = v18;
        v20 = v12 + v14;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v14 += 16;
        v15 += 17;
        ++v13;
        --v11;
      }

      while (v11);
      v5 = v65;
      v6 = v64;
      v10 = v62;
      v9 = v63;
    }

    v21 = *(v0 + 1344);
    *(v0 + 1264) = v12;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8, MEMORY[0x1E69E6310]);
    v22 = sub_1DACB9214();
    v24 = v23;

    v25 = sub_1DAA7ABE4(v22, v24, v69);

    *(v9 + 14) = v25;
    *(v9 + 22) = 2080;
    if (v21)
    {
      sub_1DACB6ED4();
      v26 = *(v0 + 1192);
      v27 = *(v0 + 1200);
    }

    else
    {
      v27 = 0xE300000000000000;
      v26 = 7104878;
    }

    v4 = v66;
    v28 = sub_1DAA7ABE4(v26, v27, v69);

    *(v9 + 24) = v28;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Fetched stocks for symbol entities matching string='%s', stocks=[%s], watchlist='%s'", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v29 = *(v4 + 16);
  *(v0 + 1400) = v29;
  if (v29)
  {
    v30 = *(v0 + 1344);
    if (v30)
    {
      v31 = *(v0 + 1336);
      sub_1DACB71E4();
      sub_1DACB71F4();
      sub_1DACB6D24();
      v32 = *(v0 + 1080);
      v33 = *(v0 + 1088);
      __swift_project_boxed_opaque_existential_1((v0 + 1056), v32);
      *(v0 + 1408) = (*(v33 + 144))(v31, v30, v32, v33);
      v34 = swift_task_alloc();
      *(v0 + 1416) = v34;
      *v34 = v0;
      v34[1] = sub_1DAB1E42C;

      return MEMORY[0x1EEE44EE0](v0 + 968);
    }

    v39 = *(v0 + 1392);
    v40 = *(v0 + 1312);
    v69[0] = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v29, 0);
    v38 = v69[0];
    v41 = v39 + 32;
    for (i = v29 - 1; ; --i)
    {
      v43 = *(v0 + 1320);
      *(v0 + 16) = *v41;
      v44 = *(v41 + 64);
      v46 = *(v41 + 16);
      v45 = *(v41 + 32);
      *(v0 + 64) = *(v41 + 48);
      *(v0 + 80) = v44;
      *(v0 + 32) = v46;
      *(v0 + 48) = v45;
      v48 = *(v41 + 96);
      v47 = *(v41 + 112);
      v49 = *(v41 + 80);
      *(v0 + 144) = *(v41 + 128);
      *(v0 + 112) = v48;
      *(v0 + 128) = v47;
      *(v0 + 96) = v49;
      v50 = *(v41 + 112);
      v67[6] = *(v41 + 96);
      v67[7] = v50;
      v68 = *(v41 + 128);
      v51 = *(v41 + 48);
      v67[2] = *(v41 + 32);
      v67[3] = v51;
      v52 = *(v41 + 80);
      v67[4] = *(v41 + 64);
      v67[5] = v52;
      v53 = *(v41 + 16);
      v67[0] = *v41;
      v67[1] = v53;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      SymbolEntity.init(from:)(v67, v43);
      v69[0] = v38;
      v55 = *(v38 + 16);
      v54 = *(v38 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1DAB25CC8((v54 > 1), v55 + 1, 1);
        v38 = v69[0];
      }

      v56 = *(v0 + 1320);
      *(v38 + 16) = v55 + 1;
      sub_1DAAF5AA4(v56, v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v55);
      if (!i)
      {
        break;
      }

      v41 += 136;
    }

    v57 = *(v0 + 1352);
    v58 = *(v0 + 1344);
    v59 = *(v0 + 1336);

    sub_1DAB1F8FC(v59, v58, v57);
  }

  else
  {
    v35 = *(v0 + 1352);
    v36 = *(v0 + 1344);
    v37 = *(v0 + 1336);

    sub_1DAB1F8FC(v37, v36, v35);
    v38 = MEMORY[0x1E69E7CC0];
  }

  v60 = *(v0 + 8);

  return v60(v38);
}