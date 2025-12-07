uint64_t sub_21BC6F938()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21BC6FA7C, v3, v2);
}

uint64_t sub_21BC6FA7C(uint64_t a1)
{
  v2 = v1[9];
  if (v2)
  {
    v3 = v1[10];
    sub_21BE2614C();
    v4 = v2;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v1[12] = v8;
      *v7 = 136315394;
      v9 = [v4 fullName];
      v40 = v3;
      if (v9 || (v9 = [v4 altDSID]) != 0)
      {
        v10 = v9;
        v11 = sub_21BE28A0C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = v1[18];
      v38 = v1[17];
      v39 = v1[19];
      v15 = sub_21BB3D81C(v11, v13, v1 + 12);

      *(v7 + 4) = v15;
      *(v7 + 12) = 2048;

      v3 = v40;
      *(v7 + 14) = v40;

      _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardFamilySettingsViewModel, has card access level %s: %lu ", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x21CF05C50](v8, -1, -1);
      MEMORY[0x21CF05C50](v7, -1, -1);

      (*(v14 + 8))(v39, v38);
    }

    else
    {
      v20 = v1[18];
      v7 = v1[19];
      v21 = v1[17];

      (*(v20 + 8))(v7, v21);
    }

    v22 = v1[29];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[11] = v22;
    v24 = sub_21BBB31A4(v4);
    v28 = *(v22 + 16);
    v29 = (v25 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v7) = v25;
      if (*(v1[29] + 24) < v31)
      {
        sub_21BC7DCF8(v31, isUniquelyReferenced_nonNull_native);
        v24 = sub_21BBB31A4(v4);
        if ((v7 & 1) != (v25 & 1))
        {
          sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);

          return sub_21BE299FC();
        }

LABEL_18:
        v32 = v1[11];
        if (v7)
        {
LABEL_19:
          *(v32[7] + 8 * v24) = v3;

          goto LABEL_25;
        }

LABEL_23:
        v32[(v24 >> 6) + 8] |= 1 << v24;
        *(v32[6] + 8 * v24) = v4;
        *(v32[7] + 8 * v24) = v3;
        v34 = v32[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          __break(1u);
          return MEMORY[0x2822002E8](v24, v25, v26, v27);
        }

        v32[2] = v35;
LABEL_25:
        v1[29] = v32;
        v36 = sub_21BE28D6C();
        v1[30] = v36;
        v37 = swift_task_alloc();
        v1[31] = v37;
        *v37 = v1;
        v37[1] = sub_21BC6F938;
        v27 = v1[22];
        v26 = MEMORY[0x277D85700];
        v24 = (v1 + 9);
        v25 = v36;

        return MEMORY[0x2822002E8](v24, v25, v26, v27);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }
    }

    v33 = v24;
    sub_21BC81BF8();
    v24 = v33;
    v32 = v1[11];
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v16 = v1[29];
  v17 = v1[13];
  (*(v1[23] + 8))(v1[24], v1[22]);

  *v17 = v16;

  v18 = v1[1];

  return v18();
}

uint64_t sub_21BC6FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_21BC6FEF4, 0, 0);
}

uint64_t sub_21BC6FEF4()
{
  *(v0 + 176) = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities;
  sub_21BE28D7C();
  *(v0 + 184) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC6FF94, v2, v1);
}

uint64_t sub_21BC6FF94()
{
  v1 = v0[22];
  v2 = v0[20];

  v0[24] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_21BC70008, 0, 0);
}

uint64_t sub_21BC70008()
{
  v1 = [*(v0 + 168) altDSID];
  if (v1)
  {
    v2 = v1;
    sub_21BE28A0C();
  }

  v3 = *(v0 + 192);
  v4 = sub_21BE289CC();
  *(v0 + 200) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_21BC70184;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C68, &qword_21BE39668);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BE17340;
  *(v0 + 104) = &block_descriptor_103;
  *(v0 + 112) = v5;
  [v3 appleCardAccessLevelForAltDSID:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC70184()
{

  return MEMORY[0x2822009F8](sub_21BC70264, 0, 0);
}

uint64_t sub_21BC70264()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  *v2 = v1;
  v2[1] = v3;
  v6 = *(v0 + 8);
  v4 = v1;

  return v6();
}

id AppleCardFamilySettingsViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21BC70378@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppleCardFamilySettingsViewModel(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

void sub_21BC703B8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_21BC70438(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

void sub_21BC704B8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BC70538(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

void sub_21BC705B0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BC70630(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BC706A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t *sub_21BC70798(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21BC70A58(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_21BC70C2C(v8, v4, v2);
  result = MEMORY[0x21CF05C50](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_21BC708F8(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21BC70B40(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_21BC70CA4(v8, v4, v2);
  result = MEMORY[0x21CF05C50](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_21BC70A58(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + v11) & 1) == 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_21BDFD378(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_21BDFD378(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21BC70B40(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_21BDFD378(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_21BDFD378(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21BC70C2C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21BC70A58(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_21BC70CA4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21BC70B40(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21BC70D1C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_21BC70E10;

  return v5(v2 + 16);
}

uint64_t sub_21BC70E10()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_21BC70F44(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_21BC71038;

  return v5(v2 + 16);
}

uint64_t sub_21BC71038()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  v2[1] = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s14FamilyCircleUI0A25MemberWithSharedAppleCardV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  v13 = a2[4];
  v14 = a1[4];
  v9 = *(a2 + 40);
  sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
  if ((sub_21BE2940C() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    if (v2 == v6 && v3 == v7)
    {
      if (v4 != v8)
      {
        return 0;
      }

LABEL_12:
      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == v13)
        {
          v12 = v9;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          return 0;
        }
      }

      return 1;
    }

    v11 = sub_21BE2995C();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }

LABEL_11:
    if ((v4 ^ v8))
    {
      return result;
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t type metadata accessor for AppleCardFamilySettingsViewModel(uint64_t a1)
{
  result = qword_27CDB8210;
  if (!qword_27CDB8210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BC712EC()
{
  result = qword_27CDB81B8;
  if (!qword_27CDB81B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyMemberWithSharedAppleCard, &type metadata for FamilyMemberWithSharedAppleCard, v0, v1);
    atomic_store(result, &qword_27CDB81B8);
  }

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

uint64_t sub_21BC71354(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21BC7139C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21BC71400(uint64_t a1)
{
  sub_21BC46D8C(319, &qword_280BD6A70, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_21BC46D8C(319, &qword_27CDB7C58, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21BC7156C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21BC7156C(uint64_t a1)
{
  if (!qword_27CDB8220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8228, &qword_21BE3B0E0);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB8220);
    }
  }
}

uint64_t sub_21BC715D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6C578(a1, a2, v7, v6);
}

uint64_t sub_21BC71684(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6F3A4(a1, a2, v7, v6);
}

uint64_t sub_21BC71738(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC6D468(a1, a2, v6, v7, v8);
}

uint64_t sub_21BC717FC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6E450(a1, a2, v7, v6);
}

unint64_t sub_21BC718B8()
{
  result = qword_280BD8840;
  if (!qword_280BD8840)
  {
    v3 = type metadata accessor for AppleCardFamilyCache();
    result = swift_getWitnessTable(protocol conformance descriptor for SimpleFamilyServerCache, v3, v0, v1);
    atomic_store(result, &qword_280BD8840);
  }

  return result;
}

uint64_t sub_21BC71910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC6EF88(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC719D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC70D1C(a1, v4);
}

uint64_t sub_21BC71A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC6DCD0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21BC71B50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BB42FF0(a1, v4);
}

uint64_t sub_21BC71C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6FED0(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC71CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC70F44(a1, v4);
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BC71DC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6D0D4(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC71E88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BC6A3B0();
}

uint64_t sub_21BC71F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21BC59D94(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21BC59D94((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21BB414D0(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21BC72058()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

FamilyCircleUI::FANetworkMonitorStatus_optional __swiftcall FANetworkMonitorStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FANetworkMonitorStatus.rawValue.getter()
{
  v1 = 0x656E6E6F63736964;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657463656E6E6F63;
  }
}

uint64_t sub_21BC72190(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656E6E6F63736964;
  v4 = 0xEC00000064657463;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657463656E6E6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x656E6E6F63736964;
  v8 = 0xEC00000064657463;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657463656E6E6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BC722A4()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC72354(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC723F0(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BC724A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEC00000064657463;
  v5 = 0x656E6E6F63736964;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657463656E6E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static FamilyNetworkMonitor.shared.getter()
{
  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }
}

uint64_t FamilyNetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor__connected;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor));
  return v0;
}

uint64_t FamilyNetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor__connected;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor));

  return swift_deallocClassInstance();
}

unint64_t sub_21BC726A8()
{
  result = qword_27CDB8270;
  if (!qword_27CDB8270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FANetworkMonitorStatus, &type metadata for FANetworkMonitorStatus, v0, v1);
    atomic_store(result, &qword_27CDB8270);
  }

  return result;
}

uint64_t sub_21BC726FC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BC72808(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_21BC72850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC728C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21BE32770;
  v1 = sub_21BE2916C();
  v2 = 1;
  if (v1)
  {
    v2 = 2;
  }

  v3 = MEMORY[0x277D83C10];
  *(v0 + 56) = MEMORY[0x277D83B88];
  *(v0 + 64) = v3;
  *(v0 + 32) = v2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();

  v6 = [v5 bundleForClass_];
  sub_21BE2599C();

  v7 = sub_21BE289DC();

  return v7;
}

uint64_t sub_21BC72A28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v6;
  if (!v6)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v2 = [v1 me];

  if (v2)
  {
    v3 = [*v0 dsid];
    if (v3 && (v3, (sub_21BE291FC() & 1) != 0))
    {
      v4 = [v2 isOrganizer];

      if (v4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_21BC72B3C@<X0>(ValueMetadata *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83B0, qword_21BE3B8F0);
  MEMORY[0x28223BE20](v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = v29;
  if (!v29)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v8 = sub_21BE290FC();

  if ((v8 & 1) == 0)
  {
    if ([(ValueMetadata *)a1 isMe])
    {
      v9 = type metadata accessor for FamilyMemberViewModel();
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v10 + 24) = xmmword_21BE358A0;
      *(v10 + 40) = 0;
      v32 = v9;
      v33 = &off_282D96DE8;
      v29 = v10;
      v11 = qword_27CDB4F88;
      v12 = a1;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for FAFamilyImageLoader(0);
      v14 = sub_21BC75D1C();
      v15 = sub_21BC75D70();
      sub_21BE27EEC();
      sub_21BC75DC8(&v29);
      v29 = &type metadata for FamilyMemberCell;
      v30 = v13;
      v31 = v14;
      v32 = v15;
      swift_getOpaqueTypeConformance2();
    }

    else
    {
      v16 = [(ValueMetadata *)a1 contact];
      if (v16)
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        v17 = v29;
        if (!v29)
        {
          v17 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
        }

        v36[0] = 0;
        sub_21BE283EC();
        v18 = v29;
        v19 = v30;
        v29 = a1;
        v30 = v17;
        LOBYTE(v31) = v18;
        v32 = v19;
        sub_21BC75CC8();
        v20 = a1;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        v21 = v29;
        if (!v29)
        {
          v21 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
        }

        v37 = *(v3 + 144);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
        sub_21BE2841C();
        v22 = v29;
        v23 = v30;
        v24 = v31;
        v36[0] = 0;
        sub_21BE283EC();
        v25 = v29;
        v26 = v30;
        v29 = a1;
        v30 = v21;
        v31 = v22;
        v32 = v23;
        LOBYTE(v33) = v24;
        v34 = v25;
        v35 = v26;
        sub_21BC75C74();
        v27 = a1;
      }
    }
  }

  result = sub_21BE2852C();
  *a2 = result;
  return result;
}

uint64_t sub_21BC72F44(uint64_t a1, void *a2)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_21BE2599C();
  v7 = v6;

  v25 = *(a1 + 104);
  v24 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v22 = *(&v36 + 1);
  v23 = v36;
  v21 = v37;
  v8 = *a1;
  sub_21BC75988(a1, &v36);
  v9 = swift_allocObject();
  sub_21BC759C0(&v36, v9 + 16);
  v20 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  sub_21BE283EC();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21BC75A00;
  *(v11 + 24) = v10;
  v13 = *(a1 + 128);
  LOBYTE(v36) = *(a1 + 120);
  v12 = v36;
  *(&v36 + 1) = v13;
  sub_21BE283FC();
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v25;
  LOBYTE(v36) = v12;
  *(&v36 + 1) = v13;
  sub_21BE283FC();
  v16 = 0.8;
  if (!v25)
  {
    v16 = 1.0;
  }

  *&v27 = v23;
  *(&v27 + 1) = v22;
  LOBYTE(v28) = v21;
  *(&v28 + 1) = sub_21BC73368;
  *&v29 = 0;
  *(&v29 + 1) = sub_21BC75A08;
  *&v30 = v11;
  *(&v30 + 1) = sub_21BC759F8;
  *&v31 = v9;
  *(&v31 + 1) = v20;
  LOBYTE(v32) = v25;
  *(&v32 + 1) = v24;
  LOBYTE(v33) = v25;
  *(&v33 + 1) = v24;
  *&v34 = KeyPath;
  *(&v34 + 1) = sub_21BC0AE98;
  *&v35 = v15;
  *(&v35 + 1) = v16;
  LOBYTE(v36) = v25;
  *(&v36 + 1) = v24;
  sub_21BE283FC();
  sub_21BC75988(a1, &v36);
  v17 = swift_allocObject();
  sub_21BC759C0(&v36, v17 + 16);
  *(v17 + 168) = a2;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8348, &qword_21BE3B838);
  sub_21BC75790();
  sub_21BE281BC();

  v42 = v33;
  v43 = v34;
  v44 = v35;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v36 = v27;
  v37 = v28;
  return sub_21BB3A4CC(&v36, &qword_27CDB8348, &qword_21BE3B838);
}

uint64_t sub_21BC73374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v66 = a2;
  v69 = a4;
  v5 = sub_21BE2825C();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v68 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = v59 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v9 = swift_allocObject();
  v60 = xmmword_21BE32770;
  *(v9 + 16) = xmmword_21BE32770;
  v10 = *a3;
  v11 = [*a3 shortName];
  if (v11 || (v11 = [v10 firstName]) != 0)
  {
    v12 = v11;
    v13 = sub_21BE28A0C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v17 = sub_21BBBEFE8();
  *(v9 + 64) = v17;
  *(v9 + 32) = v13;
  *(v9 + 40) = v15;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();

  v20 = [v19 bundleForClass_];
  sub_21BE2599C();

  v21 = sub_21BE289DC();
  v23 = v22;

  v70 = v21;
  v71 = v23;
  sub_21BB41FA4();
  v24 = sub_21BE27DBC();
  v63 = v25;
  v64 = v24;
  v61 = v26;
  v62 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v60;
  v29 = [v10 shortName];
  if (v29 || (v29 = [v10 firstName]) != 0)
  {
    v30 = v29;
    v31 = sub_21BE28A0C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  *(v28 + 56) = v16;
  *(v28 + 64) = v17;
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;

  v34 = [v19 bundleForClass_];
  sub_21BE2599C();

  v35 = sub_21BE289DC();
  v37 = v36;

  v70 = v35;
  v71 = v37;
  v38 = sub_21BE27DBC();
  v59[3] = v39;
  *&v60 = v38;
  v59[1] = v40 & 1;
  v59[2] = v41;
  v42 = [v19 bundleForClass_];
  v43 = sub_21BE2599C();
  v45 = v44;

  v70 = v43;
  v71 = v45;
  v46 = sub_21BE27DBC();
  v48 = v47;
  LOBYTE(v45) = v49;
  sub_21BE2823C();
  sub_21BBC7C7C(v46, v48, v45 & 1);

  v50 = [v19 bundleForClass_];
  v51 = sub_21BE2599C();
  v53 = v52;

  v70 = v51;
  v71 = v53;
  v54 = sub_21BE27DBC();
  v56 = v55;
  LOBYTE(v53) = v57;
  sub_21BE2824C();
  sub_21BBC7C7C(v54, v56, v53 & 1);

  return sub_21BE2822C();
}

double sub_21BC738E0(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - v8 + 80;
  v10 = *a2;
  v11 = *(a3 + 128);
  v24[0] = *(a3 + 120);
  v25 = v11;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_21BC75988(a3, v24);
  sub_21BE28D7C();
  v13 = a4;
  v14 = sub_21BE28D6C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = v10;
  sub_21BC759C0(v24, v15 + 48);
  sub_21BBA932C(0, 0, v9, &unk_21BE3B8A0, v15);

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v17 = *(a3 + 112);
  v24[0] = *(a3 + 104);
  v25 = v17;
  sub_21BE283FC();
  v18 = v26;
  v24[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6E61696472617567;
  v20 = MEMORY[0x277D839B0];
  *(inited + 40) = 0xEF64656C67676F54;
  *(inited + 72) = v20;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v18;

  v21 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(v24, v21);

  return result;
}

uint64_t sub_21BC73BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6[6] = a6;
  v9 = sub_21BE26A4C();
  v6[7] = v9;
  v6[8] = *(v9 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = sub_21BE28D7C();
  v6[11] = sub_21BE28D6C();
  v10 = swift_task_alloc();
  v6[12] = v10;
  *v10 = v6;
  v10[1] = sub_21BC73CD8;

  return sub_21BC5408C(a4, a5);
}

uint64_t sub_21BC73CD8(char a1)
{
  v2 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 32) = v1;

  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC73E1C, v4, v3);
}

uint64_t sub_21BC73E1C()
{

  sub_21BE2614C();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 40);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_21BB35000, v1, v2, "Guardian toggle xpc call %{BOOL}d", v4, 8u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 128);
  *(v0 + 16) = *(v8 + 120);
  *(v0 + 24) = v9;
  *(v0 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21BC73F78@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8388, &unk_21BE3B8A8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v9 = v21[0];
  if (!v21[0])
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v10 = sub_21BE2910C();

  v23[0] = v10;
  swift_getKeyPath();
  sub_21BC75988(v2, v21);
  v11 = swift_allocObject();
  sub_21BC759C0(v21, v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8390, &qword_21BE3B8D8);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190, MEMORY[0x277D83980]);
  sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268, MEMORY[0x277D85378]);
  sub_21BC75BE8();
  sub_21BE285BC();
  v12 = *(v4 + 16);
  v13 = v20;
  v12(v20, v8, v3);
  v14 = v19;
  v12(v19, v13, v3);
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83A0, &qword_21BE3B8E0) + 48)];
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  v25 = 0u;
  memset(v26, 0, 24);
  WORD4(v26[1]) = -256;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = v25;
  *(v15 + 2) = v24;
  *(v15 + 3) = v16;
  *(v15 + 4) = v26[0];
  *(v15 + 74) = *(v26 + 10);
  sub_21BBA3854(v23, v21, &qword_27CDB83A8, &qword_21BE3B8E8);
  v17 = *(v4 + 8);
  v17(v8, v3);
  memset(v21, 0, sizeof(v21));
  v22 = -256;
  sub_21BB3A4CC(v21, &qword_27CDB83A8, &qword_21BE3B8E8);
  return (v17)(v13, v3);
}

id sub_21BC74318@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8280, &qword_21BE3B748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8288, &qword_21BE3B750);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8290, &qword_21BE3B758);
  sub_21BB3B038(&qword_27CDB8298, &qword_27CDB8290, &qword_21BE3B758, MEMORY[0x277CE14C0]);
  sub_21BE27D0C();
  v10 = sub_21BB3B038(&qword_27CDB82A0, &qword_27CDB8280, &qword_21BE3B748, MEMORY[0x277CDE580]);
  sub_21BE27E3C();
  (*(v3 + 8))(v5, v2);
  v11 = v19;
  v24 = sub_21BC728C4();
  v25 = v12;
  v22 = v2;
  v23 = v10;
  swift_getOpaqueTypeConformance2();
  sub_21BB41FA4();
  v13 = v20;
  sub_21BE27F9C();

  (*(v7 + 8))(v9, v6);
  v14 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82A8, &qword_21BE3B760) + 36));
  *v14 = sub_21BC753E0;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  v19 = v11[2];
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v15 = sub_21BE26BFC();
  v16 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82B0, &unk_21BE3B768) + 36));
  v17 = v19;
  *v16 = v15;
  v16[1] = v17;

  return v17;
}

uint64_t sub_21BC74690@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82B8, &qword_21BE3B778);
  v7 = *(v26 - 8);
  v8 = MEMORY[0x28223BE20](v26);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v30 = a1;
  sub_21BC751FC(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82C0, &qword_21BE3B780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82C8, &qword_21BE3B788);
  sub_21BB3B038(&qword_27CDB82D0, &qword_27CDB82C0, &qword_21BE3B780, MEMORY[0x277CE14C0]);
  sub_21BC755E4();
  v27 = v11;
  sub_21BE2861C();
  (*(v4 + 104))(v6, *MEMORY[0x277D07F10], v3);
  v12 = MEMORY[0x21CF01150](v6);
  (*(v4 + 8))(v6, v3);
  if (v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v13 = v32[0];
    if (!v32[0])
    {
      v13 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v14 = [v13 me];

    if (v14 && (v15 = [v14 isOrganizer], v14, v15) && (v16 = *a1, (sub_21BE2916C() & 1) != 0))
    {
      swift_unknownObjectWeakLoadStrong();
      v32[0] = v16;
      swift_unknownObjectWeakInit();
      v17 = v16;
      swift_unknownObjectRelease();
      sub_21BC75660(v32, v31);
    }

    else
    {
      v31[0] = 0;
      v31[1] = 0;
    }

    sub_21BBB7D84(v31, v32, &qword_27CDB82F0, &qword_21BE3B7E8);
  }

  else
  {
    *v32 = xmmword_21BE3B610;
  }

  v18 = *(v7 + 16);
  v19 = v27;
  v20 = v28;
  v21 = v26;
  v18(v28, v27, v26);
  sub_21BBA3854(v32, v31, &qword_27CDB82E0, &qword_21BE3B790);
  v22 = v29;
  v18(v29, v20, v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82E8, &qword_21BE3B798);
  sub_21BBA3854(v31, &v22[*(v23 + 48)], &qword_27CDB82E0, &qword_21BE3B790);
  sub_21BB3A4CC(v32, &qword_27CDB82E0, &qword_21BE3B790);
  v24 = *(v7 + 8);
  v24(v19, v21);
  sub_21BB3A4CC(v31, &qword_27CDB82E0, &qword_21BE3B790);
  return (v24)(v20, v21);
}

uint64_t sub_21BC74B00@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82F8, &qword_21BE3B7F0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8300, &qword_21BE3B7F8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v41 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8308, &qword_21BE3B800);
  MEMORY[0x28223BE20](v43);
  v10 = &v41 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8310, &qword_21BE3B808);
  MEMORY[0x28223BE20](v42);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8318, &qword_21BE3B810);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8320, &qword_21BE3B818);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8328, &qword_21BE3B820);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v41 - v26;
  v46 = *a1;
  v28 = [v46 dsid];
  v45 = a1;
  if (v28)
  {
    v29 = v28;
    if (sub_21BC72A28())
    {
      sub_21BC72F44(a1, v29);
      sub_21BC756BC();
      sub_21BE2809C();
      sub_21BB3A4CC(v15, &qword_27CDB8318, &qword_21BE3B810);
      sub_21BBA3854(v21, v19, &qword_27CDB8320, &qword_21BE3B818);
      sub_21BBA3854(v19, v12, &qword_27CDB8320, &qword_21BE3B818);
      v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8378, &qword_21BE3B858) + 48)];
      *v30 = 0u;
      *(v30 + 1) = 0u;
      sub_21BC75900(0, 0, 0, 0);
      sub_21BC75944(0, 0, 0, 0);
      sub_21BB3A4CC(v19, &qword_27CDB8320, &qword_21BE3B818);
      sub_21BBA3854(v12, v10, &qword_27CDB8310, &qword_21BE3B808);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDB8380, &qword_27CDB8310, &qword_21BE3B808, MEMORY[0x277CE14C0]);
      sub_21BE2784C();

      sub_21BB3A4CC(v12, &qword_27CDB8310, &qword_21BE3B808);
      sub_21BB3A4CC(v21, &qword_27CDB8320, &qword_21BE3B818);
      v31 = 0;
      v32 = v49;
      goto LABEL_8;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v33 = v52;
  if (!v52)
  {
    v33 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v32 = v49;

  v31 = 1;
LABEL_8:
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8330, &qword_21BE3B828);
  v35 = 1;
  (*(*(v34 - 8) + 56))(v27, v31, 1, v34);
  if (sub_21BE2916C())
  {
    v36 = v44;
    sub_21BC73F78(v44);
    sub_21BBB7D84(v36, v32, &qword_27CDB82F8, &qword_21BE3B7F0);
    v35 = 0;
  }

  (*(v47 + 56))(v32, v35, 1, v48);
  sub_21BBA3854(v27, v25, &qword_27CDB8328, &qword_21BE3B820);
  v37 = v50;
  sub_21BBA3854(v32, v50, &qword_27CDB8300, &qword_21BE3B7F8);
  v38 = v51;
  sub_21BBA3854(v25, v51, &qword_27CDB8328, &qword_21BE3B820);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8338, &qword_21BE3B830);
  sub_21BBA3854(v37, v38 + *(v39 + 48), &qword_27CDB8300, &qword_21BE3B7F8);
  sub_21BB3A4CC(v32, &qword_27CDB8300, &qword_21BE3B7F8);
  sub_21BB3A4CC(v27, &qword_27CDB8328, &qword_21BE3B820);
  sub_21BB3A4CC(v37, &qword_27CDB8300, &qword_21BE3B7F8);
  return sub_21BB3A4CC(v25, &qword_27CDB8328, &qword_21BE3B820);
}

uint64_t sub_21BC751FC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 isMe])
  {
    [v3 isOrganizer];
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  LOBYTE(v5) = v9;
  sub_21BE27CCC();
  v10 = sub_21BE27D9C();
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v6, v8, v5 & 1);

  sub_21BE2833C();
  v15 = sub_21BE27D4C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_21BBC7C7C(v10, v12, v14 & 1);

  *a2 = v15;
  a2[1] = v17;
  a2[2] = v19 & 1;
  a2[3] = v21;
  return result;
}

double sub_21BC753E0()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000021BE3B6A0;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v3, v1);

  return result;
}

id sub_21BC75524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v1;
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

unint64_t sub_21BC755E4()
{
  result = qword_27CDB82D8;
  if (!qword_27CDB82D8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB82C8, &qword_21BE3B788);
    v4[0] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB82D8);
  }

  return result;
}

unint64_t sub_21BC756BC()
{
  result = qword_27CDB8340;
  if (!qword_27CDB8340)
  {
    v6[7] = v0;
    v6[8] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8318, &qword_21BE3B810);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8348, &qword_21BE3B838);
    v5 = sub_21BC75790();
    v6[1] = v4;
    v6[2] = MEMORY[0x277D839B0];
    v6[3] = v5;
    v6[4] = MEMORY[0x277D839C8];
    v6[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v6);
    atomic_store(result, &qword_27CDB8340);
  }

  return result;
}

unint64_t sub_21BC75790()
{
  result = qword_27CDB8350;
  if (!qword_27CDB8350)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8348, &qword_21BE3B838);
    v4[0] = sub_21BC7581C();
    v4[1] = MEMORY[0x277CDF900];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8350);
  }

  return result;
}

unint64_t sub_21BC7581C()
{
  result = qword_27CDB8358;
  if (!qword_27CDB8358)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8360, &qword_21BE3B840);
    v4[0] = sub_21BB3B038(&qword_27CDB8368, &qword_27CDB8370, &qword_21BE3B848, aImFxk);
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8358);
  }

  return result;
}

uint64_t sub_21BC75900(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21BBA4A38(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BC75944(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21BBC7C7C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BC75A08@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21BC75A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC73BA8(a1, v4, v5, v6, v7, v1 + 48);
}

uint64_t objectdestroyTm_7()
{
  MEMORY[0x21CF05D90](v0 + 7);

  return swift_deallocObject();
}

uint64_t sub_21BC75BA8@<X0>(ValueMetadata **a1@<X0>, void *a2@<X8>)
{
  result = sub_21BC72B3C(*a1, &v4);
  *a2 = v4;
  return result;
}

unint64_t sub_21BC75BE8()
{
  result = qword_27CDB8398;
  if (!qword_27CDB8398)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8390, &qword_21BE3B8D8);
    v4 = sub_21BBDD54C();
    v5[0] = MEMORY[0x277CE11C0];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDB8398);
  }

  return result;
}

unint64_t sub_21BC75C74()
{
  result = qword_27CDB83B8;
  if (!qword_27CDB83B8)
  {
    result = swift_getWitnessTable(byte_21BE4CFE8, &type metadata for FamilyMemberCellWithCreate, v0, v1);
    atomic_store(result, &qword_27CDB83B8);
  }

  return result;
}

unint64_t sub_21BC75CC8()
{
  result = qword_27CDB83C0;
  if (!qword_27CDB83C0)
  {
    result = swift_getWitnessTable(aEFt, &type metadata for FamilyMemberCellWithSpotlight, v0, v1);
    atomic_store(result, &qword_27CDB83C0);
  }

  return result;
}

unint64_t sub_21BC75D1C()
{
  result = qword_27CDB83C8;
  if (!qword_27CDB83C8)
  {
    result = swift_getWitnessTable(byte_21BE4CE08, &type metadata for FamilyMemberCell, v0, v1);
    atomic_store(result, &qword_27CDB83C8);
  }

  return result;
}

unint64_t sub_21BC75D70()
{
  result = qword_27CDB69A8;
  if (!qword_27CDB69A8)
  {
    v3 = type metadata accessor for FAFamilyImageLoader(255);
    result = swift_getWitnessTable(protocol conformance descriptor for FAFamilyImageLoader, v3, v0, v1);
    atomic_store(result, &qword_27CDB69A8);
  }

  return result;
}

unint64_t sub_21BC75E1C()
{
  result = qword_27CDB83D0;
  if (!qword_27CDB83D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB82B0, &unk_21BE3B768);
    v4[0] = sub_21BC75ED4();
    v4[1] = sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB83D0);
  }

  return result;
}

unint64_t sub_21BC75ED4()
{
  result = qword_27CDB83D8;
  if (!qword_27CDB83D8)
  {
    v7[12] = v0;
    v7[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB82A8, &qword_21BE3B760);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8288, &qword_21BE3B750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8280, &qword_21BE3B748);
    sub_21BB3B038(&qword_27CDB82A0, &qword_27CDB8280, &qword_21BE3B748, MEMORY[0x277CDE580]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v6 = sub_21BB41FA4();
    v7[2] = v4;
    v7[3] = MEMORY[0x277D837D0];
    v7[4] = OpaqueTypeConformance2;
    v7[5] = v6;
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v7);
    atomic_store(result, &qword_27CDB83D8);
  }

  return result;
}

uint64_t type metadata accessor for AskToBuyMemberView(uint64_t a1)
{
  result = qword_27CDB83E0;
  if (!qword_27CDB83E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC7609C(uint64_t a1)
{
  sub_21BC08FA8(319);
  if (v1 <= 0x3F)
  {
    sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
    if (v2 <= 0x3F)
    {
      sub_21BBF088C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BC76164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v76 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8408, &unk_21BE3B9A8);
  MEMORY[0x28223BE20](v75);
  v70 = &v62 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v68 = *(v69 - 8);
  v4 = MEMORY[0x28223BE20](v69);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v62 - v6;
  v71 = type metadata accessor for CircleStateControllerHostView(0);
  v7 = MEMORY[0x28223BE20](v71);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v62 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8410, &qword_21BE3B9B8);
  MEMORY[0x28223BE20](v74);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_21BE25B9C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8418, &qword_21BE3B9C0);
  v19 = *(v18 - 8);
  result = MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  if (*(*(a1 + 8) + 40))
  {

    sub_21BE262BC();

    v23 = (*(v19 + 88))(v22, v18);
    v24 = *MEMORY[0x277D07FD8];
    (*(v19 + 8))(v22, v18);
    if (v23 == v24)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      v27 = sub_21BE2599C();
      v29 = v28;

      v77 = v27;
      v78 = v29;
      sub_21BB41FA4();
      *v11 = sub_21BE27DBC();
      *(v11 + 1) = v30;
      v11[16] = v31 & 1;
      *(v11 + 3) = v32;
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDB8440, &qword_27CDB8408, &unk_21BE3B9A8, MEMORY[0x277CE14C0]);
      v33 = v76;
      sub_21BE2784C();
      v34 = 0;
LABEL_10:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8420, &qword_21BE3B9C8);
      return (*(*(v61 - 8) + 56))(v33, v34, 1, v61);
    }

    v35 = type metadata accessor for AskToBuyMemberView(0);
    sub_21BBA3854(a1 + *(v35 + 24), v14, &unk_27CDB57F0, &qword_21BE328A0);
    v36 = v16;
    v37 = *(v16 + 48);
    v38 = v15;
    if (v37(v14, 1, v15) == 1)
    {
      sub_21BB3A4CC(v14, &unk_27CDB57F0, &qword_21BE328A0);
    }

    else
    {
      v39 = v73;
      (*(v36 + 32))(v73, v14, v15);
      v40 = [*(a1 + 16) dsid];
      if (v40)
      {
        v41 = v40;
        v63 = @"FACircleEventTypeSharedService";
        v42 = *(v71 + 20);
        v43 = v72;
        (*(v36 + 16))(&v72[v42], v39, v38);
        (*(v36 + 56))(&v43[v42], 0, 1, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8428, &qword_21BE3B9D0);
        inited = swift_initStackObject();
        v62 = xmmword_21BE32770;
        *(inited + 16) = xmmword_21BE32770;
        v64 = v36;
        *(inited + 32) = 0xD000000000000011;
        *(inited + 40) = 0x800000021BE55FB0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
        v45 = swift_initStackObject();
        *(v45 + 16) = v62;
        *(v45 + 32) = 0xD000000000000012;
        *(v45 + 40) = 0x800000021BE55FD0;
        *(v45 + 72) = sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
        *(v45 + 48) = v41;
        v46 = v63;
        v63 = v41;
        v47 = sub_21BBB52D8(v45);
        swift_setDeallocating();
        sub_21BB3A4CC(v45 + 32, &qword_27CDB57D8, &qword_21BE32860);
        *(inited + 48) = v47;
        v48 = sub_21BBB6A70(inited);
        swift_setDeallocating();
        sub_21BB3A4CC(inited + 32, &qword_27CDB8430, &qword_21BE3B9D8);
        v49 = v43;
        *v43 = v46;
        v50 = v71;
        *&v43[*(v71 + 24)] = v48;
        v51 = &v43[*(v50 + 28)];
        *v51 = &unk_21BE39410;
        *(v51 + 1) = 0;
        v52 = v67;
        sub_21BE26EEC();
        v71 = v38;
        v53 = v65;
        sub_21BC77310(v49, v65, type metadata accessor for CircleStateControllerHostView);
        v54 = v68;
        v55 = *(v68 + 16);
        v56 = v66;
        v57 = v69;
        v55(v66, v52, v69);
        v58 = v70;
        sub_21BC77310(v53, v70, type metadata accessor for CircleStateControllerHostView);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8438, &qword_21BE3B9E0);
        v55((v58 + *(v59 + 48)), v56, v57);
        v60 = *(v54 + 8);
        v60(v56, v57);
        sub_21BC77378(v53);
        sub_21BBA3854(v58, v11, &qword_27CDB8408, &unk_21BE3B9A8);
        swift_storeEnumTagMultiPayload();
        sub_21BB3B038(&qword_27CDB8440, &qword_27CDB8408, &unk_21BE3B9A8, MEMORY[0x277CE14C0]);
        v33 = v76;
        sub_21BE2784C();

        sub_21BB3A4CC(v58, &qword_27CDB8408, &unk_21BE3B9A8);
        v60(v52, v57);
        sub_21BC77378(v72);
        (*(v64 + 8))(v73, v71);
        v34 = 0;
        goto LABEL_10;
      }

      (*(v36 + 8))(v39, v15);
    }

    v34 = 1;
    v33 = v76;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC76B68(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[4] = swift_task_alloc();
  v1[5] = sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_21BC76C3C, v3, v2);
}

uint64_t sub_21BC76C3C(uint64_t a1)
{
  v1[9] = *(v1[3] + 8);
  v1[10] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_21BC76CD4, v3, v2);
}

void sub_21BC76CD4()
{
  v1 = *(v0[9] + 40);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_21BC76DE8;
    v5 = v0[4];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC76DE8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 32);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_21BC76FE4;
  }

  else
  {
    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_21BC76F78;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC76F78()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21BC053D4, v1, v2);
}

uint64_t sub_21BC76FE4()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21BC77590, v1, v2);
}

uint64_t sub_21BC77048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_21BE2770C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83F0, &qword_21BE3B978);
  sub_21BC76164(v2, (a2 + *(v6 + 44)));
  sub_21BC77310(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AskToBuyMemberView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21BC771E0(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83F8, &qword_21BE3B990) + 36));
  sub_21BE2701C();
  sub_21BE28D8C();
  *v9 = &unk_21BE3B988;
  v9[1] = v8;
  v10 = sub_21BE271CC();
  LOBYTE(v9) = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8400, &unk_21BE3B998);
  v12 = a2 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = v9;
  return result;
}

uint64_t sub_21BC771E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AskToBuyMemberView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC77244()
{
  v2 = *(type metadata accessor for AskToBuyMemberView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BC76B68(v0 + v3);
}

uint64_t sub_21BC77310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC77378(uint64_t a1)
{
  v2 = type metadata accessor for CircleStateControllerHostView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC773D4()
{
  result = qword_27CDB8448;
  if (!qword_27CDB8448)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8400, &unk_21BE3B998);
    v4[0] = sub_21BC77460();
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8448);
  }

  return result;
}

unint64_t sub_21BC77460()
{
  result = qword_27CDB8450;
  if (!qword_27CDB8450)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB83F8, &qword_21BE3B990);
    v4[0] = sub_21BB3B038(&qword_27CDB8458, &qword_27CDB8460, &qword_21BE3B9E8, MEMORY[0x277CE1198]);
    v4[1] = sub_21BC77548(&qword_27CDB5058, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8450);
  }

  return result;
}

uint64_t sub_21BC77548(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

FamilyCircleUI::FARUIPersonPickerClientInfoKeys_optional __swiftcall FARUIPersonPickerClientInfoKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

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

uint64_t FARUIPersonPickerClientInfoKeys.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

void *sub_21BC7763C()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  v5 = *(v0 + 16);
  v10 = v5;
  if (v11 == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v10, &qword_27CDB8508, &unk_21BE3BE40);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21BC777A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x64657463656C6573;
  }

  if (v2)
  {
    v4 = 0xEA00000000006449;
  }

  else
  {
    v4 = 0x800000021BE546F0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v6 = 0x800000021BE546F0;
  }

  else
  {
    v6 = 0xEA00000000006449;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

unint64_t sub_21BC77858()
{
  result = qword_27CDB8468;
  if (!qword_27CDB8468)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FARUIPersonPickerClientInfoKeys, &type metadata for FARUIPersonPickerClientInfoKeys, v0, v1);
    atomic_store(result, &qword_27CDB8468);
  }

  return result;
}

uint64_t sub_21BC778AC()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC77938(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC779B0(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC77A38@<X0>(char *a2@<X8>)
{
  v3 = sub_21BE2980C();

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

void sub_21BC77A98(unint64_t *a1@<X8>)
{
  v2 = 0x800000021BE546F0;
  v3 = 0x64657463656C6573;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEA00000000006449;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21BC77AF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84D8, &qword_21BE3BE10);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = *(v1 + 32);
  v29 = *(v1 + 40);
  v30 = *(v1 + 56);
  v27 = *(v1 + 40);
  v28 = *(v1 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84E0, &qword_21BE3BE18);
  sub_21BE2841C();
  v7 = v24;
  v8 = v26;
  v20 = v25;
  v21 = *(&v24 + 1);
  type metadata accessor for CGSize(0);
  v27 = 0uLL;
  sub_21BE283EC();
  v9 = v24;
  v10 = v25;
  v11 = swift_allocObject();
  v12 = v2[1];
  v11[1] = *v2;
  v11[2] = v12;
  v13 = v2[3];
  v11[3] = v2[2];
  v11[4] = v13;
  v14 = &v5[*(v3 + 36)];
  sub_21BE2701C();
  sub_21BC7B244(v2, &v24);
  sub_21BE28D8C();
  *v14 = &unk_21BE3BE28;
  *(v14 + 1) = v11;
  *v5 = v6;
  *(v5 + 1) = v7;
  v15 = v20;
  *(v5 + 2) = v21;
  *(v5 + 3) = v15;
  *(v5 + 4) = v8;
  *(v5 + 40) = v9;
  *(v5 + 7) = v10;
  v24 = v29;
  v25 = v30;
  sub_21BE283FC();
  v16 = swift_allocObject();
  v17 = v2[1];
  v16[1] = *v2;
  v16[2] = v17;
  v18 = v2[3];
  v16[3] = v2[2];
  v16[4] = v18;
  sub_21BC7B244(v2, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BC7B2E0();
  sub_21BC7B400();
  sub_21BE281BC();

  return sub_21BB3A4CC(v5, &qword_27CDB84D8, &qword_21BE3BE10);
}

uint64_t sub_21BC77D78(uint64_t a1)
{
  *(v1 + 152) = a1;
  sub_21BE28D7C();
  *(v1 + 160) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC77E10, v3, v2);
}

void *sub_21BC77E10()
{
  v1 = sub_21BC7763C();
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_10;
  }

  v2 = v1;
  *(v0 + 96) = 0x64657463656C6573;
  *(v0 + 104) = 0xEA00000000006449;
  sub_21BE2958C();
  result = [v2 clientInfo];
  if (!result)
  {
    goto LABEL_36;
  }

  v4 = result;

  v5 = sub_21BE2890C();
  if (!*(v5 + 16) || (v6 = sub_21BBB31E8(v0 + 16), (v7 & 1) == 0))
  {

    sub_21BBB7238(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_10;
  }

  sub_21BB3DCD4(*(v5 + 56) + 32 * v6, v0 + 56);
  sub_21BBB7238(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_10:
    sub_21BB3A4CC(v0 + 56, &qword_27CDB5940, &unk_21BE32B10);
    v9 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v8 = swift_dynamicCast();
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (!v8)
  {
    v9 = 0;
    v10 = 0;
  }

LABEL_11:
  v11 = *(v0 + 152);
  v12 = *(v11 + 56);
  *(v0 + 16) = *(v11 + 40);
  *(v0 + 32) = v12;
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84E0, &qword_21BE3BE18);
  sub_21BE2840C();
  v13 = sub_21BC7763C();
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 152);
    *(v0 + 56) = 0xD000000000000013;
    *(v0 + 64) = 0x800000021BE546F0;
    sub_21BE2958C();
    v16 = *(v15 + 32);
    if (v16 >> 62)
    {
      v17 = sub_21BE2951C();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x277D84F90];
    if (!v17)
    {
      goto LABEL_23;
    }

    v34 = MEMORY[0x277D84F90];
    result = sub_21BC59CF4(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v33 = v14;
      v19 = 0;
      v18 = v34;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x21CF047C0](v19, v16);
        }

        else
        {
          v20 = *(v16 + 8 * v19 + 32);
        }

        v21 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes;
        swift_beginAccess();
        sub_21BBA3854(v20 + v21, v0 + 56, &unk_27CDB8060, &qword_21BE3BDC0);

        v23 = *(v34 + 16);
        v22 = *(v34 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21BC59CF4((v22 > 1), v23 + 1, 1);
        }

        ++v19;
        *(v34 + 16) = v23 + 1;
        v24 = v34 + 40 * v23;
        v25 = *(v0 + 56);
        v26 = *(v0 + 72);
        *(v24 + 64) = *(v0 + 88);
        *(v24 + 32) = v25;
        *(v24 + 48) = v26;
      }

      while (v17 != v19);
LABEL_23:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8510, &qword_21BE3BE58);
      *(v0 + 120) = v27;
      *(v0 + 96) = v18;
      result = [v14 clientInfo];
      if (result)
      {
        v28 = result;
        v29 = sub_21BE2890C();

        if (v27)
        {
          sub_21BB414D0((v0 + 96), (v0 + 56));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_21BC80224((v0 + 56), v0 + 16, isUniquelyReferenced_nonNull_native);
          sub_21BBB7238(v0 + 16);
          if (v29)
          {
LABEL_26:
            v31 = sub_21BE288EC();

LABEL_30:
            [v14 setClientInfo_];

            goto LABEL_31;
          }
        }

        else
        {
          sub_21BB3A4CC(v0 + 96, &qword_27CDB5940, &unk_21BE32B10);
          sub_21BC7B834(v0 + 16, (v0 + 56));
          sub_21BB3A4CC(v0 + 56, &qword_27CDB5940, &unk_21BE32B10);
          sub_21BBB7238(v0 + 16);
          if (v29)
          {
            goto LABEL_26;
          }
        }

        v31 = 0;
        goto LABEL_30;
      }

LABEL_37:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_31:
  v32 = *(v0 + 8);

  return v32();
}

void sub_21BC78304(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v9 = a2[1];
  v11 = *(a3 + 16);
  v29 = v11;
  v30 = *(a3 + 24);
  if (v30 == 1)
  {
    v12 = v11;
    if (!v11)
    {
      return;
    }
  }

  else
  {

    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v29, &qword_27CDB8508, &unk_21BE3BE40);
    (*(v6 + 8))(v8, v5);
    v11 = v28[0];
    if (!v28[0])
    {
      return;
    }
  }

  *&v25 = 0x64657463656C6573;
  *(&v25 + 1) = 0xEA00000000006449;
  sub_21BE2958C();
  if (v9)
  {
    v14 = MEMORY[0x277D837D0];
    v15 = v9;
  }

  else
  {
    v15 = 0;
    v10 = 0;
    v14 = 0;
    v26 = 0;
  }

  *&v25 = v10;
  *(&v25 + 1) = v15;
  v27 = v14;

  v16 = [v11 clientInfo];
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = sub_21BE2890C();

  v24 = v18;
  if (!v9)
  {
    sub_21BB3A4CC(&v25, &qword_27CDB5940, &unk_21BE32B10);
    sub_21BC7B834(v28, v23);
    sub_21BB3A4CC(v23, &qword_27CDB5940, &unk_21BE32B10);
    sub_21BBB7238(v28);
    if (v24)
    {
      goto LABEL_11;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  sub_21BB414D0(&v25, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v18;
  sub_21BC80224(v23, v28, isUniquelyReferenced_nonNull_native);
  sub_21BBB7238(v28);
  if (!v22)
  {
    goto LABEL_13;
  }

LABEL_11:
  v20 = sub_21BE288EC();

LABEL_14:
  [v11 setClientInfo_];
}

uint64_t sub_21BC78618(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64657463656C6573;
  v4 = 0xEA00000000006449;
  v5 = 0x800000021BE54710;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000021BE54710;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0x64657463656C6573;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000006449;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BC78714()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC787B4(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC78840(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC788DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BC82454(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BC7890C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEA00000000006449;
  v5 = 0x64657463656C6573;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000021BE54710;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21BC78968()
{
  v1 = 0x64657463656C6573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_21BC789C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BC82454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BC789E8(uint64_t a1)
{
  v2 = sub_21BC82D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC78A24(uint64_t a1)
{
  v2 = sub_21BC82D34();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21BC78A60()
{
  v54 = sub_21BE26A4C();
  v1 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v51 - v9;
  v10 = *(v0 + 32);
  if (v10 >> 62)
  {
    v11 = sub_21BE2951C();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v59 = v10 & 0xC000000000000001;
    v53 = (v1 + 8);
    v52 = "s";
    *&v8 = 136315650;
    v51 = v8;
    v58 = v10;
    v57 = v11;
    v56 = v3;
    v55 = v7;
    do
    {
      if (v59)
      {
        v13 = MEMORY[0x21CF047C0](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      sub_21BC79318(&v70);
      if (v71)
      {
        v63 = v71;
        v15 = v72;
        v14 = v73;
        v16 = v75;
        v61 = v70;
        v62 = v74;
        if (qword_27CDB4F88 != -1)
        {
          swift_once();
        }

        v17 = off_27CDB9878;
        swift_getKeyPath();
        v69 = v17;
        sub_21BC82E6C(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
        sub_21BE25F1C();

        swift_getKeyPath();
        v69 = v17;
        sub_21BE25F1C();

        v18 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
        swift_beginAccess();
        v19 = *&v17[v18];
        v20 = objc_opt_self();
        v60 = v15;
        v21 = sub_21BE289CC();
        v22 = v62;
        v23 = sub_21BE289CC();
        v24 = [v20 profilePictureForContact:0 serverImageData:0 firstName:v21 lastName:v23 diameter:v19];

        v25 = sub_21BE25BFC();
        v27 = v26;

        v28 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v29 = sub_21BE25BCC();
        v30 = [v28 initWithData_];

        sub_21BBBEF94(v25, v27);
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = v30;

        sub_21BE26CBC();
        v31 = sub_21BE28DAC();
        v32 = *(v31 - 8);
        v33 = v64;
        (*(v32 + 56))(v64, 1, 1, v31);
        sub_21BE28D7C();

        v34 = sub_21BE28D6C();
        v35 = swift_allocObject();
        v35[2] = v34;
        v35[3] = MEMORY[0x277D85700];
        v35[4] = v13;
        v36 = v63;
        v35[5] = v61;
        v35[6] = v36;
        v35[7] = v60;
        v35[8] = v14;
        v35[9] = v22;
        v35[10] = v16;
        v37 = v55;
        sub_21BBA3854(v33, v55, &qword_27CDB5790, &qword_21BE32800);
        LODWORD(v34) = (*(v32 + 48))(v37, 1, v31);

        if (v34 == 1)
        {
          sub_21BB3A4CC(v37, &qword_27CDB5790, &qword_21BE32800);
        }

        else
        {
          sub_21BE28D9C();
          (*(v32 + 8))(v37, v31);
        }

        v3 = v56;
        v46 = v35[2];
        swift_unknownObjectRetain();

        v10 = v58;
        if (v46)
        {
          swift_getObjectType();
          v47 = sub_21BE28D0C();
          v49 = v48;
          swift_unknownObjectRelease();
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        sub_21BB3A4CC(v64, &qword_27CDB5790, &qword_21BE32800);
        v50 = swift_allocObject();
        *(v50 + 16) = &unk_21BE3BF00;
        *(v50 + 24) = v35;
        if (v49 | v47)
        {
          v65 = 0;
          v66 = 0;
          v67 = v47;
          v68 = v49;
        }

        v11 = v57;
        swift_task_create();
      }

      else
      {
        sub_21BE2614C();

        v38 = sub_21BE26A2C();
        v39 = sub_21BE28FDC();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v69 = v41;
          *v40 = v51;
          *(v40 + 4) = sub_21BB3D81C(0xD000000000000077, v52 | 0x8000000000000000, &v69);
          *(v40 + 12) = 2080;
          *(v40 + 14) = sub_21BB3D81C(0x67616D4964616F6CLL, 0xEC00000029287365, &v69);
          *(v40 + 22) = 2080;
          v42 = *(v13 + 16);
          v43 = *(v13 + 24);

          v44 = sub_21BB3D81C(v42, v43, &v69);

          *(v40 + 24) = v44;
          v10 = v58;
          _os_log_impl(&dword_21BB35000, v38, v39, "%s.%s failed to get image item for: %s", v40, 0x20u);
          swift_arrayDestroy();
          v45 = v41;
          v11 = v57;
          MEMORY[0x21CF05C50](v45, -1, -1);
          MEMORY[0x21CF05C50](v40, -1, -1);
        }

        else
        {
        }

        (*v53)(v3, v54);
      }

      ++v12;
    }

    while (v11 != v12);
  }
}

double sub_21BC792D4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_21BC82714(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_21BC79318@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes;
  swift_beginAccess();
  sub_21BBA3854(v2 + v12, &v35, &unk_27CDB8060, &qword_21BE3BDC0);
  if (v37)
  {
    sub_21BB3D104(&v35, v34);
    sub_21BB3A35C(v34, v33);
    sub_21BC824A0(v33, &v35);
    v32 = v4;
    v23 = *(&v35 + 1);
    v22 = v35;
    v24 = v36;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v18 = HIBYTE(*(&v35 + 1)) & 0xFLL;
    if ((*(&v35 + 1) & 0x2000000000000000) == 0)
    {
      v18 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
      v30 = v5;
      sub_21BE2614C();

      v31 = sub_21BE26A2C();
      v19 = sub_21BE28FDC();

      v29 = v19;
      if (os_log_type_enabled(v31, v19))
      {
        v20 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33[0] = v28;
        *v20 = 136315394;
        *(v20 + 4) = sub_21BB3D81C(0x6574496567616D69, 0xE90000000000006DLL, v33);
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_21BB3D81C(*(v2 + 16), *(v2 + 24), v33);
        _os_log_impl(&dword_21BB35000, v31, v29, "RUIFamilyImageItem.%s invalid altdsid for item: %s", v20, 0x16u);
        v21 = v28;
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v21, -1, -1);
        MEMORY[0x21CF05C50](v20, -1, -1);
      }

      (*(v30 + 8))(v11, v32);
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  else
  {
    sub_21BB3A4CC(&v35, &unk_27CDB8060, &qword_21BE3BDC0);
    sub_21BE2614C();

    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v35 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_21BB3D81C(0xD000000000000077, 0x800000021BE5A180, &v35);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_21BB3D81C(0x6574496567616D69, 0xE90000000000006DLL, &v35);
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_21BB3D81C(*(v2 + 16), *(v2 + 24), &v35);
      _os_log_impl(&dword_21BB35000, v13, v14, "%s.%s failed to get decoder item: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v16, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  *a1 = v22;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v25;
  a1[4] = v26;
  a1[5] = v27;
  return result;
}

uint64_t sub_21BC798EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21BE28D7C();
  v5[5] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21BC79984, v7, v6);
}

uint64_t sub_21BC79984()
{
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *((*MEMORY[0x277D85000] & *off_27CDB9878) + 0x150);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_21BC79B24;

  return v11(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21BC79B24(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_21BC79D0C;
  }

  else
  {
    v4[9] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_21BC79C50;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC79C50()
{
  v1 = v0[9];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_21BE26CBC();
  v2 = v0[1];

  return v2();
}

uint64_t sub_21BC79D0C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = 0;

  sub_21BE26CBC();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21BC79DBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BC8333C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21BC79DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BC8333C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BC79E14(uint64_t a1)
{
  v2 = sub_21BC82F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC79E50(uint64_t a1)
{
  v2 = sub_21BC82F90();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21BC79E8C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21BC824A0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_21BC79ED0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

void sub_21BC79F44(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BC79FC4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_21BE26CBC();
}

uint64_t sub_21BC7A048()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC7A124(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC7A1EC(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC7A2C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BC83388(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BC7A2F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656C746974627573;
  v7 = 0xE800000000000000;
  v8 = 0x4C52556567616D69;
  if (v2 != 3)
  {
    v8 = 0x49646441776F6873;
    v7 = 0xEC0000006567616DLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21BC7A38C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974627573;
  v4 = 0x4C52556567616D69;
  if (v1 != 3)
  {
    v4 = 0x49646441776F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

unint64_t sub_21BC7A420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BC83388(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BC7A448(uint64_t a1)
{
  v2 = sub_21BC7B15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC7A484(uint64_t a1)
{
  v2 = sub_21BC7B15C();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_21BC7A4C0(void *a1)
{
  v3 = v1;
  v56 = *v1;
  v57 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v48 - v6;
  v7 = sub_21BE25D6C();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84C0, &qword_21BE3BDB0);
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84C8, &qword_21BE3BDB8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_imageURL;
  v17 = sub_21BE25B9C();
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  v18 = &v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_showAddImage;
  v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_showAddImage] = 0;
  v20 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement__image;
  v58[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8490, &qword_21BE3BB58);
  sub_21BE26C6C();
  v21 = *(v13 + 32);
  v55 = v12;
  v21(&v3[v20], v15, v12);
  v22 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v22);
  sub_21BC7B15C();
  v23 = v57;
  sub_21BE29B4C();
  if (v23)
  {
    goto LABEL_13;
  }

  v25 = v52;
  v24 = v53;
  v26 = v54;
  LOBYTE(v58[0]) = 0;
  v27 = sub_21BE2982C();
  if (!v28)
  {
    v57 = v9;
    v49 = 0;
    sub_21BE25D5C();
    v29 = sub_21BE25D2C();
    v30 = v11;
    v32 = v31;
    (*(v50 + 8))(v25, v51);
    v28 = v32;
    v11 = v30;
    v27 = v29;
    v26 = v54;
    v23 = v49;
    v9 = v57;
  }

  v33 = v24;
  *(v3 + 2) = v27;
  *(v3 + 3) = v28;
  LOBYTE(v58[0]) = 1;
  v34 = sub_21BE2982C();
  if (v23)
  {
    (*(v26 + 8))(v11, v9);

LABEL_13:
    sub_21BB3A4CC(&v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_imageURL], &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BB3A4CC(&v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes], &unk_27CDB8060, &qword_21BE3BDC0);
    (*(v13 + 8))(&v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement__image], v55);
    swift_deallocPartialClassInstance();
    v40 = v59;
    goto LABEL_14;
  }

  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  *(v3 + 4) = v36;
  *(v3 + 5) = v37;
  LOBYTE(v58[0]) = 2;
  v38 = sub_21BE2982C();
  if (v39)
  {
    v42 = v38;
  }

  else
  {
    v42 = 0;
  }

  if (v39)
  {
    v43 = v39;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  *(v3 + 6) = v42;
  *(v3 + 7) = v43;
  LOBYTE(v58[0]) = 4;
  v3[v19] = sub_21BE2983C() & 1;
  LOBYTE(v58[0]) = 3;
  sub_21BE2982C();
  if (v44)
  {
    sub_21BE25B7C();

    (*(v26 + 8))(v11, v9);
    v45 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_imageURL;
    swift_beginAccess();
    sub_21BBFD920(v33, &v3[v45], &unk_27CDB57F0, &qword_21BE328A0);
    swift_endAccess();
  }

  else
  {
    (*(v26 + 8))(v11, v9);
  }

  v46 = v59;
  sub_21BB3A35C(v59, v58);
  v47 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes;
  swift_beginAccess();
  sub_21BBFD920(v58, &v3[v47], &unk_27CDB8060, &qword_21BE3BDC0);
  swift_endAccess();
  v40 = v46;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  return v3;
}

uint64_t sub_21BC7AB50()
{

  sub_21BB3A4CC(v0 + OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_imageURL, &unk_27CDB57F0, &qword_21BE328A0);
  sub_21BB3A4CC(v0 + OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes, &unk_27CDB8060, &qword_21BE3BDC0);
  v1 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84C8, &qword_21BE3BDB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FARUIPersonPickerOptionElement(uint64_t a1)
{
  result = qword_27CDB8478;
  if (!qword_27CDB8478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC7ACA4(uint64_t a1)
{
  sub_21BBF088C(319);
  if (v1 <= 0x3F)
  {
    sub_21BC7AD94(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BC7AD94(uint64_t a1)
{
  if (!qword_27CDB8488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8490, &qword_21BE3BB58);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB8488);
    }
  }
}

uint64_t sub_21BC7AE04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21BC7AE4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_21BC7AEC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_21BC7A4C0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_21BC7AF20@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_21BC7AF30()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21BC7AF60()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_21BC7AF90()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21BC7AFD0(uint64_t a1)
{
  *(a1 + 8) = sub_21BC82E6C(&qword_27CDB8498, type metadata accessor for FARUIPersonPickerOptionElement, a5_3);
  result = sub_21BC82E6C(&qword_27CDB84A0, type metadata accessor for FARUIPersonPickerOptionElement, byte_21BE3BD0C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BC7B058()
{
  result = qword_27CDB84A8;
  if (!qword_27CDB84A8)
  {
    result = swift_getWitnessTable(byte_21BE3BC40, &type metadata for FARUIPersonPickerView, v0, v1);
    atomic_store(result, &qword_27CDB84A8);
  }

  return result;
}

unint64_t sub_21BC7B0B0()
{
  result = qword_27CDB84B0;
  if (!qword_27CDB84B0)
  {
    result = swift_getWitnessTable(byte_21BE3BC08, &type metadata for FARUIPersonPickerView, v0, v1);
    atomic_store(result, &qword_27CDB84B0);
  }

  return result;
}

unint64_t sub_21BC7B108()
{
  result = qword_27CDB84B8;
  if (!qword_27CDB84B8)
  {
    result = swift_getWitnessTable(aQxF, &type metadata for FARUIPersonPickerView, v0, v1);
    atomic_store(result, &qword_27CDB84B8);
  }

  return result;
}

unint64_t sub_21BC7B15C()
{
  result = qword_27CDB84D0;
  if (!qword_27CDB84D0)
  {
    result = swift_getWitnessTable(byte_21BE3C368, &type metadata for FARUIPersonPickerOptionElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB84D0);
  }

  return result;
}

uint64_t sub_21BC7B1B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBB7EB8;

  return sub_21BC77D78(v0 + 16);
}

uint64_t objectdestroyTm_8()
{

  sub_21BBC9024(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_21BC7B2E0()
{
  result = qword_27CDB84E8;
  if (!qword_27CDB84E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB84D8, &qword_21BE3BE10);
    v4[0] = sub_21BC7B39C();
    v4[1] = sub_21BC82E6C(&qword_27CDB5058, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB84E8);
  }

  return result;
}

unint64_t sub_21BC7B39C()
{
  result = qword_27CDB84F0;
  if (!qword_27CDB84F0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB84F8, &qword_21BE3BE38);
    result = swift_getWitnessTable(aIlF8k, v3, v0, v1);
    atomic_store(result, &qword_27CDB84F0);
  }

  return result;
}

unint64_t sub_21BC7B400()
{
  result = qword_27CDB8500;
  if (!qword_27CDB8500)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7AB0, &qword_21BE39110);
    v4[0] = MEMORY[0x277D837F8];
    result = swift_getWitnessTable(MEMORY[0x277D84F50], v3, v4);
    atomic_store(result, &qword_27CDB8500);
  }

  return result;
}

uint64_t sub_21BC7B47C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC82E6C(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__imageProvider;
  swift_beginAccess();
  return sub_21BB3A35C(v3 + v4, a2);
}

uint64_t sub_21BC7B544(uint64_t a1, uint64_t *a2)
{
  sub_21BB3A35C(a1, v15);
  v3 = *a2;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  v8 = *v6;
  v14[3] = type metadata accessor for FAImageProvider();
  v14[4] = &off_282D8FB28;
  v14[0] = v8;
  swift_getKeyPath();
  v11 = v3;
  v12 = v14;
  v13 = v3;
  sub_21BC82E6C(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
  sub_21BE25F0C();

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_21BC7B6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21BBB3108(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21BC81000();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_21BC7ECF0(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_21BC7B790@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21BBB3108(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21BC818B0();
      v10 = v12;
    }

    sub_21BB414D0((*(v10 + 56) + 32 * v8), a3);
    sub_21BC7EEA0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_21BC7B834@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21BBB31E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21BC81A54();
      v9 = v11;
    }

    sub_21BBB7238(*(v9 + 48) + 40 * v7);
    sub_21BB414D0((*(v9 + 56) + 32 * v7), a2);
    sub_21BC7F050(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_21BC7B8D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_21BE25B9C();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5890, &qword_21BE32988);
  v43 = v4;
  v8 = sub_21BE297CC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v29 = sub_21BE29B0C();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_21BC7BC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
  v39 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v39)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v42 = *(v27 + 32);
        v40 = v28;
        v41 = v29;
      }

      else
      {
        sub_21BBA3854(v27, &v40, &qword_27CDB8568, &unk_21BE3BF70);
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v30 = sub_21BE29B0C();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v40;
      v19 = v41;
      *(v17 + 32) = v42;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_21BC7BF38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5880, &qword_21BE3BF30);
  v38 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v28 = sub_21BE29B0C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21BC7C1F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8550, &unk_21BE3BF20);
  v39 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v40 = *(v26 + 8);
      if ((v39 & 1) == 0)
      {

        v28 = v27;
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v29 = sub_21BE29B0C();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v40;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21BC7C4B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5938, &qword_21BE32B08);
  v35 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v25 = sub_21BE29B0C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21BC7C754(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5870, &unk_21BE3BF60);
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      sub_21BE29ACC();
      sub_21BE28ABC();

      v15 = sub_21BE29B0C();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_21BC7CADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5868, &unk_21BE32960);
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      sub_21BE29ACC();
      sub_21BE28ABC();

      v15 = sub_21BE29B0C();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
}

void sub_21BC7CFA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8560, &unk_21BE3BF40);
  v34 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v34)
      {
        sub_21BB3D104(v24, v35);
      }

      else
      {
        sub_21BB3A35C(v24, v35);
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v25 = sub_21BE29B0C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_21BB3D104(v35, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_21BC7D26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5858, &unk_21BE32950);
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_21BE293FC();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_21BC7D4D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5908, &qword_21BE32AB8);
  v34 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v25 = sub_21BE29B0C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21BC7D788(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
  v34 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_21BB414D0(v24, v35);
      }

      else
      {
        sub_21BB3DCD4(v24, v35);
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v25 = sub_21BE29B0C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_21BB414D0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_21BC7DA40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F8, &qword_21BE3BE50);
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_21BB414D0((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_21BBB71DC(v23, &v37);
        sub_21BB3DCD4(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_21BE2956C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_21BB414D0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_21BC7DCF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58B8, &qword_21BE329B0);
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_21BE293FC();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_21BC7DF5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E8, &qword_21BE32A80);
  v35 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v25 = sub_21BE29B0C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21BC7E204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E0, &qword_21BE32A78);
  v36 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_21BE28A0C();
      sub_21BE29ACC();
      sub_21BE28ABC();
      v25 = sub_21BE29B0C();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21BC7E4C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8558, &qword_21BE3BF38);
  v36 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21BE29ACC();
      sub_21BE28ABC();
      v26 = sub_21BE29B0C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21BC7E76C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5860, &unk_21BE3BF50);
  v31 = v4;
  v6 = sub_21BE297CC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v31 & 1) == 0)
      {
      }

      sub_21BE29ACC();
      sub_21BE28ABC();

      v15 = sub_21BE29B0C();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

unint64_t sub_21BC7EB04(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    while (1)
    {
      sub_21BE29ACC();

      sub_21BE28ABC();
      v9 = sub_21BE29B0C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_21BE25B9C() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21BC7ECF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      sub_21BE29ACC();

      sub_21BE28ABC();
      v9 = sub_21BE29B0C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21BC7EEA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      sub_21BE29ACC();

      sub_21BE28ABC();
      v10 = sub_21BE29B0C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21BC7F050(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      sub_21BBB71DC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_21BE2956C();
      result = sub_21BBB7238(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21BC7F1F4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_21BE28A0C();
      sub_21BE29ACC();
      v10 = v9;
      sub_21BE28ABC();
      v11 = sub_21BE29B0C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_21BC7F3BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      sub_21BE29ACC();

      sub_21BE28ABC();
      v9 = sub_21BE29B0C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21BC7F56C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      sub_21BE29ACC();
      sub_21BE28ABC();

      result = sub_21BE29B0C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21BC7F814(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21BBB3108(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21BC7BC58(v16, a4 & 1);
      v11 = sub_21BBB3108(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21BC80CC4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    return sub_21BBFD920(a1, v21[7] + 40 * v11, &qword_27CDB8568, &unk_21BE3BF70);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v28;
}

uint64_t sub_21BC7F9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21BBB3108(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21BC7BF38(v18, a5 & 1);
      v13 = sub_21BBB3108(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21BC80E88();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_21BC7FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21BBB3108(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21BC7C1F8(v18, a5 & 1);
      v13 = sub_21BBB3108(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_21BE299FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_21BC81000();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_21BC7FCB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21BBB3230(a2);
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
    sub_21BC812F0(&qword_27CDB5870, &unk_21BE3BF60);
    result = v17;
    goto LABEL_8;
  }

  sub_21BC7C754(v14, a3 & 1);
  result = sub_21BBB3230(a2);
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
    *(v19[6] + result) = a2;
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
  result = sub_21BE299FC();
  __break(1u);
  return result;
}

unint64_t sub_21BC7FDF0(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_21BBB31A4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_21BC7D26C(v13, a3 & 1);
      result = sub_21BBB31A4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_21BBE66D8();
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_21BC815D4();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1 & 1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1 & 1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

void sub_21BC7FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21BBB3108(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21BC7D4D0(v18, a5 & 1);
      v13 = sub_21BBB3108(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_21BE299FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_21BC81730();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

_OWORD *sub_21BC800D4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21BBB3108(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21BC818B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21BC7D788(v16, a4 & 1);
    v11 = sub_21BBB3108(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21BE299FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_21BB414D0(a1, v22);
  }

  else
  {
    sub_21BC8095C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_21BC80224(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21BBB31E8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21BC81A54();
      goto LABEL_7;
    }

    sub_21BC7DA40(v13, a3 & 1);
    v19 = sub_21BBB31E8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21BBB71DC(a2, v21);
      return sub_21BC809C8(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_21BE299FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_21BB414D0(a1, v17);
}

void sub_21BC80370(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21BBB3108(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21BC7DF5C(v16, a4 & 1);
      v11 = sub_21BBB3108(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_21BE299FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_21BC81D54();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_21BC804EC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21BBB322C();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_21BC7E204(v13, a3 & 1);
      v8 = sub_21BBB322C();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType(0);
        v8 = sub_21BE299FC();
        __break(1u);
        return MEMORY[0x2821F96F8](v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_21BC81EC4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8](v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

uint64_t sub_21BC80654(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21BBB3108(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21BC7E4C8(v16, a4 & 1);
      v11 = sub_21BBB3108(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_21BE299FC();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_21BC82024();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_21BC807CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21BBB3230(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_21BC7E76C(v14, a3 & 1);
      result = sub_21BBB3230(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_21BC82190();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_21BC80918(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_21BC8095C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21BB414D0(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_21BC809C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21BB414D0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_21BC80A44()
{
  v1 = v0;
  v35 = sub_21BE25B9C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5890, &qword_21BE32988);
  v3 = *v0;
  v4 = sub_21BE297BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_21BC80CC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_21BBA3854(*(v2 + 56) + 40 * v17, v28, &qword_27CDB8568, &unk_21BE3BF70);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_21BC80E88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5880, &qword_21BE3BF30);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_21BC81000()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8550, &unk_21BE3BF20);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;

        v26 = v23;
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
}

void sub_21BC81174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5938, &qword_21BE32B08);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

void sub_21BC812F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21BE297BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_21BC8142C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8560, &unk_21BE3BF40);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_21BB3A35C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21BB3D104(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_21BC815D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5858, &unk_21BE32950);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        v20 = v18;
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
}

void sub_21BC81730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5908, &qword_21BE32AB8);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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
}

void sub_21BC818B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21BB3DCD4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21BB414D0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_21BC81A54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F8, &qword_21BE3BE50);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_21BBB71DC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21BB3DCD4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_21BB414D0(v22, (*(v4 + 56) + v17));
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
}

void sub_21BC81BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58B8, &qword_21BE329B0);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
}

void sub_21BC81D54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E8, &qword_21BE32A80);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

void sub_21BC81EC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E0, &qword_21BE32A78);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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
}

void sub_21BC82024()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8558, &qword_21BE3BF38);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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
}

void sub_21BC82190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5860, &unk_21BE3BF50);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}