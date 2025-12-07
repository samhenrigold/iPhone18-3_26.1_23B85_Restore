void sub_1920C7CFC(uint64_t a1, unint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v19 = 0;
LABEL_14:
      sub_192047008(v19, v10, v11, v12, v9);

      return;
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v27 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v10 = v24;
      v12 = v22;
      v11 = v23;
      v19 = v25;
      goto LABEL_14;
    }

    v14 = 0;
    v21 = a2;
    while (1)
    {
      a2 = v14;
      if (v14 >= *(a1 + 16))
      {
        break;
      }

      ++v14;
      v15 = *(a1 + 32 + a2);
      v26[3] = &type metadata for ActivityUpdateAvailability;
      LOBYTE(v26[0]) = v15;
      v20 = (*(**(v4 + 16) + 128))(v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v16 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF508, &unk_19222D900);
      v17 = swift_allocObject();
      *(v17 + 16) = v21;
      *(v17 + 24) = v15;
      *(v17 + 32) = v4;
      *(v16 + 16) = v17;
      *(v16 + 24) = v20;

      MEMORY[0x193B0AB00](v18);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v25 = v27;
      if (v13 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC10, &unk_19222B000);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

unint64_t sub_1920C8054()
{
  result = qword_1EADEE0B8;
  if (!qword_1EADEE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE0B8);
  }

  return result;
}

uint64_t sub_1920C80A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1920C80F4()
{
  result = qword_1EADEF340;
  if (!qword_1EADEF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF340);
  }

  return result;
}

uint64_t sub_1920C8234(uint64_t *a1, int a2)
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

uint64_t sub_1920C827C(uint64_t result, int a2, int a3)
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

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1922261D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1920C8410(uint64_t *a1, int a2)
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

uint64_t sub_1920C8458(uint64_t result, int a2, int a3)
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

unint64_t sub_1920C84C8()
{
  result = qword_1EADEF3C0;
  if (!qword_1EADEF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF3C0);
  }

  return result;
}

uint64_t sub_1920C85B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x193B0AD20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_192082B80(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1920C8648()
{
  result = qword_1EADEF410;
  if (!qword_1EADEF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF410);
  }

  return result;
}

unint64_t sub_1920C869C()
{
  result = qword_1ED74A1D0;
  if (!qword_1ED74A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1D0);
  }

  return result;
}

unint64_t sub_1920C86F0()
{
  result = qword_1ED74A1E0;
  if (!qword_1ED74A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1E0);
  }

  return result;
}

unint64_t sub_1920C8774()
{
  result = qword_1EADEF640;
  if (!qword_1EADEF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF640);
  }

  return result;
}

unint64_t sub_1920C87CC()
{
  result = qword_1EADEF648;
  if (!qword_1EADEF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF648);
  }

  return result;
}

uint64_t sub_1920C8850(void *a1, void *a2, unsigned __int8 a3, double a4)
{
  v8 = sub_192225460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v16 = &v29[-1] - v15;
  if (!a3)
  {
    return a3;
  }

  if (a3 == 1)
  {
    v17 = v13;
    sub_192225560();
    sub_192225550();
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_192225540();
    (*(v9 + 104))(v11, *MEMORY[0x1E6993F58], v17);
    v18 = sub_192225450();
    v19 = *(v9 + 8);
    v19(v11, v17);
    v19(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = fmax(a4 * 1290.0, 80.0);
    v21 = fmax(a4 * 2048.0, 80.0);
    if (v18)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }
  }

  else
  {
    [a1 size];
    v25 = v24;
    [a2 scale];
    v27 = v25 * v26;
    [a2 scale];
    v22 = fmax(v27 * a4, 80.0);
  }

  return *&v22;
}

uint64_t sub_1920C8ADC()
{
  if (qword_1ED749D58 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    sub_192140738(MEMORY[0x1E69E7CC0]);
    return 2;
  }

  else
  {
    if (qword_1ED74A638 != -1)
    {
      swift_once();
    }

    v1 = dyld_program_sdk_at_least();
    sub_192140738(MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_19213DF60(2, 12, isUniquelyReferenced_nonNull_native, 1.2, 2.0);
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1920C8C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1920C8C68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t _s21ImageAttachmentPolicyV5EntryVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s21ImageAttachmentPolicyV5EntryVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1920C8D64()
{
  result = qword_1EADEF6C0;
  if (!qword_1EADEF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF6C0);
  }

  return result;
}

double sub_1920C8DB8()
{
  qword_1EAE00848 = 0;
  result = 0.0;
  xmmword_1EAE00828 = 0u;
  unk_1EAE00838 = 0u;
  return result;
}

uint64_t sub_1920C8DD0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EADEE8E0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1920C9380(&xmmword_1EAE00828, v2);
}

double sub_1920C8E40(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 3))
  {
    v3 = a1[1];
    v6 = *a1;
    v7 = v3;
    v8 = *(a1 + 4);
  }

  else
  {
    a2(&v6);
  }

  result = *&v6;
  v5 = v7;
  *a1 = v6;
  a1[1] = v5;
  *(a1 + 4) = v8;
  return result;
}

uint64_t sub_1920C8EA4(uint64_t a1)
{
  v2 = sub_1920C932C();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t sub_1920C8EE0@<X0>(uint64_t a1@<X8>)
{
  v1 = qword_1EAE00868;
  *a1 = qword_1EAE00850;
  *(a1 + 8) = xmmword_1EAE00858;
  *(a1 + 24) = v1;
}

uint64_t sub_1920C8F3C(uint64_t a1)
{
  v2 = sub_1920C9518();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t sub_1920C8F78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1922267B0();
  v3 = swift_conformsToProtocol2();
  if (v3 && v2)
  {
    return (*(v3 + 8))(v2, v3);
  }

  sub_192228400();

  sub_1922267B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6D0, &qword_19222DD58);
  v5 = sub_192227990();
  MEMORY[0x193B0A990](v5);

  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920C917C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1920C91C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1920C9224(uint64_t a1, int a2)
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

uint64_t sub_1920C926C(uint64_t result, int a2, int a3)
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

unint64_t sub_1920C92D8()
{
  result = qword_1EADEE650;
  if (!qword_1EADEE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE650);
  }

  return result;
}

unint64_t sub_1920C932C()
{
  result = qword_1EADED6D0;
  if (!qword_1EADED6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED6D0);
  }

  return result;
}

uint64_t sub_1920C9380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6C8, &qword_19222DD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920C93F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1920C944C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1920C94C4()
{
  result = qword_1EADED8D0;
  if (!qword_1EADED8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED8D0);
  }

  return result;
}

unint64_t sub_1920C9518()
{
  result = qword_1EADED8C8;
  if (!qword_1EADED8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED8C8);
  }

  return result;
}

uint64_t sub_1920C956C(void *a1, void (*a2)(void *__return_ptr))
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = v2;
  if (v3 == 1)
  {
    a2(v16);
    v6 = v16[0];
    v8 = v16[1];
    v9 = v16[2];
    v10 = v16[3];
    swift_beginAccess();
    v11 = a1[2];
    v14 = a1[4];
    v15 = a1[3];
    v13 = a1[5];
    a1[2] = v6;
    a1[3] = v8;
    a1[4] = v9;
    a1[5] = v10;

    sub_1920C9744(v11, v15, v14, v13);
  }

  sub_1920C978C(v2, v3, v4, v5);
  return v6;
}

void sub_1920C9660(uint64_t *a1, void (*a2)(void *__return_ptr))
{
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19222DBC0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v5 = a1[1];
  if (!v5)
  {
    v9 = v4;
    v6 = sub_1920C956C(v4, a2);
    v5 = v10;

    v4 = v9;
    v7 = a1[3];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1920C956C(v4, a2);
    v8 = v11;
    v7 = v12;

    goto LABEL_6;
  }

  v6 = *a1;
  v7 = a1[3];
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = a1[2];

LABEL_6:
  *a1 = v6;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v7;
}

void sub_1920C9744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_1920C978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1920C9800(uint64_t a1, int a2)
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

uint64_t sub_1920C9848(uint64_t result, int a2, int a3)
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

uint64_t sub_1920C98A4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1922289A0(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1922289A0() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1920C9944(uint64_t a1)
{
  result = sub_1920C996C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1920C996C()
{
  result = qword_1EADEF6D8;
  if (!qword_1EADEF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF6D8);
  }

  return result;
}

unint64_t sub_1920C99C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_192228400();

  v5 = sub_1920FDB30(v1, v2, v3, v4);
  MEMORY[0x193B0A990](v5);

  MEMORY[0x193B0A990](10506, 0xE200000000000000);
  return 0xD000000000000028;
}

uint64_t sub_1920C9A70(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1920A59A8;

  return v8(a1, a2);
}

WidgetKit::TimelineEntryRelevance __swiftcall TimelineEntryRelevance.init(score:duration:)(Swift::Float score, Swift::Double duration)
{
  *v2 = score;
  *(v2 + 8) = duration;
  result.duration = duration;
  result.score = score;
  return result;
}

uint64_t sub_1920C9C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_1920C9CE4(uint64_t a1)
{
  v2 = sub_19205BB8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920C9D20(uint64_t a1)
{
  v2 = sub_19205BB8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimelineEntryRelevance.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6E0, &qword_19222DF30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19205BB8C();
  sub_192228B90();
  v8[15] = 0;
  sub_192228890();
  if (!v1)
  {
    v8[14] = 1;
    sub_192228880();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TimelineEntryRelevance.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_192228B00();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193B0BAC0](*&v2);
}

uint64_t TimelineEntryRelevance.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_192228AD0();
  sub_192228B00();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193B0BAC0](*&v2);
  return sub_192228B30();
}

uint64_t sub_1920C9FDC()
{
  v1 = *(v0 + 8);
  sub_192228AD0();
  sub_192228B00();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193B0BAC0](*&v2);
  return sub_192228B30();
}

void TimelineEntry.relevance.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

unint64_t sub_1920CA0A8()
{
  result = qword_1EADEF6F0;
  if (!qword_1EADEF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF6F0);
  }

  return result;
}

unint64_t sub_1920CA100()
{
  result = qword_1EADEF6F8;
  if (!qword_1EADEF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF6F8);
  }

  return result;
}

void *WidgetRelevance.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = a1;
  KeyPath = swift_getKeyPath();
  type metadata accessor for WidgetRelevanceAttribute(255, a2, v6, v7);
  v8 = sub_192227C40();
  v11 = type metadata accessor for WidgetRelevanceEntry(0, a2, v9, v10);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_19204301C(sub_1920CA26C, KeyPath, v8, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  result = WidgetRelevances.init(_:)(v14, &v16);
  *a3 = v16;
  return result;
}

uint64_t sub_1920CA298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920CA2D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1920CA330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t (*EnvironmentValues._preferredSystemWidgetBackgroundStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1920405C0();
  sub_1922261E0();
  return sub_1920CA430;
}

void sub_1920CA478(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for ControlTemplatePicker.Option(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_19209ACE8(0, v10, 0);
    v11 = v20;
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a3 + v17;
    v13 = *(v7 + 72);
    while (1)
    {
      v18(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_19209ACE8((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_1920CF508(v9, v11 + v17 + v15 * v13);
      v12 += v13;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1920CA60C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v19 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for ControlTemplatePicker(0);
  __swift_allocate_value_buffer(v6, qword_1EADEF708);
  v7 = __swift_project_value_buffer(v6, qword_1EADEF708);
  v8 = sub_192226B70();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = sub_192225020();
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  v12 = v6[6];
  v9(&v7[v12], 1, 1, v8);
  v13 = v6[8];
  v14 = &v7[v6[7]];
  v11(&v7[v13], 1, 1, v10);
  v15 = &v7[v6[12]];
  v16 = MEMORY[0x1E69E7CC0];
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = v16;
  sub_19204193C(v5, &v7[v12], &qword_1EADEF720, &unk_19222E2F0);
  *v14 = 0;
  *(v14 + 1) = 0;
  v7[v6[9]] = 0;
  result = sub_19204193C(v19, &v7[v13], &qword_1EADEEE10, &unk_19222B630);
  v7[v6[10]] = 0;
  v7[v6[11]] = 0;
  *v15 = 0;
  *(v15 + 1) = 0;
  v7[v6[13]] = 0;
  return result;
}

uint64_t ControlTemplatePicker.init(options:title:titleIcon:subtitle:renderAsSlider:associatedURL:privacySensitive:disabled:accessibilityIdentifier:rasterizedImagesAllowed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  v19 = type metadata accessor for ControlTemplatePicker(0);
  v20 = v19[6];
  v21 = sub_192226B70();
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = v19[8];
  v23 = &a9[v19[7]];
  v24 = sub_192225020();
  (*(*(v24 - 8) + 56))(&a9[v22], 1, 1, v24);
  v25 = &a9[v19[12]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  sub_19204193C(a4, &a9[v20], &qword_1EADEF720, &unk_19222E2F0);
  *v23 = a5;
  *(v23 + 1) = a6;
  a9[v19[9]] = a7;
  result = sub_19204193C(a8, &a9[v22], &qword_1EADEEE10, &unk_19222B630);
  a9[v19[10]] = a10;
  a9[v19[11]] = a11;
  *v25 = a12;
  *(v25 + 1) = a13;
  a9[v19[13]] = a14;
  return result;
}

uint64_t static ControlTemplatePicker.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEF708);
  swift_beginAccess();
  return sub_1920CF4A0(v3, a1, type metadata accessor for ControlTemplatePicker);
}

uint64_t static ControlTemplatePicker.empty.setter(uint64_t a1)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEF708);
  swift_beginAccess();
  sub_1920CAB78(a1, v3);
  swift_endAccess();
  return sub_1920CF3A4(a1, type metadata accessor for ControlTemplatePicker);
}

uint64_t sub_1920CAB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplatePicker(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static ControlTemplatePicker.empty.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for ControlTemplatePicker(0);
  __swift_project_value_buffer(v1, qword_1EADEF708);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1920CAC70@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEF708);
  swift_beginAccess();
  return sub_1920CF4A0(v3, a1, type metadata accessor for ControlTemplatePicker);
}

uint64_t sub_1920CAD10(uint64_t a1)
{
  if (qword_1EADEE8E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEF708);
  swift_beginAccess();
  sub_1920CAB78(a1, v3);
  return swift_endAccess();
}

uint64_t ControlTemplatePicker.Option.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ControlTemplatePicker.Option.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlTemplatePicker.Option.tint.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ControlTemplatePicker.Option(0);
  v8 = v3 + *(result + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t ControlTemplatePicker.Option.actionHint.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlTemplatePicker.Option(0) + 32));

  return v1;
}

uint64_t ControlTemplatePicker.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplatePicker.Option(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplatePicker.Option.init(value:icon:tint:status:actionHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for ControlTemplatePicker.Option(0);
  v17 = v16[5];
  v18 = sub_192226B70();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = &a9[v16[6]];
  v20 = &a9[v16[7]];
  v21 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_19204193C(a3, &a9[v17], &qword_1EADEF720, &unk_19222E2F0);
  *v19 = a4;
  *(v19 + 1) = a5;
  v19[16] = a6 & 1;
  *v20 = a7;
  *(v20 + 1) = a8;
  *v21 = a10;
  *(v21 + 1) = a11;
  return result;
}

uint64_t sub_1920CB248()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 1953393012;
  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x69486E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852793705;
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

uint64_t sub_1920CB2D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1920CFF58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1920CB304(uint64_t a1)
{
  v2 = sub_1920CF2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920CB340(uint64_t a1)
{
  v2 = sub_1920CF2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplatePicker.Option.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF728, &qword_19222E300);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920CF2FC();
  sub_192228B90();
  LOBYTE(v14) = 0;
  sub_192228830();
  if (!v2)
  {
    v9 = type metadata accessor for ControlTemplatePicker.Option(0);
    LOBYTE(v14) = 1;
    sub_192226B70();
    sub_1920CF404(&qword_1EADEE4B0, MEMORY[0x1E697CB10], MEMORY[0x1E697CB18]);
    sub_192228850();
    v10 = (v3 + *(v9 + 24));
    v11 = *(v10 + 16);
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_1920CF350();
    sub_192228850();
    LOBYTE(v14) = 3;
    sub_192228830();
    LOBYTE(v14) = 4;
    sub_192228830();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ControlTemplatePicker.Option.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v35 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF738, &qword_19222E308);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v35 - v5;
  v7 = type metadata accessor for ControlTemplatePicker.Option(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0;
  v10[1] = 0;
  v11 = v8[7];
  v12 = sub_192226B70();
  v13 = *(*(v12 - 8) + 56);
  v37 = v11;
  v13(v10 + v11, 1, 1, v12);
  v14 = v10 + v8[8];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = (v10 + v8[9]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v8[10];
  v42 = v10;
  v17 = (v10 + v16);
  *v17 = 0;
  v17[1] = 0;
  v18 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1920CF2FC();
  v41 = v6;
  v19 = v43;
  sub_192228B70();
  if (v19)
  {
    v20 = v42;
  }

  else
  {
    v35 = v15;
    v43 = v14;
    v21 = v39;
    v22 = v37;
    v23 = v38;
    LOBYTE(v45) = 0;
    v24 = sub_192228730();
    v20 = v42;
    *v42 = v24;
    *(v20 + 8) = v25;
    LOBYTE(v45) = 1;
    sub_1920CF404(&qword_1EADEDCE8, MEMORY[0x1E697CB10], MEMORY[0x1E697CB28]);
    sub_192228750();
    sub_19204193C(v21, v20 + v22, &qword_1EADEF720, &unk_19222E2F0);
    v47 = 2;
    sub_1920CF44C();
    sub_192228750();
    v26 = v46;
    v27 = v43;
    *v43 = v45;
    *(v27 + 16) = v26;
    LOBYTE(v45) = 3;
    v28 = sub_192228730();
    v30 = v35;
    *v35 = v28;
    v30[1] = v31;
    LOBYTE(v45) = 4;
    v32 = sub_192228730();
    v34 = v33;
    (*(v23 + 8))(v41, v40);
    *v17 = v32;
    v17[1] = v34;
    sub_1920CF4A0(v20, v36, type metadata accessor for ControlTemplatePicker.Option);
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_1920CF3A4(v20, type metadata accessor for ControlTemplatePicker.Option);
}

uint64_t ControlTemplatePicker.options.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ControlTemplatePicker.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ControlTemplatePicker.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1920CBC34(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t sub_1920CBC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ControlTemplatePicker.renderAsSlider.setter(char a1)
{
  result = type metadata accessor for ControlTemplatePicker(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlTemplatePicker.privacySensitive.setter(char a1)
{
  result = type metadata accessor for ControlTemplatePicker(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ControlTemplatePicker.disabled.setter(char a1)
{
  result = type metadata accessor for ControlTemplatePicker(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ControlTemplatePicker.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlTemplatePicker(0) + 48));

  return v1;
}

uint64_t ControlTemplatePicker.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplatePicker(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplatePicker.rasterizedImagesAllowed.setter(char a1)
{
  result = type metadata accessor for ControlTemplatePicker(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlTemplatePicker.asPlaceholder()@<X0>(char *a1@<X8>)
{
  v55 = a1;
  v59 = type metadata accessor for ControlTemplatePicker.Option(0);
  v2 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v51 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = *v1;
  v14 = *(*v1 + 16);
  if (v14)
  {
    v53 = v1;
    v64[0] = MEMORY[0x1E69E7CC0];
    sub_19209ACE8(0, v14, 0);
    v63 = v64[0];
    v57 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v58 = v4;
    v15 = v13 + v57;
    v56 = *(v2 + 72);
    do
    {
      sub_1920CF4A0(v15, v4, type metadata accessor for ControlTemplatePicker.Option);
      if (qword_1EADEE988 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v16 = *algn_1EADF1AC8;
      v62 = qword_1EADF1AC0;
      v17 = v59;
      sub_19202CFFC(&v4[*(v59 + 20)], v12, &qword_1EADEF720, &unk_19222E2F0);
      v18 = &v4[v17[6]];
      v19 = *(v18 + 1);
      v61 = *v18;
      LODWORD(v60) = v18[16];

      sub_1920CF3A4(v4, type metadata accessor for ControlTemplatePicker.Option);
      v20 = v12;
      v21 = v17[5];
      v22 = sub_192226B70();
      (*(*(v22 - 8) + 56))(v7 + v21, 1, 1, v22);
      v23 = v7 + v17[6];
      v24 = (v7 + v17[7]);
      v25 = (v7 + v17[8]);
      *v7 = v62;
      v7[1] = v16;
      v26 = v7 + v21;
      v12 = v20;
      sub_19204193C(v20, v26, &qword_1EADEF720, &unk_19222E2F0);
      *v23 = v61;
      *(v23 + 1) = v19;
      v23[16] = v60;
      *v24 = 0;
      v24[1] = 0;
      *v25 = 0;
      v25[1] = 0;
      v27 = v63;
      v64[0] = v63;
      v29 = *(v63 + 16);
      v28 = *(v63 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_19209ACE8((v28 > 1), v29 + 1, 1);
        v27 = v64[0];
      }

      *(v27 + 16) = v29 + 1;
      v63 = v27;
      v30 = v56;
      sub_1920CF508(v7, v27 + v57 + v29 * v56);
      v15 += v30;
      --v14;
      v4 = v58;
    }

    while (v14);
    v1 = v53;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EADECB28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = *algn_1EADECB38;
  v61 = qword_1EADECB30;
  v32 = sub_192226B70();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v58 = (v33 + 56);
  v59 = v34;
  v34(v12, 1, 1, v32);
  v35 = qword_1EADECB10;
  v62 = v31;

  v60 = v12;
  if (v35 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = qword_1EADECB20;
  v57 = qword_1EADECB18;
  v37 = type metadata accessor for ControlTemplatePicker(0);
  LODWORD(v56) = *(v1 + v37[9]);
  v38 = sub_192225020();
  v39 = *(*(v38 - 8) + 56);
  v40 = v54;
  v39(v54, 1, 1, v38);
  v41 = *(v1 + v37[11]);
  v51 = *(v1 + v37[10]);
  v52 = v41;
  LODWORD(v53) = *(v1 + v37[13]);
  v42 = v37[6];
  v43 = v55;
  (v59)(&v55[v42], 1, 1, v32);
  v44 = v37[8];
  v45 = &v43[v37[7]];
  v39(&v43[v44], 1, 1, v38);
  v46 = &v43[v37[12]];
  v48 = v61;
  v47 = v62;
  *v43 = v63;
  *(v43 + 1) = v48;
  *(v43 + 2) = v47;

  sub_19204193C(v60, &v43[v42], &qword_1EADEF720, &unk_19222E2F0);
  *v45 = v57;
  v45[1] = v36;
  v43[v37[9]] = v56;
  result = sub_19204193C(v40, &v43[v44], &qword_1EADEEE10, &unk_19222B630);
  v50 = v52;
  v43[v37[10]] = v51;
  v43[v37[11]] = v50;
  *v46 = 0;
  *(v46 + 1) = 0;
  v43[v37[13]] = v53;
  return result;
}

uint64_t ControlTemplatePicker.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31[-v11];
  v13 = *v3;
  v40 = v3;
  v41 = a1;
  v42 = a2;
  sub_1920CA478(sub_1920CF56C, v39, v13);
  v14 = v3[2];
  v37 = v3[1];
  v38 = v15;
  v16 = sub_192226B70();
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  v18 = type metadata accessor for ControlTemplatePicker(0);
  v19 = v18[8];
  v20 = (v3 + v18[7]);
  v21 = v20[1];
  v35 = *v20;
  v34 = *(v3 + v18[9]);
  sub_19202CFFC(v3 + v19, v9, &qword_1EADEEE10, &unk_19222B630);
  v22 = *(v3 + v18[11]);
  v32 = *(v3 + v18[10]);
  v33 = v22;
  v36 = *(v3 + v18[13]);
  v23 = v18[6];
  v17(&a3[v23], 1, 1, v16);
  v24 = v18[8];
  v25 = &a3[v18[7]];
  v26 = sub_192225020();
  (*(*(v26 - 8) + 56))(&a3[v24], 1, 1, v26);
  v27 = &a3[v18[12]];
  v28 = v37;
  *a3 = v38;
  *(a3 + 1) = v28;
  *(a3 + 2) = v14;

  sub_19204193C(v12, &a3[v23], &qword_1EADEF720, &unk_19222E2F0);
  *v25 = v35;
  *(v25 + 1) = v21;
  a3[v18[9]] = v34;
  result = sub_19204193C(v9, &a3[v24], &qword_1EADEEE10, &unk_19222B630);
  v30 = v33;
  a3[v18[10]] = v32;
  a3[v18[11]] = v30;
  *v27 = 0;
  *(v27 + 1) = 0;
  a3[v18[13]] = v36;
  return result;
}

uint64_t sub_1920CCA08@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v60 = a3;
  v62 = a2;
  v68 = a4;
  v66 = sub_192226B50();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v56 - v11;
  v13 = sub_192226B70();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = v56 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v56 - v20;
  v22 = type metadata accessor for ControlTemplatePicker.Option(0);
  sub_19202CFFC(a1 + v22[5], v12, &qword_1EADEF720, &unk_19222E2F0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    sub_192033970(v12, &qword_1EADEF720, &unk_19222E2F0);
    v24 = a1;
    return sub_1920CF4A0(v24, v68, type metadata accessor for ControlTemplatePicker.Option);
  }

  v58 = v23;
  v59 = a1;
  v57 = *(v14 + 32);
  v57(v21, v12, v13);
  (*(v14 + 16))(v16, v21, v13);
  if ((*(v14 + 88))(v16, v13) == *MEMORY[0x1E697CB08])
  {
    v56[1] = v14 + 32;
    (*(v14 + 96))(v16, v13);
    v25 = v63;
    v26 = v61;
    (*(v63 + 32))(v61, v16, v66);
    v27 = sub_192226AF0();
    v29 = sub_1921B01A8(v27, v28, v62);

    if (v29)
    {
      v30 = v67;
      sub_192226AA0();
      (*(v25 + 8))(v26, v66);
      (*(v14 + 8))(v21, v13);
    }

    else
    {
      (*(v25 + 8))(v26, v66);
      (*(v14 + 8))(v21, v13);
      v30 = v67;
      (*(v14 + 56))(v67, 1, 1, v13);
    }
  }

  else
  {
    v31 = *(v14 + 8);
    v31(v21, v13);
    v32 = v67;
    (*(v14 + 56))(v67, 1, 1, v13);
    v31(v16, v13);
    v30 = v32;
  }

  v33 = v58(v30, 1, v13);
  v34 = v59;
  if (v33 == 1)
  {
    sub_192033970(v30, &qword_1EADEF720, &unk_19222E2F0);
    v24 = v34;
    return sub_1920CF4A0(v24, v68, type metadata accessor for ControlTemplatePicker.Option);
  }

  v36 = v64;
  v37 = v57;
  v57(v64, v30, v13);
  v38 = *v34;
  v66 = v34[1];
  v67 = v38;
  v39 = v65;
  v37(v65, v36, v13);
  v40 = *(v14 + 56);
  v40(v39, 0, 1, v13);
  v41 = v22[5];
  v42 = v34 + v22[6];
  v43 = *v42;
  v63 = *(v42 + 1);
  v64 = v43;
  LODWORD(v62) = v42[16];
  v44 = (v34 + v22[7]);
  v45 = *v44;
  v46 = v44[1];
  v47 = (v34 + v22[8]);
  v48 = v47[1];
  v60 = *v47;
  v61 = v45;
  v49 = v68;
  v40(v68 + v41, 1, 1, v13);
  v50 = v49 + v22[6];
  v51 = (v49 + v22[7]);
  v52 = (v49 + v22[8]);
  v53 = v66;
  *v49 = v67;
  v49[1] = v53;

  result = sub_19204193C(v39, v49 + v41, &qword_1EADEF720, &unk_19222E2F0);
  v54 = v63;
  *v50 = v64;
  *(v50 + 1) = v54;
  v50[16] = v62;
  v55 = v60;
  *v51 = v61;
  v51[1] = v46;
  *v52 = v55;
  v52[1] = v48;
  return result;
}

unint64_t sub_1920CD034(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x64656C6261736964;
    if (a1 != 7)
    {
      v5 = 0xD000000000000017;
    }

    v6 = 0x73417265646E6572;
    if (a1 != 5)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736E6F6974706FLL;
    v2 = 0x6F6349656C746974;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0x746169636F737361;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1920CD198@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1920D0108(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1920CD1CC(uint64_t a1)
{
  v2 = sub_1920CF590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920CD208(uint64_t a1)
{
  v2 = sub_1920CF590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplatePicker.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF740, &qword_19222E310);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920CF590();
  sub_192228B90();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF750, &qword_19222E318);
  sub_1920CF5E4(&qword_1EADEF758, &qword_1EADEF760, &protocol conformance descriptor for ControlTemplatePicker.Option, MEMORY[0x1E69E6300]);
  sub_1922288C0();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_192228830();
    type metadata accessor for ControlTemplatePicker(0);
    LOBYTE(v11) = 2;
    sub_192226B70();
    sub_1920CF404(&qword_1EADEE4B0, MEMORY[0x1E697CB10], MEMORY[0x1E697CB18]);
    sub_192228850();
    LOBYTE(v11) = 3;
    sub_192228830();
    LOBYTE(v11) = 4;
    sub_192225020();
    sub_1920CF404(&qword_1ED74BB38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_192228850();
    LOBYTE(v11) = 5;
    sub_192228870();
    LOBYTE(v11) = 6;
    sub_192228870();
    LOBYTE(v11) = 7;
    sub_192228870();
    LOBYTE(v11) = 8;
    sub_192228830();
    LOBYTE(v11) = 9;
    sub_192228870();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ControlTemplatePicker.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF768, &qword_19222E320);
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v44 - v11;
  v13 = type metadata accessor for ControlTemplatePicker(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 24);
  v18 = sub_192226B70();
  v19 = *(*(v18 - 8) + 56);
  v52 = v17;
  v19(&v15[v17], 1, 1, v18);
  v20 = *(v13 + 32);
  v21 = sub_192225020();
  v22 = *(*(v21 - 8) + 56);
  v51 = v20;
  v53 = v15;
  v22(&v15[v20], 1, 1, v21);
  v23 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1920CF590();
  v48 = v12;
  v24 = v50;
  sub_192228B70();
  if (v24)
  {
    v26 = v52;
    __swift_destroy_boxed_opaque_existential_1(v49);

    v27 = v51;
    v28 = v53;
    sub_192033970(v53 + v26, &qword_1EADEF720, &unk_19222E2F0);

    sub_192033970(v28 + v27, &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    v25 = v8;
    v50 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF750, &qword_19222E318);
    v54 = 0;
    sub_1920CF5E4(&qword_1EADEF770, &qword_1EADEF778, &protocol conformance descriptor for ControlTemplatePicker.Option, MEMORY[0x1E69E6330]);
    sub_1922287C0();
    v29 = v53;
    *v53 = v55;
    LOBYTE(v55) = 1;
    v30 = sub_192228730();
    v31 = v52;
    v29[1] = v30;
    v29[2] = v32;
    v44[1] = v32;
    LOBYTE(v55) = 2;
    sub_1920CF404(&qword_1EADEDCE8, MEMORY[0x1E697CB10], MEMORY[0x1E697CB28]);
    sub_192228750();
    sub_19204193C(v25, v29 + v31, &qword_1EADEF720, &unk_19222E2F0);
    LOBYTE(v55) = 3;
    v33 = sub_192228730();
    v34 = (v29 + v50[7]);
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v55) = 4;
    sub_1920CF404(qword_1ED7488E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_192228750();
    sub_19204193C(v5, v29 + v51, &qword_1EADEEE10, &unk_19222B630);
    LOBYTE(v55) = 5;
    v36 = sub_192228770();
    v37 = v50;
    *(v29 + v50[9]) = v36 & 1;
    LOBYTE(v55) = 6;
    *(v29 + v37[10]) = sub_192228770() & 1;
    LOBYTE(v55) = 7;
    *(v53 + v37[11]) = sub_192228770() & 1;
    LOBYTE(v55) = 8;
    v38 = sub_192228730();
    v39 = (v53 + v37[12]);
    *v39 = v38;
    v39[1] = v40;
    LOBYTE(v55) = 9;
    v41 = sub_192228770();
    (*(v47 + 8))(v48, v46);
    v42 = v53;
    *(v53 + v50[13]) = v41 & 1;
    sub_1920CF4A0(v42, v45, type metadata accessor for ControlTemplatePicker);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_1920CF3A4(v42, type metadata accessor for ControlTemplatePicker);
  }
}

void ControlTemplatePicker.validateIcon(_:)(void (*a1)(char *))
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_192226B70();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlTemplatePicker.Option(0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v36 = *(*v1 + 16);
  if (v36)
  {
    v35 = v5;
    v15 = 0;
    v16 = *(v10 + 20);
    v33 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v34 = v16;
    v17 = (v6 + 48);
    v27 = (v6 + 32);
    v28 = (v6 + 8);
    v29 = v8;
    v18 = &qword_1EADEF720;
    v19 = &unk_19222E2F0;
    v31 = v11;
    v32 = v14;
    while (v15 < *(v14 + 16))
    {
      sub_1920CF4A0(v33 + *(v11 + 72) * v15, v13, type metadata accessor for ControlTemplatePicker.Option);
      sub_19202CFFC(&v13[v34], v4, v18, v19);
      sub_1920CF3A4(v13, type metadata accessor for ControlTemplatePicker.Option);
      v20 = v18;
      v21 = v35;
      if ((*v17)(v4, 1, v35) == 1)
      {
        sub_192033970(v4, v20, v19);
        v18 = v20;
      }

      else
      {
        v22 = v19;
        v23 = v17;
        v24 = v20;
        v25 = v29;
        (*v27)(v29, v4, v21);
        v26 = v37;
        v30(v25);
        v37 = v26;
        if (v26)
        {
          (*v28)(v25, v21);
          return;
        }

        (*v28)(v25, v21);
        v18 = v24;
        v17 = v23;
        v19 = v22;
      }

      ++v15;
      v11 = v31;
      v14 = v32;
      if (v36 == v15)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t ControlTemplatePicker.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF780, &unk_19222E328);
  MEMORY[0x1EEE9AC00](v44);
  v45 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v36 - v7;
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v37 = v0;
    v49 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v9, 0);
    v42 = *(v8 + 16);
    result = type metadata accessor for ControlTemplatePicker.Option(0);
    v12 = 0;
    v39 = *(result - 8);
    v40 = result;
    v38 = v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v10 = v49;
    v41 = v9;
    while (v42 != v12)
    {
      if (v12 >= *(v8 + 16))
      {
        goto LABEL_20;
      }

      v14 = v43;
      v13 = v44;
      v15 = *(v44 + 48);
      sub_1920CF4A0(v38 + *(v39 + 72) * v12, &v43[v15], type metadata accessor for ControlTemplatePicker.Option);
      v16 = v45;
      *v45 = v12;
      v17 = (v16 + *(v13 + 48));
      sub_1920CF508(&v14[v15], v17);
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_192228400();

      v46 = v12;
      v47 = 91;
      v48 = 0xE100000000000000;
      v18 = sub_192228910();
      MEMORY[0x193B0A990](v18);

      MEMORY[0x193B0A990](0x76202020200A3A5DLL, 0xEE00203A65756C61);
      if (v17[1])
      {
        v19 = *v17;
        v20 = v17[1];
      }

      else
      {
        v20 = 0xE300000000000000;
        v19 = 7104878;
      }

      MEMORY[0x193B0A990](v19, v20);

      MEMORY[0x193B0A990](0x6F6369202020200ALL, 0xEB00000000203A6ELL);
      sub_19202CFFC(v17 + *(v40 + 20), v4, &qword_1EADEF720, &unk_19222E2F0);
      v21 = sub_192226B70();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v4, 1, v21) == 1)
      {
        sub_192033970(v4, &qword_1EADEF720, &unk_19222E2F0);
        v23 = 0xE300000000000000;
        v24 = 7104878;
      }

      else
      {
        v24 = sub_192226AB0();
        v23 = v25;
        (*(v22 + 8))(v4, v21);
      }

      MEMORY[0x193B0A990](v24, v23);

      v26 = v47;
      v27 = v48;
      result = sub_192033970(v45, &qword_1EADEF780, &unk_19222E328);
      v49 = v10;
      v29 = *(v10 + 16);
      v28 = *(v10 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_192071C64((v28 > 1), v29 + 1, 1);
        v10 = v49;
      }

      ++v12;
      *(v10 + 16) = v29 + 1;
      v30 = v10 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      if (v41 == v12)
      {
        v1 = v37;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:
    v47 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_1920CF680();
    v31 = sub_1922278A0();
    v33 = v32;

    v47 = 0;
    v48 = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000022, 0x8000000192249E00);
    if (v1[2])
    {
      v34 = v1[1];
      v35 = v1[2];
    }

    else
    {
      v34 = 7104878;
      v35 = 0xE300000000000000;
    }

    MEMORY[0x193B0A990](v34, v35);

    MEMORY[0x193B0A990](0xD000000000000014, 0x8000000192249E30);
    MEMORY[0x193B0A990](v31, v33);

    MEMORY[0x193B0A990](10506, 0xE200000000000000);
    return v47;
  }

  return result;
}

uint64_t _s9WidgetKit21ControlTemplatePickerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_192225020();
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D0, &qword_19222E728);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v57 - v9;
  v10 = sub_192226B70();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  if ((sub_1920E0C80(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = a1[2];
  v21 = a2[2];
  if (v20)
  {
    if (!v21 || (a1[1] != a2[1] || v20 != v21) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v21)
  {
    goto LABEL_16;
  }

  v57 = v4;
  v22 = type metadata accessor for ControlTemplatePicker(0);
  v60 = a2;
  v23 = *(v22 + 24);
  v24 = *(v17 + 48);
  v58 = v22;
  v59 = a1;
  sub_19202CFFC(a1 + v23, v19, &qword_1EADEF720, &unk_19222E2F0);
  v25 = v60 + v23;
  v26 = v60;
  sub_19202CFFC(v25, &v19[v24], &qword_1EADEF720, &unk_19222E2F0);
  v27 = *(v11 + 48);
  if (v27(v19, 1, v10) == 1)
  {
    if (v27(&v19[v24], 1, v10) == 1)
    {
      sub_192033970(v19, &qword_1EADEF720, &unk_19222E2F0);
      goto LABEL_19;
    }

LABEL_14:
    v28 = &qword_1EADEF7D8;
    v29 = qword_19222E730;
LABEL_15:
    sub_192033970(v19, v28, v29);
    goto LABEL_16;
  }

  sub_19202CFFC(v19, v16, &qword_1EADEF720, &unk_19222E2F0);
  if (v27(&v19[v24], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_14;
  }

  (*(v11 + 32))(v13, &v19[v24], v10);
  sub_1920CF404(&qword_1EADEF7E0, MEMORY[0x1E697CB10], MEMORY[0x1E697CB20]);
  v32 = sub_192227910();
  v33 = *(v11 + 8);
  v33(v13, v10);
  v33(v16, v10);
  sub_192033970(v19, &qword_1EADEF720, &unk_19222E2F0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v35 = v58;
  v34 = v59;
  v36 = v58[7];
  v37 = (v59 + v36);
  v38 = *(v59 + v36 + 8);
  v39 = (v26 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v40)
  {
    goto LABEL_16;
  }

  v41 = v35[8];
  v42 = *(v8 + 48);
  v19 = v63;
  sub_19202CFFC(v34 + v41, v63, &qword_1EADEEE10, &unk_19222B630);
  v43 = v60 + v41;
  v44 = v60;
  sub_19202CFFC(v43, &v19[v42], &qword_1EADEEE10, &unk_19222B630);
  v45 = v64;
  v46 = *(v64 + 48);
  v47 = v57;
  if (v46(v19, 1, v57) != 1)
  {
    v48 = v62;
    sub_19202CFFC(v19, v62, &qword_1EADEEE10, &unk_19222B630);
    if (v46(&v19[v42], 1, v47) != 1)
    {
      v49 = v61;
      (*(v45 + 32))(v61, &v19[v42], v47);
      sub_1920CF404(&qword_1EADECF08, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v50 = sub_192227910();
      v51 = *(v45 + 8);
      v51(v49, v47);
      v51(v48, v47);
      sub_192033970(v19, &qword_1EADEEE10, &unk_19222B630);
      if ((v50 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

    (*(v45 + 8))(v48, v47);
    goto LABEL_31;
  }

  if (v46(&v19[v42], 1, v47) != 1)
  {
LABEL_31:
    v28 = &qword_1EADEF7D0;
    v29 = &qword_19222E728;
    goto LABEL_15;
  }

  sub_192033970(v19, &qword_1EADEEE10, &unk_19222B630);
LABEL_33:
  if (*(v34 + v35[9]) == *(v44 + v35[9]) && *(v34 + v35[10]) == *(v44 + v35[10]) && *(v34 + v35[11]) == *(v44 + v35[11]))
  {
    v52 = v35[12];
    v53 = (v34 + v52);
    v54 = *(v34 + v52 + 8);
    v55 = (v44 + v52);
    v56 = v55[1];
    if (v54)
    {
      if (v56 && (*v53 == *v55 && v54 == v56 || (sub_1922289A0() & 1) != 0))
      {
        goto LABEL_43;
      }
    }

    else if (!v56)
    {
LABEL_43:
      v30 = *(v34 + v35[13]) ^ *(v44 + v35[13]) ^ 1;
      return v30 & 1;
    }
  }

LABEL_16:
  v30 = 0;
  return v30 & 1;
}

uint64_t _s9WidgetKit21ControlTemplatePickerV6OptionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = type metadata accessor for ControlTemplatePicker.Option(0);
  v17 = a1;
  v18 = a2;
  v40 = v16;
  v41 = v17;
  v19 = *(v16 + 20);
  v20 = *(v11 + 48);
  sub_19202CFFC(v17 + v19, v13, &qword_1EADEF720, &unk_19222E2F0);
  v21 = v18 + v19;
  v22 = v18;
  sub_19202CFFC(v21, &v13[v20], &qword_1EADEF720, &unk_19222E2F0);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) != 1)
  {
    sub_19202CFFC(v13, v10, &qword_1EADEF720, &unk_19222E2F0);
    if (v23(&v13[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v20], v4);
      sub_1920CF404(&qword_1EADEF7E0, MEMORY[0x1E697CB10], MEMORY[0x1E697CB20]);
      v25 = sub_192227910();
      v26 = *(v5 + 8);
      v26(v7, v4);
      v26(v10, v4);
      v22 = v18;
      sub_192033970(v13, &qword_1EADEF720, &unk_19222E2F0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_192033970(v13, &qword_1EADEF7D8, qword_19222E730);
    return 0;
  }

  if (v23(&v13[v20], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_192033970(v13, &qword_1EADEF720, &unk_19222E2F0);
LABEL_17:
  v28 = v40;
  v27 = v41;
  v29 = *(v40 + 24);
  if (*(v41 + v29 + 16))
  {
    if ((*(v22 + v29 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(v22 + v29 + 16) & 1) != 0 || (sub_192227290() & 1) == 0)
  {
    return 0;
  }

  v30 = *(v28 + 28);
  v31 = (v27 + v30);
  v32 = *(v27 + v30 + 8);
  v33 = (v22 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v35 = *(v28 + 32);
  v36 = (v27 + v35);
  v37 = *(v27 + v35 + 8);
  v38 = (v22 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (v39 && (*v36 == *v38 && v37 == v39 || (sub_1922289A0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v39)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1920CF2FC()
{
  result = qword_1EADEF730;
  if (!qword_1EADEF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF730);
  }

  return result;
}

unint64_t sub_1920CF350()
{
  result = qword_1EADEE898;
  if (!qword_1EADEE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE898);
  }

  return result;
}

uint64_t sub_1920CF3A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920CF404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1920CF44C()
{
  result = qword_1EADEDF98;
  if (!qword_1EADEDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF98);
  }

  return result;
}

uint64_t sub_1920CF4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920CF508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplatePicker.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920CF590()
{
  result = qword_1EADEF748;
  if (!qword_1EADEF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF748);
  }

  return result;
}

uint64_t sub_1920CF5E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEF750, &qword_19222E318);
    sub_1920CF404(a2, type metadata accessor for ControlTemplatePicker.Option, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1920CF680()
{
  result = qword_1EADECF30;
  if (!qword_1EADECF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EADEEA20, &qword_19222A7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECF30);
  }

  return result;
}

uint64_t sub_1920CF6E4(void *a1)
{
  a1[1] = sub_1920CF404(&qword_1EADEF788, type metadata accessor for ControlTemplatePicker, &protocol conformance descriptor for ControlTemplatePicker);
  a1[2] = sub_1920CF404(&qword_1EADEF790, type metadata accessor for ControlTemplatePicker, &protocol conformance descriptor for ControlTemplatePicker);
  result = sub_1920CF404(&qword_1EADEF798, type metadata accessor for ControlTemplatePicker, &protocol conformance descriptor for ControlTemplatePicker);
  a1[3] = result;
  return result;
}

void sub_1920CF7B8(uint64_t a1)
{
  sub_1920CF924(319, &qword_1EADEE618, type metadata accessor for ControlTemplatePicker.Option, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_192040778(319, &qword_1ED74B590, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1920CF924(319, &qword_1ED74B540, MEMORY[0x1E697CB10], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1920CF924(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1920CF924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1920CF9B0(uint64_t a1)
{
  sub_192040778(319, &qword_1ED74B590, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1920CF924(319, &qword_1ED74B540, MEMORY[0x1E697CB10], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_192040778(319, &qword_1EADEE808, MEMORY[0x1E6981540]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ControlTemplatePicker.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlTemplatePicker.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlTemplatePicker.Option.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlTemplatePicker.Option.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1920CFD4C()
{
  result = qword_1EADEF7A0;
  if (!qword_1EADEF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7A0);
  }

  return result;
}

unint64_t sub_1920CFDA4()
{
  result = qword_1EADEF7A8;
  if (!qword_1EADEF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7A8);
  }

  return result;
}

unint64_t sub_1920CFDFC()
{
  result = qword_1EADEF7B0;
  if (!qword_1EADEF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7B0);
  }

  return result;
}

unint64_t sub_1920CFE54()
{
  result = qword_1EADEF7B8;
  if (!qword_1EADEF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7B8);
  }

  return result;
}

unint64_t sub_1920CFEAC()
{
  result = qword_1EADEF7C0;
  if (!qword_1EADEF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7C0);
  }

  return result;
}

unint64_t sub_1920CFF04()
{
  result = qword_1EADEF7C8;
  if (!qword_1EADEF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF7C8);
  }

  return result;
}

uint64_t sub_1920CFF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953393012 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69486E6F69746361 && a2 == 0xEA0000000000746ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t sub_1920D0108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6349656C746974 && a2 == 0xE90000000000006ELL || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004C52556465 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73417265646E6572 && a2 == 0xEE00726564696C53 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000192249E50 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E70 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E90 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1920D0460@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a5;
  a7[1] = a6;
  a7[2] = result;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  return result;
}

uint64_t AppIntentConfiguration.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[2];
  v20 = v2[1];
  v21 = v7;
  v19 = *v2;
  v8 = v20;
  v9 = v7;
  v10 = swift_allocObject();
  v11 = *(a1 + 32);
  v10[1] = *(a1 + 16);
  v10[2] = v11;
  v12 = v2[1];
  v10[3] = *v2;
  v10[4] = v12;
  v10[5] = v2[2];
  v13 = v19;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *v6 = v8;
  *(v6 + 1) = v9;
  *(v6 + 4) = sub_1920D0684;
  *(v6 + 5) = v10;
  *(v6 + 6) = sub_1920D0734;
  *(v6 + 7) = v14;
  swift_storeEnumTagMultiPayload();

  (*(*(a1 - 8) + 16))(v18, &v19, a1);

  return sub_19207ED1C(v6, v17);
}

uint64_t sub_1920D0604(void (**a1)(void *__return_ptr))
{
  (*a1)(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1920D0694@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t *a2@<X8>)
{
  a1(v8);
  v3 = v9;
  v4 = v10;
  v5 = __swift_project_boxed_opaque_existential_1(v8, v9);
  a2[3] = v3;
  a2[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t AppIntentRecommendation.init(intent:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(a6 - 8);
  (*(v15 + 16))(a8, a1, a6);
  v16 = sub_192079D80(0xD000000000000017, 0x800000019222E810, a2, a3, a4 & 1, a5);
  v18 = v17;
  sub_19207A338(a2, a3, a4 & 1);

  (*(v15 + 8))(a1, a6);
  result = type metadata accessor for AppIntentRecommendation(0, a6, a7, v19);
  v21 = (a8 + *(result + 36));
  *v21 = v16;
  v21[1] = v18;
  return result;
}

uint64_t AppIntentRecommendation.init(intent:description:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *(a6 - 8);
  (*(v11 + 16))(a8, a1, a6, a4, a5);
  v12 = sub_192226FC0();
  v14 = v13;
  v16 = v15;
  v18 = sub_192079D80(0xD000000000000017, 0x800000019222E810, v12, v13, v15 & 1, v17);
  v20 = v19;
  sub_19207A338(v12, v14, v16 & 1);

  (*(v11 + 8))(a1, a6);
  result = type metadata accessor for AppIntentRecommendation(0, a6, a7, v21);
  v23 = (a8 + *(result + 36));
  *v23 = v18;
  v23[1] = v20;
  return result;
}

uint64_t AppIntentRecommendation.init<A>(intent:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v30 = a7;
  v31 = a5;
  v28 = a2;
  v29 = a1;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a7);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v11);
  (*(v10 + 16))(v13, a2, a4);
  v16 = sub_192226FD0();
  v18 = v17;
  v20 = v19;
  v22 = sub_192079D80(0xD000000000000017, 0x800000019222E810, v16, v17, v19 & 1, v21);
  v24 = v23;
  sub_19207A338(v16, v18, v20 & 1);

  (*(v10 + 8))(v28, a4);
  (*(v15 + 8))(v29, a3);
  result = type metadata accessor for AppIntentRecommendation(0, a3, v31, v25);
  v27 = (v30 + *(result + 36));
  *v27 = v22;
  v27[1] = v24;
  return result;
}

uint64_t AppIntentConfiguration.init<A>(kind:intent:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t (**a8)@<X0>(char **a1@<X8>)@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_1920FDC30(a6, a1, a2, a6, AssociatedConformanceWitness);
  v18 = v17;
  v28 = v19;
  v21 = v20;
  v22 = *(a9 - 8);
  v23 = (*(v22 + 80) + 88) & ~*(v22 + 80);
  v24 = (*(v22 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = a6;
  *(v25 + 3) = a7;
  *(v25 + 4) = a9;
  *(v25 + 5) = a10;
  *(v25 + 6) = a11;
  *(v25 + 7) = v16;
  *(v25 + 8) = v18;
  *(v25 + 9) = v28;
  *(v25 + 10) = v21;
  (*(v22 + 32))(v25 + v23, a3, a9);
  v26 = (v25 + v24);
  *v26 = a4;
  v26[1] = a5;
  *a8 = sub_1920D0F1C;
  a8[1] = v25;
  a8[2] = v16;
  a8[3] = v18;
  a8[4] = v28;
  a8[5] = v21;
}

uint64_t sub_1920D0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>, uint64_t a9, uint64_t a10)
{
  v25 = a3;
  v26 = a6;
  v16 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a10;
  v27[1] = v19;
  v27[2] = v21;
  v27[3] = v20;
  v22 = type metadata accessor for AppIntentTimelineEntryProvider(0, v27);
  (*(v16 + 16))(v18, a5, a10);
  v23 = sub_192084960(a1, a2, v25, a4, v18, v26, a7);
  a8[3] = v22;
  a8[4] = swift_getWitnessTable();
  a8[5] = &off_1F06AB620;
  *a8 = v23;
}

uint64_t sub_1920D0F1C@<X0>(char **a1@<X8>)
{
  v2 = (*(*(v1[4] - 8) + 80) + 88) & ~*(*(v1[4] - 8) + 80);
  v3 = (v1 + ((*(*(v1[4] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1920D0DAC(v1[7], v1[8], v1[9], v1[10], v1 + v2, *v3, v3[1], a1, v1[3], v1[4]);
}

uint64_t sub_1920D1000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920D103C(uint64_t *a1, int a2)
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

uint64_t sub_1920D1084(uint64_t result, int a2, int a3)
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

uint64_t sub_1920D10E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1920D1160(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
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

_DWORD *sub_1920D129C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1920D1454(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1920D1500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  *(v7 + 5) = a4;
  (*(*(*(v10 + 80) - 8) + 32))(&v7[*(v10 + 120)], a5);
  v11 = &v7[*(*v7 + 128)];
  *v11 = a6;
  *(v11 + 1) = a7;
  return v7;
}

uint64_t sub_1920D15B0()
{
  v1 = sub_192228BD0();
  MEMORY[0x193B0A990](v1);

  MEMORY[0x193B0A990](32, 0xE100000000000000);
  MEMORY[0x193B0A990](*(v0 + 16), *(v0 + 24));
  MEMORY[0x193B0A990](32, 0xE100000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF800, &unk_192231C10);
  v2 = sub_192227990();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1920D16B0()
{
  v1 = (*v0 + 88);
  v2 = (*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  v5 = (*(v3 + 40))(v4, v3);
  *&v6 = v4;
  *(&v6 + 1) = *v1;
  v18 = v5;
  *&v7 = v3;
  *(&v7 + 1) = *v2;
  v17[1] = v6;
  v17[2] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AppIntentRecommendation(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v11 = sub_192227C40();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7F8, &unk_19222E9E0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_19204301C(sub_1920D89D0, v17, v11, v12, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);

  return v15;
}

void sub_1920D1878(uint64_t a1@<X0>, void *a4@<X8>)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_192224C70();
    sub_192224BE0();
    v10 = objc_allocWithZone(MEMORY[0x1E696E730]);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v11 = sub_192228980();
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v12 = [v10 initWithAppBundleIdentifier:v7 linkAction:v11 linkActionMetadata:sub_192228980()];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v14 = (a1 + *(type metadata accessor for AppIntentRecommendation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13) + 36));
    v15 = v14[1];
    v26[0] = *v14;
    v26[1] = v15;
    *a4 = v12;
    sub_1920D89F4();

    v16 = v12;
    v17 = sub_192226FD0();
    v19 = v18;
    LOBYTE(AssociatedTypeWitness) = v20;
    v22 = sub_192079D80(0xD000000000000014, 0x8000000192249F10, v17, v18, v20 & 1, v21);
    v24 = v23;
    sub_19207A338(v17, v19, AssociatedTypeWitness & 1);

    a4[1] = v22;
    a4[2] = v24;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1920D1AD0(void *a1, id *a2)
{
  v111 = a1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v104 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v104 - v18;
  v19 = type metadata accessor for ViewableTimelineEntry(0);
  v119 = *(v19 - 8);
  v122 = v19 - 8;
  v132 = v119;
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v104 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v131);
  v130 = (&v104 - v25);
  v126 = sub_192225150();
  v129 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v121 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v120 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v118);
  v110 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(v4 + 88);
  v109 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v104 - v31;
  v32 = v4;
  v33 = *(v4 + 96);
  v114 = v32;
  v34 = *(v32 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  v35 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v104 - v36;
  (*(v33 + 48))(a2, v34, v33, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v39 = *(v132 + 80);
  v40 = (v39 + 32) & ~v39;
  v122 = v119[9];
  v112 = v39;
  v113 = v38;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_19222B480;
  v42 = *(v2 + *(*v2 + 128));
  v43 = v108;
  v105 = v37;
  v42(v37);
  v44 = *(v114 + 104);
  v114 = v40;
  v45 = v117;
  sub_19221A9D4(v43, v117, v44);
  (*(v109 + 8))(v43, v45);
  v46 = qword_1ED74B558;
  v108 = *a2;
  if (v46 != -1)
  {
LABEL_50:
    swift_once();
  }

  v47 = __swift_project_value_buffer(v118, qword_1ED74B570);
  sub_1920554DC(v47, v110, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v50 = sub_192224E00();
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  v51 = [v111 extensionIdentity];
  v52 = v120;
  BundleStub.init(_:)(v51, v120);
  sub_19203D028(v52, v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v53 = v121;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v54 = *(v129 + 32);
  v109 = v48;
  v54(v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v53, v126);
  v133[0] = v41;

  sub_19209B0C4(v133);

  v55 = v133[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v55;
  *(inited + 24) = 0;
  v57 = v114;
  v119 = MEMORY[0x1E69E7CC0];
  v118 = (MEMORY[0x1E69E7CC0] + v114);
  v59 = v132 + 7;
  v58 = v132[7];
  v60 = v130;
  v129 = *(v131 + 32);
  v131 = v58;
  v58(v130 + v129, 1, 1, v19);
  *v60 = inited;
  v60[1] = sub_1920DA3A8;
  v60[2] = 0;
  v126 = v55;
  v120 = (v55 + v57);
  v121 = inited;
  v132 = v59;
  v41 = (v59 - 1);

  v117 = 0;
  v61 = 0;
  v62 = v125;
  while (2)
  {
    (v131)(v16, 1, 1, v19);
    while (1)
    {
      v63 = *(v126 + 16);
      if (v61 == v63)
      {
        v64 = 1;
        v66 = v127;
        v65 = v128;
      }

      else
      {
        v66 = v127;
        v65 = v128;
        if (v61 >= v63)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_1920554DC(&v120[v61 * v122], v128, type metadata accessor for ViewableTimelineEntry);
        v64 = 0;
        *(v121 + 3) = ++v61;
      }

      (v131)(v65, v64, 1, v19);
      v67 = &unk_19222A7D0;
      sub_192033970(v16, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v65, v16);
      sub_1920D86C4(v16, v11);
      v68 = *v41;
      if ((*v41)(v11, 1, v19) == 1)
      {
        v71 = v11;
        goto LABEL_16;
      }

      sub_192033970(v11, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v16, v66);
      if (v68(v66, 1, v19) == 1)
      {
        v71 = v66;
        goto LABEL_16;
      }

      v67 = v124;
      sub_19203D028(v66, v124, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v130 + v129, v62);
      if (v68(v62, 1, v19) == 1)
      {
        break;
      }

      v69 = v123;
      sub_19203D028(v62, v123, type metadata accessor for ViewableTimelineEntry);
      v70 = sub_192225120();
      sub_1920D8734(v69, type metadata accessor for ViewableTimelineEntry);
      v62 = v125;
      sub_1920D8734(v67, type metadata accessor for ViewableTimelineEntry);
      if ((v70 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_1920D8734(v67, type metadata accessor for ViewableTimelineEntry);
    v71 = v62;
LABEL_16:
    sub_192033970(v71, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v16, v130 + v129);
    v72 = v115;
    sub_1920D8654(v16, v115);
    if (v68(v72, 1, v19) != 1)
    {
      sub_19203D028(v72, v116, type metadata accessor for ViewableTimelineEntry);
      v73 = v122;
      if (v117)
      {
        v74 = v119;
        v75 = v117 - 1;
        if (__OFSUB__(v117, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v76 = v119[3];
      if (((v76 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v77 = v76 & 0xFFFFFFFFFFFFFFFELL;
      if (v77 <= 1)
      {
        v78 = 1;
      }

      else
      {
        v78 = v77;
      }

      v79 = v114;
      v74 = swift_allocObject();
      v80 = _swift_stdlib_malloc_size(v74);
      if (!v73)
      {
        goto LABEL_48;
      }

      if (v80 - v79 == 0x8000000000000000 && v73 == -1)
      {
        goto LABEL_49;
      }

      v82 = v73;
      v83 = (v80 - v79) / v73;
      v74[2] = v78;
      v74[3] = 2 * v83;
      v84 = v74 + v79;
      v85 = v119;
      v86 = v119[3] >> 1;
      v87 = v86 * v82;
      if (!v119[2])
      {
LABEL_39:
        v118 = &v84[v87];
        v88 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - v86;

        v89 = v88;
        v62 = v125;
        v73 = v122;
        v90 = __OFSUB__(v89, 1);
        v75 = v89 - 1;
        if (v90)
        {
          goto LABEL_46;
        }

LABEL_40:
        v117 = v75;
        v91 = v118;
        sub_19203D028(v116, v118, type metadata accessor for ViewableTimelineEntry);
        v118 = (v91 + v73);
        v119 = v74;
        continue;
      }

      if (v74 < v119 || v84 >= v119 + v79 + v87)
      {
        v118 = (v119[3] >> 1);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v74 == v119)
        {
LABEL_38:
          v85[2] = 0;
          goto LABEL_39;
        }

        v118 = (v119[3] >> 1);
        swift_arrayInitWithTakeBackToFront();
      }

      v86 = v118;
      v85 = v119;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v130, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v72, &qword_1EADEE9F8, &unk_19222A7D0);
  v92 = v119;
  v93 = v119[3];
  v94 = v111;
  v95 = v110;
  if (v93 < 2)
  {
    goto LABEL_44;
  }

  v96 = v93 >> 1;
  v90 = __OFSUB__(v96, v117);
  v97 = v96 - v117;
  if (!v90)
  {
    v119[2] = v97;
LABEL_44:
    v98 = v92;
    swift_setDeallocating();

    v99 = v109;
    *(v109 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v98;
    *(v99 + 16) = v108;
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v94;
    sub_1920554DC(v95, v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v100 = byte_1ED74B5B8;
    v101 = v94;
    sub_1920D8734(v95, type metadata accessor for TimelineReloadPolicy);
    (*(v106 + 8))(v105, AssociatedTypeWitness);
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v100;
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v99;
  }

  __break(1u);

  v103 = v109;
  sub_1920D8734(v67 + v109, type metadata accessor for BundleStub);
  sub_192033970(v103 + *(v68 + 231), &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v129 + 8))(v103 + *v61, &qword_1EADEE9F8);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1920D29D8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *v2;
  v3[12] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for ViewableTimelineEntry(0);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v3[25] = swift_task_alloc();
  type metadata accessor for BundleStub(0);
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for TimelineReloadPolicy(0);
  v3[28] = swift_task_alloc();
  v3[29] = v4[11];
  v3[30] = swift_task_alloc();
  v6 = sub_192225150();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = v4[12];
  v3[35] = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[36] = AssociatedTypeWitness;
  v3[37] = *(AssociatedTypeWitness - 8);
  v3[38] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v3[39] = v8;
  v3[40] = *(v8 - 8);
  v3[41] = swift_task_alloc();
  v9 = sub_192228240();
  v3[42] = v9;
  v3[43] = *(v9 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  sub_192227CC0();
  v3[46] = sub_192227CB0();
  v11 = sub_192227C70();
  v3[47] = v11;
  v3[48] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1920D2E4C, v11, v10);
}

uint64_t sub_1920D2E4C()
{
  v30 = v0;
  v1 = [*(v0 + 72) intentReference];
  *(v0 + 392) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 400) = v2;
    swift_getAssociatedConformanceWitness();
    *v2 = v0;
    v2[1] = sub_1920D335C;
    v3 = *(v0 + 360);

    return MEMORY[0x1EEDF3C38](v3);
  }

  else
  {
    (*(*(v0 + 320) + 56))(*(v0 + 360), 1, 1, *(v0 + 312));
    v4 = *(v0 + 352);
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);
    (*(*(v0 + 344) + 16))(v4, *(v0 + 360), *(v0 + 336));
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      v8 = *(v0 + 344);
      v7 = *(v0 + 352);
      v9 = *(v0 + 336);

      v10 = *(v8 + 8);
      v10(v7, v9);
      if (qword_1ED74C6B0 != -1)
      {
        swift_once();
      }

      v11 = sub_1922258B0();
      __swift_project_value_buffer(v11, qword_1ED74CCC8);
      v12 = sub_192225890();
      v13 = sub_192227F90();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 360);
      v16 = *(v0 + 336);
      if (v14)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29 = v18;
        *v17 = 136446210;
        *(v17 + 4) = sub_19202B8CC(0xD000000000000013, 0x8000000192249EF0, &v29);
        _os_log_impl(&dword_192028000, v12, v13, "No AppIntent in %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x193B0C7F0](v18, -1, -1);
        MEMORY[0x193B0C7F0](v17, -1, -1);
      }

      v10(v15, v16);

      v19 = *(v0 + 8);

      return v19(0);
    }

    else
    {
      v28 = *(v0 + 272);
      (*(*(v0 + 320) + 32))(*(v0 + 328), *(v0 + 352), *(v0 + 312));
      v27 = (*(v28 + 56) + **(v28 + 56));
      v20 = swift_task_alloc();
      *(v0 + 408) = v20;
      *v20 = v0;
      v20[1] = sub_1920D38B4;
      v21 = *(v0 + 328);
      v22 = *(v0 + 304);
      v24 = *(v0 + 272);
      v23 = *(v0 + 280);
      v25 = *(v0 + 80);

      return v27(v22, v21, v25, v23, v24);
    }
  }
}

uint64_t sub_1920D335C()
{
  v1 = *v0;
  v2 = *(*v0 + 392);

  v3 = *(v1 + 384);
  v4 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1920D349C, v4, v3);
}

uint64_t sub_1920D349C()
{
  v27 = v0;
  v1 = v0[44];
  v2 = v0[39];
  v3 = v0[40];
  (*(v0[43] + 16))(v1, v0[45], v0[42]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[43];
    v4 = v0[44];
    v6 = v0[42];

    v7 = *(v5 + 8);
    v7(v4, v6);
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1922258B0();
    __swift_project_value_buffer(v8, qword_1ED74CCC8);
    v9 = sub_192225890();
    v10 = sub_192227F90();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[45];
    v13 = v0[42];
    if (v11)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000013, 0x8000000192249EF0, &v26);
      _os_log_impl(&dword_192028000, v9, v10, "No AppIntent in %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);
    }

    v7(v12, v13);

    v16 = v0[1];

    return v16(0);
  }

  else
  {
    v25 = v0[34];
    (*(v0[40] + 32))(v0[41], v0[44], v0[39]);
    v24 = (*(v25 + 56) + **(v25 + 56));
    v18 = swift_task_alloc();
    v0[51] = v18;
    *v18 = v0;
    v18[1] = sub_1920D38B4;
    v19 = v0[41];
    v20 = v0[38];
    v22 = v0[34];
    v21 = v0[35];
    v23 = v0[10];

    return v24(v20, v19, v23, v21, v22);
  }
}

uint64_t sub_1920D38B4()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1920D39D4, v3, v2);
}

uint64_t sub_1920D39D4()
{
  v106 = v0;
  v1 = v0[38];
  v2 = v0[36];
  v92 = v0[33];
  v3 = v0[32];
  v102 = v0[31];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[11];
  v97 = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v94 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19222B480;
  v88 = v8;
  v100 = v9;
  v10 = v9 + v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v2, AssociatedConformanceWitness);
  (*(v6 + *(*v6 + 128)))(v1);
  v12 = sub_192227570();
  v13 = v5[7];
  v14 = type metadata accessor for WidgetViewMetadata(0);
  (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
  v15 = *(v3 + 32);
  v15(v10, v92, v102);
  *(v10 + v5[5]) = v12;
  v16 = v10 + v5[6];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(v10 + v5[8]) = xmmword_19222A790;
  v17 = qword_1ED74B558;
  v87 = *v97;
  if (v17 != -1)
  {
LABEL_52:
    swift_once();
  }

  v18 = v0[33];
  v19 = v0[31];
  v20 = v0[28];
  v21 = v0[26];
  v22 = v0[9];
  v23 = __swift_project_value_buffer(v0[27], qword_1ED74B570);
  sub_1920554DC(v23, v20, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v26 = sub_192224E00();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  BundleStub.init(_:)([v22 extensionIdentity], v21);
  sub_19203D028(v21, v24 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v15(v24 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v18, v19);
  v105 = v100;

  sub_19209B0C4(&v105);
  v86 = v24;
  v27 = v0[24];
  v28 = v0[25];
  v29 = v0[19];
  v30 = v0[20];

  v31 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v31;
  *(inited + 24) = 0;
  v91 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0] + v88;
  v98 = *(v27 + 32);
  v103 = *(v30 + 56);
  v103(v28 + v98, 1, 1, v29);
  *v28 = inited;
  v28[1] = sub_1920DA3A8;
  v100 = v28;
  v28[2] = 0;
  v33 = (v30 + 48);
  v93 = inited;

  v90 = 0;
  v34 = 0;
  v15 = &unk_19222A7D0;
  while (2)
  {
    v103(v0[17], 1, 1, v0[19]);
    while (1)
    {
      v35 = *(v31 + 16);
      if (v34 == v35)
      {
        v36 = 1;
      }

      else
      {
        if (v34 >= v35)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        sub_1920554DC(v31 + v88 + v34 * v94, v0[16], type metadata accessor for ViewableTimelineEntry);
        v36 = 0;
        *(v93 + 24) = ++v34;
      }

      v37 = v0[19];
      v39 = v0[16];
      v38 = v0[17];
      v40 = v0[15];
      v103(v39, v36, 1, v37);
      sub_192033970(v38, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v39, v38);
      sub_1920D86C4(v38, v40);
      v41 = *v33;
      if ((*v33)(v40, 1, v37) == 1)
      {
        v51 = v0 + 15;
        goto LABEL_16;
      }

      v42 = v0[19];
      v43 = v0[17];
      v44 = v0[14];
      sub_192033970(v0[15], &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v43, v44);
      if (v41(v44, 1, v42) == 1)
      {
        v51 = v0 + 14;
        goto LABEL_16;
      }

      v45 = v0[19];
      v46 = v0[13];
      sub_19203D028(v0[14], v0[22], type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v100 + v98, v46);
      v47 = v41(v46, 1, v45);
      v48 = v0[22];
      if (v47 == 1)
      {
        break;
      }

      v49 = v0[21];
      sub_19203D028(v0[13], v49, type metadata accessor for ViewableTimelineEntry);
      v50 = sub_192225120();
      sub_1920D8734(v49, type metadata accessor for ViewableTimelineEntry);
      sub_1920D8734(v48, type metadata accessor for ViewableTimelineEntry);
      if ((v50 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_1920D8734(v0[22], type metadata accessor for ViewableTimelineEntry);
    v51 = v0 + 13;
LABEL_16:
    sub_192033970(*v51, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    v52 = v0[18];
    v53 = v0[19];
    v54 = v0[17];
    sub_19209B16C(v54, v100 + v98);
    sub_1920D8654(v54, v52);
    if (v41(v52, 1, v53) != 1)
    {
      sub_19203D028(v0[18], v0[23], type metadata accessor for ViewableTimelineEntry);
      v55 = v94;
      v56 = v89;
      if (v90)
      {
        v57 = v91;
        v58 = v90 - 1;
        if (__OFSUB__(v90, 1))
        {
          goto LABEL_48;
        }

        goto LABEL_40;
      }

      v59 = v91[3];
      if (((v59 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_49;
      }

      v60 = v59 & 0xFFFFFFFFFFFFFFFELL;
      if (v60 <= 1)
      {
        v61 = 1;
      }

      else
      {
        v61 = v60;
      }

      v57 = swift_allocObject();
      v62 = _swift_stdlib_malloc_size(v57);
      if (!v94)
      {
        goto LABEL_50;
      }

      v63 = v62 - v88;
      if (v62 - v88 == 0x8000000000000000 && v94 == -1)
      {
        goto LABEL_51;
      }

      v65 = v63 / v94;
      v57[2] = v61;
      v57[3] = 2 * (v63 / v94);
      v66 = v57 + v88;
      v67 = v91;
      v68 = v91[3] >> 1;
      v69 = v68 * v94;
      if (!v91[2])
      {
LABEL_39:
        v56 = &v66[v69];
        v70 = (v65 & 0x7FFFFFFFFFFFFFFFLL) - v68;

        v55 = v94;
        v58 = v70 - 1;
        if (__OFSUB__(v70, 1))
        {
          goto LABEL_48;
        }

LABEL_40:
        v90 = v58;
        sub_19203D028(v0[23], v56, type metadata accessor for ViewableTimelineEntry);
        v89 = v56 + v55;
        v91 = v57;
        continue;
      }

      if (v57 < v91 || v66 >= v91 + v88 + v69)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v57 == v91)
        {
LABEL_38:
          v67[2] = 0;
          goto LABEL_39;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v67 = v91;
      goto LABEL_38;
    }

    break;
  }

  v71 = v0[18];
  sub_192033970(v0[25], &qword_1EADEEA00, &unk_19222B660);
  result = sub_192033970(v71, &qword_1EADEE9F8, &unk_19222A7D0);
  v73 = v91[3];
  if (v73 >= 2)
  {
    v74 = v73 >> 1;
    v75 = __OFSUB__(v74, v90);
    v76 = v74 - v90;
    if (v75)
    {
      __break(1u);
      return result;
    }

    v91[2] = v76;
  }

  v77 = v0[43];
  v101 = v0[42];
  v104 = v0[45];
  v78 = v0[40];
  v99 = v0[41];
  v95 = v0[38];
  v96 = v0[39];
  v79 = v0[36];
  v80 = v0[37];
  v81 = v0[28];
  v82 = v0[9];
  swift_setDeallocating();

  *(v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v91;
  *(v86 + 16) = v87;
  *(v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v82;
  sub_1920554DC(v81, v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v83 = byte_1ED74B5B8;
  v84 = v82;
  sub_1920D8734(v81, type metadata accessor for TimelineReloadPolicy);
  (*(v80 + 8))(v95, v79);
  (*(v78 + 8))(v99, v96);
  (*(v77 + 8))(v104, v101);
  *(v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v83;
  *(v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v85 = v0[1];

  return v85(v86);
}

uint64_t sub_1920D4584(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 96);
  v3[6] = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v3[8] = *(AssociatedTypeWitness - 8);
  v3[9] = swift_task_alloc();
  v6 = sub_192228240();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_192227CC0();
  v3[14] = sub_192227CB0();
  v8 = sub_192227C70();
  v3[15] = v8;
  v3[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1920D4734, v8, v7);
}

uint64_t sub_1920D4734()
{
  v26 = v0;
  v1 = [*(v0 + 16) intentReference];
  *(v0 + 136) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    swift_getAssociatedConformanceWitness();
    *v2 = v0;
    v2[1] = sub_1920D4AF8;
    v3 = *(v0 + 104);

    return MEMORY[0x1EEDF3C38](v3);
  }

  else
  {
    (*(*(v0 + 64) + 56))(*(v0 + 104), 1, 1, *(v0 + 56));
    v4 = *(v0 + 96);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    (*(*(v0 + 88) + 16))(v4, *(v0 + 104), *(v0 + 80));
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = *(v0 + 80);

      v10 = *(v8 + 8);
      v10(v7, v9);
      if (qword_1ED74C6B0 != -1)
      {
        swift_once();
      }

      v11 = sub_1922258B0();
      __swift_project_value_buffer(v11, qword_1ED74CCC8);
      v12 = sub_192225890();
      v13 = sub_192227F90();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 104);
      v16 = *(v0 + 80);
      if (v14)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v25 = v18;
        *v17 = 136446210;
        *(v17 + 4) = sub_19202B8CC(0xD000000000000013, 0x8000000192249ED0, &v25);
        _os_log_impl(&dword_192028000, v12, v13, "No AppIntent in %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x193B0C7F0](v18, -1, -1);
        MEMORY[0x193B0C7F0](v17, -1, -1);
      }

      v10(v15, v16);

      v19 = *(v0 + 8);

      return v19(0);
    }

    else
    {
      (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 96), *(v0 + 56));
      v20 = swift_task_alloc();
      *(v0 + 152) = v20;
      *v20 = v0;
      v20[1] = sub_1920D4F04;
      v21 = *(v0 + 72);
      v22 = *(v0 + 24);
      v23 = *(v0 + 16);

      return sub_1920D763C(v23, v22, v21);
    }
  }
}

uint64_t sub_1920D4AF8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1920D4C38, v4, v3);
}

uint64_t sub_1920D4C38()
{
  v23 = v0;
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  (*(v0[11] + 16))(v1, v0[13], v0[10]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];

    v7 = *(v5 + 8);
    v7(v4, v6);
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1922258B0();
    __swift_project_value_buffer(v8, qword_1ED74CCC8);
    v9 = sub_192225890();
    v10 = sub_192227F90();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[13];
    v13 = v0[10];
    if (v11)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000013, 0x8000000192249ED0, &v22);
      _os_log_impl(&dword_192028000, v9, v10, "No AppIntent in %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);
    }

    v7(v12, v13);

    v16 = v0[1];

    return v16(0);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[12], v0[7]);
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_1920D4F04;
    v19 = v0[9];
    v20 = v0[3];
    v21 = v0[2];

    return sub_1920D763C(v21, v20, v19);
  }
}

uint64_t sub_1920D4F04(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1920D502C, v4, v3);
}

uint64_t sub_1920D502C()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8(v1);
}

double sub_1920D5104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v42 = a7;
  v43 = a4;
  v34 = a5;
  v37 = a3;
  v38 = a2;
  v39 = a1;
  v10 = *v7;
  v11 = type metadata accessor for TimelineProviderContext(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a6;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v41 = &v32 - v17;
  v19 = sub_192227CF0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v37, a6);
  sub_1920554DC(v38, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  sub_192227CC0();

  v39 = v39;

  v20 = sub_192227CB0();
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v40 + 80) + v23 + 8) & ~*(v40 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 2) = v20;
  *(v26 + 3) = v27;
  *(v26 + 4) = v10[10];
  v28 = v33;
  *(v26 + 5) = v10[11];
  *(v26 + 6) = v28;
  *(v26 + 7) = v10[12];
  *(v26 + 8) = v10[13];
  *(v26 + 9) = v42;
  (*(v13 + 32))(&v26[v21], v35);
  *&v26[v22] = v8;
  *&v26[v23] = v39;
  sub_19203D028(v36, &v26[v24], type metadata accessor for TimelineProviderContext);
  v29 = &v26[v25];
  v30 = v34;
  *v29 = v43;
  v29[1] = v30;
  sub_19211CA04(0, 0, v41, &unk_19222E9D0, v26);

  return result;
}

uint64_t sub_1920D54A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v13;
  v8[44] = v14;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v8[45] = *a5;
  v8[46] = *(v14 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_192227CC0();
  v8[49] = sub_192227CB0();
  v10 = sub_192227C70();
  v8[50] = v10;
  v8[51] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1920D55D4, v10, v9);
}

uint64_t sub_1920D55D4()
{
  v1 = *(*(v0 + 368) + 16);
  v1(*(v0 + 384), *(v0 + 304), *(v0 + 352));
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    *(v0 + 416) = v3;
    *(v0 + 424) = v6;
    *(v0 + 232) = v2;
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    *(v0 + 256) = v5;
    *(v0 + 264) = v6;
    v7 = swift_task_alloc();
    *(v0 + 432) = v7;
    *v7 = v0;
    v7[1] = sub_1920D58D8;
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);

    return sub_1920D5DF8(v9, v8, v0 + 232);
  }

  else
  {
    v1(*(v0 + 376), *(v0 + 304), *(v0 + 352));
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v11;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v12 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v12;
      v13 = swift_task_alloc();
      *(v0 + 456) = v13;
      *v13 = v0;
      v13[1] = sub_1920D5ABC;
      v15 = *(v0 + 320);
      v14 = *(v0 + 328);

      return sub_1920D6948(v15, v14, v0 + 16);
    }

    else
    {
      v16 = *(v0 + 360);

      *(v0 + 184) = 0;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      sub_192033970(v0 + 104, &qword_1EADEF7F0, &unk_19222F0D0);
      v17 = *(v16 + 96);
      *(v0 + 272) = *(v16 + 80);
      *(v0 + 288) = v17;
      type metadata accessor for AppIntentTimelineEntryProvider.Errors(0, v0 + 272);
      swift_getWitnessTable();
      v18 = swift_allocError();
      swift_willThrow();
      v19 = *(v0 + 336);
      v20 = v18;
      v19(v18, 1);

      v21 = *(v0 + 8);

      return v21();
    }
  }
}

uint64_t sub_1920D58D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = v4[50];
    v6 = v4[51];
    v7 = sub_1920D5C8C;
  }

  else
  {
    v4[56] = a1;
    v5 = v4[50];
    v6 = v4[51];
    v7 = sub_1920D5A00;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1920D5A00()
{
  v1 = *(v0 + 336);

  v1(v2, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1920D5ABC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v5 = v4[50];
    v6 = v4[51];
    v7 = sub_1920D5D48;
  }

  else
  {
    v4[59] = a1;
    v5 = v4[50];
    v6 = v4[51];
    v7 = sub_1920D5BE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1920D5BE4()
{
  v1 = *(v0 + 336);

  v1(v2, 0);

  sub_1920D897C(v0 + 16);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1920D5C8C()
{

  v1 = v0[55];
  v2 = v0[42];
  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1920D5D48()
{

  sub_1920D897C((v0 + 2));
  v1 = v0[58];
  v2 = v0[42];
  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1920D5DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  *(v4 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = type metadata accessor for TimelineReloadPolicy(0);
  *(v4 + 128) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 136) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v4 + 144) = AssociatedConformanceWitness;
  v9 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  *(v4 + 152) = v9;
  *(v4 + 160) = *(v9 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = *a3;
  *(v4 + 272) = *(a3 + 16);
  *(v4 + 200) = *(a3 + 24);
  sub_192227CC0();
  *(v4 + 216) = sub_192227CB0();
  v11 = sub_192227C70();
  *(v4 + 224) = v11;
  *(v4 + 232) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1920D6014, v11, v10);
}

uint64_t sub_1920D6014()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview entries request being handled by AppIntentConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = *(v0 + 272);
  v10 = *(v0 + 184);
  v11 = *(v0 + 200);

  *(v0 + 16) = v10;
  *(v0 + 32) = v5;
  *(v0 + 40) = v11;
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1920D6190;
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  return TimelineEntryPreviewSource.unwrapTimeline<A>(for:)(v7, v7, v8);
}

uint64_t sub_1920D6190(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  v4 = v3[28];
  v5 = v3[29];
  if (v1)
  {
    v6 = sub_1920D66BC;
  }

  else
  {
    v6 = sub_1920D62A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1920D62A4()
{

  v1 = sub_192225890();
  v2 = sub_192227FB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349056;
    *(v3 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v1, v2, "AppIntentConfiguration resolved entry source to have %{public}ld entries", v3, 0xCu);
    MEMORY[0x193B0C7F0](v3, -1, -1);
  }

  else
  {
  }

  if (qword_1ED74B558 != -1)
  {
    swift_once();
  }

  v4 = v0[32];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v29 = v8;
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[16];
  v12 = v0[14];
  v27 = v0[13];
  v25 = v0[12];
  v26 = v0[11];
  v28 = v0[10];
  v13 = __swift_project_value_buffer(v0[15], qword_1ED74B570);
  sub_1920554DC(v13, v11, type metadata accessor for TimelineReloadPolicy);
  Timeline.init(entries:policy:)(v4, v11, v9, v10, v6);
  (*(v8 + 16))(v5, v6, v7);
  v14 = type metadata accessor for ViewableTimelineEntry(0);
  sub_192203450(v5, sub_1920D8A6C, v25, v14, v9, &protocol witness table for ViewableTimelineEntry, v10, v12);
  v15 = *v26;
  v16 = *v12;
  sub_1920554DC(v12 + *(v27 + 36), v11, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v19 = sub_192224E00();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = v15;

  v21 = [v28 extensionIdentity];
  BundleStub.init(_:)(v21, (v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle));
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v16;
  *(v17 + 16) = v20;
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v28;
  sub_1920554DC(v11, v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  LOBYTE(v20) = byte_1ED74B5B8;
  v22 = v28;
  sub_1920D8734(v11, type metadata accessor for TimelineReloadPolicy);
  sub_192033970(v12, &qword_1EADEF7E8, &qword_19222E9C0);
  (*(v29 + 8))(v6, v7);
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v20;
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v23 = v0[1];

  return v23(v17);
}

uint64_t sub_1920D66BC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1920D6754@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v14 = *(*a2 + 88);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, AssociatedTypeWitness, v8);
  (*(a2 + *(*a2 + 128)))(a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_19221A6E4(v10, v6, AssociatedTypeWitness, v14, AssociatedConformanceWitness, v15);
}

uint64_t sub_1920D6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = *(v5 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[10] = AssociatedTypeWitness;
  v4[11] = *(AssociatedTypeWitness - 8);
  v4[12] = swift_task_alloc();
  sub_192227CC0();
  v4[13] = sub_192227CB0();
  v9 = sub_192227C70();
  v4[14] = v9;
  v4[15] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1920D6AE4, v9, v8);
}

uint64_t sub_1920D6AE4()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview provider request being handled by AppIntentConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];

  TimelineProviderPreviewSource.unwrapContent<A>(for:)(v5, v7, v8, v8, v6);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1920D6CD8;
  v10 = v0[12];
  v12 = v0[2];
  v11 = v0[3];

  return sub_1920D763C(v12, v11, v10);
}

uint64_t sub_1920D6CD8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1920D6E00, v4, v3);
}

uint64_t sub_1920D6E00()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];
  v8 = v0[17];

  return v7(v8);
}

uint64_t sub_1920D6EC4()
{
  sub_192228AD0();
  MEMORY[0x193B0BA90](0);
  return sub_192228B30();
}

uint64_t sub_1920D6F08()
{
  sub_192228AD0();
  MEMORY[0x193B0BA90](0);
  return sub_192228B30();
}

char *sub_1920D6F48()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));

  return v0;
}

uint64_t sub_1920D6FFC()
{
  sub_1920D6F48();

  return swift_deallocClassInstance();
}

uint64_t sub_1920D706C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920D7114;

  return sub_1920D29D8(a1, a2);
}

uint64_t sub_1920D7114(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1920D7210(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920D8A84;

  return sub_1920D4584(a1, a2);
}

uint64_t sub_1920D7324(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_192141600(a1);
}

uint64_t sub_1920D739C(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v8 = (*(v4 + 96) + **(v4 + 96));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1920A59A8;

  return v8(a1, v5, v4);
}

uint64_t sub_1920D7504(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920B3B44;

  return sub_1920D739C(a1);
}

uint64_t sub_1920D75A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1920D7600(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1920D763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a2;
  v4[11] = v3;
  v4[9] = a1;
  v7 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for ViewableTimelineEntry(0);
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v4[24] = swift_task_alloc();
  v9 = sub_192225150();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  type metadata accessor for BundleStub(0);
  v4[28] = swift_task_alloc();
  type metadata accessor for TimelineReloadPolicy(0);
  v4[29] = swift_task_alloc();
  v4[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  v4[31] = swift_task_alloc();
  v10 = *(v7 + 96);
  v11 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[32] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[33] = AssociatedConformanceWitness;
  v15 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v4[34] = v15;
  v4[35] = *(v15 - 8);
  v4[36] = swift_task_alloc();
  v16 = swift_task_alloc();
  v4[37] = v16;
  v4[38] = sub_192227CC0();
  v4[39] = sub_192227CB0();
  v19 = (*(v10 + 64) + **(v10 + 64));
  v17 = swift_task_alloc();
  v4[40] = v17;
  *v17 = v4;
  v17[1] = sub_1920D7AB0;

  return v19(v16, a3, a2, v11, v10);
}

uint64_t sub_1920D7AB0()
{

  v1 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1920D7BEC, v1, v0);
}

void sub_1920D7BEC()
{
  v96 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[31];
  v79 = v0[33];
  v81 = v0[30];
  v83 = v0[29];
  v87 = v0[28];
  v89 = v0[27];
  v91 = v0[26];
  v93 = v0[25];
  v7 = v0[18];
  v8 = v0[10];
  v9 = v0[11];
  v85 = v0[9];

  (*(v4 + 16))(v1, v2, v3);
  sub_192203450(v1, sub_1920D8638, v9, v7, v5, &protocol witness table for ViewableTimelineEntry, v79, v6);
  v10 = *v8;
  v11 = *v6;
  sub_1920554DC(v6 + *(v81 + 36), v83, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v14 = sub_192224E00();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  v15 = v10;
  BundleStub.init(_:)([v85 extensionIdentity], v87);
  sub_19203D028(v87, v12 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  (*(v91 + 32))(v12 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v89, v93);
  v95 = v11;

  sub_19209B0C4(&v95);
  v74 = v15;
  v75 = v12;
  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[18];
  v19 = v0[19];
  v20 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v20;
  *(inited + 24) = 0;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v78 = MEMORY[0x1E69E7CC0] + v22;
  v80 = MEMORY[0x1E69E7CC0];
  v90 = *(v16 + 32);
  v94 = *(v19 + 56);
  v94(v17 + v90, 1, 1, v18);
  v88 = v20;
  v76 = v22;
  v82 = v20 + v22;
  *v17 = inited;
  v17[1] = sub_1920DA3A8;
  v92 = v17;
  v17[2] = 0;
  v84 = inited;
  v86 = v19;
  v23 = (v19 + 48);

  v77 = 0;
  v24 = 0;
  while (2)
  {
    v94(v0[16], 1, 1, v0[18]);
    while (1)
    {
      v25 = *(v88 + 16);
      if (v24 == v25)
      {
        v26 = 1;
      }

      else
      {
        if (v24 >= v25)
        {
          __break(1u);
          goto LABEL_47;
        }

        sub_1920554DC(v82 + v86[9] * v24, v0[15], type metadata accessor for ViewableTimelineEntry);
        v26 = 0;
        *(v84 + 24) = ++v24;
      }

      v27 = v0[18];
      v29 = v0[15];
      v28 = v0[16];
      v30 = v0[14];
      v94(v29, v26, 1, v27);
      sub_192033970(v28, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v29, v28);
      sub_1920D86C4(v28, v30);
      v31 = *v23;
      if ((*v23)(v30, 1, v27) == 1)
      {
        break;
      }

      v32 = v0[18];
      v33 = v0[16];
      v34 = v0[13];
      sub_192033970(v0[14], &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v33, v34);
      if (v31(v34, 1, v32) == 1)
      {
        v41 = v0 + 13;
        goto LABEL_15;
      }

      v35 = v0[18];
      v36 = v0[12];
      sub_19203D028(v0[13], v0[21], type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v92 + v90, v36);
      v37 = v31(v36, 1, v35);
      v38 = v0[21];
      if (v37 == 1)
      {
        sub_1920D8734(v0[21], type metadata accessor for ViewableTimelineEntry);
        v41 = v0 + 12;
        goto LABEL_15;
      }

      v39 = v0[20];
      sub_19203D028(v0[12], v39, type metadata accessor for ViewableTimelineEntry);
      v40 = sub_192225120();
      sub_1920D8734(v39, type metadata accessor for ViewableTimelineEntry);
      sub_1920D8734(v38, type metadata accessor for ViewableTimelineEntry);
      if ((v40 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v41 = v0 + 14;
LABEL_15:
    sub_192033970(*v41, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_16:
    v42 = v0[17];
    v43 = v0[18];
    v44 = v0[16];
    sub_19209B16C(v44, v92 + v90);
    sub_1920D8654(v44, v42);
    if (v31(v42, 1, v43) != 1)
    {
      sub_19203D028(v0[17], v0[22], type metadata accessor for ViewableTimelineEntry);
      if (v77)
      {
        v45 = v80;
        v46 = v77 - 1;
        if (!__OFSUB__(v77, 1))
        {
          goto LABEL_39;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v47 = v80[3];
      if (((v47 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
      if (v48 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v50 = v86[9];
      v45 = swift_allocObject();
      v51 = _swift_stdlib_malloc_size(v45);
      if (!v50)
      {
        goto LABEL_49;
      }

      v52 = v51 - v76;
      if (v51 - v76 == 0x8000000000000000 && v50 == -1)
      {
        goto LABEL_50;
      }

      v54 = v52 / v50;
      v45[2] = v49;
      v45[3] = 2 * (v52 / v50);
      v55 = v45 + v76;
      v56 = v80;
      v57 = v80[3] >> 1;
      v58 = v57 * v50;
      if (!v80[2])
      {
LABEL_38:
        v78 = &v55[v58];
        v59 = (v54 & 0x7FFFFFFFFFFFFFFFLL) - v57;

        v60 = __OFSUB__(v59, 1);
        v46 = v59 - 1;
        if (!v60)
        {
LABEL_39:
          v77 = v46;
          sub_19203D028(v0[22], v78, type metadata accessor for ViewableTimelineEntry);
          v78 += v86[9];
          v80 = v45;
          continue;
        }

        goto LABEL_47;
      }

      if (v45 < v80 || v55 >= v80 + v76 + v58)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v45 == v80)
        {
LABEL_37:
          v56[2] = 0;
          goto LABEL_38;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v56 = v80;
      goto LABEL_37;
    }

    break;
  }

  v61 = v0[17];
  sub_192033970(v0[24], &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v61, &qword_1EADEE9F8, &unk_19222A7D0);
  v62 = v80[3];
  if (v62 >= 2)
  {
    v63 = v62 >> 1;
    v60 = __OFSUB__(v63, v77);
    v64 = v63 - v77;
    if (v60)
    {
LABEL_51:
      __break(1u);
      return;
    }

    v80[2] = v64;
  }

  v65 = v0[37];
  v67 = v0[34];
  v66 = v0[35];
  v68 = v0[31];
  v69 = v0[29];
  v70 = v0[9];
  swift_setDeallocating();

  *(v75 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v80;
  *(v75 + 16) = v74;
  *(v75 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v70;
  sub_1920554DC(v69, v75 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v71 = byte_1ED74B5B8;
  v72 = v70;
  sub_1920D8734(v69, type metadata accessor for TimelineReloadPolicy);
  sub_192033970(v68, &qword_1EADEF7E8, &qword_19222E9C0);
  (*(v66 + 8))(v65, v67);
  *(v75 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v71;
  *(v75 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v73 = v0[1];

  v73(v75);
}

uint64_t sub_1920D8654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920D86C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920D8734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920D8794(uint64_t a1)
{
  v3 = v2;
  v4 = v1[6];
  v5 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v16 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1920A59A8;

  return sub_1920D54A4(a1, v11, v12, v1 + v5, v16, v10, v1 + v9, v13);
}

unint64_t sub_1920D89F4()
{
  result = qword_1EADECAB0;
  if (!qword_1EADECAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECAB0);
  }

  return result;
}

uint64_t sub_1920D8A88(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xEB00000000656772;
    v11 = 0x614C6D6574737973;
    if (a1 != 2)
    {
      v11 = 0xD000000000000010;
      v10 = 0x8000000192249FD0;
    }

    v12 = 0xEB000000006C6C61;
    v13 = 0x6D536D6574737973;
    if (a1)
    {
      v13 = 0x654D6D6574737973;
      v12 = 0xEC0000006D756964;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v1 <= 1)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v2 = 0x726F737365636361;
    v3 = 0xEF72656E726F4379;
    v4 = 0x8000000192249F90;
    v5 = 0xD000000000000011;
    v6 = 0x8000000192249F70;
    v7 = 0xD000000000000014;
    if (a1 != 7)
    {
      v7 = 0x726F737365636361;
      v6 = 0xEF656E696C6E4979;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    if (a1 == 4)
    {
      v2 = 0xD000000000000018;
      v3 = 0x8000000192249FB0;
    }

    if (a1 <= 5u)
    {
      v8 = v2;
    }

    else
    {
      v8 = v5;
    }

    if (v1 <= 5)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }
  }

  MEMORY[0x193B0A990](v8, v9);
}

uint64_t sub_1920D8C04(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1920D8C24, 0, 0);
}

uint64_t sub_1920D8C24(uint64_t a1, uint64_t a2)
{
  v33 = v2;
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  *(v2 + 104) = v3;
  v4 = [v3 intentReference];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 intent];
    *(v2 + 112) = v6;

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        **(v2 + 88) = 0;
        v8 = [v7 linkAction];
        v9 = v8;
        if (v8)
        {
          v8 = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
        }

        else
        {
          *(v2 + 64) = 0;
          *(v2 + 72) = 0;
        }

        *(v2 + 56) = v9;
        *(v2 + 80) = v8;
        v29 = swift_task_alloc();
        *(v2 + 120) = v29;
        *v29 = v2;
        v29[1] = sub_1920D8F14;

        return MEMORY[0x1EEDB29B0](v2 + 16, v2 + 56);
      }
    }
  }

  v10 = *(v2 + 88);
  v11 = [v3 intentReference];
  v12 = [v11 _typedIntent];

  *v10 = v12;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  v13 = *(v2 + 104);
  v14 = *(v2 + 88);
  InternalWidgetFamily.init(_:)([v13 family], &v30);
  v15 = v30;
  *(v14 + 32) = v30;
  v32 = v15;
  sub_19206E384(&v32, &v31);
  *(v14 + 8) = v31;
  *(v14 + 40) = [v13 family];
  v16 = [v13 kind];
  v17 = sub_192227960();
  v19 = v18;

  *(v14 + 16) = v17;
  *(v14 + 24) = v19;
  v20 = [v13 personaIdentifier];
  v21 = *(v2 + 104);
  if (v20)
  {
    v22 = v20;
    v23 = sub_192227960();
    v25 = v24;

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v23 = 0;
    v25 = 0;
  }

  v26 = *(v2 + 88);
  *(v26 + 48) = v23;
  *(v26 + 56) = v25;
  v27 = *(v2 + 8);

  return v27();
}

uint64_t sub_1920D8F14()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1920D91A8;
  }

  else
  {
    sub_192033970(v2 + 56, &unk_1EADEF330, &unk_19222CD40);
    v3 = sub_1920D9044;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1920D9044()
{
  v23 = v0;

  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v1 + 64) = *(v0 + 16);
  *(v1 + 80) = v3;
  *(v1 + 96) = v2;
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  InternalWidgetFamily.init(_:)([v4 family], &v20);
  v6 = v20;
  *(v5 + 32) = v20;
  v22 = v6;
  sub_19206E384(&v22, &v21);
  *(v5 + 8) = v21;
  *(v5 + 40) = [v4 family];
  v7 = [v4 kind];
  v8 = sub_192227960();
  v10 = v9;

  *(v5 + 16) = v8;
  *(v5 + 24) = v10;
  v11 = [v4 personaIdentifier];
  v12 = *(v0 + 104);
  if (v11)
  {
    v13 = v11;
    v14 = sub_192227960();
    v16 = v15;

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v14 = 0;
    v16 = 0;
  }

  v17 = *(v0 + 88);
  *(v17 + 48) = v14;
  *(v17 + 56) = v16;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1920D91A8()
{
  v21 = v0;

  sub_192033970(v0 + 56, &unk_1EADEF330, &unk_19222CD40);
  v1 = *(v0 + 88);
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  InternalWidgetFamily.init(_:)([v2 family], &v18);
  v4 = v18;
  *(v3 + 32) = v18;
  v20 = v4;
  sub_19206E384(&v20, &v19);
  *(v3 + 8) = v19;
  *(v3 + 40) = [v2 family];
  v5 = [v2 kind];
  v6 = sub_192227960();
  v8 = v7;

  *(v3 + 16) = v6;
  *(v3 + 24) = v8;
  v9 = [v2 personaIdentifier];
  v10 = *(v0 + 104);
  if (v9)
  {
    v11 = v9;
    v12 = sub_192227960();
    v14 = v13;

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v14 = 0;
  }

  v15 = *(v0 + 88);
  *(v15 + 48) = v12;
  *(v15 + 56) = v14;
  v16 = *(v0 + 8);

  return v16();
}

id WidgetInfo.configuration.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t WidgetInfo.widgetConfigurationIntent<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1920D93EC(v2 + 64, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF888, &qword_19222EAB0);
  v5 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
}

uint64_t sub_1920D93EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF888, &qword_19222EAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WidgetInfo.kind.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WidgetInfo.persona.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

BOOL static WidgetInfo.== infix(_:_:)()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)(v2);
  v0 = sub_192228B30();
  sub_192228AD0();
  WidgetInfo.hash(into:)(v2);
  return v0 == sub_192228B30();
}

uint64_t WidgetInfo.hashValue.getter()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)(v1);
  return sub_192228B30();
}

void WidgetInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*v1)
  {
    sub_192228AF0();
    v4 = v3;
    sub_1922281E0();
  }

  else
  {
    sub_192228AF0();
  }

  MEMORY[0x193B0BA90](*(v2 + 8));
  MEMORY[0x193B0BA90](*(v2 + 32));
  sub_1922279B0();
  if (v2[7])
  {
    sub_192228AF0();
    sub_1922279B0();
  }

  else
  {
    sub_192228AF0();
  }

  sub_1920D93EC((v2 + 8), v6);
  if (!v7)
  {
    sub_192033970(v6, &qword_1EADEF888, &qword_19222EAB0);
    v8 = 0u;
    v9 = 0u;
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_192224C70();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (!*(&v9 + 1))
  {
LABEL_12:
    sub_192033970(&v8, &unk_1EADEF330, &unk_19222CD40);
    goto LABEL_13;
  }

  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  if (swift_dynamicCast())
  {
    v5 = v6[0];
    sub_192228AF0();
    sub_1922281E0();

    return;
  }

LABEL_13:
  sub_192228AF0();
}

uint64_t sub_1920D976C()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)(v1);
  return sub_192228B30();
}

uint64_t sub_1920D97B0()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)(v1);
  return sub_192228B30();
}

BOOL sub_1920D97EC()
{
  sub_192228AD0();
  WidgetInfo.hash(into:)(v2);
  v0 = sub_192228B30();
  sub_192228AD0();
  WidgetInfo.hash(into:)(v2);
  return v0 == sub_192228B30();
}

uint64_t WidgetInfo.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_192228400();
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x193B0A990](0xD00000000000001DLL, 0x8000000192249F30);
  if (*v0)
  {
    v3 = *v0;
    v4 = [v3 description];
    v5 = sub_192227960();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x193B0A990](v5, v7);

  MEMORY[0x193B0A990](0xD00000000000001ELL, 0x8000000192249F50);
  sub_1920D93EC((v1 + 8), v12);
  v8 = v13;
  sub_192033970(v12, &qword_1EADEF888, &qword_19222EAB0);
  if (!v8)
  {
    v11 = 0xE300000000000000;
    goto LABEL_8;
  }

  result = sub_1920D93EC((v1 + 8), v12);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF890, &qword_19222EAB8);
    v2 = sub_192227990();
    v11 = v10;
LABEL_8:
    MEMORY[0x193B0A990](v2, v11);

    MEMORY[0x193B0A990](0x6C696D6166202D0ALL, 0xEB00000000203A79);
    sub_1920D8A88(*(v1 + 8));
    MEMORY[0x193B0A990](0x3A646E696B202D0ALL, 0xE900000000000020);
    MEMORY[0x193B0A990](v1[2], v1[3]);
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1920D9A68()
{
  result = qword_1EADEF898;
  if (!qword_1EADEF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF898);
  }

  return result;
}

unint64_t sub_1920D9AC0()
{
  result = qword_1EADEF8A0[0];
  if (!qword_1EADEF8A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEF8A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents0A6Intent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1920D9B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1920D9BA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1920D9C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920D9C5C(uint64_t a1)
{
  result = sub_1922283A0();
  if (v2 <= 0x3F)
  {
    result = sub_1920DA1D8();
    if (v3 <= 0x3F)
    {
      result = sub_192228240();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1920D9D04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 24) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1920D9EC4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 24) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

unint64_t sub_1920DA1D8()
{
  result = qword_1ED74A2D8[0];
  if (!qword_1ED74A2D8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1ED74A2D8);
  }

  return result;
}

uint64_t sub_1920DA228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_192228240();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  (*(*(a4 - 8) + 56))(&v15 - v12, 1, 1, a4, v11);
  sub_1920DA314(a1, a2, a3, v13, a4, a5);
}

uint64_t sub_1920DA314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  v8 = *(type metadata accessor for DedupedSequence.DedupedIterator(0, a5, a3, a4) + 32);
  v9 = sub_192228240();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a4, v9);
}

uint64_t sub_1920DA3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ViewableTimelineEntry(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1920D86C4(a1, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = v9;
  }

  else
  {
    sub_1920DA8FC(v9, v16);
    sub_1920D86C4(a2, v6);
    if (v17(v6, 1, v10) != 1)
    {
      sub_1920DA8FC(v6, v13);
      v19 = sub_192225120();
      sub_1920DA960(v13);
      sub_1920DA960(v16);
      return v19 & 1;
    }

    sub_1920DA960(v16);
    v18 = v6;
  }

  sub_1920DA894(v18);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1920DA5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v4 = *(a1 + 16);
  v5 = sub_192228240();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v25 = v24 - v11;
  v12 = *(v4 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v26 = v4;
  v13(a2, 1, 1, v4, v10);
  v27 = v2;
  v15 = *v2;
  v24[0] = v6;
  v24[1] = v15;
  v16 = (v6 + 8);
  v17 = (v6 + 32);
  v18 = (v6 + 16);
  v19 = (v14 - 8);
  do
  {
    v20 = v25;
    v21 = v26;
    sub_192228390();
    v22 = *v16;
    (*v16)(a2, v5);
    (*v17)(a2, v20, v5);
    (*v18)(v8, a2, v5);
    LODWORD(v21) = (*v19)(v8, 1, v21);
    v22(v8, v5);
  }

  while (v21 != 1 && ((*(v27 + 1))(a2, &v27[*(v28 + 32)]) & 1) != 0);
  return (*(v24[0] + 24))(&v27[*(v28 + 32)], a2, v5);
}

double sub_1920DA7F8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1920DA228(*v2, v2[1], v2[2], *(a1 + 16), a2);

  return result;
}

uint64_t sub_1920DA848(uint64_t a1, uint64_t a2)
{
  v3 = sub_1920DA890(v2, a1, a2);

  return v3;
}

uint64_t sub_1920DA894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1920DA8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewableTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920DA960(uint64_t a1)
{
  v2 = type metadata accessor for ViewableTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WidgetMountingStyle.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

unint64_t sub_1920DAB10()
{
  result = qword_1ED74ABA8;
  if (!qword_1ED74ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ABA8);
  }

  return result;
}

unint64_t sub_1920DAB88()
{
  result = qword_1EADEF928;
  if (!qword_1EADEF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF928);
  }

  return result;
}

unint64_t sub_1920DABDC()
{
  result = qword_1EADEF930;
  if (!qword_1EADEF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF930);
  }

  return result;
}

uint64_t sub_1920DAC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>, uint64_t a9)
{
  v24 = a3;
  v25 = a6;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a9;
  v26[1] = v18;
  v26[2] = v20;
  v26[3] = v19;
  v21 = type metadata accessor for TimelineEntryProvider(0, v26);
  (*(v15 + 16))(v17, a5, a9);
  v22 = sub_192084960(a1, a2, v24, a4, v17, v25, a7);
  a8[3] = v21;
  a8[4] = swift_getWitnessTable();
  *a8 = v22;
}

uint64_t sub_1920DAD98@<X0>(char **a1@<X8>)
{
  v2 = (*(*(v1[3] - 8) + 80) + 80) & ~*(*(v1[3] - 8) + 80);
  v3 = (v1 + ((*(*(v1[3] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1920DAC30(v1[6], v1[7], v1[8], v1[9], v1 + v2, *v3, v3[1], a1, v1[3]);
}

uint64_t sub_1920DAE34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1920DAEE0()
{
  v1 = sub_192228BD0();
  MEMORY[0x193B0A990](v1);

  MEMORY[0x193B0A990](32, 0xE100000000000000);
  MEMORY[0x193B0A990](*(v0 + 16), *(v0 + 24));
  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1920DAF90(void *a1, id *a2)
{
  v111 = a1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v104 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v104 - v18;
  v19 = type metadata accessor for ViewableTimelineEntry(0);
  v119 = *(v19 - 8);
  v122 = v19 - 8;
  v132 = v119;
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v104 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v131);
  v130 = (&v104 - v25);
  v126 = sub_192225150();
  v129 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v121 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v120 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v118);
  v110 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(v4 + 88);
  v109 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v104 - v31;
  v32 = v4;
  v33 = *(v4 + 96);
  v114 = v32;
  v34 = *(v32 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  v35 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v104 - v36;
  (*(v33 + 24))(a2, v34, v33, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v39 = *(v132 + 80);
  v40 = (v39 + 32) & ~v39;
  v122 = v119[9];
  v112 = v39;
  v113 = v38;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_19222B480;
  v42 = *(v2 + *(*v2 + 128));
  v43 = v108;
  v105 = v37;
  v42(v37);
  v44 = *(v114 + 104);
  v114 = v40;
  v45 = v117;
  sub_19221A9D4(v43, v117, v44);
  (*(v109 + 8))(v43, v45);
  v46 = qword_1ED74B558;
  v108 = *a2;
  if (v46 != -1)
  {
LABEL_50:
    swift_once();
  }

  v47 = __swift_project_value_buffer(v118, qword_1ED74B570);
  sub_192055544(v47, v110, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v50 = sub_192224E00();
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  v51 = [v111 extensionIdentity];
  v52 = v120;
  BundleStub.init(_:)(v51, v120);
  sub_1920E07FC(v52, v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v53 = v121;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v54 = *(v129 + 32);
  v109 = v48;
  v54(v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v53, v126);
  v133[0] = v41;

  sub_19209B0C4(v133);

  v55 = v133[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v55;
  *(inited + 24) = 0;
  v57 = v114;
  v119 = MEMORY[0x1E69E7CC0];
  v118 = (MEMORY[0x1E69E7CC0] + v114);
  v59 = v132 + 7;
  v58 = v132[7];
  v60 = v130;
  v129 = *(v131 + 32);
  v131 = v58;
  v58(v130 + v129, 1, 1, v19);
  *v60 = inited;
  v60[1] = sub_1920DA3A8;
  v60[2] = 0;
  v126 = v55;
  v120 = (v55 + v57);
  v121 = inited;
  v132 = v59;
  v41 = (v59 - 1);

  v117 = 0;
  v61 = 0;
  v62 = v125;
  while (2)
  {
    (v131)(v16, 1, 1, v19);
    while (1)
    {
      v63 = *(v126 + 16);
      if (v61 == v63)
      {
        v64 = 1;
        v66 = v127;
        v65 = v128;
      }

      else
      {
        v66 = v127;
        v65 = v128;
        if (v61 >= v63)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_192055544(&v120[v61 * v122], v128, type metadata accessor for ViewableTimelineEntry);
        v64 = 0;
        *(v121 + 3) = ++v61;
      }

      (v131)(v65, v64, 1, v19);
      v67 = &unk_19222A7D0;
      sub_192033970(v16, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v65, v16);
      sub_1920D86C4(v16, v11);
      v68 = *v41;
      if ((*v41)(v11, 1, v19) == 1)
      {
        v71 = v11;
        goto LABEL_16;
      }

      sub_192033970(v11, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v16, v66);
      if (v68(v66, 1, v19) == 1)
      {
        v71 = v66;
        goto LABEL_16;
      }

      v67 = v124;
      sub_1920E07FC(v66, v124, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v130 + v129, v62);
      if (v68(v62, 1, v19) == 1)
      {
        break;
      }

      v69 = v123;
      sub_1920E07FC(v62, v123, type metadata accessor for ViewableTimelineEntry);
      v70 = sub_192225120();
      sub_192046F48(v69, type metadata accessor for ViewableTimelineEntry);
      v62 = v125;
      sub_192046F48(v67, type metadata accessor for ViewableTimelineEntry);
      if ((v70 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v67, type metadata accessor for ViewableTimelineEntry);
    v71 = v62;
LABEL_16:
    sub_192033970(v71, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v16, v130 + v129);
    v72 = v115;
    sub_1920D8654(v16, v115);
    if (v68(v72, 1, v19) != 1)
    {
      sub_1920E07FC(v72, v116, type metadata accessor for ViewableTimelineEntry);
      v73 = v122;
      if (v117)
      {
        v74 = v119;
        v75 = v117 - 1;
        if (__OFSUB__(v117, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v76 = v119[3];
      if (((v76 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v77 = v76 & 0xFFFFFFFFFFFFFFFELL;
      if (v77 <= 1)
      {
        v78 = 1;
      }

      else
      {
        v78 = v77;
      }

      v79 = v114;
      v74 = swift_allocObject();
      v80 = _swift_stdlib_malloc_size(v74);
      if (!v73)
      {
        goto LABEL_48;
      }

      if (v80 - v79 == 0x8000000000000000 && v73 == -1)
      {
        goto LABEL_49;
      }

      v82 = v73;
      v83 = (v80 - v79) / v73;
      v74[2] = v78;
      v74[3] = 2 * v83;
      v84 = v74 + v79;
      v85 = v119;
      v86 = v119[3] >> 1;
      v87 = v86 * v82;
      if (!v119[2])
      {
LABEL_39:
        v118 = &v84[v87];
        v88 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - v86;

        v89 = v88;
        v62 = v125;
        v73 = v122;
        v90 = __OFSUB__(v89, 1);
        v75 = v89 - 1;
        if (v90)
        {
          goto LABEL_46;
        }

LABEL_40:
        v117 = v75;
        v91 = v118;
        sub_1920E07FC(v116, v118, type metadata accessor for ViewableTimelineEntry);
        v118 = (v91 + v73);
        v119 = v74;
        continue;
      }

      if (v74 < v119 || v84 >= v119 + v79 + v87)
      {
        v118 = (v119[3] >> 1);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v74 == v119)
        {
LABEL_38:
          v85[2] = 0;
          goto LABEL_39;
        }

        v118 = (v119[3] >> 1);
        swift_arrayInitWithTakeBackToFront();
      }

      v86 = v118;
      v85 = v119;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v130, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v72, &qword_1EADEE9F8, &unk_19222A7D0);
  v92 = v119;
  v93 = v119[3];
  v94 = v111;
  v95 = v110;
  if (v93 < 2)
  {
    goto LABEL_44;
  }

  v96 = v93 >> 1;
  v90 = __OFSUB__(v96, v117);
  v97 = v96 - v117;
  if (!v90)
  {
    v119[2] = v97;
LABEL_44:
    v98 = v92;
    swift_setDeallocating();

    v99 = v109;
    *(v109 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v98;
    *(v99 + 16) = v108;
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v94;
    sub_192055544(v95, v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v100 = byte_1ED74B5B8;
    v101 = v94;
    sub_192046F48(v95, type metadata accessor for TimelineReloadPolicy);
    (*(v106 + 8))(v105, AssociatedTypeWitness);
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v100;
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v99;
  }

  __break(1u);

  v103 = v109;
  sub_192046F48(v67 + v109, type metadata accessor for BundleStub);
  sub_192033970(v103 + *(v68 + 231), &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v129 + 8))(v103 + *v61, &qword_1EADEE9F8);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

double sub_1920DBE98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v8 = *v4;
  v9 = type metadata accessor for TimelineProviderContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v8[15];
  sub_192055544(a2, v12, type metadata accessor for TimelineProviderContext);
  v13 = (*(v10 + 80) + 80) & ~*(v10 + 80);
  v14 = swift_allocObject();
  v15 = v8[10];
  v14[2] = v15;
  v14[3] = v8[11];
  v16 = v8[12];
  v14[4] = v16;
  v14[5] = v8[13];
  v14[6] = v4;
  v14[7] = v20[0];
  v14[8] = a4;
  v14[9] = a1;
  sub_1920E07FC(v12, v14 + v13, type metadata accessor for TimelineProviderContext);
  v17 = *(v16 + 32);

  v18 = a1;
  v17(a2, sub_1920E09C4, v14, v15, v16);

  return result;
}

double sub_1920DC0A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v9 = *a2;
  v10 = type metadata accessor for TimelineProviderContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v9;
  v34 = *(v9 + 96);
  v33 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v31 - v17;
  (*(v14 + 16))(&v31 - v17, a1, AssociatedTypeWitness, v16);
  sub_192055544(a6, &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v19 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v35;
  *(v24 + 2) = v33;
  *(v24 + 3) = *(v25 + 88);
  *(v24 + 4) = v34;
  *(v24 + 5) = *(v25 + 104);
  (*(v14 + 32))(&v24[v19], v18, AssociatedTypeWitness);
  *&v24[v20] = a2;
  v26 = &v24[v21];
  v27 = v37;
  *v26 = v36;
  v26[1] = v27;
  v28 = v38;
  *&v24[v22] = v38;
  sub_1920E07FC(v32, &v24[v23], type metadata accessor for TimelineProviderContext);

  v29 = v28;
  sub_1920873B4(sub_1920E0A68, v24);

  return result;
}

void sub_1920DC394(void *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, void *a5, id *a6)
{
  v124 = a6;
  v115 = a5;
  v108[1] = a4;
  v109 = a3;
  v123 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v128 = v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v129 = v108 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v108 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v131 = v108 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v108 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v119 = v108 - v21;
  v22 = type metadata accessor for ViewableTimelineEntry(0);
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v127 = v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v108 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v121 = v108 - v29;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v132);
  v133 = (v108 - v30);
  v31 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v125 = v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v120);
  v114 = v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v7 + 88);
  MEMORY[0x1EEE9AC00](v34);
  v112 = v108 - v35;
  v134 = sub_192225150();
  v130 = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v37 = v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v39 = *(v23 + 72);
  v135 = v23;
  v40 = *(v23 + 80);
  v41 = (v40 + 32) & ~v40;
  v126 = v39;
  v116 = v40;
  v117 = v38;
  v42 = swift_allocObject();
  v110 = v7;
  *(v42 + 16) = xmmword_19222B480;
  v118 = v41;
  v122 = v42;
  v111 = v42 + v41;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = *(AssociatedConformanceWitness + 8);
  v45 = swift_checkMetadataState();
  v46 = v123;
  v44(v45, AssociatedConformanceWitness);
  (*(a2 + *(*a2 + 128)))(v46);
  v47 = sub_192227570();
  v48 = v22[7];
  v49 = type metadata accessor for WidgetViewMetadata(0);
  v50 = v111;
  (*(*(v49 - 8) + 56))(v111 + v48, 1, 1, v49);
  v51 = *(v130 + 32);
  v123 = v37;
  (v51)(v50, v37, v134);
  *(v50 + v22[5]) = v47;
  v52 = v50 + v22[6];
  *v52 = 0;
  *(v52 + 8) = 0;
  *(v52 + 16) = 1;
  *(v50 + v22[8]) = xmmword_19222A790;
  v53 = qword_1ED74B558;
  v112 = *v124;
  if (v53 != -1)
  {
LABEL_50:
    swift_once();
  }

  v54 = __swift_project_value_buffer(v120, qword_1ED74B570);
  sub_192055544(v54, v114, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v55 = swift_allocObject();
  v56 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v57 = sub_192224E00();
  (*(*(v57 - 8) + 56))(v55 + v56, 1, 1, v57);
  v58 = [v115 extensionIdentity];
  v59 = v125;
  BundleStub.init(_:)(v58, v125);
  sub_1920E07FC(v59, v55 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v60 = v123;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v113 = v55;
  (v51)(v55 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v60, v134);
  v136[0] = v122;

  sub_19209B0C4(v136);

  v61 = v136[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v61;
  *(inited + 24) = 0;
  v63 = v118;
  v123 = MEMORY[0x1E69E7CC0];
  v120 = MEMORY[0x1E69E7CC0] + v118;
  v64 = v133;
  v66 = v135 + 56;
  v65 = *(v135 + 56);
  v132 = *(v132 + 32);
  v134 = v65;
  v65(v133 + v132, 1, 1, v22);
  *v64 = inited;
  v64[1] = sub_1920DA3A8;
  v64[2] = 0;
  v130 = v61;
  v124 = (v61 + v63);
  v125 = inited;
  v135 = v66;
  v51 = (v66 - 8);

  v122 = 0;
  v67 = 0;
  v68 = v128;
  while (2)
  {
    v134(v19, 1, 1, v22);
    while (1)
    {
      v69 = *(v130 + 16);
      if (v67 == v69)
      {
        v70 = 1;
        v71 = v131;
      }

      else
      {
        v71 = v131;
        if (v67 >= v69)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_192055544(v124 + v67 * v126, v131, type metadata accessor for ViewableTimelineEntry);
        v70 = 0;
        *(v125 + 3) = ++v67;
      }

      v134(v71, v70, 1, v22);
      sub_192033970(v19, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v71, v19);
      sub_1920D86C4(v19, v14);
      v72 = *v51;
      if ((*v51)(v14, 1, v22) == 1)
      {
        v76 = v14;
        goto LABEL_16;
      }

      sub_192033970(v14, &qword_1EADEE9F8, &unk_19222A7D0);
      v73 = v129;
      sub_1920D86C4(v19, v129);
      if (v72(v73, 1, v22) == 1)
      {
        v76 = v73;
        goto LABEL_16;
      }

      sub_1920E07FC(v73, v27, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v133 + v132, v68);
      if (v72(v68, 1, v22) == 1)
      {
        break;
      }

      v74 = v127;
      sub_1920E07FC(v68, v127, type metadata accessor for ViewableTimelineEntry);
      v75 = sub_192225120();
      sub_192046F48(v74, type metadata accessor for ViewableTimelineEntry);
      v68 = v128;
      sub_192046F48(v27, type metadata accessor for ViewableTimelineEntry);
      if ((v75 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v27, type metadata accessor for ViewableTimelineEntry);
    v76 = v68;
LABEL_16:
    sub_192033970(v76, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v19, v133 + v132);
    v77 = v119;
    sub_1920D8654(v19, v119);
    if (v72(v77, 1, v22) != 1)
    {
      sub_1920E07FC(v77, v121, type metadata accessor for ViewableTimelineEntry);
      v78 = v120;
      if (v122)
      {
        v79 = v123;
        v80 = v122 - 1;
        if (__OFSUB__(v122, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v81 = v123[3];
      if (((v81 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v82 = v81 & 0xFFFFFFFFFFFFFFFELL;
      if (v82 <= 1)
      {
        v83 = 1;
      }

      else
      {
        v83 = v82;
      }

      v84 = v126;
      v85 = v118;
      v79 = swift_allocObject();
      v86 = _swift_stdlib_malloc_size(v79);
      if (!v84)
      {
        goto LABEL_48;
      }

      if (v86 - v85 == 0x8000000000000000 && v84 == -1)
      {
        goto LABEL_49;
      }

      v88 = v84;
      v89 = (v86 - v85) / v84;
      v79[2] = v83;
      v79[3] = 2 * v89;
      v90 = v79 + v85;
      v91 = v123;
      v92 = v123[3] >> 1;
      v93 = v92 * v88;
      if (!v123[2])
      {
LABEL_39:
        v78 = v90 + v93;
        v94 = (v89 & 0x7FFFFFFFFFFFFFFFLL) - v92;

        v95 = v94;
        v68 = v128;
        v96 = __OFSUB__(v95, 1);
        v80 = v95 - 1;
        if (v96)
        {
          goto LABEL_46;
        }

LABEL_40:
        v122 = v80;
        sub_1920E07FC(v121, v78, type metadata accessor for ViewableTimelineEntry);
        v120 = v78 + v126;
        v123 = v79;
        continue;
      }

      if (v79 < v123 || v90 >= v123 + v85 + v93)
      {
        v122 = v123[3] >> 1;
        v120 = v79 + v85;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v79 == v123)
        {
LABEL_38:
          v91[2] = 0;
          goto LABEL_39;
        }

        v122 = v123[3] >> 1;
        v120 = v79 + v85;
        swift_arrayInitWithTakeBackToFront();
      }

      v92 = v122;
      v90 = v120;
      v91 = v123;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v133, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v77, &qword_1EADEE9F8, &unk_19222A7D0);
  v97 = v123;
  v98 = v123[3];
  v99 = v115;
  v100 = v114;
  if (v98 < 2)
  {
    goto LABEL_44;
  }

  v101 = v98 >> 1;
  v96 = __OFSUB__(v101, v122);
  v102 = v101 - v122;
  if (!v96)
  {
    v123[2] = v102;
LABEL_44:
    v103 = v97;
    swift_setDeallocating();

    v104 = v113;
    *(v113 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v103;
    *(v104 + 16) = v112;
    *(v104 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v99;
    sub_192055544(v100, v104 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v105 = byte_1ED74B5B8;
    v106 = v99;
    sub_192046F48(v100, type metadata accessor for TimelineReloadPolicy);
    *(v104 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v105;
    *(v104 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    v109(v104);

    return;
  }

  __break(1u);

  v107 = v113;
  sub_192046F48(v113 + v67, type metadata accessor for BundleStub);
  sub_192033970(v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v130 + 8))(v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, &qword_1EADEE9F8);
  swift_deallocPartialClassInstance();
  __break(1u);
}

double sub_1920DD294(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22[0] = a4;
  v22[1] = a2;
  v10 = *v5;
  v11 = type metadata accessor for TimelineProviderContext(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192055544(a3, v14, type metadata accessor for TimelineProviderContext);
  v15 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v10[10];
  v16[2] = v17;
  v16[3] = v10[11];
  v18 = v10[12];
  v16[4] = v18;
  v16[5] = v10[13];
  v16[6] = v6;
  v16[7] = v22[0];
  v16[8] = a5;
  v16[9] = a1;
  sub_1920E07FC(v14, v16 + v15, type metadata accessor for TimelineProviderContext);
  v19 = *(v18 + 40);

  v20 = a1;
  v19(a3, sub_1920E0674, v16, v17, v18);

  return result;
}

double sub_1920DD488(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v9 = *a2;
  v10 = type metadata accessor for TimelineProviderContext(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v9;
  v35 = *(v9 + 96);
  v34 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v33 - v19;
  (*(v16 + 16))(&v33 - v19, a1, v15, v18);
  sub_192055544(a6, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v37 + 80) + v24 + 8) & ~*(v37 + 80);
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 2) = v34;
  *(v26 + 3) = *(v27 + 88);
  *(v26 + 4) = v35;
  *(v26 + 5) = *(v27 + 104);
  (*(v16 + 32))(&v26[v21], v20, v15);
  *&v26[v22] = a2;
  v28 = &v26[v23];
  v29 = v39;
  *v28 = v38;
  v28[1] = v29;
  v30 = v40;
  *&v26[v24] = v40;
  sub_1920E07FC(v33, &v26[v25], type metadata accessor for TimelineProviderContext);

  v31 = v30;
  sub_1920873B4(sub_1920E068C, v26);

  return result;
}

uint64_t sub_1920DD7B8(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void **a6)
{
  v124 = a6;
  v106 = a5;
  v103 = a4;
  v104 = a3;
  v123 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v119 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v99 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v121 = (&v99 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v109 = (&v99 - v20);
  v21 = type metadata accessor for ViewableTimelineEntry(0);
  v116 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v125 = (&v99 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v110 = &v99 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v127);
  v105 = &v99 - v27;
  v122 = sub_192225150();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = (&v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v115 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v35);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = (&v99 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  v41 = v40 - 8;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = (&v99 - v43);
  (*(v37 + 16))(v39, v123, v36, v42);
  sub_192203450(v39, sub_1920E07E0, v114, v21, AssociatedTypeWitness, &protocol witness table for ViewableTimelineEntry, AssociatedConformanceWitness, v44);
  v123 = 0;
  v45 = *v124;
  v46 = *v44;
  v47 = *(v41 + 44);
  v101 = v44;
  v102 = v33;
  sub_192055544(v44 + v47, v33, type metadata accessor for TimelineReloadPolicy);
  v124 = type metadata accessor for WidgetViewCollection(0);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v50 = sub_192224E00();
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  v99 = v45;
  v51 = [v106 extensionIdentity];
  v52 = v115;
  BundleStub.init(_:)(v51, v115);
  v53 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle;
  sub_1920E07FC(v52, v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v54 = v118;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v55 = &OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v56 = v120;
  v57 = *(v120 + 32);
  v100 = v48;
  v58 = v122;
  v57(v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v54, v122);
  v128[0] = v46;

  v59 = v123;
  sub_19209B0C4(v128);
  if (v59)
  {
    goto LABEL_51;
  }

  v60 = v128[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v60;
  *(inited + 24) = 0;
  v53 = v116 + 56;
  v62 = *(v116 + 56);
  v108 = *(v116 + 80);
  v63 = (v108 + 32) & ~v108;
  AssociatedConformanceWitness = MEMORY[0x1E69E7CC0];
  v112 = MEMORY[0x1E69E7CC0] + v63;
  v122 = *(v127 + 32);
  v55 = v105;
  v123 = v62;
  (v62)(&v105[v122], 1, 1, v21);
  *v55 = inited;
  *(v55 + 8) = sub_1920DA3A8;
  *(v55 + 16) = 0;
  v120 = v60;
  v107 = v63;
  v114 = (v60 + v63);
  v124 = v53;
  v64 = (v53 - 8);
  v115 = inited;

  v111 = 0;
  v127 = 0;
  v56 = v119;
  v65 = v55;
  v118 = (v53 - 8);
  while (2)
  {
    (v123)(v18, 1, 1, v21);
    while (1)
    {
      v66 = *(v120 + 16);
      if (v127 == v66)
      {
        v67 = 1;
        v59 = v121;
      }

      else
      {
        v59 = v121;
        if (v127 >= v66)
        {
          __break(1u);
          goto LABEL_46;
        }

        v68 = v127;
        sub_192055544(v114 + *(v116 + 72) * v127, v121, type metadata accessor for ViewableTimelineEntry);
        v67 = 0;
        v127 = v68 + 1;
        *(v115 + 3) = v68 + 1;
      }

      (v123)(v59, v67, 1, v21);
      v58 = &qword_1EADEE9F8;
      v55 = &unk_19222A7D0;
      sub_192033970(v18, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v59, v18);
      sub_1920D86C4(v18, v13);
      v53 = *v64;
      if ((*v64)(v13, 1, v21) == 1)
      {
        break;
      }

      sub_192033970(v13, &qword_1EADEE9F8, &unk_19222A7D0);
      v69 = v126;
      sub_1920D86C4(v18, v126);
      if ((v53)(v69, 1, v21) == 1)
      {
        v71 = v126;
        goto LABEL_16;
      }

      sub_1920E07FC(v126, v125, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v65 + v122, v56);
      if ((v53)(v56, 1, v21) == 1)
      {
        sub_192046F48(v125, type metadata accessor for ViewableTimelineEntry);
        v71 = v56;
        goto LABEL_16;
      }

      v58 = v125;
      v55 = v117;
      sub_1920E07FC(v56, v117, type metadata accessor for ViewableTimelineEntry);
      v70 = sub_192225120();
      v64 = v118;
      sub_192046F48(v55, type metadata accessor for ViewableTimelineEntry);
      v56 = v119;
      sub_192046F48(v58, type metadata accessor for ViewableTimelineEntry);
      if ((v70 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v71 = v13;
LABEL_16:
    sub_192033970(v71, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v18, v65 + v122);
    v59 = v109;
    sub_1920D8654(v18, v109);
    if ((v53)(v59, 1, v21) != 1)
    {
      sub_1920E07FC(v59, v110, type metadata accessor for ViewableTimelineEntry);
      v53 = v116;
      if (v111)
      {
        v59 = AssociatedConformanceWitness;
        v72 = v111 - 1;
        if (!__OFSUB__(v111, 1))
        {
          goto LABEL_40;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v73 = *(AssociatedConformanceWitness + 24);
      if (((v73 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v74 = v73 & 0xFFFFFFFFFFFFFFFELL;
      if (v74 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v74;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v53 = *(v53 + 72);
      v75 = v107;
      v59 = swift_allocObject();
      v76 = _swift_stdlib_malloc_size(v59);
      if (!v53)
      {
        goto LABEL_48;
      }

      v77 = v76 - v75;
      if (v76 - v75 == 0x8000000000000000 && v53 == -1)
      {
        goto LABEL_49;
      }

      v79 = v75;
      v55 = v77 / v53;
      v59[2] = v56;
      v59[3] = 2 * (v77 / v53);
      v58 = (v59 + v75);
      v80 = AssociatedConformanceWitness;
      v81 = *(AssociatedConformanceWitness + 24) >> 1;
      v82 = v81 * v53;
      v64 = v118;
      v56 = v119;
      if (!*(AssociatedConformanceWitness + 16))
      {
LABEL_39:
        v112 = v58 + v82;
        v83 = (v55 & 0x7FFFFFFFFFFFFFFFLL) - v81;

        v84 = v83;
        v53 = v116;
        v85 = __OFSUB__(v84, 1);
        v72 = v84 - 1;
        if (!v85)
        {
LABEL_40:
          v111 = v72;
          v86 = v112;
          sub_1920E07FC(v110, v112, type metadata accessor for ViewableTimelineEntry);
          v55 = v86 + *(v53 + 72);
          v112 = v55;
          AssociatedConformanceWitness = v59;
          continue;
        }

        goto LABEL_46;
      }

      if (v59 < AssociatedConformanceWitness || v58 >= AssociatedConformanceWitness + v79 + v82)
      {
        v112 = *(AssociatedConformanceWitness + 24) >> 1;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v59 == AssociatedConformanceWitness)
        {
LABEL_38:
          *(v80 + 16) = 0;
          goto LABEL_39;
        }

        v112 = *(AssociatedConformanceWitness + 24) >> 1;
        swift_arrayInitWithTakeBackToFront();
      }

      v81 = v112;
      v80 = AssociatedConformanceWitness;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v65, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v59, &qword_1EADEE9F8, &unk_19222A7D0);
  v87 = AssociatedConformanceWitness;
  v88 = *(AssociatedConformanceWitness + 24);
  if (v88 < 2)
  {
LABEL_44:
    v91 = v87;
    swift_setDeallocating();

    v92 = v100;
    *(v100 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v91;
    *(v92 + 16) = v99;
    v93 = v106;
    *(v92 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v106;
    v94 = v102;
    sub_192055544(v102, v92 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v95 = byte_1ED74B5B8;
    v96 = v93;
    sub_192046F48(v94, type metadata accessor for TimelineReloadPolicy);
    *(v92 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v95;
    *(v92 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    v104(v92);

    return sub_192033970(v101, &qword_1EADEF7E8, &qword_19222E9C0);
  }

  v89 = v88 >> 1;
  v85 = __OFSUB__(v89, v111);
  v90 = v89 - v111;
  if (!v85)
  {
    *(AssociatedConformanceWitness + 16) = v90;
    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
LABEL_51:

  v98 = v100;
  sub_192046F48(v100 + v53, type metadata accessor for BundleStub);
  sub_192033970(v98 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v56 + 8))(v98 + *v55, v58);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

double sub_1920DE5FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 120);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  sub_1920DD294(a1, v4 + v9, a2, sub_192030B68, v10);

  return result;
}

double sub_1920DE6B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v42 = a7;
  v43 = a4;
  v34 = a5;
  v37 = a3;
  v38 = a2;
  v39 = a1;
  v10 = *v7;
  v11 = type metadata accessor for TimelineProviderContext(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a6;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v41 = &v32 - v17;
  v19 = sub_192227CF0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v37, a6);
  sub_192055544(v38, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  sub_192227CC0();

  v39 = v39;

  v20 = sub_192227CB0();
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v40 + 80) + v23 + 8) & ~*(v40 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 2) = v20;
  *(v26 + 3) = v27;
  *(v26 + 4) = v10[10];
  v28 = v33;
  *(v26 + 5) = v10[11];
  *(v26 + 6) = v28;
  *(v26 + 7) = v10[12];
  *(v26 + 8) = v10[13];
  *(v26 + 9) = v42;
  (*(v13 + 32))(&v26[v21], v35);
  *&v26[v22] = v8;
  *&v26[v23] = v39;
  sub_1920E07FC(v36, &v26[v24], type metadata accessor for TimelineProviderContext);
  v29 = &v26[v25];
  v30 = v34;
  *v29 = v43;
  v29[1] = v30;
  sub_19211CA04(0, 0, v41, &unk_19222F0C8, v26);

  return result;
}

uint64_t sub_1920DEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v13;
  v8[44] = v14;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v8[45] = *a5;
  v8[46] = *(v14 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_192227CC0();
  v8[49] = sub_192227CB0();
  v10 = sub_192227C70();
  v8[50] = v10;
  v8[51] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1920DEB84, v10, v9);
}

uint64_t sub_1920DEB84()
{
  v1 = *(*(v0 + 368) + 16);
  v1(*(v0 + 384), *(v0 + 304), *(v0 + 352));
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    *(v0 + 416) = v3;
    *(v0 + 424) = v6;
    *(v0 + 232) = v2;
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    *(v0 + 256) = v5;
    *(v0 + 264) = v6;
    v7 = swift_task_alloc();
    *(v0 + 432) = v7;
    *v7 = v0;
    v7[1] = sub_1920D58D8;
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);

    return sub_1920DEE88(v9, v8, v0 + 232);
  }

  else
  {
    v1(*(v0 + 376), *(v0 + 304), *(v0 + 352));
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v11;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v12 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v12;
      v13 = swift_task_alloc();
      *(v0 + 456) = v13;
      *v13 = v0;
      v13[1] = sub_1920D5ABC;
      v15 = *(v0 + 320);
      v14 = *(v0 + 328);

      return sub_1920DF940(v15, v14, v0 + 16);
    }

    else
    {
      v16 = *(v0 + 360);

      *(v0 + 184) = 0;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      sub_192033970(v0 + 104, &qword_1EADEF7F0, &unk_19222F0D0);
      v17 = *(v16 + 96);
      *(v0 + 272) = *(v16 + 80);
      *(v0 + 288) = v17;
      type metadata accessor for TimelineEntryProvider.Errors(0, v0 + 272);
      swift_getWitnessTable();
      v18 = swift_allocError();
      swift_willThrow();
      v19 = *(v0 + 336);
      v20 = v18;
      v19(v18, 1);

      v21 = *(v0 + 8);

      return v21();
    }
  }
}

uint64_t sub_1920DEE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  *(v4 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = type metadata accessor for TimelineReloadPolicy(0);
  *(v4 + 128) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 136) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v4 + 144) = AssociatedConformanceWitness;
  v9 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  *(v4 + 152) = v9;
  *(v4 + 160) = *(v9 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = *a3;
  *(v4 + 272) = *(a3 + 16);
  *(v4 + 200) = *(a3 + 24);
  sub_192227CC0();
  *(v4 + 216) = sub_192227CB0();
  v11 = sub_192227C70();
  *(v4 + 224) = v11;
  *(v4 + 232) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1920DF0A4, v11, v10);
}

uint64_t sub_1920DF0A4()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview entries request being handled by StaticConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = *(v0 + 272);
  v10 = *(v0 + 184);
  v11 = *(v0 + 200);

  *(v0 + 16) = v10;
  *(v0 + 32) = v5;
  *(v0 + 40) = v11;
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1920DF220;
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  return TimelineEntryPreviewSource.unwrapTimeline<A>(for:)(v7, v7, v8);
}

uint64_t sub_1920DF220(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  v4 = v3[28];
  v5 = v3[29];
  if (v1)
  {
    v6 = sub_1920D66BC;
  }

  else
  {
    v6 = sub_1920DF334;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1920DF334()
{

  v1 = sub_192225890();
  v2 = sub_192227FB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349056;
    *(v3 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v1, v2, "StaticConfiguration resolved entry source to have %{public}ld entries", v3, 0xCu);
    MEMORY[0x193B0C7F0](v3, -1, -1);
  }

  else
  {
  }

  if (qword_1ED74B558 != -1)
  {
    swift_once();
  }

  v4 = v0[32];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v29 = v8;
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[16];
  v12 = v0[14];
  v27 = v0[13];
  v25 = v0[12];
  v26 = v0[11];
  v28 = v0[10];
  v13 = __swift_project_value_buffer(v0[15], qword_1ED74B570);
  sub_192055544(v13, v11, type metadata accessor for TimelineReloadPolicy);
  Timeline.init(entries:policy:)(v4, v11, v9, v10, v6);
  (*(v8 + 16))(v5, v6, v7);
  v14 = type metadata accessor for ViewableTimelineEntry(0);
  sub_192203450(v5, sub_1920E0B9C, v25, v14, v9, &protocol witness table for ViewableTimelineEntry, v10, v12);
  v15 = *v26;
  v16 = *v12;
  sub_192055544(v12 + *(v27 + 36), v11, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v19 = sub_192224E00();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = v15;

  v21 = [v28 extensionIdentity];
  BundleStub.init(_:)(v21, (v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle));
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v16;
  *(v17 + 16) = v20;
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v28;
  sub_192055544(v11, v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  LOBYTE(v20) = byte_1ED74B5B8;
  v22 = v28;
  sub_192046F48(v11, type metadata accessor for TimelineReloadPolicy);
  sub_192033970(v12, &qword_1EADEF7E8, &qword_19222E9C0);
  (*(v29 + 8))(v6, v7);
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v20;
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v23 = v0[1];

  return v23(v17);
}

double sub_1920DF74C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v14 = *(*a2 + 88);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, AssociatedTypeWitness, v8);
  (*(a2 + *(*a2 + 128)))(a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_19221A6E4(v10, v6, AssociatedTypeWitness, v14, AssociatedConformanceWitness, v15);
}

uint64_t sub_1920DF940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[7] = *v3;
  v6 = *(v5 + 80);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_192227CC0();
  v4[12] = sub_192227CB0();
  v8 = sub_192227C70();
  v4[13] = v8;
  v4[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1920DFA74, v8, v7);
}

uint64_t sub_1920DFA74()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview provider request being handled by StaticConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[8];

  TimelineProviderPreviewSource.unwrapContent<A>(for:)(v6, v5);
  v7 = v0[10];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = sub_192227CB0();
  v0[15] = v11;
  v12 = swift_task_alloc();
  v0[16] = v12;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v7;
  v12[5] = v9;
  v13 = swift_task_alloc();
  v0[17] = v13;
  v14 = type metadata accessor for WidgetViewCollection(0);
  *v13 = v0;
  v13[1] = sub_1920DFCCC;
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v11, v15, 0xD000000000000029, 0x8000000192249FF0, sub_1920E0404, v12, v14);
}

uint64_t sub_1920DFCCC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1920DFE2C, v3, v2);
}

uint64_t sub_1920DFE2C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[2];
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

double sub_1920DFEC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_1920DD294(a3, a4, a5, sub_1920E0410, v15);

  return result;
}

uint64_t sub_1920E0030(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  return sub_192227C90();
}

uint64_t sub_1920E0128(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_192141600(a1);
}

uint64_t sub_1920E01A0(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v8 = (*(v4 + 56) + **(v4 + 56));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1920A59A8;

  return v8(a1, v5, v4);
}

uint64_t sub_1920E0308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920B3B44;

  return sub_1920E01A0(a1);
}

uint64_t sub_1920E03A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1920E0410(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);

  return sub_1920E0030(a1);
}

uint64_t sub_1920E048C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[6];
  v5 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v16 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1920A59A8;

  return sub_1920DEA54(a1, v11, v12, v1 + v5, v16, v10, v1 + v9, v13);
}

uint64_t sub_1920E068C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v10 = *(v0 + v6);
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);
  v13 = *(v0 + v8);
  v14 = (v0 + ((*(v9 + 80) + v8 + 8) & ~*(v9 + 80)));

  return sub_1920DD7B8((v0 + v5), v10, v11, v12, v13, v14);
}

uint64_t sub_1920E07FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);

  v3 = v1[12];
  v4 = sub_192224EA0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1920E09DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v8 = v2[9];
  v9 = v2 + ((*(v4 + 80) + 80) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9);
}

void sub_1920E0A68()
{
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + v5);
  v11 = (v0 + ((*(v6 + 80) + v5 + 8) & ~*(v6 + 80)));

  sub_1920DC394((v0 + v2), v7, v8, v9, v10, v11);
}

uint64_t EnvironmentValues._localizations.getter()
{
  sub_192056FC0();
  sub_1922261E0();
  return v1;
}

uint64_t sub_1920E0BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1922289A0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1920E0C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v47 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v47 - v9;
  v11 = type metadata accessor for ControlTemplatePicker.Option(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v47 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (!v18 || a1 == a2)
  {
    return 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v52 = v11;
  v53 = (v5 + 48);
  v47 = (v5 + 32);
  v48 = (v5 + 8);
  v51 = *(v15 + 72);
  while (1)
  {
    sub_1920E1AEC(v20, v17);
    sub_1920E1AEC(v21, v13);
    v22 = v17[1];
    v23 = v13[1];
    if (v22)
    {
      if (!v23 || (*v17 != *v13 || v22 != v23) && (sub_1922289A0() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v23)
    {
      goto LABEL_41;
    }

    v24 = v11[5];
    v25 = *(v55 + 48);
    sub_1920E1BAC(v17 + v24, v10);
    sub_1920E1BAC(v13 + v24, &v10[v25]);
    v26 = *v53;
    if ((*v53)(v10, 1, v4) != 1)
    {
      break;
    }

    if (v26(&v10[v25], 1, v4) != 1)
    {
      goto LABEL_40;
    }

    sub_192033970(v10, &qword_1EADEF720, &unk_19222E2F0);
    v11 = v52;
LABEL_17:
    v34 = v11[6];
    if (*(v17 + v34 + 16))
    {
      if ((*(v13 + v34 + 16) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((*(v13 + v34 + 16) & 1) != 0 || (sub_192227290() & 1) == 0)
    {
      goto LABEL_41;
    }

    v35 = v11[7];
    v36 = (v17 + v35);
    v37 = *(v17 + v35 + 8);
    v38 = (v13 + v35);
    v39 = v38[1];
    if (v37)
    {
      if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1922289A0() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v39)
    {
      goto LABEL_41;
    }

    v40 = v11[8];
    v41 = (v17 + v40);
    v42 = *(v17 + v40 + 8);
    v43 = (v13 + v40);
    v44 = v43[1];
    v45 = v44 == 0;
    if (!v42)
    {
      goto LABEL_35;
    }

    if (!v44)
    {
      goto LABEL_41;
    }

    if (*v41 != *v43 || v42 != v44)
    {
      v45 = sub_1922289A0();
LABEL_35:
      sub_1920E1B50(v13);
      sub_1920E1B50(v17);
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_36;
    }

    sub_1920E1B50(v13);
    sub_1920E1B50(v17);
LABEL_36:
    v21 += v51;
    v20 += v51;
    result = 1;
    if (!--v18)
    {
      return result;
    }
  }

  sub_1920E1BAC(v10, v56);
  if (v26(&v10[v25], 1, v4) != 1)
  {
    v27 = *v47;
    v50 = v21;
    v28 = v20;
    v29 = v56;
    v30 = v54;
    v27(v54, &v10[v25], v4);
    sub_192046D84(&qword_1EADEF7E0, 255, MEMORY[0x1E697CB10], MEMORY[0x1E697CB20]);
    v49 = sub_192227910();
    v31 = *v48;
    v32 = v30;
    v33 = v29;
    v20 = v28;
    v21 = v50;
    (*v48)(v32, v4);
    v31(v33, v4);
    sub_192033970(v10, &qword_1EADEF720, &unk_19222E2F0);
    v11 = v52;
    if ((v49 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_17;
  }

  (*v48)(v56, v4);
LABEL_40:
  sub_192033970(v10, &qword_1EADEF7D8, qword_19222E730);
LABEL_41:
  sub_1920E1B50(v13);
  sub_1920E1B50(v17);
  return 0;
}