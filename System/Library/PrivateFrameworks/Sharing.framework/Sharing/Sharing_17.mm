id SFAirDropUserDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SFAirDropUserDefaults.registeredDefaults.getter()
{
  if (qword_1EB3ACAB0 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  v0 = *(v3 + 24);
  os_unfair_lock_lock(v0 + 4);
  sub_1A9902C74(&v3);
  os_unfair_lock_unlock(v0 + 4);
  v1 = v3;

  return v1;
}

Sharing::SFAirDropUserDefaults::Process_optional __swiftcall SFAirDropUserDefaults.Process.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A9977510();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SFAirDropUserDefaults.Process.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64676E6972616873;
  v3 = 0x436C6F72746E6F43;
  if (v1 != 6)
  {
    v3 = 0x73746361746E6F63;
  }

  v4 = 0x7265646E6946;
  if (v1 != 4)
  {
    v4 = 0x6F42676E69727053;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x706F7244726941;
  if (v1 != 2)
  {
    v5 = 0x55706F7244726941;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

void sub_1A98FFDC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x64676E6972616873;
  v5 = 0xED00007265746E65;
  v6 = 0x436C6F72746E6F43;
  if (v2 != 6)
  {
    v6 = 0x73746361746E6F63;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265646E6946;
  if (v2 != 4)
  {
    v8 = 0x6F42676E69727053;
    v7 = 0xEB00000000647261;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x706F7244726941;
  if (v2 != 2)
  {
    v10 = 0x55706F7244726941;
    v9 = 0xE900000000000049;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001A99E24C0;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_1A98FFEE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_1EB3ACAB8 != -1)
  {
    v40 = a6;
    swift_once();
    a6 = v40;
  }

  v12 = qword_1EB3ACAC0;
  v13 = *(a6 + 16);
  v45 = v6;
  if (v13)
  {
    v41 = qword_1EB3ACAC0;
    v42 = a4;
    v43 = a3;
    v46 = MEMORY[0x1E69E7CC0];
    v44 = a6;
    sub_1A97BD628(0, v13, 0);
    v14 = v44;
    v15 = v46;
    v16 = 32;
    v17 = 0x64676E6972616873;
    do
    {
      v18 = *(v14 + v16);
      v19 = 0xE900000000000064;
      if (v18 == 6)
      {
        v20 = 0x436C6F72746E6F43;
      }

      else
      {
        v20 = 0x73746361746E6F63;
      }

      if (v18 == 6)
      {
        v19 = 0xED00007265746E65;
      }

      if (v18 == 4)
      {
        v21 = 0x7265646E6946;
      }

      else
      {
        v21 = 0x6F42676E69727053;
      }

      if (v18 == 4)
      {
        v22 = 0xE600000000000000;
      }

      else
      {
        v22 = 0xEB00000000647261;
      }

      if (*(v14 + v16) <= 5u)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = 0x55706F7244726941;
      if (v18 == 2)
      {
        v23 = 0x706F7244726941;
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xE900000000000049;
      }

      if (*(v14 + v16))
      {
        v25 = 0xD000000000000012;
      }

      else
      {
        v25 = v17;
      }

      if (*(v14 + v16))
      {
        v26 = 0x80000001A99E24C0;
      }

      else
      {
        v26 = 0xE800000000000000;
      }

      if (*(v14 + v16) <= 1u)
      {
        v23 = v25;
        v24 = v26;
      }

      if (*(v14 + v16) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v20;
      }

      if (*(v14 + v16) <= 3u)
      {
        v28 = v24;
      }

      else
      {
        v28 = v19;
      }

      v47 = v15;
      v30 = *(v15 + 16);
      v29 = *(v15 + 24);
      if (v30 >= v29 >> 1)
      {
        v32 = v17;
        sub_1A97BD628((v29 > 1), v30 + 1, 1);
        v17 = v32;
        v14 = v44;
        v15 = v47;
      }

      *(v15 + 16) = v30 + 1;
      v31 = v15 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v28;
      ++v16;
      --v13;
    }

    while (v13);

    v33 = v42;
    a3 = v43;
    v12 = v41;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
    v33 = a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58D8, &qword_1A99A6C00);
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = v33;
  *(v34 + 32) = a5;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 56) = v12;
  *(v34 + 80) = 256;
  *(v34 + 88) = a1;
  *(v34 + 96) = a2;
  *(v34 + 112) = 0xD00000000000001ELL;
  *(v34 + 120) = 0x80000001A99E77A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58E0, &qword_1A99A6C08);
  swift_allocObject();
  v35 = v12;
  result = sub_1A9976570();
  *(v34 + 104) = result;
  *(v34 + 128) = v15;
  if ((a5 & 1) == 0)
  {
    v37 = v45;
    if (a3)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  v37 = v45;
  if (HIDWORD(a3))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a3 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a3 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v34 + 40) = sub_1A99768B0();
  *(v34 + 48) = v38;
  *(v37 + 16) = v34;
  v39 = qword_1EB3ACAB0;

  if (v39 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBAF8(v34);

  return v37;
}

uint64_t sub_1A99003E0(char a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v37 = a5;
    swift_once();
    a5 = v37;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v38 = qword_1EB3ACAC0;
    v39 = a2;
    v40 = v6;
    v41 = a5;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v41;
    v14 = v42;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v43 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v41;
        v14 = v43;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v39;
    v6 = v40;
    v11 = v38;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58C0, &qword_1A99A6BE8);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 82) = a1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58C8, &qword_1A99A6BF0);
  swift_allocObject();
  v33 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v35;
  *(v6 + 16) = v32;
  v36 = qword_1EB3ACAB0;

  if (v36 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBBB8(v32);

  return v6;
}

uint64_t sub_1A99008CC(char a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v37 = a5;
    swift_once();
    a5 = v37;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v38 = qword_1EB3ACAC0;
    v39 = a2;
    v40 = v6;
    v41 = a5;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v41;
    v14 = v42;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v43 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v41;
        v14 = v43;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v39;
    v6 = v40;
    v11 = v38;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B56F8, &qword_1A99A6930);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 82) = a1 & 1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5700, &unk_1A99A6938);
  swift_allocObject();
  v33 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v35;
  *(v6 + 16) = v32;
  v36 = qword_1EB3ACAB0;

  if (v36 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBC78(v32);

  return v6;
}

uint64_t sub_1A9900DBC(char a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v37 = a5;
    swift_once();
    a5 = v37;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v38 = qword_1EB3ACAC0;
    v39 = a2;
    v40 = v6;
    v41 = a5;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v41;
    v14 = v42;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v43 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v41;
        v14 = v43;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v39;
    v6 = v40;
    v11 = v38;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58A8, &qword_1A99A6BD0);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 82) = a1 & 1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58B0, &qword_1A99A6BD8);
  swift_allocObject();
  v33 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v35;
  *(v6 + 16) = v32;
  v36 = qword_1EB3ACAB0;

  if (v36 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBD38(v32);

  return v6;
}

uint64_t sub_1A99012AC(int a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v37 = a5;
    swift_once();
    a5 = v37;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v38 = qword_1EB3ACAC0;
    v39 = a2;
    v40 = v6;
    v41 = a5;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v41;
    v14 = v42;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v43 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v41;
        v14 = v43;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v39;
    v6 = v40;
    v11 = v38;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5898, &qword_1A99A6BC0);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 84) = a1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58A0, &qword_1A99A6BC8);
  swift_allocObject();
  v33 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v35;
  *(v6 + 16) = v32;
  v36 = qword_1EB3ACAB0;

  if (v36 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBDF8(v32);

  return v6;
}

uint64_t sub_1A990179C(char a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB3ACAB8 != -1)
  {
    v37 = a5;
    swift_once();
    a5 = v37;
  }

  v11 = qword_1EB3ACAC0;
  v12 = *(a5 + 16);
  if (v12)
  {
    v38 = qword_1EB3ACAC0;
    v39 = a2;
    v40 = v6;
    v41 = a5;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v12, 0);
    v13 = v41;
    v14 = v42;
    v15 = 32;
    v16 = 0x64676E6972616873;
    do
    {
      v17 = *(v13 + v15);
      v18 = 0xE900000000000064;
      if (v17 == 6)
      {
        v19 = 0x436C6F72746E6F43;
      }

      else
      {
        v19 = 0x73746361746E6F63;
      }

      if (v17 == 6)
      {
        v18 = 0xED00007265746E65;
      }

      if (v17 == 4)
      {
        v20 = 0x7265646E6946;
      }

      else
      {
        v20 = 0x6F42676E69727053;
      }

      if (v17 == 4)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEB00000000647261;
      }

      if (*(v13 + v15) <= 5u)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 0x55706F7244726941;
      if (v17 == 2)
      {
        v22 = 0x706F7244726941;
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE900000000000049;
      }

      if (*(v13 + v15))
      {
        v24 = 0xD000000000000012;
      }

      else
      {
        v24 = v16;
      }

      if (*(v13 + v15))
      {
        v25 = 0x80000001A99E24C0;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (*(v13 + v15) <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      if (*(v13 + v15) <= 3u)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      if (*(v13 + v15) <= 3u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v18;
      }

      v43 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v16;
        sub_1A97BD628((v28 > 1), v29 + 1, 1);
        v16 = v31;
        v13 = v41;
        v14 = v43;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v15;
      --v12;
    }

    while (v12);

    a2 = v39;
    v6 = v40;
    v11 = v38;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5880, &qword_1A99A6BA8);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v11;
  *(v32 + 80) = 256;
  *(v32 + 82) = a1;
  *(v32 + 96) = 0xD00000000000001ELL;
  *(v32 + 104) = 0x80000001A99E77A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5888, &qword_1A99A6BB0);
  swift_allocObject();
  v33 = v11;
  result = sub_1A9976570();
  *(v32 + 88) = result;
  *(v32 + 112) = v14;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a2))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v32 + 40) = sub_1A99768B0();
  *(v32 + 48) = v35;
  *(v6 + 16) = v32;
  v36 = qword_1EB3ACAB0;

  if (v36 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBEB8(v32);

  return v6;
}

void *AirDropUserDefault.init(wrappedValue:_:kill:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = sub_1A9902630(a1, a2, a3, a4, a5);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v8;
}

void (*AirDropUserDefault.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  SFUserDefault.value.getter(v9);
  return sub_1A9901E18;
}

void sub_1A9901E18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1A9902B3C(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1A9902B3C(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AirDropFeatureFlag.__allocating_init(_:kill:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)(a1, a2, v5, a4);
  return v8;
}

uint64_t AirDropFeatureFlag.init(_:kill:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EB3ACAB8 != -1)
  {
    v35 = a4;
    swift_once();
    a4 = v35;
  }

  v9 = qword_1EB3ACAC0;
  v10 = *(a4 + 16);
  if (v10)
  {
    v36 = qword_1EB3ACAC0;
    v37 = a4;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v10, 0);
    v11 = v37;
    v12 = v38;
    v13 = 32;
    v14 = 0x73746361746E6F63;
    do
    {
      v15 = *(v11 + v13);
      v16 = 0xE900000000000064;
      if (v15 == 6)
      {
        v17 = 0x436C6F72746E6F43;
      }

      else
      {
        v17 = v14;
      }

      if (v15 == 6)
      {
        v16 = 0xED00007265746E65;
      }

      if (v15 == 4)
      {
        v18 = 0x7265646E6946;
      }

      else
      {
        v18 = 0x6F42676E69727053;
      }

      if (v15 == 4)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = 0xEB00000000647261;
      }

      if (*(v11 + v13) <= 5u)
      {
        v17 = v18;
        v16 = v19;
      }

      v20 = 0x55706F7244726941;
      if (v15 == 2)
      {
        v20 = 0x706F7244726941;
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xE900000000000049;
      }

      if (*(v11 + v13))
      {
        v22 = 0xD000000000000012;
      }

      else
      {
        v22 = 0x64676E6972616873;
      }

      if (*(v11 + v13))
      {
        v23 = 0x80000001A99E24C0;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (*(v11 + v13) <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      if (*(v11 + v13) <= 3u)
      {
        v24 = v20;
      }

      else
      {
        v24 = v17;
      }

      if (*(v11 + v13) <= 3u)
      {
        v25 = v21;
      }

      else
      {
        v25 = v16;
      }

      v39 = v12;
      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = v14;
        sub_1A97BD628((v26 > 1), v27 + 1, 1);
        v14 = v29;
        v11 = v37;
        v12 = v39;
      }

      *(v12 + 16) = v27 + 1;
      v28 = v12 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      ++v13;
      --v10;
    }

    while (v10);

    v5 = v4;
    v9 = v36;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B56F8, &qword_1A99A6930);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 56) = v9;
  *(v30 + 64) = "Sharing";
  *(v30 + 72) = 7;
  *(v30 + 80) = 2;
  *(v30 + 82) = 0;
  *(v30 + 96) = 0xD00000000000001ELL;
  *(v30 + 104) = 0x80000001A99E77A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5700, &unk_1A99A6938);
  swift_allocObject();
  v31 = v9;
  result = sub_1A9976570();
  *(v30 + 88) = result;
  *(v30 + 112) = v12;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_50;
  }

  if (HIDWORD(a1))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_46;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  if (a1 >> 16 > 0x10)
  {
    goto LABEL_51;
  }

LABEL_46:
  *(v30 + 40) = sub_1A99768B0();
  *(v30 + 48) = v33;
  *(v5 + 16) = v30;
  v34 = qword_1EB3ACAB0;

  if (v34 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A98FBC78(v30);

  return v5;
}

void sub_1A9902444(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*a2 + 16) + 56);
  if (v2)
  {
    v3 = *a1;
    v4 = v2;
    v5 = sub_1A99767E0();
    [v4 setBool:v3 forKey:v5];
  }
}

uint64_t (*AirDropFeatureFlag.wrappedValue.modify(uint64_t a1))()
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A9902524;
}

void sub_1A9902524(void *a1)
{
  v2 = *a1;
  v1 = (a1 + 1);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = *v1;
    v6 = v3;
    v5 = sub_1A99767E0();
    [v6 setBool:v4 forKey:v5];
  }
}

uint64_t AirDropFeatureFlag.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1A9902630(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = v5;
  v54 = a4;
  v10 = *v5;
  v11 = *(v10 + 80);
  v12 = sub_1A99770A0();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v46 - v14;
  v16 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v46 - v17;
  if (qword_1EB3ACAB8 != -1)
  {
    swift_once();
  }

  v52 = qword_1EB3ACAC0;
  (*(v16 + 16))();
  v18 = *(v16 + 56);
  v53 = v15;
  v18(v15, 1, 1, v11);
  v19 = *(a5 + 16);
  if (v19)
  {
    v46 = v10;
    v47 = v11;
    v48 = a2;
    v49 = a3;
    v50 = v6;
    v56 = MEMORY[0x1E69E7CC0];
    v51 = a5;
    sub_1A97BD628(0, v19, 0);
    v20 = v51;
    v21 = v56;
    v22 = 32;
    v23 = 0x73746361746E6F63;
    do
    {
      v24 = *(v20 + v22);
      v25 = 0xE900000000000064;
      if (v24 == 6)
      {
        v26 = 0x436C6F72746E6F43;
      }

      else
      {
        v26 = v23;
      }

      if (v24 == 6)
      {
        v25 = 0xED00007265746E65;
      }

      if (v24 == 4)
      {
        v27 = 0x7265646E6946;
      }

      else
      {
        v27 = 0x6F42676E69727053;
      }

      if (v24 == 4)
      {
        v28 = 0xE600000000000000;
      }

      else
      {
        v28 = 0xEB00000000647261;
      }

      if (*(v20 + v22) <= 5u)
      {
        v26 = v27;
        v25 = v28;
      }

      v29 = 0x55706F7244726941;
      if (v24 == 2)
      {
        v29 = 0x706F7244726941;
        v30 = 0xE700000000000000;
      }

      else
      {
        v30 = 0xE900000000000049;
      }

      if (*(v20 + v22))
      {
        v31 = 0xD000000000000012;
      }

      else
      {
        v31 = 0x64676E6972616873;
      }

      if (*(v20 + v22))
      {
        v32 = 0x80000001A99E24C0;
      }

      else
      {
        v32 = 0xE800000000000000;
      }

      if (*(v20 + v22) <= 1u)
      {
        v29 = v31;
        v30 = v32;
      }

      if (*(v20 + v22) <= 3u)
      {
        v33 = v29;
      }

      else
      {
        v33 = v26;
      }

      if (*(v20 + v22) <= 3u)
      {
        v34 = v30;
      }

      else
      {
        v34 = v25;
      }

      v56 = v21;
      v36 = *(v21 + 16);
      v35 = *(v21 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = v23;
        sub_1A97BD628((v35 > 1), v36 + 1, 1);
        v23 = v38;
        v20 = v51;
        v21 = v56;
      }

      *(v21 + 16) = v36 + 1;
      v37 = v21 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      ++v22;
      --v19;
    }

    while (v19);

    a3 = v49;
    v6 = v50;
    v40 = v54;
    v11 = v47;
    a2 = v48;
    v10 = v46;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
    v40 = v54;
  }

  type metadata accessor for SFUserDefault(0, v11, *(v10 + 88), v39);
  v41 = v52;
  v42 = v52;
  v43 = SFUserDefault.__allocating_init(userDefaults:key:featureFlagsDomain:defaultValue:prefsChangedLibNotifyName:override:processesToKill:)(v41, a2, a3, v40, 0, 0, 256, v55, 0xD00000000000001ELL, 0x80000001A99E77A0, v53, v21);
  v6[2] = v43;
  v44 = qword_1EB3ACAB0;

  if (v44 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  sub_1A97A8548(v43);

  return v6;
}

uint64_t sub_1A9902B3C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return SFUserDefault.value.setter(v2);
}

unint64_t sub_1A9902BFC()
{
  result = qword_1EB3B5808;
  if (!qword_1EB3B5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5808);
  }

  return result;
}

void sub_1A9902C90()
{
  v1 = v0;
  if (qword_1EB3ACAB8 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (!qword_1EB3ACAC0)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v16 = 0xD000000000000037;
      v16[1] = 0x80000001A99E7E80;
      v16[2] = 0xD000000000000053;
      v16[3] = 0x80000001A99E7EC0;
      v16[4] = 346;
      v16[10] = 0x2000000000000000;
      swift_willThrow();
      return;
    }

    v2 = qword_1EB3ACAB0;
    v54 = qword_1EB3ACAC0;
    if (v2 != -1)
    {
      swift_once();
    }

    sub_1A9977AF0();
    v3 = *(v58 + 24);
    os_unfair_lock_lock(v3 + 4);
    sub_1A9903798(&v58);
    if (v1)
    {
      break;
    }

    os_unfair_lock_unlock(v3 + 4);
    v4 = v58;

    v5 = *(v4 + 16);
    v60 = 0;
    if (v5)
    {
      v56 = MEMORY[0x1E69E7CC0];
      sub_1A97BDCA8(0, v5, 0);
      v6 = v56;
      v7 = v5 - 1;
      v55 = v4;
      for (i = v4 + 96; ; i += 72)
      {
        v9 = *(i - 8);

        v9(&v58, v10);

        v56 = v6;
        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          sub_1A97BDCA8((v11 > 1), v12 + 1, 1);
          v6 = v56;
        }

        v6[2] = v12 + 1;
        v13 = &v6[6 * v12];
        v14 = v58;
        v15 = v59[1];
        v13[3] = v59[0];
        v13[4] = v15;
        v13[2] = v14;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v17 = v6[2];
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      *&v58 = MEMORY[0x1E69E7CC0];
      sub_1A97BD628(0, v17, 0);
      v19 = v58;
      v20 = v6 + 5;
      do
      {
        v22 = *(v20 - 1);
        v21 = *v20;
        *&v58 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);

        if (v24 >= v23 >> 1)
        {
          sub_1A97BD628((v23 > 1), v24 + 1, 1);
          v19 = v58;
        }

        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v21;
        v20 += 6;
        --v17;
      }

      while (v17);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v26 = [v54 dictionaryRepresentation];
    v1 = sub_1A9976700();

    v27 = v1 + 64;
    v28 = 1 << *(v1 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v1 + 64);
    v31 = (v28 + 63) >> 6;
    v55 = v1;

    v32 = 0;
    v53 = v18;
    while (v30)
    {
      v33 = v32;
LABEL_30:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = v34 | (v33 << 6);
      v36 = (*(v55 + 48) + 16 * v35);
      v1 = *v36;
      v37 = v36[1];
      v38 = sub_1A97AF7EC(*(v55 + 56) + 32 * v35, v59);
      *&v58 = v1;
      *(&v58 + 1) = v37;
      v56 = v1;
      v57 = v37;
      MEMORY[0x1EEE9AC00](v38);
      v49[2] = &v56;

      v39 = v60;
      v40 = sub_1A9824824(sub_1A97B2400, v49, v19);
      v60 = v39;
      if (v40)
      {
        sub_1A97B06FC(&v58, &qword_1EB3B5878, &qword_1A99A6BA0);
        v32 = v33;
      }

      else
      {
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1A9977400();
        v41 = v56;
        v52 = v57;

        sub_1A97B06FC(&v58, &qword_1EB3B5878, &qword_1A99A6BA0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1A97AEE98(0, *(v53 + 2) + 1, 1, v53);
        }

        v43 = *(v53 + 2);
        v42 = *(v53 + 3);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v50 = *(v53 + 2);
          v51 = v43 + 1;
          v48 = sub_1A97AEE98((v42 > 1), v43 + 1, 1, v53);
          v43 = v50;
          v44 = v51;
          v53 = v48;
        }

        v45 = v53;
        *(v53 + 2) = v44;
        v46 = &v45[48 * v43];
        *(v46 + 4) = v1;
        *(v46 + 5) = v37;
        v47 = v52;
        *(v46 + 6) = v41;
        *(v46 + 7) = v47;
        *(v46 + 16) = 16777472;
        v46[68] = 0;
        LOBYTE(v47) = BYTE2(v56);
        *(v46 + 69) = v56;
        v46[71] = v47;
        *(v46 + 9) = MEMORY[0x1E69E7CC0];
        v32 = v33;
      }
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {

        *&v58 = v6;
        sub_1A98FC0AC(v53);

        return;
      }

      v30 = *(v27 + 8 * v33);
      ++v32;
      if (v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  os_unfair_lock_unlock(v3 + 4);
  __break(1u);
}

unint64_t _s7Sharing21SFAirDropUserDefaultsC11descriptionSSvg_0()
{
  sub_1A9902C90();
  v1 = *(v0 + 16);
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v1, 0);
    v2 = 32;
    v3 = v15;
    do
    {
      v4 = SFUserDefaultDescription.description.getter();
      v16 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        sub_1A97BD628((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v9;
        v3 = v16;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
      v2 += 48;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v11 = sub_1A9976760();
  v13 = v12;

  sub_1A99772B0();

  MEMORY[0x1AC5895B0](v11, v13);

  return 0xD00000000000001CLL;
}

unint64_t sub_1A99034D4()
{
  result = qword_1EB3B5868;
  if (!qword_1EB3B5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5868);
  }

  return result;
}

unint64_t sub_1A9903664()
{
  result = qword_1EB3B5870;
  if (!qword_1EB3B5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5870);
  }

  return result;
}

uint64_t sub_1A990380C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1A9903864@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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

uint64_t SFClientIdentity.init(addingUntrustedProcessName:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SFClientIdentity(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(a3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A9903B30(a3);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
    v25 = *&v10[v11[12]];
    v12 = &v10[v11[16]];
    v13 = *v12;
    v23 = *(v12 + 1);
    v24 = v13;

    v14 = v11[24];
    v15 = *&v10[v14];
    v16 = v11[12];
    v17 = (a4 + v11[16]);
    v18 = (a4 + v11[20]);
    v19 = sub_1A99762C0();
    (*(*(v19 - 8) + 32))(a4, v10, v19);
    *(a4 + v16) = v25;
    v20 = v23;
    *v17 = v24;
    v17[1] = v20;
    *v18 = a1;
    v18[1] = a2;
    *(a4 + v14) = v15;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_1A9903ACC(a3, a4);
    return sub_1A9903B30(v10);
  }
}

uint64_t sub_1A9903A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFClientIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9903ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFClientIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9903B30(uint64_t a1)
{
  v2 = type metadata accessor for SFClientIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFClientIdentity.init(xpcConnection:accessLevel:)@<X0>(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
  v7 = v6[12];
  v8 = (a3 + v6[16]);
  v9 = (a3 + v6[20]);
  v10 = v6[24];
  sub_1A99762B0();
  *(a3 + v7) = [a1 processIdentifier];
  v11 = sub_1A986F808();
  v13 = v12;

  *v8 = v11;
  v8[1] = v13;
  *v9 = 0;
  v9[1] = 0;
  *(a3 + v10) = v5;
  type metadata accessor for SFClientIdentity(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SFClientIdentity.connectionID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFClientIdentity(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);

    v7 = sub_1A99762C0();
    v8 = *(v7 - 8);
    (*(v8 + 32))(a1, v6, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    sub_1A9903B30(v6);
    v10 = sub_1A99762C0();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

unint64_t SFClientIdentity.bundleIdentifier.getter()
{
  v1 = type metadata accessor for SFClientIdentity(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A9903A68(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40) + 64));

      v6 = sub_1A99762C0();
      (*(*(v6 - 8) + 8))(v3, v6);
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v9 = *v3;
    v8 = v3[1];
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1A99772B0();

    v10 = 0xD000000000000018;
    v11 = 0x80000001A99E7F80;
    MEMORY[0x1AC5895B0](v9, v8);

    return v10;
  }
}

uint64_t SFClientIdentity.untrustedProcessName.getter()
{
  v1 = type metadata accessor for SFClientIdentity(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1A9903B30(v3);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v8 = [objc_opt_self() processInfo];
    v9 = [v8 processName];

    v6 = sub_1A9976820();
    return v6;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);

  v6 = *&v3[*(v5 + 80)];
  v7 = sub_1A99762C0();
  (*(*(v7 - 8) + 8))(v3, v7);
  return v6;
}

id SFClientIdentity.pid.getter()
{
  v1 = type metadata accessor for SFClientIdentity(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1A9903B30(v3);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v7 = [objc_opt_self() processInfo];
    v5 = [v7 processIdentifier];

    return v5;
  }

  v5 = *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40) + 48)];

  v6 = sub_1A99762C0();
  (*(*(v6 - 8) + 8))(v3, v6);
  return v5;
}

uint64_t SFClientIdentity.shortDescription.getter()
{
  v0 = SFClientIdentity.bundleIdentifier.getter();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = SFClientIdentity.untrustedProcessName.getter();
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v0 = 0x296C696E28;
      v2 = 0xE500000000000000;
    }
  }

  MEMORY[0x1AC5895B0](v0, v2);

  MEMORY[0x1AC5895B0](58, 0xE100000000000000);
  SFClientIdentity.pid.getter();
  v4 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v4);

  return 0;
}

uint64_t SFClientIdentity.accessLevel.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFClientIdentity(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9903A68(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);

      *a1 = *&v6[*(v8 + 96)];
      v9 = sub_1A99762C0();
      return (*(*(v9 - 8) + 8))(v6, v9);
    }
  }

  else
  {
    result = sub_1A9903B30(v6);
  }

  *a1 = 3;
  return result;
}

unint64_t SFClientIdentity.description.getter()
{
  v1 = type metadata accessor for SFClientIdentity(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A99762C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1A99772B0();

  v18 = 0xD000000000000012;
  v19 = 0x80000001A99E7FA0;
  v8 = SFClientIdentity.bundleIdentifier.getter();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = SFClientIdentity.untrustedProcessName.getter();
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v8 = 0x296C696E28;
      v10 = 0xE500000000000000;
    }
  }

  MEMORY[0x1AC5895B0](v8, v10);

  MEMORY[0x1AC5895B0](58, 0xE100000000000000);
  v17[3] = SFClientIdentity.pid.getter();
  v12 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v12);

  MEMORY[0x1AC5895B0](0x7463656E6E6F6320, 0xEE003A44496E6F69);
  sub_1A9903A68(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);

    (*(v5 + 32))(v7, v3, v4);
    v13 = _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = 0x296C696E28;
    sub_1A9903B30(v3);
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1AC5895B0](v13, v15);

  MEMORY[0x1AC5895B0](62, 0xE100000000000000);
  return v18;
}

uint64_t sub_1A9904704()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B58F0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B58F0);
  if (qword_1ED717D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED717D48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_DWORD *SFClientAccessLevel.verifyHasAccess(to:)(_DWORD *result)
{
  if ((*result & ~*v1) != 0)
  {
    if (qword_1EB3B0B68 != -1)
    {
      swift_once();
    }

    v2 = sub_1A99764A0();
    __swift_project_value_buffer(v2, qword_1EB3B58F0);
    v3 = sub_1A9976480();
    v4 = sub_1A9976F70();
    v5 = os_log_type_enabled(v3, v4);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315650;
      v23 = 91;
      v24 = 0xE100000000000000;
      v25 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
      sub_1A97BD6AC();
      v9 = sub_1A9976760();
      MEMORY[0x1AC5895B0](v9);

      MEMORY[0x1AC5895B0](93, 0xE100000000000000);
      v10 = sub_1A97AF148(91, 0xE100000000000000, &v21);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v23 = 91;
      v24 = 0xE100000000000000;
      v25 = MEMORY[0x1E69E7CC0];
      v11 = sub_1A9976760();
      MEMORY[0x1AC5895B0](v11);

      MEMORY[0x1AC5895B0](93, 0xE100000000000000);
      v12 = sub_1A97AF148(v23, v24, &v21);

      *(v7 + 14) = v12;
      v6 = MEMORY[0x1E69E7CC0];
      *(v7 + 22) = 2080;
      v23 = 91;
      v24 = 0xE100000000000000;
      v25 = v6;
      v13 = sub_1A9976760();
      MEMORY[0x1AC5895B0](v13);

      MEMORY[0x1AC5895B0](93, 0xE100000000000000);
      v14 = sub_1A97AF148(v23, v24, &v21);

      *(v7 + 24) = v14;
      _os_log_impl(&dword_1A9662000, v3, v4, "Operation denied {description: %s, requestedAccessLevel: %s, currentAccessLevel: %s}", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC58D2C0](v8, -1, -1);
      MEMORY[0x1AC58D2C0](v7, -1, -1);
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1A99772B0();
    MEMORY[0x1AC5895B0](0xD00000000000001FLL, 0x80000001A99E7FC0);
    v21 = 91;
    v22 = 0xE100000000000000;
    v25 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    sub_1A97BD6AC();
    v15 = sub_1A9976760();
    MEMORY[0x1AC5895B0](v15);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    MEMORY[0x1AC5895B0](v21, v22);

    MEMORY[0x1AC5895B0](0xD000000000000018, 0x80000001A99E7FE0);
    v21 = 91;
    v22 = 0xE100000000000000;
    v25 = v6;
    v16 = sub_1A9976760();
    MEMORY[0x1AC5895B0](v16);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    MEMORY[0x1AC5895B0](v21, v22);

    MEMORY[0x1AC5895B0](0xD000000000000016, 0x80000001A99E8000);
    v21 = 91;
    v22 = 0xE100000000000000;
    v25 = v6;
    v17 = sub_1A9976760();
    MEMORY[0x1AC5895B0](v17);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    MEMORY[0x1AC5895B0](v21, v22);

    MEMORY[0x1AC5895B0](125, 0xE100000000000000);
    v18 = v23;
    v19 = v24;
    sub_1A97BCDE0();
    swift_allocError();
    *v20 = v18;
    v20[1] = v19;
    v20[2] = 0xD000000000000052;
    v20[3] = 0x80000001A99E8020;
    v20[4] = 136;
    v20[10] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t SFClientAccessLevel.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v0 = sub_1A9976760();
  MEMORY[0x1AC5895B0](v0);

  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return 91;
}

uint64_t SFClientAccessLevel.init(xpcConnection:)@<X0>(void *a1@<X0>, _BOOL4 *a2@<X8>)
{
  v4 = sub_1A99767E0();
  v5 = [a1 valueForEntitlement_];

  if (v5)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  v6 = *(&v16 + 1);
  v7 = sub_1A99767E0();
  v8 = [a1 valueForEntitlement_];

  if (v8)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  v9 = *(&v16 + 1) != 0;
  v15 = v13;
  v16 = v14;
  if (v6)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  if (*(&v14 + 1))
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  sub_1A9812E28(&v15);
  result = sub_1A9812E28(v17);
  *a2 = v11;
  return result;
}

uint64_t sub_1A9904F18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v0 = sub_1A9976760();
  MEMORY[0x1AC5895B0](v0);

  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_1A9904FB4()
{
  result = qword_1EB3B5908;
  if (!qword_1EB3B5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5908);
  }

  return result;
}

unint64_t sub_1A990500C()
{
  result = qword_1EB3B5910;
  if (!qword_1EB3B5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5910);
  }

  return result;
}

unint64_t sub_1A9905064()
{
  result = qword_1EB3AC4C8;
  if (!qword_1EB3AC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC4C8);
  }

  return result;
}

unint64_t sub_1A99050BC()
{
  result = qword_1EB3AC4C0;
  if (!qword_1EB3AC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC4C0);
  }

  return result;
}

void sub_1A9905110(uint64_t a1)
{
  sub_1A9905184();
  if (v1 <= 0x3F)
  {
    sub_1A99051B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1A9905184()
{
  result = qword_1EB3AC928;
  if (!qword_1EB3AC928)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB3AC928);
  }

  return result;
}

void sub_1A99051B4(uint64_t a1)
{
  if (!qword_1EB3ACCD8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A99762C0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1BB0, &qword_1A9992DD8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3ACCD8);
    }
  }
}

uint64_t sub_1A99052F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1A9976420();
  __swift_allocate_value_buffer(v3, qword_1EB3EAFB8);
  __swift_project_value_buffer(v3, qword_1EB3EAFB8);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1A99763C0();
}

uint64_t sub_1A99053F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1A99777E0() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1A99777E0() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A99054C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1A990A500(&qword_1EB3B4D50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v21 = sub_1A99767A0();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9905724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v63[-v13];
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    return 0;
  }

  if (v15 && a1 != a2)
  {
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v65 = *(v12 + 72);
    v66 = v5;
    v67 = v4;
    do
    {
      sub_1A97C13A4(v17, v14, v5, v4);
      sub_1A97C13A4(v18, v11, v5, v4);
      v25 = *v14 == *v11 && *(v14 + 1) == *(v11 + 1);
      if (!v25 && (sub_1A99777E0() & 1) == 0)
      {
LABEL_41:
        sub_1A97B06FC(v11, v5, v4);
        sub_1A97B06FC(v14, v5, v4);
        return 0;
      }

      v27 = *(v14 + 2);
      v26 = *(v14 + 3);
      v29 = *(v14 + 4);
      v28 = *(v14 + 5);
      v30 = v14[48];
      v32 = *(v11 + 2);
      v31 = *(v11 + 3);
      v34 = *(v11 + 4);
      v33 = *(v11 + 5);
      v35 = v11[48];
      v71[0] = v27;
      v71[1] = v26;
      v69 = v28;
      v70 = v29;
      v71[2] = v29;
      v71[3] = v28;
      v72 = v30;
      v73 = v32;
      v74 = v31;
      v75 = v34;
      v76 = v33;
      v77 = v35;
      if (v30)
      {
        if (v30 == 1)
        {
          if (v35 != 1)
          {
            v54 = v26;
            v55 = v34;
            v56 = v28;
            sub_1A97DC908(v32, v31, v55, v33, v35);
            v49 = v27;
            v50 = v54;
            v51 = v70;
            v52 = v56;
            v53 = 1;
            goto LABEL_40;
          }

          if (v27 == v32 && v26 == v31)
          {
            v19 = v26;
            sub_1A97DC908(v27, v26, v34, v33, 1u);
            v20 = v27;
            v21 = v19;
            v23 = v69;
            v22 = v70;
            v24 = 1;
LABEL_6:
            sub_1A97DC908(v20, v21, v22, v23, v24);
            sub_1A97B06FC(v71, &qword_1EB3B59F8, &qword_1A99A7470);
            v5 = v66;
            v4 = v67;
            goto LABEL_7;
          }

          v68 = v26;
          v64 = sub_1A99777E0();
          sub_1A97DC908(v32, v31, v34, v33, 1u);
          v36 = v27;
          v37 = v68;
          v38 = v69;
          v39 = v70;
          v40 = 1;
        }

        else
        {
          if (v35 != 2)
          {
            v57 = v32;
            v58 = v26;
            v59 = v31;
            v60 = v34;
            v61 = v28;
            v62 = v33;
            goto LABEL_39;
          }

          v68 = v26;
          if (v27 != v32 || v26 != v31)
          {
            v42 = sub_1A99777E0();
            v28 = v69;
            if ((v42 & 1) == 0)
            {
              v57 = v32;
              v58 = v68;
              v59 = v31;
              v60 = v34;
              v61 = v69;
              v62 = v33;
              LOBYTE(v35) = 2;
LABEL_39:
              sub_1A97DC908(v57, v59, v60, v62, v35);
              v49 = v27;
              v50 = v58;
              v51 = v70;
              v52 = v61;
              v53 = 2;
LABEL_40:
              sub_1A97DC908(v49, v50, v51, v52, v53);
              sub_1A97B06FC(v71, &qword_1EB3B59F8, &qword_1A99A7470);
              v5 = v66;
              v4 = v67;
              goto LABEL_41;
            }
          }

          if (v70 == v34 && v28 == v33)
          {
            v43 = v70;
            v44 = v28;
            sub_1A97DC908(v32, v31, v70, v28, 2u);
            v20 = v27;
            v21 = v68;
            v22 = v43;
            v23 = v44;
            v24 = 2;
            goto LABEL_6;
          }

          v64 = sub_1A99777E0();
          sub_1A97DC908(v32, v31, v34, v33, 2u);
          v36 = v27;
          v37 = v68;
          v38 = v69;
          v39 = v70;
          v40 = 2;
        }
      }

      else
      {
        if (v35)
        {
          v46 = v26;
          v47 = v34;
          v48 = v28;
          sub_1A97DC908(v32, v31, v47, v33, v35);
          v49 = v27;
          v50 = v46;
          v51 = v70;
          v52 = v48;
          v53 = 0;
          goto LABEL_40;
        }

        if (v27 == v32 && v26 == v31)
        {
          v41 = v26;
          sub_1A97DC908(v27, v26, v34, v33, 0);
          v20 = v27;
          v21 = v41;
          v23 = v69;
          v22 = v70;
          v24 = 0;
          goto LABEL_6;
        }

        v68 = v26;
        v64 = sub_1A99777E0();
        sub_1A97DC908(v32, v31, v34, v33, 0);
        v36 = v27;
        v37 = v68;
        v38 = v69;
        v39 = v70;
        v40 = 0;
      }

      sub_1A97DC908(v36, v37, v39, v38, v40);
      sub_1A97B06FC(v71, &qword_1EB3B59F8, &qword_1A99A7470);
      v5 = v66;
      v4 = v67;
      if ((v64 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_7:
      sub_1A97B06FC(v11, v5, v4);
      sub_1A97B06FC(v14, v5, v4);
      v18 += v65;
      v17 += v65;
      --v15;
    }

    while (v15);
  }

  return 1;
}

uint64_t sub_1A9905C9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_1A97C13A4(v19, v16, a3, a4);
        sub_1A97C13A4(v20, v13, a3, a4);
        v22 = a5(v16, v13);
        sub_1A97B06FC(v13, a3, a4);
        sub_1A97B06FC(v16, a3, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1A9905E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v85 = &v73 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A08, &qword_1A99A7480);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A00, &qword_1A99A7478);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A10, &qword_1A99A7488);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v73 - v23;
  v25 = &v73 + *(v22 + 56) - v23;
  sub_1A97C13A4(a1, &v73 - v23, &qword_1EB3B5A00, &qword_1A99A7478);
  sub_1A97C13A4(a2, v25, &qword_1EB3B5A00, &qword_1A99A7478);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97C13A4(v24, v20, &qword_1EB3B5A00, &qword_1A99A7478);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A20, &qword_1A99A7498) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A97D8380(v25, v14, &qword_1EB3B5A08, &qword_1A99A7480);
      v53 = v87;
      v54 = *(v86 + 32);
      v55 = v83;
      v54(v83, &v20[v50], v87);
      v56 = v82;
      v54(v82, &v25[v50], v53);
      if (*v20 == *v14 && *(v20 + 1) == *(v14 + 1) || (sub_1A99777E0() & 1) != 0)
      {
        v57 = *(v20 + 3);
        v58 = *(v20 + 4);
        v59 = *(v20 + 5);
        v60 = v20[48];
        v93 = *(v20 + 2);
        v94 = v57;
        v95 = v58;
        v96 = v59;
        v97 = v60;
        v62 = *(v14 + 3);
        v63 = *(v14 + 4);
        v64 = *(v14 + 5);
        v65 = v14[48];
        v88 = *(v14 + 2);
        v61 = v88;
        v89 = v62;
        v90 = v63;
        v91 = v64;
        v92 = v65;
        sub_1A97DC908(v93, v57, v58, v59, v60);
        sub_1A97DC908(v61, v62, v63, v64, v65);
        LOBYTE(v61) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v93, &v88);
        sub_1A97DC96C(v88, v89, v90, v91, v92);
        sub_1A97DC96C(v93, v94, v95, v96, v97);
        sub_1A97B06FC(v20, &qword_1EB3B5A08, &qword_1A99A7480);
        if (v61)
        {
          v46 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
          v66 = v87;
          v67 = *(v86 + 8);
          v67(v56, v87);
          v67(v55, v66);
          sub_1A97B06FC(v14, &qword_1EB3B5A08, &qword_1A99A7480);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A97B06FC(v20, &qword_1EB3B5A08, &qword_1A99A7480);
      }

      v70 = v87;
      v71 = *(v86 + 8);
      v71(v56, v87);
      v71(v55, v70);
      sub_1A97B06FC(v14, &qword_1EB3B5A08, &qword_1A99A7480);
      goto LABEL_20;
    }

    (*(v86 + 8))(&v20[v50], v87);
    sub_1A97B06FC(v20, &qword_1EB3B5A08, &qword_1A99A7480);
LABEL_9:
    v51 = &qword_1EB3B5A10;
    v52 = &qword_1A99A7488;
LABEL_21:
    sub_1A97B06FC(v24, v51, v52);
    v46 = 0;
    return v46 & 1;
  }

  sub_1A97C13A4(v24, v18, &qword_1EB3B5A00, &qword_1A99A7478);
  v27 = *v18;
  v26 = *(v18 + 1);
  v28 = *(v18 + 3);
  v83 = *(v18 + 2);
  v81 = v28;
  LODWORD(v82) = v18[32];
  v29 = *(v18 + 5);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A18, &qword_1A99A7490) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v86 + 8))(&v18[v30], v87);
    sub_1A97DC96C(v27, v26, v83, v81, v82);

    goto LABEL_9;
  }

  v75 = v24;
  v80 = v29;
  v31 = *(v25 + 1);
  v74 = *v25;
  v32 = *(v25 + 2);
  v73 = *(v25 + 3);
  v33 = v25[32];
  v79 = *(v25 + 5);
  v34 = *(v86 + 32);
  v35 = &v18[v30];
  v36 = v87;
  v34(v85, v35, v87);
  v34(v84, &v25[v30], v36);
  v93 = v27;
  v94 = v26;
  v37 = v81;
  v38 = v74;
  v95 = v83;
  v96 = v81;
  v39 = v82;
  v97 = v82;
  v88 = v74;
  v89 = v31;
  v40 = v73;
  v90 = v32;
  v91 = v73;
  v92 = v33;
  sub_1A97DC908(v27, v26, v83, v81, v82);
  v77 = v31;
  v78 = v32;
  v41 = v32;
  v42 = v40;
  v76 = v33;
  sub_1A97DC908(v38, v31, v41, v40, v33);
  LOBYTE(v40) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v93, &v88);
  sub_1A97DC96C(v88, v89, v90, v91, v92);
  sub_1A97DC96C(v93, v94, v95, v96, v97);
  if ((v40 & 1) == 0)
  {
    sub_1A97DC96C(v38, v77, v78, v42, v76);

    sub_1A97DC96C(v27, v26, v83, v37, v39);

    v24 = v75;
    goto LABEL_17;
  }

  v43 = sub_1A9905724(v80, v79, &qword_1EB3B5A08, &qword_1A99A7480);
  sub_1A97DC96C(v38, v77, v78, v42, v76);

  sub_1A97DC96C(v27, v26, v83, v37, v39);

  v24 = v75;
  if ((v43 & 1) == 0)
  {
LABEL_17:
    v68 = v87;
    v69 = *(v86 + 8);
    v69(v84, v87);
    v69(v85, v68);
LABEL_20:
    v51 = &qword_1EB3B5A00;
    v52 = &qword_1A99A7478;
    goto LABEL_21;
  }

  v44 = v84;
  v45 = v85;
  v46 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  v47 = v87;
  v48 = v44;
  v49 = *(v86 + 8);
  v49(v48, v87);
  v49(v45, v47);
LABEL_15:
  sub_1A97B06FC(v24, &qword_1EB3B5A00, &qword_1A99A7478);
  return v46 & 1;
}

uint64_t sub_1A9906640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v85 = &v73 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5940, &unk_1A99A6ED0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5938, &qword_1A99A6EC8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A50, &qword_1A99A74C8);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v73 - v23;
  v25 = &v73 + *(v22 + 56) - v23;
  sub_1A97C13A4(a1, &v73 - v23, &qword_1EB3B5938, &qword_1A99A6EC8);
  sub_1A97C13A4(a2, v25, &qword_1EB3B5938, &qword_1A99A6EC8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97C13A4(v24, v20, &qword_1EB3B5938, &qword_1A99A6EC8);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5950, &qword_1A99A6EE0) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A97D8380(v25, v14, &qword_1EB3B5940, &unk_1A99A6ED0);
      v53 = v87;
      v54 = *(v86 + 32);
      v55 = v83;
      v54(v83, &v20[v50], v87);
      v56 = v82;
      v54(v82, &v25[v50], v53);
      if (*v20 == *v14 && *(v20 + 1) == *(v14 + 1) || (sub_1A99777E0() & 1) != 0)
      {
        v57 = *(v20 + 3);
        v58 = *(v20 + 4);
        v59 = *(v20 + 5);
        v60 = v20[48];
        v93 = *(v20 + 2);
        v94 = v57;
        v95 = v58;
        v96 = v59;
        v97 = v60;
        v62 = *(v14 + 3);
        v63 = *(v14 + 4);
        v64 = *(v14 + 5);
        v65 = v14[48];
        v88 = *(v14 + 2);
        v61 = v88;
        v89 = v62;
        v90 = v63;
        v91 = v64;
        v92 = v65;
        sub_1A97DC908(v93, v57, v58, v59, v60);
        sub_1A97DC908(v61, v62, v63, v64, v65);
        LOBYTE(v61) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v93, &v88);
        sub_1A97DC96C(v88, v89, v90, v91, v92);
        sub_1A97DC96C(v93, v94, v95, v96, v97);
        sub_1A97B06FC(v20, &qword_1EB3B5940, &unk_1A99A6ED0);
        if (v61)
        {
          v46 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
          v66 = v87;
          v67 = *(v86 + 8);
          v67(v56, v87);
          v67(v55, v66);
          sub_1A97B06FC(v14, &qword_1EB3B5940, &unk_1A99A6ED0);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A97B06FC(v20, &qword_1EB3B5940, &unk_1A99A6ED0);
      }

      v70 = v87;
      v71 = *(v86 + 8);
      v71(v56, v87);
      v71(v55, v70);
      sub_1A97B06FC(v14, &qword_1EB3B5940, &unk_1A99A6ED0);
      goto LABEL_20;
    }

    (*(v86 + 8))(&v20[v50], v87);
    sub_1A97B06FC(v20, &qword_1EB3B5940, &unk_1A99A6ED0);
LABEL_9:
    v51 = &qword_1EB3B5A50;
    v52 = &qword_1A99A74C8;
LABEL_21:
    sub_1A97B06FC(v24, v51, v52);
    v46 = 0;
    return v46 & 1;
  }

  sub_1A97C13A4(v24, v18, &qword_1EB3B5938, &qword_1A99A6EC8);
  v27 = *v18;
  v26 = *(v18 + 1);
  v28 = *(v18 + 3);
  v83 = *(v18 + 2);
  v81 = v28;
  LODWORD(v82) = v18[32];
  v29 = *(v18 + 5);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A58, &qword_1A99A74D0) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v86 + 8))(&v18[v30], v87);
    sub_1A97DC96C(v27, v26, v83, v81, v82);

    goto LABEL_9;
  }

  v75 = v24;
  v80 = v29;
  v31 = *(v25 + 1);
  v74 = *v25;
  v32 = *(v25 + 2);
  v73 = *(v25 + 3);
  v33 = v25[32];
  v79 = *(v25 + 5);
  v34 = *(v86 + 32);
  v35 = &v18[v30];
  v36 = v87;
  v34(v85, v35, v87);
  v34(v84, &v25[v30], v36);
  v93 = v27;
  v94 = v26;
  v37 = v81;
  v38 = v74;
  v95 = v83;
  v96 = v81;
  v39 = v82;
  v97 = v82;
  v88 = v74;
  v89 = v31;
  v40 = v73;
  v90 = v32;
  v91 = v73;
  v92 = v33;
  sub_1A97DC908(v27, v26, v83, v81, v82);
  v77 = v31;
  v78 = v32;
  v41 = v32;
  v42 = v40;
  v76 = v33;
  sub_1A97DC908(v38, v31, v41, v40, v33);
  LOBYTE(v40) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v93, &v88);
  sub_1A97DC96C(v88, v89, v90, v91, v92);
  sub_1A97DC96C(v93, v94, v95, v96, v97);
  if ((v40 & 1) == 0)
  {
    sub_1A97DC96C(v38, v77, v78, v42, v76);

    sub_1A97DC96C(v27, v26, v83, v37, v39);

    v24 = v75;
    goto LABEL_17;
  }

  v43 = sub_1A9905724(v80, v79, &qword_1EB3B5940, &unk_1A99A6ED0);
  sub_1A97DC96C(v38, v77, v78, v42, v76);

  sub_1A97DC96C(v27, v26, v83, v37, v39);

  v24 = v75;
  if ((v43 & 1) == 0)
  {
LABEL_17:
    v68 = v87;
    v69 = *(v86 + 8);
    v69(v84, v87);
    v69(v85, v68);
LABEL_20:
    v51 = &qword_1EB3B5938;
    v52 = &qword_1A99A6EC8;
    goto LABEL_21;
  }

  v44 = v84;
  v45 = v85;
  v46 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  v47 = v87;
  v48 = v44;
  v49 = *(v86 + 8);
  v49(v48, v87);
  v49(v45, v47);
LABEL_15:
  sub_1A97B06FC(v24, &qword_1EB3B5938, &qword_1A99A6EC8);
  return v46 & 1;
}

uint64_t sub_1A9906E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v85 = &v73 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A30, &qword_1A99A74A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A28, &qword_1A99A74A0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A38, &qword_1A99A74B0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v73 - v23;
  v25 = &v73 + *(v22 + 56) - v23;
  sub_1A97C13A4(a1, &v73 - v23, &qword_1EB3B5A28, &qword_1A99A74A0);
  sub_1A97C13A4(a2, v25, &qword_1EB3B5A28, &qword_1A99A74A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97C13A4(v24, v20, &qword_1EB3B5A28, &qword_1A99A74A0);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A48, &qword_1A99A74C0) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A97D8380(v25, v14, &qword_1EB3B5A30, &qword_1A99A74A8);
      v53 = v87;
      v54 = *(v86 + 32);
      v55 = v83;
      v54(v83, &v20[v50], v87);
      v56 = v82;
      v54(v82, &v25[v50], v53);
      if (*v20 == *v14 && *(v20 + 1) == *(v14 + 1) || (sub_1A99777E0() & 1) != 0)
      {
        v57 = *(v20 + 3);
        v58 = *(v20 + 4);
        v59 = *(v20 + 5);
        v60 = v20[48];
        v93 = *(v20 + 2);
        v94 = v57;
        v95 = v58;
        v96 = v59;
        v97 = v60;
        v62 = *(v14 + 3);
        v63 = *(v14 + 4);
        v64 = *(v14 + 5);
        v65 = v14[48];
        v88 = *(v14 + 2);
        v61 = v88;
        v89 = v62;
        v90 = v63;
        v91 = v64;
        v92 = v65;
        sub_1A97DC908(v93, v57, v58, v59, v60);
        sub_1A97DC908(v61, v62, v63, v64, v65);
        LOBYTE(v61) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v93, &v88);
        sub_1A97DC96C(v88, v89, v90, v91, v92);
        sub_1A97DC96C(v93, v94, v95, v96, v97);
        sub_1A97B06FC(v20, &qword_1EB3B5A30, &qword_1A99A74A8);
        if (v61)
        {
          v46 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
          v66 = v87;
          v67 = *(v86 + 8);
          v67(v56, v87);
          v67(v55, v66);
          sub_1A97B06FC(v14, &qword_1EB3B5A30, &qword_1A99A74A8);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A97B06FC(v20, &qword_1EB3B5A30, &qword_1A99A74A8);
      }

      v70 = v87;
      v71 = *(v86 + 8);
      v71(v56, v87);
      v71(v55, v70);
      sub_1A97B06FC(v14, &qword_1EB3B5A30, &qword_1A99A74A8);
      goto LABEL_20;
    }

    (*(v86 + 8))(&v20[v50], v87);
    sub_1A97B06FC(v20, &qword_1EB3B5A30, &qword_1A99A74A8);
LABEL_9:
    v51 = &qword_1EB3B5A38;
    v52 = &qword_1A99A74B0;
LABEL_21:
    sub_1A97B06FC(v24, v51, v52);
    v46 = 0;
    return v46 & 1;
  }

  sub_1A97C13A4(v24, v18, &qword_1EB3B5A28, &qword_1A99A74A0);
  v27 = *v18;
  v26 = *(v18 + 1);
  v28 = *(v18 + 3);
  v83 = *(v18 + 2);
  v81 = v28;
  LODWORD(v82) = v18[32];
  v29 = *(v18 + 5);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A40, &qword_1A99A74B8) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v86 + 8))(&v18[v30], v87);
    sub_1A97DC96C(v27, v26, v83, v81, v82);

    goto LABEL_9;
  }

  v75 = v24;
  v80 = v29;
  v31 = *(v25 + 1);
  v74 = *v25;
  v32 = *(v25 + 2);
  v73 = *(v25 + 3);
  v33 = v25[32];
  v79 = *(v25 + 5);
  v34 = *(v86 + 32);
  v35 = &v18[v30];
  v36 = v87;
  v34(v85, v35, v87);
  v34(v84, &v25[v30], v36);
  v93 = v27;
  v94 = v26;
  v37 = v81;
  v38 = v74;
  v95 = v83;
  v96 = v81;
  v39 = v82;
  v97 = v82;
  v88 = v74;
  v89 = v31;
  v40 = v73;
  v90 = v32;
  v91 = v73;
  v92 = v33;
  sub_1A97DC908(v27, v26, v83, v81, v82);
  v77 = v31;
  v78 = v32;
  v41 = v32;
  v42 = v40;
  v76 = v33;
  sub_1A97DC908(v38, v31, v41, v40, v33);
  LOBYTE(v40) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v93, &v88);
  sub_1A97DC96C(v88, v89, v90, v91, v92);
  sub_1A97DC96C(v93, v94, v95, v96, v97);
  if ((v40 & 1) == 0)
  {
    sub_1A97DC96C(v38, v77, v78, v42, v76);

    sub_1A97DC96C(v27, v26, v83, v37, v39);

    v24 = v75;
    goto LABEL_17;
  }

  v43 = sub_1A9905724(v80, v79, &qword_1EB3B5A30, &qword_1A99A74A8);
  sub_1A97DC96C(v38, v77, v78, v42, v76);

  sub_1A97DC96C(v27, v26, v83, v37, v39);

  v24 = v75;
  if ((v43 & 1) == 0)
  {
LABEL_17:
    v68 = v87;
    v69 = *(v86 + 8);
    v69(v84, v87);
    v69(v85, v68);
LABEL_20:
    v51 = &qword_1EB3B5A28;
    v52 = &qword_1A99A74A0;
    goto LABEL_21;
  }

  v44 = v84;
  v45 = v85;
  v46 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  v47 = v87;
  v48 = v44;
  v49 = *(v86 + 8);
  v49(v48, v87);
  v49(v45, v47);
LABEL_15:
  sub_1A97B06FC(v24, &qword_1EB3B5A28, &qword_1A99A74A0);
  return v46 & 1;
}

uint64_t sub_1A9907628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v85 = &v73 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59D8, &qword_1A99A7450);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59D0, &qword_1A99A7448);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59E0, &qword_1A99A7458);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v73 - v23;
  v25 = &v73 + *(v22 + 56) - v23;
  sub_1A97C13A4(a1, &v73 - v23, &qword_1EB3B59D0, &qword_1A99A7448);
  sub_1A97C13A4(a2, v25, &qword_1EB3B59D0, &qword_1A99A7448);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97C13A4(v24, v20, &qword_1EB3B59D0, &qword_1A99A7448);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59F0, &qword_1A99A7468) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A97D8380(v25, v14, &qword_1EB3B59D8, &qword_1A99A7450);
      v53 = v87;
      v54 = *(v86 + 32);
      v55 = v83;
      v54(v83, &v20[v50], v87);
      v56 = v82;
      v54(v82, &v25[v50], v53);
      if (*v20 == *v14 && *(v20 + 1) == *(v14 + 1) || (sub_1A99777E0() & 1) != 0)
      {
        v57 = *(v20 + 3);
        v58 = *(v20 + 4);
        v59 = *(v20 + 5);
        v60 = v20[48];
        v93 = *(v20 + 2);
        v94 = v57;
        v95 = v58;
        v96 = v59;
        v97 = v60;
        v62 = *(v14 + 3);
        v63 = *(v14 + 4);
        v64 = *(v14 + 5);
        v65 = v14[48];
        v88 = *(v14 + 2);
        v61 = v88;
        v89 = v62;
        v90 = v63;
        v91 = v64;
        v92 = v65;
        sub_1A97DC908(v93, v57, v58, v59, v60);
        sub_1A97DC908(v61, v62, v63, v64, v65);
        LOBYTE(v61) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v93, &v88);
        sub_1A97DC96C(v88, v89, v90, v91, v92);
        sub_1A97DC96C(v93, v94, v95, v96, v97);
        sub_1A97B06FC(v20, &qword_1EB3B59D8, &qword_1A99A7450);
        if (v61)
        {
          v46 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
          v66 = v87;
          v67 = *(v86 + 8);
          v67(v56, v87);
          v67(v55, v66);
          sub_1A97B06FC(v14, &qword_1EB3B59D8, &qword_1A99A7450);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A97B06FC(v20, &qword_1EB3B59D8, &qword_1A99A7450);
      }

      v70 = v87;
      v71 = *(v86 + 8);
      v71(v56, v87);
      v71(v55, v70);
      sub_1A97B06FC(v14, &qword_1EB3B59D8, &qword_1A99A7450);
      goto LABEL_20;
    }

    (*(v86 + 8))(&v20[v50], v87);
    sub_1A97B06FC(v20, &qword_1EB3B59D8, &qword_1A99A7450);
LABEL_9:
    v51 = &qword_1EB3B59E0;
    v52 = &qword_1A99A7458;
LABEL_21:
    sub_1A97B06FC(v24, v51, v52);
    v46 = 0;
    return v46 & 1;
  }

  sub_1A97C13A4(v24, v18, &qword_1EB3B59D0, &qword_1A99A7448);
  v27 = *v18;
  v26 = *(v18 + 1);
  v28 = *(v18 + 3);
  v83 = *(v18 + 2);
  v81 = v28;
  LODWORD(v82) = v18[32];
  v29 = *(v18 + 5);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59E8, &qword_1A99A7460) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v86 + 8))(&v18[v30], v87);
    sub_1A97DC96C(v27, v26, v83, v81, v82);

    goto LABEL_9;
  }

  v75 = v24;
  v80 = v29;
  v31 = *(v25 + 1);
  v74 = *v25;
  v32 = *(v25 + 2);
  v73 = *(v25 + 3);
  v33 = v25[32];
  v79 = *(v25 + 5);
  v34 = *(v86 + 32);
  v35 = &v18[v30];
  v36 = v87;
  v34(v85, v35, v87);
  v34(v84, &v25[v30], v36);
  v93 = v27;
  v94 = v26;
  v37 = v81;
  v38 = v74;
  v95 = v83;
  v96 = v81;
  v39 = v82;
  v97 = v82;
  v88 = v74;
  v89 = v31;
  v40 = v73;
  v90 = v32;
  v91 = v73;
  v92 = v33;
  sub_1A97DC908(v27, v26, v83, v81, v82);
  v77 = v31;
  v78 = v32;
  v41 = v32;
  v42 = v40;
  v76 = v33;
  sub_1A97DC908(v38, v31, v41, v40, v33);
  LOBYTE(v40) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v93, &v88);
  sub_1A97DC96C(v88, v89, v90, v91, v92);
  sub_1A97DC96C(v93, v94, v95, v96, v97);
  if ((v40 & 1) == 0)
  {
    sub_1A97DC96C(v38, v77, v78, v42, v76);

    sub_1A97DC96C(v27, v26, v83, v37, v39);

    v24 = v75;
    goto LABEL_17;
  }

  v43 = sub_1A9905724(v80, v79, &qword_1EB3B59D8, &qword_1A99A7450);
  sub_1A97DC96C(v38, v77, v78, v42, v76);

  sub_1A97DC96C(v27, v26, v83, v37, v39);

  v24 = v75;
  if ((v43 & 1) == 0)
  {
LABEL_17:
    v68 = v87;
    v69 = *(v86 + 8);
    v69(v84, v87);
    v69(v85, v68);
LABEL_20:
    v51 = &qword_1EB3B59D0;
    v52 = &qword_1A99A7448;
    goto LABEL_21;
  }

  v44 = v84;
  v45 = v85;
  v46 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  v47 = v87;
  v48 = v44;
  v49 = *(v86 + 8);
  v49(v48, v87);
  v49(v45, v47);
LABEL_15:
  sub_1A97B06FC(v24, &qword_1EB3B59D0, &qword_1A99A7448);
  return v46 & 1;
}

uint64_t SFItemDestinationAlertViewModel.Action.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SFItemDestinationAlertViewModel.Action.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t SFItemDestinationAlertViewModel.Action.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A99772B0();

  MEMORY[0x1AC5895B0](v1, v2);
  MEMORY[0x1AC5895B0](8250, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v3, v4);
  MEMORY[0x1AC5895B0](15965, 0xE200000000000000);
  return 0xD00000000000002ALL;
}

uint64_t static SFItemDestinationAlertViewModel.Action.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1A99777E0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1A99777E0();
    }
  }

  return result;
}

uint64_t sub_1A9907FD8()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A9908004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A99080D4(uint64_t a1)
{
  v2 = sub_1A99082E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9908110(uint64_t a1)
{
  v2 = sub_1A99082E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFItemDestinationAlertViewModel.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5918, &qword_1A99A6EB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99082E0();
  sub_1A9977AA0();
  v12 = 0;
  v8 = v10[3];
  sub_1A9977690();
  if (!v8)
  {
    v11 = 1;
    sub_1A9977690();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A99082E0()
{
  result = qword_1EB3B5920;
  if (!qword_1EB3B5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5920);
  }

  return result;
}

uint64_t SFItemDestinationAlertViewModel.Action.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5928, &qword_1A99A6EB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99082E0();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = 0;
  v9 = sub_1A99775A0();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1A99775A0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A9908564(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1A99777E0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1A99777E0();
    }
  }

  return result;
}

uint64_t SFItemDestinationAlertViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SFItemDestinationAlertViewModel.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double SFItemDestinationAlertViewModel.cancelAction.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1A9908688(v2, v3, v4, v5);
}

double sub_1A9908688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SFItemDestinationAlertViewModel.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1A9908688(v0[5], v0[6], v0[7], v0[8]);
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000022, 0x80000001A99E8150);
  MEMORY[0x1AC5895B0](v1, v2);
  MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v3, v4);
  MEMORY[0x1AC5895B0](0x6F69746361202C5DLL, 0xEC000000203A736ELL);
  v6 = MEMORY[0x1AC589770](v5, &type metadata for SFItemDestinationAlertViewModel.Action);
  MEMORY[0x1AC5895B0](v6);

  MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E8180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5930, &qword_1A99A6EC0);
  v7 = sub_1A9976880();
  MEMORY[0x1AC5895B0](v7);

  MEMORY[0x1AC5895B0](62, 0xE100000000000000);
  return 0;
}

void __swiftcall SFItemDestinationAlertViewModel.init(title:message:actions:cancelAction:)(Sharing::SFItemDestinationAlertViewModel *__return_ptr retstr, Swift::String title, Swift::String message, Swift::OpaquePointer actions, Sharing::SFItemDestinationAlertViewModel::Action_optional *cancelAction)
{
  v5 = cancelAction->value.title;
  retstr->cancelAction.value.id = cancelAction->value.id;
  retstr->title = title;
  retstr->message = message;
  retstr->actions = actions;
  retstr->cancelAction.value.title = v5;
}

uint64_t SFItemDestinationAlertViewModel.init(permissionRequest:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v69 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5938, &qword_1A99A6EC8);
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5940, &unk_1A99A6ED0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v61 - v10);
  v12 = type metadata accessor for SFAirDrop.DeclineAction(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  sub_1A97C13A4(a1 + *(v15 + 60), v11, &qword_1EB3B17F0, &qword_1A9992A00);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1A97B06FC(v11, &qword_1EB3B17F0, &qword_1A9992A00);
    type metadata accessor for SFAirDropReceive.Failure(0);
    sub_1A990A500(&qword_1EB3B5948, type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1A97B06FC(a1, &qword_1EB3B17A8, &unk_1A9999470);
  }

  v67 = a1;
  v68 = v2;
  v16 = *v11;
  v64 = v11[1];
  v65 = v16;
  v17 = v11[2];
  v62 = v11[3];
  v63 = v17;
  v18 = v11[4];
  v19 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
  v66 = v14;
  sub_1A98BAA80(v19, v14);
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = (v77[80] + 32) & ~v77[80];
    v61 = v18;
    v22 = v18 + v21;
    v23 = *(v77 + 9);
    v24 = v8 + 16;
    v76 = v8 + 24;
    v70 = v8 + 40;
    v71 = v8 + 32;
    v77 = MEMORY[0x1E69E7CC0];
    v72 = v8 + 16;
    v73 = v23;
    while (1)
    {
      sub_1A97C13A4(v22, v5, &qword_1EB3B5938, &qword_1A99A6EC8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A97B06FC(v5, &qword_1EB3B5938, &qword_1A99A6EC8);
        goto LABEL_5;
      }

      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5950, &qword_1A99A6EE0) + 48);
      sub_1A97D8380(v5, v8, &qword_1EB3B5940, &unk_1A99A6ED0);
      v26 = sub_1A99762C0();
      (*(*(v26 - 8) + 8))(&v5[v25], v26);
      v27 = v76;
      v28 = v24;
      if (!v8[48])
      {
        goto LABEL_11;
      }

      if (v8[48] != 1)
      {
        break;
      }

      v29 = 0;
      v30 = 0xE000000000000000;
LABEL_12:

      v32 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v32 = v29;
      }

      if (v32)
      {
        v33 = *(v8 + 1);
        v34 = v76;
        v35 = v24;
        v36 = v8[48];
        v75 = *v8;
        if (v36)
        {
          if (v36 == 1)
          {
            v37 = 0;
            v38 = 0xE000000000000000;
LABEL_21:

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_1A97AEFB8(0, *(v77 + 2) + 1, 1, v77);
            }

            v40 = *(v77 + 2);
            v39 = *(v77 + 3);
            if (v40 >= v39 >> 1)
            {
              v77 = sub_1A97AEFB8((v39 > 1), v40 + 1, 1, v77);
            }

            v41 = v77;
            *(v77 + 2) = v40 + 1;
            v42 = &v41[32 * v40];
            *(v42 + 4) = v75;
            *(v42 + 5) = v33;
            *(v42 + 6) = v37;
            *(v42 + 7) = v38;
            sub_1A97B06FC(v8, &qword_1EB3B5940, &unk_1A99A6ED0);
            v23 = v73;
            v24 = v72;
            goto LABEL_5;
          }

          v34 = v70;
          v35 = v71;
        }

        v38 = *v34;
        v37 = *v35;

        goto LABEL_21;
      }

      sub_1A97B06FC(v8, &qword_1EB3B5940, &unk_1A99A6ED0);
LABEL_5:
      v22 += v23;
      if (!--v20)
      {

        goto LABEL_29;
      }
    }

    v27 = v70;
    v28 = v71;
LABEL_11:
    v30 = *v27;
    v31 = *v28;

    v29 = v31 & 0xFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v44 = v66;
  v45 = (v66 + 16);
  v46 = (v66 + 24);
  v47 = (v66 + 24);
  v48 = (v66 + 16);
  if (v66[48])
  {
    if (v66[48] == 1)
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      goto LABEL_34;
    }

    v47 = (v66 + 40);
    v48 = (v66 + 32);
  }

  v50 = *v47;
  v51 = *v48;

  v49 = v51 & 0xFFFFFFFFFFFFLL;
LABEL_34:

  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v49;
  }

  if (v52)
  {
    v54 = *v44;
    v53 = *(v44 + 8);
    v55 = v67;
    if (*(v44 + 48))
    {
      if (*(v44 + 48) == 1)
      {
        v56 = 0;
        v57 = 0xE000000000000000;
LABEL_43:

        sub_1A97B06FC(v55, &qword_1EB3B17A8, &unk_1A9999470);
        goto LABEL_44;
      }

      v46 = (v44 + 40);
      v45 = (v44 + 32);
    }

    v57 = *v46;
    v56 = *v45;

    goto LABEL_43;
  }

  sub_1A97B06FC(v67, &qword_1EB3B17A8, &unk_1A9999470);
  v54 = 0;
  v53 = 0;
  v56 = 0;
  v57 = 0;
LABEL_44:
  result = sub_1A98CB558(v44);
  v58 = v69;
  v59 = v64;
  *v69 = v65;
  v58[1] = v59;
  v60 = v62;
  v58[2] = v63;
  v58[3] = v60;
  v58[4] = v77;
  v58[5] = v54;
  v58[6] = v53;
  v58[7] = v56;
  v58[8] = v57;
  return result;
}

uint64_t sub_1A9908F20()
{
  v1 = 0x656C746974;
  v2 = 0x736E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x63416C65636E6163;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_1A9908FA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A990A39C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9908FC8(uint64_t a1)
{
  v2 = sub_1A9909D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9909004(uint64_t a1)
{
  v2 = sub_1A9909D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFItemDestinationAlertViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5958, &qword_1A99A6EE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = v1[2];
  v26 = v1[3];
  v27 = v7;
  v8 = v1[4];
  v24 = v1[5];
  v25 = v8;
  v9 = v1[6];
  v22 = v1[7];
  v23 = v9;
  v10 = v1[8];
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1A9909D48();
  sub_1A9977AA0();
  LOBYTE(v29) = 0;
  v15 = v28;
  sub_1A9977690();
  if (!v15)
  {
    v28 = v10;
    v18 = v22;
    v17 = v23;
    v19 = v24;
    v20 = v25;
    LOBYTE(v29) = 1;
    sub_1A9977690();
    v29 = v20;
    v33 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5968, &qword_1A99A6EF0);
    sub_1A9909E34(&qword_1EB3B5970, sub_1A9909D9C, MEMORY[0x1E69E6300]);
    sub_1A99776E0();
    v29 = v19;
    v30 = v17;
    v31 = v18;
    v32 = v28;
    v33 = 3;
    sub_1A9908688(v19, v17, v18, v28);
    sub_1A9909D9C();
    sub_1A9977680();
    sub_1A9909DF0(v29, v30, v31, v32);
  }

  return (*(v4 + 8))(v6, v14);
}

uint64_t SFItemDestinationAlertViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5980, &qword_1A99A6EF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9909D48();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_1A99775A0();
  v11 = v10;
  v27 = v9;
  LOBYTE(v34[0]) = 1;
  v12 = sub_1A99775A0();
  v28 = v13;
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5968, &qword_1A99A6EF0);
  LOBYTE(v29) = 2;
  sub_1A9909E34(&qword_1EB3B5988, sub_1A9909EAC, MEMORY[0x1E69E6330]);
  sub_1A99775F0();
  v25 = v34[0];
  v38 = 3;
  sub_1A9909EAC();
  sub_1A9977590();
  (*(v6 + 8))(v8, v5);
  v24 = v35;
  v23 = v36;
  v14 = v37;
  v22 = *(&v36 + 1);
  v15 = v27;
  *&v29 = v27;
  v16 = v26;
  *(&v29 + 1) = v11;
  *&v30 = v26;
  v17 = v28;
  v18 = v25;
  *(&v30 + 1) = v28;
  *&v31 = v25;
  *(&v31 + 1) = v35;
  v32 = v36;
  v33 = v37;
  *(a2 + 64) = v37;
  v19 = v30;
  *a2 = v29;
  *(a2 + 16) = v19;
  v20 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v20;
  sub_1A9909F00(&v29, v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v34[0] = v15;
  v34[1] = v11;
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v18;
  v34[5] = v24;
  v34[6] = v23;
  v34[7] = v22;
  v34[8] = v14;
  return sub_1A9909F38(v34);
}

Sharing::SFItemDestinationAlertSettings_optional __swiftcall SFItemDestinationAlertSettings.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

id SFAirDropInvocations.ItemDestinationAlert.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFAirDropInvocations.ItemDestinationAlert.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SFAirDropInvocations.ItemDestinationAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropInvocations.ItemDestinationAlert.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SFAirDropInvocations.ItemDestinationAlert.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFAirDropInvocations.ItemDestinationAlert.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

id SFAirDropInvocations.ItemDestinationAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s7Sharing31SFItemDestinationAlertViewModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v32 = a1[8];
  v33 = a2[5];
  v11 = a2[6];
  v30 = a2[7];
  v31 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A99777E0() & 1) == 0 || (v2 != v8 || v3 != v9) && (sub_1A99777E0() & 1) == 0 || (sub_1A99053F0(v4, v10) & 1) == 0)
  {
    return 0;
  }

  v12 = v6;
  if (!v6)
  {
    v14 = v5;
    v19 = v5;
    v13 = v7;
    v16 = v32;
    sub_1A9908688(v19, 0, v7, v32);
    if (!v11)
    {
      sub_1A9908688(v33, 0, v30, v31);
      v17 = v14;
      v18 = 0;
      goto LABEL_25;
    }

    v15 = v11;
    v20 = v33;
    v22 = v30;
    v21 = v31;
    sub_1A9908688(v33, v11, v30, v31);
    goto LABEL_19;
  }

  v13 = v7;
  v14 = v5;
  v15 = v11;
  if (!v11)
  {
    v23 = v5;
    v16 = v32;
    sub_1A9908688(v23, v6, v7, v32);
    v20 = v33;
    v22 = v30;
    v21 = v31;
    sub_1A9908688(v33, 0, v30, v31);
    sub_1A9908688(v14, v12, v13, v32);

LABEL_19:
    sub_1A9909DF0(v14, v12, v13, v16);
    v24 = v20;
    v25 = v15;
    v26 = v22;
    v27 = v21;
LABEL_20:
    sub_1A9909DF0(v24, v25, v26, v27);
    return 0;
  }

  v16 = v32;
  if ((v14 != v33 || v6 != v11) && (sub_1A99777E0() & 1) == 0)
  {
    sub_1A9908688(v14, v6, v7, v32);
    sub_1A9908688(v33, v11, v30, v31);
    sub_1A9908688(v14, v6, v7, v32);
    sub_1A9909DF0(v33, v11, v30, v31);

    v24 = v14;
    v25 = v6;
    v26 = v7;
    v27 = v32;
    goto LABEL_20;
  }

  if (v7 != v30 || v32 != v31)
  {
    v29 = sub_1A99777E0();
    sub_1A9908688(v14, v6, v7, v32);
    sub_1A9908688(v33, v11, v30, v31);
    sub_1A9908688(v14, v6, v7, v32);
    sub_1A9909DF0(v33, v11, v30, v31);

    sub_1A9909DF0(v14, v6, v7, v32);
    return (v29 & 1) != 0;
  }

  sub_1A9908688(v14, v6, v7, v32);
  sub_1A9908688(v33, v11, v7, v32);
  sub_1A9908688(v14, v6, v7, v32);
  sub_1A9909DF0(v33, v11, v7, v32);

  v17 = v14;
  v18 = v6;
LABEL_25:
  sub_1A9909DF0(v17, v18, v13, v16);
  return 1;
}

unint64_t sub_1A9909D48()
{
  result = qword_1EB3B5960;
  if (!qword_1EB3B5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5960);
  }

  return result;
}

unint64_t sub_1A9909D9C()
{
  result = qword_1EB3B5978;
  if (!qword_1EB3B5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5978);
  }

  return result;
}

void sub_1A9909DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1A9909E34(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B5968, &qword_1A99A6EF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9909EAC()
{
  result = qword_1EB3B5990;
  if (!qword_1EB3B5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5990);
  }

  return result;
}

unint64_t sub_1A9909F6C()
{
  result = qword_1EB3B5998;
  if (!qword_1EB3B5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5998);
  }

  return result;
}

uint64_t sub_1A990A028(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B17A8, &unk_1A9999470);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Sharing31SFItemDestinationAlertViewModelV6ActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A990A0A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A990A0E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A990A190()
{
  result = qword_1EB3B59A0;
  if (!qword_1EB3B59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59A0);
  }

  return result;
}

unint64_t sub_1A990A1E8()
{
  result = qword_1EB3B59A8;
  if (!qword_1EB3B59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59A8);
  }

  return result;
}

unint64_t sub_1A990A240()
{
  result = qword_1EB3B59B0;
  if (!qword_1EB3B59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59B0);
  }

  return result;
}

unint64_t sub_1A990A298()
{
  result = qword_1EB3B59B8;
  if (!qword_1EB3B59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59B8);
  }

  return result;
}

unint64_t sub_1A990A2F0()
{
  result = qword_1EB3B59C0;
  if (!qword_1EB3B59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59C0);
  }

  return result;
}

unint64_t sub_1A990A348()
{
  result = qword_1EB3B59C8;
  if (!qword_1EB3B59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59C8);
  }

  return result;
}

uint64_t sub_1A990A39C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A990A500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void SFAirDropReceive.Failure.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A9976BC0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  if (swift_dynamicCast())
  {

    swift_storeEnumTagMultiPayload();
    (*(v8 + 8))(v10, v7);
LABEL_5:

    return;
  }

  v17[0] = a1;
  v12 = a1;
  if (swift_dynamicCast())
  {

    sub_1A990E76C(v6, a2);
    goto LABEL_5;
  }

  CodableError.init(_:)(a1, v17);
  v13 = v17[1];
  v14 = v20;
  *a2 = v17[0];
  *(a2 + 8) = v13;
  v15 = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 48) = v14;
  swift_storeEnumTagMultiPayload();
}

unint64_t SFAirDropReceive.Failure.errorDescription.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A990E7D0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x64656E696C636564;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v9 = *(v3 + 3);

      goto LABEL_9;
    case 2:
      return result;
    case 3:
      result = 0x696D7369446B7361;
      break;
    case 4:
      result = 0x61437265646E6573;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x707954646578696DLL;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x72456D6165727473;
      break;
    case 10:
      result = 0x6148746F4E6B7361;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6575716552646162;
      break;
    case 13:
      result = 0x70416F5465766F6DLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      v6 = *v3;
      v7 = *(v3 + 1);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8) + 48);
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_1A99772B0();

      v11 = 0xD000000000000010;
      v12 = 0x80000001A99E8210;
      MEMORY[0x1AC5895B0](v6, v7);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v9 = v11;
      v10 = sub_1A9976020();
      (*(*(v10 - 8) + 8))(&v3[v8], v10);
LABEL_9:
      result = v9;
      break;
  }

  return result;
}

unint64_t sub_1A990AA7C(char a1)
{
  result = 0x64656E696C636564;
  switch(a1)
  {
    case 1:
      result = 0x696D7369446B7361;
      break;
    case 2:
      result = 0x61437265646E6573;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x707954646578696DLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x72456D6165727473;
      break;
    case 8:
      result = 0x6148746F4E6B7361;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6575716552646162;
      break;
    case 11:
      result = 0x726F707075736E75;
      break;
    case 12:
      result = 0x70416F5465766F6DLL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x7463657078656E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A990AC70(uint64_t a1)
{
  v2 = sub_1A990ECCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990ACAC(uint64_t a1)
{
  v2 = sub_1A990ECCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990ACE8(uint64_t a1)
{
  v2 = sub_1A990EA80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AD24(uint64_t a1)
{
  v2 = sub_1A990EA80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AD60(uint64_t a1)
{
  v2 = sub_1A990E9D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AD9C(uint64_t a1)
{
  v2 = sub_1A990E9D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990ADE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A990FD68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A990AE14(uint64_t a1)
{
  v2 = sub_1A990E834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AE50(uint64_t a1)
{
  v2 = sub_1A990E834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AE8C(uint64_t a1)
{
  v2 = sub_1A990ED20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AEC8(uint64_t a1)
{
  v2 = sub_1A990ED20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AF04(uint64_t a1)
{
  v2 = sub_1A990EA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AF40(uint64_t a1)
{
  v2 = sub_1A990EA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AF7C(uint64_t a1)
{
  v2 = sub_1A990E8DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AFB8(uint64_t a1)
{
  v2 = sub_1A990E8DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AFF4(uint64_t a1)
{
  v2 = sub_1A990EB7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B030(uint64_t a1)
{
  v2 = sub_1A990EB7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B06C(uint64_t a1)
{
  v2 = sub_1A990EB28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B0A8(uint64_t a1)
{
  v2 = sub_1A990EB28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B0E4(uint64_t a1)
{
  v2 = sub_1A990EBD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B120(uint64_t a1)
{
  v2 = sub_1A990EBD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B15C(uint64_t a1)
{
  v2 = sub_1A990E930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B198(uint64_t a1)
{
  v2 = sub_1A990E930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B1D4(uint64_t a1)
{
  v2 = sub_1A990EC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B210(uint64_t a1)
{
  v2 = sub_1A990EC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B24C(uint64_t a1)
{
  v2 = sub_1A990EC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B288(uint64_t a1)
{
  v2 = sub_1A990EC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B2C4(uint64_t a1)
{
  v2 = sub_1A990EAD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B300(uint64_t a1)
{
  v2 = sub_1A990EAD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B33C(uint64_t a1)
{
  v2 = sub_1A990E888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B378(uint64_t a1)
{
  v2 = sub_1A990E888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B3B4()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 6911093;
  }
}

uint64_t sub_1A990B3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6911093 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A990B4B4(uint64_t a1)
{
  v2 = sub_1A990E984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B4F0(uint64_t a1)
{
  v2 = sub_1A990E984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Failure.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A68, &qword_1A99A74E0);
  v103 = *(v2 - 8);
  v104 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v102 = &v59 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A70, &qword_1A99A74E8);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v59 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A78, &qword_1A99A74F0);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v59 - v5;
  *&v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A80, &qword_1A99A74F8);
  v60 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v59 - v6;
  v7 = sub_1A9976020();
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A88, &qword_1A99A7500);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v59 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A90, &qword_1A99A7508);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v59 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A98, &qword_1A99A7510);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v59 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AA0, &qword_1A99A7518);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v59 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AA8, &qword_1A99A7520);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v59 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AB0, &qword_1A99A7528);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v59 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AB8, &qword_1A99A7530);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v59 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AC0, &qword_1A99A7538);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v59 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AC8, &qword_1A99A7540);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v59 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AD0, &qword_1A99A7548);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AD8, &qword_1A99A7550);
  v61 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v23 = type metadata accessor for SFAirDropReceive.Failure(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AE0, &qword_1A99A7558);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v27 = &v59 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A990E834();
  v107 = v27;
  sub_1A9977AA0();
  sub_1A990E7D0(v105, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = *v25;
      v46 = *(v25 + 1);
      v48 = *(v25 + 6);
      LOBYTE(v109) = 14;
      sub_1A990E888();
      v49 = *(v25 + 2);
      v101 = *(v25 + 1);
      v105 = v49;
      v50 = v102;
      v52 = v107;
      v51 = v108;
      sub_1A9977640();
      v109 = v47;
      v110 = v46;
      v111 = v101;
      v112 = v105;
      v113 = v48;
      sub_1A988AE3C();
      v53 = v104;
      sub_1A99776E0();
      (*(v103 + 8))(v50, v53);
      (*(v106 + 8))(v52, v51);

    case 2u:
      LOBYTE(v109) = 0;
      sub_1A990ED20();
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v61 + 8))(v22, v20);
      goto LABEL_18;
    case 3u:
      LOBYTE(v109) = 1;
      sub_1A990ECCC();
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v62 + 8))(v19, v63);
      goto LABEL_18;
    case 4u:
      LOBYTE(v109) = 2;
      sub_1A990EC78();
      v42 = v64;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v65 + 8))(v42, v66);
      goto LABEL_18;
    case 5u:
      LOBYTE(v109) = 3;
      sub_1A990EC24();
      v54 = v67;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v68 + 8))(v54, v69);
      goto LABEL_18;
    case 6u:
      LOBYTE(v109) = 4;
      sub_1A990EBD0();
      v56 = v70;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v71 + 8))(v56, v72);
      goto LABEL_18;
    case 7u:
      LOBYTE(v109) = 5;
      sub_1A990EB7C();
      v45 = v73;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v74 + 8))(v45, v75);
      goto LABEL_18;
    case 8u:
      LOBYTE(v109) = 6;
      sub_1A990EB28();
      v58 = v76;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v77 + 8))(v58, v78);
      goto LABEL_18;
    case 9u:
      LOBYTE(v109) = 7;
      sub_1A990EAD4();
      v44 = v79;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v80 + 8))(v44, v81);
      goto LABEL_18;
    case 0xAu:
      LOBYTE(v109) = 8;
      sub_1A990EA80();
      v57 = v82;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v83 + 8))(v57, v84);
      goto LABEL_18;
    case 0xBu:
      LOBYTE(v109) = 9;
      sub_1A990EA2C();
      v41 = v85;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v86 + 8))(v41, v87);
      goto LABEL_18;
    case 0xCu:
      LOBYTE(v109) = 10;
      sub_1A990E9D8();
      v43 = v88;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v89 + 8))(v43, v90);
      goto LABEL_18;
    case 0xDu:
      LOBYTE(v109) = 12;
      sub_1A990E930();
      v55 = v91;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v92 + 8))(v55, v93);
      goto LABEL_18;
    case 0xEu:
      LOBYTE(v109) = 13;
      sub_1A990E8DC();
      v38 = v94;
      v40 = v107;
      v39 = v108;
      sub_1A9977640();
      (*(v95 + 8))(v38, v96);
LABEL_18:
      result = (*(v106 + 8))(v40, v39);
      break;
    default:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8);
      v30 = v99;
      v29 = v100;
      v31 = v97;
      (*(v99 + 32))(v97, &v25[*(v28 + 48)], v100);
      LOBYTE(v109) = 11;
      sub_1A990E984();
      v32 = v98;
      v33 = v107;
      v34 = v108;
      sub_1A9977640();
      LOBYTE(v109) = 0;
      v35 = v101;
      v36 = v114;
      sub_1A9977690();
      v114 = v36;

      if (v36)
      {
        (*(v60 + 8))(v32, v35);
        (*(v30 + 8))(v31, v29);
        result = (*(v106 + 8))(v33, v34);
      }

      else
      {
        LOBYTE(v109) = 1;
        sub_1A990EE04(&qword_1EB3B1918, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
        sub_1A99776E0();
        (*(v60 + 8))(v32, v35);
        (*(v30 + 8))(v31, v29);
        result = (*(v106 + 8))(v107, v108);
      }

      break;
  }

  return result;
}

uint64_t SFAirDropReceive.Failure.hash(into:)(uint64_t a1)
{
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDropReceive.Failure(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A990E7D0(v1, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *(v8 + 2);
      v12 = *(v8 + 4);
      v13 = *(v8 + 6);
      MEMORY[0x1AC58A630](14);
      sub_1A99768D0();
      MEMORY[0x1AC58A630](v11);
      if (v12)
      {
        sub_1A99779A0();
        sub_1A99768D0();
        if (v13)
        {
LABEL_13:
          sub_1A99779A0();
          sub_1A99768D0();
          goto LABEL_21;
        }
      }

      else
      {
        sub_1A99779A0();
        if (v13)
        {
          goto LABEL_13;
        }
      }

      sub_1A99779A0();
LABEL_21:

    case 2u:
      return MEMORY[0x1AC58A630](0);
    case 3u:
      return MEMORY[0x1AC58A630](1);
    case 4u:
      return MEMORY[0x1AC58A630](2);
    case 5u:
      return MEMORY[0x1AC58A630](3);
    case 6u:
      return MEMORY[0x1AC58A630](4);
    case 7u:
      return MEMORY[0x1AC58A630](5);
    case 8u:
      return MEMORY[0x1AC58A630](6);
    case 9u:
      return MEMORY[0x1AC58A630](7);
    case 0xAu:
      return MEMORY[0x1AC58A630](8);
    case 0xBu:
      return MEMORY[0x1AC58A630](9);
    case 0xCu:
      return MEMORY[0x1AC58A630](10);
    case 0xDu:
      return MEMORY[0x1AC58A630](12);
    case 0xEu:
      return MEMORY[0x1AC58A630](13);
    default:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8);
      (*(v3 + 32))(v5, &v8[*(v9 + 48)], v2);
      MEMORY[0x1AC58A630](11);
      sub_1A99768D0();

      sub_1A990EE04(&qword_1EB3AC8C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1A9976740();
      return (*(v3 + 8))(v5, v2);
  }
}

uint64_t SFAirDropReceive.Failure.hashValue.getter()
{
  sub_1A9977980();
  SFAirDropReceive.Failure.hash(into:)(v1);
  return sub_1A99779B0();
}

uint64_t SFAirDropReceive.Failure.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B68, &qword_1A99A7560);
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v91 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B70, &qword_1A99A7568);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v133 = &v91 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B78, &qword_1A99A7570);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v132 = &v91 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B80, &qword_1A99A7578);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v134 = &v91 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B88, &qword_1A99A7580);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v131 = &v91 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B90, &qword_1A99A7588);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v130 = &v91 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B98, &qword_1A99A7590);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v129 = &v91 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BA0, &qword_1A99A7598);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v128 = &v91 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BA8, &qword_1A99A75A0);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v127 = &v91 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BB0, &qword_1A99A75A8);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v137 = &v91 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BB8, &qword_1A99A75B0);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v126 = &v91 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BC0, &qword_1A99A75B8);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v125 = &v91 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BC8, &qword_1A99A75C0);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v124 = &v91 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BD0, &qword_1A99A75C8);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v123 = &v91 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BD8, &qword_1A99A75D0);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v18 = &v91 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BE0, &unk_1A99A75D8);
  v140 = *(v19 - 8);
  v141 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  v22 = type metadata accessor for SFAirDropReceive.Failure(0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v91 - v29;
  v31 = a1[3];
  v152 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1A990E834();
  v32 = v142;
  sub_1A9977A70();
  if (v32)
  {
LABEL_8:
    v47 = v152;
    return __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  v93 = v18;
  v91 = v25;
  v92 = v28;
  v34 = v137;
  v33 = v138;
  v142 = 0;
  v94 = v30;
  v35 = v139;
  v36 = v141;
  v37 = sub_1A9977620();
  v38 = (2 * *(v37 + 16)) | 1;
  v148 = v37;
  v149 = v37 + 32;
  v150 = 0;
  v151 = v38;
  v39 = sub_1A97AB894();
  if (v150 != v151 >> 1)
  {
LABEL_6:
    v43 = v21;
    v44 = sub_1A9977300();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v46 = v22;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    (*(v140 + 8))(v43, v36);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v22 = v136;
  switch(v39)
  {
    case 0:
      LOBYTE(v143) = 0;
      sub_1A990ED20();
      v40 = v93;
      v41 = v142;
      sub_1A9977530();
      if (v41)
      {
        goto LABEL_37;
      }

      (*(v95 + 8))(v40, v96);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 1:
      LOBYTE(v143) = 1;
      sub_1A990ECCC();
      v70 = v123;
      v71 = v142;
      sub_1A9977530();
      if (v71)
      {
        goto LABEL_37;
      }

      (*(v97 + 8))(v70, v98);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 2:
      LOBYTE(v143) = 2;
      sub_1A990EC78();
      v64 = v124;
      v65 = v142;
      sub_1A9977530();
      if (v65)
      {
        goto LABEL_37;
      }

      (*(v99 + 8))(v64, v100);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 3:
      LOBYTE(v143) = 3;
      sub_1A990EC24();
      v66 = v125;
      v67 = v142;
      sub_1A9977530();
      if (v67)
      {
        goto LABEL_37;
      }

      (*(v101 + 8))(v66, v102);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 4:
      LOBYTE(v143) = 4;
      sub_1A990EBD0();
      v58 = v126;
      v59 = v142;
      sub_1A9977530();
      if (v59)
      {
        goto LABEL_37;
      }

      (*(v103 + 8))(v58, v104);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 5:
      LOBYTE(v143) = 5;
      sub_1A990EB7C();
      v72 = v142;
      sub_1A9977530();
      if (v72)
      {
        goto LABEL_37;
      }

      (*(v105 + 8))(v34, v106);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 6:
      LOBYTE(v143) = 6;
      sub_1A990EB28();
      v75 = v127;
      v76 = v142;
      sub_1A9977530();
      if (v76)
      {
        goto LABEL_37;
      }

      (*(v107 + 8))(v75, v108);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 7:
      LOBYTE(v143) = 7;
      sub_1A990EAD4();
      v68 = v128;
      v69 = v142;
      sub_1A9977530();
      if (v69)
      {
        goto LABEL_37;
      }

      (*(v109 + 8))(v68, v110);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 8:
      LOBYTE(v143) = 8;
      sub_1A990EA80();
      v79 = v129;
      v80 = v142;
      sub_1A9977530();
      if (v80)
      {
        goto LABEL_37;
      }

      (*(v111 + 8))(v79, v112);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 9:
      LOBYTE(v143) = 9;
      sub_1A990EA2C();
      v62 = v130;
      v63 = v142;
      sub_1A9977530();
      if (v63)
      {
        goto LABEL_37;
      }

      (*(v113 + 8))(v62, v114);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 10:
      LOBYTE(v143) = 10;
      sub_1A990E9D8();
      v77 = v131;
      v78 = v142;
      sub_1A9977530();
      if (v78)
      {
        goto LABEL_37;
      }

      (*(v115 + 8))(v77, v116);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 11:
      LOBYTE(v143) = 11;
      sub_1A990E984();
      v54 = v134;
      v55 = v142;
      sub_1A9977530();
      if (v55)
      {
        goto LABEL_37;
      }

      LOBYTE(v143) = 0;
      v56 = v122;
      v57 = sub_1A99775A0();
      v87 = v86;
      v142 = v21;
      v88 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8);
      v89 = v92;
      *v92 = v88;
      v89[1] = v87;
      sub_1A9976020();
      LOBYTE(v143) = 1;
      sub_1A990EE04(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
      sub_1A99775F0();
      (*(v121 + 8))(v54, v56);
      (*(v140 + 8))(v142, v141);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v85 = v89;
      goto LABEL_39;
    case 12:
      LOBYTE(v143) = 12;
      sub_1A990E930();
      v60 = v132;
      v61 = v142;
      sub_1A9977530();
      if (v61)
      {
        goto LABEL_37;
      }

      (*(v117 + 8))(v60, v118);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 13:
      LOBYTE(v143) = 13;
      sub_1A990E8DC();
      v73 = v133;
      v74 = v142;
      sub_1A9977530();
      if (v74)
      {
        goto LABEL_37;
      }

      (*(v119 + 8))(v73, v120);
      (*(v140 + 8))(v21, v36);
      swift_unknownObjectRelease();
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 14:
      LOBYTE(v143) = 14;
      sub_1A990E888();
      v49 = v135;
      v50 = v142;
      sub_1A9977530();
      if (v50)
      {
LABEL_37:
        (*(v140 + 8))(v21, v36);
        goto LABEL_7;
      }

      v51 = v49;
      v52 = v21;
      sub_1A988B2D4();
      sub_1A99775F0();
      v53 = v140;
      (*(v22 + 8))(v51, v33);
      (*(v53 + 8))(v52, v36);
      swift_unknownObjectRelease();
      v81 = v144;
      v82 = v147;
      v83 = v91;
      *v91 = v143;
      v83[1] = v81;
      v84 = v146;
      *(v83 + 1) = v145;
      *(v83 + 2) = v84;
      v83[6] = v82;
      swift_storeEnumTagMultiPayload();
      v85 = v83;
LABEL_39:
      v42 = v94;
      sub_1A990E76C(v85, v94);
LABEL_40:
      v90 = v152;
      sub_1A990E76C(v42, v35);
      v47 = v90;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

uint64_t sub_1A990E114()
{
  sub_1A9977980();
  SFAirDropReceive.Failure.hash(into:)(v1);
  return sub_1A99779B0();
}

uint64_t sub_1A990E158(uint64_t a1)
{
  sub_1A9977980();
  SFAirDropReceive.Failure.hash(into:)(v2);
  return sub_1A99779B0();
}

uint64_t _s7Sharing16SFAirDropReceiveO7FailureO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  *&v44 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = type metadata accessor for SFAirDropReceive.Failure(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B5D08, &unk_1A99A84A0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v40 - v18;
  v20 = &v40 + *(v17 + 56) - v18;
  sub_1A990E7D0(a1, &v40 - v18);
  sub_1A990E7D0(a2, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A990E7D0(v19, v13);
      v24 = *(v13 + 1);
      v25 = *(v13 + 4);
      v26 = *(v13 + 6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = *(v13 + 5);
        v28 = *v20;
        v29 = *(v20 + 1);
        v30 = *(v20 + 6);
        v49[0] = *v13;
        v49[1] = v24;
        v50 = *(v13 + 1);
        v51 = v25;
        v52 = v27;
        v53 = v26;
        v45[0] = v28;
        v45[1] = v29;
        v31 = *(v20 + 1);
        v44 = *(v20 + 2);
        v46 = v31;
        v47 = v44;
        v48 = v30;
        v32 = _s7Sharing12CodableErrorV2eeoiySbAC_ACtFZ_0(v49, v45);

        goto LABEL_45;
      }

      goto LABEL_33;
    case 2u:
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_34;
      }

LABEL_31:
      sub_1A99102B0(v19);
      v32 = 1;
      return v32 & 1;
    default:
      sub_1A990E7D0(v19, v15);
      v22 = *v15;
      v21 = *(v15 + 1);
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v44 + 8))(&v15[v23], v4);
LABEL_33:

LABEL_34:
        sub_1A9910248(v19);
        goto LABEL_35;
      }

      v34 = *v20;
      v41 = *(v20 + 1);
      v42 = v34;
      v43 = v22;
      v35 = *(v44 + 32);
      v35(v9, &v15[v23], v4);
      v35(v7, &v20[v23], v4);
      if (v43 == v42 && v21 == v41)
      {
      }

      else
      {
        v37 = sub_1A99777E0();

        if ((v37 & 1) == 0)
        {
          v38 = *(v44 + 8);
          v38(v7, v4);
          v38(v9, v4);
          sub_1A99102B0(v19);
LABEL_35:
          v32 = 0;
          return v32 & 1;
        }
      }

      v32 = sub_1A9975FD0();
      v39 = *(v44 + 8);
      v39(v7, v4);
      v39(v9, v4);
LABEL_45:
      sub_1A99102B0(v19);
      return v32 & 1;
  }
}

uint64_t type metadata accessor for SFAirDropReceive.Failure(uint64_t a1)
{
  result = qword_1EB3AC570;
  if (!qword_1EB3AC570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A990E76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A990E7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A990E834()
{
  result = qword_1EB3B5AE8;
  if (!qword_1EB3B5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5AE8);
  }

  return result;
}

unint64_t sub_1A990E888()
{
  result = qword_1EB3B5AF0;
  if (!qword_1EB3B5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5AF0);
  }

  return result;
}

unint64_t sub_1A990E8DC()
{
  result = qword_1EB3B5AF8;
  if (!qword_1EB3B5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5AF8);
  }

  return result;
}

unint64_t sub_1A990E930()
{
  result = qword_1EB3B5B00;
  if (!qword_1EB3B5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B00);
  }

  return result;
}

unint64_t sub_1A990E984()
{
  result = qword_1EB3B5B08;
  if (!qword_1EB3B5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B08);
  }

  return result;
}

unint64_t sub_1A990E9D8()
{
  result = qword_1EB3B5B10;
  if (!qword_1EB3B5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B10);
  }

  return result;
}

unint64_t sub_1A990EA2C()
{
  result = qword_1EB3B5B18;
  if (!qword_1EB3B5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B18);
  }

  return result;
}

unint64_t sub_1A990EA80()
{
  result = qword_1EB3B5B20;
  if (!qword_1EB3B5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B20);
  }

  return result;
}

unint64_t sub_1A990EAD4()
{
  result = qword_1EB3B5B28;
  if (!qword_1EB3B5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B28);
  }

  return result;
}

unint64_t sub_1A990EB28()
{
  result = qword_1EB3B5B30;
  if (!qword_1EB3B5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B30);
  }

  return result;
}

unint64_t sub_1A990EB7C()
{
  result = qword_1EB3B5B38;
  if (!qword_1EB3B5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B38);
  }

  return result;
}

unint64_t sub_1A990EBD0()
{
  result = qword_1EB3B5B40;
  if (!qword_1EB3B5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B40);
  }

  return result;
}

unint64_t sub_1A990EC24()
{
  result = qword_1EB3B5B48;
  if (!qword_1EB3B5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B48);
  }

  return result;
}

unint64_t sub_1A990EC78()
{
  result = qword_1EB3B5B50;
  if (!qword_1EB3B5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B50);
  }

  return result;
}

unint64_t sub_1A990ECCC()
{
  result = qword_1EB3B5B58;
  if (!qword_1EB3B5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B58);
  }

  return result;
}

unint64_t sub_1A990ED20()
{
  result = qword_1EB3B5B60;
  if (!qword_1EB3B5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B60);
  }

  return result;
}

uint64_t sub_1A990EE04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A990EE4C(uint64_t a1)
{
  sub_1A990EEB4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1A990EEB4(uint64_t a1)
{
  if (!qword_1EB3AB768)
  {
    sub_1A9976020();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AB768);
    }
  }
}

uint64_t _s7FailureO10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7FailureO10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A990F164()
{
  result = qword_1EB3B5BF0;
  if (!qword_1EB3B5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5BF0);
  }

  return result;
}

unint64_t sub_1A990F1BC()
{
  result = qword_1EB3B5BF8;
  if (!qword_1EB3B5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5BF8);
  }

  return result;
}

unint64_t sub_1A990F214()
{
  result = qword_1EB3B5C00;
  if (!qword_1EB3B5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C00);
  }

  return result;
}

unint64_t sub_1A990F26C()
{
  result = qword_1EB3B5C08;
  if (!qword_1EB3B5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C08);
  }

  return result;
}

unint64_t sub_1A990F2C4()
{
  result = qword_1EB3B5C10;
  if (!qword_1EB3B5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C10);
  }

  return result;
}

unint64_t sub_1A990F31C()
{
  result = qword_1EB3B5C18;
  if (!qword_1EB3B5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C18);
  }

  return result;
}

unint64_t sub_1A990F374()
{
  result = qword_1EB3B5C20;
  if (!qword_1EB3B5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C20);
  }

  return result;
}

unint64_t sub_1A990F3CC()
{
  result = qword_1EB3B5C28;
  if (!qword_1EB3B5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C28);
  }

  return result;
}

unint64_t sub_1A990F424()
{
  result = qword_1EB3B5C30;
  if (!qword_1EB3B5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C30);
  }

  return result;
}

unint64_t sub_1A990F47C()
{
  result = qword_1EB3B5C38;
  if (!qword_1EB3B5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C38);
  }

  return result;
}

unint64_t sub_1A990F4D4()
{
  result = qword_1EB3B5C40;
  if (!qword_1EB3B5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C40);
  }

  return result;
}

unint64_t sub_1A990F52C()
{
  result = qword_1EB3B5C48;
  if (!qword_1EB3B5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C48);
  }

  return result;
}

unint64_t sub_1A990F584()
{
  result = qword_1EB3B5C50;
  if (!qword_1EB3B5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C50);
  }

  return result;
}

unint64_t sub_1A990F5DC()
{
  result = qword_1EB3B5C58;
  if (!qword_1EB3B5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C58);
  }

  return result;
}

unint64_t sub_1A990F634()
{
  result = qword_1EB3B5C60;
  if (!qword_1EB3B5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C60);
  }

  return result;
}

unint64_t sub_1A990F68C()
{
  result = qword_1EB3B5C68;
  if (!qword_1EB3B5C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C68);
  }

  return result;
}

unint64_t sub_1A990F6E4()
{
  result = qword_1EB3B5C70;
  if (!qword_1EB3B5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C70);
  }

  return result;
}

unint64_t sub_1A990F73C()
{
  result = qword_1EB3B5C78;
  if (!qword_1EB3B5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C78);
  }

  return result;
}

unint64_t sub_1A990F794()
{
  result = qword_1EB3B5C80;
  if (!qword_1EB3B5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C80);
  }

  return result;
}

unint64_t sub_1A990F7EC()
{
  result = qword_1EB3B5C88;
  if (!qword_1EB3B5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C88);
  }

  return result;
}

unint64_t sub_1A990F844()
{
  result = qword_1EB3B5C90;
  if (!qword_1EB3B5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C90);
  }

  return result;
}

unint64_t sub_1A990F89C()
{
  result = qword_1EB3B5C98;
  if (!qword_1EB3B5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C98);
  }

  return result;
}

unint64_t sub_1A990F8F4()
{
  result = qword_1EB3B5CA0;
  if (!qword_1EB3B5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CA0);
  }

  return result;
}

unint64_t sub_1A990F94C()
{
  result = qword_1EB3B5CA8;
  if (!qword_1EB3B5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CA8);
  }

  return result;
}

unint64_t sub_1A990F9A4()
{
  result = qword_1EB3B5CB0;
  if (!qword_1EB3B5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CB0);
  }

  return result;
}

unint64_t sub_1A990F9FC()
{
  result = qword_1EB3B5CB8;
  if (!qword_1EB3B5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CB8);
  }

  return result;
}

unint64_t sub_1A990FA54()
{
  result = qword_1EB3B5CC0;
  if (!qword_1EB3B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CC0);
  }

  return result;
}

unint64_t sub_1A990FAAC()
{
  result = qword_1EB3B5CC8;
  if (!qword_1EB3B5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CC8);
  }

  return result;
}

unint64_t sub_1A990FB04()
{
  result = qword_1EB3B5CD0;
  if (!qword_1EB3B5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CD0);
  }

  return result;
}

unint64_t sub_1A990FB5C()
{
  result = qword_1EB3B5CD8;
  if (!qword_1EB3B5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CD8);
  }

  return result;
}

unint64_t sub_1A990FBB4()
{
  result = qword_1EB3B5CE0;
  if (!qword_1EB3B5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CE0);
  }

  return result;
}

unint64_t sub_1A990FC0C()
{
  result = qword_1EB3B5CE8;
  if (!qword_1EB3B5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CE8);
  }

  return result;
}

unint64_t sub_1A990FC64()
{
  result = qword_1EB3B5CF0;
  if (!qword_1EB3B5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CF0);
  }

  return result;
}

unint64_t sub_1A990FCBC()
{
  result = qword_1EB3B5CF8;
  if (!qword_1EB3B5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CF8);
  }

  return result;
}

unint64_t sub_1A990FD14()
{
  result = qword_1EB3B5D00;
  if (!qword_1EB3B5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5D00);
  }

  return result;
}

uint64_t sub_1A990FD68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656E696C636564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696D7369446B7361 && a2 == 0xEC00000064657373 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61437265646E6573 && a2 == 0xEF64656C6C65636ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E8250 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954646578696DLL && a2 == 0xEA00000000007365 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E5E30 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5E10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72456D6165727473 && a2 == 0xEB00000000726F72 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6148746F4E6B7361 && a2 == 0xED000064656C646ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E8230 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6575716552646162 && a2 == 0xEA00000000007473 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEF65707954646574 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x70416F5465766F6DLL && a2 == 0xEF64656C69614670 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E5DD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7463657078656E75 && a2 == 0xEA00000000006465)
  {

    return 14;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1A9910248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B5D08, &unk_1A99A84A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A99102B0(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.Failure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFXPCProgressTask.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v40 = a6;
  v38 = a3;
  v35 = a2;
  v14 = type metadata accessor for SFProgressTask(0, a2, a3, a4);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v37 = &v33 - v17;
  SFProgressTask.initialValue.getter(v16, a8, v18);
  WitnessTable = swift_getWitnessTable();
  v34 = a4;
  v36 = a5;
  v39 = a1;
  AsyncSequence<>.xpc.getter(v14, WitnessTable, a4, a5, &v42);
  v41[0] = a2;
  v20 = v38;
  v41[1] = v38;
  v41[2] = a4;
  v21 = v40;
  v41[3] = a5;
  v41[4] = v40;
  v41[5] = a7;
  v22 = type metadata accessor for SFXPCProgressTask(0, v41);
  *(a8 + *(v22 + 68)) = v42;
  v23 = v37;
  (*(v15 + 16))(v37, a1, v14);
  v24 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 2) = v35;
  *(v25 + 3) = v20;
  v27 = v36;
  *(v25 + 4) = v26;
  *(v25 + 5) = v27;
  v28 = v33;
  *(v25 + 6) = v21;
  *(v25 + 7) = v28;
  (*(v15 + 32))(&v25[v24], v23, v14);
  v29 = *(v22 + 72);
  v30 = sub_1A984B03C();
  v31 = sub_1A984B090();
  SFXPCBlock.init(_:)(&unk_1A99A84C0, v25, &type metadata for VoidParameters, v20, v30, v31, v21, v28, a8 + v29);
  return (*(v15 + 8))(v39, v14);
}

uint64_t sub_1A99105A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  v11 = type metadata accessor for SFProgressTask(0, a4, a5, v10);
  *v9 = v5;
  v9[1] = sub_1A97B2638;

  return SFProgressTask.finalValue.getter(a1, v11);
}

uint64_t sub_1A9910674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SFProgressTask(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A97B2638;

  return sub_1A99105A0(a1, a2, v4 + v10, v7, v8);
}

uint64_t SFXPCProgressTask.finalValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  v6 = *(a2 + 24);
  v7 = sub_1A984B03C();
  v8 = sub_1A984B090();
  v9 = *(a2 + 48);
  *(v2 + 16) = &type metadata for VoidParameters;
  *(v2 + 24) = v6;
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;
  *(v2 + 48) = v9;
  v10 = type metadata accessor for SFXPCBlock(0, v2 + 16);
  *v5 = v2;
  v5[1] = sub_1A97C1AD8;
  v11 = MEMORY[0x1E69E7CC0];

  return SFXPCBlock.dynamicallyCall(withArguments:)(a1, v11, v10);
}

uint64_t SFXPCProgressTask.makeAsyncIterator()(uint64_t *a1)
{
  type metadata accessor for SFXPCAsyncSequence(0, a1[2], a1[4], a1[5]);

  SFXPCAsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1A9910924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x566C616974696E69 && a2 == 0xEC00000065756C61;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61566C616E6966 && a2 == 0xEF6B636F6C426575)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A9910A48(char a1)
{
  if (!a1)
  {
    return 0x566C616974696E69;
  }

  if (a1 == 1)
  {
    return 0x65636E6575716573;
  }

  return 0x6C61566C616E6966;
}

uint64_t sub_1A9910AF8(uint64_t a1)
{
  sub_1A9977980();
  sub_1A9677830(v3, *v1);
  return sub_1A99779B0();
}

uint64_t sub_1A9910B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9910924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9910B94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A98CB7F8();
  *a1 = result;
  return result;
}

uint64_t sub_1A9910BCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A9910C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFXPCProgressTask.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 32);
  v29 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v32 = v5;
  v33 = v4;
  v26 = v4;
  v27 = v6;
  v34 = v6;
  v35 = v29;
  v24 = v8;
  v25 = v7;
  v36 = v7;
  v37 = v8;
  type metadata accessor for SFXPCProgressTask.CodingKeys(255, &v32);
  swift_getWitnessTable();
  v9 = sub_1A9977710();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v9;
  v14 = v28;
  sub_1A9977AA0();
  LOBYTE(v32) = 0;
  v15 = v31;
  v16 = v30;
  v17 = v12;
  v18 = v29;
  sub_1A99776E0();
  if (!v15)
  {
    v19 = v14 + *(a2 + 68);
    v20 = *(v19 + 8);
    v32 = *v19;
    v33 = v20;
    v38 = 1;
    type metadata accessor for SFXPCAsyncSequence(0, v16, v27, v18);

    swift_getWitnessTable();
    sub_1A99776E0();

    v38 = 2;
    v21 = sub_1A984B03C();
    v22 = sub_1A984B090();
    v32 = &type metadata for VoidParameters;
    v33 = v26;
    v34 = v21;
    v35 = v22;
    v36 = v25;
    v37 = v24;
    type metadata accessor for SFXPCBlock(0, &v32);
    swift_getWitnessTable();
    sub_1A99776E0();
  }

  return (*(v10 + 8))(v17, v13);
}

uint64_t SFXPCProgressTask.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a8;
  *&v49 = &type metadata for VoidParameters;
  *(&v49 + 1) = a3;
  v50 = sub_1A984B03C();
  v51 = sub_1A984B090();
  v52 = a6;
  v53 = a7;
  v47 = a7;
  v38 = type metadata accessor for SFXPCBlock(0, &v49);
  v36 = *(v38 - 8);
  v15 = MEMORY[0x1EEE9AC00](v38);
  v39 = &v35 - v16;
  v41 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = a2;
  *(&v49 + 1) = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  type metadata accessor for SFXPCProgressTask.CodingKeys(255, &v49);
  swift_getWitnessTable();
  v46 = sub_1A9977630();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v19 = &v35 - v18;
  v43 = a4;
  v44 = a2;
  *&v49 = a2;
  *(&v49 + 1) = a3;
  v50 = a4;
  v51 = a5;
  v42 = a5;
  v52 = a6;
  v53 = v47;
  v20 = type metadata accessor for SFXPCProgressTask(0, &v49);
  v35 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v47 = v19;
  v23 = v48;
  sub_1A9977A70();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v48 = v22;
  v24 = v42;
  v25 = v43;
  v27 = v40;
  v26 = v41;
  LOBYTE(v49) = 0;
  v28 = v44;
  sub_1A99775F0();
  (*(v26 + 32))(v48, v45, v28);
  type metadata accessor for SFXPCAsyncSequence(0, v28, v25, v24);
  v54 = 1;
  swift_getWitnessTable();
  sub_1A99775F0();
  v45 = v20;
  v29 = *(v20 + 68);
  v30 = v48;
  *&v48[v29] = v49;
  LOBYTE(v49) = 2;
  v31 = v38;
  swift_getWitnessTable();
  sub_1A99775F0();
  (*(v27 + 8))(v47, v46);
  v32 = v45;
  (*(v36 + 32))(&v30[*(v45 + 18)], v39, v31);
  v33 = v35;
  (*(v35 + 16))(v37, v30, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return (*(v33 + 8))(v30, v32);
}

uint64_t sub_1A99114B4(uint64_t *a1)
{
  SFXPCProgressTask.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 1) + 8);

  return v3(v1, a1);
}

uint64_t SFProgressTask<>.xpc.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v6, a1);
  return SFXPCProgressTask.init(_:)(v14, *(a1 + 16), *(a1 + 24), a2, a3, a4, a5, a6);
}

uint64_t sub_1A9911628(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v9 = 0;
    v12 = result;
    result = type metadata accessor for SFXPCAsyncSequence(319, result, *(a1 + 32), *(a1 + 40));
    if (v4 <= 0x3F)
    {
      v10 = 0;
      v13 = result;
      v5 = *(a1 + 24);
      v7[0] = &type metadata for VoidParameters;
      v7[1] = v5;
      v7[2] = sub_1A984B03C();
      v7[3] = sub_1A984B090();
      v8 = *(a1 + 48);
      result = type metadata accessor for SFXPCBlock(319, v7);
      if (v6 <= 0x3F)
      {
        v11 = 0;
        v14 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A9911704(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  if (*(v9 + 84) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v12 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v11 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v11)
  {
    v22 = *(v6 + 48);

    return v22(a1, v7, v5);
  }

  else
  {
    v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) != 0)
    {
      v25 = *(v9 + 48);

      return v25((v23 + v12 + 16) & ~v12);
    }

    else
    {
      v24 = *v23;
      if (*v23 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }
}

void sub_1A9911970(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1A99762C0() - 8);
  v11 = *(v8 + 64);
  if (*(v10 + 84) <= 0x7FFFFFFFu)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v9 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v14 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((v14 + ((v11 + 7) & 0xFFFFFFF8) + 16) & ~v14) == -16)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 >= v12)
      {
        v23 = *(v25 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v22 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v24 = *(v10 + 56);

          v24((v22 + v14 + 16) & ~v14, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v22 = a2 & 0x7FFFFFFF;
          v22[1] = 0;
        }

        else
        {
          *v22 = (a2 - 1);
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((v14 + ((v11 + 7) & 0xFFFFFFF8) + 16) & ~v14) == -16)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((v14 + ((v11 + 7) & 0xFFFFFFF8) + 16) & ~v14) != -16)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t combineLatest<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v38 = a8;
  v39 = a4;
  v37 = a3;
  v34 = a2;
  v41 = a9;
  v40 = a10;
  v15 = *(a8 - 8);
  v35 = a12;
  v36 = a11;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v21);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  (*(v25 + 16))(v28, v34, a6);
  (*(v20 + 16))(v23, v37, a7);
  v32 = v38;
  (*(v15 + 16))(v18, v39, v38);
  return sub_1A9911F5C(v30, v28, v23, v18, a5, a6, a7, v32, v41, v40, v36, v35);
}

uint64_t sub_1A9911F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v20 = type metadata accessor for AsyncCombineLatest4Sequence(0, v22);
  (*(*(a6 - 8) + 32))(a9 + v20[21], a2, a6);
  (*(*(a7 - 8) + 32))(a9 + v20[22], a3, a7);
  return (*(*(a8 - 8) + 32))(a9 + v20[23], a4, a8);
}

uint64_t AsyncCombineLatest4Sequence.Iterator.next()(uint64_t a1, void *a2)
{
  *(v2 + 176) = a1;
  v23 = a2[2];
  v24 = a2[6];
  *(v2 + 184) = swift_getAssociatedTypeWitness();
  v21 = a2[3];
  v22 = a2[7];
  *(v2 + 192) = swift_getAssociatedTypeWitness();
  *(v2 + 200) = swift_getTupleTypeMetadata2();
  v4 = a2[8];
  v5 = a2[4];
  *(v2 + 208) = swift_getAssociatedTypeWitness();
  v6 = a2[9];
  v7 = a2[5];
  *(v2 + 216) = swift_getAssociatedTypeWitness();
  *(v2 + 224) = swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v2 + 232) = TupleTypeMetadata2;
  v9 = sub_1A99770A0();
  *(v2 + 240) = v9;
  *(v2 + 248) = *(v9 - 8);
  v10 = swift_task_alloc();
  *(v2 + 256) = v10;
  *(v2 + 264) = *(TupleTypeMetadata2 - 8);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v2 + 312) = v11;
  *&v12 = v23;
  *&v13 = v24;
  *(&v12 + 1) = v21;
  *(&v13 + 1) = v22;
  *(v2 + 32) = v13;
  *(v2 + 16) = v12;
  v14 = type metadata accessor for AsyncCombineLatest2Sequence(255, v2 + 16);
  *&v15 = v5;
  *(&v15 + 1) = v7;
  *&v16 = v4;
  *(&v16 + 1) = v6;
  *(v2 + 64) = v16;
  *(v2 + 48) = v15;
  v17 = type metadata accessor for AsyncCombineLatest2Sequence(255, v2 + 48);
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  *(v2 + 80) = v14;
  *(v2 + 88) = v17;
  *(v2 + 96) = WitnessTable;
  *(v2 + 104) = v19;
  type metadata accessor for AsyncCombineLatest2Sequence.Iterator(0, v2 + 80);
  *v11 = v2;
  v11[1] = sub_1A9912410;

  return AsyncCombineLatest2Sequence.Iterator.next()(v10);
}

uint64_t sub_1A9912410()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1A9912B04;
  }

  else
  {
    v2 = sub_1A9912524;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9912524()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 176);
    v41 = *(v0 + 208);
    v43 = *(v0 + 184);
    (*(*(v0 + 248) + 8))(v1, *(v0 + 240));
    *(v0 + 112) = v43;
    *(v0 + 128) = v41;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    (*(*(TupleTypeMetadata - 8) + 56))(v4, 1, 1, TupleTypeMetadata);
  }

  else
  {
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v39 = *(v0 + 288);
    v38 = *(v0 + 280);
    v32 = *(v0 + 272);
    v8 = *(v0 + 224);
    v21 = v8;
    v44 = *(v0 + 208);
    v9 = *(v0 + 200);
    v40 = *(v0 + 184);
    v10 = *(v0 + 176);
    v29 = *(v2 + 32);
    v29(v6, v1, v3);
    *(v0 + 144) = v40;
    *(v0 + 160) = v44;
    v11 = swift_getTupleTypeMetadata();
    v23 = v11[16];
    v25 = v11[12];
    v27 = v11[20];
    v12 = *(v2 + 16);
    v12(v7, v6, v3);
    v36 = v7 + *(v3 + 48);
    v37 = *(v9 + 48);
    v35 = *(v8 + 48);
    v31 = v40;
    v42 = *(v40 - 8);
    (*(v42 + 32))(v10, v7, v40);
    v12(v39, v6, v3);
    v34 = v39 + *(v3 + 48);
    v33 = *(v8 + 48);
    *&v40 = *(*(&v40 + 1) - 8);
    (*(v40 + 32))(v10 + v25, v39 + *(v9 + 48), *(&v40 + 1));
    v12(v38, v6, v3);
    v26 = *(v9 + 48);
    v22 = v38 + *(v3 + 48);
    v24 = *(v8 + 48);
    v13 = *(v44 - 8);
    (*(v13 + 32))(v10 + v23);
    v29(v32, v6, v3);
    v30 = *(v9 + 48);
    v14 = v32 + *(v3 + 48);
    v15 = *(*(&v44 + 1) - 8);
    (*(v15 + 32))(v10 + v27, v14 + *(v21 + 48), *(&v44 + 1));
    (*(*(v11 - 1) + 56))(v10, 0, 1, v11);
    v28 = *(v13 + 8);
    v28(v14, v44);
    v16 = *(v40 + 8);
    v16(v32 + v30, *(&v40 + 1));
    v17 = *(v42 + 8);
    v17(v32, v31);
    v18 = *(v15 + 8);
    v18(v22 + v24, *(&v44 + 1));
    v16(v38 + v26, *(&v40 + 1));
    v17(v38, v31);
    v18(v34 + v33, *(&v44 + 1));
    v28(v34, v44);
    v17(v39, v31);
    v18(v36 + v35, *(&v44 + 1));
    v28(v36, v44);
    v16(v7 + v37, *(&v40 + 1));
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1A9912B04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9912BAC(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2638;

  return AsyncCombineLatest4Sequence.Iterator.next()(a1, a2);
}

uint64_t sub_1A9912C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v6[5] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t AsyncCombineLatest4Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v4 = *(a1 + 48);
  v25 = *(a1 + 16);
  v26 = v4;
  v30 = v25;
  v31 = v4;
  v5 = type metadata accessor for AsyncCombineLatest2Sequence(255, &v30);
  v6 = *(a1 + 64);
  v27 = *(a1 + 32);
  v28 = v6;
  v30 = v27;
  v31 = v6;
  v7 = type metadata accessor for AsyncCombineLatest2Sequence(255, &v30);
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  *&v30 = v5;
  *(&v30 + 1) = v7;
  *&v31 = WitnessTable;
  *(&v31 + 1) = v23;
  v22 = type metadata accessor for AsyncCombineLatest2Sequence(0, &v30);
  v8 = *(v22 - 8);
  v9 = MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - v10;
  v12 = *(v7 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v21 - v14;
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v21 - v17;
  combineLatest<A, B>(_:_:)(v2, v2 + *(a1 + 84), v25, *(&v25 + 1), v26, *(&v26 + 1), &v21 - v17);
  combineLatest<A, B>(_:_:)(v2 + *(a1 + 88), v2 + *(a1 + 92), v27, *(&v27 + 1), v28, *(&v28 + 1), v15);
  combineLatest<A, B>(_:_:)(v18, v15, v5, v7, WitnessTable, v23, v11);
  v19 = v22;
  AsyncCombineLatest2Sequence.makeAsyncIterator()(v22, &v30);
  (*(v8 + 8))(v11, v19);
  (*(v12 + 8))(v15, v7);
  result = (*(v16 + 8))(v18, v5);
  *v29 = v30;
  return result;
}

uint64_t sub_1A9913094(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A9913154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AsyncCombineLatest4Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A99131BC(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A9913280(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  v9 = *(a3[4] - 8);
  if (v8 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v9 + 84);
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = a3[5];
  v14 = *(v13 - 8);
  v15 = *(v7 + 80);
  v16 = *(*(a3[3] - 8) + 64);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v14 + 80);
  if (*(v14 + 84) <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(*(a3[2] - 8) + 64) + v15;
  v22 = a2 - v20;
  if (a2 <= v20)
  {
    goto LABEL_34;
  }

  v23 = ((v18 + v19 + ((v16 + v17 + (v21 & ~v15)) & ~v17)) & ~v19) + *(*(v13 - 8) + 64);
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v26 = ((v22 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v26 < 2)
    {
LABEL_33:
      if (v20)
      {
LABEL_34:
        if (v6 == v20)
        {
          v30 = *(v5 + 48);

          return v30();
        }

        else
        {
          v32 = (a1 + v21) & ~v15;
          if (v8 == v20)
          {
            v33 = *(v7 + 48);
            v34 = *(v7 + 84);
            v35 = a3[3];
          }

          else
          {
            v32 = (v32 + v16 + v17) & ~v17;
            if (v11 == v20)
            {
              v33 = *(*(a3[4] - 8) + 48);
              v34 = v11;
              v35 = a3[4];
            }

            else
            {
              v36 = ~v19;
              v37 = v32 + v18 + v19;
              v33 = *(v14 + 48);
              v32 = v37 & v36;
              v34 = *(v14 + 84);
              v35 = a3[5];
            }
          }

          return v33(v32, v34, v35);
        }
      }

      return 0;
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_33;
  }

LABEL_20:
  v27 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v27 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v28 = ((v18 + v19 + ((v16 + v17 + (v21 & ~v15)) & ~v17)) & ~v19) + *(*(v13 - 8) + 64);
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v20 + (v29 | v27) + 1;
}

char *sub_1A9913628(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[4];
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64);
  v20 = *(v14 + 80);
  if (*(v14 + 84) <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v14 + 84);
  }

  v22 = v15 + v16;
  v23 = ((v19 + v20 + ((v17 + v18 + ((v15 + v16) & ~v16)) & ~v18)) & ~v20) + *(v14 + 64);
  v24 = a3 >= v21;
  v25 = a3 - v21;
  if (v25 != 0 && v24)
  {
    if (v23 <= 3)
    {
      v30 = ((v25 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v30))
      {
        v26 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v26 = v31;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v21 < a2)
  {
    v27 = ~v21 + a2;
    if (v23 < 4)
    {
      v29 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v32 = v27 & ~(-1 << (8 * v23));
        v33 = result;
        bzero(result, v23);
        result = v33;
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *v33 = v32;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&result[v23] = v29;
              }

              else
              {
                *&result[v23] = v29;
              }

              return result;
            }
          }

          else
          {
            *v33 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v33 = v32;
        v33[2] = BYTE2(v32);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v28 = result;
      bzero(result, v23);
      result = v28;
      *v28 = v27;
      v29 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      result[v23] = v29;
    }

    return result;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&result[v23] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *&result[v23] = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    goto LABEL_36;
  }

  result[v23] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v6 == v21)
  {
    v34 = *(v5 + 56);

    return v34();
  }

  else
  {
    v35 = &result[v22] & ~v16;
    if (v9 == v21)
    {
      v36 = *(v8 + 56);
    }

    else
    {
      v35 = (v35 + v17 + v18) & ~v18;
      if (v12 == v21)
      {
        v36 = *(v11 + 56);
      }

      else
      {
        v37 = v35 + v19 + v20;
        v36 = *(v14 + 56);
        v35 = v37 & ~v20;
      }
    }

    return v36(v35);
  }
}

uint64_t sub_1A9913A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id _SFXPCError.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A99195C8(a1);

  return v4;
}

void sub_1A9913B28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1A9976060();
  }

  v8 = v7;
  (*(a6 + 16))(a6);
}

uint64_t sub_1A9913BB4()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3ACDD0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3ACDD0);
  if (qword_1ED717D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED717D48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double SFXPCListener.connections.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t SFXPCListener.containerRegistry.setter(uint64_t a1)
{
  v3 = qword_1EB3B5F20;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A9913DC4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_1EB3B5F28);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A991A9C8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A9913E64(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A991A9EC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_1EB3B5F28);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

uint64_t sub_1A9913FCC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_1EB3B5F30);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A991A914;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A991406C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A991A8EC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_1EB3B5F30);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

uint64_t sub_1A99141D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + qword_1EB3B5F38);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A9914234(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (*a2 + qword_1EB3B5F38);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v2;
  v5[1] = v4;
  sub_1A967C510(v2, v3);
  return sub_1A967C46C(v6, v7);
}

uint64_t sub_1A99142D8(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1A9914360(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1A9914480(void *a1, SEL *a2)
{
  v4 = [objc_opt_self() *a2];
  v5 = a1;
  v6 = objc_allocWithZone(v2);
  return SFXPCListener.init(takingOver:queue:)(v4, v5);
}

id SFXPCListener.init(takingOver:queue:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  *(v2 + qword_1EB3B5F20) = 0;
  v8 = (v2 + qword_1EB3B5F28);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v2 + qword_1EB3B5F30);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v2 + qword_1EB3B5F38);
  *v10 = 0;
  v10[1] = 0;
  [a1 sf:a2 setQueue:?];
  *(v2 + qword_1EB3B5F40) = a1;
  type metadata accessor for SFXPCListener.ClientConnection(0, *((v7 & v6) + 0x50), v11, v12);
  v13 = a1;
  *(v2 + qword_1EB3B5F18) = sub_1A9976B00();
  *(v2 + qword_1EB3B5F48) = a2;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v14 = a2;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  [v13 setDelegate_];

  return v15;
}

id SFXPCListener.__allocating_init(machServiceName:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v6 = sub_1A99767E0();

  v7 = [v5 initWithMachServiceName_];

  v8 = objc_allocWithZone(v3);
  return SFXPCListener.init(takingOver:queue:)(v7, a3);
}

id SFXPCListener.endpoint.getter()
{
  v1 = [*(v0 + qword_1EB3B5F40) endpoint];

  return v1;
}

uint64_t sub_1A99147C4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = qword_1EB3B5F18;
  swift_beginAccess();
  v11 = *(a1 + v4);
  sub_1A9976B60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A9976F10();
  if (v10 != 1)
  {
    swift_beginAccess();
    sub_1A9976B50();
    swift_endAccess();
  }

  v5 = a1 + qword_1EB3B5F30;
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {
    v8 = *(v5 + 8);
    v9 = qword_1EB3EAF98;

    v7(a2 + v9);
    return sub_1A967C46C(v7, v8);
  }

  return result;
}

uint64_t sub_1A9914934(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1A9919C30(v7);

  return v9 & 1;
}

uint64_t sub_1A99149C4(uint64_t a1)
{

  sub_1A967C46C(*(a1 + qword_1EB3B5F28), *(a1 + qword_1EB3B5F28 + 8));
  sub_1A967C46C(*(a1 + qword_1EB3B5F30), *(a1 + qword_1EB3B5F30 + 8));
  v2 = *(a1 + qword_1EB3B5F38);
  v3 = *(a1 + qword_1EB3B5F38 + 8);

  return sub_1A967C46C(v2, v3);
}

id SFXPCListener.ClientConnection.init(connection:clientIdentity:containerRegistry:contextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[qword_1EB3EAFA0] = a1;
  sub_1A9903A68(a2, &v5[qword_1EB3EAF98]);
  v12 = &v5[qword_1EB3EAF90];
  *v12 = a4;
  *(v12 + 1) = a5;
  *&v5[qword_1EB3EAF88] = a3;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_1A9903B30(a2);
  return v13;
}

Swift::Void __swiftcall SFXPCListener.ClientConnection.activate()()
{
  v1 = *(v0 + qword_1EB3EAFA0);
  swift_beginAccess();
  [*(v1 + 16) activate];
}

uint64_t SFXPCListener.ClientConnection.invoke(_:parametersData:parametersAsyncSequenceContainer:parametersBlocksContainer:sync:completion:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, unint64_t, char *, id, void *), uint64_t a8)
{
  v175 = a8;
  v174 = a7;
  LODWORD(v171) = a6;
  v157 = a5;
  v158 = a4;
  v161 = a3;
  v160 = a2;
  v170 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x50);
  v10 = *(v170 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v151 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v172 = &v151 - v17;
  v168 = sub_1A99762C0();
  v167 = *(v168 - 8);
  v18 = *(v167 + 64);
  v19 = MEMORY[0x1EEE9AC00](v168);
  v165 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v151 - v20;
  v169 = type metadata accessor for SFClientIdentity(0);
  v154 = *(v169 - 1);
  v22 = MEMORY[0x1EEE9AC00](v169);
  v24 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v159 = &v151 - v26;
  v155 = v27;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v151 - v28;
  v176 = v8;
  sub_1A9903A68(&v8[qword_1EB3EAF98], &v151 - v28);
  v166 = a1;
  v30 = *&a1[OBJC_IVAR___SFXPCInvocation_name + 8];
  if (!v30)
  {
    if (qword_1EB3ACDC8 != -1)
    {
      swift_once();
    }

    v41 = sub_1A99764A0();
    __swift_project_value_buffer(v41, qword_1EB3ACDD0);
    v42 = v29;
    sub_1A9903A68(v29, v24);
    v43 = v166;
    v44 = sub_1A9976480();
    v45 = sub_1A9976F80();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v184 = v47;
      *v46 = 136315394;
      v48 = SFClientIdentity.shortDescription.getter();
      v50 = v49;
      sub_1A9903B30(v24);
      v51 = sub_1A97AF148(v48, v50, &v184);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      v52 = v43;
      v53 = [v52 description];
      v54 = sub_1A9976820();
      v56 = v55;

      v57 = sub_1A97AF148(v54, v56, &v184);

      *(v46 + 14) = v57;
      _os_log_impl(&dword_1A9662000, v44, v45, "invocable has no name -- Daemon {client: %s, invocable: %{public}s}", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC58D2C0](v47, -1, -1);
      MEMORY[0x1AC58D2C0](v46, -1, -1);
    }

    else
    {

      sub_1A9903B30(v24);
    }

    sub_1A97BCDE0();
    v96 = swift_allocError();
    *v97 = xmmword_1A99A8800;
    *(v97 + 16) = 0xD00000000000004FLL;
    *(v97 + 24) = 0x80000001A99E8280;
    *(v97 + 32) = 260;
    *(v97 + 80) = 0x2000000000000000;
    v98 = objc_allocWithZone(type metadata accessor for _SFXPCError());
    v99 = sub_1A99195C8(v96);

    v174(0, 0xF000000000000000, 0, 0, v99);
    v95 = v42;
    return sub_1A9903B30(v95);
  }

  v153 = v15;
  v184 = *&a1[OBJC_IVAR___SFXPCInvocation_name];
  v185 = v30;

  MEMORY[0x1AC5895B0](58, 0xE100000000000000);
  v31 = SFClientIdentity.shortDescription.getter();
  MEMORY[0x1AC5895B0](v31);

  v32 = v185;
  v173 = v184;
  if (qword_1EB3ACDC8 != -1)
  {
    swift_once();
  }

  v33 = sub_1A99764A0();
  v34 = __swift_project_value_buffer(v33, qword_1EB3ACDD0);

  v162 = v34;
  v35 = sub_1A9976480();
  v36 = sub_1A9976F90();

  v37 = os_log_type_enabled(v35, v36);
  v164 = v29;
  v152 = v10;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v184 = v39;
    *v38 = 136446466;
    v40 = v173;
    *(v38 + 4) = sub_1A97AF148(v173, v32, &v184);
    *(v38 + 12) = 1024;
    *(v38 + 14) = v171 & 1;
    _os_log_impl(&dword_1A9662000, v35, v36, "Invocation [%{public}s] START -- Daemon {sync: %{BOOL}d}", v38, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x1AC58D2C0](v39, -1, -1);
    MEMORY[0x1AC58D2C0](v38, -1, -1);
  }

  else
  {

    v40 = v173;
  }

  v151 = v13;
  v58 = *&v176[qword_1EB3EAF88];
  v163 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v59 = objc_allocWithZone(v163);

  v60 = v21;
  sub_1A99762B0();
  v61 = v167;
  v62 = *(v167 + 16);
  v63 = v21;
  v64 = v168;
  v62(&v59[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v63, v168);
  v65 = &v59[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v65 = v40;
  v65[1] = v32;

  *&v59[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v59[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v58;
  if (v58)
  {
    v66 = sub_1A9976C00();
    (*(*(v66 - 8) + 56))(v172, 1, 1, v66);
    v67 = v165;
    v62(v165, v60, v64);
    v68 = (*(v61 + 80) + 40) & ~*(v61 + 80);
    v69 = swift_allocObject();
    *(v69 + 2) = 0;
    *(v69 + 3) = 0;
    *(v69 + 4) = v58;
    v70 = v67;
    v40 = v173;
    (*(v61 + 32))(&v69[v68], v70, v64);
    v71 = &v69[(v18 + v68 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v71 = v40;
    v71[1] = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v172, &unk_1A9999B40, v69);

    (*(v61 + 8))(v60, v64);
  }

  else
  {
    (*(v61 + 8))(v60, v64);
  }

  v188.receiver = v59;
  v188.super_class = v163;
  v72 = objc_msgSendSuper2(&v188, sel_init);
  v73 = objc_allocWithZone(type metadata accessor for _SFXPCBlockContainer(0));

  v168 = v32;
  v74 = sub_1A97BE9E8(v40, v32, v58);

  v75 = *&v176[qword_1EB3EAF90];
  v76 = *&v176[qword_1EB3EAF90 + 8];
  if (v75)
  {
    v77 = *&v176[qword_1EB3EAF90 + 8];
  }

  else
  {
    v77 = 0;
  }

  *&v179 = *&v176[qword_1EB3EAF90];
  *(&v179 + 1) = v77;
  sub_1A967C510(v75, v76);
  v78 = v170;
  swift_getFunctionTypeMetadata1();
  v79 = sub_1A99770A0();
  Optional.tryUnwrap(_:file:line:)(0xD000000000000010, 0x80000001A99E82D0, 0xD00000000000004FLL, 0x80000001A99E8280, 269, v79, &v184);
  v169 = v74;
  v176 = v72;
  sub_1A967C46C(v75, v76);
  v80 = v185;
  v81 = v164;
  v184(v164);
  if ((v171 & 1) == 0)
  {
    v106 = sub_1A9976C00();
    (*(*(v106 - 8) + 56))(v172, 1, 1, v106);
    v107 = v152;
    (*(v152 + 16))(v151, v153, v78);
    sub_1A9903A68(v81, v159);
    v108 = (*(v107 + 80) + 64) & ~*(v107 + 80);
    v165 = ((v156 + *(v154 + 80) + v108) & ~*(v154 + 80));
    v171 = &v165[v155 + 7] & 0xFFFFFFFFFFFFFFF8;
    v167 = v80;
    v109 = (v171 + 15) & 0xFFFFFFFFFFFFFFF8;
    v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    *(v113 + 16) = 0;
    *(v113 + 24) = 0;
    v114 = v166;
    *(v113 + 32) = v78;
    *(v113 + 40) = v114;
    v115 = v161;
    *(v113 + 48) = v160;
    *(v113 + 56) = v115;
    (*(v107 + 32))(v113 + v108, v151, v78);
    sub_1A9903ACC(v159, &v165[v113]);
    *(v113 + v171) = v158;
    *(v113 + v109) = v157;
    v116 = v176;
    *(v113 + v110) = v176;
    v117 = v169;
    *(v113 + v111) = v169;
    v118 = (v113 + v112);
    v119 = v168;
    *v118 = v173;
    v118[1] = v119;
    v120 = (v113 + ((v112 + 23) & 0xFFFFFFFFFFFFFFF8));
    v121 = v175;
    *v120 = v174;
    v120[1] = v121;
    v122 = v114;
    v123 = v116;
    v124 = v117;
    sub_1A97B40FC(v160, v161);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1A97B4F40(0, 0, v172, &unk_1A99A8828, v113);

    (*(v152 + 8))(v153, v170);
    v95 = v164;
    return sub_1A9903B30(v95);
  }

  v183[3] = type metadata accessor for SFXPCInvocation();
  v101 = v166;
  v183[0] = v166;
  sub_1A97AF7EC(v183, v182);
  v102 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F58, &qword_1A99A8830);
  if (!swift_dynamicCast())
  {
    v181 = 0;
    v180 = 0u;
    v179 = 0u;
    sub_1A97B06FC(&v179, &unk_1EB3B5F60, &qword_1A99A8838);
    v177 = 0;
    v178 = 0xE000000000000000;
    sub_1A9977400();
    v125 = v177;
    v126 = v178;
    sub_1A97BCDE0();
    v127 = swift_allocError();
    *v128 = v125;
    v128[1] = v126;
    v128[2] = 0xD00000000000001ELL;
    v128[3] = 0x80000001A99A8820;
    v128[4] = 0;
    v128[5] = 0;
    v128[6] = 0xD00000000000004FLL;
    v128[7] = 0x80000001A99E8280;
    v128[8] = 272;
    v128[10] = 0xA000000000000000;
    swift_willThrow();

    (*(v152 + 8))(v153, v78);
    __swift_destroy_boxed_opaque_existential_0Tm(v183);
    v82 = v168;

    v83 = v127;
    v84 = sub_1A9976480();
    v85 = sub_1A9976F90();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v184 = v87;
      *v86 = 136446722;
      v88 = sub_1A97AF148(v173, v82, &v184);

      *(v86 + 4) = v88;
      *(v86 + 12) = 2082;
      swift_getErrorValue();
      v89 = sub_1A99778E0();
      v91 = sub_1A97AF148(v89, v90, &v184);

      *(v86 + 14) = v91;
      *(v86 + 22) = 1024;
      *(v86 + 24) = v171 & 1;
      _os_log_impl(&dword_1A9662000, v84, v85, "Invocation [%{public}s] FAIL -- Daemon {error: %{public}s, sync: %{BOOL}d}", v86, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1AC58D2C0](v87, -1, -1);
      MEMORY[0x1AC58D2C0](v86, -1, -1);
    }

    else
    {
    }

    v92 = objc_allocWithZone(type metadata accessor for _SFXPCError());
    v93 = v127;
    v94 = sub_1A99195C8(v127);

    v174(0, 0xF000000000000000, 0, 0, v94);
    v95 = v81;
    return sub_1A9903B30(v95);
  }

  v167 = v80;
  sub_1A967A538(&v179, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(v183);
  v103 = v186;
  v104 = v187;
  __swift_project_boxed_opaque_existential_1(&v184, v186);
  *(&v180 + 1) = v78;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v179);
  (*(v152 + 16))(boxed_opaque_existential_0, v153, v78);
  v129 = (*(v104 + 8))(v160, v161, &v179, v81, v158, v157, v176, v169, v103, v104);
  v131 = v130;
  __swift_destroy_boxed_opaque_existential_0Tm(&v179);
  v132 = v168;

  sub_1A97B40FC(v129, v131);
  v133 = v131;
  v134 = sub_1A9976480();
  v135 = sub_1A9976F90();

  sub_1A97B43C4(v129, v133);
  v136 = v129;
  if (os_log_type_enabled(v134, v135))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *&v179 = v138;
    *v137 = 136446466;
    v139 = sub_1A97AF148(v173, v132, &v179);

    *(v137 + 4) = v139;
    *(v137 + 12) = 2080;
    sub_1A97B40FC(v129, v133);
    v140 = sub_1A9976040();
    v142 = v141;
    sub_1A97B43C4(v129, v133);
    v143 = sub_1A97AF148(v140, v142, &v179);

    *(v137 + 14) = v143;
    v144 = v164;
    _os_log_impl(&dword_1A9662000, v134, v135, "Invocation [%{public}s] END -- Daemon {responseData: %s, sync: true}", v137, 0x16u);
    swift_arrayDestroy();
    v78 = v170;
    MEMORY[0x1AC58D2C0](v138, -1, -1);
    MEMORY[0x1AC58D2C0](v137, -1, -1);

    v145 = v176;
  }

  else
  {

    v145 = v176;
    v144 = v164;
  }

  v146 = v169;
  sub_1A97B40FC(v136, v133);
  v147 = v145;
  v148 = v146;
  v149 = v146;
  v150 = v148;
  v174(v136, v133, v145, v149, 0);

  sub_1A97B43C4(v136, v133);
  sub_1A97B43C4(v136, v133);

  (*(v152 + 8))(v153, v78);
  sub_1A9903B30(v144);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v184);
}