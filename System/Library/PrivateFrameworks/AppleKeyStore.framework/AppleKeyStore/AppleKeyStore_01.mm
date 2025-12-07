uint64_t sub_1E0B641F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v48 = a2;
  v37 = a3;
  v46 = type metadata accessor for DERDictionaryItem(0);
  v43 = *(v46 - 8);
  v6 = MEMORY[0x1EEE9AC00](v46);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78830, &unk_1E0BABD00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1E0BA8B08();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v45 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v44 = a1;
  sub_1E0BA8A98();
  v41 = *(v15 + 48);
  v42 = v15 + 48;
  if (v41(v13, 1, v14) == 1)
  {
LABEL_2:
    sub_1E0B67644(v13);
    *v37 = *v48;
  }

  else
  {
    v22 = *(v15 + 32);
    v21 = v15 + 32;
    v38 = (v21 - 16);
    v39 = v22;
    v40 = (v21 - 24);
    while (1)
    {
      v39(v19, v13, v14);
      (*v38)(v45, v19, v14);
      sub_1E0B67228(&qword_1ECE78810, type metadata accessor for DERDictionaryItem, &unk_1E0BABBAC);
      sub_1E0BA8BB8();
      if (v4)
      {
        return (*v40)(v19, v14);
      }

      v47 = 0;
      v23 = v13;
      v24 = v10;
      v25 = v10;
      v26 = v8;
      sub_1E0B67160(v25, v8, type metadata accessor for DERDictionaryItem);
      v27 = v48;
      v28 = *v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v27 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1E0B66768(0, v28[2] + 1, 1, v28);
        *v48 = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v35 = sub_1E0B66768((v30 > 1), v31 + 1, 1, v28);
        *v48 = v35;
      }

      sub_1E0B671C8(v24, type metadata accessor for DERDictionaryItem);
      (*v40)(v19, v14);
      v32 = *v48;
      *(v32 + 16) = v31 + 1;
      v33 = v32 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v31;
      v8 = v26;
      v10 = v24;
      sub_1E0B67494(v8, v33, type metadata accessor for DERDictionaryItem);
      v13 = v23;
      sub_1E0BA8A98();
      v34 = v41(v23, 1, v14);
      v4 = v47;
      if (v34 == 1)
      {
        goto LABEL_2;
      }
    }
  }
}

uint64_t sub_1E0B64650@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for DERDictionaryItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (result = , (v10 = *(a2 + 16)) != 0))
  {
    v11 = 0;
    while (v11 < v10)
    {
      sub_1E0B67160(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v8, type metadata accessor for DERDictionaryItem);
      sub_1E0BA8A28();
      sub_1E0B67228(&qword_1ECE78818, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E58]);
      if (sub_1E0BA8CA8())
      {
        sub_1E0B67494(v8, a3, type metadata accessor for DERDictionaryItem);
      }

      ++v11;
      result = sub_1E0B671C8(v8, type metadata accessor for DERDictionaryItem);
      v10 = *(a2 + 16);
      if (v11 == v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1E0B67560();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1E0B64850(uint64_t a1)
{
  v3 = type metadata accessor for DERDictionaryItem(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*v1)
  {
    *v1 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v5);
  *&v14[-16] = a1;
  v8 = 0;
  v9 = sub_1E0B66B38(sub_1E0B676AC, &v14[-32]);
  v10 = *(*v1 + 16);
  if (v10 < v9)
  {
    __break(1u);
LABEL_11:
    v8 = sub_1E0B66768(0, v8[2] + 1, 1, v8);
    goto LABEL_6;
  }

  result = sub_1E0B673D4(v9, v10);
  if (!*v1)
  {
    return result;
  }

  sub_1E0B67160(a1, v7, type metadata accessor for DERDictionaryItem);
  v8 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = v8[2];
  v12 = v8[3];
  if (v13 >= v12 >> 1)
  {
    v8 = sub_1E0B66768((v12 > 1), v13 + 1, 1, v8);
  }

  v8[2] = v13 + 1;
  result = sub_1E0B67494(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, type metadata accessor for DERDictionaryItem);
  *v1 = v8;
  return result;
}

uint64_t sub_1E0B64A30(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E0BA8AE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0B67160(a1, v11, type metadata accessor for der_key);
  v17[3] = a2;
  sub_1E0BA8AD8();
  if (v2)
  {
    sub_1E0B671C8(v11, type metadata accessor for der_key);
    sub_1E0B67560();
    swift_allocError();
    *v15 = 22;
    swift_willThrow();
    return MEMORY[0x1E12E8B70](v2);
  }

  else
  {
    sub_1E0B67494(v11, v14, type metadata accessor for der_key);
    (*(v6 + 32))(&v14[*(v12 + 20)], v8, v5);
    sub_1E0B64850(v14);
    return sub_1E0B671C8(v14, type metadata accessor for DERDictionaryItem);
  }
}

uint64_t sub_1E0B64CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E0BA8A88();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E0BA8AE8();
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0B67160(a1, v10, type metadata accessor for der_key);

  sub_1E0BA8A58();
  sub_1E0BA8AD8();
  if (v2)
  {
    sub_1E0B671C8(v10, type metadata accessor for der_key);
    sub_1E0B67560();
    swift_allocError();
    *v14 = 22;
    swift_willThrow();
    return MEMORY[0x1E12E8B70](v2);
  }

  else
  {
    sub_1E0B67494(v10, v13, type metadata accessor for der_key);
    (*(v16 + 32))(&v13[*(v11 + 20)], v7, v17);
    sub_1E0B64850(v13);
    return sub_1E0B671C8(v13, type metadata accessor for DERDictionaryItem);
  }
}

uint64_t sub_1E0B64F78(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DERDictionaryItem(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  sub_1E0B67160(a1, v22 - v11, type metadata accessor for der_key);
  v13 = *(v6 + 28);
  v14 = sub_1E0BA8AE8();
  v15 = (*(*(v14 - 8) + 16))(&v12[v13], a2, v14);
  if (!*v2)
  {
    *v2 = MEMORY[0x1E69E7CC0];
  }

  v16 = v22;
  MEMORY[0x1EEE9AC00](v15);
  v22[-2] = v12;
  v17 = sub_1E0B66B38(sub_1E0B67270, &v22[-4]);
  v18 = *(*v2 + 16);
  if (v18 < v17)
  {
    __break(1u);
LABEL_11:
    v16 = sub_1E0B66768(0, v16[2] + 1, 1, v16);
    goto LABEL_6;
  }

  sub_1E0B673D4(v17, v18);
  if (!*v2)
  {
    return sub_1E0B671C8(v12, type metadata accessor for DERDictionaryItem);
  }

  sub_1E0B67160(v12, v10, type metadata accessor for DERDictionaryItem);
  v16 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19 >> 1)
  {
    v16 = sub_1E0B66768((v19 > 1), v20 + 1, 1, v16);
  }

  v16[2] = v20 + 1;
  sub_1E0B67494(v10, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, type metadata accessor for DERDictionaryItem);
  *v2 = v16;
  return sub_1E0B671C8(v12, type metadata accessor for DERDictionaryItem);
}

uint64_t sub_1E0B6520C(uint64_t a1, uint64_t a2)
{
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78818, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E58]);
  return sub_1E0BA8CA8() & 1;
}

uint64_t sub_1E0B6529C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
  }

  v10 = 0;
  while (v10 < v9)
  {
    sub_1E0B67160(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, type metadata accessor for DERDictionaryItem);
    sub_1E0B67228(&qword_1ECE787D8, type metadata accessor for DERDictionaryItem, &unk_1E0BABB1C);
    sub_1E0BA8C08();
    if (v2)
    {
      sub_1E0B671C8(v7, type metadata accessor for DERDictionaryItem);
    }

    ++v10;
    result = sub_1E0B671C8(v7, type metadata accessor for DERDictionaryItem);
    v9 = *(a2 + 16);
    if (v10 == v9)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B6545C(uint64_t a1)
{
  v2 = type metadata accessor for DERDictionaryItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0BA8F48();
  if (a1)
  {
    sub_1E0BA8F68();
    v6 = *(a1 + 16);
    MEMORY[0x1E12E7CF0](v6);
    if (v6)
    {
      v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v8 = *(v3 + 72);
      do
      {
        sub_1E0B67160(v7, v5, type metadata accessor for DERDictionaryItem);
        sub_1E0BA8A28();
        sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);
        sub_1E0BA8C88();
        sub_1E0BA8AE8();
        sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88], MEMORY[0x1E69D4E90]);
        sub_1E0BA8C88();
        sub_1E0B671C8(v5, type metadata accessor for DERDictionaryItem);
        v7 += v8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    sub_1E0BA8F68();
  }

  return sub_1E0BA8F98();
}

uint64_t sub_1E0B65664@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0B66F60(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E0B656EC(uint64_t a1)
{
  v2 = type metadata accessor for DERDictionaryItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (!*v1)
  {
    return sub_1E0BA8F68();
  }

  sub_1E0BA8F68();
  result = MEMORY[0x1E12E7CF0](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1E0B67160(v9, v5, type metadata accessor for DERDictionaryItem);
      sub_1E0BA8A28();
      sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);
      sub_1E0BA8C88();
      sub_1E0BA8AE8();
      sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88], MEMORY[0x1E69D4E90]);
      sub_1E0BA8C88();
      result = sub_1E0B671C8(v5, type metadata accessor for DERDictionaryItem);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1E0B658DC(uint64_t a1)
{
  v2 = type metadata accessor for DERDictionaryItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1E0BA8F48();
  if (v6)
  {
    sub_1E0BA8F68();
    MEMORY[0x1E12E7CF0](*(v6 + 16));
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v9 = *(v3 + 72);
      do
      {
        sub_1E0B67160(v8, v5, type metadata accessor for DERDictionaryItem);
        sub_1E0BA8A28();
        sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);
        sub_1E0BA8C88();
        sub_1E0BA8AE8();
        sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88], MEMORY[0x1E69D4E90]);
        sub_1E0BA8C88();
        sub_1E0B671C8(v5, type metadata accessor for DERDictionaryItem);
        v8 += v9;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_1E0BA8F68();
  }

  return sub_1E0BA8F98();
}

uint64_t sub_1E0B65B7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      v4 = sub_1E0B69314(v2, v3);

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E0B65BDC@<X0>(uint64_t a2@<X8>)
{
  v20 = a2;
  v2 = sub_1E0BA8AE8();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E0BA8A28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0BA8B88();
  v12 = v22;
  result = sub_1E0BA8B98();
  if (!v12)
  {
    v15 = v19;
    v14 = v20;
    (*(v6 + 32))(v11, v8, v5);
    v16 = v21;
    sub_1E0BA8B48();
    sub_1E0B67494(v11, v14, type metadata accessor for der_key);
    v17 = type metadata accessor for DERDictionaryItem(0);
    return (*(v15 + 32))(v14 + *(v17 + 20), v16, v2);
  }

  return result;
}

uint64_t sub_1E0B65EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0B67160(a2, v6, type metadata accessor for der_key);
  v7 = sub_1E0BA8A28();
  sub_1E0BA8C08();
  if (v2)
  {
    return (*(*(v7 - 8) + 8))(v6, v7);
  }

  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for DERDictionaryItem(0);
  sub_1E0BA8AE8();
  return sub_1E0BA8C08();
}

uint64_t sub_1E0B66000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E0BA8C58();
  v5 = sub_1E0BA89F8();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_1E0BA8B08();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t sub_1E0B66114()
{
  sub_1E0BA8F48();
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);
  sub_1E0BA8C88();
  sub_1E0BA8AE8();
  sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88], MEMORY[0x1E69D4E90]);
  sub_1E0BA8C88();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B66200(uint64_t a1)
{
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);
  sub_1E0BA8C88();
  sub_1E0BA8AE8();
  sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88], MEMORY[0x1E69D4E90]);
  return sub_1E0BA8C88();
}

uint64_t sub_1E0B662D4(uint64_t a1)
{
  sub_1E0BA8F48();
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);
  sub_1E0BA8C88();
  sub_1E0BA8AE8();
  sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88], MEMORY[0x1E69D4E90]);
  sub_1E0BA8C88();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B664B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78818, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E58]);
  if ((sub_1E0BA8CA8() & 1) == 0)
  {
    return 0;
  }

  return sub_1E0BA8AC8();
}

unint64_t sub_1E0B66648()
{
  result = qword_1ECE787E0;
  if (!qword_1ECE787E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE787E0);
  }

  return result;
}

unint64_t sub_1E0B666A0()
{
  result = qword_1ECE787E8;
  if (!qword_1ECE787E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE787E8);
  }

  return result;
}

unint64_t sub_1E0B666F8()
{
  result = qword_1ECE787F0;
  if (!qword_1ECE787F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE787F0);
  }

  return result;
}

void *sub_1E0B66768(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78820, &qword_1E0BABCF8);
  v10 = *(type metadata accessor for DERDictionaryItem(0) - 8);
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
  v15 = *(type metadata accessor for DERDictionaryItem(0) - 8);
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

char *sub_1E0B66940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE787B0, &qword_1E0BABA88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E0B66A34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
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

uint64_t sub_1E0B66B38(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for DERDictionaryItem(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = *v2;
  result = sub_1E0B66E60(a1, a2, *v2);
  if (!v3)
  {
    v40 = v15;
    v43 = 0;
    if (v18)
    {
      return v16[2];
    }

    v33 = v2;
    v34 = v10;
    v37 = a1;
    v41 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v16 + 2;
      v20 = v16[2];
      v22 = v40;
      if (v19 == v20)
      {
        return v41;
      }

      v35 = a2;
      v36 = v7;
      while (v19 < v20)
      {
        v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v42 = v16;
        v38 = v23;
        v24 = v16 + v23;
        v25 = *(v7 + 72);
        v39 = v25 * v19;
        sub_1E0B67160(&v24[v25 * v19], v22, type metadata accessor for DERDictionaryItem);
        v26 = v43;
        v27 = v37(v22);
        result = sub_1E0B671C8(v22, type metadata accessor for DERDictionaryItem);
        v43 = v26;
        if (v26)
        {
          return result;
        }

        if (v27)
        {
          v7 = v36;
          v22 = v40;
          v16 = v42;
        }

        else
        {
          v22 = v40;
          v28 = v41;
          if (v19 == v41)
          {
            v7 = v36;
            v16 = v42;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v29 = *v21;
            if (v41 >= *v21)
            {
              goto LABEL_27;
            }

            v30 = v25 * v41;
            result = sub_1E0B67160(&v24[v25 * v41], v13, type metadata accessor for DERDictionaryItem);
            if (v19 >= v29)
            {
              goto LABEL_28;
            }

            v31 = v39;
            sub_1E0B67160(&v24[v39], v34, type metadata accessor for DERDictionaryItem);
            v16 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1E0B66F4C(v16);
            }

            v32 = v16 + v38;
            result = sub_1E0B674FC(v34, v16 + v38 + v30);
            v7 = v36;
            if (v19 >= v16[2])
            {
              goto LABEL_29;
            }

            result = sub_1E0B674FC(v13, &v32[v31]);
            *v33 = v16;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v19;
        v21 = v16 + 2;
        v20 = v16[2];
        if (v19 == v20)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E0B66E60(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for DERDictionaryItem(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1E0B66F60(uint64_t a1, uint64_t a2)
{
  sub_1E0BA8C38();
  v5 = sub_1E0BA89F8();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_1E0BA8B08();
  (*(*(v6 - 8) + 8))(a1, v6);
  if (!v2)
  {
    a1 = v8;
  }

  return a1;
}

unint64_t sub_1E0B670F0()
{
  result = qword_1ECE787F8;
  if (!qword_1ECE787F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE787F8);
  }

  return result;
}

uint64_t sub_1E0B67160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0B671C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E0B67228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E0B6728C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for DERDictionaryItem(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1E0B673D4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1E0B66768(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1E0B6728C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1E0B67494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0B674FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0B67560()
{
  result = qword_1ECE78828;
  if (!qword_1ECE78828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78828);
  }

  return result;
}

uint64_t sub_1E0B675B4(uint64_t a1)
{
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78818, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E58]);
  return sub_1E0BA8CA8() & 1;
}

uint64_t sub_1E0B67644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78830, &unk_1E0BABD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0B676C8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= -536870171)
  {
    if (result > -536870188)
    {
      if (result <= -536870185)
      {
        if (result == -536870187)
        {
          *a2 = 26;
          return result;
        }

        if (result == -536870186)
        {
          *a2 = 17;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 0xE00002D8:
            *a2 = 13;
            return result;
          case 0xE00002DB:
            *a2 = 27;
            return result;
          case 0xE00002E2:
            *a2 = 1;
            return result;
        }
      }
    }

    else if (result <= -536870208)
    {
      if (result == -536870212)
      {
        *a2 = 0;
        return result;
      }

      if (result == -536870211)
      {
        *a2 = 16;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 0xE00002C1:
          *a2 = 28;
          return result;
        case 0xE00002CA:
          *a2 = 25;
          return result;
        case 0xE00002CE:
          *a2 = 4;
          return result;
      }
    }

LABEL_30:
    *a2 = 38;
  }

  else
  {
    switch(result)
    {
      case 0xE007C006:
        *a2 = 5;
        return result;
      case 0xE007C007:
        *a2 = 6;
        return result;
      case 0xE007C008:
        *a2 = 7;
        return result;
      case 0xE007C009:
        *a2 = 8;
        return result;
      case 0xE007C00A:
        *a2 = 9;
        return result;
      case 0xE007C00B:
      case 0xE007C00C:
      case 0xE007C00F:
      case 0xE007C010:
      case 0xE007C011:
      case 0xE007C012:
      case 0xE007C01B:
      case 0xE007C01C:
      case 0xE007C01D:
      case 0xE007C020:
        goto LABEL_30;
      case 0xE007C00D:
        *a2 = 12;
        return result;
      case 0xE007C00E:
        *a2 = 3;
        return result;
      case 0xE007C013:
        *a2 = 18;
        return result;
      case 0xE007C014:
        *a2 = 19;
        return result;
      case 0xE007C015:
        *a2 = 20;
        return result;
      case 0xE007C016:
        *a2 = 21;
        return result;
      case 0xE007C017:
        *a2 = 22;
        return result;
      case 0xE007C018:
        *a2 = 23;
        return result;
      case 0xE007C019:
        *a2 = 24;
        return result;
      case 0xE007C01A:
        *a2 = 31;
        return result;
      case 0xE007C01E:
        *a2 = 29;
        return result;
      case 0xE007C01F:
        *a2 = 30;
        return result;
      case 0xE007C021:
        *a2 = 32;
        return result;
      case 0xE007C022:
        *a2 = 33;
        return result;
      case 0xE007C023:
        *a2 = 34;
        return result;
      case 0xE007C024:
        *a2 = 35;
        return result;
      case 0xE007C025:
        *a2 = 36;
        return result;
      case 0xE007C026:
        *a2 = 37;
        return result;
      default:
        if (result == -536870170)
        {
          *a2 = 11;
        }

        else
        {
          if (result != -536870160)
          {
            goto LABEL_30;
          }

          *a2 = 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for der_key(uint64_t a1)
{
  result = qword_1ECE78840;
  if (!qword_1ECE78840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E0B67A1C(uint64_t a1)
{
  result = sub_1E0BA8A28();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E0B67A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E0BA8A28();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(*(a2 - 8) + 56);

  return v7(a3, 0, 1, a2);
}

uint64_t sub_1E0B67B38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E0BA8A28();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E0B67BA0()
{
  sub_1E0BA8F48();
  sub_1E0BA8A28();
  sub_1E0B6823C(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);
  sub_1E0BA8C88();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B67C28(uint64_t a1)
{
  sub_1E0BA8A28();
  sub_1E0B6823C(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);

  return sub_1E0BA8C88();
}

uint64_t sub_1E0B67CAC(uint64_t a1)
{
  sub_1E0BA8F48();
  sub_1E0BA8A28();
  sub_1E0B6823C(&qword_1ECE78800, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E50]);
  sub_1E0BA8C88();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B67D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = sub_1E0BA89F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E0BA8B08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E0BA8A28();
  v19 = *(v13 - 8);
  v20 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v10 + 16);
  v23 = a1;
  v16(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  v17 = v22;
  sub_1E0BA8A08();
  (*(v6 + 8))(a2, v5);
  if (v17)
  {
    return (*(v10 + 8))(v23, v9);
  }

  (*(v10 + 8))(v23, v9);
  return (*(v19 + 32))(v21, v15, v20);
}

uint64_t sub_1E0B67FE4(uint64_t a1, uint64_t a2)
{
  sub_1E0BA8A28();
  sub_1E0B6823C(&qword_1ECE78818, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E58]);
  return sub_1E0BA8CA8() & 1;
}

uint64_t sub_1E0B6823C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E0B68284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1E0BA8AE8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17[-v12];
  sub_1E0B64650(a2, v6);
  if (v2)
  {
    MEMORY[0x1E12E8B70](v2);
    v14 = 0;
  }

  else
  {
    v16 = *(v8 + 16);
    v16(v13, &v6[*(v4 + 20)], v7);
    sub_1E0B671C8(v6, type metadata accessor for DERDictionaryItem);
    v16(v11, v13, v7);
    sub_1E0BA8B78();
    (*(v8 + 8))(v13, v7);
    v14 = v18;
  }

  v17[12] = v2 != 0;
  return v14 | ((v2 != 0) << 32);
}

uint64_t sub_1E0B684C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[5] = a4;
  v19[1] = a3;
  v6 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E0BA8AE8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  sub_1E0B64650(a2, v8);
  if (v4)
  {
    MEMORY[0x1E12E8B70](v4);
    return 0;
  }

  else
  {
    v17 = *(v6 + 20);
    v18 = *(v10 + 16);
    v18(v15, &v8[v17], v9);
    sub_1E0B671C8(v8, type metadata accessor for DERDictionaryItem);
    v18(v13, v15, v9);
    sub_1E0BA8B78();
    (*(v10 + 8))(v15, v9);
    return v19[2];
  }
}

uint64_t sub_1E0B686F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E0BA8AE8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  sub_1E0B64650(a2, v6);
  if (v2)
  {
    MEMORY[0x1E12E8B70](v2);
    return 2;
  }

  else
  {
    v15 = *(v8 + 16);
    v15(v13, &v6[*(v4 + 20)], v7);
    sub_1E0B671C8(v6, type metadata accessor for DERDictionaryItem);
    v15(v11, v13, v7);
    sub_1E0BA8B78();
    (*(v8 + 8))(v13, v7);
    return v17;
  }
}

uint64_t sub_1E0B68914(uint64_t a1, uint64_t a2, char a3)
{
  v8 = sub_1E0BA8AE8();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DERDictionaryItem(0);
  result = MEMORY[0x1EEE9AC00](v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v20 - 2) = a1;
    result = sub_1E0B66B38(sub_1E0B766D8, (&v20 - 4));
    v17 = *(*v3 + 16);
    if (v17 < result)
    {
      __break(1u);
      return result;
    }

    result = sub_1E0B673D4(result, v17);
  }

  if ((a3 & 1) == 0)
  {
    sub_1E0B76324(a1, v13, type metadata accessor for der_key);
    v24 = a2;
    v25 = 0;
    sub_1E0BA8AD8();
    if (v4)
    {
      v18 = type metadata accessor for der_key;
      v19 = v13;
    }

    else
    {
      sub_1E0B7380C(v13, v16);
      (*(v22 + 32))(&v16[*(v21 + 20)], v10, v23);
      sub_1E0B64850(v16);
      v18 = type metadata accessor for DERDictionaryItem;
      v19 = v16;
    }

    return sub_1E0B671C8(v19, v18);
  }

  return result;
}

uint64_t sub_1E0B68BA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = sub_1E0BA8AE8();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DERDictionaryItem(0);
  result = MEMORY[0x1EEE9AC00](v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v4)
  {
    v26 = v12;
    MEMORY[0x1EEE9AC00](result);
    *(&v22 - 2) = a1;
    result = sub_1E0B66B38(sub_1E0B766D8, (&v22 - 4));
    v19 = *(*v4 + 16);
    if (v19 < result)
    {
      __break(1u);
      return result;
    }

    result = sub_1E0B673D4(result, v19);
    v12 = v26;
  }

  if ((a4 & 1) == 0)
  {
    sub_1E0B76324(a1, v15, type metadata accessor for der_key);
    v27 = a2;
    v28 = a3;
    v29 = 0;
    sub_1E0B73878();
    sub_1E0BA8AD8();
    if (v5)
    {
      v20 = type metadata accessor for der_key;
      v21 = v15;
    }

    else
    {
      sub_1E0B7380C(v15, v18);
      (*(v24 + 32))(&v18[*(v23 + 20)], v12, v25);
      sub_1E0B64850(v18);
      v20 = type metadata accessor for DERDictionaryItem;
      v21 = v18;
    }

    return sub_1E0B671C8(v21, v20);
  }

  return result;
}

uint64_t sub_1E0B68E50(uint64_t a1, char a2)
{
  v6 = sub_1E0BA8AE8();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DERDictionaryItem(0);
  result = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v19 - 2) = a1;
    result = sub_1E0B66B38(sub_1E0B765CC, (&v19 - 4));
    v16 = *(*v2 + 16);
    if (v16 < result)
    {
      __break(1u);
      return result;
    }

    result = sub_1E0B673D4(result, v16);
  }

  if (a2 != 2)
  {
    sub_1E0B76324(a1, v11, type metadata accessor for der_key);
    v22 = a2;
    sub_1E0BA8AD8();
    if (v3)
    {
      v17 = type metadata accessor for der_key;
      v18 = v11;
    }

    else
    {
      sub_1E0B7380C(v11, v15);
      (*(v20 + 32))(&v15[*(v12 + 20)], v8, v21);
      sub_1E0B64850(v15);
      v17 = type metadata accessor for DERDictionaryItem;
      v18 = v15;
    }

    return sub_1E0B671C8(v18, v17);
  }

  return result;
}

uint64_t AKSUUID.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, int a10, int a11)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 12) = a11;
  return result;
}

uint64_t AKSUUID.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) == 16)
  {
    v5 = *(a1 + 32);

    *a2 = v5;
  }

  else
  {

    sub_1E0B67560();
    swift_allocError();
    *v4 = 10;
    return swift_willThrow();
  }

  return result;
}

uint64_t AKSUUID.init(repeating:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x101010101010101 * result;
  *a2 = v2;
  a2[1] = v2;
  return result;
}

uint64_t static AKSUUID.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v3 = sub_1E0B63E08(&v6, v7);
  v6 = *a2;
  v4 = sub_1E0B63E08(&v6, v7);
  LOBYTE(a2) = sub_1E0B692B8(v3, v4);

  return a2 & 1;
}

void *AKSUUID.bytes.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  return sub_1E0B63E08(&v2, v3);
}

uint64_t sub_1E0B692B8(uint64_t result, uint64_t a2)
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

uint64_t sub_1E0B69314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    sub_1E0BA8A28();
    v15 = *(v5 + 72);
    while (1)
    {
      sub_1E0B76324(v13, v10, type metadata accessor for DERDictionaryItem);
      sub_1E0B76324(v14, v8, type metadata accessor for DERDictionaryItem);
      sub_1E0B7638C(&qword_1ECE78818, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E58]);
      if ((sub_1E0BA8CA8() & 1) == 0)
      {
        break;
      }

      v16 = sub_1E0BA8AC8();
      sub_1E0B671C8(v8, type metadata accessor for DERDictionaryItem);
      sub_1E0B671C8(v10, type metadata accessor for DERDictionaryItem);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1E0B671C8(v8, type metadata accessor for DERDictionaryItem);
    sub_1E0B671C8(v10, type metadata accessor for DERDictionaryItem);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1E0B69564()
{
  v0 = AKSUUID.bytes.getter();
  v1 = AKSUUID.bytes.getter();
  v2 = sub_1E0B692B8(v0, v1);

  return v2 & 1;
}

uint64_t AKSUUID.init(derEncoded:withIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v41 = a2;
  v38 = a3;
  v4 = sub_1E0BA89F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E0BA8B08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E0BA8A88();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v15 = *(v5 + 16);
  v16 = v41;
  v43 = v4;
  v15(v7, v41, v4);
  v17 = v42;
  sub_1E0BA8A48();
  if (v17)
  {
    goto LABEL_14;
  }

  *&v42 = v8;
  v37 = v5;
  v18 = v16;
  v19 = a1;
  v20 = sub_1E0BA8A68();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v39 + 8))(v14, v40);
  v40 = v9;
  if ((v26 & 1) == 0)
  {
    goto LABEL_3;
  }

  v32 = v22;
  sub_1E0BA8EA8();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v33 + 16);

  if (__OFSUB__(v26 >> 1, v24))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v34 != (v26 >> 1) - v24)
  {
LABEL_17:
    swift_unknownObjectRelease_n();
    v22 = v32;
LABEL_3:
    sub_1E0B726FC(v20, v22, v24, v26);
    v28 = v27;
    v16 = v18;
    v29 = v43;
    v5 = v37;
    v30 = v42;
    v31 = v40;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v16 = v18;
  v29 = v43;
  v5 = v37;
  v30 = v42;
  v31 = v40;
  if (!v28)
  {
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_11:
  if (*(v28 + 16) == 16)
  {
    v42 = *(v28 + 32);

    (*(v5 + 8))(v16, v29);
    result = (*(v31 + 8))(v19, v30);
    *v38 = v42;
    return result;
  }

  a1 = v19;
  v8 = v30;
  sub_1E0BA8B38();
  sub_1E0B7638C(&qword_1ECE78898, MEMORY[0x1E69D4E98], MEMORY[0x1E69D4EA0]);
  swift_allocError();
  sub_1E0BA8B28();
  swift_willThrow();
  v9 = v31;
LABEL_14:
  (*(v5 + 8))(v16, v43);
  return (*(v9 + 8))(a1, v8);
}

uint64_t AKSUUID.serialize(into:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = sub_1E0BA8A88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v8 = *v2;
  sub_1E0B63E08(&v8, v9);
  sub_1E0BA8A58();
  sub_1E0BA8A78();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E0B69C90(uint64_t a1)
{
  v2 = sub_1E0B72BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B69CCC(uint64_t a1)
{
  v2 = sub_1E0B72BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.State.LockState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788A0, &qword_1E0BABE90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72BB4();
  sub_1E0BA8FB8();
  v10 = 0;
  sub_1E0BA8E08();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v9 = 1;
    sub_1E0BA8E58();
    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t AKSIdentity.State.LockState.description.getter()
{
  v1 = *v0;
  v2 = 0x64656B636F6C6E75;
  v3 = 0x642D747265737361;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x656E696665646E75;
  if (v1 != 4)
  {
    v4 = 0x65702D6563617267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E696B636F6CLL;
  if (v1 != 2)
  {
    v5 = 0x64656C6261736964;
  }

  if (*v0)
  {
    v2 = 0x64656B636F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E0B6A0EC(uint64_t a1)
{
  v2 = sub_1E0B72C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6A128(uint64_t a1)
{
  v2 = sub_1E0B72C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Config.Options.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788B0, &qword_1E0BABE98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72C08();
  sub_1E0BA8FB8();
  v11 = v8;
  AKSIdentity.Config.Options.description.getter();
  v10[15] = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_1E0BA8E68();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E0B6A358(uint64_t a1)
{
  v2 = sub_1E0B72D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6A394(uint64_t a1)
{
  v2 = sub_1E0B72D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Config.RecoveryBlob.State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788D0, &qword_1E0BABEA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72D08();
  sub_1E0BA8FB8();
  v13 = v8;
  AKSIdentity.Config.RecoveryBlob.State.description.getter();
  v12 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v11 = 1;
    sub_1E0BA8E58();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E0B6A5C0(uint64_t a1)
{
  v2 = sub_1E0B72D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6A5FC(uint64_t a1)
{
  v2 = sub_1E0B72D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.State.State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788E0, &qword_1E0BABEB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72D5C();
  sub_1E0BA8FB8();
  v13 = v8;
  AKSIdentity.State.State.description.getter();
  v12 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v11 = 1;
    sub_1E0BA8E58();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E0B6A828(uint64_t a1)
{
  v2 = sub_1E0B72DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6A864(uint64_t a1)
{
  v2 = sub_1E0B72DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.State.MoreState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788F0, &qword_1E0BABEB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72DB0();
  sub_1E0BA8FB8();
  v13 = v8;
  AKSIdentity.State.MoreState.description.getter();
  v12 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v11 = 1;
    sub_1E0BA8E58();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E0B6AA60(void *a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v4 = *v2;
  swift_beginAccess();
  v5 = *a1;
  v6 = *(*a1 + 16);

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v11 = 24 * v8;
  while (v6 != v8)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    ++v8;
    v12 = v11 + 24;
    v13 = *(v5 + v11 + 32);
    v11 += 24;
    if ((v13 & ~v4) == 0)
    {
      v14 = *(v5 + v12 + 16);
      v15 = *(v5 + v12 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v14;
      if ((result & 1) == 0)
      {
        result = a2(0, v10[2] + 1, 1);
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        result = a2(v16 > 1, v17 + 1, 1);
      }

      v10[2] = v17 + 1;
      v18 = &v10[3 * v17];
      *(v18 + 8) = v13;
      v18[5] = v29;
      v18[6] = v15;
      goto LABEL_2;
    }
  }

  v19 = v10[2];
  if (v19)
  {
    sub_1E0B727BC(0, v19, 0);
    v20 = v9;
    v21 = v10 + 6;
    do
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_1E0B727BC((v24 > 1), v25 + 1, 1);
      }

      *(v20 + 16) = v25 + 1;
      v26 = v20 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v21 += 3;
      --v19;
    }

    while (v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788C0, &qword_1E0BABEA0);
  sub_1E0B72C5C();
  v27 = sub_1E0BA8C98();

  return v27;
}

uint64_t sub_1E0B6AE20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6156776172;
  }

  else
  {
    v3 = 0x7470697263736564;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6156776172;
  }

  else
  {
    v5 = 0x7470697263736564;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E0BA8E88();
  }

  return v8 & 1;
}

uint64_t sub_1E0B6AED0()
{
  sub_1E0BA8F48();
  sub_1E0BA8CD8();

  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6AF5C(uint64_t a1)
{
  sub_1E0BA8F48();
  sub_1E0BA8CD8();

  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6AFF0@<X0>(char *a3@<X8>)
{
  v4 = sub_1E0BA8DA8();

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

uint64_t sub_1E0B6B058@<X0>(char *a4@<X8>)
{
  v5 = sub_1E0BA8DA8();

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

uint64_t sub_1E0B6B0B8(uint64_t a1)
{
  v2 = sub_1E0B72E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6B0F4(uint64_t a1)
{
  v2 = sub_1E0B72E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Memento.State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78908, &qword_1E0BABEC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72E58();
  sub_1E0BA8FB8();
  v11 = v8;
  AKSIdentity.Memento.State.description.getter();
  v10[15] = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_1E0BA8E18();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E0B6B2F4(void *a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v4 = *v2;
  swift_beginAccess();
  v5 = *a1;
  v6 = *a1 + 32;
  v7 = *(*a1 + 16);

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v6 + 24 * v9);
  while (v7 != v9)
  {
    if (v9 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    ++v9;
    v13 = v12 + 3;
    v14 = *v12;
    v12 += 3;
    if ((v14 & ~v4) == 0)
    {
      v16 = *(v13 - 2);
      v15 = *(v13 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v16;
      if ((result & 1) == 0)
      {
        result = a2(0, v11[2] + 1, 1);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        result = a2(v17 > 1, v18 + 1, 1);
      }

      v11[2] = v18 + 1;
      v19 = &v11[3 * v18];
      v19[4] = v14;
      v19[5] = v30;
      v19[6] = v15;
      goto LABEL_2;
    }
  }

  v20 = v11[2];
  if (v20)
  {
    sub_1E0B727BC(0, v20, 0);
    v21 = v10;
    v22 = v11 + 6;
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_1E0B727BC((v25 > 1), v26 + 1, 1);
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 3;
      --v20;
    }

    while (v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788C0, &qword_1E0BABEA0);
  sub_1E0B72C5C();
  v28 = sub_1E0BA8C98();

  return v28;
}

uint64_t AKSIdentity.Memento.SESlot.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Memento.failedAttempts.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t AKSIdentity.Memento.maxUnlockAttempts.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

void AKSIdentity.Memento.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t AKSIdentity.Memento.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1E0B6B76C@<X0>(_BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v45 = a2;
  v4 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E0BA8AE8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v47 = 1;
  _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
  sub_1E0B670F0();
  sub_1E0BA8BA8();
  if (v3)
  {
    *v45 = 18;
    LOBYTE(v46) = 18;
    sub_1E0B67560();
    swift_willThrowTypedImpl();
    return MEMORY[0x1E12E8B70](v3);
  }

  else
  {
    v42 = v8;
    v43 = v6;
    v41 = v13;
    v15 = v44;
    v16 = v46;
    if (qword_1ECE785C8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for der_key(0);
    v19 = v11;
    v18 = __swift_project_value_buffer(v17, qword_1ECE79380);
    v40 = sub_1E0B684C0(v18, v16, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
    v50 = v20 & 1;
    if (qword_1ECE785A8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v17, qword_1ECE79320);
    v22 = sub_1E0B68284(v21, v16);
    v23 = v43;
    v24 = v22;
    v49 = BYTE4(v22) & 1;
    if (qword_1ECE784F0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v17, qword_1ECE790F8);
    v26 = sub_1E0B68284(v25, v16);
    v38 = v26;
    v48 = BYTE4(v26) & 1;
    if (qword_1ECE78590 != -1)
    {
      swift_once();
    }

    v39 = v24;
    __swift_project_value_buffer(v17, qword_1ECE792D8);
    sub_1E0B64650(v16, v23);

    v32 = v42;
    v33 = *(v42 + 16);
    v34 = v7;
    v35 = v41;
    v33();
    sub_1E0B671C8(v23, type metadata accessor for DERDictionaryItem);
    (v33)(v19, v35, v34);
    sub_1E0B738D0();
    sub_1E0BA8B78();
    result = (*(v32 + 8))(v35, v34);
    v36 = v46;
    v28 = v50;
    v29 = v49;
    v30 = v48;
    *v15 = v40;
    *(v15 + 8) = v28;
    v31 = v38;
    *(v15 + 12) = v39;
    *(v15 + 16) = v29;
    *(v15 + 20) = v31;
    *(v15 + 24) = v30;
    *(v15 + 32) = v36;
    *(v15 + 40) = 0;
  }

  return result;
}

unint64_t sub_1E0B6BC3C()
{
  v1 = 0x746F6C534553;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x744164656C696166;
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

uint64_t sub_1E0B6BCC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0B72F54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0B6BCE8(uint64_t a1)
{
  v2 = sub_1E0B72EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6BD24(uint64_t a1)
{
  v2 = sub_1E0B72EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Memento.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78918, &qword_1E0BABEC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v18 = *(v1 + 12);
  v17 = *(v1 + 16);
  v16 = *(v1 + 20);
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72EAC();
  sub_1E0BA8FB8();
  v27 = 0;
  v7 = v19;
  sub_1E0BA8DC8();
  if (!v7)
  {
    v8 = v15;
    v9 = v13;
    v10 = v14;
    v26 = 1;
    v24 = v17;
    sub_1E0BA8DE8();
    v25 = 2;
    v22 = v8;
    sub_1E0BA8DE8();
    v20 = v10;
    v21 = v9;
    v23 = 3;
    sub_1E0B72F00();
    sub_1E0BA8DD8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AKSIdentity.getMemento()@<X0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E0BABE70;
  *(inited + 32) = v4;
  v15 = 0;
  v6 = sub_1E0BA8D18();
  *(v6 + 16) = 0x8000;
  bzero((v6 + 32), 0x8000uLL);
  v14 = v6;
  result = sub_1E0B84FE0(0x8Bu, inited, 0, &v15, &v14);
  if (v2)
  {
  }

  else if (result)
  {
    v8 = result;

    sub_1E0B67560();
    swift_allocError();
    sub_1E0B676C8(v8, v9);
    return swift_willThrow();
  }

  else if (v14)
  {

    result = sub_1E0B6B76C(&v11, &v12);
    v10 = v13[0];
    *a1 = v12;
    a1[1] = v10;
    *(a1 + 25) = *(v13 + 9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AKSIdentity.State.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t AKSIdentity.State.state.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

uint64_t AKSIdentity.State.backoff.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.State.failedAttempts.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t AKSIdentity.State.generationState.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t AKSIdentity.State.recoveryCountdown.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void AKSIdentity.State.moreState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 52);
  *(a1 + 4) = v2;
}

uint64_t AKSIdentity.State.moreState.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 52) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t AKSIdentity.State.maxUnlockAttempts.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 64) = BYTE4(result) & 1;
  return result;
}

__n128 AKSIdentity.State.userUUID.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 81);
  result = *(v1 + 65);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AKSIdentity.State.userUUID.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 65) = *a1;
  *(v1 + 81) = v2;
  return result;
}

uint64_t sub_1E0B6C408@<X0>(_BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v100 = a3;
  v105 = type metadata accessor for DERDictionaryItem(0);
  v3 = MEMORY[0x1EEE9AC00](v105);
  v98 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v99 = &v90 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v102 = &v90 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v90 - v9;
  v10 = sub_1E0BA8AE8();
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v97 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v90 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v90 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v90 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v90 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v90 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v90 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v90 - v31;
  v33 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v115 = 1;
  v110 = 1;
  v116 = 1;
  _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
  sub_1E0B670F0();
  v34 = v107;
  sub_1E0BA8BA8();
  if (v34)
  {
    *v106 = 18;
    LOBYTE(v108) = 18;
    sub_1E0B67560();
    swift_willThrowTypedImpl();
    return MEMORY[0x1E12E8B70](v34);
  }

  else
  {
    v95 = v30;
    v96 = v32;
    v35 = v101;
    v93 = v24;
    v94 = v27;
    v36 = v102;
    v91 = v18;
    v92 = v21;
    v90 = v15;
    v37 = v105;
    v38 = v108;
    if (qword_1ECE78590 != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for der_key(0);
    __swift_project_value_buffer(v107, qword_1ECE792D8);
    sub_1E0B64650(v38, v35);
    v39 = v36;
    v51 = *(v37 + 20);
    v52 = v104;
    v53 = *(v103 + 16);
    v54 = v96;
    v55 = v103;
    v53(v96, v35 + v51, v104);
    sub_1E0B671C8(v35, type metadata accessor for DERDictionaryItem);
    v53(v95, v54, v52);
    sub_1E0B74114();
    sub_1E0BA8B78();
    v61 = v55;
    (*(v55 + 8))(v54, v52);
    LODWORD(v101) = v108;
    v62 = v105;
    v115 = 0;
    if (qword_1ECE78598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v107, qword_1ECE792F0);
    sub_1E0B64650(v38, v39);
    v56 = v38;
    v57 = v61;
    v58 = *(v61 + 16);
    v59 = v94;
    v58(v94, v39 + *(v62 + 20), v52);
    sub_1E0B671C8(v39, type metadata accessor for DERDictionaryItem);
    v58(v93, v59, v52);
    sub_1E0B74274();
    sub_1E0BA8B78();
    v63 = v59;
    v64 = v57;
    (*(v57 + 8))(v63, v52);
    v65 = v108;
    v66 = v56;
    v67 = v107;
    v40 = v99;
    v41 = v100;
    if (qword_1ECE785A0 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v67, qword_1ECE79308);
    v103 = sub_1E0B684C0(v42, v66, MEMORY[0x1E69E76D8], MEMORY[0x1E69D4EF8]);
    v114 = v43 & 1;
    if (qword_1ECE785A8 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v67, qword_1ECE79320);
    v102 = sub_1E0B68284(v44, v66);
    v113 = BYTE4(v102) & 1;
    if (qword_1ECE785B0 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v67, qword_1ECE79338);
    v96 = sub_1E0B68284(v45, v66);
    v112 = BYTE4(v96) & 1;
    if (qword_1ECE785B8 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v67, qword_1ECE79350);
    v95 = sub_1E0B684C0(v46, v66, MEMORY[0x1E69E76D8], MEMORY[0x1E69D4EF8]);
    v111 = v47 & 1;
    if (qword_1ECE785C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v67, qword_1ECE79368);
    sub_1E0B64650(v66, v40);
    v94 = v66;
    v68 = *(v62 + 20);
    v69 = v64;
    v70 = *(v64 + 16);
    v71 = v92;
    v72 = v104;
    v70(v92, v40 + v68, v104);
    sub_1E0B671C8(v40, type metadata accessor for DERDictionaryItem);
    v70(v91, v71, v72);
    sub_1E0B741C4();
    sub_1E0BA8B78();
    v80 = v71;
    v81 = v69;
    (*(v69 + 8))(v80, v72);
    v82 = v108;
    v83 = v105;
    v84 = v94;
    v110 = 0;
    if (qword_1ECE784F0 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v107, qword_1ECE790F8);
    v49 = sub_1E0B68284(v48, v84);
    v50 = v98;
    v99 = v49;
    v109 = BYTE4(v49) & 1;
    if (qword_1ECE785D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v107, qword_1ECE79398);
    sub_1E0B64650(v84, v50);
    LODWORD(v107) = v82;

    v85 = *(v83 + 20);
    v86 = *(v81 + 16);
    v87 = v90;
    v88 = v104;
    v86(v90, v50 + v85, v104);
    sub_1E0B671C8(v50, type metadata accessor for DERDictionaryItem);
    v86(v97, v87, v88);
    sub_1E0B73764();
    sub_1E0BA8B78();
    result = (*(v81 + 8))(v87, v104);
    v89 = v108;
    LODWORD(v88) = v107;
    v73 = v115;
    v74 = v114;
    v75 = v113;
    v76 = v112;
    v77 = v111;
    v78 = v110;
    v79 = v109;
    *v41 = v101;
    *(v41 + 4) = v73;
    *(v41 + 5) = v65;
    *(v41 + 8) = v103;
    *(v41 + 16) = v74;
    *(v41 + 20) = v102;
    *(v41 + 24) = v75;
    *(v41 + 28) = v96;
    *(v41 + 32) = v76;
    *(v41 + 40) = v95;
    *(v41 + 48) = v77;
    *(v41 + 52) = v88;
    *(v41 + 56) = v78;
    *(v41 + 60) = v99;
    *(v41 + 64) = v79;
    *(v41 + 65) = v89;
    *(v41 + 81) = 0;
  }

  return result;
}

AppleKeyStore::AKSIdentity::State::LockState_optional __swiftcall AKSIdentity.State.LockState.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1E0B6D17C()
{
  sub_1E0BA8F48();
  sub_1E0BA8F78();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6D1F0(uint64_t a1)
{
  sub_1E0BA8F48();
  sub_1E0BA8F78();
  return sub_1E0BA8F98();
}

unint64_t sub_1E0B6D248()
{
  v1 = *v0;
  v2 = 0x64656B636F6C6E75;
  v3 = 0x642D747265737361;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x656E696665646E75;
  if (v1 != 4)
  {
    v4 = 0x65702D6563617267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E696B636F6CLL;
  if (v1 != 2)
  {
    v5 = 0x64656C6261736964;
  }

  if (*v0)
  {
    v2 = 0x64656B636F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1E0B6D480(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6574617473;
    v6 = 0x66666F6B636162;
    if (a1 != 2)
    {
      v6 = 0x744164656C696166;
    }

    if (a1)
    {
      v5 = 0x746174536B636F6CLL;
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
    v1 = 0x7461745365726F6DLL;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0x4449555572657375;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x69746172656E6567;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_1E0B6D5CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0B75850(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0B6D600(uint64_t a1)
{
  v2 = sub_1E0B730C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6D63C(uint64_t a1)
{
  v2 = sub_1E0B730C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78930, &qword_1E0BABED0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 4);
  v34 = *(v1 + 5);
  v29 = *(v1 + 1);
  v28 = *(v1 + 16);
  v27 = v1[5];
  v26 = *(v1 + 24);
  v25 = v1[7];
  v9 = *(v1 + 32);
  v22 = *(v1 + 5);
  v23 = *(v1 + 48);
  v24 = v9;
  LODWORD(v5) = *(v1 + 56);
  v20 = v1[13];
  v21 = v5;
  v19 = v1[15];
  v10 = *(v1 + 64);
  v11 = *(v1 + 73);
  v15 = *(v1 + 65);
  v16 = v11;
  v17 = *(v1 + 81);
  v18 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B730C0();
  sub_1E0BA8FB8();
  LODWORD(v31) = v7;
  BYTE4(v31) = v8;
  v35 = 0;
  sub_1E0B73114();
  v12 = v30;
  sub_1E0BA8DD8();
  if (!v12)
  {
    v13 = v26;
    LOBYTE(v31) = v34;
    v35 = 1;
    sub_1E0B73168();
    sub_1E0BA8DD8();
    LOBYTE(v31) = 2;
    sub_1E0BA8DF8();
    LOBYTE(v31) = 3;
    v35 = v13;
    sub_1E0BA8DE8();
    LOBYTE(v31) = 4;
    v35 = v24;
    sub_1E0BA8DE8();
    LOBYTE(v31) = 5;
    sub_1E0BA8DF8();
    LODWORD(v31) = v20;
    BYTE4(v31) = v21;
    v35 = 6;
    sub_1E0B731BC();
    sub_1E0BA8DD8();
    LOBYTE(v31) = 7;
    v35 = v18;
    sub_1E0BA8DE8();
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v35 = 8;
    sub_1E0B73210();
    sub_1E0BA8DD8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AKSIdentity.Config.gracePeriod.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.backOffDelay.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.maxUnlockAttempts.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void AKSIdentity.Config.options.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t AKSIdentity.Config.options.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

__n128 AKSIdentity.Config.userUUID.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 73);
  result = *(v1 + 57);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AKSIdentity.Config.userUUID.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 57) = *a1;
  *(v1 + 73) = v2;
  return result;
}

__n128 AKSIdentity.Config.groupUUID.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 90);
  result = *(v1 + 74);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AKSIdentity.Config.groupUUID.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 74) = *a1;
  *(v1 + 90) = v2;
  return result;
}

uint64_t AKSIdentity.Config.recoveryIterations.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.recoveryTargetIterations.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

__n128 AKSIdentity.Config.recoveryBlobState.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[9].n128_u8[0];
  result = v1[8];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AKSIdentity.Config.recoveryBlobState.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u8[0] = v2;
  return result;
}

uint64_t AKSIdentity.Config.mementoPasscodeGeneration.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.passcodeGeneration.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.escrowPasscodePeriod.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.escrowTokenPeriod.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.bindKEKToKB.setter(uint64_t a1)
{

  *(v1 + 216) = a1;
  return result;
}

void AKSIdentity.Config.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 65) = 0;
  *(a1 + 57) = 0;
  *(a1 + 73) = 1;
  *(a1 + 82) = 0;
  *(a1 + 74) = 0;
  *(a1 + 90) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 145) = 514;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 209) = 514;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
}

uint64_t sub_1E0B6E07C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  *a2 = a1;
}

uint64_t sub_1E0B6E120(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;

  swift_beginAccess();
  *a5 = v6;
}

uint64_t AKSIdentity.Config.RecoveryBlob.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = BYTE4(result);
  *(a2 + 9) = BYTE5(result);
  *(a2 + 12) = result;
  return result;
}

uint64_t sub_1E0B6E25C()
{
  v1 = 0x65756C6156776172;
  v2 = 0x746F6C535350;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
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

uint64_t sub_1E0B6E2D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0B75B54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0B6E2F8(uint64_t a1)
{
  v2 = sub_1E0B73264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6E334(uint64_t a1)
{
  v2 = sub_1E0B73264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Config.RecoveryBlob.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78960, &qword_1E0BABED8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 8);
  v12 = *(v1 + 9);
  v13 = v8;
  HIDWORD(v11) = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B73264();
  sub_1E0BA8FB8();
  v18 = 0;
  sub_1E0BA8E68();
  if (!v2)
  {
    v9 = HIDWORD(v11);
    v17 = 1;
    sub_1E0BA8E48();
    v16 = 2;
    sub_1E0BA8E48();
    v14 = v9;
    v15 = 3;
    sub_1E0B732B8();
    sub_1E0BA8E28();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E0B6E58C(char a1)
{
  result = 0x7265506563617267;
  switch(a1)
  {
    case 1:
      result = 0x4466664F6B636162;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x736E6F6974706FLL;
      break;
    case 4:
      result = 0x4449555572657375;
      break;
    case 5:
      result = 0x49555570756F7267;
      break;
    case 6:
    case 12:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 13:
    case 16:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0x544B454B646E6962;
      break;
    case 18:
      result = 0x65646F6373736170;
      break;
    case 19:
      result = 0x6665526D6361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E0B6E7D0()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7CF0](v1);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6E818(uint64_t a1)
{
  v2 = *v1;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7CF0](v2);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6E864@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0B75CB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0B6E898(uint64_t a1)
{
  v2 = sub_1E0B734C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6E8D4(uint64_t a1)
{
  v2 = sub_1E0B734C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *AKSIdentity.getConfiguration()@<X0>(_OWORD *a1@<X8>)
{
  v4 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *v1;
  v6 = sub_1E0BA8D18();
  *(v6 + 16) = 0x8000;
  bzero((v6 + 32), 0x8000uLL);
  v27 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E0BABE70;
  *(inited + 32) = v5;
  v26 = 0;
  result = sub_1E0B84FE0(0x1Fu, inited, 0, &v26, &v27);
  if (v2)
  {
  }

  else if (result)
  {
    v9 = result;

    sub_1E0B67560();
    swift_allocError();
    sub_1E0B676C8(v9, v10);
    return swift_willThrow();
  }

  else if (v27)
  {

    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B7330C();
    result = sub_1E0BA8BA8();
    a1[12] = v23;
    a1[13] = v24;
    a1[14] = v25;
    a1[8] = v19;
    a1[9] = v20;
    a1[10] = v21;
    a1[11] = v22;
    a1[4] = v15;
    a1[5] = v16;
    a1[6] = v17;
    a1[7] = v18;
    *a1 = v11;
    a1[1] = v12;
    a1[2] = v13;
    a1[3] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AKSIdentity.setConfiguration(_:_:)(uint64_t a1, _OWORD *a2)
{
  v4 = v2;
  v7 = sub_1E0BA8C28();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[13];
  v68[12] = a2[12];
  v68[13] = v11;
  v68[14] = a2[14];
  v12 = a2[9];
  v68[8] = a2[8];
  v68[9] = v12;
  v13 = a2[11];
  v68[10] = a2[10];
  v68[11] = v13;
  v14 = a2[5];
  v68[4] = a2[4];
  v68[5] = v14;
  v15 = a2[7];
  v68[6] = a2[6];
  v68[7] = v15;
  v16 = a2[1];
  v68[0] = *a2;
  v68[1] = v16;
  v17 = a2[3];
  v68[2] = a2[2];
  v68[3] = v17;
  v18 = *v4;
  sub_1E0B73360(v68, &v53);
  sub_1E0BA8C18();

  v19 = a2[13];
  v65 = a2[12];
  v66 = v19;
  v20 = *(a2 + 28);
  v21 = a2[9];
  v61 = a2[8];
  v62 = v21;
  v22 = a2[11];
  v63 = a2[10];
  v64 = v22;
  v23 = a2[5];
  v57 = a2[4];
  v58 = v23;
  v24 = a2[7];
  v59 = a2[6];
  v60 = v24;
  v25 = a2[1];
  v53 = *a2;
  v54 = v25;
  v26 = a2[3];
  v55 = a2[2];
  v56 = v26;
  *&v67 = v20;
  *(&v67 + 1) = a1;
  sub_1E0B73398();
  sub_1E0BA8C08();
  if (v3)
  {
    v50 = v65;
    v51 = v66;
    v52 = v67;
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    sub_1E0B733EC(&v38);
    sub_1E0B67560();
    swift_allocError();
    *v27 = 23;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v3);
  }

  else
  {
    v36 = v7;
    v50 = v65;
    v51 = v66;
    v52 = v67;
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    sub_1E0B733EC(&v38);
    v29 = sub_1E0BA8D18();
    *(v29 + 16) = 0x8000;
    bzero((v29 + 32), 0x8000uLL);
    v69 = v29;
    v30 = sub_1E0BA8BE8();
    v31 = v30 + 32;
    v32 = *(v30 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1E0BABE80;
    *(v33 + 32) = v18;
    *(v33 + 40) = v31;
    *(v33 + 48) = v32;
    v37 = 0;
    v34 = sub_1E0B84FE0(0x1Eu, v33, 0, &v37, &v69);

    swift_setDeallocating();
    swift_deallocClassInstance();

    v7 = v36;
    if (v34)
    {
      sub_1E0B67560();
      swift_allocError();
      sub_1E0B676C8(v34, v35);
      swift_willThrow();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t AKSIdentity.getIdentityState()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E0BABE70;
  *(inited + 32) = v4;
  v16 = 0;
  v6 = sub_1E0BA8D18();
  *(v6 + 16) = 0x8000;
  bzero((v6 + 32), 0x8000uLL);
  v15 = v6;
  result = sub_1E0B84FE0(0x23u, inited, 0, &v16, &v15);
  if (v2)
  {
  }

  else if (result)
  {
    v8 = result;

    sub_1E0B67560();
    swift_allocError();
    sub_1E0B676C8(v8, v9);
    return swift_willThrow();
  }

  else if (v15)
  {

    result = sub_1E0B6C408(&v12, v13);
    v10 = v13[3];
    *(a1 + 32) = v13[2];
    *(a1 + 48) = v10;
    *(a1 + 64) = v13[4];
    *(a1 + 80) = v14;
    v11 = v13[1];
    *a1 = v13[0];
    *(a1 + 16) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E0B6F140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a5@<X8>)
{
  v19 = a3;
  v18 = a5;
  v7 = sub_1E0BA89F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E0BA8B08();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v8 + 16))(v10, a2, v7);
  v19(v14);
  v15 = v20;
  sub_1E0BA8AA8();
  (*(v8 + 8))(a2, v7);
  result = (*(v12 + 8))(a1, v11);
  if (!v15)
  {
    *v18 = v21;
  }

  return result;
}

uint64_t sub_1E0B6F604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v15 = a3;
  v6 = sub_1E0BA89F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E0BA8B08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  (*(v11 + 16))(&v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  sub_1E0B73470();
  sub_1E0BA8AA8();
  (*(v7 + 8))(a2, v6);
  result = (*(v11 + 8))(a1, v10);
  if (!v3)
  {
    *v15 = v16;
  }

  return result;
}

AppleKeyStore::AKSIdentity::State::LockState AKSIdentity.State.LockState.init(derEncoded:withIdentifier:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v17 = a3;
  v6 = sub_1E0BA89F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E0BA8B08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  sub_1E0B73470();
  sub_1E0BA8AA8();
  if (v3)
  {
    (*(v7 + 8))(a2, v6);
    return (*(v11 + 8))(a1, v10);
  }

  else
  {
    v14 = v17;
    result = AKSIdentity.State.LockState.init(rawValue:)(v19).value;
    v15 = v18;
    if (v18 == 8)
    {
      __break(1u);
    }

    else
    {
      (*(v7 + 8))(a2, v6);
      result = (*(v11 + 8))(a1, v10);
      *v14 = v15;
    }
  }

  return result;
}

uint64_t AKSIdentity.Config.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78998, &qword_1E0BABEE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 16);
  v54 = *(v1 + 24);
  v48 = *(v1 + 32);
  v49 = v7;
  v47 = *(v1 + 40);
  v46 = *(v1 + 48);
  v45 = *(v1 + 56);
  v44 = *(v1 + 57);
  v42 = *(v1 + 65);
  v43 = *(v1 + 73);
  v8 = *(v1 + 82);
  v39 = *(v1 + 74);
  v40 = v8;
  v41 = *(v1 + 90);
  v37 = *(v1 + 96);
  v38 = *(v1 + 104);
  v35 = *(v1 + 112);
  v36 = *(v1 + 120);
  v9 = *(v1 + 136);
  v32 = *(v1 + 128);
  v33 = v9;
  v34 = *(v1 + 144);
  v31 = *(v1 + 145);
  v30 = *(v1 + 146);
  v28 = *(v1 + 152);
  v29 = *(v1 + 160);
  v26 = *(v1 + 168);
  v27 = *(v1 + 176);
  v24 = *(v1 + 184);
  v25 = *(v1 + 192);
  v22 = *(v1 + 200);
  v23 = *(v1 + 208);
  v21 = *(v1 + 209);
  v20 = *(v1 + 210);
  v10 = *(v1 + 224);
  v17 = *(v1 + 216);
  v18 = v10;
  v19 = *(v1 + 232);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B734C4();
  v11 = v3;
  sub_1E0BA8FB8();
  LOBYTE(v51) = 0;
  v12 = v50;
  sub_1E0BA8DC8();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v45;
  v15 = v46;
  v16 = v44;
  v50 = v4;
  LOBYTE(v51) = 1;
  sub_1E0BA8DC8();
  LOBYTE(v51) = 2;
  sub_1E0BA8DC8();
  v51 = v15;
  LOBYTE(v52) = v14;
  v55 = 3;
  sub_1E0B73518();
  sub_1E0BA8DD8();
  v51 = v16;
  v52 = v42;
  v53 = v43;
  v55 = 4;
  sub_1E0B73210();
  sub_1E0BA8DD8();
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v55 = 5;
  sub_1E0BA8DD8();
  LOBYTE(v51) = 6;
  sub_1E0BA8DC8();
  LOBYTE(v51) = 7;
  sub_1E0BA8DC8();
  v51 = v32;
  v52 = v33;
  v53 = v34;
  v55 = 8;
  sub_1E0B7356C();
  sub_1E0BA8DD8();
  LOBYTE(v51) = 9;
  sub_1E0BA8DB8();
  LOBYTE(v51) = 10;
  sub_1E0BA8DB8();
  LOBYTE(v51) = 11;
  sub_1E0BA8DC8();
  LOBYTE(v51) = 12;
  sub_1E0BA8DC8();
  LOBYTE(v51) = 13;
  sub_1E0BA8DC8();
  LOBYTE(v51) = 14;
  sub_1E0BA8DC8();
  LOBYTE(v51) = 15;
  sub_1E0BA8DB8();
  LOBYTE(v51) = 16;
  sub_1E0BA8DB8();
  v51 = v17;
  v55 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE789B8, &qword_1E0BABEE8);
  sub_1E0B735C0();
  sub_1E0BA8DD8();
  v51 = v18;
  v55 = 18;
  sub_1E0BA8DD8();
  v51 = v19;
  v55 = 19;
  sub_1E0BA8DD8();
  return (*(v50 + 8))(v6, v11);
}

uint64_t AKSUUID.encode(to:)(void *a1)
{
  v17[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0BA8FA8();
  v16 = *v1;
  v2 = sub_1E0B63E08(&v16, v17);
  v3 = v2[2];
  if (v3)
  {
    v14 = v2;
    v15 = MEMORY[0x1E69E7CC0];
    sub_1E0B727BC(0, v3, 0);
    v4 = v14;
    v5 = v15;
    v6 = 32;
    sub_1E0B7363C();
    do
    {
      *&v16 = *(v4 + v6);
      v7 = sub_1E0BA8D08();
      v9 = v8;
      if (sub_1E0BA8CE8() == 1)
      {
        *&v16 = 48;
        *(&v16 + 1) = 0xE100000000000000;
        MEMORY[0x1E12E7A90](v7, v9);
        v4 = v14;

        v9 = *(&v16 + 1);
        v7 = v16;
      }

      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1E0B727BC((v10 > 1), v11 + 1, 1);
        v4 = v14;
      }

      *(v15 + 16) = v11 + 1;
      v12 = v15 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      ++v6;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *&v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788C0, &qword_1E0BABEA0);
  sub_1E0B72C5C();
  sub_1E0BA8C98();

  __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1E0BA8E98();

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t AKSIdentity.Config.init(derEncoded:withIdentifier:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v206 = a2;
  v128 = a1;
  v116 = a3;
  v125 = type metadata accessor for DERDictionaryItem(0);
  v3 = MEMORY[0x1EEE9AC00](v125);
  v122 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v121 = &v105 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v105 - v7;
  v126 = sub_1E0BA8AE8();
  v124 = *(v126 - 8);
  v8 = MEMORY[0x1EEE9AC00](v126);
  v117 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v118 = &v105 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v119 = &v105 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v120 = &v105 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v105 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v105 - v19;
  v21 = sub_1E0BA89F8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E0BA8B08();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = 1;
  v203 = 1;
  v201 = 1;
  v199 = 1;
  v198 = 1;
  v197 = 1;
  v194 = 1;
  v192 = 1;
  v190 = 1;
  v187 = 1;
  v185 = 1;
  v183 = 1;
  v181 = 1;
  (*(v26 + 16))(v28, v128, v25);
  (*(v22 + 16))(v24, v206, v21);
  v129 = &v130;
  v130 = MEMORY[0x1E69E7CC0];
  v29 = v127;
  sub_1E0BA8C38();
  v127 = v29;
  if (v29)
  {
    v30 = *(v22 + 8);
    v30(v24, v21);
    v31 = *(v26 + 8);
    v31(v28, v25);

    v30(v206, v21);
    v31(v128, v25);
LABEL_29:
    v130 = 0;
    LOBYTE(v131) = v205;
    *(&v131 + 1) = *v204;
    HIDWORD(v131) = *&v204[3];
    v132 = 0;
    v133 = v203;
    *v134 = *v202;
    *&v134[3] = *&v202[3];
    v135 = 0;
    v136 = v201;
    *v137 = *v200;
    *&v137[3] = *&v200[3];
    v138 = 0;
    v139 = v199;
    v140 = 0;
    v141 = 0;
    v142 = v198;
    v143 = 0;
    v144 = 0;
    v145 = v197;
    v147 = v196;
    v146 = v195;
    v148 = 0;
    v149 = v194;
    *&v150[3] = *&v193[3];
    *v150 = *v193;
    v151 = 0;
    v152 = v192;
    *&v153[3] = *&v191[3];
    *v153 = *v191;
    v154 = 0;
    v155 = 0;
    v156 = v190;
    v157 = 2;
    v158 = 2;
    v160 = v189;
    v159 = v188;
    v161 = 0;
    v162 = v187;
    *&v163[3] = *&v186[3];
    *v163 = *v186;
    v164 = 0;
    v165 = v185;
    *&v166[3] = *&v184[3];
    *v166 = *v184;
    v167 = 0;
    v168 = v183;
    *&v169[3] = *&v182[3];
    *v169 = *v182;
    v170 = 0;
    v171 = v181;
    v172 = 514;
    v174 = v180;
    v173 = v179;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    return sub_1E0B733EC(&v130);
  }

  v113 = v18;
  v114 = v20;
  v33 = *(v22 + 8);
  v32 = v22 + 8;
  v115 = v33;
  v33(v24, v21);
  v36 = *(v26 + 8);
  v35 = v26 + 8;
  v34 = v36;
  v36(v28, v25);
  v37 = v178;

  v38 = v25;
  if (qword_1ECE784E0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for der_key(0);
  v40 = __swift_project_value_buffer(v39, qword_1ECE790C8);
  v41 = v127;
  v42 = sub_1E0B684C0(v40, v37, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v44 = v37;
  v45 = v206;
  if (v41)
  {

    v115(v45, v21);
    v34(v128, v38);
    goto LABEL_29;
  }

  v111 = v38;
  v112 = v42;
  v46 = v44;
  v127 = v39;
  v205 = v43 & 1;
  if (qword_1ECE784E8 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v127, qword_1ECE790E0);
  v110 = sub_1E0B684C0(v47, v46, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v203 = v48 & 1;
  if (qword_1ECE784F0 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v127, qword_1ECE790F8);
  v50 = sub_1E0B684C0(v49, v46, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v51 = v126;
  v106 = v34;
  v107 = v21;
  v108 = v35;
  v109 = v50;
  v201 = v52 & 1;
  if (qword_1ECE78508 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v127, qword_1ECE79140);
  v53 = v123;
  sub_1E0B64650(v46, v123);
  v105 = v46;
  v57 = v124;
  v58 = v124[2];
  v59 = v51;
  v60 = v114;
  (v58)(v114, v53 + *(v125 + 20), v59);
  sub_1E0B671C8(v53, type metadata accessor for DERDictionaryItem);
  (v58)(v113, v60, v59);
  sub_1E0B737B8();
  sub_1E0BA8B78();
  v71 = v60;
  v72 = v126;
  v57[1](v71, v126);
  v73 = v105;
  v114 = v130;
  v199 = 0;
  if (qword_1ECE785D0 != -1)
  {
    swift_once();
  }

  v123 = v32;
  __swift_project_value_buffer(v127, qword_1ECE79398);
  v54 = v121;
  sub_1E0B64650(v73, v121);
  v61 = v124;
  v62 = v124[2];
  v63 = v54 + *(v125 + 20);
  v64 = v54;
  v65 = v120;
  (v62)(v120, v63, v72);
  sub_1E0B671C8(v64, type metadata accessor for DERDictionaryItem);
  (v62)(v119, v65, v72);
  sub_1E0B73764();
  sub_1E0BA8B78();
  v61[1](v65, v72);
  v74 = v125;
  v75 = v122;
  v124 = v130;
  v125 = v131;
  v198 = 0;
  v55 = v127;
  if (qword_1ECE78608 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v55, qword_1ECE79440);
  sub_1E0B64650(v73, v75);
  v66 = *(v74 + 20);
  v67 = v61[2];
  v68 = v118;
  (v67)(v118, v75 + v66, v72);
  sub_1E0B671C8(v75, type metadata accessor for DERDictionaryItem);
  (v67)(v117, v68, v72);
  sub_1E0B73764();
  sub_1E0BA8B78();
  v61[1](v68, v72);
  v76 = v127;
  v122 = v130;
  v126 = v131;
  v197 = 0;
  if (qword_1ECE78618 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v76, qword_1ECE79470);
  v121 = sub_1E0B684C0(v56, v73, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v194 = v69 & 1;
  if (qword_1ECE78628 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v76, qword_1ECE794A0);
  v120 = sub_1E0B684C0(v70, v73, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v192 = v77 & 1;
  if (qword_1ECE78620 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v76, qword_1ECE79488);
  v79 = sub_1E0B684C0(v78, v73, MEMORY[0x1E69E76D8], MEMORY[0x1E69D4EF8]);
  if (v80)
  {
    v81 = 0;
  }

  else
  {
    v81 = v79;
  }

  v82 = __ROR8__(v81, 32) & 0xFFFFFFFF0000FFFFLL;
  v190 = 0;
  if (qword_1ECE78668 != -1)
  {
    swift_once();
  }

  v83 = __swift_project_value_buffer(v76, qword_1ECE79560);
  v84 = sub_1E0B686F4(v83, v73);
  v86 = v84;
  if (qword_1ECE78670 != -1)
  {
    swift_once();
  }

  v87 = __swift_project_value_buffer(v127, qword_1ECE79578);
  LODWORD(v119) = sub_1E0B686F4(v87, v73);
  if (qword_1ECE78680 != -1)
  {
    swift_once();
  }

  v89 = v73;
  v88 = __swift_project_value_buffer(v127, qword_1ECE795A8);
  v90 = sub_1E0B684C0(v88, v73, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v187 = v91 & 1;
  if (qword_1ECE78678 != -1)
  {
    swift_once();
  }

  v92 = __swift_project_value_buffer(v127, qword_1ECE79590);
  v93 = sub_1E0B684C0(v92, v89, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v185 = v94 & 1;
  if (qword_1ECE784F8 != -1)
  {
    swift_once();
  }

  v95 = __swift_project_value_buffer(v127, qword_1ECE79110);
  v96 = sub_1E0B684C0(v95, v89, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v183 = v97 & 1;
  if (qword_1ECE78500 != -1)
  {
    swift_once();
  }

  v98 = __swift_project_value_buffer(v127, qword_1ECE79128);
  v127 = sub_1E0B684C0(v98, v89, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  LODWORD(v118) = v99;

  v181 = v118 & 1;
  LODWORD(v117) = v199;
  v100 = v114;
  LODWORD(v118) = (v114 >> 1) & 1;
  v115(v206, v107);
  result = v106(v128, v111);
  v101 = v117 == 0;
  v102 = v116;
  *v116 = v112;
  v103 = v118;
  if (v101)
  {
    v104 = (v100 & 8) != 0;
  }

  else
  {
    v103 = 2;
    v104 = 2;
  }

  *(v102 + 8) = v205;
  *(v102 + 9) = *v204;
  *(v102 + 3) = *&v204[3];
  v102[2] = v110;
  *(v102 + 24) = v203;
  *(v102 + 25) = *v202;
  *(v102 + 7) = *&v202[3];
  v102[4] = v109;
  *(v102 + 40) = v201;
  *(v102 + 41) = *v200;
  *(v102 + 11) = *&v200[3];
  v102[6] = v100;
  *(v102 + 56) = v199;
  *(v102 + 57) = v124;
  *(v102 + 65) = v125;
  *(v102 + 73) = v198;
  *(v102 + 74) = v122;
  *(v102 + 82) = v126;
  *(v102 + 90) = v197;
  *(v102 + 95) = v196;
  *(v102 + 91) = v195;
  v102[12] = v121;
  *(v102 + 104) = v194;
  *(v102 + 27) = *&v193[3];
  *(v102 + 105) = *v193;
  v102[14] = v120;
  *(v102 + 120) = v192;
  *(v102 + 31) = *&v191[3];
  *(v102 + 121) = *v191;
  v102[16] = v81;
  v102[17] = v82;
  *(v102 + 144) = v190;
  *(v102 + 145) = v86;
  *(v102 + 146) = v119;
  *(v102 + 151) = v189;
  *(v102 + 147) = v188;
  v102[19] = v90;
  *(v102 + 160) = v187;
  *(v102 + 41) = *&v186[3];
  *(v102 + 161) = *v186;
  v102[21] = v93;
  *(v102 + 176) = v185;
  *(v102 + 45) = *&v184[3];
  *(v102 + 177) = *v184;
  v102[23] = v96;
  *(v102 + 192) = v183;
  *(v102 + 49) = *&v182[3];
  *(v102 + 193) = *v182;
  v102[25] = v127;
  *(v102 + 208) = v181;
  *(v102 + 209) = v103;
  *(v102 + 210) = v104;
  *(v102 + 215) = v180;
  *(v102 + 211) = v179;
  v102[27] = 0;
  v102[28] = 0;
  v102[29] = 0;
  return result;
}

uint64_t AKSIdentity.Config.serialize(into:withIdentifier:)(uint64_t a1)
{
  v31 = a1;
  v2 = sub_1E0BA8AE8();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  v49 = v1[2];
  v48 = *(v1 + 24);
  v47 = v1[4];
  v46 = *(v1 + 40);
  v13 = *(v1 + 57);
  v38 = *(v1 + 65);
  v39 = v13;
  LODWORD(v13) = *(v1 + 73);
  v43 = v1[23];
  v42 = *(v1 + 192);
  v41 = v1[25];
  v40 = *(v1 + 208);
  v36 = *(v1 + 209);
  v37 = v13;
  v35 = *(v1 + 210);
  v14 = v1[27];
  v32 = v1[28];
  v33 = v1[29];
  v34 = v14;
  v53 = 0;
  if (qword_1ECE784E0 != -1)
  {
    swift_once();
  }

  v15 = v5;
  v16 = __swift_project_value_buffer(v5, qword_1ECE790C8);
  if (v12)
  {
    v17 = v50;
  }

  else
  {
    sub_1E0B76324(v16, v7, type metadata accessor for der_key);
    v51 = v11;
    v52 = 0;
    v18 = v50;
    sub_1E0BA8AD8();
    v17 = v18;
    if (v18)
    {
      return sub_1E0B671C8(v7, type metadata accessor for der_key);
    }

    sub_1E0B7380C(v7, v10);
    (*(v44 + 32))(&v10[*(v8 + 20)], v4, v45);
    sub_1E0B64850(v10);
    sub_1E0B671C8(v10, type metadata accessor for DERDictionaryItem);
  }

  if (qword_1ECE784E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_1ECE790E0);
  sub_1E0B68914(v20, v49, v48);
  if (!v17)
  {
    if (qword_1ECE784F0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v15, qword_1ECE790F8);
    sub_1E0B68914(v21, v47, v46);
    if (qword_1ECE784F8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v15, qword_1ECE79110);
    sub_1E0B68914(v22, v43, v42);
    if (qword_1ECE78500 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v15, qword_1ECE79128);
    sub_1E0B68914(v23, v41, v40);
    if (qword_1ECE785D0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v15, qword_1ECE79398);
    sub_1E0B68BA8(v24, v39, v38, v37);
    if (qword_1ECE78688 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v15, qword_1ECE795C0);
    sub_1E0B68E50(v25, v36);
    if (qword_1ECE78690 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v15, qword_1ECE795D8);
    sub_1E0B68E50(v26, v35);
    v27 = v34;
    if (v34)
    {
      if (qword_1ECE78610 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v15, qword_1ECE79458);
      sub_1E0B64CA0(v28, v27);
    }

    if (v33)
    {
      if (qword_1ECE78410 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v15, qword_1ECE78E58);
      v30 = v33;
    }

    else
    {
      if (!v32)
      {
LABEL_38:
        v51 = v53;
        sub_1E0B670F0();
        sub_1E0BA8BD8();
      }

      if (qword_1ECE78420 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v15, qword_1ECE78E88);
      v30 = v32;
    }

    sub_1E0B64CA0(v29, v30);
    goto LABEL_38;
  }
}

void sub_1E0B726FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE787B0, &qword_1E0BABA88);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1E0B727BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E0B7291C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E0B727DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C48, &qword_1E0BADC30, &qword_1ECE78C50, &qword_1E0BADC38);
  *v3 = result;
  return result;
}

void *sub_1E0B7281C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C30, &qword_1E0BADC18, &qword_1ECE78C38, &qword_1E0BADC20);
  *v3 = result;
  return result;
}

void *sub_1E0B7285C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C20, &qword_1E0BADC08, &qword_1ECE78C28, &qword_1E0BADC10);
  *v3 = result;
  return result;
}

void *sub_1E0B7289C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C10, &qword_1E0BADBF8, &qword_1ECE78C18, &qword_1E0BADC00);
  *v3 = result;
  return result;
}

void *sub_1E0B728DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C00, &qword_1E0BADBE8, &qword_1ECE78C08, &qword_1E0BADBF0);
  *v3 = result;
  return result;
}

char *sub_1E0B7291C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78C40, &qword_1E0BADC28);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E0B72A28(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E0B72BB4()
{
  result = qword_1ECE788A8;
  if (!qword_1ECE788A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788A8);
  }

  return result;
}

unint64_t sub_1E0B72C08()
{
  result = qword_1ECE788B8;
  if (!qword_1ECE788B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788B8);
  }

  return result;
}

unint64_t sub_1E0B72C5C()
{
  result = qword_1ECE788C8;
  if (!qword_1ECE788C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE788C0, &qword_1E0BABEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E0B72D08()
{
  result = qword_1ECE788D8;
  if (!qword_1ECE788D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788D8);
  }

  return result;
}

unint64_t sub_1E0B72D5C()
{
  result = qword_1ECE788E8;
  if (!qword_1ECE788E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788E8);
  }

  return result;
}

unint64_t sub_1E0B72DB0()
{
  result = qword_1ECE788F8;
  if (!qword_1ECE788F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788F8);
  }

  return result;
}

unint64_t sub_1E0B72E04()
{
  result = qword_1ECE78900;
  if (!qword_1ECE78900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78900);
  }

  return result;
}

unint64_t sub_1E0B72E58()
{
  result = qword_1ECE78910;
  if (!qword_1ECE78910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78910);
  }

  return result;
}

unint64_t sub_1E0B72EAC()
{
  result = qword_1ECE78920;
  if (!qword_1ECE78920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78920);
  }

  return result;
}

unint64_t sub_1E0B72F00()
{
  result = qword_1ECE78928;
  if (!qword_1ECE78928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78928);
  }

  return result;
}

uint64_t sub_1E0B72F54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746F6C534553 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x744164656C696166 && a2 == 0xEE007374706D6574 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB71F0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E0BA8E88();

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

unint64_t sub_1E0B730C0()
{
  result = qword_1ECE78938;
  if (!qword_1ECE78938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78938);
  }

  return result;
}

unint64_t sub_1E0B73114()
{
  result = qword_1ECE78940;
  if (!qword_1ECE78940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78940);
  }

  return result;
}

unint64_t sub_1E0B73168()
{
  result = qword_1ECE78948;
  if (!qword_1ECE78948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78948);
  }

  return result;
}

unint64_t sub_1E0B731BC()
{
  result = qword_1ECE78950;
  if (!qword_1ECE78950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78950);
  }

  return result;
}

unint64_t sub_1E0B73210()
{
  result = qword_1ECE78958;
  if (!qword_1ECE78958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78958);
  }

  return result;
}

unint64_t sub_1E0B73264()
{
  result = qword_1ECE78968;
  if (!qword_1ECE78968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78968);
  }

  return result;
}

unint64_t sub_1E0B732B8()
{
  result = qword_1ECE78970;
  if (!qword_1ECE78970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78970);
  }

  return result;
}

unint64_t sub_1E0B7330C()
{
  result = qword_1ECE78978;
  if (!qword_1ECE78978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78978);
  }

  return result;
}

unint64_t sub_1E0B73398()
{
  result = qword_1ECE78980;
  if (!qword_1ECE78980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78980);
  }

  return result;
}

unint64_t sub_1E0B7341C()
{
  result = qword_1ECE78988;
  if (!qword_1ECE78988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78988);
  }

  return result;
}

unint64_t sub_1E0B73470()
{
  result = qword_1ECE78990;
  if (!qword_1ECE78990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78990);
  }

  return result;
}

unint64_t sub_1E0B734C4()
{
  result = qword_1ECE789A0;
  if (!qword_1ECE789A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789A0);
  }

  return result;
}

unint64_t sub_1E0B73518()
{
  result = qword_1ECE789A8;
  if (!qword_1ECE789A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789A8);
  }

  return result;
}

unint64_t sub_1E0B7356C()
{
  result = qword_1ECE789B0;
  if (!qword_1ECE789B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789B0);
  }

  return result;
}

unint64_t sub_1E0B735C0()
{
  result = qword_1ECE789C0;
  if (!qword_1ECE789C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE789B8, &qword_1E0BABEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789C0);
  }

  return result;
}

unint64_t sub_1E0B7363C()
{
  result = qword_1ECE789C8;
  if (!qword_1ECE789C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789C8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1E0B73764()
{
  result = qword_1ECE789D0;
  if (!qword_1ECE789D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789D0);
  }

  return result;
}

unint64_t sub_1E0B737B8()
{
  result = qword_1ECE789D8;
  if (!qword_1ECE789D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789D8);
  }

  return result;
}

uint64_t sub_1E0B7380C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for der_key(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0B73878()
{
  result = qword_1ECE789E0;
  if (!qword_1ECE789E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789E0);
  }

  return result;
}

unint64_t sub_1E0B738D0()
{
  result = qword_1ECE789E8;
  if (!qword_1ECE789E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789E8);
  }

  return result;
}

unint64_t sub_1E0B73928()
{
  result = qword_1ECE789F0;
  if (!qword_1ECE789F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789F0);
  }

  return result;
}

unint64_t sub_1E0B73980()
{
  result = qword_1ECE789F8;
  if (!qword_1ECE789F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789F8);
  }

  return result;
}

unint64_t sub_1E0B739D8()
{
  result = qword_1ECE78A00;
  if (!qword_1ECE78A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A00);
  }

  return result;
}

unint64_t sub_1E0B73A30()
{
  result = qword_1ECE78A08;
  if (!qword_1ECE78A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A08);
  }

  return result;
}

unint64_t sub_1E0B73A88()
{
  result = qword_1ECE78A10;
  if (!qword_1ECE78A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A10);
  }

  return result;
}

unint64_t sub_1E0B73AE0()
{
  result = qword_1ECE78A18;
  if (!qword_1ECE78A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A18);
  }

  return result;
}

unint64_t sub_1E0B73B38()
{
  result = qword_1ECE78A20;
  if (!qword_1ECE78A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A20);
  }

  return result;
}

unint64_t sub_1E0B73B90()
{
  result = qword_1ECE78A28;
  if (!qword_1ECE78A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A28);
  }

  return result;
}

unint64_t sub_1E0B73BE8()
{
  result = qword_1ECE78A30;
  if (!qword_1ECE78A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A30);
  }

  return result;
}

unint64_t sub_1E0B73C40()
{
  result = qword_1ECE78A38;
  if (!qword_1ECE78A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A38);
  }

  return result;
}

unint64_t sub_1E0B73C98()
{
  result = qword_1ECE78A40;
  if (!qword_1ECE78A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A40);
  }

  return result;
}

unint64_t sub_1E0B73CF0()
{
  result = qword_1ECE78A48;
  if (!qword_1ECE78A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A48);
  }

  return result;
}

unint64_t sub_1E0B73D48()
{
  result = qword_1ECE78A50;
  if (!qword_1ECE78A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A50);
  }

  return result;
}

unint64_t sub_1E0B73DA0()
{
  result = qword_1ECE78A58;
  if (!qword_1ECE78A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A58);
  }

  return result;
}

unint64_t sub_1E0B73DF8()
{
  result = qword_1ECE78A60;
  if (!qword_1ECE78A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A60);
  }

  return result;
}

unint64_t sub_1E0B73E50()
{
  result = qword_1ECE78A68;
  if (!qword_1ECE78A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A68);
  }

  return result;
}

unint64_t sub_1E0B73EA8()
{
  result = qword_1ECE78A70;
  if (!qword_1ECE78A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A70);
  }

  return result;
}

unint64_t sub_1E0B73F00()
{
  result = qword_1ECE78A78;
  if (!qword_1ECE78A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A78);
  }

  return result;
}

unint64_t sub_1E0B73F58()
{
  result = qword_1ECE78A80;
  if (!qword_1ECE78A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A80);
  }

  return result;
}

unint64_t sub_1E0B73FB0()
{
  result = qword_1ECE78A88;
  if (!qword_1ECE78A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A88);
  }

  return result;
}

unint64_t sub_1E0B74008()
{
  result = qword_1ECE78A90;
  if (!qword_1ECE78A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A90);
  }

  return result;
}

unint64_t sub_1E0B74060()
{
  result = qword_1ECE78A98;
  if (!qword_1ECE78A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A98);
  }

  return result;
}

unint64_t sub_1E0B740BC()
{
  result = qword_1ECE78AA0;
  if (!qword_1ECE78AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AA0);
  }

  return result;
}

unint64_t sub_1E0B74114()
{
  result = qword_1ECE78AA8;
  if (!qword_1ECE78AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AA8);
  }

  return result;
}

unint64_t sub_1E0B7416C()
{
  result = qword_1ECE78AB0;
  if (!qword_1ECE78AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AB0);
  }

  return result;
}

unint64_t sub_1E0B741C4()
{
  result = qword_1ECE78AB8;
  if (!qword_1ECE78AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AB8);
  }

  return result;
}

unint64_t sub_1E0B7421C()
{
  result = qword_1ECE78AC0;
  if (!qword_1ECE78AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AC0);
  }

  return result;
}

unint64_t sub_1E0B74274()
{
  result = qword_1ECE78AC8;
  if (!qword_1ECE78AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AC8);
  }

  return result;
}

unint64_t sub_1E0B742CC()
{
  result = qword_1ECE78AD0;
  if (!qword_1ECE78AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AD0);
  }

  return result;
}

unint64_t sub_1E0B74324()
{
  result = qword_1ECE78AD8;
  if (!qword_1ECE78AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AD8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

__n128 __swift_memcpy16_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E0B74418(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0B74438(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E0B744B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 82))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 5);
  if (v3 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(a1 + 5);
  }

  v5 = v4 - 9;
  if (v3 < 8)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1E0B74508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSIdentity.State.LockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSIdentity.State.LockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1E0B74734(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 216);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E0B74790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSIdentity.Config.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSIdentity.Config.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSIdentity.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AKSIdentity.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E0B74B10(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1E0B74BA0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AKSHandle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSHandle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E0B74E04()
{
  result = qword_1ECE78AE0;
  if (!qword_1ECE78AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AE0);
  }

  return result;
}

unint64_t sub_1E0B74E5C()
{
  result = qword_1ECE78AE8;
  if (!qword_1ECE78AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AE8);
  }

  return result;
}

unint64_t sub_1E0B74EB4()
{
  result = qword_1ECE78AF0;
  if (!qword_1ECE78AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AF0);
  }

  return result;
}

unint64_t sub_1E0B74F0C()
{
  result = qword_1ECE78AF8;
  if (!qword_1ECE78AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AF8);
  }

  return result;
}

unint64_t sub_1E0B74F64()
{
  result = qword_1ECE78B00;
  if (!qword_1ECE78B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B00);
  }

  return result;
}

unint64_t sub_1E0B74FBC()
{
  result = qword_1ECE78B08;
  if (!qword_1ECE78B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B08);
  }

  return result;
}

unint64_t sub_1E0B75014()
{
  result = qword_1ECE78B10;
  if (!qword_1ECE78B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B10);
  }

  return result;
}

unint64_t sub_1E0B7506C()
{
  result = qword_1ECE78B18;
  if (!qword_1ECE78B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B18);
  }

  return result;
}

unint64_t sub_1E0B750C4()
{
  result = qword_1ECE78B20;
  if (!qword_1ECE78B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B20);
  }

  return result;
}

unint64_t sub_1E0B7511C()
{
  result = qword_1ECE78B28;
  if (!qword_1ECE78B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B28);
  }

  return result;
}

unint64_t sub_1E0B75174()
{
  result = qword_1ECE78B30;
  if (!qword_1ECE78B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B30);
  }

  return result;
}

unint64_t sub_1E0B751CC()
{
  result = qword_1ECE78B38;
  if (!qword_1ECE78B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B38);
  }

  return result;
}

unint64_t sub_1E0B75224()
{
  result = qword_1ECE78B40;
  if (!qword_1ECE78B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B40);
  }

  return result;
}

unint64_t sub_1E0B7527C()
{
  result = qword_1ECE78B48;
  if (!qword_1ECE78B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B48);
  }

  return result;
}

unint64_t sub_1E0B752D4()
{
  result = qword_1ECE78B50;
  if (!qword_1ECE78B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B50);
  }

  return result;
}

unint64_t sub_1E0B7532C()
{
  result = qword_1ECE78B58;
  if (!qword_1ECE78B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B58);
  }

  return result;
}

unint64_t sub_1E0B75384()
{
  result = qword_1ECE78B60;
  if (!qword_1ECE78B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B60);
  }

  return result;
}

unint64_t sub_1E0B753DC()
{
  result = qword_1ECE78B68;
  if (!qword_1ECE78B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B68);
  }

  return result;
}

unint64_t sub_1E0B75434()
{
  result = qword_1ECE78B70;
  if (!qword_1ECE78B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B70);
  }

  return result;
}

unint64_t sub_1E0B7548C()
{
  result = qword_1ECE78B78;
  if (!qword_1ECE78B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B78);
  }

  return result;
}

unint64_t sub_1E0B754E4()
{
  result = qword_1ECE78B80;
  if (!qword_1ECE78B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B80);
  }

  return result;
}

unint64_t sub_1E0B7553C()
{
  result = qword_1ECE78B88;
  if (!qword_1ECE78B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B88);
  }

  return result;
}

unint64_t sub_1E0B75594()
{
  result = qword_1ECE78B90;
  if (!qword_1ECE78B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B90);
  }

  return result;
}

unint64_t sub_1E0B755EC()
{
  result = qword_1ECE78B98;
  if (!qword_1ECE78B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B98);
  }

  return result;
}

unint64_t sub_1E0B75644()
{
  result = qword_1ECE78BA0;
  if (!qword_1ECE78BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BA0);
  }

  return result;
}

unint64_t sub_1E0B7569C()
{
  result = qword_1ECE78BA8;
  if (!qword_1ECE78BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BA8);
  }

  return result;
}

unint64_t sub_1E0B756F4()
{
  result = qword_1ECE78BB0;
  if (!qword_1ECE78BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BB0);
  }

  return result;
}

unint64_t sub_1E0B7574C()
{
  result = qword_1ECE78BB8;
  if (!qword_1ECE78BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BB8);
  }

  return result;
}

unint64_t sub_1E0B757A4()
{
  result = qword_1ECE78BC0;
  if (!qword_1ECE78BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BC0);
  }

  return result;
}

unint64_t sub_1E0B757FC()
{
  result = qword_1ECE78BC8;
  if (!qword_1ECE78BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BC8);
  }

  return result;
}

uint64_t sub_1E0B75850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746174536B636F6CLL && a2 == 0xE900000000000065 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66666F6B636162 && a2 == 0xE700000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x744164656C696166 && a2 == 0xEE007374706D6574 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69746172656E6567 && a2 == 0xEF65746174536E6FLL || (sub_1E0BA8E88() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB7210 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745365726F6DLL && a2 == 0xE900000000000065 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB71F0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4449555572657375 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E0BA8E88();

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

uint64_t sub_1E0B75B54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746F6C535350 && a2 == 0xE600000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E0BA8E88();

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

uint64_t sub_1E0B75CB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69;
  if (v4 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4466664F6B636162 && a2 == 0xEC00000079616C65 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB71F0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449555572657375 && a2 == 0xE800000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49555570756F7267 && a2 == 0xE900000000000044 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E0BB7230 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E0BB7250 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB7270 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E0BB7290 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB72B0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E0BB72D0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E0BB72F0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E0BB7310 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB7330 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E0BB6E50 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E0BB7350 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x544B454B646E6962 && a2 == 0xEB00000000424B6FLL || (sub_1E0BA8E88() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xE800000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6665526D6361 && a2 == 0xE600000000000000)
  {

    return 19;
  }

  else
  {
    v6 = sub_1E0BA8E88();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1E0B76324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0B7638C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E0B763D4()
{
  result = qword_1ECE78BD0;
  if (!qword_1ECE78BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BD0);
  }

  return result;
}

unint64_t sub_1E0B76428()
{
  result = qword_1ECE78BD8;
  if (!qword_1ECE78BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BD8);
  }

  return result;
}

unint64_t sub_1E0B7647C()
{
  result = qword_1ECE78BE0;
  if (!qword_1ECE78BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BE0);
  }

  return result;
}

unint64_t sub_1E0B764D0()
{
  result = qword_1ECE78BE8;
  if (!qword_1ECE78BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BE8);
  }

  return result;
}

unint64_t sub_1E0B76524()
{
  result = qword_1ECE78BF0;
  if (!qword_1ECE78BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BF0);
  }

  return result;
}

unint64_t sub_1E0B76578()
{
  result = qword_1ECE78BF8;
  if (!qword_1ECE78BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BF8);
  }

  return result;
}

uint64_t AKSError.hashValue.getter()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7CF0](v1);
  return sub_1E0BA8F98();
}

unint64_t sub_1E0B7686C()
{
  result = qword_1ECE78C58;
  if (!qword_1ECE78C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78C58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E0B76A20@<X0>(char *a2@<X8>)
{
  v3 = sub_1E0BA8DA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1E0B76A80@<X0>(char *a3@<X8>)
{
  v4 = sub_1E0BA8DA8();

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

uint64_t sub_1E0B76AE4(uint64_t a1)
{
  v2 = sub_1E0B76CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B76B20(uint64_t a1)
{
  v2 = sub_1E0B76CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSHandle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78C80, &qword_1E0BADDA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B76CFC();
  sub_1E0BA8FB8();
  v13 = v8;
  AKSHandle.description.getter();
  v12 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v11 = 1;
    sub_1E0BA8E38();
    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1E0B76CFC()
{
  result = qword_1ECE78C88;
  if (!qword_1ECE78C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78C88);
  }

  return result;
}

uint64_t AKSHandle.description.getter()
{
  v1 = *v0;
  if (qword_1ECE783B0 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C60 == v1)
  {
    return 0x654B6D6574737973;
  }

  if (qword_1ECE783B8 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C64 == v1)
  {
    return 0x796C6E4F64697575;
  }

  if (qword_1ECE783C0 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C68 == v1)
  {
    return 0x6F6F52736F63616DLL;
  }

  if (qword_1ECE783C8 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C6C == v1)
  {
    return 0x6E6F6973736573;
  }

  if (qword_1ECE783D0 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C70 == v1)
  {
    return 0x70756B636162;
  }

  if (qword_1ECE783D8 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C74 == v1)
  {
    return 6578530;
  }

  if (qword_1ECE783E0 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C78 == v1)
  {
    return 0x656369766564;
  }

  else
  {
    return sub_1E0BA8E78();
  }
}

void *sub_1E0B7718C@<X0>(void *result@<X0>, _DWORD *a2@<X1>, _DWORD *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

unint64_t sub_1E0B77204()
{
  result = qword_1ECE78C90;
  if (!qword_1ECE78C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78C90);
  }

  return result;
}

unint64_t sub_1E0B7725C()
{
  result = qword_1ECE78C98;
  if (!qword_1ECE78C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78C98);
  }

  return result;
}

unint64_t sub_1E0B772B4()
{
  result = qword_1ECE78CA0;
  if (!qword_1ECE78CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78CA0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1E0B77BDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for der_key(0);
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  return MEMORY[0x1E12E77D0](a3, a4, 2);
}

uint64_t sub_1E0B77C40@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1E0B77C98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t AKSRefKeyParam.hashValue.getter()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7CF0](v1);
  return sub_1E0BA8F98();
}

uint64_t AKSSystemKeyType.description.getter()
{
  result = 7039347;
  switch(*v0)
  {
    case 1:
      result = 7039349;
      break;
    case 2:
      result = 6580583;
      break;
    case 3:
      result = 7039329;
      break;
    case 4:
      result = 7039331;
      break;
    case 5:
      result = 7039343;
      break;
    case 6:
      result = 0x6E65766168;
      break;
    case 7:
      result = 29539;
      break;
    case 8:
      result = 7037284;
      break;
    case 9:
      result = 1801544819;
      break;
    case 0xA:
      result = 7037282;
      break;
    case 0xB:
      result = 1801544295;
      break;
    case 0xC:
      result = 6912101;
      break;
    case 0xD:
      result = 1802068836;
      break;
    case 0xE:
      result = 7038323;
      break;
    default:
      return result;
  }

  return result;
}

AppleKeyStore::AKSSystemKeyType_optional __swiftcall AKSSystemKeyType.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xF)
  {
    v2 = 15;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AKSSystemKeyGeneration.description.getter()
{
  v1 = 0x657474696D6D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6465736F706F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

AppleKeyStore::AKSSystemKeyGeneration_optional __swiftcall AKSSystemKeyGeneration.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1E0B77F5C()
{
  v1 = 0x657474696D6D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6465736F706F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t AKSSystemKeyOperation.description.getter()
{
  v1 = 0x74696D6D6F63;
  if (*v0 != 1)
  {
    v1 = 0x61726574696C626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1886221666;
  }
}

uint64_t sub_1E0B78018()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7D20](v1 + 1);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B78060(uint64_t a1)
{
  v2 = *v1;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7D20](v2 + 1);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B780A4()
{
  v1 = 0x74696D6D6F63;
  if (*v0 != 1)
  {
    v1 = 0x61726574696C626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1886221666;
  }
}

uint64_t AKSKeyClass.description.getter()
{
  result = 97;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 98;
      break;
    case 3:
      result = 99;
      break;
    case 4:
      result = 100;
      break;
    case 5:
      result = 101;
      break;
    case 6:
      result = 27489;
      break;
    case 7:
      result = 27491;
      break;
    case 8:
      result = 27492;
      break;
    case 9:
      result = 7695201;
      break;
    case 0xA:
      result = 7695203;
      break;
    case 0xB:
      result = 7695204;
      break;
    case 0xC:
      result = 1970301793;
      break;
    case 0xD:
      result = 102;
      break;
    case 0xE:
      result = 109;
      break;
    case 0xF:
      result = 28007;
      break;
    case 0x10:
      result = 27495;
      break;
    case 0x11:
      result = 30819;
      break;
    case 0x12:
      result = 7043171;
      break;
    case 0x13:
      result = 1969977443;
      break;
    case 0x14:
      result = 7695223;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

AppleKeyStore::AKSKeyClass_optional __swiftcall AKSKeyClass.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 0;
  v3 = 3;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
LABEL_11:
      v3 = v2;
      goto LABEL_12;
    case 3:
LABEL_12:
      *v1 = v3;
      break;
    case 4:
      *v1 = 4;
      break;
    case 5:
      *v1 = 5;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    default:
      *v1 = 21;
      break;
  }

  return rawValue;
}

uint64_t sub_1E0B78370(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1E0BA8F48();
  a3(v5);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B7840C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1E0BA8F48();
  a4(v6);
  return sub_1E0BA8F98();
}

uint64_t AKSRefKeyType.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x383637726562796BLL;
    v7 = 0x323031726562796BLL;
    if (v1 != 10)
    {
      v7 = 0x64696C61766E69;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x7461747365747461;
    v9 = 0x343833506365;
    if (v1 != 7)
    {
      v9 = 0x34383350616B70;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 7174515;
    v3 = 0x39313535326465;
    v4 = 0x363532506365;
    if (v1 != 4)
    {
      v4 = 0x36353250616B70;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x3535326576727563;
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
}

AppleKeyStore::AKSRefKeyType_optional __swiftcall AKSRefKeyType.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue > 5)
  {
    if (rawValue > 8)
    {
      switch(rawValue)
      {
        case 9:
          *v1 = 9;
          return rawValue;
        case 0xALL:
          *v1 = 10;
          return rawValue;
        case 0xFFFFFFFFLL:
          *v1 = 11;
          return rawValue;
      }

      goto LABEL_26;
    }

    if (rawValue == 6)
    {
      *v1 = 6;
    }

    else if (rawValue == 7)
    {
      *v1 = 7;
    }

    else
    {
      *v1 = 8;
    }
  }

  else
  {
    if (rawValue <= 2)
    {
      switch(rawValue)
      {
        case 0:
          *v1 = 0;
          return rawValue;
        case 1:
          *v1 = 1;
          return rawValue;
        case 2:
          *v1 = 2;
          return rawValue;
      }

LABEL_26:
      *v1 = 12;
      return rawValue;
    }

    if (rawValue == 3)
    {
      *v1 = 3;
    }

    else if (rawValue == 4)
    {
      *v1 = 4;
    }

    else
    {
      *v1 = 5;
    }
  }

  return rawValue;
}

uint64_t sub_1E0B78748()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7D20](qword_1E0BAE910[v1]);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B787D0(uint64_t a1)
{
  v2 = *v1;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7D20](qword_1E0BAE910[v2]);
  return sub_1E0BA8F98();
}

void *sub_1E0B78B98@<X0>(void *result@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t sub_1E0B78C00@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  switch(*a1)
  {
    case 1:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78408 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE78E40;
      goto LABEL_106;
    case 2:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78410 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE78E58;
      goto LABEL_106;
    case 3:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78428 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE78EA0;
      goto LABEL_106;
    case 4:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE783F8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE78E10;
      goto LABEL_106;
    case 5:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785E0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE793C8;
      goto LABEL_106;
    case 6:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785D8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE793B0;
      goto LABEL_106;
    case 7:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785F0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE793F8;
      goto LABEL_106;
    case 8:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785F8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79410;
      goto LABEL_106;
    case 9:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78630 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE794B8;
      goto LABEL_106;
    case 0xA:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78638 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE794D0;
      goto LABEL_106;
    case 0xB:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78640 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE794E8;
      goto LABEL_106;
    case 0xC:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78648 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79500;
      goto LABEL_106;
    case 0xD:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78650 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79518;
      goto LABEL_106;
    case 0xE:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785E8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE793E0;
      goto LABEL_106;
    case 0xF:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78540 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE791E8;
      goto LABEL_106;
    case 0x10:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78550 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79218;
      goto LABEL_106;
    case 0x11:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78568 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79260;
      goto LABEL_106;
    case 0x12:
      if (a2 != 2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78578 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79290;
      goto LABEL_106;
    case 0x13:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78580 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE792A8;
      goto LABEL_106;
    case 0x14:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78588 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE792C0;
      goto LABEL_106;
    case 0x15:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78570 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79278;
      goto LABEL_106;
    case 0x16:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78548 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79200;
      goto LABEL_106;
    case 0x17:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78660 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79548;
      goto LABEL_106;
    case 0x18:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78698 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE795F0;
      goto LABEL_106;
    case 0x19:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78600 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key(0);
      v5 = qword_1ECE79428;
      goto LABEL_106;
    default:
      if (a2 == 1)
      {
        if (qword_1ECE78418 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for der_key(0);
        v5 = qword_1ECE78E70;
LABEL_106:
        v6 = __swift_project_value_buffer(v4, v5);
        return sub_1E0B76324(v6, a3, type metadata accessor for der_key);
      }

      else
      {
LABEL_107:
        sub_1E0B67560();
        swift_allocError();
        *v8 = 10;
        return swift_willThrow();
      }
  }
}

uint64_t AKSRefKeyParams.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t AKSRefKeyParams.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1E0B794D0(_BYTE *a1, uint64_t a2)
{
  v21 = a2;
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for der_key(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20[-1] - v15;
  LOBYTE(v20[0]) = *a1;
  result = sub_1E0B78C00(v20, 2, &v20[-1] - v15);
  if (!v2)
  {
    v18 = v21 & 1;
    sub_1E0B76324(v16, v14, type metadata accessor for der_key);
    v20[0] = v18;
    sub_1E0BA8AD8();
    sub_1E0B67494(v14, v10, type metadata accessor for der_key);
    (*(v5 + 32))(&v10[*(v8 + 20)], v7, v4);
    swift_beginAccess();
    sub_1E0B64850(v10);
    sub_1E0B797D0(v10, type metadata accessor for DERDictionaryItem);
    swift_endAccess();
    return sub_1E0B797D0(v16, type metadata accessor for der_key);
  }

  return result;
}

uint64_t sub_1E0B797D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1E0B79830(_BYTE *a1)
{
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18[0] = *a1;
  sub_1E0B78C00(v18, 2, v13);
  if (!v2)
  {
    swift_beginAccess();
    v15 = *(v1 + 16);

    sub_1E0B64650(v15, v10);

    (*(v5 + 16))(v7, &v10[*(v8 + 20)], v4);
    sub_1E0BA8B78();
    sub_1E0B797D0(v10, type metadata accessor for DERDictionaryItem);
    sub_1E0B797D0(v13, type metadata accessor for der_key);
    return v19 != 0;
  }

  return v14;
}

uint64_t sub_1E0B79B28(_BYTE *a1, uint64_t a2)
{
  v20 = a2;
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for der_key(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19[-1] - v15;
  LOBYTE(v19[0]) = *a1;
  result = sub_1E0B78C00(v19, 0, &v19[-1] - v15);
  if (!v2)
  {
    sub_1E0B76324(v16, v14, type metadata accessor for der_key);
    v19[0] = v20;
    sub_1E0BA8AD8();
    sub_1E0B67494(v14, v10, type metadata accessor for der_key);
    (*(v5 + 32))(&v10[*(v8 + 20)], v7, v4);
    swift_beginAccess();
    sub_1E0B64850(v10);
    sub_1E0B797D0(v10, type metadata accessor for DERDictionaryItem);
    swift_endAccess();
    return sub_1E0B797D0(v16, type metadata accessor for der_key);
  }

  return result;
}

uint64_t sub_1E0B79E20(_BYTE *a1)
{
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17[0] = *a1;
  result = sub_1E0B78C00(v17, 0, v13);
  if (!v2)
  {
    swift_beginAccess();
    v15 = *(v1 + 16);

    sub_1E0B64650(v15, v10);

    (*(v5 + 16))(v7, &v10[*(v8 + 20)], v4);
    sub_1E0BA8B78();
    sub_1E0B797D0(v10, type metadata accessor for DERDictionaryItem);
    sub_1E0B797D0(v13, type metadata accessor for der_key);
    return v18;
  }

  return result;
}

uint64_t sub_1E0B7A10C(unsigned __int8 *a1, uint64_t a2)
{
  v74 = a2;
  v68 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E0BA8A88();
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78830, &unk_1E0BABD00);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v59 - v10;
  v11 = sub_1E0BA8AE8();
  v75 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  v20 = sub_1E0BA89F8();
  v79 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - v24;
  v26 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v78[0] = v29;
  v30 = v77;
  result = sub_1E0B78C00(v78, 1, v28);
  if (!v30)
  {
    v62 = v17;
    v60 = v14;
    v65 = v28;
    v66 = v23;
    v32 = v75;
    v67 = v25;
    v63 = v19;
    v64 = v11;
    v77 = v20;
    if (v29 == 1)
    {
      _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    }

    else if (v29)
    {
      _s13AppleKeyStore7AKSUUIDV17defaultIdentifier17SwiftASN1Internal0hF0VvgZ_0();
    }

    else
    {
      sub_1E0BA89E8();
    }

    v33 = sub_1E0BA8B08();
    v61 = *(v33 - 8);
    v34 = *(v61 + 56);
    v74 = v33;
    v34(v76, 1, 1);
    v35 = v66;
    _s13AppleKeyStore7AKSUUIDV17defaultIdentifier17SwiftASN1Internal0hF0VvgZ_0();
    v36 = sub_1E0BA89B8();
    v37 = *(v79 + 8);
    v79 += 8;
    v37(v35, v77);
    if (v36)
    {

      sub_1E0BA8A58();
      v38 = v62;
      sub_1E0BA8AD8();
      v73 = 0;
      v40 = v38;
      v41 = v76;
      v42 = v77;
    }

    else
    {
      v39 = v71;
      sub_1E0BA8C48();
      (v34)(v39, 0, 1, v74);
      v43 = v39;
      v41 = v76;
      sub_1E0B7A984(v43, v76);

      v44 = v60;
      sub_1E0BA8B68();
      v73 = 0;
      v42 = v77;
      v32 = v75;
      v40 = v44;
    }

    (*(v32 + 32))(v63, v40, v64);
    v45 = v70;
    sub_1E0B84AA4(v41, v70, &qword_1ECE78830, &unk_1E0BABD00);
    v46 = *(v61 + 48);
    v47 = v74;
    v48 = v46(v45, 1, v74);
    sub_1E0B84B0C(v45, &qword_1ECE78830, &unk_1E0BABD00);
    if (v48 == 1)
    {
      goto LABEL_14;
    }

    result = v46(v76, 1, v47);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v49 = v66;
      sub_1E0BA8AF8();
      sub_1E0B84B6C(&qword_1ECE78D18, MEMORY[0x1E69D4E28], MEMORY[0x1E69D4E30]);
      v50 = sub_1E0BA8CA8();
      v37(v49, v42);
      if (v50)
      {
LABEL_14:
        v51 = v63;
        v77 = v37;
        v52 = v65;
        v53 = v69;
        sub_1E0B76324(v65, v69, type metadata accessor for der_key);
        v54 = v75;
        v55 = v64;
        (*(v75 + 16))(v53 + *(v68 + 20), v51, v64);
        swift_beginAccess();
        sub_1E0B64850(v53);
        sub_1E0B797D0(v53, type metadata accessor for DERDictionaryItem);
        swift_endAccess();
        (*(v54 + 8))(v51, v55);
        v77(v67, v42);
        sub_1E0B797D0(v52, type metadata accessor for der_key);
        return sub_1E0B84B0C(v76, &qword_1ECE78830, &unk_1E0BABD00);
      }

      sub_1E0B67560();
      swift_allocError();
      *v56 = 10;
      swift_willThrow();
      (*(v75 + 8))(v63, v64);
      v57 = v65;
      v58 = v76;
      v37(v67, v42);
      sub_1E0B797D0(v57, type metadata accessor for der_key);
      return sub_1E0B84B0C(v58, &qword_1ECE78830, &unk_1E0BABD00);
    }
  }

  return result;
}

uint64_t sub_1E0B7A984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78830, &unk_1E0BABD00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1E0B7A9F4(_BYTE *a1)
{
  v67 = a1;
  v60 = sub_1E0BA8A88();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1E0BA89F8();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v65 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - v5;
  v7 = sub_1E0BA8B08();
  v63 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  v13 = sub_1E0BA8C28();
  v64 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68[0] = *v67;
  v22 = v69;
  sub_1E0B78C00(v68, 1, v21);
  if (!v22)
  {
    v55 = v10;
    v56 = v6;
    v57 = v12;
    v69 = v15;
    v67 = v13;
    v24 = v65;
    v23 = v66;
    swift_beginAccess();
    v25 = *(v23 + 16);

    sub_1E0B64650(v25, v18);

    v26 = v69;
    sub_1E0BA8C18();
    sub_1E0BA8AE8();
    sub_1E0BA8C08();
    sub_1E0BA8BE8();
    sub_1E0BA8C48();
    v66 = 0;

    v30 = v56;
    sub_1E0BA8AF8();
    _s13AppleKeyStore7AKSUUIDV17defaultIdentifier17SwiftASN1Internal0hF0VvgZ_0();
    v31 = sub_1E0BA89B8();
    v32 = *(v61 + 8);
    v33 = v24;
    v34 = v62;
    v32(v33, v62);
    v32(v30, v34);
    if (v31)
    {
      v35 = v63;
      v36 = v7;
      (*(v63 + 16))(v55, v57, v7);
      v38 = v59;
      v37 = v60;
      v39 = v66;
      sub_1E0BA8BB8();
      v66 = v39;
      if (v39)
      {
        v40 = *(v35 + 8);
        v6 = (v35 + 8);
        v40(v57, v36);
        (*(v64 + 8))(v26, v67);
        v27 = v66;
        sub_1E0B67560();
        swift_allocError();
        *v28 = 25;
        swift_willThrow();
        MEMORY[0x1E12E8B70](v27);
        sub_1E0B797D0(v18, type metadata accessor for DERDictionaryItem);
        sub_1E0B797D0(v21, type metadata accessor for der_key);
        return v6;
      }

      v65 = v21;
      v41 = sub_1E0BA8A68();
      v42 = v45;
      v44 = v46;
      v43 = v47;
      (*(v58 + 8))(v38, v37);
      swift_unknownObjectRetain();
    }

    else
    {
      v65 = v21;
      v41 = sub_1E0BA8BE8();
      v42 = v41 + 32;
      v43 = (2 * *(v41 + 16)) | 1;

      v44 = 0;
      v36 = v7;
    }

    if (v43)
    {
      sub_1E0BA8EA8();
      swift_unknownObjectRetain_n();
      v53 = swift_dynamicCastClass();
      if (!v53)
      {
        swift_unknownObjectRelease();
        v53 = MEMORY[0x1E69E7CC0];
      }

      v54 = *(v53 + 16);

      if (__OFSUB__(v43 >> 1, v44))
      {
        __break(1u);
      }

      else if (v54 == (v43 >> 1) - v44)
      {
        v6 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v50 = v64;
        v49 = v65;
        v51 = v67;
        v52 = v63;
        v26 = v69;
        if (v6)
        {
LABEL_18:
          swift_unknownObjectRelease();
          (*(v52 + 8))(v57, v36);
          (*(v50 + 8))(v26, v51);
          sub_1E0B797D0(v18, type metadata accessor for DERDictionaryItem);
          sub_1E0B797D0(v49, type metadata accessor for der_key);
          return v6;
        }

        v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      swift_unknownObjectRelease_n();
      v26 = v69;
    }

    sub_1E0B726FC(v41, v42, v44, v43);
    v6 = v48;
    v50 = v64;
    v49 = v65;
    v51 = v67;
    v52 = v63;
    goto LABEL_17;
  }

  return v6;
}

uint64_t sub_1E0B7B170()
{
  v2 = v0;
  v3 = sub_1E0BA8C28();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0BA8C18();
  swift_beginAccess();
  v9[5] = *(v2 + 16);
  sub_1E0B666F8();
  sub_1E0BA8C08();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1E0B67560();
    swift_allocError();
    *v7 = 22;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v1);
  }

  else
  {
    v2 = sub_1E0BA8BE8();
    (*(v4 + 8))(v6, v3);
  }

  return v2;
}

uint64_t AKSRefKeyParams.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1E0B7B344(int *a1, char *a2)
{
  v5 = sub_1E0BA8C28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1E0BA8C18();
  v19 = a2;
  sub_1E0B666F8();
  sub_1E0BA8C08();
  v10 = v2;
  if (v2)
  {
    sub_1E0B67560();
    swift_allocError();
    *v11 = 25;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v2);
  }

  else
  {
    v12 = sub_1E0BA8D18();
    *(v12 + 16) = 0x8000;
    bzero((v12 + 32), 0x8000uLL);
    v19 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E0BABE70;
    *(inited + 32) = v9;
    v18 = 0;
    v14 = sub_1E0BA8BE8();
    v10 = sub_1E0B84FE0(0x2Bu, inited, v14, &v18, &v19);

    if (v10)
    {

      sub_1E0B67560();
      swift_allocError();
      sub_1E0B676C8(v10, v15);
      swift_willThrow();
    }

    else if (v19)
    {
      v10 = v19;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }
  }

  (*(v6 + 8))(v8, v5);
  return v10;
}