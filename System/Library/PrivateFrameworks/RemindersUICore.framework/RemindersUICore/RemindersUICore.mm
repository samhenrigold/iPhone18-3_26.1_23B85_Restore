uint64_t static TTRWidgetCenter.shared.getter()
{
  if (qword_280D165D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21D0CC4A0()
{
  sub_21DBF9E1C();
  v0 = sub_21DBF9E0C();
  type metadata accessor for TTRWidgetCenter();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_280D165D8 = result;
  return result;
}

uint64_t TTRWidgetRefresher.init(widgetCenter:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

void *TTRTimeZoneOverrideObserver.init(userDefaults:setDefaultTimeZone:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[4] = 0;
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v8 = qword_280D1AA18;
  type metadata accessor for TTRTimeZoneOverrideMenuPresenterCapability();
  v9 = swift_allocObject();
  v18 = type metadata accessor for TTRUserDefaults();
  v19 = &protocol witness table for TTRUserDefaults;
  *&v17 = v8;
  sub_21D0D0FD0(&v17, (v9 + 2));
  v9[7] = sub_21D4C4CA0;
  v9[8] = 0;
  v9[9] = sub_21D8B7CAC;
  v9[10] = 0;
  v4[7] = v9;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(v11 + 8);
  v13 = v8;
  v4[2] = v12(v10, v11);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v4[3] = (*(v15 + 16))(v14, v15);
  v4[5] = a2;
  v4[6] = a3;
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id sub_21D0CC6B4(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for TTRUserDefaults()) init];
  qword_280D1AA18 = result;
  return result;
}

id sub_21D0CC778()
{
  if (qword_280D18FF8 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21DBFA12C();
  v2 = [v0 initWithSuiteName_];

  v3 = sub_21D0CC970();
  v4 = sub_21D0CF0A0(v3);

  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = v5;
  sub_21D0CF2F8(v4, sub_21D0CF794, 0, isUniquelyReferenced_nonNull_native, v13);

  v7 = v13[0];
  v14 = MEMORY[0x277D839B0];
  LOBYTE(v13[0]) = 1;
  sub_21D0CF2E8(v13, v12);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_21D0CFB00(v12, 0xD000000000000012, 0x800000021DC746D0, v8);
  if (v2)
  {
    v9 = v2;
    v10 = sub_21DBF9E5C();

    [v9 registerDefaults_];
  }

  else
  {
  }

  return v2;
}

uint64_t sub_21D0CC940()
{
  result = sub_21DBFA16C();
  qword_280D19000 = result;
  qword_280D19008[0] = v1;
  return result;
}

uint64_t sub_21D0CC970()
{
  v22 = MEMORY[0x277D84F90];
  sub_21D0CCD60(0, 9, 0);
  v0 = 0;
  v1 = v22;
  do
  {
    v2 = byte_282EA69C8[v0 + 32];
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_21DBFBEEC();
    v3 = 0x646567676174;
    if (v2 == 7)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xD000000000000014;
      v4 = 0x800000021DC43AF0;
    }

    if (v2 == 6)
    {
      v3 = 0x686372616573;
      v4 = 0xE600000000000000;
    }

    v5 = 0x64656E6769737361;
    if (v2 != 4)
    {
      v5 = 0x6E756F4669726973;
    }

    v6 = 0xE800000000000000;
    if (v2 != 4)
    {
      v6 = 0xEF737070416E4964;
    }

    if (v2 <= 5)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x656C756465686373;
    if (v2 != 2)
    {
      v7 = 0x64656767616C66;
    }

    v8 = 0xE900000000000064;
    if (v2 != 2)
    {
      v8 = 0xE700000000000000;
    }

    v9 = 7105633;
    if (v2)
    {
      v9 = 0x7961646F74;
    }

    v10 = 0xE300000000000000;
    if (v2)
    {
      v10 = 0xE500000000000000;
    }

    if (v2 <= 1)
    {
      v7 = v9;
      v8 = v10;
    }

    if (v2 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 3)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }

    MEMORY[0x223D42AA0](v11, v12);

    MEMORY[0x223D42AA0](0xD000000000000017, 0x800000021DC74680);
    v14 = v20;
    v13 = v21;
    v22 = v1;
    v16 = *(v1 + 16);
    v15 = *(v1 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_21D0CCD60((v15 > 1), v16 + 1, 1);
      v1 = v22;
    }

    ++v0;
    *(v1 + 16) = v16 + 1;
    v17 = v1 + 24 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    *(v17 + 48) = 1;
  }

  while (v0 != 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599E0, &unk_21DC38B80);
  v20 = sub_21DBFC40C();
  v18 = sub_21DBF8E0C();
  sub_21D0CEBF4(v18, 1, &v20);

  return v20;
}

void *sub_21D0CCC1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58780, &qword_21DC099A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58788, &qword_21DC099B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D0CCD60(void *a1, int64_t a2, char a3)
{
  result = sub_21D0CCC1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_131(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_153(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_159(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21D0CD7F0()
{
  v0 = sub_21DBF9D1C();
  __swift_allocate_value_buffer(v0, qword_280D173C0);
  *__swift_project_value_buffer(v0, qword_280D173C0) = 2;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

unint64_t sub_21D0CD898()
{
  result = qword_280D1B920;
  if (!qword_280D1B920)
  {
    v3 = sub_21DBF9D2C();
    result = swift_getWitnessTable(MEMORY[0x277D851A0], v3, v0, v1);
    atomic_store(result, &qword_280D1B920);
  }

  return result;
}

unint64_t sub_21D0CD8F0()
{
  result = qword_280D1B910;
  if (!qword_280D1B910)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5CD60, &qword_21DC092C0);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280D1B910);
  }

  return result;
}

unint64_t destroy for TTRAppDelegateUtils.TriggerSyncReason(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

void *sub_21D0CD96C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D0CD98C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D17238);
  v1 = __swift_project_value_buffer(v0, qword_280D17238);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
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

uint64_t sub_21D0CDB0C(uint64_t a1, uint64_t *a2, void *a3, SEL *a4)
{
  v6 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  v7 = [objc_opt_self() *a4];
  return sub_21DBF84CC();
}

void static TTRAppDelegateUtils.triggerSync(store:reason:)(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a2;
    if (qword_280D17230 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D17238);
    sub_21D0DEC64(v4, v3);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEDC();
    sub_21D0DC534(v4, v3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v8 = 136315138;
      v10 = 0xEF6E6F6974617669;
      v11 = 0x7463616544707061;
      if (v3 != 2)
      {
        v11 = v4;
        v10 = v3;
      }

      if (v3 == 1)
      {
        v12 = 0x7669746341707061;
      }

      else
      {
        v12 = v11;
      }

      if (v3 == 1)
      {
        v13 = 0xED00006E6F697461;
      }

      else
      {
        v13 = v10;
      }

      sub_21D0DEC64(v4, v3);
      v14 = sub_21D0CDFB4(v12, v13, aBlock);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v6, v7, "AppDelegate: trigger throttled sync {reason: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    v15 = *MEMORY[0x277D44C18];
    aBlock[4] = sub_21D11E650;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_23;
    v16 = _Block_copy(aBlock);
    [a1 triggerThrottledSyncWithReason:v15 discretionary:0 completion:v16];
    _Block_release(v16);
  }

  else
  {
    if (qword_280D17230 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_280D17238);
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21D0CDFB4(0x636E75614C707061, 0xEB00000000646568, aBlock);
      _os_log_impl(&dword_21D0C9000, v18, v19, "AppDelegate: trigger account update and sync {reason: %s}", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    v22 = [a1 nonUserInteractiveStore];
    if (qword_280D173B8 != -1)
    {
      swift_once();
    }

    v23 = sub_21DBF9D1C();
    v24 = __swift_project_value_buffer(v23, qword_280D173C0);
    sub_21D0CE468();
    v25 = sub_21DBFB12C();
    sub_21D0CE4B4(v24, v25, v22);
  }
}

unint64_t sub_21D0CDFB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_21DBF8E0C();
  v6 = sub_21D0CE080(v11, 0, 0, 1, a1, a2);
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
    sub_21D0CEB98(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21D0CE080(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21D0CE330(a5, a6);
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
    result = sub_21DBFBFCC();
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

void *sub_21D0CE18C(uint64_t a1, unint64_t a2)
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

  v6 = sub_21D0CE2BC(v5, 0);
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

  result = sub_21DBFBFCC();
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
        v10 = sub_21DBFA31C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21D0CE2BC(v10, 0);
        result = sub_21DBFBEDC();
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

void *sub_21D0CE2BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58400, &qword_21DC092A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_21D0CE330(uint64_t a1, unint64_t a2)
{
  v3 = sub_21D0CE18C(a1, a2);
  sub_21D0CE37C(&unk_282EA62A0);
  return v3;
}

uint64_t sub_21D0CE37C(uint64_t result)
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

  result = sub_21D1819FC(result, v11, 1, v3);
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

unint64_t sub_21D0CE468()
{
  result = qword_280D1B900;
  if (!qword_280D1B900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D1B900);
  }

  return result;
}

uint64_t sub_21D0CE4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a1;
  v28 = a3;
  v32 = a2;
  v3 = sub_21DBF9D2C();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D7C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  sub_21DBF9D6C();
  (*(v10 + 16))(v12, v27, v9);
  _sSd15RemindersUICoreEySd8Dispatch0C12TimeIntervalOcfC_0(v12);
  sub_21DBF9D9C();
  v20 = *(v14 + 8);
  v20(v16, v13);
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 16) = v28;
  aBlock[4] = sub_21D3A5538;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_7_0;
  v23 = _Block_copy(aBlock);
  v24 = v22;
  sub_21DBF9D4C();
  v33 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  MEMORY[0x223D43880](v19, v8, v5, v23);
  _Block_release(v23);
  (*(v31 + 8))(v5, v3);
  (*(v29 + 8))(v8, v30);
  v20(v19, v13);
}

uint64_t sub_21D0CE898()
{

  return swift_deallocObject();
}

uint64_t _sSd15RemindersUICoreEySd8Dispatch0C12TimeIntervalOcfC_0(uint64_t a1)
{
  v2 = sub_21DBF9D1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D85188] || v7 == *MEMORY[0x277D85178] || v7 == *MEMORY[0x277D85170] || v7 == *MEMORY[0x277D85168])
  {
    (*(v3 + 8))(a1, v2);
    return (*(v3 + 96))(v6, v2);
  }

  else if (v7 == *MEMORY[0x277D85180])
  {
    return (*(v3 + 8))(a1, v2);
  }

  else
  {
    result = sub_21DBFC31C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21D0CEB98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_21D0CEBF4(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;
  sub_21DBF8E0C();
  v10 = sub_21D0CEF70(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21D21F818(v15, v5 & 1);
    v10 = sub_21D0CEF70(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_21DBFC70C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_21D2265CC();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD00000000000001BLL, 0x800000021DC448B0);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](39, 0xE100000000000000);
    sub_21DBFC31C();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;
      sub_21DBF8E0C();
      v27 = sub_21D0CEF70(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_21D21F818(v31, 1);
        v27 = sub_21D0CEF70(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 24;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_21D0CEF70(uint64_t a1, uint64_t a2)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v4 = sub_21DBFC82C();

  return sub_21D0CEFE8(a1, a2, v4);
}

unint64_t sub_21D0CEFE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21DBFC64C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21D0CF0A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E8, &unk_21DC090C0);
    v2 = sub_21DBFC40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  result = sub_21DBF8E0C();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_21DBF8E0C();
        swift_dynamicCast();
        sub_21D0CF2E8(&v22, v24);
        sub_21D0CF2E8(v24, v25);
        sub_21D0CF2E8(v25, &v23);
        result = sub_21D0CEF70(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_21D0CF2E8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_21D0CF2E8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

_OWORD *sub_21D0CF2E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_21D0CF2F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;
  sub_21DBF8E0C();

  sub_21D0CF634(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_21D0CF2E8(v47, v45);
  v14 = *a5;
  result = sub_21D0CEF70(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_21D0CF840(v20, a4 & 1);
    result = sub_21D0CEF70(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_21DBFC70C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_21D22163C();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_21D0CEB98(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0((v25 + v24));
    sub_21D0CF2E8(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_21D0CF2E8(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_21D0CF634(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_21D0CF2E8(v47, v45);
        v34 = *a5;
        result = sub_21D0CEF70(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_21D0CF840(v38, 1);
          result = sub_21D0CEF70(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_21D0CEB98(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0((v33 + v32));
          sub_21D0CF2E8(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_21D0CF2E8(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_21D0CF634(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_21D0CFAF8(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21D0CF634@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21D0CEB98(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_21D0CF2E8(v21, &v23);
    result = sub_21DBF8E0C();
    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_21D0CF7E0(v21, &unk_27CE65220, &qword_21DC38B78);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D0CF794@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21D0CEB98((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return sub_21DBF8E0C();
}

uint64_t sub_21D0CF7E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21D0CF840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E8, &unk_21DC090C0);
  v33 = v4;
  result = sub_21DBFC3EC();
  v7 = result;
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
    v14 = result + 64;
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
      if (v33)
      {
        sub_21D0CF2E8(v24, v34);
      }

      else
      {
        sub_21D0CEB98(v24, v34);
        sub_21DBF8E0C();
      }

      sub_21DBFC7DC();
      sub_21DBFA27C();
      result = sub_21DBFC82C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_21D0CF2E8(v34, (*(v7 + 56) + 32 * v15));
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_21D0CFB00(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21D0CEF70(a2, a3);
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
      sub_21D22163C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21D0CF840(v16, a4 & 1);
    v11 = sub_21D0CEF70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_21D0CF2E8(a1, v22);
  }

  else
  {
    sub_21D0CFC50(v11, a2, a3, a1, v21);

    return sub_21DBF8E0C();
  }
}

_OWORD *sub_21D0CFC50(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21D0CF2E8(a4, (a5[7] + 32 * a1));
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *REMDaemonUserDefaults.observablePropertyForTimeZoneOverrideEnabled.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120, &qword_21DC09CC0);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[9] = v3;
  v4[10] = 0;
  v4[4] = sub_21D0D10FC;
  v4[5] = v1;
  v4[6] = sub_21D5051D0;
  v4[7] = v2;
  v4[8] = sub_21D0D0E98;
  v5 = v0;
  return v4;
}

uint64_t sub_21D0CFE44()
{

  return swift_deallocObject();
}

void *REMDaemonUserDefaults.observablePropertyForTimeZoneOverride.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D4B0, &qword_21DC19778);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[9] = v3;
  v4[10] = 0;
  v4[4] = sub_21D505334;
  v4[5] = v1;
  v4[6] = sub_21D5053A8;
  v4[7] = v2;
  v4[8] = sub_21D0D1000;
  v5 = v0;
  return v4;
}

void static TTRProcessEnvironment.currentProcessEnvironment.getter(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 environment];

  v4 = sub_21DBF9E6C();
  *a1 = v4;
}

id TTRProcessEnvironment.isolatedStoreContainerToken.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  if (*(v8 + 16))
  {
    v9 = sub_21D0CEF70(0xD00000000000001DLL, 0x800000021DC44400);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
      sub_21DBF8E0C();
      sub_21DBF564C();
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {

        (*(v5 + 32))(v7, v3, v4);
        v20 = objc_allocWithZone(MEMORY[0x277D44858]);
        v21 = sub_21DBF566C();
        v22 = [v20 initWithIdentifier_];

        (*(v5 + 8))(v7, v4);
        return v22;
      }

      sub_21D0CF7E0(v3, &qword_27CE58370, &unk_21DC091F0);
      if (qword_27CE56548 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_27CE58358);
      sub_21DBF8E0C();
      v15 = sub_21DBF84AC();
      v16 = sub_21DBFAECC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v25 = v18;
        *v17 = 136315138;
        v19 = sub_21D0CDFB4(v13, v12, &v25);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_21D0C9000, v15, v16, "Received storeContainerIdentifier but it is not a UUID -- Failed to create an isolated store {storeContainerIdentifier: %s}", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x223D46520](v18, -1, -1);
        MEMORY[0x223D46520](v17, -1, -1);
      }

      else
      {
      }
    }
  }

  return 0;
}

id TTRProcessEnvironment.assertOnMainThreadFetches.getter()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  sub_21D0CEF70(0xD00000000000001CLL, 0x800000021DC44440);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  sub_21DBF8E0C();
  v2 = sub_21DBFA12C();

  v3 = [v2 BOOLValue];

  return v3;
}

Swift::Void __swiftcall TTRTimeZoneOverrideObserver.start()()
{
  v1 = v0;
  v37 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A338, &qword_21DC0EC48);
  v5 = *(v4 - 8);
  v33 = v4;
  v34 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A340, &qword_21DC0EC50);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  MEMORY[0x28223BE20](v8);
  v31 = &v30 - v10;
  v11 = sub_21DBFB34C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A348, &qword_21DC0EC58);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v38 = sub_21D0D0BC4(sub_21D256514, sub_21D0D0CE4);
  v19 = sub_21D0D0BC4(sub_21D256514, sub_21D0D0F64);
  v20 = [objc_opt_self() defaultCenter];
  sub_21DBFB35C();

  sub_21D0D0F88(&qword_280D0C280, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_21DBF927C();
  (*(v12 + 8))(v14, v11);
  sub_21D0D0F1C(&qword_280D0C5B0, &qword_27CE5A348, &qword_21DC0EC58, MEMORY[0x277CBCC08]);
  v21 = sub_21DBF920C();
  (*(v16 + 8))(v18, v15);
  sub_21D0D1B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A350, &unk_21DC0EC60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC08D10;
  *(v22 + 32) = v38;
  *(v22 + 40) = v19;
  *(v22 + 48) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A358, &qword_21DC18F00);
  sub_21D0D0F1C(&qword_280D0C480, &qword_27CE5A358, &qword_21DC18F00, MEMORY[0x277CBCD90]);
  sub_21DBF8FDC();
  v23 = [objc_opt_self() mainRunLoop];
  v39 = v23;
  v24 = sub_21DBFBA0C();
  v25 = v32;
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  sub_21D0D2210();
  sub_21D0D0F1C(&qword_280D0C520, &qword_27CE5A338, &qword_21DC0EC48, MEMORY[0x277CBCD48]);
  sub_21D0D0F88(&qword_280D17660, sub_21D0D2210, MEMORY[0x277CC9E80]);
  v26 = v31;
  v27 = v33;
  sub_21DBF936C();
  sub_21D0CF7E0(v25, &qword_27CE5A0F0, &qword_21DC0E530);

  (*(v34 + 8))(v7, v27);
  sub_21D0D0F1C(&qword_280D0C4C0, &qword_27CE5A340, &qword_21DC0EC50, MEMORY[0x277CBCD60]);
  v28 = v35;
  v29 = sub_21DBF91AC();

  (*(v36 + 8))(v26, v28);
  v1[4] = v29;
}

uint64_t sub_21D0D0BC4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  if (!*(v2 + 96))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
    swift_allocObject();
    v5 = sub_21DBF907C();

    a2(a1, v5);
    *(v2 + 96) = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE20]);
  v6 = sub_21DBF920C();

  return v6;
}

uint64_t sub_21D0D0D04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D0D0D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  if (v4[12])
  {

    sub_21DBF905C();

    v4[12] = 0;
  }

  swift_beginAccess();
  v9 = v4[2];
  v10 = v6[3];
  v6[2] = a1;
  v6[3] = a2;
  sub_21D0D0E74(a1, a2);
  sub_21D0D0E88(v9, v10);
  if (v6[10])
  {
    return sub_21D0D0E88(a1, a2);
  }

  v12 = v6[8];
  v13 = swift_allocObject();
  swift_weakInit();

  v14 = v12(a4, v13);
  sub_21D0D0E88(a1, a2);

  v6[10] = v14;
  return swift_unknownObjectRelease();
}

uint64_t sub_21D0D0E78(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21D0D0E88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21D0D0EE0()
{

  return swift_deallocObject();
}

uint64_t sub_21D0D0F1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D0D0F88(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D0FD0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_21D0D1008(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_21D0E6078;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21D5053B0;
  v10[3] = &block_descriptor_42;
  v7 = _Block_copy(v10);

  v8 = [a3 observeTimeZoneOverrideWithBlock_];
  _Block_release(v7);
  return v8;
}

id sub_21D0D10FC@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 16) timeZoneOverrideEnabled];
  *a1 = result;
  return result;
}

uint64_t sub_21D0D1130()
{
  result = sub_21DBFA12C();
  qword_280D0C2A0 = result;
  return result;
}

uint64_t sub_21D0D1188(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D0D11C0(uint64_t a1)
{
  result = sub_21DBF6C1C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

int64x2_t static TTRAttachmentThumbnailSizeProviding<>.remindersList.getter()
{
  v0 = swift_allocObject();
  result = vdupq_n_s64(0x4073400000000000uLL);
  v0[1] = result;
  v0[2].i64[0] = 0x4090000000000000;
  v0[2].i8[8] = 1;
  return result;
}

uint64_t TTRThumbnailGenerator.init(queue:backgroundQueue:)(void *a1, void *a2)
{
  *(v2 + 16) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v6 = a1;
  v7 = [v5 init];
  *(v2 + 24) = v7;
  [v7 setUnderlyingQueue_];

  return v2;
}

void *TTRAttachmentThumbnailsManager.init(thumbnailSizeProvider:thumbnailGenerator:)(void *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_21D0D14E4(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
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

void *sub_21D0D14E4(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  v10 = MEMORY[0x277D84F98];
  a3[12] = 0;
  a3[13] = v10;
  a3[14] = MEMORY[0x277D84FA0];
  sub_21D0D15E0(a2, (a3 + 7));
  return a3;
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

uint64_t TTRHashtagAssociationInteractor.init(store:backgroundTaskPerformer:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  sub_21D0D0FD0(a2, v2 + 32);
  return v2;
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.BadgeViewModel.Badge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t TTRHashtagAssociationPresenterCapability.init(interactor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void *TTRIDynamicDateGlyphCache.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

uint64_t static TTRCloudKitMigrationManager.shared.getter()
{
  if (qword_280D19190 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21D0D17D0()
{
  if (qword_280D191A8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21D10;
  sub_21DBF60DC();
  v1 = v0;
  v2 = sub_21DBF60CC();
  type metadata accessor for TTRCloudKitMigrationManager();
  v3 = swift_allocObject();
  v3[5] = 0;
  result = swift_unknownObjectWeakInit();
  v5 = MEMORY[0x277D84F98];
  v3[6] = MEMORY[0x277D84F98];
  v3[7] = 0;
  v3[8] = v5;
  v3[2] = v1;
  v3[3] = v2;
  qword_280D19198 = v3;
  return result;
}

id static TTRCloudKitNetworkActivityMonitor.shared.getter()
{
  if (qword_280D18838 != -1)
  {
    swift_once();
  }

  v1 = qword_280D18840;

  return v1;
}

Swift::String __swiftcall TTRLocalizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF516C();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id sub_21D0D19B8()
{
  _s11LookupClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280D1BAB0 = result;
  return result;
}

id sub_21D0D1A34()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  sub_21DBF9E6C();
  LOBYTE(v1) = TTRProcessEnvironment.assertOnMainThreadFetches.getter();

  result = [v0 setAssertOnMainThreadFetches_];
  qword_280D21D10 = v0;
  return result;
}

void sub_21D0D1B14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v49[-v3];
  v5 = sub_21DBF5C4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v49[-v10];
  MEMORY[0x28223BE20](v12);
  v53 = &v49[-v13];
  v14 = sub_21DBF604C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 104))(v18, *MEMORY[0x277D44DC0], v14, v16);
  v19 = sub_21DBF603C();
  v20 = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    return;
  }

  v21 = (*(*(v1 + 16) + 32))(v54, v20);
  v22 = v1;
  v23 = v5;
  if (LOBYTE(v54[0]) == 1)
  {
    (*(*(v22 + 24) + 32))(v54, v21);
    if (v54[1])
    {
      sub_21DBF5BBC();

      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        v36 = v53;
        (*(v6 + 32))(v53, v4, v23);
        if (qword_280D0F420 != -1)
        {
          swift_once();
        }

        v37 = sub_21DBF84BC();
        __swift_project_value_buffer(v37, qword_280D0F428);
        (*(v6 + 16))(v11, v36, v23);
        v38 = sub_21DBF84AC();
        v39 = sub_21DBFAEDC();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v51 = v40;
          v52 = swift_slowAlloc();
          v54[0] = v52;
          *v40 = 136315138;
          sub_21D0D0F88(&qword_280D17170, MEMORY[0x277CC9A70], MEMORY[0x277CC9AA0]);
          v41 = sub_21DBFC5BC();
          v50 = v39;
          v42 = v22;
          v44 = v43;
          v45 = *(v6 + 8);
          v45(v11, v23);
          v46 = sub_21D0CDFB4(v41, v44, v54);
          v22 = v42;

          v47 = v51;
          *(v51 + 1) = v46;
          _os_log_impl(&dword_21D0C9000, v38, v50, "TTRTimeZoneOverrideObserver: Set default time zone to %s", v47, 0xCu);
          v48 = v52;
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x223D46520](v48, -1, -1);
          MEMORY[0x223D46520](v47, -1, -1);
        }

        else
        {

          v45 = *(v6 + 8);
          v45(v11, v23);
        }

        (*(v22 + 40))(v36);
        TTRTimeZoneOverrideMenuPresenterCapability.saveRecentlyUsedTimeZone(_:)(v36);
        v45(v36, v23);
        goto LABEL_11;
      }

      sub_21D0CF7E0(v4, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  if (qword_280D0F420 != -1)
  {
    swift_once();
  }

  v24 = sub_21DBF84BC();
  __swift_project_value_buffer(v24, qword_280D0F428);
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAEDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v54[0] = v28;
    *v27 = 136315138;
    sub_21DBF5C3C();
    sub_21D0D0F88(&qword_280D17170, MEMORY[0x277CC9A70], MEMORY[0x277CC9AA0]);
    v29 = sub_21DBFC5BC();
    v30 = v22;
    v32 = v31;
    (*(v6 + 8))(v8, v23);
    v33 = sub_21D0CDFB4(v29, v32, v54);
    v22 = v30;

    *(v27 + 4) = v33;
    _os_log_impl(&dword_21D0C9000, v25, v26, "TTRTimeZoneOverrideObserver: Reset default time zone to %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223D46520](v28, -1, -1);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  v34 = *(v22 + 40);
  sub_21DBF5C3C();
  v34(v8);
  (*(v6 + 8))(v8, v23);
LABEL_11:
  v35 = [objc_opt_self() defaultCenter];
  if (qword_280D0C298 != -1)
  {
    swift_once();
  }

  [v35 postNotificationName:qword_280D0C2A0 object:v22];
}

unint64_t sub_21D0D2210()
{
  result = qword_280D17650;
  if (!qword_280D17650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17650);
  }

  return result;
}

void sub_21D0D225C()
{
  sub_21D0CE468();
  v0 = sub_21DBFB12C();
  v1 = type metadata accessor for TTRCloudKitNetworkActivityMonitor();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_executeToken] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_queue] = v0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = v0;
  v4 = objc_msgSendSuper2(&v5, sel_init);

  qword_280D18840 = v4;
}

id static TTRUserDefaults.appUserDefaults.getter()
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v1 = qword_280D1AA18;

  return v1;
}

char *sub_21D0D23C0(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v112 = a6;
  v113 = a7;
  v108 = a5;
  v111 = a3;
  v106 = a2;
  ObjectType = swift_getObjectType();
  v100 = sub_21DBFB11C();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v97);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v94 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C328, &qword_21DC15E50);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = &v87 - v16;
  v89 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  v92 = *(v89 - 1);
  MEMORY[0x28223BE20](v89);
  v95 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = &v87 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v87 - v21;
  v23 = sub_21DBF69DC();
  v24 = *(v23 - 8);
  v104 = v23;
  v105 = v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsDisplayOrderInUserDefaults] = 0;
  v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsVisibilityInUserDefaults] = 0;
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_smartListsDisplayOrderObservationToken] = 0;
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_smartListsVisibilityObservationToken] = 0;
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer] = 0;
  v27 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_accountsEligibleForMigration_cached;
  *&v7[v27] = sub_21D0D4A14(MEMORY[0x277D84F90]);
  v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_cloudKitNetworkActivity] = 0;
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor] = 0;
  v28 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_modelCachablePropertyFetchInitiator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE8, &qword_21DC26708);
  swift_allocObject();
  *&v7[v28] = sub_21DBF907C();
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_modelCachablePropertyFetchSubscription] = 0;
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store] = a1;
  sub_21D0D32E4(a2, &v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer]);
  v29 = v112;
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_cloudKitMigrationManager] = v111;
  *&v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_cloudKitNetworkActivityMonitor] = a4;
  v30 = &v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage];
  *v30 = v108;
  v30[1] = v29;
  sub_21D0D32E4(v113, &v7[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults]);
  v115.receiver = v7;
  v115.super_class = ObjectType;
  v31 = a1;

  v101 = a4;
  swift_unknownObjectRetain();
  v88 = objc_msgSendSuper2(&v115, sel_init);
  v103 = v26;
  sub_21DBF69BC();
  (*(v24 + 16))(v22, v26, v23);
  v32 = v89;
  *&v22[v89[5]] = MEMORY[0x277D84FA0];
  *&v22[v32[6]] = 0;
  v102 = v22;
  type metadata accessor for TTRAccountListsMonitorableDataView();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v112 = v33;
  v107 = type metadata accessor for TTRAccountListsMonitorableDataView.Data;
  v34 = v110;
  sub_21D0D4B04(v22, v110, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
  v90 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v35 = v31;

  v36 = sub_21DBFB12C();
  sub_21DBF60DC();
  v91 = sub_21DBF60BC();
  v37 = sub_21DBF60AC();
  ObjectType = *MEMORY[0x277D76648];
  v108 = *MEMORY[0x277D76768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EF0, &unk_21DC26710);
  v38 = swift_allocObject();
  v39 = *(*v38 + 104);
  v40 = *(v92 + 56);
  v41 = v32;
  v40(v38 + v39, 1, 1, v32);
  v42 = (v38 + *(*v38 + 136));
  *v42 = 0;
  v42[1] = 0;
  *(v38 + *(*v38 + 112)) = v36;
  *(v38 + *(*v38 + 120)) = v37;
  v43 = v107;
  sub_21D0D4B04(v34, v38 + *(*v38 + 96), v107);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0, &unk_21DC1A860);
  swift_storeEnumTagMultiPayload();
  v44 = v93;
  sub_21D0D4B04(v34, v93, v43);
  v40(v44, 0, 1, v41);
  swift_beginAccess();
  v45 = v88;
  v46 = ObjectType;
  v47 = v108;
  v89 = v36;
  v88 = v37;
  sub_21D0D3528(v44, v38 + v39);
  swift_endAccess();
  sub_21DBF9D4C();
  v114 = MEMORY[0x277D84F90];
  sub_21D0D8E04(&qword_280D17808, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
  sub_21D0D0F1C(&qword_280D178C0, &unk_27CE60F00, &unk_21DC0D9A0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  (*(v99 + 104))(v98, *MEMORY[0x277D85260], v100);
  v48 = sub_21DBFB14C();
  v49 = v110;
  v50 = v95;
  v51 = v107;
  sub_21D0D4B04(v110, v95, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F10, &unk_21DC26720);
  v52 = swift_allocObject();
  *(v52 + 72) = 0u;
  *(v52 + 88) = 0u;
  *(v52 + 104) = 0;
  *(v52 + 108) = -1;
  *(v52 + 120) = 0;
  *(v52 + 128) = 1;
  v53 = *(*v52 + 216);
  v54 = swift_slowAlloc();
  *(v52 + v53) = v54;
  *(v52 + *(*v52 + 224)) = 0;
  v55 = v91;
  *(v52 + 16) = v48;
  *(v52 + 24) = v55;
  v56 = v112;
  *(v52 + 32) = v88;
  *(v52 + 40) = v56;
  sub_21D0D4B04(v50, v52 + *(*v52 + 208), v51);
  swift_storeEnumTagMultiPayload();
  *v54 = 0;

  sub_21D0D8E4C(v50, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
  sub_21D0D8E4C(v49, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
  v57 = v108;
  *(v52 + 48) = ObjectType;
  *(v52 + 56) = v57;
  *(v52 + 64) = 1;
  *(v38 + *(*v38 + 128)) = v52;
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v58;
  *(v60 + 24) = v59;
  v61 = *(v52 + 72);
  v62 = *(v52 + 80);
  *(v52 + 72) = sub_21D0D39BC;
  *(v52 + 80) = v60;

  sub_21D0D0E88(v61, v62);

  v63 = *(v38 + *(*v38 + 128));
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = *(v63 + 88);
  v66 = *(v63 + 96);
  *(v63 + 88) = sub_21D0EBAC4;
  *(v63 + 96) = v64;

  sub_21D0D0E88(v65, v66);

  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = swift_allocObject();
  *(v69 + 16) = v67;
  *(v69 + 24) = v68;
  v70 = (v38 + *(*v38 + 136));
  v71 = *v70;
  v72 = v70[1];
  *v70 = sub_21D0F00D4;
  v70[1] = v69;

  sub_21D0D0E88(v71, v72);

  *&v45[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor] = v38;

  sub_21D0D4B6C(1);

  v73 = v111;
  swift_beginAccess();
  *(v73 + 40) = &protocol witness table for TTRAccountsListsInteractor;
  swift_unknownObjectWeakAssign();
  v74 = &v101[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate];
  swift_beginAccess();
  *(v74 + 1) = &protocol witness table for TTRAccountsListsInteractor;
  swift_unknownObjectWeakAssign();
  TTRCloudKitNetworkActivityMonitor.startMonitoring()();
  v75 = v113[3];
  v76 = v113[4];
  v77 = v113;
  __swift_project_boxed_opaque_existential_1(v113, v75);
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = *(v76 + 88);

  v80 = v79(sub_21D749DA8, v78, v75, v76);

  *&v45[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_smartListsDisplayOrderObservationToken] = v80;
  swift_unknownObjectRelease();
  v81 = v77[3];
  v82 = v77[4];
  __swift_project_boxed_opaque_existential_1(v77, v81);
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v84 = *(v82 + 96);

  v85 = v84(sub_21D749DE0, v83, v81, v82);

  *&v45[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_smartListsVisibilityObservationToken] = v85;
  swift_unknownObjectRelease();
  sub_21D0D57E0();

  __swift_destroy_boxed_opaque_existential_0(v106);
  sub_21D0D8E4C(v102, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
  (*(v105 + 8))(v103, v104);
  __swift_destroy_boxed_opaque_existential_0(v77);
  return v45;
}

uint64_t sub_21D0D31DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D0D3240(uint64_t a1)
{
  result = sub_21DBF69DC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D0D32E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t initializeWithCopy for TTRAccountListsMonitorableDataView.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF69DC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  sub_21DBF8E0C();
  v9 = v8;
  return a1;
}

uint64_t sub_21D0D33F0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
  result = sub_21DBFC84C();
  if (v2 <= 0x3F)
  {
    result = sub_21DBFBA8C();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21D0D3528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C328, &qword_21DC15E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D0D35AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF69DC();
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

uint64_t sub_21D0D3680(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280, &qword_21DC09C40);
    v1 = sub_21DBFC84C();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

void sub_21D0D3810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(v3 + 112) == -1 && *(v3 + 64) == 1)
  {
    out_token = -1;
    v4 = *MEMORY[0x277D44C98];
    v5 = *(v3 + 16);
    v8 = swift_allocObject();
    swift_weakInit();
    v10[4] = a2;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_21D0ECCF0;
    v10[3] = a3;
    v9 = _Block_copy(v10);

    LODWORD(v4) = notify_register_dispatch(v4, &out_token, v5, v9);
    _Block_release(v9);
    if (!v4 && out_token != -1)
    {
      *(v3 + 112) = out_token;
    }
  }
}

uint64_t sub_21D0D3954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21D0D39C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v105 = a4;
  v104 = a3;
  LODWORD(v6) = a2;
  v103 = sub_21DBF9D2C();
  v8 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_21DBF9D5C();
  v10 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_21DBF6A2C();
  v108 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21DBF687C();
  v107 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v69 - v16;
  v88 = sub_21DBF684C();
  v17 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v96 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C328, &qword_21DC15E50);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v69 - v20;
  v22 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v72 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v71 = &v69 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C330, &qword_21DC15E58);
  v95 = *(v27 - 8);
  MEMORY[0x28223BE20](v27 - 8);
  v93 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v28;
  MEMORY[0x28223BE20](v29);
  v109 = &v69 - v30;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0, &unk_21DC1A860);
  v92 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v90 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v31;
  MEMORY[0x28223BE20](v32);
  v87 = (&v69 - v33);
  v34 = *a5;
  v86 = *(*a5 + 216);
  v85 = *(v34 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v89 = a1;
  if (*(a1 + 16) >= 1)
  {
    v35 = 0;
    v83 = (v23 + 48);
    v82 = (v107 + 104);
    v80 = *MEMORY[0x277D452B8];
    v76 = (v17 + 8);
    v70 = (v108 + 8);
    v79 = v113;
    v78 = (v8 + 8);
    v77 = (v10 + 8);
    v75 = v13;
    v74 = v21;
    v106 = v22;
    v84 = v6;
    v81 = a5;
    while (1)
    {
      sub_21DBFC83C();
      if ((*v83)(v21, 1, v22) == 1)
      {
        sub_21D0CF7E0(v21, &qword_27CE5C328, &qword_21DC15E50);
        v36 = 0;
      }

      else
      {
        v36 = *&v21[*(v22 + 24)];
        v37 = v36;
        sub_21D0D7DF0(v21);
      }

      v38 = *(v104 + 16);
      v39 = (v6 & 1) != 0 ? v38 : [v38 nonUserInteractiveStore];
      v40 = v39;
      v41 = *v82;
      v42 = v80;
      v43 = v99;
      (*v82)(v97, v80, v99);
      v41(v98, v42, v43);
      v44 = v96;
      sub_21DBF682C();
      sub_21DBF6A3C();
      sub_21DBF681C();
      if (v35)
      {
        (*v76)(v44, v88);

        v45 = v87;
        *v87 = v35;
        v46 = 1;
        v107 = 0;
        v47 = v109;
      }

      else
      {
        v107 = 0;
        v48 = v72;
        sub_21DBF6A1C();
        v49 = v44;
        v50 = sub_21DBF69FC();
        v51 = sub_21DBF69EC();
        v52 = v106;
        *(v48 + *(v106 + 20)) = v50;
        *(v48 + *(v52 + 24)) = v51;
        v53 = v71;
        sub_21D0EDE08(v48, v71);
        v47 = v109;
        sub_21DBF6A0C();

        sub_21D0D7DF0(v48);
        (*v70)(v13, v73);
        (*v76)(v49, v88);
        v45 = v87;
        sub_21D0EDE6C(v53, v87);
        v46 = 0;
      }

      swift_storeEnumTagMultiPayload();
      v54 = sub_21DBF688C();
      (*(*(v54 - 8) + 56))(v47, v46, 1, v54);
      v55 = v81;
      v108 = v81[2];
      v56 = v90;
      sub_21D0D3954(v45, v90, &qword_27CE60DE0, &unk_21DC1A860);
      v57 = v93;
      sub_21D0D3954(v47, v93, &qword_27CE5C330, &qword_21DC15E58);
      v58 = (*(v92 + 80) + 24) & ~*(v92 + 80);
      v59 = (v91 + *(v95 + 80) + v58) & ~*(v95 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = v55;
      sub_21D0D523C(v56, v60 + v58, &qword_27CE60DE0, &unk_21DC1A860);
      sub_21D0D523C(v57, v60 + v59, &qword_27CE5C330, &qword_21DC15E58);
      v113[2] = sub_21D0EB0BC;
      v113[3] = v60;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v113[0] = sub_21D0D74FC;
      v113[1] = &block_descriptor_1047;
      v6 = _Block_copy(aBlock);

      v61 = v100;
      sub_21DBF9D4C();
      v111 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
      v62 = v102;
      v63 = v103;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v61, v62, v6);
      _Block_release(v6);
      (*v78)(v62, v63);
      (*v77)(v61, v101);

      sub_21D0CF7E0(v109, &qword_27CE5C330, &qword_21DC15E58);
      sub_21D0CF7E0(v45, &qword_27CE60DE0, &unk_21DC1A860);
      LOBYTE(v6) = v84;
      if (v84)
      {
        break;
      }

      v64 = *(v55 + v86);
      os_unfair_lock_lock(v64);
      v65 = v85;
      v66 = v89;
      v67 = *(v55 + v85) != *(v89 + 16);
      *(v89 + 16) = v67;
      *(v55 + v65) = v67;
      os_unfair_lock_unlock(v64);
      v68 = *(v66 + 16);
      v13 = v75;
      v21 = v74;
      v22 = v106;
      v35 = v107;
      if (v68 <= 0)
      {
        return;
      }
    }

    *(v89 + 16) = 0;
  }
}

uint64_t sub_21D0D46D8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0, &unk_21DC1A860) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C330, &qword_21DC15E58) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = sub_21DBF69DC();
    (*(*(v7 - 8) + 8))(v6, v7);
    v8 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  }

  v9 = sub_21DBF688C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v5, 1, v9))
  {
    (*(v10 + 8))(v0 + v5, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_21D0D4908()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F1C8);
  v1 = __swift_project_value_buffer(v0, qword_280D0F1C8);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_21D0D4A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58200, &qword_21DC08FB8);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21D17E07C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21D0D4B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D0D4B94()
{

  return swift_deallocObject();
}

void sub_21D0D4BD0()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D0EE560;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1057;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D318;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1063;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

uint64_t sub_21D0D4EF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v20 = *(v11 + *(*v11 + 112));
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v11;
      aBlock[4] = nullsub_1;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_1111;
      v18 = _Block_copy(aBlock);
      v19 = v13;

      sub_21DBF9D4C();
      v21 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v17 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
      sub_21DBFBCBC();
      v15 = v18;
      MEMORY[0x223D438F0](0, v9, v5, v18);
      _Block_release(v15);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v17);
    }
  }

  return result;
}

uint64_t sub_21D0D523C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_21D0D52E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_21D0CEF70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_21D0CEF70(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);

    sub_21DBF8E0C();
  }
}

Swift::Void __swiftcall TTRCloudKitNetworkActivityMonitor.cloudKitNetworkActivityDidChange(_:)(NSNumber a1)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [(objc_class *)a1.super.super.isa integerValue]> 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D0EB204;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  sub_21DBF9D4C();
  v16[1] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v11, v6, v14);
  _Block_release(v14);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_21D0D5780()
{

  return swift_deallocObject();
}

uint64_t sub_21D0D57E0()
{
  v1 = sub_21DBFB10C();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x28223BE20](v1);
  v59 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250, &unk_21DC13240);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v47 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60F20, &qword_21DC26730);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v7 = v47 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60F28, &qword_21DC26738);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v51 = v47 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60F30, &qword_21DC26740);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v55 = v47 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60F38, &qword_21DC26748);
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60F40, &qword_21DC26750);
  v12 = *(v11 - 8);
  v70 = v11;
  v71 = v12;
  MEMORY[0x28223BE20](v11);
  v62 = v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60F48, &qword_21DC26758);
  v15 = *(v14 - 8);
  v72 = v14;
  v73 = v15;
  MEMORY[0x28223BE20](v14);
  v63 = v47 - v16;
  v17 = type metadata accessor for TTRAccountsListsInteractor.FetchResult(0);
  v54 = v17;
  v52 = *(v17 - 8);
  v50 = *(v52 + 64);
  MEMORY[0x28223BE20](v17);
  v49 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v47 - v20;
  v48 = v47 - v20;
  v22 = sub_21DBF680C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  *&v21[*(v17 + 20)] = 0;
  v78 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_modelCachablePropertyFetchInitiator);
  v47[1] = sub_21DBF60DC();

  v23 = sub_21DBF60BC();
  v77 = v23;
  v75 = sub_21DBFB0DC();
  v24 = *(v75 - 8);
  v74 = *(v24 + 56);
  v76 = v24 + 56;
  v74(v5, 1, 1, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE8, &qword_21DC26708);
  v47[0] = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  sub_21D0D0F1C(&qword_280D0C470, &qword_27CE60EE8, &qword_21DC26708, MEMORY[0x277CBCE20]);
  v47[2] = sub_21D0D65DC(&qword_280D17800, &qword_280D1B900, 0x277D85C78, MEMORY[0x277D85228]);
  sub_21DBF936C();
  sub_21D0CF7E0(v5, &unk_27CE5F250, &unk_21DC13240);

  v53 = MEMORY[0x277CBCD60];
  sub_21D0D0F1C(&qword_280D0C500, &qword_27CE60F20, &qword_21DC26730, MEMORY[0x277CBCD60]);
  v25 = v51;
  v26 = v56;
  sub_21DBF929C();
  (*(v57 + 8))(v7, v26);
  v27 = v59;
  sub_21DBFB0FC();
  v28 = sub_21DBF60BC();
  v78 = v28;
  v74(v5, 1, 1, v75);
  sub_21D0D0F1C(&qword_280D0C528, &qword_27CE60F28, &qword_21DC26738, MEMORY[0x277CBCD38]);
  v29 = v55;
  v30 = v58;
  sub_21DBF919C();
  sub_21D0CF7E0(v5, &unk_27CE5F250, &unk_21DC13240);

  (*(v68 + 8))(v27, v69);
  (*(v60 + 8))(v25, v30);
  v31 = swift_allocObject();
  v32 = v47[3];
  swift_unknownObjectWeakInit();
  v33 = v48;
  v34 = v49;
  sub_21D0D4B04(v48, v49, type metadata accessor for TTRAccountsListsInteractor.FetchResult);
  v35 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  sub_21D0D6754(v34, v36 + v35, type metadata accessor for TTRAccountsListsInteractor.FetchResult);
  sub_21D0D0F1C(&qword_280D0C5E0, &qword_27CE60F30, &qword_21DC26740, MEMORY[0x277D459B0]);
  v37 = v61;
  v38 = v64;
  sub_21DBF931C();

  (*(v66 + 8))(v29, v38);
  sub_21D0D0F1C(&qword_280D0C568, &qword_27CE60F38, &qword_21DC26748, MEMORY[0x277CBCCC0]);
  v39 = v62;
  v40 = v65;
  sub_21DBF922C();
  (*(v67 + 8))(v37, v40);
  v41 = sub_21DBFB12C();
  v78 = v41;
  v74(v5, 1, 1, v75);
  sub_21D0D0F1C(&qword_280D0C610, &qword_27CE60F40, &qword_21DC26750, MEMORY[0x277CBCB78]);
  v42 = v63;
  v43 = v70;
  sub_21DBF936C();
  sub_21D0CF7E0(v5, &unk_27CE5F250, &unk_21DC13240);

  (*(v71 + 8))(v39, v43);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D0D0F1C(&qword_280D0C4E8, &qword_27CE60F48, &qword_21DC26758, v53);
  v44 = v72;
  v45 = sub_21DBF93CC();

  (*(v73 + 8))(v42, v44);
  sub_21D0D8E4C(v33, type metadata accessor for TTRAccountsListsInteractor.FetchResult);
  *(v32 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_modelCachablePropertyFetchSubscription) = v45;
}

uint64_t sub_21D0D6380()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D0D63B8()
{
  v1 = *(type metadata accessor for TTRAccountsListsInteractor.FetchResult(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21DBF680C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

void sub_21D0D64F0(uint64_t a1)
{
  sub_21D0D6584(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D0D6584(uint64_t a1)
{
  if (!qword_280D0C7F8)
  {
    sub_21DBF680C();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_280D0C7F8);
    }
  }
}

uint64_t sub_21D0D65DC(unint64_t *a1, unint64_t *a2, void *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_21D0D8CF0(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

char *sub_21D0D6620(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50, &qword_21DC26760);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D0D6754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D0D67BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF680C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }
}

id TTRListToCustomSmartListConverter.init(store:committer:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC15RemindersUICore33TTRListToCustomSmartListConverter_store] = a1;
  sub_21D0D32E4(a2, &v2[OBJC_IVAR____TtC15RemindersUICore33TTRListToCustomSmartListConverter_committer]);
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v6;
}

id static UNUserNotificationCenter.ttr_unUserNotificationCenter.getter()
{
  if (qword_280D155F0 != -1)
  {
    swift_once();
  }

  if (qword_280D15600)
  {
    v0 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v1 = sub_21DBFA12C();
    v2 = [v0 initWithBundleIdentifier_];

    return v2;
  }

  else
  {
    v4 = [objc_opt_self() currentNotificationCenter];

    return v4;
  }
}

uint64_t sub_21D0D6A20()
{
  result = sub_21D0D6CC8();
  byte_280D15610 = result & 1;
  return result;
}

void sub_21D0D6A44(uint64_t *a1@<X8>)
{
  if (qword_280D15608 != -1)
  {
    swift_once();
  }

  if (byte_280D15610 == 1)
  {
    if (qword_27CE56DC8 != -1)
    {
      swift_once();
    }

    v2 = qword_27CE62FD8;
    v3 = unk_27CE62FE0;
    sub_21DBF8E0C();
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  if (qword_280D0F4B0 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F4B8);
  sub_21DBF8E0C();
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAEDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    if (v3)
    {
      sub_21DBF8E0C();
      sub_21DBFBEEC();

      MEMORY[0x223D42AA0](v2, v3);
      MEMORY[0x223D42AA0](41, 0xE100000000000000);

      v9 = 0xD000000000000011;
      v10 = 0x800000021DC6E4D0;
    }

    else
    {
      v10 = 0xEE00737365636F72;
      v9 = 0x50746E6572727563;
    }

    v11 = sub_21D0CDFB4(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRAuthorizationSource: check defaultForNotifications {result: %s}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21D0D6CC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_21DBFA16C();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  swift_beginAccess();
  if (byte_27CE62FE8)
  {
    goto LABEL_5;
  }

  v15 = sub_21DBFA16C();
  if (v4)
  {
    if (v2 == v15 && v4 == v16)
    {

      v5 = 1;
      goto LABEL_6;
    }

    v18 = sub_21DBFC64C();

    if (v18)
    {
LABEL_5:
      v5 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (qword_280D12898 != -1)
  {
    swift_once();
    if (v4)
    {
      goto LABEL_22;
    }

LABEL_33:
    v5 = 0;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_22:
  if (v2 == qword_280D128A0 && v4 == *algn_280D128A8 || (sub_21DBFC64C() & 1) != 0 || v2 == 0xD000000000000015 && v4 == 0x800000021DC6AF50 || (sub_21DBFC64C() & 1) != 0 || v2 == 0xD000000000000015 && v4 == 0x800000021DC6AF30)
  {
    goto LABEL_5;
  }

  v5 = sub_21DBFC64C();
LABEL_6:
  if (qword_280D0F4B0 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_280D0F4B8);
  sub_21DBF8E0C();
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAEDC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v5 & 1;
    *(v9 + 8) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0, &qword_21DC09AF0);
    v11 = sub_21DBFBA5C();
    v13 = v12;

    v14 = sub_21D0CDFB4(v11, v13, &v20);

    *(v9 + 10) = v14;
    _os_log_impl(&dword_21D0C9000, v7, v8, "TTRAuthorizationSource: check bundle {isNonRemindersBundle: %{BOOL}d, mainBundleID: %s}", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D46520](v10, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  else
  {
  }

  return v5 & 1;
}

uint64_t sub_21D0D7050()
{
  result = sub_21DBFA16C();
  qword_280D128A0 = result;
  *algn_280D128A8 = v1;
  return result;
}

uint64_t sub_21D0D7080()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F4B8);
  v1 = __swift_project_value_buffer(v0, qword_280D0F4B8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t type metadata accessor for TTRGeoLocationService(uint64_t a1)
{
  result = qword_280D1A2F0;
  if (!qword_280D1A2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D0D7194(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21DBF918C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21D0D71EC()
{
  result = qword_280D1B438[0];
  if (!qword_280D1B438[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRGeoLocationServiceResolvedLocation.Address, &type metadata for TTRGeoLocationServiceResolvedLocation.Address, v0, v1);
    atomic_store(result, qword_280D1B438);
  }

  return result;
}

void sub_21D0D7264(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_21D0D72B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58298, &qword_21DC09068);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 56); ; i = (i + 56))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v15 = i[1];
      v16 = *i;
      sub_21D179E10(v5, v6, *(i - 8));
      sub_21D179D54(v16, *(&v16 + 1), v15, *(&v15 + 1));
      result = sub_21D17E948(v5, v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      v11 = (v3[7] + 32 * result);
      *v11 = v16;
      v11[1] = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_21D0D73FC(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  if (a3 >> 2 != 0xFFFFFFFF || (a4 & 0xF000000000000007) != 0)
  {
    sub_21D47B42C(a1, a2, a3, a4);
  }
}

uint64_t sub_21D0D743C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t sub_21D0D74FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

char *TTRAccountsListsInteractor.init(store:committer:cloudKitMigrationManager:cloudKitNetworkActivityMonitor:perWindowLastSelectedListStorage:userDefaults:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v9 = sub_21D0D23C0(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v9;
}

Swift::Void __swiftcall TTRCloudKitNetworkActivityMonitor.startMonitoring()()
{
  v1 = v0;
  v2 = [objc_opt_self() weakSharedInstance];
  v3 = sub_21DBFA12C();
  v10[4] = sub_21D1821A8;
  v10[5] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21D182340;
  v10[3] = &block_descriptor;
  v4 = _Block_copy(v10);
  v5 = [v2 syncSyncInterfacePerformerWithReason:v3 errorHandler:v4];
  _Block_release(v4);

  if (v5)
  {
    if (qword_280D17EB0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F1C8);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "TTRCloudKitNetworkActivityMonitor start observing CloudKit network activity from daemon", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    [v2 setCloudKitNetworkActivityDelegate_];
    [v5 observeCloudKitNetworkActivityChanges];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_21D0D7CCC()
{
  result = qword_280D15120;
  if (!qword_280D15120)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.ModelCreationOption, &type metadata for TTRAccountsListsViewModel.ModelCreationOption, v0, v1);
    atomic_store(result, &qword_280D15120);
  }

  return result;
}

uint64_t sub_21D0D7D20(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v3 + 32);

  return a3(v6, v7, v9, v3 + v5, v8);
}

uint64_t sub_21D0D7DF0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D0D7E78(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

char *sub_21D0D7EE0(char *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63188, &qword_21DC2E800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  *&a1[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a1[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationAccuracyUpperBound] = 0x4062C00000000000;
  *&a1[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_maximumLocationUpdatingTime] = 0x403E000000000000;
  v9 = &a1[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  *v9 = 0;
  *(v9 + 1) = 0;
  v27 = xmmword_21DC2E6B0;
  *(v9 + 1) = xmmword_21DC2E6B0;
  v10 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService__lastKnownCurrentLocation;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE63218, &qword_21DC2EAA8);
  sub_21DBF913C();
  (*(v6 + 32))(&a1[v10], v8, v5);
  *&a1[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager] = 0;
  v11 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_authorizationTracker;
  type metadata accessor for TTRLocationAuthorizationTracker();
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59048, &qword_21DC2E820);
  swift_allocObject();
  *(v12 + 16) = sub_21DBF7D2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59050, &unk_21DC0AC10);
  swift_allocObject();
  v13 = sub_21DBF907C();
  *&a1[v11] = v12;
  *(v12 + 24) = v13;
  v14 = &a1[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = MEMORY[0x277D84F90];
  v16 = sub_21D0D72B0(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE631F8, &qword_21DC2EA80);
  sub_21DBF913C();
  swift_endAccess();
  v17 = sub_21D0D826C(v15);
  swift_beginAccess();
  v30 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE63208, &qword_21DC2EA88);
  sub_21DBF913C();
  swift_endAccess();
  *&a1[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve] = v15;
  swift_beginAccess();
  (*(v6 + 8))(&a1[v10], v5);
  v30 = 0;
  sub_21DBF913C();
  swift_endAccess();
  v18 = *v9;
  v19 = *(v9 + 1);
  v20 = *(v9 + 2);
  v21 = *(v9 + 3);
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 1) = v27;
  sub_21D0D73FC(v18, v19, v20, v21);
  v22 = type metadata accessor for TTRGeoLocationService(0);
  v29.receiver = a1;
  v29.super_class = v22;
  v23 = objc_msgSendSuper2(&v29, sel_init);
  v24 = sub_21D0DA280(v23, a2, v28);
  v25 = *&v23[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager];
  *&v23[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager] = v24;

  return v23;
}

unint64_t sub_21D0D826C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58290, &qword_21DC09060);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i = (i + 40))
    {
      v12 = i[1];
      v13 = *i;
      v5 = *(i - 1);
      sub_21D179D54(v13, *(&v13 + 1), v12, *(&v12 + 1));
      result = sub_21D17E8F8(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_21D0D83AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a5;
  result[4] = a2;
  return result;
}

uint64_t TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_21D0CF7E0(&v7, &qword_27CE5C690, &unk_21DC11AB0);
    return 2;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_21D0D8500()
{
  result = _UISolariumEnabled();
  byte_280D17220 = result;
  return result;
}

uint64_t sub_21D0D852C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 1;
  *(v2 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0, &qword_21DC17690);
  swift_allocObject();
  *(v2 + 56) = sub_21DBF5FDC();
  *(v2 + 64) = 0;
  swift_allocObject();
  *(v2 + 72) = sub_21DBF5FDC();
  swift_allocObject();
  *(v2 + 80) = sub_21DBF5FDC();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_allocObject();
  sub_21DBF8E0C();
  *(v2 + 64) = sub_21DBF5FDC();

  result = sub_21DBF5FBC();
  if (result)
  {
    v6 = result;

    *(v2 + 40) = v6;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTRModuleState.init(name:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D0D852C(a1, a2);

  return v2;
}

uint64_t sub_21D0D8680(uint64_t a1)
{
  result = sub_21DBFBA8C();
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

char *TTRICollectionViewPresentationTreeManagementPresenterCapability.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v3);
  *(v1 + 3) = 0;
  swift_unknownObjectWeakInit();
  (*(*(*(v2 + 80) - 8) + 56))(&v1[*(*v1 + 104)], 1, 1);
  *&v1[*(*v1 + 112)] = 0;
  v8 = *(*v1 + 120);
  sub_21D0CE468();
  v4 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v5 = swift_allocObject();
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D84F90];
  sub_21D0D8A98(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v5[5] = sub_21DBF5EEC();
  v5[6] = v6;
  v5[4] = v4;
  *&v1[v8] = v5;
  *&v1[*(*v1 + 128)] = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v5[3] = &protocol witness table for TTRICollectionViewPresentationTreeManagementPresenterCapability<A>;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_21D0D8A08(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D8A50(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D8A98(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D8AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D8B48(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D0D8CF0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21D0D8D4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF69DC();
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

uint64_t sub_21D0D8E04(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D8E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void destroy for TTRAccountListsMonitorableDataView.Data(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF69DC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a1 + *(a2 + 24));
}

uint64_t sub_21D0D8F2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24 = a1;
  v5 = sub_21DBF9D2C();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_21DBF9D5C();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21DBF9D8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v4 + *(*v4 + 112));
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_21DBF9DAC();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = *(*(v4 + *(*v4 + 128)) + 16);
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v24 & 1;
    aBlock[4] = v25;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v26;
    v21 = _Block_copy(aBlock);
    v22 = v19;

    sub_21DBF9D4C();
    v29 = MEMORY[0x277D84F90];
    sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v10, v7, v21);
    _Block_release(v21);

    (*(v28 + 8))(v7, v5);
    (*(v8 + 8))(v10, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D0D92F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D9340(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D9388(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D93D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D0D9418(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21D0D946C(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBA990, sub_21D43D358, &block_descriptor_1095);
  sub_21D0D3810(&unk_282EBA990, sub_21D0ECEB0, &block_descriptor_1084);
  sub_21D0D4BD0();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40D6EC(v18 & 1);
    *(v1 + 128) = 0;
  }
}

uint64_t sub_21D0D96B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_21D0D96F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(v3 + 108) == -1 && *(v3 + 64) == 1)
  {
    out_token = -1;
    v4 = *MEMORY[0x277D44CA8];
    v5 = *(v3 + 16);
    v8 = swift_allocObject();
    swift_weakInit();
    v10[4] = a2;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_21D0ECCF0;
    v10[3] = a3;
    v9 = _Block_copy(v10);

    LODWORD(v4) = notify_register_dispatch(v4, &out_token, v5, v9);
    _Block_release(v9);
    if (!v4 && out_token != -1)
    {
      *(v3 + 108) = out_token;
    }
  }
}

void sub_21D0D9834(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id TTRUserDefaults.streamSmartListDisplayOrder(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v8 = a1;
  *(v8 + 1) = a2;
  v27.receiver = v7;
  v27.super_class = v6;

  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v11 = *&v3[v10];
  if (*(v11 + 16) && (v12 = sub_21D0CEF70(0xD000000000000016, 0x800000021DC744F0), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v16 = v14;
    sub_21D0D9AC8(v14, 0xD000000000000016, 0x800000021DC744F0);
    swift_endAccess();
  }

  v17 = type metadata accessor for TTRUserDefaultsObserver();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = v3;
  v19 = &v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v19 = 0xD000000000000016;
  v19[1] = 0x800000021DC744F0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v9;
  v26.receiver = v18;
  v26.super_class = v17;
  v20 = v3;
  v21 = v9;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  if (v14)
  {
    [v14 addObject_];
  }

  v23 = *&v20[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v23)
  {
    v24 = sub_21DBFA12C();
    [v23 addObserver:v20 forKeyPath:v24 options:0 context:0];
  }

  return v22;
}

void sub_21D0D9AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_21D0D52A4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_21D0CEF70(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_21D224E44();
        v13 = v15;
      }

      sub_21D4B5A2C(v9, v13);
      *v4 = v13;
    }
  }
}

uint64_t sub_21D0D9BC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_21DBFC3EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
        sub_21DBF8E0C();
        v27 = v26;
      }

      sub_21DBFC7DC();
      sub_21DBFA27C();
      result = sub_21DBFC82C();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

id TTRUserDefaults.streamSmartListVisibility(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v8 = a1;
  *(v8 + 1) = a2;
  v27.receiver = v7;
  v27.super_class = v6;

  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v11 = *&v3[v10];
  if (*(v11 + 16) && (v12 = sub_21D0CEF70(0xD000000000000014, 0x800000021DC74510), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v16 = v14;
    sub_21D0D9AC8(v14, 0xD000000000000014, 0x800000021DC74510);
    swift_endAccess();
  }

  v17 = type metadata accessor for TTRUserDefaultsObserver();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = v3;
  v19 = &v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v19 = 0xD000000000000014;
  v19[1] = 0x800000021DC74510;
  *&v18[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v9;
  v26.receiver = v18;
  v26.super_class = v17;
  v20 = v3;
  v21 = v9;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  if (v14)
  {
    [v14 addObject_];
  }

  v23 = *&v20[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v23)
  {
    v24 = sub_21DBFA12C();
    [v23 addObserver:v20 forKeyPath:v24 options:0 context:0];
  }

  return v22;
}

void sub_21D0DA0CC(uint64_t a1)
{
  sub_21D0D7194(319, &qword_280D17940, &unk_27CE631F8, &qword_21DC2EA80);
  if (v1 <= 0x3F)
  {
    sub_21D0D7194(319, &unk_280D17930, &unk_27CE63208, &qword_21DC2EA88);
    if (v2 <= 0x3F)
    {
      sub_21D0D7194(319, &unk_280D17920, qword_27CE63218, &qword_21DC2EAA8);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

id sub_21D0DA280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v5 = sub_21DBFB12C();
  v6 = 0x277CBF000uLL;
  if (!a3)
  {
    goto LABEL_4;
  }

  v7 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v8 = sub_21DBFA12C();
  v9 = [v7 initWithEffectiveBundleIdentifier:v8 delegate:a1 onQueue:v5];

  if (!v9)
  {
    __break(1u);
LABEL_4:
    v9 = [objc_allocWithZone(*(v6 + 3088)) init];
    [v9 setDelegate_];
  }

  return v9;
}

unint64_t sub_21D0DA37C()
{
  result = qword_280D15118;
  if (!qword_280D15118)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.ModelCreationOption, &type metadata for TTRAccountsListsViewModel.ModelCreationOption, v0, v1);
    atomic_store(result, &qword_280D15118);
  }

  return result;
}

unint64_t sub_21D0DA3D0()
{
  result = qword_280D15128;
  if (!qword_280D15128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.ModelCreationOption, &type metadata for TTRAccountsListsViewModel.ModelCreationOption, v0, v1);
    atomic_store(result, &qword_280D15128);
  }

  return result;
}

unint64_t sub_21D0DA424()
{
  result = qword_280D15110;
  if (!qword_280D15110)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.ModelCreationOption, &type metadata for TTRAccountsListsViewModel.ModelCreationOption, v0, v1);
    atomic_store(result, &qword_280D15110);
  }

  return result;
}

unint64_t sub_21D0DA49C()
{
  result = qword_280D0C3D0;
  if (!qword_280D0C3D0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5CD90, &unk_21DC0F180);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280D0C3D0);
  }

  return result;
}

void *sub_21D0DA550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v18 = a7;
  v19 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a1, a7);
  sub_21D0D0FD0(&v17, (a6 + 2));
  a6[7] = a2;
  a6[8] = a3;
  a6[9] = a4;
  a6[10] = a5;
  return a6;
}

void sub_21D0DA63C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21D0DA6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D0DA74C(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for TTRTreeStorageTemporaryNodeLocation(319, v4, a1[4], v5);
      if (v7 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void sub_21D0DA894(uint64_t a1, void *a2, uint64_t *a3)
{
  v80 = a2;
  v81 = a3;
  v69 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v72 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v65 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30);
  MEMORY[0x28223BE20](v79);
  v71 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v65 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = MEMORY[0x277D84F90];
    v75 = *(v12 + 72);
    v73 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
    if (MEMORY[0x277D84F90] < 0)
    {
      v19 = MEMORY[0x277D84F90];
    }

    else
    {
      v19 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
    }

    v65[1] = v19;
    v13.n128_u64[0] = 136315138;
    v66 = v13;
    v67 = v7;
    while (1)
    {
      v78 = v16;
      sub_21D0D3954(v17, v15, &qword_27CE58180, &unk_21DC08F30);
      v20 = v76;
      sub_21D10562C(v15, v76, type metadata accessor for TTRAccountsListsViewModel.Item);
      v21 = &v15[*(v79 + 52)];
      v22 = *v21;
      v23 = v21[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D4C0, &unk_21DC19870);
      v24 = swift_allocObject();
      *(v24 + *(*v24 + 136)) = v18;
      swift_weakInit();
      v25 = qword_280D16A40++;
      v24[2] = v25;
      sub_21D105A3C(v20, v24 + *(*v24 + 120), type metadata accessor for TTRAccountsListsViewModel.Item);
      v26 = v24 + *(*v24 + 128);
      *v26 = v22;
      v26[8] = v23;
      sub_21D105AA4(v22, v23);

      v28 = v80;
      MEMORY[0x223D42D80](v27);
      if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v29 = v15;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v7);
      v30 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82[0] = *v30;
      v32 = v82[0];
      v33 = sub_21D105CF4(v7);
      v35 = *(v32 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        break;
      }

      v39 = v34;
      if (*(v32 + 24) >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = v33;
          sub_21D2260CC();
          v33 = v64;
        }
      }

      else
      {
        sub_21D1062DC(v38, isUniquelyReferenced_nonNull_native);
        v33 = sub_21D105CF4(v7);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_32;
        }
      }

      v15 = v29;
      v41 = v82[0];
      if (v39)
      {
        v74 = v17;
        v42 = *(v82[0] + 56);
        v77 = *(v42 + 8 * v33);
        *(v42 + 8 * v33) = v24;
        *v81 = v41;
        sub_21D1070F8(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        if (qword_27CE56620 != -1)
        {
          swift_once();
        }

        v43 = sub_21DBF84BC();
        __swift_project_value_buffer(v43, qword_27CE5A918);
        v44 = v71;
        sub_21D0D3954(v29, v71, &qword_27CE58180, &unk_21DC08F30);
        v45 = sub_21DBF84AC();
        v46 = sub_21DBFAECC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v70 = v47;
          v48 = v44;
          v49 = swift_slowAlloc();
          v82[0] = v49;
          *v47 = v66.n128_u32[0];
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v68);
          v50 = sub_21DBFA1AC();
          v52 = v51;
          sub_21D0CF7E0(v48, &qword_27CE58180, &unk_21DC08F30);
          v53 = sub_21D0CDFB4(v50, v52, v82);
          v7 = v67;

          v54 = v70;
          *(v70 + 1) = v53;
          v55 = v54;
          _os_log_impl(&dword_21D0C9000, v45, v46, "item ID is not unique {treeItemIdentifier: %s}", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x223D46520](v49, -1, -1);
          MEMORY[0x223D46520](v55, -1, -1);
        }

        else
        {

          sub_21D0CF7E0(v44, &qword_27CE58180, &unk_21DC08F30);
        }

        v15 = v29;
        v17 = v74;
      }

      else
      {
        *(v82[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v56 = v33;
        sub_21D10562C(v7, v41[6] + *(v72 + 72) * v33, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        *(v41[7] + 8 * v56) = v24;
        v57 = v41[2];
        v37 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v37)
        {
          goto LABEL_31;
        }

        v41[2] = v58;
        *v81 = v41;
        sub_21D1070F8(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v77 = 0;
      }

      v59 = *&v15[*(v79 + 56)];
      v18 = MEMORY[0x277D84F90];
      if (*(v59 + 16))
      {
        if (MEMORY[0x277D84F90] >> 62)
        {
          sub_21DBFBD7C();
        }

        v82[0] = sub_21DBFBF9C();
        sub_21D0DA894(v59, v82, v81);
        v60 = v82[0];
        v61 = *(*v24 + 136);
        swift_beginAccess();
        v62 = sub_21DBF8E0C();
        sub_21D107550(v62);

        *(v24 + v61) = v60;

        v63 = sub_21DBF8E0C();
        sub_21D107568(v63, v24);
      }

      else
      {
      }

      sub_21D0CF7E0(v15, &qword_27CE58180, &unk_21DC08F30);
      v17 += v75;
      v16 = v78 - 1;
      if (v78 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_21DBFC70C();
    __break(1u);
  }
}

uint64_t storeEnumTagSinglePayload for TTRPermissionConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21D0DB414(a2, aBlock);
  v10 = v25;
  if (v25)
  {
    v11 = __swift_project_boxed_opaque_existential_1(aBlock, v25);
    v12 = *(v10 - 1);
    v13 = MEMORY[0x28223BE20](v11);
    v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_21DBFC62C();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    v16 = 0;
  }

  v26 = a4;
  v27 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0EE46C;
  v25 = &block_descriptor_138;
  v17 = _Block_copy(aBlock);

  v18 = [v5 addObserverForName:a1 object:v16 queue:a3 usingBlock:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  sub_21DBF902C();
  swift_allocObject();
  v22 = sub_21DBF903C();
  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_21D0DB398()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D0DB3D0()
{

  return swift_deallocObject();
}

uint64_t sub_21D0DB414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRAccountsListsPresenterCapability.init(contactsProvider:)(__int128 *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = MEMORY[0x277D84F98];
  sub_21D0D0FD0(a1, v1 + 40);
  return v1;
}

uint64_t TTRAccountsListsPresenterCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStateDidChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_21D0D0E88(v5, v6);
}

uint64_t TTRAccountsListsInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t TTRStartupItemQueue.init()()
{
  type metadata accessor for TTRStartupItemQueue.UnprocessedStartupItems();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return v0;
}

void *TTRUndoNavigationPresenterCapability.init(undoManager:)(void *a1)
{
  v2 = v1;
  v3 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v3);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v1[6] = 0;
  v1[7] = 0;
  v1[5] = 0;
  v4 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v5 = swift_allocObject();
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v5[5] = sub_21DBF5EEC();
  v5[6] = v6;
  v5[4] = v4;
  v1[4] = v5;
  swift_beginAccess();
  v5[3] = &protocol witness table for TTRUndoNavigationPresenterCapability;
  swift_unknownObjectWeakAssign();
  v7 = a1;
  NSUndoManager.undoActionNotificationSubject.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDE0, &qword_21DC2B8B0);
  sub_21D0D0F1C(&qword_280D0C478, &qword_27CE5BDE0, &qword_21DC2B8B0, MEMORY[0x277CBCE20]);
  v8 = sub_21DBF91AC();

  v2[5] = v8;

  return v2;
}

uint64_t TTRStartupItemQueue.enqueueItem<A, B>(startupContext:target:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TargetActionStartupItem(0, v19, v17, v18);
  (*(v14 + 16))(v16, a1, a5);
  swift_allocObject();
  swift_unknownObjectRetain();

  v21 = sub_21D0DBBE0(v16, a2, a3, a4, a6);
  swift_unknownObjectRelease();
  WitnessTable = swift_getWitnessTable("x/\b", v20);
  sub_21D0DBD38(v21, v7, v20, WitnessTable);
}

uint64_t TTRStartupItemQueue.enqueueItem<A>(target:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;

  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:target:action:)(v9, a1, &unk_21DC17488, v8, MEMORY[0x277D84F78] + 8, a4);
}

uint64_t sub_21D0DBB90()
{

  return swift_deallocObject();
}

uint64_t sub_21D0DBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*v5 + 80);
  (*(*(v9 - 8) + 32))(v5 + *(*v5 + 88), a1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a5;
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;
  v12 = (v5 + *(*v5 + 96));
  *v12 = &unk_21DC176A0;
  v12[1] = v11;
  return v5;
}

uint64_t sub_21D0DBCFC()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

void sub_21D0DBD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  swift_beginAccess();
  v8 = *(v7 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_21D0E6BE4(0, v8[2] + 1, 1, v8);
    *(v7 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_21D0E6BE4((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = a1;
  v12[5] = a4;
  *(v7 + 16) = v8;
  swift_endAccess();
  swift_unknownObjectRetain();

  if (*(a2 + 32) == 1)
  {
    sub_21D483238();
  }
}

void *sub_21D0DBE40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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

void sub_21D0DBFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D0DC020(uint64_t a1)
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

void static TTRIDebugMenuManager.startIfNeeded(attachingToStatusBarWith:makeDebugMenuViewController:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 windowScene];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 statusBarManager];

    if (v8)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a2;
      v10[4] = a3;
      v10[5] = v3;
      v12[4] = sub_21D87745C;
      v12[5] = v10;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_21D0D74FC;
      v12[3] = &block_descriptor_102;
      v11 = _Block_copy(v12);

      [v8 setDebugMenuHandler_];
      _Block_release(v11);
    }
  }
}

uint64_t sub_21D0DC244()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D0DC27C()
{

  return swift_deallocObject();
}

void TTRUserDefaults.activitySessionId.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_21DBFA12C();
    [v3 setObject:v4 forKey:v5];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t TTRUserDefaults.activitySessionBeginTime.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    sub_21D0D3954(a1, v5, &qword_27CE58D68, &unk_21DC0C060);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v5, v7);
    }

    v10 = sub_21DBFA12C();
    [v6 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D68, &unk_21DC0C060);
}

uint64_t sub_21D0DC534(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t TTRWidgetRefresher.setUpSubscriptionToReloadWidgetTimelinesUponStoreChange<A>(refreshScheduler:debounceInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a1;
  v53 = a2;
  v54 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_21DBF621C();
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21D0DCAE0(&qword_280D0C820, MEMORY[0x277D44ED0], MEMORY[0x277D44EC8]);
  v44 = v12;
  v55 = v12;
  v56 = a3;
  v42 = v15;
  v57 = v15;
  v58 = a4;
  v16 = sub_21DBF8FEC();
  v47 = *(v16 - 8);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v38 - v18;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CBCD60], v16, v17);
  v48 = v16;
  v55 = v16;
  v56 = a3;
  v41 = WitnessTable;
  v57 = WitnessTable;
  v58 = a4;
  v21 = sub_21DBF8FAC();
  v45 = *(v21 - 8);
  v46 = v21;
  MEMORY[0x28223BE20](v21);
  v43 = &v38 - v22;
  if (qword_280D0F2E0 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_280D0F2E8);
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEDC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_21D0C9000, v24, v25, "TTRWidgetRefresher will start subscription to reload widget timelines upon store change", v26, 2u);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  TTRWidgetRefresher.tearDownSubscriptionToReloadWidgetTimelinesUponStoreChange()();
  sub_21DBFA2FC();
  sub_21D0DCC30();
  sub_21DBF620C();
  v27 = *(AssociatedTypeWitness - 8);
  v39 = *(v27 + 56);
  v40 = v27 + 56;
  v39(v11, 1, 1, AssociatedTypeWitness);
  v28 = v44;
  sub_21DBF936C();
  v38 = a4;
  v42 = v5;
  v29 = *(v50 + 8);
  v30 = AssociatedTypeWitness;
  v31 = v51;
  v29(v11, v51);
  (*(v49 + 8))(v14, v28);
  v39(v11, 1, 1, v30);
  v32 = v43;
  v33 = v48;
  sub_21DBF937C();
  v29(v11, v31);
  (*(v47 + 8))(v19, v33);
  v34 = v46;
  swift_getWitnessTable(MEMORY[0x277CBCCF8], v46);
  v35 = v42;
  v36 = sub_21DBF91AC();
  (*(v45 + 8))(v32, v34);
  *(v35 + 24) = v36;
}

uint64_t sub_21D0DCAE0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

Swift::Void __swiftcall TTRWidgetRefresher.tearDownSubscriptionToReloadWidgetTimelinesUponStoreChange()()
{
  if (*(v0 + 24))
  {
    *(v0 + 24) = 0;

    if (qword_280D0F2E0 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_280D0F2E8);
    oslog = sub_21DBF84AC();
    v2 = sub_21DBFAEDC();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v2, "TTRWidgetRefresher did stop subscription to reload widget timelines upon store change", v3, 2u);
      MEMORY[0x223D46520](v3, -1, -1);
    }
  }
}

uint64_t sub_21D0DCC30()
{
  v0 = sub_21DBFB11C();
  v13 = *(v0 - 8);
  v14 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21DBF9D3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CE468();
  v15 = sub_21DBF621C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59FC8, &qword_21DC0D998);
  v9 = sub_21DBFA1CC();
  v12[1] = v10;
  v12[2] = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  sub_21DBFB15C();
  (*(v6 + 8))(v8, v5);
  sub_21DBF9D4C();
  v15 = MEMORY[0x277D84F90];
  sub_21D0DCAE0(&qword_280D17808, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
  sub_21D0DED40();
  sub_21DBFBCBC();
  (*(v13 + 104))(v2, *MEMORY[0x277D85260], v14);
  return sub_21DBFB14C();
}

uint64_t sub_21D0DCFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void *TTRICollectionViewCollapsedStatesPresenterCapability.init(loggingPrefix:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v7);
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  v3[7] = sub_21DBF9E4C();
  *(v3 + 64) = 1;
  type metadata accessor for TTRICollectionViewCollapsedStatesPresenterCapability.States(0, v8, v9, v10);
  v3[9] = sub_21DBF9E3C();
  sub_21D0CE468();
  v11 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v12 = swift_allocObject();
  v12[3] = 0;
  swift_unknownObjectWeakInit();
  v13 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v12[5] = sub_21DBF5EEC();
  v12[6] = v13;
  v12[4] = v11;
  v3[10] = v12;
  v3[11] = 0;
  v3[5] = a1;
  v3[6] = a2;
  swift_beginAccess();
  v12[3] = &protocol witness table for TTRICollectionViewCollapsedStatesPresenterCapability<A>;
  swift_unknownObjectWeakAssign();
  return v3;
}

unint64_t sub_21D0DD20C()
{
  result = qword_280D0C860;
  if (!qword_280D0C860)
  {
    v3 = sub_21DBF5EDC();
    result = swift_getWitnessTable(MEMORY[0x277D44D18], v3, v0, v1);
    atomic_store(result, &qword_280D0C860);
  }

  return result;
}

void *TTRTimeZoneOverrideMenuPresenterCapability.init(userDefaults:defaultTimeZone:currentTimeZone:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_21D0DA550(v16, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

void sub_21D0DD388(uint64_t a1)
{
  sub_21D0DA6A0(319, &qword_280D19B10, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21D0DD47C(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TTRAccountsListsViewModel.SmartList(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TTRAccountsListsViewModel.Hashtags(319);
          if (v6 <= 0x3F)
          {
            swift_initEnumMetadataMultiPayload();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21D0DD640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21DBF56BC();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D0DD700(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_21D0DD7E4(uint64_t a1)
{
  sub_21DBF56BC();
  if (v1 <= 0x3F)
  {
    sub_21D0DA6A0(319, qword_280D14D80, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t TTRAccountsListsViewModel.init()()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_maximumItemCountInPinnedListsSection) = 9;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_21D0DDA78(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C18, &qword_21DC364F8);
  v3 = swift_allocObject();
  v11 = v1;
  v10 = MEMORY[0x277D84F98];
  sub_21D0DA894(v1, &v11, &v10);
  v4 = v10;
  v3[2] = v11;
  v3[3] = v4;
  v3[4] = v2;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree) = v3;
  *(v0 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability) = sub_21D0DDE70(v1);
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  *v5 = v1;
  *(v5 + 8) = 0;
  v6 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems) = v1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities) = 0;
  return v0;
}

unint64_t sub_21D0DDA78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58190, &qword_21DC08F40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58198, &qword_21DC08F48);
    v7 = sub_21DBFC40C();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v8, v5, &qword_27CE58190, &qword_21DC08F40);
      result = sub_21D105CF4(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
      sub_21D17A79C(v5, v13 + *(*(v14 - 8) + 72) * v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A0, &unk_21DC08F50);
      result = sub_21D0D523C(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &qword_27CE581A0, &unk_21DC08F50);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21D0DDCA0(uint64_t a1)
{
  result = sub_21DBFBA8C();
  if (v2 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v3[5] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D0DDD94(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21D0DDE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58188, &unk_21DC0CC20);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_21D10186C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

char *static TTRGeoLocationService.newService(authorizationSource:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v8 = a1[1];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v7 = sub_21DBFB12C();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = sub_21DBF9DAC();
  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    v11 = objc_allocWithZone(v2);
    sub_21DBF8E0C();
    v12 = sub_21D0D7EE0(v11, v9, v8);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *NSUndoManager.undoActionNotificationSubject.getter()
{
  v1 = v0;
  if (qword_280D0E718 != -1)
  {
    swift_once();
  }

  v2 = qword_280D0E720;
  if (objc_getAssociatedObject(v0, qword_280D0E720))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_21D0CF7E0(v8, &qword_27CE5C690, &unk_21DC11AB0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDE0, &qword_21DC2B8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDE0, &qword_21DC2B8B0);
    swift_allocObject();
    v3 = sub_21DBF907C();
    objc_setAssociatedObject(v1, v2, v3, 1);
    return v3;
  }

  return v5;
}

uint64_t TTRUndoNavigationPresenterCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_21D0DE2C4(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionID(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void sub_21D0DE3A0(uint64_t a1)
{
  sub_21D0DBFB4(319, &qword_280D193C8, type metadata accessor for TTRRemindersListViewModel.SectionID);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = type metadata accessor for PromiseBasedStartupItem(0, a4, a5, a4);
  swift_allocObject();

  v11 = sub_21D0DE53C(a1, a2, a3);
  WitnessTable = swift_getWitnessTable(byte_21DC17620, v10);
  sub_21D0DBD38(v11, v6, v10, WitnessTable);
  if (*(v11 + *(*v11 + 104)))
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_21D0DE53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *v3;
  *(v3 + *(v7 + 104)) = 0;
  v9 = *(*v3 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0, &qword_21DC17690);
  swift_allocObject();
  *(v3 + v9) = sub_21DBF5FDC();
  v10 = *(v7 + 80);
  (*(*(v10 - 8) + 16))(v3 + *(*v3 + 96), a1, v10);
  result = sub_21DBF5FBC();
  if (result)
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v10;
    v14 = *(v8 + 88);
    v13[3] = v14;
    v13[4] = v12;
    v13[5] = a2;
    v13[6] = a3;
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = v14;
    v15[4] = sub_21D0F14F4;
    v15[5] = v13;

    v16 = sub_21DBF816C();
    v17 = sub_21DBF81FC();

    *(v3 + *(*v3 + 104)) = v17;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D0DE764()
{

  return swift_deallocObject();
}

uint64_t TTRProcessEnvironment.targetNavigationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = *v1;
  if (*(v6 + 16) && (v7 = sub_21D0CEF70(0xD000000000000019, 0x800000021DC44420), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];
    sub_21DBF8E0C();
    sub_21DBF54BC();
    v12 = sub_21DBF54CC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {
      sub_21D0CF7E0(v5, &qword_27CE5EA20, &qword_21DC0D4A0);
      if (qword_27CE56548 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_27CE58358);
      sub_21DBF8E0C();
      v15 = sub_21DBF84AC();
      v16 = sub_21DBFAECC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315138;
        v19 = sub_21D0CDFB4(v11, v10, &v24);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_21D0C9000, v15, v16, "Provided targetNavigationURLKey is not a valid URL {urlString: %s}", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x223D46520](v18, -1, -1);
        MEMORY[0x223D46520](v17, -1, -1);
      }

      else
      {
      }

      return (*(v13 + 56))(a1, 1, 1, v12);
    }

    else
    {

      (*(v13 + 32))(a1, v5, v12);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  else
  {
    v20 = sub_21DBF54CC();
    v21 = *(*(v20 - 8) + 56);

    return v21(a1, 1, 1, v20);
  }
}

uint64_t TTRUserActivityType.activityType.getter()
{
  if (*v0)
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v1 = qword_280D19F88;
    sub_21DBF8E0C();

    v6 = v1;
    v2 = 0x746976697463612ELL;
    v3 = 0xEE007473696C2E79;
  }

  else
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v4 = qword_280D19F88;
    sub_21DBF8E0C();

    v6 = v4;
    v3 = 0x800000021DC66080;
    v2 = 0xD000000000000020;
  }

  MEMORY[0x223D42AA0](v2, v3);
  return v6;
}

uint64_t sub_21D0DEC30()
{
  result = sub_21DBFA16C();
  qword_280D19F88 = result;
  *algn_280D19F90 = v1;
  return result;
}

uint64_t sub_21D0DEC64(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D0DEC78()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F2E8);
  v1 = __swift_project_value_buffer(v0, qword_280D0F2E8);
  if (qword_280D0C8A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_21D0DED40()
{
  result = qword_280D178C0;
  if (!qword_280D178C0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE60F00, &unk_21DC0D9A0);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280D178C0);
  }

  return result;
}

uint64_t static Locale.remPreferredLocalizations.getter()
{
  v0 = sub_21DBF582C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  sub_21DBF57AC();
  v5 = sub_21DBF570C();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  return v4;
}

uint64_t sub_21D0DEEF8(uint64_t a1)
{
  result = sub_21DBF85DC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D0DEFF4(uint64_t a1)
{
  result = sub_21DBFBA8C();
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

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.init(collectionView:cellProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v3) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource) - 8) + 56))(&v3[*((*MEMORY[0x277D85000] & *v3) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 16)], 1, 1);
  v3[*((*v5 & *v3) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 24)] = 0;
  v3[*((*v5 & *v3) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 32)] = 0;
  *&v3[*((*v5 & *v3) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 40)] = a1;
  v6 = a1;

  return sub_21DBF8BBC();
}

uint64_t sub_21D0DF280(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 32);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21D0DF324(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *TTRICollectionViewPresentationTreeManagementViewCapability.init(diffableDataSource:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[4] = 0;
  v5 = v1 + 4;
  v6 = v4[12];
  v7 = v4[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_21DBF9E4C();
  v2[5] = a1;
  v2[6] = v10;
  v11 = v4[11];
  v12 = v4[13];
  v14 = type metadata accessor for TTRCollectionViewItemObservedViewModel(255, v11, v12, v13);
  type metadata accessor for TTRObservableViewModelCollection(0, v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *&v17 = v7;
  *(&v17 + 1) = v11;
  *&v18 = v6;
  *(&v18 + 1) = v12;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  *(v16 + 48) = v15;
  v19 = TTRObservableViewModelCollection.__allocating_init(makeViewModel:)(sub_21D10BC84, v16);
  swift_beginAccess();
  *v5 = v19;

  return v2;
}

uint64_t sub_21D0DF64C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D0DF684()
{

  return swift_deallocObject();
}

uint64_t sub_21D0DF71C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRObservableViewModelCollection.__allocating_init(makeViewModel:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRObservableViewModelCollection.init(makeViewModel:)(a1, a2, v5, v6);
  return v4;
}

void *TTRObservableViewModelCollection.init(makeViewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRObservableViewModel(0, *(*v4 + 80), a3, a4);
  v7 = sub_21DBF9E2C();
  v4[3] = a2;
  v4[4] = v7;
  v4[2] = a1;
  return v4;
}

uint64_t sub_21D0DF924(uint64_t a1)
{
  result = sub_21DBFBA8C();
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

uint64_t TTRICollectionViewPresentationTreeManagementViewCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void *TTRTreeViewCollapsedStatesUserDefaultsPersistence.__allocating_init(autosaveName:userDefaults:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  v8 = (*(v7 + 8))(a1, a2, v6, v7);
  v9 = TTRTreeViewCollapsedStatesUserDefaultsPersistence.__allocating_init(observableProperty:loggingDescription:)(v8, a1, a2);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v9;
}

void *TTRUserDefaults.observablePropertyForTreeViewCollapsedStatesData(forAutosaveName:)(uint64_t a1, uint64_t a2)
{
  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](a1, a2);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = 0xD00000000000001CLL;
  v5[4] = 0x800000021DC747C0;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = 0xD00000000000001CLL;
  v6[4] = 0x800000021DC747C0;
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = 0xD00000000000001CLL;
  v7[4] = 0x800000021DC747C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65198, &qword_21DC383B0);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[9] = v7;
  v8[10] = 0;
  v8[4] = sub_21D0E0C20;
  v8[5] = v5;
  v8[6] = sub_21DA5FD1C;
  v8[7] = v6;
  v8[8] = sub_21D0E0B84;
  v9 = v2;
  swift_bridgeObjectRetain_n();
  v10 = v9;
  return v8;
}

void *TTRTreeViewCollapsedStatesUserDefaultsPersistence.__allocating_init(observableProperty:loggingDescription:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = *(v9 + 80);
  v3[2] = sub_21D0DFEF4(v11, v10, a2, a3);
  v3[3] = v12;
  v3[4] = sub_21D0E0024(a1, v10, a2, a3);
  v3[5] = v13;
  v14 = *(v7 + 32);
  v14(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v10;
  *(v16 + 3) = a2;
  *(v16 + 4) = a3;
  v14(&v16[v15], &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v3[6] = sub_21D0E0578;
  v3[7] = v16;
  return v3;
}

uint64_t (*sub_21D0DFEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_21D0E0BB8;
}

uint64_t (*sub_21D0E0024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_21D4F5E48;
}

uint64_t sub_21D0E0168(uint64_t a1)
{
  sub_21D0E01A0(a1);
}

uint64_t sub_21D0E01A0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return sub_21D0E0200();
}

uint64_t sub_21D0E0200()
{
  v1 = *v0;
  sub_21D0E0358();
  swift_beginAccess();
  if (v0[4])
  {

    TTRAnyTreeViewCollapsedStatesPersisting.fetchCollapsedTreeViewItemIDs()();
  }

  else
  {
    v3 = *(v1 + 80);
    v4 = sub_21DBFA68C();
    if (sub_21DBFA6DC())
    {
      sub_21D495A08(v4, v3, *(v1 + 88));
    }
  }

  MEMORY[0x28223BE20](v2);
  sub_21D0E1048(sub_21D258BAC, 0, sub_21D0E1178);
}

uint64_t sub_21D0E0358()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v0[4];
  if (v3)
  {

    v4 = TTRAnyTreeViewCollapsedStatesPersisting.collapsedTreeViewItemIDsChangePublisher.getter();

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = *(v2 + 80);
    v6[3] = *(v2 + 88);
    v6[4] = v5;
    sub_21DBFABAC();
    v7 = sub_21DBF900C();
    swift_getWitnessTable(MEMORY[0x277CBCD90], v7, v4);
    v3 = sub_21DBF92AC();
  }

  v1[11] = v3;
}

uint64_t sub_21D0E04E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D0E0518()
{

  return swift_deallocObject();
}

uint64_t TTRTreeViewCollapsedStatesUserDefaultsPersistence.collapsedTreeViewItemIDsChangePublisher.getter()
{
  v1 = *v0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A358, &qword_21DC18F00);
  v2 = v1[10];
  v3 = v1[13];
  v13 = sub_21DBFABAC();
  v12 = sub_21D0E08B0();
  v4 = sub_21DBF8F1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v15 = sub_21D0E0914();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v1[11];
  v9[4] = v1[12];
  v9[5] = v3;
  v9[6] = v8;
  sub_21DBF921C();

  swift_getWitnessTable(MEMORY[0x277CBCB10], v4, v12, v13, v14);
  v10 = sub_21DBF920C();
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_21D0E0840()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D0E0878()
{

  return swift_deallocObject();
}

unint64_t sub_21D0E08B0()
{
  result = qword_280D0C480;
  if (!qword_280D0C480)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A358, &qword_21DC18F00);
    result = swift_getWitnessTable(MEMORY[0x277CBCD90], v3, v0, v1);
    atomic_store(result, &qword_280D0C480);
  }

  return result;
}

id sub_21D0E0964(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TTRUserDefaultsObservingBlock();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v12 = a1;
  *(v12 + 1) = a2;
  v31.receiver = v11;
  v31.super_class = v10;

  v13 = objc_msgSendSuper2(&v31, sel_init);
  v14 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v15 = *&a3[v14];
  if (*(v15 + 16) && (v16 = sub_21D0CEF70(a4, a5), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
    v19 = v18;
  }

  else
  {
    swift_endAccess();
    v18 = [objc_allocWithZone(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:8];
    swift_beginAccess();
    v20 = v18;
    sub_21DBF8E0C();
    sub_21D0D9AC8(v18, a4, a5);
    swift_endAccess();
  }

  v21 = type metadata accessor for TTRUserDefaultsObserver();
  v22 = objc_allocWithZone(v21);
  v22[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v22[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a3;
  v23 = &v22[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v23 = a4;
  v23[1] = a5;
  *&v22[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = v13;
  v30.receiver = v22;
  v30.super_class = v21;
  sub_21DBF8E0C();
  v24 = a3;
  v25 = v13;
  v26 = objc_msgSendSuper2(&v30, sel_init);
  if (v18)
  {
    [v18 addObject_];
  }

  v27 = *&v24[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v27)
  {
    v28 = sub_21DBFA12C();
    [v27 addObserver:v24 forKeyPath:v28 options:0 context:0];
  }

  return v26;
}

uint64_t _s15RemindersUICore49TTRTreeViewCollapsedStatesUserDefaultsPersistenceC05fetche4TreeD7ItemIDsShyxGyF_0()
{
  v1 = *v0;
  (v0[2][4])(&v9);
  v2 = v10;
  if (v10 >> 60 == 15)
  {
    return sub_21D0E0FD0(v1[10], v1[11], v1[12], v1[13]);
  }

  v4 = v9;
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  v5 = v1[11];
  v7 = v1[12];
  v6 = v1[13];
  v9 = v1[10];
  v10 = v5;
  v11 = v7;
  v12 = v6;
  v8 = type metadata accessor for TTRTreeViewCollapsedStatesUserDefaultsPersistence.CodableItemIDs(0, &v9);
  swift_getWitnessTable(asc_21DC190E0, v8);
  sub_21DBF51EC();

  sub_21D1BAF38(v4, v2);
  return v13;
}

void sub_21D0E0F3C(uint64_t a1@<X0>, void *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = sub_21DBFA12C();
  v7 = [v5 dataForKey_];

  if (!v7)
  {
    v5 = 0;
LABEL_5:
    v9 = 0xF000000000000000;
    goto LABEL_6;
  }

  v5 = sub_21DBF551C();
  v9 = v8;

LABEL_6:
  *a4 = v5;
  a4[1] = v9;
}

uint64_t sub_21D0E0FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    v7 = sub_21D495A08(v6, a1, a4);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  return v7;
}

void sub_21D0E1048(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void (*a3)(uint64_t *))
{
  swift_beginAccess();
  swift_beginAccess();
  sub_21DBF8E0C();
  a3((v3 + 56));
  swift_endAccess();
  sub_21DBF8E0C();
  LOBYTE(a3) = sub_21DBFAADC();

  if ((a3 & 1) == 0)
  {
    a1(&v9, v6);
    v7 = v9;
    v8 = BYTE2(v9);
    sub_21D259EAC(&v7);
  }
}

uint64_t sub_21D0E117C(void *a1)
{
  v3 = *(v1 + 32);

  *a1 = v3;

  return sub_21DBF8E0C();
}

uint64_t destroy for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(void *a1)
{
}

double sub_21D0E1204(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 216) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 218) = 1;
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
      result = 0.0;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 112) = 0;
      *(a1 + 120) = 2 * -a2;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 202) = 0u;
      return result;
    }

    *(a1 + 218) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TTRObservableViewModel.init(value:)(uint64_t a1)
{
  v2 = v1;
  (*(*(*(*v1 + 80) - 8) + 56))(v1 + *(*v1 + 88), 1, 1, *(*v1 + 80));
  v4 = *(*v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  swift_allocObject();
  *(v1 + v4) = sub_21DBF907C();
  v5 = *(*v1 + 88);
  swift_beginAccess();
  v6 = sub_21DBFBA8C();
  (*(*(v6 - 8) + 40))(v2 + v5, a1, v6);
  swift_endAccess();
  return v2;
}

uint64_t sub_21D0E1400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 218))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_21D0E1468(uint64_t a1)
{
  result = sub_21DBF56BC();
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

void *TTRICollectionViewDragAndDropCoordinator.init(rootView:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v17 = a1;
  v18 = v3;
  v4 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v4);
  v15 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[4] = 0;
  v1[5] = 0;
  sub_21DBF56AC();
  v16 = qword_280D0F008;
  type metadata accessor for TTRICollectionViewDragAndDropActivityTracker();
  v6 = swift_allocObject();
  v6[2] = [objc_opt_self() hashTableWithOptions_];
  v6[3] = [objc_opt_self() hashTableWithOptions_];
  v6[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  swift_allocObject();
  v6[5] = sub_21DBF907C();
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v7 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v8 = swift_allocObject();
  v8[3] = 0;
  swift_unknownObjectWeakInit();
  v20 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v9 = sub_21DBF5EEC();
  v10 = MEMORY[0x277D84F90];
  v8[5] = v9;
  v8[6] = v10;
  v8[4] = v7;
  v6[6] = v8;
  swift_beginAccess();
  v8[3] = &protocol witness table for TTRICollectionViewDragAndDropActivityTracker;
  swift_unknownObjectWeakAssign();
  v11 = v17;
  *(v2 + v16) = v6;
  *(v2 + qword_280D0F040) = 0;
  *(v2 + qword_280D0F018) = 0;
  *(v2 + qword_280D0F038) = 0;
  *(v2 + qword_280D0F030) = 0;
  *(v2 + qword_280D0F028) = 0;
  *(v2 + qword_280D0F020) = v11;
  v19 = v6[5];
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE20]);
  v12 = v11;
  v19 = sub_21DBF920C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A358, &qword_21DC18F00);
  sub_21D0D0F1C(&qword_280D0C480, &qword_27CE5A358, &qword_21DC18F00, MEMORY[0x277CBCD90]);
  v13 = sub_21DBF91AC();

  *(v2 + qword_280D0F028) = v13;

  return v2;
}

uint64_t TTRICollectionViewDragAndDropCoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id TTRICollectionViewDragAndDropController.init(collectionView:diffableDataSource:coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[qword_27CE61510];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v5[qword_27CE61518 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_27CE61520] = a1;
  v13 = &v5[qword_27CE61528];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = &v5[qword_27CE61530];
  *v14 = a4;
  *(v14 + 1) = a5;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t TTRICollectionViewDragAndDropController.dragPreviewParametersProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE61510);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6, v7);
}

id static NSNotificationName.timeZoneOverrideDidChange.getter()
{
  if (qword_280D0C298 != -1)
  {
    swift_once();
  }

  v1 = qword_280D0C2A0;

  return v1;
}

Swift::Void __swiftcall TTRICollectionViewPresentationTreeManagementViewCapability.reload()()
{
  v2 = type metadata accessor for TTRICollectionViewPresentationTreeUpdates(255, *(*v1 + 80), *(*v1 + 96), v0);
  v3 = sub_21DBFBA8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *(v2 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(v1, ObjectType, v11);
    swift_unknownObjectRelease();
    if ((*(v7 + 48))(v6, 1, v2) != 1)
    {
      (*(v7 + 32))(v10, v6, v2);
      TTRICollectionViewPresentationTreeManagementViewCapability.applyPresentationTree(with:completion:)(v10, 0, 0);
      (*(v7 + 8))(v10, v2);
      return;
    }
  }

  else
  {
    (*(v7 + 56))(v6, 1, 1, v2);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_21D0E1E48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D0E1EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  MEMORY[0x28223BE20](a1);
  v6 = &v16[-1] - v5;
  v8 = *(v7 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = sub_21D495A08(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v16[0] = 2;
  v16[1] = v12;
  v17 = 0;
  sub_21D0E20B4(v13, v6);
  return TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)(v16, v6, v4, v8, a2);
}

uint64_t sub_21D0E20B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v30 = *v2;
  v4 = *(v30 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v32 = &v28 - v6;
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_21D0E24C0(v16);
  sub_21D0E285C(v15);
  v17 = *(v5 + 48);
  if (v17(v15, 1, v4) == 1)
  {
    v18 = v15;
    v19 = *(v8 + 8);
    v19(v18, v7);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = v2[3];
      ObjectType = swift_getObjectType();
      (*(v20 + 24))(v2, ObjectType, v20);
      swift_unknownObjectRelease();
      v22 = *(v5 + 56);
      v22(v12, 0, 1, v4);
      v23 = v32;
      (*(v5 + 32))(v32, v12, v4);
    }

    else
    {
      v28 = v19;
      v29 = *(v5 + 56);
      v29(v12, 1, 1, v4);
      (*(*(v30 + 88) + 40))(v4);
      if (v17(v12, 1, v4) != 1)
      {
        v28(v12, v7);
      }

      v23 = v32;
      v22 = v29;
    }

    v24 = v31;
    (*(v5 + 16))(v31, v23, v4);
    v22(v24, 0, 1, v4);
    sub_21D0E2964(v24);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v3[3];
      v26 = swift_getObjectType();
      (*(v25 + 56))(v3, v26, v25);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v23 = v15;
  }

  return (*(v5 + 32))(v33, v23, v4);
}

uint64_t sub_21D0E24C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v25 - v6;
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v25 - v13;
  v16 = *(v3 + 112);
  v17 = *(v2 + v16);
  *(v2 + v16) = 0;
  if (v17)
  {
    (*(v5 + 56))(&v25 - v13, 1, 1, v4, v14);
    return sub_21D0E2964(v15);
  }

  else
  {
    sub_21D0E285C(v11);
    if ((*(v5 + 48))(v11, 1, v4) == 1)
    {
      return (*(v9 + 8))(v11, v8);
    }

    else
    {
      (*(v5 + 32))(v7, v11, v4);
      if ((v17 & 2) != 0)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = v2[3];
          ObjectType = swift_getObjectType();
          (*(v19 + 32))(v2, v7, ObjectType, v19);
          swift_unknownObjectRelease();
        }
      }

      if ((v17 & 4) != 0)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = v2[3];
          v22 = swift_getObjectType();
          (*(v21 + 40))(v2, v7, v22, v21);
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = v2[3];
        v24 = swift_getObjectType();
        (*(v23 + 48))(v2, v7, v24, v23);
        swift_unknownObjectRelease();
      }

      (*(v5 + 16))(v15, v7, v4);
      (*(v5 + 56))(v15, 0, 1, v4);
      sub_21D0E2964(v15);
      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_21D0E285C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.collapsedItemIDs.getter()
{
  sub_21D0E2930();

  return sub_21DBF8E0C();
}

uint64_t sub_21D0E2964(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v8;
  v9 = type metadata accessor for TTRICollectionViewPresentationTreeUpdates(0, a3, a4, a4);
  v10 = *(*(a3 - 8) + 32);
  v11 = a5 + *(v9 + 36);

  return v10(v11, a2, a3);
}

void sub_21D0E2AB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if (v7 > 0xFC)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFC)
  {
    a1[16] = 0;
    *a1 = a2 - 253;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

uint64_t sub_21D0E2D10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFC)
  {
    v7 = 252;
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

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFC)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
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
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
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

uint64_t TTRICollectionViewPresentationTreeManagementViewCapability.applyPresentationTree(with:completion:)(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v40[0] = sub_21DBFBA8C();
  v7 = *(v40[0] - 8);
  MEMORY[0x28223BE20](v40[0]);
  v9 = v40 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v40 - v15;
  v17 = *(v5 + 96);
  v19 = type metadata accessor for TTRICollectionViewPresentationTreeUpdates(0, v6, v17, v18);
  (*(v10 + 16))(v16, &a1[*(v19 + 36)], v6);
  v43 = v3;
  sub_21D0E6F44(v9);
  v20 = (*(v10 + 48))(v9, 1, v6);
  v40[1] = v17;
  if (v20 == 1)
  {
    (*(v7 + 8))(v9, v40[0]);
    v21 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v9, v6);
    v21 = (*(v17 + 48))(v13, v16, v6, v17);
    (*(v10 + 8))(v13, v6);
  }

  sub_21D0E34EC(v16);
  v22 = *a1;
  v23 = a1[16];
  v24 = v43;
  if (v23 <= 1)
  {
    v25 = *(a1 + 1);
    if (!v23)
    {
      v45[0] = v22;
      sub_21DBF8E0C();
      sub_21D0E36F4(v16, v45);
      sub_21D0E3B70(v25);
      sub_21D0E49BC(v22, v25, 0);
      if (v21)
      {
        sub_21D76F170();
      }

      v45[0] = v22;
      sub_21D0E6CCC(v45, v42, v41);
      if (v22 == 2)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v26 = v24[3];
          ObjectType = swift_getObjectType();
          (*(v26 + 64))(v24, ObjectType, v26);
          swift_unknownObjectRelease();
        }
      }

      return (*(v10 + 8))(v16, v6);
    }

    v40[0] = v16;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = v24[3];
      v29 = v21;
      v30 = swift_getObjectType();
      v31 = *(v28 + 56);
      sub_21DBF8E0C();
      v32 = v30;
      v21 = v29;
      LOBYTE(v28) = v31(v43, v32, v28);
      swift_unknownObjectRelease();
      if ((v28 & 1) == 0)
      {
        v44 = v22;
        swift_beginAccess();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        v33 = sub_21DBFABAC();
        swift_getWitnessTable(MEMORY[0x277D83B68], v33);
        sub_21DBFAB8C();
        v34 = swift_endAccess();
        goto LABEL_22;
      }
    }

    else
    {
      sub_21DBF8E0C();
    }

    sub_21D6D847C(v22);
    v34 = sub_21D0E49BC(v22, v25, 1u);
LABEL_22:
    v16 = v40[0];
    if ((v21 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v23 != 2)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v36 = sub_21DBFA68C();
    if (sub_21DBFA6DC())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v38 = sub_21D495A08(v36, AssociatedTypeWitness, AssociatedConformanceWitness);
    }

    else
    {
      v38 = MEMORY[0x277D84FA0];
    }

    sub_21D0E3B70(v38);

    if ((v21 & 1) == 0)
    {
LABEL_27:
      if (v42)
      {
        v42(v34);
      }

      return (*(v10 + 8))(v16, v6);
    }

LABEL_26:
    sub_21D76F170();
    goto LABEL_27;
  }

  if (v21)
  {
    sub_21D76F170();
  }

  sub_21D76EF0C(v22 & 1, v42, v41);
  return (*(v10 + 8))(v16, v6);
}

uint64_t sub_21D0E34EC(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v4 = sub_21DBFBA8C();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3, v5);
  (*(v8 + 56))(v7, 0, 1, v3);
  return sub_21D0E3614(v7);
}

uint64_t sub_21D0E3614(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 16);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_21D0E36F4(uint64_t a1, char *a2)
{
  v4 = *v2;
  v5 = *a2;
  result = swift_beginAccess();
  if (v2[4])
  {
    v10 = v5;

    TTRObservableViewModelCollection.prune(optimizingFor:)(&v10);

    if (v2[4])
    {
      MEMORY[0x28223BE20](result);
      v7 = *(v4 + 96);
      v8[1] = *(v4 + 80);
      v8[2] = v7;
      v9 = a1;

      TTRObservableViewModelCollection.prune(shouldPrune:)(sub_21D11F098, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *TTRObservableViewModelCollection.prune(optimizingFor:)(_BYTE *result)
{
  if (*result == 2)
  {
    MEMORY[0x28223BE20](result);
    v2[1] = *(v1 + 80);
    v3 = *(v1 + 96);
    return TTRObservableViewModelCollection.prune(shouldPrune:)(sub_21D19DA18, v2);
  }

  return result;
}

uint64_t TTRObservableViewModelCollection.prune(shouldPrune:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = v4[11];
  v6 = *(v5 - 8);
  v21 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - v7;
  swift_beginAccess();
  v9 = v3[4];
  v12 = type metadata accessor for TTRObservableViewModel(0, v4[10], v10, v11);
  v13 = v4[12];
  v23 = v12;
  v24[0] = v9;
  v22 = v13;
  v14 = sub_21DBF9EDC();
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D83480], v14);
  v15 = sub_21DBFA52C();
  if (!sub_21DBFA6DC())
  {
  }

  for (i = 0; ; ++i)
  {
    v17 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v17)
    {
      (*(v6 + 16))(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, v5);
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_21DBFBF7C();
    if (v21 != 8)
    {
      break;
    }

    v24[0] = result;
    (*(v6 + 16))(v8, v24, v5);
    swift_unknownObjectRelease();
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    swift_beginAccess();
    sub_21DBF9F4C();
    sub_21DBF9E8C();
    swift_endAccess();

    (*(v6 + 8))(v8, v5);
    if (v18 == sub_21DBFA6DC())
    {
    }
  }

  __break(1u);
  return result;
}