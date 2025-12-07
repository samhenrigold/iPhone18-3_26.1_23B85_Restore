uint64_t sub_1E5876B48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5876BF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E5876C38(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1E5876C90(uint64_t a1)
{
  result = sub_1E588B9A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1E5876D54(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E588B9E4();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1E58686F8(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1E5889198(v10, 0);
      v14 = sub_1E588B9C4();
      sub_1E58686F8(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1E5876ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = sub_1E588B9A4();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  result = type metadata accessor for JournalFilePlayer(0, a4, a5, a6);
  v18 = (a7 + *(result + 44));
  *v18 = a2;
  v18[1] = a3;
  *(a7 + *(result + 48)) = a8;
  return result;
}

uint64_t sub_1E5876F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v51 = a2;
  v6 = sub_1E588BD64();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E588B9A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(a3 + 32);
  type metadata accessor for JournalFile(0, v13, v14, v15);
  sub_1E5883438(v4, *(v4 + *(a3 + 44)), *(v4 + *(a3 + 44) + 8));
  v16 = v54;
  v17 = sub_1E588B9B4();
  if (v16)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v47 = 0;
  v48 = v14;
  v46 = v4;
  v49 = v17;
  v54 = v18;
  (*(v10 + 8))(v12, v9);
  sub_1E588BD54();
  v20 = sub_1E588BD34();
  v22 = v21;
  v23 = v53;
  v24 = *(v52 + 8);
  v24(v8, v53);
  if (v22 >> 60 == 15)
  {
    sub_1E58697FC();
    swift_allocError();
    swift_willThrow();
    return sub_1E58686F8(v49, v54);
  }

  sub_1E588BD54();
  v25 = sub_1E588BD34();
  v27 = v26;
  v24(v8, v23);
  if (v27 >> 60 == 15)
  {
    sub_1E58697FC();
    swift_allocError();
    swift_willThrow();
    sub_1E5869A50(v20, v22);
    return sub_1E58686F8(v49, v54);
  }

  sub_1E5869AD4(v20, v22);
  v28 = sub_1E5876D54(v20, v22);
  v45 = v20;
  v29 = v49;
  v30 = v54;
  sub_1E5869AD4(v49, v54);
  v31 = sub_1E5876D54(v29, v30);
  v56 = v28;
  sub_1E586DA0C(v31);
  sub_1E5869AD4(v25, v27);
  v52 = v25;
  v53 = v27;
  v32 = sub_1E5876D54(v25, v27);
  sub_1E586DA0C(v32);
  v33 = v56;
  sub_1E588B894();
  swift_allocObject();
  sub_1E588B884();
  v43 = v15;
  v44 = v13;
  type metadata accessor for JournalEntry(255, v13, v48, v15);
  sub_1E588BE54();
  v34 = sub_1E5877C58(v33);
  v36 = v35;

  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v37 = v47;
  sub_1E588B874();
  if (v37)
  {
    sub_1E5869A50(v45, v22);
    sub_1E58686F8(v49, v54);
    sub_1E5869A50(v52, v53);
    sub_1E58686F8(v34, v36);
  }

  else
  {
    sub_1E58686F8(v34, v36);

    MEMORY[0x1EEE9AC00](v38);
    v39 = v43;
    *(&v43 - 6) = v44;
    *(&v43 - 5) = v40;
    v41 = v46;
    *(&v43 - 4) = v39;
    *(&v43 - 3) = v41;
    v42 = v51;
    *(&v43 - 2) = v50;
    *(&v43 - 1) = v42;
    swift_getWitnessTable();
    sub_1E588BDF4();
    sub_1E5869A50(v45, v22);
    sub_1E58686F8(v49, v54);
    sub_1E5869A50(v52, v53);
  }
}

uint64_t sub_1E58774C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a3;
  v43 = a4;
  v40 = a2;
  v45 = sub_1E588BBC4();
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E588BBE4();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a5;
  v14 = type metadata accessor for JournalEntry(0, a5, a6, a7);
  v15 = *(v14 - 8);
  v37 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v34 - v16;
  v49 = sub_1E588BC04();
  v17 = *(v49 - 8);
  v18 = MEMORY[0x1EEE9AC00](v49);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v38 = &v34 - v21;
  type metadata accessor for JournalFilePlayer(0, a5, a6, a7);
  sub_1E5877D58();
  v39 = sub_1E588C054();
  sub_1E588BBF4();
  sub_1E588BC24();
  v40 = *(v17 + 8);
  (v40)(v20, v49);
  v22 = v36;
  (*(v15 + 16))(v36, a1, v14);
  v23 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v35;
  *(v24 + 3) = a6;
  v25 = v42;
  v26 = v43;
  *(v24 + 4) = a7;
  *(v24 + 5) = v25;
  *(v24 + 6) = v26;
  (*(v15 + 32))(&v24[v23], v22, v14);
  aBlock[4] = sub_1E5877DA4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);

  v28 = v41;
  sub_1E588BBD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5877E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E5877E74(&qword_1EE2CD298, &qword_1ECFF93C8, &qword_1E588D5A8, MEMORY[0x1E69E6328]);
  v30 = v44;
  v29 = v45;
  sub_1E588C0D4();
  v32 = v38;
  v31 = v39;
  MEMORY[0x1E692FB20](v38, v28, v30, v27);
  _Block_release(v27);

  (*(v48 + 8))(v30, v29);
  (*(v46 + 8))(v28, v47);
  return (v40)(v32, v49);
}

uint64_t sub_1E58779C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

_BYTE *sub_1E5877A0C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1E5877AA0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1E5877B58(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1E5877BD4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1E5877AA0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1E5877B58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1E588B904();
  swift_allocObject();
  result = sub_1E588B8F4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1E588B9D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1E5877BD4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1E588B904();
  swift_allocObject();
  result = sub_1E588B8F4();
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

uint64_t sub_1E5877C58(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9548, &unk_1E588E490);
  v10 = sub_1E5877E74(&qword_1ECFF9550, &qword_1ECFF9548, &unk_1E588E490, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1E5877A0C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_1E5877D58()
{
  result = qword_1EE2CD278;
  if (!qword_1EE2CD278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2CD278);
  }

  return result;
}

unint64_t sub_1E5877E1C()
{
  result = qword_1EE2CD2C8[0];
  if (!qword_1EE2CD2C8[0])
  {
    sub_1E588BBC4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2CD2C8);
  }

  return result;
}

uint64_t sub_1E5877E74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for DatabaseConnection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseConnection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8DataFlow18DatabaseConnectionV8LocationO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5877F6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1E5877FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5877FF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1E5878020(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3 *a4)
{
  v6 = sub_1E5878908(a1, a2, a4);
  if (v4)
  {
    return;
  }

  v7 = v6;
  v8 = *(a3 + 16);
  v9 = a3 + 32;
  do
  {
    if (!v8)
    {
      v18 = sqlite3_finalize(v7);
      if (!v18)
      {
        return;
      }

      v19 = v18;
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E588BAD4();
      __swift_project_value_buffer(v20, qword_1EE2CF9F8);
      if (sqlite3_errstr(v19))
      {
        v21 = sub_1E588BDB4();
        v23 = v22;
      }

      else
      {
        v21 = 4271950;
        v23 = 0xE300000000000000;
      }

      sub_1E5878A40();
      v35 = swift_allocError();
      *v44 = v19 | 0x2000000000000000;
      v44[1] = v21;
      v44[2] = v23;
      v45 = v35;
      v46 = sub_1E588BAB4();
      v47 = sub_1E588C014();

      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_37;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v35;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_1E585C000, v46, v47, "%@", v48, 0xCu);
      sub_1E5878A94(v49);
      MEMORY[0x1E6930700](v49, -1, -1);
      v52 = v48;
      goto LABEL_36;
    }

    sub_1E587EB08(v10, v7);

    v11 = sqlite3_step(v7);
    if (v11 != 101)
    {
      v24 = v11;
      if (sqlite3_errstr(v11))
      {
        v25 = sub_1E588BDB4();
        v27 = v26;
      }

      else
      {
        v25 = 4271950;
        v27 = 0xE300000000000000;
      }

      sub_1E5878A40();
      swift_allocError();
      *v28 = v24 | 0x4000000000000000;
      v28[1] = v25;
      v28[2] = v27;
      swift_willThrow();
      v29 = sqlite3_finalize(v7);
      if (!v29)
      {
        return;
      }

      v30 = v29;
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v31 = sub_1E588BAD4();
      __swift_project_value_buffer(v31, qword_1EE2CF9F8);
      if (sqlite3_errstr(v30))
      {
        v32 = sub_1E588BDB4();
        v34 = v33;
      }

      else
      {
        v32 = 4271950;
        v34 = 0xE300000000000000;
      }

      sub_1E5878A40();
      v35 = swift_allocError();
      *v36 = v30 | 0x2000000000000000;
      v36[1] = v32;
      v36[2] = v34;
      v37 = v35;
LABEL_34:
      v46 = sub_1E588BAB4();
      v55 = sub_1E588C014();

      if (!os_log_type_enabled(v46, v55))
      {
LABEL_37:

        return;
      }

      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      v58 = v35;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v57 = v59;
      _os_log_impl(&dword_1E585C000, v46, v55, "%@", v56, 0xCu);
      sub_1E5878A94(v57);
      MEMORY[0x1E6930700](v57, -1, -1);
      v52 = v56;
LABEL_36:
      MEMORY[0x1E6930700](v52, -1, -1);
      goto LABEL_37;
    }

    v12 = sqlite3_reset(v7);
    v9 += 8;
    --v8;
  }

  while (!v12);
  v13 = 4271950;
  v14 = v12;
  if (sqlite3_errstr(v12))
  {
    v15 = sub_1E588BDB4();
    v17 = v16;
  }

  else
  {
    v17 = 0xE300000000000000;
    v15 = 4271950;
  }

  sub_1E5878A40();
  swift_allocError();
  *v38 = v14 | 0x6000000000000000;
  v38[1] = v15;
  v38[2] = v17;
  swift_willThrow();
  v39 = sqlite3_finalize(v7);
  if (v39)
  {
    v40 = v39;
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v41 = sub_1E588BAD4();
    __swift_project_value_buffer(v41, qword_1EE2CF9F8);
    if (sqlite3_errstr(v40))
    {
      v13 = sub_1E588BDB4();
      v43 = v42;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    v35 = swift_allocError();
    *v53 = v40 | 0x2000000000000000;
    v53[1] = v13;
    v53[2] = v43;
    v54 = v35;
    goto LABEL_34;
  }
}

unint64_t sub_1E5878530()
{
  result = qword_1ECFF9558;
  if (!qword_1ECFF9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9558);
  }

  return result;
}

uint64_t sub_1E5878584(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(sqlite3_stmt *), uint64_t a5, sqlite3 *a6, uint64_t a7)
{
  v12 = sub_1E5878908(a1, a2, a6);
  if (!v7)
  {
    v13 = v12;
    a7 = sub_1E587E8E0(a3, a4, a5, v12, a7);
    v14 = sqlite3_finalize(v13);
    if (v14)
    {
      v15 = v14;
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v16 = sub_1E588BAD4();
      __swift_project_value_buffer(v16, qword_1EE2CF9F8);
      if (sqlite3_errstr(v15))
      {
        v17 = sub_1E588BDB4();
        v19 = v18;
      }

      else
      {
        v17 = 4271950;
        v19 = 0xE300000000000000;
      }

      sub_1E5878A40();
      v21 = swift_allocError();
      *v22 = v15 | 0x2000000000000000;
      v22[1] = v17;
      v22[2] = v19;
      v23 = v21;
      v24 = sub_1E588BAB4();
      v25 = sub_1E588C014();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v21;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1E585C000, v24, v25, "%@", v26, 0xCu);
        sub_1E5878A94(v27);
        MEMORY[0x1E6930700](v27, -1, -1);
        MEMORY[0x1E6930700](v26, -1, -1);
      }
    }
  }

  return a7;
}

sqlite3_stmt *sub_1E5878908(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v4 = sub_1E588BD84();
  v5 = sqlite3_prepare_v2(a3, (v4 + 32), -1, v12, 0);

  if (v5)
  {
    if (sqlite3_errstr(v5))
    {
      v6 = sub_1E588BDB4();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 4271950;
    }

    sub_1E5878530();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v6;
    *(v10 + 16) = v8;
    v11 = 2;
  }

  else
  {
    result = v12[0];
    if (v12[0])
    {
      return result;
    }

    sub_1E5878530();
    swift_allocError();
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 1;
    v11 = 4;
  }

  *(v10 + 24) = v11;
  return swift_willThrow();
}

unint64_t sub_1E5878A40()
{
  result = qword_1ECFF9560[0];
  if (!qword_1ECFF9560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECFF9560);
  }

  return result;
}

uint64_t sub_1E5878A94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF94A8, &qword_1E588E378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8DataFlow18DatabaseConnectionV7Failure33_1E83CA01354915E811DCF901D0F0AF5DLLO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E5878B2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5878B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5878BBC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1E5878BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5878C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_1E588B894();
  swift_allocObject();
  result = sub_1E588B884();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = result;
  return result;
}

uint64_t sub_1E5878CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5878CD4, 0, 0);
}

uint64_t sub_1E5878CD4()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_1E588C124();

  MEMORY[0x1E692F890](*(v1 + 1), *(v1 + 2));
  MEMORY[0x1E692F890](0xD000000000000014, 0x80000001E5894040);
  v0[7] = 0xEF60204D4F524620;
  v3 = swift_allocObject();
  v0[8] = v3;
  v4 = v2[2];
  v0[9] = v4;
  *(v3 + 16) = v4;
  v5 = v2[3];
  v0[10] = v5;
  *(v3 + 24) = v5;
  v6 = v2[4];
  v0[11] = v6;
  *(v3 + 32) = v6;
  v8 = *v1;
  v7 = v1[1];
  *(v3 + 72) = *(v1 + 4);
  *(v3 + 40) = v8;
  *(v3 + 56) = v7;

  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = type metadata accessor for JournalEntry(0, v4, v5, v6);
  v0[13] = v10;
  *v9 = v0;
  v9[1] = sub_1E5878ECC;
  v11 = MEMORY[0x1E69E7CC0];

  return sub_1E586CCFC(0x2A205443454C4553, 0xEF60204D4F524620, v11, sub_1E5879448, v3, v10);
}

uint64_t sub_1E5878ECC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1E5879110;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_1E5879004;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E5879004()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 120);
  v3 = swift_task_alloc();
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = v4;
  sub_1E588BE54();
  swift_getWitnessTable();
  sub_1E588BDF4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E5879110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E587917C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v31 = a6;
  v32 = a2;
  v30 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = sub_1E588BD64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  if (sqlite3_column_type(a1, 0) == 5 || (v19 = sqlite3_column_double(a1, 0), v18 = 1, sqlite3_column_type(a1, 1) == 5) || !sqlite3_column_text(a1, 1))
  {
    sub_1E5879964();
    swift_allocError();
    *v28 = v18;
    *(v28 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v29 = a5;
    sub_1E588BDC4();
    sub_1E588BD54();
    v20 = sub_1E588BD34();
    v22 = v21;

    (*(v15 + 8))(v17, v14);
    if (v22 >> 60 == 15)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20;
    }

    if (v22 >> 60 == 15)
    {
      v24 = 0xC000000000000000;
    }

    else
    {
      v24 = v22;
    }

    v25 = v33;
    v26 = v34;
    sub_1E588B874();
    result = sub_1E58686F8(v23, v24);
    if (!v25)
    {
      (*(v30 + 32))(v11, v13, a3);
      return sub_1E5881C54(v11, a3, v26, v29, v31, v19);
    }
  }

  return result;
}

uint64_t sub_1E587946C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v37 = a6;
  v36 = a5;
  v43 = a3;
  v44 = a4;
  v41 = a2;
  v46 = sub_1E588BBC4();
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E588BBE4();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for JournalEntry(0, a5, a6, a7);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v18 = sub_1E588BC04();
  v40 = v18;
  v50 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v36 - v22;
  sub_1E5877D58();
  v39 = sub_1E588C054();
  sub_1E588BBF4();
  sub_1E588BC24();
  v24 = *(v50 + 8);
  v50 += 8;
  v41 = v24;
  (v24)(v21, v18);
  (*(v15 + 16))(v17, a1, v14);
  v25 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v26 = swift_allocObject();
  v27 = v37;
  *(v26 + 2) = v36;
  *(v26 + 3) = v27;
  v28 = v43;
  v29 = v44;
  *(v26 + 4) = v38;
  *(v26 + 5) = v28;
  *(v26 + 6) = v29;
  (*(v15 + 32))(&v26[v25], v17, v14);
  aBlock[4] = sub_1E5877DA4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  aBlock[3] = &block_descriptor_1;
  v30 = _Block_copy(aBlock);

  v31 = v42;
  sub_1E588BBD4();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1E5877E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E586D1F4();
  v33 = v45;
  v32 = v46;
  sub_1E588C0D4();
  v34 = v39;
  MEMORY[0x1E692FB20](v23, v31, v33, v30);
  _Block_release(v30);

  (*(v49 + 8))(v33, v32);
  (*(v47 + 8))(v31, v48);
  (v41)(v23, v40);
}

unint64_t sub_1E5879964()
{
  result = qword_1ECFF95E8;
  if (!qword_1ECFF95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF95E8);
  }

  return result;
}

void *sub_1E5879A3C()
{

  sub_1E587B164(*(v0 + 40), *(v0 + 48));
  sub_1E587B1C4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1E587B1C4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t sub_1E5879A8C()
{
  sub_1E5879A3C();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

unint64_t get_enum_tag_for_layout_string_8DataFlow19JournalDatabaseMode33_977A53810C876FEE7A212B695D4479C5LLO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1E5879ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E5879B38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_1E5879B98(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1E5879BD4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5879D10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E5879D10()
{

  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1E588BAD4();
  __swift_project_value_buffer(v2, qword_1EE2CF9F8);
  v3 = v1;
  v4 = sub_1E588BAB4();
  v5 = sub_1E588C014();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E585C000, v4, v5, "%@", v8, 0xCu);
    sub_1E586576C(v9, &qword_1ECFF94A8, &qword_1E588E378);
    MEMORY[0x1E6930700](v9, -1, -1);
    MEMORY[0x1E6930700](v8, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E5879EAC@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v6 = v5;
  swift_beginAccess();
  v10 = *(v5 + 17);
  if (*(v10 + 16) && (v11 = sub_1E587A4A8(a1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  result = swift_endAccess();
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = sub_1E588C4E4();
    v28 = v15;
    MEMORY[0x1E692F890](95, 0xE100000000000000);
    v16 = sub_1E588C354();
    MEMORY[0x1E692F890](v16);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v6 + 17);
    v6[17] = -0.0;
    sub_1E587ACE0(v13 + 1, a1, isUniquelyReferenced_nonNull_native);
    *(v6 + 17) = v26;
    swift_endAccess();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = swift_getAssociatedConformanceWitness();
    v21 = type metadata accessor for JournalDatabase(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
    v22 = *(v6 + 5);
    v23 = *(v6 + 6);
    v24 = v6[4];

    sub_1E587AE04(v22, v23);
    swift_allocObject();
    v25 = sub_1E5860C28(v22, v23, v27, v28, v26, v24, a5);
    a4[3] = v21;
    result = swift_getWitnessTable();
    a4[4] = result;
    *a4 = v25;
  }

  return result;
}

uint64_t sub_1E587A100()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E587A234, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E587A234()
{
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1E588BAD4();
  __swift_project_value_buffer(v2, qword_1EE2CF9F8);
  v3 = v1;
  v4 = sub_1E588BAB4();
  v5 = sub_1E588C014();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E585C000, v4, v5, "%@", v7, 0xCu);
    sub_1E586576C(v8, &qword_1ECFF94A8, &qword_1E588E378);
    MEMORY[0x1E6930700](v8, -1, -1);
    MEMORY[0x1E6930700](v7, -1, -1);
  }

  v11 = *(v0 + 24);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E587A418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1E587A464(uint64_t a1)
{
  v2 = sub_1E588C0F4();

  return sub_1E587A4EC(a1, v2);
}

unint64_t sub_1E587A4A8(uint64_t a1)
{
  v2 = sub_1E588C424();

  return sub_1E587A5B4(a1, v2);
}

unint64_t sub_1E587A4EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E5875F70(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E692FBF0](v9, a1);
      sub_1E5875FCC(v9);
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

unint64_t sub_1E587A5B4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1E587A620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF94C0, &qword_1E588E390);
  result = sub_1E588C234();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 40 * v26;
      if (v4)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v49 = *(v27 + 32);
        v47 = v28;
        v48 = v29;
        v30 = (*(v5 + 56) + (v26 << 6));
        v32 = v30[2];
        v31 = v30[3];
        v33 = v30[1];
        v43 = *v30;
        v44 = v33;
        v45 = v32;
        v46 = v31;
      }

      else
      {
        sub_1E5875F70(v27, &v47);
        sub_1E587621C(*(v5 + 56) + (v26 << 6), &v43);
      }

      result = sub_1E588C0F4();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v47;
      v18 = v48;
      *(v16 + 32) = v49;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + (v15 << 6));
      v20 = v43;
      v21 = v44;
      v22 = v46;
      v19[2] = v45;
      v19[3] = v22;
      *v19 = v20;
      v19[1] = v21;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v41 = 1 << *(v5 + 32);
      if (v41 >= 64)
      {
        bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v41;
      }

      *(v5 + 16) = 0;
    }

    v3 = v42;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1E587A8E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F0, &unk_1E588E8E0);
  result = sub_1E588C234();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1E588C424();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1E587AB4C(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E587A464(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1E587A620(v13, a3 & 1);
      v19 = sub_1E587A464(a2);
      if ((v14 & 1) != (v20 & 1))
      {
LABEL_17:
        result = sub_1E588C394();
        __break(1u);
        return result;
      }

      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1E587AE64();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_1E5875F70(a2, v31);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v21 = v16[6] + 40 * v10;
    v22 = v31[0];
    v23 = v31[1];
    *(v21 + 32) = v32;
    *v21 = v22;
    *(v21 + 16) = v23;
    v24 = (v16[7] + (v10 << 6));
    v25 = *a1;
    v26 = a1[1];
    v27 = a1[3];
    v24[2] = a1[2];
    v24[3] = v27;
    *v24 = v25;
    v24[1] = v26;
    v28 = v16[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      v16[2] = v30;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v17 = v16[7] + (v10 << 6);

  return sub_1E587B210(a1, v17);
}

unint64_t sub_1E587ACE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E587A4A8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1E587B018();
    result = v17;
    goto LABEL_8;
  }

  sub_1E587A8E8(v14, a3 & 1);
  result = sub_1E587A4A8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1E588C394();
  __break(1u);
  return result;
}

unint64_t sub_1E587AE04(unint64_t result, void *a2)
{
  if (result >> 62 == 1)
  {
  }

  else if (!(result >> 62))
  {

    return a2;
  }

  return result;
}

void *sub_1E587AE64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF94C0, &qword_1E588E390);
  v2 = *v0;
  v3 = sub_1E588C224();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1E5875F70(*(v2 + 48) + 40 * v17, v27);
        v17 <<= 6;
        result = sub_1E587621C(*(v2 + 56) + v17, v26);
        v19 = *(v4 + 48) + v18;
        v20 = v27[1];
        v21 = v27[0];
        *(v19 + 32) = v28;
        *v19 = v21;
        *(v19 + 16) = v20;
        v22 = (*(v4 + 56) + v17);
        v23 = v26[0];
        v24 = v26[1];
        v25 = v26[3];
        v22[2] = v26[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_1E587B018()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F0, &unk_1E588E8E0);
  v2 = *v0;
  v3 = sub_1E588C224();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void sub_1E587B164(unint64_t a1, void *a2)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_1E587B1C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E587B26C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = type metadata accessor for Database.State(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = type metadata accessor for ApplicationBackgroundTaskProvider();
  v39 = &off_1F5F57D40;
  v37[0] = a4;
  *v14 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9608, &qword_1E588E900);
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v16 = MEMORY[0x1E69E6B68];
  sub_1E587B5B0(v14, v15 + *(*v15 + *MEMORY[0x1E69E6B68] + 16));
  *(a6 + 80) = v15;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  sub_1E586D79C(v37, a6 + 40);
  *(a6 + 88) = a5;
  v17 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(*v17 + 24);
  v35 = sub_1E587B614;
  v36 = v18;
  v20 = a5;

  os_unfair_lock_lock((v19 + 64));
  sub_1E587B61C((v19 + 16));
  os_unfair_lock_unlock((v19 + 64));

  v21 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = *(*v21 + 24);
  v33 = sub_1E587B638;
  v34 = v22;

  os_unfair_lock_lock(v23 + 16);
  sub_1E587B640(&v23[4]);
  os_unfair_lock_unlock(v23 + 16);

  v24 = *(a6 + 32);
  v25 = *(a6 + 80);
  v30 = *(a6 + 16);
  v31 = v24;
  v32 = a6;
  v26 = *(*v25 + *v16 + 16);
  v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v25 + v27));
  sub_1E586DCD0((v25 + v26));
  os_unfair_lock_unlock((v25 + v27));
  __swift_destroy_boxed_opaque_existential_0(v37);
  return a6;
}

uint64_t sub_1E587B5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Database.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *Store.fragment<A>(feature:stateProjection:forwardToParent:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = a2[1];
  v20[0] = *a2;
  v20[1] = v13;
  if (a3)
  {
    v14 = v12;
    v15 = swift_allocObject();
    v15[2] = *(v14 + 80);
    v15[3] = a5;
    v15[4] = *(v14 + 88);
    v15[5] = a6;
    v15[6] = a3;
    v15[7] = a4;
    v16 = sub_1E587B778;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  sub_1E5866F7C(a3, a4);
  v18 = Store.fragment<A>(feature:initialLocalState:stateProjection:forwardToParent:)(a1, v17, v20, v16, v15, a5, a6);
  sub_1E5866F8C(v16, v15);
  return v18;
}

uint64_t StoreProxy.send(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E587B7C8, 0, 0);
}

uint64_t sub_1E587B7C8()
{
  sub_1E588BEC4();
  *(v0 + 40) = sub_1E588BEB4();
  v2 = sub_1E588BE64();

  return MEMORY[0x1EEE6DFA0](sub_1E587B85C, v2, v1);
}

uint64_t sub_1E587B85C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  sub_1E587B924(v1, v2, *(v3 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1E587B910, 0, 0);
}

void sub_1E587B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  sub_1E588BF24();
  if (v3)
  {
    v44 = v13;
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v16 = sub_1E588BAD4();
    __swift_project_value_buffer(v16, qword_1EE2CF9F8);
    v17 = *(v7 + 16);
    v18 = a3;
    v17(v10, a2, a3);
    v19 = sub_1E588BAB4();
    v20 = sub_1E588C014();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v3;
      v23 = v22;
      v45 = v22;
      *v21 = 136446210;
      v42 = v19;
      v17(v44, v10, v18);
      v24 = sub_1E588BD74();
      v26 = v25;
      (*(v7 + 8))(v10, v18);
      v27 = sub_1E586163C(v24, v26, &v45);

      *(v21 + 4) = v27;
      v28 = v42;
      _os_log_impl(&dword_1E585C000, v42, v20, "Task cancelled, preventing store action send: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1E6930700](v23, -1, -1);
      MEMORY[0x1E6930700](v21, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v18);
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = *(a1 + 16);
    ObjectType = swift_getObjectType();
    (*(v29 + 16))(a2, ObjectType, v29);
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0;
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v31 = sub_1E588BAD4();
    __swift_project_value_buffer(v31, qword_1EE2CF9F8);
    v32 = *(v7 + 16);
    v32(v15, a2, a3);
    v33 = sub_1E588BAB4();
    v34 = sub_1E588C014();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v35 = 136446210;
      v32(v13, v15, a3);
      v36 = sub_1E588BD74();
      v38 = v37;
      (*(v7 + 8))(v15, a3);
      v39 = sub_1E586163C(v36, v38, &v45);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1E585C000, v33, v34, "Store deallocated, not able to send: %{public}s", v35, 0xCu);
      v40 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1E6930700](v40, -1, -1);
      MEMORY[0x1E6930700](v35, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v15, a3);
    }
  }
}

uint64_t sub_1E587BDD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 16) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 8) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E587BE24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
      *(result + 16) = 1;
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

uint64_t Binding.init<A>(store:get:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1E588BEC4();

  v12 = sub_1E588BEB4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a6;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a1;

  sub_1E5866F7C(a4, a5);
  v15 = sub_1E588BEB4();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = a6;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a1;
  sub_1E588BBB4();
  sub_1E5866F8C(a4, a5);
}

uint64_t sub_1E587BFE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  result = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v14 - v12;
  if (a4)
  {

    a4(a1);
    Store.send(_:)(v13);
    sub_1E5866F8C(a4, a5);
    return (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t AsyncStateResolver.init(store:keyPath:fetchValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

Swift::Void __swiftcall AsyncStateResolver.resolve()()
{
  v2 = v0;
  v56 = sub_1E588BA34();
  v54 = *(v56 - 8);
  v3 = MEMORY[0x1EEE9AC00](v56);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v52 = &v48 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v48 - v8;
  v9 = *(v2 + 24);
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  v11 = *(v2 + 40);
  v13 = type metadata accessor for AsyncStateValue(0, v9, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v20 = type metadata accessor for AsyncState(0, v9, v11, v19);
  v64 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v24 = *v1;
  v23 = v1[1];
  v25 = v1[3];
  v57 = v1[2];
  v59 = v25;
  v26 = *(v24 + 32);
  ObjectType = swift_getObjectType();
  v28 = *(v26 + 72);
  v58 = v23;
  v29 = v23;
  v30 = v20;
  v28(v29, v20, ObjectType, v26);
  (*(v14 + 16))(v18, v22, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v14 + 8))(v18, v13);
    }

    else if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_9;
    }

    v65 = v24;
    v66 = v58;
    v36 = v60;
    v67 = v57;
    v68 = v59;
    swift_storeEnumTagMultiPayload();
    sub_1E587C738(v36, v61, *&v22[*(v20 + 36)]);
    (*(v14 + 8))(v36, v13);
LABEL_9:
    (*(v64 + 8))(v22, v20);
    return;
  }

  v32 = v62;
  v33 = v63;
  v51 = v14;
  v35 = v55;
  v34 = v56;
  if (EnumCaseMultiPayload)
  {
    v50 = *(swift_getTupleTypeMetadata2() + 48);
    v37 = *(v32 + 32);
    v49 = v9;
    v37(v33, v18, v9);
    v38 = v54;
    (*(v54 + 32))(v35, &v18[v50], v34);
    v50 = v30;
    v39 = *&v22[*(v30 + 36)];
    v40 = v52;
    sub_1E588BA04();
    v41 = v34;
    v42 = v53;
    sub_1E588BA24();
    v43 = sub_1E588BA14();
    v44 = *(v38 + 8);
    v44(v42, v41);
    v44(v40, v41);
    if (v43)
    {
      v65 = v24;
      v66 = v58;
      v45 = v60;
      v67 = v57;
      v68 = v59;
      v46 = v62;
      v47 = v49;
      (*(v62 + 16))(v60, v63, v49);
      swift_storeEnumTagMultiPayload();
      sub_1E587C738(v45, v61, v39);
      (*(v51 + 8))(v45, v13);
      v44(v35, v41);
      (*(v46 + 8))(v63, v47);
    }

    else
    {
      v44(v35, v41);
      (*(v62 + 8))(v63, v49);
    }

    (*(v64 + 8))(v22, v50);
  }

  else
  {
    (*(v64 + 8))(v22, v30);
    (*(v32 + 8))(v18, v9);
  }
}

uint64_t sub_1E587C738(uint64_t a1, uint64_t a2, double a3)
{
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &ObjectType - v7;
  v45 = a2;
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  v48 = type metadata accessor for AsyncStateValue(0, v8, v9, v10);
  v39 = *(v48 - 8);
  v11 = v39;
  v44 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &ObjectType - v12;
  v41 = v8;
  v42 = v9;
  v14 = type metadata accessor for AsyncState(0, v8, v9, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &ObjectType - v16;
  v38 = *v3;
  v40 = v3[3];
  v18 = *(v38 + 32);
  ObjectType = swift_getObjectType();
  v19 = *(v11 + 16);
  v49 = *(v3 + 1);
  v20 = v46;
  v19(v46, v47, v48);
  AsyncState.init(value:ttl:)(v20, v8, v9, v21, v17, a3);
  (*(v18 + 88))(v49, v17, v14, ObjectType, v18);
  (*(v15 + 8))(v17, v14);
  v22 = sub_1E588BEE4();
  v23 = v43;
  (*(*(v22 - 8) + 56))(v43, 1, 1, v22);
  v24 = v46;
  v25 = v48;
  v19(v46, v47, v48);
  sub_1E588BEC4();
  v26 = v38;

  v27 = v40;

  v28 = sub_1E588BEB4();
  v29 = v39;
  v30 = (*(v39 + 80) + 96) & ~*(v39 + 80);
  v31 = (v44 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = MEMORY[0x1E69E85E0];
  *(v32 + 16) = v28;
  *(v32 + 24) = v33;
  *&v34 = *(v45 + 16);
  *(&v34 + 1) = v41;
  *&v35 = *(v45 + 32);
  *(&v35 + 1) = v42;
  *(v32 + 32) = v34;
  *(v32 + 48) = v35;
  *(v32 + 64) = v26;
  *(v32 + 72) = v49;
  *(v32 + 88) = v27;
  (*(v29 + 32))(v32 + v30, v24, v25);
  *(v32 + v31) = a3;
  sub_1E58807E0(0, 0, v23, &unk_1E588EAB0, v32);
}

uint64_t AsyncStateResolver.resolved(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v72 = a1;
  v73 = v5;
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93C0, &qword_1E588E370);
  v7 = sub_1E588C474();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v65 - v8);
  v10 = *(a2 + 40);
  v12 = type metadata accessor for AsyncStateValue(0, v4, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v67 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  v75 = v4;
  v69 = v10;
  v19 = type metadata accessor for AsyncState(0, v4, v10, v18);
  v78 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v68 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v65 - v22;
  v25 = *v2;
  v24 = v2[1];
  v26 = *(*v2 + 32);
  ObjectType = swift_getObjectType();
  v28 = *(v26 + 72);
  v66 = v24;
  v77 = v19;
  v28(v24, v19, ObjectType, v26);
  v29 = *(v13 + 16);
  v76 = v23;
  v29(v17, v23, v12);
  v74 = v12;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v78 + 8))(v76, v77);
      return (*(v73 + 8))(v17, v75);
    }

    v33 = sub_1E588BA34();
    v34 = v75;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v33 - 8) + 8))(&v17[*(TupleTypeMetadata2 + 48)], v33);
    v13 = v73;
    v32 = v34;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        return (*(v78 + 8))(v76, v77);
      }

      goto LABEL_11;
    }

    v32 = v74;
  }

  (*(v13 + 8))(v17, v32);
LABEL_11:
  (*(v70 + 16))(v9, v72, v71);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v9;
    v37 = *(v25 + 32);
    v38 = swift_getObjectType();
    v39 = sub_1E588B914();
    v40 = [v39 domain];

    v41 = sub_1E588BD24();
    v43 = v42;

    v44 = sub_1E588B914();
    v45 = [v44 code];

    swift_getErrorValue();
    v46 = sub_1E588C3D4();
    v47 = v67;
    *v67 = v41;
    v47[1] = v43;
    v47[2] = v45;
    v47[3] = v46;
    v47[4] = v48;
    swift_storeEnumTagMultiPayload();
    v50 = v76;
    v49 = v77;
    v51 = v68;
    AsyncState.init(value:ttl:)(v47, v75, v69, v52, v68, *&v76[*(v77 + 36)]);
    (*(v37 + 88))(v66, v51, v49, v38, v37);

    v53 = *(v78 + 8);
    v53(v51, v49);
    return (v53)(v50, v49);
  }

  else
  {
    v54 = v73;
    v55 = v65;
    v56 = v75;
    (*(v73 + 32))(v65, v9, v75);
    v57 = *(v25 + 32);
    v58 = swift_getObjectType();
    sub_1E588BA34();
    swift_getTupleTypeMetadata2();
    v59 = v67;
    (*(v54 + 16))(v67, v55, v56);
    sub_1E588BA24();
    swift_storeEnumTagMultiPayload();
    v61 = v76;
    v60 = v77;
    v62 = v68;
    AsyncState.init(value:ttl:)(v59, v56, v69, v63, v68, *&v76[*(v77 + 36)]);
    (*(v57 + 88))(v66, v62, v60, v58, v57);
    v64 = *(v78 + 8);
    v64(v62, v60);
    (*(v54 + 8))(v55, v56);
    return (v64)(v61, v60);
  }
}

Swift::Void __swiftcall AsyncStateResolver.refresh()()
{
  v2 = *(v0 + 24);
  v31 = *(v2 - 8);
  v3 = (MEMORY[0x1EEE9AC00])();
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v5 = *(v3 + 40);
  v7 = type metadata accessor for AsyncStateValue(0, v2, v5, v6);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v14 = type metadata accessor for AsyncState(0, v2, v5, v13);
  v36 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[3];
  v32 = v1[2];
  v33 = v19;
  v20 = *(v17 + 32);
  ObjectType = swift_getObjectType();
  (*(v20 + 72))(v18, v14, ObjectType, v20);
  (*(v8 + 16))(v12, v16, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v8 + 8))(v12, v7);
    }

    else if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_9;
    }

    v37 = v17;
    v38 = v18;
    v39 = v32;
    v40 = v33;
    v25 = v34;
    swift_storeEnumTagMultiPayload();
    sub_1E587C738(v25, v35, *&v16[*(v14 + 36)]);
    (*(v8 + 8))(v25, v7);
LABEL_9:
    (*(v36 + 8))(v16, v14);
    return;
  }

  v23 = v30;
  v24 = v31;
  if (EnumCaseMultiPayload)
  {
    v28 = sub_1E588BA34();
    v29 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v24 + 32))(v23, v12, v2);
    v37 = v17;
    v38 = v18;
    v39 = v32;
    v40 = v33;
    v26 = v34;
    (*(v24 + 16))(v34, v23, v2);
    swift_storeEnumTagMultiPayload();
    sub_1E587C738(v26, v35, *&v16[*(v14 + 36)]);
    (*(v8 + 8))(v26, v7);
    (*(v24 + 8))(v23, v2);
    (*(v36 + 8))(v16, v14);
    (*(*(v28 - 8) + 8))(&v12[v29], v28);
  }

  else
  {
    (*(v36 + 8))(v16, v14);
    (*(v24 + 8))(v12, v2);
  }
}

Swift::Void __swiftcall AsyncStateResolver.reset()()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = type metadata accessor for AsyncState(0, v3, v4, v1);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v13 = *v2;
  v12 = v2[1];
  v14 = *(*v2 + 32);
  ObjectType = swift_getObjectType();
  (*(v14 + 72))(v12, v5, ObjectType, v14);
  v16 = *(v13 + 32);
  v17 = swift_getObjectType();
  AsyncState.init(ttl:)(v3, v4, *&v11[*(v5 + 36)], v18, v9);
  (*(v16 + 88))(v12, v9, v5, v17, v16);
  v19 = *(v6 + 8);
  v19(v9, v5);
  v19(v11, v5);
}

uint64_t sub_1E587D778(uint64_t *a1, int a2)
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

uint64_t sub_1E587D7C0(uint64_t result, int a2, int a3)
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

uint64_t sub_1E587D800(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = v18;
  *(v9 + 88) = v19;
  *(v9 + 64) = v16;
  *(v9 + 72) = v17;
  *(v9 + 56) = a1;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 24) = a6;
  *(v9 + 32) = a7;
  *(v9 + 16) = a5;
  *(v9 + 96) = *(v17 - 8);
  v11 = swift_task_alloc();
  *(v9 + 104) = v11;
  *(v9 + 112) = sub_1E588BEC4();
  *(v9 + 120) = sub_1E588BEB4();
  v14 = (a7 + *a7);
  v12 = swift_task_alloc();
  *(v9 + 128) = v12;
  *v12 = v9;
  v12[1] = sub_1E587D994;

  return v14(v11);
}

uint64_t sub_1E587D994()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1E588BE64();
    v5 = v4;
    *(v2 + 152) = v3;
    *(v2 + 160) = v4;
    v6 = sub_1E587DD28;
    v7 = v3;
  }

  else
  {
    v6 = sub_1E587DADC;
    v7 = 0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v5);
}

uint64_t sub_1E587DADC(uint64_t a1)
{
  *(v1 + 144) = sub_1E588BEB4();
  v3 = sub_1E588BE64();

  return MEMORY[0x1EEE6DFA0](sub_1E587DB68, v3, v2);
}

void sub_1E587DB68()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  v4 = *(v0 + 8);
  v13 = *(v0 + 9);
  v14 = *(v0 + 17);
  v5 = v0[7];
  v7 = *(v0 + 5);
  v6 = *(v0 + 6);
  v9 = *(v0 + 3);
  v8 = *(v0 + 4);
  v10 = *(v0 + 2);

  sub_1E587E25C(v10, v9, v5, v8, v7, v6, v1, v4, v13, v2, v3);
  if (v14)
  {
  }

  else
  {
    v12 = sub_1E588BE64();

    MEMORY[0x1EEE6DFA0](sub_1E587DC98, v12, v11);
  }
}

uint64_t sub_1E587DC98()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E587DD28()
{
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1E588BAD4();
  __swift_project_value_buffer(v2, qword_1EE2CF9F8);
  v3 = v1;
  v4 = sub_1E588BAB4();
  v5 = sub_1E588C014();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E585C000, v4, v5, "%@", v7, 0xCu);
    sub_1E5878A94(v8);
    MEMORY[0x1E6930700](v8, -1, -1);
    MEMORY[0x1E6930700](v7, -1, -1);
  }

  *(v0 + 168) = sub_1E588B914();

  return MEMORY[0x1EEE6DFA0](sub_1E587DEBC, 0, 0);
}

uint64_t sub_1E587DEBC(uint64_t a1)
{
  *(v1 + 176) = sub_1E588BEB4();
  v3 = sub_1E588BE64();

  return MEMORY[0x1EEE6DFA0](sub_1E587DF48, v3, v2);
}

uint64_t sub_1E587DF48()
{
  v14 = *(v0 + 21);
  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  v4 = *(v0 + 8);
  v3 = *(v0 + 9);
  v5 = v0[7];
  v7 = *(v0 + 5);
  v6 = *(v0 + 6);
  v9 = *(v0 + 3);
  v8 = *(v0 + 4);
  v10 = *(v0 + 2);

  sub_1E587E54C(v10, v9, v5, v8, v7, v6, v14, v4, v3, v1, v2);
  v11 = *(v0 + 19);
  v12 = *(v0 + 20);

  return MEMORY[0x1EEE6DFA0](sub_1E587E05C, v11, v12);
}

uint64_t sub_1E587E05C()
{
  v1 = v0[21];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E587E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for AsyncStateValue(0, v4[5], v4[7], a4) - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[8];
  v12 = v4[9];
  v13 = v4[10];
  v17 = v4[11];
  v14 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1E58688C4;

  return sub_1E587D800(v14, a1, v9, v10, v11, v12, v13, v17, v4 + v8);
}

uint64_t sub_1E587E25C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a7;
  v42 = a8;
  v43 = a6;
  v40 = type metadata accessor for AsyncStateValue(0, a9, a11, a5);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v37 - v15;
  v17 = type metadata accessor for AsyncState(0, a9, a11, v16);
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v38 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  v22 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  v46[0] = v42;
  v46[1] = a9;
  v46[2] = a10;
  v46[3] = a11;
  v24 = type metadata accessor for AsyncStateResolver(0, v46);
  v25 = *(v22 + 72);
  v27 = type metadata accessor for AsyncState(0, *(v24 + 24), *(v24 + 40), v26);
  v42 = a2;
  v28 = a2;
  v29 = v27;
  v25(v28);
  if ((static AsyncStateValue.== infix(_:_:)(v21, v43, a9) & 1) == 0)
  {
    return (*(v44 + 8))(v21, v45);
  }

  sub_1E588BA34();
  swift_getTupleTypeMetadata2();
  v30 = v39;
  (*(*(a9 - 8) + 16))(v39, v41, a9);
  sub_1E588BA24();
  swift_storeEnumTagMultiPayload();
  v31 = v38;
  AsyncState.init(value:ttl:)(v30, a9, a11, v32, v38, a3);
  (*(v22 + 88))(v42, v31, v29, ObjectType, v22);
  v33 = *(v44 + 8);
  v34 = v31;
  v35 = v45;
  v33(v34, v45);
  return (v33)(v21, v35);
}

uint64_t sub_1E587E54C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, char *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = a2;
  v49 = a7;
  v52 = a6;
  v51 = type metadata accessor for AsyncStateValue(0, a9, a11, a5);
  MEMORY[0x1EEE9AC00](v51);
  v16 = (&v45 - v15);
  v18 = type metadata accessor for AsyncState(0, a9, a11, v17);
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v50 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - v21;
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  v56[0] = a8;
  v56[1] = a9;
  v56[2] = a10;
  v56[3] = a11;
  v26 = type metadata accessor for AsyncStateResolver(0, v56);
  v27 = *(v24 + 72);
  v46 = type metadata accessor for AsyncState(0, *(v26 + 24), *(v26 + 40), v28);
  v47 = v23;
  v48 = ObjectType;
  v29 = v24;
  v30 = a9;
  v27(v55);
  if ((static AsyncStateValue.== infix(_:_:)(v22, v52, a9) & 1) == 0)
  {
    return (*(v53 + 8))(v22, v54);
  }

  v31 = v49;
  v32 = [v49 domain];
  v33 = sub_1E588BD24();
  v52 = v34;

  v45 = [v31 code];
  v35 = [v31 localizedDescription];
  v36 = sub_1E588BD24();
  v38 = v37;

  v39 = v52;
  *v16 = v33;
  v16[1] = v39;
  v16[2] = v45;
  v16[3] = v36;
  v16[4] = v38;
  swift_storeEnumTagMultiPayload();
  v40 = v50;
  AsyncState.init(value:ttl:)(v16, v30, a11, v41, v50, a3);
  (*(v29 + 88))(v55, v40, v46, v48, v29);
  v42 = v54;
  v43 = *(v53 + 8);
  v43(v40, v54);
  return (v43)(v22, v42);
}

void *StateProjection.init(get:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = nullsub_1;
  a7[3] = result;
  return result;
}

uint64_t StateProjection.init(get:set:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E587E8E0(uint64_t a1, void (*a2)(sqlite3_stmt *), uint64_t a3, sqlite3_stmt *a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - v14;
  result = sub_1E587EB08(v13, v16);
  if (!v5)
  {
    v25 = a2;
    v26 = sub_1E588BC54();
    while (1)
    {
      v18 = sqlite3_step(a4);
      if (v18 != 100)
      {
        break;
      }

      v25(a4);
      (*(v9 + 16))(v12, v15, a5);
      sub_1E588BE54();
      sub_1E588BE34();
      (*(v9 + 8))(v15, a5);
    }

    if (v18 == 101)
    {
      return v26;
    }

    else
    {
      v19 = v18;

      if (sqlite3_errstr(v19))
      {
        v20 = sub_1E588BDB4();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 4271950;
      }

      sub_1E5878A40();
      swift_allocError();
      *v23 = v19 | 0x8000000000000000;
      v23[1] = v20;
      v23[2] = v22;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1E587EB08(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9610, &qword_1E588EB20);
  result = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(type metadata accessor for DatabaseBinding(0) - 8);
    v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    while (1)
    {
      v13 = *(v4 + 48);
      *v7 = v9;
      result = sub_1E587ECCC(v11, v7 + v13);
      if (v9 == 0x7FFFFFFF)
      {
        __break(1u);
        return result;
      }

      v14 = sub_1E587ED30(v7 + v13, v9 + 1, a2);
      if (v14)
      {
        break;
      }

      ++v9;
      result = sub_1E587F070(v7);
      v11 += v12;
      if (v8 == v9)
      {
        return result;
      }
    }

    v15 = v14;
    if (sqlite3_errstr(v14))
    {
      v16 = sub_1E588BDB4();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 4271950;
    }

    sub_1E5878A40();
    swift_allocError();
    *v19 = v15;
    v19[1] = v16;
    v19[2] = v18;
    swift_willThrow();
    return sub_1E587F070(v7);
  }

  return result;
}

uint64_t sub_1E587ECCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseBinding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E587ED30(uint64_t a1, unsigned int a2, sqlite3_stmt *a3)
{
  v27 = a3;
  v28 = a2;
  v4 = sub_1E588B9A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E588BA34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DatabaseBinding(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v27 - v16);
  sub_1E587ECCC(a1, &v27 - v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      return sqlite3_bind_double(v27, v28, *v17);
    }

    else
    {
      (*(v9 + 32))(v11, v17, v8);
      sub_1E588B9F4();
      *v15 = v22;
      swift_storeEnumTagMultiPayload();
      v23 = sub_1E587ED30(v15, v28, v27);
      sub_1E587F0D8(v15);
      (*(v9 + 8))(v11, v8);
      return v23;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return sqlite3_bind_int64(v27, v28, *v17);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    (*(v5 + 32))(v7, v17, v4);
    *v15 = sub_1E588B944();
    v15[1] = v19;
    swift_storeEnumTagMultiPayload();
    v20 = sub_1E587ED30(v15, v28, v27);
    sub_1E587F0D8(v15);
    (*(v5 + 8))(v7, v4);
    return v20;
  }

  else
  {
    v24 = sub_1E588BD14();

    v25 = [v24 UTF8String];
    v26 = v24;
    return sqlite3_bind_text(v27, v28, v25, -1, 0);
  }
}

uint64_t sub_1E587F070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9610, &qword_1E588EB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E587F0D8(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseBinding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E587F140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 29;
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

uint64_t sub_1E587F190(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 3) << 32;
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

uint64_t sub_1E587F208(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = v6;

  swift_getAtKeyPath();

  (*(v2 + *(a2 + 56)))(v2 + *(a2 + 52), v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E587F318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  v15 = *v4;
  v18[1] = v12;

  swift_getAtKeyPath();

  v16 = *(a2 + 40);
  if (sub_1E588BD04())
  {
    (*(v8 + 8))(v14, v7);
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  else
  {
    (*(v8 + 32))(v11, v14, v7);
    sub_1E587F51C(v15, v11, *(v4 + *(a2 + 56)), *(v4 + *(a2 + 56) + 8), v16, a3);
    (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }
}

uint64_t sub_1E587F51C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  *a6 = a1;
  v12 = (v10 + *v11);
  v13 = v12[1];
  v14 = *(*v12 + 88);
  v18[0] = *(*v12 + 80);
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = a5;
  v15 = type metadata accessor for ChangeObservationContext(0, v18);
  result = (*(*(v13 - 8) + 32))(&a6[*(v15 + 52)], a2, v13);
  v17 = &a6[*(v15 + 56)];
  *v17 = a3;
  *(v17 + 1) = a4;
  return result;
}

uint64_t *ChangeObserver.__allocating_init(store:)(uint64_t a1)
{
  swift_allocObject();
  v5 = sub_1E58800F0(a1, v2, v3, v4);

  return v5;
}

uint64_t *ChangeObserver.init(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E58800F0(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1E587F68C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E587F6E4();
  }

  return result;
}

uint64_t sub_1E587F6E4()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v2 + 80);
  type metadata accessor for Store(255, v3, *(v2 + 88), v4);
  sub_1E588C184();

  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1E588BC44();
  sub_1E588BC84();
  swift_getWitnessTable();
  sub_1E588BDE4();

  v1[4] = v3;
}

uint64_t sub_1E587F84C(uint64_t a1, void *a2, uint64_t *a3)
{
  v30 = a1;
  v29 = *a3;
  v27 = a2;
  v4 = a2 + 1;
  *&v34 = *a2;

  v28 = v4;
  sub_1E586D79C(v4, &v34 + 8);

  sub_1E5865C84((&v34 + 8), v37);
  v6 = v38;
  v5 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v7 = a3[2];
  v8 = *(v5 + 40);
  v9 = sub_1E588C0A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v26 = v7;
  v8(v7, v6, v5);
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v10 + 8))(v12, v9);
    *&v34 = *v27;

    sub_1E586D79C(v28, &v34 + 8);
    v14 = v34;
    sub_1E586D79C(v37, v33);
    v32[0] = v14;
    v15 = *(v29 + 80);
    type metadata accessor for Store(255, v15, *(v29 + 88), v16);
    sub_1E588C184();
    v40 = v15;
    swift_getExtendedExistentialTypeMetadata_unique();
    sub_1E588BC84();
    sub_1E588BCC4();
    v17 = &v34 + 8;
  }

  else
  {
    v35 = v6;
    v36 = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v6);
    sub_1E5865C84(&v34, v33);
    *&v34 = *v27;

    sub_1E586D79C(v28, &v34 + 8);
    v19 = v34;
    sub_1E586D79C(v33, v32);
    v40 = v19;
    v20 = *(v29 + 80);
    type metadata accessor for Store(255, v20, *(v29 + 88), v21);
    sub_1E588C184();
    v31 = v20;
    swift_getExtendedExistentialTypeMetadata_unique();
    sub_1E588BC84();
    sub_1E588BCC4();
    __swift_destroy_boxed_opaque_existential_0(&v34 + 1);
    v22 = v38;
    v23 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v23 + 32))(v26, v22, v23);
    v17 = v33;
  }

  __swift_destroy_boxed_opaque_existential_0(v17);
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t ChangeObserver.beginTrackingChanges<A>(for:changeHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v18 = a3;
  v16 = *v4;
  v7 = v16;
  v8 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - v9;
  swift_beginAccess();
  v20 = a1;
  sub_1E588C184();
  v11 = *(v7 + 80);

  v19 = v11;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1E588BCB4();

  swift_endAccess();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(&v21);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1E588C124();
    MEMORY[0x1E692F890](0xD00000000000001CLL, 0x80000001E5894100);
    v26 = a1;
    sub_1E588C4A4();
    sub_1E588C364();
    MEMORY[0x1E692F890](0xD000000000000014, 0x80000001E5894120);
    result = sub_1E588C214();
    __break(1u);
  }

  else
  {
    v26 = v4[2];

    swift_getAtKeyPath();

    v12 = *(v16 + 88);
    v21 = v11;
    v22 = v8;
    v23 = v12;
    v24 = a4;
    v24 = type metadata accessor for ChangeObservationContext(0, &v21);
    WitnessTable = swift_getWitnessTable();
    v13 = __swift_allocate_boxed_opaque_existential_1(&v21);
    sub_1E587F51C(a1, v10, v17, v18, a4, v13);
    v20 = a1;
    swift_beginAccess();
    sub_1E588BC84();

    sub_1E588BCC4();
    return swift_endAccess();
  }

  return result;
}

uint64_t ChangeObserver.endTrackingChanges(for:)(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for Store(255, *(v2 + 80), *(v2 + 88), v3);
  sub_1E588C184();

  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1E588BC84();
  sub_1E588BCC4();
  return swift_endAccess();
}

void *ChangeObserver.deinit()
{

  return v0;
}

uint64_t ChangeObserver.__deallocating_deinit()
{
  ChangeObserver.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t *sub_1E58800F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v5[3] = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  type metadata accessor for Store(255, v8, v9, a4);
  v10 = sub_1E588C184();
  ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
  swift_getTupleTypeMetadata2();
  v12 = sub_1E588BE04();
  v13 = sub_1E585F3C8(v12, v10, ExtendedExistentialTypeMetadata_unique, MEMORY[0x1E69E6930]);

  v5[4] = v13;
  v5[2] = a1;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E58807B8;
  *(v16 + 24) = v15;
  sub_1E588BB84();

  sub_1E588BBA4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9618, &qword_1E588ED40);
  sub_1E5860DA8();
  sub_1E588BAF4();
  swift_endAccess();

  return v5;
}

unint64_t sub_1E58803E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Store(255, a1[2], a1[4], a4);
  result = sub_1E588C4A4();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = sub_1E586C56C();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E58804A4(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

void *sub_1E58805EC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1E58807E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E5861A80(a3, v25 - v10);
  v12 = sub_1E588BEE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E585F6D8(v11);
  }

  else
  {
    sub_1E588BED4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E588BE64();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E588BD84() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E585F6D8(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E585F6D8(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E5880AA0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA84();

  sub_1E588BB24();
  swift_getKeyPath();
  sub_1E588BA74();
}

uint64_t sub_1E5880BFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *a4;
  sub_1E588BEC4();
  v6[6] = sub_1E588BEB4();
  v8 = sub_1E588BE64();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E5880CC0, v8, v7);
}

uint64_t sub_1E5880CC0()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v1 = v0;
  v1[1] = sub_1E5880D9C;
  v3 = v0[3];
  v4 = v0[4];

  return sub_1E58743D8(v3, v4, AssociatedTypeWitness);
}

uint64_t sub_1E5880D9C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5880EBC, v3, v2);
}

uint64_t sub_1E5880EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5880F1C(void *a1)
{
  v2 = (*a1 + *MEMORY[0x1E69E77B0]);
  v3 = *v2;
  v4 = *(*v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v10 - v5;
  v11 = v1;
  v10[0] = *(v7 + 80);
  v10[1] = *(v8 + 8);
  v10[2] = *(v7 + 88);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA64();

  sub_1E588BB34();
  swift_getAtKeyPath();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E5881110(void *a1, uint64_t a2)
{
  v18 = a2;
  v17 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v2 = *(v17 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v17 - v4;
  v7 = *v6;
  v8 = *(*v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v3);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1E588BB34();
  (*(v2 + 16))(v5, v18, v17);
  swift_setAtWritableKeyPath();
  sub_1E588BB34();
  swift_getAssociatedConformanceWitness();
  v14 = sub_1E588BD04();
  v15 = *(v8 + 8);
  v15(v11, v7);
  if ((v14 & 1) == 0)
  {
    sub_1E5880AA0(v13);
  }

  return (v15)(v13, v7);
}

uint64_t sub_1E588137C(void *a1, uint64_t a2)
{
  v18 = a2;
  v17 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v2 = *(v17 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v17 - v4;
  v7 = *v6;
  v8 = *(*v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v3);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1E588BB34();
  (*(v2 + 16))(v5, v18, v17);
  swift_setAtWritableKeyPath();
  sub_1E588BB34();
  swift_getAssociatedConformanceWitness();
  v14 = sub_1E588BD04();
  v15 = *(v8 + 8);
  v15(v11, v7);
  if ((v14 & 1) == 0)
  {
    sub_1E5862918(v13);
  }

  return (v15)(v13, v7);
}

char *sub_1E58815E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = *v7;
  v22 = *a3;
  v23 = a3[3];
  v14 = *(*v7 + 80);
  v15 = *(*v7 + 88);
  v30[0] = a6;
  v30[1] = v14;
  v30[2] = a7;
  v31 = v15;
  type metadata accessor for ChildStore(0, v30);
  v16 = *(v7 + v13[15]);
  v17 = *(v7 + v13[17]);
  sub_1E586D79C(v7 + v13[19], v30);
  v18 = v31;
  v19 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;

  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  (*(v19 + 48))(&__tp, a6, a6, a7, v18, v19, __tp.tv_nsec / 1000000000.0 + __tp.tv_sec);
  v26 = v22;
  v27 = *(a3 + 1);
  v28 = v23;

  sub_1E5866F7C(a4, a5);
  v20 = sub_1E5889B1C(a1, v16, a2, v17, &__tp, &v26, a4, a5);
  sub_1E5866F8C(a4, a5);
  __swift_destroy_boxed_opaque_existential_0(&__tp);

  __swift_destroy_boxed_opaque_existential_0(v30);
  swift_getWitnessTable();
  return v20;
}

char *sub_1E588183C()
{
  v1 = *v0;

  v2 = qword_1EE2CF9F0;
  v3 = sub_1E588BAA4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 152)));
  return v0;
}

uint64_t sub_1E5881990()
{
  sub_1E588183C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E5881A04@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1E588C134();
  *a3 = result;
  return result;
}

uint64_t sub_1E5881A48(uint64_t a1)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for SideEffect(0, AssociatedTypeWitness, v6, v7) - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[6];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E58688C4;

  return sub_1E5880BFC(a1, v11, v12, v13, v1 + v9, v1 + v10);
}

uint64_t sub_1E5881B98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E58688C4;

  return sub_1E585DE7C(a1, v4);
}

uint64_t sub_1E5881C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  (*(*(a2 - 8) + 32))(a5, a1, a2);
  result = type metadata accessor for JournalEntry(0, a2, a3, a4);
  *(a5 + *(result + 44)) = a6;
  return result;
}

uint64_t sub_1E5881CFC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5881D74(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1E5881E78(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1E5881FFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E588C374();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E58820CC(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1E5882104(void *a1, void *a2)
{
  v11 = a2[2];
  v3 = a2[3];
  v10 = a2[4];
  type metadata accessor for JournalEntry.CodingKeys(255, v11, v3, v10);
  swift_getWitnessTable();
  v4 = sub_1E588C344();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E588C494();
  v14 = 0;
  v8 = v12;
  sub_1E588C334();
  if (!v8)
  {
    v13 = 1;
    sub_1E588C314();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E58822A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v34 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalEntry.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v37 = sub_1E588C2E4();
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v29 - v13;
  v35 = a2;
  v36 = a3;
  v15 = type metadata accessor for JournalEntry(0, a2, a3, a4);
  v31 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v39;
  sub_1E588C484();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v39 = v17;
  v30 = v15;
  v19 = v33;
  v20 = v34;
  v41 = 0;
  v21 = v37;
  v22 = v35;
  sub_1E588C2C4();
  v23 = v39;
  (*(v20 + 32))(v39, v38, v22);
  v40 = 1;
  sub_1E588C2A4();
  v25 = v24;
  (*(v19 + 8))(v14, v21);
  v26 = v30;
  v27 = v31;
  *&v23[*(v30 + 44)] = v25;
  (*(v27 + 16))(v32, v23, v26);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v27 + 8))(v23, v26);
}

uint64_t sub_1E588266C(uint64_t a1)
{
  sub_1E588C434();
  sub_1E5865E98(v3, *v1);
  return sub_1E588C464();
}

uint64_t sub_1E58826CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5881FFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5882700@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5872CC0();
  *a1 = result;
  return result;
}

uint64_t sub_1E5882734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5882788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseRow.Failure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for DatabaseRow.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DatabaseBinding(uint64_t a1)
{
  result = qword_1EE2CDB98;
  if (!qword_1EE2CDB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5882994(uint64_t a1)
{
  result = sub_1E588BA34();
  if (v2 <= 0x3F)
  {
    result = sub_1E588B9A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *Store.fragment<A>(feature:initialLocalState:stateProjection:forwardToParent:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  v16 = v7[3];
  v15 = v7[4];
  ObjectType = swift_getObjectType();
  v18 = a3[1];
  v21[0] = *a3;
  v21[1] = v18;
  return sub_1E5882F80(v16, a1, a2, v21, a4, a5, *(v14 + 80), a6, ObjectType, a7, v15);
}

uint64_t Store.objectWillChange.getter()
{
  sub_1E5883058();
}

uint64_t Store.binding<A>(keyPath:)(uint64_t *a1)
{
  return sub_1E5882C40(a1, &unk_1F5F57908, &unk_1F5F57930, sub_1E5883328, nullsub_1);
}

{
  return sub_1E5882C40(a1, &unk_1F5F57958, &unk_1F5F57980, sub_1E588332C, nullsub_1);
}

{
  return sub_1E5882DE8(a1, &unk_1F5F579A8, &unk_1F5F579D0, sub_1E5883060, sub_1E58830FC);
}

{
  return sub_1E5882DE8(a1, &unk_1F5F579F8, &unk_1F5F57A20, sub_1E5883194, sub_1E5883278);
}

uint64_t sub_1E5882C40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *a1;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = a1;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = *(v7 + 80);
  v10[5] = *(v8 + *MEMORY[0x1E69E77B0] + 8);
  v10[6] = *(v7 + 88);

  return sub_1E588BBB4();
}

uint64_t sub_1E5882DE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = a1;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = a1;
  swift_retain_n();
  swift_retain_n();

  return sub_1E588BBB4();
}

void *Store.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t Store.__deallocating_deinit()
{
  Store.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1E5882F48@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E5883058();
}

void *sub_1E5882F80(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a4[1];
  v20[0] = *a4;
  v20[1] = v12;
  v13 = (*(a11 + 96))(a2, a3, v20, a5, a6, a8, a10, a9, a11);
  v15 = v14;
  ObjectType = swift_getObjectType();
  type metadata accessor for Store(0, a8, a10, v17);
  swift_allocObject();
  v18 = sub_1E5861814(v13, ObjectType, v15);
  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1E5883064()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 72))(v2, *(*v2 + *MEMORY[0x1E69E77B0] + 8), ObjectType, v3);
}

uint64_t sub_1E58830FC(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  return (*(v5 + 88))(v4, a1, *(*v4 + *MEMORY[0x1E69E6CE8] + 8), ObjectType, v5);
}

uint64_t sub_1E5883198()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 64))(v2, *(*v2 + *MEMORY[0x1E69E77B0] + 8), ObjectType, v3);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E5883278(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  return (*(v5 + 80))(v4, a1, *(*v4 + *MEMORY[0x1E69E6CE8] + 8), ObjectType, v5);
}

uint64_t sub_1E5883330(uint64_t *a1)
{
  result = type metadata accessor for JournalMode(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for JournalFilePlayer(255, a1[10], a1[11], a1[12]);
    result = sub_1E588C0A4();
    if (v4 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E5883438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E588B934();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E588B9A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a2;
  v14[1] = a3;
  (*(v6 + 104))(v8, *MEMORY[0x1E6968F70], v5);
  sub_1E5860A38();
  sub_1E588B994();
  (*(v6 + 8))(v8, v5);
  sub_1E588B964();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E5883694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v54 = a4;
  v13 = *(*v6 + 80);
  v14 = *(*v6 + 96);
  v51 = *(*v6 + 88);
  v52 = v13;
  v50 = v14;
  v15 = type metadata accessor for JournalFilePlayer(255, v13, v51, v14);
  v16 = sub_1E588C0A4();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v41 - v17;
  v18 = sub_1E588B934();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E588B9A4();
  v49 = *(v55 - 8);
  v20 = MEMORY[0x1EEE9AC00](v55);
  v45 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  v24 = type metadata accessor for JournalMode(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + qword_1ECFF9740) = 0;
  v27 = *(*(v15 - 8) + 56);
  v27(v7 + *(*v7 + 136), 1, 1, v15);
  sub_1E585E8CC(a1, v7 + qword_1ECFF9728);
  *(v7 + qword_1ECFF9730) = a5;
  v28 = (v7 + qword_1ECFF9738);
  v53 = a2;
  *v28 = a2;
  v28[1] = a3;
  v29 = a3;
  v30 = a1;
  *(v7 + *(*v7 + 144)) = v54;
  sub_1E585E8CC(a1, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_1E5860AF0(a1);
      (*(v49 + 32))(v23, v26, v55);
      v32 = v42;
      sub_1E5876ED0(v23, v53, v29, v52, v51, v50, v42, a6 - a5);
      v27(v32, 0, 1, v15);
      v33 = *(*v7 + 136);
      swift_beginAccess();
      (*(v43 + 40))(v7 + v33, v32, v44);
      swift_endAccess();
    }

    else
    {
      sub_1E5860AF0(a1);
    }
  }

  else
  {
    v54 = *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9600, &qword_1E588E8F8) + 48)];
    v34 = v49;
    (*(v49 + 32))(v23, v26, v55);
    v57 = 0;
    v58 = 0xE000000000000000;
    v41 = v29;

    MEMORY[0x1E692F890](1598310736, 0xE400000000000000);
    v56 = getpid();
    v35 = sub_1E588C354();
    MEMORY[0x1E692F890](v35);

    MEMORY[0x1E692F890](95, 0xE100000000000000);
    sub_1E588BF34();
    v37 = v46;
    v36 = v47;
    v38 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x1E6968F70], v48);
    sub_1E5860A38();
    v39 = v45;
    sub_1E588B994();
    sub_1E5860AF0(v30);
    (*(v36 + 8))(v37, v38);
    (*(v34 + 8))(v23, v55);

    type metadata accessor for JournalFileRecorder(0, v52, v51, v50);
    *(v7 + qword_1ECFF9740) = sub_1E5868AC4(v39, v53, v41, v54, a5);
  }

  return v7;
}

uint64_t **sub_1E5883C70()
{
  v1 = *v0;
  sub_1E5860AF0(v0 + qword_1ECFF9728);

  v2 = (*v0)[17];
  type metadata accessor for JournalFilePlayer(255, v1[10], v1[11], v1[12]);
  v3 = sub_1E588C0A4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_1E5883D80()
{
  sub_1E5883C70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

BOOL sub_1E5883DF0()
{
  v1 = type metadata accessor for JournalMode(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E585E8CC(v0 + qword_1ECFF9728, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_1E588B9A4();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  else
  {
    sub_1E5860AF0(v3);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t sub_1E5883EDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 88);
  v8 = *(*v2 + 96);
  v9 = type metadata accessor for JournalFilePlayer(0, v6, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 136);
  swift_beginAccess();
  result = (*(v10 + 48))(v2 + v13, 1, v9);
  if (!result)
  {
    (*(v10 + 16))(v12, v2 + v13, v9);
    v15 = swift_allocObject();
    v15[2] = v6;
    v15[3] = v7;
    v15[4] = v8;
    v15[5] = a1;
    v15[6] = a2;

    sub_1E5876F90(sub_1E587A3F0, v15, v9);
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1E5884204@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v6 = v5;
  v10 = type metadata accessor for JournalMode(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v5 + 144);
  swift_beginAccess();
  v14 = *(v5 + v13);
  if (*(v14 + 16) && (v15 = sub_1E587A4A8(a1), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    v17 = 0;
  }

  result = swift_endAccess();
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = sub_1E588C4E4();
    v34 = v19;
    MEMORY[0x1E692F890](95, 0xE100000000000000);
    v32 = v17 + 1;
    v20 = sub_1E588C354();
    MEMORY[0x1E692F890](v20);

    v21 = v33;
    v31 = v34;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v6 + v13);
    *(v6 + v13) = 0x8000000000000000;
    sub_1E587ACE0(v17 + 1, a1, isUniquelyReferenced_nonNull_native);
    v23 = v32;
    *(v6 + v13) = v32;
    swift_endAccess();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = swift_getAssociatedConformanceWitness();
    v27 = type metadata accessor for JournalFile(0, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
    sub_1E585E8CC(v6 + qword_1ECFF9728, v12);
    v28 = *(v6 + qword_1ECFF9730);
    swift_allocObject();

    v29 = sub_1E5883694(v12, v21, v31, v23, v28, a5);
    a4[3] = v27;
    result = swift_getWitnessTable();
    a4[4] = result;
    *a4 = v29;
  }

  return result;
}

uint64_t sub_1E58844BC(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_1E588BEE4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v6;
  *(v16 + 5) = *(v5 + 88);
  *(v16 + 6) = *(v5 + 96);
  *(v16 + 7) = v2;
  (*(v7 + 32))(&v16[v15], v10, v6);
  *&v16[(v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  sub_1E58807E0(0, 0, v13, &unk_1E588F320, v16);
}

uint64_t sub_1E58846F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a1;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1E588471C, 0, 0);
}

uint64_t sub_1E588471C()
{
  v1 = *(*(v0 + 2) + qword_1ECFF9740);
  *(v0 + 5) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 6) = v2;
    *v2 = v0;
    v2[1] = sub_1E5884808;
    v3 = v0[4];
    v4 = *(v0 + 3);

    return sub_1E5868E04(v4, v3);
  }

  else
  {
    v6 = *(v0 + 1);

    return v6();
  }
}

uint64_t sub_1E5884808()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5884944, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E5884944()
{

  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1E588BAD4();
  __swift_project_value_buffer(v2, qword_1EE2CF9F8);
  v3 = v1;
  v4 = sub_1E588BAB4();
  v5 = sub_1E588C014();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E585C000, v4, v5, "%@", v8, 0xCu);
    sub_1E5878A94(v9);
    MEMORY[0x1E6930700](v9, -1, -1);
    MEMORY[0x1E6930700](v8, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E5884B64(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[7];
  v8 = *(v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58688C4;

  return sub_1E58846F8(v8, a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_1E5884C90(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF97C8, &qword_1E588F3C0);
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 16) = nullsub_1;
  *(v6 + 24) = 0;
  *(v6 + 32) = nullsub_1;
  *(v6 + 40) = 0;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = v6;
  v7 = objc_opt_self();
  v21 = a1;
  v8 = [v7 defaultCenter];
  v9 = *MEMORY[0x1E69DDAC8];
  v10 = objc_opt_self();
  v11 = [v10 mainQueue];
  v12 = swift_allocObject();
  swift_weakInit();
  v26 = sub_1E588547C;
  v27 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1E5885090;
  v25 = &block_descriptor_2;
  v13 = _Block_copy(&aBlock);

  [v8 addObserverForName:v9 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);

  v14 = [v7 defaultCenter];
  v15 = *MEMORY[0x1E69DDBC0];
  v16 = [v10 mainQueue];
  v17 = swift_allocObject();
  swift_weakInit();

  v26 = sub_1E588548C;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1E5885090;
  v25 = &block_descriptor_10;
  v18 = _Block_copy(&aBlock);

  [v14 addObserverForName:v15 object:0 queue:v16 usingBlock:v18];
  _Block_release(v18);

  v19 = *(v2 + 24);

  os_unfair_lock_lock((v19 + 64));
  sub_1E5885494((v19 + 16));
  os_unfair_lock_unlock((v19 + 64));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1E5885004(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    os_unfair_lock_lock((v3 + 64));
    v4 = *(v3 + 32);

    os_unfair_lock_unlock((v3 + 64));
    v4();
  }

  return result;
}

uint64_t sub_1E5885090(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E588B8E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1E588B8D4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E5885184(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    os_unfair_lock_lock((v3 + 64));
    v4 = *(v3 + 16);

    os_unfair_lock_unlock((v3 + 64));
    v4();
  }

  return result;
}

uint64_t sub_1E5885210(void (**a1)(), void (*a2)(), void (*a3)())
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *a1 = nullsub_1;
  a1[1] = 0;
  a1[2] = nullsub_1;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRetain();
}

uint64_t sub_1E58852A4()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E5885308(uint64_t *a1, int a2)
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

uint64_t sub_1E5885350(uint64_t result, int a2, int a3)
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

double sub_1E58853AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v8;
  *(a1 + 32) = v7;

  return result;
}

double sub_1E5885410(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = a1[2];

  *a1 = v7;
  *(a1 + 2) = a2;
  *(a1 + 3) = a3;
  a1[2] = v8;

  return result;
}

unint64_t sub_1E5885508()
{
  result = qword_1ECFF97D0[0];
  if (!qword_1ECFF97D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECFF97D0);
  }

  return result;
}

uint64_t sub_1E5885574(void *a1)
{
  result = sub_1E588BAA4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1E58856D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E5861A80(a3, v25 - v10);
  v12 = sub_1E588BEE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E585F6D8(v11);
  }

  else
  {
    sub_1E588BED4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E588BE64();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E588BD84() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E5885978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E5861A80(a3, v25 - v10);
  v12 = sub_1E588BEE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E585F6D8(v11);
  }

  else
  {
    sub_1E588BED4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E588BE64();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E588BD84() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9858, &qword_1E588F578);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9858, &qword_1E588F578);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E5885C2C(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 192));
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8);
  LOBYTE(v5) = (*(v5 + 32))(v4, v5);
  result = (*(v7 + 8))(v9, v4);
  if ((v5 & 1) == 0)
  {
    return sub_1E5885DB4(a1);
  }

  return result;
}

uint64_t sub_1E5885D58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E588BB64();
  }

  return result;
}

uint64_t sub_1E5885DB4(uint64_t a1)
{
  v2 = v1;
  v91 = *MEMORY[0x1E69E9840];
  v72 = *v1;
  v4 = *(v72 + 96);
  v5 = *(v72 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v81 = AssociatedTypeWitness;
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v65[-v10];
  v74 = swift_getAssociatedTypeWitness();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &v65[-v11];
  v12 = swift_getAssociatedTypeWitness();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v73 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v65[-v15];
  v76 = v4;
  v75 = v5;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v65[-v21];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  tv_sec = __tp.tv_sec;
  tv_nsec = __tp.tv_nsec;
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v84 = v9;
  v23 = sub_1E588BAD4();
  __swift_project_value_buffer(v23, qword_1EE2CF9F8);
  v24 = *(v17 + 16);
  v82 = a1;
  v24(v22, a1, v16);
  v25 = sub_1E588BAB4();
  v26 = sub_1E588C004();
  v27 = os_log_type_enabled(v25, v26);
  v83 = v16;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v66 = v26;
    v29 = v28;
    v67 = swift_slowAlloc();
    __tp.tv_sec = v67;
    *v29 = 136315394;
    v86[0] = v75;
    swift_getMetatypeMetadata();
    v30 = sub_1E588BD74();
    v32 = sub_1E586163C(v30, v31, &__tp.tv_sec);

    *(v29 + 4) = v32;
    v16 = v83;
    *(v29 + 12) = 2080;
    v24(v20, v22, v16);
    v33 = sub_1E588BD74();
    v35 = v34;
    (*(v17 + 8))(v22, v16);
    v36 = sub_1E586163C(v33, v35, &__tp.tv_sec);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_1E585C000, v25, v66, "%s.%s", v29, 0x16u);
    v37 = v67;
    swift_arrayDestroy();
    MEMORY[0x1E6930700](v37, -1, -1);
    MEMORY[0x1E6930700](v29, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v22, v16);
  }

  v40 = v68;
  v68 = type metadata accessor for SideEffect(0, v16, v38, v39);
  v87 = sub_1E588BC54();
  v41 = v2 + *(*v2 + 152);
  v42 = *v41;
  v67 = *(v2 + *(*v2 + 136));
  sub_1E588BB34();
  v43 = v77;
  v42(v40);
  v69 = *(v69 + 8);
  (v69)(v40, v74);
  sub_1E588BB34();
  v44 = v73;
  (*(v78 + 16))(v73, v43, v79);
  v45 = v84;
  (*(v80 + 16))();
  (*(v76 + 64))(v45, v44, &v87, v82, v75, v76);
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E588BB34();
    (*(v41 + 2))(v40, v44);
    sub_1E5887588(v40);
    sub_1E588BB64();
    (v69)(v40, v74);
  }

  v46 = v81;
  swift_getAssociatedConformanceWitness();
  v47 = v84;
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E5887718(v47);
  }

  swift_getWitnessTable();
  v48 = sub_1E588C134();

  WitnessTable = swift_getWitnessTable();
  v50 = sub_1E5864DBC(v48, WitnessTable, v86);
  __tp.tv_sec = v87;
  MEMORY[0x1EEE9AC00](v50);
  *&v65[-16] = v2;
  *&v65[-8] = v86;
  sub_1E588BE54();
  swift_getWitnessTable();
  sub_1E588BDF4();

  v51 = *v2;
  v52 = (v2 + *(*v2 + 160));
  if (*v52)
  {
    v53 = v82;
    v54 = v84;
    (*v52)(v82, v84, v44);
    v51 = *v2;
  }

  else
  {
    v54 = v84;
    v53 = v82;
  }

  v55 = tv_nsec / 1000000000.0 + tv_sec;
  sub_1E586D79C(v2 + *(v51 + 192), &__tp);
  v56 = v89;
  v57 = v90;
  __swift_project_boxed_opaque_existential_1(&__tp, v89);
  (*(v57 + 56))(v53, v56, v57, v55);
  v58 = *(v80 + 8);
  v58(v54, v46);
  v59 = v79;
  v60 = *(v78 + 8);
  v60(v44, v79);
  v58(v85, v46);
  v60(v77, v59);
  __swift_destroy_boxed_opaque_existential_0(&__tp);
  v63 = type metadata accessor for StoreProxy(0, v83, v61, v62);
  return (*(*(v63 - 8) + 8))(v86, v63);
}

char *sub_1E5886884()
{
  v1 = v0;
  v49 = *v0;
  v2 = v49;
  v55 = sub_1E588BBC4();
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E588BBE4();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - v8;
  v59 = v2[10];
  v60 = *(v59 - 8);
  v10 = v60;
  v11 = *(v60 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = (v0 + v2[19]);
  v43 = *v15;
  v40 = v15[3];
  v53 = v15;
  v52 = v2[17];
  v61 = *(v0 + v52);
  v54 = v2[18];
  v41 = *(v0 + v54);
  v50 = v2[16];
  v47 = *(v10 + 16);
  v62 = *(v15 + 1);
  v44 = &v38 - v13;
  v47(&v38 - v13, v0 + v50);
  v45 = v62;

  swift_getWitnessTable();
  v16 = sub_1E588C134();
  v49 = *(*v0 + 168);
  v17 = *(v49 + v0);
  v64 = MEMORY[0x1E69E5FE0];
  v65 = MEMORY[0x1E69E5FE8];
  aBlock[0] = v16;
  v18 = sub_1E588BEE4();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_1E586D79C(aBlock, &v67);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  sub_1E586DDBC(&v67, (v19 + 5));

  sub_1E58807E0(0, 0, v9, &unk_1E588F610, v19);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  sub_1E5877D58();
  v39 = sub_1E588C054();
  v20 = v42;
  v21 = v59;
  (v47)(v42, v14, v59);
  v22 = v60;
  v23 = (*(v60 + 80) + 88) & ~*(v60 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v47 = v2[11];
  *(v24 + 24) = v47;
  *(v24 + 32) = v2[12];
  v46 = v2[13];
  *(v24 + 40) = v46;
  *(v24 + 48) = v43;
  *(v24 + 56) = v62;
  v25 = v61;
  *(v24 + 72) = v40;
  *(v24 + 80) = v25;
  (*(v22 + 32))(v24 + v23, v20, v21);
  *(v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
  v65 = sub_1E5889F18;
  v66 = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  v64 = &block_descriptor_3;
  v26 = _Block_copy(aBlock);

  v27 = v48;
  sub_1E588BBD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5877E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E5877E74(&qword_1EE2CD298, &qword_1ECFF93C8, &qword_1E588D5A8, MEMORY[0x1E69E6328]);
  v28 = v51;
  v29 = v55;
  sub_1E588C0D4();
  v30 = v39;
  MEMORY[0x1E692FB50](0, v27, v28, v26);
  _Block_release(v26);

  (*(v58 + 8))(v28, v29);
  (*(v56 + 8))(v27, v57);
  v31 = v59;
  v32 = *(v60 + 8);
  v32(v44, v59);

  v33 = qword_1EE2CFA10;
  v34 = sub_1E588BAA4();
  (*(*(v34 - 8) + 8))(v1 + v33, v34);
  v32((v1 + v50), v31);

  sub_1E5866F8C(*(v1 + *(*v1 + 160)), *(v1 + *(*v1 + 160) + 8));

  v35 = *(*v1 + 176);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v1 + v35, AssociatedTypeWitness);

  __swift_destroy_boxed_opaque_existential_0((v1 + *(*v1 + 192)));
  return v1;
}

uint64_t sub_1E5887178(void (*a1)(char *), uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a8;
  v34 = a2;
  v39 = a6;
  v30 = a4;
  v31 = a3;
  v35 = a1;
  v37 = a7;
  v38 = *(*a7 + *MEMORY[0x1E695BFA0]);
  v36 = *(v38 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v30 - v12;
  v16 = *(v14 + v15);
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v19 = &v30 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v30 - v25;
  v32 = a5;
  sub_1E588BB34();
  v35(v19);
  v27 = *(v17 + 8);
  v34 = v17 + 8;
  v35 = v16;
  v27(v19, v16);
  (*(v21 + 16))(v24, v26, AssociatedTypeWitness);
  sub_1E588BB34();
  (*(a10 + 72))(v13, v24, v33, a10);
  (*(v36 + 8))(v13, v38);
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E588BB34();
    v31(v19, v24);
    sub_1E588BB24();
    v27(v19, v35);
  }

  v28 = *(v21 + 8);
  v28(v24, AssociatedTypeWitness);
  return (v28)(v26, AssociatedTypeWitness);
}

uint64_t sub_1E5887518()
{
  sub_1E5886884();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E5887588(uint64_t a1)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA84();

  sub_1E588BB24();
  swift_getKeyPath();
  sub_1E588BA74();
}

uint64_t sub_1E5887718(uint64_t a1)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA84();

  sub_1E588BB24();
  swift_getKeyPath();
  sub_1E588BA74();
}

uint64_t sub_1E58878A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29 = a1;
  v32 = *a2;
  v31 = *(v32 + 96);
  v30 = *(v32 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for SideEffect(0, AssociatedTypeWitness, v5, v6);
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v28 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_1E588BEE4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, v29, v7);
  v19 = type metadata accessor for StoreProxy(0, AssociatedTypeWitness, v17, v18);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v33, a3, v19);
  v21 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v32;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v30;
  *(v23 + 5) = *(v24 + 88);
  *(v23 + 6) = v31;
  *(v23 + 7) = *(v24 + 104);
  *(v23 + 8) = v16;
  (*(v8 + 32))(&v23[v21], v28, v27);
  (*(v20 + 32))(&v23[v22], v33, v19);
  sub_1E5885978(0, 0, v14, &unk_1E588F560, v23);

  return sub_1E585F6D8(v14);
}

uint64_t sub_1E5887BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a7;
  v7[10] = v9;
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a1;
  v7[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E5887C10, 0, 0);
}

uint64_t sub_1E5887C10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    *(v0 + 96) = *(Strong + *(*Strong + 168));

    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *v2 = v0;
    v2[1] = sub_1E5887D70;
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);

    return sub_1E58743D8(v4, v5, AssociatedTypeWitness);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E5887D70()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5887E88, 0, 0);
}

uint64_t sub_1E5887EB0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = (*a1 + *MEMORY[0x1E69E77B0]);
  v5 = *v4;
  v6 = *(*v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v15 = v2;
  v9 = *(v3 + 96);
  v12 = *(v3 + 80);
  v13 = *(v10 + 8);
  v14 = v9;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA64();

  sub_1E588BB34();
  swift_getAtKeyPath();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E588807C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v19 = *v2;
  v3 = v19;
  v4 = *a1;
  v5 = *(v19 + 104);
  v6 = *(v19 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v19 - v9;
  v11 = (v4 + *MEMORY[0x1E69E77B0]);
  v12 = *v11;
  v13 = *(*v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v15 = &v19 - v14;
  v28 = v2;
  v23 = *(v3 + 80);
  v24 = v6;
  v25 = *(v16 + 8);
  v26 = *(v3 + 96);
  v27 = v5;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA64();

  v17 = *(v2 + *(*v2 + 152));
  sub_1E588BB34();
  v17(v10);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  swift_getAtKeyPath();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1E588836C(void *a1, uint64_t a2)
{
  v18 = a2;
  v17 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v2 = *(v17 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v17 - v4;
  v7 = *v6;
  v8 = *(*v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v3);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1E588BB34();
  (*(v2 + 16))(v5, v18, v17);
  swift_setAtWritableKeyPath();
  sub_1E588BB34();
  swift_getAssociatedConformanceWitness();
  v14 = sub_1E588BD04();
  v15 = *(v8 + 8);
  v15(v11, v7);
  if ((v14 & 1) == 0)
  {
    sub_1E5887718(v13);
  }

  return (v15)(v13, v7);
}

uint64_t sub_1E58885D8(void *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v32 = a1;
  v4 = *v2;
  v5 = (*a1 + *MEMORY[0x1E69E6CE8]);
  v30 = v5[1];
  v29 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v23 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v23 - v9;
  v11 = *v5;
  v26 = *(*v5 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = *(v3 + *(v4 + 152));
  v24 = (v3 + *(v4 + 152));
  v23 = *(v3 + *(v4 + 136));
  sub_1E588BB34();
  v17(v10);
  v18 = AssociatedTypeWitness;
  v19 = *(v7 + 8);
  v25 = v7 + 8;
  v19(v10, AssociatedTypeWitness);
  v20 = v26;
  (*(v26 + 16))(v14, v16, v11);
  (*(v29 + 16))(v28, v31, v30);
  swift_setAtWritableKeyPath();
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E588BB34();
    v24[2](v10, v14);
    sub_1E5887588(v10);
    sub_1E588BB64();
    v19(v10, v18);
  }

  v21 = *(v20 + 8);
  v21(v14, v11);
  return (v21)(v16, v11);
}

char *sub_1E58889A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = *MEMORY[0x1E69E9840];
  v11 = *v7;
  v12 = a3[1];
  v13 = a3[3];
  v21 = a3[2];
  v22 = *a3;
  v24 = v11[11];
  v23 = v11[13];
  v33[0] = a6;
  v33[1] = v24;
  v33[2] = a7;
  v34 = v23;
  type metadata accessor for ChildStore(0, v33);
  v14 = *(v8 + v11[17]);
  v25 = *(v8 + v11[21]);
  sub_1E586D79C(v8 + v11[24], v33);
  v16 = v34;
  v15 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;

  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  (*(v15 + 48))(&__tp, a6, a6, a7, v16, v15, __tp.tv_nsec / 1000000000.0 + __tp.tv_sec);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = v22;
  v17[5] = v12;
  v17[6] = v21;
  v17[7] = v13;
  v17[8] = v8;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = v8;
  v18[5] = v22;
  v18[6] = v12;
  v18[7] = v21;
  v18[8] = v13;
  StateProjection.init(get:set:)(sub_1E5889E10, v17, sub_1E5889E24, v18, v31);
  v30[0] = v31[0];
  v30[1] = v31[1];
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1E5866F7C(a4, a5);
  swift_allocObject();
  v19 = sub_1E588920C(a1, v14, a2, v25, &__tp, v30, a4, a5);
  sub_1E5866F8C(a4, a5);
  __swift_destroy_boxed_opaque_existential_0(&__tp);

  __swift_destroy_boxed_opaque_existential_0(v33);
  swift_getWitnessTable();
  return v19;
}

uint64_t sub_1E5888CBC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = *a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v15 - v12;
  (*(a6 + *(v9 + 152)))(a1);
  a2(v13);
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_1E5888E18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t))
{
  v10 = *a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  v15 = (a3 + *(v10 + 152));
  (*v15)(a1);
  a6(v14, a2);
  v15[2](a1, v14);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1E5888F9C(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

void *sub_1E588901C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E5889068(a1, a2);
  sub_1E586DA0C(byte_1F5F561D8);
  return v3;
}

void *sub_1E5889068(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5889198(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E588C174();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E588BDD4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5889198(v10, 0);
        result = sub_1E588C114();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1E5889198(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F8, &qword_1E588D5D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E588920C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v68 = a7;
  v69 = a8;
  *&v63 = a6;
  v79 = a5;
  v66 = a3;
  v67 = a4;
  *&v60 = a1;
  v77 = *v8;
  v11 = *a2;
  v78 = v77[12];
  v12 = v77[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = AssociatedTypeWitness;
  v61 = sub_1E588BB44();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1E588BAE4();
  v15 = *(v14 - 8);
  v74 = v14;
  v75 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v58 - v16;
  v59 = *(v11 + *MEMORY[0x1E695BFA0]);
  v17 = v59;
  v65 = sub_1E588BB44();
  v64 = swift_getWitnessTable();
  v18 = sub_1E588BAE4();
  v19 = *(v18 - 8);
  v70 = v18;
  v71 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = &v58 - v21;
  v22 = *(v17 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v58 - v24;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v58 - v27;
  v29 = sub_1E588BAA4();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v77[16];
  v76 = v12;
  (*(*(v12 - 8) + 16))(&v9[v33], v60, v12);
  sub_1E588BB84();
  swift_allocObject();
  *(v9 + 2) = sub_1E588BB74();
  sub_1E588BA94();
  v34 = *(v30 + 32);
  v35 = *(v63 + 16);
  v60 = *v63;
  v63 = v35;
  v34(&v9[qword_1EE2CFA10], v32, v29);
  *&v9[*(*v9 + 136)] = a2;
  (*(v26 + 16))(v28, v66, v58);

  *&v9[*(*v9 + 144)] = sub_1E588BB54();
  v36 = v68;
  *&v9[*(*v9 + 168)] = v67;
  v37 = &v9[*(*v9 + 152)];
  v38 = v63;
  *v37 = v60;
  *(v37 + 1) = v38;
  v39 = &v9[*(*v9 + 160)];
  v40 = v69;
  *v39 = v36;
  v39[1] = v40;

  sub_1E5866F7C(v36, v40);
  sub_1E588BB34();
  (*(v22 + 32))(&v9[*(*v9 + 176)], v25, v59);
  *&v9[*(*v9 + 184)] = MEMORY[0x1E69E7CC0];
  sub_1E586D79C(v79, &v9[*(*v9 + 192)]);
  v80 = a2;
  v41 = v62;
  sub_1E588BB94();
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v44 = v77;
  v43[2] = v76;
  v69 = v44[11];
  v45 = v78;
  v43[3] = v69;
  v43[4] = v45;
  v46 = v44[13];
  v43[5] = v46;
  v43[6] = v42;

  v47 = v70;
  swift_getWitnessTable();
  sub_1E588BBA4();

  (*(v71 + 8))(v41, v47);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9618, &qword_1E588ED40);
  sub_1E5877E74(&qword_1EE2CD2B0, qword_1ECFF9618, &qword_1E588ED40, MEMORY[0x1E69E6348]);
  sub_1E588BAF4();
  swift_endAccess();

  v80 = *&v9[*(*v9 + 144)];
  v48 = v72;
  sub_1E588BB94();
  v49 = swift_allocObject();
  swift_weakInit();

  v50 = swift_allocObject();
  *&v51 = v76;
  *(&v51 + 1) = v69;
  *&v52 = v78;
  *(&v52 + 1) = v46;
  *(v50 + 16) = v51;
  *(v50 + 32) = v52;
  *(v50 + 48) = v49;

  v53 = v74;
  swift_getWitnessTable();
  sub_1E588BBA4();

  (*(v75 + 8))(v48, v53);

  swift_beginAccess();
  sub_1E588BAF4();
  swift_endAccess();

  v54 = v79[3];
  v55 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v54);
  v56 = *(v55 + 64);

  v56(sub_1E5889BC8, v9, v54, v55);

  return v9;
}

uint64_t sub_1E5889BE8(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for SideEffect(0, AssociatedTypeWitness, v6, v7) - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[8];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E58688C4;

  return sub_1E5887BE0(a1, v11, v12, v13, v1 + v9, v1 + v10, v4);
}

uint64_t sub_1E5889D58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E58688C4;

  return sub_1E585F8CC(a1, v4);
}

uint64_t sub_1E5889E58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5876BB0;

  return sub_1E5874358(a1, v4, v5, v6, (v1 + 5));
}

uint64_t SideEffectCollisionBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1E588C434();
  MEMORY[0x1E692FF30](v1);
  return sub_1E588C464();
}

uint64_t sub_1E588A074()
{
  v1 = *v0;
  sub_1E588C434();
  MEMORY[0x1E692FF30](v1);
  return sub_1E588C464();
}

uint64_t sub_1E588A0E8(uint64_t a1)
{
  v2 = *v1;
  sub_1E588C434();
  MEMORY[0x1E692FF30](v2);
  return sub_1E588C464();
}

uint64_t SideEffectDisposalBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1E588C434();
  MEMORY[0x1E692FF30](v1);
  return sub_1E588C464();
}

unint64_t sub_1E588A1BC()
{
  result = qword_1ECFF9860;
  if (!qword_1ECFF9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9860);
  }

  return result;
}

unint64_t sub_1E588A214()
{
  result = qword_1ECFF9868;
  if (!qword_1ECFF9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9868);
  }

  return result;
}

void *AsyncKeyedStateResolver.__allocating_init(store:keyPath:fetchValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E588B4E0(a1, a2, a3, a4);

  return v8;
}

void *AsyncKeyedStateResolver.init(store:keyPath:fetchValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E588B4E0(a1, a2, a3, a4);

  return v4;
}

uint64_t AsyncKeyedStateResolver.keys.getter()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v1 + 120);
  v6 = *(v1 + 80);
  v7 = *(v2 + 96);
  v8 = v3;
  type metadata accessor for AsyncStateResolver(0, &v6);
  nullsub_1();
  v6 = v4;
  sub_1E588BC64();

  swift_getWitnessTable();
  return sub_1E588BF44();
}

double AsyncKeyedStateResolver.resolver(for:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v32 - v9;
  swift_beginAccess();
  v10 = v4[10];
  v11 = *(v5 + 6);
  v12 = v4[15];
  v45 = v10;
  v44 = v11;
  v46 = v11;
  v47 = v12;
  v13 = type metadata accessor for AsyncStateResolver(0, &v45);
  v14 = v4[14];
  v15 = a1;
  v42 = v13;
  v16 = v14;
  sub_1E588BCB4();
  v17 = v48;
  if (v48)
  {
    v18 = v50;
    v44 = v49;
  }

  else
  {
    swift_endAccess();
    v19 = v2[3];
    v40 = v2[2];
    v36 = v19;
    v37 = v15;
    v20 = *(v7 + 16);
    v38 = v7 + 16;
    v39 = v20;
    v21 = v41;
    v22 = v20();
    v33 = &v32;
    v23 = *(v7 + 80);
    MEMORY[0x1EEE9AC00](v22);
    v24 = &v32 - ((v8 + 63) & 0xFFFFFFFFFFFFFFF0);
    *&v25 = v10;
    *(&v25 + 1) = v6;
    v26 = v44;
    *v24 = v25;
    *(v24 + 1) = v26;
    v35 = v16;
    *(v24 + 4) = v16;
    *(v24 + 5) = v12;
    v34 = *(v7 + 32);
    v27 = v21;
    v34(v24 + 48, v21, v6);
    swift_getKeyPath();

    v33 = v2;
    v36 = sub_1E588C194();

    v28 = v37;
    (v39)(v21, v37, v6);
    v29 = swift_allocObject();
    *(v29 + 16) = v10;
    *(v29 + 24) = v6;
    *(v29 + 32) = v44;
    *(v29 + 48) = v35;
    *(v29 + 56) = v12;
    *(v29 + 64) = v33;
    v34((v29 + ((v23 + 72) & ~v23)), v21, v6);
    AsyncStateResolver.init(store:keyPath:fetchValue:)(v40, v36, &unk_1E588F7A0, v29, &v48);
    v17 = v48;
    v44 = v49;
    v18 = v50;
    (v39)(v27, v28, v6);
    v48 = v17;
    v49 = v44;
    v50 = v18;
    swift_beginAccess();
    sub_1E588BC84();

    sub_1E588BCC4();
  }

  swift_endAccess();
  v30 = v43;
  *v43 = v17;
  result = *&v44;
  *(v30 + 1) = v44;
  v30[3] = v18;
  return result;
}

uint64_t sub_1E588A8B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  v11 = *a1;
  v12 = v5;
  v6 = *(a2 + a3 - 16);
  v10[0] = *(a2 + a3 - 40);
  v10[1] = v6;
  v7 = type metadata accessor for AsyncKeyedState(0, v10);
  return AsyncKeyedState.subscript.getter(v7, v8, a4);
}

uint64_t sub_1E588A924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v10[0] = *(a3 + a4 - 40);
  v10[1] = v6;
  v7 = type metadata accessor for AsyncKeyedState(0, v10);
  return sub_1E5872CF4(a1, a3, v7, v8);
}

uint64_t sub_1E588A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1E588BEC4();
  v3[5] = sub_1E588BEB4();
  v5 = sub_1E588BE64();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E588AA24, v5, v4);
}

uint64_t sub_1E588AA24()
{
  v5 = (*(v0[3] + 40) + **(v0[3] + 40));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1E588AB1C;
  v2 = v0[4];
  v3 = v0[2];

  return v5(v3, v2);
}

uint64_t sub_1E588AB1C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1E588AC58;
  }

  else
  {
    v5 = sub_1E5869DB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E588AC58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E588ACEC(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  v3 = v2[12];
  v4 = v2[13];
  v5 = v2[15];
  v8[0] = v2[10];
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  type metadata accessor for AsyncStateResolver(0, v8);
  nullsub_1();
  v8[0] = v6;
  sub_1E588BC74();

  swift_getWitnessTable();
  sub_1E588BDF4();
}

uint64_t sub_1E588AE68(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v9 = a1[1];
  v13 = *a1;
  v14 = v9;
  v12[0] = a2;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a7;
  v10 = type metadata accessor for AsyncStateResolver(0, v12);
  return a8(v10);
}

Swift::Void __swiftcall AsyncKeyedStateResolver.reset()()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 120);
  v19 = *(*v0 + 80);
  v20 = *(v2 + 96);
  v16 = v20;
  v21 = v4;
  v5 = type metadata accessor for AsyncStateResolver(255, &v19);
  swift_getTupleTypeMetadata2();
  v6 = sub_1E588BE04();
  v7 = *(v1 + 112);
  v8 = sub_1E585F3C8(v6, v3, v5, v7);

  swift_beginAccess();
  v0[4] = v8;

  v9 = v0[2];
  v10 = *(v9 + 32);
  ObjectType = swift_getObjectType();
  v12 = swift_unknownObjectRetain();
  sub_1E588B0C0(v12, ObjectType, v10);
  swift_unknownObjectRelease();
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  v15 = swift_getObjectType();
  swift_unknownObjectRetain();
  AsyncKeyedState.init(ttl:)(v3, v16, v7, v4, v18, v18[0]);

  *v17 = v18[0];
  *&v17[1] = v18[1];
  sub_1E588B178(v13, v17, v15, v14);
  swift_unknownObjectRelease();
}

uint64_t sub_1E588B0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(a3 + 72);
  v8 = v3[3];
  v9 = *(v6 + 112);
  v12[0] = *(v6 + 88);
  v12[1] = v9;
  v10 = type metadata accessor for AsyncKeyedState(0, v12);
  return v7(v8, v10, a2, a3);
}

uint64_t sub_1E588B178(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *a2;
  v9 = v4[3];
  v15[1] = a2[1];
  v10 = *(a4 + 88);
  v15[0] = v8;
  v11 = *(v7 + 112);
  v14[0] = *(v7 + 88);
  v14[1] = v11;
  v12 = type metadata accessor for AsyncKeyedState(0, v14);
  return v10(v9, v15, v12, a3, a4);
}

uint64_t AsyncKeyedStateResolver.reset(key:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  swift_beginAccess();
  v8 = *(v3 + 120);
  v18 = *(v3 + 80);
  v19 = *(v3 + 96);
  v20 = v8;
  type metadata accessor for AsyncStateResolver(0, &v18);
  sub_1E588BCB4();
  v9 = v21;
  if (!v21)
  {
    return swift_endAccess();
  }

  v10 = v22;
  v15 = a1;
  v16 = *(&v22 + 1);
  v11 = v7;
  v12 = *(&v21 + 1);
  v17 = *(&v21 + 1);
  swift_endAccess();
  *&v21 = v9;
  *(&v21 + 1) = v12;
  v22 = v10;
  AsyncStateResolver.reset()();
  (*(v5 + 16))(v11, v15, v4);
  v21 = 0u;
  v22 = 0u;
  swift_beginAccess();
  sub_1E588BC84();
  sub_1E588BCC4();
  swift_endAccess();
  return sub_1E588B780(v9, v17, v10, v16);
}

void *AsyncKeyedStateResolver.deinit()
{

  return v0;
}

uint64_t AsyncKeyedStateResolver.__deallocating_deinit()
{
  AsyncKeyedStateResolver.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1E588B4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v4[2] = a1;
  v4[3] = a2;
  v4[5] = a3;
  v4[6] = a4;
  v7 = v6;
  v8 = v5[11];
  v9 = v5[10];
  v10 = v5[15];

  v15 = v9;
  v16 = *(v7 + 6);
  v17 = v10;
  v11 = type metadata accessor for AsyncStateResolver(255, &v15);
  swift_getTupleTypeMetadata2();
  v12 = sub_1E588BE04();
  v13 = sub_1E585F3C8(v12, v8, v11, v5[14]);

  v4[4] = v13;
  return v4;
}

uint64_t sub_1E588B624(uint64_t a1)
{
  v4 = (*(*(*(v1 + 24) - 8) + 80) + 72) & ~*(*(*(v1 + 24) - 8) + 80);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58688C4;

  return sub_1E588A988(a1, v5, v1 + v4);
}

uint64_t sub_1E588B780(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}