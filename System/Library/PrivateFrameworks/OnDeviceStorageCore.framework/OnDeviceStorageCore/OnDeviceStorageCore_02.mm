uint64_t RichFailure.errorDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RichFailure.failureReason.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RichFailure.recoverySuggestion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RichFailure.helpAnchor.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t RichFailure.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v75[0] = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  if (swift_dynamicCast())
  {
    MEMORY[0x1E1284A10](a1);
    v5 = *(&v81 + 1);
    v6 = v81;
    v8 = *(&v82 + 1);
    v7 = v82;
    v10 = v83;
    v9 = v84;
    v12 = v85;
    v11 = v86;
    v13 = v87;
    result = MEMORY[0x1E1284A10](v75[0]);
  }

  else
  {
    MEMORY[0x1E1284A10](v75[0]);
    *&v70 = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27450, &qword_1DB2BFA78);
    if (swift_dynamicCast())
    {
      sub_1DB1355D0(&v81, v75);
      v16 = v76;
      v17 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v68 = a1;
      v6 = (*(v17 + 32))(v16, v17);
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v5 = sub_1DB2BA754();
      v7 = v18;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v9 = sub_1DB2BA764();
      v12 = v19;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v8 = sub_1DB2BA744();
      v10 = v20;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v11 = sub_1DB2BA734();
      v13 = v21;
      MEMORY[0x1E1284A10](v68);
      __swift_destroy_boxed_opaque_existential_1(v75);
      result = MEMORY[0x1E1284A10](v70);
    }

    else
    {
      MEMORY[0x1E1284A10](v70);
      v80 = a1;
      v22 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27458, &unk_1DB2BFA80);
      if (swift_dynamicCast())
      {
        sub_1DB1355D0(&v81, v75);
        if (qword_1ECC26BD0 != -1)
        {
          swift_once();
        }

        v23 = qword_1ECC41F10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1DB2BCC40;
        v74 = sub_1DB156674(0, 72, 0, MEMORY[0x1E69E7CC0]);
        v25._countAndFlagsBits = 0xD000000000000046;
        v25._object = 0x80000001DB2D3AB0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v25);
        v26 = v76;
        v27 = __swift_project_boxed_opaque_existential_1(v75, v76);
        v73[3] = v26;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v73);
        (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v27, v26);
        sub_1DB1567F4(v73, v69);
        v70 = 0u;
        v71 = 0u;
        sub_1DB156864(v69, &v70);
        v72 = 0;
        v29 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1DB156674(0, *(v29 + 2) + 1, 1, v29);
          v74 = v29;
        }

        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1DB156674((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v32 = &v29[40 * v31];
        v33 = v70;
        v34 = v71;
        v32[64] = v72;
        *(v32 + 2) = v33;
        *(v32 + 3) = v34;
        v74 = v29;
        sub_1DB1568D4(v73);
        v35._countAndFlagsBits = 41;
        v35._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v35);
        *(v24 + 32) = v74;
        v36 = sub_1DB2BB274();
        if (os_log_type_enabled(v23, v36))
        {
          v37 = os_variant_has_internal_content() ^ 1;
          v38 = swift_allocObject();
          *(v38 + 16) = v37;
          *&v70 = v24;
          *(&v70 + 1) = sub_1DB158A74;
          *&v71 = v38;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
          sub_1DB156944();
          v39 = sub_1DB2BAD24();
          v41 = v40;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1DB2BCC40;
          *(v42 + 56) = MEMORY[0x1E69E6158];
          *(v42 + 64) = sub_1DB156A2C();
          *(v42 + 32) = v39;
          *(v42 + 40) = v41;
          sub_1DB2BAA04("%{public}@", 10, 2, &dword_1DB132000, v23, v36, v42);
        }

        __swift_project_boxed_opaque_existential_1(v75, v76);
        v5 = sub_1DB2BA754();
        v7 = v63;
        __swift_project_boxed_opaque_existential_1(v75, v76);
        v9 = sub_1DB2BA764();
        v12 = v64;
        __swift_project_boxed_opaque_existential_1(v75, v76);
        v8 = sub_1DB2BA744();
        v10 = v65;
        __swift_project_boxed_opaque_existential_1(v75, v76);
        v11 = sub_1DB2BA734();
        v13 = v66;
        MEMORY[0x1E1284A10](a1);
        __swift_destroy_boxed_opaque_existential_1(v75);
        result = MEMORY[0x1E1284A10](v80);
        v6 = 1001;
      }

      else
      {
        MEMORY[0x1E1284A10](v80);
        if (qword_1ECC26BD0 != -1)
        {
          swift_once();
        }

        v43 = qword_1ECC41F10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1DB2BCC40;
        v73[0] = sub_1DB156674(0, 63, 0, MEMORY[0x1E69E7CC0]);
        v45._object = 0x80000001DB2D3A60;
        v45._countAndFlagsBits = 0xD00000000000003DLL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v45);
        swift_getErrorValue();
        v46 = v78;
        v47 = v79;
        v76 = v79;
        v48 = __swift_allocate_boxed_opaque_existential_0(v75);
        (*(*(v47 - 8) + 16))(v48, v46, v47);
        sub_1DB1567F4(v75, &v70);
        v81 = 0u;
        v82 = 0u;
        sub_1DB156864(&v70, &v81);
        LOBYTE(v83) = 0;
        v49 = v73[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1DB156674(0, *(v49 + 2) + 1, 1, v49);
          v73[0] = v49;
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1DB156674((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        v52 = &v49[40 * v51];
        v53 = v81;
        v54 = v82;
        v52[64] = v83;
        *(v52 + 2) = v53;
        *(v52 + 3) = v54;
        v73[0] = v49;
        sub_1DB1568D4(v75);
        v55._countAndFlagsBits = 41;
        v55._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v55);
        *(v44 + 32) = v73[0];
        v56 = sub_1DB2BB274();
        if (os_log_type_enabled(v43, v56))
        {
          v57 = os_variant_has_internal_content() ^ 1;
          v58 = swift_allocObject();
          *(v58 + 16) = v57;
          *&v81 = v44;
          *(&v81 + 1) = sub_1DB15693C;
          *&v82 = v58;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
          sub_1DB156944();
          v59 = sub_1DB2BAD24();
          v61 = v60;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_1DB2BCC40;
          *(v62 + 56) = MEMORY[0x1E69E6158];
          *(v62 + 64) = sub_1DB156A2C();
          *(v62 + 32) = v59;
          *(v62 + 40) = v61;
          sub_1DB2BAA04("%{public}@", 10, 2, &dword_1DB132000, v43, v56, v62);
        }

        swift_getErrorValue();
        v5 = sub_1DB2BB994();
        v7 = v67;
        result = MEMORY[0x1E1284A10](a1);
        v10 = 0;
        v8 = 0;
        v9 = 0;
        v12 = 0;
        v11 = 0;
        v13 = 0;
        v6 = 1002;
      }
    }
  }

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v10;
  a2[5] = v9;
  a2[6] = v12;
  a2[7] = v11;
  a2[8] = v13;
  return result;
}

unint64_t sub_1DB155D0C()
{
  v1 = *v0;
  v2 = 0x646F43726F727265;
  v3 = 0x526572756C696166;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x68636E41706C6568;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB155DC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB15889C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB155DFC(uint64_t a1)
{
  v2 = sub_1DB156A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB155E38(uint64_t a1)
{
  v2 = sub_1DB156A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RichFailure.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27478, &qword_1DB2BFAB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v14[5] = v1[2];
  v14[6] = v7;
  v9 = v1[5];
  v14[3] = v1[4];
  v14[4] = v8;
  v10 = v1[7];
  v14[0] = v1[6];
  v14[1] = v10;
  v14[2] = v9;
  v11 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB156A80();
  sub_1DB2BBA94();
  v20 = 0;
  v12 = v15;
  sub_1DB2BB894();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = v11;
  v19 = 1;
  sub_1DB2BB824();
  v18 = 2;
  sub_1DB2BB824();
  v17 = 3;
  sub_1DB2BB824();
  v16 = 4;
  sub_1DB2BB824();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RichFailure.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27480, &qword_1DB2BFAB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB156A80();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = sub_1DB2BB7A4();
  LOBYTE(v35[0]) = 1;
  v28 = sub_1DB2BB734();
  v29 = v10;
  LOBYTE(v35[0]) = 2;
  v11 = sub_1DB2BB734();
  v27 = v12;
  v26 = v11;
  LOBYTE(v35[0]) = 3;
  v13 = sub_1DB2BB734();
  v15 = v14;
  v25 = v13;
  v36 = 4;
  v16 = sub_1DB2BB734();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v20 = v28;
  v21 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v28;
  *&v31 = v29;
  *(&v31 + 1) = v26;
  *&v32 = v27;
  *(&v32 + 1) = v25;
  *&v33 = v15;
  *(&v33 + 1) = v16;
  v34 = v19;
  *(a2 + 64) = v19;
  v22 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v22;
  v23 = v31;
  *a2 = v30;
  *(a2 + 16) = v23;
  sub_1DB156AD4(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v9;
  v35[1] = v20;
  v35[2] = v21;
  v35[3] = v26;
  v35[4] = v27;
  v35[5] = v25;
  v35[6] = v15;
  v35[7] = v16;
  v35[8] = v19;
  return sub_1DB156B0C(v35);
}

uint64_t sub_1DB156410()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1DB156440()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DB156470()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1DB1564A0()
{
  v1 = *(v0 + 56);

  return v1;
}

char *sub_1DB156558(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    result = sub_1DB156674(result, v5, 0, v3);
    v3 = result;
  }

  *v1 = v3;
  return result;
}

char *sub_1DB1565BC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1DB156674(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1DB156608(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1DB156674((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

__n128 sub_1DB15664C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  v4 = v3 + 40 * a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 32) = *a2;
  *(v4 + 48) = v6;
  *(v4 + 64) = *(a2 + 32);
  return result;
}

char *sub_1DB156674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1DB1567F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F30, &unk_1DB2BFA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB156864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F30, &unk_1DB2BFA90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB1568D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F30, &unk_1DB2BFA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB156944()
{
  result = qword_1EE13F650;
  if (!qword_1EE13F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27468, &unk_1DB2CDBD0);
    sub_1DB1569C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F650);
  }

  return result;
}

unint64_t sub_1DB1569C8()
{
  result = qword_1EE13F6A8;
  if (!qword_1EE13F6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27470, &unk_1DB2BFAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6A8);
  }

  return result;
}

unint64_t sub_1DB156A2C()
{
  result = qword_1EE13F6C8;
  if (!qword_1EE13F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6C8);
  }

  return result;
}

unint64_t sub_1DB156A80()
{
  result = qword_1EE13F530[0];
  if (!qword_1EE13F530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE13F530);
  }

  return result;
}

unint64_t sub_1DB156B3C(void *a1)
{
  a1[1] = sub_1DB156B74();
  a1[2] = sub_1DB156BC8();
  result = sub_1DB156C1C();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB156B74()
{
  result = qword_1ECC27488;
  if (!qword_1ECC27488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27488);
  }

  return result;
}

unint64_t sub_1DB156BC8()
{
  result = qword_1ECC27490;
  if (!qword_1ECC27490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27490);
  }

  return result;
}

unint64_t sub_1DB156C1C()
{
  result = qword_1ECC27498;
  if (!qword_1ECC27498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27498);
  }

  return result;
}

unint64_t sub_1DB156C74()
{
  result = qword_1EE13EF38;
  if (!qword_1EE13EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EF38);
  }

  return result;
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

uint64_t sub_1DB156CEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DB156D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RichFailure.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RichFailure.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB156F10()
{
  result = qword_1ECC274A0;
  if (!qword_1ECC274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC274A0);
  }

  return result;
}

unint64_t sub_1DB156F68()
{
  result = qword_1EE13F520;
  if (!qword_1EE13F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F520);
  }

  return result;
}

unint64_t sub_1DB156FC0()
{
  result = qword_1EE13F528;
  if (!qword_1EE13F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F528);
  }

  return result;
}

void *sub_1DB157014(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E68, &unk_1DB2BCFC8);
  v10 = *(sub_1DB2BA644() - 8);
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
  v15 = *(sub_1DB2BA644() - 8);
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

char *sub_1DB1571EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274A8, &unk_1DB2CCCF0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1DB1572F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
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

void *sub_1DB157420(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB157568(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274B8, &unk_1DB2BFDB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB157674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DE8, &qword_1DB2BCF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB1577B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

char *sub_1DB157900(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274B0, &qword_1DB2BFD98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB157A0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274C0, &qword_1DB2BFDC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB157B2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D58, &unk_1DB2BCEC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB157C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB157D60(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DD0, &qword_1DB2BCF38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DD8, &qword_1DB2BCF40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB157EA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D68, &unk_1DB2BCED0);
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

char *sub_1DB157FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274D8, &qword_1DB2BFDD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB1580CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274D0, &qword_1DB2BFDD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB1581D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D60, &qword_1DB2BFD90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB158300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274C8, &qword_1DB2BFDC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB158410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA0, &qword_1DB2CEF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB158530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E40, &qword_1DB2BCFA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB158650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E48, &qword_1DB2BCFA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB158778(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E38, &unk_1DB2BFD80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DB15889C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB2D3B00 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB2D3B20 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68636E41706C6568 && a2 == 0xEA0000000000726FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore11SQLiteErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 9)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1DB158A94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 49))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 48);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB158ADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB158B30(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DB158B68()
{
  if (qword_1EE13F2E0 != -1)
  {
    swift_once();
  }

  sub_1DB2BBAF4();
  v1 = v27;
  v2 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB2BCC40;
  v25 = sub_1DB156674(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = v0[1];
  v20 = *v0;
  v21 = v5;
  v22 = v0[2];
  v23 = *(v0 + 48);
  sub_1DB135B68();
  v6 = sub_1DB2BB994();
  v24[3] = MEMORY[0x1E69E6158];
  v24[0] = v6;
  v24[1] = v7;
  sub_1DB1567F4(v24, v16);
  v17 = 0u;
  v18 = 0u;
  sub_1DB156864(v16, &v17);
  v19 = 0;
  v8 = v25;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB156674(0, *(v8 + 2) + 1, 1, v8);
    v25 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB156674((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v17;
  v13 = v18;
  v11[64] = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v25 = v8;
  sub_1DB1568D4(v24);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v3 + 32) = v25;
  Logger.error(_:)(v3, v1, v2);

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1DB158D84@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 0uLL;
  if (result <= 5)
  {
    if (result <= 2)
    {
      if (result == 1)
      {
        v13 = 0;
        v12 = 0;
        v6 = 0;
        v7 = 0;
        v9 = 0x80000001DB2D42A0;
        v10 = 0x80000001DB2D42C0;
        v5 = 0x80000001DB2D42E0;
        v2 = 0xD000000000000012;
        result = &unk_1DB2BF000;
        v3 = xmmword_1DB2BFDF0;
        v8 = 0xD00000000000001ALL;
        v4 = 0xD00000000000002DLL;
      }

      else
      {
        v9 = 0;
        v8 = 0;
        v10 = 0;
        v13 = 0;
        v12 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
        if (result == 2)
        {
          v13 = 0;
          v12 = 0;
          v6 = 0;
          v7 = 0;
          v9 = 0x80000001DB2D4200;
          v10 = 0x80000001DB2D4220;
          v5 = 0x80000001DB2D4250;
          v2 = 0xD00000000000001FLL;
          result = &unk_1DB2BF000;
          v3 = xmmword_1DB2BFDF0;
          v8 = 0xD000000000000021;
          v4 = 0xD00000000000004CLL;
        }
      }
    }

    else if (result == 3)
    {
      v13 = 0;
      v12 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v9 = 0x80000001DB2D41C0;
      v10 = 0x80000001DB2D41E0;
      result = 0xD00000000000001CLL;
      v3 = xmmword_1DB2BFDF0;
      v2 = 0xD000000000000012;
      v8 = 0xD00000000000001ELL;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if (result == 4)
      {
        v9 = 0x80000001DB2D4120;
        v10 = 0x80000001DB2D4140;
        v12 = 0x80000001DB2D4170;
        v2 = 0xD000000000000013;
        result = &unk_1DB2BF000;
        v3 = xmmword_1DB2BFDF0;
        v8 = 0xD00000000000002ALL;
        v13 = 0xD000000000000042;
      }

      else
      {
        v9 = 0x80000001DB2D4080;
        v10 = 0x80000001DB2D40A0;
        v12 = 0x80000001DB2D40D0;
        v2 = 0xD00000000000001DLL;
        result = &unk_1DB2BF000;
        v3 = xmmword_1DB2BFDF0;
        v8 = 0xD000000000000020;
        v13 = 0xD000000000000040;
      }
    }
  }

  else
  {
    if (result > 8)
    {
      if (result == 9)
      {
        v12 = 0x80000001DB2D3E90;
        v5 = 0x80000001DB2D3EC0;
        v7 = 0x80000001DB2D1E60;
        v4 = 0xD000000000000021;
        v13 = 0xD00000000000002DLL;
        v3 = xmmword_1DB2BFDF0;
        v6 = 0xD000000000000063;
        v10 = 0xED0000726F727265;
        v8 = 0x206E776F6E6B6E55;
        v9 = 0xEC000000726F7272;
        v2 = 0x456E776F6E6B6E75;
        goto LABEL_26;
      }

      if (result == 10)
      {
        v4 = 0;
        v5 = 0;
        v9 = 0x80000001DB2D3E10;
        v10 = 0x80000001DB2D3E30;
        v12 = 0x80000001DB2D3E50;
        v7 = 0x80000001DB2D1E60;
        v2 = 0xD000000000000010;
        v8 = 0xD000000000000011;
        v3 = xmmword_1DB2BFDF0;
        v13 = 0xD000000000000039;
      }

      else
      {
        v9 = 0;
        v8 = 0;
        v10 = 0;
        v13 = 0;
        v12 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
        if (result != 11)
        {
          goto LABEL_26;
        }

        v4 = 0;
        v5 = 0;
        v9 = 0x80000001DB2D3D70;
        v10 = 0x80000001DB2D3DA0;
        v12 = 0x80000001DB2D3DD0;
        v7 = 0x80000001DB2D1E60;
        v2 = 0xD000000000000020;
        v8 = 0xD000000000000023;
        v3 = xmmword_1DB2BFDF0;
        v13 = 0xD000000000000032;
      }

      v6 = 0xD000000000000063;
      goto LABEL_26;
    }

    if (result == 6)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v2 = 0xD00000000000001CLL;
      v9 = 0x80000001DB2D3FF0;
      v10 = 0x80000001DB2D4010;
      v12 = 0x80000001DB2D4030;
      v8 = 0xD00000000000001FLL;
      v3 = xmmword_1DB2BFDF0;
      v13 = 0xD000000000000046;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0xD00000000000001CLL;
      if (result == 7)
      {
        v9 = 0x80000001DB2D3F70;
        v10 = 0x80000001DB2D3F90;
        v11 = "Found value representing unknown file protection type";
      }

      else
      {
        v9 = 0x80000001DB2D3EF0;
        v10 = 0x80000001DB2D3F10;
        v11 = "Found value representing invalid file protection type";
      }

      v12 = (v11 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000019;
      v3 = xmmword_1DB2BFDF0;
      v13 = 0xD000000000000035;
    }
  }

LABEL_26:
  *a2 = v2;
  *(a2 + 8) = v9;
  *(a2 + 16) = v3;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v13;
  *(a2 + 56) = v12;
  *(a2 + 64) = v4;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  return result;
}

unint64_t sub_1DB1592D4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 <= 4)
  {
    if (*(v0 + 48) > 1u)
    {
      if (v7 == 2)
      {
        sub_1DB2BB4F4();

        v8 = 0xD000000000000020;
      }

      else
      {
        if (v7 == 3)
        {
          v14 = 0;
          sub_1DB2BB4F4();
          MEMORY[0x1E1283490](0xD000000000000044, 0x80000001DB2D3C40);
LABEL_20:
          v9 = v2;
          v10 = v1;
          goto LABEL_24;
        }

        sub_1DB2BB4F4();

        v8 = 0xD000000000000022;
      }

LABEL_19:
      v14 = v8;
      goto LABEL_20;
    }

    if (!*(v0 + 48))
    {
      sub_1DB2BB4F4();

      v8 = 0xD000000000000021;
      goto LABEL_19;
    }

    sub_1DB2BB4F4();

    v14 = v2;
    MEMORY[0x1E1283490](0x6D6F74737543203ALL, 0xE900000000000020);
    MEMORY[0x1E1283490](v4, v3);
    v11 = 0xD000000000000022;
    v12 = 0x80000001DB2D3CC0;
LABEL_23:
    MEMORY[0x1E1283490](v11, v12);
    v9 = v5;
    v10 = v6;
    goto LABEL_24;
  }

  if (*(v0 + 48) > 7u)
  {
    if (v7 == 8)
    {
      sub_1DB2BB4F4();

      v14 = 0xD000000000000021;
      MEMORY[0x1E1283490](v2, v1);
      MEMORY[0x1E1283490](0x3A726F727265202CLL, 0xE900000000000020);
      v9 = v4;
      v10 = v3;
    }

    else
    {
      if (v7 != 9)
      {
        return 0xD000000000000025;
      }

      sub_1DB2BB4F4();

      v14 = 0xD000000000000014;
      MEMORY[0x1E1283490](v2, v1);
      v9 = 41;
      v10 = 0xE100000000000000;
    }
  }

  else
  {
    if (v7 != 5)
    {
      if (v7 == 6)
      {
        sub_1DB2BB4F4();

        v8 = 0xD00000000000001ELL;
        goto LABEL_19;
      }

      v14 = 0;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD00000000000001ELL, 0x80000001DB2D3B40);
      MEMORY[0x1E1283490](v2, v1);
      MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D3B60);
      MEMORY[0x1E1283490](v4, v3);
      v11 = 0x746365707865202CLL;
      v12 = 0xEC000000203A6465;
      goto LABEL_23;
    }

    v14 = 0;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0x20676E697355, 0xE600000000000000);
    MEMORY[0x1E1283490](v2, v1);
    v9 = 0xD00000000000002ELL;
    v10 = 0x80000001DB2D3BB0;
  }

LABEL_24:
  MEMORY[0x1E1283490](v9, v10);
  return v14;
}

uint64_t sub_1DB159740(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0xD000000000000012;
    v6 = 0xD000000000000013;
    if (a1 != 3)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000012;
    if (a1)
    {
      v7 = 0xD00000000000001FLL;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x456E776F6E6B6E75;
    v2 = 0xD000000000000010;
    if (a1 != 9)
    {
      v2 = 0xD000000000000020;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000019;
    if (a1 == 5)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DB1598B4(void *a1)
{
  v2 = v1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC275C0, &qword_1DB2C0130);
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v77 = &v59 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC275C8, &qword_1DB2C0138);
  v66 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v59 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC275D0, &qword_1DB2C0140);
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v75 = &v59 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC275D8, &qword_1DB2C0148);
  v67 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v76 = &v59 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC275E0, &qword_1DB2C0150);
  v65 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v59 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC275E8, &qword_1DB2C0158);
  v64 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v59 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC275F0, &qword_1DB2C0160);
  v60 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v59 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC275F8, &qword_1DB2C0168);
  v62 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v86 = &v59 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27600, &qword_1DB2C0170);
  v61 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27608, &qword_1DB2C0178);
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27610, &qword_1DB2C0180);
  v68 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27618, &qword_1DB2C0188);
  v90 = *(v19 - 8);
  v91 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB15CCD8();
  v93 = v21;
  sub_1DB2BBA94();
  v22 = v2[1];
  v89 = *v2;
  v23 = v2[3];
  v24 = v2[4];
  v25 = v2[5];
  v26 = *(v2 + 48);
  if (v26 > 4)
  {
    if (*(v2 + 48) <= 7u)
    {
      v28 = v91;
      v27 = v92;
      if (v26 == 5)
      {
        v95 = 5;
        sub_1DB15CED0();
        v30 = v70;
        v29 = v93;
        sub_1DB2BB804();
        v31 = v71;
        sub_1DB2BB864();
        v32 = &v94;
      }

      else
      {
        v29 = v93;
        if (v26 != 6)
        {
          v86 = v2[5];
          v87 = v24;
          v88 = v23;
          v95 = 7;
          sub_1DB15CE28();
          v55 = v76;
          sub_1DB2BB804();
          v95 = 0;
          v56 = v83;
          sub_1DB2BB864();
          if (!v27)
          {
            v95 = 1;
            sub_1DB2BB864();
            v95 = 2;
            sub_1DB2BB864();
          }

          (*(v67 + 8))(v55, v56);
          goto LABEL_28;
        }

        v95 = 6;
        sub_1DB15CE7C();
        v30 = v72;
        sub_1DB2BB804();
        v31 = v73;
        sub_1DB2BB864();
        v32 = &v96;
      }

      (*(*(v32 - 32) + 8))(v30, v31);
LABEL_28:
      v50 = *(v90 + 8);
      v51 = v29;
      goto LABEL_29;
    }

    v39 = v91;
    v40 = v92;
    if (v26 == 8)
    {
      v95 = 8;
      sub_1DB15CDD4();
      v42 = v75;
      v41 = v93;
      sub_1DB2BB804();
      v95 = 0;
      v43 = v81;
      sub_1DB2BB864();
      if (!v40)
      {
        v95 = 1;
        sub_1DB2BB864();
      }

      v44 = v78;
    }

    else
    {
      v41 = v93;
      if (v26 != 9)
      {
        v95 = 10;
        sub_1DB15CD2C();
        v58 = v77;
        sub_1DB2BB804();
        (*(v80 + 8))(v58, v82);
        goto LABEL_31;
      }

      v95 = 9;
      sub_1DB15CD80();
      v42 = v74;
      sub_1DB2BB804();
      v43 = v79;
      sub_1DB2BB864();
      v44 = v66;
    }

    (*(v44 + 8))(v42, v43);
LABEL_31:
    v50 = *(v90 + 8);
    v51 = v41;
    v57 = v39;
    return v50(v51, v57);
  }

  v34 = v84;
  v33 = v85;
  v36 = v86;
  v35 = v87;
  v83 = v22;
  v37 = v88;
  if (v26 <= 1)
  {
    v45 = v92;
    if (!v26)
    {
      v95 = 0;
      sub_1DB15D074();
      v46 = v91;
      v47 = v93;
      sub_1DB2BB804();
      sub_1DB2BB864();
      (*(v68 + 8))(v18, v16);
      return (*(v90 + 8))(v47, v46);
    }

    v86 = v25;
    v87 = v24;
    v88 = v23;
    v95 = 1;
    sub_1DB15D020();
    v52 = v15;
    v28 = v91;
    v53 = v93;
    sub_1DB2BB804();
    v95 = 0;
    sub_1DB2BB864();
    if (v45)
    {
      v54 = v63;
    }

    else
    {
      v95 = 1;
      sub_1DB2BB864();
      v54 = v63;
      v95 = 2;
      sub_1DB2BB864();
    }

    (*(v54 + 8))(v52, v13);
    v50 = *(v90 + 8);
    v51 = v53;
    goto LABEL_29;
  }

  if (v26 != 2)
  {
    v28 = v91;
    if (v26 == 3)
    {
      v95 = 3;
      sub_1DB15CF78();
      v29 = v93;
      sub_1DB2BB804();
      v38 = v69;
      sub_1DB2BB864();
      (*(v62 + 8))(v36, v38);
    }

    else
    {
      v95 = 4;
      sub_1DB15CF24();
      v29 = v93;
      sub_1DB2BB804();
      sub_1DB2BB864();
      (*(v60 + 8))(v35, v37);
    }

    goto LABEL_28;
  }

  v95 = 2;
  sub_1DB15CFCC();
  v28 = v91;
  v49 = v93;
  sub_1DB2BB804();
  sub_1DB2BB864();
  (*(v61 + 8))(v34, v33);
  v50 = *(v90 + 8);
  v51 = v49;
LABEL_29:
  v57 = v28;
  return v50(v51, v57);
}

uint64_t sub_1DB15A648@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB15B4C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB15A67C(uint64_t a1)
{
  v2 = sub_1DB15CCD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15A6B8(uint64_t a1)
{
  v2 = sub_1DB15CCD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15A6F4(uint64_t a1)
{
  v2 = sub_1DB15CE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15A730(uint64_t a1)
{
  v2 = sub_1DB15CE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15A780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB15A804(uint64_t a1)
{
  v2 = sub_1DB15CD80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15A840(uint64_t a1)
{
  v2 = sub_1DB15CD80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15A87C(uint64_t a1)
{
  v2 = sub_1DB15CFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15A8B8(uint64_t a1)
{
  v2 = sub_1DB15CFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15A8F4(uint64_t a1)
{
  v2 = sub_1DB15CED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15A930(uint64_t a1)
{
  v2 = sub_1DB15CED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15A984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB15AA0C(uint64_t a1)
{
  v2 = sub_1DB15D074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15AA48(uint64_t a1)
{
  v2 = sub_1DB15D074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15AA84(uint64_t a1)
{
  v2 = sub_1DB15CF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15AAC0(uint64_t a1)
{
  v2 = sub_1DB15CF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15AAFC()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

uint64_t sub_1DB15AB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB15AC0C(uint64_t a1)
{
  v2 = sub_1DB15CDD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15AC48(uint64_t a1)
{
  v2 = sub_1DB15CDD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15AC84(uint64_t a1)
{
  v2 = sub_1DB15CE7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15ACC0(uint64_t a1)
{
  v2 = sub_1DB15CE7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15ACFC(uint64_t a1)
{
  v2 = sub_1DB15D020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15AD38(uint64_t a1)
{
  v2 = sub_1DB15D020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15AD74(uint64_t a1)
{
  v2 = sub_1DB15CF24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15ADB0(uint64_t a1)
{
  v2 = sub_1DB15CF24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15ADEC(uint64_t a1)
{
  v2 = sub_1DB15CD2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15AE28(uint64_t a1)
{
  v2 = sub_1DB15CD2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DB15AE70@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DB15B940(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_1DB15AF68(void *a1)
{
  a1[1] = sub_1DB15AFA0();
  a1[2] = sub_1DB15AFF4();
  result = sub_1DB15B048();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB15AFA0()
{
  result = qword_1ECC274E8;
  if (!qword_1ECC274E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC274E8);
  }

  return result;
}

unint64_t sub_1DB15AFF4()
{
  result = qword_1ECC274F0;
  if (!qword_1ECC274F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC274F0);
  }

  return result;
}

unint64_t sub_1DB15B048()
{
  result = qword_1ECC274F8;
  if (!qword_1ECC274F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC274F8);
  }

  return result;
}

uint64_t sub_1DB15B09C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE13F2E0 != -1)
  {
    swift_once();
  }

  sub_1DB2BBAF4();
  v4 = v23;
  v5 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  v21 = sub_1DB156674(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v20[3] = MEMORY[0x1E69E6158];
  v20[0] = a1;
  v20[1] = a2;
  sub_1DB1567F4(v20, v16);
  v17 = 0u;
  v18 = 0u;

  sub_1DB156864(v16, &v17);
  v19 = 0;
  v8 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB156674(0, *(v8 + 2) + 1, 1, v8);
    v21 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB156674((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v17;
  v13 = v18;
  v11[64] = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v21 = v8;
  sub_1DB1568D4(v20);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v6 + 32) = v21;
  Logger.error(_:)(v6, v4, v5);

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1DB15B294(uint64_t a1)
{
  if (qword_1EE13F2E0 != -1)
  {
    swift_once();
  }

  sub_1DB2BBAF4();
  v1 = v23;
  v2 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB2BCC40;
  v21 = sub_1DB156674(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v20[3] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
  sub_1DB1567F4(v20, v14);
  v15 = 0u;
  v16 = 0u;
  sub_1DB156864(v14, &v15);
  v17 = 0;
  v6 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB156674(0, *(v6 + 2) + 1, 1, v6);
    v21 = v6;
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB156674((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v15;
  v11 = v16;
  v9[64] = v17;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v21 = v6;
  sub_1DB1568D4(v20);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v21;
  Logger.error(_:)(v3, v1, v2);

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1DB15B4C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DB2D42A0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DB2D4200 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB2D41C0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB2D4120 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DB2D4080 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DB2D3FF0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DB2D3F70 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DB2D3EF0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x456E776F6E6B6E75 && a2 == 0xEC000000726F7272 || (sub_1DB2BB924() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB2D3E10 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DB2D3D70 == a2)
  {

    return 10;
  }

  else
  {
    v5 = sub_1DB2BB924();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1DB15B840(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB15B940@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27500, &qword_1DB2C00C8);
  v116 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v125 = &v98 - v3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27508, &qword_1DB2C00D0);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v127 = &v98 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27510, &qword_1DB2C00D8);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v132 = &v98 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27518, &qword_1DB2C00E0);
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v128 = &v98 - v6;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27520, &qword_1DB2C00E8);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v126 = &v98 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27528, &qword_1DB2C00F0);
  v111 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v131 = &v98 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27530, &qword_1DB2C00F8);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v124 = &v98 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27538, &qword_1DB2C0100);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v123 = &v98 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27540, &qword_1DB2C0108);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v130 = &v98 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27548, &qword_1DB2C0110);
  v121 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v13 = &v98 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27550, &qword_1DB2C0118);
  v102 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27558, &unk_1DB2C0120);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v98 - v19;
  v21 = a1[3];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1DB15CCD8();
  v22 = v133;
  sub_1DB2BBA84();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v134);
  }

  v100 = v16;
  v99 = v14;
  v23 = v13;
  v25 = v130;
  v24 = v131;
  v26 = v132;
  v101 = 0;
  v133 = v18;
  v27 = v17;
  v28 = sub_1DB2BB7D4();
  v29 = (2 * *(v28 + 16)) | 1;
  v135 = v28;
  v136 = v28 + 32;
  v137 = 0;
  v138 = v29;
  v30 = sub_1DB14AC28();
  if (v30 == 11 || v137 != v138 >> 1)
  {
    v36 = sub_1DB2BB564();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
    *v38 = &type metadata for SQLiteError;
    sub_1DB2BB714();
    sub_1DB2BB554();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    goto LABEL_11;
  }

  v139 = v30;
  if (v30 > 4u)
  {
    if (v30 > 7u)
    {
      v31 = v129;
      if (v30 == 8)
      {
        v140 = 8;
        sub_1DB15CDD4();
        v57 = v26;
        v58 = v101;
        sub_1DB2BB704();
        if (!v58)
        {
          v140 = 0;
          v59 = v115;
          v60 = sub_1DB2BB774();
          v86 = v71;
          v125 = v60;
          v140 = 1;
          v72 = v59;
          v78 = sub_1DB2BB774();
          v73 = (v133 + 8);
          v101 = 0;
          v79 = v91;
          (*(v114 + 8))(v57, v72);
          (*v73)(v20, v27);
          swift_unknownObjectRelease();
LABEL_46:
          v80 = 0;
          v81 = 0;
          goto LABEL_47;
        }
      }

      else if (v30 == 9)
      {
        v140 = 9;
        sub_1DB15CD80();
        v33 = v127;
        v45 = v101;
        sub_1DB2BB704();
        if (!v45)
        {
          v34 = v118;
          v46 = sub_1DB2BB774();
          v86 = v88;
          v101 = 0;
          v125 = v46;
          v87 = &v142;
          goto LABEL_43;
        }
      }

      else
      {
        v140 = 10;
        sub_1DB15CD2C();
        v63 = v125;
        v64 = v101;
        sub_1DB2BB704();
        if (!v64)
        {
          v101 = 0;
          (*(v116 + 8))(v63, v119);
          (*(v133 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v125 = 0;
          v86 = 0;
LABEL_45:
          v78 = 0;
          v79 = 0;
          goto LABEL_46;
        }
      }

      goto LABEL_11;
    }

    v31 = v129;
    if (v30 == 5)
    {
      v140 = 5;
      sub_1DB15CED0();
      v53 = v24;
      v54 = v101;
      sub_1DB2BB704();
      if (!v54)
      {
        v55 = v110;
        v56 = sub_1DB2BB774();
        v86 = v70;
        v101 = 0;
        v125 = v56;
        (*(v111 + 8))(v53, v55);
LABEL_44:
        (*(v133 + 8))(v20, v27);
        swift_unknownObjectRelease();
        goto LABEL_45;
      }
    }

    else
    {
      v32 = v101;
      if (v30 == 6)
      {
        v140 = 6;
        sub_1DB15CE7C();
        v33 = v126;
        sub_1DB2BB704();
        if (!v32)
        {
          v34 = v113;
          v35 = sub_1DB2BB774();
          v86 = v85;
          v101 = 0;
          v125 = v35;
          v87 = &v141;
LABEL_43:
          (*(*(v87 - 32) + 8))(v33, v34);
          goto LABEL_44;
        }

        goto LABEL_11;
      }

      v140 = 7;
      sub_1DB15CE28();
      sub_1DB2BB704();
      if (!v32)
      {
        v140 = 0;
        v62 = sub_1DB2BB774();
        v86 = v89;
        v90 = v62;
        v140 = 1;
        v78 = sub_1DB2BB774();
        v79 = v94;
        v125 = v90;
        v140 = 2;
        v95 = sub_1DB2BB774();
        v101 = 0;
        v80 = v95;
        v81 = v97;
        (*(v120 + 8))(v128, v122);
        (*(v133 + 8))(v20, v27);
        swift_unknownObjectRelease();
        goto LABEL_47;
      }
    }

LABEL_11:
    (*(v133 + 8))(v20, v27);
LABEL_12:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v134);
  }

  v40 = v101;
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      v140 = 2;
      sub_1DB15CFCC();
      v41 = v27;
      sub_1DB2BB704();
      if (!v40)
      {
        v50 = v104;
        v51 = sub_1DB2BB774();
        v52 = v133;
        v101 = 0;
        v75 = v69;
        v125 = v51;
        (*(v103 + 8))(v25, v50);
        (*(v52 + 8))(v20, v41);
        goto LABEL_42;
      }
    }

    else
    {
      v41 = v27;
      if (v30 == 3)
      {
        v140 = 3;
        sub_1DB15CF78();
        v42 = v123;
        sub_1DB2BB704();
        if (!v40)
        {
          v43 = v107;
          v44 = sub_1DB2BB774();
          v101 = 0;
          v125 = v44;
          v75 = v74;
          (*(v106 + 8))(v42, v43);
          (*(v133 + 8))(v20, v41);
LABEL_42:
          swift_unknownObjectRelease();
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v31 = v129;
          v86 = v75;
          goto LABEL_47;
        }
      }

      else
      {
        v140 = 4;
        sub_1DB15CF24();
        v61 = v124;
        sub_1DB2BB704();
        if (!v40)
        {
          v65 = v109;
          v66 = sub_1DB2BB774();
          v67 = v133;
          v101 = 0;
          v125 = v66;
          v75 = v76;
          (*(v108 + 8))(v61, v65);
          (*(v67 + 8))(v20, v41);
          goto LABEL_42;
        }
      }
    }

    (*(v133 + 8))(v20, v41);
    goto LABEL_12;
  }

  if (v30)
  {
    v140 = 1;
    sub_1DB15D020();
    sub_1DB2BB704();
    if (!v40)
    {
      v140 = 0;
      v68 = v105;
      v82 = sub_1DB2BB774();
      v132 = v83;
      v140 = 1;
      v84 = v23;
      v78 = sub_1DB2BB774();
      v79 = v92;
      v125 = v82;
      v140 = 2;
      v93 = sub_1DB2BB774();
      v101 = 0;
      v80 = v93;
      v81 = v96;
      (*(v121 + 8))(v84, v68);
      (*(v133 + 8))(v20, v27);
      swift_unknownObjectRelease();
      v86 = v132;
      v31 = v129;
      goto LABEL_47;
    }

    goto LABEL_11;
  }

  v140 = 0;
  sub_1DB15D074();
  v47 = v100;
  sub_1DB2BB704();
  if (v40)
  {
    goto LABEL_11;
  }

  v48 = v99;
  v49 = sub_1DB2BB774();
  v86 = v77;
  v101 = 0;
  v125 = v49;
  (*(v102 + 8))(v47, v48);
  (*(v133 + 8))(v20, v27);
  swift_unknownObjectRelease();
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v31 = v129;
LABEL_47:
  result = __swift_destroy_boxed_opaque_existential_1(v134);
  *v31 = v125;
  *(v31 + 8) = v86;
  *(v31 + 16) = v78;
  *(v31 + 24) = v79;
  *(v31 + 32) = v80;
  *(v31 + 40) = v81;
  *(v31 + 48) = v139;
  return result;
}

unint64_t sub_1DB15CCD8()
{
  result = qword_1ECC27560;
  if (!qword_1ECC27560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27560);
  }

  return result;
}

unint64_t sub_1DB15CD2C()
{
  result = qword_1ECC27568;
  if (!qword_1ECC27568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27568);
  }

  return result;
}

unint64_t sub_1DB15CD80()
{
  result = qword_1ECC27570;
  if (!qword_1ECC27570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27570);
  }

  return result;
}

unint64_t sub_1DB15CDD4()
{
  result = qword_1ECC27578;
  if (!qword_1ECC27578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27578);
  }

  return result;
}

unint64_t sub_1DB15CE28()
{
  result = qword_1ECC27580;
  if (!qword_1ECC27580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27580);
  }

  return result;
}

unint64_t sub_1DB15CE7C()
{
  result = qword_1ECC27588;
  if (!qword_1ECC27588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27588);
  }

  return result;
}

unint64_t sub_1DB15CED0()
{
  result = qword_1ECC27590;
  if (!qword_1ECC27590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27590);
  }

  return result;
}

unint64_t sub_1DB15CF24()
{
  result = qword_1ECC27598;
  if (!qword_1ECC27598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27598);
  }

  return result;
}

unint64_t sub_1DB15CF78()
{
  result = qword_1ECC275A0;
  if (!qword_1ECC275A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC275A0);
  }

  return result;
}

unint64_t sub_1DB15CFCC()
{
  result = qword_1ECC275A8;
  if (!qword_1ECC275A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC275A8);
  }

  return result;
}

unint64_t sub_1DB15D020()
{
  result = qword_1ECC275B0;
  if (!qword_1ECC275B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC275B0);
  }

  return result;
}

unint64_t sub_1DB15D074()
{
  result = qword_1ECC275B8;
  if (!qword_1ECC275B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC275B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB15D2CC()
{
  result = qword_1ECC27620;
  if (!qword_1ECC27620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27620);
  }

  return result;
}

unint64_t sub_1DB15D324()
{
  result = qword_1ECC27628;
  if (!qword_1ECC27628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27628);
  }

  return result;
}

unint64_t sub_1DB15D37C()
{
  result = qword_1ECC27630;
  if (!qword_1ECC27630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27630);
  }

  return result;
}

unint64_t sub_1DB15D3D4()
{
  result = qword_1ECC27638;
  if (!qword_1ECC27638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27638);
  }

  return result;
}

unint64_t sub_1DB15D42C()
{
  result = qword_1ECC27640;
  if (!qword_1ECC27640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27640);
  }

  return result;
}

unint64_t sub_1DB15D484()
{
  result = qword_1ECC27648;
  if (!qword_1ECC27648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27648);
  }

  return result;
}

unint64_t sub_1DB15D4DC()
{
  result = qword_1ECC27650;
  if (!qword_1ECC27650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27650);
  }

  return result;
}

unint64_t sub_1DB15D534()
{
  result = qword_1ECC27658;
  if (!qword_1ECC27658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27658);
  }

  return result;
}

unint64_t sub_1DB15D58C()
{
  result = qword_1ECC27660;
  if (!qword_1ECC27660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27660);
  }

  return result;
}

unint64_t sub_1DB15D5E4()
{
  result = qword_1ECC27668;
  if (!qword_1ECC27668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27668);
  }

  return result;
}

unint64_t sub_1DB15D63C()
{
  result = qword_1ECC27670;
  if (!qword_1ECC27670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27670);
  }

  return result;
}

unint64_t sub_1DB15D694()
{
  result = qword_1ECC27678;
  if (!qword_1ECC27678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27678);
  }

  return result;
}

unint64_t sub_1DB15D6EC()
{
  result = qword_1ECC27680;
  if (!qword_1ECC27680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27680);
  }

  return result;
}

unint64_t sub_1DB15D744()
{
  result = qword_1ECC27688;
  if (!qword_1ECC27688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27688);
  }

  return result;
}

unint64_t sub_1DB15D79C()
{
  result = qword_1ECC27690;
  if (!qword_1ECC27690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27690);
  }

  return result;
}

unint64_t sub_1DB15D7F4()
{
  result = qword_1ECC27698;
  if (!qword_1ECC27698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27698);
  }

  return result;
}

unint64_t sub_1DB15D84C()
{
  result = qword_1ECC276A0;
  if (!qword_1ECC276A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276A0);
  }

  return result;
}

unint64_t sub_1DB15D8A4()
{
  result = qword_1ECC276A8;
  if (!qword_1ECC276A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276A8);
  }

  return result;
}

unint64_t sub_1DB15D8FC()
{
  result = qword_1ECC276B0;
  if (!qword_1ECC276B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276B0);
  }

  return result;
}

unint64_t sub_1DB15D954()
{
  result = qword_1ECC276B8;
  if (!qword_1ECC276B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276B8);
  }

  return result;
}

unint64_t sub_1DB15D9AC()
{
  result = qword_1ECC276C0;
  if (!qword_1ECC276C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276C0);
  }

  return result;
}

unint64_t sub_1DB15DA04()
{
  result = qword_1ECC276C8;
  if (!qword_1ECC276C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276C8);
  }

  return result;
}

unint64_t sub_1DB15DA5C()
{
  result = qword_1ECC276D0;
  if (!qword_1ECC276D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276D0);
  }

  return result;
}

unint64_t sub_1DB15DAB4()
{
  result = qword_1ECC276D8;
  if (!qword_1ECC276D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276D8);
  }

  return result;
}

unint64_t sub_1DB15DB0C()
{
  result = qword_1ECC276E0;
  if (!qword_1ECC276E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276E0);
  }

  return result;
}

unint64_t sub_1DB15DB64()
{
  result = qword_1ECC276E8;
  if (!qword_1ECC276E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276E8);
  }

  return result;
}

unint64_t sub_1DB15DBBC()
{
  result = qword_1ECC276F0;
  if (!qword_1ECC276F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276F0);
  }

  return result;
}

unint64_t sub_1DB15DC14()
{
  result = qword_1ECC276F8;
  if (!qword_1ECC276F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC276F8);
  }

  return result;
}

unint64_t sub_1DB15DC6C()
{
  result = qword_1ECC27700;
  if (!qword_1ECC27700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27700);
  }

  return result;
}

unint64_t sub_1DB15DCC4()
{
  result = qword_1ECC27708;
  if (!qword_1ECC27708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27708);
  }

  return result;
}

unint64_t sub_1DB15DD1C()
{
  result = qword_1ECC27710;
  if (!qword_1ECC27710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27710);
  }

  return result;
}

unint64_t sub_1DB15DD74()
{
  result = qword_1ECC27718;
  if (!qword_1ECC27718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27718);
  }

  return result;
}

unint64_t sub_1DB15DDCC()
{
  result = qword_1ECC27720;
  if (!qword_1ECC27720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27720);
  }

  return result;
}

unint64_t sub_1DB15DE24()
{
  result = qword_1ECC27728;
  if (!qword_1ECC27728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27728);
  }

  return result;
}

unint64_t sub_1DB15DE7C()
{
  result = qword_1ECC27730;
  if (!qword_1ECC27730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27730);
  }

  return result;
}

void sub_1DB15DEE0(uint64_t a1)
{
  if (qword_1EE13FF58 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE13FF60 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB15E350((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC41F10 = v2;
}

uint64_t sub_1DB15DFC0(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE13FF58 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE13FF60 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB15E350((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27738, &qword_1DB2C0F68);
  swift_allocObject();
  result = sub_1DB2BBAE4();
  qword_1EE14C878 = result;
  return result;
}

void sub_1DB15E0FC(uint64_t a1)
{
  if (qword_1EE13FF58 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE13FF60 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB15E330((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC41F18 = v2;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DB15E2B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DB2BAA64();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DB2BAA54();
}

uint64_t sub_1DB15E384(uint64_t a1)
{
  v2 = sub_1DB15EF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15E3C0(uint64_t a1)
{
  v2 = sub_1DB15EF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15E3FC(uint64_t a1)
{
  v2 = sub_1DB15EF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15E438(uint64_t a1)
{
  v2 = sub_1DB15EF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15E474()
{
  v1 = *v0;
  v2 = 1651469410;
  v3 = 7630441;
  v4 = 0x3436746E69;
  if (v1 != 4)
  {
    v4 = 0x676E69727473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1819242338;
  if (v1 != 1)
  {
    v5 = 0x656C62756F64;
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

uint64_t sub_1DB15E508@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB1607A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB15E530(uint64_t a1)
{
  v2 = sub_1DB15ED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15E56C(uint64_t a1)
{
  v2 = sub_1DB15ED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15E5A8(uint64_t a1)
{
  v2 = sub_1DB15EEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15E5E4(uint64_t a1)
{
  v2 = sub_1DB15EEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15E620(uint64_t a1)
{
  v2 = sub_1DB15EE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15E65C(uint64_t a1)
{
  v2 = sub_1DB15EE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15E698(uint64_t a1)
{
  v2 = sub_1DB15EE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15E6D4(uint64_t a1)
{
  v2 = sub_1DB15EE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15E710(uint64_t a1)
{
  v2 = sub_1DB15EDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15E74C(uint64_t a1)
{
  v2 = sub_1DB15EDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BindingCodableType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27740, &qword_1DB2C0F70);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27748, &qword_1DB2C0F78);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27750, &qword_1DB2C0F80);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27758, &qword_1DB2C0F88);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27760, &qword_1DB2C0F90);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27768, &qword_1DB2C0F98);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27770, &qword_1DB2C0FA0);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB15ED74();
  sub_1DB2BBA94();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1DB15EE70();
      v21 = v33;
      v22 = v42;
      sub_1DB2BB804();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1DB15EE1C();
      v21 = v36;
      v22 = v42;
      sub_1DB2BB804();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1DB15EDC8();
      v21 = v39;
      v22 = v42;
      sub_1DB2BB804();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1DB15EF18();
      v21 = v27;
      v22 = v42;
      sub_1DB2BB804();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1DB15EEC4();
      v21 = v30;
      v22 = v42;
      sub_1DB2BB804();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1DB15EF6C();
  v22 = v42;
  sub_1DB2BB804();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1DB15ED74()
{
  result = qword_1EE13F890;
  if (!qword_1EE13F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F890);
  }

  return result;
}

unint64_t sub_1DB15EDC8()
{
  result = qword_1EE13F818;
  if (!qword_1EE13F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F818);
  }

  return result;
}

unint64_t sub_1DB15EE1C()
{
  result = qword_1EE13F370[0];
  if (!qword_1EE13F370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE13F370);
  }

  return result;
}

unint64_t sub_1DB15EE70()
{
  result = qword_1ECC27778;
  if (!qword_1ECC27778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27778);
  }

  return result;
}

unint64_t sub_1DB15EEC4()
{
  result = qword_1ECC27780;
  if (!qword_1ECC27780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27780);
  }

  return result;
}

unint64_t sub_1DB15EF18()
{
  result = qword_1ECC27788;
  if (!qword_1ECC27788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27788);
  }

  return result;
}

unint64_t sub_1DB15EF6C()
{
  result = qword_1ECC27790;
  if (!qword_1ECC27790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27790);
  }

  return result;
}

uint64_t BindingCodableType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t BindingCodableType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27798, &qword_1DB2C0FA8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC277A0, &qword_1DB2C0FB0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC277A8, &qword_1DB2C0FB8);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC277B0, &qword_1DB2C0FC0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC277B8, &qword_1DB2C0FC8);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC277C0, &qword_1DB2C0FD0);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC277C8, &unk_1DB2C0FD8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1DB15ED74();
  v22 = v56;
  sub_1DB2BBA84();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1DB2BB7D4();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1DB14B1E4();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1DB2BB564();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v36 = &type metadata for BindingCodableType;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1DB15EE70();
          sub_1DB2BB704();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1DB15EE1C();
          sub_1DB2BB704();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1DB15EDC8();
          sub_1DB2BB704();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1DB15EF18();
            v31 = v56;
            sub_1DB2BB704();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1DB15EEC4();
            v31 = v51;
            sub_1DB2BB704();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1DB15EF6C();
          sub_1DB2BB704();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1DB15F828()
{
  if (*v0)
  {
    return 1702060386;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DB15F84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB15F928(uint64_t a1)
{
  v2 = sub_1DB160998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB15F964(uint64_t a1)
{
  v2 = sub_1DB160998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB15F9A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC277F8, &qword_1DB2C1710);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB160998();
  sub_1DB2BBA84();
  if (!v2)
  {
    v15[8] = 0;
    sub_1DB160AB0();
    sub_1DB2BB764();
    if (v16 == 6)
    {
      (*(v6 + 8))(v8, v5);
      v9 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
    }

    else
    {
      if (v16 > 2u)
      {
        if (v16 == 3)
        {
          v14 = &protocol witness table for Int;
          v13 = MEMORY[0x1E69E6530];
        }

        else if (v16 == 4)
        {
          v14 = &protocol witness table for Int64;
          v13 = MEMORY[0x1E69E7360];
        }

        else
        {
          v14 = &protocol witness table for String;
          v13 = MEMORY[0x1E69E6158];
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          v13 = MEMORY[0x1E69E6370];
        }

        else
        {
          v13 = MEMORY[0x1E69E63B0];
        }

        if (v16 == 1)
        {
          v14 = &protocol witness table for Bool;
        }

        else
        {
          v14 = &protocol witness table for Double;
        }
      }

      else
      {
        v13 = &type metadata for Blob;
        v14 = sub_1DB138CA8();
      }

      v19 = 1;
      sub_1DB2BB724();
      *(&v17 + 1) = v13;
      v18 = v14;
      __swift_allocate_boxed_opaque_existential_0(&v16);
      sub_1DB2BB1C4();
      (*(v6 + 8))(v8, v5);
      v10 = v16;
      v11 = v17;
      v9 = v18;
    }

    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB15FC6C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC277F0, &unk_1DB2C1700);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB160998();
  sub_1DB2BBA94();
  sub_1DB1609EC(v3, &v10);
  if (v11)
  {
    sub_1DB1355D0(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v13);
    swift_getDynamicType();
    (*(v14 + 24))(&v10);
    v15 = 0;
    sub_1DB160A5C();
    sub_1DB2BB8A4();
    if (!v2)
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v15 = 1;
      sub_1DB2BB814();
      sub_1DB2BACE4();
      __swift_destroy_boxed_opaque_existential_1(&v10);
    }

    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return sub_1DB145A68(&v10);
  }
}

unint64_t sub_1DB15FF10()
{
  result = qword_1ECC277D0;
  if (!qword_1ECC277D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC277D0);
  }

  return result;
}

unint64_t sub_1DB15FF68()
{
  result = qword_1ECC277D8;
  if (!qword_1ECC277D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC277E0, &qword_1DB2C10A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC277D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore7Binding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB160008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DB160064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpressibleCodableType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExpressibleCodableType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB160284()
{
  result = qword_1ECC277E8;
  if (!qword_1ECC277E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC277E8);
  }

  return result;
}

unint64_t sub_1DB1602DC()
{
  result = qword_1EE13F860;
  if (!qword_1EE13F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F860);
  }

  return result;
}

unint64_t sub_1DB160334()
{
  result = qword_1EE13F868;
  if (!qword_1EE13F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F868);
  }

  return result;
}

unint64_t sub_1DB16038C()
{
  result = qword_1EE13F850;
  if (!qword_1EE13F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F850);
  }

  return result;
}

unint64_t sub_1DB1603E4()
{
  result = qword_1EE13F858;
  if (!qword_1EE13F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F858);
  }

  return result;
}

unint64_t sub_1DB16043C()
{
  result = qword_1EE13F830;
  if (!qword_1EE13F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F830);
  }

  return result;
}

unint64_t sub_1DB160494()
{
  result = qword_1EE13F838;
  if (!qword_1EE13F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F838);
  }

  return result;
}

unint64_t sub_1DB1604EC()
{
  result = qword_1EE13F870;
  if (!qword_1EE13F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F870);
  }

  return result;
}

unint64_t sub_1DB160544()
{
  result = qword_1EE13F878;
  if (!qword_1EE13F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F878);
  }

  return result;
}

unint64_t sub_1DB16059C()
{
  result = qword_1EE13F840;
  if (!qword_1EE13F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F840);
  }

  return result;
}

unint64_t sub_1DB1605F4()
{
  result = qword_1EE13F848;
  if (!qword_1EE13F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F848);
  }

  return result;
}

unint64_t sub_1DB16064C()
{
  result = qword_1EE13F828;
  if (!qword_1EE13F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F828);
  }

  return result;
}

unint64_t sub_1DB1606A4()
{
  result = qword_1EE13F820;
  if (!qword_1EE13F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F820);
  }

  return result;
}

unint64_t sub_1DB1606FC()
{
  result = qword_1EE13F880;
  if (!qword_1EE13F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F880);
  }

  return result;
}

unint64_t sub_1DB160754()
{
  result = qword_1EE13F888;
  if (!qword_1EE13F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F888);
  }

  return result;
}

uint64_t sub_1DB1607A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1651469410 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1DB160998()
{
  result = qword_1EE1401E0;
  if (!qword_1EE1401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1401E0);
  }

  return result;
}

uint64_t sub_1DB1609EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB160A5C()
{
  result = qword_1EE13F368;
  if (!qword_1EE13F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F368);
  }

  return result;
}

unint64_t sub_1DB160AB0()
{
  result = qword_1EE13F360;
  if (!qword_1EE13F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F360);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1E1284BF0);
  }

  return result;
}

unint64_t sub_1DB160B68()
{
  result = qword_1ECC27800;
  if (!qword_1ECC27800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27800);
  }

  return result;
}

unint64_t sub_1DB160BC0()
{
  result = qword_1EE1401D0;
  if (!qword_1EE1401D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1401D0);
  }

  return result;
}

unint64_t sub_1DB160C18()
{
  result = qword_1EE1401D8;
  if (!qword_1EE1401D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1401D8);
  }

  return result;
}

void *static Expressible<>.expressibleCodableType.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 64))(&var1);
  if (!v2)
  {
    *a2 = var1;
    *(a2 + 2) = 2;
  }

  return result;
}

{
  result = (*(a1 + 56))(&var2);
  if (!v2)
  {
    *a2 = var2;
    *(a2 + 2) = 1;
  }

  return result;
}

{
  result = (*(a1 + 48))(&var2);
  if (!v2)
  {
    *a2 = var2;
    *(a2 + 2) = 0;
  }

  return result;
}

ValueMetadata *sub_1DB160CD0()
{
  if (*(v0 + 2) <= 1u)
  {
    if (*(v0 + 2))
    {
      return sub_1DB1F8BD8();
    }

    else
    {
      return sub_1DB165CE4();
    }
  }

  if (*(v0 + 2) != 2)
  {
    if (*v0)
    {
      if (*v0 == 1)
      {
        v3 = &type metadata for Collation;
        sub_1DB165B9C();
      }

      else
      {
        v3 = &type metadata for Module;
        sub_1DB165B48();
      }
    }

    else
    {
      v3 = &type metadata for Setter;
      sub_1DB165BF0();
    }

    return v3;
  }

  v2 = *v0;
  if (v2 <= 4)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {
        v3 = MEMORY[0x1E6969080];
        sub_1DB165C8C();
      }

      else
      {
        v3 = &type metadata for Blob;
        sub_1DB138BFC();
      }

      return v3;
    }

    if (v2 == 2)
    {
      v3 = sub_1DB2BA904();
      v5 = &unk_1EE13F288;
      v6 = MEMORY[0x1E6969530];
      v7 = MEMORY[0x1E6969558];
    }

    else
    {
      if (v2 == 3)
      {
        return MEMORY[0x1E69E6530];
      }

      v3 = sub_1DB2BA824();
      v5 = &unk_1ECC27960;
      v6 = MEMORY[0x1E6968FB0];
      v7 = MEMORY[0x1E6968FD0];
    }

LABEL_29:
    sub_1DB165C44(v5, v6, v7);
    return v3;
  }

  if (*v0 <= 6u)
  {
    if (v2 != 5)
    {
      return MEMORY[0x1E69E6370];
    }

    v3 = sub_1DB2BA944();
    v5 = &unk_1ECC27958;
    v6 = MEMORY[0x1E69695A8];
    v7 = MEMORY[0x1E69695D0];
    goto LABEL_29;
  }

  v4 = MEMORY[0x1E69E7360];
  if (v2 != 8)
  {
    v4 = MEMORY[0x1E69E6158];
  }

  if (v2 == 7)
  {
    return MEMORY[0x1E69E63B0];
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1DB160EFC()
{
  v1 = *v0;
  v2 = 0x7079547972657571;
  v3 = 0x726574746573;
  v4 = 0x6F6974616C6C6F63;
  if (v1 != 4)
  {
    v4 = 0x656C75646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6973736572707865;
  if (v1 != 1)
  {
    v5 = 0x65756C6176;
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

uint64_t sub_1DB160FBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB165944(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB160FE4(uint64_t a1)
{
  v2 = sub_1DB1643C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB161020(uint64_t a1)
{
  v2 = sub_1DB1643C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16105C(uint64_t a1)
{
  v2 = sub_1DB164470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB161098(uint64_t a1)
{
  v2 = sub_1DB164470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1610D4(uint64_t a1)
{
  v2 = sub_1DB1645C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB161110(uint64_t a1)
{
  v2 = sub_1DB1645C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16114C(uint64_t a1)
{
  v2 = sub_1DB16441C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB161188(uint64_t a1)
{
  v2 = sub_1DB16441C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1611C4(uint64_t a1)
{
  v2 = sub_1DB164668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB161200(uint64_t a1)
{
  v2 = sub_1DB164668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16123C(uint64_t a1)
{
  v2 = sub_1DB1644C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB161278(uint64_t a1)
{
  v2 = sub_1DB1644C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1612B4(uint64_t a1)
{
  v2 = sub_1DB164518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1612F0(uint64_t a1)
{
  v2 = sub_1DB164518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExpressibleCodableType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27808, &qword_1DB2C1830);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27810, &qword_1DB2C1838);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27818, &qword_1DB2C1840);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27820, &qword_1DB2C1848);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27828, &qword_1DB2C1850);
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27830, &qword_1DB2C1858);
  v42 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27838, &qword_1DB2C1860);
  v48 = *(v19 - 8);
  v49 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v47 = *v2;
  v22 = *(v2 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB1643C8();
  sub_1DB2BBA94();
  if (v22 <= 1)
  {
    if (!v22)
    {
      v51 = 0;
      sub_1DB164668();
      v23 = v49;
      sub_1DB2BB804();
      v50 = v47;
      sub_1DB1646BC();
      sub_1DB2BB8A4();
      (*(v42 + 8))(v18, v16);
      return (*(v48 + 8))(v21, v23);
    }

    v53 = 1;
    sub_1DB1645C0();
    v25 = v49;
    sub_1DB2BB804();
    v52 = v47;
    sub_1DB164614();
    v27 = v44;
    sub_1DB2BB8A4();
    (*(v43 + 8))(v15, v27);
    return (*(v48 + 8))(v21, v25);
  }

  if (v22 == 2)
  {
    v55 = 2;
    sub_1DB164518();
    v25 = v49;
    sub_1DB2BB804();
    v54 = v47;
    sub_1DB16456C();
    v26 = v46;
    sub_1DB2BB8A4();
    (*(v45 + 8))(v12, v26);
    return (*(v48 + 8))(v21, v25);
  }

  if (v47)
  {
    if (v47 == 1)
    {
      v57 = 4;
      sub_1DB164470();
      v28 = v36;
      v29 = v49;
      sub_1DB2BB804();
      v31 = v37;
      v30 = v38;
    }

    else
    {
      v58 = 5;
      sub_1DB16441C();
      v28 = v39;
      v29 = v49;
      sub_1DB2BB804();
      v31 = v40;
      v30 = v41;
    }
  }

  else
  {
    v56 = 3;
    sub_1DB1644C4();
    v28 = v33;
    v29 = v49;
    sub_1DB2BB804();
    v31 = v34;
    v30 = v35;
  }

  (*(v31 + 8))(v28, v30);
  return (*(v48 + 8))(v21, v29);
}

uint64_t ExpressibleCodableType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27858, &qword_1DB2C1868);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v43 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27860, &qword_1DB2C1870);
  v47 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27868, &qword_1DB2C1878);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27870, &qword_1DB2C1880);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27878, &qword_1DB2C1888);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27880, &qword_1DB2C1890);
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27888, &unk_1DB2C1898);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  v21 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1DB1643C8();
  v22 = v60;
  sub_1DB2BBA84();
  if (!v22)
  {
    v23 = v16;
    v60 = v14;
    v25 = v58;
    v24 = v59;
    v26 = sub_1DB2BB7D4();
    v27 = (2 * *(v26 + 16)) | 1;
    v62 = v26;
    v63 = v26 + 32;
    v64 = 0;
    v65 = v27;
    v28 = sub_1DB14B1E4();
    if (v28 == 6 || v64 != v65 >> 1)
    {
      v31 = sub_1DB2BB564();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v33 = &type metadata for ExpressibleCodableType;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28 > 2u)
      {
        if (v28 == 3)
        {
          LOBYTE(v66) = 3;
          sub_1DB1644C4();
          v38 = v25;
          sub_1DB2BB704();
          v35 = v57;
          (*(v48 + 8))(v38, v49);
          (*(v18 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v41 = 0;
          v42 = 3;
        }

        else
        {
          v35 = v57;
          if (v28 == 4)
          {
            LOBYTE(v66) = 4;
            sub_1DB164470();
            v36 = v56;
            sub_1DB2BB704();
            (*(v47 + 8))(v36, v54);
            (*(v18 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v42 = 3;
            v41 = 1;
          }

          else
          {
            LOBYTE(v66) = 5;
            sub_1DB16441C();
            sub_1DB2BB704();
            (*(v52 + 8))(v24, v53);
            (*(v18 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v42 = 3;
            v41 = 2;
          }
        }
      }

      else
      {
        if (v28)
        {
          if (v28 == 1)
          {
            LOBYTE(v66) = 1;
            sub_1DB1645C0();
            v29 = v13;
            sub_1DB2BB704();
            sub_1DB164764();
            v30 = v46;
            sub_1DB2BB7B4();
            (*(v45 + 8))(v29, v30);
            (*(v18 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v41 = v66;
            v42 = 1;
          }

          else
          {
            LOBYTE(v66) = 2;
            sub_1DB164518();
            v39 = v55;
            sub_1DB2BB704();
            sub_1DB164710();
            v40 = v50;
            sub_1DB2BB7B4();
            (*(v51 + 8))(v39, v40);
            (*(v18 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v41 = v66;
            v42 = 2;
          }
        }

        else
        {
          LOBYTE(v66) = 0;
          sub_1DB164668();
          sub_1DB2BB704();
          sub_1DB1647B8();
          v37 = v60;
          sub_1DB2BB7B4();
          (*(v44 + 8))(v23, v37);
          (*(v18 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v42 = 0;
          v41 = v66;
        }

        v35 = v57;
      }

      *v35 = v41;
      *(v35 + 2) = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_1DB1623A0()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_1DB1623C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB1624A0(uint64_t a1)
{
  v2 = sub_1DB16480C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1624DC(uint64_t a1)
{
  v2 = sub_1DB16480C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyExpressible.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27890, &qword_1DB2C18A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB16480C();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v15[0]) = 1;
    sub_1DB164860();
    sub_1DB2BB7B4();
    v20 = v17[0];
    v21 = BYTE2(v17[0]);
    v9 = sub_1DB160CD0();
    v14[0] = v10;
    v14[1] = v14;
    MEMORY[0x1EEE9AC00](v9);
    v22 = 0;
    sub_1DB2BB724();
    sub_1DB2BB1C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    v12 = swift_dynamicCast();
    if (v12)
    {
      (*(v6 + 8))(v8, v5);
      sub_1DB1355D0(v15, v17);
      sub_1DB1355D0(v17, v18);
      v13 = v18[1];
      *a2 = v18[0];
      *(a2 + 16) = v13;
      *(a2 + 32) = v19;
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      sub_1DB1648B4(v15);
      LOBYTE(v17[0]) = 0;
      sub_1DB2BB564();
      swift_allocError();
      sub_1DB16491C();
      sub_1DB2BB544();
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnyExpressible.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278A8, &qword_1DB2C18B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB16480C();
  sub_1DB2BBA94();
  sub_1DB164980(v3, &v15[1]);
  __swift_project_boxed_opaque_existential_1(&v15[1], *&v15[7]);
  DynamicType = swift_getDynamicType();
  v10 = *&v15[9];
  __swift_destroy_boxed_opaque_existential_1(&v15[1]);
  (*(v10 + 32))(v15, DynamicType, v10);
  if (!v2)
  {
    v13 = v15[0];
    v14 = BYTE2(v15[0]);
    v12[15] = 1;
    sub_1DB1649E4();
    sub_1DB2BB8A4();
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    LOBYTE(v15[0]) = 0;
    sub_1DB2BB814();
    sub_1DB2BACE4();
    __swift_destroy_boxed_opaque_existential_1(&v15[1]);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DB162AA4()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6E6D756C6F63;
  }
}

uint64_t sub_1DB162AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6D756C6F63 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB162BAC(uint64_t a1)
{
  v2 = sub_1DB164A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB162BE8(uint64_t a1)
{
  v2 = sub_1DB164A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Setter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278B0, &qword_1DB2C18B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB164A38();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  sub_1DB1355D0(v11, v12);
  v14 = 1;
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  sub_1DB1355D0(v11, &v13);
  sub_1DB164AE0(v12, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB164B3C(v12);
}

uint64_t Setter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278B8, &qword_1DB2C18C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB164A38();
  sub_1DB2BBA94();
  sub_1DB164980(v3, v11);
  HIBYTE(v10) = 0;
  sub_1DB164B90();
  sub_1DB2BB8A4();
  sub_1DB164BE4(v11);
  if (!v2)
  {
    sub_1DB164980(v3 + 40, v11);
    HIBYTE(v10) = 1;
    sub_1DB2BB8A4();
    sub_1DB164BE4(v11);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DB163010()
{
  if (*v0)
  {
    return 0x746E656D75677261;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DB163048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB16312C(uint64_t a1)
{
  v2 = sub_1DB164C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB163168(uint64_t a1)
{
  v2 = sub_1DB164C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Module.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278C0, &qword_1DB2C18C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB164C14();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_1DB2BB774();
  v12 = v11;
  v31 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  LOBYTE(v33[0]) = 1;
  sub_1DB164CF0(&qword_1EE13E640, sub_1DB164A8C, MEMORY[0x1E69E6330]);
  sub_1DB2BB7B4();
  v30 = v8;
  v13 = v37;
  v14 = *(v37 + 16);
  if (v14)
  {
    v26 = v12;
    v27 = v6;
    v28 = v5;
    v29 = a2;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v14, 0);
    v15 = v36;
    v25 = v13;
    v16 = v13 + 32;
    do
    {
      sub_1DB164C68(v16, v32);
      sub_1DB164980(v32, v33);
      sub_1DB164BE4(v32);
      v36 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DB1384B0((v17 > 1), v18 + 1, 1);
      }

      v19 = v34;
      v20 = v35;
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      MEMORY[0x1EEE9AC00](v21);
      v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      sub_1DB16412C(v18, v23, &v36, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v15 = v36;
      v16 += 40;
      --v14;
    }

    while (v14);
    (*(v27 + 8))(v30, v28);

    a2 = v29;
    v12 = v26;
  }

  else
  {

    (*(v6 + 8))(v30, v5);
    v15 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v31;
  a2[1] = v12;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Module.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D8, &qword_1DB2C18D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v20 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB164C14();
  sub_1DB2BBA94();
  LOBYTE(v22[0]) = 0;
  v7 = v21;
  sub_1DB2BB864();
  if (v7)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v21 = v4;
  v9 = v20;
  v10 = *(v20 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v19 = v3;
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
    v3 = v19;
  }

  *&v22[0] = v11;
  LOBYTE(v24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  sub_1DB164CF0(&qword_1EE13E648, sub_1DB164B90, MEMORY[0x1E69E6300]);
  sub_1DB2BB8A4();
  v18 = v21;

  return (*(v18 + 8))(v6, v3);
}

uint64_t static Expressible.expressibleCodableType.getter()
{
  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v0 = sub_1DB2BADF4();
  v2 = v1;
  sub_1DB135B68();
  swift_allocError();
  *v3 = 0xD000000000000016;
  *(v3 + 8) = 0x80000001DB2D4370;
  *(v3 + 16) = xmmword_1DB2C1820;
  *(v3 + 32) = v0;
  *(v3 + 40) = v2;
  *(v3 + 48) = 1;
  return swift_willThrow();
}

void static Expression<A>.expressibleCodableType.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 1;
}

{
  *a1 = 1;
  *(a1 + 2) = 1;
}

void *static Expression<A>.expressibleCodableType.getter@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  return sub_1DB163BCC(a1, type metadata accessor for Expression, static ExpressionType.expressionTypeCodableType.getter, 1, x8_0);
}

{
  return sub_1DB163CB8(a1, type metadata accessor for Expression, static ExpressionType.expressionTypeCodableType.getter, 1, x8_0);
}

void *static Select<A>.expressibleCodableType.getter@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  return sub_1DB163BCC(a1, type metadata accessor for Select, static ExpressionType.expressionTypeCodableType.getter, 1, x8_0);
}

{
  return sub_1DB163CB8(a1, type metadata accessor for Select, static ExpressionType.expressionTypeCodableType.getter, 1, x8_0);
}

void *static ScalarQuery<A>.expressibleCodableType.getter@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  return sub_1DB163BCC(a1, type metadata accessor for ScalarQuery, static QueryType.queryTypeCodableType.getter, 0, x8_0);
}

{
  return sub_1DB163CB8(a1, type metadata accessor for ScalarQuery, static QueryType.queryTypeCodableType.getter, 0, x8_0);
}

void *sub_1DB163BCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X2>, void *(*a4)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v10 = a2(0, a1);
  WitnessTable = swift_getWitnessTable();
  result = a4(&v13, v10, WitnessTable);
  if (!v6)
  {
    *a6 = v13;
    *(a6 + 2) = a5;
  }

  return result;
}

void *sub_1DB163CB8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X3>, void *(*a4)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X5>, char a5@<W6>, uint64_t a6@<X8>)
{
  v10 = a2(0, a1);
  WitnessTable = swift_getWitnessTable();
  result = a4(&v13, v10, WitnessTable);
  if (!v6)
  {
    *a6 = v13;
    *(a6 + 2) = a5;
  }

  return result;
}

void static Expressible<>.expressibleCodableType.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 3;
}

{
  *a1 = 1;
  *(a1 + 2) = 3;
}

{
  *a1 = 2;
  *(a1 + 2) = 3;
}

uint64_t sub_1DB163DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v8 = sub_1DB2BADF4();
  v10 = v9;
  sub_1DB135B68();
  swift_allocError();
  *v11 = 0xD000000000000016;
  *(v11 + 8) = 0x80000001DB2D4370;
  *(v11 + 16) = xmmword_1DB2C1820;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  *(v11 + 48) = 1;
  return swift_willThrow();
}

uint64_t sub_1DB16412C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1DB1355D0(&v12, v10 + 40 * a1 + 32);
}

BOOL _s19OnDeviceStorageCore22ExpressibleCodableTypeO2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 2);
  if (*(a1 + 2) > 1u)
  {
    if (*(a1 + 2) == 2)
    {
      if (v4 == 2)
      {
        return (v3 ^ v2) == 0;
      }
    }

    else if (*a1)
    {
      if (v2 == 1)
      {
        if (v4 == 3 && v3 == 1)
        {
          return 1;
        }
      }

      else if (v4 == 3 && v3 == 2)
      {
        return 1;
      }
    }

    else if (v4 == 3 && v3 == 0)
    {
      return 1;
    }
  }

  else if (*(a1 + 2))
  {
    if (v4 == 1)
    {
      v7 = v2 >> 14;
      if (v2 >> 14 > 1)
      {
        if (v7 == 2)
        {
          if ((v3 & 0xC000) == 0x8000)
          {
            v9 = v3 ^ v2;
            v10 = (v3 & 0x100) == 0;
            if (!v9 && ((v10 ^ ((v2 & 0x100) >> 8)) & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (v2 == 49152)
        {
          if (v3 == 49152)
          {
            return 1;
          }
        }

        else if (v2 == 49153)
        {
          if (v3 == 49153)
          {
            return 1;
          }
        }

        else if (v3 == 49154)
        {
          return 1;
        }
      }

      else if (v7)
      {
        if ((v3 & 0xC000) == 0x4000)
        {
          v11 = v3 ^ v2;
          v12 = (v3 & 0x100) == 0;
          if (!v11 && ((v12 ^ ((v2 & 0x100) >> 8)) & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if ((v3 & 0xC000) == 0 && ((v3 ^ v2) & 1) == 0)
      {
        return 1;
      }
    }
  }

  else if (!*(a2 + 2))
  {
    v5 = v2 >> 8;
    if (v2 >> 8 == 2)
    {
      if ((v3 & 0xFF00) == 0x200)
      {
        return 1;
      }
    }

    else if (v5 == 3)
    {
      if ((v3 & 0xFF00) == 0x300)
      {
        return 1;
      }
    }

    else if (v5 == 4)
    {
      if ((v3 & 0xFF00) == 0x400)
      {
        return 1;
      }
    }

    else if ((v3 >> 8) - 2 >= 3 && v3 == v2 && (((v3 >> 8) ^ v5) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1DB1643C8()
{
  result = qword_1EE13F7A8;
  if (!qword_1EE13F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7A8);
  }

  return result;
}

unint64_t sub_1DB16441C()
{
  result = qword_1ECC27840;
  if (!qword_1ECC27840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27840);
  }

  return result;
}

unint64_t sub_1DB164470()
{
  result = qword_1ECC27848;
  if (!qword_1ECC27848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27848);
  }

  return result;
}

unint64_t sub_1DB1644C4()
{
  result = qword_1ECC27850;
  if (!qword_1ECC27850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27850);
  }

  return result;
}

unint64_t sub_1DB164518()
{
  result = qword_1EE13F790;
  if (!qword_1EE13F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F790);
  }

  return result;
}

unint64_t sub_1DB16456C()
{
  result = qword_1EE13F480;
  if (!qword_1EE13F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F480);
  }

  return result;
}

unint64_t sub_1DB1645C0()
{
  result = qword_1EE13F7D0;
  if (!qword_1EE13F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7D0);
  }

  return result;
}

unint64_t sub_1DB164614()
{
  result = qword_1EE13F5E0;
  if (!qword_1EE13F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5E0);
  }

  return result;
}

unint64_t sub_1DB164668()
{
  result = qword_1EE13F340;
  if (!qword_1EE13F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F340);
  }

  return result;
}

unint64_t sub_1DB1646BC()
{
  result = qword_1EE13F270;
  if (!qword_1EE13F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F270);
  }

  return result;
}

unint64_t sub_1DB164710()
{
  result = qword_1EE13E990;
  if (!qword_1EE13E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E990);
  }

  return result;
}

unint64_t sub_1DB164764()
{
  result = qword_1EE13F260;
  if (!qword_1EE13F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F260);
  }

  return result;
}

unint64_t sub_1DB1647B8()
{
  result = qword_1EE13F268;
  if (!qword_1EE13F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F268);
  }

  return result;
}

unint64_t sub_1DB16480C()
{
  result = qword_1EE13FEB0;
  if (!qword_1EE13FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FEB0);
  }

  return result;
}

unint64_t sub_1DB164860()
{
  result = qword_1EE13E930;
  if (!qword_1EE13E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E930);
  }

  return result;
}

uint64_t sub_1DB1648B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB16491C()
{
  result = qword_1ECC278A0;
  if (!qword_1ECC278A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27890, &qword_1DB2C18A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC278A0);
  }

  return result;
}

uint64_t sub_1DB164980(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1DB1649E4()
{
  result = qword_1EE13F338;
  if (!qword_1EE13F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F338);
  }

  return result;
}

unint64_t sub_1DB164A38()
{
  result = qword_1EE13F6F8;
  if (!qword_1EE13F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6F8);
  }

  return result;
}

unint64_t sub_1DB164A8C()
{
  result = qword_1EE13EA30;
  if (!qword_1EE13EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA30);
  }

  return result;
}

unint64_t sub_1DB164B90()
{
  result = qword_1EE13F490;
  if (!qword_1EE13F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F490);
  }

  return result;
}

unint64_t sub_1DB164C14()
{
  result = qword_1ECC278C8;
  if (!qword_1ECC278C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC278C8);
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

uint64_t sub_1DB164CF0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExpressibleCodableType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ExpressibleCodableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1DB164E7C(unsigned __int16 *a1)
{
  if (*(a1 + 2) <= 2u)
  {
    return *(a1 + 2);
  }

  else
  {
    return *a1 + 3;
  }
}

uint64_t sub_1DB164E94(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 2) = a2;
  return result;
}

uint64_t sub_1DB164EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DB164F04(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1DB165000()
{
  result = qword_1ECC278E0;
  if (!qword_1ECC278E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC278E0);
  }

  return result;
}

unint64_t sub_1DB165058()
{
  result = qword_1ECC278E8;
  if (!qword_1ECC278E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC278E8);
  }

  return result;
}

unint64_t sub_1DB1650B0()
{
  result = qword_1ECC278F0;
  if (!qword_1ECC278F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC278F0);
  }

  return result;
}

unint64_t sub_1DB165108()
{
  result = qword_1ECC278F8;
  if (!qword_1ECC278F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC278F8);
  }

  return result;
}

unint64_t sub_1DB165160()
{
  result = qword_1ECC27900;
  if (!qword_1ECC27900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27900);
  }

  return result;
}

unint64_t sub_1DB1651B8()
{
  result = qword_1ECC27908;
  if (!qword_1ECC27908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27908);
  }

  return result;
}

unint64_t sub_1DB165210()
{
  result = qword_1ECC27910;
  if (!qword_1ECC27910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27910);
  }

  return result;
}

unint64_t sub_1DB165268()
{
  result = qword_1ECC27918;
  if (!qword_1ECC27918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27918);
  }

  return result;
}

unint64_t sub_1DB1652C0()
{
  result = qword_1ECC27920;
  if (!qword_1ECC27920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27920);
  }

  return result;
}

unint64_t sub_1DB165318()
{
  result = qword_1EE13F6E8;
  if (!qword_1EE13F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6E8);
  }

  return result;
}

unint64_t sub_1DB165370()
{
  result = qword_1EE13F6F0;
  if (!qword_1EE13F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6F0);
  }

  return result;
}

unint64_t sub_1DB1653C8()
{
  result = qword_1EE13FEA0;
  if (!qword_1EE13FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FEA0);
  }

  return result;
}

unint64_t sub_1DB165420()
{
  result = qword_1EE13FEA8;
  if (!qword_1EE13FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FEA8);
  }

  return result;
}

unint64_t sub_1DB165478()
{
  result = qword_1EE13F7B0;
  if (!qword_1EE13F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7B0);
  }

  return result;
}

unint64_t sub_1DB1654D0()
{
  result = qword_1EE13F7B8;
  if (!qword_1EE13F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7B8);
  }

  return result;
}

unint64_t sub_1DB165528()
{
  result = qword_1EE13F7C0;
  if (!qword_1EE13F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7C0);
  }

  return result;
}

unint64_t sub_1DB165580()
{
  result = qword_1EE13F7C8;
  if (!qword_1EE13F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7C8);
  }

  return result;
}

unint64_t sub_1DB1655D8()
{
  result = qword_1EE13F780;
  if (!qword_1EE13F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F780);
  }

  return result;
}

unint64_t sub_1DB165630()
{
  result = qword_1EE13F788;
  if (!qword_1EE13F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F788);
  }

  return result;
}

unint64_t sub_1DB165688()
{
  result = qword_1EE13F760;
  if (!qword_1EE13F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F760);
  }

  return result;
}

unint64_t sub_1DB1656E0()
{
  result = qword_1EE13F768;
  if (!qword_1EE13F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F768);
  }

  return result;
}

unint64_t sub_1DB165738()
{
  result = qword_1EE13F750;
  if (!qword_1EE13F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F750);
  }

  return result;
}

unint64_t sub_1DB165790()
{
  result = qword_1EE13F758;
  if (!qword_1EE13F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F758);
  }

  return result;
}

unint64_t sub_1DB1657E8()
{
  result = qword_1EE13F770;
  if (!qword_1EE13F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F770);
  }

  return result;
}

unint64_t sub_1DB165840()
{
  result = qword_1EE13F778;
  if (!qword_1EE13F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F778);
  }

  return result;
}

unint64_t sub_1DB165898()
{
  result = qword_1EE13F798;
  if (!qword_1EE13F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F798);
  }

  return result;
}

unint64_t sub_1DB1658F0()
{
  result = qword_1EE13F7A0;
  if (!qword_1EE13F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7A0);
  }

  return result;
}

uint64_t sub_1DB165944(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547972657571 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEE00657079546E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726574746573 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6974616C6C6F63 && a2 == 0xE90000000000006ELL || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C75646F6DLL && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1DB165B48()
{
  result = qword_1ECC27948;
  if (!qword_1ECC27948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27948);
  }

  return result;
}

unint64_t sub_1DB165B9C()
{
  result = qword_1ECC27950;
  if (!qword_1ECC27950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27950);
  }

  return result;
}

unint64_t sub_1DB165BF0()
{
  result = qword_1EE13E7B8[0];
  if (!qword_1EE13E7B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE13E7B8);
  }

  return result;
}

uint64_t sub_1DB165C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DB165C8C()
{
  result = qword_1ECC27968;
  if (!qword_1ECC27968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27968);
  }

  return result;
}

ValueMetadata *sub_1DB165CE4()
{
  v1 = *v0;
  v2 = v1 >> 8;
  if (v1 >> 8 == 2)
  {
    v3 = &type metadata for Table;
    sub_1DB16889C();
  }

  else if (v2 == 3)
  {
    v3 = &type metadata for View;
    sub_1DB168848();
  }

  else if (v2 == 4)
  {
    v3 = &type metadata for VirtualTable;
    sub_1DB1687F4();
  }

  else
  {
    v4 = *v0;
    if (v4 > 4)
    {
      if (*v0 <= 6u)
      {
        if (v4 == 5)
        {
          if ((v1 & 0x100) != 0)
          {
            v5 = &qword_1ECC27A48;
            v6 = &qword_1DB2C2BF8;
            v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27A48, &qword_1DB2C2BF8);
            v7 = &unk_1ECC27A50;
          }

          else
          {
            v5 = &qword_1ECC27A38;
            v6 = &qword_1DB2C2BF0;
            v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27A38, &qword_1DB2C2BF0);
            v7 = &unk_1ECC27A40;
          }
        }

        else if ((v1 & 0x100) != 0)
        {
          v5 = &qword_1ECC27B48;
          v6 = &qword_1DB2C2C78;
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B48, &qword_1DB2C2C78);
          v7 = &unk_1ECC27B50;
        }

        else
        {
          v5 = &qword_1ECC27B38;
          v6 = &qword_1DB2C2C70;
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B38, &qword_1DB2C2C70);
          v7 = &unk_1ECC27B40;
        }
      }

      else if (v4 == 7)
      {
        if ((v1 & 0x100) != 0)
        {
          v5 = &qword_1ECC27AE8;
          v6 = &qword_1DB2C2C48;
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27AE8, &qword_1DB2C2C48);
          v7 = &unk_1ECC27AF0;
        }

        else
        {
          v5 = &qword_1ECC27AD8;
          v6 = &qword_1DB2C2C40;
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27AD8, &qword_1DB2C2C40);
          v7 = &unk_1ECC27AE0;
        }
      }

      else if (v4 == 8)
      {
        if ((v1 & 0x100) != 0)
        {
          v5 = &qword_1ECC27AA8;
          v6 = &qword_1DB2C2C28;
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27AA8, &qword_1DB2C2C28);
          v7 = &unk_1ECC27AB0;
        }

        else
        {
          v5 = &qword_1ECC27A98;
          v6 = &qword_1DB2C2C20;
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27A98, &qword_1DB2C2C20);
          v7 = &unk_1ECC27AA0;
        }
      }

      else if ((v1 & 0x100) != 0)
      {
        v5 = &qword_1ECC27A88;
        v6 = &qword_1DB2C2C18;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27A88, &qword_1DB2C2C18);
        v7 = &unk_1ECC27A90;
      }

      else
      {
        v5 = &qword_1ECC27A78;
        v6 = &qword_1DB2C2C10;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27A78, &qword_1DB2C2C10);
        v7 = &unk_1ECC27A80;
      }
    }

    else if (*v0 <= 1u)
    {
      if (*v0)
      {
        if ((v1 & 0x100) != 0)
        {
          v5 = &qword_1ECC27B28;
          v6 = &qword_1DB2C2C68;
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B28, &qword_1DB2C2C68);
          v7 = &unk_1ECC27B30;
        }

        else
        {
          v5 = &qword_1ECC27B18;
          v6 = &qword_1DB2C2C60;
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B18, &qword_1DB2C2C60);
          v7 = &unk_1ECC27B20;
        }
      }

      else if ((v1 & 0x100) != 0)
      {
        v5 = &qword_1ECC27B68;
        v6 = &qword_1DB2C2C88;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B68, &qword_1DB2C2C88);
        v7 = &unk_1ECC27B70;
      }

      else
      {
        v5 = &qword_1ECC27B58;
        v6 = &qword_1DB2C2C80;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B58, &qword_1DB2C2C80);
        v7 = &unk_1ECC27B60;
      }
    }

    else if (v4 == 2)
    {
      if ((v1 & 0x100) != 0)
      {
        v5 = &qword_1ECC27B08;
        v6 = &qword_1DB2C2C58;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B08, &qword_1DB2C2C58);
        v7 = &unk_1ECC27B10;
      }

      else
      {
        v5 = &qword_1ECC27AF8;
        v6 = &qword_1DB2C2C50;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27AF8, &qword_1DB2C2C50);
        v7 = &unk_1ECC27B00;
      }
    }

    else if (v4 == 3)
    {
      if ((v1 & 0x100) != 0)
      {
        v5 = &qword_1ECC27AC8;
        v6 = &qword_1DB2C2C38;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27AC8, &qword_1DB2C2C38);
        v7 = &unk_1ECC27AD0;
      }

      else
      {
        v5 = &qword_1ECC27AB8;
        v6 = &qword_1DB2C2C30;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27AB8, &qword_1DB2C2C30);
        v7 = &unk_1ECC27AC0;
      }
    }

    else if ((v1 & 0x100) != 0)
    {
      v5 = &qword_1ECC27A68;
      v6 = &qword_1DB2C2C08;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27A68, &qword_1DB2C2C08);
      v7 = &unk_1ECC27A70;
    }

    else
    {
      v5 = &qword_1ECC27A58;
      v6 = &qword_1DB2C2C00;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27A58, &qword_1DB2C2C00);
      v7 = &unk_1ECC27A60;
    }

    sub_1DB1688F0(v7, v5, v6, &protocol conformance descriptor for ScalarQuery<A>);
  }

  return v3;
}

void *static QueryType.queryTypeCodableType.getter@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  if (swift_conformsToProtocol2() && a1)
  {
    return sub_1DB167910(a2);
  }

  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v5 = sub_1DB2BADF4();
  v7 = v6;
  sub_1DB135B68();
  swift_allocError();
  *v8 = 0xD000000000000014;
  *(v8 + 8) = 0x80000001DB2D4390;
  *(v8 + 16) = xmmword_1DB2C24A0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  *(v8 + 48) = 1;
  return swift_willThrow();
}

uint64_t sub_1DB166254()
{
  v1 = 0x755172616C616373;
  v2 = 2003134838;
  if (*v0 != 2)
  {
    v2 = 0x546C617574726976;
  }

  if (*v0)
  {
    v1 = 0x656C626174;
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

uint64_t sub_1DB1662D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB16868C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB1662FC(uint64_t a1)
{
  v2 = sub_1DB167B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB166338(uint64_t a1)
{
  v2 = sub_1DB167B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB166374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DB2D43F0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DB166464(uint64_t a1)
{
  v2 = sub_1DB167CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1664A0(uint64_t a1)
{
  v2 = sub_1DB167CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1664DC(uint64_t a1)
{
  v2 = sub_1DB167C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB166518(uint64_t a1)
{
  v2 = sub_1DB167C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB166554(uint64_t a1)
{
  v2 = sub_1DB167C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB166590(uint64_t a1)
{
  v2 = sub_1DB167C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1665CC(uint64_t a1)
{
  v2 = sub_1DB167BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB166608(uint64_t a1)
{
  v2 = sub_1DB167BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryTypeCodableType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27970, &qword_1DB2C24B0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v22 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27978, &qword_1DB2C24B8);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27980, &qword_1DB2C24C0);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27988, &qword_1DB2C24C8);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v24 = &v22 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27990, &qword_1DB2C24D0);
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB167B9C();
  sub_1DB2BBA94();
  v15 = v14 >> 8;
  if (v14 >> 8 == 2)
  {
    v38 = 1;
    sub_1DB167C98();
    sub_1DB2BB804();
    (*(v22 + 8))(v9, v23);
    return (*(v32 + 8))(v13, v11);
  }

  if (v15 == 3)
  {
    v39 = 2;
    sub_1DB167C44();
    sub_1DB2BB804();
    (*(v25 + 8))(v6, v27);
    return (*(v32 + 8))(v13, v11);
  }

  v16 = v11;
  if (v15 == 4)
  {
    v40 = 3;
    sub_1DB167BF0();
    v17 = v29;
    sub_1DB2BB804();
    (*(v30 + 8))(v17, v31);
    return (*(v32 + 8))(v13, v16);
  }

  else
  {
    v37 = 0;
    sub_1DB167CEC();
    v19 = v24;
    sub_1DB2BB804();
    v36 = v14;
    v35 = 0;
    sub_1DB16456C();
    v20 = v28;
    v21 = v33;
    sub_1DB2BB8A4();
    if (!v21)
    {
      v34 = 1;
      sub_1DB2BB874();
    }

    (*(v26 + 8))(v19, v20);
    return (*(v32 + 8))(v13, v11);
  }
}

uint64_t QueryTypeCodableType.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279B0, &qword_1DB2C24D8);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v44 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279B8, &qword_1DB2C24E0);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279C0, &qword_1DB2C24E8);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279C8, &qword_1DB2C24F0);
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279D0, &unk_1DB2C24F8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  v16 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DB167B9C();
  v17 = v59;
  sub_1DB2BBA84();
  if (!v17)
  {
    v46 = v8;
    v47 = v11;
    v19 = v54;
    v18 = v55;
    v45 = v9;
    v48 = 0;
    v21 = v56;
    v20 = v57;
    v59 = v13;
    v22 = v58;
    v23 = v15;
    v24 = sub_1DB2BB7D4();
    v25 = (2 * *(v24 + 16)) | 1;
    v61 = v24;
    v62 = v24 + 32;
    v63 = 0;
    v64 = v25;
    v26 = sub_1DB14B1E8();
    if (v26 == 4 || v63 != v64 >> 1)
    {
      v30 = sub_1DB2BB564();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v32 = &type metadata for QueryTypeCodableType;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
LABEL_9:
      v33 = v59;
LABEL_10:
      (*(v33 + 8))(v15, v12);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v60);
    }

    if (v26 <= 1u)
    {
      if (v26)
      {
        v66 = 1;
        sub_1DB167C98();
        v37 = v46;
        v38 = v48;
        sub_1DB2BB704();
        if (!v38)
        {
          (*(v49 + 8))(v37, v50);
          (*(v59 + 8))(v15, v12);
          swift_unknownObjectRelease();
          *v22 = 512;
          return __swift_destroy_boxed_opaque_existential_1(v60);
        }
      }

      else
      {
        v66 = 0;
        sub_1DB167CEC();
        v28 = v47;
        v27 = v48;
        sub_1DB2BB704();
        if (!v27)
        {
          v65 = 0;
          sub_1DB164710();
          v29 = v45;
          sub_1DB2BB7B4();
          v41 = v66;
          v65 = 1;
          v42 = sub_1DB2BB784();
          (*(v52 + 8))(v28, v29);
          (*(v59 + 8))(v23, v12);
          swift_unknownObjectRelease();
          if (v42)
          {
            v43 = 256;
          }

          else
          {
            v43 = 0;
          }

          *v22 = v43 | v41;
          return __swift_destroy_boxed_opaque_existential_1(v60);
        }
      }

      goto LABEL_9;
    }

    if (v26 == 2)
    {
      v66 = 2;
      sub_1DB167C44();
      v35 = v19;
      v36 = v48;
      sub_1DB2BB704();
      v33 = v59;
      if (!v36)
      {
        (*(v53 + 8))(v35, v51);
        (*(v33 + 8))(v15, v12);
        swift_unknownObjectRelease();
        *v22 = 768;
        return __swift_destroy_boxed_opaque_existential_1(v60);
      }

      goto LABEL_10;
    }

    v66 = 3;
    sub_1DB167BF0();
    v39 = v48;
    sub_1DB2BB704();
    v40 = v59;
    if (v39)
    {
      (*(v59 + 8))(v15, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v21 + 8))(v18, v20);
      (*(v40 + 8))(v15, v12);
      swift_unknownObjectRelease();
      *v22 = 1024;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_1DB1672EC(uint64_t a1)
{
  v2 = sub_1DB167D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB167328(uint64_t a1)
{
  v2 = sub_1DB167D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyQueryType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279D8, &qword_1DB2C2508);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB167D40();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v15[0]) = 1;
    sub_1DB1647B8();
    sub_1DB2BB7B4();
    v21 = v17[0];
    v9 = sub_1DB165CE4();
    v14[0] = v10;
    v14[1] = v14;
    MEMORY[0x1EEE9AC00](v9);
    v20 = 0;
    sub_1DB2BB724();
    sub_1DB2BB1C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
    v12 = swift_dynamicCast();
    if (v12)
    {
      (*(v6 + 8))(v8, v5);
      sub_1DB1355D0(v15, v17);
      sub_1DB1355D0(v17, v18);
      v13 = v18[1];
      *a2 = v18[0];
      *(a2 + 16) = v13;
      *(a2 + 32) = v19;
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      sub_1DB167D94(v15);
      LOBYTE(v17[0]) = 0;
      sub_1DB2BB564();
      swift_allocError();
      sub_1DB1688F0(&qword_1ECC279F0, &qword_1ECC279D8, &qword_1DB2C2508, MEMORY[0x1E69E6F50]);
      sub_1DB2BB544();
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnyQueryType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279F8, &qword_1DB2C2510);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB167D40();
  sub_1DB2BBA94();
  sub_1DB164980(v3, &v14[1]);
  __swift_project_boxed_opaque_existential_1(&v14[1], *&v14[13]);
  DynamicType = swift_getDynamicType();
  v10 = *&v14[17];
  __swift_destroy_boxed_opaque_existential_1(&v14[1]);
  (*(v10 + 48))(v14, DynamicType, v10);
  if (!v2)
  {
    v13 = v14[0];
    v12[3] = 1;
    sub_1DB1646BC();
    sub_1DB2BB8A4();
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    LOBYTE(v14[0]) = 0;
    sub_1DB2BB814();
    sub_1DB2BACE4();
    __swift_destroy_boxed_opaque_existential_1(&v14[1]);
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1DB167910@<X0>(_WORD *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = AssociatedTypeWitness == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = swift_conformsToProtocol2();
    if (v8 && AssociatedTypeWitness)
    {
      result = sub_1DB168AE8(AssociatedTypeWitness, v8);
      if (v3)
      {
        return result;
      }

      v9 = BYTE1(v15) | 0x100;
      goto LABEL_12;
    }

    swift_getMetatypeMetadata();
    swift_getMetatypeMetadata();
    v11 = sub_1DB2BADF4();
    v13 = v12;
    sub_1DB135B68();
    swift_allocError();
    *v14 = 0xD000000000000015;
    *(v14 + 8) = 0x80000001DB2D4410;
    *(v14 + 16) = 0xD000000000000010;
    *(v14 + 24) = 0x80000001DB2C2640;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    *(v14 + 48) = 1;
    return swift_willThrow();
  }

  else
  {
    result = (*(v6 + 64))(&v15, AssociatedTypeWitness, v6);
    if (!v3)
    {
      v9 = v15;
LABEL_12:
      *a3 = v9;
    }
  }

  return result;
}

void static QueryType<>.queryTypeCodableType.getter(_WORD *a1@<X8>)
{
  *a1 = 512;
}

{
  *a1 = 768;
}

{
  *a1 = 1024;
}

BOOL _s19OnDeviceStorageCore016QueryTypeCodableF0O2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 8;
  if (v2 >> 8 == 2)
  {
    return (v3 & 0xFF00) == 0x200;
  }

  if (v4 == 3)
  {
    return (v3 & 0xFF00) == 0x300;
  }

  if (v4 == 4)
  {
    return (v3 & 0xFF00) == 0x400;
  }

  if ((v3 >> 8) - 2 < 3)
  {
    return 0;
  }

  v6 = (v3 ^ v2) == 0;
  v7 = (v3 >> 8) ^ v4 ^ 1;
  if (!v6)
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

unint64_t sub_1DB167B9C()
{
  result = qword_1EE13F638;
  if (!qword_1EE13F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F638);
  }

  return result;
}

unint64_t sub_1DB167BF0()
{
  result = qword_1ECC27998;
  if (!qword_1ECC27998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27998);
  }

  return result;
}

unint64_t sub_1DB167C44()
{
  result = qword_1ECC279A0;
  if (!qword_1ECC279A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC279A0);
  }

  return result;
}

unint64_t sub_1DB167C98()
{
  result = qword_1EE13F610;
  if (!qword_1EE13F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F610);
  }

  return result;
}

unint64_t sub_1DB167CEC()
{
  result = qword_1ECC279A8;
  if (!qword_1ECC279A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC279A8);
  }

  return result;
}

unint64_t sub_1DB167D40()
{
  result = qword_1ECC279E0;
  if (!qword_1ECC279E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC279E0);
  }

  return result;
}

uint64_t sub_1DB167D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279E8, &unk_1DB2C3AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for QueryTypeCodableType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 65284;
  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 16)) - 65284;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65284;
    }
  }

LABEL_19:
  v7 = *(a1 + 1);
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for QueryTypeCodableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65284;
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}