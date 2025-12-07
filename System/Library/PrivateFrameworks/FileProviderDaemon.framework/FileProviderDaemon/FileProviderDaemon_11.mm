uint64_t getEnumTagSinglePayload for VFSFileError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xED && *(a1 + 41))
  {
    return (*a1 + 237);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0x14)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VFSFileError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 237;
    if (a3 >= 0xED)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xED)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CF19A6D8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 0x13)
  {
    return (*a1 + 19);
  }

  return result;
}

uint64_t sub_1CF19A6F4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x12)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 19;
    LOBYTE(a2) = 19;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1CF19A768@<X0>(__int128 *a1@<X0>, _DWORD *a4@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 3);
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = v5;
  v13 = *(a1 + 4);
  result = fpfs_openfdbyhandle();
  if ((result & 0x80000000) != 0)
  {
    v7 = MEMORY[0x1D38683F0]();
    LODWORD(v8[0]) = 0;
    BYTE4(v8[0]) = 1;
    v9 = 0;
    sub_1CF19BBE4(v7, v8);
    sub_1CF1969CC(v8);
    return swift_willThrow();
  }

  else
  {
    *a4 = result;
  }

  return result;
}

void sub_1CF19A850(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  sub_1CF65DE04(102236169, 0, 0, 0, 0x400, a1, v53);
  if (v2)
  {
    v4 = v2;
LABEL_11:
    ErrorValue = swift_getErrorValue();
    MEMORY[0x1EEE9AC00](ErrorValue);
    v40 = sub_1CF19BE84;
    v41 = 0;
    sub_1CF198B14(sub_1CF19BE94, v39, v11, v12);
    swift_willThrow();

    return;
  }

  if (v55)
  {
    sub_1CEFDB034();
    v4 = swift_allocError();
    v6 = v5;
    *(v5 + 24) = &type metadata for VFSAttributes.Common.AttributeSet;
    *(v5 + 32) = sub_1CF19BEF4();
    v7 = 8;
LABEL_9:
    *v6 = v7;
    *(v6 + 40) = 15;
LABEL_10:
    swift_willThrow();
    sub_1CF19BF48(v53);
    goto LABEL_11;
  }

  if (v61)
  {
    sub_1CEFDB034();
    v4 = swift_allocError();
    v6 = v8;
    *(v8 + 24) = &type metadata for VFSAttributes.Common.AttributeSet;
    *(v8 + 32) = sub_1CF19BEF4();
    v7 = 0x2000000;
    goto LABEL_9;
  }

  if (v63)
  {
    sub_1CEFDB034();
    v4 = swift_allocError();
    v6 = v9;
    *(v9 + 24) = &type metadata for VFSAttributes.Common.AttributeSet;
    *(v9 + 32) = sub_1CF19BEF4();
    v7 = 0x4000000;
    goto LABEL_9;
  }

  v14 = v53[0];
  v13 = v53[1];
  v15 = v56;
  v42 = v62;
  v43 = v60;
  if (v59)
  {
    v16 = 0;
  }

  else
  {
    v16 = v58;
  }

  if (v57)
  {
    v15 = 0;
  }

  v44 = v15;
  if (v54 == 1)
  {
    goto LABEL_23;
  }

  if (v54 != 2)
  {
    v17 = 0;
    goto LABEL_25;
  }

  v17 = 0;
  if ((v65 & 1) == 0)
  {
    v18 = v64;
    if (v64)
    {
      LOBYTE(v47) = 0;
      if ((fpfs_pkg_is_demoted() & 0x80000000) != 0)
      {
        v38 = MEMORY[0x1D38683F0]();
        v49 = 31;
        v50 = 0u;
        v51 = 0u;
        v52 = 19;
        v4 = sub_1CF19BBE4(v38, &v49);
        sub_1CF1969CC(&v49);
        goto LABEL_10;
      }

      v44 = v18;
LABEL_23:
      v17 = v16;
    }
  }

LABEL_25:
  if (v13)
  {
    v49 = v14;
    *&v50 = v13;
    v47 = 58;
    v48 = 0xE100000000000000;
    v45 = 47;
    v46 = 0xE100000000000000;
    v19 = sub_1CEFE4E68();

    v40 = v19;
    v41 = v19;
    v39[0] = MEMORY[0x1E69E6158];
    v39[1] = v19;
    v20 = sub_1CF9E7668();
    v22 = v21;
    sub_1CF19BF48(v53);
    v13, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    sub_1CF19BF48(v53);
    v20 = 0;
    v22 = 0;
  }

  v37 = v42;
  *a2 = v43;
  *(a2 + 8) = v37;
  LODWORD(v37) = v44;
  *(a2 + 16) = v17;
  *(a2 + 20) = v37;
  0, v30, v31, v32, v33, v34, v35, v36;
  *(a2 + 24) = v20;
  *(a2 + 32) = v22;
}

uint64_t sub_1CF19ABF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    sub_1CF9E6978();
    v6 = fpfs_fsetxattr();

    if (v6 < 0)
    {
      v7 = MEMORY[0x1D38683F0](result);
      v8 = sub_1CF9E6888();
      v9 = [v8 fp_obfuscatedExtendedAttributeName];

      v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v12 = v11;

      v13[0] = v10;
      v13[1] = v12;
      v14 = 2;
      sub_1CF19BBE4(v7, v13);
      sub_1CF1969CC(v13);
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF19AD04(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1CF9E6978();
  v5 = fremovexattr(a3, (v4 + 32), 0);

  if (v5 < 0)
  {
    v7 = MEMORY[0x1D38683F0](result);
    v8 = sub_1CF9E6888();
    v9 = [v8 fp_obfuscatedExtendedAttributeName];

    v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = v11;

    v13[0] = v10;
    v13[1] = v12;
    v14 = 3;
    sub_1CF19BBE4(v7, v13);
    sub_1CF1969CC(v13);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF19ADE8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((fpfs_track_document() & 0x80000000) != 0)
  {
    v2 = MEMORY[0x1D38683F0]();
    v4 = 13;
    v5 = 0u;
    v6 = 0u;
    v7 = 19;
    sub_1CF19BBE4(v2, &v4);
    sub_1CF1969CC(&v4);
  }

  else
  {
    sub_1CEFDB034();
    swift_allocError();
    *v1 = 13;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 19;
  }

  return swift_willThrow();
}

uint64_t sub_1CF19AED0@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, char a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v22 = sub_1CF19BE7C;
  v23 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1CF9B8AD8;
  v21 = &block_descriptor_9;
  v13 = _Block_copy(&aBlock);

  v14 = fpfs_fset_metadata();
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v14 < 0)
  {
    v17 = MEMORY[0x1D38683F0](result);
    aBlock = a4;
    v19 = 0;
    LOBYTE(v23) = 7;
    sub_1CF19BBE4(v17, &aBlock);
    sub_1CF1969CC(&aBlock);
    return swift_willThrow();
  }

  else
  {
    *a7 = 0;
  }

  return result;
}

uint64_t sub_1CF19B0B0(char a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  last_use_date = fpfs_get_last_use_date();
  if ((last_use_date & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1D38683F0]();
  v5 = 35;
  v6 = 0u;
  v7 = 0u;
  v8 = 19;
  sub_1CF19BBE4(v4, &v5);
  sub_1CF1969CC(&v5);
  return swift_willThrow();
}

uint64_t sub_1CF19B174@<X0>(uint64_t isEscapingClosureAtFileLocation@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v21 = sub_1CF19BFCC;
  v22 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1CF9B8AD8;
  v20 = &block_descriptor_23;
  v12 = _Block_copy(&aBlock);

  updated = fpfs_update_dataless_fault();
  _Block_release(v12);
  if ((updated & 0x80000000) == 0)
  {
    *a7 = 0;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v15 = MEMORY[0x1D38683F0]();
  aBlock = isEscapingClosureAtFileLocation;
  v18 = 0;
  LOBYTE(v22) = 10;
  sub_1CF19BBE4(v15, &aBlock);
  sub_1CF1969CC(&aBlock);
  swift_willThrow();
  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF19B37C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 240) = qword_1CF9FA560[a4];
  sub_1CF19BF9C(a1 + 40);
  result = fpfs_set_evictable();
  if ((result & 0x80000000) != 0)
  {
    v6 = MEMORY[0x1D38683F0]();
    v7 = 19;
    v8 = 0u;
    v9 = 0u;
    v10 = 19;
    sub_1CF19BBE4(v6, &v7);
    sub_1CF1969CC(&v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF19B41C(uint64_t a1, uint64_t a2)
{
  result = fpfs_set_dataless_cmpfs_attrs();
  if ((result & 0x80000000) != 0)
  {
    v3 = MEMORY[0x1D38683F0]();
    v4 = 21;
    v5 = 0u;
    v6 = 0u;
    v7 = 19;
    sub_1CF19BBE4(v3, &v4);
    sub_1CF1969CC(&v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF19B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = swift_allocObject();
  *(v10 + 16) = a7;
  *(v10 + 24) = a8;
  v21 = sub_1CF19BFCC;
  v22 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1CF9B8AD8;
  v20 = &block_descriptor_30;
  v11 = _Block_copy(&aBlock);

  v12 = fpfs_evict();
  _Block_release(v11);
  if ((v12 & 0x80000000) == 0)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v15 = MEMORY[0x1D38683F0]();
  aBlock = 0;
  LOBYTE(v18) = 1;
  LOBYTE(v22) = 11;
  sub_1CF19BBE4(v15, &aBlock);
  sub_1CF1969CC(&aBlock);
  swift_willThrow();
  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF19B6A4@<X0>(uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v12 = swift_allocObject();
  *(v12 + 16) = a10;
  *(v12 + 24) = a11;
  *(&v23 + 1) = sub_1CF19BFCC;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  *&v22 = 1107296256;
  *(&v22 + 1) = sub_1CF9B8AD8;
  *&v23 = &block_descriptor_16;
  v13 = _Block_copy(&aBlock);

  v14 = fpfs_materialize();
  _Block_release(v13);
  if ((v14 & 0x80000000) == 0)
  {
    v17 = *(&v26 + 1);
    *a9 = v25;
    *(a9 + 16) = v26;
    *(a9 + 24) = v17;
    *(a9 + 32) = v27;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v19 = MEMORY[0x1D38683F0](result, v16);
  aBlock = 22;
  v22 = 0u;
  v23 = 0u;
  LOBYTE(v24) = 19;
  sub_1CF19BBE4(v19, &aBlock);
  sub_1CF1969CC(&aBlock);
  swift_willThrow();
  v20 = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF19B8E0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((fpfs_eviction_properties() & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = MEMORY[0x1D38683F0]();
  v3 = 33;
  v4 = 0u;
  v5 = 0u;
  v6 = 19;
  sub_1CF19BBE4(v2, &v3);
  sub_1CF1969CC(&v3);
  return swift_willThrow();
}

uint64_t sub_1CF19B994(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((fpfs_pkg_dirstat() & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = MEMORY[0x1D38683F0]();
  v3 = 23;
  v4 = 0u;
  v5 = 0u;
  v6 = 19;
  sub_1CF19BBE4(v2, &v3);
  sub_1CF1969CC(&v3);
  return swift_willThrow();
}

void sub_1CF19BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    aBlock[4] = sub_1CF19BE54;
    v12 = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF19BBB0;
    aBlock[3] = &block_descriptor;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  v9 = fpfs_femptydir();
  _Block_release(v8);
  if (v9 < 0)
  {
    v10 = MEMORY[0x1D38683F0]();
    aBlock[0] = 0;
    LOBYTE(v12) = 18;
    sub_1CF19BBE4(v10, aBlock);
    sub_1CF1969CC(aBlock);
    swift_willThrow();
  }
}

uint64_t sub_1CF19BBE4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1CF9E53C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8 || (v9 = sub_1CF9E6138(), (v9 & 0x100000000) != 0))
  {
    sub_1CEFDB034();
    v13 = swift_allocError();
    sub_1CF19A730(a2, v14);
  }

  else
  {
    v16[23] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v11;
    *(inited + 72) = &type metadata for VFSFileError;
    v12 = swift_allocObject();
    *(inited + 48) = v12;
    sub_1CF19A730(a2, v12 + 16);
    sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CF198A44();
    sub_1CF9E57D8();
    v13 = sub_1CF9E53A8();
    (*(v5 + 8))(v7, v4);
  }

  return v13;
}

unint64_t sub_1CF19BE00()
{
  result = qword_1EDEA8530;
  if (!qword_1EDEA8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8530);
  }

  return result;
}

id sub_1CF19BE84@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 40) = 16;
  return a1;
}

__n128 sub_1CF19BE94()
{
  (*(v0 + 16))(&v4);
  sub_1CEFDB034();
  swift_allocError();
  result = *&v5[9];
  v2 = *v5;
  *v3 = v4;
  *(v3 + 16) = v2;
  *(v3 + 25) = result;
  return result;
}

unint64_t sub_1CF19BEF4()
{
  result = qword_1EC4BD910;
  if (!qword_1EC4BD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BD910);
  }

  return result;
}

uint64_t sub_1CF19BFD0(uint64_t a1)
{
  v1 = fpfs_current_or_default_log();

  return sub_1CF9E6128();
}

uint64_t (*sub_1CF19C010(os_log_type_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v8 = a4;
  v12 = [objc_allocWithZone(FPLoggerScope) init];
  v13 = sub_1CF9E6108();
  if (os_log_type_enabled(v13, a1))
  {
    v14 = swift_slowAlloc();
    v38 = a5;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v14 = 138412546;
    v15 = [v12 fork];
    *(v14 + 4) = v15;
    *v36 = v15;
    *(v14 + 12) = 2082;
    v16 = sub_1CF9E7988();
    v17 = a1;
    v18 = a6;
    v19 = a2;
    v20 = v8;
    v22 = v21;
    v23 = v12;
    v24 = a3;
    v25 = sub_1CEFD0DF0(v16, v21, &v39);
    v26 = v22;
    v8 = v20;
    a2 = v19;
    a6 = v18;
    a1 = v17;
    v26, v27, v28, v29, v30, v31, v32, v33;
    *(v14 + 14) = v25;
    a3 = v24;
    v12 = v23;
    _os_log_impl(&dword_1CEFC7000, v13, v17, "%@ %{public}s", v14, 0x16u);
    sub_1CF19CAB0(v36);
    a5 = v38;
    MEMORY[0x1D386CDC0](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1D386CDC0](v37, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v12;
  *(v34 + 32) = a2;
  *(v34 + 40) = a3;
  *(v34 + 48) = v8;
  *(v34 + 56) = a5;
  *(v34 + 64) = a6;

  return sub_1CF19CB58;
}

uint64_t sub_1CF19C22C(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, unsigned int a6, void (*a7)(void), uint64_t a8)
{
  v41 = a6;
  v11 = a2;
  v43 = a1;
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v17 = sub_1CF9E6108();
  if (os_log_type_enabled(v17, v11))
  {
    v18 = swift_slowAlloc();
    v42 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v39 = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = a7;
    v23 = v22;
    v44 = v22;
    *v19 = 138412546;
    v24 = [v42 adopt];
    *(v19 + 4) = v24;
    *v21 = v24;
    *(v19 + 12) = 2082;
    v25 = sub_1CF9E7988();
    v27 = v26;
    v28 = sub_1CEFD0DF0(v25, v26, &v44);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v19 + 14) = v28;
    _os_log_impl(&dword_1CEFC7000, v17, v11, "%@ %{public}s", v19, 0x16u);
    sub_1CF19CAB0(v21);
    MEMORY[0x1D386CDC0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v36 = v23;
    a7 = v40;
    MEMORY[0x1D386CDC0](v36, -1, -1);
    v37 = v19;
    a3 = v42;
    MEMORY[0x1D386CDC0](v37, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  a7(v43);
  return sub_1CF19C91C(v11, a3);
}

uint64_t (*sub_1CF19C478(os_log_type_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2)
{
  v8 = a4;
  v12 = [objc_allocWithZone(FPLoggerScope) init];
  v13 = sub_1CF9E6108();
  if (os_log_type_enabled(v13, a1))
  {
    v14 = swift_slowAlloc();
    v38 = a5;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v14 = 138412546;
    v15 = [v12 fork];
    *(v14 + 4) = v15;
    *v36 = v15;
    *(v14 + 12) = 2082;
    v16 = sub_1CF9E7988();
    v17 = a1;
    v18 = a6;
    v19 = a2;
    v20 = v8;
    v22 = v21;
    v23 = v12;
    v24 = a3;
    v25 = sub_1CEFD0DF0(v16, v21, &v39);
    v26 = v22;
    v8 = v20;
    a2 = v19;
    a6 = v18;
    a1 = v17;
    v26, v27, v28, v29, v30, v31, v32, v33;
    *(v14 + 14) = v25;
    a3 = v24;
    v12 = v23;
    _os_log_impl(&dword_1CEFC7000, v13, v17, "%@ %{public}s", v14, 0x16u);
    sub_1CF19CAB0(v36);
    a5 = v38;
    MEMORY[0x1D386CDC0](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1D386CDC0](v37, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v12;
  *(v34 + 32) = a2;
  *(v34 + 40) = a3;
  *(v34 + 48) = v8;
  *(v34 + 56) = a5;
  *(v34 + 64) = a6;

  return sub_1CF19C8E4;
}

uint64_t sub_1CF19C694(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, unsigned int a7, void (*a8)(void, void), uint64_t a9)
{
  v44 = a7;
  v11 = a3;
  v46 = a1;
  v47 = a9;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v18 = sub_1CF9E6108();
  if (os_log_type_enabled(v18, v11))
  {
    v19 = swift_slowAlloc();
    v45 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v42 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = a8;
    v24 = v23;
    v48 = v23;
    *v20 = 138412546;
    v25 = [v45 adopt];
    *(v20 + 4) = v25;
    *v22 = v25;
    *(v20 + 12) = 2082;
    v26 = sub_1CF9E7988();
    v28 = v27;
    v29 = sub_1CEFD0DF0(v26, v27, &v48);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v20 + 14) = v29;
    _os_log_impl(&dword_1CEFC7000, v18, v11, "%@ %{public}s", v20, 0x16u);
    sub_1CF19CAB0(v22);
    v37 = v22;
    a2 = v42;
    MEMORY[0x1D386CDC0](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v38 = v24;
    a8 = v43;
    MEMORY[0x1D386CDC0](v38, -1, -1);
    v39 = v20;
    a4 = v45;
    MEMORY[0x1D386CDC0](v39, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  a8(v46, a2);
  return sub_1CF19C91C(v11, a4);
}

uint64_t sub_1CF19C91C(os_log_type_t a1, void *a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v9 = sub_1CF9E6108();
  if (os_log_type_enabled(v9, a1))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = [a2 leave];
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_1CEFC7000, v9, a1, "%@", v10, 0xCu);
    sub_1CF19CAB0(v11);
    MEMORY[0x1D386CDC0](v11, -1, -1);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1CF19CAB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF19CB70(uint64_t a1, const char *a2)
{
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v5;
  if (v4 == a1 && v5 == a2)
  {
    goto LABEL_19;
  }

  v14 = sub_1CF9E8048();
  v12, v15, v16, v17, v18, v19, v20, v21;
  if ((v14 & 1) == 0)
  {
    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = v5;
    if (v23 != a1 || v5 != a2)
    {
      v25 = sub_1CF9E8048();
      v12, v26, v27, v28, v29, v30, v31, v32;
      if (v25)
      {
        goto LABEL_6;
      }

      v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v12 = v5;
      if (v33 != a1 || v5 != a2)
      {
        v35 = sub_1CF9E8048();
        v12, v36, v37, v38, v39, v40, v41, v42;
        if (v35)
        {
          goto LABEL_6;
        }

        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v12 = v5;
        if (v6 != a1 || v5 != a2)
        {
          v44 = sub_1CF9E8048();
          v12, v45, v46, v47, v48, v49, v50, v51;
          if (v44)
          {
            goto LABEL_6;
          }

          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v12 = v5;
          if (v6 != a1 || v5 != a2)
          {
            v52 = sub_1CF9E8048();
            v12, v53, v54, v55, v56, v57, v58, v59;
            if (v52)
            {
              goto LABEL_6;
            }

            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v12 = v5;
            if (v6 != a1 || v5 != a2)
            {
              v60 = sub_1CF9E8048();
              v12, v61, v62, v63, v64, v65, v66, v67;
              if (v60)
              {
                goto LABEL_6;
              }

              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v12 = v5;
              if (v6 != a1 || v5 != a2)
              {
                v68 = sub_1CF9E8048();
                v12, v69, v70, v71, v72, v73, v74, v75;
                if (v68)
                {
                  goto LABEL_6;
                }

                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v12 = v5;
                if (v6 != a1 || v5 != a2)
                {
                  v76 = sub_1CF9E8048();
                  v12, v77, v78, v79, v80, v81, v82, v83;
                  if (v76)
                  {
                    goto LABEL_6;
                  }

                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v12 = v5;
                  if (v6 != a1 || v5 != a2)
                  {
                    v84 = sub_1CF9E8048();
                    v12, v85, v86, v87, v88, v89, v90, v91;
                    if (v84)
                    {
                      goto LABEL_6;
                    }

                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                    v12 = v5;
                    if (v6 != a1 || v5 != a2)
                    {
                      v92 = sub_1CF9E8048();
                      v12, v93, v94, v95, v96, v97, v98, v99;
                      if (v92)
                      {
                        goto LABEL_6;
                      }

                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                      v12 = v5;
                      if (v6 != a1 || v5 != a2)
                      {
                        v100 = sub_1CF9E8048();
                        v12, v101, v102, v103, v104, v105, v106, v107;
                        if (v100)
                        {
                          goto LABEL_6;
                        }

                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                        v12 = v5;
                        if (v6 != a1 || v5 != a2)
                        {
                          v108 = sub_1CF9E8048();
                          v12, v109, v110, v111, v112, v113, v114, v115;
                          if (v108)
                          {
                            goto LABEL_6;
                          }

                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                          v12 = v5;
                          if (v6 != a1 || v5 != a2)
                          {
                            v116 = sub_1CF9E8048();
                            v12, v117, v118, v119, v120, v121, v122, v123;
                            if (v116)
                            {
                              goto LABEL_6;
                            }

                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                            v12 = v5;
                            if (v6 != a1 || v5 != a2)
                            {
                              v124 = sub_1CF9E8048();
                              v12, v125, v126, v127, v128, v129, v130, v131;
                              if (v124)
                              {
                                goto LABEL_6;
                              }

                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                              v12 = v5;
                              if (v6 != a1 || v5 != a2)
                              {
                                v132 = sub_1CF9E8048();
                                v12, v133, v134, v135, v136, v137, v138, v139;
                                if (v132)
                                {
                                  goto LABEL_6;
                                }

                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                v12 = v5;
                                if (v6 != a1 || v5 != a2)
                                {
                                  v140 = sub_1CF9E8048();
                                  v12, v141, v142, v143, v144, v145, v146, v147;
                                  if (v140)
                                  {
                                    goto LABEL_6;
                                  }

                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                  v12 = v5;
                                  if (v6 != a1 || v5 != a2)
                                  {
                                    v148 = sub_1CF9E8048();
                                    v12, v149, v150, v151, v152, v153, v154, v155;
                                    if (v148)
                                    {
                                      goto LABEL_6;
                                    }

                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                    v12 = v5;
                                    if (v6 != a1 || v5 != a2)
                                    {
                                      v156 = sub_1CF9E8048();
                                      v12, v157, v158, v159, v160, v161, v162, v163;
                                      if (v156)
                                      {
                                        goto LABEL_6;
                                      }

                                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                      v12 = v5;
                                      if (v6 != a1 || v5 != a2)
                                      {
                                        v164 = sub_1CF9E8048();
                                        v12, v165, v166, v167, v168, v169, v170, v171;
                                        if (v164)
                                        {
                                          goto LABEL_6;
                                        }

                                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                        v12 = v5;
                                        if (v6 != a1 || v5 != a2)
                                        {
                                          v172 = sub_1CF9E8048();
                                          v12, v173, v174, v175, v176, v177, v178, v179;
                                          if (v172)
                                          {
                                            goto LABEL_6;
                                          }

                                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                          v12 = v5;
                                          if (v6 != a1 || v5 != a2)
                                          {
                                            v180 = sub_1CF9E8048();
                                            v12, v181, v182, v183, v184, v185, v186, v187;
                                            if (v180)
                                            {
                                              goto LABEL_6;
                                            }

                                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                            v12 = v5;
                                            if (v6 != a1 || v5 != a2)
                                            {
                                              v188 = sub_1CF9E8048();
                                              v12, v189, v190, v191, v192, v193, v194, v195;
                                              if (v188)
                                              {
                                                goto LABEL_6;
                                              }

                                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                              v12 = v5;
                                              if (v6 != a1 || v5 != a2)
                                              {
                                                v196 = sub_1CF9E8048();
                                                v12, v197, v198, v199, v200, v201, v202, v203;
                                                if (v196)
                                                {
                                                  goto LABEL_6;
                                                }

                                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                v12 = v5;
                                                if (v6 != a1 || v5 != a2)
                                                {
                                                  v204 = sub_1CF9E8048();
                                                  v12, v205, v206, v207, v208, v209, v210, v211;
                                                  if (v204)
                                                  {
                                                    goto LABEL_6;
                                                  }

                                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                  v12 = v5;
                                                  if (v6 != a1 || v5 != a2)
                                                  {
                                                    v212 = sub_1CF9E8048();
                                                    v12, v213, v214, v215, v216, v217, v218, v219;
                                                    if (v212)
                                                    {
                                                      goto LABEL_6;
                                                    }

                                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                    v12 = v5;
                                                    if (v6 != a1 || v5 != a2)
                                                    {
                                                      v220 = sub_1CF9E8048();
                                                      v12, v221, v222, v223, v224, v225, v226, v227;
                                                      if (v220)
                                                      {
                                                        goto LABEL_6;
                                                      }

                                                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                      v12 = v5;
                                                      if (v6 != a1 || v5 != a2)
                                                      {
                                                        v228 = sub_1CF9E8048();
                                                        v12, v229, v230, v231, v232, v233, v234, v235;
                                                        if (v228)
                                                        {
                                                          goto LABEL_6;
                                                        }

                                                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                        v12 = v5;
                                                        if (v6 != a1 || v5 != a2)
                                                        {
                                                          v236 = sub_1CF9E8048();
                                                          v12, v237, v238, v239, v240, v241, v242, v243;
                                                          if (v236)
                                                          {
                                                            goto LABEL_6;
                                                          }

                                                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                          v12 = v5;
                                                          if (v6 != a1 || v5 != a2)
                                                          {
                                                            v244 = sub_1CF9E8048();
                                                            v12, v245, v246, v247, v248, v249, v250, v251;
                                                            if (v244)
                                                            {
                                                              goto LABEL_6;
                                                            }

                                                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                            v12 = v5;
                                                            if (v6 != a1 || v5 != a2)
                                                            {
                                                              v252 = sub_1CF9E8048();
                                                              v12, v253, v254, v255, v256, v257, v258, v259;
                                                              if (v252)
                                                              {
                                                                goto LABEL_6;
                                                              }

                                                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                              v12 = v5;
                                                              if (v6 != a1 || v5 != a2)
                                                              {
                                                                v260 = sub_1CF9E8048();
                                                                v12, v261, v262, v263, v264, v265, v266, v267;
                                                                if (v260)
                                                                {
                                                                  goto LABEL_6;
                                                                }

                                                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                v12 = v5;
                                                                if (v6 != a1 || v5 != a2)
                                                                {
                                                                  v268 = sub_1CF9E8048();
                                                                  v12, v269, v270, v271, v272, v273, v274, v275;
                                                                  if (v268)
                                                                  {
                                                                    goto LABEL_6;
                                                                  }

                                                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                  v12 = v5;
                                                                  if (v6 != a1 || v5 != a2)
                                                                  {
                                                                    v276 = sub_1CF9E8048();
                                                                    v12, v277, v278, v279, v280, v281, v282, v283;
                                                                    if (v276)
                                                                    {
                                                                      goto LABEL_6;
                                                                    }

                                                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                    v12 = v5;
                                                                    if (v6 != a1 || v5 != a2)
                                                                    {
                                                                      v284 = sub_1CF9E8048();
                                                                      v12, v285, v286, v287, v288, v289, v290, v291;
                                                                      if (v284)
                                                                      {
                                                                        goto LABEL_6;
                                                                      }

                                                                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                      v12 = v5;
                                                                      if (v6 != a1 || v5 != a2)
                                                                      {
                                                                        v292 = sub_1CF9E8048();
                                                                        v12, v293, v294, v295, v296, v297, v298, v299;
                                                                        if (v292)
                                                                        {
                                                                          goto LABEL_6;
                                                                        }

                                                                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                        v12 = v5;
                                                                        if (v6 != a1 || v5 != a2)
                                                                        {
                                                                          v300 = sub_1CF9E8048();
                                                                          v12, v301, v302, v303, v304, v305, v306, v307;
                                                                          if (v300)
                                                                          {
                                                                            goto LABEL_6;
                                                                          }

                                                                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                          v12 = v5;
                                                                          if (v6 != a1 || v5 != a2)
                                                                          {
                                                                            v308 = sub_1CF9E8048();
                                                                            v12, v309, v310, v311, v312, v313, v314, v315;
                                                                            if (v308)
                                                                            {
                                                                              goto LABEL_6;
                                                                            }

                                                                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                            v12 = v5;
                                                                            if (v6 != a1 || v5 != a2)
                                                                            {
                                                                              v316 = sub_1CF9E8048();
                                                                              v12, v317, v318, v319, v320, v321, v322, v323;
                                                                              if (v316)
                                                                              {
                                                                                goto LABEL_6;
                                                                              }

                                                                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                              v12 = v5;
                                                                              if (v6 != a1 || v5 != a2)
                                                                              {
                                                                                v324 = sub_1CF9E8048();
                                                                                v12, v325, v326, v327, v328, v329, v330, v331;
                                                                                if (v324)
                                                                                {
                                                                                  goto LABEL_6;
                                                                                }

                                                                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                v12 = v5;
                                                                                if (v6 != a1 || v5 != a2)
                                                                                {
                                                                                  v332 = sub_1CF9E8048();
                                                                                  v12, v333, v334, v335, v336, v337, v338, v339;
                                                                                  if (v332)
                                                                                  {
                                                                                    goto LABEL_6;
                                                                                  }

                                                                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                  v12 = v5;
                                                                                  if (v6 != a1 || v5 != a2)
                                                                                  {
                                                                                    v340 = sub_1CF9E8048();
                                                                                    v12, v341, v342, v343, v344, v345, v346, v347;
                                                                                    if (v340)
                                                                                    {
                                                                                      goto LABEL_6;
                                                                                    }

                                                                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                    v12 = v5;
                                                                                    if (v6 != a1 || v5 != a2)
                                                                                    {
                                                                                      v348 = sub_1CF9E8048();
                                                                                      v12, v349, v350, v351, v352, v353, v354, v355;
                                                                                      if (v348)
                                                                                      {
                                                                                        goto LABEL_6;
                                                                                      }

                                                                                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                      v12 = v5;
                                                                                      if (v6 != a1 || v5 != a2)
                                                                                      {
                                                                                        v356 = sub_1CF9E8048();
                                                                                        v12, v357, v358, v359, v360, v361, v362, v363;
                                                                                        if (v356)
                                                                                        {
                                                                                          goto LABEL_6;
                                                                                        }

                                                                                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                        v12 = v5;
                                                                                        if (v6 != a1 || v5 != a2)
                                                                                        {
                                                                                          v364 = sub_1CF9E8048();
                                                                                          v12, v365, v366, v367, v368, v369, v370, v371;
                                                                                          if (v364)
                                                                                          {
                                                                                            goto LABEL_6;
                                                                                          }

                                                                                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                          v12 = v5;
                                                                                          if (v6 != a1 || v5 != a2)
                                                                                          {
                                                                                            v372 = sub_1CF9E8048();
                                                                                            v12, v373, v374, v375, v376, v377, v378, v379;
                                                                                            if (v372)
                                                                                            {
                                                                                              goto LABEL_6;
                                                                                            }

                                                                                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                            v12 = v5;
                                                                                            if (v6 != a1 || v5 != a2)
                                                                                            {
                                                                                              v380 = sub_1CF9E8048();
                                                                                              v12, v381, v382, v383, v384, v385, v386, v387;
                                                                                              if (v380)
                                                                                              {
                                                                                                goto LABEL_6;
                                                                                              }

                                                                                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                              v12 = v5;
                                                                                              if (v6 != a1 || v5 != a2)
                                                                                              {
                                                                                                v388 = sub_1CF9E8048();
                                                                                                v12, v389, v390, v391, v392, v393, v394, v395;
                                                                                                if (v388)
                                                                                                {
                                                                                                  goto LABEL_6;
                                                                                                }

                                                                                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                v12 = v5;
                                                                                                if (v6 != a1 || v5 != a2)
                                                                                                {
                                                                                                  v396 = sub_1CF9E8048();
                                                                                                  v12, v397, v398, v399, v400, v401, v402, v403;
                                                                                                  if (v396)
                                                                                                  {
                                                                                                    goto LABEL_6;
                                                                                                  }

                                                                                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                  v12 = v5;
                                                                                                  if (v6 != a1 || v5 != a2)
                                                                                                  {
                                                                                                    v404 = sub_1CF9E8048();
                                                                                                    v12, v405, v406, v407, v408, v409, v410, v411;
                                                                                                    if (v404)
                                                                                                    {
                                                                                                      goto LABEL_6;
                                                                                                    }

                                                                                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                    v12 = v5;
                                                                                                    if (v6 != a1 || v5 != a2)
                                                                                                    {
                                                                                                      v412 = sub_1CF9E8048();
                                                                                                      v12, v413, v414, v415, v416, v417, v418, v419;
                                                                                                      if (v412)
                                                                                                      {
                                                                                                        goto LABEL_6;
                                                                                                      }

                                                                                                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                      v12 = v5;
                                                                                                      if (v6 != a1 || v5 != a2)
                                                                                                      {
                                                                                                        v420 = sub_1CF9E8048();
                                                                                                        v12, v421, v422, v423, v424, v425, v426, v427;
                                                                                                        if (v420)
                                                                                                        {
                                                                                                          goto LABEL_6;
                                                                                                        }

                                                                                                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                        v12 = v5;
                                                                                                        if (v6 != a1 || v5 != a2)
                                                                                                        {
                                                                                                          v428 = sub_1CF9E8048();
                                                                                                          v12, v429, v430, v431, v432, v433, v434, v435;
                                                                                                          if (v428)
                                                                                                          {
                                                                                                            goto LABEL_6;
                                                                                                          }

                                                                                                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                          v12 = v5;
                                                                                                          if (v6 != a1 || v5 != a2)
                                                                                                          {
                                                                                                            v436 = sub_1CF9E8048();
                                                                                                            v12, v437, v438, v439, v440, v441, v442, v443;
                                                                                                            if (v436)
                                                                                                            {
                                                                                                              goto LABEL_6;
                                                                                                            }

                                                                                                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                            v12 = v5;
                                                                                                            if (v6 != a1 || v5 != a2)
                                                                                                            {
                                                                                                              v444 = sub_1CF9E8048();
                                                                                                              v12, v445, v446, v447, v448, v449, v450, v451;
                                                                                                              if (v444)
                                                                                                              {
                                                                                                                goto LABEL_6;
                                                                                                              }

                                                                                                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                              v12 = v5;
                                                                                                              if (v6 != a1 || v5 != a2)
                                                                                                              {
                                                                                                                v452 = sub_1CF9E8048();
                                                                                                                v12, v453, v454, v455, v456, v457, v458, v459;
                                                                                                                if (v452)
                                                                                                                {
                                                                                                                  goto LABEL_6;
                                                                                                                }

                                                                                                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                v12 = v5;
                                                                                                                if (v6 != a1 || v5 != a2)
                                                                                                                {
                                                                                                                  v460 = sub_1CF9E8048();
                                                                                                                  v12, v461, v462, v463, v464, v465, v466, v467;
                                                                                                                  if (v460)
                                                                                                                  {
                                                                                                                    goto LABEL_6;
                                                                                                                  }

                                                                                                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                  v12 = v5;
                                                                                                                  if (v6 != a1 || v5 != a2)
                                                                                                                  {
                                                                                                                    v468 = sub_1CF9E8048();
                                                                                                                    v12, v469, v470, v471, v472, v473, v474, v475;
                                                                                                                    if (v468)
                                                                                                                    {
                                                                                                                      goto LABEL_6;
                                                                                                                    }

                                                                                                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                    v12 = v5;
                                                                                                                    if (v6 != a1 || v5 != a2)
                                                                                                                    {
                                                                                                                      v476 = sub_1CF9E8048();
                                                                                                                      v12, v477, v478, v479, v480, v481, v482, v483;
                                                                                                                      if (v476)
                                                                                                                      {
                                                                                                                        goto LABEL_6;
                                                                                                                      }

                                                                                                                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                      v12 = v5;
                                                                                                                      if (v6 != a1 || v5 != a2)
                                                                                                                      {
                                                                                                                        v484 = sub_1CF9E8048();
                                                                                                                        v12, v485, v486, v487, v488, v489, v490, v491;
                                                                                                                        if (v484)
                                                                                                                        {
                                                                                                                          goto LABEL_6;
                                                                                                                        }

                                                                                                                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                        v12 = v5;
                                                                                                                        if (v6 != a1 || v5 != a2)
                                                                                                                        {
                                                                                                                          v492 = sub_1CF9E8048();
                                                                                                                          v12, v493, v494, v495, v496, v497, v498, v499;
                                                                                                                          if (v492)
                                                                                                                          {
                                                                                                                            goto LABEL_6;
                                                                                                                          }

                                                                                                                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                          v12 = v5;
                                                                                                                          if (v6 != a1 || v5 != a2)
                                                                                                                          {
                                                                                                                            v500 = sub_1CF9E8048();
                                                                                                                            v12, v501, v502, v503, v504, v505, v506, v507;
                                                                                                                            if (v500)
                                                                                                                            {
                                                                                                                              goto LABEL_6;
                                                                                                                            }

                                                                                                                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                            v12 = v5;
                                                                                                                            if (v6 != a1 || v5 != a2)
                                                                                                                            {
                                                                                                                              v508 = sub_1CF9E8048();
                                                                                                                              v12, v509, v510, v511, v512, v513, v514, v515;
                                                                                                                              if (v508)
                                                                                                                              {
                                                                                                                                goto LABEL_6;
                                                                                                                              }

                                                                                                                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                              v12 = v5;
                                                                                                                              if (v6 != a1 || v5 != a2)
                                                                                                                              {
                                                                                                                                v516 = sub_1CF9E8048();
                                                                                                                                v12, v517, v518, v519, v520, v521, v522, v523;
                                                                                                                                if (v516)
                                                                                                                                {
                                                                                                                                  goto LABEL_6;
                                                                                                                                }

                                                                                                                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                v12 = v5;
                                                                                                                                if (v6 != a1 || v5 != a2)
                                                                                                                                {
                                                                                                                                  v524 = sub_1CF9E8048();
                                                                                                                                  v12, v525, v526, v527, v528, v529, v530, v531;
                                                                                                                                  if (v524)
                                                                                                                                  {
                                                                                                                                    goto LABEL_6;
                                                                                                                                  }

                                                                                                                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                  v12 = v5;
                                                                                                                                  if (v6 != a1 || v5 != a2)
                                                                                                                                  {
                                                                                                                                    v532 = sub_1CF9E8048();
                                                                                                                                    v12, v533, v534, v535, v536, v537, v538, v539;
                                                                                                                                    if (v532)
                                                                                                                                    {
                                                                                                                                      goto LABEL_6;
                                                                                                                                    }

                                                                                                                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                    v12 = v5;
                                                                                                                                    if (v6 != a1 || v5 != a2)
                                                                                                                                    {
                                                                                                                                      v540 = sub_1CF9E8048();
                                                                                                                                      v12, v541, v542, v543, v544, v545, v546, v547;
                                                                                                                                      if (v540)
                                                                                                                                      {
                                                                                                                                        goto LABEL_6;
                                                                                                                                      }

                                                                                                                                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                      v12 = v5;
                                                                                                                                      if (v6 != a1 || v5 != a2)
                                                                                                                                      {
                                                                                                                                        v548 = sub_1CF9E8048();
                                                                                                                                        v12, v549, v550, v551, v552, v553, v554, v555;
                                                                                                                                        if (v548)
                                                                                                                                        {
                                                                                                                                          goto LABEL_6;
                                                                                                                                        }

                                                                                                                                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                        v12 = v5;
                                                                                                                                        if (v6 != a1 || v5 != a2)
                                                                                                                                        {
                                                                                                                                          v556 = sub_1CF9E8048();
                                                                                                                                          v12, v557, v558, v559, v560, v561, v562, v563;
                                                                                                                                          if (v556)
                                                                                                                                          {
                                                                                                                                            goto LABEL_6;
                                                                                                                                          }

                                                                                                                                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                          v12 = v5;
                                                                                                                                          if (v6 != a1 || v5 != a2)
                                                                                                                                          {
                                                                                                                                            v564 = sub_1CF9E8048();
                                                                                                                                            v12, v565, v566, v567, v568, v569, v570, v571;
                                                                                                                                            if (v564)
                                                                                                                                            {
                                                                                                                                              goto LABEL_6;
                                                                                                                                            }

                                                                                                                                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                            v12 = v5;
                                                                                                                                            if (v6 != a1 || v5 != a2)
                                                                                                                                            {
                                                                                                                                              v572 = sub_1CF9E8048();
                                                                                                                                              v12, v573, v574, v575, v576, v577, v578, v579;
                                                                                                                                              if (v572)
                                                                                                                                              {
                                                                                                                                                goto LABEL_6;
                                                                                                                                              }

                                                                                                                                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                              v12 = v5;
                                                                                                                                              if (v6 != a1 || v5 != a2)
                                                                                                                                              {
                                                                                                                                                v580 = sub_1CF9E8048();
                                                                                                                                                v12, v581, v582, v583, v584, v585, v586, v587;
                                                                                                                                                if (v580)
                                                                                                                                                {
                                                                                                                                                  goto LABEL_6;
                                                                                                                                                }

                                                                                                                                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                v12 = v5;
                                                                                                                                                if (v6 != a1 || v5 != a2)
                                                                                                                                                {
                                                                                                                                                  v588 = sub_1CF9E8048();
                                                                                                                                                  v12, v589, v590, v591, v592, v593, v594, v595;
                                                                                                                                                  if (v588)
                                                                                                                                                  {
                                                                                                                                                    goto LABEL_6;
                                                                                                                                                  }

                                                                                                                                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                  v12 = v5;
                                                                                                                                                  if (v6 != a1 || v5 != a2)
                                                                                                                                                  {
                                                                                                                                                    v596 = sub_1CF9E8048();
                                                                                                                                                    v12, v597, v598, v599, v600, v601, v602, v603;
                                                                                                                                                    if (v596)
                                                                                                                                                    {
                                                                                                                                                      goto LABEL_6;
                                                                                                                                                    }

                                                                                                                                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                    v12 = v5;
                                                                                                                                                    if (v6 != a1 || v5 != a2)
                                                                                                                                                    {
                                                                                                                                                      v604 = sub_1CF9E8048();
                                                                                                                                                      v12, v605, v606, v607, v608, v609, v610, v611;
                                                                                                                                                      if (v604)
                                                                                                                                                      {
                                                                                                                                                        goto LABEL_6;
                                                                                                                                                      }

                                                                                                                                                      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                      v12 = v5;
                                                                                                                                                      if (v6 != a1 || v5 != a2)
                                                                                                                                                      {
                                                                                                                                                        v612 = sub_1CF9E8048();
                                                                                                                                                        v12, v613, v614, v615, v616, v617, v618, v619;
                                                                                                                                                        if (v612)
                                                                                                                                                        {
                                                                                                                                                          goto LABEL_6;
                                                                                                                                                        }

                                                                                                                                                        v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                        v12 = v5;
                                                                                                                                                        if (v6 != a1 || v5 != a2)
                                                                                                                                                        {
                                                                                                                                                          v620 = sub_1CF9E8048();
                                                                                                                                                          v12, v621, v622, v623, v624, v625, v626, v627;
                                                                                                                                                          if (v620)
                                                                                                                                                          {
                                                                                                                                                            goto LABEL_6;
                                                                                                                                                          }

                                                                                                                                                          v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                          v12 = v5;
                                                                                                                                                          if (v6 != a1 || v5 != a2)
                                                                                                                                                          {
                                                                                                                                                            v628 = sub_1CF9E8048();
                                                                                                                                                            v12, v629, v630, v631, v632, v633, v634, v635;
                                                                                                                                                            if (v628)
                                                                                                                                                            {
                                                                                                                                                              goto LABEL_6;
                                                                                                                                                            }

                                                                                                                                                            v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                            v12 = v5;
                                                                                                                                                            if (v6 != a1 || v5 != a2)
                                                                                                                                                            {
                                                                                                                                                              v636 = sub_1CF9E8048();
                                                                                                                                                              v12, v637, v638, v639, v640, v641, v642, v643;
                                                                                                                                                              if (v636)
                                                                                                                                                              {
                                                                                                                                                                goto LABEL_6;
                                                                                                                                                              }

                                                                                                                                                              v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                              v12 = v5;
                                                                                                                                                              if (v6 != a1 || v5 != a2)
                                                                                                                                                              {
                                                                                                                                                                v644 = sub_1CF9E8048();
                                                                                                                                                                v12, v645, v646, v647, v648, v649, v650, v651;
                                                                                                                                                                if (v644)
                                                                                                                                                                {
                                                                                                                                                                  goto LABEL_6;
                                                                                                                                                                }

                                                                                                                                                                v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                                v12 = v5;
                                                                                                                                                                if (v6 != a1 || v5 != a2)
                                                                                                                                                                {
                                                                                                                                                                  v652 = sub_1CF9E8048();
                                                                                                                                                                  v12, v653, v654, v655, v656, v657, v658, v659;
                                                                                                                                                                  if (v652)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_6;
                                                                                                                                                                  }

                                                                                                                                                                  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                                  v12 = v5;
                                                                                                                                                                  if (v6 != a1 || v5 != a2)
                                                                                                                                                                  {
                                                                                                                                                                    v660 = sub_1CF9E8048();
                                                                                                                                                                    v12, v661, v662, v663, v664, v665, v666, v667;
                                                                                                                                                                    if (v660)
                                                                                                                                                                    {
                                                                                                                                                                      goto LABEL_6;
                                                                                                                                                                    }

                                                                                                                                                                    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                                                                                                                                                                    v12 = v5;
                                                                                                                                                                    if (v6 != a1 || v5 != a2)
                                                                                                                                                                    {
                                                                                                                                                                      v22 = sub_1CF9E8048();
                                                                                                                                                                      goto LABEL_20;
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

LABEL_19:
    v22 = 1;
LABEL_20:
    v12, v5, v6, v7, v8, v9, v10, v11;
    return v22 & 1;
  }

LABEL_6:
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1CF19E3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 40) + **(a7 + 40));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1CF19E550;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1CF19E550(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_1CF19E6A8(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x676E696C706D6173 && a2 == 0xEE00746C75736552)
  {
    a2, 0xEE00746C75736552, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1CF9E8048();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_1CF19E738(uint64_t a1)
{
  v2 = sub_1CF1A8EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF19E774(uint64_t a1)
{
  v2 = sub_1CF1A8EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF19E7B0@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDDD8, &qword_1CF9FB1A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8EB8();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1CF9E7D68();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  return result;
}

uint64_t sub_1CF19E918(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDDE8, &qword_1CF9FB1B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8EB8();
  sub_1CF9E82A8();
  sub_1CF9E7ED8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1CF19EA58(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE00, &qword_1CF9FB1C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8F0C();
  sub_1CF9E82A8();
  v11[0] = *v3;
  *(v11 + 11) = *(v3 + 11);
  v10[15] = 0;
  sub_1CF1A8980();
  sub_1CF9E7F08();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    sub_1CF9E7EB8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF19EBF8()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1CF19EC38(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0x80000001CFA2DD50;
  if (a1 == 0xD000000000000010 && 0x80000001CFA2DD50 == a2 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {
    0xE700000000000000, v12, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF19ED20(uint64_t a1)
{
  v2 = sub_1CF1A8F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF19ED5C(uint64_t a1)
{
  v2 = sub_1CF1A8F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF19ED98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if ((sub_1CF1A752C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24) | (*(a1 + 26) << 16), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | (*(a2 + 26) << 16)) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1CF9E8048();
}

double sub_1CF19EE4C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1CF1A7638(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1CF19EEA8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 26);
  v5 = *(v0 + 24);
  sub_1CF9E81D8();
  sub_1CF1A0B24(v7, v1, v2, v3, v5 | (v4 << 16));
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF19EF34(uint64_t a1)
{
  sub_1CF1A0B24(a1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24) | (*(v1 + 26) << 16));

  return sub_1CF9E69C8();
}

uint64_t sub_1CF19EF94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 26);
  v6 = *(v1 + 24);
  sub_1CF9E81D8();
  sub_1CF1A0B24(v8, v2, v3, v4, v6 | (v5 << 16));
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF19F01C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_1CF19F0C0(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24) | (*(v0 + 26) << 16));
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0x3A72657620, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v1, v2);
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1CF19F0C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (BYTE1(a4) == 89)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v9 = sub_1CF19F384(SBYTE1(a4));
    v10 = (*(v9 + 176))();
    v12 = v11;
    MEMORY[0x1D3868CC0](v10);
    v12, v13, v14, v15, v16, v17, v18, v19;
    v7 = 0x3A626F6A20;
    v8 = 0xE500000000000000;
  }

  sub_1CF9E7948();
  0xE000000000000000, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0x3A72696420, 0xE500000000000000);
  v37 = 0xE600000000000000;
  v38 = 0x64616F6C7075;
  v39 = 0xE700000000000000;
  v40 = 0x6E776F6E6B6E75;
  if (a4 != 5)
  {
    v40 = 7958113;
    v39 = 0xE300000000000000;
  }

  v41 = 0x80000001CFA2DCB0;
  if (a4 != 3)
  {
    v41 = 0x80000001CFA2DC90;
  }

  if (a4 <= 4u)
  {
    v40 = 0xD000000000000010;
    v39 = v41;
  }

  if (a4 != 1)
  {
    v38 = 0x64616F6C6E776F64;
    v37 = 0xE800000000000000;
  }

  if (!a4)
  {
    v38 = 0xD000000000000012;
    v37 = 0x80000001CFA2DCD0;
  }

  if (a4 <= 2u)
  {
    v42 = v38;
  }

  else
  {
    v42 = v40;
  }

  if (a4 <= 2u)
  {
    v43 = v37;
  }

  else
  {
    v43 = v39;
  }

  v44 = a4 & 0xFF0000;
  v45 = 0xEB00000000676E69;
  if ((a4 & 0x10000) == 0)
  {
    v45 = 0xEC000000676E6979;
  }

  v46 = 0x796C7265646E7520;
  if ((a4 & 0x10000) == 0)
  {
    v46 = 0x6C7265646E752120;
  }

  if (v44 == 0x20000)
  {
    v47 = 0xE000000000000000;
  }

  else
  {
    v47 = v45;
  }

  if (v44 == 0x20000)
  {
    v48 = 0;
  }

  else
  {
    v48 = v46;
  }

  MEMORY[0x1D3868CC0](v42, v43);
  v43, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1D3868CC0](v7, v8);
  v8, v56, v57, v58, v59, v60, v61, v62;
  MEMORY[0x1D3868CC0](v48, v47);
  v47, v63, v64, v65, v66, v67, v68, v69;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1CF19F384(char a1)
{
  switch(a1)
  {
    case 1:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
      break;
    case 2:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
      break;
    case 3:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
      break;
    case 4:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF80, &unk_1CF9FAE70);
      break;
    case 5:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA58, &unk_1CFA05640);
      break;
    case 6:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
      break;
    case 7:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
      break;
    case 8:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDB0, &unk_1CF9FAE50);
      break;
    case 9:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA48, &qword_1CF9FAE48);
      break;
    case 10:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF90, &qword_1CF9FAE40);
      break;
    case 11:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA40, &qword_1CF9FEFB0);
      break;
    case 12:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA38, &unk_1CF9FAE30);
      break;
    case 13:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFA0, &qword_1CF9FAE28);
      break;
    case 14:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE60, &qword_1CF9FAE20);
      break;
    case 15:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA30, &unk_1CFA05650);
      break;
    case 16:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFB0, &unk_1CF9FAE10);
      break;
    case 17:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
      break;
    case 18:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFC0, &unk_1CF9FAE00);
      break;
    case 19:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA20, &unk_1CFA05670);
      break;
    case 20:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFD0, &unk_1CF9FADF0);
      break;
    case 21:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA18, &unk_1CFA05680);
      break;
    case 22:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFE0, &unk_1CF9FADE0);
      break;
    case 23:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
      break;
    case 24:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA08, &qword_1CF9FADD0);
      break;
    case 25:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
      break;
    case 26:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
      break;
    case 27:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFF0, &qword_1CF9FADB8);
      break;
    case 28:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F0, &qword_1CF9FADB0);
      break;
    case 29:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB90, &unk_1CFA052F0);
      break;
    case 30:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0000, &unk_1CF9FADA0);
      break;
    case 31:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9E8, &unk_1CFA05690);
      break;
    case 32:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB80, &unk_1CF9FAD90);
      break;
    case 33:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0010, &qword_1CF9FAD88);
      break;
    case 34:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9E0, &qword_1CF9FAD80);
      break;
    case 35:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0030, &qword_1CF9FAD78);
      break;
    case 36:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D8, &qword_1CF9FAD70);
      break;
    case 37:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0040, &qword_1CF9FAD68);
      break;
    case 38:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D0, &qword_1CF9FAD60);
      break;
    case 39:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0050, &qword_1CF9FAD58);
      break;
    case 40:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C8, &qword_1CF9FAD50);
      break;
    case 41:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0060, &qword_1CF9FAD48);
      break;
    case 42:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
      break;
    case 43:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0070, &qword_1CF9FAD38);
      break;
    case 44:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9B8, &qword_1CF9FAD30);
      break;
    case 45:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0080, &qword_1CF9FAD28);
      break;
    case 46:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9B0, &qword_1CF9FAD20);
      break;
    case 47:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0090, &qword_1CF9FAD18);
      break;
    case 48:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A8, &qword_1CF9FAD10);
      break;
    case 49:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00A0, &qword_1CF9FAD08);
      break;
    case 50:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A0, &qword_1CF9FAD00);
      break;
    case 51:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00B0, &qword_1CF9FACF8);
      break;
    case 52:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD998, &qword_1CF9FACF0);
      break;
    case 53:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00C0, &qword_1CF9FACE8);
      break;
    case 54:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD990, &qword_1CF9FACE0);
      break;
    case 55:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00D0, &qword_1CF9FACD8);
      break;
    case 56:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD988, &qword_1CF9FACD0);
      break;
    case 57:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00E0, &qword_1CF9FACC8);
      break;
    case 58:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD980, &qword_1CF9FACC0);
      break;
    case 59:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00F0, &qword_1CF9FACB8);
      break;
    case 60:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0100, &qword_1CF9FACA8);
      break;
    case 61:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD970, &qword_1CF9FACA0);
      break;
    case 62:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD978, &qword_1CF9FACB0);
      break;
    case 63:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD968, &unk_1CFA056A0);
      break;
    case 64:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0020, &unk_1CF9FAC90);
      break;
    case 65:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0110, &qword_1CF9FAC88);
      break;
    case 66:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD960, &qword_1CF9FAC80);
      break;
    case 67:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0120, &qword_1CF9FAC78);
      break;
    case 68:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD958, &qword_1CF9FAC70);
      break;
    case 69:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF60, &unk_1CFA05620);
      break;
    case 70:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0130, &unk_1CF9FAC60);
      break;
    case 71:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD950, &unk_1CFA056B0);
      break;
    case 72:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0140, &unk_1CF9FAC50);
      break;
    case 73:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD948, &unk_1CFA056C0);
      break;
    case 74:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0150, &unk_1CF9FAC40);
      break;
    case 75:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD40, &qword_1CF9FAC38);
      break;
    case 76:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD940, &qword_1CF9FAC30);
      break;
    case 77:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0160, &qword_1CF9FAC28);
      break;
    case 78:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD938, &qword_1CF9FAC20);
      break;
    case 79:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0170, &qword_1CF9FAC18);
      break;
    case 80:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD930, &qword_1CF9FAC10);
      break;
    case 81:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0180, &qword_1CF9FAC08);
      break;
    case 82:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD928, &qword_1CF9FAC00);
      break;
    case 83:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF20, &unk_1CFA055F0);
      break;
    case 84:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D0, &unk_1CF9FABF0);
      break;
    case 85:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF70, &unk_1CFA05630);
      break;
    case 86:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0190, &unk_1CF9FABE0);
      break;
    case 87:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD920, &unk_1CFA056D0);
      break;
    case 88:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01A0, &unk_1CF9FABD0);
      break;
    default:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
      break;
  }

  return result;
}

uint64_t sub_1CF19FA9C(char a1)
{
  switch(a1)
  {
    case 1:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD28, &qword_1CF9FB150);
      break;
    case 2:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD20, &qword_1CF9FB148);
      break;
    case 3:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD18, &qword_1CF9FB140);
      break;
    case 4:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD10, &qword_1CF9FB138);
      break;
    case 5:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD08, &qword_1CF9FB130);
      break;
    case 6:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD00, &qword_1CF9FB128);
      break;
    case 7:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCF8, &qword_1CF9FB120);
      break;
    case 8:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCF0, &qword_1CF9FB118);
      break;
    case 9:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCE8, &qword_1CF9FB110);
      break;
    case 10:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCE0, &qword_1CF9FB108);
      break;
    case 11:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCD8, &qword_1CF9FB100);
      break;
    case 12:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCD0, &qword_1CF9FB0F8);
      break;
    case 13:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCC8, &qword_1CF9FB0F0);
      break;
    case 14:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCC0, &qword_1CF9FB0E8);
      break;
    case 15:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCB8, &qword_1CF9FB0E0);
      break;
    case 16:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCB0, &qword_1CF9FB0D8);
      break;
    case 17:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCA8, &qword_1CF9FB0D0);
      break;
    case 18:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDCA0, &qword_1CF9FB0C8);
      break;
    case 19:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC98, &qword_1CF9FB0C0);
      break;
    case 20:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC90, &qword_1CF9FB0B8);
      break;
    case 21:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC88, &qword_1CF9FB0B0);
      break;
    case 22:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC80, &qword_1CF9FB0A8);
      break;
    case 23:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC78, &qword_1CF9FB0A0);
      break;
    case 24:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC70, &qword_1CF9FB098);
      break;
    case 25:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC68, &qword_1CF9FB090);
      break;
    case 26:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC60, &qword_1CF9FB088);
      break;
    case 27:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC58, &qword_1CF9FB080);
      break;
    case 28:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC50, &qword_1CF9FB078);
      break;
    case 29:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC48, &qword_1CF9FB070);
      break;
    case 30:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC40, &qword_1CF9FB068);
      break;
    case 31:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC38, &qword_1CF9FB060);
      break;
    case 32:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC30, &qword_1CF9FB058);
      break;
    case 33:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC28, &qword_1CF9FB050);
      break;
    case 34:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC20, &qword_1CF9FB048);
      break;
    case 35:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC18, &qword_1CF9FB040);
      break;
    case 36:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC10, &qword_1CF9FB038);
      break;
    case 37:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC08, &qword_1CF9FB030);
      break;
    case 38:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDC00, &qword_1CF9FB028);
      break;
    case 39:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBF8, &qword_1CF9FB020);
      break;
    case 40:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBF0, &qword_1CF9FB018);
      break;
    case 41:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBE8, &qword_1CF9FB010);
      break;
    case 42:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBE0, &qword_1CF9FB008);
      break;
    case 43:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBD8, &qword_1CF9FB000);
      break;
    case 44:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBD0, &qword_1CF9FAFF8);
      break;
    case 45:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBC8, &qword_1CF9FAFF0);
      break;
    case 46:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBC0, &qword_1CF9FAFE8);
      break;
    case 47:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBB8, &qword_1CF9FAFE0);
      break;
    case 48:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBB0, &qword_1CF9FAFD8);
      break;
    case 49:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBA8, &qword_1CF9FAFD0);
      break;
    case 50:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDBA0, &qword_1CF9FAFC8);
      break;
    case 51:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB98, &qword_1CF9FAFC0);
      break;
    case 52:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB90, &qword_1CF9FAFB8);
      break;
    case 53:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB88, &qword_1CF9FAFB0);
      break;
    case 54:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB80, &qword_1CF9FAFA8);
      break;
    case 55:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB78, &qword_1CF9FAFA0);
      break;
    case 56:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB70, &qword_1CF9FAF98);
      break;
    case 57:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB68, &qword_1CF9FAF90);
      break;
    case 58:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB60, &qword_1CF9FAF88);
      break;
    case 59:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB58, &qword_1CF9FAF80);
      break;
    case 60:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB48, &qword_1CF9FAF70);
      break;
    case 61:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB40, &qword_1CF9FAF68);
      break;
    case 62:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB50, &qword_1CF9FAF78);
      break;
    case 63:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB38, &qword_1CF9FAF60);
      break;
    case 64:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB30, &qword_1CF9FAF58);
      break;
    case 65:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB28, &qword_1CF9FAF50);
      break;
    case 66:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB20, &qword_1CF9FAF48);
      break;
    case 67:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB18, &qword_1CF9FAF40);
      break;
    case 68:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB10, &qword_1CF9FAF38);
      break;
    case 69:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB08, &qword_1CF9FAF30);
      break;
    case 70:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDB00, &qword_1CF9FAF28);
      break;
    case 71:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAF8, &qword_1CF9FAF20);
      break;
    case 72:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAF0, &qword_1CF9FAF18);
      break;
    case 73:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAE8, &qword_1CF9FAF10);
      break;
    case 74:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAE0, &qword_1CF9FAF08);
      break;
    case 75:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAD8, &qword_1CF9FAF00);
      break;
    case 76:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAD0, &qword_1CF9FAEF8);
      break;
    case 77:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAC8, &qword_1CF9FAEF0);
      break;
    case 78:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAC0, &qword_1CF9FAEE8);
      break;
    case 79:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAB8, &qword_1CF9FAEE0);
      break;
    case 80:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAB0, &qword_1CF9FAED8);
      break;
    case 81:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAA8, &qword_1CF9FAED0);
      break;
    case 82:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDAA0, &qword_1CF9FAEC8);
      break;
    case 83:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA98, &qword_1CF9FAEC0);
      break;
    case 84:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA90, &qword_1CF9FAEB8);
      break;
    case 85:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA88, &qword_1CF9FAEB0);
      break;
    case 86:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA80, &qword_1CF9FAEA8);
      break;
    case 87:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA78, &qword_1CF9FAEA0);
      break;
    case 88:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA70, &qword_1CF9FAE98);
      break;
    default:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD30, &qword_1CF9FB158);
      break;
  }

  return result;
}

uint64_t sub_1CF1A01B4(char a1)
{
  switch(a1)
  {
    case 1:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      break;
    case 2:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
      break;
    case 3:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
      break;
    case 4:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
      break;
    case 5:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF70, &qword_1CF9FB468);
      break;
    case 6:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
      break;
    case 7:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF68, &qword_1CF9FB458);
      break;
    case 8:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF60, &qword_1CF9FB450);
      break;
    case 9:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF58, &qword_1CF9FB448);
      break;
    case 10:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF50, &qword_1CF9FB440);
      break;
    case 11:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0260, &unk_1CF9FCB00);
      break;
    case 12:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD50, &unk_1CF9FB430);
      break;
    case 13:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF48, &qword_1CF9FB428);
      break;
    case 14:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
      break;
    case 15:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0270, &unk_1CFA05770);
      break;
    case 16:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
      break;
    case 17:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0240, &qword_1CFA05750);
      break;
    case 18:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0280, &unk_1CF9FB400);
      break;
    case 19:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF38, &qword_1CF9FB3F8);
      break;
    case 20:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0290, &qword_1CF9FB3F0);
      break;
    case 21:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF30, &qword_1CF9FB3E8);
      break;
    case 22:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF28, &qword_1CF9FB3E0);
      break;
    case 23:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
      break;
    case 24:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02A0, &unk_1CF9FB3D0);
      break;
    case 25:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
      break;
    case 26:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF10, &qword_1CF9FB3C0);
      break;
    case 27:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02B0, &unk_1CFA05780);
      break;
    case 28:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF08, &unk_1CF9FB3B0);
      break;
    case 29:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02C0, &unk_1CFA05790);
      break;
    case 30:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF00, &unk_1CF9FB3A0);
      break;
    case 31:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02D0, &unk_1CFA057A0);
      break;
    case 32:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF8, &unk_1CF9FB390);
      break;
    case 33:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF0, &qword_1CF9FB388);
      break;
    case 34:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02F0, &qword_1CF9FB380);
      break;
    case 35:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE8, &qword_1CF9FB378);
      break;
    case 36:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0300, &qword_1CF9FB370);
      break;
    case 37:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE0, &unk_1CFA18220);
      break;
    case 38:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0310, &unk_1CF9FB360);
      break;
    case 39:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDED8, &qword_1CF9FB358);
      break;
    case 40:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0320, &qword_1CF9FB350);
      break;
    case 41:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDED0, &qword_1CF9FB348);
      break;
    case 42:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0330, &qword_1CF9FB340);
      break;
    case 43:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEC8, &qword_1CF9FB338);
      break;
    case 44:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0340, &qword_1CF9FB330);
      break;
    case 45:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEC0, &qword_1CF9FB328);
      break;
    case 46:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0350, &qword_1CF9FB320);
      break;
    case 47:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEB8, &qword_1CF9FB318);
      break;
    case 48:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0360, &qword_1CF9FB310);
      break;
    case 49:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEB0, &qword_1CF9FB308);
      break;
    case 50:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0370, &qword_1CF9FB300);
      break;
    case 51:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEA8, &qword_1CF9FB2F8);
      break;
    case 52:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0380, &qword_1CF9FB2F0);
      break;
    case 53:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEA0, &qword_1CF9FB2E8);
      break;
    case 54:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0390, &qword_1CF9FB2E0);
      break;
    case 55:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE98, &qword_1CF9FB2D8);
      break;
    case 56:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03A0, &qword_1CF9FB2D0);
      break;
    case 57:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0220, &unk_1CFA05730);
      break;
    case 58:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE90, &unk_1CF9FB2C0);
      break;
    case 59:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03B0, &unk_1CFA057C0);
      break;
    case 60:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03C0, &unk_1CFA057D0);
      break;
    case 61:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE80, &unk_1CF9FB2A0);
      break;
    case 62:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE88, &unk_1CF9FB2B0);
      break;
    case 63:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02E0, &unk_1CFA057B0);
      break;
    case 64:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE78, &unk_1CF9FB290);
      break;
    case 65:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03D0, &unk_1CFA057E0);
      break;
    case 66:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE70, &unk_1CF9FB280);
      break;
    case 67:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE68, &qword_1CF9FB278);
      break;
    case 68:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03E0, &qword_1CF9FB270);
      break;
    case 69:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE60, &qword_1CF9FB268);
      break;
    case 70:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03F0, &qword_1CF9FB260);
      break;
    case 71:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE58, &qword_1CF9FB258);
      break;
    case 72:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0400, &qword_1CF9FB250);
      break;
    case 73:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE50, &qword_1CF9FB248);
      break;
    case 74:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0410, &qword_1CF9FB240);
      break;
    case 75:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCA0, &unk_1CFA053F0);
      break;
    case 76:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE48, &unk_1CF9FB230);
      break;
    case 77:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0420, &unk_1CFA057F0);
      break;
    case 78:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE40, &unk_1CF9FB220);
      break;
    case 79:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0430, &unk_1CFA05800);
      break;
    case 80:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE38, &unk_1CF9FB210);
      break;
    case 81:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0440, &unk_1CFA05810);
      break;
    case 82:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE30, &unk_1CF9FB200);
      break;
    case 83:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE28, &qword_1CF9FB1F8);
      break;
    case 84:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0450, &qword_1CF9FB1F0);
      break;
    case 85:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE20, &qword_1CF9FB1E8);
      break;
    case 86:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0460, &qword_1CF9FB1E0);
      break;
    case 87:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE18, &qword_1CF9FB1D8);
      break;
    case 88:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0470, &qword_1CF9FB1D0);
      break;
    default:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
      break;
  }

  return result;
}

uint64_t sub_1CF1A08CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  HIDWORD(v13) = a5;
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD70, &qword_1CF9FB188);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8A7C();
  sub_1CF9E82A8();
  v21 = 0;
  sub_1CF9E7EB8();
  if (!v5)
  {
    v12 = WORD2(v13);
    v20 = 1;
    sub_1CF9E7EE8();
    v19 = v12;
    v18 = 2;
    sub_1CF1A8B78();
    sub_1CF9E7F08();
    v17 = HIBYTE(v12);
    v16 = 3;
    sub_1CF1A8BCC();
    sub_1CF9E7E68();
    v15 = 4;
    sub_1CF9E7E48();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1CF1A0B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = BYTE1(a5);
  sub_1CF9E69C8();
  MEMORY[0x1D386A470](a4);
  MEMORY[0x1D386A470](a5);
  sub_1CF9E81F8();
  if (v7 != 89)
  {
    MEMORY[0x1D386A470](qword_1CF9FBAF8[SBYTE1(a5)]);
  }

  if ((a5 & 0xFF0000) != 0x20000)
  {
    sub_1CF9E81F8();
  }

  return sub_1CF9E81F8();
}

uint64_t sub_1CF1A0BC4(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5)
{
  v12[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD60, &qword_1CF9FB178);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8A28();
  sub_1CF9E82A8();
  v15 = 0;
  sub_1CF9E7EB8();
  if (!v5)
  {
    v14 = 1;
    sub_1CF9E7ED8();
    v13 = 2;
    sub_1CF9E7E48();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1CF1A0D88()
{
  v1 = *v0;
  v2 = 0x6D6F44726F727265;
  v3 = 0x726944726F727265;
  v4 = 0x65646F43626F6ALL;
  if (v1 != 3)
  {
    v4 = 0x69796C7265646E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646F43726F727265;
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

uint64_t sub_1CF1A0E40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1A78B4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1A0E68(uint64_t a1)
{
  v2 = sub_1CF1A8A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1A0EA4(uint64_t a1)
{
  v2 = sub_1CF1A8A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF1A0F14@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF1A7A80(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 26) = BYTE2(v7);
  }

  return result;
}

uint64_t sub_1CF1A0F84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 26);
  v5 = *(v0 + 24);
  sub_1CF9E81D8();
  sub_1CF1A0B24(v7, v1, v2, v3, v5 | (v4 << 16));
  return sub_1CF9E8228();
}

uint64_t sub_1CF1A100C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 26);
  v6 = *(v1 + 24);
  sub_1CF9E81D8();
  sub_1CF1A0B24(v8, v2, v3, v4, v6 | (v5 << 16));
  return sub_1CF9E8228();
}

uint64_t sub_1CF1A1090()
{
  v1 = 0x676E696C706D6173;
  if (*v0 != 1)
  {
    v1 = 0x796C6E4F727474;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1CF1A10F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1A7D1C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1A111C(uint64_t a1)
{
  v2 = sub_1CF1A8A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1A1158(uint64_t a1)
{
  v2 = sub_1CF1A8A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF1A1194(uint64_t a1@<X8>, void *a2@<X0>)
{
  v7 = sub_1CF1A7E38(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
  }
}

uint64_t sub_1CF1A11EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD40, &qword_1CF9FB168);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A881C();
  sub_1CF9E82A8();
  v12[0] = *v3;
  *(v12 + 11) = *(v3 + 11);
  v11 = 0;
  sub_1CF1A8980();
  sub_1CF9E7F08();
  if (!v2)
  {
    v12[0] = v3[2];
    *(v12 + 9) = *(v3 + 41);
    v11 = 1;
    sub_1CF1A89D4();
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CF1A1390()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1CF1A13D0(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0x80000001CFA2DD50;
  if (a1 == 0xD000000000000010 && 0x80000001CFA2DD50 == a2 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFA2DD70 == a2)
  {
    a2, 0x80000001CFA2DD70, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF1A14B4(uint64_t a1)
{
  v2 = sub_1CF1A881C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1A14F0(uint64_t a1)
{
  v2 = sub_1CF1A881C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CF1A152C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1CF1A8040(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

void sub_1CF1A1590(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(v2, v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    sub_1CF4FB2BC(0xD00000000000001FLL, 0x80000001CFA2DC10, v11, v12);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1CF9E7948();
    v48, v15, v16, v17, v18, v19, v20, v21;
    v47 = 0xD00000000000001CLL;
    v48 = 0x80000001CFA2DC70;
    sub_1CF1A9300(&unk_1EDEAECD0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v22 = sub_1CF9E7F98();
    v24 = v23;
    MEMORY[0x1D3868CC0](v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32 = v48;
    sub_1CF4FB2BC(v47, v48, v13, v14);
    v32, v33, v34, v35, v36, v37, v38, v39;
    (*(v8 + 8))(v10, v7);
  }

  v40 = *(*(v2 + *(type metadata accessor for FPFeedbackManagerState(0) + 20)) + 16);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  if (v40)
  {
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA2DC30, v41, v42);
    v43 = a1[3];
    v44 = a1[4];
    v45 = __swift_project_boxed_opaque_existential_1(a1, v43);
    MEMORY[0x1EEE9AC00](v45);
    *(&v46 - 2) = v2;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF1A8800, (&v46 - 4), v43, MEMORY[0x1E69E7CA8] + 8, v44);
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA2DC50, v41, v42);
  }
}

void sub_1CF1A1938(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for FPFeedbackManagerState(0) + 20));
  v67 = v3 + 64;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v66 = (v4 + 63) >> 6;
  v69 = v3;

  v7 = 0;
  while (v6)
  {
    v73 = v2;
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v69 + 48) + 48 * (v9 | (v8 << 6));
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 25);
    v16 = *(v10 + 26);
    v17 = *(v10 + 40);
    v70 = *(v10 + 32);
    v71 = a1[3];
    v72 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v71);
    v2 = v73 & 0xFF000000 | v14 | (v15 << 8) | (v16 << 16);

    v18 = sub_1CF19F0C0(v11, v12, v13, v2);
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x3A72657620, 0xE500000000000000);
    MEMORY[0x1D3868CC0](v70, v17);
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    MEMORY[0x1D3868CC0](60, 0xE100000000000000);
    0xE100000000000000, v28, v29, v30, v31, v32, v33, v34;
    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v35 = sub_1CF9E6F58();
    v37 = v36;
    MEMORY[0x1D3868CC0](v35);
    v37, v38, v39, v40, v41, v42, v43, v44;
    sub_1CF4FB2BC(0, 0xE000000000000000, v71, v72);
    v17, v45, v46, v47, v48, v49, v50, v51;
    v12, v52, v53, v54, v55, v56, v57, v58;
    0xE000000000000000, v59, v60, v61, v62, v63, v64, v65;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v66)
    {

      return;
    }

    v6 = *(v67 + 8 * v8);
    ++v7;
    if (v6)
    {
      v73 = v2;
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1CF1A1B94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDDB8, &qword_1CF9FB1A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8C20();
  sub_1CF9E82A8();
  v12 = 0;
  sub_1CF9E5CF8();
  sub_1CF1A9300(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1CF9E7E68();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FPFeedbackManagerState(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD98, &qword_1CF9FB198);
    sub_1CF1A8D80(&qword_1EC4BDDC0, sub_1CF1A8E10, sub_1CF1A8E64, MEMORY[0x1E69E5E38]);
    sub_1CF9E7F08();
    v10[14] = 2;
    sub_1CF9E7EA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF1A1DF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v33 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD88, &qword_1CF9FB190);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v33 - v5;
  v7 = type metadata accessor for FPFeedbackManagerState(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5CF8();
  v12 = *(*(v11 - 8) + 56);
  v38 = v11;
  v12(v10, 1, 1);
  v13 = *(v8 + 28);
  v14 = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  *&v10[v13] = v14;
  v15 = &v10[*(v8 + 32)];
  *v15 = 0;
  v15[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8C20();
  v40 = v6;
  v16 = v43;
  sub_1CF9E8298();
  if (v16)
  {
    v32 = a1;
  }

  else
  {
    v34 = v15;
    v35 = v14;
    v43 = a1;
    v36 = v13;
    v17 = v39;
    v47 = 0;
    sub_1CF1A9300(&unk_1EDEAB3A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v18 = v41;
    v19 = v40;
    sub_1CF9E7CF8();
    sub_1CEFE4804(v42, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD98, &qword_1CF9FB198);
    v46 = 1;
    sub_1CF1A8D80(&qword_1EC4BDDA0, sub_1CF1A8C74, sub_1CF1A8CC8, MEMORY[0x1E69E5E58]);
    sub_1CF9E7D88();
    v35, v21, v22, v23, v24, v25, v26, v27;
    *&v10[v36] = v44;
    v45 = 2;
    v28 = sub_1CF9E7D38();
    v30 = v29;
    (*(v17 + 8))(v19, v18);
    v31 = v34;
    *v34 = v28;
    *(v31 + 8) = v30 & 1;
    sub_1CF1A8D1C(v10, v37);
    v32 = v43;
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_1CF1A9030(v10, type metadata accessor for FPFeedbackManagerState);
}

unint64_t sub_1CF1A2200()
{
  v1 = 0x676E696C706D6173;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1CF1A226C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1A8340(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1A2294(uint64_t a1)
{
  v2 = sub_1CF1A8C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1A22D0(uint64_t a1)
{
  v2 = sub_1CF1A8C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF1A233C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5CF8();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 20);
  result = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  *(a2 + v5) = result;
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1CF1A2478()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(v0 + 112);
  sub_1CF1A6E34();
  if (!v1)
  {
    v14 = *(*v12 + 136);
    swift_beginAccess();
    sub_1CEFCCBDC(v12 + v14, v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1CEFCCC44(v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v13 = 0;
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_1CF9E5CC8();
      v15 = sub_1CF9E5C58();
      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v11, v5);
      v13 = v15 ^ 1;
    }
  }

  return v13 & 1;
}

void sub_1CF1A26B0(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 112);
  sub_1CF1A6E34();
  if (!v2)
  {
    v8 = sub_1CF9E5CF8();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v6, a1, v8);
    (*(v9 + 56))(v6, 0, 1, v8);
    v10 = *(*v7 + 136);
    swift_beginAccess();
    sub_1CEFE4804(v6, &v7[v10]);
    swift_endAccess();
    v7[72] = 1;
    sub_1CF7F1D28();
  }
}

uint64_t sub_1CF1A2824(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 808) = a4;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 224) = a1;
  v7 = *v5;
  v8 = sub_1CF9E5E28();
  *(v6 + 264) = v8;
  *(v6 + 272) = *(v8 - 8);
  *(v6 + 280) = swift_task_alloc();
  v9 = sub_1CF9E5E38();
  *(v6 + 288) = v9;
  *(v6 + 296) = *(v9 - 8);
  *(v6 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v10 = sub_1CF9E5CF8();
  *(v6 + 328) = v10;
  *(v6 + 336) = *(v10 - 8);
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  v11 = sub_1CF9E6388();
  *(v6 + 376) = v11;
  *(v6 + 384) = *(v11 - 8);
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  v12 = sub_1CF9E6498();
  *(v6 + 408) = v12;
  *(v6 + 416) = *(v12 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  v13 = sub_1CF9E6448();
  *(v6 + 440) = v13;
  *(v6 + 448) = *(v13 - 8);
  *(v6 + 456) = swift_task_alloc();
  v14 = sub_1CF9E73D8();
  *(v6 + 464) = v14;
  *(v6 + 472) = *(v14 - 8);
  *(v6 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  v15 = sub_1CF9E5A58();
  *(v6 + 512) = v15;
  v16 = *(v15 - 8);
  *(v6 + 520) = v16;
  *(v6 + 528) = *(v16 + 64);
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = v7[12];
  *(v6 + 576) = v7[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 584) = v7[13];
  *(v6 + 592) = v7[11];
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  *(v6 + 56) = AssociatedTypeWitness;
  *(v6 + 64) = v18;
  *(v6 + 72) = AssociatedConformanceWitness;
  *(v6 + 80) = v20;
  *(v6 + 600) = type metadata accessor for ReconciliationID(255, v6 + 56);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  *(v6 + 608) = TupleTypeMetadata3;
  v22 = sub_1CF9E75D8();
  *(v6 + 616) = v22;
  *(v6 + 624) = *(v22 - 8);
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = *(TupleTypeMetadata3 - 8);
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF1A2EC0, v5, 0);
}

uint64_t sub_1CF1A2EC0()
{
  if (!fpfs_supports_tap_to_feedback())
  {
    *(v0 + 144) = *(v0 + 224);
    v2 = *(v0 + 600);
    v3 = swift_task_alloc();
    v4 = *(v0 + 584);
    v5 = vzip2q_s64(*(v0 + 568), v4);
    v6 = vzip1q_s64(*(v0 + 568), v4);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    swift_getTupleTypeMetadata3();
    v7 = sub_1CF9E6E58();
    WitnessTable = swift_getWitnessTable();
    v141 = sub_1CF054A5C(sub_1CF1A9B28, v3, v7, v2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

    v10 = 10;
LABEL_4:
    v115 = v10;
LABEL_5:

    v11 = *(v0 + 8);

    return v11(v115, v141);
  }

  v1 = sub_1CF1A2478();
  v13 = *(v0 + 600);
  v14 = *(v0 + 592);
  v15 = *(v0 + 584);
  v16 = *(v0 + 576);
  v17 = *(v0 + 568);
  if (v1)
  {
    *(v0 + 216) = *(v0 + 224);
    v18 = swift_task_alloc();
    v18[2] = v16;
    v18[3] = v14;
    v18[4] = v17;
    v18[5] = v15;
    swift_getTupleTypeMetadata3();
    v19 = sub_1CF9E6E58();
    v20 = swift_getWitnessTable();
    v141 = sub_1CF054A5C(sub_1CF1A92D4, v18, v19, v13, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);

    v115 = 0;
    goto LABEL_5;
  }

  v22 = *(v0 + 256);
  *(v0 + 152) = *(v0 + 224);
  v23 = swift_task_alloc();
  v23[2] = v16;
  v23[3] = v14;
  v23[4] = v17;
  v23[5] = v15;
  v23[6] = sub_1CF1A9090;
  v23[7] = v22;
  swift_getTupleTypeMetadata3();
  v24 = sub_1CF9E6E58();
  swift_getWitnessTable();
  v25 = sub_1CF9E6B88();
  *(v0 + 680) = v25;
  v132 = *(v0 + 632);
  v134 = *(v0 + 640);
  v130 = *(v0 + 608);
  v26 = *(v0 + 592);
  v27 = *(v0 + 584);
  v28 = *(v0 + 576);
  v29 = *(v0 + 568);
  v30 = *(v0 + 224);
  v31 = v24;
  v32 = v25;

  *(v0 + 160) = v30;
  v33 = swift_task_alloc();
  v33[2] = v28;
  v33[3] = v26;
  v33[4] = v29;
  v33[5] = v27;
  v141 = v32;
  v33[6] = v32;
  v34 = swift_task_alloc();
  v34[2] = v28;
  v34[3] = v26;
  v34[4] = v29;
  v34[5] = v27;
  v34[6] = sub_1CF1A90D8;
  v34[7] = v33;
  v35 = sub_1CF9E6B88();
  *(v0 + 688) = 0;

  *(v0 + 168) = v35;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7118();
  if ((*(v134 + 48))(v132, 1, v130) == 1)
  {
    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    v35, v36, v37, v38, v39, v40, v41, v42;
    v10 = 3;
    goto LABEL_4;
  }

  v43 = (v0 + 568);
  v44 = *(v0 + 256);
  (*(*(v0 + 640) + 32))(*(v0 + 672), *(v0 + 632), *(v0 + 608));
  v35, v45, v46, v47, v48, v49, v50, v51;
  if ((*(v44 + 160) & 1) == 0 && !fp_shouldObfuscateFilenames())
  {
    v73 = *(v0 + 672);
    v74 = *(v0 + 640);
    v75 = *(v0 + 608);
    v76 = *(v0 + 600);
    v77 = *(v0 + 224);
    v136 = *v43;
    v139 = *(v0 + 584);
    v32, v52, v53, v54, v55, v56, v57, v58;
    *(v0 + 176) = v77;
    v78 = swift_task_alloc();
    v78[1] = vzip2q_s64(v136, v139);
    v78[2] = vzip1q_s64(v136, v139);
    v79 = swift_getWitnessTable();
    v141 = sub_1CF054A5C(sub_1CF1A9B28, v78, v31, v76, MEMORY[0x1E69E73E0], v79, MEMORY[0x1E69E7410], v80);

    (*(v74 + 8))(v73, v75);
    v10 = 11;
    goto LABEL_4;
  }

  v59 = *(v0 + 256);
  if (*(v59 + 161))
  {
    v60 = *(v0 + 672);
    v61 = *(v0 + 640);
    v62 = *(v0 + 608);
    v63 = *(v0 + 600);
    v64 = *(v0 + 224);
    v135 = *v43;
    v138 = *(v0 + 584);
    v32, v52, v53, v54, v55, v56, v57, v58;
    *(v0 + 208) = v64;
    v65 = swift_task_alloc();
    v65[1] = vzip2q_s64(v135, v138);
    v65[2] = vzip1q_s64(v135, v138);
    v66 = swift_getWitnessTable();
    v141 = sub_1CF054A5C(sub_1CF1A9B28, v65, v31, v63, MEMORY[0x1E69E73E0], v66, MEMORY[0x1E69E7410], v67);

    (*(v61 + 8))(v60, v62);
    v10 = 5;
    goto LABEL_4;
  }

  v68 = *(v59 + 112);
  *(v0 + 696) = v68;
  v69 = *(*v68 + 136);
  *(v0 + 704) = v69;
  v70 = v68 + v69;
  swift_beginAccess();
  v71 = type metadata accessor for FPFeedbackManagerState(0);
  *(v0 + 712) = v71;
  v72 = v70 + *(v71 + 24);
  v142 = (*(v72 + 8) & 1) == 0 && *v72 > 2uLL;
  if (fpfs_is_internal_build())
  {
    v81 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v82 = sub_1CF9E6888();
    v83 = [v81 initWithSuiteName_];

    if (v83)
    {
      v84 = sub_1CF9E6888();
      v85 = [v83 objectForKey_];

      if (v85)
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        sub_1CEFCCC44(v0 + 88, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v86 = sub_1CF9E6888();
        v87 = [v83 integerForKey_];

        v88 = 5;
        if (v87 > 5)
        {
          v88 = v87;
        }

        if (v88 >= 600)
        {
          v89 = 600;
        }

        else
        {
          v89 = v88;
        }

        goto LABEL_30;
      }

      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      sub_1CEFCCC44(v0 + 88, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }
  }

  v89 = 300;
LABEL_30:
  v90 = *(v0 + 520);
  v91 = *(v0 + 504);
  v92 = *(v0 + 512);
  v93 = *(v0 + 240);
  *(v59 + 161) = 1;
  v94 = swift_allocObject();
  *(v0 + 720) = v94;
  *(v94 + 16) = 0;
  sub_1CEFCCBDC(v93, v91, &unk_1EC4BE310, qword_1CF9FCBE0);
  v95 = *(v90 + 48);
  *(v0 + 728) = v95;
  *(v0 + 736) = (v90 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v95(v91, 1, v92) == 1)
  {
    sub_1CEFCCC44(*(v0 + 504), &unk_1EC4BE310, qword_1CF9FCBE0);
    v96 = 0;
  }

  else
  {
    v140 = *(v0 + 560);
    v114 = *(v0 + 552);
    v117 = *(v0 + 528);
    v131 = *(v0 + 512);
    v133 = *(v0 + 520);
    v98 = *(v0 + 472);
    v97 = *(v0 + 480);
    v124 = v89;
    v99 = *(v0 + 464);
    v118 = *(v0 + 456);
    v119 = *(v0 + 448);
    v120 = *(v0 + 440);
    v125 = *(v0 + 432);
    v126 = *(v0 + 416);
    v128 = *(v0 + 408);
    v121 = *(v0 + 424);
    v122 = *(v0 + 400);
    v129 = *(v0 + 392);
    v123 = *(v0 + 384);
    v137 = *(v0 + 376);
    v111 = *(v0 + 248);
    v116 = *(v133 + 32);
    v112 = *v43;
    v113 = *(v0 + 584);
    v116();
    sub_1CF1A9160();
    *(v0 + 200) = MEMORY[0x1E69E7CC0];
    sub_1CF1A9300(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
    sub_1CF9E77B8();
    v96 = sub_1CF9E73E8();
    (*(v98 + 8))(v97, v99);
    ObjectType = swift_getObjectType();
    v101 = swift_allocObject();
    swift_weakInit();
    sub_1CF1A91AC(v111, v0 + 16);
    (*(v133 + 16))(v114, v140, v131);
    v102 = (*(v133 + 80) + 96) & ~*(v133 + 80);
    v103 = swift_allocObject();
    v103[1] = vzip2q_s64(v112, v113);
    v103[2] = vzip1q_s64(v112, v113);
    v103[3].i64[0] = v101;
    sub_1CF054EA0((v0 + 16), &v103[3].i64[1]);
    (v116)(&v103->i8[v102], v114, v131);
    *(v103->i64 + ((v117 + v102 + 7) & 0xFFFFFFFFFFFFFFF8)) = v94;

    sub_1CF042F9C();
    sub_1CEFD5828(0, v118, sub_1CF1A9210, v103, ObjectType);

    (*(v119 + 8))(v118, v120);

    sub_1CF9E6478();
    *v122 = v124;
    (*(v123 + 104))(v122, *MEMORY[0x1E69E7F48], v137);
    MEMORY[0x1D3868740](v121, v122);
    v104 = *(v123 + 8);
    v104(v122, v137);
    v127 = *(v126 + 8);
    v127(v121, v128);
    sub_1CEFD5B64(v122);
    sub_1CEFD5BD8(v129);
    MEMORY[0x1D3869770](v125, v122, v129, ObjectType);
    v104(v129, v137);
    v104(v122, v137);
    v127(v125, v128);
    sub_1CF9E7428();
    sub_1CF9E7448();
    (*(v133 + 8))(v140, v131);
    swift_unknownObjectRetain();
  }

  *(v0 + 744) = v96;
  v105 = *(v0 + 672);
  v106 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1(*(v0 + 248), *(*(v0 + 248) + 24));
  v107 = (v105 + *(v106 + 64));
  v108 = *v107;
  v109 = v107[1];
  v110 = swift_task_alloc();
  *(v0 + 752) = v110;
  *v110 = v0;
  v110[1] = sub_1CF1A3F38;

  return sub_1CF36E168(v108, v109, v142);
}

uint64_t sub_1CF1A3F38(char a1)
{
  v2 = *(*v1 + 256);
  *(*v1 + 809) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1CF1A407C, v2, 0);
}

uint64_t sub_1CF1A407C(uint64_t a1)
{
  if (*(v1 + 744))
  {
    swift_getObjectType();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  v2 = *(v1 + 809);
  v3 = *(v1 + 712);
  *(*(v1 + 256) + 161) = 0;
  v4 = *(v3 + 24);
  v5 = *(v1 + 704);
  v6 = *(v1 + 696);
  if (v2 == 1)
  {
    v7 = (v6 + v5 + v4);
    if (v7[1])
    {
      v8 = 1;
    }

    else
    {
      v9 = *v7;
      v10 = __CFADD__(v9, 1);
      v8 = v9 + 1;
      if (v10)
      {
        __break(1u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *(v1 + 688);
  v12 = v6 + v5 + v4;
  *v12 = v8;
  *(v12 + 8) = 0;
  *(v6 + 72) = 1;
  sub_1CF7F1D28();
  if (v11)
  {
    v20 = *(v1 + 672);
    v21 = *(v1 + 640);
    v22 = *(v1 + 608);
    *(v1 + 680), v13, v14, v15, v16, v17, v18, v19;

    swift_unknownObjectRelease();
    (*(v21 + 8))(v20, v22);
LABEL_10:

    v23 = *(v1 + 8);

    return v23();
  }

  if (*(v1 + 809) > 2u)
  {
LABEL_16:
    v25 = *(v1 + 352);
    v26 = *(v1 + 336);
    v211 = *(v1 + 328);
    v27 = *(v1 + 320);
    v28 = *(v1 + 304);
    v214 = *(v1 + 296);
    v29 = *(v1 + 280);
    v218 = *(v1 + 288);
    v30 = *(v1 + 264);
    v31 = *(v1 + 272);
    v32 = *(v1 + 696) + *(v1 + 704) + *(*(v1 + 712) + 24);
    v33 = *(v32 + 8) | (*v32 != 1);
    v34 = [objc_opt_self() defaultStore];
    v35 = v34;
    v36 = &selRef_spsFeedbackBackoffAfterOtherResponses_MultipleAttempts_InSeconds;
    if ((v33 & 1) == 0)
    {
      v36 = &selRef_spsFeedbackBackoffAfterOtherResponsesInSeconds;
    }

    [v34 *v36];

    sub_1CF9E5E08();
    (*(v31 + 104))(v29, *MEMORY[0x1E6969A98], v30);
    sub_1CF9E5CC8();
    sub_1CF9E5DF8();
    v37 = *(v26 + 8);
    v37(v25, v211);
    (*(v31 + 8))(v29, v30);
    (*(v214 + 8))(v28, v218);
    if ((*(v26 + 48))(v27, 1, v211) != 1)
    {
      v51 = v37;
      v52 = *(v1 + 360);
      (*(*(v1 + 336) + 32))(v52, *(v1 + 320), *(v1 + 328));
      sub_1CF1A26B0(v52);
      v67 = *(v1 + 728);
      v68 = *(v1 + 512);
      v69 = *(v1 + 488);
      sub_1CEFCCBDC(*(v1 + 240), v69, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v67(v69, 1, v68) == 1)
      {
        v70 = *(v1 + 488);
        v37(*(v1 + 360), *(v1 + 328));
        swift_unknownObjectRelease();
        sub_1CEFCCC44(v70, &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      else
      {
        (*(*(v1 + 520) + 32))(*(v1 + 536), *(v1 + 488), *(v1 + 512));
        v72 = [objc_opt_self() defaultManager];
        v73 = sub_1CF9E5928();
        *(v1 + 184) = 0;
        v74 = [v72 removeItemAtURL:v73 error:v1 + 184];

        v75 = *(v1 + 184);
        if (!v74)
        {
          v182 = v75;
          v183 = *(v1 + 640);
          v217 = *(v1 + 608);
          v221 = *(v1 + 672);
          v184 = *(v1 + 536);
          v185 = *(v1 + 520);
          v186 = *(v1 + 512);
          v208 = *(v1 + 328);
          v210 = *(v1 + 360);
          *(v1 + 680), v76, v77, v78, v79, v80, v81, v82;
          sub_1CF9E57F8();

          swift_willThrow();
          swift_unknownObjectRelease();
          (*(v185 + 8))(v184, v186);
          v51(v210, v208);

          (*(v183 + 8))(v221, v217);
          goto LABEL_10;
        }

        v83 = *(v1 + 536);
        v84 = *(v1 + 520);
        v85 = *(v1 + 512);
        v86 = *(v1 + 360);
        v87 = *(v1 + 328);
        swift_unknownObjectRelease();
        (*(v84 + 8))(v83, v85);
        v51(v86, v87);
      }

      v88 = *(v1 + 672);
      v89 = *(v1 + 640);
      v90 = *(v1 + 608);

      (*(v89 + 8))(v88, v90);
      v204 = *(v1 + 680);
      v49 = 7;
      goto LABEL_21;
    }

    v45 = *(v1 + 672);
    v46 = *(v1 + 640);
    v47 = *(v1 + 608);
    v48 = *(v1 + 320);
    *(v1 + 680), v38, v39, v40, v41, v42, v43, v44;
    sub_1CEFCCC44(v48, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v204 = sub_1CF9E6DA8();

    swift_unknownObjectRelease();
    (*(v46 + 8))(v45, v47);
    goto LABEL_20;
  }

  if (*(v1 + 809))
  {
    if (*(v1 + 809) != 1)
    {
      v66 = *(v1 + 368);
      *(v1 + 680), v13, v14, v15, v16, v17, v18, v19;
      sub_1CF9E5C18();
      sub_1CF1A26B0(v66);
      v91 = *(v1 + 728);
      v92 = *(v1 + 512);
      v93 = *(v1 + 496);
      v94 = *(v1 + 240);
      (*(*(v1 + 336) + 8))(*(v1 + 368), *(v1 + 328));
      sub_1CEFCCBDC(v94, v93, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v91(v93, 1, v92) == 1)
      {
        sub_1CEFCCC44(*(v1 + 496), &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      else
      {
        (*(*(v1 + 520) + 32))(*(v1 + 544), *(v1 + 496), *(v1 + 512));
        v187 = [objc_opt_self() defaultManager];
        v188 = sub_1CF9E5928();
        *(v1 + 192) = 0;
        v189 = [v187 removeItemAtURL:v188 error:v1 + 192];

        v190 = *(v1 + 192);
        if (!v189)
        {
          v222 = *(v1 + 672);
          v198 = *(v1 + 640);
          v199 = *(v1 + 608);
          v200 = *(v1 + 544);
          v201 = *(v1 + 520);
          v202 = *(v1 + 512);
          v203 = v190;
          sub_1CF9E57F8();

          swift_willThrow();
          swift_unknownObjectRelease();
          (*(v201 + 8))(v200, v202);

          (*(v198 + 8))(v222, v199);
          goto LABEL_10;
        }

        v191 = *(v1 + 544);
        v192 = *(v1 + 512);
        v193 = *(*(v1 + 520) + 8);
        v194 = v190;
        v193(v191, v192);
      }

      v195 = *(v1 + 672);
      v196 = *(v1 + 640);
      v197 = *(v1 + 608);
      v204 = sub_1CF9E6DA8();

      swift_unknownObjectRelease();
      (*(v196 + 8))(v195, v197);
      v49 = 8;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v53 = *(v1 + 352);
  v54 = *(v1 + 336);
  v212 = *(v1 + 328);
  v55 = *(v1 + 304);
  v56 = *(v1 + 312);
  v215 = *(v1 + 296);
  v219 = *(v1 + 288);
  v57 = *(v1 + 272);
  v58 = *(v1 + 280);
  v59 = *(v1 + 264);
  v60 = [objc_opt_self() defaultStore];
  [v60 spsFeedbackBackoffAfterSayingYesInSeconds];

  sub_1CF9E5E08();
  (*(v57 + 104))(v58, *MEMORY[0x1E6969A98], v59);
  sub_1CF9E5CC8();
  sub_1CF9E5DF8();
  v61 = *(v54 + 8);
  *(v1 + 760) = v61;
  *(v1 + 768) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v53, v212);
  (*(v57 + 8))(v58, v59);
  (*(v215 + 8))(v55, v219);
  if ((*(v54 + 48))(v56, 1, v212) == 1)
  {
    v62 = *(v1 + 672);
    v63 = *(v1 + 640);
    v64 = *(v1 + 608);
    v65 = *(v1 + 312);
    swift_unknownObjectRelease();
    sub_1CEFCCC44(v65, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

    (*(v63 + 8))(v62, v64);
    v204 = *(v1 + 680);
LABEL_20:
    v49 = 4;
LABEL_21:
    v205 = v49;

    v50 = *(v1 + 8);

    return v50(v205, v204);
  }

  v71 = *(v1 + 344);
  (*(*(v1 + 336) + 32))(v71, *(v1 + 312), *(v1 + 328));
  sub_1CF1A26B0(v71);
  v95 = *(v1 + 672);
  v96 = *(v1 + 664);
  v97 = *(v1 + 656);
  v220 = *(v1 + 648);
  v223 = *(v1 + 720);
  v98 = *(v1 + 608);
  v99 = *(v1 + 600);
  v216 = *(v1 + 248);
  v100 = *(*(v1 + 640) + 16);
  v206 = *(v1 + 808);
  v213 = v95;
  v100(v96, v95, v98);
  v101 = v96 + *(v98 + 48);
  v102 = *(v101 + 8);
  v209 = v100;
  v103 = *(v101 + 40);
  *(v96 + *(v98 + 64) + 8), v104, v105, v106, v107, v108, v109, v110;
  v103, v111, v112, v113, v114, v115, v116, v117;
  v100(v97, v95, v98);
  v118 = (v97 + *(v98 + 48));
  v120 = v118[1];
  v119 = v118[2];
  v121 = v118[5];
  *(v97 + *(v98 + 64) + 8), v122, v123, v124, v125, v126, v127, v128;
  v120, v129, v130, v131, v132, v133, v134, v135;
  v121, v136, v137, v138, v139, v140, v141, v142;
  v143 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v144 = sub_1CF9E6888();
  v102, v145, v146, v147, v148, v149, v150, v151;
  v207 = [v143 initWithDomain:v144 code:v119 userInfo:0];
  *(v1 + 776) = v207;

  v152 = *(*(v99 - 1) + 8);
  v152(v97, v99);
  v152(v96, v99);
  __swift_project_boxed_opaque_existential_1(v216, v216[3]);
  v209(v220, v213, v98);
  v153 = v220 + *(v98 + 48);
  v154 = *(v153 + 40);
  *(v153 + 8), v155, v156, v157, v158, v159, v160, v161;
  v154, v162, v163, v164, v165, v166, v167, v168;
  *(v220 + *(v98 + 64) + 8), v169, v170, v171, v172, v173, v174, v175;
  v176 = sub_1CF01D738(v99);
  v178 = v177;
  *(v1 + 784) = v177;
  v152(v220, v99);
  v179 = *(v223 + 16);
  v180 = swift_task_alloc();
  *(v1 + 792) = v180;
  *v180 = v1;
  v180[1] = sub_1CF1A5080;
  v181 = *(v1 + 232);

  return sub_1CF36F790(v176, v178, v207, v181, v179 & 1, v206 & 1);
}

uint64_t sub_1CF1A5080()
{
  v2 = *v1;
  v2[100] = v0;

  v10 = v2[98];
  if (v0)
  {
    v11 = v2[85];
    v12 = v2[32];
    v10, v3, v4, v5, v6, v7, v8, v9;
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20 = sub_1CF1A5450;
  }

  else
  {
    v12 = v2[32];
    v10, v3, v4, v5, v6, v7, v8, v9;
    v20 = sub_1CF1A5200;
  }

  return MEMORY[0x1EEE6DFA0](v20, v12, 0);
}

uint64_t sub_1CF1A5200()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 672);
  v3 = *(v0 + 640);
  v4 = *(v0 + 608);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);

  swift_unknownObjectRelease();
  v1(v5, v6);

  (*(v3 + 8))(v2, v4);
  v9 = *(v0 + 680);

  v7 = *(v0 + 8);

  return v7(6, v9);
}

uint64_t sub_1CF1A5450()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 672);
  v3 = *(v0 + 640);
  v4 = *(v0 + 608);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);

  swift_unknownObjectRelease();
  v1(v5, v6);

  (*(v3 + 8))(v2, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1CF1A5698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 56);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    result = sub_1CF1A6420(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | (*(a2 + 26) << 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
    if (!v5)
    {
      v12 = result;
      v16 = a4;
      v22 = 0;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v19 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v21 = swift_getAssociatedConformanceWitness();
      if (v12)
      {
        v13 = type metadata accessor for ReconciliationID(0, &AssociatedTypeWitness);
        return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
      }

      else
      {
        v14 = type metadata accessor for ReconciliationID(0, &AssociatedTypeWitness);
        v15 = *(v14 - 8);
        (*(v15 + 16))(v16, a1, v14);
        return (*(v15 + 56))(v16, 0, 1, v14);
      }
    }
  }

  else
  {
    v22 = v5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ReconciliationID(0, &AssociatedTypeWitness);
    v10 = *(v9 - 8);
    (*(v10 + 16))(a4, a1, v9);
    return (*(v10 + 56))(a4, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1CF1A59E0(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v13 = swift_getAssociatedTypeWitness();
  *(&v13 + 1) = swift_getAssociatedTypeWitness();
  *&v14 = swift_getAssociatedConformanceWitness();
  *(&v14 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(255, &v13);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = (a1 + *(TupleTypeMetadata3 + 48));
  *&v15[9] = *(v9 + 41);
  v10 = v9[1];
  v13 = *v9;
  v14 = v10;
  *v15 = v9[2];
  return a2(a1, &v13, *(a1 + *(TupleTypeMetadata3 + 64)), *(a1 + *(TupleTypeMetadata3 + 64) + 8));
}

uint64_t sub_1CF1A5B4C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a9@<X8>, uint64_t a10)
{
  v23[8] = a5;
  v23[0] = swift_getAssociatedTypeWitness();
  v23[1] = swift_getAssociatedTypeWitness();
  v23[2] = swift_getAssociatedConformanceWitness();
  v23[3] = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ReconciliationID(255, v23);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = sub_1CF9E6C08();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = TupleTypeMetadata3;
  if (v13)
  {
    return (*(*(TupleTypeMetadata3 - 8) + 56))(a9, 1, 1, TupleTypeMetadata3);
  }

  v17 = (a9 + *(TupleTypeMetadata3 + 48));
  v18 = (a9 + *(TupleTypeMetadata3 + 64));
  (*(*(v12 - 8) + 16))(a9, a1, v12);
  v19 = a2[1];
  *v17 = *a2;
  v17[1] = v19;
  v17[2] = a2[2];
  *(v17 + 41) = *(a2 + 41);
  *v18 = a3;
  v18[1] = a4;
  (*(*(v15 - 8) + 56))(a9, 0, 1, v15);
  sub_1CF1A8918(a2, v23);
}

uint64_t sub_1CF1A5DD4(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v13 = swift_getAssociatedTypeWitness();
  *(&v13 + 1) = swift_getAssociatedTypeWitness();
  *&v14 = swift_getAssociatedConformanceWitness();
  *(&v14 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(255, &v13);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = (a1 + *(TupleTypeMetadata3 + 48));
  *&v15[9] = *(v9 + 41);
  v10 = v9[1];
  v13 = *v9;
  v14 = v10;
  *v15 = v9[2];
  return a2(a1, &v13, *(a1 + *(TupleTypeMetadata3 + 64)), *(a1 + *(TupleTypeMetadata3 + 64) + 8));
}

uint64_t sub_1CF1A5F40@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v38 = a6;
  v39[0] = swift_getAssociatedTypeWitness();
  v39[1] = swift_getAssociatedTypeWitness();
  v39[2] = swift_getAssociatedConformanceWitness();
  v39[3] = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ReconciliationID(255, v39);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = &v37 - v10;
  (*(v12 + 16))(&v37 - v10, a1, TupleTypeMetadata3, v9);
  v13 = &v11[*(TupleTypeMetadata3 + 48)];
  v14 = *(v13 + 1);
  *(v13 + 5), v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  *&v11[*(TupleTypeMetadata3 + 64) + 8], v29, v30, v31, v32, v33, v34, v35;
  return (*(*(v7 - 8) + 32))(v38, v11, v7);
}

void sub_1CF1A6150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = [objc_opt_self() sharedManager];
    v7 = *(*__swift_project_boxed_opaque_existential_1(a2, a2[3]) + 32);
    v8 = sub_1CF9E5928();
    aBlock[4] = sub_1CF1A92F8;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF0892D0;
    aBlock[3] = &block_descriptor_0;
    v9 = _Block_copy(aBlock);

    [v6 triggerDiagnosticsFor:v7 persistingAt:v8 completionHandler:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1CF1A62B8(char a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v9 = sub_1CF9E6108();
  v10 = sub_1CF9E7298();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_1CEFC7000, v9, v10, "DE was ran? %{BOOL}d", v11, 8u);
    MEMORY[0x1D386CDC0](v11, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  *(a2 + 16) = a1 & 1;
  return result;
}

BOOL sub_1CF1A6420(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v16 = *(v7 + 112);
  sub_1CF1A6E34();
  if (!v8)
  {
    *&v28 = a1;
    *(&v28 + 1) = a2;
    v29 = a3;
    v30 = a4;
    v31 = BYTE2(a4);
    v32 = a5;
    v33 = a6;
    v18 = &v16[*(*v16 + 136)];
    swift_beginAccess();
    v19 = type metadata accessor for FPFeedbackManagerState(0);
    v20 = *&v18[*(v19 + 20)];
    if (*(v20 + 16) && (v21 = sub_1CF7BF13C(&v28), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {
      sub_1CF8DEF70(0.0, 1.0);
      v23 = v24;
      swift_beginAccess();
      v25 = *(v19 + 20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *&v18[v25];
      *&v18[v25] = 0x8000000000000000;
      sub_1CF1D169C(&v28, isUniquelyReferenced_nonNull_native, v23);
      *&v18[v25] = v34;
      swift_endAccess();
      v16[72] = 1;
      sub_1CF7F1D28();
    }

    return v23 <= a7;
  }

  return v17;
}

uint64_t sub_1CF1A65AC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1CF1A65E4()
{
  sub_1CF1A65AC();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CF1A6644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1CF1A668C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF1A66EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1CF1A6734(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1A679C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_1CF1A67E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FPFeedbackManagerState(uint64_t a1)
{
  result = qword_1EDEA55A0;
  if (!qword_1EDEA55A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF1A68B0(uint64_t a1)
{
  sub_1CF1A694C(319);
  if (v1 <= 0x3F)
  {
    sub_1CF1A69A4(319);
    if (v2 <= 0x3F)
    {
      sub_1CF1A6A5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CF1A694C(uint64_t a1)
{
  if (!qword_1EDEAFE00)
  {
    sub_1CF9E5CF8();
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEAFE00);
    }
  }
}

void sub_1CF1A69A4(uint64_t a1)
{
  if (!qword_1EDEA3848)
  {
    sub_1CF1A6A08();
    v1 = sub_1CF9E6708();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA3848);
    }
  }
}

unint64_t sub_1CF1A6A08()
{
  result = qword_1EDEA5068[0];
  if (!qword_1EDEA5068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA5068);
  }

  return result;
}

void sub_1CF1A6A5C()
{
  if (!qword_1EDEAECF8)
  {
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAECF8);
    }
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

uint64_t sub_1CF1A6AD0(uint64_t a1, int a2)
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

uint64_t sub_1CF1A6B18(uint64_t result, int a2, int a3)
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

unint64_t sub_1CF1A6B78()
{
  result = qword_1EDEA5060;
  if (!qword_1EDEA5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5060);
  }

  return result;
}

unint64_t sub_1CF1A6BD0()
{
  result = qword_1EDEAD848;
  if (!qword_1EDEAD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD848);
  }

  return result;
}

uint64_t sub_1CF1A6C4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1CF1A6D14;

  return sub_1CF1A2824(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF1A6D14(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1CF1A6E34()
{
  v2 = type metadata accessor for FPFeedbackManagerState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  result = (*(v6 + 16))(*(v0 + 56), *(v0 + 64), v5, v6);
  if (!v1)
  {
    if (v8 >> 60 != 15)
    {
      v9 = result;
      v10 = v8;
      sub_1CF9E5688();
      swift_allocObject();
      sub_1CEFE42D4(v9, v10);
      sub_1CF9E5678();
      sub_1CF1A9300(&qword_1EC4C4D70, type metadata accessor for FPFeedbackManagerState, &unk_1CF9FA97C);
      sub_1CF9E5668();

      sub_1CEFE48D8(v9, v10);
      sub_1CEFE48D8(v9, v10);
      v11 = *(*v0 + 136);
      swift_beginAccess();
      sub_1CF1A8FC8(v4, v0 + v11, type metadata accessor for FPFeedbackManagerState);
      swift_endAccess();
      result = sub_1CF1A9030(v4, type metadata accessor for FPFeedbackManagerState);
    }

    *(v0 + 72) = 0;
  }

  return result;
}

uint64_t sub_1CF1A7030()
{
  v2 = type metadata accessor for FPDownloadSchedulerFastPassState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  result = (*(v6 + 16))(*(v0 + 56), *(v0 + 64), v5, v6);
  if (!v1)
  {
    if (v8 >> 60 != 15)
    {
      v9 = result;
      v10 = v8;
      sub_1CF9E5688();
      swift_allocObject();
      sub_1CEFE42D4(v9, v10);
      sub_1CF9E5678();
      sub_1CF1A9300(&qword_1EC4BDF90, type metadata accessor for FPDownloadSchedulerFastPassState, &unk_1CFA0317C);
      sub_1CF9E5668();

      sub_1CEFE48D8(v9, v10);
      sub_1CEFE48D8(v9, v10);
      v11 = *(*v0 + 136);
      swift_beginAccess();
      sub_1CF1A8FC8(v4, v0 + v11, type metadata accessor for FPDownloadSchedulerFastPassState);
      swift_endAccess();
      result = sub_1CF1A9030(v4, type metadata accessor for FPDownloadSchedulerFastPassState);
    }

    *(v0 + 72) = 0;
  }

  return result;
}

void sub_1CF1A722C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 16))(*(v0 + 56), *(v0 + 64), v2, v3);
  if (!v1)
  {
    if (v5 >> 60 != 15)
    {
      v6 = v4;
      v7 = v5;
      sub_1CF9E5688();
      swift_allocObject();
      sub_1CEFE42D4(v6, v7);
      sub_1CF9E5678();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE08, &qword_1CF9FB1C8);
      sub_1CEFCCCEC(&qword_1EC4BDE10, &qword_1EC4BDE08, &qword_1CF9FB1C8, &unk_1CFA00D10);
      sub_1CF9E5668();

      sub_1CEFE48D8(v6, v7);
      sub_1CEFE48D8(v6, v7);
      swift_beginAccess();
      v8 = *(v0 + 80);
      *(v0 + 80) = v16;
      v8, v9, v10, v11, v12, v13, v14, v15;
    }

    *(v0 + 72) = 0;
  }
}

void sub_1CF1A73B4()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 16))(*(v0 + 56), *(v0 + 64), v2, v3);
  if (!v1)
  {
    if (v5 >> 60 != 15)
    {
      v6 = v4;
      v7 = v5;
      sub_1CF9E5688();
      swift_allocObject();
      sub_1CEFE42D4(v6, v7);
      sub_1CF9E5678();
      type metadata accessor for FPCKReport();
      sub_1CF1A9300(&qword_1EC4BDF98, type metadata accessor for FPCKReport, &protocol conformance descriptor for FPCKReport);
      sub_1CF9E5668();

      sub_1CEFE48D8(v6, v7);
      sub_1CEFE48D8(v6, v7);
      swift_beginAccess();
      v8 = *(v0 + 80);
      *(v0 + 80) = v9;
    }

    *(v0 + 72) = 0;
  }
}

uint64_t sub_1CF1A752C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  if (a1 == a5 && a2 == a6)
  {
    result = 0;
  }

  else
  {
    v13 = sub_1CF9E8048();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (a3 == a7 && a8 == a4)
  {
    if (BYTE1(a4) == 89)
    {
      if (BYTE1(a8) != 89)
      {
        return 0;
      }
    }

    else if (BYTE1(a8) == 89 || qword_1CF9FBAF8[SBYTE1(a4)] != qword_1CF9FBAF8[SBYTE1(a8)])
    {
      return 0;
    }

    if ((a4 & 0xFF0000) == 0x20000)
    {
      if (BYTE2(a8) != 2)
      {
        return 0;
      }
    }

    else if (BYTE2(a8) == 2 || ((((a4 & 0x10000) == 0) ^ HIWORD(a8)) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1CF1A7638@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDDF0, &qword_1CF9FB1B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8F0C();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  sub_1CF1A8870();
  sub_1CF9E7D88();
  v9 = v26;
  v19 = v27;
  v20 = v25;
  HIDWORD(v18) = v28;
  v33 = v29;
  v21 = v30;
  v34 = 1;
  v10 = sub_1CF9E7D48();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v14 = v19;
  v13 = v20;
  *&v22 = v20;
  *(&v22 + 1) = v9;
  *&v23 = v19;
  v15 = BYTE4(v18);
  BYTE8(v23) = BYTE4(v18);
  BYTE9(v23) = v33;
  BYTE10(v23) = v21;
  *&v24 = v10;
  *(&v24 + 1) = v12;
  sub_1CF1A8F60(&v22, &v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = v13;
  v26 = v9;
  v27 = v14;
  v28 = v15;
  v29 = v33;
  v30 = v21;
  v31 = v10;
  v32 = v12;
  result = sub_1CF1A8F98(&v25);
  v17 = v23;
  *a2 = v22;
  a2[1] = v17;
  a2[2] = v24;
  return result;
}

uint64_t sub_1CF1A78B4(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0xEB000000006E6961;
  v11 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v13 = 0xEE006E6F69746365;
    if (a1 == 0x726944726F727265 && a2 == 0xEE006E6F69746365 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x65646F43626F6ALL && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL)
    {
      0xEA0000000000676ELL, v13, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v14 = sub_1CF9E8048();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

uint64_t sub_1CF1A7A80(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD68, &qword_1CF9FB180);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8A7C();
  sub_1CF9E8298();
  if (!v1)
  {
    v16 = 0;
    v7 = sub_1CF9E7D48();
    v15 = 1;
    sub_1CF9E7D78();
    v13 = 2;
    sub_1CF1A8AD0();
    sub_1CF9E7D88();
    v9[3] = v14;
    v11 = 3;
    sub_1CF1A8B24();
    sub_1CF9E7CF8();
    v9[2] = v12;
    v10 = 4;
    sub_1CF9E7CC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1CF1A7D1C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEC00000065746152;
    if (a1 == 0x676E696C706D6173 && a2 == 0xEC00000065746152 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x796C6E4F727474 && a2 == 0xE700000000000000)
    {
      0xE700000000000000, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1CF9E8048();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

double sub_1CF1A7E38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD58, &qword_1CF9FB170);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8A28();
  sub_1CF9E8298();
  if (!v1)
  {
    v13 = 0;
    sub_1CF9E7D48();
    v12 = 1;
    sub_1CF9E7D68();
    v2 = v9;
    v11 = 2;
    sub_1CF9E7CC8();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void sub_1CF1A8040(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD38, &qword_1CF9FB160);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A881C();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_1CF1A8870();
    sub_1CF9E7D88();
    v9 = v29;
    v24 = v28;
    v10 = v30;
    v23 = v31;
    v22 = v32;
    v21 = v33;
    v38 = 1;
    sub_1CF1A88C4();
    sub_1CF9E7D88();
    (*(v6 + 8))(v8, v5);
    v19 = *(&v39 + 1);
    v20 = v39;
    v11 = v40;
    v18 = v41;
    v12 = v24;
    *&v25 = v24;
    *(&v25 + 1) = v9;
    *&v26 = v10;
    v13 = v23;
    BYTE8(v26) = v23;
    v14 = v22;
    BYTE9(v26) = v22;
    v15 = v21;
    BYTE10(v26) = v21;
    *v27 = v39;
    *&v27[16] = v40;
    v27[24] = v41;
    sub_1CF1A8918(&v25, &v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28 = v12;
    v29 = v9;
    v30 = v10;
    v31 = v13;
    v32 = v14;
    v33 = v15;
    v34 = v20;
    v35 = v19;
    v36 = v11;
    v37 = v18;
    sub_1CF1A8950(&v28);
    v16 = v26;
    *a2 = v25;
    a2[1] = v16;
    a2[2] = *v27;
    *(a2 + 41) = *&v27[9];
  }
}

uint64_t sub_1CF1A8340(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0x80000001CFA2DD90;
  if (a1 == 0xD000000000000018 && 0x80000001CFA2DD90 == a2 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEF73746C75736552;
    if (a1 == 0x676E696C706D6173 && a2 == 0xEF73746C75736552 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0xD00000000000001ELL && 0x80000001CFA2DDB0 == a2)
    {
      a2, 0x80000001CFA2DDB0, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1CF9E8048();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1CF1A8470(void *a1)
{
  v2 = type metadata accessor for GlobalResourceStore(0);
  swift_allocObject();
  v19[3] = v2;
  v19[4] = &off_1F4C04308;
  v19[0] = sub_1CF51BB3C();
  sub_1CF1A91AC(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06E0, &unk_1CFA05AF0);
  v3 = swift_allocObject();
  *(v3 + 72) = 0;
  sub_1CF1A91AC(v18, v3 + 16);
  v4 = v3 + *(*v3 + 136);
  v5 = sub_1CF9E5CF8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = type metadata accessor for FPFeedbackManagerState(0);
  v7 = *(v6 + 20);
  v8 = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  __swift_destroy_boxed_opaque_existential_1(v18);
  *(v4 + v7) = v8;
  v9 = v4 + *(v6 + 24);
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v3 + 56) = 0xD000000000000016;
  *(v3 + 64) = 0x80000001CF9FA770;
  sub_1CF1A6E34();
  __swift_destroy_boxed_opaque_existential_1(v19);
  swift_beginAccess();
  sub_1CF1A1590(a1);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  *(v3 + 64), v10, v11, v12, v13, v14, v15, v16;
  sub_1CF1A9030(v3 + *(*v3 + 136), type metadata accessor for FPFeedbackManagerState);
  return swift_deallocClassInstance();
}

unint64_t sub_1CF1A881C()
{
  result = qword_1EDEAC5C8;
  if (!qword_1EDEAC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5C8);
  }

  return result;
}

unint64_t sub_1CF1A8870()
{
  result = qword_1EDEAD840;
  if (!qword_1EDEAD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD840);
  }

  return result;
}

unint64_t sub_1CF1A88C4()
{
  result = qword_1EDEACB38;
  if (!qword_1EDEACB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB38);
  }

  return result;
}

unint64_t sub_1CF1A8980()
{
  result = qword_1EC4BDD48;
  if (!qword_1EC4BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD48);
  }

  return result;
}

unint64_t sub_1CF1A89D4()
{
  result = qword_1EC4BDD50;
  if (!qword_1EC4BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD50);
  }

  return result;
}

unint64_t sub_1CF1A8A28()
{
  result = qword_1EDEACB50;
  if (!qword_1EDEACB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB50);
  }

  return result;
}

unint64_t sub_1CF1A8A7C()
{
  result = qword_1EDEAD860[0];
  if (!qword_1EDEAD860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAD860);
  }

  return result;
}

unint64_t sub_1CF1A8AD0()
{
  result = qword_1EDEADDC0;
  if (!qword_1EDEADDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADDC0);
  }

  return result;
}

unint64_t sub_1CF1A8B24()
{
  result = qword_1EDEABCB8[0];
  if (!qword_1EDEABCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEABCB8);
  }

  return result;
}

unint64_t sub_1CF1A8B78()
{
  result = qword_1EC4BDD78;
  if (!qword_1EC4BDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD78);
  }

  return result;
}

unint64_t sub_1CF1A8BCC()
{
  result = qword_1EC4BDD80;
  if (!qword_1EC4BDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD80);
  }

  return result;
}

unint64_t sub_1CF1A8C20()
{
  result = qword_1EC4BDD90;
  if (!qword_1EC4BDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD90);
  }

  return result;
}

unint64_t sub_1CF1A8C74()
{
  result = qword_1EC4BDDA8;
  if (!qword_1EC4BDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDA8);
  }

  return result;
}

unint64_t sub_1CF1A8CC8()
{
  result = qword_1EC4BDDB0;
  if (!qword_1EC4BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDB0);
  }

  return result;
}

uint64_t sub_1CF1A8D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPFeedbackManagerState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF1A8D80(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BDD98, &qword_1CF9FB198);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF1A8E10()
{
  result = qword_1EC4BDDC8;
  if (!qword_1EC4BDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDC8);
  }

  return result;
}

unint64_t sub_1CF1A8E64()
{
  result = qword_1EC4BDDD0;
  if (!qword_1EC4BDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDD0);
  }

  return result;
}

unint64_t sub_1CF1A8EB8()
{
  result = qword_1EC4BDDE0;
  if (!qword_1EC4BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDE0);
  }

  return result;
}

unint64_t sub_1CF1A8F0C()
{
  result = qword_1EC4BDDF8;
  if (!qword_1EC4BDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDF8);
  }

  return result;
}

uint64_t sub_1CF1A8FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF1A9030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CF1A9160()
{
  result = qword_1EDEAED60;
  if (!qword_1EDEAED60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAED60);
  }

  return result;
}

uint64_t sub_1CF1A91AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1CF1A9210()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF1A6150(v3, (v0 + 56), v0 + v2, v4);
}

uint64_t sub_1CF1A9300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SpeculativeDownloadsDiskManagementState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpeculativeDownloadsDiskManagementState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CF1A94EC()
{
  result = qword_1EC4BDFA0;
  if (!qword_1EC4BDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFA0);
  }

  return result;
}

unint64_t sub_1CF1A9544()
{
  result = qword_1EC4BDFA8;
  if (!qword_1EC4BDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFA8);
  }

  return result;
}

unint64_t sub_1CF1A959C()
{
  result = qword_1EC4BDFB0;
  if (!qword_1EC4BDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFB0);
  }

  return result;
}

unint64_t sub_1CF1A95F4()
{
  result = qword_1EC4BDFB8;
  if (!qword_1EC4BDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFB8);
  }

  return result;
}

unint64_t sub_1CF1A964C()
{
  result = qword_1EC4BDFC0;
  if (!qword_1EC4BDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFC0);
  }

  return result;
}

unint64_t sub_1CF1A96A4()
{
  result = qword_1EC4BDFC8;
  if (!qword_1EC4BDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFC8);
  }

  return result;
}

unint64_t sub_1CF1A96FC()
{
  result = qword_1EC4BDFD0;
  if (!qword_1EC4BDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFD0);
  }

  return result;
}

unint64_t sub_1CF1A9754()
{
  result = qword_1EC4BDFD8;
  if (!qword_1EC4BDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFD8);
  }

  return result;
}

unint64_t sub_1CF1A97AC()
{
  result = qword_1EC4BDFE0;
  if (!qword_1EC4BDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFE0);
  }

  return result;
}

unint64_t sub_1CF1A9804()
{
  result = qword_1EC4BDFE8;
  if (!qword_1EC4BDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFE8);
  }

  return result;
}

unint64_t sub_1CF1A985C()
{
  result = qword_1EC4BDFF0;
  if (!qword_1EC4BDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFF0);
  }

  return result;
}

unint64_t sub_1CF1A98B4()
{
  result = qword_1EC4BDFF8;
  if (!qword_1EC4BDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFF8);
  }

  return result;
}

unint64_t sub_1CF1A990C()
{
  result = qword_1EDEAD850;
  if (!qword_1EDEAD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD850);
  }

  return result;
}

unint64_t sub_1CF1A9964()
{
  result = qword_1EDEAD858;
  if (!qword_1EDEAD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD858);
  }

  return result;
}

unint64_t sub_1CF1A99BC()
{
  result = qword_1EDEACB40;
  if (!qword_1EDEACB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB40);
  }

  return result;
}

unint64_t sub_1CF1A9A14()
{
  result = qword_1EDEACB48;
  if (!qword_1EDEACB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB48);
  }

  return result;
}

unint64_t sub_1CF1A9A6C()
{
  result = qword_1EDEAC5B8;
  if (!qword_1EDEAC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5B8);
  }

  return result;
}

unint64_t sub_1CF1A9AC4()
{
  result = qword_1EDEAC5C0;
  if (!qword_1EDEAC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5C0);
  }

  return result;
}

uint64_t sub_1CF1A9B40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = fpfs_fileattrs_fullpath();
  if (v9 && (v10 = v9, v11 = strlen(v9), v11 > 0))
  {
    v12 = v11;
    v13 = [objc_opt_self() defaultManager];
    v14 = [v13 stringWithFileSystemRepresentation:v10 length:v12];

    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    a3(&v32, a5, v15, v17);
    if (v5)
    {
      v18 = v5;
    }

    else
    {
      v18 = v32;
    }

    v22 = *a2;
    v23 = *(a2 + 8);
    *a2 = v18;
    *(a2 + 8) = v5 != 0;
    sub_1CF0BA6EC(v22, v23);
    v17, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    sub_1CEFDB034();
    v19 = swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 19;
    v21 = *a2;
    LOBYTE(v20) = *(a2 + 8);
    *a2 = v19;
    *(a2 + 8) = 1;
    sub_1CF0BA6EC(v21, v20);
  }

  return 0;
}

uint64_t sub_1CF1A9D0C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t (*a5)()@<X4>, uint64_t a6@<X8>)
{
  v111 = a6;
  v174 = *MEMORY[0x1E69E9840];
  v11 = a4[1];
  v170 = *a4;
  v171 = v11;
  v12 = a4[3];
  v172 = a4[2];
  v173 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v109 = (&v105 - v14);
  v110 = sub_1CF9E5CF8();
  v15 = *(v110 - 1);
  MEMORY[0x1EEE9AC00](v110);
  v108 = (&v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v105 - v18;
  v117[2] = a3;
  v117[3] = a4;
  v106 = a5;
  v117[4] = a5;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v20 = type metadata accessor for ItemMetadata(0);
  v21 = a2[v20[10]];
  v113 = a3;

  v114 = a4;
  sub_1CF1AE1DC(a4, &v122);
  sub_1CF1ADED4(v21, &v126);
  sub_1CF1ADEF4(a2[v20[13]], &v126);
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      LODWORD(v126) = 4;
      v23 = 0;
    }

    else
    {
      LODWORD(v126) = 1;
      v23 = 1;
    }

    sub_1CF1ADF14(v23, &v126);
  }

  else if (*a2)
  {
    LODWORD(v126) = 2;
  }

  else
  {
    if (a2[v20[28]])
    {
      v22 = 3;
    }

    else
    {
      v22 = 1;
    }

    LODWORD(v126) = v22;
  }

  v24 = v19;
  v25 = a2[v20[20]];
  sub_1CF1ADF34(a2[v20[20]], &v126);
  sub_1CF1ADF48(a2[v20[9]], &v126);
  v26 = a2[v20[21]];
  v27 = v110;
  if (v26)
  {
    sub_1CF1ADF68((a2[v20[12]] & 1) == 0, &v126);
    v28 = qword_1CF9FBDC0[v26 - 1];
  }

  else
  {
    sub_1CF1ADF68(0, &v126);
    v28 = 0;
  }

  *(&v138 + 1) = v28;
  v29 = a2[v20[23]];
  if (v29 == 6)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29 + 1;
  }

  BYTE4(v139) = v30;
  *(&v133 + 1) = *&a2[v20[19]];
  sub_1CF1ADF88(a2[v20[11]], &v126);
  sub_1CF1ADFA8(a2[v20[15]], &v126);
  sub_1CF1ADFC8(a2[v20[16]], &v126);
  sub_1CF1ADFE8(a2[v20[29]], &v126);
  sub_1CF1AE008(a2[v20[36]], &v126);
  sub_1CF1AE028(a2[v20[18]], &v126);
  sub_1CF1AE048(a2[v20[24]], &v126);
  sub_1CF1AE068(a2[v20[25]], &v126);
  v31 = *(a1 + 208);
  v166 = *(a1 + 192);
  v167 = v31;
  v168 = *(a1 + 224);
  v169 = *(a1 + 240);
  v32 = *(a1 + 144);
  v162 = *(a1 + 128);
  v163 = v32;
  v33 = *(a1 + 176);
  v164 = *(a1 + 160);
  v165 = v33;
  v34 = *(a1 + 80);
  v158 = *(a1 + 64);
  v159 = v34;
  v35 = *(a1 + 112);
  v160 = *(a1 + 96);
  v161 = v35;
  v36 = *(a1 + 16);
  v155[0] = *a1;
  v155[1] = v36;
  v37 = *(a1 + 48);
  v156 = *(a1 + 32);
  v157 = v37;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v155) != 1)
  {
    BYTE8(v137) = v156;
    BYTE9(v137) = BYTE2(v156);
  }

  if (v25)
  {
    LODWORD(v139) = a2[v20[22]];
  }

  if (*a2 != 1)
  {
    v38 = *&a2[v20[27]];
    *&v127 = *&a2[v20[26]];
    *&v134 = v38;
  }

  WORD4(v126) = *(a2 + 5);
  v39 = *(v15 + 16);
  v39(v24, &a2[v20[7]], v27);
  *(&v127 + 1) = sub_1CF1ADD60(v24);
  *&v128 = v40;
  v39(v24, &a2[v20[8]], v27);
  *(&v128 + 1) = sub_1CF1ADD60(v24);
  *&v129 = v41;
  v42 = &a2[v20[30]];
  v107 = v24;
  v43 = v109;
  sub_1CEFCCBDC(v42, v109, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v15 + 48))(v43, 1, v27) == 1)
  {
    sub_1CEFCCC44(v43, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v44 = *(v15 + 32);
    v105 = v20;
    v45 = v27;
    v46 = v108;
    v44(v108, v43, v45);
    v47 = v107;
    v39(v107, v46, v45);
    *(&v129 + 1) = sub_1CF1ADD60(v47);
    *&v130 = v48;
    sub_1CF1AE164(&v126);
    v49 = v45;
    v20 = v105;
    (*(v15 + 8))(v46, v49);
  }

  v50 = &a2[v20[32]];
  if (v50[8])
  {
    v51 = 0;
  }

  else
  {
    v51 = *v50;
  }

  *(&v130 + 1) = v51;
  if (a2[8])
  {
    v52 = &a2[v20[37]];
    if (v52[4])
    {
      v53 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v52 = a2 + 4;
  }

  v53 = *v52;
LABEL_35:
  DWORD2(v132) = v53;
  v54 = &a2[v20[35]];
  if (v54[8])
  {
    v55 = 0;
  }

  else
  {
    v55 = __ROR8__(*v54, 32);
  }

  *&v133 = v55;
  MEMORY[0x1EEE9AC00](*&a2[v20[38]]);
  *(&v105 - 6) = &v126;
  *(&v105 - 5) = a1;
  v101 = a2;
  v102 = sub_1CF1AE1BC;
  v103 = v117;
  if (v57)
  {
    sub_1CF1ACD04(v56, v57, sub_1CF1AE45C);
    v58 = v114;
    goto LABEL_54;
  }

  *&v137 = 0;
  v59 = *(a1 + 208);
  v151 = *(a1 + 192);
  v152 = v59;
  v153 = *(a1 + 224);
  v154 = *(a1 + 240);
  v60 = *(a1 + 144);
  v147 = *(a1 + 128);
  v148 = v60;
  v61 = *(a1 + 176);
  v149 = *(a1 + 160);
  v150 = v61;
  v62 = *(a1 + 80);
  v143 = *(a1 + 64);
  v144 = v62;
  v63 = *(a1 + 112);
  v145 = *(a1 + 96);
  v146 = v63;
  v64 = *(a1 + 16);
  v140[0] = *a1;
  v140[1] = v64;
  v65 = *(a1 + 48);
  v141 = *(a1 + 32);
  v142 = v65;
  get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v140);
  MEMORY[0x1EEE9AC00](*(&v141 + 1));
  v101 = &v126;
  v102 = a2;
  v103 = sub_1CF1AE1BC;
  v104 = v117;
  if (v68 != 1 && v67)
  {
    sub_1CF1ACD04(v66, v67, sub_1CF1AE4A4);
    v58 = v114;
    goto LABEL_54;
  }

  *&v138 = 0;
  v69 = &a2[v20[14]];
  v70 = *(v69 + 1);
  if (v70)
  {
    *&v122 = *v69;
    *(&v122 + 1) = v70;
    *&v118 = 47;
    *(&v118 + 1) = 0xE100000000000000;
    v115 = 58;
    v116 = 0xE100000000000000;
    v103 = sub_1CEFE4E68();
    v104 = v103;
    v101 = MEMORY[0x1E69E6158];
    v102 = v103;
    v71 = sub_1CF9E7668();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  MEMORY[0x1EEE9AC00](v71);
  v101 = &v126;
  v102 = a2;
  v103 = sub_1CF1AE1BC;
  v104 = v117;
  if (v73)
  {
    sub_1CF1ACD04(v74, v73, sub_1CF1AE4BC);
    v73, v75, v76, v77, v78, v79, v80, v81;
LABEL_53:
    v58 = v114;
    goto LABEL_54;
  }

  *(&v134 + 1) = 0;
  MEMORY[0x1EEE9AC00](v74);
  v101 = a2;
  v102 = v83;
  v103 = sub_1CF1AE1BC;
  v104 = v84;
  v85 = &a2[v20[34]];
  v86 = *(v85 + 1);
  if (v86 >> 60 != 15)
  {
    v90 = *v85;
    sub_1CEFF05F4(*v85, *(v85 + 1));
    sub_1CF1ADB60(v90, v86, sub_1CF1AE51C, (&v105 - 6));
    sub_1CEFE48D8(v90, v86);
    goto LABEL_53;
  }

  MEMORY[0x1EEE9AC00](v82);
  v101 = &v126;
  v102 = a2;
  v103 = sub_1CF1AE1BC;
  v104 = v117;
  v88 = *&a2[v20[33]];
  if (v88)
  {
    v89 = v112;
    sub_1CF9BBCF4(sub_1CF1AE48C, (&v105 - 6), v88, v111);
    if (!v89)
    {
      v110 = &v105;
      v58 = v114;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v110 = &v105;
  *&v136 = 0;
  v92 = *&a2[v20[31]];
  if (v92)
  {
    v93 = swift_allocObject();
    *(v93 + 16) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v92;
    *&v120 = sub_1CF1AE580;
    *(&v120 + 1) = v94;
    *&v118 = MEMORY[0x1E69E9820];
    *(&v118 + 1) = 1107296256;
    *&v119 = sub_1CF1AD9FC;
    *(&v119 + 1) = &block_descriptor_40;
    v95 = _Block_copy(&v118);
    v108 = *(&v120 + 1);
    v96 = v113;

    v97 = v114;
    sub_1CF1AE1DC(v114, &v122);

    v109 = v93;

    fpfs_serialize_tags();
    _Block_release(v95);
    v108 = &v105;
    v122 = v170;
    v123 = v171;
    v124 = v172;
    v125 = v173;
    MEMORY[0x1EEE9AC00](v98);
    v101 = v96;
    v102 = &v126;
    v103 = v106;
    v99 = *(*v96 + 600);
    sub_1CF1AE1DC(v97, &v118);
    v99(&v122, sub_1CF1AE54C, &v105 - 6, MEMORY[0x1E69E7CA8] + 8);
    v118 = v122;
    v119 = v123;
    v120 = v124;
    v121 = v125;
    sub_1CEFCCC44(&v118, &unk_1EC4BF260, &unk_1CFA01B60);

    v58 = v114;
    sub_1CF1AE25C(v114);
  }

  else
  {
    v109 = &v105;
    v122 = v170;
    v123 = v171;
    v124 = v172;
    v125 = v173;
    MEMORY[0x1EEE9AC00](v87);
    v58 = v114;
    v101 = v113;
    v102 = &v126;
    v103 = v106;
    v100 = *(*v113 + 600);
    sub_1CF1AE1DC(v114, &v118);

    sub_1CF1AE1DC(v58, &v118);
    v100(&v122, sub_1CF1AE2D4, &v105 - 6, MEMORY[0x1E69E7CA8] + 8);
    v118 = v122;
    v119 = v123;
    v120 = v124;
    v121 = v125;
    sub_1CEFCCC44(&v118, &unk_1EC4BF260, &unk_1CFA01B60);

    sub_1CF1AE25C(v58);
  }

LABEL_54:
  fpfs_free_metadata_tag_data();

  sub_1CF1AE25C(v58);

  return sub_1CF1AE25C(v58);
}

void sub_1CF1AAA14(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t (*a6)()@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, void *a10)
{
  v144 = a9;
  LODWORD(v148) = a8;
  v210 = *MEMORY[0x1E69E9840];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v135[-v18];
  v19 = sub_1CF9E5CF8();
  v142 = *(v19 - 8);
  v143 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v139 = &v135[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v140 = &v135[-v22];
  v152[2] = a3;
  v152[3] = a4;
  v137 = a5;
  v138 = a10;
  v152[4] = a5;
  v152[5] = a6;
  v136 = a7;
  v153 = a7;
  v154 = v148;
  v155 = a10;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v23 = type metadata accessor for ItemMetadata(0);
  v24 = a2[v23[10]];
  v149 = a3;

  v146 = a4;
  sub_1CEFCCBDC(a4, &v162, &unk_1EC4BF260, &unk_1CFA01B60);
  v147 = a6;

  sub_1CF1ADED4(v24, &v166);
  sub_1CF1ADEF4(a2[v23[13]], &v166);
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      LODWORD(v166) = 4;
      v26 = 0;
    }

    else
    {
      LODWORD(v166) = 1;
      v26 = 1;
    }

    sub_1CF1ADF14(v26, &v166);
  }

  else if (*a2)
  {
    LODWORD(v166) = 2;
  }

  else
  {
    if (a2[v23[28]])
    {
      v25 = 3;
    }

    else
    {
      v25 = 1;
    }

    LODWORD(v166) = v25;
  }

  v28 = v142;
  v27 = v143;
  v29 = v140;
  v30 = a2[v23[20]];
  sub_1CF1ADF34(a2[v23[20]], &v166);
  sub_1CF1ADF48(a2[v23[9]], &v166);
  v31 = a2[v23[21]];
  if (v31)
  {
    sub_1CF1ADF68((a2[v23[12]] & 1) == 0, &v166);
    v32 = qword_1CF9FBDC0[v31 - 1];
  }

  else
  {
    sub_1CF1ADF68(0, &v166);
    v32 = 0;
  }

  *(&v178 + 1) = v32;
  v33 = a2[v23[23]];
  if (v33 == 6)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33 + 1;
  }

  BYTE4(v179) = v34;
  *(&v173 + 1) = *&a2[v23[19]];
  sub_1CF1ADF88(a2[v23[11]], &v166);
  sub_1CF1ADFA8(a2[v23[15]], &v166);
  sub_1CF1ADFC8(a2[v23[16]], &v166);
  sub_1CF1ADFE8(a2[v23[29]], &v166);
  sub_1CF1AE008(a2[v23[36]], &v166);
  sub_1CF1AE028(a2[v23[18]], &v166);
  sub_1CF1AE048(a2[v23[24]], &v166);
  sub_1CF1AE068(a2[v23[25]], &v166);
  v35 = *(a1 + 208);
  v206 = *(a1 + 192);
  v207 = v35;
  v208 = *(a1 + 224);
  v209 = *(a1 + 240);
  v36 = *(a1 + 144);
  v202 = *(a1 + 128);
  v203 = v36;
  v37 = *(a1 + 176);
  v204 = *(a1 + 160);
  v205 = v37;
  v38 = *(a1 + 80);
  v198 = *(a1 + 64);
  v199 = v38;
  v39 = *(a1 + 112);
  v200 = *(a1 + 96);
  v201 = v39;
  v40 = *(a1 + 16);
  v195[0] = *a1;
  v195[1] = v40;
  v41 = *(a1 + 48);
  v196 = *(a1 + 32);
  v197 = v41;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v195) != 1)
  {
    BYTE8(v177) = v196;
    BYTE9(v177) = BYTE2(v196);
  }

  if (v30)
  {
    LODWORD(v179) = a2[v23[22]];
  }

  if (*a2 != 1)
  {
    v42 = *&a2[v23[27]];
    *&v167 = *&a2[v23[26]];
    *&v174 = v42;
  }

  WORD4(v166) = *(a2 + 5);
  v43 = *(v28 + 2);
  (v43)(v29, &a2[v23[7]], v27);
  *(&v167 + 1) = sub_1CF1ADD60(v29);
  *&v168 = v44;
  v45 = &a2[v23[8]];
  v143 = v43;
  (v43)(v29, v45, v27);
  *(&v168 + 1) = sub_1CF1ADD60(v29);
  *&v169 = v46;
  v47 = v141;
  sub_1CEFCCBDC(&a2[v23[30]], v141, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v28 + 6))(v47, 1, v27) == 1)
  {
    sub_1CEFCCC44(v47, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v48 = *(v28 + 4);
    v142 = v23;
    v49 = v28;
    v50 = v139;
    v48(v139, v47, v27);
    (v143)(v29, v50, v27);
    *(&v169 + 1) = sub_1CF1ADD60(v29);
    *&v170 = v51;
    sub_1CF1AE164(&v166);
    (*(v49 + 1))(v50, v27);
    v23 = v142;
  }

  v52 = &a2[v23[32]];
  if (v52[8])
  {
    v53 = 0;
  }

  else
  {
    v53 = *v52;
  }

  *(&v170 + 1) = v53;
  if (a2[8])
  {
    v54 = &a2[v23[37]];
    if (v54[4])
    {
      v55 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v54 = a2 + 4;
  }

  v55 = *v54;
LABEL_35:
  DWORD2(v172) = v55;
  v56 = &a2[v23[35]];
  if (v56[8])
  {
    v57 = 0;
  }

  else
  {
    v57 = __ROR8__(*v56, 32);
  }

  *&v173 = v57;
  MEMORY[0x1EEE9AC00](*&a2[v23[38]]);
  *&v135[-48] = &v166;
  *&v135[-40] = a1;
  v131 = a2;
  v132 = sub_1CF1ADEA8;
  v133 = v152;
  if (v59)
  {
    sub_1CF1ACD04(v58, v59, sub_1CF1AE088);
    v60 = v146;
    v61 = v147;
    goto LABEL_54;
  }

  *&v177 = 0;
  v62 = *(a1 + 208);
  v191 = *(a1 + 192);
  v192 = v62;
  v193 = *(a1 + 224);
  v194 = *(a1 + 240);
  v63 = *(a1 + 144);
  v187 = *(a1 + 128);
  v188 = v63;
  v64 = *(a1 + 176);
  v189 = *(a1 + 160);
  v190 = v64;
  v65 = *(a1 + 80);
  v183 = *(a1 + 64);
  v184 = v65;
  v66 = *(a1 + 112);
  v185 = *(a1 + 96);
  v186 = v66;
  v67 = *(a1 + 16);
  v180[0] = *a1;
  v180[1] = v67;
  v68 = *(a1 + 48);
  v181 = *(a1 + 32);
  v182 = v68;
  get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v180);
  MEMORY[0x1EEE9AC00](*(&v181 + 1));
  v131 = &v166;
  v132 = a2;
  v133 = sub_1CF1ADEA8;
  v134 = v152;
  if (v71 != 1 && v70)
  {
    sub_1CF1ACD04(v69, v70, sub_1CF1AE0A0);
    v60 = v146;
    v61 = v147;
    goto LABEL_54;
  }

  *&v178 = 0;
  v72 = &a2[v23[14]];
  v73 = *(v72 + 1);
  if (v73)
  {
    *&v162 = *v72;
    *(&v162 + 1) = v73;
    v156 = 47;
    v157 = 0xE100000000000000;
    v150 = 58;
    v151 = 0xE100000000000000;
    v133 = sub_1CEFE4E68();
    v134 = v133;
    v131 = MEMORY[0x1E69E6158];
    v132 = v133;
    v74 = sub_1CF9E7668();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0;
  }

  MEMORY[0x1EEE9AC00](v74);
  v131 = &v166;
  v132 = a2;
  v133 = sub_1CF1ADEA8;
  v134 = v152;
  if (v76)
  {
    sub_1CF1ACD04(v77, v76, sub_1CF1AE0C0);
    v76, v78, v79, v80, v81, v82, v83, v84;
LABEL_53:
    v60 = v146;
    v61 = v147;
    goto LABEL_54;
  }

  *(&v174 + 1) = 0;
  MEMORY[0x1EEE9AC00](v77);
  v131 = a2;
  v132 = v86;
  v133 = sub_1CF1ADEA8;
  v134 = v87;
  v88 = &a2[v23[34]];
  v89 = *(v88 + 1);
  if (v89 >> 60 != 15)
  {
    v93 = *v88;
    sub_1CEFF05F4(*v88, *(v88 + 1));
    sub_1CF1ADB60(v93, v89, sub_1CF1AE0E0, &v135[-48]);
    sub_1CEFE48D8(v93, v89);
    goto LABEL_53;
  }

  MEMORY[0x1EEE9AC00](v85);
  v131 = &v166;
  v132 = a2;
  v133 = sub_1CF1ADEA8;
  v134 = v152;
  v91 = *&a2[v23[33]];
  if (v91)
  {
    v92 = v145;
    sub_1CF9BBCF4(sub_1CF1AE0F8, &v135[-48], v91, v144);
    if (!v92)
    {
      v60 = v146;
      v61 = v147;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v143 = v135;
  *&v176 = 0;
  v108 = *&a2[v23[31]];
  if (v108)
  {
    LODWORD(v142) = v148 & 1;
    LODWORD(v141) = v136 & 1;
    v109 = swift_allocObject();
    *(v109 + 16) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v108;
    v160 = sub_1CF1AE130;
    v161 = v110;
    v156 = MEMORY[0x1E69E9820];
    v157 = 1107296256;
    v158 = sub_1CF1AD9FC;
    v159 = &block_descriptor_9_0;
    v111 = _Block_copy(&v156);
    v139 = v161;
    v140 = v111;
    v112 = v149;

    v60 = v146;
    sub_1CEFCCBDC(v146, &v162, &unk_1EC4BF260, &unk_1CFA01B60);
    v61 = v147;

    v148 = v109;

    v113 = v140;
    fpfs_serialize_tags();
    _Block_release(v113);
    v114 = v60[1];
    v162 = *v60;
    v163 = v114;
    v115 = v60[3];
    v164 = v60[2];
    v165 = v115;
    v117 = MEMORY[0x1EEE9AC00](v116);
    *&v135[-48] = v112;
    *&v135[-40] = &v166;
    v131 = v137;
    v132 = v61;
    LOBYTE(v133) = v141;
    BYTE1(v133) = v142;
    v134 = v138;
    (*(*v112 + 600))(&v162, sub_1CF1AE444, v117);
  }

  else
  {
    v148 = v135;
    v60 = v146;
    v125 = v146[1];
    v162 = *v146;
    v163 = v125;
    v126 = v146[3];
    v164 = v146[2];
    v165 = v126;
    MEMORY[0x1EEE9AC00](v90);
    v127 = v149;
    *&v135[-48] = v149;
    *&v135[-40] = &v166;
    v61 = v147;
    v131 = v137;
    v132 = v147;
    LOBYTE(v133) = v128;
    BYTE1(v133) = v129;
    v134 = v138;
    v142 = (*v127 + 600);
    v130 = *v142;

    sub_1CEFCCBDC(v60, &v156, &unk_1EC4BF260, &unk_1CFA01B60);

    v130(&v162, sub_1CF1AE118, &v135[-64], MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1CEFCCC44(v60, &unk_1EC4BF260, &unk_1CFA01B60);
  v61, v118, v119, v120, v121, v122, v123, v124;
LABEL_54:
  fpfs_free_metadata_tag_data();

  sub_1CEFCCC44(v60, &unk_1EC4BF260, &unk_1CFA01B60);
  v61, v94, v95, v96, v97, v98, v99, v100;

  sub_1CEFCCC44(v60, &unk_1EC4BF260, &unk_1CFA01B60);
  v61, v101, v102, v103, v104, v105, v106, v107;
}

uint64_t *sub_1CF1AB7D4(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v168 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v106 - v7;
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v107 = v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = v106 - v13;
  v106[3] = a3;
  v123[4] = a3;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v14 = type metadata accessor for ItemMetadata(0);
  sub_1CF1ADED4(a2[v14[10]], &v124);
  sub_1CF1ADEF4(a2[v14[13]], &v124);
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      LODWORD(v124) = 4;
      v16 = 0;
    }

    else
    {
      LODWORD(v124) = 1;
      v16 = 1;
    }

    sub_1CF1ADF14(v16, &v124);
  }

  else if (*a2)
  {
    LODWORD(v124) = 2;
  }

  else
  {
    if (a2[v14[28]])
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    LODWORD(v124) = v15;
  }

  v17 = a2[v14[20]];
  sub_1CF1ADF34(a2[v14[20]], &v124);
  sub_1CF1ADF48(a2[v14[9]], &v124);
  v18 = a2[v14[21]];
  if (v18)
  {
    sub_1CF1ADF68((a2[v14[12]] & 1) == 0, &v124);
    v19 = qword_1CF9FBDC0[v18 - 1];
  }

  else
  {
    sub_1CF1ADF68(0, &v124);
    v19 = 0;
  }

  *(&v136 + 1) = v19;
  v20 = a2[v14[23]];
  if (v20 == 6)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 + 1;
  }

  BYTE4(v137) = v21;
  *(&v131 + 1) = *&a2[v14[19]];
  sub_1CF1ADF88(a2[v14[11]], &v124);
  sub_1CF1ADFA8(a2[v14[15]], &v124);
  sub_1CF1ADFC8(a2[v14[16]], &v124);
  sub_1CF1ADFE8(a2[v14[29]], &v124);
  sub_1CF1AE008(a2[v14[36]], &v124);
  sub_1CF1AE028(a2[v14[18]], &v124);
  sub_1CF1AE048(a2[v14[24]], &v124);
  sub_1CF1AE068(a2[v14[25]], &v124);
  v22 = *(a1 + 208);
  v164 = *(a1 + 192);
  v165 = v22;
  v166 = *(a1 + 224);
  v167 = *(a1 + 240);
  v23 = *(a1 + 144);
  v160 = *(a1 + 128);
  v161 = v23;
  v24 = *(a1 + 176);
  v162 = *(a1 + 160);
  v163 = v24;
  v25 = *(a1 + 80);
  v156 = *(a1 + 64);
  v157 = v25;
  v26 = *(a1 + 112);
  v158 = *(a1 + 96);
  v159 = v26;
  v27 = *(a1 + 16);
  v153[0] = *a1;
  v153[1] = v27;
  v28 = *(a1 + 48);
  v154 = *(a1 + 32);
  v155 = v28;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v153) != 1)
  {
    BYTE8(v135) = v154;
    BYTE9(v135) = BYTE2(v154);
  }

  if (v17)
  {
    LODWORD(v137) = a2[v14[22]];
  }

  v108 = a1;
  if (*a2 != 1)
  {
    v29 = *&a2[v14[27]];
    *&v125 = *&a2[v14[26]];
    *&v132 = v29;
  }

  WORD4(v124) = *(a2 + 5);
  v30 = v14[7];
  v31 = v10;
  v32 = v14;
  v33 = *(v10 + 16);
  v34 = v110;
  v33(v110, &a2[v30], v9);
  *(&v125 + 1) = sub_1CF1ADD60(v34);
  *&v126 = v35;
  v33(v34, &a2[v32[8]], v9);
  *(&v126 + 1) = sub_1CF1ADD60(v34);
  *&v127 = v36;
  v112 = v32;
  v37 = v32[30];
  v109 = a2;
  sub_1CEFCCBDC(&a2[v37], v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v38 = v31;
  v40 = *(v31 + 48);
  v39 = (v31 + 48);
  if (v40(v8, 1, v9) == 1)
  {
    sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v41 = v38;
    v42 = *(v38 + 32);
    v43 = v107;
    v42(v107, v8, v9);
    v33(v34, v43, v9);
    *(&v127 + 1) = sub_1CF1ADD60(v34);
    *&v128 = v44;
    sub_1CF1AE164(&v124);
    (*(v41 + 8))(v43, v9);
  }

  v45 = v112;
  v46 = v109;
  v47 = &v109[v112[32]];
  if (v47[8])
  {
    v48 = 0;
  }

  else
  {
    v48 = *v47;
  }

  *(&v128 + 1) = v48;
  if (v109[8])
  {
    v49 = &v109[v112[37]];
    if (v49[4])
    {
      v50 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v49 = v109 + 4;
  }

  v50 = *v49;
LABEL_35:
  DWORD2(v130) = v50;
  v51 = &v109[v112[35]];
  if (v51[8])
  {
    v52 = 0;
  }

  else
  {
    v52 = __ROR8__(*v51, 32);
  }

  *&v131 = v52;
  MEMORY[0x1EEE9AC00](*&v109[v112[38]]);
  *&v106[-12] = &v124;
  *&v106[-10] = v55;
  v102 = v46;
  v103 = sub_1CF1AE2F4;
  v104 = v123;
  if (v54)
  {
    v56 = v111;
    v57 = sub_1CF9BB390(v53, v54, sub_1CF1AE310, &v106[-16]);
    if (!v56)
    {
      v39 = v57;
    }
  }

  else
  {
    *&v135 = 0;
    v58 = *(v55 + 208);
    v149 = *(v55 + 192);
    v150 = v58;
    v151 = *(v55 + 224);
    v152 = *(v55 + 240);
    v59 = *(v55 + 144);
    v145 = *(v55 + 128);
    v146 = v59;
    v60 = *(v55 + 176);
    v147 = *(v55 + 160);
    v148 = v60;
    v61 = *(v55 + 80);
    v141 = *(v55 + 64);
    v142 = v61;
    v62 = *(v55 + 112);
    v143 = *(v55 + 96);
    v144 = v62;
    v63 = *(v55 + 16);
    v138[0] = *v55;
    v138[1] = v63;
    v64 = *(v55 + 48);
    v139 = *(v55 + 32);
    v140 = v64;
    get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v138);
    MEMORY[0x1EEE9AC00](*(&v139 + 1));
    v102 = &v124;
    v103 = v46;
    v104 = sub_1CF1AE2F4;
    v105 = v123;
    if (v67 == 1 || !v66)
    {
      *&v136 = 0;
      v70 = &v46[v45[14]];
      v71 = *(v70 + 1);
      if (v71)
      {
        v117 = *v70;
        v118 = v71;
        v115 = 47;
        v116 = 0xE100000000000000;
        v113 = 58;
        v114 = 0xE100000000000000;
        v104 = sub_1CEFE4E68();
        v105 = v104;
        v102 = MEMORY[0x1E69E6158];
        v103 = v104;
        v39 = &v117;
        v72 = sub_1CF9E7668();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0;
      }

      MEMORY[0x1EEE9AC00](v72);
      v102 = &v124;
      v103 = v46;
      v104 = sub_1CF1AE2F4;
      v105 = v123;
      if (v74)
      {
        v76 = v111;
        v77 = sub_1CF9BB390(v75, v74, sub_1CF1AE348, &v106[-12]);
        if (!v76)
        {
          v39 = v77;
        }

        v74, v78, v79, v80, v81, v82, v83, v84;
      }

      else
      {
        *(&v132 + 1) = 0;
        MEMORY[0x1EEE9AC00](v75);
        v39 = &v106[-12];
        v102 = v46;
        v103 = v86;
        v104 = sub_1CF1AE2F4;
        v105 = v87;
        v88 = &v46[v112[34]];
        v89 = *(v88 + 1);
        if (v89 >> 60 == 15)
        {
          MEMORY[0x1EEE9AC00](v85);
          v102 = &v124;
          v103 = v46;
          v104 = sub_1CF1AE2F4;
          v105 = v123;
          v91 = *&v46[*(v90 + 132)];
          if (v91)
          {
            v92 = v111;
            v93 = sub_1CF9BC414(sub_1CF1AE380, &v106[-12], v91);
            if (!v92)
            {
              v39 = v93;
            }
          }

          else
          {
            *&v134 = 0;
            v97 = *&v46[*(v90 + 124)];
            if (v97)
            {
              v98 = swift_allocObject();
              *(v98 + 16) = 0;
              v99 = swift_allocObject();
              *(v99 + 16) = v98;
              *(v99 + 24) = v97;
              v121 = sub_1CF1AE580;
              v122 = v99;
              v117 = MEMORY[0x1E69E9820];
              v118 = 1107296256;
              v119 = sub_1CF1AD9FC;
              v120 = &block_descriptor_49;
              v100 = _Block_copy(&v117);

              fpfs_serialize_tags();
              _Block_release(v100);
              v39 = fpfs_set_dataless_cmpfs_attrs();
            }

            else
            {
              v39 = fpfs_set_dataless_cmpfs_attrs();
            }
          }
        }

        else
        {
          v94 = *v88;
          sub_1CEFF05F4(*v88, *(v88 + 1));
          v95 = v111;
          v96 = sub_1CF9B86B0(v94, v89, sub_1CF1AE368, &v106[-12]);
          if (v95)
          {
            sub_1CEFE48D8(v94, v89);
          }

          else
          {
            v39 = v96;
            sub_1CEFE48D8(v94, v89);
          }
        }
      }
    }

    else
    {
      v68 = v111;
      v69 = sub_1CF9BB390(v65, v66, sub_1CF1AE328, &v106[-12]);
      if (!v68)
      {
        v39 = v69;
      }
    }
  }

  fpfs_free_metadata_tag_data();
  return v39;
}

uint64_t *sub_1CF1AC258(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v168 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v106 - v7;
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v107 = v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = v106 - v13;
  v106[3] = a3;
  v123[4] = a3;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v14 = type metadata accessor for ItemMetadata(0);
  sub_1CF1ADED4(a2[v14[10]], &v124);
  sub_1CF1ADEF4(a2[v14[13]], &v124);
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      LODWORD(v124) = 4;
      v16 = 0;
    }

    else
    {
      LODWORD(v124) = 1;
      v16 = 1;
    }

    sub_1CF1ADF14(v16, &v124);
  }

  else if (*a2)
  {
    LODWORD(v124) = 2;
  }

  else
  {
    if (a2[v14[28]])
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    LODWORD(v124) = v15;
  }

  v17 = a2[v14[20]];
  sub_1CF1ADF34(a2[v14[20]], &v124);
  sub_1CF1ADF48(a2[v14[9]], &v124);
  v18 = a2[v14[21]];
  if (v18)
  {
    sub_1CF1ADF68((a2[v14[12]] & 1) == 0, &v124);
    v19 = qword_1CF9FBDC0[v18 - 1];
  }

  else
  {
    sub_1CF1ADF68(0, &v124);
    v19 = 0;
  }

  *(&v136 + 1) = v19;
  v20 = a2[v14[23]];
  if (v20 == 6)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 + 1;
  }

  BYTE4(v137) = v21;
  *(&v131 + 1) = *&a2[v14[19]];
  sub_1CF1ADF88(a2[v14[11]], &v124);
  sub_1CF1ADFA8(a2[v14[15]], &v124);
  sub_1CF1ADFC8(a2[v14[16]], &v124);
  sub_1CF1ADFE8(a2[v14[29]], &v124);
  sub_1CF1AE008(a2[v14[36]], &v124);
  sub_1CF1AE028(a2[v14[18]], &v124);
  sub_1CF1AE048(a2[v14[24]], &v124);
  sub_1CF1AE068(a2[v14[25]], &v124);
  v22 = *(a1 + 208);
  v164 = *(a1 + 192);
  v165 = v22;
  v166 = *(a1 + 224);
  v167 = *(a1 + 240);
  v23 = *(a1 + 144);
  v160 = *(a1 + 128);
  v161 = v23;
  v24 = *(a1 + 176);
  v162 = *(a1 + 160);
  v163 = v24;
  v25 = *(a1 + 80);
  v156 = *(a1 + 64);
  v157 = v25;
  v26 = *(a1 + 112);
  v158 = *(a1 + 96);
  v159 = v26;
  v27 = *(a1 + 16);
  v153[0] = *a1;
  v153[1] = v27;
  v28 = *(a1 + 48);
  v154 = *(a1 + 32);
  v155 = v28;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v153) != 1)
  {
    BYTE8(v135) = v154;
    BYTE9(v135) = BYTE2(v154);
  }

  if (v17)
  {
    LODWORD(v137) = a2[v14[22]];
  }

  v108 = a1;
  if (*a2 != 1)
  {
    v29 = *&a2[v14[27]];
    *&v125 = *&a2[v14[26]];
    *&v132 = v29;
  }

  WORD4(v124) = *(a2 + 5);
  v30 = v14[7];
  v31 = v10;
  v32 = v14;
  v33 = *(v10 + 16);
  v34 = v110;
  v33(v110, &a2[v30], v9);
  *(&v125 + 1) = sub_1CF1ADD60(v34);
  *&v126 = v35;
  v33(v34, &a2[v32[8]], v9);
  *(&v126 + 1) = sub_1CF1ADD60(v34);
  *&v127 = v36;
  v112 = v32;
  v37 = v32[30];
  v109 = a2;
  sub_1CEFCCBDC(&a2[v37], v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v38 = v31;
  v40 = *(v31 + 48);
  v39 = (v31 + 48);
  if (v40(v8, 1, v9) == 1)
  {
    sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v41 = v38;
    v42 = *(v38 + 32);
    v43 = v107;
    v42(v107, v8, v9);
    v33(v34, v43, v9);
    *(&v127 + 1) = sub_1CF1ADD60(v34);
    *&v128 = v44;
    sub_1CF1AE164(&v124);
    (*(v41 + 8))(v43, v9);
  }

  v45 = v112;
  v46 = v109;
  v47 = &v109[v112[32]];
  if (v47[8])
  {
    v48 = 0;
  }

  else
  {
    v48 = *v47;
  }

  *(&v128 + 1) = v48;
  if (v109[8])
  {
    v49 = &v109[v112[37]];
    if (v49[4])
    {
      v50 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v49 = v109 + 4;
  }

  v50 = *v49;
LABEL_35:
  DWORD2(v130) = v50;
  v51 = &v109[v112[35]];
  if (v51[8])
  {
    v52 = 0;
  }

  else
  {
    v52 = __ROR8__(*v51, 32);
  }

  *&v131 = v52;
  MEMORY[0x1EEE9AC00](*&v109[v112[38]]);
  *&v106[-12] = &v124;
  *&v106[-10] = v55;
  v102 = v46;
  v103 = sub_1CF1AE2F4;
  v104 = v123;
  if (v54)
  {
    v56 = v111;
    v57 = sub_1CF9BB390(v53, v54, sub_1CF1AE474, &v106[-16]);
    if (!v56)
    {
      v39 = v57;
    }
  }

  else
  {
    *&v135 = 0;
    v58 = *(v55 + 208);
    v149 = *(v55 + 192);
    v150 = v58;
    v151 = *(v55 + 224);
    v152 = *(v55 + 240);
    v59 = *(v55 + 144);
    v145 = *(v55 + 128);
    v146 = v59;
    v60 = *(v55 + 176);
    v147 = *(v55 + 160);
    v148 = v60;
    v61 = *(v55 + 80);
    v141 = *(v55 + 64);
    v142 = v61;
    v62 = *(v55 + 112);
    v143 = *(v55 + 96);
    v144 = v62;
    v63 = *(v55 + 16);
    v138[0] = *v55;
    v138[1] = v63;
    v64 = *(v55 + 48);
    v139 = *(v55 + 32);
    v140 = v64;
    get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v138);
    MEMORY[0x1EEE9AC00](*(&v139 + 1));
    v102 = &v124;
    v103 = v46;
    v104 = sub_1CF1AE2F4;
    v105 = v123;
    if (v67 == 1 || !v66)
    {
      *&v136 = 0;
      v70 = &v46[v45[14]];
      v71 = *(v70 + 1);
      if (v71)
      {
        v117 = *v70;
        v118 = v71;
        v115 = 47;
        v116 = 0xE100000000000000;
        v113 = 58;
        v114 = 0xE100000000000000;
        v104 = sub_1CEFE4E68();
        v105 = v104;
        v102 = MEMORY[0x1E69E6158];
        v103 = v104;
        v39 = &v117;
        v72 = sub_1CF9E7668();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0;
      }

      MEMORY[0x1EEE9AC00](v72);
      v102 = &v124;
      v103 = v46;
      v104 = sub_1CF1AE2F4;
      v105 = v123;
      if (v74)
      {
        v76 = v111;
        v77 = sub_1CF9BB390(v75, v74, sub_1CF1AE4EC, &v106[-12]);
        if (!v76)
        {
          v39 = v77;
        }

        v74, v78, v79, v80, v81, v82, v83, v84;
      }

      else
      {
        *(&v132 + 1) = 0;
        MEMORY[0x1EEE9AC00](v75);
        v39 = &v106[-12];
        v102 = v46;
        v103 = v86;
        v104 = sub_1CF1AE2F4;
        v105 = v87;
        v88 = &v46[v112[34]];
        v89 = *(v88 + 1);
        if (v89 >> 60 == 15)
        {
          MEMORY[0x1EEE9AC00](v85);
          v102 = &v124;
          v103 = v46;
          v104 = sub_1CF1AE2F4;
          v105 = v123;
          v91 = *&v46[*(v90 + 132)];
          if (v91)
          {
            v92 = v111;
            v93 = sub_1CF9BC414(sub_1CF1AE504, &v106[-12], v91);
            if (!v92)
            {
              v39 = v93;
            }
          }

          else
          {
            *&v134 = 0;
            v97 = *&v46[*(v90 + 124)];
            if (v97)
            {
              v98 = swift_allocObject();
              *(v98 + 16) = 0;
              v99 = swift_allocObject();
              *(v99 + 16) = v98;
              *(v99 + 24) = v97;
              v121 = sub_1CF1AE580;
              v122 = v99;
              v117 = MEMORY[0x1E69E9820];
              v118 = 1107296256;
              v119 = sub_1CF1AD9FC;
              v120 = &block_descriptor_62;
              v100 = _Block_copy(&v117);

              fpfs_serialize_tags();
              _Block_release(v100);
              v39 = fpfs_set_dataless_cmpfs_attrs();
            }

            else
            {
              v39 = fpfs_set_dataless_cmpfs_attrs();
            }
          }
        }

        else
        {
          v94 = *v88;
          sub_1CEFF05F4(*v88, *(v88 + 1));
          v95 = v111;
          v96 = sub_1CF9B86B0(v94, v89, sub_1CF1AE534, &v106[-12]);
          if (v95)
          {
            sub_1CEFE48D8(v94, v89);
          }

          else
          {
            v39 = v96;
            sub_1CEFE48D8(v94, v89);
          }
        }
      }
    }

    else
    {
      v68 = v111;
      v69 = sub_1CF9BB390(v65, v66, sub_1CF1AE4D4, &v106[-12]);
      if (!v68)
      {
        v39 = v69;
      }
    }
  }

  fpfs_free_metadata_tag_data();
  return v39;
}

void *sub_1CF1ACD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1CF9E7938();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7[0] = a1;
    v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v7;
    return a3(v5);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_1CF9E7938();
  }

  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a3(v5);
}

void *sub_1CF1ACD90(uint64_t a1, unsigned int a2)
{
  v87 = a2;
  v96 = *MEMORY[0x1E69E9840];
  v85 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0x80000001CFA2DDF0;
  v84 = (v3 + 8);

  v88 = 0;
  v89 = 0x80000001CFA2DDF0;
  v10 = 0;
LABEL_4:
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_99;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v10 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      if (*v14 != 0xD000000000000015 || v9 != v15)
      {
        v18 = (*(a1 + 56) + 16 * v13);
        v20 = *v18;
        v19 = v18[1];
        v21 = sub_1CF9E8048();
        v9 = v89;
        if ((v21 & 1) == 0)
        {
          aBlock = v16;
          v91 = v15;

          v83 = v20;
          sub_1CEFE42D4(v20, v19);
          sub_1CF9E6918();
          sub_1CEFE4E68();
          v82 = sub_1CF9E7648();
          (*v84)(v86, v85);
          v81 = v19;
          v22 = v19 >> 62;
          if ((v19 >> 62) <= 1)
          {
            v23 = v82;
            if (!v22)
            {
              v24 = BYTE6(v81);
              goto LABEL_24;
            }

            LODWORD(v24) = HIDWORD(v83) - v83;
            if (!__OFSUB__(HIDWORD(v83), v83))
            {
              v24 = v24;
              goto LABEL_24;
            }

LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v23 = v82;
          if (v22 != 2)
          {
            v24 = 0;
            goto LABEL_24;
          }

          v26 = *(v83 + 16);
          v25 = *(v83 + 24);
          v27 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (v27)
          {
            goto LABEL_107;
          }

LABEL_24:
          v27 = __OFADD__(v24, 24);
          v28 = v24 + 24;
          if (v27)
          {
            goto LABEL_100;
          }

          v27 = __OFADD__(v28, v23);
          v29 = v28 + v23;
          if (v27)
          {
            goto LABEL_101;
          }

          if (__OFADD__(v29, 1))
          {
            goto LABEL_102;
          }

          v30 = swift_slowAlloc();
          v31 = v30;
          v32 = (v30 + 24);
          v80 = v30;
          if (v22 > 1)
          {
            v33 = v83;
            if (v22 == 2)
            {
              v37 = *(v83 + 16);
              v36 = *(v83 + 24);
              v27 = __OFSUB__(v36, v37);
              v35 = v36 - v37;
              v34 = v82;
              if (v27)
              {
                goto LABEL_110;
              }

              goto LABEL_36;
            }

            v39 = 0;
            v34 = v82;
            *(v30 + 16) = 0;
            goto LABEL_88;
          }

          v33 = v83;
          if (!v22)
          {
            v34 = v82;
            v35 = BYTE6(v81);
            goto LABEL_37;
          }

          LODWORD(v35) = HIDWORD(v83) - v83;
          if (__OFSUB__(HIDWORD(v83), v83))
          {
            goto LABEL_109;
          }

          v35 = v35;
          v34 = v82;
LABEL_36:
          if (v35 < 0)
          {
            goto LABEL_103;
          }

LABEL_37:
          if (!v35)
          {
            goto LABEL_47;
          }

          if (v22)
          {
            if (v22 == 2)
            {
              v38 = *(v33 + 16);
            }

            else
            {
              v38 = v33;
            }
          }

          else
          {
            v38 = 0;
          }

          v40 = v38 + v35;
          if (__OFADD__(v38, v35))
          {
            goto LABEL_105;
          }

          v41 = v35;
          if (v40 < v38)
          {
            goto LABEL_106;
          }

          if (v40 != v38)
          {
            v79 = (v30 + 24);
            if (v22 == 2)
            {
              if (v38 >= *(v33 + 16))
              {
                v77 = v38 + v35;
                v78 = v38;
                if (*(v33 + 24) < v40)
                {
                  goto LABEL_117;
                }

                v48 = sub_1CF9E5498();
                if (v48)
                {
                  v76 = v48;
                  v49 = sub_1CF9E54C8();
                  v50 = v78;
                  if (__OFSUB__(v78, v49))
                  {
                    goto LABEL_120;
                  }

                  v76 = &v78[v76 - v49];
                }

                else
                {
                  v76 = 0;
                  v50 = v78;
                }

                v78 = (v77 - v50);
                if (__OFSUB__(v77, v50))
                {
LABEL_118:
                  __break(1u);
                  goto LABEL_119;
                }

                v51 = sub_1CF9E54B8();
                v34 = v82;
                v33 = v83;
                v32 = v79;
                v31 = v80;
                if (v76)
                {
                  if (v51 >= v78)
                  {
                    v52 = v78;
                  }

                  else
                  {
                    v52 = v51;
                  }

                  v53 = v83;
                  memmove(v79, v76, v52);
                  v33 = v53;
                  v32 = v79;
                  v31 = v80;
                  v34 = v82;
                }

LABEL_86:
                v55 = *(v33 + 16);
                v54 = *(v33 + 24);
                v27 = __OFSUB__(v54, v55);
                v56 = v54 - v55;
                if (v27)
                {
                  goto LABEL_112;
                }

                v31[2] = v56;
                v58 = *(v33 + 16);
                v57 = *(v33 + 24);
                v39 = v57 - v58;
                if (!__OFSUB__(v57, v58))
                {
                  goto LABEL_88;
                }

LABEL_113:
                __break(1u);
                goto LABEL_114;
              }
            }

            else
            {
              if (v22 == 1)
              {
                v77 = v35;
                if (v33 >> 32 >= v40 && v38 >= v83 && v33 >> 32 >= v38 && v40 >= v83)
                {
                  v78 = v38;
                  v43 = sub_1CF9E5498();
                  if (!v43)
                  {
                    sub_1CF9E54B8();
                    v34 = v82;
                    v33 = v83;
                    v32 = v79;
                    v31 = v80;
LABEL_49:
                    v42 = HIDWORD(v33) - v33;
                    if (__OFSUB__(HIDWORD(v33), v33))
                    {
                      goto LABEL_111;
                    }

                    v39 = v42;
                    v31[2] = v42;
                    goto LABEL_88;
                  }

                  v76 = v43;
                  v44 = sub_1CF9E54C8();
                  if (!__OFSUB__(v78, v44))
                  {
                    v78 = &v78[v76 - v44];
                    v45 = sub_1CF9E54B8();
                    v32 = v79;
                    v34 = v82;
                    v33 = v83;
                    v31 = v80;
                    if (v78)
                    {
                      if (v45 >= v77)
                      {
                        v46 = v77;
                      }

                      else
                      {
                        v46 = v45;
                      }

                      v47 = v83;
                      memmove(v79, v78, v46);
                      v33 = v47;
                      v32 = v79;
                      v31 = v80;
                      v34 = v82;
                    }

                    goto LABEL_49;
                  }

LABEL_119:
                  __break(1u);
LABEL_120:
                  __break(1u);
                }

LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              v39 = BYTE6(v81);
              if (v38 <= BYTE6(v81) && v40 <= BYTE6(v81))
              {
                aBlock = v33;
                LODWORD(v91) = v81;
                WORD2(v91) = WORD2(v81);
                if (v35 >= 14)
                {
                  v41 = 14;
                }

                else if (v35 < 1)
                {
                  goto LABEL_77;
                }

                memcpy((v30 + 24), &aBlock + v38, v41);
                v32 = v79;
LABEL_77:
                v34 = v82;
                v80[2] = v39;
                goto LABEL_88;
              }

LABEL_114:
              __break(1u);
            }

            __break(1u);
            goto LABEL_116;
          }

LABEL_47:
          if (v22 == 2)
          {
            goto LABEL_86;
          }

          if (v22 == 1)
          {
            goto LABEL_49;
          }

          v39 = BYTE6(v81);
          *(v30 + 16) = BYTE6(v81);
LABEL_88:
          if (v34 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_104;
          }

          v59 = &v32[v39];
          v60 = sub_1CF9E6978();
          v15, v61, v62, v63, v64, v65, v66, v67;
          memcpy(v59, (v60 + 32), v34);

          v59[v34] = 0;
          v69 = v80;
          v68 = v81;
          *v80 = v88;
          v69[1] = v59;
          sub_1CEFE4714(v83, v68);
          v88 = v69;
          v9 = v89;
        }
      }

      goto LABEL_4;
    }
  }

  v70 = v88;
  if (!v88)
  {
    return fpfs_delete_xattrs();
  }

  v94 = sub_1CF189FC0;
  v95 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v91 = 1107296256;
  v92 = sub_1CF9B8AD8;
  v93 = &block_descriptor_65;
  v71 = _Block_copy(&aBlock);

  fpfs_set_syncable_xattrs();
  _Block_release(v71);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v72 = *v70;
  result = MEMORY[0x1D386CDC0](v70, -1, -1);
  if (v72)
  {
    result = v72;
    do
    {
      v74 = *result;
      MEMORY[0x1D386CDC0]();
      result = v74;
    }

    while (v74);
  }

  return result;
}

void *sub_1CF1AD558@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t x6_0@<X6>, uint64_t x8_0@<X8>)
{
  v19[2] = a5;
  v19[3] = a4;
  v19[4] = a6;
  v19[5] = x6_0;
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = *(a4 + *(v12 + 132));
  if (v13)
  {
    return sub_1CF9BBCF4(sub_1CF1AE48C, v19, v13, x8_0);
  }

  *(a5 + 160) = 0;
  v15 = *(a4 + *(v12 + 124));
  if (!v15)
  {
    return a6(a5);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1CF1AE580;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF1AD9FC;
  aBlock[3] = &block_descriptor_19;
  v18 = _Block_copy(aBlock);

  fpfs_serialize_tags();
  _Block_release(v18);
  a6(a5);
}

void *sub_1CF1AD70C@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t x6_0@<X6>, uint64_t x8_0@<X8>)
{
  v19[2] = a5;
  v19[3] = a4;
  v19[4] = a6;
  v19[5] = x6_0;
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = *(a4 + *(v12 + 132));
  if (v13)
  {
    return sub_1CF9BBCF4(sub_1CF1AE19C, v19, v13, x8_0);
  }

  *(a5 + 160) = 0;
  v15 = *(a4 + *(v12 + 124));
  if (!v15)
  {
    return a6(a5);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1CF1AE580;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF1AD9FC;
  aBlock[3] = &block_descriptor_27;
  v18 = _Block_copy(aBlock);

  fpfs_serialize_tags();
  _Block_release(v18);
  a6(a5);
}

uint64_t sub_1CF1AD8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(a3 + 16);
  if (v7 >= v8)
  {
    return v7 < v8;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a3 + 32;
  v10 = *(a3 + 32 + 24 * v7 + 8);

  v11 = sub_1CF9E6888();
  v10, v12, v13, v14, v15, v16, v17, v18;
  if (!a1)
  {
LABEL_6:

    result = swift_beginAccess();
    v20 = *(a2 + 16);
    v21 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      swift_beginAccess();
      *(a2 + 16) = v21;
      return v7 < v8;
    }

    goto LABEL_10;
  }

  *a1 = [v11 UTF8String];
  result = swift_beginAccess();
  v19 = *(a2 + 16);
  if (v19 < v8)
  {
    *(a1 + 8) = *(v9 + 24 * v19 + 16);
    goto LABEL_6;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1CF1AD9FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t sub_1CF1ADA4C(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  result = swift_beginAccess();
  if (!*(a2 + 16))
  {
LABEL_12:
    swift_endAccess();
    return 1;
  }

  if (v3)
  {
    v6 = sub_1CF9E6A58();
    v8 = v7;
    if (v4 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v4;
    }

    v10 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1CF1F65BC(0, *v10->tree + 1, 1, v10, v12, v13, v14, v15);
      *(a2 + 16) = v10;
    }

    v17 = *v10->tree;
    v16 = *v10->tester;
    if (v17 >= v16 >> 1)
    {
      v10 = sub_1CF1F65BC((v16 > 1), v17 + 1, 1, v10, v12, v13, v14, v15);
    }

    *v10->tree = v17 + 1;
    v18 = v10 + 24 * v17;
    *(v18 + 4) = v6;
    *(v18 + 5) = v8;
    v18[48] = v9;
    *(a2 + 16) = v10;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1ADB60(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void), uint64_t a4)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v9, 0, 14);
      v5 = v9;
      return a3(v9, v5, 0);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1CF1ADC9C(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v4)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1CF1ADC9C(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v9[0] = a1;
  LOWORD(v9[1]) = a2;
  BYTE2(v9[1]) = BYTE2(a2);
  BYTE3(v9[1]) = BYTE3(a2);
  BYTE4(v9[1]) = BYTE4(a2);
  BYTE5(v9[1]) = BYTE5(a2);
  v5 = v9 + BYTE6(a2);
  return a3(v9, v5, 0);
}

uint64_t sub_1CF1ADC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  result = sub_1CF9E5498();
  v8 = result;
  if (result)
  {
    result = sub_1CF9E54C8();
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

  v11 = sub_1CF9E54B8();
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

  return a4(v8, v14, 0);
}

uint64_t sub_1CF1ADD60(uint64_t a1)
{
  sub_1CF9E5C98();
  v3 = v2;
  v4 = sub_1CF9E5CF8();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  if (v3 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 <= -9.22337204e18)
  {
    return 0x8000000000000000;
  }

  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = (v3 - v3) * 1000000000.0;
  v7 = COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v7)
  {
    goto LABEL_14;
  }

  if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      return v3;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1CF1ADED4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t sub_1CF1ADEF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t sub_1CF1ADF14(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t sub_1CF1ADF48(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t sub_1CF1ADF68(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t sub_1CF1ADF88(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFF7F | v2;
  return result;
}

uint64_t sub_1CF1ADFA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t sub_1CF1ADFC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t sub_1CF1ADFE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFF7FF | v2;
  return result;
}

uint64_t sub_1CF1AE008(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFBFF | v2;
  return result;
}

uint64_t sub_1CF1AE028(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFBFFF | v2;
  return result;
}

uint64_t sub_1CF1AE048(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t sub_1CF1AE068(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFEFFFF | v2;
  return result;
}

uint64_t objectdestroy_5Tm()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

id FPDDomain.cleanupDomain(with:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v153 = a1;
  v162[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E5A58();
  v154 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v149 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v148 = &v138 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v145 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v144 = &v138 - v12;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v138 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v138 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v147 = &v138 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v146 = &v138 - v26;
  *&v28 = MEMORY[0x1EEE9AC00](v27).n128_u64[0];
  v30 = &v138 - v29;
  v155 = v4;
  LODWORD(v4) = [v4 isUsingFPFS];
  v31 = fpfs_current_or_default_log();
  if (!v4)
  {
    sub_1CF9E6128();
    v38 = sub_1CF9E6108();
    v39 = sub_1CF9E72A8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1CEFC7000, v38, v39, "removing non FPFS domain not supported", v40, 2u);
      MEMORY[0x1D386CDC0](v40, -1, -1);
    }

    v42 = *(v14 + 8);
    v41 = (v14 + 8);
    v42(v22, v13);
    if (FPNotSupportedError())
    {
      swift_willThrow();
      return v41;
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v141 = v16;
  sub_1CF9E6128();
  v32 = sub_1CF9E6108();
  v22 = sub_1CF9E72C8();
  v33 = os_log_type_enabled(v32, v22);
  v142 = v13;
  v150 = v14;
  if (!v33)
  {

    v43 = *(v14 + 8);
    v43(v30, v13);
    goto LABEL_18;
  }

  v152 = v2;
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v162[0] = v35;
  *v34 = 136446210;
  if (v153 > 1)
  {
    if (v153 == 2)
    {
      v36 = 0xEF61746144726573;
      v37 = 0x5565766968637261;
      goto LABEL_17;
    }

    if (v153 == 3)
    {
      v36 = 0x80000001CFA2DE20;
      v37 = 0xD000000000000015;
      goto LABEL_17;
    }

LABEL_63:
    type metadata accessor for FPDomainRemovalMode(0);
    v156 = v153;
    sub_1CF9E80C8();
    __break(1u);
    goto LABEL_64;
  }

  if (v153)
  {
    if (v153 == 1)
    {
      v37 = 0xD000000000000010;
      v36 = 0x80000001CFA2DE40;
      goto LABEL_17;
    }

    goto LABEL_63;
  }

  v36 = 0xE90000000000006CLL;
  v37 = 0x6C4165766F6D6572;
LABEL_17:
  v44 = sub_1CEFD0DF0(v37, v36, v162);
  v36, v45, v46, v47, v48, v49, v50, v51;
  *(v34 + 4) = v44;
  _os_log_impl(&dword_1CEFC7000, v32, v22, "removing FPFS domain data with mode %{public}s", v34, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v35);
  MEMORY[0x1D386CDC0](v35, -1, -1);
  MEMORY[0x1D386CDC0](v34, -1, -1);

  v43 = *(v150 + 8);
  v13 = v142;
  v43(v30, v142);
  v3 = v152;
LABEL_18:
  v143 = [objc_allocWithZone(FPDDomainCleanupResult) init];
  v162[0] = 0;
  if ([v155 removeSupportFilesAndReturnError_])
  {
    v52 = v162[0];
    v151 = 0;
  }

  else
  {
    v53 = v162[0];
    v54 = sub_1CF9E57F8();

    swift_willThrow();
    v55 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v56 = v54;
    v57 = sub_1CF9E6108();
    v58 = sub_1CF9E72A8();
    v151 = v54;

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      swift_getErrorValue();
      v61 = Error.prettyDescription.getter(v157, v158);
      *(v59 + 4) = v61;
      *v60 = v61;
      _os_log_impl(&dword_1CEFC7000, v57, v58, "support files could not be removed: %@", v59, 0xCu);
      sub_1CEFCCC44(v60, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v60, -1, -1);
      MEMORY[0x1D386CDC0](v59, -1, -1);
    }

    v43(v19, v13);
    v3 = 0;
  }

  v152 = v3;
  v62 = v155;
  v63 = [v155 providerDomainID];
  v64 = [v62 nsDomain];
  v65 = [v64 personaIdentifier];

  v140 = v43;
  if (v65)
  {
    v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = v154;
  v70 = [v62 volume];
  v71 = type metadata accessor for InternalPathsManager(0);
  v72 = objc_allocWithZone(v71);
  v73 = *(v69 + 56);
  v73(&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL], 1, 1, v5);
  v73(&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v5);
  v73(&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v5);
  v73(&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v5);
  v73(&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v5);
  v73(&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v5);
  v73(&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v5);
  *&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = v63;
  v74 = &v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  *v74 = v66;
  v74[1] = v68;
  *&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = 0;
  *&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = v70;
  *&v72[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = 0;
  v161.receiver = v72;
  v161.super_class = v71;
  v41 = v155;
  v75 = objc_msgSendSuper2(&v161, sel_init);
  v162[0] = 0;
  v76 = [v41 mergeSyncRootsWithPathsManager:v75 error:v162];
  v22 = v162[0];
  if (!v76)
  {
    v82 = v162[0];
    sub_1CF9E57F8();

    swift_willThrow();
    return v41;
  }

  v77 = v153;
  if (v153 <= 1)
  {
    v78 = v152;
    v79 = v140;
    if (!v153)
    {
      v80 = v162[0];
      [v41 removeEbihilSymlink];
      v162[0] = 0;
      if ([v41 removeAllFilesAndReturnError_])
      {
        v81 = v162[0];
        v41 = v143;
        if (!v151)
        {
LABEL_31:

          return v41;
        }

LABEL_49:
        swift_willThrow();

        return v41;
      }

      v139 = v75;
      v103 = v162[0];
      v86 = sub_1CF9E57F8();

      goto LABEL_43;
    }

    if (v153 == 1)
    {
      v87 = v162[0];
      [v41 removeEbihilSymlink];
      v88 = v148;
      v139 = v75;
      sub_1CF799C50(v41);
      v86 = v78;
      if (!v78)
      {
        v89 = swift_allocBox();
        v90 = v88;
        v91 = v154;
        v92 = *(v154 + 16);
        v147 = v93;
        v145 = v92;
        v94 = (v92)(v93, v90, v5);
        v149 = &v138;
        MEMORY[0x1EEE9AC00](v94);
        *(&v138 - 16) = 0;
        v153 = v89;
        *(&v138 - 1) = v89;
        sub_1CF1AF818(0x6576726573657270, 0xE800000000000000, sub_1CF1B8134, &v138 - 4);
        v152 = 0;
        v113 = v90;
        v114 = *(v91 + 8);
        v114(v113, v5);
        v115 = v147;
        swift_beginAccess();
        v116 = v144;
        v145(v144, v115, v5);
        v73(v116, 0, 1, v5);

        v117 = (*(v91 + 48))(v116, 1, v5);
        v118 = 0;
        if (v117 != 1)
        {
          v118 = sub_1CF9E5928();
          v114(v116, v5);
        }

        v41 = v143;
        [v143 setResultURL_];

        v119 = fpfs_current_or_default_log();
        v120 = v146;
        sub_1CF9E6128();
        v121 = sub_1CF9E6108();
        v122 = sub_1CF9E72C8();
        v123 = os_log_type_enabled(v121, v122);
        v124 = v142;
        v125 = v140;
        if (!v123)
        {
          goto LABEL_60;
        }

        v126 = swift_slowAlloc();
        *v126 = 0;
        v127 = "preserving user data";
LABEL_59:
        _os_log_impl(&dword_1CEFC7000, v121, v122, v127, v126, 2u);
        MEMORY[0x1D386CDC0](v126, -1, -1);
LABEL_60:

        v125(v120, v124);
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    goto LABEL_64;
  }

  v83 = v152;
  v79 = v140;
  v139 = v75;
  if (v153 == 2)
  {
    v84 = v162[0];
    v85 = FPNotSupportedError();
    if (v85)
    {
      v86 = v85;
LABEL_43:
      swift_willThrow();
      goto LABEL_44;
    }

    goto LABEL_62;
  }

  if (v153 == 3)
  {
    v95 = v162[0];
    [v41 removeEbihilSymlink];
    v96 = v149;
    sub_1CF799C50(v41);
    v86 = v83;
    if (!v83)
    {
      v97 = swift_allocBox();
      v98 = v96;
      v99 = v154;
      v100 = *(v154 + 16);
      v146 = v101;
      v144 = v100;
      v102 = (v100)(v101, v98, v5);
      v148 = &v138;
      MEMORY[0x1EEE9AC00](v102);
      *(&v138 - 16) = 1;
      v153 = v97;
      *(&v138 - 1) = v97;
      sub_1CF1AF818(0x6576726573657270, 0xE800000000000000, sub_1CF1B5ED0, &v138 - 4);
      v152 = 0;
      v128 = v98;
      v129 = *(v99 + 8);
      v129(v128, v5);
      v130 = v146;
      swift_beginAccess();
      v131 = v145;
      (v144)(v145, v130, v5);
      v73(v131, 0, 1, v5);

      v132 = (*(v99 + 48))(v131, 1, v5);
      v133 = 0;
      if (v132 != 1)
      {
        v133 = sub_1CF9E5928();
        v129(v131, v5);
      }

      v41 = v143;
      [v143 setResultURL_];

      v134 = fpfs_current_or_default_log();
      v120 = v147;
      sub_1CF9E6128();
      v121 = sub_1CF9E6108();
      v122 = sub_1CF9E72C8();
      v135 = os_log_type_enabled(v121, v122);
      v124 = v142;
      v125 = v140;
      if (!v135)
      {
        goto LABEL_60;
      }

      v126 = swift_slowAlloc();
      *v126 = 0;
      v127 = "preserving dirty user data";
      goto LABEL_59;
    }

LABEL_44:
    v104 = v142;
    v105 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v106 = v86;
    v107 = sub_1CF9E6108();
    v108 = sub_1CF9E72A8();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v109 = 138412290;
      swift_getErrorValue();
      v111 = Error.prettyDescription.getter(v159, v160);
      *(v109 + 4) = v111;
      *v110 = v111;
      _os_log_impl(&dword_1CEFC7000, v107, v108, "domain removal failed: %@", v109, 0xCu);
      sub_1CEFCCC44(v110, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v110, -1, -1);
      MEMORY[0x1D386CDC0](v109, -1, -1);
    }

    else
    {
    }

    v79(v141, v104);
    v41 = v143;
LABEL_48:
    v75 = v139;
    if (!v151)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_64:
  v136 = v77;
  type metadata accessor for FPDomainRemovalMode(0);
  v162[0] = v136;
  v137 = v22;
  result = sub_1CF9E80C8();
  __break(1u);
  return result;
}