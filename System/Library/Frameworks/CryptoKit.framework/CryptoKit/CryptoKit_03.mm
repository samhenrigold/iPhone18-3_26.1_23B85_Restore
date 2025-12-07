uint64_t _s4AEADOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A78EA458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v63 = a1;
  v59 = a2;
  swift_getAssociatedTypeWitness();
  v60 = a6;
  v58 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v46 - v12;
  v61 = a4;
  v49 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_checkMetadataState();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v46 - v18;
  swift_getAssociatedTypeWitness();
  v62 = *(swift_getAssociatedConformanceWitness() + 8);
  v53 = swift_getAssociatedTypeWitness();
  v19 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v52 = &v46 - v20;
  v51 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_checkMetadataState();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v46 - v29;
  v54 = *v64;
  v64 = a5;
  v31 = v63;
  if (sub_1A793DB98() != 64)
  {
    return 0;
  }

  v46 = AssociatedTypeWitness;
  sub_1A793D5A8();
  v32 = sub_1A793DB98();
  v33 = *(v25 + 8);
  v33(v30, v24);
  if (v32 == 1)
  {
    sub_1A793D5A8();
    v34 = v52;
    sub_1A793DBC8();
    v33(v27, v24);
    result = (*(*(v53 - 8) + 48))(v34, 1, v53);
    if (result == 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    swift_getAssociatedConformanceWitness();
  }

  else
  {
    (*(v51 + 16))(v23, v31, a3);
  }

  v64 = sub_1A793DB38();
  v36 = v61;
  v37 = v59;
  v38 = v55;
  v39 = v56;
  sub_1A793D5A8();
  v40 = v57;
  v41 = sub_1A793DB98();
  v42 = *(v39 + 8);
  v42(v38, v40);
  if (v41 == 1)
  {
    v43 = v47;
    sub_1A793D5A8();
    v44 = v50;
    sub_1A793DBC8();
    v42(v43, v40);
    result = (*(*(v46 - 8) + 48))(v44, 1, v46);
    if (result == 1)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    swift_getAssociatedConformanceWitness();
  }

  else
  {
    (*(v49 + 16))(v48, v37, v36);
  }

  sub_1A793DB38();
  result = ccsha512_di();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v45 = cced25519_verify();

  return v45 == 0;
}

uint64_t sub_1A78EAB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v32 - v10;
  v34 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v38 = *v4;
  v20 = a1;
  v43 = a3;
  sub_1A793D5A8();
  v35 = v8;
  v21 = sub_1A793DB98();
  v22 = *(v14 + 8);
  v22(v19, v13);
  if (v21 == 1)
  {
    sub_1A793D5A8();
    v23 = v36;
    sub_1A793DBC8();
    v22(v16, v13);
    result = (*(*(AssociatedTypeWitness - 8) + 48))(v23, 1, AssociatedTypeWitness);
    if (result == 1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    swift_getAssociatedConformanceWitness();
  }

  else
  {
    (*(v34 + 16))(v33, v20, a2);
  }

  v25 = sub_1A793DB38();
  sub_1A793D698();
  swift_allocObject();
  v26 = sub_1A793D658();
  v39 = 0x4000000000;
  v40 = v26;
  sub_1A78CC8A8(&v39, 0);
  v41 = v39;
  v42 = v40 | 0x4000000000000000;
  v27 = sub_1A793DB28();
  *(v27 + 16) = 32;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;

  result = ccsha512_di();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v39 = v27;
  pub = cced25519_make_pub();
  if (pub || (pub = sub_1A78EB068(&v41, v25 + 32), pub))
  {
    v29 = pub;
    sub_1A78D6484();
    swift_allocError();
    *v30 = v29;
    *(v30 + 4) = 0;
    swift_willThrow();

    sub_1A78C0AFC(v41, v42);
  }

  else
  {

    v29 = v41;
    v31 = v42;
    sub_1A78C0990(v41, v42);

    sub_1A78C0AFC(v29, v31);
  }

  return v29;
}

uint64_t sub_1A78EB068(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = ccsha512_di();
      if (result)
      {
        if (a2)
        {
          return cced25519_sign();
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    sub_1A78C0AFC(v5, v4);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v8 = *(v5 + 16);
    result = sub_1A793D648();
    if (!result)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!__OFSUB__(v8, sub_1A793D678()))
    {
      sub_1A793D668();
      result = ccsha512_di();
      if (result)
      {
        if (a2)
        {
          result = cced25519_sign();
          *a1 = v5;
          a1[1] = v4 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
          return result;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v6)
  {
    sub_1A78C0AFC(v5, v4);
    LOWORD(v13) = v4;
    BYTE2(v13) = BYTE2(v4);
    HIBYTE(v13) = BYTE3(v4);
    LOBYTE(v14) = BYTE4(v4);
    HIBYTE(v14) = BYTE5(v4);
    result = ccsha512_di();
    if (result)
    {
      if (a2)
      {
        result = cced25519_sign();
        *a1 = v5;
        a1[1] = v13 | ((v14 | (BYTE6(v4) << 16)) << 32);
        return result;
      }

      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_33;
  }

  v9 = v4 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A78C0AFC(v5, v4);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  v10 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v10 < v5)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (sub_1A793D648() && __OFSUB__(v5, sub_1A793D678()))
    {
LABEL_31:
      __break(1u);
    }

    sub_1A793D698();
    swift_allocObject();
    v11 = sub_1A793D628();

    v9 = v11;
  }

  if (v10 < v5)
  {
    goto LABEL_28;
  }

  result = sub_1A793D648();
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFSUB__(v5, sub_1A793D678()))
  {
    goto LABEL_29;
  }

  sub_1A793D668();
  result = ccsha512_di();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a2)
  {
    v12 = cced25519_sign();

    *a1 = v5;
    a1[1] = v9 | 0x4000000000000000;
    return v12;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1A78EB4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v68 = a2;
  v72 = a1;
  swift_getAssociatedTypeWitness();
  v69 = a6;
  v67 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v55 - v11;
  v70 = a4;
  v58 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = swift_checkMetadataState();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v55 - v16;
  swift_getAssociatedTypeWitness();
  v71 = *(swift_getAssociatedConformanceWitness() + 8);
  v63 = swift_getAssociatedTypeWitness();
  v17 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v62 = &v55 - v18;
  v61 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_checkMetadataState();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - v27;
  v29 = *v73;
  v73 = a5;
  v30 = v72;
  if (sub_1A793DB98() != 114)
  {
    return 0;
  }

  v55 = v29;
  sub_1A793D5A8();
  v31 = sub_1A793DB98();
  v32 = *(v23 + 8);
  v32(v28, v22);
  if (v31 == 1)
  {
    sub_1A793D5A8();
    v33 = v62;
    sub_1A793DBC8();
    v32(v25, v22);
    v34 = v63;
    v35 = *(v63 - 8);
    result = (*(v35 + 48))(v33, 1, v63);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_14;
    }

    v78 = v34;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v77);
    (*(v35 + 32))(boxed_opaque_existential_1, v33, v34);
    sub_1A78C78FC(&v77, v80);
  }

  else
  {
    (*(v61 + 16))(v21, v30, a3);
    v39 = sub_1A793DB38();
    v80[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
    v80[4] = sub_1A78EC320();
    v80[0] = v39;
  }

  v40 = v70;
  v41 = v68;
  v42 = v66;
  v43 = v65;
  v44 = v64;
  sub_1A793D5A8();
  v45 = sub_1A793DB98();
  v46 = *(v43 + 8);
  v46(v44, v42);
  if (v45 != 1)
  {
    (*(v58 + 16))(v57, v41, v40);
    v53 = sub_1A793DB38();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
    v78 = v52;
    AssociatedConformanceWitness = sub_1A78EC320();
    *&v77 = v53;
    goto LABEL_11;
  }

  v47 = v56;
  sub_1A793D5A8();
  v48 = v59;
  sub_1A793DBC8();
  v46(v47, v42);
  v49 = AssociatedTypeWitness;
  v50 = *(AssociatedTypeWitness - 8);
  result = (*(v50 + 48))(v48, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v75 = v49;
    v76 = swift_getAssociatedConformanceWitness();
    v51 = __swift_allocate_boxed_opaque_existential_1(&v74);
    (*(v50 + 32))(v51, v48, v49);
    sub_1A78C78FC(&v74, &v77);
    v52 = v78;
LABEL_11:
    v54 = __swift_project_boxed_opaque_existential_1(&v77, v52);
    MEMORY[0x1EEE9AC00](v54);
    *(&v55 - 2) = v80;
    *(&v55 - 1) = v55;
    sub_1A793D6A8();
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v38 = v74;
    __swift_destroy_boxed_opaque_existential_1(v80);
    return v38;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1A78EBD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v36 - v10;
  v38 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v42 = *v4;
  v43 = a3;
  v20 = a1;
  sub_1A793D5A8();
  v39 = v8;
  v21 = sub_1A793DB98();
  v22 = *(v14 + 8);
  v22(v19, v13);
  if (v21 == 1)
  {
    sub_1A793D5A8();
    v23 = v40;
    sub_1A793DBC8();
    v22(v16, v13);
    v24 = AssociatedTypeWitness;
    v25 = *(AssociatedTypeWitness - 8);
    result = (*(v25 + 48))(v23, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v48 = v24;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(v25 + 32))(boxed_opaque_existential_1, v23, v24);
    sub_1A78C78FC(&v47, v50);
  }

  else
  {
    (*(v38 + 16))(v37, v20, a2);
    v28 = sub_1A793DB38();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
    v52 = sub_1A78EC320();
    v50[0] = v28;
  }

  v29 = v42;
  sub_1A793D698();
  swift_allocObject();
  v30 = sub_1A793D658();
  v45 = 0x7200000000;
  v46 = v30;
  sub_1A78CC8A8(&v45, 0);
  *&v47 = v45;
  *(&v47 + 1) = v46 | 0x4000000000000000;
  v31 = sub_1A793DB28();
  *(v31 + 16) = 57;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 73) = 0u;
  v44 = 0;

  if (!ccrng())
  {
LABEL_13:
    __break(1u);
  }

  if (v44)
  {
    __break(1u);
    goto LABEL_13;
  }

  v32 = v29 + 32;
  v45 = v31;
  pub = cced448_make_pub();
  if (pub || (v34 = __swift_project_boxed_opaque_existential_1(v50, v51), MEMORY[0x1EEE9AC00](v34), *(&v36 - 4) = &v47, *(&v36 - 3) = &v45, *(&v36 - 2) = v32, sub_1A793D6A8(), (pub = v44) != 0))
  {
    sub_1A78D6484();
    swift_allocError();
    *v35 = pub;
    *(v35 + 4) = 0;
    swift_willThrow();

    sub_1A78C0AFC(v47, *(&v47 + 1));
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {

    v32 = v47;
    sub_1A78C0990(v47, *(&v47 + 1));

    sub_1A78C0AFC(v47, *(&v47 + 1));
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  return v32;
}

unint64_t sub_1A78EC320()
{
  result = qword_1ED5F8BD0;
  if (!qword_1ED5F8BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB2A6E88, qword_1A7940400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8BD0);
  }

  return result;
}

uint64_t sub_1A78EC428@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, BOOL *a5@<X8>)
{
  if (a2)
  {
    if (result)
    {
      result = cced448_verify();
      *a5 = result == 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78EC480@<X0>(uint64_t a1@<X0>, _DWORD *a3@<X8>)
{
  result = sub_1A78EC4B8(*(v3 + 16), a1);
  *a3 = result;
  return result;
}

uint64_t sub_1A78EC4B8(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = ccrng();
      if (result)
      {
        if (a2)
        {
          return cced448_sign();
        }

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    sub_1A78C0AFC(v5, v4);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v8 = *(v5 + 16);
    result = sub_1A793D648();
    if (!result)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!__OFSUB__(v8, sub_1A793D678()))
    {
      sub_1A793D668();
      result = ccrng();
      if (!result)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (!a2)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      result = cced448_sign();
      v9 = v4 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *a1 = v5;
LABEL_27:
      a1[1] = v9;
      return result;
    }

    __break(1u);
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
LABEL_30:
    __break(1u);
    __break(1u);
    goto LABEL_31;
  }

  if (!v6)
  {
    sub_1A78C0AFC(v5, v4);
    LOWORD(v14) = v4;
    BYTE2(v14) = BYTE2(v4);
    HIBYTE(v14) = BYTE3(v4);
    LOBYTE(v15) = BYTE4(v4);
    HIBYTE(v15) = BYTE5(v4);
    result = ccrng();
    if (result)
    {
      if (a2)
      {
        result = cced448_sign();
        *a1 = v5;
        a1[1] = v14 | ((v15 | (BYTE6(v4) << 16)) << 32);
        return result;
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_34;
  }

  v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A78C0AFC(v5, v4);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  v11 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v11 < v5)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1A793D648() && __OFSUB__(v5, sub_1A793D678()))
    {
LABEL_32:
      __break(1u);
    }

    sub_1A793D698();
    swift_allocObject();
    v12 = sub_1A793D628();

    v10 = v12;
  }

  if (v11 < v5)
  {
    goto LABEL_29;
  }

  result = sub_1A793D648();
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFSUB__(v5, sub_1A793D678()))
  {
    goto LABEL_30;
  }

  sub_1A793D668();
  result = ccrng();
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a2)
  {
    v13 = cced448_sign();

    result = v13;
    v9 = v10 | 0x4000000000000000;
    *a1 = v5;
    goto LABEL_27;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double AES.CCM.Nonce.init()@<D0>(_OWORD *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  type metadata accessor for SecureBytes.Backing(0);
  v2 = swift_allocObject();
  v2[1] = xmmword_1A79411C0;
  if (_swift_stdlib_malloc_size(v2) < 44)
  {
    __break(1u);
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_5;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v2 + 2) = 12;
  sub_1A78ECACC(v2, v4);
  result = v4[0];
  *a1 = *v4;
  return result;
}

uint64_t sub_1A78ECACC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 16) < 1)
  {

    sub_1A78D6484();
    swift_allocError();
    *v8 = 1;
    *(v8 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v10[3] = &type metadata for SecureBytes;
    v10[4] = sub_1A78C7DD0();
    v10[0] = a1;
    v4 = *__swift_project_boxed_opaque_existential_1(v10, &type metadata for SecureBytes);
    swift_beginAccess();
    sub_1A78C2D58((v4 + 32), (v4 + 32 + *(v4 + 16)), v9);
    v5 = v9[0];
    v6 = v9[1];
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t AES.CCM.Nonce.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() < 1)
  {
    sub_1A78D6484();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    v8 = sub_1A78C7370(a1, a2, *(v7 + 8));
    v10 = v9;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v8;
    a4[1] = v10;
  }

  return result;
}

char *sub_1A78ECCE4(uint64_t a1, unint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      __src = a1;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v4 = BYTE6(a2);
      v14 = BYTE5(a2);
      if (!BYTE6(a2))
      {
        return MEMORY[0x1E69E7CC0];
      }

      v5 = sub_1A78BDC10(BYTE6(a2), 0);
      memcpy(v5 + 4, &__src, v4);
      return v5;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A78ED11C(v7, v8);
  }

  if (v3 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_1A78ED11C(v7, v8);
  }

  memset(v15, 0, 14);
  result = sub_1A78E89EC(v15, v15, &__src);
  if (!v2)
  {
    return __src;
  }

  return result;
}

void *AES.CCM.Nonce.makeIterator()(uint64_t a1)
{
  __src[2] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(__src, 0, 14);
      v20 = __src;
      v19 = __src;
      return sub_1A78BDB94(v20, v19);
    }

    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = sub_1A793D648();
    if (v9)
    {
      v10 = sub_1A793D678();
      v2 = v7 - v10;
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_28;
      }

      v9 += v2;
    }

    v11 = __OFSUB__(v8, v7);
    v12 = v8 - v7;
    if (!v11)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    v13 = v2;
    v14 = v2 >> 32;
    v12 = v14 - v13;
    if (v14 >= v13)
    {
      v9 = sub_1A793D648();
      if (!v9)
      {
LABEL_16:
        v16 = sub_1A793D668();
        if (v16 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v17 + v9);
        if (v9)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v9;
        return sub_1A78BDB94(v20, v19);
      }

      v15 = sub_1A793D678();
      if (!__OFSUB__(v13, v15))
      {
        v9 += v13 - v15;
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v4)
  {
    goto LABEL_12;
  }

  __src[0] = *v1;
  LOWORD(__src[1]) = v3;
  BYTE2(__src[1]) = BYTE2(v3);
  BYTE3(__src[1]) = BYTE3(v3);
  BYTE4(__src[1]) = BYTE4(v3);
  BYTE5(__src[1]) = BYTE5(v3);
  if (!BYTE6(v3))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1A78BDC10(BYTE6(v3), 0);
  memcpy(v5 + 4, __src, BYTE6(v3));
  return v5;
}

uint64_t sub_1A78ED068@<X0>(char **a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1A78ECCE4(v4, v3);
  v7 = v6;
  result = sub_1A78C0AFC(v4, v3);
  *a1 = v5;
  a1[1] = v7;
  return result;
}

void *sub_1A78ED0CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1A791C360(v1, v2);
  sub_1A78C0AFC(v1, v2);
  return v3;
}

char *sub_1A78ED11C(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  v6 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1A793D668();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1A78E89EC(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

unint64_t sub_1A78ED1C0()
{
  result = qword_1ED5F8A00;
  if (!qword_1ED5F8A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A71E8, &qword_1A79404D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A00);
  }

  return result;
}

uint64_t sub_1A78ED234()
{
  result = sub_1A78D90E8(5064011, 0xE300000000000000);
  qword_1EB2A6D08 = result;
  qword_1EB2A6D10 = v1;
  return result;
}

unint64_t sub_1A78ED2E0()
{
  result = qword_1EB2A73E8;
  if (!qword_1EB2A73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73E8);
  }

  return result;
}

uint64_t IEEESecurity.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

unint64_t sub_1A78ED3D0()
{
  result = qword_1EB2A73F0;
  if (!qword_1EB2A73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73F0);
  }

  return result;
}

unint64_t sub_1A78ED428()
{
  result = qword_1EB2A73F8;
  if (!qword_1EB2A73F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A7400, &qword_1A7941448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A73F8);
  }

  return result;
}

uint64_t sub_1A78ED5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, __int128 *x8_0@<X8>)
{
  v15 = sub_1A793D6F8();
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v16 + 104))(v19, *MEMORY[0x1E6969010], v17);
    v20 = sub_1A78DA2C4(a1, a2 - a1, v19);
    v22 = v21;
    v23 = sub_1A78ED778(a6, v20, v21);
    if (!v9)
    {
      v25 = v23;
      v26 = v24;
      sub_1A78C0990(v23, v24);
      sub_1A78ED910(v25, v26, a7, x8_0);
      sub_1A78C0AFC(v25, v26);
    }

    return sub_1A78C0AFC(v20, v22);
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *sub_1A78ED778(void *a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A793D7B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A79414F0;
  *(v5 + 32) = sub_1A793D958();
  *(v5 + 40) = v6;
  v7 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v8 = sub_1A793D878();

  v13[0] = 0;
  v9 = [a1 sign:v4 algorithms:v7 parameters:v8 error:v13];

  v10 = v13[0];
  if (v9)
  {
    v11 = sub_1A793D7D8();
  }

  else
  {
    v11 = v10;
    sub_1A793D6C8();

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1A78ED910@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, __int128 *a4@<X8>)
{
  sub_1A78C0990(a1, a2);
  v9 = sub_1A791EBC0(a1, a2);
  sub_1A78BDFE0(v35, v9, v9 + 32, 0, (2 * *(v9 + 16)) | 1);
  if (v4)
  {
    sub_1A78C0AFC(a1, a2);
  }

  v38 = v36;
  v39[0] = v37[0];
  *(v39 + 9) = *(v37 + 9);
  sub_1A78CB1E8(&v38, &v30);
  v11 = sub_1A78CB244(v35, 0x30u, v34);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v34[3];
  result = a3(v11);
  if (!result)
  {
    goto LABEL_34;
  }

  v12 = result;
  sub_1A78C0AFC(a1, a2);
  v13 = objc_opt_self();
  result = [v13 groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = v31;
  v15 = (*(&v31 + 1) >> 1) - v31;
  if (__OFSUB__(*(&v31 + 1) >> 1, v31))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result < v15)
  {
LABEL_9:
    sub_1A78D6484();
    swift_allocError();
    *v17 = 1;
    *(v17 + 4) = 1;
    swift_willThrow();
    sub_1A78EE7F4(&v30);
    return sub_1A78BF494(v35);
  }

  v16 = v33;
  if (__OFSUB__(*(&v33 + 1) >> 1, v33))
  {
    goto LABEL_23;
  }

  if (result < (*(&v33 + 1) >> 1) - v33)
  {
    goto LABEL_9;
  }

  v40 = (*(&v33 + 1) >> 1) - v33;
  v23 = *(&v33 + 1);
  v24 = v32;
  v25 = v30;
  v29 = xmmword_1A793F230;
  result = [v13 groupOrderByteCountForCP_];
  if (result < 0)
  {
    goto LABEL_24;
  }

  if (result + 0x4000000000000000 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1A793D768();
  result = [v13 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = __OFSUB__(result, v15);
  result -= v15;
  if (v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1A78C3DF4(result, 0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7108, &unk_1A7946860);
  v27 = v19;
  v22 = sub_1A78CB614();
  v28 = v22;
  v20 = swift_allocObject();
  v26[0] = v20;
  *(v20 + 16) = v25;
  *(v20 + 32) = v14;
  result = __swift_project_boxed_opaque_existential_1(v26, v19);
  if (__OFSUB__(*(result + 24) >> 1, *(result + 16)))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_unknownObjectRetain_n();
  sub_1A793D788();
  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_unknownObjectRelease();
  result = [v13 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = __OFSUB__(result, v40);
  result -= v40;
  if (v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1A78C3DF4(result, 0);
    v27 = v19;
    v28 = v22;
    v21 = swift_allocObject();
    v26[0] = v21;
    *(v21 + 16) = v24;
    *(v21 + 32) = v16;
    *(v21 + 40) = v23;
    result = __swift_project_boxed_opaque_existential_1(v26, v19);
    if (!__OFSUB__(*(result + 24) >> 1, *(result + 16)))
    {
      swift_unknownObjectRetain();
      sub_1A793D788();
      __swift_destroy_boxed_opaque_existential_1(v26);
      sub_1A78EE7F4(&v30);
      result = sub_1A78BF494(v35);
      *a4 = v29;
      return result;
    }

    goto LABEL_33;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t SecureEnclave.P256.Signing.PrivateKey.signature<A>(for:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X8>)
{
  v30[1] = a1;
  v30[0] = a4;
  v39 = *MEMORY[0x1E69E9840];
  v7 = sub_1A793D6F8();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v30 - v12;
  v31 = *(v4 + 24);
  v14 = ccsha256_di();
  if (!v14)
  {
    __break(1u);
  }

  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
  inited = swift_initStackObject();
  getDigestSizeForDigestInfo();
  v17 = swift_slowAlloc();
  ccdigest_init();
  *(inited + 16) = v15;
  *(inited + 24) = v17;
  v37 = inited;
  v18 = sub_1A793D5A8();
  MEMORY[0x1EEE9AC00](v18);
  v30[-4] = a2;
  v30[-3] = a3;
  v30[-2] = &v37;
  swift_getAssociatedConformanceWitness();
  v19 = v30[2];
  sub_1A793DAC8();
  (*(v11 + 8))(v13, AssociatedTypeWitness);

  sub_1A78BD4B0(v36);

  v34 = v36[0];
  v35 = v36[1];
  v21 = v32;
  v20 = v33;
  (*(v32 + 104))(v9, *MEMORY[0x1E6969010], v33);
  sub_1A793D6E8();
  sub_1A793D698();
  swift_allocObject();

  v22 = sub_1A793D628();
  v23 = sub_1A793D688();
  *v24 |= 0x8000000000000000;
  v23(v38, 0);

  (*(v21 + 8))(v9, v20);
  v25 = sub_1A78ED778(v31, 0x2000000000, v22 | 0x4000000000000000);
  if (!v19)
  {
    v27 = v25;
    v28 = v26;
    sub_1A78C0990(v25, v26);
    sub_1A78ED910(v27, v28, MEMORY[0x1E69E9510], v30[0]);
    sub_1A78C0AFC(v27, v28);
  }
}

uint64_t SecureEnclave.P384.Signing.PrivateKey.signature<A>(for:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X8>)
{
  v29[1] = a1;
  v29[0] = a4;
  v39 = *MEMORY[0x1E69E9840];
  v32 = sub_1A793D6F8();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v29 - v11;
  v30 = *(v4 + 24);
  v13 = ccsha384_di();
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A0, qword_1A7940068);
  inited = swift_initStackObject();
  getDigestSizeForDigestInfo();
  v16 = swift_slowAlloc();
  ccdigest_init();
  *(inited + 16) = v14;
  *(inited + 24) = v16;
  v37 = inited;
  v17 = sub_1A793D5A8();
  MEMORY[0x1EEE9AC00](v17);
  v29[-4] = a2;
  v29[-3] = a3;
  v29[-2] = &v37;
  swift_getAssociatedConformanceWitness();
  v18 = v29[2];
  sub_1A793DAC8();
  (*(v10 + 8))(v12, AssociatedTypeWitness);

  sub_1A78C4BA4(v36);

  v33 = v36[0];
  v34 = v36[1];
  v35 = v36[2];
  v19 = v31;
  v20 = v32;
  (*(v31 + 104))(v8, *MEMORY[0x1E6969010], v32);
  sub_1A793D6E8();
  sub_1A793D698();
  swift_allocObject();

  v21 = sub_1A793D628();
  v22 = sub_1A793D688();
  *v23 |= 0x8000000000000000;
  v22(v38, 0);

  (*(v19 + 8))(v8, v20);
  v24 = sub_1A78ED778(v30, 0x3000000000, v21 | 0x4000000000000000);
  if (!v18)
  {
    v26 = v24;
    v27 = v25;
    sub_1A78C0990(v24, v25);
    sub_1A78ED910(v26, v27, MEMORY[0x1E69E9518], v29[0]);
    sub_1A78C0AFC(v26, v27);
  }
}

uint64_t sub_1A78EE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

unint64_t sub_1A78EE6DC(unint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1A793D738();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1A793D648();
  if (v3)
  {
    result = sub_1A793D678();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1A793D668();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1A78C3BEC(v3, v7);

  return v8;
}

uint64_t sub_1A78EE7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7408, &qword_1A7941540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A78EE8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A78EE8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1A78EE95C@<Q0>(char *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a8;
  v43 = a7;
  v45 = a4;
  v46 = a5;
  v38 = a2;
  v36 = a9;
  v41 = a11;
  v14 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s5DHKEMO9PublicKeyVMa(0, a10, v17, v18);
  v39 = *(v40 - 8);
  v19 = MEMORY[0x1EEE9AC00](v40);
  v21 = &v34 - v20;
  v22 = *a1;
  v37 = a1[1];
  v23 = a1[2];
  v24 = *a3;
  (*(v14 + 16))(v16, a6, a10, v19);
  LOBYTE(v47[0]) = v22;
  v25 = v42;
  sub_1A78F03D8(v16, v47, a10, v41, v21);
  if (v25)
  {
    (*(v14 + 8))(a6, a10);

    sub_1A78C0AFC(v43, v44);
    sub_1A78CEEC8(v45, v46);
  }

  else
  {
    v27 = v24;
    v35 = v23;
    v41 = a10;
    v42 = a6;
    sub_1A78F04D4(v40, v47);
    v34 = v21;
    v28 = v47[0];
    v29 = v47[1];
    v30 = *v48;
    v50[3] = &type metadata for SymmetricKey;
    v50[4] = sub_1A78D4AE0();
    v50[0] = v28;
    v53 = v27;
    v49[0] = v22;
    v49[1] = v37;
    v49[2] = v35;
    sub_1A78C0990(v29, v30);

    sub_1A78D3074(v38, v50, v43, v44, &v53, v45, v46, v49, &v51);
    v31 = (v39 + 8);

    sub_1A78C0AFC(v29, v30);
    (*(v14 + 8))(v42, v41);
    (*v31)(v34, v40);
    *v48 = v52[0];
    *&v48[11] = *(v52 + 11);
    result = *v48;
    v32 = *&v48[16];
    v33 = v36;
    *v36 = v51;
    v33[1] = result;
    v33[2] = v32;
    *(v33 + 6) = v29;
    *(v33 + 7) = v30;
  }

  return result;
}

uint64_t sub_1A78EEDAC@<X0>(char *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *a3;
  (*(*(a11 + 16) + 8))(v32, a10);
  if (v11)
  {
    (*(*(a10 - 8) + 8))(a6, a10);

    sub_1A78C0AFC(a7, a8);
    return sub_1A78CEEC8(a4, a5);
  }

  else
  {
    v26 = a5;
    v27 = a6;
    v25 = a9;
    v21 = v32[0];
    v20 = v32[1];
    v22 = *v33;
    v35[3] = &type metadata for SymmetricKey;
    v35[4] = sub_1A78D4AE0();
    v35[0] = v21;
    v38 = v18;
    v34[0] = v15;
    v34[1] = v16;
    v34[2] = v17;
    sub_1A78C0990(v20, v22);

    sub_1A78D3074(a2, v35, a7, a8, &v38, a4, v26, v34, &v36);

    sub_1A78C0AFC(v20, v22);
    result = (*(*(a10 - 8) + 8))(v27, a10);
    *v33 = v37[0];
    *&v33[11] = *(v37 + 11);
    v23 = *v33;
    v24 = *&v33[16];
    *v25 = v36;
    *(v25 + 16) = v23;
    *(v25 + 32) = v24;
    *(v25 + 48) = v20;
    *(v25 + 56) = v22;
  }

  return result;
}

__n128 sub_1A78EEFD0@<Q0>(char *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v70 = a8;
  v69 = a7;
  v73 = a6;
  v72 = a5;
  v71 = a4;
  v59 = a2;
  v56 = a9;
  v74 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v52 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = AssociatedTypeWitness;
  v62 = AssociatedConformanceWitness;
  v61 = _s5DHKEMO9PublicKeyVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v52 - v18;
  v19 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s5DHKEMO10PrivateKeyVMa(0, a11, a12, v23);
  v64 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v52 - v26;
  v28 = *a1;
  v58 = a1[1];
  v57 = a1[2];
  v29 = *a3;
  v30 = v74;
  (*(v19 + 16))(v22, v25);
  v75[0] = v28;
  v31 = v67;
  sub_1A78F0CD8(v22, v75, a11, a12, v27);
  if (v31)
  {

    sub_1A78C0AFC(v69, v70);
    sub_1A78CEEC8(v71, v72);
    (*(v19 + 8))(v30, a11);
    (*(v68 + 8))(v73, v66);
  }

  else
  {
    v52 = v29;
    v53 = a11;
    v54 = v19;
    v55 = v27;
    v67 = v24;
    v32 = v68;
    v33 = v63;
    v34 = v66;
    (*(v68 + 16))(v63, v73, v66);
    v75[0] = v28;
    v35 = v65;
    sub_1A78F03D8(v33, v75, v34, v62, v65);
    v37 = sub_1A78F0EF4(v75, v35, v67);
    v38 = v52;
    v39 = *v75;
    v40 = v37;
    v42 = v41;

    sub_1A78C0990(v40, v42);

    sub_1A78C0990(v40, v42);
    v63 = v40;
    v62 = v42;
    sub_1A78C0AFC(v40, v42);
    v78[3] = &type metadata for SymmetricKey;
    v78[4] = sub_1A78D4AE0();
    v78[0] = v39;
    v81 = v38;
    v77[0] = v28;
    v77[1] = v58;
    v77[2] = v57;
    sub_1A78D3074(v59, v78, v69, v70, &v81, v71, v72, v77, &v79);
    v43 = (v54 + 8);
    v44 = (v32 + 8);
    v45 = (v60 + 8);
    v46 = (v64 + 8);
    v47 = v61;

    v48 = v63;
    v49 = v62;
    sub_1A78C0AFC(v63, v62);
    (*v43)(v74, v53);
    (*v44)(v73, v34);
    (*v45)(v65, v47);
    (*v46)(v55, v67);
    *v76 = *v80;
    *&v76[11] = *&v80[11];
    result = *v76;
    v50 = *&v76[16];
    v51 = v56;
    *v56 = v79;
    v51[1] = result;
    v51[2] = v50;
    *(v51 + 6) = v48;
    *(v51 + 7) = v49;
  }

  return result;
}

__n128 sub_1A78EF7F4@<Q0>(unsigned __int8 *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v77 = a8;
  v71 = a7;
  v70 = a6;
  v72 = a4;
  v73 = a3;
  v60 = a2;
  v61 = a9;
  v76 = a12;
  v69 = a11;
  v68 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = sub_1A793DC78();
  v59 = *(v74 - 8);
  v75 = v59;
  MEMORY[0x1EEE9AC00](v74);
  v63 = &v53[-v17];
  v66 = AssociatedTypeWitness;
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v53[-v19];
  v20 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = _s5DHKEMO10PrivateKeyVMa(0, a13, a14, v24);
  v64 = *(v25 - 1);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v53[-v27];
  v29 = *a1;
  v58 = a1[1];
  v57 = a1[2];
  v30 = *a5;
  v31 = v77;
  (*(v20 + 16))(v23, v77, a13, v26);
  v78[0] = v29;
  v32 = v67;
  sub_1A78F0CD8(v23, v78, a13, a14, v28);
  if (v32)
  {

    sub_1A78C0AFC(v68, v69);
    sub_1A78CEEC8(v70, v71);
    sub_1A78C0AFC(v73, v72);
    (*(v75 + 8))(v76, v74);
    (*(v20 + 8))(v31, a13);
  }

  else
  {
    v54 = v29;
    v34 = v62;
    v55 = a13;
    v56 = v20;
    v67 = v25;
    v35 = v73;
    v36 = v75;
    v37 = v63;
    v38 = v74;
    (*(v75 + 16))(v63, v76, v74);
    if ((*(v65 + 48))(v37, 1, v66) == 1)
    {
      v39 = *(v36 + 8);
      v75 = v36 + 8;
      v39(v37, v38);
      v40 = v35;
      v41 = v72;
      sub_1A78F29C8(v40, v72, v67, v78);
    }

    else
    {
      (*(v65 + 32))(v34, v37, v66);
      v42 = v35;
      v41 = v72;
      sub_1A78F1CF0(v42, v72, v34, v67, v78);
      (*(v65 + 8))(v34, v66);
    }

    v43 = *v78;
    v44 = v71;
    v45 = v69;
    v46 = v55;
    v47 = v68;
    v81[3] = &type metadata for SymmetricKey;
    v81[4] = sub_1A78D4AE0();
    v81[0] = v43;
    v84 = v30;
    v80[0] = v54;
    v80[1] = v58;
    v80[2] = v57;
    sub_1A78D3074(v60, v81, v47, v45, &v84, v70, v44, v80, &v82);
    v48 = (v56 + 8);
    v49 = (v64 + 8);
    v50 = v61;
    v51 = v67;
    (*(v59 + 8))(v76, v74);
    (*v48)(v77, v46);
    (*v49)(v28, v51);
    *v79 = *v83;
    *&v79[11] = *&v83[11];
    result = *v79;
    v52 = *&v79[16];
    *v50 = v82;
    *(v50 + 16) = result;
    *(v50 + 32) = v52;
    *(v50 + 48) = v73;
    *(v50 + 56) = v41;
  }

  return result;
}

uint64_t sub_1A78F003C@<X0>(char *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = *a5;
  (*(*(a14 + 8) + 32))(&v33, a3, a4, a13, *(a14 + 8));
  if (v14)
  {

    sub_1A78C0AFC(a10, a11);
    sub_1A78CEEC8(a6, a7);
    sub_1A78C0AFC(a3, a4);
    swift_getAssociatedTypeWitness();
    v22 = sub_1A793DC78();
    (*(*(v22 - 8) + 8))(a12, v22);
    return (*(*(a13 - 8) + 8))(a8, a13);
  }

  else
  {
    v28 = a8;
    v24 = v33;
    v36[3] = &type metadata for SymmetricKey;
    v36[4] = sub_1A78D4AE0();
    v36[0] = v24;
    v39 = v21;
    v35[0] = v29;
    v35[1] = v19;
    v35[2] = v20;
    sub_1A78D3074(a2, v36, a10, a11, &v39, a6, a7, v35, &v37);
    swift_getAssociatedTypeWitness();
    v25 = sub_1A793DC78();
    (*(*(v25 - 8) + 8))(a12, v25);
    result = (*(*(a13 - 8) + 8))(v28, a13);
    *v34 = v38[0];
    *&v34[11] = *(v38 + 11);
    v26 = *v34;
    v27 = *&v34[16];
    *a9 = v37;
    *(a9 + 16) = v26;
    *(a9 + 32) = v27;
    *(a9 + 48) = a3;
    *(a9 + 56) = a4;
  }

  return result;
}

uint64_t sub_1A78F03D8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = *a2;
  v16 = *a2;
  v11 = (*(*(a4 + 8) + 16))(&v16, a3);
  if (v5)
  {
    return (*(*(a3 - 8) + 8))(a1, a3);
  }

  sub_1A78C0AFC(v11, v12);
  v15 = _s5DHKEMO9PublicKeyVMa(0, a3, a4, v14);
  result = (*(*(a3 - 8) + 32))(&a5[*(v15 + 36)], a1, a3);
  *a5 = v10;
  return result;
}

uint64_t sub_1A78F04D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v5 = *(a1 + 16);
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v53 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(a1 + 36);
  v15 = *(*(AssociatedConformanceWitness + 8) + 8);
  v16 = *(v15 + 24);
  v63 = v3;
  v17 = v64;
  v16(v73, &v3[v14], AssociatedTypeWitness, v15);
  if (v17)
  {
    return (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  v57 = v10;
  v56 = v73[0];
  v19 = *(v15 + 16);
  v58 = AssociatedTypeWitness;
  v19(AssociatedTypeWitness, v15);
  LOBYTE(v73[0]) = *v63;
  v20 = *(v8 + 8);
  v21 = *(v20 + 16);
  v59 = v21(v73, v5, v20);
  v64 = v22;
  (*(v61 + 8))(v62, v5);
  LOBYTE(v73[0]) = *v63;
  v23 = v21(v73, v5, v20);
  v25 = v24;
  v54 = 0;
  v26 = v23;
  v62 = v12;
  v73[3] = &type metadata for SharedSecret;
  v73[4] = sub_1A78F2924();
  v73[0] = v56;
  v27 = *v63;
  v28 = 8 * *v63;
  if (qword_1EB2A6D00 != -1)
  {
    swift_once();
  }

  v29 = 0x20100uLL >> v28;
  v71 = qword_1EB2A6D08;
  v72 = qword_1EB2A6D10;
  v30 = qword_1A7941810[v27];
  sub_1A78C0990(qword_1EB2A6D08, qword_1EB2A6D10);
  v31 = sub_1A78FE770(v30, 2);
  v33 = v32;
  sub_1A793D808();
  sub_1A78C0AFC(v31, v33);
  v68 = xmmword_1A793F230;
  sub_1A793D808();
  v56 = v26;
  sub_1A793D808();
  v55 = *(&v68 + 1);
  v63 = v68;
  if (qword_1EB2A6D30 != -1)
  {
    swift_once();
  }

  v61 = v25;
  sub_1A78D4B98(v73, &v68);
  if (qword_1EB2A6CE8 != -1)
  {
    swift_once();
  }

  v66 = qword_1EB2A6CF0;
  v67 = *algn_1EB2A6CF8;
  sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
  sub_1A793D808();
  sub_1A793D808();
  v34 = v54;
  sub_1A78D4274(&v68);
  v53[1] = v34;
  v35 = v66;
  v36 = v67;
  sub_1A78F3E70(v66, v67);
  sub_1A78D2B88(0, 0xC000000000000000, v29, &v74);

  sub_1A78D4A78(&v68);
  sub_1A78C0AFC(v35, v36);
  v54 = v74;
  if (qword_1EB2A6CC8 != -1)
  {
    swift_once();
  }

  v37 = 32;
  if (v27 == 2)
  {
    v37 = 64;
  }

  if (v27 == 1)
  {
    v38 = 48;
  }

  else
  {
    v38 = v37;
  }

  v66 = sub_1A78FE770(v38, 2);
  v67 = v39;
  sub_1A793D808();
  sub_1A793D808();
  sub_1A793D808();
  v69 = MEMORY[0x1E6969080];
  v70 = MEMORY[0x1E6969078];
  v40 = v63;
  v41 = v55;
  *&v68 = v63;
  *(&v68 + 1) = v55;
  v42 = __swift_project_boxed_opaque_existential_1(&v68, MEMORY[0x1E6969080]);
  v43 = *v42;
  v44 = v42[1];
  sub_1A78C0990(v40, v41);
  sub_1A7900C14(v43, v44, &v66);
  __swift_destroy_boxed_opaque_existential_1(&v68);
  if (v29)
  {
    v45 = v60;
    v46 = v58;
    v47 = v57;
    v48 = v62;
    if (v29 == 1)
    {
      sub_1A78CF840(v54, v66, v67, v38, &v74);
    }

    else
    {
      sub_1A78CFC48(v54, v66, v67, v38, &v74);
    }

    v51 = v74;
    swift_beginAccess();
    sub_1A78C2BF8(v51 + 32, v51 + 32 + *(v51 + 16), &v65);
    v50 = v65;

    sub_1A78C0AFC(v56, v61);
    sub_1A78C0AFC(v63, v41);
  }

  else
  {
    sub_1A78CF454(v54, v66, v67, v38, &v74);
    v49 = v74;
    swift_beginAccess();
    sub_1A78C2BF8(v49 + 32, v49 + 32 + *(v49 + 16), &v65);
    v50 = v65;

    sub_1A78C0AFC(v56, v61);
    sub_1A78C0AFC(v63, v41);
    v45 = v60;
    v46 = v58;
    v47 = v57;
    v48 = v62;
  }

  (*(v47 + 8))(v48, v46);
  sub_1A78C0AFC(v66, v67);

  sub_1A78C0AFC(v71, v72);
  result = __swift_destroy_boxed_opaque_existential_1(v73);
  v52 = v59;
  *v45 = v50;
  v45[1] = v52;
  v45[2] = v64;
  return result;
}

uint64_t sub_1A78F0CD8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v25 = a5;
  v10 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25 - v14;
  v16 = *a2;
  v17 = *(v10 + 16);
  v26 = a1;
  v17(a3, v10, v13);
  v27 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(*(AssociatedConformanceWitness + 8) + 16))(&v27, AssociatedTypeWitness);
  if (v5)
  {
    (*(*(a3 - 8) + 8))(v26, a3);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    sub_1A78C0AFC(v19, v20);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
    v23 = _s5DHKEMO10PrivateKeyVMa(0, a3, a4, v22);
    v24 = v25;
    result = (*(*(a3 - 8) + 32))(&v25[*(v23 + 36)], v26, a3);
    *v24 = v16;
  }

  return result;
}

uint64_t sub_1A78F0EF4(void *a1, unint64_t a2, uint64_t a3)
{
  v98 = a2;
  v87 = a1;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v92 = a3;
  v94 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v82 - v8;
  v93 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v82 - v12;
  v14 = swift_getAssociatedConformanceWitness();
  (*(v14 + 16))(v10, v14);
  v16 = *(_s5DHKEMO9PublicKeyVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15) + 36);
  v17 = *(*(v14 + 8) + 8);
  v18 = *(v17 + 24);
  v108 = &type metadata for SharedSecret;
  v91 = sub_1A78F2924();
  v109 = v91;
  v95 = v16;
  v19 = v98 + v16;
  v20 = v17;
  v21 = v97;
  v18(&v107, v19, v10, v17);
  if (v21)
  {
    (*(v11 + 8))(v13, v10);
    __swift_deallocate_boxed_opaque_existential_1(&v107);
  }

  else
  {
    v84 = AssociatedTypeWitness;
    v97 = v13;
    v85 = v11;
    v86 = v10;
    v22 = __swift_mutable_project_boxed_opaque_existential_1(&v107, v108);
    v23 = MEMORY[0x1EEE9AC00](v22);
    v25 = (&v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25, v23);
    v27 = *v25;
    swift_beginAccess();
    sub_1A78F6AF0(v27 + 32, v27 + 32 + *(v27 + 16), &v102);

    v28 = v102;
    __swift_destroy_boxed_opaque_existential_1(&v107);
    v110 = v28;
    v29 = *(v92 + 36);
    v30 = *(v94 + 24);
    v108 = &type metadata for SharedSecret;
    v109 = v91;
    v30(&v107, v98 + v95, v93);
    v91 = v29;
    v32 = __swift_mutable_project_boxed_opaque_existential_1(&v107, v108);
    v33 = MEMORY[0x1EEE9AC00](v32);
    v35 = (&v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35, v33);
    v37 = *v35;
    swift_beginAccess();
    sub_1A78F6AF0(v37 + 32, v37 + 32 + *(v37 + 16), &v102);

    v38 = v102;
    __swift_destroy_boxed_opaque_existential_1(&v107);
    sub_1A793D808();
    sub_1A78C0AFC(v38, *(&v38 + 1));
    v39 = v89;
    (*(v20 + 16))(v86, v20);
    LOBYTE(v107) = *v96;
    v40 = *(AssociatedConformanceWitness + 8);
    v41 = v84;
    v92 = *(v40 + 16);
    v42 = (v92)(&v107, v84, v40);
    v82 = v43;
    v83 = v42;
    v44 = v90 + 8;
    v45 = *(v90 + 8);
    v45(v39, v41);
    v108 = MEMORY[0x1E6969080];
    v109 = MEMORY[0x1E6969078];
    v107 = v110;
    LOBYTE(v102) = *v96;
    sub_1A78C0990(v110, *(&v110 + 1));
    v46 = v92;
    v47 = (v92)(&v102, v41, v40);
    v90 = v44;
    v95 = v47;
    v98 = v48;
    v49 = v96;
    v50 = v88;
    (*(v94 + 16))(v93);
    LOBYTE(v102) = *v49;
    v51 = v46(&v102, v41, v40);
    v53 = v45;
    v54 = v51;
    v55 = v52;
    v53(v50, v41);
    v56 = *v96;
    v57 = 8 * *v96;
    if (qword_1EB2A6D00 != -1)
    {
      swift_once();
    }

    v94 = 0;
    v58 = 0x20100uLL >> v57;
    v105 = qword_1EB2A6D08;
    v106 = qword_1EB2A6D10;
    v59 = qword_1A7941810[v56];
    sub_1A78C0990(qword_1EB2A6D08, qword_1EB2A6D10);
    v60 = sub_1A78FE770(v59, 2);
    v62 = v61;
    sub_1A793D808();
    sub_1A78C0AFC(v60, v62);
    v102 = xmmword_1A793F230;
    sub_1A793D808();
    sub_1A793D808();
    sub_1A78C0990(v54, v55);
    sub_1A793D808();
    v92 = v54;
    v93 = v55;
    sub_1A78C0AFC(v54, v55);
    v91 = *(&v102 + 1);
    v96 = v102;
    if (qword_1EB2A6D30 != -1)
    {
      swift_once();
    }

    sub_1A78D4B98(&v107, &v102);
    if (qword_1EB2A6CE8 != -1)
    {
      swift_once();
    }

    v100 = qword_1EB2A6CF0;
    v101 = *algn_1EB2A6CF8;
    sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
    sub_1A793D808();
    sub_1A793D808();
    v63 = v94;
    sub_1A78D4274(&v102);
    v90 = v63;
    v64 = v100;
    v65 = v101;
    sub_1A78F3E70(v100, v101);
    sub_1A78D2B88(0, 0xC000000000000000, v58, &v111);

    sub_1A78D4A78(&v102);
    sub_1A78C0AFC(v64, v65);
    v94 = v111;
    if (qword_1EB2A6CC8 != -1)
    {
      swift_once();
    }

    v66 = 32;
    if (v56 == 2)
    {
      v66 = 64;
    }

    if (v56 == 1)
    {
      v67 = 48;
    }

    else
    {
      v67 = v66;
    }

    v100 = sub_1A78FE770(v67, 2);
    v101 = v68;
    sub_1A793D808();
    sub_1A793D808();
    sub_1A793D808();
    v103 = MEMORY[0x1E6969080];
    v104 = MEMORY[0x1E6969078];
    v69 = v96;
    v70 = v91;
    *&v102 = v96;
    *(&v102 + 1) = v91;
    v71 = __swift_project_boxed_opaque_existential_1(&v102, MEMORY[0x1E6969080]);
    v72 = *v71;
    v73 = v71[1];
    sub_1A78C0990(v69, v70);
    sub_1A7900C14(v72, v73, &v100);
    __swift_destroy_boxed_opaque_existential_1(&v102);
    v74 = v58;
    if (v58)
    {
      v75 = v86;
      v76 = v85;
      v10 = v83;
      v77 = v93;
      if (v74 == 1)
      {
        sub_1A78CF840(v94, v100, v101, v67, &v111);
      }

      else
      {
        sub_1A78CFC48(v94, v100, v101, v67, &v111);
      }

      v80 = v111;
      swift_beginAccess();
      sub_1A78C2BF8(v80 + 32, v80 + 32 + *(v80 + 16), &v99);
      v81 = v99;

      sub_1A78C0AFC(v96, v70);
      sub_1A78C0AFC(v92, v77);
      sub_1A78C0AFC(v95, v98);
      *v87 = v81;
    }

    else
    {
      sub_1A78CF454(v94, v100, v101, v67, &v111);
      v78 = v111;
      swift_beginAccess();
      sub_1A78C2BF8(v78 + 32, v78 + 32 + *(v78 + 16), &v99);
      v79 = v99;

      sub_1A78C0AFC(v96, v70);
      sub_1A78C0AFC(v92, v93);
      sub_1A78C0AFC(v95, v98);
      *v87 = v79;
      v75 = v86;
      v76 = v85;
      v10 = v83;
    }

    sub_1A78C0AFC(v110, *(&v110 + 1));
    (*(v76 + 8))(v97, v75);
    sub_1A78C0AFC(v100, v101);

    sub_1A78C0AFC(v105, v106);
    __swift_destroy_boxed_opaque_existential_1(&v107);
  }

  return v10;
}

uint64_t sub_1A78F1CF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  v91 = a3;
  v90 = a5;
  v9 = *(a4 + 2);
  v8 = *(a4 + 3);
  v92 = a4;
  v93 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  *&v106 = a1;
  *(&v106 + 1) = a2;
  v94 = v5;
  LOBYTE(v101) = *v5;
  v96 = v9;
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 1);
  sub_1A78C0990(a1, a2);
  v18 = v97;
  result = v17(&v106, &v101, MEMORY[0x1E6969080], MEMORY[0x1E6969078], AssociatedTypeWitness, v16);
  if (!v18)
  {
    v87 = a2;
    v88 = v16;
    v89 = v12;
    v86 = a1;
    v97 = AssociatedTypeWitness;
    v20 = *(v92 + 9);
    v21 = v93;
    v22 = *(v93 + 24);
    v107 = &type metadata for SharedSecret;
    v23 = sub_1A78F2924();
    v108 = v23;
    v24 = v94;
    v92 = v22;
    (v22)(&v106, v15, v96, v21);
    v85 = v15;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(&v106, v107);
    v26 = MEMORY[0x1EEE9AC00](v25);
    v28 = v20;
    v29 = (&v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v26);
    v31 = *v29;
    swift_beginAccess();
    sub_1A78F6AF0(v31 + 32, v31 + 32 + *(v31 + 16), &v101);
    v84 = 0;

    v32 = v101;
    __swift_destroy_boxed_opaque_existential_1(&v106);
    v109 = v32;
    v107 = &type metadata for SharedSecret;
    v108 = v23;
    v83 = v28;
    v33 = v84;
    v92(&v106, v91, v96, v21);
    if (v33)
    {
      sub_1A78C0AFC(v32, *(&v32 + 1));
      (*(v95 + 8))(v85, v97);
      return __swift_deallocate_boxed_opaque_existential_1(&v106);
    }

    else
    {
      v34 = __swift_mutable_project_boxed_opaque_existential_1(&v106, v107);
      v35 = MEMORY[0x1EEE9AC00](v34);
      v37 = (&v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v38 + 16))(v37, v35);
      v39 = *v37;
      swift_beginAccess();
      sub_1A78F6AF0(v39 + 32, v39 + 32 + *(v39 + 16), &v101);

      v40 = v101;
      __swift_destroy_boxed_opaque_existential_1(&v106);
      sub_1A793D808();
      sub_1A78C0AFC(v40, *(&v40 + 1));
      v107 = MEMORY[0x1E6969080];
      v108 = MEMORY[0x1E6969078];
      v106 = v109;
      v41 = *(v21 + 16);
      sub_1A78C0990(v109, *(&v109 + 1));
      v42 = v89;
      v41(v96, v21);
      LOBYTE(v101) = *v24;
      v43 = v88;
      v44 = *(v88 + 2);
      v45 = v97;
      v46 = v44(&v101, v97, v88);
      v96 = 0;
      v92 = v46;
      v93 = v47;
      v48 = v42;
      v49 = v95 + 8;
      v50 = *(v95 + 8);
      v50(v48, v45);
      LOBYTE(v101) = *v24;
      v51 = v96;
      v52 = v44(&v101, v45, v43);
      if (v51)
      {
        sub_1A78C0AFC(v92, v93);
        sub_1A78C0AFC(v109, *(&v109 + 1));
        v50(v85, v45);
        return __swift_destroy_boxed_opaque_existential_1(&v106);
      }

      else
      {
        v91 = v52;
        v96 = v53;
        v95 = v49;
        v54 = *v94;
        v55 = 8 * *v94;
        if (qword_1EB2A6D00 != -1)
        {
          swift_once();
        }

        v88 = v50;
        v56 = 0x20100uLL >> v55;
        v104 = qword_1EB2A6D08;
        v105 = qword_1EB2A6D10;
        v84 = v54;
        v57 = qword_1A7941810[v54];
        sub_1A78C0990(qword_1EB2A6D08, qword_1EB2A6D10);
        v58 = sub_1A78FE770(v57, 2);
        v60 = v59;
        sub_1A793D808();
        sub_1A78C0AFC(v58, v60);
        v101 = xmmword_1A793F230;
        sub_1A793D808();
        sub_1A793D808();
        v61 = v91;
        v62 = v96;
        sub_1A78C0990(v91, v96);
        sub_1A793D808();
        sub_1A78C0AFC(v61, v62);
        v94 = *(&v101 + 1);
        v89 = v101;
        if (qword_1EB2A6D30 != -1)
        {
          swift_once();
        }

        sub_1A78D4B98(&v106, &v101);
        if (qword_1EB2A6CE8 != -1)
        {
          swift_once();
        }

        v99 = qword_1EB2A6CF0;
        v100 = *algn_1EB2A6CF8;
        sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
        sub_1A793D808();
        sub_1A793D808();
        sub_1A78D4274(&v101);
        v87 = 0;
        v63 = v99;
        v64 = v100;
        sub_1A78F3E70(v99, v100);
        sub_1A78D2B88(0, 0xC000000000000000, v56, &v110);

        sub_1A78D4A78(&v101);
        sub_1A78C0AFC(v63, v64);
        v65 = v110;
        if (qword_1EB2A6CC8 != -1)
        {
          swift_once();
        }

        v66 = 32;
        if (v84 == 2)
        {
          v66 = 64;
        }

        if (v84 == 1)
        {
          v67 = 48;
        }

        else
        {
          v67 = v66;
        }

        v99 = sub_1A78FE770(v67, 2);
        v100 = v68;
        sub_1A793D808();
        sub_1A793D808();
        sub_1A793D808();
        v102 = MEMORY[0x1E6969080];
        v103 = MEMORY[0x1E6969078];
        v69 = v89;
        v70 = v94;
        *&v101 = v89;
        *(&v101 + 1) = v94;
        v71 = __swift_project_boxed_opaque_existential_1(&v101, MEMORY[0x1E6969080]);
        v72 = *v71;
        v73 = v71[1];
        sub_1A78C0990(v69, v70);
        sub_1A7900C14(v72, v73, &v99);
        __swift_destroy_boxed_opaque_existential_1(&v101);
        v74 = v56;
        if (v56)
        {
          v75 = v97;
          v76 = v85;
          v77 = v90;
          v78 = v88;
          if (v74 == 1)
          {
            sub_1A78CF840(v65, v99, v100, v67, &v110);
          }

          else
          {
            sub_1A78CFC48(v65, v99, v100, v67, &v110);
          }

          v81 = v110;
          swift_beginAccess();
          sub_1A78C2BF8(v81 + 32, v81 + 32 + *(v81 + 16), &v98);
          v82 = v98;

          sub_1A78C0AFC(v89, v94);
          sub_1A78C0AFC(v91, v96);
          sub_1A78C0AFC(v92, v93);
          *v77 = v82;
        }

        else
        {
          sub_1A78CF454(v65, v99, v100, v67, &v110);
          v79 = v110;
          swift_beginAccess();
          sub_1A78C2BF8(v79 + 32, v79 + 32 + *(v79 + 16), &v98);
          v80 = v98;

          sub_1A78C0AFC(v89, v94);
          sub_1A78C0AFC(v91, v96);
          sub_1A78C0AFC(v92, v93);
          *v90 = v80;
          v75 = v97;
          v76 = v85;
          v78 = v88;
        }

        sub_1A78C0AFC(v109, *(&v109 + 1));
        v78(v76, v75);
        sub_1A78C0AFC(v99, v100);

        sub_1A78C0AFC(v104, v105);
        return __swift_destroy_boxed_opaque_existential_1(&v106);
      }
    }
  }

  return result;
}

unint64_t sub_1A78F2924()
{
  result = qword_1EB2A6D20;
  if (!qword_1EB2A6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D20);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1AC55E570);
  }

  return result;
}

uint64_t sub_1A78F29C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v57 = a4;
  v8 = *(a3 + 2);
  v7 = *(a3 + 3);
  v58 = a3;
  v59 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v72[0] = a1;
  v72[1] = a2;
  v61 = v8;
  v62 = v4;
  LOBYTE(v67) = *v4;
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = *(v15 + 8);
  sub_1A78C0990(a1, a2);
  v17 = v63;
  result = v16(v72, &v67, MEMORY[0x1E6969080], MEMORY[0x1E6969078], AssociatedTypeWitness, v15);
  if (!v17)
  {
    v19 = v11;
    v55 = a1;
    v56 = a2;
    v63 = AssociatedTypeWitness;
    v20 = v59;
    v21 = v60;
    (*(v59 + 24))(v72, v14, v61, v59);
    v58 = v14;
    v22 = v72[0];
    v72[3] = &type metadata for SharedSecret;
    v72[4] = sub_1A78F2924();
    v72[0] = v22;
    v23 = v62;
    (*(v20 + 16))(v61, v20);
    LOBYTE(v67) = *v23;
    v24 = v63;
    v25 = (*(v15 + 16))(&v67, v63, v15);
    v61 = 0;
    v26 = v25;
    v28 = v27;
    v59 = *(v21 + 8);
    v60 = v21 + 8;
    (v59)(v19, v24);
    v29 = *v62;
    v30 = 8 * *v62;
    if (qword_1EB2A6D00 != -1)
    {
      swift_once();
    }

    v31 = 0x20100uLL >> v30;
    v70 = qword_1EB2A6D08;
    v71 = qword_1EB2A6D10;
    v53 = v29;
    v32 = qword_1A7941810[v29];
    sub_1A78C0990(qword_1EB2A6D08, qword_1EB2A6D10);
    v33 = sub_1A78FE770(v32, 2);
    v35 = v34;
    sub_1A793D808();
    sub_1A78C0AFC(v33, v35);
    v67 = xmmword_1A793F230;
    sub_1A793D808();
    v56 = v28;
    sub_1A793D808();
    v54 = *(&v67 + 1);
    v62 = v67;
    if (qword_1EB2A6D30 != -1)
    {
      swift_once();
    }

    v55 = v26;
    sub_1A78D4B98(v72, &v67);
    if (qword_1EB2A6CE8 != -1)
    {
      swift_once();
    }

    v65 = qword_1EB2A6CF0;
    v66 = *algn_1EB2A6CF8;
    sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
    sub_1A793D808();
    sub_1A793D808();
    sub_1A78D4274(&v67);
    v36 = v65;
    v37 = v66;
    sub_1A78F3E70(v65, v66);
    sub_1A78D2B88(0, 0xC000000000000000, v31, &v73);

    sub_1A78D4A78(&v67);
    sub_1A78C0AFC(v36, v37);
    v61 = v73;
    if (qword_1EB2A6CC8 != -1)
    {
      swift_once();
    }

    v38 = 32;
    if (v53 == 2)
    {
      v38 = 64;
    }

    if (v53 == 1)
    {
      v39 = 48;
    }

    else
    {
      v39 = v38;
    }

    v65 = sub_1A78FE770(v39, 2);
    v66 = v40;
    sub_1A793D808();
    sub_1A793D808();
    sub_1A793D808();
    v68 = MEMORY[0x1E6969080];
    v69 = MEMORY[0x1E6969078];
    v41 = v62;
    v42 = v54;
    *&v67 = v62;
    *(&v67 + 1) = v54;
    v43 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x1E6969080]);
    v44 = *v43;
    v45 = v43[1];
    sub_1A78C0990(v41, v42);
    sub_1A7900C14(v44, v45, &v65);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    v46 = v31;
    if (v31)
    {
      v47 = v63;
      v48 = v55;
      if (v46 == 1)
      {
        sub_1A78CF840(v61, v65, v66, v39, &v73);
      }

      else
      {
        sub_1A78CFC48(v61, v65, v66, v39, &v73);
      }

      v51 = v73;
      swift_beginAccess();
      sub_1A78C2BF8(v51 + 32, v51 + 32 + *(v51 + 16), &v64);
      v52 = v64;

      sub_1A78C0AFC(v62, v42);
      sub_1A78C0AFC(v48, v56);
      *v57 = v52;
    }

    else
    {
      sub_1A78CF454(v61, v65, v66, v39, &v73);
      v49 = v73;
      swift_beginAccess();
      sub_1A78C2BF8(v49 + 32, v49 + 32 + *(v49 + 16), &v64);
      v50 = v64;

      sub_1A78C0AFC(v62, v42);
      sub_1A78C0AFC(v55, v56);
      *v57 = v50;
      v47 = v63;
    }

    (v59)(v58, v47);
    sub_1A78C0AFC(v65, v66);

    sub_1A78C0AFC(v70, v71);
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  return result;
}

uint64_t sub_1A78F31B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v5 + 16))(v4, v5, v7);
  v13 = *v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_1A78F03D8(v9, &v13, AssociatedTypeWitness, AssociatedConformanceWitness, a2);
}

uint64_t sub_1A78F334C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A78F33CC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFB)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 5)
      {
        return v15 - 4;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A78F3550(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFB)
  {
    v8 = 251;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFB)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 4;
  }
}

uint64_t sub_1A78F37C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A78F382C(*(v2 + 24), *a1);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1A78F3E70(result, v6);
    result = sub_1A78C0AFC(v7, v8);
    *a2 = v9;
  }

  return result;
}

void *sub_1A78F382C(void *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = ccec_export_pub_size((a2 + 32));
  v4 = sub_1A793DB28();
  *(v4 + 16) = v3;
  ccec_export_pub();
  *(v4 + 16) = v3;
  v5 = sub_1A78C0DCC(v4);
  v7 = v6;

  v8 = sub_1A793D7B8();
  sub_1A78C0AFC(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A79414F0;
  *(v9 + 32) = sub_1A793D958();
  *(v9 + 40) = v10;
  v11 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v12 = sub_1A793D878();

  v17[0] = 0;
  v13 = [a1 exchangeKey:v8 algorithms:v11 parameters:v12 error:v17];

  v14 = v17[0];
  if (v13)
  {
    v8 = sub_1A793D7D8();
  }

  else
  {
    v15 = v14;
    sub_1A793D6C8();

    swift_willThrow();
  }

  return v8;
}

uint64_t SecureEnclave.Curve25519.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A78F3A84(*(v2 + 24), *a1);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1A78F3E70(result, v6);
    result = sub_1A78C0AFC(v7, v8);
    *a2 = v9;
  }

  return result;
}

void *sub_1A78F3A84(void *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  sub_1A793DB18();
  v4 = sub_1A78C0DCC(a2);
  v6 = v5;

  v7 = sub_1A793D7B8();
  sub_1A78C0AFC(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A79414F0;
  *(v8 + 32) = sub_1A793D958();
  *(v8 + 40) = v9;
  v10 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v11 = sub_1A793D878();

  v16[0] = 0;
  v12 = [a1 exchangeKey:v7 algorithms:v10 parameters:v11 error:v16];

  v13 = v16[0];
  if (v12)
  {
    v7 = sub_1A793D7D8();
  }

  else
  {
    v14 = v13;
    sub_1A793D6C8();

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1A78F3C4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A78F3A84(*(v2 + 24), *a1);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1A78F3E70(result, v6);
    result = sub_1A78C0AFC(v7, v8);
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1A78F3CE4(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_beginAccess();
  v12 = a4 - a3;
  if (!a3)
  {
    v12 = 0;
  }

  if (a1 < 0 || v12 < a1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 < 0 || v12 < a2)
  {
    goto LABEL_21;
  }

  v13 = v10[2];
  v14 = v13 + a2 - a1;
  if (__OFADD__(v13, a2 - a1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = _swift_stdlib_malloc_size(v10);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    return sub_1A78DEE5C(a1, a2, a3, a4);
  }

  if (v14 < 0)
  {
    goto LABEL_23;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14)
  {
    v16 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
    v18 = v17 | HIWORD(v17);
    if (v18 == -1)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = (v18 + 1);
    }
  }

  else
  {
    v19 = 1;
  }

  type metadata accessor for SecureBytes.Backing(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = v19;
  v21 = *v5;
  result = swift_beginAccess();
  v22 = v21[2];
  if ((v22 & 0x8000000000000000) == 0)
  {
    sub_1A78DECAC(v21, 0, v22);

    *v5 = v20;
    return sub_1A78DEE5C(a1, a2, a3, a4);
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1A78F3E70(uint64_t a1, unint64_t a2)
{
  v27[3] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v27, 0, 14);
      v3 = v27;
      goto LABEL_33;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = sub_1A793D648();
    if (v6)
    {
      v7 = sub_1A793D678();
      if (__OFSUB__(v4, v7))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
      }

      v6 += v4 - v7;
    }

    v8 = __OFSUB__(v5, v4);
    v9 = v5 - v4;
    if (!v8)
    {
      v10 = sub_1A793D668();
      if (v10 < v9)
      {
        v9 = v10;
      }

      if (v6)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v11))
        {
          if (!v11)
          {
            v15 = 1;
            goto LABEL_43;
          }

          v12 = (v11 - 1) | ((v11 - 1) >> 1) | (((v11 - 1) | ((v11 - 1) >> 1)) >> 2);
          v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
          v14 = v13 | HIWORD(v13);
          if (v14 != -1)
          {
            v15 = (v14 + 1);
            goto LABEL_43;
          }

LABEL_42:
          v15 = 0xFFFFFFFFLL;
LABEL_43:
          type metadata accessor for SecureBytes.Backing(0);
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = v15;
          _swift_stdlib_malloc_size(v24);
          if (v6)
          {
            memmove(v24 + 4, v6, v9);
          }

          else
          {
            v9 = 0;
          }

          swift_beginAccess();
          v24[2] = v9;
          if ((_swift_stdlib_malloc_size(v24) - 32) >= v9)
          {
            return v24;
          }

          goto LABEL_53;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v2)
  {
    v27[0] = a1;
    LOWORD(v27[1]) = a2;
    BYTE2(v27[1]) = BYTE2(a2);
    BYTE3(v27[1]) = BYTE3(a2);
    BYTE4(v27[1]) = BYTE4(a2);
    BYTE5(v27[1]) = BYTE5(a2);
    v3 = v27 + BYTE6(a2);
LABEL_33:
    sub_1A78C2BF8(v27, v3, &v26);
    return v26;
  }

  v16 = a1;
  v9 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v6 = sub_1A793D648();
  if (v6)
  {
    v17 = sub_1A793D678();
    if (__OFSUB__(v16, v17))
    {
      goto LABEL_55;
    }

    v6 += v16 - v17;
  }

  v18 = sub_1A793D668();
  if (v18 < v9)
  {
    v9 = v18;
  }

  if (v6)
  {
    v19 = v9;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < 0)
  {
    goto LABEL_51;
  }

  if (v19)
  {
    v20 = (v19 - 1) | ((v19 - 1) >> 1) | (((v19 - 1) | ((v19 - 1) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | HIWORD(v21);
    if (v22 == -1)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = (v22 + 1);
    }
  }

  else
  {
    v23 = 1;
  }

  type metadata accessor for SecureBytes.Backing(0);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = v23;
  _swift_stdlib_malloc_size(v24);
  if (v6)
  {
    memmove(v24 + 4, v6, v9);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  v24[2] = v9;
  if ((_swift_stdlib_malloc_size(v24) - 32) < v9)
  {
    __break(1u);
    goto LABEL_42;
  }

  return v24;
}

uint64_t static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a1;
  v41 = a4;
  v34 = a2;
  v39 = a9;
  v38 = a11;
  v35 = a10;
  v36 = a3;
  v40 = sub_1A793DC78();
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v16 = &v31 - v15;
  v33 = sub_1A793DC78();
  v17 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v19 = &v31 - v18;
  v21 = type metadata accessor for HashedAuthenticationCode(0, a5, a8, v20);
  v22 = *(v21 - 8);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v31 - v24);
  v42 = *v32;
  v26 = *(a6 - 1);
  (*(v26 + 16))(v19, v34, a6, v23);
  (*(v26 + 56))(v19, 0, 1, a6);
  v27 = v31;
  static HKDF.extract<A>(inputKeyMaterial:salt:)(&v42, v19, a5, a6, v31, v35, v25);
  (*(v17 + 8))(v19, v33);
  v28 = *(a7 - 8);
  (*(v28 + 16))(v16, v36, a7);
  (*(v28 + 56))(v16, 0, 1, a7);
  WitnessTable = swift_getWitnessTable();
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)(v25, v16, v41, a5, v21, a7, v27, WitnessTable, v39, v38);
  (*(v37 + 8))(v16, v40);
  return (*(v22 + 8))(v25, v21);
}

uint64_t static HKDF.deriveKey<A>(inputKeyMaterial:info:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v19 = *a1;
  v18 = MEMORY[0x1E69E7CC0];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  v16 = sub_1A78D2A34();
  return static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)(&v19, &v18, a2, a3, a4, v15, a5, a6, a8, v16, a7);
}

uint64_t static HKDF.deriveKey<A>(inputKeyMaterial:salt:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v19 = *a1;
  v18 = MEMORY[0x1E69E7CC0];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  v16 = sub_1A78D2A34();
  return static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)(&v19, a2, &v18, a3, a4, a5, v15, a6, a8, a7, v16);
}

uint64_t static HKDF.deriveKey(inputKeyMaterial:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = *a1;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  v10 = sub_1A78D2A34();
  return static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)(&v14, &v13, &v12, a2, a3, v9, v9, a4, a5, v10, v10);
}

uint64_t AES.CMAC.update<A>(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11[-v8];
  sub_1A793D5A8();
  v12 = a2;
  v13 = a3;
  v14 = v3;
  swift_getAssociatedConformanceWitness();
  sub_1A793DAC8();
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t AES.CMAC.finalize()@<X0>(uint64_t *a1@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v3 = v1[1];
  sub_1A793DB18();
  *&v31 = sub_1A78CC5A0(v3);
  *(&v31 + 1) = v5;
  sub_1A78CC640(&v31, 0);
  v34 = v31;
  v29 = v4;
  sub_1A78F5694(&v34, &v29);
  v6 = v34;
  v32 = MEMORY[0x1E6969080];
  v33 = MEMORY[0x1E6969078];
  v31 = v34;
  v7 = __swift_project_boxed_opaque_existential_1(&v31, MEMORY[0x1E6969080]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v28, 0, 14);
      sub_1A78C0990(v6, *(&v6 + 1));
      v11 = v28;
      v12 = v28;
      goto LABEL_23;
    }

    v13 = *(v8 + 16);
    v14 = *(v8 + 24);
    sub_1A78C0990(v6, *(&v6 + 1));
    v15 = sub_1A793D648();
    if (v15)
    {
      v16 = sub_1A793D678();
      v8 = v13 - v16;
      if (__OFSUB__(v13, v16))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 += v8;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v28[0] = *v7;
    LOWORD(v28[1]) = v9;
    BYTE2(v28[1]) = BYTE2(v9);
    BYTE3(v28[1]) = BYTE3(v9);
    BYTE4(v28[1]) = BYTE4(v9);
    BYTE5(v28[1]) = BYTE5(v9);
    sub_1A78C0990(v6, *(&v6 + 1));
    v11 = v28;
    v12 = v28 + BYTE6(v9);
    goto LABEL_23;
  }

  v19 = v8;
  v20 = v8 >> 32;
  v18 = v20 - v19;
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_1A78C0990(v6, *(&v6 + 1));
  v15 = sub_1A793D648();
  if (v15)
  {
    v21 = sub_1A793D678();
    if (!__OFSUB__(v19, v21))
    {
      v15 += v19 - v21;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v22 = sub_1A793D668();
  if (v22 >= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  v24 = (v23 + v15);
  if (v15)
  {
    v12 = v24;
  }

  else
  {
    v12 = 0;
  }

  v11 = v15;
LABEL_23:
  sub_1A78C2D58(v11, v12, v30);
  sub_1A78C0AFC(v6, *(&v6 + 1));
  v25 = v30[0];
  v26 = v30[1];
  __swift_destroy_boxed_opaque_existential_1(&v31);
  *a1 = v25;
  a1[1] = v26;
}

void *AES.CMAC.init(key:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  result = AES.CMAC.init(key:outputSize:)(&v5, 16, v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  return result;
}

size_t AES.CMAC.init(key:outputSize:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (v7 >> 60)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x101010000;
    if (v8 || v9 == 0)
    {
      goto LABEL_15;
    }

    result = getCMACContextSize();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v11 = result;
        v12 = sub_1A793DB28();
        *(v12 + 16) = v11;
        bzero((v12 + 32), v11);
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      ccaes_cbc_encrypt_mode();
      v13 = cccmac_init();

      if (!v13)
      {
        *a3 = v12;
        a3[1] = a2;
        return result;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t AES.CMAC.update(bufferPointer:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1A78F5C2C(v4);
  v4 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = cccmac_update();
  if (!result)
  {
    *v2 = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1A78F4CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

uint64_t sub_1A78F4E0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if (result)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1A78F5C2C(v5);
  v5 = result;
  *a3 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = cccmac_update();
  if (!result)
  {
    *a3 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AES.CMAC.MAC.byteCount.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      return BYTE6(v2);
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v9 = HIDWORD(v1) - v1;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  result = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78F4EF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v6 = v12 + BYTE6(a2);
      goto LABEL_9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v9 = sub_1A78F5AA0(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    return v9 & 1;
  }

  if (v5 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v12, 0, 14);
  v6 = v12;
LABEL_9:
  v9 = sub_1A78CBAB0(v12, v6, a3, a4, &v11);
  if (!v4)
  {
    v9 = v11;
  }

  return v9 & 1;
}

uint64_t sub_1A78F503C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v13[0] = a3;
      LOWORD(v13[1]) = a4;
      BYTE2(v13[1]) = BYTE2(a4);
      BYTE3(v13[1]) = BYTE3(a4);
      BYTE4(v13[1]) = BYTE4(a4);
      BYTE5(v13[1]) = BYTE5(a4);
      v7 = v13 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A78F6CF4(v8, v9, a1);
    return v10 & 1;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
  v7 = v13;
LABEL_9:
  v10 = (a1)(&v12, v13, v7);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_1A78F5190(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1A78F5B58(v6, v7);
  }

  if (v2)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A78F5B58(v6, v7);
  }

  __src = a1;
  v9 = a2;
  v10 = BYTE2(a2);
  v11 = BYTE3(a2);
  v12 = BYTE4(a2);
  v3 = BYTE6(a2);
  v13 = BYTE5(a2);
  if (!BYTE6(a2))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1A78BDC10(BYTE6(a2), 0);
  memcpy(v4 + 4, &__src, v3);
  return v4;
}

uint64_t AES.CMAC.MAC.hashValue.getter()
{
  sub_1A793DF58();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A78F5364()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      return BYTE6(v2);
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v9 = HIDWORD(v1) - v1;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  result = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78F53BC()
{
  sub_1A793DF58();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A78F5410(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

void *sub_1A78F5478(uint64_t a1, unint64_t a2)
{
  v12 = 0x203A43414DLL;
  v13 = 0xE500000000000000;
  result = sub_1A791ABA8(a1, a2);
  v3 = result[2];
  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = 2 * v3;
  if (2 * v3 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = result;
  if (v3)
  {
    v6 = sub_1A793DB28();
    *(v6 + 16) = v4;
    bzero((v6 + 32), v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = 0;
  v11 = v6;
  sub_1A793DB18();
  sub_1A78DD23C(v5, &v11, &v10);

  v7 = sub_1A793D998();
  v9 = v8;

  MEMORY[0x1AC55D280](v7, v9);

  return v12;
}

uint64_t sub_1A78F5584@<X0>(char **a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1A78F5190(v4, v3);
  v7 = v6;
  result = sub_1A78C0AFC(v4, v3);
  *a1 = v5;
  a1[1] = v7;
  return result;
}

void *sub_1A78F55E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1A791ABA8(v1, v2);
  sub_1A78C0AFC(v1, v2);
  return v3;
}

uint64_t sub_1A78F5638(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5[2] = &v6;
  return sub_1A78F503C(sub_1A78F5F24, v5, v2, v3) & 1;
}

uint64_t sub_1A78F5694(unint64_t *a1, unint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {

      sub_1A78C0AFC(v7, v6);
      *&v18 = v7;
      *(&v18 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      result = sub_1A78F59C0(&v18, a2);
      v12 = v18;
      v13 = *(&v18 + 1) | 0x4000000000000000;
      goto LABEL_15;
    }

    v2 = (v7 >> 8);
    v3 = v7 >> 24;
    sub_1A78C0AFC(v7, v6);
    *&v18 = v7;
    WORD4(v18) = v6;
    BYTE10(v18) = BYTE2(v6);
    BYTE11(v18) = BYTE3(v6);
    BYTE12(v18) = BYTE4(v6);
    BYTE13(v18) = BYTE5(v6);
    BYTE14(v18) = BYTE6(v6);
    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1A78F5C2C(v9);
      *a2 = v9;
    }

    result = cccmac_final_generate();
    if (!result)
    {
      *a2 = v9;
      v12 = v18;
      v13 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
LABEL_15:
      *a1 = v12;
      a1[1] = v13;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v18 + 7) = 0;
    *&v18 = 0;
    v6 = *a2;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v6;
    if (v17)
    {
LABEL_17:
      result = cccmac_final_generate();
      if (!result)
      {
        *a2 = v6;
        return result;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    v6 = sub_1A78F5C2C(v6);
    *a2 = v6;
    goto LABEL_17;
  }

  sub_1A78C0AFC(v7, v6);
  *&v18 = v7;
  *(&v18 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v6 = *(&v18 + 1);
  v3 = v18;
  v2 = *(v18 + 16);
  v14 = *(v18 + 24);
  result = sub_1A793D648();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (__OFSUB__(v2, sub_1A793D678()))
  {
    goto LABEL_22;
  }

  v15 = __OFSUB__(v14, v2);
  v2 = (v14 - v2);
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1A793D668();
  v2 = *a2;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v2;
  if ((v16 & 1) == 0)
  {
LABEL_24:
    v2 = sub_1A78F5C2C(v2);
    *a2 = v2;
  }

  result = cccmac_final_generate();
  if (result)
  {
    __break(1u);
  }

  *a2 = v2;
  *a1 = v3;
  a1[1] = v6 | 0x8000000000000000;
  return result;
}

uint64_t sub_1A78F59C0(int *a1, uint64_t *a2)
{
  sub_1A793D708();
  v4 = *a1;
  if (a1[1] < v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1A793D648();
  if (!result)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v4, sub_1A793D678()))
  {
    goto LABEL_8;
  }

  sub_1A793D668();
  v4 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v4 = sub_1A78F5C2C(v4);
    *a2 = v4;
  }

  result = cccmac_final_generate();
  if (!result)
  {
    *a2 = v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A78F5AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1A793D648();
  v11 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_1A793D668();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_1A78CBAB0(v11, v17, a4, a5, &v19);
  if (!v5)
  {
    return v19;
  }

  return v18;
}

char *sub_1A78F5B58(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  v5 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1A793D668();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    if (v9)
    {
      v10 = sub_1A78BDC10(v9, 0);
      sub_1A78E259C(v10 + 32, v9, v5, v9);
      result = v10;
      if (v11 != v9)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

unint64_t sub_1A78F5C44()
{
  result = qword_1EB2A7518;
  if (!qword_1EB2A7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7518);
  }

  return result;
}

unint64_t sub_1A78F5C98(void *a1)
{
  a1[1] = sub_1A78F5CD8();
  a1[2] = sub_1A78F5D2C();
  a1[3] = sub_1A78F5D80();
  result = sub_1A78F5DD4();
  a1[4] = result;
  return result;
}

unint64_t sub_1A78F5CD8()
{
  result = qword_1EB2A7520;
  if (!qword_1EB2A7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7520);
  }

  return result;
}

unint64_t sub_1A78F5D2C()
{
  result = qword_1EB2A7528;
  if (!qword_1EB2A7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7528);
  }

  return result;
}

unint64_t sub_1A78F5D80()
{
  result = qword_1EB2A7530;
  if (!qword_1EB2A7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7530);
  }

  return result;
}

unint64_t sub_1A78F5DD4()
{
  result = qword_1EB2A7538;
  if (!qword_1EB2A7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7538);
  }

  return result;
}

unint64_t sub_1A78F5E2C()
{
  result = qword_1EB2A7540;
  if (!qword_1EB2A7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7540);
  }

  return result;
}

uint64_t sub_1A78F5E80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A78F5EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A78F5F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A78F4EF0(**(v3 + 16), *(*(v3 + 16) + 8), a1, a2);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1A78F6008()
{
  result = qword_1EB2A7548;
  if (!qword_1EB2A7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7548);
  }

  return result;
}

unint64_t sub_1A78F6060()
{
  result = qword_1ED5F89A0;
  if (!qword_1ED5F89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89A0);
  }

  return result;
}

unint64_t sub_1A78F60B8()
{
  result = qword_1EB2A7550;
  if (!qword_1EB2A7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7550);
  }

  return result;
}

unint64_t sub_1A78F610C(uint64_t a1)
{
  result = sub_1A78D14CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A78F6138()
{
  result = qword_1ED5F8A10;
  if (!qword_1ED5F8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A10);
  }

  return result;
}

unint64_t sub_1A78F6190()
{
  result = qword_1EB2A7558;
  if (!qword_1EB2A7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7558);
  }

  return result;
}

unint64_t sub_1A78F61E4(uint64_t a1)
{
  result = sub_1A78CF35C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A78F6210()
{
  result = qword_1EB2A6D28;
  if (!qword_1EB2A6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D28);
  }

  return result;
}

uint64_t Curve25519.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (v5 >> 60)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v5 >> 57)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v5)
  {

    sub_1A78D6484();
    swift_allocError();
    *v15 = 1;
    *(v15 + 4) = 1;
    return swift_willThrow();
  }

  sub_1A78F6AF0(v3 + 32, v3 + 32 + v5, &v30);

  v6 = v30;
  v7 = v31;
  v8 = sub_1A78F6570(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v30, v31);
  v10 = v9;
  result = sub_1A78F6894(v8, v9, 27507, 0xE200000000000000, 0, 0xC000000000000000, 0x20uLL);
  v12 = result;
  v13 = v11;
  v14 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v14 != 2)
    {
LABEL_31:
      sub_1A78D6484();
      swift_allocError();
      *v26 = 0;
      *(v26 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v8, v10);
      sub_1A78C0AFC(v6, v7);
      return sub_1A78C0AFC(v12, v13);
    }

    v27 = v7;
    v16 = *(result + 16);
    v28 = *(result + 24);
    result = sub_1A793D648();
    v17 = result;
    v32 = a2;
    if (result)
    {
      result = sub_1A793D678();
      if (__OFSUB__(v16, result))
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      LOBYTE(v17) = v17 + v16 - result != 0;
    }

    if (!__OFSUB__(v28, v16))
    {
      v18 = sub_1A793D668();
      if (v18 >= v28 - v16)
      {
        v19 = v28 - v16;
      }

      else
      {
        v19 = v18;
      }

      if (v19 == 32)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0;
      }

      a2 = v32;
      v7 = v27;
      if ((v20 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v14)
  {
    if ((v11 & 0xFF000000000000) != 0x20000000000000)
    {
      goto LABEL_31;
    }

LABEL_30:
    v24 = v6;
    v25 = sub_1A78F3E70(v12, v13);
    sub_1A78C0AFC(v8, v10);
    sub_1A78C0AFC(v24, v7);
    result = sub_1A78C0AFC(v12, v13);
    *a2 = v25;
    return result;
  }

  v32 = a2;
  v29 = (result >> 32) - result;
  if (result >> 32 < result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = sub_1A793D648();
  if (!v21)
  {
    goto LABEL_26;
  }

  result = sub_1A793D678();
  if (!__OFSUB__(v12, result))
  {
    LODWORD(v21) = v21 + v12 - result != 0;
LABEL_26:
    a2 = v32;
    v22 = sub_1A793D668();
    v23 = v29;
    if (v22 < v29)
    {
      v23 = v22;
    }

    if (!v21 || v23 != 32)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1A78F6570(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v43 = xmmword_1A793F230;
  sub_1A793D768();
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A793B930(5064011, 0xE300000000000000);
  v10 = sub_1A78FE770(0x20uLL, 2);
  v12 = v11;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  *(&v41 + 1) = MEMORY[0x1E6969080];
  v42 = MEMORY[0x1E6969078];
  *&v40 = v10;
  *(&v40 + 1) = v11;
  v15 = __swift_project_boxed_opaque_existential_1(&v40, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1A78C0990(v10, v12);
  sub_1A7900C14(v16, v17, &v43);
  sub_1A78C0AFC(v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  sub_1A793B930(a3, a4);
  *(&v41 + 1) = v13;
  v42 = v14;
  *&v40 = a5;
  *(&v40 + 1) = a6;
  v18 = __swift_project_boxed_opaque_existential_1(&v40, v13);
  v19 = *v18;
  v20 = v18[1];
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v19, v20, &v43);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v21 = v43;
  sub_1A78F3E70(v43, *(&v43 + 1));
  sub_1A78C0990(a1, a2);
  sub_1A78F3E70(a1, a2);
  sub_1A78C0AFC(a1, a2);
  swift_beginAccess();

  sub_1A7901B88(v22, &v39);
  v23 = sub_1A793DAE8();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v23, v24);
  v25 = v39;
  sub_1A78BD4B0(&v40);
  v38 = v25;
  v35[0] = v40;
  v35[1] = v41;

  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v35, &v36);

  sub_1A78BD4B0(&v36);

  v32 = v37;
  v34 = v36;

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7560, &qword_1A7941C70);
  *(&v41 + 1) = v26;
  v42 = sub_1A78F6F00();
  v27 = swift_allocObject();
  *&v40 = v27;
  *(v27 + 16) = v34;
  *(v27 + 32) = v32;
  v28 = __swift_project_boxed_opaque_existential_1(&v40, v26);
  v29 = v28[1];
  v36 = *v28;
  v37 = v29;
  sub_1A793D698();
  swift_allocObject();
  sub_1A793D638();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  sub_1A78C0AFC(v21, *(&v21 + 1));
  return 0x2000000000;
}

uint64_t sub_1A78F6894(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v10 = sub_1A78FE770(0x20uLL, 2);
  v12 = v11;
  sub_1A792A368(5064011, 0xE300000000000000, v10, v11, &v40);
  sub_1A78C0AFC(v10, v12);
  v13 = v40;
  v14 = sub_1A78FE770(a7, 2);
  v16 = v15;
  v43 = v14;
  v44 = v15;
  sub_1A78C0990(v14, v15);
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A78C0AFC(v14, v16);
  v17 = v43;
  v18 = v44;
  v45 = v43;
  v46 = v44;
  v19 = MEMORY[0x1E6969080];
  v20 = MEMORY[0x1E6969078];
  v41 = MEMORY[0x1E6969080];
  v42 = MEMORY[0x1E6969078];
  v40 = v13;
  v21 = __swift_project_boxed_opaque_existential_1(&v40, MEMORY[0x1E6969080]);
  v22 = *v21;
  v23 = v21[1];
  sub_1A78C0990(v17, v18);
  sub_1A78C0990(v13, *(&v13 + 1));
  sub_1A7900C14(v22, v23, &v45);
  sub_1A78C0AFC(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v24 = v45;
  v25 = v46;
  v43 = v45;
  v44 = v46;
  sub_1A78C0990(v45, v46);
  sub_1A793B930(a3, a4);
  sub_1A78C0AFC(v24, v25);
  v26 = v43;
  v27 = v44;
  v45 = v43;
  v46 = v44;
  v41 = v19;
  v42 = v20;
  *&v40 = a5;
  *(&v40 + 1) = a6;
  v28 = __swift_project_boxed_opaque_existential_1(&v40, v19);
  v29 = *v28;
  v30 = v28[1];
  sub_1A78C0990(v26, v27);
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v29, v30, &v45);
  sub_1A78C0AFC(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v31 = v45;
  v32 = v46;
  sub_1A78C0990(v45, v46);
  sub_1A78D0038(a1, a2, v31, v32, a7, &v40);
  sub_1A78C0AFC(v31, v32);
  v33 = v40;
  swift_beginAccess();
  sub_1A78F6AF0(v33 + 32, v33 + 32 + *(v33 + 16), &v45);
  sub_1A78C0AFC(v31, v32);
  sub_1A78C0AFC(v13, *(&v13 + 1));

  return v45;
}

uint64_t sub_1A78F6AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1A78C3BEC(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1A792BC64(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1A78C0FA8(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_1A78F6BBC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_1A78F6DA8(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_1A78F6DA8(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_1A78F6CF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1A793D648();
  v8 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1A793D668();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t sub_1A78F6DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1A793D648();
  v7 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1A793D668();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

void *sub_1A78F6E50(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1A793D648();
  v8 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1A793D668();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

unint64_t sub_1A78F6F00()
{
  result = qword_1EB2A7568;
  if (!qword_1EB2A7568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A7560, &qword_1A7941C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7568);
  }

  return result;
}

uint64_t sub_1A78F6F64@<X0>(uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v38 = a5;
  swift_getAssociatedTypeWitness();
  v44 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v37 - v9;
  v10 = swift_checkMetadataState();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v45 = a4;
  v46 = a2;
  v16 = *(*(a4[1] + 8) + 8);
  sub_1A793DB98();
  v41 = ccwrap_unwrapped_size();
  result = ccaes_ecb_decrypt_mode();
  if (result)
  {
    v18 = result;
    v51 = MEMORY[0x1AC55E020]();
    v19 = swift_slowAlloc();
    swift_beginAccess();
    v20 = ccecb_init();
    if (v20)
    {
      v21 = v20;
      sub_1A78D6484();
      swift_allocError();
      *v22 = v21;
      *(v22 + 4) = 0;
      swift_willThrow();
      goto LABEL_10;
    }

    v37 = v19;
    sub_1A793D5A8();
    v23 = sub_1A793DB98();
    v24 = *(v43 + 8);
    v24(v15, v10);
    if (v23 != 1)
    {
      v29 = v46;
      v31 = sub_1A78C7370(v46, a3, *(v16 + 8));
      v50[3] = MEMORY[0x1E6969080];
      v50[4] = MEMORY[0x1E6969078];
      v50[0] = v31;
      v50[1] = v32;
      v28 = v45;
      goto LABEL_8;
    }

    sub_1A793D5A8();
    v25 = v39;
    sub_1A793DBC8();
    v24(v12, v10);
    v26 = AssociatedTypeWitness;
    v27 = *(AssociatedTypeWitness - 8);
    result = (*(v27 + 48))(v25, 1, AssociatedTypeWitness);
    v28 = v45;
    v29 = v46;
    if (result != 1)
    {
      v48 = v26;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
      (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
      v31 = sub_1A78C78FC(&v47, v50);
LABEL_8:
      MEMORY[0x1EEE9AC00](v31);
      *(&v37 - 6) = a3;
      *(&v37 - 5) = v28;
      *(&v37 - 4) = v50;
      *(&v37 - 3) = v18;
      v33 = v37;
      *(&v37 - 2) = v37;
      *(&v37 - 1) = v29;
      v34 = v42;
      v35 = sub_1A78C05E8(v41, sub_1A78F75B0);
      if (!v34)
      {
        *v38 = v35;
        __swift_destroy_boxed_opaque_existential_1(v50);
        memset_s(v33, v51, 0, v51);
        v36 = v33;
        return MEMORY[0x1AC55E570](v36, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1(v50);
      v19 = v33;
LABEL_10:
      memset_s(v19, v51, 0, v51);
      v36 = v19;
      return MEMORY[0x1AC55E570](v36, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78F740C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  result = sub_1A793D6A8();
  if (v10)
  {
    sub_1A78D6484();
    swift_allocError();
    *v9 = 4;
    *(v9 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78F7510@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, _DWORD *a7@<X8>, uint64_t a8)
{
  if (*a2)
  {
    v8 = result;
    result = sub_1A793DB98();
    if (v8)
    {
      result = ccwrap_auth_decrypt();
      *a7 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78F7608(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      swift_beginAccess();
      return ccwrap_auth_encrypt();
    }

    swift_retain_n();
    sub_1A78C0990(v7, v6);
    sub_1A78C0AFC(v7, v6);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v11 = v7;
    v10 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(v7 + 16);
    v13 = *(v11 + 24);

    result = sub_1A793D648();
    if (!result)
    {
      __break(1u);
      goto LABEL_29;
    }

    if (!__OFSUB__(v12, sub_1A793D678()))
    {
      if (!__OFSUB__(v13, v12))
      {
        sub_1A793D668();
        swift_beginAccess();
        v9 = ccwrap_auth_encrypt();

        v15 = v10 | 0x8000000000000000;
        *a1 = v11;
LABEL_20:
        a1[1] = v15;
        return v9;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
    swift_retain_n();
    sub_1A78C0AFC(v7, v6);
    LOWORD(v19) = v6;
    BYTE2(v19) = BYTE2(v6);
    HIBYTE(v19) = BYTE3(v6);
    LOBYTE(v20) = BYTE4(v6);
    HIBYTE(v20) = BYTE5(v6);
    v21 = BYTE6(v6);
    swift_beginAccess();
    v9 = ccwrap_auth_encrypt();

    *a1 = v7;
    a1[1] = v19 | ((v20 | (v21 << 16)) << 32);
    return v9;
  }

  v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  swift_retain_n();
  sub_1A78C0990(v7, v6);
  sub_1A78C0AFC(v7, v6);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  v17 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v17 < v7)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (sub_1A793D648() && __OFSUB__(v7, sub_1A793D678()))
    {
LABEL_27:
      __break(1u);
    }

    sub_1A793D698();
    swift_allocObject();
    v18 = sub_1A793D628();

    v16 = v18;
  }

  if (v17 < v7)
  {
    goto LABEL_23;
  }

  result = sub_1A793D648();
  if (result)
  {
    if (!__OFSUB__(v7, sub_1A793D678()))
    {
      sub_1A793D668();
      swift_beginAccess();
      v9 = ccwrap_auth_encrypt();

      v15 = v16 | 0x4000000000000000;
      *a1 = v7;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1A78F7A68(uint64_t *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  swift_beginAccess();
  v15 = ccwrap_wrapped_size();
  v16[0] = sub_1A78CC5A0(v15);
  v16[1] = v3;
  sub_1A78CC640(v16, 0);
  v17 = *v16;
  v4 = ccaes_ecb_encrypt_mode();
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  v6 = MEMORY[0x1AC55E020]();
  v7 = swift_slowAlloc();
  swift_beginAccess();
  v8 = ccecb_init();
  if (v8)
  {
    v9 = v8;
    v10 = 0;
  }

  else
  {

    v11 = sub_1A78F7608(&v17, v2, v5, v7, &v15);

    if (!v11)
    {
      v14 = *(&v17 + 1);
      v10 = v17;
      sub_1A78C0990(v17, *(&v17 + 1));
      memset_s(v7, v6, 0, v6);
      MEMORY[0x1AC55E570](v7, -1, -1);
      sub_1A78C0AFC(v10, v14);
      return v10;
    }

    v10 = 1;
    v9 = 3;
  }

  sub_1A78D6484();
  swift_allocError();
  *v12 = v9;
  *(v12 + 4) = v10;
  swift_willThrow();
  memset_s(v7, v6, 0, v6);
  MEMORY[0x1AC55E570](v7, -1, -1);
  sub_1A78C0AFC(v17, *(&v17 + 1));
  return v10;
}

uint64_t sub_1A78F7C60@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v115 = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v17 = *a3;
  v16 = a3[1];
  v96 = *a5;
  swift_beginAccess();
  v18 = *(v15 + 16);
  if (v18 >> 60)
  {
    __break(1u);
    goto LABEL_83;
  }

  v19 = v18 > 0x20;
  v20 = (1 << v18) & 0x101010000;
  if (v19 || v20 == 0)
  {
    sub_1A78D6484();
    swift_allocError();
    *v33 = 0;
    *(v33 + 4) = 1;
    return swift_willThrow();
  }

  v87 = a9;
  v88 = ccaes_ccm_encrypt_mode();
  v89 = a7;
  v90 = a4;
  if (v16 >> 60 != 15)
  {
    v23 = v17;
    v24 = v16;
    goto LABEL_12;
  }

  type metadata accessor for SecureBytes.Backing(0);
  v22 = swift_allocObject();
  v22[1] = xmmword_1A79411C0;
  if (_swift_stdlib_malloc_size(v22) < 44)
  {
LABEL_83:
    __break(1u);
    __break(1u);
    goto LABEL_84;
  }

  v102 = 0;
  if (!ccrng())
  {
    __break(1u);
    goto LABEL_93;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v22 + 2) = 12;
  sub_1A78ECACC(v22, &v103);
  if (!v10)
  {
    v24 = *(&v103 + 1);
    v23 = v103;
LABEL_12:
    sub_1A78CBE8C(v17, v16);
    v25 = sub_1A793DB98();
    *&v103 = sub_1A78CC5A0(v25);
    *(&v103 + 1) = v26;
    sub_1A78CC640(&v103, 0);
    v101 = v103;
    if (v96)
    {
      v27 = 16;
    }

    else
    {
      v27 = 8;
    }

    *&v103 = sub_1A78CC5A0(v27);
    *(&v103 + 1) = v28;
    sub_1A78CC640(&v103, 0);
    v100 = v103;
    v29 = v15 + 32 + *(v15 + 16);
    v104 = a6;
    v105 = v89;
    v106 = a8;
    v107 = a10;
    v108 = a1;
    v109 = &v101;
    v110 = &v100;
    v111 = v90;
    v112 = v88;
    v113 = v15 + 32;
    v114 = v29;
    sub_1A78F6BBC(sub_1A78F993C, &v103, v23, v24);
    a8 = v23;
    v16 = v24;
    if (v10)
    {
      sub_1A78C0AFC(v23, v24);
LABEL_81:
      sub_1A78C0AFC(v100, *(&v100 + 1));
      return sub_1A78C0AFC(v101, *(&v101 + 1));
    }

    v30 = v101;
    v15 = *(&v100 + 1);
    a4 = v100;
    v31 = *(&v100 + 1) >> 62;
    if ((*(&v100 + 1) >> 62) <= 1)
    {
      if (!v31)
      {
        v32 = BYTE14(v100);
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (v31 == 2)
    {
      v36 = *(v100 + 16);
      v35 = *(v100 + 24);
      v32 = v35 - v36;
      if (!__OFSUB__(v35, v36))
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_25:
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v32 = HIDWORD(a4) - a4;
LABEL_27:
        sub_1A78C0990(a4, v15);
LABEL_28:
        if (v32 == v27)
        {
          v95 = v16;
          v37 = MEMORY[0x1E6969080];
          v38 = MEMORY[0x1E6969078];
          v105 = MEMORY[0x1E6969080];
          v106 = MEMORY[0x1E6969078];
          v103 = v30;
          v39 = __swift_project_boxed_opaque_existential_1(&v103, MEMORY[0x1E6969080]);
          v40 = *v39;
          v41 = v39[1];
          v42 = v41 >> 62;
          if ((v41 >> 62) > 1)
          {
            if (v42 != 2)
            {
              memset(v97, 0, 14);
              sub_1A78C0990(v30, *(&v30 + 1));
              v46 = v97;
              goto LABEL_57;
            }

            v92 = a8;
            v47 = *(v40 + 16);
            v48 = *(v40 + 24);
            sub_1A78C0990(v30, *(&v30 + 1));
            v49 = sub_1A793D648();
            if (v49)
            {
              v50 = sub_1A793D678();
              if (__OFSUB__(v47, v50))
              {
LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

              v49 += v47 - v50;
            }

            if (!__OFSUB__(v48, v47))
            {
              v51 = sub_1A793D668();
              if (v51 >= v48 - v47)
              {
                v52 = v48 - v47;
              }

              else
              {
                v52 = v51;
              }

              v53 = &v49[v52];
              if (v49)
              {
                v54 = v53;
              }

              else
              {
                v54 = 0;
              }

              sub_1A78C2D58(v49, v54, &v98);
              a8 = v92;
LABEL_55:
              v37 = MEMORY[0x1E6969080];
              v38 = MEMORY[0x1E6969078];
LABEL_58:
              v64 = v98;
              v65 = v99;
              __swift_destroy_boxed_opaque_existential_1(&v103);
              v105 = v37;
              v106 = v38;
              *&v103 = a4;
              *(&v103 + 1) = v15;
              v66 = __swift_project_boxed_opaque_existential_1(&v103, v37);
              v67 = *v66;
              v68 = v66[1];
              v69 = v68 >> 62;
              if ((v68 >> 62) > 1)
              {
                if (v69 != 2)
                {
                  memset(v97, 0, 14);
                  v71 = v97;
                  v70 = v97;
                  goto LABEL_80;
                }

                v72 = *(v67 + 16);
                v73 = *(v67 + 24);
                v74 = sub_1A793D648();
                if (v74)
                {
                  v75 = sub_1A793D678();
                  v67 = v72 - v75;
                  if (__OFSUB__(v72, v75))
                  {
LABEL_89:
                    __break(1u);
                    goto LABEL_90;
                  }

                  v74 += v67;
                }

                v76 = __OFSUB__(v73, v72);
                v77 = v73 - v72;
                if (!v76)
                {
                  goto LABEL_72;
                }

                __break(1u);
              }

              else if (!v69)
              {
                v97[0] = *v66;
                LOWORD(v97[1]) = v68;
                BYTE2(v97[1]) = BYTE2(v68);
                BYTE3(v97[1]) = BYTE3(v68);
                BYTE4(v97[1]) = BYTE4(v68);
                BYTE5(v97[1]) = BYTE5(v68);
                v70 = v97 + BYTE6(v68);
                v71 = v97;
LABEL_80:
                sub_1A78C2D58(v71, v70, &v98);
                v84 = v98;
                v85 = v99;
                __swift_destroy_boxed_opaque_existential_1(&v103);
                *v87 = v84;
                *(v87 + 8) = v85;
                *(v87 + 16) = v64;
                *(v87 + 24) = v65;
                *(v87 + 32) = a8;
                *(v87 + 40) = v95;
                *(v87 + 48) = v96;
                goto LABEL_81;
              }

              v78 = v67;
              v79 = v67 >> 32;
              v77 = v79 - v78;
              if (v79 >= v78)
              {
                v74 = sub_1A793D648();
                if (!v74)
                {
LABEL_72:
                  v81 = sub_1A793D668();
                  if (v81 >= v77)
                  {
                    v82 = v77;
                  }

                  else
                  {
                    v82 = v81;
                  }

                  v83 = (v82 + v74);
                  if (v74)
                  {
                    v70 = v83;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v71 = v74;
                  goto LABEL_80;
                }

                v80 = sub_1A793D678();
                if (!__OFSUB__(v78, v80))
                {
                  v74 += v78 - v80;
                  goto LABEL_72;
                }

LABEL_91:
                __break(1u);
              }

              goto LABEL_87;
            }

LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          if (!v42)
          {
            v97[0] = *v39;
            LOWORD(v97[1]) = v41;
            BYTE2(v97[1]) = BYTE2(v41);
            v43 = HIWORD(v41);
            BYTE3(v97[1]) = BYTE3(v41);
            BYTE4(v97[1]) = BYTE4(v41);
            BYTE5(v97[1]) = BYTE5(v41);
            v44 = v38;
            v45 = v97 + v43;
            sub_1A78C0990(v30, *(&v30 + 1));
            v46 = v45;
            v38 = v44;
LABEL_57:
            sub_1A78C2D58(v97, v46, &v98);
            goto LABEL_58;
          }

          v93 = a8;
          v55 = v40;
          v56 = v40 >> 32;
          v57 = v56 - v55;
          if (v56 >= v55)
          {
            sub_1A78C0990(v30, *(&v30 + 1));
            v58 = sub_1A793D648();
            if (v58)
            {
              v59 = sub_1A793D678();
              if (__OFSUB__(v55, v59))
              {
LABEL_90:
                __break(1u);
                goto LABEL_91;
              }

              v58 += v55 - v59;
            }

            a8 = v93;
            v60 = sub_1A793D668();
            if (v60 >= v57)
            {
              v61 = v57;
            }

            else
            {
              v61 = v60;
            }

            v62 = &v58[v61];
            if (v58)
            {
              v63 = v62;
            }

            else
            {
              v63 = 0;
            }

            sub_1A78C2D58(v58, v63, &v98);
            goto LABEL_55;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        goto LABEL_93;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_93:
    sub_1A78C0AFC(a8, v16);
    sub_1A78C0AFC(a4, v15);
    sub_1A78D6484();
    swift_allocError();
    *v86 = 1;
    *(v86 + 4) = 1;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_1A78F83EC(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  v36 = a1[2];
  v37 = *(a1 + 48);
  v10 = *a2;
  v11 = ccaes_ccm_decrypt_mode();
  result = swift_beginAccess();
  v13 = *(v10 + 16);
  if (v13 >> 60)
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = v13 > 0x20;
  LOBYTE(v15) = 1;
  v16 = (1 << v13) & 0x101010000;
  if (v14 || v16 == 0)
  {
LABEL_13:
    sub_1A78D6484();
    swift_allocError();
    *v21 = 0;
    *(v21 + 4) = v15;
    swift_willThrow();
    return a5;
  }

  v38 = v35;
  v18 = *(&v35 + 1) >> 62;
  if ((*(&v35 + 1) >> 62) > 1)
  {
    if (v18 != 2)
    {
      v15 = 0;
      goto LABEL_18;
    }

    v19 = *(v35 + 16);
    v20 = *(v35 + 24);
    v15 = v20 - v19;
    if (!__OFSUB__(v20, v19))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (!v18)
  {
    v15 = BYTE14(v35);
LABEL_18:
    *&v39 = sub_1A78CC5A0(v15);
    *(&v39 + 1) = v22;
    sub_1A78CC640(&v39, 0);
    v32 = v38;
    v33 = v39;
    v23 = v34;
    if (v37)
    {
      v24 = 16;
    }

    else
    {
      v24 = 8;
    }

    *&v39 = sub_1A78CC5A0(v24);
    *(&v39 + 1) = v25;
    sub_1A78CC640(&v39, 0);
    v31 = v39;
    v26 = v10 + 32 + *(v10 + 16);
    v40 = a4;
    v41 = a5;
    v42 = &v33;
    v43 = &v32;
    v44 = &v31;
    v45 = a3;
    v46 = v11;
    v47 = v10 + 32;
    v48 = v26;
    v27 = sub_1A78E5E78(sub_1A78F9750, &v39, v36, *(&v36 + 1));
    if (!v5)
    {
      if (v27)
      {
        a5 = v27;
        sub_1A78D6484();
        swift_allocError();
        *v28 = a5;
        *(v28 + 4) = 0;
      }

      else
      {
        sub_1A78E61B4(&v34, &v39);
        if (!sub_1A78E55A0(v23, *(&v23 + 1), &v31, &v34))
        {
          a5 = v33;
          v30 = v31;
          sub_1A78C0990(v33, *(&v33 + 1));
          sub_1A78C0AFC(v30, *(&v30 + 1));
          sub_1A78C0AFC(v32, *(&v32 + 1));
          sub_1A78C0AFC(v33, *(&v33 + 1));
          return a5;
        }

        sub_1A78D6484();
        swift_allocError();
        *v29 = 2;
        *(v29 + 4) = 1;
      }

      swift_willThrow();
    }

    sub_1A78C0AFC(v31, *(&v31 + 1));
    sub_1A78C0AFC(v32, *(&v32 + 1));
    sub_1A78C0AFC(v33, *(&v33 + 1));
    return a5;
  }

  if (!__OFSUB__(DWORD1(v35), v35))
  {
    v15 = DWORD1(v35) - v35;
LABEL_16:
    sub_1A78E5FC8(&v38, &v39);
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A78F86E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a2;
  v35 = a4;
  v32 = a6;
  v33 = a1;
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = v29 - v11;
  v12 = swift_checkMetadataState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  v19 = v6;
  sub_1A793D5A8();
  v29[1] = v9;
  v20 = sub_1A793DB98();
  v21 = *(v13 + 8);
  v21(v18, v12);
  if (v20 == 1)
  {
    sub_1A793D5A8();
    v22 = v30;
    sub_1A793DBC8();
    v21(v15, v12);
    v23 = AssociatedTypeWitness;
    v24 = *(AssociatedTypeWitness - 8);
    result = (*(v24 + 48))(v22, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_1A793D6A8();
      return (*(v24 + 8))(v22, v23);
    }
  }

  else
  {
    v26 = sub_1A78C7370(v19, a3, *(*(*(*(a5 + 8) + 8) + 8) + 8));
    v28 = v27;
    sub_1A793D7A8();
    return sub_1A78C0AFC(v26, v28);
  }

  return result;
}

uint64_t sub_1A78F8A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a6;
  v35 = a7;
  v32 = a5;
  v33 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a1;
  v36 = a8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  v16 = swift_checkMetadataState();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  sub_1A793D5A8();
  sub_1A793DBC8();
  (*(v17 + 8))(v19, v16);
  v20 = *(AssociatedTypeWitness - 8);
  result = (*(v20 + 48))(v15, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v29 - 12) = a10;
    *(&v29 - 11) = v22;
    *(&v29 - 10) = a12;
    *(&v29 - 9) = v23;
    v24 = v30;
    *(&v29 - 8) = v29;
    *(&v29 - 7) = v24;
    v26 = v34;
    v25 = v35;
    *(&v29 - 6) = v32;
    *(&v29 - 5) = v26;
    *(&v29 - 4) = v25;
    *(&v29 - 3) = v27;
    v28 = v33;
    *(&v29 - 2) = v31;
    *(&v29 - 1) = v28;
    swift_getAssociatedConformanceWitness();
    sub_1A793D6A8();
    return (*(v20 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1A78F8D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v43 = a6;
  v44 = a8;
  v45 = a4;
  v48 = a1;
  v49 = a7;
  v50 = a2;
  v46 = a11;
  v47 = a5;
  v17 = sub_1A793DC78();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v42 - v19;
  v21 = *(a14 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a3, v17, v23);
  if ((*(v21 + 48))(v20, 1, a14) != 1)
  {
    v34 = (*(v21 + 32))(v25, v20, a14);
    MEMORY[0x1EEE9AC00](v34);
    v35 = v47;
    v42[-12] = v45;
    v42[-11] = v35;
    v36 = v49;
    v42[-10] = v43;
    v42[-9] = v36;
    v42[-8] = v44;
    v42[-7] = a9;
    v37 = v46;
    v42[-6] = a10;
    v42[-5] = v37;
    v38 = a12;
    v39 = v48;
    v40 = v50;
    sub_1A78F86E4(sub_1A78F9AA4, &v42[-14], a14, MEMORY[0x1E69E7CA8] + 8, a16, MEMORY[0x1E69E7CA8]);
    return (*(v21 + 8))(v25, a14);
  }

  v42[1] = a10;
  v26 = v47;
  v27 = v48;
  v28 = v50;
  v29 = v46;
  v30 = v49;
  result = (*(v18 + 8))(v20, v17);
  if (!v26)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!a9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v45;
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v27)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v38 = 0;
  v39 = 0;
  v40 = v28 - v27;
  v41 = v27;
  result = ccccm_one_shot();
  if (result)
  {
    v32 = result;
    sub_1A78D6484();
    swift_allocError();
    *v33 = v32;
    *(v33 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78F9058(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!a8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!a10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a12)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  result = ccccm_one_shot();
  if (result)
  {
    v12 = result;
    sub_1A78D6484();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78F913C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v43 = a6;
  v44 = a8;
  v45 = a4;
  v49 = a7;
  v50 = a2;
  v47 = a5;
  v48 = a1;
  v41 = a9;
  v46 = a12;
  v16 = sub_1A793DC78();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v40 - v18;
  v20 = *(a14 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a3, v16, v22);
  if ((*(v20 + 48))(v19, 1, a14) == 1)
  {
    v40[1] = a11;
    v25 = v47;
    v26 = v48;
    v28 = v49;
    v27 = v50;
    v29 = v46;
    result = (*(v17 + 8))(v19, v16);
    if (v25)
    {
      if (v28)
      {
        if (a10)
        {
          result = v45;
          if (v29)
          {
            if (v26)
            {
              v36 = 0;
              v37 = 0;
              v38 = v27 - v26;
              v39 = v26;
              result = ccccm_one_shot();
              *v41 = result;
              return result;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  v31 = (*(v20 + 32))(v24, v19, a14);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v47;
  v40[-12] = v45;
  v40[-11] = v32;
  v33 = v49;
  v40[-10] = v43;
  v40[-9] = v33;
  v40[-8] = v44;
  v40[-7] = a10;
  v34 = v46;
  v40[-6] = a11;
  v40[-5] = v34;
  v36 = a13;
  v37 = v48;
  v38 = v50;
  v35 = v42;
  sub_1A78F86E4(sub_1A78F9900, &v40[-14], a14, MEMORY[0x1E69E72F0], a15, &v51);
  result = (*(v20 + 8))(v24, a14);
  if (!v35)
  {
    *v41 = v51;
  }

  return result;
}

uint64_t sub_1A78F9454@<X0>(uint64_t result@<X0>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a7@<X7>, _DWORD *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!a10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a12)
  {
    result = ccccm_one_shot();
    *a8 = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A78F9508@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  v5 = result;
  v17 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v7 = a2[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v9)
    {
      goto LABEL_12;
    }

    *v16 = *a2;
    *&v16[8] = v7;
    v16[10] = BYTE2(v7);
    v16[11] = BYTE3(v7);
    v9 = v7 >> 40;
    v16[12] = BYTE4(v7);
    v16[13] = BYTE5(v7);
    if (result)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  if (v9 != 2)
  {
    *&v16[6] = 0;
    *v16 = 0;
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

LABEL_20:
    result = cc_cmp_safe();
    v15 = result;
    goto LABEL_21;
  }

  v10 = *(v8 + 16);
  sub_1A78E61B4(a3, v16);
  sub_1A78C0990(v8, v7);
  v11 = sub_1A793D648();
  if (v11)
  {
    v12 = sub_1A793D678();
    if (__OFSUB__(v10, v12))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v11 += v10 - v12;
  }

  result = sub_1A793D668();
  if (!v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11)
  {
LABEL_18:
    v15 = cc_cmp_safe();
    sub_1A78C0AFC(v8, v7);
    result = sub_1A78E62C4(a3);
LABEL_21:
    *a4 = v15;
    return result;
  }

  __break(1u);
LABEL_12:
  if (v8 > v8 >> 32)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_1A78E61B4(a3, v16);
  sub_1A78C0990(v8, v7);
  v13 = sub_1A793D648();
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = sub_1A793D678();
  if (__OFSUB__(v8, v14))
  {
LABEL_24:
    __break(1u);
  }

  v13 += v8 - v14;
LABEL_16:
  result = sub_1A793D668();
  if (!v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13)
  {
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A78F9750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = *(v3 + 56);
  v7 = *(v3 + 80);
  v8 = *(v3 + 40);
  v10[1] = *(v3 + 16);
  v10[2] = v8;
  v11 = v6;
  v12 = *(v3 + 64);
  v13 = v7;
  v14 = a1;
  v15 = a2;
  result = sub_1A78CD4CC(sub_1A78F97CC, v10);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1A78F97CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = *(v3 + 88);
  v7 = *(v3 + 40);
  v10[1] = *(v3 + 16);
  v10[2] = v7;
  v8 = *(v3 + 72);
  v10[3] = *(v3 + 56);
  v10[4] = v8;
  v11 = v6;
  v12 = a1;
  v13 = a2;
  result = sub_1A78CD4CC(sub_1A78F9844, v10);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1A78F9844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v9[1] = *(v3 + 16);
  v6 = *(v3 + 64);
  v11 = *(v3 + 48);
  v7 = *(v3 + 80);
  v10 = *(v3 + 40);
  v12 = v6;
  v13 = v7;
  v14 = a1;
  v15 = a2;
  v16 = *(v3 + 88);
  result = sub_1A78CD4CC(sub_1A78F98C4, v9);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1A78F9980(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 104);
  v4 = *(v2 + 32);
  v7[1] = *(v2 + 16);
  v7[2] = v4;
  v5 = *(v2 + 72);
  v7[3] = *(v2 + 56);
  v7[4] = v5;
  v7[5] = *(v2 + 88);
  v8 = v3;
  v9 = a1;
  v10 = a2;
  return sub_1A78C9770(sub_1A78F99F0, v7);
}

uint64_t sub_1A78F99F0(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = *(v2 + 32);
  v7[1] = *(v2 + 16);
  v7[2] = v3;
  v4 = *(v2 + 80);
  v9 = *(v2 + 64);
  v5 = *(v2 + 112);
  v8 = *(v2 + 56);
  v10 = v4;
  v11 = *(v2 + 96);
  v12 = v5;
  v13 = a1;
  return sub_1A78C9770(sub_1A78F9A60, v7);
}

uint64_t static AES.KeyWrap.wrap(_:using:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = v2;
  return sub_1A78F7A68(&v5, &v4);
}

uint64_t sub_1A78F9C68(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void *, uint64_t *))
{
  v6 = a5;
  v8 = a2;
  v9 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v37 = a1;
  v38 = a2;
  v36 = 0;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v35[0] = a1;
      LOWORD(v35[1]) = a2;
      BYTE2(v35[1]) = BYTE2(a2);
      BYTE3(v35[1]) = BYTE3(a2);
      BYTE4(v35[1]) = BYTE4(a2);
      BYTE5(v35[1]) = BYTE5(a2);
      v11 = v35 + BYTE6(a2);
      goto LABEL_25;
    }

    v22 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v34 = a5;
      v12 = v5;
      v13 = a3;
      v16 = sub_1A793D648();
      if (!v16)
      {
        goto LABEL_16;
      }

      v23 = sub_1A793D678();
      if (!__OFSUB__(v9, v23))
      {
        v16 += v9 - v23;
LABEL_16:
        v24 = sub_1A793D668();
        if (v24 >= v22)
        {
          v21 = (v9 >> 32) - v9;
        }

        else
        {
          v21 = v24;
        }

        goto LABEL_19;
      }

LABEL_34:
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v10 == 2)
  {
    v34 = a5;
    v12 = v5;
    v13 = a3;
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = sub_1A793D648();
    if (v16)
    {
      v17 = sub_1A793D678();
      if (__OFSUB__(v15, v17))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v16 += v15 - v17;
    }

    v18 = __OFSUB__(v14, v15);
    v19 = v14 - v15;
    if (!v18)
    {
      v20 = sub_1A793D668();
      if (v20 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

LABEL_19:
      v25 = &v16[v21];
      if (v16)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_1A78C5D88(v16, v26, v13);
      if (v12)
      {
        return sub_1A78C0AFC(v9, v8);
      }

      v6 = v34;
      goto LABEL_26;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  memset(v35, 0, 14);
  v11 = v35;
LABEL_25:
  v27 = sub_1A78C5D88(v35, v11, a3);
  if (v5)
  {
    return sub_1A78C0AFC(v9, v8);
  }

LABEL_26:
  result = a4(v27);
  if (result)
  {
    v29 = getccec_pub_ctx_size();
    MEMORY[0x1EEE9AC00](v29);
    v31 = sub_1A78C0EA8(v30, v6);
    if (v36)
    {

      sub_1A78D6484();
      swift_allocError();
      *v32 = 1;
      *(v32 + 4) = 1;
      swift_willThrow();
      v9 = v37;
      v8 = v38;
      return sub_1A78C0AFC(v9, v8);
    }

    v33 = v31;
    sub_1A78C0AFC(v37, v38);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78F9FEC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *, uint64_t *))
{
  v7 = sub_1A78C5D88((a1 + 32), (a1 + 32 + *(a1 + 16)), a2);
  if (v4)
  {
  }

  result = a3(v7);
  if (result)
  {
    v9 = getccec_pub_ctx_size();
    MEMORY[0x1EEE9AC00](v9);
    v11 = sub_1A78C0EA8(v10, a4);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A78FA260()
{
  result = qword_1EB2A7570;
  if (!qword_1EB2A7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7570);
  }

  return result;
}

unint64_t sub_1A78FA2B4()
{
  result = qword_1EB2A7580;
  if (!qword_1EB2A7580)
  {
    sub_1A78FC438(255, &qword_1EB2A7578, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7580);
  }

  return result;
}

void sub_1A78FA380(__SecKey *a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, uint64_t *a4@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = SecKeyCopyAttributes(a1);
  if (!v8)
  {
    sub_1A78FA260();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    return;
  }

  v9 = v8;
  v48 = a2;
  sub_1A78FC438(0, &qword_1EB2A7578, 0x1E69E58C0);
  sub_1A78FA2B4();
  v10 = sub_1A793D888();
  v50 = v9;
  v11 = sub_1A793D948();
  v12 = v11;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v47 = a4;
    v13 = sub_1A793DE78();

    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(v10 + 16) || (sub_1A78FBD20(v11), (v15 & 1) == 0))
    {

LABEL_13:

      sub_1A78FA260();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();

      return;
    }

    v47 = a4;
    swift_unknownObjectRetain();
  }

  v16 = sub_1A793D888();

  v17 = sub_1A793D948();
  v18 = v17;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v19 = sub_1A793DE78();

    if (!v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v16 + 16) || (v21 = sub_1A78FBD20(v17), (v22 & 1) == 0))
    {

      goto LABEL_22;
    }

    v19 = *(*(v16 + 56) + 8 * v21);
    swift_unknownObjectRetain();
  }

  if (([v19 respondsToSelector_] & 1) == 0)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if ([v19 BOOLValue])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7590, &qword_1A7941C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A79414F0;
    *(inited + 32) = sub_1A793D958();
    *(inited + 40) = v24;
    sub_1A78FC438(0, &qword_1EB2A7598, 0x1E696AD98);
    *(inited + 48) = sub_1A793DC48();
    v25 = sub_1A78FC1A4(inited);
    swift_setDeallocating();
    sub_1A78FC480(inited + 32);
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  swift_unknownObjectRelease();
LABEL_22:
  v25 = 0;
LABEL_23:
  swift_unknownObjectRetain();
  objc_opt_self();
  v26 = swift_dynamicCastObjCClassUnconditional();
  v27 = sub_1A793D7D8();
  v29 = v28;

  v30 = v48(0, v25);
  if (v4)
  {

    sub_1A78C0AFC(v27, v29);

    swift_unknownObjectRelease();
  }

  else
  {
    v31 = v30;
    v32 = sub_1A793D7B8();
    v51 = 0;
    v33 = [v31 objectForObjectID:v32 error:&v51];

    if (v33)
    {
      v34 = v51;
      v35 = [v33 publicKey];
      v36 = v33;
      if (v35)
      {
        v37 = v35;
        v46 = v36;
        v49 = v31;
        v38 = sub_1A793D7D8();
        v40 = v39;

        sub_1A78C0990(v38, v40);
        v41 = sub_1A78F9C68(v38, v40, MEMORY[0x1E69E9510], MEMORY[0x1E69E9510], sub_1A78FC748);
        sub_1A78C0AFC(v38, v40);

        v42 = v46;
        sub_1A78C0990(v27, v29);
        sub_1A78C0AFC(v27, v29);
        v43 = v42;
        sub_1A78C0990(v27, v29);

        sub_1A78C0AFC(v27, v29);
        swift_unknownObjectRelease();

        *v47 = v41;
        v47[1] = v27;
        v47[2] = v29;
        v47[3] = v43;
      }

      else
      {

        sub_1A78FC3E4();
        swift_allocError();
        *v45 = 2;
        *(v45 + 8) = 1;
        swift_willThrow();
        sub_1A78C0AFC(v27, v29);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v44 = v51;

      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(v27, v29);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1A78FAA2C(__SecKey *a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, uint64_t *a4@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = SecKeyCopyAttributes(a1);
  if (!v8)
  {
    sub_1A78FA260();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    return;
  }

  v9 = v8;
  v48 = a2;
  sub_1A78FC438(0, &qword_1EB2A7578, 0x1E69E58C0);
  sub_1A78FA2B4();
  v10 = sub_1A793D888();
  v50 = v9;
  v11 = sub_1A793D948();
  v12 = v11;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v47 = a4;
    v13 = sub_1A793DE78();

    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(v10 + 16) || (sub_1A78FBD20(v11), (v15 & 1) == 0))
    {

LABEL_13:

      sub_1A78FA260();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();

      return;
    }

    v47 = a4;
    swift_unknownObjectRetain();
  }

  v16 = sub_1A793D888();

  v17 = sub_1A793D948();
  v18 = v17;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v19 = sub_1A793DE78();

    if (!v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v16 + 16) || (v21 = sub_1A78FBD20(v17), (v22 & 1) == 0))
    {

      goto LABEL_22;
    }

    v19 = *(*(v16 + 56) + 8 * v21);
    swift_unknownObjectRetain();
  }

  if (([v19 respondsToSelector_] & 1) == 0)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if ([v19 BOOLValue])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7590, &qword_1A7941C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A79414F0;
    *(inited + 32) = sub_1A793D958();
    *(inited + 40) = v24;
    sub_1A78FC438(0, &qword_1EB2A7598, 0x1E696AD98);
    *(inited + 48) = sub_1A793DC48();
    v25 = sub_1A78FC1A4(inited);
    swift_setDeallocating();
    sub_1A78FC480(inited + 32);
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  swift_unknownObjectRelease();
LABEL_22:
  v25 = 0;
LABEL_23:
  swift_unknownObjectRetain();
  objc_opt_self();
  v26 = swift_dynamicCastObjCClassUnconditional();
  v27 = sub_1A793D7D8();
  v29 = v28;

  v30 = v48(0, v25);
  if (v4)
  {

    sub_1A78C0AFC(v27, v29);

    swift_unknownObjectRelease();
  }

  else
  {
    v31 = v30;
    v32 = sub_1A793D7B8();
    v51 = 0;
    v33 = [v31 objectForObjectID:v32 error:&v51];

    if (v33)
    {
      v34 = v51;
      v35 = [v33 publicKey];
      v36 = v33;
      if (v35)
      {
        v37 = v35;
        v46 = v36;
        v49 = v31;
        v38 = sub_1A793D7D8();
        v40 = v39;

        sub_1A78C0990(v38, v40);
        v41 = sub_1A78F9C68(v38, v40, MEMORY[0x1E69E9518], MEMORY[0x1E69E9518], sub_1A78FC714);
        sub_1A78C0AFC(v38, v40);

        v42 = v46;
        sub_1A78C0990(v27, v29);
        sub_1A78C0AFC(v27, v29);
        v43 = v42;
        sub_1A78C0990(v27, v29);

        sub_1A78C0AFC(v27, v29);
        swift_unknownObjectRelease();

        *v47 = v41;
        v47[1] = v27;
        v47[2] = v29;
        v47[3] = v43;
      }

      else
      {

        sub_1A78FC3E4();
        swift_allocError();
        *v45 = 2;
        *(v45 + 8) = 1;
        swift_willThrow();
        sub_1A78C0AFC(v27, v29);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v44 = v51;

      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(v27, v29);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1A78FB13C(__SecKey *a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, uint64_t *a4@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = SecKeyCopyAttributes(a1);
  if (!v8)
  {
    sub_1A78FA260();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    return;
  }

  v9 = v8;
  v48 = a2;
  sub_1A78FC438(0, &qword_1EB2A7578, 0x1E69E58C0);
  sub_1A78FA2B4();
  v10 = sub_1A793D888();
  v50 = v9;
  v11 = sub_1A793D948();
  v12 = v11;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v47 = a4;
    v13 = sub_1A793DE78();

    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(v10 + 16) || (sub_1A78FBD20(v11), (v15 & 1) == 0))
    {

LABEL_13:

      sub_1A78FA260();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();

      return;
    }

    v47 = a4;
    swift_unknownObjectRetain();
  }

  v16 = sub_1A793D888();

  v17 = sub_1A793D948();
  v18 = v17;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v19 = sub_1A793DE78();

    if (!v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v16 + 16) || (v21 = sub_1A78FBD20(v17), (v22 & 1) == 0))
    {

      goto LABEL_22;
    }

    v19 = *(*(v16 + 56) + 8 * v21);
    swift_unknownObjectRetain();
  }

  if (([v19 respondsToSelector_] & 1) == 0)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if ([v19 BOOLValue])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7590, &qword_1A7941C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A79414F0;
    *(inited + 32) = sub_1A793D958();
    *(inited + 40) = v24;
    sub_1A78FC438(0, &qword_1EB2A7598, 0x1E696AD98);
    *(inited + 48) = sub_1A793DC48();
    v25 = sub_1A78FC1A4(inited);
    swift_setDeallocating();
    sub_1A78FC480(inited + 32);
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  swift_unknownObjectRelease();
LABEL_22:
  v25 = 0;
LABEL_23:
  swift_unknownObjectRetain();
  objc_opt_self();
  v26 = swift_dynamicCastObjCClassUnconditional();
  v27 = sub_1A793D7D8();
  v29 = v28;

  v30 = v48(0, v25);
  if (v4)
  {

    sub_1A78C0AFC(v27, v29);

    swift_unknownObjectRelease();
  }

  else
  {
    v31 = v30;
    v32 = sub_1A793D7B8();
    v51 = 0;
    v33 = [v31 objectForObjectID:v32 error:&v51];

    if (v33)
    {
      v34 = v51;
      v35 = [v33 publicKey];
      v36 = v33;
      if (v35)
      {
        v37 = v35;
        v46 = v36;
        v49 = v31;
        v38 = sub_1A793D7D8();
        v40 = v39;

        sub_1A78C0990(v38, v40);
        v41 = sub_1A78FB7AC(v38, v40);
        sub_1A78C0AFC(v38, v40);

        v42 = v46;
        sub_1A78C0990(v27, v29);
        sub_1A78C0AFC(v27, v29);
        v43 = v42;
        sub_1A78C0990(v27, v29);

        sub_1A78C0AFC(v27, v29);
        swift_unknownObjectRelease();

        *v47 = v41;
        v47[1] = v27;
        v47[2] = v29;
        v47[3] = v43;
      }

      else
      {

        sub_1A78FC3E4();
        swift_allocError();
        *v45 = 2;
        *(v45 + 8) = 1;
        swift_willThrow();
        sub_1A78C0AFC(v27, v29);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v44 = v51;

      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(v27, v29);

      swift_unknownObjectRelease();
    }
  }
}

_BYTE *sub_1A78FB7AC(unint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_27;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = sub_1A793D648();
    if (v13)
    {
      v14 = sub_1A793D678();
      if (__OFSUB__(v11, v14))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v13 += v11 - v14;
    }

    v15 = __OFSUB__(v12, v11);
    v16 = v12 - v11;
    if (!v15)
    {
      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v17 = sub_1A793D668();
      if (v17 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (!v13 || v18 != 32)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5)
  {
    v19 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v20 = sub_1A793D648();
      if (!v20)
      {
        v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
        sub_1A793D668();
        goto LABEL_27;
      }

      v21 = v20;
      v22 = sub_1A793D678();
      if (!__OFSUB__(a1, v22))
      {
        v13 = (a1 - v22 + v21);
        v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
        v23 = sub_1A793D668();
        if (!v13)
        {
          goto LABEL_27;
        }

        v24 = v23 >= v19 ? (a1 >> 32) - a1 : v23;
        if (v24 != 32)
        {
          goto LABEL_27;
        }

LABEL_24:
        v2 = sub_1A78BDB94(v13, v13 + 32);
        goto LABEL_25;
      }

LABEL_32:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  if ((a2 & 0xFF000000000000) != 0x20000000000000)
  {
LABEL_27:
    sub_1A78D6484();
    swift_allocError();
    *v25 = 0;
    *(v25 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(a1, a2);
    return v2;
  }

  v32 = HIDWORD(a2);
  v33 = a2 >> 40;
  v30 = a2 >> 16;
  v31 = a2 >> 24;
  v28 = HIBYTE(a1);
  v29 = a2 >> 8;
  v27 = HIWORD(a1);
  v6 = a1 >> 40;
  v7 = HIDWORD(a1);
  v8 = a1 >> 24;
  v9 = a1 >> 16;
  v10 = a1 >> 8;
  v2 = sub_1A78BDC10(32, 0);
  v2[32] = a1;
  v2[33] = v10;
  v2[34] = v9;
  v2[35] = v8;
  v2[36] = v7;
  v2[37] = v6;
  v2[38] = v27;
  v2[39] = v28;
  v2[40] = a2;
  v2[41] = v29;
  v2[42] = v30;
  v2[43] = v31;
  v2[44] = v32;
  v2[45] = v33;
LABEL_25:
  sub_1A78C0AFC(a1, a2);
  return v2;
}

uint64_t sub_1A78FBA0C(uint64_t result, unint64_t a2, void *a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = a6;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      result = a7(result);
      if (result)
      {
LABEL_21:
        result = MEMORY[0x1AC55DB90]();
        *a3 = result;
        *a5 = v8;
        return result;
      }

      goto LABEL_27;
    }

    v20 = a6;
    v13 = *(result + 16);
    v14 = *(result + 24);
    v15 = sub_1A793D648();
    if (v15)
    {
      v16 = sub_1A793D678();
      if (__OFSUB__(v13, v16))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v15 += v13 - v16;
    }

    if (__OFSUB__(v14, v13))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1A793D668();
    result = (a7)();
    if (!result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v15)
    {
LABEL_19:
      result = MEMORY[0x1AC55DB90]();
      *a3 = result;
      *a5 = v20;
      return result;
    }

    __break(1u);
  }

  else if (!v12)
  {
    result = (a7)();
    if (result)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = result;
  if (result >> 32 < result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v20 = v8;
  v18 = sub_1A793D648();
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = sub_1A793D678();
  if (__OFSUB__(v17, v19))
  {
LABEL_25:
    __break(1u);
  }

  v18 += v17 - v19;
LABEL_17:
  sub_1A793D668();
  result = (a7)();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v18)
  {
    goto LABEL_19;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1A78FBC64(uint64_t a1, uint64_t a2)
{
  sub_1A793DF58();
  sub_1A793D9A8();
  v4 = sub_1A793DFA8();

  return sub_1A78FBD64(a1, a2, v4);
}

unint64_t sub_1A78FBCDC(uint64_t a1)
{
  v2 = sub_1A793DDC8();

  return sub_1A78FBE1C(a1, v2);
}

unint64_t sub_1A78FBD20(uint64_t a1)
{
  v2 = sub_1A793DC58();

  return sub_1A78FBEE4(a1, v2);
}

unint64_t sub_1A78FBD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A793DEC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A78FBE1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A78FC5C8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC55D690](v9, a1);
      sub_1A78FC624(v9);
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

unint64_t sub_1A78FBEE4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A78FC438(0, &qword_1EB2A7578, 0x1E69E58C0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A793DC68();

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

uint64_t *sub_1A78FBFB8(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  if (*result)
  {
    return sub_1A78FBA0C(*a4, *(a4 + 8), a5, *result, a2, a3, a6);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1A78FBFF8(uint64_t *result, void *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t (*a6)(void))
{
  v6 = *result;
  if (*result)
  {
    v10 = *a4;
    result = a6();
    if (result)
    {
      result = MEMORY[0x1AC55DB90](result, *(v10 + 16), v10 + 32, v6);
      *a5 = result;
      *a2 = a3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A78FC074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75B0, &qword_1A7941D60);
    v3 = sub_1A793DE98();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A78BF9FC(v4, &v13, &qword_1EB2A75B8, &qword_1A7941D68);
      v5 = v13;
      v6 = v14;
      result = sub_1A78FBC64(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A78FC550(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A78FC1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75D0, &qword_1A7941D80);
    v3 = sub_1A793DE98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1A793DB18();
      swift_unknownObjectRetain();
      result = sub_1A78FBC64(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A78FC2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C0, &qword_1A7941D70);
    v3 = sub_1A793DE98();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A78BF9FC(v4, v13, &qword_1EB2A75C8, &qword_1A7941D78);
      result = sub_1A78FBCDC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A78FC550(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A78FC3E4()
{
  result = qword_1EB2A7588;
  if (!qword_1EB2A7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7588);
  }

  return result;
}

uint64_t sub_1A78FC438(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A78FC480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75A0, &qword_1A7941C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A78FC4FC()
{
  result = qword_1EB2A75A8;
  if (!qword_1EB2A75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75A8);
  }

  return result;
}

_OWORD *sub_1A78FC550(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t Curve448.KeyAgreement.PublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A79001A8(a1, a2);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Curve448.KeyAgreement.PublicKey.rawRepresentation.getter()
{
  v0 = sub_1A793DB18();
  v1 = sub_1A78C0DCC(v0);

  return v1;
}

unint64_t Curve448.KeyAgreement.PrivateKey.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A78E2E70(0x38uLL);
  *a1 = result;
  return result;
}

void *Curve448.KeyAgreement.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A78FFE3C();
  *a1 = result;
  return result;
}

uint64_t Curve448.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>)
{
  v8 = sub_1A7900234(a1, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v4)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t Curve448.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  sub_1A793DB18();
  v6 = sub_1A78E2CCC(0x38uLL, v5, v4);

  *a2 = v6;
  return result;
}

unint64_t Curve448.KeyAgreement.PrivateKey.rawRepresentation.getter()
{
  v1 = sub_1A793D6F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *v4 = sub_1A78DA2BC;
  v4[1] = v7;
  (*(v2 + 104))(v4, *MEMORY[0x1E6969028], v1);

  return sub_1A78DA2C4(v5 + 32, v6, v4);
}

void *sub_1A78FCB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A78FFE3C();
  *a1 = result;
  return result;
}

uint64_t sub_1A78FCB54@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  sub_1A793DB18();
  v6 = sub_1A78E2CCC(0x38uLL, v5, v4);

  *a2 = v6;
  return result;
}

uint64_t static ChaChaPoly.seal<A, B>(_:using:nonce:authenticating:)(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v22 = a7;
  v14 = sub_1A793DC78();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v25 = *a2;
  v24 = *a3;
  v18 = *(a6 - 8);
  (*(v18 + 16))(&v21 - v16, a4, a6);
  (*(v18 + 56))(v17, 0, 1, a6);
  v19 = sub_1A78CA440(&v25, a1, &v24, v17, a5, a6, v22, v23);
  (*(v15 + 8))(v17, v14);
  return v19;
}

uint64_t ChaChaPoly.SealedBox.init<A, B>(nonce:ciphertext:tag:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1A78FD548(a1, a2, a3, a4, a5, a6, a7);
  (*(*(a5 - 8) + 8))(a3, a5);
  (*(*(a4 - 8) + 8))(a2, a4);
  return v11;
}

uint64_t static ChaChaPoly.open<A>(_:using:authenticating:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A793DC78();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v21 = *a3;
  v17 = *(a5 - 8);
  (*(v17 + 16))(&v20 - v15, a4, a5, v14);
  (*(v17 + 56))(v16, 0, 1, a5);
  v18 = sub_1A78FDA28(&v21, a1, a2, v16, a5, a6);
  (*(v13 + 8))(v16, v12);
  return v18;
}

uint64_t ChaChaPoly.SealedBox.tag.getter(uint64_t a1, unint64_t a2)
{
  sub_1A78C0990(a1, a2);
  sub_1A78C8A28(16, a1, a2, &v5);
  return v5;
}

uint64_t ChaChaPoly.SealedBox.ciphertext.getter(uint64_t a1, unint64_t a2)
{
  sub_1A78C0990(a1, a2);
  sub_1A78C0B50(0xCuLL, a1, a2, v5);
  sub_1A78C3CAC(16, v5[0], v5[1], &v6);
  return v6;
}

uint64_t ChaChaPoly.SealedBox.nonce.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1A78C0990(a1, a2);
  sub_1A78C3AA4(12, a1, a2, v7);
  return sub_1A78C7ED4(v7[0], v7[1], a3);
}

uint64_t ChaChaPoly.SealedBox.init<A>(combined:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() > 27)
  {
    v8 = sub_1A78C7370(a1, a2, *(v5 + 8));
    (*(*(a2 - 8) + 8))(a1, a2);
    return v8;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v6 = 1;
    *(v6 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }
}

uint64_t sub_1A78FD264(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      if (qword_1EB2A6D80 != -1)
      {
        swift_once();
      }

      v6 = ccchacha20poly1305_aad();
      if (!v6)
      {
      }

      goto LABEL_13;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 >= a1)
    {
LABEL_10:

      sub_1A78FD494(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    }

    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_10;
  }

  if (qword_1EB2A6D80 != -1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v6 = ccchacha20poly1305_aad();
  if (v6)
  {
LABEL_13:
    v10 = v6;
    sub_1A78D6484();
    swift_allocError();
    *v11 = v10;
    *(v11 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1A78FD494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1A793D648();
  v8 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1A793D668();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1A78FE1D0(v8, v14, a4);
}

uint64_t sub_1A78FD548(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  if (sub_1A793DB98() != 16)
  {
    sub_1A78C0AFC(v8, v7);
    sub_1A78D6484();
    swift_allocError();
    *v15 = 1;
    *(v15 + 4) = 1;
    return swift_willThrow();
  }

  v34 = &type metadata for ChaChaPoly.Nonce;
  v35 = sub_1A78FD97C();
  *&v33 = v8;
  *(&v33 + 1) = v7;
  v9 = __swift_project_boxed_opaque_existential_1(&v33, &type metadata for ChaChaPoly.Nonce);
  v10 = *v9;
  v11 = v9[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      *(&v32 + 6) = 0;
      *&v32 = 0;
      sub_1A78C0990(v8, v7);
      v13 = &v32;
      v14 = &v32;
      goto LABEL_25;
    }

    v17 = *(v10 + 16);
    v30 = *(v10 + 24);
    sub_1A78C0990(v8, v7);
    v18 = sub_1A793D648();
    if (v18)
    {
      v19 = sub_1A793D678();
      if (__OFSUB__(v17, v19))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v18 += v17 - v19;
    }

    v20 = __OFSUB__(v30, v17);
    v21 = v30 - v17;
    if (!v20)
    {
      v22 = sub_1A793D668();
      if (v22 >= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

LABEL_20:
      v28 = (v23 + v18);
      if (v18)
      {
        v14 = v28;
      }

      else
      {
        v14 = 0;
      }

      v13 = v18;
      goto LABEL_25;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v12)
  {
    v24 = v10;
    v25 = v10 >> 32;
    v31 = v25 - v24;
    if (v25 >= v24)
    {
      sub_1A78C0990(v8, v7);
      v18 = sub_1A793D648();
      if (!v18)
      {
        goto LABEL_18;
      }

      v26 = sub_1A793D678();
      if (!__OFSUB__(v24, v26))
      {
        v18 += v24 - v26;
LABEL_18:
        v27 = sub_1A793D668();
        v23 = v31;
        if (v27 < v31)
        {
          v23 = v27;
        }

        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  *&v32 = *v9;
  WORD4(v32) = v11;
  BYTE10(v32) = BYTE2(v11);
  BYTE11(v32) = BYTE3(v11);
  BYTE12(v32) = BYTE4(v11);
  BYTE13(v32) = BYTE5(v11);
  sub_1A78C0990(v8, v7);
  v13 = &v32;
  v14 = (&v32 + BYTE6(v11));
LABEL_25:
  sub_1A78C2D58(v13, v14, &v36);
  sub_1A78C0AFC(v8, v7);
  v29 = v36;
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v33 = v29;
  sub_1A78FD9D0();
  sub_1A793DC08();
  sub_1A78C0AFC(v33, *(&v33 + 1));
  v32 = v36;
  sub_1A793DC08();
  sub_1A78C0AFC(v32, *(&v32 + 1));
  return v33;
}

unint64_t sub_1A78FD8B0()
{
  result = qword_1EB2A75D8;
  if (!qword_1EB2A75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75D8);
  }

  return result;
}

unint64_t sub_1A78FD908()
{
  result = qword_1EB2A75E0;
  if (!qword_1EB2A75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75E0);
  }

  return result;
}

unint64_t sub_1A78FD97C()
{
  result = qword_1EB2A75E8;
  if (!qword_1EB2A75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75E8);
  }

  return result;
}

unint64_t sub_1A78FD9D0()
{
  result = qword_1EB2A75F0;
  if (!qword_1EB2A75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75F0);
  }

  return result;
}

uint64_t sub_1A78FDA28(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v36 = a4;
  v11 = sub_1A793DC78();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v38 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);

  sub_1A78C3AA4(12, a2, a3, &v40);
  sub_1A78C7ED4(v40, *(&v40 + 1), &v41);
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v39[0] = v17;
    v40 = v41;
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    swift_allocObject();
    v18 = sub_1A78C8170(v39, &v40);
    v34 = 0;
    v42 = v18;
    v19 = v37;
    (*(v37 + 16))(v13, v36, v11);
    v20 = v38;
    if ((*(v38 + 48))(v13, 1, a5) == 1)
    {
      (*(v19 + 8))(v13, v11);
    }

    else
    {
      (*(v20 + 32))(v16, v13, a5);
      v21 = v34;
      sub_1A78FDEB4(v16, a5, v35);
      v34 = v21;
      if (v21)
      {
        sub_1A78C0AFC(a2, a3);
        sub_1A78C0AFC(a2, a3);
        (*(v20 + 8))(v16, a5);
      }

      (*(v20 + 8))(v16, a5);
    }

    v41 = xmmword_1A793F230;
    sub_1A78C0B50(0xCuLL, a2, a3, v39);
    sub_1A78C3CAC(16, v39[0], v39[1], &v40);
    v24 = *(&v40 + 1);
    v23 = v40;
    v25 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v34;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v28 = swift_allocObject();
      v29 = swift_slowAlloc();
      *(v28 + 16) = v29;
      memmove(v29, *(v25 + 16), 0x100uLL);
    }

    sub_1A78C9630(v23, v24, &v41, MEMORY[0x1E69E94E0]);
    if (v27)
    {
      sub_1A78C0AFC(a2, a3);
      sub_1A78C0AFC(v23, v24);
    }

    else
    {
      sub_1A78C0AFC(v23, v24);
      sub_1A78C8A28(16, a2, a3, &v40);
      v30 = v40;
      v31 = sub_1A78CA02C(v40, *(&v40 + 1));
      sub_1A78C0AFC(v30, *(&v30 + 1));
      if (v31)
      {

        return v41;
      }

      sub_1A78D6484();
      swift_allocError();
      *v32 = 2;
      *(v32 + 4) = 1;
      swift_willThrow();
    }

    sub_1A78C0AFC(v41, *(&v41 + 1));
  }

  return result;
}

uint64_t sub_1A78FDEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    v9 = swift_allocObject();
    v10 = swift_slowAlloc();
    *(v9 + 16) = v10;
    memmove(v10, *(v8 + 16), 0x100uLL);

    *v3 = v9;
  }

  return sub_1A78FDF64(a1, a2, a3);
}

uint64_t sub_1A78FDF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11[-v8];
  sub_1A793D5A8();
  v12 = a2;
  v13 = a3;
  v14 = v3;
  swift_getAssociatedConformanceWitness();
  sub_1A793DAC8();
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1A78FE0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

uint64_t sub_1A78FE1D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (qword_1EB2A6D80 == -1)
  {
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = ccchacha20poly1305_aad();
  if (result)
  {
    v4 = result;
    sub_1A78D6484();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

char *sub_1A78FE2CC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1A78C0AFC(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v7, v6);
    *v4 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1A793D648() && __OFSUB__(v7, sub_1A793D678()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1A793D698();
      swift_allocObject();
      v14 = sub_1A793D628();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1A78FE670(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1A78C0AFC(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    result = sub_1A78FE670(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

char *sub_1A78FE670(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1A793D648();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1A793D678();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1A793D668();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1A78FE770(unint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) != 0 || (v4 = a2 - 1, a2 < 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v5 = a1;
  if (a1 <= 1)
  {
    v5 = 1;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    goto LABEL_69;
  }

  v8 = ceil(log2(v7) * 0.125);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = v8;
  if (v8 > a2)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v37 = sub_1A78CC5A0(a2);
  v38 = v10;
  sub_1A78CC640(&v37, 0);
  v11 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 >= a2)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v13 = v37;
  v12 = v38;
  v14 = v9 - 1;
  v35 = v4;
  while (1)
  {
    v15 = v4 - v11;
    if (__OFSUB__(v4, v11))
    {
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
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if ((v15 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_57;
    }

    v16 = 8 * v15;
    if ((v16 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_21;
    }

    if (v16 < 0)
    {
      if (v16 == -64)
      {
        goto LABEL_17;
      }

      v17 = a1 << (-v16 & 0x38);
    }

    else
    {
      if (v16 == 64)
      {
        goto LABEL_17;
      }

      v17 = a1 >> (v16 & 0x38);
    }

LABEL_21:
    v18 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      break;
    }

    if (v18)
    {
      if (v11 >= v13 >> 32 || v11 < v13)
      {
        goto LABEL_61;
      }

      v22 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_1A793D648() && __OFSUB__(v13, sub_1A793D678()))
        {
          goto LABEL_66;
        }

        sub_1A793D698();
        swift_allocObject();
        v23 = sub_1A793D628();

        v22 = v23;
        v4 = v35;
      }

      sub_1A793D618();
      v24 = sub_1A793D648();
      if (!v24)
      {
        goto LABEL_77;
      }

      v25 = v24;
      v26 = sub_1A793D678();
      if (__OFSUB__(v11, v26))
      {
        goto LABEL_63;
      }

      *(v25 + v11 - v26) = v17;
      v12 = v22 | 0x4000000000000000;
      if (!v14)
      {
        return v13;
      }
    }

    else
    {
      v37 = v13;
      LOWORD(v38) = v12;
      BYTE2(v38) = BYTE2(v12);
      BYTE3(v38) = BYTE3(v12);
      BYTE4(v38) = BYTE4(v12);
      BYTE5(v38) = BYTE5(v12);
      BYTE6(v38) = BYTE6(v12);
      if (v11 >= BYTE6(v12))
      {
        goto LABEL_59;
      }

      *(&v37 + v11) = v17;
      v13 = v37;
      v2 = v2 & 0xF00000000000000 | v38 | ((WORD2(v38) | (BYTE6(v38) << 16)) << 32);
      v12 = v2;
      if (!v14)
      {
        return v13;
      }
    }

LABEL_13:
    --v14;
    v6 = __OFADD__(v11++, 1);
    if (v6)
    {
      goto LABEL_58;
    }
  }

  if (v18 != 2)
  {
    goto LABEL_76;
  }

  if (v11 < *(v13 + 16))
  {
    goto LABEL_60;
  }

  if (v11 >= *(v13 + 24))
  {
    goto LABEL_62;
  }

  v19 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (sub_1A793D648())
    {
      if (__OFSUB__(v20, sub_1A793D678()))
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v21, v20))
      {
        goto LABEL_65;
      }
    }

    else if (__OFSUB__(v21, v20))
    {
      goto LABEL_65;
    }

    sub_1A793D698();
    swift_allocObject();
    v27 = sub_1A793D628();

    v19 = v27;
    v4 = v35;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = *(v13 + 16);
    v29 = *(v13 + 24);
    sub_1A793D738();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    v4 = v35;

    v13 = v30;
  }

  sub_1A793D618();
  v31 = sub_1A793D648();
  if (!v31)
  {
    goto LABEL_78;
  }

  v32 = v31;
  v33 = sub_1A793D678();
  if (__OFSUB__(v11, v33))
  {
    goto LABEL_64;
  }

  *(v32 + v11 - v33) = v17;
  v12 = v19 | 0x8000000000000000;
  if (v14)
  {
    goto LABEL_13;
  }

  return v13;
}

uint64_t SymmetricKey.bitCount.getter()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!(v3 >> 60))
  {
    return 8 * v3;
  }

  __break(1u);
  return result;
}

CryptoKit::SymmetricKeySize __swiftcall SymmetricKeySize.init(bitCount:)(CryptoKit::SymmetricKeySize bitCount)
{
  if (bitCount.bitCount < 1 || (bitCount.bitCount & 7) != 0)
  {
    __break(1u);
  }

  else
  {
    v1->bitCount = bitCount.bitCount;
  }

  return bitCount;
}