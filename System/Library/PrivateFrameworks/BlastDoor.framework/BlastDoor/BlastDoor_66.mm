uint64_t sub_214603E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214603EE0(uint64_t a1)
{
  *(a1 + 8) = sub_214603F48(&qword_27C90CBE8, byte_2146FDA10);
  result = sub_214603F48(&qword_27C90CBA0, byte_2146FDA38);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214603F48(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_214603FB4(uint64_t a1)
{
  sub_2140863F0(319);
  if (v1 <= 0x3F)
  {
    sub_214086448();
    if (v2 <= 0x3F)
    {
      sub_214084AA4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *sub_214604060@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2145B089C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_21460424C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2146042C8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

id sub_2146040F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_21460443C(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t sub_21460413C(void *a1)
{
  v2 = sub_2146D86D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  sub_2146D86C8();
  sub_214069AD8();
  sub_2146D9DC8();
  LOBYTE(a1) = v7;
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t sub_21460424C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2146D8778();
  swift_allocObject();
  result = sub_2146D8718();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2146D89D8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2146042C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2146D8778();
  swift_allocObject();
  result = sub_2146D8718();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21460434C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_2146043B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_214643684(sub_21460441C, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_21460443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2146D9CC8();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != sub_2146D9CD8())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = sub_2146D9CE8();
        v12 = sub_2146D9CC8();
        result = sub_2146D9CD8();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = sub_2146D9CD8();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_214604548@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Alignment(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

uint64_t type metadata accessor for Alignment(uint64_t a1)
{
  result = qword_27C916B60;
  if (!qword_27C916B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2146045F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for Alignment(0) + 24));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460465C()
{
  v1 = v0 + *(type metadata accessor for Alignment(0) + 24);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146046D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_214604738(uint64_t a1)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2146047C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Alignment(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21460483C(uint64_t a1)
{
  v3 = *(type metadata accessor for Alignment(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_214604900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Alignment(0);
  v5 = a1 + *(result + 24);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_2146049C0(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Alignment(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_2145187C0;
  }

  return result;
}

uint64_t sub_214604A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Alignment(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_214604ACC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for Alignment(0) + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

void (*sub_214604B48(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for Alignment(0) + 24);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451ABE0;
}

uint64_t sub_214604BF4()
{
  sub_214604C9C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214604C48()
{
  sub_214604C9C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214604C9C()
{
  v1 = v0;
  v2 = sub_2146D8B08();
  v17 = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
  v4 = *(*(v2 - 8) + 16);
  v4(boxed_opaque_existential_0, v0, v2);
  sub_213FDC730(&v16, v15);
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v15, 0x6174614465736162, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v7 = type metadata accessor for Alignment(0);
  v8 = *(v7 + 20);
  v17 = v2;
  v9 = __swift_allocate_boxed_opaque_existential_0(&v16);
  v4(v9, v1 + v8, v2);
  sub_213FDC730(&v16, v15);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v15, 0xD000000000000010, 0x80000002147A53A0, v10);
  v11 = v1 + *(v7 + 24);
  if (*(v11 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v12 = *(v11 + 16);
    v17 = MEMORY[0x277D83B88];
    *&v16 = v12;
    sub_213FDC730(&v16, v15);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v15, 0xD000000000000011, 0x80000002147948E0, v13);
    return v5;
  }

  return result;
}

uint64_t sub_214604E94(uint64_t a1)
{
  *(a1 + 8) = sub_214604EFC(&qword_27C9070C8, asc_2146F96E0);
  result = sub_214604EFC(&qword_27C9070F0, byte_2146F9708);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214604EFC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Alignment(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_214604F68(uint64_t a1)
{
  sub_2146D8B08();
  if (v1 <= 0x3F)
  {
    sub_21451B744(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214604FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214605010(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214605068()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214605158@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 32);
  }

  return result;
}

uint64_t (*sub_2146051DC(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_21460528C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_214605328()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E10, qword_21476B1F0);
  sub_2142F0574();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t sub_214605524()
{
  sub_214605328();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146055B4()
{
  sub_214605328();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214605644()
{
  sub_214605714();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146056AC()
{
  sub_214605714();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214605714()
{
  v25 = sub_2146D8B88();
  v1 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = *(*v0 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v28 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v5, 0);
    v6 = v28;
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v23 = *(v7 + 56);
    v24 = v8;
    v22 = (v7 - 8);
    do
    {
      v10 = v25;
      v11 = v7;
      v24(v3, v9, v25);
      v12 = sub_2146D8B28();
      v14 = v13;
      (*v22)(v3, v10);
      *&v28 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21409FD08((v15 > 1), v16 + 1, 1);
        v6 = v28;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v9 += v23;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v28 = v6;
  sub_213FDC730(&v28, v27);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v18;
  sub_2140524DC(v27, 0xD000000000000011, 0x8000000214794960, isUniquelyReferenced_nonNull_native);
  return v26;
}

uint64_t sub_214605988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2146059D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_214605A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214605A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214605AB0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214605B08()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_214605C1C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214605CA4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_214605D40()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E68, &qword_2146F4810);
  sub_2142F07CC();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t sub_214605F3C()
{
  sub_214605D40();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214605FCC()
{
  sub_214605D40();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460605C()
{
  sub_21460612C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146060C4()
{
  sub_21460612C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460612C()
{
  v25 = sub_2146D8B88();
  v1 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = *(*v0 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v28 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v5, 0);
    v6 = v28;
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v23 = *(v7 + 56);
    v24 = v8;
    v22 = (v7 - 8);
    do
    {
      v10 = v25;
      v11 = v7;
      v24(v3, v9, v25);
      v12 = sub_2146D8B28();
      v14 = v13;
      (*v22)(v3, v10);
      *&v28 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21409FD08((v15 > 1), v16 + 1, 1);
        v6 = v28;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v9 += v23;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v28 = v6;
  sub_213FDC730(&v28, v27);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v18;
  sub_2140524DC(v27, 0xD000000000000011, 0x8000000214794960, isUniquelyReferenced_nonNull_native);
  return v26;
}

uint64_t sub_2146063A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146063FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214606420(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214606478()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_21460658C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214606614(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_2146066B0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BD0, &qword_2146F4700);
  sub_2142EF41C();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustAcceptEnvelopeV1Payload(uint64_t a1)
{
  result = qword_27C916B70;
  if (!qword_27C916B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146068F8()
{
  sub_2146066B0();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214606988()
{
  sub_2146066B0();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214606A18(uint64_t a1)
{
  sub_214606B28(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214606A6C(uint64_t a1)
{
  v1 = sub_2146D8B28();
  v8 = MEMORY[0x277D837D0];
  *&v7 = v1;
  *(&v7 + 1) = v2;
  sub_213FDC730(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v6, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_214606B28(uint64_t a1)
{
  v1 = sub_2146D8B28();
  v8 = MEMORY[0x277D837D0];
  *&v7 = v1;
  *(&v7 + 1) = v2;
  sub_213FDC730(&v7, v6);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v6, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  return v3;
}

unint64_t sub_214606BB4(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0F10();
  result = sub_2142F1784();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214606BE4(uint64_t a1)
{
  *(a1 + 8) = sub_214606C4C(&qword_27C906BE0, byte_2146F9780);
  result = sub_214606C4C(&qword_27C906C00, a1_29);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214606C4C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CircleTrustAcceptEnvelopeV1Payload(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214606CC8(uint64_t a1)
{
  result = sub_2146D8B88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_214606D34@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214606D58(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214606DB0()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_214606EC4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214606F4C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_214606FE8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C38, &qword_21476B570);
  sub_2142EF680();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustAckEnvelopeV1Payload(uint64_t a1)
{
  result = qword_27C916B80;
  if (!qword_27C916B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214607230()
{
  sub_214606FE8();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146072C0()
{
  sub_214606FE8();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214607350(uint64_t a1)
{
  v1 = sub_2146D8B28();
  v8 = MEMORY[0x277D837D0];
  *&v7 = v1;
  *(&v7 + 1) = v2;
  sub_213FDC730(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v6, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v4 = sub_2146D9468();

  return v4;
}

unint64_t sub_21460740C(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0E38();
  result = sub_2142F16AC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21460743C(uint64_t a1)
{
  *(a1 + 8) = sub_2146074A4(&qword_27C906C48, byte_2146F9820);
  result = sub_2146074A4(&qword_27C906C60, byte_2146F9848);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146074A4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CircleTrustAckEnvelopeV1Payload(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214607520@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214607544(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460759C()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_2146076B0(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214607738(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_2146077D4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C90, &qword_2146F4750);
  sub_2142EF890();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustDeclineEnvelopeV1Payload(uint64_t a1)
{
  result = qword_27C916B90;
  if (!qword_27C916B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214607A1C()
{
  sub_2146077D4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214607AAC()
{
  sub_2146077D4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214607B3C(uint64_t a1)
{
  v1 = sub_2146D8B28();
  v8 = MEMORY[0x277D837D0];
  *&v7 = v1;
  *(&v7 + 1) = v2;
  sub_213FDC730(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v6, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v4 = sub_2146D9468();

  return v4;
}

unint64_t sub_214607BF8(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0FE8();
  result = sub_2142F185C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214607C28(uint64_t a1)
{
  *(a1 + 8) = sub_214607C90(&qword_27C906CA0, aI_91);
  result = sub_214607C90(&qword_27C906CB8, byte_2146F98E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214607C90(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CircleTrustDeclineEnvelopeV1Payload(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214607D0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214607D30(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214607D88()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214607E54@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 256;
  *(v9 + 24) = 0;
  *(v8 + 16) = a2;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = 0;
  *(inited + 40) = v10;
  return sub_214042B80(inited, a4);
}

unint64_t sub_214607F44@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v3 + 16) = sub_214084D54;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2140676DC;
  *(v5 + 24) = 0;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214608030@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_2146080B0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21460811C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21460817C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146081E8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_214608248(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146082B4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_214608314(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460837C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_2146083DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214608448()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146084D4()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214608560()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146085EC()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214608660()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21460879C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214608824(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_2146088C0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CE8, &unk_21476B7A0);
  sub_2142EFAA0();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t sub_214608ABC()
{
  sub_2146088C0();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214608B4C()
{
  sub_2146088C0();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_214608BDC@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_214608E40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_214608ED8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214608FA0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146090F4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146091D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_21460923C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_2146092C4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

void sub_214609370(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_214609408(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146094D0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214609624(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214609708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_21460976C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_2146097F4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

uint64_t sub_2146098C4(int a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_214609960(int a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

void sub_2146099D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_214609A70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214609B38(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214609C8C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145D0344;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214609D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_214609DD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_214609E5C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145D04E0;
}

uint64_t sub_214609F08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v5 = a1 + *(result + 52);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_214609FC8(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_2145187C0;
  }

  return result;
}

uint64_t sub_21460A070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_21460A0D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

void (*sub_21460A150(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451ABE0;
}

void sub_21460A1FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21460A294(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21460A35C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21460A4B0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21460A594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_21460A5F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_21460A680(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

double sub_21460A72C()
{
  type metadata accessor for CircleTrustEnvelopeV1Payload(0);

  return result;
}

void sub_21460A760(uint64_t a1)
{
  v3 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 60);

  *(v1 + v3) = a1;
}

uint64_t sub_21460A860@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t sub_21460A894(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t sub_21460A93C()
{
  v1 = v0;
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v92 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = &v83 - v6;
  v91 = sub_2146D8B88();
  v90 = *(v91 - 8);
  v7 = MEMORY[0x28223BE20](v91);
  v88 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v83 - v9;
  v85 = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  MEMORY[0x28223BE20](v85);
  v86 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EncodedKeyPackage(0);
  v100 = *(v11 - 8);
  v101 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v104 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v83 - v14;
  v16 = type metadata accessor for KeyPackage(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v105 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D87D8();
  swift_allocObject();
  v19 = sub_2146D87C8();
  v84 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v20 = *(v1 + *(v84 + 60));
  v99 = *(v20 + 16);
  if (v99)
  {
    v21 = 0;
    v98 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = MEMORY[0x277D84F90];
    v96 = v15;
    v97 = v1;
    v94 = v17;
    v95 = v16;
    v93 = v20;
    while (v21 < *(v20 + 16))
    {
      v102 = v21;
      v103 = v22;
      v23 = v98 + *(v17 + 72) * v21;
      v24 = v105;
      sub_21460D910(v23, v105, type metadata accessor for KeyPackage);
      v25 = *(v24 + *(v16 + 20));
      v107 = *(v25 + 16);
      if (v107)
      {
        v26 = 0;
        v27 = (v25 + 56);
        v109 = MEMORY[0x277D84F90];
        v106 = v25;
        while (v26 < *(v25 + 16))
        {
          if (!*v27)
          {
            goto LABEL_32;
          }

          v28 = *(v27 - 3);
          v110 = *v27;

          swift_bridgeObjectRetain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
          sub_2142E562C();
          v29 = v19;
          v30 = sub_2146D87B8();
          v32 = v31;

          if (v2)
          {
            goto LABEL_33;
          }

          v108 = 0;
          sub_21402D9F8(v30, v32);
          v33 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_214095DAC(0, *(v109 + 2) + 1, 1, v109);
          }

          v35 = *(v109 + 2);
          v34 = *(v109 + 3);
          if (v35 >= v34 >> 1)
          {
            v109 = sub_214095DAC((v34 > 1), v35 + 1, 1, v109);
          }

          ++v26;

          sub_213FB54FC(v30, v32);
          v36 = v109;
          *(v109 + 2) = v35 + 1;
          v37 = &v36[24 * v35];
          *(v37 + 4) = v33;
          *(v37 + 5) = v30;
          *(v37 + 6) = v32;
          v27 += 5;
          v25 = v106;
          v19 = v29;
          v2 = v108;
          if (v107 == v26)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

      v109 = MEMORY[0x277D84F90];
LABEL_16:
      v38 = v105;
      v39 = v96;
      sub_21460D910(v105, v96, type metadata accessor for Alignment);
      v16 = v95;
      v40 = (v38 + *(v95 + 24));
      v41 = *v40;
      v42 = v40[1];
      v43 = v101;
      *(v39 + *(v101 + 20)) = v109;
      v44 = (v39 + *(v43 + 24));
      *v44 = v41;
      v44[1] = v42;
      sub_21460D910(v39, v104, type metadata accessor for EncodedKeyPackage);

      v22 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_214095D84(0, v22[2] + 1, 1, v22);
      }

      v45 = v97;
      v17 = v94;
      v47 = v22[2];
      v46 = v22[3];
      if (v47 >= v46 >> 1)
      {
        v22 = sub_214095D84((v46 > 1), v47 + 1, 1, v22);
      }

      v21 = v102 + 1;
      sub_21460D978(v39, type metadata accessor for EncodedKeyPackage);
      sub_21460D978(v105, type metadata accessor for KeyPackage);
      v22[2] = v47 + 1;
      sub_21460D9D8(v104, v22 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v47);
      v20 = v93;
      v1 = v45;
      if (v21 == v99)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_23:
  v48 = v90[2];
  v49 = v91;
  v48(v87, v1, v91);
  v50 = v84;
  sub_214090414(v1 + *(v84 + 20), v89);
  v48(v88, v1 + v50[6], v49);
  sub_214090414(v1 + v50[7], v92);
  v51 = v1 + v50[8];
  v52 = *(v51 + 24);
  if (!v52 || (v53 = v50, v54 = v1 + v50[9], (v55 = *(v54 + 24)) == 0) || (v56 = v1 + v53[12], (v57 = *(v56 + 24)) == 0) || (v58 = v1 + v53[13], (*(v58 + 24) & 1) != 0) || (v59 = v1 + v53[14], (v60 = *(v59 + 24)) == 0))
  {
LABEL_32:
    sub_2146DA018();
    __break(1u);
LABEL_33:
    swift_unexpectedError();
    __break(1u);
    goto LABEL_34;
  }

  v104 = *(v51 + 16);
  v106 = *(v54 + 16);
  v61 = v53[11];
  LODWORD(v103) = *(v1 + v53[10]);
  LODWORD(v105) = *(v1 + v61);
  v62 = *(v58 + 16);
  v107 = *(v56 + 16);
  v108 = v62;
  v109 = *(v59 + 16);
  v110 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C10, &unk_21476BCA0);
  v102 = v57;
  sub_21460DA3C();
  v63 = sub_2146D87B8();
  v99 = v64;
  v100 = v63;
  v101 = v19;
  if (!v2)
  {
    swift_bridgeObjectRelease_n();
    v65 = *(v1 + v53[16]);
    v66 = *(v1 + v53[17]);
    v67 = v90[4];
    v68 = v86;
    v69 = v91;
    v67(v86, v87, v91);
    v70 = v85;
    sub_214080CE0(v89, v68 + *(v85 + 20));
    v67((v68 + v70[6]), v88, v69);
    sub_214080CE0(v92, v68 + v70[7]);
    v71 = (v68 + v70[8]);
    *v71 = v104;
    v71[1] = v52;
    v72 = (v68 + v70[9]);
    *v72 = v106;
    v72[1] = v55;
    *(v68 + v70[10]) = v103;
    *(v68 + v70[11]) = v105;
    v73 = (v68 + v70[12]);
    v74 = v102;
    *v73 = v107;
    v73[1] = v74;
    v75 = v109;
    *(v68 + v70[13]) = v108;
    v76 = (v68 + v70[14]);
    *v76 = v75;
    v76[1] = v60;
    v77 = (v68 + v70[15]);
    v78 = v99;
    *v77 = v100;
    v77[1] = v78;
    *(v68 + v70[16]) = v65;
    *(v68 + v70[17]) = v66;

    v79 = sub_21460B370();

    sub_21460D978(v68, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);
    return v79;
  }

LABEL_34:

  sub_214082B3C(v92);
  v81 = v90[1];
  v82 = v91;
  v81(v88, v91);
  sub_214082B3C(v89);
  v81(v87, v82);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21460B370()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v78 - v6;
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v14 = sub_2146D8B28();
  v84 = MEMORY[0x277D837D0];
  *&v83 = v14;
  *(&v83 + 1) = v15;
  sub_213FDC730(&v83, v82);
  v16 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v16;
  sub_2140524DC(v82, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v18 = v9;
  v19 = v81;
  v20 = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  sub_214090414(v1 + v20[5], v7);
  v21 = *(v18 + 48);
  v22 = v21(v7, 1, v8);
  v80 = v18;
  if (v22 == 1)
  {
    sub_214082B3C(v7);
  }

  else
  {
    (*(v18 + 32))(v13, v7, v8);
    v78 = "lastObservedIndex";
    v23 = sub_2146D8B28();
    v84 = MEMORY[0x277D837D0];
    *&v83 = v23;
    *(&v83 + 1) = v24;
    sub_213FDC730(&v83, v82);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v19;
    sub_2140524DC(v82, 0xD000000000000017, v78 | 0x8000000000000000, v25);
    (*(v18 + 8))(v13, v8);
    v19 = v81;
  }

  v26 = sub_2146D8B28();
  v27 = MEMORY[0x277D837D0];
  v84 = MEMORY[0x277D837D0];
  *&v83 = v26;
  *(&v83 + 1) = v28;
  sub_213FDC730(&v83, v82);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v19;
  sub_2140524DC(v82, 0xD000000000000010, 0x8000000214794920, v29);
  v30 = v81;
  sub_214090414(v1 + v20[7], v5);
  if (v21(v5, 1, v8) == 1)
  {
    sub_214082B3C(v5);
  }

  else
  {
    v32 = v79;
    v31 = v80;
    (*(v80 + 32))(v79, v5, v8);
    v33 = sub_2146D8B28();
    v84 = v27;
    *&v83 = v33;
    *(&v83 + 1) = v34;
    sub_213FDC730(&v83, v82);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v30;
    sub_2140524DC(v82, 0xD000000000000015, 0x8000000214794940, v35);
    (*(v31 + 8))(v32, v8);
    v30 = v81;
  }

  v36 = (v1 + v20[8]);
  v37 = *v36;
  v38 = v36[1];
  v84 = v27;
  *&v83 = v37;
  *(&v83 + 1) = v38;
  sub_213FDC730(&v83, v82);

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v30;
  sub_2140524DC(v82, 0x6C65646F6DLL, 0xE500000000000000, v39);
  v40 = v81;
  v41 = (v1 + v20[9]);
  v42 = *v41;
  v43 = v41[1];
  v84 = v27;
  *&v83 = v42;
  *(&v83 + 1) = v43;
  sub_213FDC730(&v83, v82);

  v44 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v40;
  sub_2140524DC(v82, 0x65566D6574737973, 0xED00006E6F697372, v44);
  v45 = v81;
  v46 = *(v1 + v20[10]);
  v47 = MEMORY[0x277D84CC0];
  v84 = MEMORY[0x277D84CC0];
  LODWORD(v83) = v46;
  sub_213FDC730(&v83, v82);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v45;
  sub_2140524DC(v82, 0x6449726F646E6576, 0xE800000000000000, v48);
  v49 = v81;
  v50 = *(v1 + v20[11]);
  v84 = v47;
  LODWORD(v83) = v50;
  sub_213FDC730(&v83, v82);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v49;
  sub_2140524DC(v82, 0x49746375646F7270, 0xE900000000000064, v51);
  v52 = v81;
  v53 = (v1 + v20[12]);
  v54 = *v53;
  v55 = v53[1];
  v84 = v27;
  *&v83 = v54;
  *(&v83 + 1) = v55;
  sub_213FDC730(&v83, v82);

  v56 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v52;
  sub_2140524DC(v82, 0x614E6E6F63616562, 0xEA0000000000656DLL, v56);
  v57 = v81;
  v58 = *(v1 + v20[13]);
  v59 = MEMORY[0x277D83B88];
  v84 = MEMORY[0x277D83B88];
  *&v83 = v58;
  sub_213FDC730(&v83, v82);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v57;
  sub_2140524DC(v82, 1701605234, 0xE400000000000000, v60);
  v61 = v81;
  v62 = (v1 + v20[14]);
  v63 = *v62;
  v64 = v62[1];
  v84 = v27;
  *&v83 = v63;
  *(&v83 + 1) = v64;
  sub_213FDC730(&v83, v82);

  v65 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v61;
  sub_2140524DC(v82, 0x696A6F6D65, 0xE500000000000000, v65);
  v66 = v81;
  v67 = (v1 + v20[15]);
  v68 = *v67;
  v69 = v67[1];
  v84 = MEMORY[0x277CC9318];
  *&v83 = v68;
  *(&v83 + 1) = v69;
  sub_213FDC730(&v83, v82);
  sub_21402D9F8(v68, v69);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v66;
  sub_2140524DC(v82, 0x616B63615079656BLL, 0xEB00000000736567, v70);
  v71 = v81;
  v72 = *(v1 + v20[16]);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D40, &qword_2146F47A0);
  *&v83 = v72;
  sub_213FDC730(&v83, v82);

  v73 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v71;
  sub_2140524DC(v82, 0x5064657473757274, 0xEC00000073726565, v73);
  v74 = v81;
  v75 = *(v1 + v20[17]);
  v84 = v59;
  *&v83 = v75;
  sub_213FDC730(&v83, v82);
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v74;
  sub_2140524DC(v82, 0x7079546572616873, 0xE900000000000065, v76);
  return v81;
}

uint64_t sub_21460BB08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21460BB70(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21460BC10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_214090414(v4, a2);
}

uint64_t sub_21460BC74(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_21460D13C(a1, v4);
}

uint64_t sub_21460BD1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_2146D8B88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21460BDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_2146D8B88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21460BE98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_214090414(v4, a2);
}

uint64_t sub_21460BEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 28);

  return sub_21460D13C(a1, v4);
}

uint64_t sub_21460BF8C()
{
  v1 = *(v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 32));

  return v1;
}

void sub_21460BFCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21460C05C()
{
  v1 = *(v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 36));

  return v1;
}

void sub_21460C09C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21460C150(int a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_21460C1EC(int a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_21460C264()
{
  v1 = *(v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 48));

  return v1;
}

void sub_21460C2A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21460C358(uint64_t a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_21460C3D0()
{
  v1 = *(v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 56));

  return v1;
}

void sub_21460C410(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 56));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21460C4A0()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 60);
  v2 = *v1;
  sub_21402D9F8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_21460C4E4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 60);
  result = sub_213FB54FC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

double sub_21460C58C(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

void sub_21460C5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 64);

  *(v2 + v4) = a1;
}

uint64_t sub_21460C690(uint64_t a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

unint64_t sub_21460C708(char a1)
{
  result = 0x6564496572616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 0x614E6E6F63616562;
      break;
    case 9:
      result = 1701605234;
      break;
    case 10:
      result = 0x696A6F6D65;
      break;
    case 11:
      result = 0x616B63615079656BLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    case 13:
      result = 0x7079546572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21460C8C4(uint64_t a1)
{
  v2 = sub_21460D1CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21460C900(uint64_t a1)
{
  v2 = sub_21460D1CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21460C93C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916BA0, &unk_21476B7B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21460D1CC();
  sub_2146DAA28();
  LOBYTE(v13) = 0;
  sub_2146D8B88();
  sub_21460D220(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
    LOBYTE(v13) = 1;
    sub_2146DA308();
    LOBYTE(v13) = 2;
    sub_2146DA388();
    LOBYTE(v13) = 3;
    sub_2146DA308();
    LOBYTE(v13) = 4;
    sub_2146DA328();
    LOBYTE(v13) = 5;
    sub_2146DA328();
    LOBYTE(v13) = 6;
    sub_2146DA3D8();
    LOBYTE(v13) = 7;
    sub_2146DA3D8();
    LOBYTE(v13) = 8;
    sub_2146DA328();
    LOBYTE(v13) = 9;
    sub_2146DA368();
    LOBYTE(v13) = 10;
    sub_2146DA328();
    v10 = (v3 + *(v9 + 60));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 11;
    sub_21402D9F8(v13, v11);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v13, v14);
    v13 = *(v3 + *(v9 + 64));
    v15 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D40, &qword_2146F47A0);
    sub_2142EFF80();
    sub_2146DA388();
    LOBYTE(v13) = 13;
    sub_2146DA368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21460CDC0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_21460CE30(uint64_t (*a1)(void))
{
  a1();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460CF40()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916BB0, &qword_21476B7C0);
  *&v11 = v1;
  sub_213FDC730(&v11, v10);

  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v6 = MEMORY[0x277D83B88];
  v12 = MEMORY[0x277D83B88];
  *&v11 = v2;
  sub_213FDC730(&v11, v10);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 84, 0xE100000000000000, v7);
  v12 = v6;
  *&v11 = v3;
  sub_213FDC730(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 86, 0xE100000000000000, v8);
  return v4;
}

uint64_t sub_21460D05C()
{
  sub_21460CF40();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460D0CC()
{
  sub_21460CF40();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460D13C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21460D1CC()
{
  result = qword_27C916BA8;
  if (!qword_27C916BA8)
  {
    result = swift_getWitnessTable(byte_21476BC44, &type metadata for CircleTrustEnvelopeV1Payload_Encoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916BA8);
  }

  return result;
}

uint64_t sub_21460D220(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21460D268(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0D60();
  result = sub_2142F15D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21460D29C()
{
  result = qword_27C916BB8;
  if (!qword_27C916BB8)
  {
    result = swift_getWitnessTable(byte_21476B814, &type metadata for CircleTrustEnvelopeV1Payload.ShareType, v0, v1);
    atomic_store(result, &qword_27C916BB8);
  }

  return result;
}

uint64_t sub_21460D2F0(uint64_t a1)
{
  *(a1 + 8) = sub_21460D220(&qword_27C906CF8, type metadata accessor for CircleTrustEnvelopeV1Payload, byte_2146F9960);
  result = sub_21460D220(&qword_27C906D10, type metadata accessor for CircleTrustEnvelopeV1Payload, aQ_39);
  *(a1 + 16) = result;
  return result;
}

void sub_21460D3AC(uint64_t a1)
{
  sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    sub_21460D5B8(319, &qword_280B353F8, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_21460D56C(319, &qword_280B2E578, MEMORY[0x277D837D0], v2);
      if (v5 <= 0x3F)
      {
        sub_21460D56C(319, &qword_27C9050E0, MEMORY[0x277D83B88], v4);
        if (v6 <= 0x3F)
        {
          sub_21460D5B8(319, &qword_27C916BD0, type metadata accessor for KeyPackage, MEMORY[0x277D83940]);
          if (v7 <= 0x3F)
          {
            sub_21460D5B8(319, &qword_27C916BD8, type metadata accessor for PeerTrustEnvelopeV1, MEMORY[0x277D83940]);
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21460D56C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for Validated(0, a3, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21460D5B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21460D654(uint64_t a1)
{
  sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    sub_21460D5B8(319, &qword_280B353F8, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21460D5B8(319, &qword_27C916BD8, type metadata accessor for PeerTrustEnvelopeV1, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21460D7B8()
{
  result = qword_27C916BF0;
  if (!qword_27C916BF0)
  {
    result = swift_getWitnessTable(byte_21476BC1C, &type metadata for CircleTrustEnvelopeV1Payload_Encoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916BF0);
  }

  return result;
}

unint64_t sub_21460D810()
{
  result = qword_27C916BF8;
  if (!qword_27C916BF8)
  {
    result = swift_getWitnessTable(byte_21476BB8C, &type metadata for CircleTrustEnvelopeV1Payload_Encoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916BF8);
  }

  return result;
}

unint64_t sub_21460D868()
{
  result = qword_27C916C00;
  if (!qword_27C916C00)
  {
    result = swift_getWitnessTable(asc_21476BBB4, &type metadata for CircleTrustEnvelopeV1Payload_Encoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916C00);
  }

  return result;
}

unint64_t sub_21460D8BC()
{
  result = qword_27C916C08;
  if (!qword_27C916C08)
  {
    result = swift_getWitnessTable(asc_21476B87C, &type metadata for CircleTrustEnvelopeV1Payload.ShareType, v0, v1);
    atomic_store(result, &qword_27C916C08);
  }

  return result;
}

uint64_t sub_21460D910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21460D978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21460D9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodedKeyPackage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21460DA3C()
{
  result = qword_27C916C18;
  if (!qword_27C916C18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C916C10, &unk_21476BCA0);
    v4[0] = sub_21460D220(&qword_27C916C20, type metadata accessor for EncodedKeyPackage, byte_21476C83C);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C916C18);
  }

  return result;
}

uint64_t sub_21460DAF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21460DB1C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460DB74()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_21460DC88(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_21460DD10(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_21460DDAC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DA0, qword_21476BCB0);
  sub_2142F01B4();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t sub_21460DFA8()
{
  sub_21460DDAC();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460E038()
{
  sub_21460DDAC();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460E0C8()
{
  sub_21460E198();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460E130()
{
  sub_21460E198();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460E198()
{
  v25 = sub_2146D8B88();
  v1 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = *(*v0 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v28 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v5, 0);
    v6 = v28;
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v23 = *(v7 + 56);
    v24 = v8;
    v22 = (v7 - 8);
    do
    {
      v10 = v25;
      v11 = v7;
      v24(v3, v9, v25);
      v12 = sub_2146D8B28();
      v14 = v13;
      (*v22)(v3, v10);
      *&v28 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21409FD08((v15 > 1), v16 + 1, 1);
        v6 = v28;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v9 += v23;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v28 = v6;
  sub_213FDC730(&v28, v27);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v18;
  sub_2140524DC(v27, 0xD000000000000011, 0x8000000214794960, isUniquelyReferenced_nonNull_native);
  return v26;
}

uint64_t sub_21460E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21460E468@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21460E48C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460E4E4()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_21460E5F8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_21460E680(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_21460E71C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EC0, &qword_21476BDF0);
  sub_2142F0A00();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for DelegatedCircleTrustStopEnvelopeV1Payload(uint64_t a1)
{
  result = qword_27C916C28;
  if (!qword_27C916C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21460E964()
{
  sub_21460E71C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460E9F4()
{
  sub_21460E71C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21460EA84(uint64_t a1)
{
  v1 = sub_2146D8B28();
  v8 = MEMORY[0x277D837D0];
  *&v7 = v1;
  *(&v7 + 1) = v2;
  sub_213FDC730(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v6, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v4 = sub_2146D9468();

  return v4;
}

unint64_t sub_21460EB40(uint64_t a1)
{
  *(a1 + 8) = sub_2142F1348();
  result = sub_2142F1BBC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21460EB70(uint64_t a1)
{
  *(a1 + 8) = sub_21460EBD8(&qword_27C906ED0, asc_2146F9BE0);
  result = sub_21460EBD8(&qword_27C906EE8, byte_2146F9C08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21460EBD8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1Payload(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21460ECD4(uint64_t a1)
{
  *(a1 + 8) = sub_2143201D8();
  result = sub_21431FAA0();
  *(a1 + 16) = result;
  return result;
}

uint64_t FindMyMessage.$V.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 FindMyMessage.$V.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  return result;
}

uint64_t FindMyMessage.V.getter()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21460EDF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v230 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v232 = &v166 - v4;
  v231 = sub_2146D8B88();
  v166 = *(v231 - 8);
  v5 = MEMORY[0x28223BE20](v231);
  v228 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v229 = &v166 - v7;
  v213 = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  v212 = *(v213 - 8);
  v8 = MEMORY[0x28223BE20](v213);
  v227 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v226 = &v166 - v10;
  v243 = type metadata accessor for EncodedKeyPackage(0);
  v242 = *(v243 - 8);
  v11 = MEMORY[0x28223BE20](v243);
  v252 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v251 = &v166 - v13;
  v253 = type metadata accessor for KeyPackage(0);
  v247 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v248 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v215 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v240 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = *v0;
  v200 = *(v0 + 3);
  v206 = v0[32];
  v16 = *(v0 + 5);
  v17 = *(v0 + 6);
  v18 = *(v0 + 7);
  v19 = *(v0 + 8);
  v20 = *(v0 + 12);
  v225 = *(v0 + 11);
  v204 = v20;
  v21 = *(v0 + 14);
  v203 = *(v0 + 13);
  v205 = v21;
  v202 = *(v0 + 15);
  v201 = *(v0 + 64);
  v22 = *(v0 + 18);
  v193 = *(v0 + 17);
  v171 = v22;
  v23 = *(v0 + 20);
  v170 = *(v0 + 19);
  v169 = v23;
  v168 = *(v0 + 21);
  v167 = *(v0 + 88);
  v24 = *(v0 + 24);
  v194 = *(v0 + 23);
  v176 = v24;
  v25 = *(v0 + 26);
  v175 = *(v0 + 25);
  v174 = v25;
  v173 = *(v0 + 27);
  v172 = *(v0 + 112);
  v26 = *(v0 + 30);
  v195 = *(v0 + 29);
  v181 = v26;
  v27 = *(v0 + 32);
  v180 = *(v0 + 31);
  v179 = v27;
  v178 = *(v0 + 33);
  v177 = *(v0 + 136);
  v28 = *(v0 + 36);
  v196 = *(v0 + 35);
  v184 = v28;
  v29 = *(v0 + 38);
  v183 = *(v0 + 37);
  v182 = v29;
  v216 = *(v0 + 39);
  v222 = *(v0 + 160);
  v30 = *(v0 + 42);
  v197 = *(v0 + 41);
  v187 = v30;
  v31 = *(v0 + 44);
  v186 = *(v0 + 43);
  v185 = v31;
  v223 = *(v0 + 45);
  v224 = *(v0 + 184);
  v32 = *(v0 + 48);
  v198 = *(v0 + 47);
  v191 = v32;
  v33 = *(v0 + 50);
  v190 = *(v0 + 49);
  v189 = v33;
  v188 = *(v0 + 51);
  v233 = *(v0 + 208);
  v34 = *(v0 + 54);
  v238 = *(v0 + 53);
  v35 = *(v0 + 56);
  v237 = *(v0 + 55);
  v236 = v35;
  v235 = *(v0 + 57);
  v234 = *(v0 + 232);
  sub_2146D87D8();
  swift_allocObject();
  v254 = sub_2146D87C8();
  v192 = v34;
  if (v16)
  {
    *&v260 = v16;
    sub_2142F139C(v16, v17, v18, v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907118, &qword_2146F48F0);
    sub_2142F1F70();
    v241 = sub_2146D87B8();
    v37 = v36;
    sub_2142F13DC(v16, v17, v18, v19);
  }

  else
  {
    v241 = 0;
    v37 = 0xC000000000000000;
  }

  v38 = v238;
  v39 = v237;
  v40 = v236;
  if (v225)
  {
    v214 = v37;
    v210 = *(v225 + 16);
    if (v210)
    {
      v211 = v225 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
      sub_2142F139C(v225, v204, v203, v205);
      v209 = (v166 + 16);
      v208 = (v166 + 56);
      v207 = (v166 + 32);

      v41 = 0;
      v42 = MEMORY[0x277D84F90];
      v43 = v248;
      while (1)
      {
        if (v41 >= *(v225 + 16))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v220 = v42;
        v44 = *(v215 + 72);
        v221 = v41;
        v45 = v240;
        sub_214612528(v211 + v44 * v41, v240, type metadata accessor for CircleTrustEnvelopeV1Payload);
        v46 = *(v45 + *(v239 + 60));
        v246 = *(v46 + 16);
        if (v246)
        {
          break;
        }

        v48 = MEMORY[0x277D84F90];
LABEL_29:
        v70 = *v209;
        v71 = v240;
        v72 = v231;
        (*v209)(v229, v240, v231);
        v73 = *v208;
        (*v208)(v232, 1, 1, v72);
        v74 = v239;
        v70(v228, v71 + *(v239 + 24), v72);
        v75 = v72;
        v76 = v74;
        v73(v230, 1, 1, v75);
        v77 = v71;
        v78 = v71 + v76[8];
        v79 = *(v78 + 24);
        if (!v79)
        {
          goto LABEL_63;
        }

        v80 = v77 + v76[9];
        v81 = *(v80 + 24);
        if (!v81)
        {
          goto LABEL_63;
        }

        v82 = v77 + v76[12];
        v83 = *(v82 + 24);
        if (!v83)
        {
          goto LABEL_63;
        }

        v84 = v77 + v76[13];
        if (*(v84 + 24))
        {
          goto LABEL_63;
        }

        v85 = v77 + v76[14];
        v86 = *(v85 + 24);
        if (!v86)
        {
          goto LABEL_63;
        }

        v245 = *(v78 + 16);
        v249 = *(v80 + 16);
        v87 = v76[11];
        LODWORD(v244) = *(v77 + v76[10]);
        LODWORD(v246) = *(v77 + v87);
        v250 = *(v82 + 16);
        v88 = *(v85 + 16);
        v255 = *(v84 + 16);
        v256 = v88;
        *&v260 = v48;
        v257 = v86;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C10, &unk_21476BCA0);
        v219 = v83;
        sub_21460DA3C();
        v218 = sub_2146D87B8();
        v89 = v81;
        v91 = v90;
        swift_bridgeObjectRelease_n();
        v92 = v76[17];
        v93 = *(v77 + v76[16]);
        v217 = *(v77 + v92);
        v94 = *v207;
        v95 = v226;
        v96 = v231;
        (*v207)(v226, v229, v231);
        v97 = v213;
        sub_214080CE0(v232, v95 + *(v213 + 20));
        v94(v95 + v97[6], v228, v96);
        sub_214080CE0(v230, v95 + v97[7]);
        v98 = (v95 + v97[8]);
        *v98 = v245;
        v98[1] = v79;
        v99 = (v95 + v97[9]);
        *v99 = v249;
        v99[1] = v89;
        *(v95 + v97[10]) = v244;
        *(v95 + v97[11]) = v246;
        v100 = (v95 + v97[12]);
        v101 = v219;
        *v100 = v250;
        v100[1] = v101;
        v102 = v256;
        *(v95 + v97[13]) = v255;
        v103 = (v95 + v97[14]);
        v104 = v257;
        *v103 = v102;
        v103[1] = v104;
        v105 = (v95 + v97[15]);
        *v105 = v218;
        v105[1] = v91;
        *(v95 + v97[16]) = v93;
        *(v95 + v97[17]) = v217;
        sub_214612528(v95, v227, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);

        v106 = v220;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_214095D5C(0, v106[2] + 1, 1, v106);
        }

        v43 = v248;
        v108 = v106[2];
        v107 = v106[3];
        v42 = v106;
        v109 = v221;
        if (v108 >= v107 >> 1)
        {
          v110 = sub_214095D5C((v107 > 1), v108 + 1, 1, v106);
          v109 = v221;
          v42 = v110;
        }

        sub_2146125F8(v226, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);
        v42[2] = v108 + 1;
        sub_214612590(v227, v42 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v108, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);
        sub_2146125F8(v240, type metadata accessor for CircleTrustEnvelopeV1Payload);
        v41 = v109 + 1;
        if (v109 + 1 == v210)
        {

          goto LABEL_42;
        }
      }

      v47 = 0;
      v245 = v46 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
      v48 = MEMORY[0x277D84F90];
      v244 = v46;
      while (1)
      {
        if (v47 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v249 = v47;
        v250 = v48;
        sub_214612528(v245 + *(v247 + 72) * v47, v43, type metadata accessor for KeyPackage);
        v49 = *(v43 + *(v253 + 20));
        v256 = *(v49 + 16);
        if (v256)
        {
          break;
        }

        v257 = MEMORY[0x277D84F90];
LABEL_22:
        v43 = v248;
        v60 = v251;
        sub_214612528(v248, v251, type metadata accessor for Alignment);
        v61 = v252;
        v62 = (v43 + *(v253 + 24));
        v63 = *v62;
        v64 = v62[1];
        v65 = v243;
        *(v60 + *(v243 + 20)) = v257;
        v66 = (v60 + *(v65 + 24));
        *v66 = v63;
        v66[1] = v64;
        sub_214612528(v60, v61, type metadata accessor for EncodedKeyPackage);

        v48 = v250;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_214095D84(0, v48[2] + 1, 1, v48);
        }

        v46 = v244;
        v67 = v249;
        v69 = v48[2];
        v68 = v48[3];
        if (v69 >= v68 >> 1)
        {
          v48 = sub_214095D84((v68 > 1), v69 + 1, 1, v48);
        }

        v47 = v67 + 1;
        sub_2146125F8(v251, type metadata accessor for EncodedKeyPackage);
        sub_2146125F8(v43, type metadata accessor for KeyPackage);
        v48[2] = v69 + 1;
        sub_214612590(v252, v48 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v69, type metadata accessor for EncodedKeyPackage);
        if (v47 == v246)
        {
          goto LABEL_29;
        }
      }

      v50 = 0;
      v51 = (v49 + 56);
      v257 = MEMORY[0x277D84F90];
      v255 = v49;
      while (v50 < *(v49 + 16))
      {
        if (!*v51)
        {
          goto LABEL_63;
        }

        v52 = *(v51 - 3);
        *&v260 = *v51;

        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
        sub_2146124AC(&qword_27C905990, &qword_27C905978, &qword_2146F3EF0, sub_214061684);
        v53 = sub_2146D87B8();
        v55 = v54;

        sub_21402D9F8(v53, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v257 = sub_214095DAC(0, *(v257 + 2) + 1, 1, v257);
        }

        v57 = *(v257 + 2);
        v56 = *(v257 + 3);
        if (v57 >= v56 >> 1)
        {
          v257 = sub_214095DAC((v56 > 1), v57 + 1, 1, v257);
        }

        ++v50;

        sub_213FB54FC(v53, v55);
        v58 = v257;
        *(v257 + 2) = v57 + 1;
        v59 = &v58[24 * v57];
        *(v59 + 4) = v52;
        *(v59 + 5) = v53;
        *(v59 + 6) = v55;
        v51 += 5;
        v49 = v255;
        if (v256 == v50)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    v42 = MEMORY[0x277D84F90];
LABEL_42:
    if (v206)
    {
      goto LABEL_63;
    }

    *&v260 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916BB0, &qword_21476B7C0);
    sub_214612658();
    v111 = sub_2146D87B8();
    v113 = v112;

    sub_2142F13DC(v225, v204, v203, v205);
    sub_213FB54FC(v241, v214);

    v241 = v111;
    v37 = v113;
    v38 = v238;
    v39 = v237;
    v40 = v236;
  }

  v114 = v193;
  if (v193)
  {
    v115 = v37;
    *&v260 = v193;
    v116 = v171;
    v117 = v170;
    v118 = v169;
    sub_2142F139C(v193, v171, v170, v169);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C38, &qword_21476B570);
    sub_2142EF680();
    v119 = sub_2146D87B8();
    v37 = v120;
    sub_213FB54FC(v241, v115);
    sub_2142F13DC(v114, v116, v117, v118);

    v241 = v119;
    v38 = v238;
    v39 = v237;
    v40 = v236;
  }

  v121 = v194;
  if (v194)
  {
    v122 = v37;
    *&v260 = v194;
    v123 = v176;
    v124 = v175;
    v125 = v174;
    sub_2142F139C(v194, v176, v175, v174);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BD0, &qword_2146F4700);
    sub_2142EF41C();
    v126 = sub_2146D87B8();
    v37 = v127;
    sub_213FB54FC(v241, v122);
    sub_2142F13DC(v121, v123, v124, v125);

    v241 = v126;
    v38 = v238;
    v39 = v237;
    v40 = v236;
  }

  v128 = v195;
  if (v195)
  {
    v129 = v37;
    *&v260 = v195;
    v130 = v181;
    v131 = v180;
    v132 = v179;
    sub_2142F139C(v195, v181, v180, v179);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C90, &qword_2146F4750);
    sub_2142EF890();
    v133 = sub_2146D87B8();
    v37 = v134;
    sub_213FB54FC(v241, v129);
    sub_2142F13DC(v128, v130, v131, v132);

    v241 = v133;
    v38 = v238;
    v39 = v237;
    v40 = v236;
  }

  v135 = v196;
  if (v196)
  {
    v214 = v37;
    *&v260 = v196;
    v136 = v184;
    v137 = v183;
    v138 = v182;
    sub_2142F139C(v196, v184, v183, v182);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E68, &qword_2146F4810);
    sub_2146124AC(&qword_27C906E88, &qword_27C906E68, &qword_2146F4810, sub_2142F0850);
    v139 = sub_2146D87B8();
    v37 = v140;
    sub_213FB54FC(v241, v214);
    sub_2142F13DC(v135, v136, v137, v138);

    v241 = v139;
    v38 = v238;
    v39 = v237;
    v40 = v236;
  }

  v141 = v197;
  if (v197)
  {
    v214 = v37;
    *&v260 = v197;
    v142 = v187;
    v143 = v186;
    v144 = v185;
    sub_2142F139C(v197, v187, v186, v185);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E10, qword_21476B1F0);
    sub_2146124AC(&qword_27C906E30, &qword_27C906E10, qword_21476B1F0, sub_2142F05F8);
    v145 = sub_2146D87B8();
    v37 = v146;
    sub_213FB54FC(v241, v214);
    sub_2142F13DC(v141, v142, v143, v144);

    v241 = v145;
    v38 = v238;
    v39 = v237;
    v40 = v236;
  }

  v147 = v198;
  if (v198)
  {
    v214 = v37;
    *&v260 = v198;
    v148 = v191;
    v149 = v190;
    v150 = v189;
    sub_2142F139C(v198, v191, v190, v189);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DA0, qword_21476BCB0);
    sub_2146124AC(&qword_27C906DC0, &qword_27C906DA0, qword_21476BCB0, sub_2142F0238);
    v151 = sub_2146D87B8();
    v37 = v152;
    sub_213FB54FC(v241, v214);
    sub_2142F13DC(v147, v148, v149, v150);

    v241 = v151;
    v38 = v238;
    v39 = v237;
    v40 = v236;
  }

  if (v38)
  {
    v153 = v37;
    *&v260 = v38;
    v154 = v192;
    sub_2142F139C(v38, v192, v39, v40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EC0, &qword_21476BDF0);
    sub_2142F0A00();
    v155 = sub_2146D87B8();
    v37 = v156;
    sub_213FB54FC(v241, v153);
    sub_2142F13DC(v38, v154, v39, v40);

    v157 = v155;
  }

  else
  {
    v157 = v241;
  }

  if ((v206 & 1) == 0)
  {
    *&v260 = v157;
    *(&v260 + 1) = v37;
    v261 = v199 + 1;
    v262 = v200;
    v158 = v37;
    sub_21402D9F8(v157, v37);
    sub_214612458();
    v159 = sub_2146D87B8();
    v262 = MEMORY[0x277CC9318];
    *&v260 = v159;
    *(&v260 + 1) = v160;
    sub_213FDC730(&v260, &v259);
    v161 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v258 = v161;
    sub_2140524DC(&v259, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);
    sub_213FB54FC(v157, v158);

    sub_213FB54FC(v157, v158);
    return v258;
  }

LABEL_63:
  sub_2146DA018();
  __break(1u);
  swift_unexpectedError();
  __break(1u);

  sub_214082B3C(v230);
  v164 = *(v166 + 8);
  v165 = v231;
  v164(v228, v231);
  sub_214082B3C(v232);
  v164(v229, v165);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

BlastDoor::FindMyMessage::ItemSharingCrossAccountMessageType_optional __swiftcall FindMyMessage.ItemSharingCrossAccountMessageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 9)
  {
    v2 = 9;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_214610BCC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 32))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 24);
  }

  return result;
}

uint64_t (*FindMyMessage.V.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 32))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 24);
    return sub_214610CD8;
  }

  return result;
}

uint64_t sub_214610D00(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  return result;
}

void (*FindMyMessage.$V.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214610E04;
}

void sub_214610E04(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    *(v3 + 33) = v8;
  }

  else
  {

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    *(v3 + 33) = v8;
  }

  free(v2);
}

uint64_t FindMyMessage.peerTrustAck.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 80);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.peerTrustAck.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrust.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 128);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.circleTrust.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
  result = *a1;
  *(v1 + 104) = *(a1 + 16);
  *(v1 + 88) = result;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustAck.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 176);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.circleTrustAck.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160));
  result = *a1;
  *(v1 + 152) = *(a1 + 16);
  *(v1 + 136) = result;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustAccept.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 224);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.circleTrustAccept.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208));
  result = *a1;
  *(v1 + 200) = *(a1 + 16);
  *(v1 + 184) = result;
  *(v1 + 216) = v3;
  *(v1 + 224) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustDecline.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  v6 = *(v1 + 264);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 272);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.circleTrustDecline.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 232), *(v1 + 240), *(v1 + 248), *(v1 + 256));
  result = *a1;
  *(v1 + 248) = *(a1 + 16);
  *(v1 + 232) = result;
  *(v1 + 264) = v3;
  *(v1 + 272) = v4;
  return result;
}

uint64_t FindMyMessage.circlesUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 288);
  v4 = *(v1 + 296);
  v5 = *(v1 + 304);
  v6 = *(v1 + 312);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 320);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.circlesUpdated.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 280), *(v1 + 288), *(v1 + 296), *(v1 + 304));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = v6;
  *(v1 + 312) = v3;
  *(v1 + 320) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustStopped.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  v3 = *(v1 + 336);
  v4 = *(v1 + 344);
  v5 = *(v1 + 352);
  v6 = *(v1 + 360);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 368);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.circleTrustStopped.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 328), *(v1 + 336), *(v1 + 344), *(v1 + 352));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 328) = *a1;
  *(v1 + 344) = v6;
  *(v1 + 360) = v3;
  *(v1 + 368) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 384);
  v4 = *(v1 + 392);
  v5 = *(v1 + 400);
  v6 = *(v1 + 408);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 416);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.circleTrustRequest.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 376), *(v1 + 384), *(v1 + 392), *(v1 + 400));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 376) = *a1;
  *(v1 + 392) = v6;
  *(v1 + 408) = v3;
  *(v1 + 416) = v4;
  return result;
}

uint64_t FindMyMessage.delegatedReunited.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 424);
  v3 = *(v1 + 432);
  v4 = *(v1 + 440);
  v5 = *(v1 + 448);
  v6 = *(v1 + 456);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 464);
  return sub_2142F139C(v2, v3, v4, v5);
}

__n128 FindMyMessage.delegatedReunited.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142F13DC(*(v1 + 424), *(v1 + 432), *(v1 + 440), *(v1 + 448));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 424) = *a1;
  *(v1 + 440) = v6;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  return result;
}

uint64_t sub_214611500()
{
  sub_21460EDF4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t FindMyMessage.bridgedToObjectiveC.getter()
{
  sub_21460EDF4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146115A8()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2146115DC(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2146116AC(uint64_t a1)
{
  v2 = sub_2146118EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146116E8(uint64_t a1)
{
  v2 = sub_2146118EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214611724(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C38, &qword_21476BF90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12[1] = v1[3];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21402D9F8(v7, v8);
  sub_2146118EC();
  sub_2146DAA28();
  v13 = v7;
  v14 = v8;
  v15 = 0;
  sub_214061684();
  v10 = v12[3];
  sub_2146DA388();
  sub_213FB54FC(v13, v14);
  if (!v10)
  {
    LOBYTE(v13) = 1;
    sub_2146DA368();
    LOBYTE(v13) = 2;
    sub_2146DA368();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2146118EC()
{
  result = qword_27C916C40;
  if (!qword_27C916C40)
  {
    result = swift_getWitnessTable(aY_41, &type metadata for FMMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916C40);
  }

  return result;
}

uint64_t sub_214611958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214611A28();
  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_2146119C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214611A28();
  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_214611A28()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v26 = MEMORY[0x277CC9318];
  *&v25 = v1;
  *(&v25 + 1) = v2;
  sub_213FDC730(&v25, &v23);
  sub_21402D9F8(v1, v2);
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v5;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(&v23, v24);
  MEMORY[0x28223BE20](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  sub_214611FC0(*v9, v9[1], 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native, &v22);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v11 = v22;
  v12 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83B88];
  *&v25 = v4;
  sub_213FDC730(&v25, &v23);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v11;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(&v23, v24);
  sub_2146121A4(*v14, 86, 0xE100000000000000, v13, &v22);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v15 = v22;
  v26 = v12;
  *&v25 = v3;
  sub_213FDC730(&v25, &v23);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v15;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(&v23, v24);
  sub_2146121A4(*v17, 84, 0xE100000000000000, v16, &v22);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  sub_214642720(v22);
  v19 = v18;

  return v19;
}

unint64_t sub_214611C2C()
{
  result = qword_27C916C48;
  if (!qword_27C916C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FindMyMessage.ItemSharingCrossAccountMessageType, &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType, v0, v1);
    atomic_store(result, &qword_27C916C48);
  }

  return result;
}

unint64_t sub_214611C80(uint64_t a1)
{
  *(a1 + 8) = sub_21432022C();
  result = sub_21431FAF4();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor22PeerTrustAckEnvelopeV1VSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214611CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 466))
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

uint64_t sub_214611D18(uint64_t result, int a2, int a3)
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
    *(result + 464) = 0;
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
      *(result + 466) = 1;
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

    *(result + 466) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214611DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_214611E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_214611EBC()
{
  result = qword_27C916C50;
  if (!qword_27C916C50)
  {
    result = swift_getWitnessTable(aTm, &type metadata for FMMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916C50);
  }

  return result;
}

unint64_t sub_214611F14()
{
  result = qword_27C916C58;
  if (!qword_27C916C58)
  {
    result = swift_getWitnessTable(byte_21476C418, &type metadata for FMMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916C58);
  }

  return result;
}

unint64_t sub_214611F6C()
{
  result = qword_27C916C60;
  if (!qword_27C916C60)
  {
    result = swift_getWitnessTable(byte_21476C440, &type metadata for FMMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916C60);
  }

  return result;
}

_OWORD *sub_214611FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277CC9318];
  v29 = MEMORY[0x277CC9318];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_21408C300(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_213FDC730(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_214483A90();
    goto LABEL_7;
  }

  sub_2140521F0(v16, a5 & 1);
  v22 = sub_21408C300(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_214612380(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v28);
}

_OWORD *sub_2146121A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_21408C300(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_213FDC730(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_214483A90();
    goto LABEL_7;
  }

  sub_2140521F0(v14, a4 & 1);
  v20 = sub_21408C300(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D83B88]);
  sub_2146122FC(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

_OWORD *sub_2146122FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_213FDC730(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_214612380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277CC9318];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_213FDC730(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_214612404()
{
  result = qword_27C916C68;
  if (!qword_27C916C68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FindMyMessage.ItemSharingCrossAccountMessageType, &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType, v0, v1);
    atomic_store(result, &qword_27C916C68);
  }

  return result;
}

unint64_t sub_214612458()
{
  result = qword_27C916C70;
  if (!qword_27C916C70)
  {
    result = swift_getWitnessTable(byte_21476C0C4, &type metadata for FMMessage, v0, v1);
    atomic_store(result, &qword_27C916C70);
  }

  return result;
}

uint64_t sub_2146124AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214612528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214612590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2146125F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214612658()
{
  result = qword_27C916C78;
  if (!qword_27C916C78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C916BB0, &qword_21476B7C0);
    v4[0] = sub_21461270C(&qword_27C916C80, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder, byte_21476B940);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C916C78);
  }

  return result;
}

uint64_t sub_21461270C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214612754@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904130, &unk_2146EAA90);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FB7988;
  v4[3] = 0;
  v4[4] = 3;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_213FB7994;
  v6[3] = 0;
  v6[4] = 512;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_2143A571C;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_214613C44;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140436F0(inited, a1);
}

uint64_t DecodedKey.$key.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 DecodedKey.$key.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

void DecodedKey.key.getter()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

void sub_214612A24(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_214612A8C(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void DecodedKey.key.setter(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 32);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 24) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*DecodedKey.key.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214612D08;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214612D08(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    v7 = *a1;
    v5 = *(v3 + 8);
    v8 = *(v3 + 32);
    v9 = 0x6E776F6E6B6E753CLL;
    v10 = 0xE90000000000003ELL;
    v11 = 0xD00000000000001CLL;
    v12 = 0x800000021478A360;
    if (v5(&v7, &v8, &v9))
    {

      *(v3 + 24) = v2;
      return;
    }

    goto LABEL_8;
  }

  v7 = *a1;
  v4 = *(v3 + 8);
  v8 = *(v3 + 32);
  v9 = 0x6E776F6E6B6E753CLL;
  v10 = 0xE90000000000003ELL;
  v11 = 0xD00000000000001CLL;
  v12 = 0x800000021478A360;

  if ((v4(&v7, &v8, &v9) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 24) = v2;
}

void sub_214612EE8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
}

void (*DecodedKey.$key.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_214612FF4;
}

void sub_214612FF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
  }

  else
  {

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
  }

  free(v2);
}

uint64_t sub_2146130B4()
{
  sub_2146131B4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t DecodedKey.bridgedToObjectiveC.getter()
{
  sub_2146131B4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146131B4()
{
  v1 = *v0;
  v2 = v0[3];
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  v13 = MEMORY[0x277D83B88];
  *&v12 = v1;
  sub_213FDC730(&v12, v11);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3;
  sub_2140524DC(v11, 0x7865646E69, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    *&v12 = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    v5 = sub_2146D87B8();
    v7 = v6;

    v13 = MEMORY[0x277CC9318];
    *&v12 = v5;
    *(&v12 + 1) = v7;
    sub_213FDC730(&v12, v11);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v11, 7955819, 0xE300000000000000, v8);

    return v10;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t EncodedKey.key.getter()
{
  v1 = *(v0 + 8);
  sub_21402D9F8(v1, *(v0 + 16));
  return v1;
}

uint64_t EncodedKey.key.setter(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_214613424(uint64_t a1)
{
  v2 = sub_214613638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214613460(uint64_t a1)
{
  v2 = sub_214613638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EncodedKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C88, &qword_21476C540);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v10[0] = *(v1 + 8);
  v7 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214613638();
  sub_2146DAA28();
  LOBYTE(v11) = 0;
  v8 = v10[1];
  sub_2146DA368();
  if (!v8)
  {
    v11 = v10[0];
    v12 = v7;
    v13 = 1;
    sub_21402D9F8(v10[0], v7);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v11, v12);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_214613638()
{
  result = qword_27C916C90;
  if (!qword_27C916C90)
  {
    result = swift_getWitnessTable(byte_21476C7A0, &type metadata for EncodedKey.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916C90);
  }

  return result;
}

uint64_t EncodedKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C98, &qword_21476C548);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214613638();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v12) = 0;
    v9 = sub_2146DA1A8();
    v13 = 1;
    sub_21406116C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21461387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21461395C();
  v3 = sub_2146D9468();

  return v3;
}

uint64_t EncodedKey.bridgedToObjectiveC.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21461395C();
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_21461395C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v10 = MEMORY[0x277D83B88];
  *&v9 = v1;
  sub_213FDC730(&v9, v8);
  sub_21402D9F8(v2, v3);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v8, 0x7865646E69, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v10 = MEMORY[0x277CC9318];
  *&v9 = v2;
  *(&v9 + 1) = v3;
  sub_213FDC730(&v9, v8);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v8, 7955819, 0xE300000000000000, v6);
  return v4;
}

unint64_t sub_214613A38(uint64_t a1)
{
  *(a1 + 8) = sub_2142F1D3C();
  result = sub_2142F1E14();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214613A78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214613ACC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_214613B40()
{
  result = qword_27C916CA0;
  if (!qword_27C916CA0)
  {
    result = swift_getWitnessTable(aQM_0, &type metadata for EncodedKey.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916CA0);
  }

  return result;
}

unint64_t sub_214613B98()
{
  result = qword_27C916CA8;
  if (!qword_27C916CA8)
  {
    result = swift_getWitnessTable(byte_21476C6E8, &type metadata for EncodedKey.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916CA8);
  }

  return result;
}

unint64_t sub_214613BF0()
{
  result = qword_27C916CB0;
  if (!qword_27C916CB0)
  {
    result = swift_getWitnessTable(byte_21476C710, &type metadata for EncodedKey.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916CB0);
  }

  return result;
}

uint64_t sub_214613C44(uint64_t *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5[2] = &v7;
  v6 = v3;
  return sub_214042508(sub_214613CA4, v5, v2) & 1;
}

uint64_t sub_214613CA4(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = **(v1 + 16);
  v7 = *a1;
  v4 = *(v3 + 16);
  v6 = v2;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_214613D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alignment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214613D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alignment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214613F3C()
{
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  v29 = type metadata accessor for KeyPackage(0);
  v30 = v0;
  v1 = *(v0 + *(v29 + 20));
  v33 = *(v1 + 16);
  if (v33)
  {
    v2 = 0;
    v31 = v1 + 32;
    v3 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v32 = *(v0 + *(v29 + 20));
    while (v2 < *(v1 + 16))
    {
      v5 = (v31 + 40 * v2);
      v6 = v5[3];
      if (!v6)
      {
        goto LABEL_22;
      }

      v7 = *(v6 + 16);
      v35 = *v5;

      if (v7)
      {

        v34 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2140961EC(0, *(v3 + 2) + 1, 1, v3);
        }

        v8 = (v6 + 40);
        do
        {
          v9 = *(v8 - 1);
          v10 = *v8;
          sub_21402D9F8(v9, *v8);
          v12 = *(v3 + 2);
          v11 = *(v3 + 3);
          if (v12 >= v11 >> 1)
          {
            v3 = sub_2140961EC((v11 > 1), v12 + 1, 1, v3);
          }

          v8 += 2;
          *(v3 + 2) = v12 + 1;
          v13 = &v3[16 * v12];
          *(v13 + 4) = v9;
          *(v13 + 5) = v10;
          --v7;
        }

        while (v7);

        v4 = v34;
      }

      *&v37 = v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
      sub_214615054(&qword_27C905990, &qword_27C905978, &qword_2146F3EF0, sub_214061684);
      v14 = sub_2146D87B8();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_214095DAC(0, *(v4 + 2) + 1, 1, v4);
      }

      v18 = *(v4 + 2);
      v17 = *(v4 + 3);
      if (v18 >= v17 >> 1)
      {
        v4 = sub_214095DAC((v17 > 1), v18 + 1, 1, v4);
      }

      ++v2;

      *(v4 + 2) = v18 + 1;
      v19 = &v4[24 * v18];
      *(v19 + 4) = v35;
      *(v19 + 5) = v14;
      *(v19 + 6) = v16;
      v1 = v32;
      if (v2 == v33)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    sub_2146DA018();
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_20:

    v38 = type metadata accessor for Alignment(0);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
    sub_214613D0C(v30, boxed_opaque_existential_0);
    sub_213FDC730(&v37, v36);
    v21 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v36, 0x6E656D6E67696C61, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916CC8, &qword_21476C7F8);
    *&v37 = v4;
    sub_213FDC730(&v37, v36);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v36, 1937335659, 0xE400000000000000, v23);
    v24 = (v30 + *(v29 + 24));
    v25 = *v24;
    v26 = v24[1];
    v38 = MEMORY[0x277D837D0];
    *&v37 = v25;
    *(&v37 + 1) = v26;
    sub_213FDC730(&v37, v36);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v36, 1701869940, 0xE400000000000000, v27);

    return v21;
  }

  return result;
}

double sub_2146143BC(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

void sub_214614430(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);

  *(v2 + v4) = a1;
}

uint64_t sub_2146144D4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

void sub_214614534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_2146145C8(uint64_t a1)
{
  v2 = sub_21461488C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214614604(uint64_t a1)
{
  v2 = sub_21461488C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214614640(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916CB8, &qword_21476C7F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21461488C();
  sub_2146DAA28();
  v13 = 0;
  type metadata accessor for Alignment(0);
  sub_214614C18(&qword_27C9070F0, type metadata accessor for Alignment, byte_2146F9708);
  sub_2146DA388();
  if (!v2)
  {
    v10[1] = *(v3 + *(type metadata accessor for EncodedKeyPackage(0) + 20));
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916CC8, &qword_21476C7F8);
    sub_214615054(&qword_27C916CD0, &qword_27C916CC8, &qword_21476C7F8, sub_2146148E0);
    sub_2146DA388();
    v11 = 2;
    sub_2146DA328();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_21461488C()
{
  result = qword_27C916CC0;
  if (!qword_27C916CC0)
  {
    result = swift_getWitnessTable(byte_21476C9A8, &type metadata for EncodedKeyPackage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916CC0);
  }

  return result;
}

unint64_t sub_2146148E0()
{
  result = qword_27C916CD8;
  if (!qword_27C916CD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EncodedKey, &type metadata for EncodedKey, v0, v1);
    atomic_store(result, &qword_27C916CD8);
  }

  return result;
}

uint64_t sub_214614964(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_2146149D4(uint64_t (*a1)(void))
{
  a1();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214614A2C()
{
  v1 = v0;
  v15 = type metadata accessor for Alignment(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
  sub_214613D0C(v0, boxed_opaque_existential_0);
  sub_213FDC730(&v14, v13);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v13, 0x6E656D6E67696C61, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  v5 = type metadata accessor for EncodedKeyPackage(0);
  v6 = *(v1 + *(v5 + 20));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916CC8, &qword_21476C7F8);
  *&v14 = v6;
  sub_213FDC730(&v14, v13);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v13, 1937335659, 0xE400000000000000, v7);
  v8 = (v1 + *(v5 + 24));
  v9 = *v8;
  v10 = v8[1];
  v15 = MEMORY[0x277D837D0];
  *&v14 = v9;
  *(&v14 + 1) = v10;
  sub_213FDC730(&v14, v13);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v13, 1701869940, 0xE400000000000000, v11);
  return v3;
}

uint64_t sub_214614B94(uint64_t a1)
{
  *(a1 + 8) = sub_214614C18(&qword_27C906D38, type metadata accessor for KeyPackage, protocol conformance descriptor for KeyPackage);
  result = sub_214614C18(&qword_27C906D70, type metadata accessor for KeyPackage, protocol conformance descriptor for KeyPackage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214614C18(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Alignment(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Alignment(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_214614E4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for Alignment(319);
  if (v7 <= 0x3F)
  {
    sub_214614EF0(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214614EF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2146D9978();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_214614F50()
{
  result = qword_27C916D10;
  if (!qword_27C916D10)
  {
    result = swift_getWitnessTable(aIM_5, &type metadata for EncodedKeyPackage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916D10);
  }

  return result;
}

unint64_t sub_214614FA8()
{
  result = qword_27C916D18;
  if (!qword_27C916D18)
  {
    result = swift_getWitnessTable(byte_21476C8F0, &type metadata for EncodedKeyPackage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916D18);
  }

  return result;
}

unint64_t sub_214615000()
{
  result = qword_27C916D20;
  if (!qword_27C916D20)
  {
    result = swift_getWitnessTable(byte_21476C918, &type metadata for EncodedKeyPackage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916D20);
  }

  return result;
}

uint64_t sub_214615054(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2146150D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_2146150FC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214615154()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_214615268(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_2146152F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_214615388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2146154A8();
  v6 = sub_2146D9468();

  return v6;
}

uint64_t sub_214615418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2146154A8();
  v6 = sub_2146D9468();

  return v6;
}

uint64_t sub_2146154A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907118, &qword_2146F48F0);
  sub_2142F1F70();
  v4 = sub_2146D87B8();
  v6 = v5;

  v14 = MEMORY[0x277CC9318];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_213FDC730(&v13, v12);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v14 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v13) = v1;
  sub_213FDC730(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 84, 0xE100000000000000, v9);
  if (v3)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D83B88];
    *&v13 = v2;
    sub_213FDC730(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 86, 0xE100000000000000, v10);

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for PeerTrustAckEnvelopeV1Payload(uint64_t a1)
{
  result = qword_27C916D28;
  if (!qword_27C916D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146156F0(uint64_t a1)
{
  sub_2146157F8(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214615744(uint64_t a1)
{
  v1 = sub_2146D8B28();
  v8 = MEMORY[0x277D837D0];
  *&v7 = v1;
  *(&v7 + 1) = v2;
  sub_213FDC730(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v6, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_2146157F8(uint64_t a1)
{
  v1 = sub_2146D8B28();
  v8 = MEMORY[0x277D837D0];
  *&v7 = v1;
  *(&v7 + 1) = v2;
  sub_213FDC730(&v7, v6);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v6, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  return v3;
}

unint64_t sub_21461587C(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0C88();
  result = sub_2142F14FC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146158AC(uint64_t a1)
{
  *(a1 + 8) = sub_214615914(&qword_27C907128, aI_93);
  result = sub_214615914(&qword_27C907140, byte_2146F9DE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214615914(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for PeerTrustAckEnvelopeV1Payload(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214615990@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v4 + 24) = 0;
  *(v3 + 16) = sub_21407B588;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2140676DC;
  *(v5 + 24) = 0;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214615A88(uint64_t a1)
{
  sub_214615B30(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214615ADC(uint64_t a1)
{
  sub_214615B30(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214615B30(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2146D8B28();
  v4 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D837D0];
  *&v24 = v3;
  *(&v24 + 1) = v5;
  sub_213FDC730(&v24, v23);
  v6 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v23, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v8 = type metadata accessor for PeerTrustEnvelopeV1(0);
  v9 = v2 + *(v8 + 20);
  v10 = *(v9 + 24);
  if (v10)
  {
    v11 = v8;
    v12 = *(v9 + 16);
    v25 = v4;
    *&v24 = v12;
    *(&v24 + 1) = v10;
    sub_213FDC730(&v24, v23);

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v23, 0xD000000000000011, 0x8000000214794A20, v13);
    v14 = (v2 + *(v11 + 24));
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v19 = *(v14 + 32);
    v25 = &type metadata for PeerTrustSharedSecret;
    v20 = swift_allocObject();
    *&v24 = v20;
    *(v20 + 16) = v16;
    *(v20 + 24) = v15;
    *(v20 + 32) = v17;
    *(v20 + 40) = v18;
    *(v20 + 48) = v19;
    sub_213FDC730(&v24, v23);

    sub_213FDCA18(v17, v18);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v23, 0x6553646572616873, 0xEC00000074657263, v21);
    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214615D18(uint64_t a1)
{
  *(a1 + 8) = sub_214615DCC(&qword_27C906D50, byte_2146F9E10);
  result = sub_214615DCC(&qword_27C906D80, byte_2146F9E38);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PeerTrustEnvelopeV1(uint64_t a1)
{
  result = qword_27C916D38;
  if (!qword_27C916D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214615DCC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for PeerTrustEnvelopeV1(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_214615E38(uint64_t a1)
{
  sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    sub_214426938(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214615EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21461602C();
  v5 = sub_2146D9468();

  return v5;
}

uint64_t sub_214615F34()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v12 = &type metadata for PeerTrustSharedSecretKey;
  v6 = swift_allocObject();
  *&v11 = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  sub_213FDC730(&v11, v10);

  sub_213FDCA18(v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 7955819, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v8 = sub_2146D9468();

  return v8;
}

uint64_t sub_21461602C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v12 = &type metadata for PeerTrustSharedSecretKey;
  v6 = swift_allocObject();
  *&v11 = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  sub_213FDC730(&v11, v10);

  sub_213FDCA18(v3, v4);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 7955819, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  return v7;
}

uint64_t sub_2146160F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2146161D0();
  v5 = sub_2146D9468();

  return v5;
}

uint64_t sub_214616160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2146161D0();
  v5 = sub_2146D9468();

  return v5;
}

uint64_t sub_2146161D0()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    v8 = MEMORY[0x277CC9318];
    *&v7 = v2;
    *(&v7 + 1) = v1;
    sub_213FDC730(&v7, v6);
    sub_21402D9F8(v2, v1);
    v3 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v6, 1635017060, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    return v3;
  }

  return result;
}

uint64_t sub_2146162F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214616364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMSGSMACharacteristic(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2146163D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMSGSMACharacteristic(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214616454(uint64_t a1)
{
  *(a1 + 8) = sub_214616508(&qword_27C909398, byte_2146FCE30);
  result = sub_214616508(&qword_27C9093C8, byte_2146FCE58);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for IMS3GPPExtCharacteristic(uint64_t a1)
{
  result = qword_27C916D48;
  if (!qword_27C916D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214616508(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IMS3GPPExtCharacteristic(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214616574(uint64_t a1)
{
  result = type metadata accessor for IMSGSMACharacteristic(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2146165E0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21461665C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146166E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21461672C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214616788@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146167D4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214616830@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 32;
  switch(result)
  {
    case 0:
      goto LABEL_49;
    case 1:
      v2 = 1;
      goto LABEL_49;
    case 2:
      v2 = 2;
      goto LABEL_49;
    case 3:
      v2 = 3;
      goto LABEL_49;
    case 4:
      v2 = 4;
      goto LABEL_49;
    case 5:
      v2 = 5;
      goto LABEL_49;
    case 6:
      v2 = 6;
      goto LABEL_49;
    case 7:
      v2 = 7;
      goto LABEL_49;
    case 8:
      v2 = 8;
      goto LABEL_49;
    case 9:
      v2 = 9;
      goto LABEL_49;
    case 10:
      v2 = 10;
      goto LABEL_49;
    case 11:
      v2 = 11;
      goto LABEL_49;
    case 12:
      v2 = 12;
      goto LABEL_49;
    case 13:
      v2 = 13;
      goto LABEL_49;
    case 14:
      v2 = 14;
      goto LABEL_49;
    case 15:
      v2 = 15;
      goto LABEL_49;
    case 16:
      v2 = 16;
      goto LABEL_49;
    case 17:
      v2 = 17;
      goto LABEL_49;
    case 18:
      v2 = 18;
      goto LABEL_49;
    case 19:
      v2 = 19;
      goto LABEL_49;
    case 20:
      v2 = 20;
      goto LABEL_49;
    case 21:
      v2 = 21;
      goto LABEL_49;
    case 22:
      v2 = 22;
      goto LABEL_49;
    case 23:
      v2 = 23;
      goto LABEL_49;
    case 24:
      v2 = 24;
      goto LABEL_49;
    case 25:
      v2 = 25;
      goto LABEL_49;
    case 26:
      v2 = 26;
      goto LABEL_49;
    case 27:
      v2 = 27;
      goto LABEL_49;
    case 28:
      v2 = 28;
      goto LABEL_49;
    case 29:
      v2 = 29;
      goto LABEL_49;
    case 30:
      v2 = 30;
      goto LABEL_49;
    case 31:
      v2 = 31;
LABEL_49:
      v3 = v2;
      goto LABEL_50;
    case 32:
LABEL_50:
      *a2 = v3;
      break;
    case 33:
      *a2 = 33;
      break;
    case 34:
      *a2 = 34;
      break;
    case 35:
      *a2 = 35;
      break;
    case 36:
      *a2 = 36;
      break;
    case 37:
      *a2 = 37;
      break;
    case 38:
      *a2 = 38;
      break;
    case 39:
      *a2 = 39;
      break;
    case 40:
      *a2 = 40;
      break;
    case 41:
      *a2 = 41;
      break;
    case 42:
      *a2 = 42;
      break;
    case 43:
      *a2 = 43;
      break;
    case 44:
      *a2 = 44;
      break;
    case 45:
      *a2 = 45;
      break;
    case 46:
      *a2 = 46;
      break;
    case 47:
      *a2 = 47;
      break;
    case 48:
      *a2 = 48;
      break;
    case 49:
      *a2 = 49;
      break;
    default:
      *a2 = 50;
      break;
  }

  return result;
}

void sub_214616B24(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214616C6C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214616D08(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

void sub_214616DA0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 48);
  v8 = *(v2 + 80);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214616EE8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214616F84(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

uint64_t sub_214617054()
{
  v1 = *(v0 + 88);
  sub_213FDCA18(v1, *(v0 + 96));
  return v1;
}

uint64_t sub_214617088(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

unint64_t sub_2146170E4()
{
  result = qword_27C916D58;
  if (!qword_27C916D58)
  {
    result = swift_getWitnessTable(aEm_4, &type metadata for IDSSessionCancel.IDSSessionEndedReason, v0, v1);
    atomic_store(result, &qword_27C916D58);
  }

  return result;
}

uint64_t sub_214617190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSSessionCancel.IDSSessionEndedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCF)
  {
    goto LABEL_17;
  }

  if (a2 + 49 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 49) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 49;
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

      return (*a1 | (v4 << 8)) - 49;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 49;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x32;
  v8 = v6 - 50;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSSessionCancel.IDSSessionEndedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 49) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCF)
  {
    v4 = 0;
  }

  if (a2 > 0xCE)
  {
    v5 = ((a2 - 207) >> 8) + 1;
    *result = a2 + 49;
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
    *result = a2 + 49;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21461732C()
{
  result = qword_27C916D60;
  if (!qword_27C916D60)
  {
    result = swift_getWitnessTable(aYem, &type metadata for IDSSessionCancel.IDSSessionEndedReason, v0, v1);
    atomic_store(result, &qword_27C916D60);
  }

  return result;
}

uint64_t sub_214617380@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2146173CC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

void sub_214617424()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

void sub_214617494(uint64_t a1)
{
  v7 = a1;
  v3 = *v1;
  v6 = *(v1 + 24);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2146175D0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_21408E22C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214617668(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_21408E5B4;
}

uint64_t sub_214617700()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_214617730(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_214617788@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RelayReachabilityRequest(0) + 24);

  return sub_214617818(v3, a1);
}

uint64_t type metadata accessor for RelayReachabilityRequest(uint64_t a1)
{
  result = qword_280B2EBD8;
  if (!qword_280B2EBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214617818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelayReachabilityContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21461787C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RelayReachabilityRequest(0) + 24);

  return sub_2146178C0(a1, v3);
}

uint64_t sub_2146178C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelayReachabilityContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21461796C(uint64_t a1)
{
  *(a1 + 8) = sub_2146179D4(&qword_27C916D68, asc_2146FBD00);
  result = sub_2146179D4(&qword_27C916D70, byte_2146FBD28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146179D4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RelayReachabilityRequest(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_214617A40(uint64_t a1)
{
  sub_214494944(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RelayReachabilityContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_214617ACC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 7107189;
  v4 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  if (v1)
  {
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = inited;

    v6 = sub_2140457C0(v5);
    swift_setDeallocating();
    sub_21404C938(v4);
    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_214617BD0()
{
  result = qword_27C916D78;
  if (!qword_27C916D78)
  {
    result = swift_getWitnessTable(byte_21476D1C8, &type metadata for WalletValidationError, v0, v1);
    atomic_store(result, &qword_27C916D78);
  }

  return result;
}

uint64_t sub_214617C24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_214617C7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_u64[1];

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214617CE4()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_214617D6C(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_214617E34(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A1B10;
  }

  return result;
}

void (*sub_214617ED4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1DC4;
}

unint64_t sub_214617F74(uint64_t a1)
{
  *(a1 + 8) = sub_214325264();
  result = sub_214325018();
  *(a1 + 16) = result;
  return result;
}

uint64_t StyleSheet.Color.init(red:green:blue:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t StyleSheet.Font.Specified.init(size:weight:style:variant:family:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 9) = v7;
  *(a6 + 10) = v8;
  *(a6 + 11) = v9;
  *(a6 + 16) = a5;
  return result;
}

BlastDoor::StyleSheet::TextAlign_optional __swiftcall StyleSheet.TextAlign.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.TextAlign.rawValue.getter()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_2146180B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1952867692;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1952867692;
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
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2146181A4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214618238(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2146182B8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214618354(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1952867692;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void StyleSheet.Font.Specified.size.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

BlastDoor::StyleSheet::Font::Weight_optional __swiftcall StyleSheet.Font.Weight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Weight.rawValue.getter()
{
  result = 0x6C616D726F6ELL;
  switch(*v0)
  {
    case 1:
      result = 1684828002;
      break;
    case 2:
      result = 0x7265646C6F62;
      break;
    case 3:
      result = 0x7265746867696CLL;
      break;
    case 4:
      result = 3158065;
      break;
    case 5:
      result = 3158066;
      break;
    case 6:
      result = 3158067;
      break;
    case 7:
      result = 3158068;
      break;
    case 8:
      result = 3158069;
      break;
    case 9:
      result = 3158070;
      break;
    case 0xA:
      result = 3158071;
      break;
    case 0xB:
      result = 3158072;
      break;
    case 0xC:
      result = 3158073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2146185F0()
{
  v0 = StyleSheet.Font.Weight.rawValue.getter();
  v2 = v1;
  if (v0 == StyleSheet.Font.Weight.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_21461868C()
{
  sub_2146DA958();
  StyleSheet.Font.Weight.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2146186F4(uint64_t a1)
{
  StyleSheet.Font.Weight.rawValue.getter();
  sub_2146D9698();

  return result;
}

uint64_t sub_214618758(uint64_t a1)
{
  sub_2146DA958();
  StyleSheet.Font.Weight.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146187C8@<X0>(uint64_t *a1@<X8>)
{
  result = StyleSheet.Font.Weight.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BlastDoor::StyleSheet::Font::Size::Unit_optional __swiftcall StyleSheet.Font.Size.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Size.Unit.rawValue.getter()
{
  v1 = 37;
  v2 = 28005;
  if (*v0 != 2)
  {
    v2 = 30821;
  }

  if (*v0)
  {
    v1 = 30832;
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

uint64_t sub_214618950()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2146189E0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214618A5C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214618AF4(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 37;
  v4 = 28005;
  if (*v1 != 2)
  {
    v4 = 30821;
  }

  if (*v1)
  {
    v3 = 30832;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

BlastDoor::StyleSheet::Font::Size::Absolute_optional __swiftcall StyleSheet.Font.Size.Absolute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Size.Absolute.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6C616D732D7878;
  v3 = 0x656772616C2D78;
  if (v1 != 5)
  {
    v3 = 0x656772616C2D7878;
  }

  v4 = 0x6D756964656DLL;
  if (v1 != 3)
  {
    v4 = 0x656772616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D732D78;
  if (v1 != 1)
  {
    v5 = 0x6C6C616D73;
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

double sub_214618D30(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

void sub_214618E44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6C6C616D732D7878;
  v5 = 0xE700000000000000;
  v6 = 0x656772616C2D78;
  if (v2 != 5)
  {
    v6 = 0x656772616C2D7878;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v2 != 3)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C6C616D732D78;
  if (v2 != 1)
  {
    v10 = 0x6C6C616D73;
    v9 = 0xE500000000000000;
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

BlastDoor::StyleSheet::Font::Style_optional __swiftcall StyleSheet.Font.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Style.rawValue.getter()
{
  v1 = 0x63696C617469;
  if (*v0 != 1)
  {
    v1 = 0x657571696C626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_214619074(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x63696C617469;
  if (v2 != 1)
  {
    v5 = 0x657571696C626FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C616D726F6ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x63696C617469;
  if (*a2 != 1)
  {
    v8 = 0x657571696C626FLL;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214619168()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214619204(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21461928C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214619330(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x63696C617469;
  if (v2 != 1)
  {
    v5 = 0x657571696C626FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616D726F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BlastDoor::StyleSheet::Font::Variant_optional __swiftcall StyleSheet.Font.Variant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

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

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Variant.rawValue.getter()
{
  if (*v0)
  {
    return 0x61632D6C6C616D73;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_2146194D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61632D6C6C616D73;
  }

  else
  {
    v3 = 0x6C616D726F6ELL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000007370;
  }

  if (*a2)
  {
    v5 = 0x61632D6C6C616D73;
  }

  else
  {
    v5 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007370;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_214619580()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214619604(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214619674(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2146196F4(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_214619754(uint64_t *a1@<X8>)
{
  v2 = 0x6C616D726F6ELL;
  if (*v1)
  {
    v2 = 0x61632D6C6C616D73;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007370;
  }

  *a1 = v2;
  a1[1] = v3;
}

BlastDoor::StyleSheet::Font::System_optional __swiftcall StyleSheet.Font.System.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.System.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6974706163;
  v3 = 0x2D6567617373656DLL;
  v4 = 0x61632D6C6C616D73;
  if (v1 != 4)
  {
    v4 = 0x622D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 1970169197;
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

double sub_214619978(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

void sub_214619A84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6974706163;
  v5 = 0xEB00000000786F62;
  v6 = 0x2D6567617373656DLL;
  v7 = 0xED00006E6F697470;
  v8 = 0x61632D6C6C616D73;
  if (v2 != 4)
  {
    v8 = 0x622D737574617473;
    v7 = 0xEA00000000007261;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1852793705;
  if (v2 != 1)
  {
    v9 = 1970169197;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_214619C34()
{
  result = qword_27C916D80;
  if (!qword_27C916D80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.TextAlign, &type metadata for StyleSheet.TextAlign, v0, v1);
    atomic_store(result, &qword_27C916D80);
  }

  return result;
}

unint64_t sub_214619CE4()
{
  result = qword_27C916D88;
  if (!qword_27C916D88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Weight, &type metadata for StyleSheet.Font.Weight, v0, v1);
    atomic_store(result, &qword_27C916D88);
  }

  return result;
}

unint64_t sub_214619D68()
{
  result = qword_27C916D90;
  if (!qword_27C916D90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Unit, &type metadata for StyleSheet.Font.Size.Unit, v0, v1);
    atomic_store(result, &qword_27C916D90);
  }

  return result;
}

unint64_t sub_214619DEC()
{
  result = qword_27C916D98;
  if (!qword_27C916D98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Absolute, &type metadata for StyleSheet.Font.Size.Absolute, v0, v1);
    atomic_store(result, &qword_27C916D98);
  }

  return result;
}

unint64_t sub_214619E9C()
{
  result = qword_27C916DA0;
  if (!qword_27C916DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Style, &type metadata for StyleSheet.Font.Style, v0, v1);
    atomic_store(result, &qword_27C916DA0);
  }

  return result;
}

unint64_t sub_214619F20()
{
  result = qword_27C916DA8;
  if (!qword_27C916DA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Variant, &type metadata for StyleSheet.Font.Variant, v0, v1);
    atomic_store(result, &qword_27C916DA8);
  }

  return result;
}

unint64_t sub_214619FA4()
{
  result = qword_27C916DB0;
  if (!qword_27C916DB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.System, &type metadata for StyleSheet.Font.System, v0, v1);
    atomic_store(result, &qword_27C916DB0);
  }

  return result;
}

uint64_t sub_21461A0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21461A110()
{
  result = qword_27C916DB8;
  if (!qword_27C916DB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet, &type metadata for StyleSheet, v0, v1);
    atomic_store(result, &qword_27C916DB8);
  }

  return result;
}

unint64_t sub_21461A164()
{
  result = qword_27C916DC0;
  if (!qword_27C916DC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet, &type metadata for StyleSheet, v0, v1);
    atomic_store(result, &qword_27C916DC0);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StyleSheet.Color(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Color(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_21461A254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 12);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21461A2A4(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = 0;
      *(result + 8) = (v3 >> 1) << 32;
      *(result + 16) = 0;
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

uint64_t getEnumTagSinglePayload for StyleSheet.Font.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 9))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 8) >> 1) & 0x3E | (*(a1 + 8) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Font.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21461A480(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}