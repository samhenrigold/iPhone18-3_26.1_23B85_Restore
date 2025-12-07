uint64_t P256PrivateKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7C90, &qword_24AE3DB28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE2453C();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE2444C()
{
  result = qword_27EFB7CD0;
  if (!qword_27EFB7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CD0);
  }

  return result;
}

unint64_t sub_24AE244A4()
{
  result = qword_27EFB7CD8;
  if (!qword_27EFB7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CD8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AE2453C()
{
  result = qword_27EFB7C88;
  if (!qword_27EFB7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C88);
  }

  return result;
}

unint64_t sub_24AE24590()
{
  result = qword_27EFB77B0;
  if (!qword_27EFB77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77B0);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for KeyRepresentableInternal.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyRepresentableInternal.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t KeyRepresentableInternal.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7870, &qword_24AE3B1D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE24984();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE249D8();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE24850()
{
  result = qword_27EFB7898;
  if (!qword_27EFB7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7898);
  }

  return result;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_24AE24930()
{
  result = qword_27EFB78A0;
  if (!qword_27EFB78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78A0);
  }

  return result;
}

unint64_t sub_24AE24984()
{
  result = qword_27EFB7860;
  if (!qword_27EFB7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7860);
  }

  return result;
}

unint64_t sub_24AE249D8()
{
  result = qword_27EFB7878;
  if (!qword_27EFB7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7878);
  }

  return result;
}

uint64_t SymmetricKey256.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7D00, &qword_24AE3DE18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE24C78();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE24BCC()
{
  result = qword_27EFB7D40;
  if (!qword_27EFB7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D40);
  }

  return result;
}

unint64_t sub_24AE24C24()
{
  result = qword_27EFB7D48;
  if (!qword_27EFB7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D48);
  }

  return result;
}

unint64_t sub_24AE24C78()
{
  result = qword_27EFB7CF8;
  if (!qword_27EFB7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CF8);
  }

  return result;
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

uint64_t sub_24AE24CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t EncryptAndSignEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7958, &qword_24AE3BC38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE25054();
  sub_24AE3A5CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_24AE249D8();
  sub_24AE3A4BC();
  v9 = v16;
  v15 = v17;
  v18 = 1;
  sub_24AE3A4BC();
  (*(v6 + 8))(v8, v5);
  v10 = v16;
  v11 = v17;
  v12 = v15;
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v10;
  a2[3] = v11;
  sub_24AE251B0(v9, v12);
  sub_24AE251B0(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24AE25204(v9, v12);
  return sub_24AE25204(v10, v11);
}

unint64_t sub_24AE24FA8()
{
  result = qword_27EFB7978;
  if (!qword_27EFB7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7978);
  }

  return result;
}

unint64_t sub_24AE25000()
{
  result = qword_27EFB7980;
  if (!qword_27EFB7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7980);
  }

  return result;
}

unint64_t sub_24AE25054()
{
  result = qword_27EFB7950;
  if (!qword_27EFB7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7950);
  }

  return result;
}

uint64_t sub_24AE250B4()
{
  if (*v0)
  {
    return 0x6574707972636E65;
  }

  else
  {
    return 0x727574616E676973;
  }
}

uint64_t storeEnumTagSinglePayload for KeyGenerationHint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_24AE251B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_24AE25204(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t P256PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24AE3A38C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24AE3A31C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v1[1];
  v20 = *v1;
  v21 = v11;
  sub_24AE251B0(v20, v11);
  sub_24AE3A2EC();
  v12 = sub_24AE3A2CC();
  v13 = MEMORY[0x24C2323F0](v12);
  v15 = v14;
  (*(v4 + 8))(v6, v3);
  sub_24AE254A8(v13, v15, &v20);
  v16 = v21;
  if (v21 >> 60 == 15)
  {
    result = sub_24AE3A49C();
    __break(1u);
  }

  else
  {
    v17 = v20;
    result = (*(v8 + 8))(v10, v7);
    *a1 = v17;
    a1[1] = v16;
  }

  return result;
}

uint64_t sub_24AE254A8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 64)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

char *decryptAndValidate(envelope:symmetricKey:publicKey:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_24AE3A29C();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AE3A34C();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24AE3A38C();
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  v18 = *a2;
  v17 = a2[1];
  v19 = a3[1];
  v58 = *a3;
  v59 = v19;
  sub_24AE251B0(v58, v19);
  v20 = v60;
  sub_24AE3A37C();
  if (!v20)
  {
    v47 = v17;
    v48 = v18;
    v49 = v15;
    v50 = v16;
    v21 = v55;
    v60 = v10;
    v58 = v13;
    v59 = v14;
    sub_24AE251B0(v13, v14);
    sub_24AE25A84();
    v22 = v57;
    sub_24AE3A33C();
    v23 = v49;
    v24 = v50;
    v58 = v50;
    v59 = v49;
    sub_24AE251B0(v50, v49);
    v25 = v12;
    v26 = sub_24AE3A35C();
    sub_24AE25204(v58, v59);
    v27 = v56;
    if (v26)
    {
      v58 = v48;
      v59 = v47;
      sub_24AE251B0(v48, v47);
      v28 = v51;
      sub_24AE3A27C();
      sub_24AE251B0(v24, v23);
      v29 = sub_24AE25AD8(v24, v23);
      v30 = v21;
      v40 = v22;
      v41 = v29;
      v43 = v42;
      v44 = sub_24AE3A22C();
      v45 = v28;
      v50 = 0;
      v12 = v44;
      sub_24AE25204(v41, v43);
      (*(v52 + 8))(v45, v53);
      (*(v54 + 8))(v40, v30);
      (*(v27 + 8))(v25, v60);
    }

    else
    {
      if (qword_27EFB7708 != -1)
      {
        swift_once();
      }

      v31 = sub_24AE3A21C();
      __swift_project_value_buffer(v31, qword_27EFB7E40);
      v32 = sub_24AE3A1FC();
      v33 = sub_24AE3A43C();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v60;
      v36 = v54;
      if (v34)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_24AE23000, v32, v33, "Invalid ECDSASignature", v37, 2u);
        MEMORY[0x24C232960](v37, -1, -1);
      }

      sub_24AE2DE4C();
      v12 = swift_allocError();
      *v38 = 0;
      swift_willThrow();
      (*(v36 + 8))(v57, v21);
      (*(v27 + 8))(v25, v35);
    }
  }

  return v12;
}

unint64_t sub_24AE25A84()
{
  result = qword_27EFB7788;
  if (!qword_27EFB7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7788);
  }

  return result;
}

uint64_t sub_24AE25AD8(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v29[3] = MEMORY[0x277CC9318];
      v29[4] = MEMORY[0x277CC9300];
      v29[0] = a1;
      v29[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v27, 0, 14);
          v14 = v27;
          v13 = v27;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_24AE3A06C();
        if (v17)
        {
          v18 = sub_24AE3A09C();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v27[0] = *v9;
        LOWORD(v27[1]) = v11;
        BYTE2(v27[1]) = BYTE2(v11);
        BYTE3(v27[1]) = BYTE3(v11);
        BYTE4(v27[1]) = BYTE4(v11);
        BYTE5(v27[1]) = BYTE5(v11);
        v13 = v27 + BYTE6(v11);
        v14 = v27;
LABEL_33:
        sub_24AE25DA4(v14, v13, &v28);
        v7 = v28;
        __swift_destroy_boxed_opaque_existential_1(v29);
        return v7;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_24AE3A06C();
        if (!v17)
        {
LABEL_25:
          v23 = sub_24AE3A08C();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_24AE3A09C();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_24AE25204(a1, a2);
  v7 = sub_24AE3A25C();
  sub_24AE2F38C();
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
  return v7;
}

_BYTE *sub_24AE25DA4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
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
    result = sub_24AE38674(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24AE38734(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24AE25E38(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_24AE25E38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24AE3A0AC();
  swift_allocObject();
  result = sub_24AE3A05C();
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

uint64_t encryptAndSign(data:symmetricKey:privateKey:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a5;
  v9 = sub_24AE3A34C();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24AE3A31C();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7960, &qword_24AE3BC40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_24AE3A29C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = a3[1];
  v23 = *a4;
  v22 = a4[1];
  v47 = a1;
  v48 = a2;
  v45 = v20;
  v46 = v21;
  sub_24AE251B0(v20, v21);
  sub_24AE3A27C();
  v24 = sub_24AE3A24C();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  sub_24AE25A84();
  v25 = v49;
  v26 = sub_24AE3A23C();
  if (v25)
  {
    sub_24AE262D0(v15, &qword_27EFB7960, &qword_24AE3BC40);
    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v29 = v26;
    v49 = v27;
    sub_24AE262D0(v15, &qword_27EFB7960, &qword_24AE3BC40);
    (*(v17 + 8))(v19, v16);
    v47 = v23;
    v48 = v22;
    sub_24AE251B0(v23, v22);
    v30 = v44;
    sub_24AE3A2EC();
    v31 = v49;
    v47 = v29;
    v48 = v49;
    v32 = v41;
    sub_24AE3A30C();
    v33 = sub_24AE3A32C();
    v35 = v34;
    (*(v38 + 8))(v32, v39);
    result = (*(v42 + 8))(v30, v43);
    v36 = v40;
    *v40 = v33;
    v36[1] = v35;
    v36[2] = v29;
    v36[3] = v31;
  }

  return result;
}

uint64_t sub_24AE262D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t EncryptAndSignEnvelope.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7948, &qword_24AE3BC30);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v7, v8);
  sub_24AE25054();
  sub_24AE3A5DC();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  sub_24AE2650C();
  sub_24AE3A4EC();
  sub_24AE25204(v15, v16);
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_24AE251B0(v13, v12);
    sub_24AE3A4EC();
    sub_24AE25204(v15, v16);
  }

  return (*(v14 + 8))(v6, v4);
}

unint64_t sub_24AE2650C()
{
  result = qword_27EFB7868;
  if (!qword_27EFB7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7868);
  }

  return result;
}

void sub_24AE265A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

__n128 sub_24AE265AC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE265B8()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_24AE26660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AE3A03C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 24) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AE26734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AE3A03C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = a1 + *(a4 + 24);
    *(v13 + 16) = 0;
    *(v13 + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_24AE26804(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AE25204(result, a2);
  }

  return result;
}

void sub_24AE26834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_24AE251B0(a1, a2);
  }
}

uint64_t sub_24AE26848()
{
  v0 = sub_24AE3A21C();
  __swift_allocate_value_buffer(v0, qword_27EFB7E28);
  v1 = __swift_project_value_buffer(v0, qword_27EFB7E28);
  if (qword_27EFB7728 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFB7E70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TokenSequence.init(privateKey:publicKey:sharedKey:startIndex:hint:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = *a5;
  v9 = a5[1];
  v11 = a5[2];
  v32 = *a2;
  if (!a4)
  {
    sub_24AE26804(*a1, *(a1 + 1));
    sub_24AE25204(v32, *(&v32 + 1));
    sub_24AE25204(v8, v7);
    sub_24AE26D34(v10, v9, v11);
    sub_24AE26D50();
    swift_allocError();
    return swift_willThrow();
  }

  v12 = v6;
  v31 = *a1;
  if (v11 >> 60 == 15)
  {
    sub_24AE251B0(v8, v7);
    v9 = v8;
    v11 = v7;
    v15 = a4;
  }

  else
  {
    v15 = a4 - v10;
    v36 = v6;
    if (a4 >= v10)
    {
      sub_24AE251B0(v9, v11);
      if (qword_27EFB7700 != -1)
      {
        swift_once();
      }

      v23 = sub_24AE3A21C();
      __swift_project_value_buffer(v23, qword_27EFB7E28);
      sub_24AE251B0(v9, v11);
      v24 = sub_24AE3A1FC();
      loga = sub_24AE3A42C();
      if (os_log_type_enabled(v24, loga))
      {
        v28 = v24;
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        sub_24AE26D34(v10, v9, v11);
        *(v25 + 4) = v10;
        result = sub_24AE26D34(v10, v9, v11);
        *(v25 + 12) = 2048;
        if (a4 < v15)
        {
          __break(1u);
          return result;
        }

        *(v25 + 14) = v10;
        _os_log_impl(&dword_24AE23000, v28, loga, "KeyGenerationHint hint.index:%llu saved %llu ratchet iterations", v25, 0x16u);
        MEMORY[0x24C232960](v25, -1, -1);
      }

      else
      {
        sub_24AE26D34(v10, v9, v11);
        sub_24AE26D34(v10, v9, v11);
      }

      v12 = v36;
    }

    else
    {
      if (qword_27EFB7700 != -1)
      {
        swift_once();
      }

      v17 = sub_24AE3A21C();
      __swift_project_value_buffer(v17, qword_27EFB7E28);
      sub_24AE251B0(v9, v11);
      v18 = sub_24AE3A1FC();
      v19 = sub_24AE3A44C();
      log = v18;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        *(v20 + 4) = v10;
        sub_24AE26D34(v10, v9, v11);
        *(v20 + 12) = 2048;
        *(v20 + 14) = a4;
        v21 = v19;
        v22 = log;
        _os_log_impl(&dword_24AE23000, log, v21, "Ignoring KeyGenerationHint: hint.index (%llu) > initialRatchetsToSkip(%llu)", v20, 0x16u);
        MEMORY[0x24C232960](v20, -1, -1);
        v12 = v36;
      }

      else
      {
        sub_24AE26D34(v10, v9, v11);
        v12 = v36;
        v22 = log;
      }

      sub_24AE26D34(v10, v9, v11);
      v15 = a4 - 1;
      sub_24AE251B0(v8, v7);
      v9 = v8;
      v11 = v7;
    }
  }

  v33 = v9;
  v34 = v11;
  sub_24AE251B0(v9, v11);
  sub_24AE2C51C(&v33, v15, v35);
  sub_24AE25204(v33, v34);
  if (v12)
  {
    sub_24AE26804(v31, *(&v31 + 1));
    sub_24AE25204(v32, *(&v32 + 1));
    sub_24AE25204(v8, v7);
    return sub_24AE25204(v9, v11);
  }

  else
  {
    v26 = v35[0];
    v27 = v35[1];
    result = sub_24AE25204(v9, v11);
    *a6 = v31;
    *(a6 + 16) = v32;
    *(a6 + 32) = v8;
    *(a6 + 40) = v7;
    *(a6 + 48) = a4;
    *(a6 + 56) = v26;
    *(a6 + 64) = v27;
  }

  return result;
}

uint64_t sub_24AE26D34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_24AE25204(a2, a3);
  }

  return result;
}

unint64_t sub_24AE26D50()
{
  result = qword_27EFB7750;
  if (!qword_27EFB7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7750);
  }

  return result;
}

uint64_t TokenSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_24AE274F8(v8, v7);
}

double TokenSequence.next()@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[8];
  v12 = v1[6];
  v9 = v1[7];
  v16[0] = v2;
  v16[1] = v3;
  v15[0] = v4;
  v15[1] = v5;
  *&v14 = v9;
  *(&v14 + 1) = v8;
  sub_24AE26834(v2, v3);
  sub_24AE251B0(v4, v5);
  sub_24AE251B0(v7, v6);
  sub_24AE251B0(v9, v8);
  sub_24AE251B0(v9, v8);
  sub_24AE251B0(v9, v8);
  sub_24AE2BC64(v16, v15, &v14, (v1 + 6), (v1 + 7), v17);
  sub_24AE25204(v14, *(&v14 + 1));
  sub_24AE26804(v2, v3);
  sub_24AE25204(v4, v5);
  sub_24AE25204(v7, v6);
  sub_24AE25204(v9, v8);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  v10 = v17[1];
  *(a1 + 24) = v17[0];
  *(a1 + 40) = v10;
  result = *&v18;
  *(a1 + 56) = v18;
  return result;
}

uint64_t sub_24AE270BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v9[2] = v2;
  v9[3] = v3;
  v10 = *(v1 + 64);
  v4 = v10;
  v5 = *(v1 + 16);
  v9[0] = *v1;
  v6 = v9[0];
  v9[1] = v5;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  v12 = v4;
  v11[2] = v2;
  v11[3] = v3;
  v11[0] = v6;
  v11[1] = v5;
  sub_24AE274F8(v9, v8);
  return sub_24AE27964(v11);
}

uint64_t sub_24AE27138()
{
  v1 = *(v0 + 48);
  v6[2] = *(v0 + 32);
  v6[3] = v1;
  v7 = *(v0 + 64);
  v2 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v2;
  sub_24AE27730(v6);
  v4 = v3;
  sub_24AE27964(v6);
  return v4;
}

uint64_t sub_24AE271D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = v3[3];
  v28 = v3[2];
  v29 = v5;
  v30 = *(v3 + 8);
  v6 = v3[1];
  v26 = *v3;
  v27 = v6;
  if (!a2)
  {
    v7 = 0;
    v16 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v16;
    *(result + 64) = *(v3 + 8);
    v15 = *v3;
    v14 = v3[1];
    goto LABEL_12;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_10:
    v13 = v29;
    *(v4 + 32) = v28;
    *(v4 + 48) = v13;
    *(v4 + 64) = v30;
    v15 = v26;
    v14 = v27;
LABEL_12:
    *v4 = v15;
    *(v4 + 16) = v14;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 1;
    while (1)
    {
      TokenSequence.next()(&v21);
      if (v22 >> 60 == 15)
      {
        break;
      }

      v10 = v24;
      *(v8 + 32) = v23;
      *(v8 + 48) = v10;
      *(v8 + 64) = v25;
      v11 = v22;
      *v8 = v21;
      *(v8 + 16) = v11;
      if (v7 == v9)
      {
        goto LABEL_10;
      }

      v8 += 72;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v19[2] = v23;
    v19[3] = v24;
    v20 = v25;
    v19[0] = v21;
    v19[1] = v22;
    sub_24AE262D0(v19, &qword_27EFB7770, ":?");
    v17 = v29;
    *(v4 + 32) = v28;
    *(v4 + 48) = v17;
    *(v4 + 64) = v30;
    v18 = v27;
    *v4 = v26;
    *(v4 + 16) = v18;
    return v9 - 1;
  }

  __break(1u);
  return result;
}

void sub_24AE2734C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *a2 + 1;
  if (*a2 == -1)
  {
    __break(1u);
  }

  else
  {
    v23 = a4;
    v20 = *a1;
    v21 = a1[1];
    v7 = a1[2];
    v6 = a1[3];
    v9 = a1[4];
    v8 = a1[5];
    *a2 = v5;
    v10 = *a3;
    v11 = a3[1];
    *a3 = v9;
    a3[1] = v8;
    sub_24AE251B0(v9, v8);
    sub_24AE25204(v10, v11);
    v12 = sub_24AE3A3AC();
    v14 = v13;
    sub_24AE251B0(v9, v8);
    v15 = sub_24AE2CF10(v9, v8, v12, v14, 32);
    if (v4)
    {
      sub_24AE25204(v12, v14);
      sub_24AE25204(v9, v8);
    }

    else
    {
      v17 = v15;
      v18 = v16;
      sub_24AE25204(v9, v8);
      sub_24AE30810(v17, v18, &v22);
      sub_24AE25204(v12, v14);
      v19 = v23;
      *v23 = v22;
      v19[2] = v7;
      v19[3] = v6;
      v19[4] = v20;
      v19[5] = v21;
      sub_24AE251B0(v7, v6);
      sub_24AE26834(v20, v21);
    }
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24AE2757C()
{
  result = qword_27EFB7760;
  if (!qword_27EFB7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7760);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyCrypto10PrivateKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AE2761C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AE27670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void type metadata accessor for SecKey()
{
  if (!qword_27EFB7768)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EFB7768);
    }
  }
}

void sub_24AE27730(__int128 *a1)
{
  v1 = a1[3];
  v31 = a1[2];
  v32 = v1;
  v33 = *(a1 + 8);
  v2 = a1[1];
  v29 = *a1;
  v30 = v2;
  sub_24AE274F8(a1, &v24);
  TokenSequence.next()(&v24);
  v3 = MEMORY[0x277D84F90];
  if (v25 >> 60 != 15)
  {
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      v18[2] = v26;
      v18[3] = v27;
      v19 = v28;
      v18[0] = v24;
      v18[1] = v25;
      if (!v4)
      {
        v6 = v3[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_25;
        }

        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7778, ":?");
        v9 = swift_allocObject();
        v10 = (_swift_stdlib_malloc_size(v9) - 32) / 72;
        v9[2] = v8;
        v9[3] = 2 * v10;
        v11 = (v9 + 4);
        v12 = v3[3] >> 1;
        if (v3[2])
        {
          if (v9 != v3 || v11 >= &v3[9 * v12 + 4])
          {
            memmove(v9 + 4, v3 + 4, 72 * v12);
          }

          v3[2] = 0;
        }

        v5 = (v11 + 72 * v12);
        v4 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - v12;

        v3 = v9;
      }

      v14 = __OFSUB__(v4--, 1);
      if (v14)
      {
        break;
      }

      memmove(v5, v18, 0x48uLL);
      v5 += 72;
      TokenSequence.next()(&v24);
      if (v25 >> 60 == 15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = 0;
LABEL_20:
  v20[2] = v31;
  v20[3] = v32;
  v21 = v33;
  v20[0] = v29;
  v20[1] = v30;
  sub_24AE27964(v20);
  v22[2] = v26;
  v22[3] = v27;
  v23 = v28;
  v22[0] = v24;
  v22[1] = v25;
  sub_24AE262D0(v22, &qword_27EFB7770, ":?");
  v15 = v3[3];
  if (v15 >= 2)
  {
    v16 = v15 >> 1;
    v14 = __OFSUB__(v16, v4);
    v17 = v16 - v4;
    if (!v14)
    {
      v3[2] = v17;
      return;
    }

LABEL_26:
    __break(1u);
  }
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

uint64_t Advertisement.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t Advertisement.hint.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE251B0(v1, v2);
  v3 = sub_24AE39FDC();
  sub_24AE27F98(v3, v1, v2, v8);
  v4 = v8[0];
  v5 = v8[1];
  v6 = sub_24AE3A12C();
  sub_24AE25204(v4, v5);
  return v6;
}

uint64_t Advertisement.address.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE251B0(v1, v2);
  v3 = sub_24AE39FDC();
  sub_24AE27F98(v3, v1, v2, &v5);
  return v5;
}

void Advertisement.key.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

__n128 Advertisement.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t Advertisement.init(macAddress:pubKey2:ek:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a5@<X8>)
{
  *&v18 = sub_24AE39FCC();
  *(&v18 + 1) = v9;
  sub_24AE3A12C();
  sub_24AE3A13C();
  v10 = v18;
  v17 = v18;
  v16[3] = MEMORY[0x277CC9318];
  v16[4] = MEMORY[0x277CC9300];
  v16[0] = a2;
  v16[1] = a3;
  v11 = __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x277CC9318]);
  v12 = *v11;
  v13 = v11[1];
  sub_24AE251B0(v10, *(&v10 + 1));
  sub_24AE287B8(v12, v13, &v17);
  v14 = sub_24AE39FEC();
  (*(*(v14 - 8) + 8))(a1, v14);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *a5 = v17;
  return sub_24AE25204(v18, *(&v18 + 1));
}

uint64_t Advertisement.hashed.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24AE39FFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  v13 = v8;
  v14 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D08948], v3);
  sub_24AE251B0(v8, v7);
  sub_24AE25A84();
  v9 = sub_24AE3A00C();
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  result = sub_24AE25204(v13, v14);
  *a1 = v9;
  a1[1] = v11;
  return result;
}

uint64_t sub_24AE27DB4(uint64_t a1)
{
  v2 = sub_24AE28944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE27DF0(uint64_t a1)
{
  v2 = sub_24AE28944();

  return MEMORY[0x2821FE720](a1, v2);
}

double Advertisement.nearOwner.getter@<D0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_24AE251B0(v4, v3);
  sub_24AE27F98(6, v4, v3, &v6);
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_24AE27F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_24AE292E0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_24AE2927C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_24AE3A11C();
    v15 = v14;
    result = sub_24AE25204(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24AE280E8()
{
  sub_24AE3A57C();
  MEMORY[0x24C232610](0);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2812C(uint64_t a1)
{
  sub_24AE3A57C();
  MEMORY[0x24C232610](0);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24AE3A51C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AE281F4(uint64_t a1)
{
  v2 = sub_24AE289EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE28230(uint64_t a1)
{
  v2 = sub_24AE289EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AE282B0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  v11 = *v5;
  v12 = v5[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v11, v12);
  (v14[0])();
  sub_24AE3A5DC();
  v15 = v11;
  v16 = v12;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v15, v16);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24AE28458@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _OWORD *a6@<X8>)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_24AE3A5CC();
  if (!v6)
  {
    v12 = v15;
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v17 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AE28608()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE3A57C();
  sub_24AE251B0(v1, v2);
  sub_24AE3A14C();
  sub_24AE25204(v1, v2);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2866C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_24AE251B0(v3, v2);
  sub_24AE3A14C();

  return sub_24AE25204(v3, v2);
}

uint64_t sub_24AE286CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24AE3A57C();
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();
  sub_24AE25204(v2, v3);
  return sub_24AE3A5BC();
}

BOOL sub_24AE28738(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_24AE251B0(*a1, v3);
  sub_24AE251B0(v4, v5);
  v6 = sub_24AE2A27C(v2, v3, v4, v5);
  sub_24AE25204(v4, v5);
  sub_24AE25204(v2, v3);
  return v6;
}

uint64_t sub_24AE287B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_24AE3A10C();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24AE291E8(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_24AE291E8(v4, v5);
  }

  return sub_24AE3A10C();
}

unint64_t sub_24AE288F0()
{
  result = qword_27EFB7780;
  if (!qword_27EFB7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7780);
  }

  return result;
}

unint64_t sub_24AE28944()
{
  result = qword_27EFB7798;
  if (!qword_27EFB7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7798);
  }

  return result;
}

unint64_t sub_24AE28998()
{
  result = qword_27EFB77A0;
  if (!qword_27EFB77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77A0);
  }

  return result;
}

unint64_t sub_24AE289EC()
{
  result = qword_27EFB77C0;
  if (!qword_27EFB77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77C0);
  }

  return result;
}

unint64_t sub_24AE28A40(uint64_t a1)
{
  result = sub_24AE28A68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE28A68()
{
  result = qword_27EFB77D0;
  if (!qword_27EFB77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77D0);
  }

  return result;
}

unint64_t sub_24AE28B10()
{
  result = qword_27EFB77D8;
  if (!qword_27EFB77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77D8);
  }

  return result;
}

unint64_t sub_24AE28B64()
{
  result = qword_27EFB77E0;
  if (!qword_27EFB77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77E0);
  }

  return result;
}

unint64_t sub_24AE28BB8()
{
  result = qword_27EFB77E8;
  if (!qword_27EFB77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77E8);
  }

  return result;
}

unint64_t sub_24AE28C10()
{
  result = qword_27EFB77F0;
  if (!qword_27EFB77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77F0);
  }

  return result;
}

unint64_t sub_24AE28C64(uint64_t a1)
{
  result = sub_24AE28C8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE28C8C()
{
  result = qword_27EFB77F8;
  if (!qword_27EFB77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB77F8);
  }

  return result;
}

uint64_t sub_24AE28D34(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE28D98()
{
  result = qword_27EFB7800;
  if (!qword_27EFB7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7800);
  }

  return result;
}

unint64_t sub_24AE28DEC()
{
  result = qword_27EFB7808;
  if (!qword_27EFB7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7808);
  }

  return result;
}

unint64_t sub_24AE28E40()
{
  result = qword_27EFB7810;
  if (!qword_27EFB7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7810);
  }

  return result;
}

unint64_t sub_24AE28E94()
{
  result = qword_27EFB7818;
  if (!qword_27EFB7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7818);
  }

  return result;
}

unint64_t sub_24AE28EEC()
{
  result = qword_27EFB7820;
  if (!qword_27EFB7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7820);
  }

  return result;
}

uint64_t sub_24AE28F50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_24AE28FDC()
{
  result = qword_27EFB7828;
  if (!qword_27EFB7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7828);
  }

  return result;
}

unint64_t sub_24AE29034()
{
  result = qword_27EFB7830;
  if (!qword_27EFB7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7830);
  }

  return result;
}

unint64_t sub_24AE2908C()
{
  result = qword_27EFB7838;
  if (!qword_27EFB7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7838);
  }

  return result;
}

unint64_t sub_24AE290E4()
{
  result = qword_27EFB7840;
  if (!qword_27EFB7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7840);
  }

  return result;
}

unint64_t sub_24AE2913C()
{
  result = qword_27EFB7848;
  if (!qword_27EFB7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7848);
  }

  return result;
}

unint64_t sub_24AE29194()
{
  result = qword_27EFB7850;
  if (!qword_27EFB7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7850);
  }

  return result;
}

uint64_t sub_24AE291E8(uint64_t a1, uint64_t a2)
{
  result = sub_24AE3A06C();
  if (!result || (result = sub_24AE3A09C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24AE3A08C();
      return sub_24AE3A10C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE2927C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24AE292E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t KeyRepresenting.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 + 8);
  v11 = *(v10 + 48);
  sub_24AE251B0(a1, a2);
  v12 = v11(a3, v10);
  sub_24AE29878(a1, a2, v12, &v15);
  (*(a4 + 24))(&v15, a3, a4);
  sub_24AE25204(a1, a2);
  v13 = *(*(a3 - 8) + 56);

  return v13(a5, 0, 1, a3);
}

uint64_t KeyRepresentableError.description.getter()
{
  if (!*(v0 + 16))
  {
    sub_24AE3A46C();

    v5 = 0xD000000000000019;
    v2 = sub_24AE3A50C();
    MEMORY[0x24C232440](v2);

    MEMORY[0x24C232440](0x6C6175746361202CLL, 0xEA0000000000203ALL);
    v3 = sub_24AE3A50C();
    MEMORY[0x24C232440](v3);

    return v5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_24AE3A46C();

    v5 = 0xD000000000000018;
    sub_24AE25A84();
    v1 = sub_24AE3A01C();
    MEMORY[0x24C232440](v1);

    MEMORY[0x24C232440](41, 0xE100000000000000);
    return v5;
  }

  if (*v0 == 0)
  {
    return 0x7479426F72657A2ELL;
  }

  else
  {
    return 0x64696C61766E692ELL;
  }
}

uint64_t static KeyRepresenting.random()(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a2 + 8) + 48))();
  v5 = MEMORY[0x24C232150](v4);
  return KeyRepresentable<>.init(data:)(v5, v6, a1, a2);
}

uint64_t KeyRepresentable<>.init(data:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(v9 + 48);
  sub_24AE251B0(a1, a2);
  v11 = v10(a3, v9);
  sub_24AE29878(a1, a2, v11, &v13);
  if (!v4)
  {
    (*(a4 + 24))(&v13, a3, a4);
  }

  return sub_24AE25204(a1, a2);
}

uint64_t sub_24AE29878@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (a3)
      {
        v11 = result;
        v10 = a2;
        v12 = 0;
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == a3)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != a3)
      {
        goto LABEL_11;
      }

LABEL_17:
      *a4 = result;
      a4[1] = a2;
      return result;
    }

    goto LABEL_23;
  }

  if (BYTE6(a2) == a3)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      v11 = result;
      v10 = a2;
      v12 = BYTE6(a2);
      goto LABEL_21;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      v10 = a2;
      v11 = result;
      v12 = HIDWORD(result) - result;
LABEL_21:
      sub_24AE2A708();
      swift_allocError();
      *v15 = a3;
      *(v15 + 8) = v12;
      *(v15 + 16) = 0;
      swift_willThrow();
      return sub_24AE25204(v11, v10);
    }

    goto LABEL_24;
  }

  v14 = *(result + 16);
  v13 = *(result + 24);
  v12 = v13 - v14;
  if (!__OFSUB__(v13, v14))
  {
    v10 = a2;
    v11 = result;
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24AE299D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24AE3A51C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AE29A58(uint64_t a1)
{
  v2 = sub_24AE24984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE29A94(uint64_t a1)
{
  v2 = sub_24AE24984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyRepresentableInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7858, &qword_24AE3B1D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v7, v8);
  sub_24AE24984();
  sub_24AE3A5DC();
  v10 = v7;
  v11 = v8;
  sub_24AE2650C();
  sub_24AE3A4EC();
  sub_24AE25204(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t KeyRepresentableInternal.hashValue.getter()
{
  sub_24AE3A57C();
  sub_24AE3A14C();
  return sub_24AE3A5BC();
}

uint64_t sub_24AE29CA0()
{
  sub_24AE3A57C();
  sub_24AE3A14C();
  return sub_24AE3A5BC();
}

uint64_t sub_24AE29CF4(uint64_t a1)
{
  sub_24AE3A57C();
  sub_24AE3A14C();
  return sub_24AE3A5BC();
}

uint64_t SecurityKeyRepresentable.init(rawValue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))();
  v5 = *(*(a1 - 8) + 56);

  return v5(a3, 0, 1, a1);
}

id sub_24AE29DF8@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_24AE29E04@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24AE3A06C();
    if (v10)
    {
      v11 = sub_24AE3A09C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24AE3A08C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24AE3A06C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24AE3A09C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24AE3A08C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24AE2A034(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24AE2A1C4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24AE25204(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_24AE29E04(v13, a3, a4, &v12);
  v10 = v4;
  sub_24AE25204(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_24AE2A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24AE3A06C();
  v11 = result;
  if (result)
  {
    result = sub_24AE3A09C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24AE3A08C();
  sub_24AE29E04(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_24AE2A27C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24AE251B0(a3, a4);
          return sub_24AE2A034(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_24AE2A3E8()
{
  result = qword_27EFB7880;
  if (!qword_27EFB7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7880);
  }

  return result;
}

unint64_t sub_24AE2A43C(uint64_t a1)
{
  result = sub_24AE2A464();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE2A464()
{
  result = qword_27EFB7888;
  if (!qword_27EFB7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7888);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyCrypto21KeyRepresentableErrorO(uint64_t a1)
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

uint64_t sub_24AE2A4E8(uint64_t a1, unsigned int a2)
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

uint64_t sub_24AE2A530(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AE2A574(uint64_t result, unsigned int a2)
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

uint64_t sub_24AE2A61C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24AE2A664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AE2A6B4()
{
  result = qword_27EFB7890;
  if (!qword_27EFB7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7890);
  }

  return result;
}

unint64_t sub_24AE2A708()
{
  result = qword_27EFB78A8;
  if (!qword_27EFB78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78A8);
  }

  return result;
}

void KeyGenerationHint.sharedSecret.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

BOOL static KeyGenerationHint.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_24AE251B0(v5, v4);
  sub_24AE251B0(v3, v2);
  v6 = sub_24AE2A27C(v5, v4, v3, v2);
  sub_24AE25204(v3, v2);
  sub_24AE25204(v5, v4);
  return v6;
}

uint64_t sub_24AE2A820()
{
  v1 = *v0;
  sub_24AE3A57C();
  MEMORY[0x24C232610](v1);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2A894(uint64_t a1)
{
  v2 = *v1;
  sub_24AE3A57C();
  MEMORY[0x24C232610](v2);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2A8D8()
{
  if (*v0)
  {
    return 0x6553646572616873;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_24AE2A918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_24AE3A51C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE3A51C();

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

uint64_t sub_24AE2AA00(uint64_t a1)
{
  v2 = sub_24AE2B0E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE2AA3C(uint64_t a1)
{
  v2 = sub_24AE2B0E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyGenerationHint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB78B0, &qword_24AE3B6A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v10[0] = *(v1 + 8);
  v7 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE2B0E4();
  sub_24AE3A5DC();
  LOBYTE(v11) = 0;
  v8 = v10[1];
  sub_24AE3A4FC();
  if (!v8)
  {
    v11 = v10[0];
    v12 = v7;
    v13 = 1;
    sub_24AE251B0(v10[0], v7);
    sub_24AE2B138();
    sub_24AE3A4EC();
    sub_24AE25204(v11, v12);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t KeyGenerationHint.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  MEMORY[0x24C232630](*v1);
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();

  return sub_24AE25204(v2, v3);
}

uint64_t KeyGenerationHint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE3A57C();
  MEMORY[0x24C232630](v1);
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();
  sub_24AE25204(v2, v3);
  return sub_24AE3A5BC();
}

uint64_t KeyGenerationHint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB78C0, &qword_24AE3B6A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE2B0E4();
  sub_24AE3A5CC();
  if (!v2)
  {
    LOBYTE(v12) = 0;
    v9 = sub_24AE3A4CC();
    v13 = 1;
    sub_24AE2B18C();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AE2AEBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE3A57C();
  MEMORY[0x24C232630](v1);
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();
  sub_24AE25204(v2, v3);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2AF38(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  MEMORY[0x24C232630](*v1);
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();

  return sub_24AE25204(v2, v3);
}

uint64_t sub_24AE2AFA4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_24AE3A57C();
  MEMORY[0x24C232630](v2);
  sub_24AE251B0(v3, v4);
  sub_24AE3A14C();
  sub_24AE25204(v3, v4);
  return sub_24AE3A5BC();
}

BOOL sub_24AE2B04C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_24AE251B0(v5, v4);
  sub_24AE251B0(v3, v2);
  v6 = sub_24AE2A27C(v5, v4, v3, v2);
  sub_24AE25204(v3, v2);
  sub_24AE25204(v5, v4);
  return v6;
}

unint64_t sub_24AE2B0E4()
{
  result = qword_27EFB78B8;
  if (!qword_27EFB78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78B8);
  }

  return result;
}

unint64_t sub_24AE2B138()
{
  result = qword_281392968;
  if (!qword_281392968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392968);
  }

  return result;
}

unint64_t sub_24AE2B18C()
{
  result = qword_281392948;
  if (!qword_281392948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392948);
  }

  return result;
}

unint64_t sub_24AE2B1E4()
{
  result = qword_27EFB78C8;
  if (!qword_27EFB78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78C8);
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

uint64_t sub_24AE2B24C(uint64_t a1, unsigned int a2)
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

uint64_t sub_24AE2B2A0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for KeyGenerationHint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_24AE2B3B0()
{
  result = qword_27EFB78D0;
  if (!qword_27EFB78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78D0);
  }

  return result;
}

unint64_t sub_24AE2B408()
{
  result = qword_27EFB78D8;
  if (!qword_27EFB78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78D8);
  }

  return result;
}

unint64_t sub_24AE2B460()
{
  result = qword_27EFB78E0;
  if (!qword_27EFB78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78E0);
  }

  return result;
}

uint64_t IntermediateKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

void IntermediateKey.key.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

__n128 IntermediateKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE2B508(uint64_t a1)
{
  v2 = sub_24AE2B6E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE2B544(uint64_t a1)
{
  v2 = sub_24AE2B6E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntermediateKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB78E8, &qword_24AE3B928);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v7, v8);
  sub_24AE2B6E4();
  sub_24AE3A5DC();
  v10 = v7;
  v11 = v8;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24AE2B6E4()
{
  result = qword_27EFB78F0;
  if (!qword_27EFB78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB78F0);
  }

  return result;
}

uint64_t IntermediateKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB78F8, &qword_24AE3B930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE2B6E4();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE2B8A8(uint64_t a1)
{
  result = sub_24AE2B8D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE2B8D0()
{
  result = qword_27EFB7900;
  if (!qword_27EFB7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7900);
  }

  return result;
}

unint64_t sub_24AE2B924(void *a1)
{
  a1[1] = sub_24AE2B964();
  a1[2] = sub_24AE2B9B8();
  a1[3] = sub_24AE2BA0C();
  result = sub_24AE2BA60();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE2B964()
{
  result = qword_27EFB7908;
  if (!qword_27EFB7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7908);
  }

  return result;
}

unint64_t sub_24AE2B9B8()
{
  result = qword_27EFB7910;
  if (!qword_27EFB7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7910);
  }

  return result;
}

unint64_t sub_24AE2BA0C()
{
  result = qword_27EFB7918;
  if (!qword_27EFB7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7918);
  }

  return result;
}

unint64_t sub_24AE2BA60()
{
  result = qword_27EFB7920;
  if (!qword_27EFB7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7920);
  }

  return result;
}

unint64_t sub_24AE2BAE8()
{
  result = qword_27EFB7928;
  if (!qword_27EFB7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7928);
  }

  return result;
}

unint64_t sub_24AE2BB60()
{
  result = qword_27EFB7930;
  if (!qword_27EFB7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7930);
  }

  return result;
}

unint64_t sub_24AE2BBB8()
{
  result = qword_27EFB7938;
  if (!qword_27EFB7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7938);
  }

  return result;
}

unint64_t sub_24AE2BC10()
{
  result = qword_27EFB7940;
  if (!qword_27EFB7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7940);
  }

  return result;
}

double sub_24AE2BC90@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(_OWORD *__return_ptr, _OWORD *, uint64_t, uint64_t)@<X5>, _OWORD *a7@<X8>)
{
  v13 = *a1;
  v12 = a1[1];
  v15 = *a2;
  v14 = a2[1];
  v61[0] = *a3;
  sub_24AE2C51C(v61, 1, v62);
  if (!v7)
  {
    v57 = a4;
    v58 = a5;
    v59 = a6;
    v56 = a7;
    v63 = v13;
    v17 = v62[0];
    v18 = sub_24AE3A3AC();
    v20 = v19;
    sub_24AE251B0(v17, *(&v17 + 1));
    v21 = sub_24AE2CF10(v17, *(&v17 + 1), v18, v20, 72);
    v23 = v22;
    sub_24AE25204(v17, *(&v17 + 1));
    sub_24AE306F8(v21, v23, v62);
    sub_24AE25204(v18, v20);
    v24 = v62[0];
    if (v12 >> 60 == 15)
    {
      sub_24AE251B0(*&v62[0], *(&v62[0] + 1));
      sub_24AE251B0(v15, v14);
      v26 = sub_24AE2D2E0(v15, v14, 0, 0);
      v28 = sub_24AE2D700(v26, 0, v24, *(&v24 + 1));
      v29 = v26;
      v30 = v28;
      MEMORY[0x24C2326D0](v29);
      sub_24AE25204(v15, v14);
      sub_24AE25204(v24, *(&v24 + 1));
      v31 = sub_24AE2CD04(v30, 0, 0);
      v34 = v31;
      v35 = v32;
      sub_24AE251B0(v31, v32);
      if (qword_27EFB7710 != -1)
      {
        swift_once();
      }

      if (sub_24AE2A27C(v34, v35, qword_27EFB79F0, *algn_27EFB79F8))
      {
        sub_24AE25204(v34, v35);
        sub_24AE2A708();
        swift_allocError();
        *v36 = 0;
        *(v36 + 8) = 0;
        *(v36 + 16) = 2;
        swift_willThrow();
        sub_24AE25204(v24, *(&v24 + 1));
        sub_24AE25204(v17, *(&v17 + 1));
        v42 = v34;
        v43 = v35;
LABEL_7:
        sub_24AE25204(v42, v43);
        return result;
      }

      v41 = sub_24AE2D118(v34, v35);
      sub_24AE25204(v41, v45);
      sub_24AE29878(v34, v35, 57, v62);
      v53 = v62[0];
      MEMORY[0x24C2326D0](v30);
      sub_24AE25204(v34, v35);
      *&v47 = v63;
      *(&v47 + 1) = v12;
    }

    else
    {
      v25 = v63;
      sub_24AE26834(v63, v12);
      sub_24AE251B0(v24, *(&v24 + 1));
      v27 = sub_24AE2D2E0(v25, v12, 0, 1);
      v33 = sub_24AE2D700(v27, 1, v24, *(&v24 + 1));
      MEMORY[0x24C2326D0](v27);
      sub_24AE25204(v24, *(&v24 + 1));
      v37 = sub_24AE2CD04(v33, 1, 0);
      v39 = v38;
      v40 = sub_24AE2CD04(v33, 0, 0);
      v54 = v44;
      v55 = v40;
      sub_24AE251B0(v37, v39);
      PrivateKey.init(data:)(v37, v39, v62);
      v52 = v62[0];
      sub_24AE251B0(v55, v54);
      if (qword_27EFB7710 != -1)
      {
        swift_once();
      }

      if (sub_24AE2A27C(v55, v54, qword_27EFB79F0, *algn_27EFB79F8))
      {
        sub_24AE25204(v55, v54);
        sub_24AE2A708();
        swift_allocError();
        *v46 = 0;
        *(v46 + 8) = 0;
        *(v46 + 16) = 2;
        swift_willThrow();
        sub_24AE25204(v52, *(&v52 + 1));
        sub_24AE25204(v24, *(&v24 + 1));
        sub_24AE26804(v63, v12);
        sub_24AE25204(v37, v39);
        sub_24AE25204(v17, *(&v17 + 1));
        v42 = v55;
        v43 = v54;
        goto LABEL_7;
      }

      v48 = sub_24AE2D118(v55, v54);
      sub_24AE25204(v48, v51);
      sub_24AE29878(v55, v54, 57, v62);
      v53 = v62[0];
      MEMORY[0x24C2326D0](v33);
      sub_24AE25204(v55, v54);
      sub_24AE25204(v37, v39);
      sub_24AE26804(v63, v12);
      v47 = v52;
    }

    v61[0] = v47;
    v61[1] = v53;
    v60 = v47;
    v61[2] = v17;
    v59(v62, v61, v57, v58);
    sub_24AE25204(v24, *(&v24 + 1));
    sub_24AE26804(v60, *(&v60 + 1));
    sub_24AE25204(v53, *(&v53 + 1));
    sub_24AE25204(v17, *(&v17 + 1));
    result = *v62;
    v49 = v62[1];
    v50 = v62[2];
    *v56 = v62[0];
    v56[1] = v49;
    v56[2] = v50;
  }

  return result;
}

uint64_t sub_24AE2C51C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = a1[1];
  sub_24AE251B0(*a1, v7);
  v8 = sub_24AE3A3AC();
  v10 = v9;
  if (!a2)
  {
    v15 = v6;
    v14 = v7;
LABEL_17:
    result = sub_24AE25204(v8, v10);
    *a3 = v15;
    a3[1] = v14;
    return result;
  }

  while (1)
  {
    v11 = MEMORY[0x24C232730]();
    sub_24AE3A0AC();
    swift_allocObject();
    sub_24AE251B0(v6, v7);
    v12 = sub_24AE3A07C();
    v38 = 0x2000000000;
    v39 = v12 | 0x4000000000000000;
    sub_24AE251B0(v6, v7);
    sub_24AE251B0(v8, v10);
    v13 = sub_24AE2ED58(v8, v10, v8, v10, v6, v7, &v38, 32);
    if (v3)
    {
      sub_24AE25204(v6, v7);
      sub_24AE25204(v8, v10);
LABEL_26:
      sub_24AE25204(v38, v39);
      v30 = v6;
      v31 = v7;
LABEL_37:
      sub_24AE25204(v30, v31);
      objc_autoreleasePoolPop(v11);
      sub_24AE25204(v8, v10);
      return sub_24AE25204(v6, v7);
    }

    LODWORD(v14) = v13;
    sub_24AE25204(v6, v7);
    sub_24AE25204(v8, v10);
    if (v14)
    {
      v4 = v14;
      if (qword_27EFB7708 == -1)
      {
LABEL_20:
        v22 = sub_24AE3A21C();
        __swift_project_value_buffer(v22, qword_27EFB7E40);
        v23 = sub_24AE3A1FC();
        v24 = sub_24AE3A43C();
        if (os_log_type_enabled(v23, v24))
        {
          v37 = v4;
          v25 = swift_slowAlloc();
          *v25 = 67109120;
          *(v25 + 4) = v14;
          _os_log_impl(&dword_24AE23000, v23, v24, "Error running CCDeriveKey. Code: %d.", v25, 8u);
          v26 = v25;
          v4 = v37;
          MEMORY[0x24C232960](v26, -1, -1);
        }

        CryptoError.init(rawValue:)(v4);
        v27 = v40;
        sub_24AE2DE4C();
        swift_allocError();
        if (v27 == 14)
        {
          v29 = 9;
        }

        else
        {
          v29 = v27;
        }

        *v28 = v29;
        swift_willThrow();
        goto LABEL_26;
      }

LABEL_40:
      swift_once();
      goto LABEL_20;
    }

    v15 = v38;
    v14 = v39;
    sub_24AE251B0(v38, v39);
    sub_24AE25204(v15, v14);
    result = sub_24AE25204(v6, v7);
    v17 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v32 = 0;
LABEL_36:
        sub_24AE2A708();
        swift_allocError();
        *v35 = 32;
        *(v35 + 8) = v32;
        *(v35 + 16) = 0;
        swift_willThrow();
        v30 = v15;
        v31 = v14;
        goto LABEL_37;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (!v20)
      {
        if (v21 != 32)
        {
          break;
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v17)
    {
      if (BYTE6(v14) != 32)
      {
        break;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v15), v15))
    {
      goto LABEL_39;
    }

    if (HIDWORD(v15) - v15 != 32)
    {
      break;
    }

LABEL_14:
    sub_24AE25204(v6, v7);
    objc_autoreleasePoolPop(v11);
    v7 = v14;
    v6 = v15;
    if (!--a2)
    {
      goto LABEL_17;
    }
  }

  if (v17 == 2)
  {
    v34 = *(v15 + 16);
    v33 = *(v15 + 24);
    v32 = v33 - v34;
    if (!__OFSUB__(v33, v34))
    {
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v17 != 1)
  {
LABEL_35:
    v32 = BYTE6(v14);
    goto LABEL_36;
  }

  if (!__OFSUB__(HIDWORD(v15), v15))
  {
    v32 = HIDWORD(v15) - v15;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE2C900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v6 || (sub_24AE3A51C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE3A51C();

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

uint64_t sub_24AE2C9EC(uint64_t a1)
{
  v2 = sub_24AE25054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE2CA28(uint64_t a1)
{
  v2 = sub_24AE25054();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24AE2CA64()
{
  Pair = CCECCryptorGeneratePair();
  if (Pair)
  {
    v3 = Pair;
    v4 = Pair;
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v5 = sub_24AE3A21C();
    __swift_project_value_buffer(v5, qword_27EFB7E40);
    v6 = sub_24AE3A1FC();
    v7 = sub_24AE3A43C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v3;
      _os_log_impl(&dword_24AE23000, v6, v7, "CCECCryptorGeneratePair failed. Status: %d", v8, 8u);
      MEMORY[0x24C232960](v8, -1, -1);
    }

    CryptoError.init(rawValue:)(v4);
    sub_24AE2DE4C();
    swift_allocError();
    if (v16 == 14)
    {
      v10 = 9;
    }

    else
    {
      v10 = v16;
    }
  }

  else
  {
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v12 = sub_24AE3A21C();
    __swift_project_value_buffer(v12, qword_27EFB7E40);
    v13 = sub_24AE3A1FC();
    v14 = sub_24AE3A43C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24AE23000, v13, v14, "Private key is not available.", v15, 2u);
      MEMORY[0x24C232960](v15, -1, -1);
    }

    sub_24AE2DE4C();
    swift_allocError();
    v10 = 12;
  }

  *v9 = v10;
  return swift_willThrow();
}

uint64_t sub_24AE2CD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v5 = 85;
  }

  else
  {
    v5 = 57;
  }

  v18 = v5;
  v20 = sub_24AE2E370(v5);
  v21 = v6;
  v7 = sub_24AE2DFA8(&v20, a3);
  if (v3)
  {
    return sub_24AE25204(v20, v21);
  }

  v8 = v7;
  if (v7)
  {
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v9 = sub_24AE3A21C();
    __swift_project_value_buffer(v9, qword_27EFB7E40);
    v10 = sub_24AE3A1FC();
    v11 = sub_24AE3A43C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8;
      _os_log_impl(&dword_24AE23000, v10, v11, "Error running CCECCryptorExportKey. Code: %d", v12, 8u);
      MEMORY[0x24C232960](v12, -1, -1);
    }

    CryptoError.init(rawValue:)(v8);
    sub_24AE2DE4C();
    swift_allocError();
    if (v19 == 14)
    {
      v14 = 9;
    }

    else
    {
      v14 = v19;
    }

    *v13 = v14;
    swift_willThrow();
    return sub_24AE25204(v20, v21);
  }

  v16 = v20;
  v17 = v21;
  sub_24AE251B0(v20, v21);
  sub_24AE27F98(v18, v16, v17, &v19);
  sub_24AE25204(v16, v17);
  return v19;
}

uint64_t sub_24AE2CF10(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a5;
  v21 = sub_24AE2E370(a5);
  v22 = v11;
  sub_24AE251B0(a3, a4);
  sub_24AE251B0(a1, a2);
  v12 = sub_24AE2ED58(a3, a4, a3, a4, a1, a2, &v21, v6);
  sub_24AE25204(a1, a2);
  sub_24AE25204(a3, a4);
  if (!v5)
  {
    if (!v12)
    {
      v6 = v21;
      v20 = v22;
      sub_24AE251B0(v21, v22);
      sub_24AE25204(v6, v20);
      return v6;
    }

    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v13 = sub_24AE3A21C();
    __swift_project_value_buffer(v13, qword_27EFB7E40);
    v14 = sub_24AE3A1FC();
    v15 = sub_24AE3A43C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v12;
      _os_log_impl(&dword_24AE23000, v14, v15, "Error running CCDeriveKey. Code: %d.", v16, 8u);
      MEMORY[0x24C232960](v16, -1, -1);
    }

    CryptoError.init(rawValue:)(v12);
    v6 = v23;
    sub_24AE2DE4C();
    swift_allocError();
    if (v6 == 14)
    {
      v18 = 9;
    }

    else
    {
      v18 = v6;
    }

    *v17 = v18;
    swift_willThrow();
  }

  sub_24AE25204(v21, v22);
  return v6;
}

uint64_t sub_24AE2D118(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AE2D2E0(a1, a2, 0, 0);
  v4 = v2;
  if (v2)
  {
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v6 = sub_24AE3A21C();
    __swift_project_value_buffer(v6, qword_27EFB7E40);
    v7 = v2;
    v8 = sub_24AE3A1FC();
    v9 = sub_24AE3A43C();
    MEMORY[0x24C232880](v2);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = sub_24AE3A0BC();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_24AE23000, v8, v9, "Error deriving advertisementKey: %{public}@", v10, 0xCu);
      sub_24AE262D0(v11, &qword_27EFB7758, &qword_24AE3A950);
      MEMORY[0x24C232960](v11, -1, -1);
      MEMORY[0x24C232960](v10, -1, -1);
    }

    sub_24AE2F338();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    MEMORY[0x24C232880](v2);
  }

  else
  {
    v5 = v3;
    v4 = sub_24AE2CD04(v3, 0, 2);
    MEMORY[0x24C2326D0](v5);
  }

  return v4;
}

uint64_t sub_24AE2D2E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v29 = 0;
      goto LABEL_18;
    }

    v5 = a1;
    v6 = *(a1 + 16);
    v7 = sub_24AE3A06C();
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = v7;
    v9 = sub_24AE3A09C();
    if (__OFSUB__(v6, v9))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v10 = v6 - v9 + v8;
    a1 = sub_24AE3A08C();
    if (!v10)
    {
LABEL_31:
      sub_24AE2DE4C();
      swift_allocError();
      v23 = 3;
      goto LABEL_32;
    }

    if (!__OFSUB__(*(v5 + 24), *(v5 + 16)))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v29 = a1;
    goto LABEL_18;
  }

  v11 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_34;
  }

  v12 = a1;
  v13 = sub_24AE3A06C();
  if (!v13)
  {
LABEL_30:
    sub_24AE3A08C();
    goto LABEL_31;
  }

  v14 = v13;
  v15 = sub_24AE3A09C();
  if (__OFSUB__(v11, v15))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_27;
  }

  v16 = v11 - v15 + v14;
  sub_24AE3A08C();
  if (!v16)
  {
    goto LABEL_31;
  }

  if (__OFSUB__(HIDWORD(v12), v12))
  {
    __break(1u);
  }

LABEL_18:
  v17 = CCECCryptorImportKey();
  if (v17)
  {
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v18 = sub_24AE3A21C();
    __swift_project_value_buffer(v18, qword_27EFB7E40);
    v19 = sub_24AE3A1FC();
    v20 = sub_24AE3A43C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = v17;
      _os_log_impl(&dword_24AE23000, v19, v20, "Error running CCECCryptorImportKey. Code: %d", v21, 8u);
      MEMORY[0x24C232960](v21, -1, -1);
    }

    CryptoError.init(rawValue:)(v17);
    sub_24AE2DE4C();
    swift_allocError();
    if (v29 == 14)
    {
      v23 = 9;
    }

    else
    {
      v23 = v29;
    }

    goto LABEL_32;
  }

  if (qword_27EFB7708 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v24 = sub_24AE3A21C();
  __swift_project_value_buffer(v24, qword_27EFB7E40);
  v25 = sub_24AE3A1FC();
  v26 = sub_24AE3A43C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24AE23000, v25, v26, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", v27, 2u);
    MEMORY[0x24C232960](v27, -1, -1);
  }

  sub_24AE2DE4C();
  swift_allocError();
  v23 = 9;
LABEL_32:
  *v22 = v23;
  return swift_willThrow();
}

uint8_t *sub_24AE2D700(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21 = xmmword_24AE3BC20;
  sub_24AE3A15C();
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6 || !__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_13;
    }

LABEL_28:
    __break(1u);
    __break(1u);
    __break(1u);
  }

  if (v6 == 2)
  {
    v7 = *(a3 + 24);
    if (__OFSUB__(v7, *(a3 + 16)))
    {
      __break(1u);
      if (v7 == 2 && (v8 = *(a3 + 16), __OFSUB__(*(a3 + 24), v8)))
      {
        __break(1u);
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          __break(1u);
          goto LABEL_28;
        }

        v14 = CCECCryptorTwinDiversifyKey();
        v15 = 0;
      }

      else
      {
        v14 = CCECCryptorTwinDiversifyKey();
        v15 = 0xC000000000000000;
      }

      *&v21 = 0;
      *(&v21 + 1) = v15;
      if (!v14)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

LABEL_13:
  v14 = CCECCryptorTwinDiversifyKey();
  if (!v14)
  {
LABEL_14:
    v14 = 0;
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v9 = sub_24AE3A21C();
    __swift_project_value_buffer(v9, qword_27EFB7E40);
    v10 = sub_24AE3A1FC();
    v11 = sub_24AE3A43C();
    if (os_log_type_enabled(v10, v11))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24AE23000, v10, v11, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", v14, 2u);
      MEMORY[0x24C232960](v14, -1, -1);
    }

    sub_24AE2DE4C();
    swift_allocError();
    v13 = 9;
    goto LABEL_26;
  }

LABEL_21:
  if (qword_27EFB7708 != -1)
  {
    swift_once();
  }

  v16 = sub_24AE3A21C();
  __swift_project_value_buffer(v16, qword_27EFB7E40);
  v17 = sub_24AE3A1FC();
  v18 = sub_24AE3A43C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v14;
    _os_log_impl(&dword_24AE23000, v17, v18, "Error running CCECCryptorTwinDiversifyKey. Code: %d.", v19, 8u);
    MEMORY[0x24C232960](v19, -1, -1);
  }

  CryptoError.init(rawValue:)(v14);
  sub_24AE2DE4C();
  swift_allocError();
  v13 = 0;
LABEL_26:
  *v12 = v13;
  swift_willThrow();
  sub_24AE25204(v21, *(&v21 + 1));
  return v14;
}

uint64_t sub_24AE2DDD8()
{
  v0 = sub_24AE3A21C();
  __swift_allocate_value_buffer(v0, qword_27EFB7E40);
  __swift_project_value_buffer(v0, qword_27EFB7E40);
  return sub_24AE3A20C();
}

unint64_t sub_24AE2DE4C()
{
  result = qword_27EFB7968;
  if (!qword_27EFB7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7968);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AE2DEAC(uint64_t a1, unsigned int a2)
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

uint64_t sub_24AE2DF00(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AE2DF54()
{
  result = qword_27EFB7970;
  if (!qword_27EFB7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7970);
  }

  return result;
}

uint64_t sub_24AE2DFA8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      return CCECCryptorExportKey();
    }

    sub_24AE25204(v4, v3);
    *a1 = xmmword_24AE3BC20;
    sub_24AE25204(0, 0xC000000000000000);
    sub_24AE3A0DC();
    v7 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = *(v4 + 16);
    result = sub_24AE3A06C();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (!__OFSUB__(v8, sub_24AE3A09C()))
    {
      sub_24AE3A08C();
      result = CCECCryptorExportKey();
      *a1 = v4;
      a1[1] = v7 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v5)
  {
    sub_24AE25204(v4, v3);
    LOWORD(v13) = v3;
    BYTE2(v13) = BYTE2(v3);
    HIBYTE(v13) = BYTE3(v3);
    LOBYTE(v14) = BYTE4(v3);
    HIBYTE(v14) = BYTE5(v3);
    result = CCECCryptorExportKey();
    *a1 = v4;
    a1[1] = v13 | ((v14 | (BYTE6(v3) << 16)) << 32);
    return result;
  }

  v9 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  sub_24AE25204(v4, v3);
  *a1 = xmmword_24AE3BC20;
  sub_24AE25204(0, 0xC000000000000000);
  v10 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v10 < v4)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (sub_24AE3A06C() && __OFSUB__(v4, sub_24AE3A09C()))
    {
LABEL_23:
      __break(1u);
    }

    sub_24AE3A0AC();
    swift_allocObject();
    v11 = sub_24AE3A04C();

    v9 = v11;
  }

  if (v10 < v4)
  {
    goto LABEL_20;
  }

  result = sub_24AE3A06C();
  if (result)
  {
    if (!__OFSUB__(v4, sub_24AE3A09C()))
    {
      sub_24AE3A08C();
      v12 = CCECCryptorExportKey();

      *a1 = v4;
      a1[1] = v9 | 0x4000000000000000;
      return v12;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_24AE2E350(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE2E370(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_24AE3A0AC();
      swift_allocObject();
      sub_24AE3A07C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24AE3A0FC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24AE2E410(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v12 != 2)
    {
      *(&v25 + 7) = 0;
      *&v25 = 0;
      v20 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (v20 && __OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_59;
        }

LABEL_35:
        v21 = CCDeriveKey();
        CCKDFParametersDestroy();
        return v21;
      }

      goto LABEL_24;
    }

    sub_24AE251B0(a4, a5);
    sub_24AE251B0(a4, a5);
    sub_24AE251B0(v11, v10);
    sub_24AE25204(v11, v10);
    *&v25 = v11;
    *(&v25 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_24AE3BC20;
    sub_24AE25204(0, 0xC000000000000000);
    sub_24AE3A0DC();
    v6 = v11;
    v14 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = *(v11 + 16);
    sub_24AE251B0(a4, a5);
    result = sub_24AE3A06C();
    if (!result)
    {
      __break(1u);
      goto LABEL_63;
    }

    if (!__OFSUB__(v15, sub_24AE3A09C()))
    {
      sub_24AE3A08C();
      v17 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (v17 && __OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_60;
        }

        goto LABEL_38;
      }

LABEL_28:
      if (v17 == 2 && __OFSUB__(*(a4 + 24), *(a4 + 16)))
      {
        __break(1u);
LABEL_32:
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_36;
        }

        goto LABEL_58;
      }

LABEL_38:
      v21 = CCDeriveKey();
      CCKDFParametersDestroy();
      sub_24AE25204(a4, a5);
      sub_24AE25204(a4, a5);
      sub_24AE25204(a4, a5);
      *a1 = v6;
      a1[1] = v14 | 0x8000000000000000;
      return v21;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!v12)
  {
    v6 = v11 >> 24;
    sub_24AE251B0(a4, a5);
    sub_24AE251B0(a4, a5);
    sub_24AE25204(v11, v10);
    *&v25 = v11;
    WORD4(v25) = v10;
    BYTE10(v25) = BYTE2(v10);
    BYTE11(v25) = BYTE3(v10);
    BYTE12(v25) = BYTE4(v10);
    BYTE13(v25) = BYTE5(v10);
    BYTE14(v25) = BYTE6(v10);
    v13 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v13)
      {
LABEL_36:
        v21 = CCDeriveKey();
        CCKDFParametersDestroy();
        sub_24AE25204(a4, a5);
        sub_24AE25204(a4, a5);
        *a1 = v25;
        a1[1] = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
        return v21;
      }

      goto LABEL_32;
    }

    if (v13 != 2)
    {
      goto LABEL_36;
    }

    v20 = *(a4 + 24);
    if (!__OFSUB__(v20, *(a4 + 16)))
    {
      goto LABEL_36;
    }

    __break(1u);
LABEL_24:
    v14 = a2;
    if (v20 != 2)
    {
      goto LABEL_35;
    }

    v17 = *(a4 + 24);
    if (!__OFSUB__(v17, *(a4 + 16)))
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_28;
  }

  v18 = v10 & 0x3FFFFFFFFFFFFFFFLL;
  sub_24AE251B0(a4, a5);
  sub_24AE251B0(a4, a5);
  sub_24AE251B0(v11, v10);
  sub_24AE25204(v11, v10);
  *a1 = xmmword_24AE3BC20;
  sub_24AE25204(0, 0xC000000000000000);
  v19 = v11 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v11)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    if (sub_24AE3A06C() && __OFSUB__(v11, sub_24AE3A09C()))
    {
      goto LABEL_57;
    }

    sub_24AE3A0AC();
    swift_allocObject();
    v22 = sub_24AE3A04C();

    v18 = v22;
  }

  if (v19 < v11)
  {
    goto LABEL_54;
  }

  sub_24AE251B0(a4, a5);

  result = sub_24AE3A06C();
  if (result)
  {
    if (!__OFSUB__(v11, sub_24AE3A09C()))
    {
      sub_24AE3A08C();
      v23 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        if (v23 != 2 || !__OFSUB__(*(a4 + 24), *(a4 + 16)))
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      else if (!v23)
      {
LABEL_52:
        v24 = CCDeriveKey();
        CCKDFParametersDestroy();
        sub_24AE25204(a4, a5);

        sub_24AE25204(a4, a5);
        sub_24AE25204(a4, a5);
        *a1 = v11;
        a1[1] = v18 | 0x4000000000000000;
        return v24;
      }

      if (__OFSUB__(HIDWORD(a4), a4))
      {
        goto LABEL_61;
      }

      goto LABEL_52;
    }

    goto LABEL_55;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_24AE2E9F4(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(v31, 0, 14);
      return sub_24AE2E410(a3, a4, v31, a5, a6, a7);
    }

    v14 = *(a1 + 16);
    sub_24AE251B0(a5, a6);
    sub_24AE251B0(a5, a6);
    sub_24AE251B0(a5, a6);
    v15 = sub_24AE3A06C();
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = sub_24AE3A09C();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      sub_24AE3A08C();
      if (v18)
      {
        sub_24AE251B0(a5, a6);
        v19 = sub_24AE2E410(a3, a4, v18, a5, a6, a7);
        if (!v7)
        {
          v30 = v19;
          sub_24AE25204(a5, a6);
          sub_24AE25204(a5, a6);
          sub_24AE25204(a5, a6);
          sub_24AE25204(a5, a6);
          return v30;
        }

        sub_24AE25204(a5, a6);
        goto LABEL_20;
      }

LABEL_19:
      sub_24AE2DE4C();
      swift_allocError();
      *v29 = 3;
      swift_willThrow();
LABEL_20:
      sub_24AE25204(a5, a6);
      sub_24AE25204(a5, a6);
      return sub_24AE25204(a5, a6);
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (!v11)
  {
    v31[0] = a1;
    LOWORD(v31[1]) = a2;
    BYTE2(v31[1]) = BYTE2(a2);
    BYTE3(v31[1]) = BYTE3(a2);
    BYTE4(v31[1]) = BYTE4(a2);
    BYTE5(v31[1]) = BYTE5(a2);
    return sub_24AE2E410(a3, a4, v31, a5, a6, a7);
  }

  v20 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_24AE251B0(a5, a6);
  sub_24AE251B0(a5, a6);
  sub_24AE251B0(a5, a6);
  v23 = sub_24AE3A06C();
  if (!v23)
  {
LABEL_18:
    sub_24AE3A08C();
    goto LABEL_19;
  }

  v24 = v23;
  v25 = sub_24AE3A09C();
  if (__OFSUB__(v20, v25))
  {
    goto LABEL_25;
  }

  v26 = v20 - v25 + v24;
  sub_24AE3A08C();
  if (!v26)
  {
    goto LABEL_19;
  }

  sub_24AE251B0(a5, a6);
  v27 = sub_24AE2E410(a3, a4, v26, a5, a6, a7);
  sub_24AE25204(a5, a6);
  sub_24AE25204(a5, a6);
  sub_24AE25204(a5, a6);
  result = sub_24AE25204(a5, a6);
  if (!v7)
  {
    return v27;
  }

  return result;
}

unint64_t sub_24AE2ED58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t *a7, uint64_t a8)
{
  v9 = v8;
  v46[2] = *MEMORY[0x277D85DE8];
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v45 = 0;
      memset(v46, 0, 14);
      v32 = a4 >> 62;
      if ((a4 >> 62) <= 1)
      {
        if (v32)
        {
          if (__OFSUB__(HIDWORD(a3), a3))
          {
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
          }

          v23 = HIDWORD(a3) - a3;
        }

        else
        {
          v23 = BYTE6(a4);
        }

        goto LABEL_42;
      }

LABEL_32:
      v23 = 0;
      if (v32 == 2)
      {
        v35 = *(a3 + 16);
        v34 = *(a3 + 24);
        v23 = v34 - v35;
        if (__OFSUB__(v34, v35))
        {
          __break(1u);
LABEL_36:
          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            goto LABEL_37;
          }

          goto LABEL_66;
        }
      }

LABEL_42:
      sub_24AE251B0(a3, a4);
      sub_24AE251B0(a5, a6);
      sub_24AE251B0(a3, a4);
      sub_24AE251B0(a5, a6);
      if (CCKDFParametersCreateAnsiX963())
      {
        v23 = 4294962996;
LABEL_58:
        sub_24AE25204(a3, a4);
        sub_24AE25204(a5, a6);
        goto LABEL_59;
      }

      sub_24AE251B0(a5, a6);
      v40 = sub_24AE2E9F4(a5, a6, a7, &v45, a5, a6, a8);
      if (!v8)
      {
        v23 = v40;
LABEL_57:
        sub_24AE25204(a5, a6);
        goto LABEL_58;
      }

      goto LABEL_27;
    }

    v43 = a8;
    v44 = v8;
    v18 = *(a1 + 16);
    sub_24AE251B0(a5, a6);
    sub_24AE251B0(a3, a4);
    sub_24AE251B0(a5, a6);
    sub_24AE251B0(a3, a4);
    sub_24AE251B0(a5, a6);
    v19 = sub_24AE3A06C();
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = v19;
    v21 = sub_24AE3A09C();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_64;
    }

    v22 = v18 - v21 + v20;
    v23 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = sub_24AE3A08C();
    if (!v22)
    {
      goto LABEL_26;
    }

    v23 = a7;
    v46[0] = 0;
    v24 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v9 = v8;
      if (v24 != 2)
      {
        goto LABEL_55;
      }

      v31 = *(a3 + 24);
      if (!__OFSUB__(v31, *(a3 + 16)))
      {
        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_50;
    }

    v9 = v8;
    if (!v24 || !__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_55;
    }

    __break(1u);
LABEL_15:
    v44 = v9;
    v25 = a1;
    if (a1 <= a1 >> 32)
    {
      v26 = a7;
      v43 = a8;
      sub_24AE251B0(a5, a6);
      sub_24AE251B0(a3, a4);
      sub_24AE251B0(a5, a6);
      sub_24AE251B0(a3, a4);
      sub_24AE251B0(a5, a6);
      v27 = sub_24AE3A06C();
      if (v27)
      {
        v28 = v27;
        v29 = sub_24AE3A09C();
        if (!__OFSUB__(v25, v29))
        {
          v30 = v25 - v29 + v28;
          v23 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          sub_24AE3A08C();
          if (v30)
          {
            v23 = v26;
            v46[0] = 0;
            v31 = a4 >> 62;
            if ((a4 >> 62) <= 1)
            {
              v9 = v44;
              if (!v31)
              {
LABEL_55:
                if (CCKDFParametersCreateAnsiX963())
                {
                  v23 = 4294962996;
                  goto LABEL_57;
                }

                sub_24AE251B0(a5, a6);
                v42 = sub_24AE2E9F4(a5, a6, v23, v46, a5, a6, v43);
                if (!v9)
                {
                  v23 = v42;
                  sub_24AE25204(a5, a6);
                  goto LABEL_57;
                }

                sub_24AE25204(a5, a6);
LABEL_27:
                sub_24AE25204(a5, a6);
                sub_24AE25204(a3, a4);
                sub_24AE25204(a5, a6);
                goto LABEL_59;
              }

LABEL_54:
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_68;
              }

              goto LABEL_55;
            }

LABEL_50:
            v9 = v44;
            if (v31 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
            {
              goto LABEL_55;
            }

            __break(1u);
            goto LABEL_54;
          }

LABEL_26:
          sub_24AE2DE4C();
          swift_allocError();
          *v33 = 3;
          swift_willThrow();
          goto LABEL_27;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_25:
      v23 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      sub_24AE3A08C();
      goto LABEL_26;
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v15)
  {
    goto LABEL_15;
  }

  v46[0] = a1;
  LOWORD(v46[1]) = a2;
  BYTE2(v46[1]) = BYTE2(a2);
  BYTE3(v46[1]) = BYTE3(a2);
  BYTE4(v46[1]) = BYTE4(a2);
  BYTE5(v46[1]) = BYTE5(a2);
  v16 = a4 >> 62;
  v45 = 0;
  if ((a4 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_37;
    }

    v32 = *(a3 + 24);
    if (!__OFSUB__(v32, *(a3 + 16)))
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v16)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_24AE251B0(a3, a4);
  sub_24AE251B0(a5, a6);
  sub_24AE251B0(a3, a4);
  sub_24AE251B0(a5, a6);
  if (CCKDFParametersCreateAnsiX963())
  {
    sub_24AE25204(a3, a4);
    sub_24AE25204(a5, a6);
    v23 = 4294962996;
  }

  else
  {
    sub_24AE251B0(a5, a6);
    v23 = sub_24AE2E9F4(a5, a6, a7, &v45, a5, a6, a8);
    sub_24AE25204(a5, a6);
    sub_24AE25204(a3, a4);
    sub_24AE25204(a5, a6);
  }

LABEL_59:
  sub_24AE25204(a3, a4);
  sub_24AE25204(a5, a6);
  return v23;
}

unint64_t sub_24AE2F338()
{
  result = qword_27EFB7988;
  if (!qword_27EFB7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7988);
  }

  return result;
}

unint64_t sub_24AE2F38C()
{
  result = qword_27EFB7990;
  if (!qword_27EFB7990)
  {
    sub_24AE3A25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7990);
  }

  return result;
}

__n128 DiversifiedRootKeys.init(intermediateKey:publicKey:privateKey:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = *a2;
  *a4 = *a1;
  a4[1] = v4;
  result = *a3;
  a4[2] = *a3;
  return result;
}

void DiversifiedRootKeys.intermediateKey.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE26834(v2, v3);
}

void DiversifiedRootKeys.publicKey.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

void DiversifiedRootKeys.privateKey.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  sub_24AE26834(v2, v3);
}

uint64_t sub_24AE2F438()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 0x4B65746176697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656D7265746E69;
  }
}

uint64_t sub_24AE2F4A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AE305C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AE2F4DC(uint64_t a1)
{
  v2 = sub_24AE30078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE2F518(uint64_t a1)
{
  v2 = sub_24AE30078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiversifiedRootKeys.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7998, &qword_24AE3BEC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE26834(v7, v8);
  sub_24AE30078();
  sub_24AE3A5DC();
  v21 = v7;
  v22 = v8;
  v23 = 0;
  sub_24AE2B9B8();
  v11 = v20;
  sub_24AE3A4DC();
  sub_24AE26804(v21, v22);
  if (!v11)
  {
    v13 = v16;
    v12 = v17;
    v21 = v19;
    v22 = v18;
    v23 = 1;
    sub_24AE251B0(v19, v18);
    sub_24AE300CC();
    sub_24AE3A4EC();
    sub_24AE25204(v21, v22);
    v21 = v12;
    v22 = v13;
    v23 = 2;
    sub_24AE26834(v12, v13);
    sub_24AE30120();
    sub_24AE3A4DC();
    sub_24AE26804(v21, v22);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DiversifiedRootKeys.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v2 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  if (v3 >> 60 == 15)
  {
    sub_24AE3A59C();
  }

  else
  {
    v7 = *v1;
    sub_24AE3A59C();
    sub_24AE251B0(v7, v3);
    sub_24AE3A14C();
    sub_24AE26804(v7, v3);
  }

  sub_24AE251B0(v2, v5);
  sub_24AE3A14C();
  sub_24AE25204(v2, v5);
  if (v6 >> 60 == 15)
  {
    return sub_24AE3A59C();
  }

  sub_24AE3A59C();
  sub_24AE251B0(v4, v6);
  sub_24AE3A14C();

  return sub_24AE26804(v4, v6);
}

uint64_t DiversifiedRootKeys.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24AE3A57C();
  sub_24AE3A59C();
  if (v2 >> 60 != 15)
  {
    sub_24AE251B0(v1, v2);
    sub_24AE3A14C();
    sub_24AE26804(v1, v2);
  }

  sub_24AE251B0(v3, v4);
  sub_24AE3A14C();
  sub_24AE25204(v3, v4);
  sub_24AE3A59C();
  if (v6 >> 60 != 15)
  {
    sub_24AE251B0(v5, v6);
    sub_24AE3A14C();
    sub_24AE26804(v5, v6);
  }

  return sub_24AE3A5BC();
}

uint64_t DiversifiedRootKeys.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB79B8, &qword_24AE3BEC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE30078();
  sub_24AE3A5CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_24AE2B964();
  sub_24AE3A4AC();
  v9 = v21;
  v20 = v22;
  v23 = 1;
  sub_24AE30174();
  sub_24AE3A4BC();
  v18 = v21;
  v19 = v22;
  v23 = 2;
  sub_24AE301C8();
  sub_24AE3A4AC();
  (*(v6 + 8))(v8, v5);
  v10 = v21;
  v11 = v22;
  v12 = v9;
  *a2 = v9;
  v13 = v19;
  v14 = v20;
  v15 = v18;
  a2[1] = v20;
  a2[2] = v15;
  a2[3] = v13;
  a2[4] = v10;
  a2[5] = v11;
  sub_24AE26834(v12, v14);
  sub_24AE251B0(v15, v13);
  sub_24AE26834(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24AE26804(v12, v14);
  sub_24AE25204(v15, v13);
  return sub_24AE26804(v10, v11);
}

uint64_t sub_24AE2FC90()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_24AE3A57C();
  DiversifiedRootKeys.hash(into:)(v3);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE2FCE8(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_24AE3A57C();
  DiversifiedRootKeys.hash(into:)(v4);
  return sub_24AE3A5BC();
}

BOOL _s12FindMyCrypto19DiversifiedRootKeysV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[5];
  if (v2 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      v17 = a2[4];
      v18 = a1[4];
      v19 = a1[5];
      sub_24AE26834(v3, v2);
      sub_24AE26834(v7, v6);
      sub_24AE26804(v3, v2);
      goto LABEL_8;
    }

LABEL_5:
    sub_24AE26834(*a1, v2);
    sub_24AE26834(v7, v6);
    sub_24AE26804(v3, v2);
    v11 = v7;
    v12 = v6;
LABEL_6:
    sub_24AE26804(v11, v12);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v17 = a2[4];
  v18 = a1[4];
  v19 = a1[5];
  sub_24AE26834(v3, v2);
  sub_24AE26834(v7, v6);
  sub_24AE26834(v3, v2);
  sub_24AE26834(v7, v6);
  v13 = sub_24AE2A27C(v3, v2, v7, v6);
  sub_24AE26804(v7, v6);
  sub_24AE26804(v3, v2);
  sub_24AE26804(v7, v6);
  sub_24AE26804(v3, v2);
  if (!v13)
  {
    return 0;
  }

LABEL_8:
  sub_24AE251B0(v4, v5);
  sub_24AE251B0(v8, v9);
  v14 = sub_24AE2A27C(v4, v5, v8, v9);
  sub_24AE25204(v8, v9);
  sub_24AE25204(v4, v5);
  if (!v14)
  {
    return 0;
  }

  if (v19 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_24AE26834(v18, v19);
      sub_24AE26834(v17, v10);
      sub_24AE26804(v18, v19);
      return 1;
    }

    goto LABEL_13;
  }

  if (v10 >> 60 == 15)
  {
LABEL_13:
    sub_24AE26834(v18, v19);
    sub_24AE26834(v17, v10);
    sub_24AE26804(v18, v19);
    v11 = v17;
    v12 = v10;
    goto LABEL_6;
  }

  sub_24AE26834(v18, v19);
  sub_24AE26834(v17, v10);
  sub_24AE26834(v18, v19);
  sub_24AE26834(v17, v10);
  v16 = sub_24AE2A27C(v18, v19, v17, v10);
  sub_24AE26804(v17, v10);
  sub_24AE26804(v18, v19);
  sub_24AE26804(v17, v10);
  sub_24AE26804(v18, v19);
  return v16;
}

unint64_t sub_24AE30078()
{
  result = qword_27EFB79A0;
  if (!qword_27EFB79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79A0);
  }

  return result;
}

unint64_t sub_24AE300CC()
{
  result = qword_27EFB79A8;
  if (!qword_27EFB79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79A8);
  }

  return result;
}

unint64_t sub_24AE30120()
{
  result = qword_27EFB79B0;
  if (!qword_27EFB79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79B0);
  }

  return result;
}

unint64_t sub_24AE30174()
{
  result = qword_27EFB79C0;
  if (!qword_27EFB79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79C0);
  }

  return result;
}

unint64_t sub_24AE301C8()
{
  result = qword_27EFB79C8;
  if (!qword_27EFB79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79C8);
  }

  return result;
}

unint64_t sub_24AE30220()
{
  result = qword_27EFB79D0;
  if (!qword_27EFB79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyCrypto15IntermediateKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_24AE302B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AE30304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiversifiedRootKeys.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiversifiedRootKeys.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AE304C4()
{
  result = qword_27EFB79D8;
  if (!qword_27EFB79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79D8);
  }

  return result;
}

unint64_t sub_24AE3051C()
{
  result = qword_27EFB79E0;
  if (!qword_27EFB79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79E0);
  }

  return result;
}

unint64_t sub_24AE30574()
{
  result = qword_27EFB79E8;
  if (!qword_27EFB79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB79E8);
  }

  return result;
}

uint64_t sub_24AE305C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D7265746E69 && a2 == 0xEF79654B65746169;
  if (v4 || (sub_24AE3A51C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (sub_24AE3A51C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
  {

    return 2;
  }

  else
  {
    v6 = sub_24AE3A51C();

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

uint64_t sub_24AE306F8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 72)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 72)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 72)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_24AE2A708();
    swift_allocError();
    *v13 = 72;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_24AE25204(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24AE30810@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 32)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 32)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 32)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_24AE2A708();
    swift_allocError();
    *v13 = 32;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_24AE25204(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24AE30928@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 28)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_24AE2A708();
    swift_allocError();
    *v13 = 28;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_24AE25204(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t PublicKey.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (qword_27EFB7710 != -1)
  {
    swift_once();
  }

  if (sub_24AE2A27C(a1, a2, qword_27EFB79F0, *algn_27EFB79F8))
  {
    sub_24AE2A708();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
    return sub_24AE25204(a1, a2);
  }

  else
  {
    v9 = sub_24AE2D118(a1, a2);
    if (v3)
    {
      MEMORY[0x24C232880](v3);
      sub_24AE2A708();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      sub_24AE25204(v9, v10);
      result = sub_24AE29878(a1, a2, 57, &v12);
      *a3 = v12;
    }
  }

  return result;
}

uint64_t PublicKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t PublicKey.advertisement.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_24AE251B0(*v1, v3);
  v5 = sub_24AE2D118(v4, v3);
  v7 = v6;
  sub_24AE25204(v4, v3);
  return sub_24AE30928(v5, v7, a1);
}

uint64_t sub_24AE30D14()
{
  sub_24AE3A0AC();
  swift_allocObject();
  v1 = 0x3900000000;
  v2 = sub_24AE3A07C();
  result = sub_24AE39018(&v1, 0);
  qword_27EFB79F0 = v1;
  *algn_27EFB79F8 = v2 | 0x4000000000000000;
  return result;
}

void PublicKey.key.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

__n128 PublicKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE30DAC(uint64_t a1)
{
  v2 = sub_24AE3113C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE30DE8(uint64_t a1)
{
  v2 = sub_24AE3113C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PublicKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7A08, &qword_24AE3C278);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v7, v8);
  sub_24AE3113C();
  sub_24AE3A5DC();
  v10 = v7;
  v11 = v8;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t PublicKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7A18, &qword_24AE3C280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE3113C();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE3113C()
{
  result = qword_27EFB7A10;
  if (!qword_27EFB7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A10);
  }

  return result;
}

unint64_t sub_24AE31190(uint64_t a1)
{
  result = sub_24AE311B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE311B8()
{
  result = qword_27EFB7A20;
  if (!qword_27EFB7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A20);
  }

  return result;
}

unint64_t sub_24AE3120C(void *a1)
{
  a1[1] = sub_24AE30174();
  a1[2] = sub_24AE300CC();
  a1[3] = sub_24AE3124C();
  result = sub_24AE312A0();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE3124C()
{
  result = qword_27EFB7A28;
  if (!qword_27EFB7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A28);
  }

  return result;
}

unint64_t sub_24AE312A0()
{
  result = qword_27EFB7A30;
  if (!qword_27EFB7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A30);
  }

  return result;
}

unint64_t sub_24AE312F8()
{
  result = qword_27EFB7A38;
  if (!qword_27EFB7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A38);
  }

  return result;
}

unint64_t sub_24AE31370()
{
  result = qword_27EFB7A40;
  if (!qword_27EFB7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A40);
  }

  return result;
}

unint64_t sub_24AE313C8()
{
  result = qword_27EFB7A48;
  if (!qword_27EFB7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A48);
  }

  return result;
}

unint64_t sub_24AE31420()
{
  result = qword_27EFB7A50;
  if (!qword_27EFB7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A50);
  }

  return result;
}

FindMyCrypto::CryptoError_optional __swiftcall CryptoError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 1;
  switch(rawValue)
  {
    case -4320:
      *v1 = 13;
      return rawValue;
    case -4319:
    case -4318:
    case -4317:
    case -4316:
    case -4315:
    case -4314:
    case -4313:
    case -4312:
      goto LABEL_6;
    case -4311:
      *v1 = 12;
      return rawValue;
    case -4310:
      *v1 = 11;
      return rawValue;
    case -4309:
      *v1 = 10;
      return rawValue;
    case -4308:
      *v1 = 9;
      return rawValue;
    case -4307:
      *v1 = 8;
      return rawValue;
    case -4306:
      *v1 = 7;
      return rawValue;
    case -4305:
      *v1 = 6;
      return rawValue;
    case -4304:
      *v1 = 5;
      return rawValue;
    case -4303:
      *v1 = 4;
      return rawValue;
    case -4302:
      *v1 = 3;
      return rawValue;
    case -4301:
      *v1 = 2;
      return rawValue;
    case -4300:
      goto LABEL_5;
    default:
      if (rawValue)
      {
LABEL_6:
        *v1 = 14;
      }

      else
      {
        v2 = 0;
LABEL_5:
        *v1 = v2;
      }

      return rawValue;
  }
}

uint64_t sub_24AE3158C()
{
  v1 = *v0;
  sub_24AE3A57C();
  MEMORY[0x24C232610](qword_24AE3C778[v1]);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE31614(uint64_t a1)
{
  v2 = *v1;
  sub_24AE3A57C();
  MEMORY[0x24C232610](qword_24AE3C778[v2]);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE31680(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE31AB0();
  v5 = sub_24AE31B04();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t CryptoTokenError.hashValue.getter()
{
  v1 = *v0;
  sub_24AE3A57C();
  MEMORY[0x24C232610](v1);
  return sub_24AE3A5BC();
}

unint64_t sub_24AE31764()
{
  result = qword_27EFB7A58;
  if (!qword_27EFB7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A58);
  }

  return result;
}

unint64_t sub_24AE317BC()
{
  result = qword_27EFB7A60;
  if (!qword_27EFB7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CryptoError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CryptoTokenError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CryptoTokenError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AE31AB0()
{
  result = qword_27EFB7A68;
  if (!qword_27EFB7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A68);
  }

  return result;
}

unint64_t sub_24AE31B04()
{
  result = qword_27EFB7A70;
  if (!qword_27EFB7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A70);
  }

  return result;
}

uint64_t sub_24AE31B74()
{
  sub_24AE3A0AC();
  swift_allocObject();
  v1 = 0x4000000000;
  v2 = sub_24AE3A07C();
  result = sub_24AE39018(&v1, 0);
  qword_27EFB7A78 = v1;
  unk_27EFB7A80 = v2 | 0x4000000000000000;
  return result;
}

uint64_t P256PublicKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

void P256PublicKey.key.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

__n128 P256PublicKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t P256PublicKey.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (qword_27EFB7718 != -1)
  {
    swift_once();
  }

  if (sub_24AE2A27C(a1, a2, qword_27EFB7A78, unk_27EFB7A80))
  {
    sub_24AE2A708();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
    return sub_24AE25204(a1, a2);
  }

  else
  {
    v9 = sub_24AE2D118(a1, a2);
    if (v3)
    {
      MEMORY[0x24C232880](v3);
      sub_24AE2A708();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      sub_24AE25204(v9, v10);
      result = sub_24AE29878(a1, a2, 64, &v12);
      *a3 = v12;
    }
  }

  return result;
}

uint64_t sub_24AE31D94(uint64_t a1)
{
  v2 = sub_24AE32124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE31DD0(uint64_t a1)
{
  v2 = sub_24AE32124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t P256PublicKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7A88, &qword_24AE3C7F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v7, v8);
  sub_24AE32124();
  sub_24AE3A5DC();
  v10 = v7;
  v11 = v8;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t P256PublicKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7A98, &qword_24AE3C7F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE32124();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE32124()
{
  result = qword_27EFB7A90;
  if (!qword_27EFB7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7A90);
  }

  return result;
}

unint64_t sub_24AE32178(uint64_t a1)
{
  result = sub_24AE321A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE321A0()
{
  result = qword_27EFB7AA0;
  if (!qword_27EFB7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AA0);
  }

  return result;
}

unint64_t sub_24AE321F4(void *a1)
{
  a1[1] = sub_24AE32234();
  a1[2] = sub_24AE32288();
  a1[3] = sub_24AE322DC();
  result = sub_24AE32330();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE32234()
{
  result = qword_27EFB7AA8;
  if (!qword_27EFB7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AA8);
  }

  return result;
}

unint64_t sub_24AE32288()
{
  result = qword_27EFB7AB0;
  if (!qword_27EFB7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AB0);
  }

  return result;
}

unint64_t sub_24AE322DC()
{
  result = qword_27EFB7AB8;
  if (!qword_27EFB7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AB8);
  }

  return result;
}

unint64_t sub_24AE32330()
{
  result = qword_27EFB7AC0;
  if (!qword_27EFB7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AC0);
  }

  return result;
}

unint64_t sub_24AE32388()
{
  result = qword_27EFB7AC8;
  if (!qword_27EFB7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AC8);
  }

  return result;
}

unint64_t sub_24AE32400()
{
  result = qword_27EFB7AD0;
  if (!qword_27EFB7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AD0);
  }

  return result;
}

unint64_t sub_24AE32458()
{
  result = qword_27EFB7AD8;
  if (!qword_27EFB7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AD8);
  }

  return result;
}

unint64_t sub_24AE324B0()
{
  result = qword_27EFB7AE0;
  if (!qword_27EFB7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AE0);
  }

  return result;
}

uint64_t SharedSecretKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

void SharedSecretKey.key.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

__n128 SharedSecretKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE32558(uint64_t a1)
{
  v2 = sub_24AE32734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE32594(uint64_t a1)
{
  v2 = sub_24AE32734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharedSecretKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7AE8, &qword_24AE3CAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v7, v8);
  sub_24AE32734();
  sub_24AE3A5DC();
  v10 = v7;
  v11 = v8;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24AE32734()
{
  result = qword_27EFB7AF0;
  if (!qword_27EFB7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7AF0);
  }

  return result;
}

uint64_t SharedSecretKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7AF8, &qword_24AE3CAE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE32734();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE328F8(uint64_t a1)
{
  result = sub_24AE32920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE32920()
{
  result = qword_281392940;
  if (!qword_281392940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392940);
  }

  return result;
}

unint64_t sub_24AE32974(void *a1)
{
  a1[1] = sub_24AE2B18C();
  a1[2] = sub_24AE2B138();
  a1[3] = sub_24AE329B4();
  result = sub_24AE32A08();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE329B4()
{
  result = qword_281392960;
  if (!qword_281392960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392960);
  }

  return result;
}

unint64_t sub_24AE32A08()
{
  result = qword_281392950;
  if (!qword_281392950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392950);
  }

  return result;
}

unint64_t sub_24AE32A90()
{
  result = qword_281392958;
  if (!qword_281392958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392958);
  }

  return result;
}

unint64_t sub_24AE32B08()
{
  result = qword_27EFB7B00;
  if (!qword_27EFB7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B00);
  }

  return result;
}

unint64_t sub_24AE32B60()
{
  result = qword_27EFB7B08;
  if (!qword_27EFB7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B08);
  }

  return result;
}

unint64_t sub_24AE32BB8()
{
  result = qword_27EFB7B10;
  if (!qword_27EFB7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B10);
  }

  return result;
}

uint64_t TimeBasedKey.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeBasedKey(0) + 20);
  v4 = sub_24AE3A03C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TimeBasedKey(uint64_t a1)
{
  result = qword_27EFB7B20;
  if (!qword_27EFB7B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TimeBasedKey.keyMaterial.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TimeBasedKey(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_24AE26834(v4, v5);
  sub_24AE251B0(v6, v7);

  sub_24AE26834(v8, v9);
}

uint64_t TimeBasedKey.description.getter()
{
  v17[0] = 0x203A74766441;
  v17[1] = 0xE600000000000000;
  type metadata accessor for TimeBasedKey(0);
  PublicKey.advertisement.getter(&v16);
  v1 = v16;
  sub_24AE25A84();
  v2 = sub_24AE3A01C();
  v4 = v3;
  sub_24AE25204(v1, *(&v1 + 1));
  MEMORY[0x24C232440](v2, v4);

  MEMORY[0x24C232440](8236, 0xE200000000000000);
  v6 = v17[0];
  v5 = v17[1];
  strcpy(v17, "index: ");
  v17[1] = 0xE700000000000000;
  *&v16 = *v0;
  v7 = sub_24AE3A50C();
  MEMORY[0x24C232440](v7);

  MEMORY[0x24C232440](8236, 0xE200000000000000);
  v8 = v17[0];
  v9 = v17[1];
  v17[0] = v6;
  v17[1] = v5;

  MEMORY[0x24C232440](v8, v9);

  v11 = v17[0];
  v10 = v17[1];
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_24AE3A46C();

  strcpy(v17, "dateInterval: ");
  HIBYTE(v17[1]) = -18;
  sub_24AE3A03C();
  sub_24AE32F9C();
  v12 = sub_24AE3A50C();
  MEMORY[0x24C232440](v12);

  v13 = v17[0];
  v14 = v17[1];
  v17[0] = v11;
  v17[1] = v10;

  MEMORY[0x24C232440](v13, v14);

  return v17[0];
}

unint64_t sub_24AE32F9C()
{
  result = qword_27EFB7B18;
  if (!qword_27EFB7B18)
  {
    sub_24AE3A03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B18);
  }

  return result;
}

unint64_t TimeBasedKey.debugDescription.getter()
{
  sub_24AE3A46C();

  v0 = sub_24AE3A50C();
  MEMORY[0x24C232440](v0);

  MEMORY[0x24C232440](0xD000000000000010, 0x800000024AE408C0);
  type metadata accessor for TimeBasedKey(0);
  sub_24AE3A03C();
  sub_24AE32F9C();
  v1 = sub_24AE3A50C();
  MEMORY[0x24C232440](v1);

  return 0xD000000000000015;
}

uint64_t sub_24AE33128(uint64_t a1)
{
  result = sub_24AE3A03C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t bucket(beaconIdentifier:baseTime:date:bucketSizeInMinutes:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_24AE3A1EC();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v67 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24AE3A1DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v59[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v59[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v68 = &v59[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v59[-v20];
  v66 = v8;
  v62 = a1;
  if (a4 == 15)
  {
    LODWORD(v61) = 0;
  }

  else
  {
    if (a4 != 1440)
    {
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_24AE3A46C();

      v70 = 0xD000000000000018;
      v71 = 0x800000024AE40910;
      v69 = a4;
      v58 = sub_24AE3A50C();
      MEMORY[0x24C232440](v58);

      result = sub_24AE3A49C();
      __break(1u);
      return result;
    }

    LODWORD(v61) = 1;
  }

  sub_24AE3A18C();
  sub_24AE3A17C();
  sub_24AE33E24(&qword_27EFB7B30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v22 = sub_24AE3A39C();
  v23 = *(v11 + 16);
  if (v22)
  {
    v24 = a2;
  }

  else
  {
    v24 = a3;
  }

  v23(v68, v24, v10);
  v64 = v21;
  sub_24AE3A1AC();
  v26 = v25 / (a4 * 60.0);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v26 >= 1.84467441e19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v26 == -1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v65 = v26 + 1;
  if (qword_27EFB7708 != -1)
  {
LABEL_27:
    swift_once();
  }

  v27 = sub_24AE3A21C();
  __swift_project_value_buffer(v27, qword_27EFB7E40);
  v23(v17, a2, v10);
  v23(v14, a3, v10);
  v28 = v63;
  v29 = v66;
  v30 = v67;
  (*(v63 + 16))(v67, v62, v66);
  v31 = sub_24AE3A1FC();
  v32 = sub_24AE3A41C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v60 = v32;
    v34 = v33;
    v62 = swift_slowAlloc();
    v70 = v62;
    *v34 = 136447491;
    v35 = v61 == 0;
    if (v61)
    {
      v36 = 0x61646E6F6365732ELL;
    }

    else
    {
      v36 = 0x7972616D6972702ELL;
    }

    v61 = v31;
    if (v35)
    {
      v37 = 0xE800000000000000;
    }

    else
    {
      v37 = 0xEA00000000007972;
    }

    v38 = sub_24AE33D58(v36, v37, &v70);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v65;
    *(v34 + 22) = 2082;
    sub_24AE33E24(&qword_27EFB7B38, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v39 = sub_24AE3A50C();
    v41 = v40;
    v42 = *(v11 + 8);
    v42(v17, v10);
    v43 = sub_24AE33D58(v39, v41, &v70);

    *(v34 + 24) = v43;
    *(v34 + 32) = 2082;
    v44 = sub_24AE3A50C();
    v46 = v45;
    v42(v14, v10);
    v47 = sub_24AE33D58(v44, v46, &v70);

    *(v34 + 34) = v47;
    *(v34 + 42) = 2160;
    *(v34 + 44) = 1752392040;
    *(v34 + 52) = 2081;
    sub_24AE33E24(&qword_27EFB7B40, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v49 = v66;
    v48 = v67;
    v50 = sub_24AE3A50C();
    v52 = v51;
    (*(v28 + 8))(v48, v49);
    v53 = sub_24AE33D58(v50, v52, &v70);

    *(v34 + 54) = v53;
    v54 = v61;
    _os_log_impl(&dword_24AE23000, v61, v60, "Bucket [%{public}s] calculated to ‣%llu baseTime: %{public}s date: %{public}s  beacon: %{private,mask.hash}s.", v34, 0x3Eu);
    v55 = v62;
    swift_arrayDestroy();
    MEMORY[0x24C232960](v55, -1, -1);
    MEMORY[0x24C232960](v34, -1, -1);

    v42(v68, v10);
    v42(v64, v10);
  }

  else
  {

    (*(v28 + 8))(v30, v29);
    v56 = *(v11 + 8);
    v56(v14, v10);
    v56(v17, v10);
    v56(v68, v10);
    v56(v64, v10);
  }

  return v65;
}

uint64_t dateInterval(baseTime:bucket:bucketSizeInMinutes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v7 = sub_24AE3A1DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v42 = &v39 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v39 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v39 - v25;
  if (!a2)
  {
    v41 = a3;
    v27 = a1;
    if (qword_27EFB7708 != -1)
    {
      swift_once();
    }

    v28 = sub_24AE3A21C();
    __swift_project_value_buffer(v28, qword_27EFB7E40);
    v29 = sub_24AE3A1FC();
    v30 = sub_24AE3A43C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = v30;
      v33 = v31;
      _os_log_impl(&dword_24AE23000, v29, v32, "Caller attempted to calculate dateInterval for bucket 0!", v31, 2u);
      MEMORY[0x24C232960](v33, -1, -1);
    }

    a2 = 1;
    a1 = v27;
  }

  v40 = a2;
  sub_24AE3A18C();
  sub_24AE3A17C();
  v34 = *(v8 + 16);
  v34(v21, a1, v7);
  sub_24AE3A19C();
  v41 = v26;
  v34(v21, v26, v7);
  sub_24AE3A19C();
  v34(v21, v18, v7);
  sub_24AE3A19C();
  sub_24AE3A1CC();
  v35 = *(v8 + 8);
  v35(v13, v7);
  v36 = v42;
  sub_24AE3A1BC();
  if (v40 == 1)
  {
    v37 = v24;
  }

  else
  {
    v37 = v18;
  }

  v34(v21, v37, v7);
  v34(v43, v36, v7);
  sub_24AE3A02C();
  v35(v36, v7);
  v35(v18, v7);
  v35(v24, v7);
  return (v35)(v41, v7);
}

unint64_t sub_24AE33D58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AE33E6C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AE33F78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_24AE33E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AE33E6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AE33FD4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24AE3A47C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24AE33F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_24AE33FD4(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AE34020(a1, a2);
  sub_24AE34150(&unk_285E345A0);
  return v3;
}

void *sub_24AE34020(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AE3423C(v5, 0);
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

  result = sub_24AE3A47C();
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
        v10 = sub_24AE3A3CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AE3423C(v10, 0);
        result = sub_24AE3A45C();
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

uint64_t sub_24AE34150(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AE342B0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AE3423C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7B48, &unk_24AE3CE28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AE342B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7B48, &unk_24AE3CE28);
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

uint64_t sub_24AE343A4()
{
  v0 = sub_24AE3A21C();
  __swift_allocate_value_buffer(v0, qword_27EFB7E58);
  v1 = __swift_project_value_buffer(v0, qword_27EFB7E58);
  if (qword_27EFB7728 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFB7E70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TokenAsyncSequence.init(privateKey:publicKey:sharedKey:startIndex:hint:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = *a5;
  v9 = a5[1];
  v11 = a5[2];
  v32 = *a2;
  if (!a4)
  {
    sub_24AE26804(*a1, *(a1 + 1));
    sub_24AE25204(v32, *(&v32 + 1));
    sub_24AE25204(v8, v7);
    sub_24AE26D34(v10, v9, v11);
    sub_24AE26D50();
    swift_allocError();
    return swift_willThrow();
  }

  v12 = v6;
  v31 = *a1;
  if (v11 >> 60 == 15)
  {
    sub_24AE251B0(v8, v7);
    v9 = v8;
    v11 = v7;
    v15 = a4;
  }

  else
  {
    v15 = a4 - v10;
    v36 = v6;
    if (a4 >= v10)
    {
      sub_24AE251B0(v9, v11);
      if (qword_27EFB7720 != -1)
      {
        swift_once();
      }

      v23 = sub_24AE3A21C();
      __swift_project_value_buffer(v23, qword_27EFB7E58);
      sub_24AE251B0(v9, v11);
      v24 = sub_24AE3A1FC();
      loga = sub_24AE3A42C();
      if (os_log_type_enabled(v24, loga))
      {
        v28 = v24;
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        sub_24AE26D34(v10, v9, v11);
        *(v25 + 4) = v10;
        result = sub_24AE26D34(v10, v9, v11);
        *(v25 + 12) = 2048;
        if (a4 < v15)
        {
          __break(1u);
          return result;
        }

        *(v25 + 14) = v10;
        _os_log_impl(&dword_24AE23000, v28, loga, "KeyGenerationHint hint.index:%llu saved %llu ratchet iterations", v25, 0x16u);
        MEMORY[0x24C232960](v25, -1, -1);
      }

      else
      {
        sub_24AE26D34(v10, v9, v11);
        sub_24AE26D34(v10, v9, v11);
      }

      v12 = v36;
    }

    else
    {
      if (qword_27EFB7720 != -1)
      {
        swift_once();
      }

      v17 = sub_24AE3A21C();
      __swift_project_value_buffer(v17, qword_27EFB7E58);
      sub_24AE251B0(v9, v11);
      v18 = sub_24AE3A1FC();
      v19 = sub_24AE3A44C();
      log = v18;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        *(v20 + 4) = v10;
        sub_24AE26D34(v10, v9, v11);
        *(v20 + 12) = 2048;
        *(v20 + 14) = a4;
        v21 = v19;
        v22 = log;
        _os_log_impl(&dword_24AE23000, log, v21, "Ignoring KeyGenerationHint: hint.index (%llu) > initialRatchetsToSkip(%llu)", v20, 0x16u);
        MEMORY[0x24C232960](v20, -1, -1);
        v12 = v36;
      }

      else
      {
        sub_24AE26D34(v10, v9, v11);
        v12 = v36;
        v22 = log;
      }

      sub_24AE26D34(v10, v9, v11);
      v15 = a4 - 1;
      sub_24AE251B0(v8, v7);
      v9 = v8;
      v11 = v7;
    }
  }

  v33 = v9;
  v34 = v11;
  sub_24AE251B0(v9, v11);
  sub_24AE2C51C(&v33, v15, v35);
  sub_24AE25204(v33, v34);
  if (v12)
  {
    sub_24AE26804(v31, *(&v31 + 1));
    sub_24AE25204(v32, *(&v32 + 1));
    sub_24AE25204(v8, v7);
    return sub_24AE25204(v9, v11);
  }

  else
  {
    v26 = v35[0];
    v27 = v35[1];
    result = sub_24AE25204(v9, v11);
    *a6 = v31;
    *(a6 + 16) = v32;
    *(a6 + 32) = v8;
    *(a6 + 40) = v7;
    *(a6 + 48) = a4;
    *(a6 + 56) = v26;
    *(a6 + 64) = v27;
  }

  return result;
}

uint64_t TokenAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_24AE34D60(v8, v7);
}

uint64_t TokenAsyncSequence.next()@<X0>(uint64_t a1@<X8>)
{
  result = sub_24AE3A40C();
  if (result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0xF000000000000000;
    v14 = 0uLL;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
  }

  else
  {
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = (v1 + 6);
    v15 = v1[6];
    v16 = *v1;
    v10 = (v1 + 7);
    v9 = v1[7];
    v11 = v1[8];
    v12 = v1[4];
    v19[0] = v16;
    v19[1] = v4;
    v18[0] = v5;
    v18[1] = v6;
    *&v17 = v9;
    *(&v17 + 1) = v11;
    sub_24AE26834(v16, v4);
    sub_24AE251B0(v5, v6);
    sub_24AE251B0(v12, v7);
    sub_24AE251B0(v9, v11);
    sub_24AE251B0(v9, v11);
    sub_24AE251B0(v9, v11);
    sub_24AE2BC64(v19, v18, &v17, v8, v10, v20);
    sub_24AE25204(v17, *(&v17 + 1));
    sub_24AE26804(v16, v4);
    sub_24AE25204(v5, v6);
    sub_24AE25204(v12, v7);
    result = sub_24AE25204(v9, v11);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11;
    v13 = v20[1];
    *(a1 + 24) = v20[0];
    *(a1 + 40) = v13;
    v14 = v20[2];
  }

  *(a1 + 56) = v14;
  return result;
}

uint64_t sub_24AE34B9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v9[2] = v2;
  v9[3] = v3;
  v10 = *(v1 + 64);
  v4 = v10;
  v5 = *(v1 + 16);
  v9[0] = *v1;
  v6 = v9[0];
  v9[1] = v5;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  v12 = v4;
  v11[2] = v2;
  v11[3] = v3;
  v11[0] = v6;
  v11[1] = v5;
  sub_24AE34D60(v9, v8);
  return sub_24AE34E74(v11);
}

uint64_t sub_24AE34C08(uint64_t a1)
{
  TokenAsyncSequence.next()(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24AE34C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_24AE3A3FC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](sub_24AE34CFC, v5, v7);
}

uint64_t sub_24AE34CFC()
{
  TokenAsyncSequence.next()(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE34D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7758, &qword_24AE3A950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AE34E04()
{
  result = qword_27EFB7B50;
  if (!qword_27EFB7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B50);
  }

  return result;
}

uint64_t AntiTrackingKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

void AntiTrackingKey.key.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

__n128 AntiTrackingKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE34EF8(uint64_t a1)
{
  v2 = sub_24AE350D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE34F34(uint64_t a1)
{
  v2 = sub_24AE350D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AntiTrackingKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7B58, &qword_24AE3D0E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v7, v8);
  sub_24AE350D4();
  sub_24AE3A5DC();
  v10 = v7;
  v11 = v8;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24AE350D4()
{
  result = qword_27EFB7B60;
  if (!qword_27EFB7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B60);
  }

  return result;
}

uint64_t AntiTrackingKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7B68, &qword_24AE3D0F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE350D4();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE35298(uint64_t a1)
{
  result = sub_24AE352C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE352C0()
{
  result = qword_27EFB7B70;
  if (!qword_27EFB7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B70);
  }

  return result;
}

unint64_t sub_24AE3531C(void *a1)
{
  a1[1] = sub_24AE3535C();
  a1[2] = sub_24AE353B0();
  a1[3] = sub_24AE35404();
  result = sub_24AE35458();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE3535C()
{
  result = qword_27EFB7B78;
  if (!qword_27EFB7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B78);
  }

  return result;
}

unint64_t sub_24AE353B0()
{
  result = qword_27EFB7B80;
  if (!qword_27EFB7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B80);
  }

  return result;
}

unint64_t sub_24AE35404()
{
  result = qword_27EFB7B88;
  if (!qword_27EFB7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B88);
  }

  return result;
}

unint64_t sub_24AE35458()
{
  result = qword_27EFB7B90;
  if (!qword_27EFB7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B90);
  }

  return result;
}

unint64_t sub_24AE354E0()
{
  result = qword_27EFB7B98;
  if (!qword_27EFB7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7B98);
  }

  return result;
}

unint64_t sub_24AE35564()
{
  result = qword_27EFB7BA0;
  if (!qword_27EFB7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BA0);
  }

  return result;
}

unint64_t sub_24AE355BC()
{
  result = qword_27EFB7BA8;
  if (!qword_27EFB7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BA8);
  }

  return result;
}

unint64_t sub_24AE35614()
{
  result = qword_27EFB7BB0;
  if (!qword_27EFB7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BB0);
  }

  return result;
}

uint64_t sub_24AE35668()
{
  v0 = sub_24AE3A21C();
  __swift_allocate_value_buffer(v0, qword_27EFB7E70);
  __swift_project_value_buffer(v0, qword_27EFB7E70);
  return sub_24AE3A20C();
}

__n128 NearOwnerAdvertisement.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t NearOwnerAdvertisement.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

void NearOwnerAdvertisement.key.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_24AE251B0(v2, v3);
}

uint64_t NearOwnerAdvertisement.init(macAddress:ek:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v8 = sub_24AE39FCC();
  v9 = v5;
  sub_24AE3A12C();
  sub_24AE3A13C();
  v6 = sub_24AE39FEC();
  (*(*(v6 - 8) + 8))(a1, v6);
  *a3 = v8;
  a3[1] = v9;
  sub_24AE251B0(v8, v9);

  return sub_24AE25204(v8, v9);
}

uint64_t sub_24AE35838(uint64_t a1)
{
  v2 = sub_24AE35C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE35874(uint64_t a1)
{
  v2 = sub_24AE35C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NearOwnerAdvertisement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7BC0, &qword_24AE3D3E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v7, v8);
  sub_24AE35C60();
  sub_24AE3A5DC();
  v10 = v7;
  v11 = v8;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t NearOwnerAdvertisement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7BD0, &qword_24AE3D3E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE35C60();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AE35C0C()
{
  result = qword_27EFB7BB8;
  if (!qword_27EFB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BB8);
  }

  return result;
}

unint64_t sub_24AE35C60()
{
  result = qword_27EFB7BC8;
  if (!qword_27EFB7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BC8);
  }

  return result;
}

unint64_t sub_24AE35CB4(uint64_t a1)
{
  result = sub_24AE35CDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE35CDC()
{
  result = qword_27EFB7BD8;
  if (!qword_27EFB7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BD8);
  }

  return result;
}

unint64_t sub_24AE35D30(void *a1)
{
  a1[1] = sub_24AE35D70();
  a1[2] = sub_24AE35DC4();
  a1[3] = sub_24AE35E18();
  result = sub_24AE35C0C();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE35D70()
{
  result = qword_27EFB7BE0;
  if (!qword_27EFB7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BE0);
  }

  return result;
}

unint64_t sub_24AE35DC4()
{
  result = qword_27EFB7BE8;
  if (!qword_27EFB7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BE8);
  }

  return result;
}

unint64_t sub_24AE35E18()
{
  result = qword_27EFB7BF0;
  if (!qword_27EFB7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BF0);
  }

  return result;
}

unint64_t sub_24AE35E70()
{
  result = qword_27EFB7BF8;
  if (!qword_27EFB7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7BF8);
  }

  return result;
}

unint64_t sub_24AE35EE8()
{
  result = qword_27EFB7C00;
  if (!qword_27EFB7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C00);
  }

  return result;
}