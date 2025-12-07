uint64_t sub_190BAC150(uint64_t a1, char a2)
{
  v3 = sub_190D52E90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D52E20();
  v7 = sub_190D52E70();
  v8 = *(v4 + 8);
  v8(v6, v3);
  if ((v7 & 1) == 0 && (a2 & 1) == 0)
  {
    sub_190D52E40();
    v9 = sub_190D52E70();
    v8(v6, v3);
    if ((v9 & 1) == 0)
    {
      sub_190D52E60();
      v10 = sub_190D52E70();
      v8(v6, v3);
      if ((v10 & 1) == 0)
      {
        sub_190D52E50();
        sub_190D52E70();
        v8(v6, v3);
      }
    }
  }

  return sub_190D56F10();
}

unint64_t sub_190BAC344()
{
  result = qword_1EAD45078;
  if (!qword_1EAD45078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD45078);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_190BAC3CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_190BAC414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_190BAC48C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626D617263537369 && a2 == 0xEB0000000064656CLL;
  if (v4 || (sub_190D58760() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000190E78040 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000190E78060 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000190E78080 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000190E780A0 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000190E679B0 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000190E780C0 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000190E780E0 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000190E78100 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000190E78120 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000002ELL && 0x8000000190E78140 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_190D58760();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_190BAC7F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC38, &unk_190DF7F60);
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v38 - v6;
  v8 = MEMORY[0x1E69E7CC0];
  v54 = sub_190822234(MEMORY[0x1E69E7CC0]);
  v53 = sub_190822BC4(v8);
  v52 = sub_190822BC4(v8);
  v9 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_190BACF90();
  sub_190D588F0();
  if (v2)
  {
    v78 = v2;
    v46 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v47);
    LOBYTE(v63) = v19;
    *(&v63 + 1) = v77[0];
    DWORD1(v63) = *(v77 + 3);
    *(&v63 + 1) = v18;
    *&v64 = v17;
    *(&v64 + 1) = v16;
    *&v65 = v15;
    *(&v65 + 1) = v54;
    v66 = v53;
    v69 = v49;
    v68 = v50;
    v67 = v51;
    v70 = v48;
    v71 = v14;
    v72 = v13;
    v73 = v12;
    v74 = v46;
    v75 = v52;
    v76 = 0;
    return sub_190BAACD4(&v63);
  }

  v10 = v5;
  LOBYTE(v63) = 0;
  v11 = v46;
  LOBYTE(v45) = sub_190D58640() & 1;
  v45 = v45;
  LOBYTE(v63) = 1;
  v44 = sub_190D58670();
  LOBYTE(v63) = 2;
  v43 = sub_190D58670();
  LOBYTE(v63) = 3;
  v42 = sub_190D58670();
  LOBYTE(v63) = 4;
  v21 = sub_190D58670();
  v78 = 0;
  v41 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC48, &qword_190DFD980);
  LOBYTE(v55) = 5;
  sub_190BAD0E0(&qword_1EAD5EC50, MEMORY[0x1E69E6190], MEMORY[0x1E69E7390], MEMORY[0x1E69E5E58]);
  v22 = v78;
  sub_190D58660();
  v78 = v22;
  if (v22 || (, v54 = v63, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC20, &qword_190DF7EA8), LOBYTE(v55) = 6, sub_190BACFE4(), v23 = v78, sub_190D58660(), (v78 = v23) != 0))
  {
LABEL_9:
    (*(v10 + 8))(v7, v11);
    v46 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v48 = 0uLL;
    v19 = v45;
    v17 = v43;
    v18 = v44;
    v15 = v41;
    v16 = v42;
    goto LABEL_4;
  }

  v53 = v63;
  LOBYTE(v55) = 7;
  *&v48 = sub_190BAD08C();
  v24 = v78;
  sub_190D58660();
  if (v24)
  {
    v78 = v24;
    goto LABEL_9;
  }

  v50 = v64;
  v51 = v63;
  v49 = v65;
  LOBYTE(v55) = 8;
  sub_190D58660();
  v78 = 0;
  v48 = v63;
  v39 = *(&v64 + 1);
  v40 = v64;
  v25 = *(&v65 + 1);
  v38 = v65;
  LOBYTE(v55) = 9;
  sub_190D58660();
  v78 = 0;

  v52 = v63;
  v62 = 10;
  v26 = v78;
  v27 = sub_190D58670();
  v78 = v26;
  if (v26)
  {
    (*(v10 + 8))(v7, v46);
    v19 = v45;
    v17 = v43;
    v18 = v44;
    v15 = v41;
    v16 = v42;
    v46 = v25;
    v12 = v38;
    v13 = v39;
    v14 = v40;
    goto LABEL_4;
  }

  v28 = v27;
  (*(v10 + 8))(v7, v46);
  LOBYTE(v55) = v45;
  *(&v55 + 1) = v44;
  *&v56 = v43;
  v29 = v41;
  *(&v56 + 1) = v42;
  *&v57 = v41;
  v30 = v54;
  *(&v57 + 1) = v54;
  *&v58[0] = v53;
  *(v58 + 8) = v51;
  *(&v58[1] + 8) = v50;
  *(&v58[2] + 8) = v49;
  *(&v58[3] + 8) = v48;
  *(&v58[4] + 1) = v40;
  *&v59 = v39;
  v31 = v38;
  *(&v59 + 1) = v38;
  *&v60 = v25;
  v32 = v52;
  *(&v60 + 1) = v52;
  v61 = v28;
  sub_190B6A9C4(&v55, &v63);
  __swift_destroy_boxed_opaque_existential_0(v47);
  LOBYTE(v63) = v45;
  *(&v63 + 1) = v44;
  *&v64 = v43;
  *(&v64 + 1) = v42;
  *&v65 = v29;
  *(&v65 + 1) = v30;
  v66 = v53;
  v67 = v51;
  v68 = v50;
  v69 = v49;
  v70 = v48;
  v71 = v40;
  v72 = v39;
  v73 = v31;
  v74 = v25;
  v75 = v32;
  v76 = v28;
  result = sub_190BAACD4(&v63);
  v33 = v60;
  *(a2 + 128) = v59;
  *(a2 + 144) = v33;
  *(a2 + 160) = v61;
  v34 = v58[2];
  *(a2 + 64) = v58[1];
  *(a2 + 80) = v34;
  v35 = v58[4];
  *(a2 + 96) = v58[3];
  *(a2 + 112) = v35;
  v36 = v56;
  *a2 = v55;
  *(a2 + 16) = v36;
  v37 = v58[0];
  *(a2 + 32) = v57;
  *(a2 + 48) = v37;
  return result;
}

unint64_t sub_190BACF90()
{
  result = qword_1EAD5EC40;
  if (!qword_1EAD5EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EC40);
  }

  return result;
}

unint64_t sub_190BACFE4()
{
  result = qword_1EAD5EC58;
  if (!qword_1EAD5EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EC20, &qword_190DF7EA8);
    sub_190BAD1F8(&qword_1EAD5EC60, MEMORY[0x1E69E8470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EC58);
  }

  return result;
}

unint64_t sub_190BAD08C()
{
  result = qword_1EAD5EC68;
  if (!qword_1EAD5EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EC68);
  }

  return result;
}

uint64_t sub_190BAD0E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EC48, &qword_190DFD980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190BAD150()
{
  result = qword_1EAD5EC80;
  if (!qword_1EAD5EC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EC20, &qword_190DF7EA8);
    sub_190BAD1F8(&qword_1EAD5EC88, MEMORY[0x1E69E8458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EC80);
  }

  return result;
}

uint64_t sub_190BAD1F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_190D52E90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190BAD23C()
{
  result = qword_1EAD5EC90;
  if (!qword_1EAD5EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EC90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoragePluginDirectoryCounts.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoragePluginDirectoryCounts.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_190BAD3F4()
{
  result = qword_1EAD5EC98;
  if (!qword_1EAD5EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EC98);
  }

  return result;
}

unint64_t sub_190BAD44C()
{
  result = qword_1EAD5ECA0;
  if (!qword_1EAD5ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ECA0);
  }

  return result;
}

unint64_t sub_190BAD4A4()
{
  result = qword_1EAD5ECA8;
  if (!qword_1EAD5ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ECA8);
  }

  return result;
}

unint64_t sub_190BAD4FC()
{
  result = qword_1EAD5ECB0;
  if (!qword_1EAD5ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ECB0);
  }

  return result;
}

uint64_t sub_190BAD550(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x756F436F746F6870 && a2 == 0xEA0000000000746ELL || (sub_190D58760() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F436F65646976 && a2 == 0xEA0000000000746ELL || (sub_190D58760() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43656C646E7562 && a2 == 0xEB00000000746E75 || (sub_190D58760() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6953736F65646976 && a2 == 0xEA0000000000657ALL || (sub_190D58760() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6953736F746F6870 && a2 == 0xEA0000000000657ALL || (sub_190D58760() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6953656C646E7562 && a2 == 0xEA0000000000657ALL)
  {

    return 5;
  }

  else
  {
    v5 = sub_190D58760();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_190BAD760@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ECB8, &qword_190DF81A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190BAD99C();
  sub_190D588F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  v9 = sub_190D58670();
  v22 = 1;
  v10 = sub_190D58670();
  v21 = 2;
  v17 = sub_190D58670();
  v20 = 3;
  v16 = sub_190D58670();
  v19 = 4;
  v15 = sub_190D58670();
  v18 = 5;
  v14 = sub_190D58670();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v10;
  v12 = v16;
  a2[2] = v17;
  a2[3] = v12;
  v13 = v14;
  a2[4] = v15;
  a2[5] = v13;
  return result;
}

unint64_t sub_190BAD99C()
{
  result = qword_1EAD5ECC0;
  if (!qword_1EAD5ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ECC0);
  }

  return result;
}

unint64_t sub_190BADA04()
{
  result = qword_1EAD5ECD0;
  if (!qword_1EAD5ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ECD0);
  }

  return result;
}

unint64_t sub_190BADA5C()
{
  result = qword_1EAD5ECD8;
  if (!qword_1EAD5ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ECD8);
  }

  return result;
}

unint64_t sub_190BADAB4()
{
  result = qword_1EAD5ECE0;
  if (!qword_1EAD5ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ECE0);
  }

  return result;
}

void sub_190BADCE0()
{
  v1 = v0;
  v2 = [v0 assets];
  sub_19097965C();
  v3 = sub_190D57180();

  if (v3 >> 62)
  {
    if (sub_190D581C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x193AF3B90](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 32);
    }

    v12 = v4;

    [v12 fetchPropertySetsIfNeeded];
    v5 = [v12 curationProperties];
    v6 = [v5 syndicationIdentifier];

    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = IMMessageGuidFromIMFileTransferGuid();

    if (!v7)
    {
      goto LABEL_15;
    }

    sub_190D56F10();

    v8 = [v1 delegate];
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    if (([v8 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    v11 = [v9 hostViewControllerForActionPerformer_];
    swift_unknownObjectRelease();
    if (v11)
    {
      sub_190D52CB0();
      if (swift_dynamicCastClass())
      {
        sub_190D52CA0();

        [v1 completeUserInteractionTaskWithSuccess:1 error:0];

        v10 = v11;
LABEL_16:

        return;
      }
    }

    else
    {
LABEL_13:
    }

LABEL_15:
    [v1 completeUserInteractionTaskWithSuccess:0 error:{0, v11}];
    v10 = v12;
    goto LABEL_16;
  }
}

id sub_190BAE008(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosGridShowInConversationAssetActionPerformer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_190BAE060(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190BAE128@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = _s15AnimatedChevronVMa(0);
  sub_190D56160();
  v9 = v8[7];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60, &qword_190DDDDD0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[8];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8, &qword_190DDADF0);
  swift_storeEnumTagMultiPayload();
  sub_190BAE31C();
  sub_190D53BA0();
  sub_190D53BA0();
  sub_190D53BA0();
  v11 = a4 + v8[12];
  sub_190D55FC0();
  *v11 = 0;
  *(v11 + 1) = v13;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = a3;
  sub_190D50920();
  return result;
}

uint64_t _s15AnimatedChevronVMa(uint64_t a1)
{
  result = qword_1EAD5ED08;
  if (!qword_1EAD5ED08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_190BAE31C()
{
  result = qword_1EAD5ECF8;
  if (!qword_1EAD5ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ECF8);
  }

  return result;
}

void sub_190BAE398(uint64_t a1)
{
  type metadata accessor for CKCatchUpButtonManager.Animator(319);
  if (v1 <= 0x3F)
  {
    sub_190D56170();
    if (v2 <= 0x3F)
    {
      sub_190BAE4CC(319, &qword_1EAD52C10, MEMORY[0x1E697E730]);
      if (v3 <= 0x3F)
      {
        sub_190BAE4CC(319, &qword_1EAD55988, MEMORY[0x1E697DBD0]);
        if (v4 <= 0x3F)
        {
          sub_190BAE520(319);
          if (v5 <= 0x3F)
          {
            sub_1908CB188();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_190BAE4CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D53A80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_190BAE520(uint64_t a1)
{
  if (!qword_1EAD5ED18)
  {
    sub_190BAE31C();
    v1 = sub_190D53BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD5ED18);
    }
  }
}

uint64_t sub_190BAE598@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = _s15AnimatedChevronVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = v4;
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED20, &qword_190DF83E0);
  MEMORY[0x1EEE9AC00](v32);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED28, &qword_190DF83E8);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v33 = v29 - v10;
  sub_190BB0C74(v1, v5);
  v31 = *(v3 + 80);
  v11 = (v31 + 16) & ~v31;
  v12 = swift_allocObject();
  sub_190BB0CD8(v5, v12 + v11);
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED30, &qword_190DF83F0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED38, &qword_190DF83F8);
  v14 = sub_190BB0DA8();
  v15 = sub_190BB12B0();
  v40 = v13;
  v41 = MEMORY[0x1E69817E8];
  v42 = v14;
  v43 = v15;
  swift_getOpaqueTypeConformance2();
  sub_190D56030();
  v16 = *(v1 + 24);
  v30 = v1;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtCC7ChatKit22CKCatchUpButtonManager8Animator___observationRegistrar;
  v40 = v16;
  sub_190BB1760(&qword_1EAD5EDC0, type metadata accessor for CKCatchUpButtonManager.Animator, &unk_190E03D50);
  sub_190D51C20();

  v18 = -*(v16 + 32);
  v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EDC8, &qword_190DF8460) + 36)];
  v29[0] = v7;
  *v19 = 0;
  *(v19 + 1) = v18;
  swift_getKeyPath();
  v40 = v16;
  v29[1] = v17;
  sub_190D51C20();

  v20 = v32;
  *&v7[*(v32 + 36)] = *(v16 + 24);
  swift_getKeyPath();
  v40 = v16;
  sub_190D51C20();

  LOBYTE(v40) = *(v16 + 16);
  sub_190BB0C74(v1, v5);
  v21 = v11;
  v22 = swift_allocObject();
  sub_190BB0CD8(v5, v22 + v11);
  v23 = sub_190BB1478();
  v24 = v33;
  v25 = v29[0];
  sub_190D55C20();

  sub_19022EEA4(v25, &qword_1EAD5ED20, &qword_190DF83E0);
  swift_getKeyPath();
  v40 = v16;
  sub_190D51C20();

  v39 = *(v16 + 17);
  sub_190BB0C74(v30, v5);
  v26 = swift_allocObject();
  sub_190BB0CD8(v5, v26 + v21);
  v40 = v20;
  v41 = MEMORY[0x1E69E6370];
  v42 = v23;
  v43 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_190D55C20();

  return (*(v35 + 8))(v24, v27);
}

uint64_t sub_190BAEB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_190D55E80();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15AnimatedChevronVMa(0);
  v93 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v94 = v6;
  v95 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_190D53A60();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v70 - v9;
  v10 = sub_190D540E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v77 = sub_190D55F00();
  v17 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE00, &unk_190E063B0);
  MEMORY[0x1EEE9AC00](v75);
  v72 = (&v70 - v19);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EDF0, &qword_190DF8510);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v73 = &v70 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED80, &qword_190DF8420) - 8;
  MEMORY[0x1EEE9AC00](v76);
  v22 = &v70 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED70, &qword_190DF8418);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v70 - v23;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED48, &qword_190DF8400);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v70 - v24;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EDF8, &qword_190DF8518);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v70 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED38, &qword_190DF83F8);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v70 - v26;
  v71 = sub_190D55EA0();
  v100 = a1;
  sub_1909CD03C(v16);
  (*(v11 + 104))(v13, *MEMORY[0x1E697E6C0], v10);
  sub_190BB1760(&qword_1EAD55758, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  LOBYTE(a1) = sub_190D56E00();
  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = v5;
  v27(v16, v10);
  v29 = v80;
  v30 = v17;
  v31 = MEMORY[0x1E69816E0];
  if ((a1 & 1) == 0)
  {
    v31 = MEMORY[0x1E69816C8];
  }

  v32 = v74;
  v33 = v77;
  (*(v17 + 104))(v74, *v31, v77);
  KeyPath = swift_getKeyPath();
  v35 = v72;
  v36 = (v72 + *(v75 + 36));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78, &qword_190DD3DD0);
  (*(v30 + 32))(v36 + *(v37 + 28), v32, v33);
  *v36 = KeyPath;
  v38 = v82;
  *v35 = v71;
  sub_190D553D0();
  sub_190BB1140();
  v39 = v73;
  sub_190D556F0();
  sub_190BB17A8(v35);
  (*(v78 + 32))(v22, v39, v79);
  v40 = v85;
  v41 = v22;
  v42 = &v22[*(v76 + 44)];
  *v42 = 0;
  *(v42 + 4) = 1;
  v43 = v28;
  sub_1909CD064(v29);
  v44 = v84;
  (*(v38 + 104))(v84, *MEMORY[0x1E697DBB8], v40);
  v45 = sub_190D53A50();
  v46 = *(v38 + 8);
  v46(v44, v40);
  if (v45)
  {
    if (qword_1EAD51EB8 != -1)
    {
      swift_once();
    }

    v47 = &qword_1EAD5ECE8;
  }

  else
  {
    if (qword_1EAD51EC0 != -1)
    {
      swift_once();
    }

    v47 = &qword_1EAD5ECF0;
  }

  v48 = *v47;
  sub_190D50920();
  v46(v29, v40);
  v49 = v83;
  sub_19081E40C(v41, v83, &qword_1EAD5ED80, &qword_190DF8420);
  *(v49 + *(v81 + 36)) = v48;
  v50 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED00, &qword_190DF8378);
  v51 = v100;
  sub_190D53BB0();
  v52 = v103;
  sub_190D53BB0();
  v53 = v103;
  sub_190D53BB0();
  v54 = v103;
  sub_190D53BB0();
  v55 = v103;
  LOBYTE(v48) = sub_190D552B0();
  v56 = v91;
  sub_19081E40C(v49, v91, &qword_1EAD5ED70, &qword_190DF8418);
  v57 = v56 + *(v92 + 36);
  *v57 = v48;
  *(v57 + 8) = v52;
  *(v57 + 16) = v53;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 0;
  v58 = *(v51 + 24);
  swift_getKeyPath();
  *&v103 = v58;
  sub_190BB1760(&qword_1EAD5EDC0, type metadata accessor for CKCatchUpButtonManager.Animator, &unk_190E03D50);
  sub_190D51C20();

  v59 = *(v58 + 40);
  v103 = *(v58 + 24);
  v104 = v59;
  v60 = v51 + *(v50 + 48);
  v61 = *v60;
  v62 = *(v60 + 8);
  v101 = v61;
  v102 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FD0();
  v63 = v95;
  sub_190BB0C74(v51, v95);
  v64 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v65 = swift_allocObject();
  sub_190BB0CD8(v63, v65 + v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED50, &qword_190DF8408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED58, &qword_190DF8410);
  sub_190BB0F34();
  sub_190BB11F8();
  sub_190233640(&qword_1EAD5EDA0, &qword_1EAD5ED58, &qword_190DF8410, MEMORY[0x1E697E160]);
  v66 = v86;
  sub_190D55900();

  sub_19022EEA4(v56, &qword_1EAD5ED48, &qword_190DF8400);
  v67 = v89;
  (*(v88 + 32))(v89, v66, v90);
  *(v67 + *(v87 + 36)) = 0;
  v68 = v96;
  sub_190D55E70();
  sub_190BB0DA8();
  sub_190BB12B0();
  sub_190D55760();
  (*(v98 + 8))(v68, v99);
  return sub_19022EEA4(v67, &qword_1EAD5ED38, &qword_190DF83F8);
}

uint64_t sub_190BAF7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED98, &qword_190DF8428);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED50, &qword_190DF8408);
  v8 = (a3 + *(result + 36));
  *v8 = 0;
  v8[1] = v5;
  return result;
}

uint64_t sub_190BAF858@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED58, &qword_190DF8410);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = v30 - v6;
  v7 = sub_190D56170();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  _s15AnimatedChevronVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED00, &qword_190DF8378);
  sub_190D53BB0();
  v13 = v41 / 3.0;
  sub_190D53BB0();
  v14 = v41 * 0.4;
  v32 = v12;
  sub_190D56160();
  v31 = v9;
  sub_190D56160();
  v30[1] = swift_getKeyPath();
  v37 = v13;
  v38 = v12;
  v39 = v14;
  v40 = v9;
  v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EE00, &qword_190DF8570);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EE08, &qword_190DF8578);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EE10, &qword_190DF8580);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EE18, &qword_190DF8588);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EE20, &unk_190DF8590);
  v19 = sub_190233640(&qword_1EAD5EE28, &qword_1EAD5EE20, &unk_190DF8590, MEMORY[0x1E697E530]);
  v20 = MEMORY[0x1E69E63B0];
  v41 = MEMORY[0x1E69E63B0];
  v42 = v18;
  v43 = v18;
  v44 = v19;
  v45 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v20;
  v42 = v17;
  v43 = v18;
  v44 = OpaqueTypeConformance2;
  v45 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_190233640(&qword_1EAD5EE30, &qword_1EAD5EE10, &qword_190DF8580, MEMORY[0x1E697E400]);
  v41 = v20;
  v42 = v15;
  v43 = v16;
  v44 = v22;
  v45 = v23;
  swift_getOpaqueTypeConformance2();
  sub_190D53DA0();
  v24 = sub_190233640(&qword_1EAD5EDA0, &qword_1EAD5ED58, &qword_190DF8410, MEMORY[0x1E697E160]);
  v25 = v33;
  MEMORY[0x193AEFBE0](v4, &type metadata for CKCatchUpButtonManager.Animator.AnimationValues, v1, v24);
  v26 = *(v2 + 8);
  v26(v4, v1);
  MEMORY[0x193AEFC00](v25, &type metadata for CKCatchUpButtonManager.Animator.AnimationValues, v1, v24);
  MEMORY[0x193AEFBF0](v4, &type metadata for CKCatchUpButtonManager.Animator.AnimationValues, v1, v24);
  v26(v4, v1);
  v26(v25, v1);
  v27 = v35;
  v28 = *(v34 + 8);
  v28(v31, v35);
  return (v28)(v32, v27);
}

uint64_t sub_190BAFD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v65 = a2;
  v73 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EE08, &qword_190DF8578);
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v61 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EE18, &qword_190DF8588);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v61 - v11;
  v12 = sub_190D56650();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EE10, &qword_190DF8580);
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v61 - v16;
  v17 = sub_190D56170();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EE20, &unk_190DF8590);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v63 = &v61 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v78 = &v61 - v31;
  v87 = a4;
  v32 = *(v18 + 16);
  v33 = a1;
  v34 = v17;
  v62 = v17;
  v32(v20, v33, v17, v30);
  v82 = 0;
  LOBYTE(v83) = 1;
  v35 = v28;
  v36 = MEMORY[0x1E69E63B0];
  sub_190D54020();
  v37 = sub_190233640(&qword_1EAD5EE28, &qword_1EAD5EE20, &unk_190DF8590, MEMORY[0x1E697E530]);
  MEMORY[0x193AF0910](v35, v36, v21, v37);
  v38 = *(v22 + 8);
  v75 = v35;
  v76 = v22 + 8;
  v74 = v38;
  v38(v35, v21);
  v87 = -a5;
  v39 = v65;
  (v32)(v20, v65, v34);
  v82 = 0;
  LOBYTE(v83) = 1;
  v40 = v63;
  v41 = MEMORY[0x1E69E63B0];
  sub_190D54020();
  MEMORY[0x193AF0910](v40, v41, v21, v37);
  v42 = v74;
  v74(v40, v21);
  v87 = 0.0;
  (v32)(v20, v39, v62);
  v82 = 0;
  LOBYTE(v83) = 1;
  v43 = v77;
  sub_190D54020();
  v44 = v40;
  MEMORY[0x193AF0910](v43, v41, v21, v37);
  v42(v43, v21);
  v82 = 0;
  sub_190D56640();
  v45 = v64;
  sub_190D53EF0();
  v66 = sub_190233640(&qword_1EAD5EE30, &qword_1EAD5EE10, &qword_190DF8580, MEMORY[0x1E697E400]);
  v46 = v45;
  v47 = v45;
  v48 = v79;
  MEMORY[0x193AF0910](v46, v41, v79, v66);
  v49 = *(v81 + 8);
  v81 += 8;
  v49(v47, v48);
  v50 = v41;
  MEMORY[0x193AF0930](v78, v41, v21, v37);
  v51 = v67;
  sub_190D55090();
  v82 = v50;
  v83 = v21;
  v84 = v21;
  v85 = v37;
  v86 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v69;
  v54 = v68;
  sub_190D55090();
  v82 = v50;
  v83 = v54;
  v84 = v21;
  v85 = OpaqueTypeConformance2;
  v86 = v37;
  swift_getOpaqueTypeConformance2();
  v55 = v53;
  v56 = v80;
  v57 = v71;
  v58 = v79;
  sub_190D55090();
  (*(v72 + 8))(v55, v57);
  (*(v70 + 8))(v51, v54);
  v59 = v74;
  v74(v77, v21);
  v49(v56, v58);
  v59(v44, v21);
  v59(v75, v21);
  return (v59)(v78, v21);
}

void sub_190BB0568(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_getKeyPath();
  sub_190BB1760(&qword_1EAD5EDC0, type metadata accessor for CKCatchUpButtonManager.Animator, &unk_190E03D50);
  sub_190D51C20();

  v2 = v1[8];
  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  v1[4] = v2;
  swift_getKeyPath();
  sub_190D51C30();

  swift_getKeyPath();
  sub_190D51C20();

  v3 = v1[7];
  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  v1[3] = v3;
  swift_getKeyPath();
  sub_190D51C30();
}

uint64_t sub_190BB0770(uint64_t a1)
{
  _s15AnimatedChevronVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

uint64_t sub_190BB07E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a6;
  v7 = _s15AnimatedChevronVMa(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = sub_190D55070();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x193AF1E20](a3 + *(v8 + 32), 0.0);
  sub_190D55060();
  v18[4] = a3;
  sub_190BB0C74(a3, v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_190BB0CD8(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_190D53E30();

  return (*(v12 + 8))(v14, v11);
}

void sub_190BB09D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_getKeyPath();
  sub_190BB1760(&qword_1EAD5EDC0, type metadata accessor for CKCatchUpButtonManager.Animator, &unk_190E03D50);
  sub_190D51C20();

  v2 = v1[9];
  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  v1[4] = v2;
  swift_getKeyPath();
  sub_190D51C30();

  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  v1[3] = 0;
  swift_getKeyPath();
  sub_190D51C30();
}

void sub_190BB0BAC(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_getKeyPath();
  sub_190BB1760(&qword_1EAD5EDC0, type metadata accessor for CKCatchUpButtonManager.Animator, &unk_190E03D50);
  sub_190D51C20();

  v2 = *(v1 + 88);
  if (v2)
  {
    v3 = *(v1 + 96);
    v4 = sub_190D50920();
    v2(v4);
    sub_19022123C(v2, v3);
  }
}

uint64_t sub_190BB0C74(uint64_t a1, uint64_t a2)
{
  v4 = _s15AnimatedChevronVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190BB0CD8(uint64_t a1, uint64_t a2)
{
  v4 = _s15AnimatedChevronVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190BB0DA8()
{
  result = qword_1EAD5ED40;
  if (!qword_1EAD5ED40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED38, &qword_190DF83F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED48, &qword_190DF8400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED50, &qword_190DF8408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED58, &qword_190DF8410);
    sub_190BB0F34();
    sub_190BB11F8();
    sub_190233640(&qword_1EAD5EDA0, &qword_1EAD5ED58, &qword_190DF8410, MEMORY[0x1E697E160]);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD5EDA8, &qword_1EAD5EDB0, &qword_190DF8430, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ED40);
  }

  return result;
}

unint64_t sub_190BB0F34()
{
  result = qword_1EAD5ED60;
  if (!qword_1EAD5ED60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED48, &qword_190DF8400);
    sub_190BB0FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ED60);
  }

  return result;
}

unint64_t sub_190BB0FC0()
{
  result = qword_1EAD5ED68;
  if (!qword_1EAD5ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED70, &qword_190DF8418);
    sub_190BB1078();
    sub_190233640(&qword_1EAD53008, &qword_1EAD53010, &qword_190DD3E70, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ED68);
  }

  return result;
}

unint64_t sub_190BB1078()
{
  result = qword_1EAD5ED78;
  if (!qword_1EAD5ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED80, &qword_190DF8420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AE00, &unk_190E063B0);
    sub_190BB1140();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ED78);
  }

  return result;
}

unint64_t sub_190BB1140()
{
  result = qword_1EAD467B8;
  if (!qword_1EAD467B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AE00, &unk_190E063B0);
    sub_190233640(&unk_1EAD46788, &qword_1EAD52F78, &qword_190DD3DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD467B8);
  }

  return result;
}

unint64_t sub_190BB11F8()
{
  result = qword_1EAD5ED88;
  if (!qword_1EAD5ED88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED50, &qword_190DF8408);
    sub_190233640(&qword_1EAD5ED90, &qword_1EAD5ED98, &qword_190DF8428, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ED88);
  }

  return result;
}

unint64_t sub_190BB12B0()
{
  result = qword_1EAD5EDB8;
  if (!qword_1EAD5EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EDB8);
  }

  return result;
}

uint64_t sub_190BB1350(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_190D55D00();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v7);
  result = sub_190D55E20();
  *a5 = result;
  return result;
}

unint64_t sub_190BB1478()
{
  result = qword_1EAD5EDD0;
  if (!qword_1EAD5EDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED20, &qword_190DF83E0);
    sub_190BB1504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EDD0);
  }

  return result;
}

unint64_t sub_190BB1504()
{
  result = qword_1EAD5EDD8;
  if (!qword_1EAD5EDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EDC8, &qword_190DF8460);
    sub_190233640(&qword_1EAD5EDE0, &qword_1EAD5EDE8, &qword_190DF8490, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EDD8);
  }

  return result;
}

uint64_t sub_190BB16EC(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s15AnimatedChevronVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_190BB1760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_190BB17A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE00, &unk_190E063B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_37()
{
  v1 = _s15AnimatedChevronVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = sub_190D56170();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60, &qword_190DDDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D540E0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8, &qword_190DDADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED00, &qword_190DF8378);
  v14 = *(*(v13 - 8) + 8);
  v14(v5 + v12, v13);
  v14(v5 + v1[10], v13);
  v14(v5 + v1[11], v13);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190BB1A88@<X0>(uint64_t a1@<X8>)
{
  _s15AnimatedChevronVMa(0);

  return sub_190BAF858(a1);
}

Swift::Void __swiftcall UITextView.ck_moveFloatingCursorToOriginOfDocument()()
{
  v1 = [v0 textLayoutManager];
  if (v1)
  {
    v10 = v1;
    v2 = [v1 documentRange];
    v3 = [v2 location];

    v4 = [v10 textLayoutFragmentForLocation_];
    if (v4)
    {
      v5 = v4;
      [v4 layoutFragmentFrame];
      v7 = v6;
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v7 = 0.0;
      v9 = 0.0;
    }

    [v0 beginFloatingCursorAtPoint_];
    [v0 endFloatingCursor];
  }
}

void sub_190BB1C50(void *a1)
{
  v1 = a1;
  UITextView.ck_moveFloatingCursorToOriginOfDocument()();
}

id sub_190BB1C98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  result = [*(v3 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) shouldAutomaticallyTranslate];
  *a2 = result;
  return result;
}

double sub_190BB1D54(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  return result;
}

void sub_190BB1E24()
{
  v1 = sub_190D51840();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v8 = v0;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  if ((*(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isInitializing) & 1) == 0)
  {
    swift_getKeyPath();
    v8 = v0;
    sub_190D51C20();

    v5 = *(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
    if (*(v0 + 16) == 1)
    {
      sub_190D51750();
      v6 = sub_190D51780();
      (*(v2 + 8))(v4, v1);
      [v5 setMutedUntilDate_];
    }

    else
    {
      [v5 unmute];
    }
  }
}

uint64_t sub_190BB1FFC()
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  return *(v0 + 16);
}

void sub_190BB209C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  *a2 = *(v3 + 16);
}

void sub_190BB216C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;

    sub_190BB1E24();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }
}

void sub_190BB22A0(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  if (*(v1 + 17) != v2)
  {
    swift_getKeyPath();
    sub_190D51C20();

    if ((*(v1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isInitializing) & 1) == 0)
    {
      v3 = *(v1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
      swift_getKeyPath();
      sub_190D51C20();

      [v3 setSendReadReceipts_];
    }
  }
}

uint64_t sub_190BB23E8()
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  return *(v0 + 17);
}

void sub_190BB2488(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  *a2 = *(v3 + 17);
}

void sub_190BB2558(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 17);
  if (v3 == v2)
  {
    *(v1 + 17) = v2;

    sub_190BB22A0(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }
}

double sub_190BB268C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  swift_getKeyPath();
  v11 = v1;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  if (*(v1 + 18) != v3)
  {
    swift_getKeyPath();
    v11 = v1;
    sub_190D51C20();

    if ((*(v1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isAsyncInitializing) & 1) == 0)
    {
      v8 = sub_190D572E0();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v2;
      sub_190D50920();
      sub_190858A04(0, 0, v6, &unk_190DF8890, v9);
    }
  }

  return result;
}

uint64_t sub_190BB286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return MEMORY[0x1EEE6DFA0](sub_190BB288C, 0, 0);
}

uint64_t sub_190BB288C()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v2 = *(v1 + 18);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_190BB29B4;

  return sub_190A3DB40(v2);
}

uint64_t sub_190BB29B4(char a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_190BB2AB4, 0, 0);
}

uint64_t sub_190BB2AD4()
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  return *(v0 + 18);
}

void sub_190BB2B74(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  *a2 = *(v3 + 18);
}

double sub_190BB2C44(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 18);
  if (v3 == v2)
  {
    *(v1 + 18) = v2;

    return sub_190BB268C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190BB2D98()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = *(v1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  *(v0 + 48) = *(v1 + 19);
  sub_190D572A0();
  *(v0 + 40) = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190BB2EC0, v3, v2);
}

uint64_t sub_190BB2EC0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  [v2 sendAutoDonationUpdate_];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_190BB2F38()
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  return *(v0 + 19);
}

void sub_190BB2FD8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  *a2 = *(v3 + 19);
}

double sub_190BB30A8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  if (*(v2 + 19) == v3)
  {
    *(v2 + 19) = v3;
    swift_getKeyPath();
    v12 = v2;
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C20();

    if ((*(v2 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isInitializing) & 1) == 0)
    {
      v9 = sub_190D572E0();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v2;
      sub_190D50920();
      sub_190857E08(0, 0, v6, &unk_190DF8850, v10);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v2;
    *(&v11 - 8) = v3;
    v12 = v2;
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }

  return result;
}

void sub_190BB3318(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  *(a1 + 19) = a2;
  swift_getKeyPath();
  v9[1] = a1;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  if ((*(a1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isInitializing) & 1) == 0)
  {
    v7 = sub_190D572E0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a1;
    sub_190D50920();
    sub_190857E08(0, 0, v6, &unk_190DF8858, v8);
  }
}

uint64_t sub_190BB34B8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v3 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__translationLanguageStatus;
  swift_beginAccess();
  v4 = sub_190D52170();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_190BB35B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v4 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__translationLanguageStatus;
  swift_beginAccess();
  v5 = sub_190D52170();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_190BB36A8(uint64_t a1)
{
  v2 = sub_190D52170();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_190BB3774(v5);
}

uint64_t sub_190BB3774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D52170();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__translationLanguageStatus;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_190BB8D64(&qword_1EAD5EE78, MEMORY[0x1E69A6798], MEMORY[0x1E69A67A0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_190D56E30();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_190BB3A14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__translationLanguageStatus;
  swift_beginAccess();
  v5 = sub_190D52170();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_190BB3B00(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  return *(v2 + *a2);
}

void sub_190BB3BA0(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  *a4 = *(v6 + *a3);
}

void sub_190BB3C7C(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }
}

double sub_190BB3DFC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  sub_190D50920();
  return result;
}

double sub_190BB3EB4@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  *a4 = *(v6 + *a3);
  sub_190D50920();
  return result;
}

double sub_190BB3F8C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  return result;
}

void sub_190BB4068(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
  sub_190D50920();
}

uint64_t sub_190BB40A8()
{
  v1 = sub_190D519C0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10, &qword_190DE84D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v71 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v71 - v24;
  v26 = *(v2 + 56);
  v26(&v71 - v24, 1, 1, v1, v23);
  v83 = v21;
  (v26)(v21, 1, 1, v1);
  v74 = v0;
  v27 = *(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  v28 = [v27 shouldAutomaticallyTranslate];
  v79 = v16;
  v80 = v25;
  v78 = v13;
  v75 = v26;
  v76 = v2 + 56;
  v82 = v27;
  if (v28)
  {
    v29 = [v27 translationLanguageCode];
    sub_190D56F10();

    v30 = v81;
    sub_190D518B0();
    sub_19022EEA4(v25, &qword_1EAD54C10, &qword_190DE84D0);
    (v26)(v30, 0, 1, v1);
    sub_190A6C37C(v30, v25);
    v31 = [v82 userTranslationLanguageCode];
    sub_190D56F10();

    v32 = v82;
    sub_190D518B0();
    v33 = v83;
    sub_19022EEA4(v83, &qword_1EAD54C10, &qword_190DE84D0);
    (v26)(v30, 0, 1, v1);
    sub_190A6C37C(v30, v33);
    v34 = [v32 translationLanguageCode];
    v35 = sub_190D56F10();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v39 = [v32 userTranslationLanguageCode];
      v40 = sub_190D56F10();
      v42 = v41;

      v43 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v43 = v40 & 0xFFFFFFFFFFFFLL;
      }

      v44 = v43 != 0;
    }

    else
    {
      v44 = 0;
    }

    v25 = v80;
  }

  else
  {
    v44 = 0;
  }

  v45 = v74;
  swift_getKeyPath();
  v84 = v45;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v46 = *(v45 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__suggestedTranslationLanguages);
  v47 = *(v46 + 16);
  v48 = MEMORY[0x1E69E7CC0];
  if (v47)
  {
    LODWORD(v74) = v44;
    v84 = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_19082DD94(0, v47, 0);
    v48 = v84;
    v71 = v46;
    v49 = v46 + 40;
    do
    {
      sub_190D52690();
      sub_190D518B0();
      v84 = v48;
      v51 = *(v48 + 16);
      v50 = *(v48 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_19082DD94((v50 > 1), v51 + 1, 1);
        v48 = v84;
      }

      *(v48 + 16) = v51 + 1;
      (*(v2 + 32))(v48 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v51, v4, v1);
      v49 += 16;
      --v47;
    }

    while (v47);

    v25 = v80;
    v44 = v74;
  }

  v52 = [v82 shouldAutomaticallyTranslate] | v44;
  v53 = v77;
  v54 = v75;
  if (v52)
  {
    v55 = v81;
    (v75)(v81, 1, 1, v1);
    v56 = v79;
    sub_19022FD14(v25, v79, &qword_1EAD54C10, &qword_190DE84D0);
    v57 = v78;
    sub_19022FD14(v55, v78, &qword_1EAD54C10, &qword_190DE84D0);
    v58 = v72;
    sub_19022FD14(v56, v72, &qword_1EAD54C10, &qword_190DE84D0);
    v59 = sub_190D51930();
    LOBYTE(v84) = 0;
    type metadata accessor for CKLanguageSelectionViewModel(0);
    swift_allocObject();
    v60 = CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(v57, v58, v48, v59, &v84);
    sub_19022EEA4(v56, &qword_1EAD54C10, &qword_190DE84D0);
    v61 = v55;
  }

  else
  {
    sub_19022FD14(v83, v77, &qword_1EAD54C10, &qword_190DE84D0);
    v62 = *(v2 + 48);
    if (v62(v53, 1, v1) == 1)
    {
      sub_190D52030();
      v63 = v73;
      sub_190D51FE0();
      v64 = v63;
      if (v62(v53, 1, v1) != 1)
      {
        sub_19022EEA4(v53, &qword_1EAD54C10, &qword_190DE84D0);
      }
    }

    else
    {
      v64 = v73;
      (*(v2 + 32))(v73, v53, v1);
    }

    (v54)(v64, 0, 1, v1);
    v65 = v81;
    sub_19022FD14(v25, v81, &qword_1EAD54C10, &qword_190DE84D0);
    v66 = v79;
    sub_19022FD14(v64, v79, &qword_1EAD54C10, &qword_190DE84D0);
    v67 = v78;
    sub_19022FD14(v65, v78, &qword_1EAD54C10, &qword_190DE84D0);
    v68 = v64;
    v69 = sub_190D51930();
    LOBYTE(v84) = 0;
    type metadata accessor for CKLanguageSelectionViewModel(0);
    swift_allocObject();
    v60 = CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(v66, v67, v48, v69, &v84);
    sub_19022EEA4(v65, &qword_1EAD54C10, &qword_190DE84D0);
    v61 = v68;
  }

  sub_19022EEA4(v61, &qword_1EAD54C10, &qword_190DE84D0);
  sub_19022EEA4(v83, &qword_1EAD54C10, &qword_190DE84D0);
  sub_19022EEA4(v25, &qword_1EAD54C10, &qword_190DE84D0);
  return v60;
}

uint64_t sub_190BB48D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10, &qword_190DE84D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = sub_190D519C0();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v18 = *(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  if ([v18 shouldAutomaticallyTranslate])
  {
    v19 = [v18 userTranslationLanguageCode];
    sub_190D56F10();
    v23 = v9;

    v9 = v23;
    sub_190D518B0();
    sub_19022EEA4(v15, &qword_1EAD54C10, &qword_190DE84D0);
    v17(v12, 0, 1, v16);
    sub_190A6C37C(v12, v15);
  }

  v17(v12, 1, 1, v16);
  sub_19022FD14(v15, v9, &qword_1EAD54C10, &qword_190DE84D0);
  sub_19022FD14(v12, v6, &qword_1EAD54C10, &qword_190DE84D0);
  sub_19022FD14(v9, v3, &qword_1EAD54C10, &qword_190DE84D0);
  v20 = sub_190D51930();
  v24 = 1;
  type metadata accessor for CKLanguageSelectionViewModel(0);
  swift_allocObject();
  v21 = CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(v6, v3, MEMORY[0x1E69E7CC0], v20, &v24);
  sub_19022EEA4(v9, &qword_1EAD54C10, &qword_190DE84D0);
  sub_19022EEA4(v12, &qword_1EAD54C10, &qword_190DE84D0);
  sub_19022EEA4(v15, &qword_1EAD54C10, &qword_190DE84D0);
  return v21;
}

uint64_t sub_190BB4C3C(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v4 = [*(v2 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) *a2];
  v5 = sub_190D56F10();

  return v5;
}

void sub_190BB4D20(uint64_t *a1@<X0>, SEL *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v7 = [*(v6 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) *a3];
  v8 = sub_190D56F10();
  v10 = v9;

  *a4 = v8;
  a4[1] = v10;
}

double sub_190BB4E1C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  return result;
}

void sub_190BB4EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v4 = [v3 shouldAutomaticallyTranslate];
  v5 = sub_190D56ED0();
  swift_getKeyPath();
  sub_190D51C20();

  if ([v3 shouldAutomaticallyTranslate])
  {
    v6 = [v3 userTranslationLanguageCode];
    sub_190D56F10();
  }

  v7 = sub_190D56ED0();

  [v3 setAutomaticallyTranslate:v4 languageCode:v5 userLanguageCode:v7];
}

uint64_t sub_190BB5088()
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  if (![v1 shouldAutomaticallyTranslate])
  {
    return 0;
  }

  v2 = [v1 userTranslationLanguageCode];
  v3 = sub_190D56F10();

  return v3;
}

void sub_190BB5184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v4 = [v3 shouldAutomaticallyTranslate];
  swift_getKeyPath();
  sub_190D51C20();

  v5 = [v3 translationLanguageCode];
  if (!v5)
  {
    sub_190D56F10();
    v5 = sub_190D56ED0();
  }

  v6 = sub_190D56ED0();
  [v3 setAutomaticallyTranslate:v4 languageCode:v5 userLanguageCode:v6];
}

id sub_190BB5300()
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  return [*(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) shouldAutomaticallyTranslate];
}

double sub_190BB53B4(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  v4 = [v3 translationLanguageCode];
  if (!v4)
  {
    sub_190D56F10();
    v4 = sub_190D56ED0();
  }

  v5 = [v3 userTranslationLanguageCode];
  if (!v5)
  {
    sub_190D56F10();
    v5 = sub_190D56ED0();
  }

  [v3 setAutomaticallyTranslate:a2 & 1 languageCode:v4 userLanguageCode:v5];

  return sub_190BB5A10();
}

uint64_t sub_190BB552C()
{
  v1 = sub_190D51920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  swift_getKeyPath();
  v13 = v0;
  sub_190D51C20();

  v8 = [*(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) shouldAutomaticallyTranslate];
  result = 0;
  if (v8)
  {
    sub_190BB7500();
    if (v10)
    {
      sub_190D518B0();
      (*(v2 + 104))(v4, *MEMORY[0x1E69A6648], v1);
      v11 = sub_1908EA100(0xD00000000000001ELL, 0x8000000190E74310, v7, v4);
      (*(v2 + 8))(v4, v1);
      (*(v12 + 8))(v7, v5);
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_190BB57DC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  return result;
}

double sub_190BB5A10()
{
  v1 = sub_190D51920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190BB7500();
  if (v9)
  {
    sub_190D518B0();
    (*(v2 + 104))(v4, *MEMORY[0x1E69A6648], v1);
    sub_1908EA100(0xD00000000000001ELL, 0x8000000190E74310, v8, v4);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  swift_getKeyPath();
  v11[1] = v0;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  return result;
}

double sub_190BB5C78(uint64_t a1)
{
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  sub_190D52690();
  return result;
}

double sub_190BB5D30@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  *a4 = *(v6 + *a3);
  sub_190D52690();
  return result;
}

double sub_190BB5E50(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  if (a3(*(v5 + *a2), a1))
  {
    *(v5 + v7) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190BB5FBC()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v2 = *(v1 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  v3 = [v2 userTranslationLanguageCode];
  v4 = sub_190D56F10();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80, &unk_190DD64E0);
  v7 = swift_allocObject();
  v0[5] = v7;
  *(v7 + 16) = xmmword_190DD1DA0;
  swift_getKeyPath();
  v0[3] = v1;
  sub_190D51C20();

  v8 = [v2 translationLanguageCode];
  v9 = sub_190D56F10();
  v11 = v10;

  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  *(v7 + 48) = v4;
  *(v7 + 56) = v6;
  sub_190D52100();
  v0[6] = sub_190D520F0();
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_190BB61D0;

  return MEMORY[0x1EEE10B80](v7);
}

uint64_t sub_190BB61D0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_190BB6314, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_190BB6314()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_190BB6388()
{
  v1 = sub_190D51920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v9 = [*(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) translationLanguageCode];
  sub_190D56F10();

  sub_190D518B0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69A6650], v1);
  v10 = sub_190D51900();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_190BB65E4()
{
  v1 = sub_190D51920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v9 = *(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation);
  if ([v9 shouldAutomaticallyTranslate])
  {
    v10 = [v9 userTranslationLanguageCode];
    sub_190D56F10();
  }

  sub_190D518B0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69A6650], v1);
  v11 = sub_190D51900();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v11;
}

uint64_t sub_190BB6864()
{
  v1 = sub_190D51920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v9 = [*(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) translationLanguageCode];
  sub_190D56F10();

  sub_190D518B0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69A6648], v1);
  v10 = sub_1908EA100(0xD000000000000029, 0x8000000190E75530, v8, v4);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_190BB6AD8()
{
  v1 = sub_190D51920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  if (!*(*(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__suggestedTranslationLanguages) + 16))
  {
    return sub_190BB6864();
  }

  sub_190D52690();
  sub_190D518B0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69A6648], v1);
  v9 = sub_1908EA100(0xD000000000000029, 0x8000000190E75530, v8, v4);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v9;
}

id sub_190BB6D44()
{
  v0 = sub_190D51350();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_190D51330();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D51360();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B548, &qword_190DF8650);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  sub_190BB7500();
  if (!v16)
  {
    return 0;
  }

  sub_190D52100();
  sub_190D520F0();
  sub_190D52090();

  v32 = v15;
  sub_19022FD14(v15, v12, &qword_1EAD5B548, &qword_190DF8650);
  v17 = sub_190D52080();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_19022EEA4(v12, &qword_1EAD5B548, &qword_190DF8650);
    v19 = 0;
  }

  else
  {
    v19 = sub_190D52040();
    (*(v18 + 8))(v12, v17);
  }

  v37 = v19;
  (*(v4 + 104))(v6, *MEMORY[0x1E69689E0], v3);
  sub_190D51340();
  sub_190D50E50();
  (*(v33 + 8))(v2, v34);
  (*(v4 + 8))(v6, v3);
  sub_190A780F8();
  sub_190BB8D64(&qword_1EAD5B558, MEMORY[0x1E6968A00], MEMORY[0x1E69689F8]);
  sub_190A7814C();
  v21 = v36;
  sub_190D58120();
  (*(v35 + 8))(v9, v21);
  v22 = v38;
  v23 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_190DD1D90;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_19081EA10();
  *(v24 + 64) = v25;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  result = CKFrameworkBundle(v25);
  v27 = v32;
  if (result)
  {
    v28 = result;
    v29 = sub_190D56ED0();
    v30 = sub_190D56ED0();
    v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

    sub_190D56F10();
    v20 = sub_190D56EE0();

    sub_19022EEA4(v27, &qword_1EAD5B548, &qword_190DF8650);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_190BB72CC@<X0>(SEL *a2@<X1>, uint64_t a3@<X8>)
{
  sub_190D52100();
  sub_190D520F0();
  v6 = sub_190D520A0();

  swift_getKeyPath();
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v7 = [*(v3 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) *a2];
  v8 = sub_190D56F10();
  v10 = v9;

  if (*(v6 + 16))
  {
    v11 = sub_19022DCEC(v8, v10);
    v13 = v12;

    if (v13)
    {
      v14 = *(v6 + 56);
      v15 = sub_190D52080();
      v16 = *(v15 - 8);
      (*(v16 + 16))(a3, v14 + *(v16 + 72) * v11, v15);

      return (*(v16 + 56))(a3, 0, 1, v15);
    }
  }

  else
  {
  }

  v18 = sub_190D52080();
  return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
}

uint64_t sub_190BB7500()
{
  v0 = sub_190D519C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B548, &qword_190DF8650);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = sub_190D52080();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  sub_190BB72A4(v8);
  v15 = v10[6];
  if (v15(v8, 1, v9) == 1)
  {
    v16 = v8;
  }

  else
  {
    v28 = v1;
    v29 = v0;
    v17 = v10[4];
    v17(v14, v8, v9);
    sub_190BB72B8(v5);
    if (v15(v5, 1, v9) != 1)
    {
      v19 = v31;
      v17(v31, v5, v9);
      if (sub_190D52050())
      {
        v20 = v30;
        sub_190D52060();
        v21 = sub_190D518C0();
        (*(v28 + 8))(v20, v29);
      }

      else
      {
        v22 = sub_190D52050();
        v24 = v28;
        v23 = v29;
        if ((v22 & 1) == 0)
        {
          v27 = v10[1];
          v27(v19, v9);
          v27(v14, v9);
          return 0;
        }

        v25 = v30;
        sub_190D52060();
        v21 = sub_190D518C0();
        (*(v24 + 8))(v25, v23);
      }

      v26 = v10[1];
      v26(v19, v9);
      v26(v14, v9);
      return v21;
    }

    (v10[1])(v14, v9);
    v16 = v5;
  }

  sub_19022EEA4(v16, &qword_1EAD5B548, &qword_190DF8650);
  return 0;
}

uint64_t sub_190BB78AC()
{
  v1 = sub_190D51920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  if (!*(*(v0 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__suggestedTranslationLanguages) + 16))
  {
    return 0;
  }

  sub_190D52690();
  sub_190D518B0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69A6648], v1);
  v9 = sub_1908EA100(0xD00000000000001ELL, 0x8000000190E78370, v8, v4);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v9;
}

_BYTE *sub_190BB7B18(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v37 - v5;
  v2[18] = 0;
  v7 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__translationLanguageStatus;
  v8 = *MEMORY[0x1E69A6788];
  v9 = sub_190D52170();
  (*(*(v9 - 8) + 104))(&v2[v7], v8, v9);
  v2[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isInitializing] = 1;
  v2[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isAsyncInitializing] = 1;
  *&v2[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___languageViewModel] = 0;
  *&v2[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___translateToLanguageViewModel] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__suggestedTranslationLanguages] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___supportedToggleSections] = v10;
  sub_190D51C50();
  v2[17] = [a1 shouldSendReadReceipts];
  v2[16] = [a1 isMuted];
  v2[18] = 0;
  v2[19] = [a1 isAutoDonatingMessages];
  *&v2[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation] = a1;
  v11 = a1;
  v12 = [v11 suggestedTranslationLanguageCodes];
  v13 = sub_190D57180();

  sub_190BB54F0(v13);
  v14 = swift_allocObject();
  v15 = byte_1F04026C0;
  *(v14 + 16) = byte_1F04026C0;
  v16 = [v11 chat];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 supportsSendingReadReceipts];

    if (v18 && ([v11 isGroupConversation] & 1) == 0)
    {
      v15 = byte_1F04026C0;
      if (([v11 isBusinessConversation] & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 16) = byte_1F04026C0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_1908365B0(0, qword_1F04026D0 + 1, 1, byte_1F04026C0);
          *(v14 + 16) = v15;
        }

        v31 = *(v15 + 2);
        v32 = *(v15 + 3);
        v33 = v31 + 1;
        if (v31 >= v32 >> 1)
        {
          v34 = v15;
          v35 = *(v15 + 2);
          v36 = sub_1908365B0((v32 > 1), v31 + 1, 1, v34);
          v31 = v35;
          v15 = v36;
        }

        *(v15 + 2) = v33;
        v15[v31 + 32] = 1;
        *(v14 + 16) = v15;
      }
    }

    else
    {
      v15 = byte_1F04026C0;
    }
  }

  if ([v11 shouldShowAutoDonationAction])
  {
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + 16) = v15;
    if ((v19 & 1) == 0)
    {
      v15 = sub_1908365B0(0, *(v15 + 2) + 1, 1, v15);
      *(v14 + 16) = v15;
    }

    v21 = *(v15 + 2);
    v20 = *(v15 + 3);
    if (v21 >= v20 >> 1)
    {
      v15 = sub_1908365B0((v20 > 1), v21 + 1, 1, v15);
    }

    *(v15 + 2) = v21 + 1;
    v15[v21 + 32] = 3;
    *(v14 + 16) = v15;
  }

  v22 = sub_190D572E0();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_190D572A0();
  v23 = v11;
  sub_190D50920();
  sub_190D50920();
  v24 = sub_190D57290();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v23;
  v25[5] = v2;
  v25[6] = v14;
  sub_190857E08(0, 0, v6, &unk_190DF88F0, v25);

  v27 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isInitializing;
  if (v2[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isInitializing])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v37[-2] = v2;
    LOBYTE(v37[-1]) = 0;
    v37[1] = v2;
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }

  else
  {

    v2[v27] = 0;
  }

  return v2;
}

uint64_t sub_190BB8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  sub_190D52170();
  v6[15] = swift_task_alloc();
  v6[16] = sub_190D572A0();
  v6[17] = sub_190D57290();
  v7 = swift_task_alloc();
  v6[18] = v7;
  *v7 = v6;
  v7[1] = sub_190BB8124;

  return sub_190A3D0C0();
}

uint64_t sub_190BB8124(char a1)
{
  *(*v1 + 152) = a1;

  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190BB8268, v3, v2);
}

uint64_t sub_190BB8268()
{
  v37 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);

  v3 = *(v2 + 18);
  if (((v1 == 1) ^ v3))
  {
    v4 = *(v0 + 104);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1 == 1;
    *(v0 + 64) = v4;
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }

  else
  {
    *(v2 + 18) = v1 == 1;
    sub_190BB268C(v3);
  }

  v6 = *(v0 + 104);
  if (*(v6 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isAsyncInitializing))
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v0 + 96) = v6;
    sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();

    if (!*(v0 + 152))
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v6 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___isAsyncInitializing) = 0;
    if (!*(v0 + 152))
    {
      goto LABEL_13;
    }
  }

  v8 = *(v0 + 112);
  swift_beginAccess();
  v9 = *(v8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = *(v0 + 112);
    v9 = sub_1908365B0(0, *(v9 + 2) + 1, 1, v9);
    *(v35 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1908365B0((v11 > 1), v12 + 1, 1, v9);
  }

  v13 = *(v0 + 112);
  *(v9 + 2) = v12 + 1;
  v9[v12 + 32] = 2;
  *(v13 + 16) = v9;
  swift_endAccess();
LABEL_13:
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  swift_beginAccess();
  v16 = *(v14 + 16);
  swift_getKeyPath();
  *(v0 + 72) = v15;
  sub_190BB8D64(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D52690();
  sub_190D51C20();

  v17 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___supportedToggleSections;
  v18 = *(v15 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___supportedToggleSections);
  sub_190D52690();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_190836D7C(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_190836D7C((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[16 * v20];
  *(v21 + 4) = v16;
  v21[40] = 0;
  v36[0] = v18;
  sub_190D52690();
  sub_190BB90C8(v36);

  sub_190BB5E14(v36[0]);
  sub_190D52030();
  if (sub_190D51FD0())
  {
    v22 = *(v0 + 120);
    v23 = *(v0 + 104);
    sub_190D52100();
    sub_190D520F0();
    swift_getKeyPath();
    *(v0 + 80) = v23;
    sub_190D51C20();

    v24 = [*(v23 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) translationLanguageCode];
    sub_190D56F10();

    sub_190D520B0();

    sub_190BB3774(v22);
    swift_getKeyPath();
    *(v0 + 88) = v23;
    sub_190D51C20();

    v25 = *(v15 + v17);
    sub_190D52690();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_190836D7C(0, *(v25 + 2) + 1, 1, v25);
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_190836D7C((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[16 * v27];
    *(v28 + 4) = &unk_1F0403550;
    v28[40] = 1;
    v36[0] = v25;
    sub_190D52690();
    sub_190BB90C8(v36);
    v29 = *(v0 + 104);

    sub_190BB5E14(v36[0]);
    v30 = objc_opt_self();
    v31 = [v30 defaultCenter];
    [v31 addObserver:v29 selector:sel_translationLanguageStatusChanged name:*MEMORY[0x1E69A7DB8] object:0];

    v32 = [v30 defaultCenter];
    [v32 addObserver:v29 selector:sel_translationSettingsChanged name:*MEMORY[0x1E69A56F0] object:0];
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_190BB8900()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__translationLanguageStatus;
  v3 = sub_190D52170();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___observationRegistrar;
  v5 = sub_190D51C60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_190BB8A28()
{
  sub_190BB8900();

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_4(uint64_t a1)
{
  result = qword_1EAD45C88;
  if (!qword_1EAD45C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190BB8AD4(uint64_t a1)
{
  result = sub_190D52170();
  if (v2 <= 0x3F)
  {
    result = sub_190D51C60();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_190BB8C6C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
  sub_190D52690();
}

void sub_190BB8CF0(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
  sub_190D50920();
}

uint64_t sub_190BB8D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_190BB8DE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190BB2D78(a1, v4, v5, v6);
}

double sub_190BB8E9C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 18);
  *(v1 + 18) = *(v0 + 24);
  return sub_190BB268C(v2);
}

uint64_t sub_190BB8ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190BB286C(a1, v4, v5, v6);
}

void sub_190BB8F8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 17);
  *(v1 + 17) = *(v0 + 24);
  sub_190BB22A0(v2);
}

uint64_t sub_190BB9000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_190221DA4;

  return sub_190BB8048(a1, v4, v5, v6, v7, v8);
}

void sub_190BB90C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1909E3A48(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v19[0] = (v2 + 32);
  v19[1] = v3;
  v5 = sub_190D58710();
  if (v5 >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = v12[24];
          if (v12[8] != 1 || v13 != 0)
          {
            break;
          }

          v15 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v15;
          v12[8] = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      v8 = sub_190D571D0();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v8 + 32;
    v17[1] = v7;
    sub_190BB9210(v17, v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
}

void sub_190BB9210(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_95:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_127:
      v9 = sub_1909E383C(v9);
    }

    v82 = v9 + 16;
    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v9[16 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_190BB97A0((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), a1);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v87 < v85)
        {
          goto LABEL_119;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_120;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_121;
        }

        v83 = *v82 - 1;
        memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_131;
    }

LABEL_104:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = 16 * v10;
      v12 = *a3 + 16 * v10;
      v13 = *(v12 + 8) & (*(*a3 + 16 * v8 + 8) ^ 1);
      v14 = v10 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *(v15 - 16) & ~*v15 & 1;
        ++v14;
        v15 += 16;
        if ((v13 & 1) != v16)
        {
          v8 = v14 - 1;
          if ((v13 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if ((v13 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_124;
      }

      if (v10 < v8)
      {
        v17 = 16 * v8 - 16;
        v18 = v8;
        v19 = v10;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_123;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_125;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v8 < v10)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_190835714(0, *(v9 + 2) + 1, 1, v9);
    }

    v36 = *(v9 + 2);
    v35 = *(v9 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v9 = sub_190835714((v35 > 1), v36 + 1, 1, v9);
    }

    *(v9 + 2) = v37;
    v38 = &v9[16 * v36];
    *(v38 + 4) = v10;
    *(v38 + 5) = v8;
    v39 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v9 + 4);
          v42 = *(v9 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_64:
          if (v44)
          {
            goto LABEL_110;
          }

          v57 = &v9[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_113;
          }

          v63 = &v9[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_117;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v67 = &v9[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_78:
        if (v62)
        {
          goto LABEL_112;
        }

        v70 = &v9[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_115;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_85:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
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
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v79 = *&v9[16 * v78 + 32];
        v80 = *&v9[16 * v40 + 40];
        sub_190BB97A0((*a3 + 16 * v79), (*a3 + 16 * *&v9[16 * v40 + 32]), (*a3 + 16 * v80), v39);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v80 < v79)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1909E383C(v9);
        }

        if (v78 >= *(v9 + 2))
        {
          goto LABEL_107;
        }

        v81 = &v9[16 * v78];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        sub_1909E37B0(v40);
        v37 = *(v9 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v9[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_108;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_109;
      }

      v52 = &v9[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_111;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_114;
      }

      if (v56 >= v48)
      {
        v74 = &v9[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_118;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_95;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v8;
  v28 = v10 - v8;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (*(v30 - 8) != 1 || v31 != 0)
    {
LABEL_32:
      ++v8;
      v27 += 16;
      --v28;
      if (v8 != v6)
      {
        goto LABEL_33;
      }

      v8 = v6;
      goto LABEL_44;
    }

    if (!v26)
    {
      break;
    }

    v33 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v33;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_190BB97A0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_42;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = v4[8] == 1 && v6[8] == 0;
      if (v17)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v5 -= 16;
    do
    {
      v19 = v5 + 16;
      if (*(v6 - 8) == 1 && *(v15 - 8) == 0)
      {
        v22 = v6 - 16;
        if (v19 != v6)
        {
          *v5 = *v22;
        }

        if (v15 <= v4 || (v6 -= 16, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_42;
        }

        goto LABEL_28;
      }

      v21 = v15 - 16;
      if (v19 != v15)
      {
        *v5 = *v21;
      }

      v5 -= 16;
      v15 -= 16;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_42:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_7ChatKit18DetailsInfoTabViewV7TogglesO0F5ModelC32TranslationDetailCellDisplayTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_190BB99BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190BB9A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_190BB9AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v4 = a2;
  v3(a2);
}

uint64_t sub_190BB9B54@<X0>(uint64_t a1@<X8>)
{
  sub_190BB9C94(v23);
  v3 = swift_allocObject();
  v4 = v1[7];
  v3[7] = v1[6];
  v3[8] = v4;
  v3[9] = v1[8];
  v5 = v1[3];
  v3[3] = v1[2];
  v3[4] = v5;
  v6 = v1[5];
  v3[5] = v1[4];
  v3[6] = v6;
  v7 = v1[1];
  v3[1] = *v1;
  v3[2] = v7;
  v8 = swift_allocObject();
  v9 = v1[7];
  v8[7] = v1[6];
  v8[8] = v9;
  v8[9] = v1[8];
  v10 = v1[3];
  v8[3] = v1[2];
  v8[4] = v10;
  v11 = v1[5];
  v8[5] = v1[4];
  v8[6] = v11;
  v12 = v1[1];
  v8[1] = *v1;
  v8[2] = v12;
  v13 = v23[13];
  *(a1 + 192) = v23[12];
  *(a1 + 208) = v13;
  v14 = v23[15];
  *(a1 + 224) = v23[14];
  *(a1 + 240) = v14;
  v15 = v23[9];
  *(a1 + 128) = v23[8];
  *(a1 + 144) = v15;
  v16 = v23[11];
  *(a1 + 160) = v23[10];
  *(a1 + 176) = v16;
  v17 = v23[5];
  *(a1 + 64) = v23[4];
  *(a1 + 80) = v17;
  v18 = v23[7];
  *(a1 + 96) = v23[6];
  *(a1 + 112) = v18;
  v19 = v23[1];
  *a1 = v23[0];
  *(a1 + 16) = v19;
  v20 = v23[3];
  *(a1 + 32) = v23[2];
  *(a1 + 48) = v20;
  *(a1 + 256) = sub_190BC3290;
  *(a1 + 264) = v3;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = sub_190BC3298;
  *(a1 + 312) = v8;
  sub_190BC32EC(v1, v22);
  return sub_190BC32EC(v1, v22);
}

double sub_190BB9C94@<D0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF50, &qword_190DF8D38);
  sub_190D55FD0();
  sub_190B18E78();
  v27 = sub_190D58130();
  v31 = v3;
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isSpotlightReindexRefactorEnabled];

  if (v5)
  {
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v33 = 0;
  }

  else
  {
    v30 = 0x8000000190E78440;
    sub_190D55FD0();
    v29 = sub_190D58130();
    v33 = v6;
    v32 = 0xD000000000000012;
  }

  sub_190D55FD0();
  v7 = sub_190D58130();
  v25 = v8;
  v26 = v7;
  sub_190D55FD0();
  v9 = sub_190D58130();
  v23 = v10;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF58, &qword_190DF8D40);
  sub_190D55FD0();
  sub_190A7814C();
  v22 = sub_190D58130();
  v28 = v11;
  sub_190D55FD0();
  v12 = sub_190D58130();
  v21 = v13;
  sub_190D55FD0();
  v14 = sub_190D58130();
  v19 = v15;
  v20 = v14;
  sub_190D55FD0();
  v16 = sub_190D58130();
  *a2 = 0xD000000000000010;
  *(a2 + 8) = 0x8000000190E78420;
  *(a2 + 16) = v27;
  *(a2 + 24) = v31;
  *(a2 + 32) = v32;
  *(a2 + 40) = v30;
  *(a2 + 48) = v29;
  *(a2 + 56) = v33;
  *(a2 + 64) = 0xD000000000000013;
  *(a2 + 72) = 0x8000000190E78460;
  *(a2 + 80) = v26;
  *(a2 + 88) = v25;
  *(a2 + 96) = 0xD000000000000012;
  *(a2 + 104) = 0x8000000190E78480;
  *(a2 + 112) = v24;
  *(a2 + 120) = v23;
  strcpy((a2 + 128), "Index Version");
  *(a2 + 142) = -4864;
  *(a2 + 144) = v22;
  *(a2 + 152) = v28;
  strcpy((a2 + 160), "Index Revision");
  *(a2 + 175) = -18;
  *(a2 + 176) = v12;
  *(a2 + 184) = v21;
  *(a2 + 192) = 0xD000000000000013;
  *(a2 + 200) = 0x8000000190E784A0;
  *(a2 + 208) = v20;
  *(a2 + 216) = v19;
  *(a2 + 224) = 0xD000000000000015;
  *(a2 + 232) = 0x8000000190E784C0;
  *(a2 + 240) = v16;
  *(a2 + 248) = v17;
  sub_190D52690();
  sub_190D52690();
  sub_190AA2B30(v32, v30, v29, v33);
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();

  sub_1908B1EFC(v32, v30, v29, v33);

  return result;
}

uint64_t sub_190BBA144(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[7];
  v2[7] = a1[6];
  v2[8] = v3;
  v2[9] = a1[8];
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  v5 = a1[5];
  v2[5] = a1[4];
  v2[6] = v5;
  v6 = a1[1];
  v2[1] = *a1;
  v2[2] = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E69A5DF0]);
  aBlock[4] = sub_190BC33A4;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_83;
  v8 = _Block_copy(aBlock);
  sub_190BC32EC(a1, v11);

  v9 = [v7 initWithChangeHandler_];
  _Block_release(v8);
  v11[0] = a1[6];
  aBlock[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF48, &qword_190DF8D30);
  return sub_190D55FE0();
}

uint64_t sub_190BBA290(void *a1, __int128 *a2)
{
  [a1 initialIndexedMessages];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF50, &qword_190DF8D38);
  sub_190D55FE0();
  [a1 processedMessageRecords];
  sub_190D55FE0();
  [a1 lastIndexedRowID];
  sub_190D55FE0();
  [a1 initialReindexRowID];
  sub_190D55FE0();
  [a1 indexVersion];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF58, &qword_190DF8D40);
  sub_190D55FE0();
  [a1 indexRevision];
  sub_190D55FE0();
  [a1 initialTotalChats];
  sub_190D55FE0();
  [a1 initialIndexedChats];
  return sub_190D55FE0();
}

char *sub_190BBA4AC()
{
  v19 = *v0;
  v20 = *(v0 + 2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
  MEMORY[0x193AF1A80](&v18, v1);
  v2 = v18;
  v3 = [v18 taskReports];

  if (!v3)
  {
    return 0;
  }

  sub_1902188FC(0, &qword_1EAD5F018, 0x1E69A81D0);
  v4 = sub_190D57180();

  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_20;
  }

  while (1)
  {
    *&v19 = MEMORY[0x1E69E7CC0];
    result = sub_19082DF64(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = v19;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 count];

      *&v19 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        sub_19082DF64((v12 > 1), v13 + 1, 1);
        v8 = v19;
      }

      ++v7;
      v8[2] = v13 + 1;
      v8[v13 + 4] = v11;
    }

    while (v5 != v7);

    v14 = v8[2];
    if (!v14)
    {
      break;
    }

    while (1)
    {
      v4 = 0;
      v15 = v8 + 4;
      while (1)
      {
        v16 = *v15++;
        v17 = __OFADD__(v4, v16);
        v4 += v16;
        if (v17)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      v5 = sub_190D581C0();
      if (v5)
      {
        break;
      }

LABEL_20:

      v8 = MEMORY[0x1E69E7CC0];
      v14 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v14)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v4 = 0;
LABEL_22:

  return v4;
}

BOOL sub_190BBA6C0()
{
  v1 = v0;
  v13 = *v0;
  v14 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
  MEMORY[0x193AF1A80](&v12);
  v3 = v12;
  v4 = [v12 runResult];

  if (v4 == 4)
  {
    return 0;
  }

  v13 = *v1;
  v14 = *(v1 + 2);
  MEMORY[0x193AF1A80](&v12, v2);
  v6 = v12;
  v7 = [v12 status];

  result = 1;
  if (v7 != 2 && v7 != 4)
  {
    if (v7 != 5)
    {
      return 0;
    }

    v13 = *v1;
    v14 = *(v1 + 2);
    MEMORY[0x193AF1A80](&v12, v2);
    v8 = v12;
    v9 = [v12 runResult];

    if (v9 == 2)
    {
      return 1;
    }

    else
    {
      v13 = *v1;
      v14 = *(v1 + 2);
      MEMORY[0x193AF1A80](&v12, v2);
      v10 = v12;
      v11 = [v12 runResult];

      return v11 == 3;
    }
  }

  return result;
}

BOOL sub_190BBA838()
{
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FD0();
  if (v5)
  {
    return 1;
  }

  v6 = *(v0 + 24);
  sub_190D55FD0();
  v6 = *v0;
  v7 = *(v0 + 2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
  MEMORY[0x193AF1A80](&v5, v1);
  v2 = v5;
  v3 = [v5 status];

  return v3 == 1;
}

double sub_190BBA918@<D0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v4 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v82 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C58, &unk_190DE8470);
  MEMORY[0x1EEE9AC00](v98);
  v94 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = v82 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v103 = v82 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v102 = v82 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v92 = v82 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v86 = v82 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v101 = v82 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v105 = v82 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v82 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v104 = v82 - v28;
  v110 = *a1;
  v111 = *(a1 + 2);
  v107 = *a1;
  v108 = *(a1 + 2);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
  MEMORY[0x193AF1A80](&v109);
  v30 = v109;
  v31 = [v109 groupName];

  v88 = sub_190D56F10();
  v100 = v32;

  v107 = v110;
  v108 = v111;
  MEMORY[0x193AF1A80](&v109, v29);
  v33 = v109;
  [v109 lane];

  v87 = sub_190D57970();
  v99 = v34;
  v107 = v110;
  v108 = v111;
  MEMORY[0x193AF1A80](&v109, v29);
  v35 = v109;
  [v109 runResult];

  v85 = sub_190D57A60();
  v91 = v36;
  v107 = v110;
  v108 = v111;
  MEMORY[0x193AF1A80](&v109, v29);
  v37 = v109;
  [v109 status];

  v84 = sub_190D57C10();
  v97 = v38;
  *&v107 = sub_190BBA4AC();
  sub_190A780F8();
  v83 = sub_190D58130();
  v96 = v39;
  sub_190D549E0();
  v40 = swift_allocObject();
  v41 = a1[1];
  *(v40 + 16) = *a1;
  *(v40 + 32) = v41;
  *(v40 + 48) = a1[2];
  *(v40 + 64) = *(a1 + 6);
  sub_190BC38C0(a1, &v107);
  sub_190D56070();
  v42 = !sub_190BBA6C0() || sub_190BBA838();
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v45 = v4 + 32;
  v46 = *(v4 + 32);
  v90 = v45;
  v46(v26, v8, v95);
  v47 = v98;
  v48 = &v26[*(v98 + 36)];
  *v48 = KeyPath;
  v48[1] = sub_190BC3C08;
  v48[2] = v44;
  sub_190964550(v26, v104);
  sub_190D549E0();
  v49 = swift_allocObject();
  v50 = a1[1];
  *(v49 + 16) = *a1;
  *(v49 + 32) = v50;
  *(v49 + 48) = a1[2];
  *(v49 + 64) = *(a1 + 6);
  sub_190BC38C0(a1, &v107);
  v51 = v105;
  sub_190D56070();
  LOBYTE(KeyPath) = sub_190BBA838();
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = KeyPath & 1;
  v54 = (v51 + *(v47 + 36));
  *v54 = v52;
  v54[1] = sub_190BC3C08;
  v54[2] = v53;
  sub_190D549E0();
  v55 = swift_allocObject();
  v56 = a1[1];
  *(v55 + 16) = *a1;
  *(v55 + 32) = v56;
  *(v55 + 48) = a1[2];
  *(v55 + 64) = *(a1 + 6);
  sub_190BC38C0(a1, &v107);
  v57 = v89;
  sub_190D56070();
  v109 = *(a1 + 40);
  v107 = *(a1 + 40);
  v82[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FD0();
  v58 = (v106 & 1) != 0 || sub_190BBA4AC() == 0;
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = v58;
  v61 = v86;
  v46(v86, v57, v95);
  v62 = v98;
  v63 = (v61 + *(v98 + 36));
  *v63 = v59;
  v63[1] = sub_190BC3C08;
  v63[2] = v60;
  v64 = v101;
  sub_190964550(v61, v101);
  sub_190D549E0();
  v65 = swift_allocObject();
  v66 = a1[1];
  *(v65 + 16) = *a1;
  *(v65 + 32) = v66;
  *(v65 + 48) = a1[2];
  *(v65 + 64) = *(a1 + 6);
  sub_190BC38C0(a1, &v107);
  v67 = v92;
  sub_190D56070();
  v107 = v109;
  sub_190D55FD0();
  LOBYTE(v60) = v106;
  v68 = swift_getKeyPath();
  v69 = swift_allocObject();
  *(v69 + 16) = v60;
  v70 = (v67 + *(v62 + 36));
  *v70 = v68;
  v70[1] = sub_190BC3C08;
  v70[2] = v69;
  v71 = v102;
  sub_19022FD14(v104, v102, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022FD14(v105, v103, &qword_1EAD57C58, &unk_190DE8470);
  v72 = v93;
  sub_19022FD14(v64, v93, &qword_1EAD57C58, &unk_190DE8470);
  v73 = v94;
  sub_19022FD14(v67, v94, &qword_1EAD57C58, &unk_190DE8470);
  *a2 = 0x70756F7247;
  a2[1] = 0xE500000000000000;
  v74 = v100;
  a2[2] = v88;
  a2[3] = v74;
  a2[4] = 1701732684;
  a2[5] = 0xE400000000000000;
  v75 = v99;
  a2[6] = v87;
  a2[7] = v75;
  a2[8] = 0x75736552206E7552;
  a2[9] = 0xEA0000000000746CLL;
  v76 = v91;
  a2[10] = v85;
  a2[11] = v76;
  a2[12] = 0x737574617453;
  a2[13] = 0xE600000000000000;
  v77 = v97;
  a2[14] = v84;
  a2[15] = v77;
  a2[16] = 0x655220736B736154;
  a2[17] = 0xEF676E696E69616DLL;
  v78 = v96;
  a2[18] = v83;
  a2[19] = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F010, &unk_190DF8E40);
  sub_19022FD14(v71, a2 + v79[28], &qword_1EAD57C58, &unk_190DE8470);
  v80 = v103;
  sub_19022FD14(v103, a2 + v79[32], &qword_1EAD57C58, &unk_190DE8470);
  sub_19022FD14(v72, a2 + v79[36], &qword_1EAD57C58, &unk_190DE8470);
  sub_19022FD14(v73, a2 + v79[40], &qword_1EAD57C58, &unk_190DE8470);
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_19022EEA4(v67, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v101, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v105, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v104, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v73, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v72, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v80, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v102, &qword_1EAD57C58, &unk_190DE8470);

  return result;
}

void sub_190BBB564()
{
  v1 = v0;
  v12 = *(v0 + 24);
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FE0();
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 remoteDaemon];

  v15 = *v1;
  v16 = *(v1 + 16);
  v12 = *v1;
  v13 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
  MEMORY[0x193AF1A80](aBlock);
  v5 = aBlock[0];
  v6 = [aBlock[0] groupName];

  if (!v6)
  {
    sub_190D56F10();
    v6 = sub_190D56ED0();
  }

  v12 = v15;
  v13 = v16;
  MEMORY[0x193AF1A80](aBlock, v4);
  v7 = aBlock[0];
  v8 = [aBlock[0] lane];

  v9 = swift_allocObject();
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  aBlock[4] = sub_190BC3A20;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_169;
  v11 = _Block_copy(aBlock);
  sub_190BC38C0(v1, &v12);

  [v3 resumeExecutorWithGroupName:v6 lane:v8 completionHandler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

void sub_190BBB7AC()
{
  v1 = v0;
  v12 = *(v0 + 24);
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FE0();
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 remoteDaemon];

  v15 = *v1;
  v16 = *(v1 + 16);
  v12 = *v1;
  v13 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
  MEMORY[0x193AF1A80](aBlock);
  v5 = aBlock[0];
  v6 = [aBlock[0] groupName];

  if (!v6)
  {
    sub_190D56F10();
    v6 = sub_190D56ED0();
  }

  v12 = v15;
  v13 = v16;
  MEMORY[0x193AF1A80](aBlock, v4);
  v7 = aBlock[0];
  v8 = [aBlock[0] lane];

  v9 = swift_allocObject();
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  aBlock[4] = sub_190BC3A14;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190BBC048;
  aBlock[3] = &block_descriptor_157;
  v11 = _Block_copy(aBlock);
  sub_190BC38C0(v1, &v12);

  [v3 runExecutorWithTaskLimit:100 groupName:v6 lane:v8 completionHandler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

double sub_190BBB9F8(__int128 *a1)
{
  if ([objc_opt_self() pTaskQueryProvider])
  {
    v7 = *(a1 + 40);
    LOBYTE(v9) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
    sub_190D55FE0();
    swift_getObjectType();
    v7 = *a1;
    v8 = *(a1 + 2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
    MEMORY[0x193AF1A80](&v9, v3);
    v4 = v9;
    [v9 lane];

    sub_190BBC09C();
    v5 = swift_allocObject();
    v6 = a1[1];
    *(v5 + 16) = *a1;
    *(v5 + 32) = v6;
    *(v5 + 48) = a1[2];
    *(v5 + 64) = *(a1 + 6);
    sub_190BC38C0(a1, &v7);
    sub_190D57A30();
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_190BBBB78(__int128 *a1)
{
  v2 = [objc_opt_self() pTaskQueryProvider];
  if (v2)
  {
    v4 = v2;
    v11 = *(a1 + 40);
    LOBYTE(aBlock[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
    sub_190D55FE0();
    v11 = *a1;
    v12 = *(a1 + 2);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
    MEMORY[0x193AF1A80](aBlock, v5);
    v6 = aBlock[0];
    v7 = [aBlock[0] lane];

    v8 = swift_allocObject();
    v9 = a1[1];
    *(v8 + 16) = *a1;
    *(v8 + 32) = v9;
    *(v8 + 48) = a1[2];
    *(v8 + 64) = *(a1 + 6);
    aBlock[4] = sub_190BC392C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190BBC728;
    aBlock[3] = &block_descriptor_124_0;
    v10 = _Block_copy(aBlock);
    sub_190BC38C0(a1, &v11);

    [v4 scheduleMessageGUIDsUpToLimit:100 flag:1 lane:v7 reason:1004 userInfo:0 completionBlock:v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190BBBD38(uint64_t a1, uint64_t a2)
{
  v3 = sub_190D56770();
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_190D567A0();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
  v9 = sub_190D57870();
  v10 = swift_allocObject();
  v11 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a2 + 32);
  *(v10 + 64) = *(a2 + 48);
  aBlock[4] = sub_190BC3A1C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_163;
  v12 = _Block_copy(aBlock);
  sub_190BC38C0(a2, v17);

  sub_190D56790();
  v17[0] = MEMORY[0x1E69E7CC0];
  sub_190BBF4EC(&qword_1EAD46770, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0, &unk_190DD6E80, MEMORY[0x1E69E6328]);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v8, v5, v12);
  _Block_release(v12);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

double sub_190BBC048(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v3(a2);

  return result;
}

uint64_t sub_190BBC09C()
{
  v1 = sub_190D57A40();
  v13 = *v0;
  v14 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
  MEMORY[0x193AF1A80](&v12, v2);
  v3 = v12;
  v4 = [v12 groupName];

  v5 = sub_190D56F10();
  v7 = v6;

  if (*(v1 + 16))
  {
    sub_19022DCEC(v5, v7);
    v9 = v8;

    if (v9)
    {

      sub_190D57A50();
      v10 = sub_190D57960();

      return v10;
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_190BBC1B0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedController];
  v4 = [v3 remoteDaemon];

  v5 = swift_allocObject();
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = *(a2 + 48);
  aBlock[4] = sub_190BC397C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_145;
  v7 = _Block_copy(aBlock);
  sub_190BC38C0(a2, v9);

  [v4 updateExecutorStateWithCompletionHandler_];
  _Block_release(v7);
  swift_unknownObjectRelease();
  return result;
}

double sub_190BBC2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() sharedController];
  v5 = [v4 remoteDaemon];

  v6 = swift_allocObject();
  v7 = *(a3 + 16);
  *(v6 + 16) = *a3;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a3 + 32);
  *(v6 + 64) = *(a3 + 48);
  aBlock[4] = sub_190BC3934;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_130_0;
  v8 = _Block_copy(aBlock);
  sub_190BC38C0(a3, v10);

  [v5 updateExecutorStateWithCompletionHandler_];
  _Block_release(v8);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_190BBC428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_190D56770();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_190D567A0();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
  v13 = sub_190D57870();
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  sub_190BC38C0(a1, v21);

  sub_190D56790();
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_190BBF4EC(&qword_1EAD46770, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0, &unk_190DD6E80, MEMORY[0x1E69E6328]);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v12, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

double sub_190BBC728(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_190D57180();
  }

  else
  {
    v5 = 0;
  }

  sub_190D50920();
  v6 = a3;
  v4(v5, a3);

  return result;
}

uint64_t sub_190BBC7C0()
{
  v1 = v0[1];
  v12 = *v0;
  v13 = v1;
  v14 = v0[2];
  v15 = *(v0 + 6);
  v10 = v12;
  v11 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF90, &qword_190DF8D50);
  MEMORY[0x193AF1A80](&v9, v2);
  v3 = v9;
  v4 = [v9 groupName];

  v5 = sub_190D56F10();
  v7 = v6;

  *&v10 = v5;
  *(&v10 + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EFF0, &qword_190DF8E30);
  sub_190BC37EC();
  sub_19081E484();
  return sub_190D562B0();
}

uint64_t sub_190BBC8D8@<X0>(uint64_t *a2@<X8>)
{
  sub_1902188FC(0, &unk_1EAD60670, 0x1E69A81C8);
  result = sub_190D582E0();
  *a2 = result;
  return result;
}

uint64_t sub_190BBC92C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_190BBC974(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_190BBC9F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_190D50920();
  sub_190D50920();
  v6 = v5;
  sub_190D55FC0();
  result = sub_190D55FC0();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_190BBCAA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF60, &qword_190DF8D48);
  sub_190D56220();
  sub_190BC33AC();
  sub_190BC3498();
  sub_190BC34EC();
  return sub_190D56290();
}

id sub_190BBCBB0@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() exitOnIndexingTimeout];
  *(a1 + 24) = MEMORY[0x1E69E6370];
  *a1 = result;
  return result;
}

id sub_190BBCC10@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() *a1];
  a2[3] = MEMORY[0x1E69E6530];
  *a2 = result;
  return result;
}

uint64_t sub_190BBCC58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C58, &unk_190DE8470);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  sub_190D549E0();
  v18 = swift_allocObject();
  v19 = v1[1];
  v18[1] = *v1;
  v18[2] = v19;
  v20 = v1[3];
  v18[3] = v1[2];
  v18[4] = v20;
  sub_190BBE63C(v1, v46);
  sub_190D56070();
  v47 = v1[1];
  *v46 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FD0();
  v21 = v45;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v39 = v5;
  v24 = &v17[*(v5 + 36)];
  *v24 = KeyPath;
  v24[1] = sub_190BC2FA0;
  v24[2] = v23;
  sub_190D549E0();
  v25 = swift_allocObject();
  v26 = v2[1];
  v25[1] = *v2;
  v25[2] = v26;
  v27 = v2[3];
  v25[3] = v2[2];
  v25[4] = v27;
  sub_190BBE63C(v2, v46);
  v28 = v38;
  sub_190D56070();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  if (v46[0] == 1)
  {
    *v46 = v47;
    sub_190D55FD0();
    v29 = v45;
  }

  else
  {
    v29 = 1;
  }

  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  (*(v40 + 32))(v11, v28, v41);
  v32 = &v11[*(v39 + 36)];
  *v32 = v30;
  v32[1] = sub_190BC3C08;
  v32[2] = v31;
  sub_190964550(v11, v14);
  v33 = v42;
  sub_19022FD14(v17, v42, &qword_1EAD57C58, &unk_190DE8470);
  v34 = v43;
  sub_19022FD14(v14, v43, &qword_1EAD57C58, &unk_190DE8470);
  v35 = v44;
  sub_19022FD14(v33, v44, &qword_1EAD57C58, &unk_190DE8470);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF18, &qword_190DF8BB0);
  sub_19022FD14(v34, v35 + *(v36 + 48), &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v14, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v17, &qword_1EAD57C58, &unk_190DE8470);
  sub_19022EEA4(v34, &qword_1EAD57C58, &unk_190DE8470);
  return sub_19022EEA4(v33, &qword_1EAD57C58, &unk_190DE8470);
}

double sub_190BBD168(_OWORD *a1)
{
  v2 = [objc_opt_self() contextWithReason_];
  sub_190D57910();
  v9[0] = a1[1];
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FE0();
  v3 = [objc_opt_self() queryProvider];
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  aBlock[4] = sub_190BC3C04;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190BB9AE8;
  aBlock[3] = &block_descriptor_37_2;
  v7 = _Block_copy(aBlock);
  sub_190BBE63C(a1, v9);

  [v3 setNeedsMessageReindexingWithContext:v2 completion:v7];
  _Block_release(v7);

  swift_unknownObjectRelease();
  return result;
}

double sub_190BBD2FC(_OWORD *a1)
{
  v9[0] = a1[1];
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FE0();
  v2 = [objc_opt_self() queryProvider];
  v3 = [objc_opt_self() reindexSupplementalBatchSize];
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  aBlock[4] = sub_190BC2FC0;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190BB9AE8;
  aBlock[3] = &block_descriptor_31_2;
  v7 = _Block_copy(aBlock);
  sub_190BBE63C(a1, v9);

  [v2 indexNextMessageBatchIfNeeded:v3 reason:1004 completion:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_190BBD474@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC48, &qword_190DF3D00);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EEC0, &qword_190DF8AE8);
  v51 = *(v55 - 1);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v50 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EEC8, &qword_190DF8AF0);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EED0, &qword_190DF8AF8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EED8, &qword_190DF8B00);
  v57 = *(v17 - 8);
  v58 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  sub_190D549E0();
  v66 = sub_190D555D0();
  *&v67 = v22;
  BYTE8(v67) = v23 & 1;
  v68 = v24;
  v64 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EEE0, &qword_190DF8B08);
  sub_190233640(&qword_1EAD5EEE8, &qword_1EAD5EEE0, &qword_190DF8B08, MEMORY[0x1E6981F48]);
  v61 = v21;
  sub_190D562C0();
  v25 = [objc_opt_self() sharedFeatureFlags];
  v26 = [v25 isSpotlightReindexRefactorEnabled];

  if (v26)
  {
    v65 = *(a1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EEB8, &unk_190DF8AD8);
    sub_190D55FF0();
    v27 = v67;
    *v10 = v66;
    *(v10 + 8) = v27;
    swift_storeEnumTagMultiPayload();
    sub_190BBF490();
    sub_190BC3B0C(&qword_1EAD5EF00, &qword_1EAD5EEC0, &qword_190DF8AE8, sub_190BBF43C);
    sub_190D54C50();
  }

  else
  {
    sub_190D549E0();
    v66 = sub_190D555D0();
    *&v67 = v28;
    BYTE8(v67) = v29 & 1;
    v68 = v30;
    sub_190BBF43C();
    sub_190D562C0();
    v31 = v51;
    v32 = v55;
    (*(v51 + 16))(v10, v8, v55);
    swift_storeEnumTagMultiPayload();
    sub_190BBF490();
    sub_190BC3B0C(&qword_1EAD5EF00, &qword_1EAD5EEC0, &qword_190DF8AE8, sub_190BBF43C);
    sub_190D54C50();
    (*(v31 + 8))(v8, v32);
  }

  sub_190D549E0();
  v66 = sub_190D555D0();
  *&v67 = v33;
  BYTE8(v67) = v34 & 1;
  v68 = v35;
  MEMORY[0x1EEE9AC00](v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC58, &qword_190DF8B10);
  sub_190BC374C(&qword_1EAD5DC60, &qword_1EAD5DC58, &qword_190DF8B10, sub_190B38DB0);
  sub_190D562C0();
  v36 = v57;
  v37 = v58;
  v38 = *(v57 + 16);
  v39 = v62;
  v38(v62, v61, v58);
  v53 = v16;
  sub_19022FD14(v16, v13, &qword_1EAD5EED0, &qword_190DF8AF8);
  v40 = v56;
  v52 = v6;
  v55 = *(v56 + 16);
  v41 = v59;
  (v55)(v63, v6, v59);
  v42 = v13;
  v43 = v60;
  v38(v60, v39, v37);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF08, &qword_190DF8B18);
  sub_19022FD14(v42, &v43[*(v44 + 48)], &qword_1EAD5EED0, &qword_190DF8AF8);
  v45 = &v43[*(v44 + 64)];
  v46 = v63;
  (v55)(v45, v63, v41);
  v47 = *(v40 + 8);
  v47(v52, v41);
  sub_19022EEA4(v53, &qword_1EAD5EED0, &qword_190DF8AF8);
  v48 = *(v36 + 8);
  v48(v61, v37);
  v47(v46, v41);
  sub_19022EEA4(v42, &qword_1EAD5EED0, &qword_190DF8AF8);
  return (v48)(v62, v37);
}

__n128 sub_190BBDD10@<Q0>(__n128 *a1@<X8>)
{
  sub_190BC2E04(v6);
  v2 = v6[7];
  a1[6] = v6[6];
  a1[7] = v2;
  a1[8] = v6[8];
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  v4 = v6[5];
  a1[4] = v6[4];
  a1[5] = v4;
  result = v6[1];
  *a1 = v6[0];
  a1[1] = result;
  return result;
}

uint64_t sub_190BBDD68(uint64_t a1)
{
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0, &qword_190DF8B20, MEMORY[0x1E69E6338]);
  sub_190B38DB0();
  sub_190BBF4EC(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem, &protocol conformance descriptor for UserDefaultItem);
  return sub_190D56290();
}

double sub_190BBDE70@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PinnedUserDefault(0);
  sub_190BBF4EC(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  *&v8 = sub_190D54520();
  *(&v8 + 1) = v4;
  sub_190D55FC0();
  LOBYTE(v10) = v12;
  *(&v10 + 1) = *(&v12 + 1);
  sub_190D55FC0();
  *v11 = v13;
  type metadata accessor for UserDefaultItem(0);
  sub_190BBF4EC(&qword_1EAD5DD20, type metadata accessor for UserDefaultItem, &protocol conformance descriptor for UserDefaultItem);
  v5 = v3;
  *&v9 = sub_190D53FC0();
  *(&v9 + 1) = v6;
  *&v11[24] = 0;
  sub_190D55FC0();
  *&v14[2] = *&v11[10];
  *v14 = *&v11[8];
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = *v11;
  result = *&v14[2];
  *(a2 + 74) = *&v14[2];
  *a2 = v8;
  a2[1] = v9;
  return result;
}

void sub_190BBE004(_OWORD *a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isSpotlightReindexRefactorEnabled];

  if (v3)
  {
    v4 = swift_allocObject();
    v5 = a1[1];
    v4[1] = *a1;
    v4[2] = v5;
    v6 = a1[3];
    v4[3] = a1[2];
    v4[4] = v6;
    v7 = objc_allocWithZone(MEMORY[0x1E69A5C28]);
    aBlock[4] = sub_190BBE674;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190BBE724;
    aBlock[3] = &block_descriptor_99;
    v8 = _Block_copy(aBlock);
    sub_190BBE63C(a1, v10);

    v9 = [v7 initWithChangeHandler_];
    _Block_release(v8);
    v10[0] = a1[2];
    aBlock[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EEB0, &qword_190DF8AD0);
    sub_190D55FE0();
  }
}

uint64_t sub_190BBE174(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v18 = a3;
    v6 = 0;
    a3 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 groupName];
      v11 = sub_190D56F10();
      v13 = v12;

      if (v11 == 1953719636 && v13 == 0xE400000000000000)
      {
      }

      else
      {
        v15 = sub_190D58760();

        if (v15)
        {
        }

        else
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }
      }

      ++v6;
      if (v9 == i)
      {
        a3 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:
  v16 = sub_190D50920();
  v19[0] = sub_190C1EAFC(v16);
  sub_190BBE7D8(v19);

  *v19 = *(a3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EEB8, &unk_190DF8AD8);
  return sub_190D55FE0();
}

uint64_t sub_190BBE398(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8 = v2;
  v9 = v1;
  v6 = v1;
  v7 = v2;
  sub_19022FD14(&v9, &v5, &qword_1EAD5EEA0, &qword_190DF8AC0);
  sub_19022FD14(&v8, &v5, &qword_1EAD5EEA8, &qword_190DF8AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EEB0, &qword_190DF8AD0);
  sub_190D55FD0();
  v3 = v5;
  [v5 cancel];

  v6 = v1;
  v7 = v2;
  v5 = 0;
  sub_190D55FE0();
  sub_19022EEA4(&v9, &qword_1EAD5EEA0, &qword_190DF8AC0);
  return sub_19022EEA4(&v8, &qword_1EAD5EEA8, &qword_190DF8AC8);
}

uint64_t sub_190BBE49C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v4 = v1[3];
  v17 = v1[2];
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EE80, &qword_190DF8AA8);
  sub_190233640(&qword_1EAD5EE88, &qword_1EAD5EE80, &qword_190DF8AA8, MEMORY[0x1E6981F48]);
  sub_190D554D0();
  v5 = swift_allocObject();
  v6 = v16;
  *(v5 + 1) = v15;
  *(v5 + 2) = v6;
  v7 = v18;
  *(v5 + 3) = v17;
  *(v5 + 4) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EE90, &qword_190DF8AB0) + 36));
  *v8 = sub_190BBE62C;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  v10 = v16;
  v9[1] = v15;
  v9[2] = v10;
  v11 = v18;
  v9[3] = v17;
  v9[4] = v11;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EE98, &qword_190DF8AB8) + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_190BBE634;
  v12[3] = v9;
  sub_190BBE63C(&v15, v14);
  return sub_190BBE63C(&v15, v14);
}

void sub_190BBE67C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  *a2 = v3;
}

double sub_190BBE724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  sub_1902188FC(0, &unk_1EAD60670, 0x1E69A81C8);
  v4 = sub_190D57180();
  v5 = sub_190D57180();
  sub_190D50920();
  v3(v4, v5);

  return result;
}

uint64_t sub_190BBE7D8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1909E52A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_190BBE854(v6);
  return sub_190D58370();
}

void sub_190BBE854(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_190D58710();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1902188FC(0, &unk_1EAD60670, 0x1E69A81C8);
        v6 = sub_190D571D0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_190BBEA60(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_190BBE968(0, v2, 1, a1);
  }
}

void sub_190BBE968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 lane];
      v13 = [v11 lane];

      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_190BBEA60(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1909E383C(v8);
    }

    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = v8;
        v8 = (v90 - 1);
        v92 = *&v91[16 * v90];
        v93 = *&v91[16 * v90 + 24];
        sub_190BBF0C8((*a3 + 8 * v92), (*a3 + 8 * *&v91[16 * v90 + 16]), (*a3 + 8 * v93), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v93 < v92)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1909E383C(v91);
        }

        if (v90 - 2 >= *(v91 + 2))
        {
          goto LABEL_116;
        }

        v94 = &v91[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_1909E37B0(v90 - 1);
        v8 = v91;
        v90 = *(v91 + 2);
        if (v90 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v100 = v5;
      v96 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v105 = [v13 lane];
      v103 = [v14 lane];

      v98 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 lane];
        v7 = [v18 lane];

        v21 = v7 >= v20;
        v8 = v19;
        v22 = v21;
        ++v15;
        ++v11;
        if ((((v103 < v105) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v98;
      v5 = v100;
      v23 = v96;
      if (v103 < v105)
      {
        if (v6 < v98)
        {
          goto LABEL_119;
        }

        if (v98 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_190835714(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = sub_190835714((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_59:
          if (v52)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_109;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_113;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_73:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_111;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_80:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        sub_190BBF0C8((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v48 + 32]), (*a3 + 8 * v88), v47);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v88 < v87)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1909E383C(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        sub_1909E37B0(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_104;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_105;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_107;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_110;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v8;
  v99 = v9;
  v101 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v104 = v30;
LABEL_32:
  v106 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 lane];
    v41 = [v39 lane];

    if (v41 >= v40)
    {
LABEL_31:
      v7 = (v106 + 1);
      v32 += 8;
      --v33;
      if ((v106 + 1) != v104)
      {
        goto LABEL_32;
      }

      v7 = v104;
      v9 = v99;
      v5 = v101;
      v8 = v97;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    v21 = __CFADD__(v35++, 1);
    if (v21)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_190BBF0C8(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 lane];
          v35 = [v33 lane];

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 lane];
          v20 = [v18 lane];

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_190BBF3AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D54790();
  *a1 = result & 1;
  return result;
}

unint64_t sub_190BBF43C()
{
  result = qword_1EAD5EEF0;
  if (!qword_1EAD5EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EEF0);
  }

  return result;
}

unint64_t sub_190BBF490()
{
  result = qword_1EAD5EEF8;
  if (!qword_1EAD5EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EEF8);
  }

  return result;
}

uint64_t sub_190BBF4EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_190BBF534(void *a1@<X8>)
{
  v494 = a1;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v517 = *(v515 - 8);
  MEMORY[0x1EEE9AC00](v515);
  v514 = &v488 - v1;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v518 = *(v516 - 8);
  MEMORY[0x1EEE9AC00](v516);
  v513 = &v488 - v2;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v3 = *(v512 - 8);
  MEMORY[0x1EEE9AC00](v512);
  v511 = &v488 - v4;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v5 = *(v510 - 8);
  MEMORY[0x1EEE9AC00](v510);
  v509 = &v488 - v6;
  LOBYTE(v534[0]) = 0;
  sub_190D55FC0();
  v493 = v535;
  v492 = *(&v535 + 1);
  v534[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EEA0, &qword_190DF8AC0);
  sub_190D55FC0();
  v490 = *(&v535 + 1);
  v491 = v535;
  v534[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF20, &qword_190DF8BB8);
  sub_190D55FC0();
  v488 = *(&v535 + 1);
  v489 = v535;
  v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v508 = "com.apple.madrid";
  v8 = sub_190D56ED0();
  v9 = [v7 initWithSuiteName_];

  v500 = v9;
  if (!v9)
  {
    __break(1u);
    goto LABEL_17;
  }

  v499 = 0x8000000190E783D0;
  v519 = type metadata accessor for UserDefaultItem(0);
  v10 = objc_allocWithZone(v519);
  v11 = &v10[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 12) = 256;
  *v11 = 0;
  v12 = &v10[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  v15 = v509;
  v504 = v14;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v16 = *(v5 + 32);
  v506 = v5 + 32;
  v503 = v16;
  v16(&v10[v13], v15, v510);
  v17 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v18 = v511;
  sub_190D538D0();
  v19 = *(v3 + 32);
  v507 = v3 + 32;
  v502 = v19;
  v19(&v10[v17], v18, v512);
  v10[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v20 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v21 = v513;
  sub_190D538D0();
  v23 = v518 + 32;
  v22 = *(v518 + 32);
  v24 = v516;
  v22(&v10[v20], v21, v516);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v26 = v514;
  sub_190D538D0();
  v27 = *(v517 + 32);
  v517 += 32;
  v501 = v27;
  v27(&v10[v25], v26, v515);
  v28 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v22(&v10[v28], v21, v24);
  v29 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v518 = v23;
  v505 = v22;
  v22(&v10[v29], v21, v24);
  v30 = v499;
  v31 = v500;
  *&v10[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v500;
  v32 = &v10[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v32 = 0xD000000000000011;
  v32[1] = v30;
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = 0xD000000000000011;
  v33[4] = v30;
  v34 = &v10[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B21988;
  v34[1] = v33;
  swift_beginAccess();
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 12) = 256;
  swift_beginAccess();
  v35 = *v12;
  v36 = v12[1];
  *v12 = 0;
  v12[1] = 0;
  v37 = v31;
  sub_19022123C(v35, v36);
  v533.receiver = v10;
  v533.super_class = v519;
  v38 = objc_msgSendSuper2(&v533, sel_init);
  v39 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v38 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v40 = v38;
  sub_190B224E8();
  *(v38 + v39) = 1;
  sub_190D52690();
  v41 = sub_190D56ED0();

  [v37 addObserver:v40 forKeyPath:v41 options:1 context:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v500 = swift_allocObject();
  *(v500 + 16) = xmmword_190DF8970;
  v42 = objc_opt_self();
  v498 = v40;
  v499 = v42;
  v43 = [v42 _notifyForSpotlightEventsKey];
  v495 = sub_190D56F10();
  v497 = v44;

  v45 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v46 = sub_190D56ED0();
  v47 = [v45 initWithSuiteName_];

  v496 = v47;
  if (!v47)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v48 = objc_allocWithZone(v519);
  v49 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v49 + 1) = 0;
  *(v49 + 2) = 0;
  *(v49 + 12) = 256;
  *v49 = 0;
  v50 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v50 = 0;
  v50[1] = 0;
  v51 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v52 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v48[v51], v52, v510);
  v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v54 = v511;
  sub_190D538D0();
  v502(&v48[v53], v54, v512);
  v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v56 = v513;
  sub_190D538D0();
  v57 = v516;
  v58 = v505;
  v505(&v48[v55], v56, v516);
  v59 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v60 = v514;
  sub_190D538D0();
  v501(&v48[v59], v60, v515);
  v61 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v58(&v48[v61], v56, v57);
  v62 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v58(&v48[v62], v56, v57);
  v64 = v495;
  v63 = v496;
  *&v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v496;
  v65 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v66 = v497;
  *v65 = v64;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 2) = v63;
  *(v67 + 3) = v64;
  *(v67 + 4) = v66;
  v68 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v68 = sub_190B2426C;
  v68[1] = v67;
  swift_beginAccess();
  *v49 = 0;
  *(v49 + 1) = 0;
  *(v49 + 2) = 0;
  *(v49 + 12) = 256;
  swift_beginAccess();
  v69 = *v50;
  v70 = v50[1];
  *v50 = 0;
  v50[1] = 0;
  v71 = v63;
  sub_190D52690();
  sub_19022123C(v69, v70);
  v532.receiver = v48;
  v532.super_class = v519;
  v72 = objc_msgSendSuper2(&v532, sel_init);
  v73 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v72 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v74 = v72;
  sub_190B224E8();
  *(v72 + v73) = 1;
  sub_190D52690();
  v75 = sub_190D56ED0();

  [v71 addObserver:v74 forKeyPath:v75 options:1 context:0];

  v76 = v499;
  *(v500 + 32) = v74;
  v77 = [v76 _notifyForVerboseSpotlightEventsKey];
  v495 = sub_190D56F10();
  v497 = v78;

  v79 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v80 = sub_190D56ED0();
  v81 = [v79 initWithSuiteName_];

  v496 = v81;
  if (!v81)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v82 = objc_allocWithZone(v519);
  v83 = &v82[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v83 + 1) = 0;
  *(v83 + 2) = 0;
  *(v83 + 12) = 256;
  *v83 = 0;
  v84 = &v82[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v84 = 0;
  v84[1] = 0;
  v85 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v86 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v82[v85], v86, v510);
  v87 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v88 = v511;
  sub_190D538D0();
  v502(&v82[v87], v88, v512);
  v82[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v89 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v90 = v513;
  sub_190D538D0();
  v91 = v516;
  v92 = v505;
  v505(&v82[v89], v90, v516);
  v93 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v94 = v514;
  sub_190D538D0();
  v501(&v82[v93], v94, v515);
  v95 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v92(&v82[v95], v90, v91);
  v96 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v92(&v82[v96], v90, v91);
  v97 = v495;
  v98 = v496;
  *&v82[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v496;
  v99 = &v82[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v100 = v497;
  *v99 = v97;
  v99[1] = v100;
  v101 = swift_allocObject();
  *(v101 + 2) = v98;
  *(v101 + 3) = v97;
  *(v101 + 4) = v100;
  v102 = &v82[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v102 = sub_190B2426C;
  v102[1] = v101;
  swift_beginAccess();
  *v83 = 0;
  *(v83 + 1) = 0;
  *(v83 + 2) = 0;
  *(v83 + 12) = 256;
  swift_beginAccess();
  v103 = *v84;
  v104 = v84[1];
  *v84 = 0;
  v84[1] = 0;
  v105 = v98;
  sub_190D52690();
  sub_19022123C(v103, v104);
  v531.receiver = v82;
  v531.super_class = v519;
  v106 = objc_msgSendSuper2(&v531, sel_init);
  v107 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v106 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v108 = v106;
  sub_190B224E8();
  *(v106 + v107) = 1;
  sub_190D52690();
  v109 = sub_190D56ED0();

  [v105 addObserver:v108 forKeyPath:v109 options:1 context:0];

  v110 = v499;
  *(v500 + 40) = v108;
  v111 = [v110 _spotlightEventsAreTimeSensitiveKey];
  v495 = sub_190D56F10();
  v497 = v112;

  v113 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v114 = sub_190D56ED0();
  v115 = [v113 initWithSuiteName_];

  v496 = v115;
  if (!v115)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v116 = objc_allocWithZone(v519);
  v117 = &v116[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v117 + 1) = 0;
  *(v117 + 2) = 0;
  *(v117 + 12) = 256;
  *v117 = 0;
  v118 = &v116[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v118 = 0;
  v118[1] = 0;
  v119 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v120 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v116[v119], v120, v510);
  v121 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v122 = v511;
  sub_190D538D0();
  v502(&v116[v121], v122, v512);
  v116[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v123 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v124 = v513;
  sub_190D538D0();
  v125 = v516;
  v126 = v505;
  v505(&v116[v123], v124, v516);
  v127 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v128 = v514;
  sub_190D538D0();
  v501(&v116[v127], v128, v515);
  v129 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v126(&v116[v129], v124, v125);
  v130 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v126(&v116[v130], v124, v125);
  v131 = v495;
  v132 = v496;
  *&v116[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v496;
  v133 = &v116[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v134 = v497;
  *v133 = v131;
  v133[1] = v134;
  v135 = swift_allocObject();
  *(v135 + 2) = v132;
  *(v135 + 3) = v131;
  *(v135 + 4) = v134;
  v136 = &v116[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v136 = sub_190B2426C;
  v136[1] = v135;
  swift_beginAccess();
  *v117 = 0;
  *(v117 + 1) = 0;
  *(v117 + 2) = 0;
  *(v117 + 12) = 256;
  swift_beginAccess();
  v137 = *v118;
  v138 = v118[1];
  *v118 = 0;
  v118[1] = 0;
  v139 = v132;
  sub_190D52690();
  sub_19022123C(v137, v138);
  v530.receiver = v116;
  v530.super_class = v519;
  v140 = objc_msgSendSuper2(&v530, sel_init);
  v141 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v140 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v142 = v140;
  sub_190B224E8();
  *(v140 + v141) = 1;
  sub_190D52690();
  v143 = sub_190D56ED0();

  [v139 addObserver:v142 forKeyPath:v143 options:1 context:0];

  v144 = v499;
  *(v500 + 48) = v142;
  v145 = [v144 _reindexSuspendedUntilKey];
  v495 = sub_190D56F10();
  v497 = v146;

  v147 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v148 = sub_190D56ED0();
  v149 = [v147 initWithSuiteName_];

  v496 = v149;
  if (!v149)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v150 = objc_allocWithZone(v519);
  v151 = &v150[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v151 + 1) = 0;
  *(v151 + 2) = 0;
  *(v151 + 12) = 256;
  *v151 = 0;
  v152 = &v150[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v152 = 0;
  v152[1] = 0;
  v153 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v154 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v150[v153], v154, v510);
  v155 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v156 = v511;
  sub_190D538D0();
  v502(&v150[v155], v156, v512);
  v150[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v157 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v158 = v513;
  sub_190D538D0();
  v159 = v516;
  v160 = v505;
  v505(&v150[v157], v158, v516);
  v161 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v162 = v514;
  sub_190D538D0();
  v501(&v150[v161], v162, v515);
  v163 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v160(&v150[v163], v158, v159);
  v164 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v160(&v150[v164], v158, v159);
  v165 = v495;
  v166 = v496;
  *&v150[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v496;
  v167 = &v150[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v168 = v497;
  *v167 = v165;
  v167[1] = v168;
  v169 = swift_allocObject();
  *(v169 + 2) = v166;
  *(v169 + 3) = v165;
  *(v169 + 4) = v168;
  v170 = &v150[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v170 = sub_190B2426C;
  v170[1] = v169;
  swift_beginAccess();
  *v151 = 0;
  *(v151 + 1) = 0;
  *(v151 + 2) = 0;
  *(v151 + 12) = 256;
  swift_beginAccess();
  v171 = *v152;
  v172 = v152[1];
  *v152 = 0;
  v152[1] = 0;
  v173 = v166;
  sub_190D52690();
  sub_19022123C(v171, v172);
  v529.receiver = v150;
  v529.super_class = v519;
  v174 = objc_msgSendSuper2(&v529, sel_init);
  v175 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v174 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v176 = v174;
  sub_190B224E8();
  *(v174 + v175) = 1;
  sub_190D52690();
  v177 = sub_190D56ED0();

  [v173 addObserver:v176 forKeyPath:v177 options:1 context:0];

  v178 = v499;
  *(v500 + 56) = v176;
  v179 = [v178 _reindexSuspensionReasonKey];
  v495 = sub_190D56F10();
  v497 = v180;

  v181 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v182 = sub_190D56ED0();
  v183 = [v181 initWithSuiteName_];

  v496 = v183;
  if (!v183)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v184 = objc_allocWithZone(v519);
  v185 = &v184[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v185 + 1) = 0;
  *(v185 + 2) = 0;
  *(v185 + 12) = 256;
  *v185 = 0;
  v186 = &v184[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v186 = 0;
  v186[1] = 0;
  v187 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v188 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v184[v187], v188, v510);
  v189 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v190 = v511;
  sub_190D538D0();
  v502(&v184[v189], v190, v512);
  v184[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v191 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v192 = v513;
  sub_190D538D0();
  v193 = v516;
  v194 = v505;
  v505(&v184[v191], v192, v516);
  v195 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v196 = v514;
  sub_190D538D0();
  v501(&v184[v195], v196, v515);
  v197 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v194(&v184[v197], v192, v193);
  v198 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v194(&v184[v198], v192, v193);
  v199 = v495;
  v200 = v496;
  *&v184[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v496;
  v201 = &v184[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v202 = v497;
  *v201 = v199;
  v201[1] = v202;
  v203 = swift_allocObject();
  *(v203 + 2) = v200;
  *(v203 + 3) = v199;
  *(v203 + 4) = v202;
  v204 = &v184[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v204 = sub_190B2426C;
  v204[1] = v203;
  swift_beginAccess();
  *v185 = 0;
  *(v185 + 1) = 0;
  *(v185 + 2) = 0;
  *(v185 + 12) = 256;
  swift_beginAccess();
  v205 = *v186;
  v206 = v186[1];
  *v186 = 0;
  v186[1] = 0;
  v207 = v200;
  sub_190D52690();
  sub_19022123C(v205, v206);
  v528.receiver = v184;
  v528.super_class = v519;
  v208 = objc_msgSendSuper2(&v528, sel_init);
  v209 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v208 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v210 = v208;
  sub_190B224E8();
  *(v208 + v209) = 1;
  sub_190D52690();
  v211 = sub_190D56ED0();

  [v207 addObserver:v210 forKeyPath:v211 options:1 context:0];

  v212 = v499;
  v213 = v500;
  v214 = v498;
  *(v500 + 64) = v210;
  *(v213 + 72) = v214;
  v215 = [v212 _chatBatchSizeKey];
  v216 = sub_190D56F10();
  v495 = v217;
  v496 = v216;

  v218 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v219 = sub_190D56ED0();
  v220 = [v218 initWithSuiteName_];

  v497 = v220;
  if (!v220)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v221 = objc_allocWithZone(v519);
  v222 = &v221[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v222 + 1) = 0;
  *(v222 + 2) = 0;
  *(v222 + 12) = 256;
  *v222 = 0;
  v223 = &v221[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v223 = 0;
  v223[1] = 0;
  v224 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v225 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v221[v224], v225, v510);
  v226 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v227 = v511;
  sub_190D538D0();
  v502(&v221[v226], v227, v512);
  v221[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v228 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v229 = v513;
  sub_190D538D0();
  v230 = v516;
  v231 = v505;
  v505(&v221[v228], v229, v516);
  v232 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v233 = v514;
  sub_190D538D0();
  v501(&v221[v232], v233, v515);
  v234 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v231(&v221[v234], v229, v230);
  v235 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v231(&v221[v235], v229, v230);
  v236 = v496;
  v237 = v497;
  *&v221[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v497;
  v238 = &v221[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v239 = v495;
  *v238 = v236;
  v238[1] = v239;
  v240 = &v221[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v240 = sub_190BBCB74;
  v240[1] = 0;
  swift_beginAccess();
  *v222 = 0;
  *(v222 + 1) = 0;
  *(v222 + 2) = 0;
  *(v222 + 12) = 256;
  swift_beginAccess();
  v241 = *v223;
  v242 = v223[1];
  *v223 = 0;
  v223[1] = 0;
  v243 = v237;
  sub_19022123C(v241, v242);
  v527.receiver = v221;
  v527.super_class = v519;
  v244 = objc_msgSendSuper2(&v527, sel_init);
  v245 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v244 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v246 = v244;
  sub_190B224E8();
  *(v244 + v245) = 1;
  sub_190D52690();
  v247 = sub_190D56ED0();

  [v243 addObserver:v246 forKeyPath:v247 options:1 context:0];

  v248 = v499;
  *(v500 + 80) = v246;
  v249 = [v248 _messageSubBatchSizeKey];
  v250 = sub_190D56F10();
  v495 = v251;
  v496 = v250;

  v252 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v253 = sub_190D56ED0();
  v254 = [v252 initWithSuiteName_];

  v497 = v254;
  if (!v254)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v255 = objc_allocWithZone(v519);
  v256 = &v255[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v256 + 1) = 0;
  *(v256 + 2) = 0;
  *(v256 + 12) = 256;
  *v256 = 0;
  v257 = &v255[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v257 = 0;
  v257[1] = 0;
  v258 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v259 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v255[v258], v259, v510);
  v260 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v261 = v511;
  sub_190D538D0();
  v502(&v255[v260], v261, v512);
  v255[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v262 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v263 = v513;
  sub_190D538D0();
  v264 = v516;
  v265 = v505;
  v505(&v255[v262], v263, v516);
  v266 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v267 = v514;
  sub_190D538D0();
  v501(&v255[v266], v267, v515);
  v268 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v265(&v255[v268], v263, v264);
  v269 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v265(&v255[v269], v263, v264);
  v270 = v496;
  v271 = v497;
  *&v255[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v497;
  v272 = &v255[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v273 = v495;
  *v272 = v270;
  v272[1] = v273;
  v274 = &v255[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v274 = sub_190BBCB80;
  v274[1] = 0;
  swift_beginAccess();
  *v256 = 0;
  *(v256 + 1) = 0;
  *(v256 + 2) = 0;
  *(v256 + 12) = 256;
  swift_beginAccess();
  v275 = *v257;
  v276 = v257[1];
  *v257 = 0;
  v257[1] = 0;
  v277 = v271;
  sub_19022123C(v275, v276);
  v526.receiver = v255;
  v526.super_class = v519;
  v278 = objc_msgSendSuper2(&v526, sel_init);
  v279 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v278 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v280 = v278;
  sub_190B224E8();
  *(v278 + v279) = 1;
  sub_190D52690();
  v281 = sub_190D56ED0();

  [v277 addObserver:v280 forKeyPath:v281 options:1 context:0];

  v282 = v499;
  *(v500 + 88) = v280;
  v283 = [v282 _messageRecordBatchSizeKey];
  v284 = sub_190D56F10();
  v495 = v285;
  v496 = v284;

  v286 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v287 = sub_190D56ED0();
  v288 = [v286 initWithSuiteName_];

  v497 = v288;
  if (!v288)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v289 = objc_allocWithZone(v519);
  v290 = &v289[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v290 + 1) = 0;
  *(v290 + 2) = 0;
  *(v290 + 12) = 256;
  *v290 = 0;
  v291 = &v289[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v291 = 0;
  v291[1] = 0;
  v292 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v293 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v289[v292], v293, v510);
  v294 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v295 = v511;
  sub_190D538D0();
  v502(&v289[v294], v295, v512);
  v289[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v296 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v297 = v513;
  sub_190D538D0();
  v298 = v516;
  v299 = v505;
  v505(&v289[v296], v297, v516);
  v300 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v301 = v514;
  sub_190D538D0();
  v501(&v289[v300], v301, v515);
  v302 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v299(&v289[v302], v297, v298);
  v303 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v299(&v289[v303], v297, v298);
  v304 = v496;
  v305 = v497;
  *&v289[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v497;
  v306 = &v289[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v307 = v495;
  *v306 = v304;
  v306[1] = v307;
  v308 = &v289[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v308 = sub_190BBCB8C;
  v308[1] = 0;
  swift_beginAccess();
  *v290 = 0;
  *(v290 + 1) = 0;
  *(v290 + 2) = 0;
  *(v290 + 12) = 256;
  swift_beginAccess();
  v309 = *v291;
  v310 = v291[1];
  *v291 = 0;
  v291[1] = 0;
  v311 = v305;
  sub_19022123C(v309, v310);
  v525.receiver = v289;
  v525.super_class = v519;
  v312 = objc_msgSendSuper2(&v525, sel_init);
  v313 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v312 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v314 = v312;
  sub_190B224E8();
  *(v312 + v313) = 1;
  sub_190D52690();
  v315 = sub_190D56ED0();

  [v311 addObserver:v314 forKeyPath:v315 options:1 context:0];

  v316 = v499;
  *(v500 + 96) = v314;
  v317 = [v316 _reindexFirstBatchSizeKey];
  v318 = sub_190D56F10();
  v495 = v319;
  v496 = v318;

  v320 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v321 = sub_190D56ED0();
  v322 = [v320 initWithSuiteName_];

  v497 = v322;
  if (!v322)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v323 = objc_allocWithZone(v519);
  v324 = &v323[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v324 + 1) = 0;
  *(v324 + 2) = 0;
  *(v324 + 12) = 256;
  *v324 = 0;
  v325 = &v323[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v325 = 0;
  v325[1] = 0;
  v326 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v327 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v323[v326], v327, v510);
  v328 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v329 = v511;
  sub_190D538D0();
  v502(&v323[v328], v329, v512);
  v323[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v330 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v331 = v513;
  sub_190D538D0();
  v332 = v516;
  v333 = v505;
  v505(&v323[v330], v331, v516);
  v334 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v335 = v514;
  sub_190D538D0();
  v501(&v323[v334], v335, v515);
  v336 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v333(&v323[v336], v331, v332);
  v337 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v333(&v323[v337], v331, v332);
  v338 = v496;
  v339 = v497;
  *&v323[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v497;
  v340 = &v323[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v341 = v495;
  *v340 = v338;
  v340[1] = v341;
  v342 = &v323[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v342 = sub_190BBCB98;
  v342[1] = 0;
  swift_beginAccess();
  *v324 = 0;
  *(v324 + 1) = 0;
  *(v324 + 2) = 0;
  *(v324 + 12) = 256;
  swift_beginAccess();
  v343 = *v325;
  v344 = v325[1];
  *v325 = 0;
  v325[1] = 0;
  v345 = v339;
  sub_19022123C(v343, v344);
  v524.receiver = v323;
  v524.super_class = v519;
  v346 = objc_msgSendSuper2(&v524, sel_init);
  v347 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v346 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v348 = v346;
  sub_190B224E8();
  *(v346 + v347) = 1;
  sub_190D52690();
  v349 = sub_190D56ED0();

  [v345 addObserver:v348 forKeyPath:v349 options:1 context:0];

  v350 = v499;
  *(v500 + 104) = v348;
  v351 = [v350 _reindexSupplementalBatchSizeKey];
  v352 = sub_190D56F10();
  v495 = v353;
  v496 = v352;

  v354 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v355 = sub_190D56ED0();
  v356 = [v354 initWithSuiteName_];

  v497 = v356;
  if (!v356)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v357 = objc_allocWithZone(v519);
  v358 = &v357[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v358 + 1) = 0;
  *(v358 + 2) = 0;
  *(v358 + 12) = 256;
  *v358 = 0;
  v359 = &v357[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v359 = 0;
  v359[1] = 0;
  v360 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v361 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v357[v360], v361, v510);
  v362 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v363 = v511;
  sub_190D538D0();
  v502(&v357[v362], v363, v512);
  v357[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v364 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v365 = v513;
  sub_190D538D0();
  v366 = v516;
  v367 = v505;
  v505(&v357[v364], v365, v516);
  v368 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v369 = v514;
  sub_190D538D0();
  v501(&v357[v368], v369, v515);
  v370 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v367(&v357[v370], v365, v366);
  v371 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v367(&v357[v371], v365, v366);
  v372 = v496;
  v373 = v497;
  *&v357[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v497;
  v374 = &v357[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v375 = v495;
  *v374 = v372;
  v374[1] = v375;
  v376 = &v357[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v376 = sub_190BBCBA4;
  v376[1] = 0;
  swift_beginAccess();
  *v358 = 0;
  *(v358 + 1) = 0;
  *(v358 + 2) = 0;
  *(v358 + 12) = 256;
  swift_beginAccess();
  v377 = *v359;
  v378 = v359[1];
  *v359 = 0;
  v359[1] = 0;
  v379 = v373;
  sub_19022123C(v377, v378);
  v523.receiver = v357;
  v523.super_class = v519;
  v380 = objc_msgSendSuper2(&v523, sel_init);
  v381 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v380 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v382 = v380;
  sub_190B224E8();
  *(v380 + v381) = 1;
  sub_190D52690();
  v383 = sub_190D56ED0();

  [v379 addObserver:v382 forKeyPath:v383 options:1 context:0];

  v384 = v499;
  *(v500 + 112) = v382;
  v385 = [v384 _exitOnIndexingTimeoutKey];
  v386 = sub_190D56F10();
  v495 = v387;
  v496 = v386;

  v388 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v389 = sub_190D56ED0();
  v390 = [v388 initWithSuiteName_];

  v497 = v390;
  if (!v390)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v391 = objc_allocWithZone(v519);
  v392 = &v391[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v392 + 1) = 0;
  *(v392 + 2) = 0;
  *(v392 + 12) = 256;
  *v392 = 0;
  v393 = &v391[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v393 = 0;
  v393[1] = 0;
  v394 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v395 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v391[v394], v395, v510);
  v396 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v397 = v511;
  sub_190D538D0();
  v502(&v391[v396], v397, v512);
  v391[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v398 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v399 = v513;
  sub_190D538D0();
  v400 = v516;
  v401 = v505;
  v505(&v391[v398], v399, v516);
  v402 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v403 = v514;
  sub_190D538D0();
  v501(&v391[v402], v403, v515);
  v404 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v401(&v391[v404], v399, v400);
  v405 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v401(&v391[v405], v399, v400);
  v406 = v496;
  v407 = v497;
  *&v391[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v497;
  v408 = &v391[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v409 = v495;
  *v408 = v406;
  v408[1] = v409;
  v410 = &v391[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v410 = sub_190BBCBB0;
  v410[1] = 0;
  swift_beginAccess();
  *v392 = 0;
  *(v392 + 1) = 0;
  *(v392 + 2) = 0;
  *(v392 + 12) = 256;
  swift_beginAccess();
  v411 = *v393;
  v412 = v393[1];
  *v393 = 0;
  v393[1] = 0;
  v413 = v407;
  sub_19022123C(v411, v412);
  v522.receiver = v391;
  v522.super_class = v519;
  v414 = objc_msgSendSuper2(&v522, sel_init);
  v415 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v414 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v416 = v414;
  sub_190B224E8();
  *(v414 + v415) = 1;
  sub_190D52690();
  v417 = sub_190D56ED0();

  [v413 addObserver:v416 forKeyPath:v417 options:1 context:0];

  v418 = v499;
  *(v500 + 120) = v416;
  v419 = [v418 _spotlightTimeoutSecondsKey];
  v420 = sub_190D56F10();
  v495 = v421;
  v496 = v420;

  v422 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v423 = sub_190D56ED0();
  v424 = [v422 initWithSuiteName_];

  v497 = v424;
  if (!v424)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v425 = objc_allocWithZone(v519);
  v426 = &v425[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v426 + 1) = 0;
  *(v426 + 2) = 0;
  *(v426 + 12) = 256;
  *v426 = 0;
  v427 = &v425[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v427 = 0;
  v427[1] = 0;
  v428 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v535 = 0u;
  v536 = 0u;
  sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
  v429 = v509;
  sub_190D538D0();
  sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
  v503(&v425[v428], v429, v510);
  v430 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v535 = 0;
  v431 = v511;
  sub_190D538D0();
  v502(&v425[v430], v431, v512);
  v425[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v432 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v535) = 0;
  v433 = v513;
  sub_190D538D0();
  v434 = v516;
  v435 = v505;
  v505(&v425[v432], v433, v516);
  v436 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v535 = 0;
  *(&v535 + 1) = 0xE000000000000000;
  v437 = v514;
  sub_190D538D0();
  v501(&v425[v436], v437, v515);
  v438 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v435(&v425[v438], v433, v434);
  v439 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v535) = 0;
  sub_190D538D0();
  v435(&v425[v439], v433, v434);
  v440 = v496;
  v441 = v497;
  *&v425[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v497;
  v442 = &v425[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v443 = v495;
  *v442 = v440;
  v442[1] = v443;
  v444 = &v425[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v444 = sub_190BBCBF8;
  v444[1] = 0;
  swift_beginAccess();
  *v426 = 0;
  *(v426 + 1) = 0;
  *(v426 + 2) = 0;
  *(v426 + 12) = 256;
  swift_beginAccess();
  v445 = *v427;
  v446 = v427[1];
  *v427 = 0;
  v427[1] = 0;
  v447 = v441;
  sub_19022123C(v445, v446);
  v521.receiver = v425;
  v521.super_class = v519;
  v448 = objc_msgSendSuper2(&v521, sel_init);
  v449 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v448 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v450 = v448;
  sub_190B224E8();
  *(v448 + v449) = 1;
  sub_190D52690();
  v451 = sub_190D56ED0();

  [v447 addObserver:v450 forKeyPath:v451 options:1 context:0];

  v452 = v499;
  *(v500 + 128) = v450;
  v453 = [v452 _extendedSpotlightTimeoutSecondsKey];
  v499 = sub_190D56F10();
  v497 = v454;

  v455 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v456 = sub_190D56ED0();
  v457 = [v455 initWithSuiteName_];

  v508 = v457;
  if (v457)
  {
    v458 = objc_allocWithZone(v519);
    v459 = &v458[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
    *(v459 + 1) = 0;
    *(v459 + 2) = 0;
    *(v459 + 12) = 256;
    *v459 = 0;
    v460 = &v458[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
    *v460 = 0;
    v460[1] = 0;
    v461 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
    v535 = 0u;
    v536 = 0u;
    sub_19022FD14(&v535, v534, &unk_1EAD551C0, &unk_190DD9790);
    v462 = v509;
    sub_190D538D0();
    sub_19022EEA4(&v535, &unk_1EAD551C0, &unk_190DD9790);
    v503(&v458[v461], v462, v510);
    v463 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
    *&v535 = 0;
    v464 = v511;
    sub_190D538D0();
    v502(&v458[v463], v464, v512);
    v458[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v465 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
    LOBYTE(v535) = 0;
    v466 = v513;
    sub_190D538D0();
    v467 = v516;
    v468 = v505;
    v505(&v458[v465], v466, v516);
    v469 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
    *&v535 = 0;
    *(&v535 + 1) = 0xE000000000000000;
    v470 = v514;
    sub_190D538D0();
    v501(&v458[v469], v470, v515);
    v471 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
    LOBYTE(v535) = 0;
    sub_190D538D0();
    v468(&v458[v471], v466, v467);
    v472 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
    LOBYTE(v535) = 0;
    sub_190D538D0();
    v468(&v458[v472], v466, v467);
    v473 = v508;
    *&v458[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v508;
    v474 = &v458[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
    v475 = v497;
    *v474 = v499;
    v474[1] = v475;
    v476 = &v458[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
    *v476 = sub_190BBCC04;
    v476[1] = 0;
    swift_beginAccess();
    *v459 = 0;
    *(v459 + 1) = 0;
    *(v459 + 2) = 0;
    *(v459 + 12) = 256;
    swift_beginAccess();
    v477 = *v460;
    v478 = v460[1];
    *v460 = 0;
    v460[1] = 0;
    v479 = v473;
    sub_19022123C(v477, v478);
    v520.receiver = v458;
    v520.super_class = v519;
    v480 = objc_msgSendSuper2(&v520, sel_init);
    v481 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
    *(v480 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
    v482 = v480;
    sub_190B224E8();
    *(v480 + v481) = 1;
    sub_190D52690();
    v483 = sub_190D56ED0();

    [v479 addObserver:v482 forKeyPath:v483 options:1 context:0];

    v484 = v500;
    *(v500 + 136) = v482;
    v485 = v494;
    *v494 = v498;
    v485[1] = v484;
    *(v485 + 16) = v493;
    v486 = v491;
    v485[3] = v492;
    v485[4] = v486;
    v487 = v489;
    v485[5] = v490;
    v485[6] = v487;
    v485[7] = v488;
    return;
  }

LABEL_29:
  __break(1u);
}

__n128 sub_190BC2E04@<Q0>(__n128 *a1@<X8>)
{
  sub_190D55FC0();
  sub_190D55FC0();
  sub_190D55FC0();
  sub_190D55FC0();
  sub_190D55FC0();
  sub_190D55FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF10, &unk_190DF8B28);
  sub_190D55FC0();
  sub_190D55FC0();
  sub_190D55FC0();
  result = v3;
  *a1 = v3;
  a1[1] = v3;
  a1[2] = v3;
  a1[3] = v3;
  a1[4] = v3;
  a1[5] = v3;
  a1[6] = v3;
  a1[7] = v3;
  a1[8] = v3;
  return result;
}

uint64_t objectdestroyTm_38()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_190BC30AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_190BC3108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_190BC31A0()
{
  result = qword_1EAD5EF30;
  if (!qword_1EAD5EF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EE90, &qword_190DF8AB0);
    sub_190233640(&qword_1EAD5EF38, &qword_1EAD5EF40, &qword_190DF8C88, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EF30);
  }

  return result;
}

uint64_t objectdestroy_73Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

unint64_t sub_190BC33AC()
{
  result = qword_1EAD5EF68;
  if (!qword_1EAD5EF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EF60, &qword_190DF8D48);
    sub_190233640(&qword_1EAD5EF70, &qword_1EAD5EF20, &qword_190DF8BB8, MEMORY[0x1E69E6318]);
    sub_190233640(&qword_1EAD5EF78, &qword_1EAD5EF20, &qword_190DF8BB8, MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EF68);
  }

  return result;
}

unint64_t sub_190BC3498()
{
  result = qword_1EAD5EF80;
  if (!qword_1EAD5EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EF80);
  }

  return result;
}

unint64_t sub_190BC34EC()
{
  result = qword_1EAD5EF88;
  if (!qword_1EAD5EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EF90, &qword_190DF8D50);
    sub_190BC3570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EF88);
  }

  return result;
}

unint64_t sub_190BC3570()
{
  result = qword_1EAD5EF98;
  if (!qword_1EAD5EF98)
  {
    sub_1902188FC(255, &unk_1EAD60670, 0x1E69A81C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EF98);
  }

  return result;
}

uint64_t sub_190BC35E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190BC369C()
{
  result = qword_1EAD5EFC0;
  if (!qword_1EAD5EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EFC8, &qword_190DF8DC8);
    sub_190233640(&qword_1EAD5EFD0, &qword_1EAD5EFD8, &qword_190DF8DD0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EFC0);
  }

  return result;
}

uint64_t sub_190BC374C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190BC37EC()
{
  result = qword_1EAD5EFF8;
  if (!qword_1EAD5EFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EFF0, &qword_190DF8E30);
    sub_190233640(&qword_1EAD5F000, &qword_1EAD5F008, &qword_190DF8E38, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EFF8);
  }

  return result;
}

uint64_t objectdestroy_92Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_190BC3B0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t CKEmbeddedRichLinkInteractionType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_190BC3C24()
{
  result = qword_1EAD5F030;
  if (!qword_1EAD5F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F030);
  }

  return result;
}

void sub_190BC3C88()
{
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v0 selector:sel_chatUnreadCountDidChange_ name:*MEMORY[0x1E69A58D0] object:0];
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isUnreadCountRefactorEnabled];

  if (v2)
  {
    v3 = *MEMORY[0x1E69A7DD0];
  }

  else
  {
    v3 = *MEMORY[0x1E69A5920];
  }

  [v4 addObserver:v0 selector:sel_chatUnreadCountDidChange_ name:v3 object:0];
  [v4 addObserver:v0 selector:sel_blockListChanged_ name:*MEMORY[0x1E69A6A58] object:0];
  [v4 addObserver:v0 selector:sel_addressBookChanged_ name:*MEMORY[0x1E69A6828] object:0];
  [v4 addObserver:v0 selector:sel_chatIsFilteredChanged_ name:*MEMORY[0x1E69A5740] object:0];
  [v4 addObserver:v0 selector:sel_multiwayStateChanged_ name:*MEMORY[0x1E69A5840] object:0];
  [v4 addObserver:v0 selector:sel_nicknamesDidChange_ name:*MEMORY[0x1E69A59E0] object:0];
  [v4 addObserver:v0 selector:sel_contactPhotosEnabledDidChange_ name:CKConversationListContactPhotosEnabledNotification object:0];
  [v4 addObserver:v0 selector:sel_keyTransparencyChanged_ name:*MEMORY[0x1E69A5810] object:0];
  [v4 addObserver:v0 selector:sel_persistentMenuChanged_ name:*MEMORY[0x1E69A6AC8] object:0];
}

double sub_190BC3ED0()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000016;
  *(v2 + 1) = 0x8000000190E646C0;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F1544;
  v3[1] = 0;
  v9.receiver = v1;
  v9.super_class = v0;
  v4 = objc_msgSendSuper2(&v9, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v4;
  v6 = qword_1EAD46808;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

double sub_190BC4034()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000017;
  *(v2 + 1) = 0x8000000190E646A0;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F13BC;
  v3[1] = 0;
  v9.receiver = v1;
  v9.super_class = v0;
  v4 = objc_msgSendSuper2(&v9, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v4;
  v6 = qword_1EAD46808;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

uint64_t sub_190BC4198(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_190D50FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

double sub_190BC4288()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD00000000000001BLL;
  *(v2 + 1) = 0x8000000190E64720;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F1C74;
  v3[1] = 0;
  v17.receiver = v1;
  v17.super_class = v0;
  v4 = objc_msgSendSuper2(&v17, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v4;
  v6 = qword_1EAD46808;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1EAD46810;
  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = objc_allocWithZone(v0);
  v10 = &v9[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v10 = 0xD000000000000017;
  *(v10 + 1) = 0x8000000190E646A0;
  v11 = &v9[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v11 = sub_1908F13BC;
  v11[1] = 0;
  v16.receiver = v9;
  v16.super_class = v0;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_190DD55F0;
  *(v13 + 32) = v12;
  v14 = v12;
  sub_190A7BEF0(v13, v8);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

double sub_190BC44C0()
{
  if (qword_1EAD46BA8 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9D8F8);
  v1 = sub_190D53020();
  v2 = sub_190D57680();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "Key transparency value changed; asking bar for update.", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  v4 = type metadata accessor for TranscriptNavigationBarChange();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x8000000190E646A0;
  v7 = &v5[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v7 = sub_1908F13BC;
  v7[1] = 0;
  v13.receiver = v5;
  v13.super_class = v4;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v8;
  v10 = qword_1EAD46808;
  v11 = v8;
  if (v10 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

uint64_t sub_190BC46E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v8 = a1;
  sub_190BC4CC4();

  return (*(v5 + 8))(v7, v4);
}

double sub_190BC47C8()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000014;
  *(v2 + 1) = 0x8000000190E64700;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F1AD4;
  v3[1] = 0;
  v17.receiver = v1;
  v17.super_class = v0;
  v4 = objc_msgSendSuper2(&v17, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v4;
  v6 = qword_1EAD46808;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1EAD46810;
  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = objc_allocWithZone(v0);
  v10 = &v9[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v10 = 0xD000000000000017;
  *(v10 + 1) = 0x8000000190E646A0;
  v11 = &v9[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v11 = sub_1908F13BC;
  v11[1] = 0;
  v16.receiver = v9;
  v16.super_class = v0;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_190DD55F0;
  *(v13 + 32) = v12;
  v14 = v12;
  sub_190A7BEF0(v13, v8);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

double sub_190BC49FC()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x8000000190E64660;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F10C0;
  v3[1] = 0;
  v9.receiver = v1;
  v9.super_class = v0;
  v4 = objc_msgSendSuper2(&v9, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v4;
  v6 = qword_1EAD46808;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

double sub_190BC4B60()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD00000000000001BLL;
  *(v2 + 1) = 0x8000000190E64720;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F1C74;
  v3[1] = 0;
  v9.receiver = v1;
  v9.super_class = v0;
  v4 = objc_msgSendSuper2(&v9, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v4;
  v6 = qword_1EAD46808;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

double sub_190BC4CC4()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x8000000190E64620;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F0D48;
  v3[1] = 0;
  v9.receiver = v1;
  v9.super_class = v0;
  v4 = objc_msgSendSuper2(&v9, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v4;
  v6 = qword_1EAD46808;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

void sub_190BC4E18()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultCenter];
  v2 = *MEMORY[0x1E69A6828];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC58E4;
  v64 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_100;
  v6 = _Block_copy(&aBlock);

  v58 = [v1 addObserverForName:v2 object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);

  v7 = [v0 &selRef_createFenceWithType_ + 5];
  v8 = *MEMORY[0x1E69A5718];
  v9 = [v3 mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC591C;
  v64 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_4;
  v11 = _Block_copy(&aBlock);

  v57 = [v7 addObserverForName:v8 object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);

  v12 = [v0 defaultCenter];
  v13 = *MEMORY[0x1E69A5700];
  v14 = [v3 mainQueue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC6908;
  v64 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_8;
  v16 = _Block_copy(&aBlock);

  v56 = [v12 addObserverForName:v13 object:0 queue:v14 usingBlock:v16];
  _Block_release(v16);

  v17 = [v0 defaultCenter];
  v18 = v3;
  v19 = [v3 mainQueue];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC5A94;
  v64 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_12_7;
  v21 = _Block_copy(&aBlock);

  v55 = [v17 addObserverForName:@"CKConversationParticipantsDidChangeNotification" object:0 queue:v19 usingBlock:v21];
  _Block_release(v21);

  v22 = v0;
  v23 = [v0 defaultCenter];
  v24 = *MEMORY[0x1E69A6A58];
  v25 = v18;
  v26 = [v18 mainQueue];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC5DC4;
  v64 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_16;
  v28 = _Block_copy(&aBlock);

  v54 = [v23 addObserverForName:v24 object:0 queue:v26 usingBlock:v28];
  _Block_release(v28);

  v29 = [v22 defaultCenter];
  v30 = *MEMORY[0x1E69A5A08];
  v31 = v25;
  v32 = [v25 mainQueue];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC5F74;
  v64 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_20_1;
  v34 = _Block_copy(&aBlock);

  v53 = [v29 addObserverForName:v30 object:0 queue:v32 usingBlock:v34];
  _Block_release(v34);

  v35 = [v22 defaultCenter];
  v36 = *MEMORY[0x1E69A5810];
  v37 = [v25 mainQueue];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC6110;
  v64 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_24_1;
  v39 = _Block_copy(&aBlock);

  v52 = [v35 addObserverForName:v36 object:0 queue:v37 usingBlock:v39];
  _Block_release(v39);

  v40 = [v22 defaultCenter];
  v41 = *MEMORY[0x1E69A57F8];
  v42 = [v25 mainQueue];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC6118;
  v64 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_28_1;
  v44 = _Block_copy(&aBlock);

  v51 = [v40 addObserverForName:v41 object:0 queue:v42 usingBlock:v44];
  _Block_release(v44);

  v45 = [v22 defaultCenter];
  v46 = [v31 mainQueue];
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_190BC6440;
  v64 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_190D29008;
  v62 = &block_descriptor_32_1;
  v48 = _Block_copy(&aBlock);

  v50 = [v45 addObserverForName:@"CKConversationListFinishedMergingChatsNotification" object:0 queue:v46 usingBlock:v48];
  _Block_release(v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DF8F40;
  *(inited + 32) = v58;
  *(inited + 40) = v57;
  *(inited + 48) = v56;
  *(inited + 56) = v55;
  *(inited + 64) = v54;
  *(inited + 72) = v53;
  *(inited + 80) = v52;
  *(inited + 88) = v51;
  *(inited + 96) = v50;
  swift_beginAccess();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_190CAA084(inited);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_190BC5938(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    v4 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_190DD55F0;
    v6 = objc_opt_self();
    v7 = v3;
    *(v5 + 32) = [v6 descriptorForRequiredKeys];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
    v8 = sub_190D57160();

    v9 = [v7 conversationVisualIdentityWithKeys:v8 requestedNumberOfContactsToFetch:{objc_msgSend(v7, sel_recipientCount)}];

    sub_190D527C0();
  }
}

uint64_t sub_190BC5AC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation;
  v6 = *&v0[OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation];
  v7 = _s7ChatKit22DetailsViewCoordinatorC013communicationC8Contacts3forSay013CommunicationC00iC7ContactVGSo14CKConversationC_tFZ_0(v6);

  if (sub_19084D8D8(v7))
  {
    v8 = sub_190D572E0();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_190D572A0();
    v9 = v1;
    v10 = sub_190D57290();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    sub_190857E08(0, 0, v4, &unk_190DF8F60, v11);
  }

  sub_190D52770();

  v13 = *&v1[v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD55F0;
  v15 = objc_opt_self();
  v16 = v13;
  *(v14 + 32) = [v15 descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
  v17 = sub_190D57160();

  v18 = [v16 conversationVisualIdentityWithKeys:v17 requestedNumberOfContactsToFetch:{objc_msgSend(v16, sel_recipientCount)}];

  sub_190D527C0();
  return sub_190BC6148();
}

double sub_190BC5D28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    _s7ChatKit22DetailsViewCoordinatorC013communicationC8Contacts3forSay013CommunicationC00iC7ContactVGSo14CKConversationC_tFZ_0(v5);

    sub_190D527B0();
  }

  return result;
}

double sub_190BC5DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    v12 = _s7ChatKit22DetailsViewCoordinatorC013communicationC8Contacts3forSay013CommunicationC00iC7ContactVGSo14CKConversationC_tFZ_0(v11);

    if (sub_19084D8D8(v12))
    {
      v13 = sub_190D572E0();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
      sub_190D572A0();
      v14 = v10;
      v15 = sub_190D57290();
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E85E0];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v14;
      sub_190857E08(0, 0, v7, a4, v16);
    }

    sub_190D52770();
  }

  return result;
}

void sub_190BC5FAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_190D52700();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    v9 = sub_190C68D4C();

    (*(v3 + 104))(v5, *MEMORY[0x1E69957D0], v2);
    v10 = (v3 + 8);
    if (v9 == 4)
    {
      sub_190D52720();
    }

    else
    {
      sub_190D52740();
    }

    (*v10)(v5, v2);
  }
}

uint64_t sub_190BC6148()
{
  v1 = v0;
  v2 = sub_190D52700();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation;
  v7 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
  v8 = sub_190A3CFB0();

  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x1E6995790], v2);
  v10 = (v3 + 8);
  if (v8)
  {
    sub_190D52720();
  }

  else
  {
    sub_190D52740();
  }

  v11 = *v10;
  (*v10)(v5, v2);
  v12 = [*(v1 + v6) canRemoveParticipants];
  v9(v5, *MEMORY[0x1E69957C8], v2);
  if (v12)
  {
    sub_190D52720();
  }

  else
  {
    sub_190D52740();
  }

  v11(v5, v2);
  if ([*(v1 + v6) canLeave] && objc_msgSend(*(v1 + v6), sel_supportsMutatingGroupMembers) && (objc_msgSend(*(v1 + v6), sel_hasLeftGroupChat) & 1) == 0)
  {
    v9(v5, *MEMORY[0x1E69957D8], v2);
    sub_190D52720();
  }

  else
  {
    v9(v5, *MEMORY[0x1E69957D8], v2);
    sub_190D52740();
  }

  v11(v5, v2);
  v13 = [*(v1 + v6) hasLeftGroupChat];
  v9(v5, *MEMORY[0x1E69957A0], v2);
  if (v13)
  {
    sub_190D52740();
  }

  else
  {
    sub_190D52720();
  }

  return (v11)(v5, v2);
}

void sub_190BC63E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_190BC6470()
{
  v1 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation;
  v13 = *(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
  v2 = [v13 chat];
  if (!v2)
  {
    if (qword_1EAD51C70 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9DFD0);
    v10 = sub_190D53020();
    v11 = sub_190D576A0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v10, v11, "Current conversation did not have a valid chat. Unable to handle chat merging.", v12, 2u);
      MEMORY[0x193AF7A40](v12, -1, -1);
    }

    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v2 guid];

  if (!v4)
  {
    sub_190D56F10();
    v4 = sub_190D56ED0();
  }

  v5 = [objc_opt_self() sharedConversationList];
  v6 = [v5 conversationForExistingChatWithGUID_];

  if (!v6)
  {
LABEL_12:
    v8 = v13;
    goto LABEL_14;
  }

  sub_190ADD800();
  v7 = sub_190D57D90();

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
  }

LABEL_14:
}

uint64_t sub_190BC6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_190D572A0();
  *(v4 + 24) = sub_190D57290();
  v6 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190BC6700, v6, v5);
}

uint64_t sub_190BC6700()
{

  sub_190BE6A1C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_190BC6764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190BC6668(a1, v4, v5, v6);
}

uint64_t sub_190BC6818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_190BC6668(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ShowAllSearchController(uint64_t a1)
{
  result = qword_1EAD5F038;
  if (!qword_1EAD5F038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190BC6980(uint64_t a1)
{
  sub_1908CB130(319);
  if (v1 <= 0x3F)
  {
    sub_1902188FC(319, &unk_1EAD63090, off_1E72E56C8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_190BC6A5C()
{
  v1 = type metadata accessor for ShowAllSearchController(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = *(v0 + *(v4 + 28));
  if (!CKIsRunningInMacCatalyst())
  {
    goto LABEL_4;
  }

  result = [v5 view];
  if (result)
  {
    v7 = result;
    [result layoutIfNeeded];

LABEL_4:
    v8 = v5;
    v9 = [v8 navigationItem];
    sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
    sub_190BC6EB0(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v11 = swift_allocObject();
    sub_190BC6F14(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
    v12 = sub_190D57DC0();
    [v9 setBackAction_];

    v13 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    return v13;
  }

  __break(1u);
  return result;
}