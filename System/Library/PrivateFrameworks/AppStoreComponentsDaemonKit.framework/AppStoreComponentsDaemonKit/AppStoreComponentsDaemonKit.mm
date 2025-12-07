uint64_t sub_22262B370(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v7 = MEMORY[0x277D21E70];
  *(a4 + 32) = a2;
  *(a4 + 40) = v7;
  *(a4 + 16) = a1;
  *(a4 + 24) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277D225F0]);
  v9 = a1;
  v10 = v5;
  *(a4 + 48) = [v8 init];
  *(a4 + 56) = sub_222697664(v9);
  *(a4 + 64) = v11;
  *(a4 + 72) = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138F0, &qword_222742C88);
  swift_allocObject();
  v13 = sub_222737F9C();
  *(a4 + 80) = v13;
  v17[4] = sub_22269F824;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22269F82C;
  v17[3] = &block_descriptor_6;
  v14 = _Block_copy(v17);

  LODWORD(v5) = ASCRegisterForRebootstrapQANotification(v14);
  _Block_release(v14);
  *(a4 + 76) = v5;
  sub_22262B778();
  [v10 addObserver:a4 selector:sel_accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:0];

  v15 = sub_2227374CC();
  [v10 addObserver:a4 selector:sel_appDistributorsDidChange_ name:v15 object:0];

  return a4;
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

uint64_t ASCRegisterForRebootstrapQANotification(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    out_token = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __ASCRegisterForRebootstrapQANotification_block_invoke;
    v6[3] = &unk_2784B19C8;
    v7 = v1;
    v2 = notify_register_dispatch("com.apple.appstorecomponentsd.rebootstrap-for-qa", &out_token, MEMORY[0x277D85CD0], v6);
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASCRegisterForRebootstrapQANotification_cold_1(v3);
      }

      v4 = 0xFFFFFFFFLL;
      out_token = -1;
    }

    else
    {
      v4 = out_token;
    }
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_22262B778()
{
  v1 = v0;
  v2 = sub_222737C4C();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222737C9C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  v45 = 0xD000000000000023;
  v46 = 0x8000000222748EE0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013760, &unk_2227428F0);
  v10 = ObjectType;
  sub_22262BED4(qword_281313478, &qword_27D013760, &unk_2227428F0, &unk_222745408);
  sub_2227382DC();
  if (v40 == 1)
  {
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    aBlock = *(v0 + 56);
    v40 = v11;
    LOBYTE(v41) = v12;
    v45 = 0xD000000000000023;
    v46 = 0x8000000222748EE0;

    sub_2227382EC();
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v13 = sub_222738F6C();
    __swift_project_value_buffer(v13, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
LABEL_18:
    sub_22273813C();
    sub_222738C5C();
  }

  v32 = 0x8000000222748EE0;
  v33 = v9;
  v34 = v2;
  v14 = v41;
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  if (v15)
  {
    if (!v40)
    {
      goto LABEL_19;
    }

    if (*(v1 + 56) != aBlock || v15 != v40)
    {
      v17 = aBlock;
      v18 = v40;
      LODWORD(v30) = sub_222739B4C();
      v19 = v17;
      v10 = ObjectType;
      sub_22262CBEC(v19, v18);
      if (v30 & 1) == 0 || ((v16 ^ v14))
      {
        goto LABEL_19;
      }

LABEL_15:
      if (qword_281312E18 != -1)
      {
        swift_once();
      }

      v20 = sub_222738F6C();
      __swift_project_value_buffer(v20, qword_281315AA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227413C0;
      sub_22273813C();
      goto LABEL_18;
    }
  }

  else if (v40)
  {
    sub_22262CBEC(aBlock, v40);
    goto LABEL_19;
  }

  sub_22262CBEC(aBlock, v40);
  if (((v16 ^ v14) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v31 = v10;
  sub_22262D828();
  v30 = sub_22273955C();
  v22 = *(v1 + 80);
  v43 = sub_22269773C;
  v44 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_22269F82C;
  v42 = &block_descriptor_5;
  v23 = _Block_copy(&aBlock);

  sub_222737C7C();
  aBlock = MEMORY[0x277D84F90];
  sub_222697744();
  v29 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
  sub_22262BED4(&qword_281312DE0, &qword_27D013A10, &qword_222742900, MEMORY[0x277D83970]);
  v24 = v35;
  v25 = v34;
  sub_2227397BC();
  v26 = v30;
  MEMORY[0x223DBE8C0](0, v6, v24, v23);
  _Block_release(v23);

  (*(v38 + 8))(v24, v25);
  (*(v36 + 8))(v6, v37);
  v27 = *(v1 + 64);
  v28 = *(v1 + 72);
  aBlock = *(v1 + 56);
  v40 = v27;
  LOBYTE(v41) = v28;
  v45 = 0xD000000000000023;
  v46 = v32;

  return sub_2227382EC();
}

uint64_t sub_22262BE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22262BED4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_22262BF38()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22262BF70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22262BFCC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013750, &qword_2227428E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22262C284();
  sub_222739CEC();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_222739AAC();
    v9[14] = 1;
    sub_222739ABC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_22262C194()
{
  result = qword_2813136D8;
  if (!qword_2813136D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813136D8);
  }

  return result;
}

unint64_t sub_22262C1EC()
{
  result = qword_2813136E0;
  if (!qword_2813136E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813136E0);
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

unint64_t sub_22262C284()
{
  result = qword_2813136E8[0];
  if (!qword_2813136E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813136E8);
  }

  return result;
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
}

uint64_t storeEnumTagSinglePayload for Feature(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22262C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_2227381BC();
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  sub_22262BF70(a1, v13);
  if (swift_dynamicCast())
  {
    sub_22273719C();
    swift_allocObject();
    sub_22273718C();
    sub_22273717C();
    (*(*(a2 - 8) + 56))(a4, 0, 1, a2);

    return sub_22262CB28(v11, v12);
  }

  else
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v9 = sub_222738F6C();
    __swift_project_value_buffer(v9, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227413C0;
    sub_2227381AC();
    sub_22273819C();
    v13[3] = swift_getMetatypeMetadata();
    v13[0] = a2;
    sub_22273816C();
    sub_222672BA0(v13);
    sub_22273819C();
    sub_2227381CC();
    sub_2227381AC();
    sub_22273819C();
    sub_22262BF70(a1, v13);
    sub_22273815C();
    sub_222672BA0(v13);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }
}

uint64_t sub_22262CA08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22262BFCC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_22262CA3C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F726665726F7473;
  }
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

uint64_t sub_22262CAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22262CB28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22262CB7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22262CBEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_22262CC24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_222738F4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222738F6C();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_281315A90);
  (*(v6 + 16))(v8, v10, v5);
  return sub_222738F5C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_22262CE10()
{
  v0 = sub_222738F4C();
  __swift_allocate_value_buffer(v0, qword_281315A90);
  __swift_project_value_buffer(v0, qword_281315A90);
  return sub_222738F3C();
}

char *sub_22262CE74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138E8, &qword_222742C80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-1] - v5;
  v7 = [objc_opt_self() currentProcess];
  [v7 setAccountMediaType_];
  v8 = [objc_opt_self() ams:v7 sharedAccountStoreForClient:?];

  sub_22273865C();
  v9 = sub_22273864C();
  v10 = [objc_opt_self() defaultCenter];
  type metadata accessor for RebootstrapTrigger();
  v11 = swift_allocObject();
  v12 = sub_22262B370(v8, v9, v10, v11);

  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_rebootstrapTrigger] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock] = v13;
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState] = 0xC000000000000000;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138F0, &qword_222742C88);
  sub_22262D128();
  v15 = v14;

  sub_22273831C();
  sub_22273832C();

  __swift_destroy_boxed_opaque_existential_1(v18);
  (*(v4 + 8))(v6, v3);

  return v15;
}

unint64_t sub_22262D128()
{
  result = qword_281312FD8;
  if (!qword_281312FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0138F0, &qword_222742C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312FD8);
  }

  return result;
}

char *sub_22262D18C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive;
  *&v0[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive] = 0;
  ASCDumpEnvVars("Startup");
  [objc_opt_self() setDefaultMediaTypeForCurrentProcess_];
  *&v0[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_dialogHandler] = [objc_allocWithZone(type metadata accessor for CommerceDialogHandler()) init];
  v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v5 = sub_22273916C();
  v6 = [v4 initWithMachServiceName_];

  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_listener] = v6;
  v7 = objc_allocWithZone(MEMORY[0x277CBA598]);
  v8 = sub_22273916C();
  v9 = [v7 initWithBundleIdentifier_];

  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_intentsListener] = v9;
  type metadata accessor for XPCConnectionOwner();
  v10 = swift_allocObject();
  v10[5] = 0;
  swift_unknownObjectWeakInit();
  v11 = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v12 = MEMORY[0x277D84F90];
  v10[2] = v11;
  v10[3] = v12;
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_connections] = v10;
  v13 = [objc_allocWithZone(type metadata accessor for BootstrapSession()) init];
  v14 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_session;
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_session] = v13;
  type metadata accessor for ShutdownTimer();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_shutdownTimer] = sub_22262D5C0(sub_2226A0768, 0, 0.0);
  v15 = *&v1[v14];
  v16 = *&v15[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock];
  v17 = v15;
  [v16 lock];
  v18 = *&v17[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState];
  if ((v18 >> 62) - 2 < 2)
  {
    v19 = sub_22262D930();
LABEL_6:
    v18 = v19;
    goto LABEL_7;
  }

  if (v18 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);

    v19 = sub_222738EAC();
    goto LABEL_6;
  }

LABEL_7:
  [v16 unlock];

  v20 = type metadata accessor for WidgetEventListener();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_listener] = 0;
  *&v21[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_objectGraph] = v18;
  v32.receiver = v21;
  v32.super_class = v20;
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_widgetEventListener] = objc_msgSendSuper2(&v32, sel_init);
  *&v1[v3] = 0;
  swift_unknownObjectRelease();
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v31, sel_init);
  v23 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_listener;
  v24 = *&v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_listener];
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v25 = v22;
  v26 = v24;
  v27 = sub_22273955C();
  [v26 _setQueue_];

  [*&v22[v23] setDelegate_];
  v28 = *&v25[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_connections];
  v29 = *(v28 + 16);

  [v29 lock];
  swift_beginAccess();
  *(v28 + 40) = &off_2835C8EA8;
  swift_unknownObjectWeakAssign();
  [v29 unlock];

  return v25;
}

uint64_t sub_22262D5C0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v15 = sub_22273954C();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22273952C();
  MEMORY[0x28223BE20](v11);
  v12 = sub_222737C9C();
  MEMORY[0x28223BE20](v12 - 8);
  *(v4 + 56) = 0;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 16) = a3;
  sub_22262D828();
  v14[1] = "timerQueue";

  sub_222737C6C();
  sub_22273955C();
  v16 = MEMORY[0x277D84F90];
  sub_22262D874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013770, &unk_222742A70);
  sub_22262D8CC();
  sub_2227397BC();
  (*(v8 + 104))(v10, *MEMORY[0x277D85260], v15);
  *(v4 + 40) = sub_22273958C();
  *(v4 + 48) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  return v4;
}

unint64_t sub_22262D828()
{
  result = qword_281312CC0;
  if (!qword_281312CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312CC0);
  }

  return result;
}

unint64_t sub_22262D874()
{
  result = qword_281312CD0;
  if (!qword_281312CD0)
  {
    sub_22273952C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312CD0);
  }

  return result;
}

unint64_t sub_22262D8CC()
{
  result = qword_281312DC0;
  if (!qword_281312DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D013770, &unk_222742A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312DC0);
  }

  return result;
}

uint64_t sub_22262D930()
{
  v1 = v0;
  v2 = sub_2227373FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  sub_2227373EC();
  v7 = sub_2227373CC();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = objc_opt_self();
  if (qword_281313008 != -1)
  {
    v18 = v10;
    swift_once();
    v10 = v18;
  }

  [v10 bootstrapDidBeginWithTag_];
  sub_22262E020();
  v11 = sub_22262E5F8();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  v21 = sub_22273872C();
  v22 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v20);

  sub_22273871C();
  sub_222738E8C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_22262D828();

  v15 = sub_22273955C();
  v21 = v14;
  v22 = MEMORY[0x277D225C0];
  v20[0] = v15;
  sub_222738E8C();

  __swift_destroy_boxed_opaque_existential_1(v20);

  v16 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState) = v11;

  sub_22269F78C(v16);
  return v11;
}

uint64_t sub_22262DD50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262DD88()
{
  MEMORY[0x223DBFD80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_22262DDC4()
{
  result = ASCSignpostTagCreate(0);
  qword_281315B68 = result;
  return result;
}

unint64_t ASCSignpostTagCreate(unint64_t a1)
{
  v2 = getpid();

  return ASCSignpostTagCreateForProcess(a1, v2);
}

unint64_t ASCSignpostTagCreateForProcess(unint64_t a1, int a2)
{
  if (!(a1 >> 47))
  {
    return a2 | (a1 << 17);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ASCSignpostTagCreateForProcess_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (ASCSignpostTagCreateForProcess_onceToken != -1)
  {
    dispatch_once(&ASCSignpostTagCreateForProcess_onceToken, block);
  }

  return a1 + a2;
}

uint64_t sub_22262E020()
{
  sub_22273858C();
  sub_22273854C();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_22262E364(0, &qword_281312D68, 0x277CB8F48);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  type metadata accessor for JSJetPackFetcher(0);
  sub_22273897C();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_222738BBC();
  sub_22273897C();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22262E364(0, &unk_281312D90, 0x277CEE6F0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_22273896C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v0;
}

uint64_t sub_22262E364(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_22262E3AC@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentProcess];
  result = [v2 setAccountMediaType_];
  *a1 = v2;
  return result;
}

uint64_t sub_22262E43C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22262E474(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22262E4D8(uint64_t a1)
{
  sub_22262E474(319, &unk_281312F58, &unk_27D013DA0, &qword_222743E40, MEMORY[0x277D21D88]);
  if (v1 <= 0x3F)
  {
    sub_22262E474(319, &unk_281312F48, &unk_27D013DB0, &unk_222743B30, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22262E5F8()
{
  sub_222738EFC();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013078, &unk_222741750);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C8, &unk_222742680);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137A0, &qword_222741D90);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013280, &qword_2227414E0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137B0, &unk_222742AD0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132A0, &unk_222742690);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_22262E364(0, &qword_281312DB0, off_2784B0638);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137C0, &qword_222742750);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  type metadata accessor for JSStackManager(0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_22273897C();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137E0, &unk_222742AE0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FC0, &unk_222741550);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137F0, &qword_222741520);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2227385FC();
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014860, &unk_222742AF0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013860, &unk_222742B00);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013868, &qword_222742B10);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22273896C();
  v2[3] = sub_22273872C();
  v2[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_22273871C();
  type metadata accessor for ObjectGraph(0);
  v0 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v0;
}

uint64_t type metadata accessor for JSStackManager(uint64_t a1)
{
  result = qword_281313BA8;
  if (!qword_281313BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22262F07C(uint64_t a1)
{
  result = sub_22273842C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ObjectGraph(uint64_t a1)
{
  result = qword_281313E98;
  if (!qword_281313E98)
  {
    return swift_getSingletonMetadata();
  }

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

void *sub_22262F248@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22262F28C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22273919C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22262F300(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22262F504()
{
  v1 = *(type metadata accessor for AlertAction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2227383BC();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22262F624()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262F664()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22262F6AC()
{
  v1 = type metadata accessor for AppLaunchTrampolineAction(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = sub_22273731C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v5 + v1[7]);
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v10 = v1[8];
  v11 = sub_2227383BC();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22262F854()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262F8A8()
{
  v1 = sub_22273793C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5 + 8));

  return MEMORY[0x2821FE8E8](v0, v5 + 48, v3 | 7);
}

uint64_t sub_22262F988()
{
  v1 = sub_222737C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22262FA60()
{
  v1 = sub_22273731C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22262FAFC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22262FB3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262FB74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262FBB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22262FBFC()
{
  v1 = (type metadata accessor for CancelOrPauseInstallAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2227383BC();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22262FCF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22262FD40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262FD80()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_22262FDCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013100, &qword_2227418D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22262FE64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22262FEA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22262FEF4()
{
  v1 = (type metadata accessor for OpenAppAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2227383BC();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[8];
  v8 = sub_22273786C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22263002C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222630074()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013218, &qword_222741B20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222630114()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013220, &qword_222741B28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2226301A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226301E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222630248()
{
  v1 = (type metadata accessor for WatchReinstallAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_2227383BC();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_2226825C0(*(v6 + v1[7]), *(v6 + v1[7] + 8), *(v6 + v1[7] + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v2 | 7);
}

uint64_t sub_222630360()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2226303B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222630404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2226304C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222630578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2227383BC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2226306A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2227383BC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2226307D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2226308A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_222630958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
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

uint64_t sub_222630A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
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

uint64_t sub_222630ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22273786C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_222630BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22273786C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_222630D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
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

uint64_t sub_222630DD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
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

uint64_t sub_222630E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_222630F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_222631004()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226310B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226310E8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222631130()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_222631170()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2226311B0()
{
  v1 = *(type metadata accessor for MetricsTopicProvider(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_222738BBC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22263127C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2226312C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22263131C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222631354()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22263138C()
{
  MEMORY[0x223DBFD80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226313C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222631400()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222631440()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222631488()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226314C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226314F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_222738BBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2226315A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_222738BBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222631648()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222631680()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2226316C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222631704()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222631780()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226317BC()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222631850()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2226318D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222631914()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22263194C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2226319B4()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222631A78()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222631B50()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222631C28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222631C68()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222631CF0()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222631D9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_222631DDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_accountID];
  *a2 = result;
  return result;
}

id sub_222631E9C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ams_isManagedAppleID];
  *a2 = result;
  return result;
}

id sub_222631EE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_DSID];
  *a2 = result;
  return result;
}

uint64_t sub_22263200C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273842C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_222632078(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273842C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2226320E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSDiagnostics(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_222632154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSDiagnostics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2226321C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222632210()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632248(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273731C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2226322B4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22273731C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_222632348()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222632380()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2226323D8()
{
  v1 = sub_222737DAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222632474()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2226324BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226324F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222737DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2227384DC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_222632604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_222737DAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2227384DC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_222632730()
{
  v1 = sub_22273903C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2226327B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632804()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_222632844(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_222738ACC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2226328F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_222738ACC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222632994(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738BBC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_222632A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738BBC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_222632A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricsTopicProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_222632B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MetricsTopicProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222632BC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632C00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632C40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222632D0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632D44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222632D7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222632DBC()
{
  v1 = sub_22273731C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_222738BBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v13 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + v11));

  return MEMORY[0x2821FE8E8](v0, ((v11 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v13 | 7);
}

uint64_t sub_222632F74()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222632FC4()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22263304C()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2226330E8()
{
  v1 = sub_22273903C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2226331AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226331E4()
{
  v1 = sub_2227377BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2226332B0()
{
  v1 = sub_2227377BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222633374()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226333AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222633400()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633438()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2226334A0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_222633508()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222633550()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222633588()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222633674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222633760()
{
  MEMORY[0x223DBFD80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226337B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226337F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_222633850()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222633888()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2226338D8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_222633954()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2226339CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633A04()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222633A44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_222633B48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633B80()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222633BB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222633BF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222633C38()
{
  v1 = sub_2227385FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222633D40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633D78()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222633DB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633DE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222633E20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_222633E60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633E98()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222633ED0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222633F78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633FB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222633FE8()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222634028()
{
  MEMORY[0x223DBFD80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222634060()
{
  v1 = sub_22273731C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_222634104()
{
  v1 = sub_22273731C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222634198()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2226341E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222634218()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222634258()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222634290(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void ASCUnknownEnumCase(void *a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ does not have case with value %@", v3, v4];
  v6 = objc_alloc(MEMORY[0x277CBEAD8]);
  v10[0] = @"enumName";
  v10[1] = @"enumValue";
  v11[0] = v3;
  v11[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v6 initWithName:@"ASCUnknownEnumCaseException" reason:v5 userInfo:v7];
  v9 = v8;

  objc_exception_throw(v8);
}

void __ASCSignpostTagCreateForProcess_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __ASCSignpostTagCreateForProcess_block_invoke_cold_1(a1);
  }
}

unint64_t ASCSignpostTagUnique()
{
  add_explicit = atomic_fetch_add_explicit(&ASCSignpostTagUnique_nextValue, 1uLL, memory_order_relaxed);
  v1 = getpid();

  return ASCSignpostTagCreateForProcess(add_explicit, v1);
}

unint64_t ASCSignpostTagFromIDInProcess(void *a1, int a2)
{
  v3 = [a1 int64value];

  return ASCSignpostTagCreateForProcess(v3, a2);
}

unint64_t ASCSignpostTagFromID(void *a1)
{
  v1 = [a1 int64value];
  v2 = getpid();

  return ASCSignpostTagCreateForProcess(v1, v2);
}

id ASCMetricsFieldsGetCodableClasses()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 initWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];

  return v5;
}

id ASCMetricsFieldsDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCMetricsFieldsGetCodableClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

id ASCMetricsDataDecodeArrayForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:v4];

  return v9;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id ASCOfferFlagsGetDescription(__int16 a1)
{
  +[ASCEligibility assertCurrentProcessEligibility];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ASCOfferHasMessagesExtension"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"ASCOfferCreatesJobs"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:@"ASCOfferIsArcadeApp"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"ASCOfferIsPreorder"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"ASCOfferIsDisabled"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 addObject:@"ASCOfferForceWatchInstall"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 addObject:@"ASCOfferIsDeletableSystemApp"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 addObject:@"ASCOfferIsIOSAppOnMacOS"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 addObject:@"ASCOfferIsFree"];
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 addObject:@"ASCOfferIsDSIDLess"];
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 addObject:@"ASCOfferIsContingentOffer"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_13:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"ASCOfferIsAppDistributionOffer"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_14:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  [v3 addObject:@"ASCOfferShouldOpenFromLockscreen"];
  if ((a1 & 0x4000) != 0)
  {
LABEL_15:
    [v3 addObject:@"ASCOfferIsIOSAppOnVisionOS"];
  }

LABEL_16:
  v4 = [v3 componentsJoinedByString:@" | "];

  return v4;
}

id ASCOfferTitlesDecodeForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:v4];

  return v9;
}

id ASCOfferGetCodableClasses(uint64_t a1)
{
  if (ASCOfferGetCodableClasses_onceToken != -1)
  {
    ASCOfferGetCodableClasses_cold_1();
  }

  v2 = ASCOfferGetCodableClasses_classes;

  return v2;
}

uint64_t __ASCOfferGetCodableClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  ASCOfferGetCodableClasses_classes = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

id ASCOfferDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCOfferGetCodableClasses(v4);
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

double ASCArtworkCropScaleSizeToFit(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  if ((a2 != *MEMORY[0x277CBF3A8] || a3 != v11) && (a4 != v10 || a5 != v11))
  {
    if (a4 == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2 / a4;
    }

    if (a5 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a3 / a5;
    }

    if ((![v9 isEqualToString:@"cc"] || a2 != a3) && (objc_msgSend(v9, "isEqualToString:", @"sr") & 1) == 0)
    {
      v16 = a4 * v15;
      if ([v9 isEqualToString:@"bb"])
      {
        if (v14 >= v15)
        {
          a2 = v16;
        }
      }

      else if (v14 < v15)
      {
        a2 = v16;
      }
    }

    v10 = floor(a2);
  }

  return v10;
}

uint64_t ASCArtworkFormatIsLayered(void *a1)
{
  v1 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  v2 = [v1 isEqualToString:@"lcr"];

  return v2;
}

uint64_t ASCArtworkDecorationHasBorder(void *a1)
{
  v1 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  if ([v1 isEqualToString:@"none"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"circlePrerendered"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"roundedRectPrerendered"] ^ 1;
  }

  return v2;
}

uint64_t ASCArtworkDecorationIsPrerendered(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"circlePrerendered"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"roundedRectPrerendered"];
  }

  return v2;
}

uint64_t ASCLockupContextIsAdGridContext(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"adGridWithPortraitScreenshots"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"adGridWithLandscapeScreenshots"];
  }

  return v2;
}

uint64_t ASCLockupContextIsAdMaterialContext(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"adMaterialWithPortraitScreenshots"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"adMaterialWithLandscapeScreenshots"];
  }

  return v2;
}

id ASCLockupFeatureGetClasses()
{
  v18 = objc_alloc(MEMORY[0x277CBEB98]);
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v18 initWithObjects:{v17, v16, v15, v14, v13, v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return v10;
}

id ASCLockupFeaturesDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCLockupFeatureGetClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

void sub_222653B7C(void *a1)
{
  objc_begin_catch(a1);
  objc_storeStrong(&ASCWorkspace_testingWorkspace, v1);
  objc_exception_rethrow();
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id ASCAppOfferStateDelegateGetInterface(uint64_t a1)
{
  if (ASCAppOfferStateDelegateGetInterface_onceToken != -1)
  {
    ASCAppOfferStateDelegateGetInterface_cold_1();
  }

  v2 = ASCAppOfferStateDelegateGetInterface_interface;

  return v2;
}

void __ASCAppOfferStateDelegateGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E59C8];
  v1 = ASCAppOfferStateDelegateGetInterface_interface;
  ASCAppOfferStateDelegateGetInterface_interface = v0;

  v2 = ASCAppOfferStateDelegateGetInterface_interface;
  v4 = ASCOfferGetCodableClasses(v3);
  [v2 setClasses:v4 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:0 ofReply:0];

  v5 = ASCAppOfferStateDelegateGetInterface_interface;
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v5 setClasses:v6 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:1 ofReply:0];

  v7 = ASCAppOfferStateDelegateGetInterface_interface;
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v7 setClasses:v8 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:2 ofReply:0];

  v9 = ASCAppOfferStateDelegateGetInterface_interface;
  v11 = ASCOfferGetCodableClasses(v10);
  [v9 setClasses:v11 forSelector:sel_offer_didChangeStatusText_ argumentIndex:0 ofReply:0];

  v12 = ASCAppOfferStateDelegateGetInterface_interface;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_offer_didChangeStatusText_ argumentIndex:1 ofReply:0];
}

id ASCAppOfferStateServiceGetInterface(uint64_t a1)
{
  if (ASCAppOfferStateServiceGetInterface_onceToken != -1)
  {
    ASCAppOfferStateServiceGetInterface_cold_1();
  }

  v2 = ASCAppOfferStateServiceGetInterface_interface;

  return v2;
}

void __ASCAppOfferStateServiceGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E1230];
  v1 = ASCAppOfferStateServiceGetInterface_interface;
  ASCAppOfferStateServiceGetInterface_interface = v0;

  v2 = ASCAppOfferStateServiceGetInterface_interface;
  v4 = ASCOfferGetCodableClasses(v3);
  v5 = [v4 setByAddingObject:objc_opt_class()];
  [v2 setClasses:v5 forSelector:sel_startObservingStateOfOffers_ argumentIndex:0 ofReply:0];

  v6 = ASCAppOfferStateServiceGetInterface_interface;
  v8 = ASCOfferGetCodableClasses(v7);
  v9 = [v8 setByAddingObject:objc_opt_class()];
  [v6 setClasses:v9 forSelector:sel_stopObservingStateOfOffers_ argumentIndex:0 ofReply:0];

  v10 = ASCAppOfferStateServiceGetInterface_interface;
  v12 = ASCOfferGetCodableClasses(v11);
  [v10 setClasses:v12 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:0 ofReply:0];

  v13 = ASCAppOfferStateServiceGetInterface_interface;
  v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v13 setClasses:v14 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:1 ofReply:0];

  v15 = ASCAppOfferStateServiceGetInterface_interface;
  v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v15 setClasses:v16 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:2 ofReply:0];

  v17 = ASCAppOfferStateServiceGetInterface_interface;
  v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v17 setClasses:v18 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:0 ofReply:1];

  v19 = ASCAppOfferStateServiceGetInterface_interface;
  v20 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v19 setClasses:v20 forSelector:sel_reinstallWatchAppWithID_withReplyHandler_ argumentIndex:0 ofReply:0];

  v21 = ASCAppOfferStateServiceGetInterface_interface;
  v22 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v21 setClasses:v22 forSelector:sel_reinstallWatchAppWithID_withReplyHandler_ argumentIndex:0 ofReply:1];

  v23 = ASCAppOfferStateServiceGetInterface_interface;
  v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v23 setClasses:v24 forSelector:sel_reinstallWatchSystemAppWithBundleID_withReplyHandler_ argumentIndex:0 ofReply:0];

  v25 = ASCAppOfferStateServiceGetInterface_interface;
  v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v25 setClasses:v26 forSelector:sel_reinstallWatchSystemAppWithBundleID_withReplyHandler_ argumentIndex:0 ofReply:1];

  v27 = ASCAppOfferStateServiceGetInterface_interface;
  v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v27 setClasses:v28 forSelector:sel_viewAppForAppDistributionOffer_ argumentIndex:0 ofReply:0];

  v29 = ASCAppOfferStateServiceGetInterface_interface;
  v30 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v29 setClasses:v30 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:0 ofReply:0];

  v31 = ASCAppOfferStateServiceGetInterface_interface;
  v32 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v31 setClasses:v32 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:1 ofReply:0];

  v33 = ASCAppOfferStateServiceGetInterface_interface;
  v34 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v33 setClasses:v34 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:0 ofReply:1];

  v35 = ASCAppOfferStateServiceGetInterface_interface;
  v36 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v35 setClasses:v36 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:1 ofReply:1];
}

id ASCUtilityServiceGetInterface(uint64_t a1)
{
  if (ASCUtilityServiceGetInterface_onceToken != -1)
  {
    ASCUtilityServiceGetInterface_cold_1();
  }

  v2 = ASCUtilityServiceGetInterface_interface;

  return v2;
}

void __ASCUtilityServiceGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E1988];
  v1 = ASCUtilityServiceGetInterface_interface;
  ASCUtilityServiceGetInterface_interface = v0;

  v2 = ASCUtilityServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_openURL_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCUtilityServiceGetInterface_interface;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_openURL_withReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = ASCUtilityServiceGetInterface_interface;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_restoreAppStoreWithReplyHandler_ argumentIndex:0 ofReply:1];
}

id ASCLockupFetcherServiceGetInterface(uint64_t a1)
{
  if (ASCLockupFetcherServiceGetInterface_onceToken != -1)
  {
    ASCLockupFetcherServiceGetInterface_cold_1();
  }

  v2 = ASCLockupFetcherServiceGetInterface_interface;

  return v2;
}

void __ASCLockupFetcherServiceGetInterface_block_invoke()
{
  v37 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E1480];
  v1 = ASCLockupFetcherServiceGetInterface_interface;
  ASCLockupFetcherServiceGetInterface_interface = v0;

  v2 = ASCLockupFetcherServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCLockupFetcherServiceGetInterface_interface;
  v5 = ASCLockupFeatureGetClasses();
  v6 = [v5 setByAddingObject:objc_opt_class()];
  [v4 setClasses:v6 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v7 = ASCLockupFetcherServiceGetInterface_interface;
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v7 setClasses:v8 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v9 = ASCLockupFetcherServiceGetInterface_interface;
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v9 setClasses:v10 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v11 = ASCLockupFetcherServiceGetInterface_interface;
  v12 = ASCLockupFeatureGetClasses();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:3];
  v14 = [v12 setByAddingObjectsFromArray:v13];
  [v11 setClasses:v14 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = ASCLockupFetcherServiceGetInterface_interface;
  v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v15 setClasses:v16 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v17 = ASCLockupFetcherServiceGetInterface_interface;
  v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v17 setClasses:v18 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v19 = ASCLockupFetcherServiceGetInterface_interface;
  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  v21 = objc_opt_class();
  v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0, v34, v35}];
  [v19 setClasses:v22 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v23 = ASCLockupFetcherServiceGetInterface_interface;
  v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v23 setClasses:v24 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v25 = ASCLockupFetcherServiceGetInterface_interface;
  v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v25 setClasses:v26 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:0 ofReply:0];

  v27 = ASCLockupFetcherServiceGetInterface_interface;
  v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v27 setClasses:v28 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:1 ofReply:0];

  v29 = ASCLockupFetcherServiceGetInterface_interface;
  v30 = ASCLockupFeatureGetClasses();
  v31 = [v30 setByAddingObject:objc_opt_class()];
  [v29 setClasses:v31 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:0 ofReply:1];

  v32 = ASCLockupFetcherServiceGetInterface_interface;
  v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v32 setClasses:v33 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:1 ofReply:1];
}

id ASCMetricsServiceGetInterface(uint64_t a1)
{
  if (ASCMetricsServiceGetInterface_onceToken != -1)
  {
    ASCMetricsServiceGetInterface_cold_1();
  }

  v2 = ASCMetricsServiceGetInterface_interface;

  return v2;
}

void __ASCMetricsServiceGetInterface_block_invoke()
{
  v27[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E16A8];
  v1 = ASCMetricsServiceGetInterface_interface;
  ASCMetricsServiceGetInterface_interface = v0;

  v2 = ASCMetricsServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCMetricsServiceGetInterface_interface;
  v5 = ASCMetricsFieldsGetCodableClasses();
  [v4 setClasses:v5 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:1 ofReply:0];

  v6 = ASCMetricsServiceGetInterface_interface;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:2 ofReply:0];

  v8 = ASCMetricsServiceGetInterface_interface;
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:0 ofReply:1];

  v10 = ASCMetricsServiceGetInterface_interface;
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_processViewRenderWithPredicate_withReplyHandler_ argumentIndex:0 ofReply:0];

  v12 = ASCMetricsServiceGetInterface_interface;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_processViewRenderWithPredicate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v14 = ASCMetricsServiceGetInterface_interface;
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:0 ofReply:0];

  v16 = ASCMetricsServiceGetInterface_interface;
  v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:1 ofReply:0];

  v18 = ASCMetricsServiceGetInterface_interface;
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v18 setClasses:v19 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:2 ofReply:0];

  v20 = ASCMetricsServiceGetInterface_interface;
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v20 setClasses:v21 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:3 ofReply:0];

  v22 = ASCMetricsServiceGetInterface_interface;
  v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v22 setClasses:v23 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:0 ofReply:1];

  v24 = ASCMetricsFieldsGetCodableClasses();
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v26 = [v24 setByAddingObjectsFromArray:v25];

  [ASCMetricsServiceGetInterface_interface setClasses:v26 forSelector:sel_logErrorMessage_ argumentIndex:0 ofReply:0];
}

id ASCServiceBrokerGetInterface(uint64_t a1)
{
  if (ASCServiceBrokerGetInterface_onceToken != -1)
  {
    ASCServiceBrokerGetInterface_cold_1();
  }

  v2 = ASCServiceBrokerGetInterface_interface;

  return v2;
}

void __ASCServiceBrokerGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E1888];
  v1 = ASCServiceBrokerGetInterface_interface;
  ASCServiceBrokerGetInterface_interface = v0;

  v2 = ASCServiceBrokerGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_testConnectionWithReplyHandler_ argumentIndex:0 ofReply:1];

  v4 = ASCServiceBrokerGetInterface_interface;
  v6 = ASCAppOfferStateDelegateGetInterface(v5);
  [v4 setInterface:v6 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:0 ofReply:0];

  v7 = ASCServiceBrokerGetInterface_interface;
  v9 = ASCAppOfferStateServiceGetInterface(v8);
  [v7 setInterface:v9 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v10 = ASCServiceBrokerGetInterface_interface;
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:1 ofReply:1];

  v12 = ASCServiceBrokerGetInterface_interface;
  v14 = ASCUtilityServiceGetInterface(v13);
  [v12 setInterface:v14 forSelector:sel_getUtilityServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = ASCServiceBrokerGetInterface_interface;
  v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v15 setClasses:v16 forSelector:sel_getUtilityServiceWithReplyHandler_ argumentIndex:1 ofReply:1];

  v17 = ASCServiceBrokerGetInterface_interface;
  v19 = ASCLockupFetcherServiceGetInterface(v18);
  [v17 setInterface:v19 forSelector:sel_getLockupFetcherServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v20 = ASCServiceBrokerGetInterface_interface;
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v20 setClasses:v21 forSelector:sel_getLockupFetcherServiceWithReplyHandler_ argumentIndex:1 ofReply:1];

  v22 = ASCServiceBrokerGetInterface_interface;
  v24 = ASCMetricsServiceGetInterface(v23);
  [v22 setInterface:v24 forSelector:sel_getMetricsServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v25 = ASCServiceBrokerGetInterface_interface;
  v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v25 setClasses:v26 forSelector:sel_getMetricsServiceWithReplyHandler_ argumentIndex:1 ofReply:1];
}

__CFString *ASCStringFromNotifyStatus(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          v1 = @"NOTIFY_STATUS_SERVER_NOT_FOUND";
          goto LABEL_27;
        case 0xA:
          v1 = @"NOTIFY_STATUS_NULL_INPUT";
          goto LABEL_27;
        case 0xF4240:
          v1 = @"NOTIFY_STATUS_FAILED";
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a1 == 6)
    {
      v1 = @"NOTIFY_STATUS_INVALID_REQUEST";
    }

    else if (a1 == 7)
    {
      v1 = @"NOTIFY_STATUS_NOT_AUTHORIZED";
    }

    else
    {
      v1 = @"NOTIFY_STATUS_OPT_DISABLE";
    }
  }

  else
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          v1 = @"NOTIFY_STATUS_OK";
          goto LABEL_27;
        case 1:
          v1 = @"NOTIFY_STATUS_INVALID_NAME";
          goto LABEL_27;
        case 2:
          v1 = @"NOTIFY_STATUS_INVALID_TOKEN";
          goto LABEL_27;
      }

LABEL_26:
      v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NOTIFY_STATUS_UNKNOWN (%u)", a1];
      goto LABEL_27;
    }

    if (a1 == 3)
    {
      v1 = @"NOTIFY_STATUS_INVALID_PORT";
    }

    else if (a1 == 4)
    {
      v1 = @"NOTIFY_STATUS_INVALID_FILE";
    }

    else
    {
      v1 = @"NOTIFY_STATUS_INVALID_SIGNAL";
    }
  }

LABEL_27:

  return v1;
}

id ASCClientBuildTypeGetCurrent(uint64_t a1)
{
  if (ASCClientBuildTypeGetCurrent_onceToken != -1)
  {
    ASCClientBuildTypeGetCurrent_cold_1();
  }

  v2 = ASCClientBuildTypeGetCurrent_buildType;

  return v2;
}

uint64_t __ASCClientBuildTypeGetCurrent_block_invoke()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = @"production";
  if (has_internal_content)
  {
    v1 = @"internal";
  }

  ASCClientBuildTypeGetCurrent_buildType = v1;

  return MEMORY[0x2821F96F8]();
}

void ASCDumpEnvVars(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v19 = a1;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Environment variables (%{public}s):", buf, 0xCu);
    }

    context = objc_autoreleasePoolPush();
    v2 = [MEMORY[0x277CCAC38] processInfo];
    v3 = [v2 environment];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      v8 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v4 objectForKeyedSubscript:v10];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v19 = v10;
            v20 = 2114;
            v21 = v11;
            _os_log_impl(&dword_222629000, v8, OS_LOG_TYPE_INFO, "%{public}@=%{public}@", buf, 0x16u);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v6);
    }

    v12 = malloc_engaged_nano();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      LODWORD(v19) = v12;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "malloc_engaged_nano=%{public}d", buf, 8u);
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASCDumpEnvVars_cold_1();
      }
    }

    objc_autoreleasePoolPop(context);
  }
}

void sub_222658F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKInstallSheetStatusUpdateRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __StoreKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784B1990;
    v6 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (StoreKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SKInstallSheetStatusUpdateRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKInstallSheetStatusUpdateRequestClass_block_invoke_cold_1();
  }

  getSKInstallSheetStatusUpdateRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2226592DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKPurchaseIntentClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __StoreKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784B19A8;
    v6 = 0;
    StoreKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (StoreKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SKPurchaseIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKPurchaseIntentClass_block_invoke_cold_1();
  }

  getSKPurchaseIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t ASCPostRebootstrapNotification()
{
  if (ASCRebootstrapNotificationGetToken_onceToken != -1)
  {
    ASCPostRebootstrapNotification_cold_1();
  }

  v0 = ASCRebootstrapNotificationGetToken_token;
  state64 = 0;
  state = notify_get_state(ASCRebootstrapNotificationGetToken_token, &state64);
  if (state)
  {
    v2 = state;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASCPostRebootstrapNotification_cold_2(v2);
    }
  }

  else
  {
    v3 = notify_set_state(v0, ++state64);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASCPostRebootstrapNotification_cold_3(v4);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Incremented re-bootstrap counter", v6, 2u);
    }
  }

  return notify_post("com.apple.appstorecomponentsd.rebootstrap");
}

void ASCUnregisterForRebootstrapQANotification(uint64_t result)
{
  if (result != -1)
  {
    v1 = notify_cancel(result);
    if (v1)
    {
      v2 = v1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASCUnregisterForRebootstrapQANotification_cold_1(v2);
      }
    }
  }
}

void __ASCRebootstrapNotificationGetToken_block_invoke()
{
  v0 = notify_register_check("com.apple.appstorecomponentsd.rebootstrap", &ASCRebootstrapNotificationGetToken_token);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __ASCRebootstrapNotificationGetToken_block_invoke_cold_1(v1);
    }

    ASCRebootstrapNotificationGetToken_token = -1;
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_222659714(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012BE8, type metadata accessor for ASCAppOfferActionError, &unk_222740204);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_222659780(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012BE8, type metadata accessor for ASCAppOfferActionError, &unk_222740204);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2226597EC(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_222659858(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E08, type metadata accessor for ASCOpenAppError, &unk_2227410A4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2226598C4(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E08, type metadata accessor for ASCOpenAppError, &unk_2227410A4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_222659930(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2226599A4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x223DBEFF0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2226599F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_222739CBC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_222659A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222739CCC();
  *a1 = result;
  return result;
}

uint64_t sub_222659AC8(uint64_t a1, id *a2)
{
  result = sub_22273917C();
  *a2 = 0;
  return result;
}

uint64_t sub_222659B40(uint64_t a1, id *a2)
{
  v3 = sub_22273918C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_222659BC0@<X0>(uint64_t *a2@<X8>)
{
  sub_22273919C();
  v3 = sub_22273916C();

  *a2 = v3;
  return result;
}

uint64_t sub_222659C04(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C60, type metadata accessor for ASCMetricsError, &unk_22273F890);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_222659C70(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C60, type metadata accessor for ASCMetricsError, &unk_22273F890);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_222659CDC(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError, &unk_222740CC0);

  return MEMORY[0x28211CA68](a1, v2);
}

void *sub_222659D5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_222659D88@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_222659DFC(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_222659E68(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_222659ED4(void *a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_222659F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_222659FF0(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22265A05C(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22265A0C8(void *a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22265A158(uint64_t a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22265A1F4(uint64_t a1)
{
  v2 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError, &unk_222740B74);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22265A260(uint64_t a1)
{
  v2 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError, &unk_222740B74);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22265A2CC(void *a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError, &unk_222740B74);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22265A35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError, &unk_222740B74);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22265A3E4(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError, &unk_222740CC0);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22265A450(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError, &unk_222740CC0);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22265A4BC(void *a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError, &unk_222740CC0);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22265A54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError, &unk_222740CC0);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22265A5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222739C5C();
  sub_22273912C();
  return sub_222739C8C();
}

uint64_t sub_22265A628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22265C908(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22265A668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22265A6EC(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D80, type metadata accessor for Kind, &unk_22273FB20);
  sub_22265AFB0(&qword_27D012D88, type metadata accessor for Kind, &unk_22273FAC0);

  return sub_222739A7C();
}

uint64_t sub_22265A7A8(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D20, type metadata accessor for ASCControllerRequirement, &unk_222740624);
  sub_22265AFB0(&qword_27D012D28, type metadata accessor for ASCControllerRequirement, &unk_2227405C4);

  return sub_222739A7C();
}

uint64_t sub_22265A864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22265A8E8(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012DB0, type metadata accessor for ASCSignpostTag, &unk_22273F5FC);
  sub_22265AFB0(&qword_27D012DB8, type metadata accessor for ASCSignpostTag, &unk_22273F5A4);
  return sub_222739A7C();
}

uint64_t sub_22265A9A4(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D70, type metadata accessor for AMSMediaTaskPlatform, &unk_22273FDB8);
  sub_22265AFB0(&qword_27D012D78, type metadata accessor for AMSMediaTaskPlatform, &unk_22273FD58);

  return sub_222739A7C();
}

uint64_t sub_22265AA60(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D90, type metadata accessor for Context, &unk_22273FA04);
  sub_22265AFB0(&unk_27D012D98, type metadata accessor for Context, &unk_22273F9A4);

  return sub_222739A7C();
}

uint64_t sub_22265AB1C(uint64_t a1)
{
  sub_22265AFB0(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
  sub_22265AFB0(&qword_27D012DA8, type metadata accessor for ASCOfferTitleVariant, &unk_22273F70C);

  return sub_222739A7C();
}

uint64_t sub_22265ABD8(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D00, type metadata accessor for HeadingKind, &unk_222740844);
  sub_22265AFB0(&qword_27D012D08, type metadata accessor for HeadingKind, &unk_2227407EC);

  return sub_222739A7C();
}

uint64_t sub_22265AC94(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D10, type metadata accessor for ASCMetricsInvocationPoint, &unk_222740940);
  sub_22265AFB0(&qword_27D012D18, type metadata accessor for ASCMetricsInvocationPoint, &unk_222740718);

  return sub_222739A7C();
}

uint64_t sub_22265AEB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22265AED0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_22265AFB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22265B0D0(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D50, type metadata accessor for Decoration, &unk_2227402D0);
  sub_22265AFB0(&qword_27D012D58, type metadata accessor for Decoration, &unk_222740270);

  return sub_222739A7C();
}

uint64_t sub_22265B18C(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D40, type metadata accessor for Crop, &unk_2227403EC);
  sub_22265AFB0(&qword_27D012D48, type metadata accessor for Crop, &unk_22274038C);

  return sub_222739A7C();
}

uint64_t sub_22265B248(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D30, type metadata accessor for Format, &unk_222740508);
  sub_22265AFB0(&qword_27D012D38, type metadata accessor for Format, &unk_2227404A8);

  return sub_222739A7C();
}

uint64_t sub_22265B304@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22273916C();

  *a2 = v3;
  return result;
}

uint64_t sub_22265B34C(uint64_t a1)
{
  sub_22265AFB0(&qword_27D012D60, type metadata accessor for Platform, &unk_22273FF00);
  sub_22265AFB0(&qword_27D012D68, type metadata accessor for Platform, &unk_22273FEA8);

  return sub_222739A7C();
}

uint64_t sub_22265B408(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C28, type metadata accessor for AMSError, &unk_22273FCAC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22265B474(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C28, type metadata accessor for AMSError, &unk_22273FCAC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22265B4E0(uint64_t a1)
{
  v2 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError, &unk_222740B74);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22265B54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError, &unk_222740B74);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22265B5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError, &unk_222740CC0);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22265B9FC()
{
  v0 = sub_22273919C();
  v1 = MEMORY[0x223DBE650](v0);

  return v1;
}

uint64_t sub_22265BA38(uint64_t a1)
{
  sub_22273919C();
  sub_22273924C();
}

uint64_t sub_22265BA8C()
{
  sub_22273919C();
  sub_222739C5C();
  sub_22273924C();
  v0 = sub_222739C8C();

  return v0;
}

uint64_t sub_22265BB00(void *a1, uint64_t *a2)
{
  v2 = sub_22273919C();
  v4 = v3;
  if (v2 == sub_22273919C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_222739B4C();
  }

  return v7 & 1;
}

unint64_t sub_22265C3C4()
{
  result = qword_27D012C10;
  if (!qword_27D012C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012C10);
  }

  return result;
}

uint64_t sub_22265C908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_22265C990(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_22265CCBC()
{
  result = qword_27D0131E0;
  if (!qword_27D0131E0)
  {
    type metadata accessor for AlertAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0131E0);
  }

  return result;
}

uint64_t sub_22265CD14@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_2227383CC();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

void sub_22265CD8C(id *a1, uint64_t a2, uint64_t *a3)
{
  v52 = *a3;
  v53 = a2;
  v4 = sub_2227383CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v49 = *(v11 - 8);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v48 - v13;
  v15 = [*a1 selectedActionIdentifier];
  v16 = sub_22273919C();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  v20 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v21 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_69;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    LOBYTE(v54) = 0;
    v24 = sub_2226B4644(v16, v18, 10);
    v42 = v47;
    goto LABEL_63;
  }

  if ((v18 & 0x2000000000000000) != 0)
  {
    v56[0] = v16;
    v56[1] = v18 & 0xFFFFFFFFFFFFFFLL;
    if (v16 == 43)
    {
      if (v19)
      {
        if (--v19)
        {
          v24 = 0;
          v34 = v56 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v19)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (v16 != 45)
      {
        if (v19)
        {
          v24 = 0;
          v39 = v56;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              break;
            }

            ++v39;
            if (!--v19)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v19)
      {
        if (--v19)
        {
          v24 = 0;
          v28 = v56 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v19)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    __break(1u);
    return;
  }

  if ((v16 & 0x1000000000000000) == 0)
  {
    goto LABEL_73;
  }

  for (i = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_22273993C())
  {
    v23 = *i;
    if (v23 == 43)
    {
      if (v20 < 1)
      {
        goto LABEL_77;
      }

      v19 = v20 - 1;
      if (v20 == 1)
      {
        goto LABEL_61;
      }

      v24 = 0;
      if (i)
      {
        v31 = i + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            goto LABEL_61;
          }

          v33 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            goto LABEL_61;
          }

          v24 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            goto LABEL_61;
          }

          ++v31;
          if (!--v19)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v23 == 45)
    {
      if (v20 < 1)
      {
        goto LABEL_75;
      }

      v19 = v20 - 1;
      if (v20 == 1)
      {
        goto LABEL_61;
      }

      v24 = 0;
      if (i)
      {
        v25 = i + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v19)
          {
            goto LABEL_62;
          }
        }

LABEL_61:
        v24 = 0;
        LOBYTE(v19) = 1;
        goto LABEL_62;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_61;
      }

      v24 = 0;
      if (i)
      {
        do
        {
          v37 = *i - 48;
          if (v37 > 9)
          {
            goto LABEL_61;
          }

          v38 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            goto LABEL_61;
          }

          v24 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            goto LABEL_61;
          }

          ++i;
        }

        while (--v20);
      }
    }

    LOBYTE(v19) = 0;
LABEL_62:
    LOBYTE(v54) = v19;
    v42 = v19;
LABEL_63:

    if (v42)
    {
      goto LABEL_69;
    }

    v43 = type metadata accessor for AlertAction(0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_73:
    ;
  }

  v44 = *(v53 + *(v43 + 28));
  if (v24 >= *(v44 + 16))
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_22265DBF4(v44 + 56 * v24 + 48, &v54);
  if (v55)
  {
    sub_222634290(&v54, v56);
    sub_222738C9C();
    v46 = v50;
    v45 = v51;
    (*(v50 + 104))(v10, *MEMORY[0x277D21E18], v51);
    sub_22273862C();
    (*(v46 + 8))(v10, v45);
    (*(v49 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return;
  }

  sub_22265DC64(&v54);
LABEL_69:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
  (*(v5 + 104))(v7, *MEMORY[0x277D21CA8], v4);
  sub_222738EAC();
}

void sub_22265D3B0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AlertAction(0);
  v29 = *(v4 - 1);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_222738C9C();
  v6 = *(a1 + v4[6] + 8);
  if (*(a1 + v4[5] + 8))
  {
    v7 = sub_22273916C();
  }

  else
  {
    v7 = 0;
  }

  v33 = a2;
  v30 = v5;
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v6 = sub_22273916C();
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CEE488]) initWithTitle:v7 message:v6];

  v9 = v4[7];
  v32 = a1;
  v10 = *(a1 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    while (1)
    {
      v14 = *(v10 + 16);
      if (v12 == v14)
      {
LABEL_11:
        v19 = [objc_allocWithZone(MEMORY[0x277CEE6B0]) initWithRequest_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F60, &qword_222741248);
        v20 = [v19 present];
        sub_222738F0C();
        v21 = v31;
        sub_22265D9E4(v32, v31);
        v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
        v23 = (v30 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
        v24 = swift_allocObject();
        sub_22265DA48(v21, v24 + v22);
        *(v24 + v23) = v33;
        v37 = sub_22273872C();
        v38 = MEMORY[0x277D21FB0];
        __swift_allocate_boxed_opaque_existential_1(&v35);

        sub_22273871C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
        sub_22265DB48();
        sub_222738EDC();

        goto LABEL_13;
      }

      if (v12 >= v14)
      {
        break;
      }

      v15 = v12 + 1;
      sub_22265D934(v13, &v36);

      sub_22265D990(&v36);
      v34 = v12;
      sub_222739AFC();
      v16 = sub_22273916C();

      v17 = sub_22273916C();

      v18 = [objc_opt_self() actionWithTitle:v16 identifier:v17];

      [v8 addButtonAction_];
      v13 += 56;
      v12 = v15;
      if (v11 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_2227390BC();
    v25 = sub_22273916C();

    v26 = [objc_opt_self() actionWithTitle_];

    [v8 addButtonAction_];
    v27 = [objc_allocWithZone(MEMORY[0x277CEE6B0]) initWithRequest_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F60, &qword_222741248);
    v28 = [v27 present];
    sub_222738F0C();
    v37 = sub_22273872C();
    v38 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(&v35);
    sub_22273871C();
    sub_2227383CC();
    sub_222738E6C();

LABEL_13:

    __swift_destroy_boxed_opaque_existential_1(&v35);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }
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

uint64_t sub_22265D9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22265DA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22265DAAC(id *a1)
{
  v3 = *(type metadata accessor for AlertAction(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22265CD8C(a1, v1 + v4, v5);
}

unint64_t sub_22265DB48()
{
  result = qword_27D0144C0;
  if (!qword_27D0144C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D012F68, &unk_222741250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0144C0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22265DBF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013240, &unk_222741770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22265DC64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013240, &unk_222741770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22265DD24()
{
  result = qword_27D012F78;
  if (!qword_27D012F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D012F78);
  }

  return result;
}

uint64_t sub_22265DD78(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - v5;
  v6 = sub_2227383BC();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertAction(0);
  MEMORY[0x28223BE20](v9);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  sub_222738C9C();
  sub_22273839C();
  v14 = a1;
  v15 = [a1 alertTitle];
  v33 = sub_22273919C();
  v17 = v16;

  v18 = [v14 alertMessage];
  v19 = sub_22273919C();
  v21 = v20;

  v38 = a2;
  v22 = sub_2226EA7C0(a2);
  v23 = v34;
  (*(v39 + 32))(v34, v8, v40);
  v24 = (v23 + v9[5]);
  *v24 = v33;
  v24[1] = v17;
  v25 = (v23 + v9[6]);
  *v25 = v19;
  v25[1] = v21;
  *(v23 + v9[7]) = v22;
  v42[3] = v9;
  v42[4] = sub_22265E1D4(&qword_27D0131E0, type metadata accessor for AlertAction, &unk_222741DF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  sub_22265D9E4(v23, boxed_opaque_existential_1);
  v28 = v35;
  v27 = v36;
  v29 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x277D21E18], v37);
  v30 = sub_22273862C();
  (*(v27 + 8))(v28, v29);
  sub_22265E21C(v23);
  (*(v41 + 8))(v13, v11);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v30;
}

uint64_t sub_22265E1D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22265E21C(uint64_t a1)
{
  v2 = type metadata accessor for AlertAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22265E28C()
{
  result = qword_27D0133B0;
  if (!qword_27D0133B0)
  {
    sub_22262E364(255, &qword_27D012F80, off_2784B0600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0133B0);
  }

  return result;
}

uint64_t sub_22265E2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a2;
  v3[42] = a3;
  v3[40] = a1;
  sub_2227381BC();
  v3[43] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = type metadata accessor for OpenAppAction(0);
  v3[48] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[49] = v5;
  v3[50] = *(v5 - 8);
  v3[51] = swift_task_alloc();
  v6 = sub_22273786C();
  v3[52] = v6;
  v3[53] = *(v6 - 8);
  v3[54] = swift_task_alloc();
  v7 = sub_2227378CC();
  v3[55] = v7;
  v3[56] = *(v7 - 8);
  v3[57] = swift_task_alloc();
  v8 = sub_2227377AC();
  v3[58] = v8;
  v3[59] = *(v8 - 8);
  v3[60] = swift_task_alloc();
  sub_222737C2C();
  v3[61] = swift_task_alloc();
  v9 = sub_2227377BC();
  v3[62] = v9;
  v3[63] = *(v9 - 8);
  v3[64] = swift_task_alloc();
  v10 = sub_22273793C();
  v3[65] = v10;
  v3[66] = *(v10 - 8);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22265E68C, 0, 0);
}

uint64_t sub_22265E68C()
{
  v82 = v0;
  v1 = *(v0 + 328);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 336);
    sub_222634290((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v4 = [v3 id];
    [v4 int64value];
    sub_222737C1C();
    v74 = *(v0 + 544);
    v6 = *(v0 + 528);
    v77 = *(v0 + 520);
    v79 = *(v0 + 536);
    v7 = *(v0 + 504);
    v8 = *(v0 + 512);
    v75 = *(v0 + 496);
    v9 = *(v0 + 456);
    v10 = *(v0 + 448);
    v73 = *(v0 + 440);
    (*(*(v0 + 472) + 104))(*(v0 + 480), *MEMORY[0x277CEBFE8], *(v0 + 464));
    sub_22273778C();

    sub_2227113BC();
    sub_2227379EC();
    (*(v10 + 8))(v9, v73);
    (*(v7 + 8))(v8, v75);
    (*(v6 + 16))(v79, v74, v77);
    if ((*(v6 + 88))(v79, v77) == *MEMORY[0x277CEC0C0])
    {
      v11 = *(v0 + 536);
      v12 = *(v0 + 424);
      v13 = *(v0 + 432);
      v14 = *(v0 + 416);
      v15 = *(v0 + 384);
      v16 = *(v0 + 376);
      v76 = *(v0 + 360);
      v78 = *(v0 + 352);
      v80 = *(v0 + 368);
      v17 = *(v0 + 336);
      (*(*(v0 + 528) + 96))(v11, *(v0 + 520));
      (*(v12 + 32))(v13, v11, v14);
      type metadata accessor for ObjectGraph(0);
      sub_222738C9C();
      sub_22265FBE8(v15);
      v18 = [v17 id];
      (*(v12 + 16))(v15 + v16[6], v13, v14);
      v19 = [v17 flags];
      *(v15 + v16[5]) = v18;
      *(v15 + v16[7]) = (v19 & 0x2000) != 0;
      *(v0 + 120) = v16;
      *(v0 + 128) = sub_2226604C8();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      sub_222660520(v15, boxed_opaque_existential_1);
      (*(v76 + 104))(v80, *MEMORY[0x277D21E18], v78);
      v21 = swift_task_alloc();
      *(v0 + 552) = v21;
      *v21 = v0;
      v21[1] = sub_22265F0A0;
      v22 = *(v0 + 392);
      v23 = *(v0 + 368);
      v24 = *(v0 + 320);
      v25 = *(v0 + 328);

      return MEMORY[0x28217F468](v24, v0 + 96, v23, v25, v22);
    }

    v26 = [*(v0 + 336) id];
    v27 = [v26 stringValue];

    v28 = sub_22273919C();
    v30 = v29;

    v35 = HIBYTE(v30) & 0xF;
    v36 = v28 & 0xFFFFFFFFFFFFLL;
    if ((v30 & 0x2000000000000000) != 0)
    {
      v37 = HIBYTE(v30) & 0xF;
    }

    else
    {
      v37 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {

LABEL_79:
      v59 = *(v0 + 536);
      v60 = *(v0 + 520);
      v61 = *(v0 + 320);
      v62 = *(*(v0 + 528) + 8);
      v62(*(v0 + 544), v60);
      v63 = *MEMORY[0x277D21CA0];
      v64 = sub_2227383CC();
      (*(*(v64 - 8) + 104))(v61, v63, v64);
      v62(v59, v60);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));

      v65 = *(v0 + 8);

      return v65();
    }

    if ((v30 & 0x1000000000000000) != 0)
    {
      v39 = sub_2226B4BD0(v28, v30, 10);
      v52 = v72;
LABEL_77:

      if (v52)
      {
        goto LABEL_79;
      }

      *(v0 + 568) = v39;
      v53 = [*(v0 + 336) appVersionId];
      v54 = sub_22273919C();
      v56 = v55;

      v57 = sub_2226B41FC(v54, v56);
      *(v0 + 576) = v57;
      if (v58)
      {
        goto LABEL_79;
      }

      v66 = v57;
      v67 = [*(v0 + 336) distributorId];
      v68 = sub_22273919C();
      v70 = v69;

      *(v0 + 584) = v70;
      v71 = swift_task_alloc();
      *(v0 + 592) = v71;
      *v71 = v0;
      v71[1] = sub_22265F35C;
      v31 = v68;
      v36 = v70;
      v32 = v39;
      v33 = v66;
      v34 = 0;

      return MEMORY[0x2821237A0](v31, v36, v32, v33, v34);
    }

    if ((v30 & 0x2000000000000000) != 0)
    {
      v81[0] = v28;
      v81[1] = v30 & 0xFFFFFFFFFFFFFFLL;
      if (v28 == 43)
      {
        if (v35)
        {
          if (--v35)
          {
            v39 = 0;
            v47 = v81 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                break;
              }

              v42 = __CFADD__(10 * v39, v48);
              v39 = 10 * v39 + v48;
              if (v42)
              {
                break;
              }

              ++v47;
              if (!--v35)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_89:
        __break(1u);
        return MEMORY[0x2821237A0](v31, v36, v32, v33, v34);
      }

      if (v28 != 45)
      {
        if (v35)
        {
          v39 = 0;
          v50 = v81;
          while (1)
          {
            v51 = *v50 - 48;
            if (v51 > 9)
            {
              break;
            }

            if (!is_mul_ok(v39, 0xAuLL))
            {
              break;
            }

            v42 = __CFADD__(10 * v39, v51);
            v39 = 10 * v39 + v51;
            if (v42)
            {
              break;
            }

            ++v50;
            if (!--v35)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

      if (v35)
      {
        if (--v35)
        {
          v39 = 0;
          v43 = v81 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            if (!is_mul_ok(v39, 0xAuLL))
            {
              break;
            }

            v42 = 10 * v39 >= v44;
            v39 = 10 * v39 - v44;
            if (!v42)
            {
              break;
            }

            ++v43;
            if (!--v35)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((v28 & 0x1000000000000000) != 0)
      {
        v31 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v31 = sub_22273993C();
      }

      v38 = *v31;
      if (v38 == 43)
      {
        if (v36 >= 1)
        {
          v35 = v36 - 1;
          if (v36 != 1)
          {
            v39 = 0;
            if (v31)
            {
              v45 = v31 + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  goto LABEL_75;
                }

                if (!is_mul_ok(v39, 0xAuLL))
                {
                  goto LABEL_75;
                }

                v42 = __CFADD__(10 * v39, v46);
                v39 = 10 * v39 + v46;
                if (v42)
                {
                  goto LABEL_75;
                }

                ++v45;
                if (!--v35)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_75;
        }

        goto LABEL_88;
      }

      if (v38 != 45)
      {
        if (v36)
        {
          v39 = 0;
          if (v31)
          {
            while (1)
            {
              v49 = *v31 - 48;
              if (v49 > 9)
              {
                goto LABEL_75;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                goto LABEL_75;
              }

              v42 = __CFADD__(10 * v39, v49);
              v39 = 10 * v39 + v49;
              if (v42)
              {
                goto LABEL_75;
              }

              ++v31;
              if (!--v36)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_75:
        v39 = 0;
        LOBYTE(v35) = 1;
        goto LABEL_76;
      }

      if (v36 >= 1)
      {
        v35 = v36 - 1;
        if (v36 != 1)
        {
          v39 = 0;
          if (v31)
          {
            v40 = v31 + 1;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                goto LABEL_75;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                goto LABEL_75;
              }

              v42 = 10 * v39 >= v41;
              v39 = 10 * v39 - v41;
              if (!v42)
              {
                goto LABEL_75;
              }

              ++v40;
              if (!--v35)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_67:
          LOBYTE(v35) = 0;
LABEL_76:
          v52 = v35;
          goto LABEL_77;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  sub_222660468(v0 + 56, &unk_27D013120, &unk_222741980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

  return sub_22273851C();
}

uint64_t sub_22265F0A0()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  (*(v2[45] + 8))(v2[46], v2[44]);
  if (v0)
  {
    v3 = sub_22265F604;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 12);
    v3 = sub_22265F1EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22265F1EC()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[49];
  v9 = v0[50];
  sub_222660584(v0[48]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22265F35C()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_22265F784;
  }

  else
  {

    v2 = sub_22265F478;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22265F478()
{
  v1 = v0[67];
  v2 = v0[65];
  v3 = v0[40];
  v4 = *(v0[66] + 8);
  v4(v0[68], v2);
  v5 = *MEMORY[0x277D21CA8];
  v6 = sub_2227383CC();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  v4(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22265F604()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[49];
  v9 = v0[50];
  sub_222660584(v0[48]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22265F784()
{
  v1 = v0;

  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[66];
  v21 = v0[65];
  v22 = v0[68];
  v18 = v0[42];
  v19 = v0[75];
  v23 = v0[40];
  v24 = v0[67];
  v20 = sub_222738F6C();
  __swift_project_value_buffer(v20, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v5 = MEMORY[0x277D84D38];
  v0[20] = MEMORY[0x277D84D38];
  v0[17] = v3;
  sub_22273816C();
  sub_222660468((v0 + 17), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v0[24] = v5;
  v0[21] = v2;
  sub_22273816C();
  sub_222660468((v0 + 21), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v6 = [v18 distributorId];
  v7 = sub_22273919C();
  v9 = v8;

  v1[28] = MEMORY[0x277D837D0];
  v1[25] = v7;
  v1[26] = v9;
  sub_22273816C();
  sub_222660468((v1 + 25), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v11 = v1[36];
  v10 = v1[37];
  v1[32] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 29);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
  sub_22273816C();
  sub_222660468((v1 + 29), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v13 = *(v4 + 8);
  v13(v22, v21);
  v14 = *MEMORY[0x277D21CA0];
  v15 = sub_2227383CC();
  (*(*(v15 - 8) + 104))(v23, v14, v15);
  v13(v24, v21);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);

  v16 = v1[1];

  return v16();
}

void *sub_22265FBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2227382CC();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2227386BC();
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 metrics];
  sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  v12 = sub_22273937C();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_16:

    sub_2227386AC();
    return sub_2227383AC();
  }

  v13 = sub_22273984C();
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  v42 = MEMORY[0x277D84F90];
  result = sub_2226AE744(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v31 = v10;
    v32 = a1;
    v15 = 0;
    v16 = v42;
    v33 = v39 + 32;
    v34 = v12 & 0xC000000000000001;
    v36 = v12;
    v37 = v6;
    v35 = v13;
    do
    {
      if (v34)
      {
        v17 = MEMORY[0x223DBEC70](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v18 topic];
      if (v19)
      {
        v20 = v19;
        v21 = sub_22273919C();
        v40 = v22;
        v41 = v21;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      [v18 shouldFlush];
      v23 = [v18 fields];
      sub_22273910C();

      v24 = [v18 includingFields];
      v25 = sub_2227394CC();

      sub_2226ADE58(v25, sub_2226E92DC, 0);
      v26 = [v18 includingFields];
      v27 = sub_2227394CC();

      sub_2226AE0E4(v27, sub_2226E932C, 0);
      v28 = v37;
      sub_22273829C();

      v42 = v16;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2226AE744((v29 > 1), v30 + 1, 1);
        v16 = v42;
      }

      ++v15;
      *(v16 + 16) = v30 + 1;
      (*(v39 + 32))(v16 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30, v28, v38);
      v12 = v36;
    }

    while (v35 != v15);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22265FFE4(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v9 = v7;
  v10 = sub_222738F2C();
  v11 = sub_22273946C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_222741380;
  v12[5] = v8;
  v12[6] = v10;

  sub_2226D4E54(0, 0, v6, &unk_222741390, v12);

  return v10;
}

uint64_t sub_22266017C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_22265E2F4(a1, v5, v4);
}

uint64_t sub_222660228()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22266031C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D29C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2226603F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013120, &unk_222741980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222660468(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2226604C8()
{
  result = qword_27D012F88;
  if (!qword_27D012F88)
  {
    type metadata accessor for OpenAppAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012F88);
  }

  return result;
}

uint64_t sub_222660520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenAppAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222660584(uint64_t a1)
{
  v2 = type metadata accessor for OpenAppAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2226605F8()
{
  result = qword_27D012F90;
  if (!qword_27D012F90)
  {
    type metadata accessor for AppLaunchTrampolineAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012F90);
  }

  return result;
}

uint64_t sub_222660650()
{
  v0 = sub_2227383CC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_222738EEC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22266073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v26 = a4;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v20 = &v20 - v8;
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v9 = sub_222738F6C();
  __swift_project_value_buffer(v9, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_22273813C();
  swift_getErrorValue();
  v11 = v30[5];
  v10 = v31;
  v30[3] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
  sub_2227381EC();
  sub_222660468(v30, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  v13 = type metadata accessor for AppLaunchTrampolineAction(0);
  sub_22266110C(v25 + *(v13 + 28), &v27, &unk_27D013240, &unk_222741770);
  if (v28)
  {
    sub_222634290(&v27, v30);
    type metadata accessor for ObjectGraph(0);
    v14 = v20;
    sub_222738C9C();
    v16 = v21;
    v15 = v22;
    (*(v21 + 104))(v6, *MEMORY[0x277D21E18], v22);
    sub_22273862C();
    (*(v16 + 8))(v6, v15);
    v17 = sub_22262D828();
    swift_retain_n();
    v18 = sub_22273955C();
    v28 = v17;
    v29 = MEMORY[0x277D225C0];
    *&v27 = v18;
    sub_222738E8C();

    (*(v24 + 8))(v14, v7);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    sub_222660468(&v27, &unk_27D013240, &unk_222741770);
    return sub_222738ECC();
  }
}

uint64_t sub_222660BBC(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for AppLaunchTrampolineAction(0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v23 = v4;
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
  v8 = sub_222738F2C();
  v9 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  v10 = sub_22273916C();
  sub_22266110C(a1 + *(v3 + 20), v7, &qword_27D013DC0, qword_222743950);
  v11 = sub_22273731C();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    v13 = sub_2227372BC();
    (*(v12 + 8))(v7, v11);
  }

  v14 = v9;
  v15 = [v9 openApplicationWithBundleIdentifier:v10 payloadURL:v13 universalLinkRequired:*(a1 + *(v3 + 24))];

  v31 = sub_222660F94;
  v32 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_222730B40;
  v30 = &block_descriptor;
  v16 = _Block_copy(&aBlock);

  [v15 addSuccessBlock_];
  _Block_release(v16);
  v17 = v25;
  sub_222660F9C(a1, v25);
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = (v23 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_222661000(v17, v20 + v18);
  *(v20 + v19) = v26;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v31 = sub_222661064;
  v32 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_222730B48;
  v30 = &block_descriptor_3;
  v21 = _Block_copy(&aBlock);

  [v15 addErrorBlock_];
  _Block_release(v21);

  return v8;
}

uint64_t sub_222660F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchTrampolineAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222661000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchTrampolineAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222661064(uint64_t a1)
{
  v3 = *(type metadata accessor for AppLaunchTrampolineAction(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22266073C(a1, v1 + v4, v6, v7);
}

uint64_t sub_22266110C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_222661198()
{
  result = qword_27D0133A0;
  if (!qword_27D0133A0)
  {
    sub_22262E364(255, &qword_27D012F98, off_2784B0610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0133A0);
  }

  return result;
}

uint64_t sub_222661200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 681) = a5;
  *(v5 + 384) = a3;
  *(v5 + 392) = a4;
  *(v5 + 368) = a1;
  *(v5 + 376) = a2;
  v6 = sub_2227383CC();
  *(v5 + 400) = v6;
  *(v5 + 408) = *(v6 - 8);
  *(v5 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  *(v5 + 424) = swift_task_alloc();
  v7 = sub_222737C5C();
  *(v5 + 432) = v7;
  *(v5 + 440) = *(v7 - 8);
  *(v5 + 448) = swift_task_alloc();
  sub_2227381BC();
  *(v5 + 456) = swift_task_alloc();
  v8 = sub_22273784C();
  *(v5 + 464) = v8;
  *(v5 + 472) = *(v8 - 8);
  *(v5 + 480) = swift_task_alloc();
  v9 = sub_2227378CC();
  *(v5 + 488) = v9;
  *(v5 + 496) = *(v9 - 8);
  *(v5 + 504) = swift_task_alloc();
  v10 = sub_22273793C();
  *(v5 + 512) = v10;
  v11 = *(v10 - 8);
  *(v5 + 520) = v11;
  *(v5 + 528) = *(v11 + 64);
  *(v5 + 536) = swift_task_alloc();
  *(v5 + 544) = swift_task_alloc();
  v12 = sub_2227377AC();
  *(v5 + 552) = v12;
  *(v5 + 560) = *(v12 - 8);
  *(v5 + 568) = swift_task_alloc();
  sub_222737C2C();
  *(v5 + 576) = swift_task_alloc();
  v13 = sub_2227377BC();
  *(v5 + 584) = v13;
  *(v5 + 592) = *(v13 - 8);
  *(v5 + 600) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222661594, 0, 0);
}

uint64_t sub_222661594()
{
  sub_22262E364(0, &qword_27D013080, off_2784B06E8);
  type metadata accessor for ObjectGraph(0);
  sub_222738C9C();
  v1 = *(v0 + 352);
  *(v0 + 608) = v1;
  v2 = [v1 fields];
  v3 = sub_22273910C();

  v4 = sub_22273919C();
  if (*(v3 + 16))
  {
    v6 = sub_222688818(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = (*(v3 + 56) + 16 * v6);
      v10 = v9[1];
      v32 = *v9;

      goto LABEL_6;
    }
  }

  else
  {
  }

  v32 = 0;
  v10 = 0;
LABEL_6:

  v11 = *(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137F0, &qword_222741520);
  sub_222738C9C();
  v12 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v11 + v12, v0 + 96);
  if (*(v0 + 120))
  {
    v13 = *(v0 + 384);
    sub_222634290((v0 + 96), v0 + 56);
    v14 = [v13 id];
    [v14 int64value];
    sub_222737C1C();
    v16 = *(v0 + 520);
    v17 = *(v0 + 504);
    v28 = *(v0 + 536);
    v29 = *(v0 + 512);
    v18 = *(v0 + 496);
    v24 = *(v0 + 544);
    v25 = *(v0 + 488);
    v30 = *(v0 + 472);
    v31 = *(v0 + 464);
    v26 = *(v0 + 384);
    v27 = *(v0 + 480);
    (*(*(v0 + 560) + 104))(*(v0 + 568), *MEMORY[0x277CEBFE8], *(v0 + 552));
    sub_22273778C();

    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_2227113C0();
    sub_2227379EC();
    (*(v18 + 8))(v17, v25);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v19 = *(v16 + 16);
    *(v0 + 616) = v19;
    *(v0 + 624) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v28, v24, v29);
    sub_22273785C();
    sub_22273798C();
    (*(v30 + 8))(v27, v31);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v20 = [v26 id];
    *(v0 + 632) = sub_2226FE014(v32, v10, v20);

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FB0, &qword_222741528);
    v22 = sub_22266BC78(&qword_281312E40, &qword_27D012FB0, &qword_222741528);
    v23 = swift_task_alloc();
    *(v0 + 640) = v23;
    *v23 = v0;
    v23[1] = sub_222661B10;

    return MEMORY[0x282180360](v0 + 680, v21, v22);
  }

  else
  {
    sub_222660468(v0 + 96, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_222661B10()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_2226625A8;
  }

  else
  {
    *(v2 + 682) = *(v2 + 680);
    v3 = sub_222661C4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222661C4C()
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 682);
  v2 = *(v0 + 384);
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = [v2 id];
  *(v0 + 264) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  *(v0 + 240) = v4;
  sub_22273815C();
  sub_222660468(v0 + 240, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  *(v0 + 296) = MEMORY[0x277D839B0];
  *(v0 + 272) = v1;
  sub_22273816C();
  sub_222660468(v0 + 272, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v24 = *(v0 + 616);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v10 = *(v0 + 440);
  v9 = *(v0 + 448);
  v11 = *(v0 + 432);
  v29 = *(v0 + 424);
  v28 = *(v0 + 681);
  v12 = *(v0 + 392);
  v27 = *(v0 + 384);
  v25 = *(v0 + 528);
  v26 = *(v0 + 376);
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  (*(v10 + 104))(v9, *MEMORY[0x277D851C8], v11);
  v30 = sub_22273959C();
  (*(v10 + 8))(v9, v11);
  v24(v6, v5, v8);
  sub_22266BCCC(v12, v0 + 136);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v26;
  *(v14 + 24) = v27;
  (*(v7 + 32))(v14 + v13, v6, v8);
  *(v14 + v13 + v25) = v28;
  sub_222634290((v0 + 136), v14 + ((v13 + v25) & 0xFFFFFFFFFFFFFFF8) + 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v16 = v27;
  v17 = sub_222738F2C();
  *(v0 + 656) = v17;
  v18 = sub_22273946C();
  (*(*(v18 - 8) + 56))(v29, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_222741538;
  v19[5] = v14;
  v19[6] = v17;

  sub_2226D4E54(0, 0, v29, &unk_222741540, v19);

  v20 = sub_22266BC78(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
  v21 = swift_task_alloc();
  *(v0 + 664) = v21;
  *v21 = v0;
  v21[1] = sub_222662160;
  v22 = *(v0 + 416);

  return MEMORY[0x282180360](v22, v15, v20);
}

uint64_t sub_222662160()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {

    v3 = sub_222662444;
  }

  else
  {
    (*(v2[51] + 8))(v2[52], v2[50]);

    v3 = sub_2226622B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226622B8()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 544);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 368);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v7 + 104))(v9, *MEMORY[0x277D21CA8], v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_222662444()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 544);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2226625A8()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 648);
  v2 = *(v0 + 384);
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = [v2 id];
  *(v0 + 200) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  *(v0 + 176) = v4;
  sub_22273815C();
  sub_222660468(v0 + 176, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  *(v0 + 232) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 208));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_22273816C();
  sub_222660468(v0 + 208, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v27 = *(v0 + 616);
  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v10 = *(v0 + 520);
  v11 = *(v0 + 512);
  v13 = *(v0 + 440);
  v12 = *(v0 + 448);
  v14 = *(v0 + 432);
  v32 = *(v0 + 424);
  v31 = *(v0 + 681);
  v15 = *(v0 + 392);
  v30 = *(v0 + 384);
  v28 = *(v0 + 528);
  v29 = *(v0 + 376);
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  (*(v13 + 104))(v12, *MEMORY[0x277D851C8], v14);
  v33 = sub_22273959C();
  (*(v13 + 8))(v12, v14);
  v27(v9, v8, v11);
  sub_22266BCCC(v15, v0 + 136);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v29;
  *(v17 + 24) = v30;
  (*(v10 + 32))(v17 + v16, v9, v11);
  *(v17 + v16 + v28) = v31;
  sub_222634290((v0 + 136), v17 + ((v16 + v28) & 0xFFFFFFFFFFFFFFF8) + 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v19 = v30;
  v20 = sub_222738F2C();
  *(v0 + 656) = v20;
  v21 = sub_22273946C();
  (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_222741538;
  v22[5] = v17;
  v22[6] = v20;

  sub_2226D4E54(0, 0, v32, &unk_222741540, v22);

  v23 = sub_22266BC78(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
  v24 = swift_task_alloc();
  *(v0 + 664) = v24;
  *v24 = v0;
  v24[1] = sub_222662160;
  v25 = *(v0 + 416);

  return MEMORY[0x282180360](v25, v18, v23);
}

id sub_222662B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = sub_22273919C();
  v7 = v6;
  v8 = sub_22273919C();
  v10 = v9;
  v11 = sub_22273919C();
  v4(v5, v7, v8, v10, v11, v12);

  v13 = sub_22273916C();

  return v13;
}

uint64_t sub_222662C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 808) = a6;
  *(v6 + 1268) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  v7 = sub_2227378CC();
  *(v6 + 816) = v7;
  *(v6 + 824) = *(v7 - 8);
  *(v6 + 832) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  *(v6 + 840) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FB8, &qword_222741548);
  *(v6 + 848) = swift_task_alloc();
  v8 = sub_22273793C();
  *(v6 + 856) = v8;
  *(v6 + 864) = *(v8 - 8);
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  v9 = sub_2227377AC();
  *(v6 + 888) = v9;
  *(v6 + 896) = *(v9 - 8);
  *(v6 + 904) = swift_task_alloc();
  v10 = sub_222737C2C();
  *(v6 + 912) = v10;
  v11 = *(v10 - 8);
  *(v6 + 920) = v11;
  *(v6 + 928) = *(v11 + 64);
  *(v6 + 936) = swift_task_alloc();
  *(v6 + 944) = swift_task_alloc();
  *(v6 + 952) = swift_task_alloc();
  v12 = sub_2227377BC();
  *(v6 + 960) = v12;
  *(v6 + 968) = *(v12 - 8);
  *(v6 + 976) = swift_task_alloc();
  sub_2227381BC();
  *(v6 + 984) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222662F18, 0, 0);
}

uint64_t sub_222662F18()
{
  v1 = *(v0 + 784);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 800);
    v4 = *(v0 + 792);
    sub_222634290((v0 + 56), v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FC0, &unk_222741550);
    *(v0 + 992) = type metadata accessor for ObjectGraph(0);
    sub_222738C9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137A0, &qword_222741D90);
    sub_222738C9C();
    sub_22262E364(0, &qword_27D013080, off_2784B06E8);
    sub_222738C9C();
    v5 = *(v0 + 712);
    v6 = sub_22266B994(v5);
    *(v0 + 1000) = v6;

    sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
    sub_222738C9C();
    *(v0 + 1008) = *(v0 + 720);
    v7 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_222738C9C();
    v8 = *(v0 + 728);
    *(v0 + 1016) = sub_2226FE348(v4, v3, v6, v8, *v7);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014490, &qword_222741560);
    v10 = sub_22266BC78(&qword_27D012FC8, &unk_27D014490, &qword_222741560);
    v11 = swift_task_alloc();
    *(v0 + 1024) = v11;
    *v11 = v0;
    v11[1] = sub_2226631E8;

    return MEMORY[0x282180360](v0 + 768, v9, v10);
  }

  else
  {
    sub_222660468(v0 + 56, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_2226631E8()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = sub_222663324;
  }

  else
  {
    *(v2 + 1040) = *(v2 + 768);
    v3 = sub_222663458;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222663324()
{
  v1 = *(v0 + 1000);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_222663458()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1040);
  v31 = *(v0 + 1032);
  v2 = sub_222738F6C();
  *(v0 + 1048) = v2;
  *(v0 + 1056) = __swift_project_value_buffer(v2, qword_27D019C68);
  *(v0 + 1064) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  *(v0 + 1072) = *(v3 + 72);
  *(v0 + 1264) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = [v1 id];
  *(v0 + 632) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  *(v0 + 608) = v4;
  sub_22273815C();
  sub_222660468(v0 + 608, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v5 = sub_2226EC744();
  *(v0 + 408) = MEMORY[0x277D837D0];
  *(v0 + 384) = v5;
  *(v0 + 392) = v6;
  sub_22273815C();
  sub_222660468(v0 + 384, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v7 = [v1 id];
  [v7 int64value];
  sub_222737C1C();
  v8 = *(v0 + 1040);
  v9 = *(v0 + 1008);
  if (v31)
  {
    v10 = *(v0 + 1000);

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 880);
  v14 = *(v0 + 864);
  v30 = *(v0 + 856);
  v32 = *(v0 + 1268);
  v29 = *(v0 + 800);
  (*(*(v0 + 896) + 104))(*(v0 + 904), *MEMORY[0x277CEBFE8], *(v0 + 888));
  sub_22273778C();

  sub_22262E364(0, &qword_27D012FD0, 0x277CEC400);
  (*(v14 + 16))(v13, v29, v30);
  v15 = sub_2226AFCE4(v8, v9, v13, v32);
  *(v0 + 1080) = v15;
  if (!v15)
  {
    v33 = *(v0 + 1040);
    v24 = *(v0 + 1008);
    v25 = *(v0 + 1000);
    v26 = *(v0 + 976);
    v27 = *(v0 + 968);
    v28 = *(v0 + 960);
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    sub_22273799C();
    type metadata accessor for ASCAppOfferActionError(0);
    *(v0 + 744) = 1;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_22266B710(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
    sub_22273725C();
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
    goto LABEL_5;
  }

  v16 = v15;
  v17 = *(v0 + 808);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v18 = [v16 itemID];
  v19 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  *(v0 + 1088) = v19;
  *(v0 + 312) = v19;
  *(v0 + 288) = v18;
  sub_22273815C();
  sub_222660468(v0 + 288, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v20 = v17[3];
  v21 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v20);
  v22 = *(v21 + 8);
  v23 = swift_task_alloc();
  *(v0 + 1096) = v23;
  *v23 = v0;
  v23[1] = sub_222663B6C;

  return MEMORY[0x28213E4F0](v16, v20, v22);
}

uint64_t sub_222663B6C(char a1)
{
  v4 = *v2;
  *(*v2 + 1104) = v1;

  if (v1)
  {
    v5 = sub_222665600;
  }

  else
  {
    *(v4 + 1269) = a1 & 1;
    v5 = sub_222663C98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222663C98()
{
  v1 = *(v0 + 1269);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  if (v1 == 1)
  {
    v4 = *(v0 + 920);
    v36 = *(v0 + 912);
    v5 = *(v0 + 848);
    sub_2227381AC();
    sub_22273819C();
    v6 = [v3 itemID];
    *(v0 + 440) = v2;
    *(v0 + 416) = v6;
    sub_22273815C();
    sub_222660468(v0 + 416, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    sub_2226EC9A0(v5);
    if ((*(v4 + 48))(v5, 1, v36) == 1)
    {
      sub_222660468(*(v0 + 848), &qword_27D012FB8, &qword_222741548);
    }

    else
    {
      v8 = *(v0 + 944);
      v9 = *(v0 + 936);
      v10 = *(v0 + 920);
      v11 = *(v0 + 912);
      v12 = *(v0 + 840);
      v13 = *(v10 + 32);
      v13(v8, *(v0 + 848), v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
      sub_222738C9C();
      v14 = sub_22273946C();
      (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
      sub_22266BCCC(v0 + 216, v0 + 16);
      (*(v10 + 16))(v9, v8, v11);
      v15 = (*(v10 + 80) + 72) & ~*(v10 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      sub_222634290((v0 + 16), v16 + 32);
      v13(v16 + v15, v9, v11);
      sub_222697A98(0, 0, v12, &unk_222741580, v16);

      __swift_destroy_boxed_opaque_existential_1((v0 + 216));
      (*(v10 + 8))(v8, v11);
    }

    if (sub_2226ECFE0())
    {
      v17 = *(v0 + 1088);
      v18 = *(v0 + 1080);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      v19 = [v18 itemID];
      *(v0 + 472) = v17;
      *(v0 + 448) = v19;
      sub_22273815C();
      sub_222660468(v0 + 448, &qword_27D0130C0, &unk_2227413B0);
      sub_22273819C();
      sub_2227381CC();
      sub_222738C4C();

      v20 = *(v0 + 160);
      v21 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v20);
      v22 = swift_task_alloc();
      *(v0 + 1112) = v22;
      *v22 = v0;
      v22[1] = sub_2226643DC;

      return MEMORY[0x28213E4D8](0, v20, v21);
    }
  }

  else
  {
    sub_2227381AC();
    sub_22273819C();
    v7 = [v3 itemID];
    *(v0 + 376) = v2;
    *(v0 + 352) = v7;
    sub_22273815C();
    sub_222660468(v0 + 352, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C7C();
  }

  if ([*(v0 + 1008) shouldInstallParentApp])
  {
    v23 = swift_task_alloc();
    *(v0 + 1168) = v23;
    *v23 = v0;
    v23[1] = sub_222664D60;
    v24 = *(v0 + 976);

    return sub_2226FF0A0(v24, v0 + 176);
  }

  else
  {
    v25 = *(v0 + 976);
    v26 = *(v0 + 968);
    v27 = *(v0 + 960);
    v28 = *(v0 + 200);
    v29 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
    v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2227412F0;
    (*(v26 + 16))(v31 + v30, v25, v27);
    v32 = sub_2226DCF44(v31);
    *(v0 + 1176) = v32;
    swift_setDeallocating();
    v33 = *(v26 + 8);
    *(v0 + 1184) = v33;
    *(v0 + 1192) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v31 + v30, v27);
    swift_deallocClassInstance();
    v34 = swift_task_alloc();
    *(v0 + 1200) = v34;
    *v34 = v0;
    v34[1] = sub_222665004;

    return MEMORY[0x28213E418](v32, 0, v28, v29);
  }
}

uint64_t sub_2226643DC()
{
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2 = sub_222665920;
  }

  else
  {
    v2 = sub_2226644F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226644F0()
{
  v1 = v0[136];
  v2 = v0[135];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v3 = [v2 itemID];
  v0[75] = v1;
  v0[72] = v3;
  sub_22273815C();
  sub_222660468((v0 + 72), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[120];
  v7 = v0[25];
  v8 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2227412F0;
  (*(v5 + 16))(v10 + v9, v4, v6);
  v11 = sub_2226DCF44(v10);
  v0[141] = v11;
  swift_setDeallocating();
  v12 = *(v5 + 8);
  v0[142] = v12;
  v0[143] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v10 + v9, v6);
  swift_deallocClassInstance();
  v13 = swift_task_alloc();
  v0[144] = v13;
  *v13 = v0;
  v13[1] = sub_222664768;

  return MEMORY[0x28213E418](v11, 0, v7, v8);
}

uint64_t sub_222664768()
{
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v2 = sub_222665C38;
  }

  else
  {

    v2 = sub_222664884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222664884()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v33 = *(v0 + 856);
  v34 = *(v0 + 864);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v31 = *(v0 + 816);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  sub_22273799C();
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  sub_2227113C0();
  sub_2227379EC();
  (*(v4 + 8))(v3, v31);
  v5 = *(v34 + 104);
  v5(v1, *MEMORY[0x277CEC0B0], v33);
  v6 = MEMORY[0x223DBCC40](v2, v1);
  v7 = *(v34 + 8);
  v7(v1, v33);
  if (v6)
  {
    v32 = v5;
    v8 = *(v0 + 1088);
    v9 = *(v0 + 1080);
    v10 = *(v0 + 1040);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v11 = [v9 itemID];
    *(v0 + 568) = v8;
    *(v0 + 544) = v11;
    sub_22273815C();
    sub_222660468(v0 + 544, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    LOBYTE(v8) = [v10 flags];
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    v12 = sub_22273783C();
    v13 = *(v0 + 1080);
    v28 = *(v0 + 1008);
    v29 = *(v0 + 1040);
    v14 = *(v0 + 1000);
    v15 = *(v0 + 880);
    v30 = *(v0 + 872);
    v16 = *(v0 + 856);
    if ((v8 & 8) != 0)
    {
      v17 = MEMORY[0x277CEC038];
    }

    else
    {
      v17 = MEMORY[0x277CEC040];
    }

    (*(*(v12 - 8) + 104))(v15, *v17, v12);
    v32(v15, *MEMORY[0x277CEC0D0], v16);
    sub_22273794C();

    v7(v15, v16);
    v7(v30, v16);
  }

  else
  {
    v18 = *(v0 + 1080);
    v19 = *(v0 + 1040);
    v20 = *(v0 + 1008);
    v21 = *(v0 + 872);
    v22 = *(v0 + 856);

    v7(v21, v22);
  }

  v23 = *(v0 + 776);
  (*(v0 + 1136))(*(v0 + 976), *(v0 + 960));
  v24 = *MEMORY[0x277D21CA8];
  v25 = sub_2227383CC();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_222664D60()
{

  return MEMORY[0x2822009F8](sub_222664E5C, 0, 0);
}

uint64_t sub_222664E5C()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 968);

  v5 = *(v0 + 776);
  (*(v4 + 8))(*(v0 + 976), *(v0 + 960));
  v6 = *MEMORY[0x277D21CA8];
  v7 = sub_2227383CC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_222665004()
{
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v2 = sub_222665F60;
  }

  else
  {

    v2 = sub_222665120;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222665120()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  sub_22273799C();

  v5 = *(v0 + 776);
  (*(v0 + 1184))(*(v0 + 976), *(v0 + 960));
  v6 = *MEMORY[0x277D21CA8];
  v7 = sub_2227383CC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2226652F0()
{
  *(*v1 + 1256) = v0;

  if (v0)
  {
    v2 = sub_222666288;
  }

  else
  {
    v2 = sub_222665424;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222665424()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  sub_22273799C();

  v6 = *(v0 + 776);
  (*(v0 + 1232))(*(v0 + 976), *(v0 + 960));
  v7 = *MEMORY[0x277D21CA8];
  v8 = sub_2227383CC();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_222665600()
{
  v0[152] = v0[138];
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[121];
  v16 = v0[120];
  v17 = v0[122];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = [v2 itemID];
  v0[35] = v1;
  v0[32] = v4;
  sub_22273815C();
  sub_222660468((v0 + 32), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v5 = v0[83];
  v6 = v0[84];
  v0[43] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 40);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_22273816C();
  sub_222660468((v0 + 40), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v8 = v0[25];
  v9 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2227412F0;
  (*(v3 + 16))(v11 + v10, v17, v16);
  v12 = sub_2226DCF44(v11);
  v0[153] = v12;
  swift_setDeallocating();
  v13 = *(v3 + 8);
  v0[154] = v13;
  v0[155] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v11 + v10, v16);
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  v0[156] = v14;
  *v14 = v0;
  v14[1] = sub_2226652F0;

  return MEMORY[0x28213E418](v12, 0, v8, v9);
}

uint64_t sub_222665920()
{
  v1 = v0[140];
  v2 = v0[136];
  v3 = v0[135];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = [v3 itemID];
  v0[63] = v2;
  v0[60] = v4;
  sub_22273815C();
  sub_222660468((v0 + 60), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v5 = v0[86];
  v6 = v0[87];
  v0[67] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 64);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_22273816C();
  sub_222660468((v0 + 64), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v8 = v0[122];
  v9 = v0[121];
  v10 = v0[120];
  v11 = v0[25];
  v12 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2227412F0;
  (*(v9 + 16))(v14 + v13, v8, v10);
  v15 = sub_2226DCF44(v14);
  v0[141] = v15;
  swift_setDeallocating();
  v16 = *(v9 + 8);
  v0[142] = v16;
  v0[143] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v14 + v13, v10);
  swift_deallocClassInstance();
  v17 = swift_task_alloc();
  v0[144] = v17;
  *v17 = v0;
  v17[1] = sub_222664768;

  return MEMORY[0x28213E418](v15, 0, v11, v12);
}

uint64_t sub_222665C38()
{

  v0[152] = v0[145];
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[121];
  v16 = v0[120];
  v17 = v0[122];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = [v2 itemID];
  v0[35] = v1;
  v0[32] = v4;
  sub_22273815C();
  sub_222660468((v0 + 32), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v5 = v0[83];
  v6 = v0[84];
  v0[43] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 40);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_22273816C();
  sub_222660468((v0 + 40), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v8 = v0[25];
  v9 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2227412F0;
  (*(v3 + 16))(v11 + v10, v17, v16);
  v12 = sub_2226DCF44(v11);
  v0[153] = v12;
  swift_setDeallocating();
  v13 = *(v3 + 8);
  v0[154] = v13;
  v0[155] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v11 + v10, v16);
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  v0[156] = v14;
  *v14 = v0;
  v14[1] = sub_2226652F0;

  return MEMORY[0x28213E418](v12, 0, v8, v9);
}

uint64_t sub_222665F60()
{

  v0[152] = v0[151];
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[121];
  v16 = v0[120];
  v17 = v0[122];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = [v2 itemID];
  v0[35] = v1;
  v0[32] = v4;
  sub_22273815C();
  sub_222660468((v0 + 32), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v5 = v0[83];
  v6 = v0[84];
  v0[43] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 40);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_22273816C();
  sub_222660468((v0 + 40), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v8 = v0[25];
  v9 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2227412F0;
  (*(v3 + 16))(v11 + v10, v17, v16);
  v12 = sub_2226DCF44(v11);
  v0[153] = v12;
  swift_setDeallocating();
  v13 = *(v3 + 8);
  v0[154] = v13;
  v0[155] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v11 + v10, v16);
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  v0[156] = v14;
  *v14 = v0;
  v14[1] = sub_2226652F0;

  return MEMORY[0x28213E418](v12, 0, v8, v9);
}

uint64_t sub_222666288()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 976);
  v7 = *(v0 + 960);

  v1(v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2226663F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_222666418, 0, 0);
}

uint64_t sub_222666418()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = sub_222737BFC();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2226664D0;

  return sub_2226F910C(v1);
}

uint64_t sub_2226664D0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 40);
  if (v1)
  {

    v7 = sub_22266663C;
  }

  else
  {

    *(v5 + 56) = a1;
    v7 = sub_22266661C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_222666658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_2227373FC();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  sub_2227381BC();
  v4[42] = swift_task_alloc();
  v6 = sub_22273784C();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v7 = sub_2227378CC();
  v4[46] = v7;
  v4[47] = *(v7 - 8);
  v4[48] = swift_task_alloc();
  v8 = sub_22273793C();
  v4[49] = v8;
  v4[50] = *(v8 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v9 = sub_2227377AC();
  v4[53] = v9;
  v4[54] = *(v9 - 8);
  v4[55] = swift_task_alloc();
  sub_222737C2C();
  v4[56] = swift_task_alloc();
  v10 = sub_2227377BC();
  v4[57] = v10;
  v4[58] = *(v10 - 8);
  v4[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266694C, 0, 0);
}

uint64_t sub_22266694C()
{
  v1 = *(v0 + 288);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 296);
    sub_222634290((v0 + 56), v0 + 16);
    v4 = [v3 id];
    [v4 int64value];
    sub_222737C1C();
    v6 = *(v0 + 416);
    v30 = *(v0 + 392);
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    v25 = *(v0 + 368);
    v26 = *(v0 + 400);
    v28 = *(v0 + 408);
    v29 = *(v0 + 360);
    v31 = *(v0 + 352);
    v32 = *(v0 + 344);
    v27 = *(v0 + 296);
    (*(*(v0 + 432) + 104))(*(v0 + 440), *MEMORY[0x277CEBFE8], *(v0 + 424));
    sub_22273778C();

    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_2227113C0();
    sub_2227379EC();
    (*(v7 + 8))(v8, v25);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    (*(v26 + 16))(v28, v6, v30);
    sub_22273785C();
    sub_22273798C();
    (*(v31 + 8))(v29, v32);
    v9 = [v27 bundleID];
    v10 = v9;
    if (!v9)
    {
      sub_22273919C();
      v10 = sub_22273916C();
    }

    v11 = [objc_allocWithZone(MEMORY[0x277CEC4B0]) initWithBundleID_];
    *(v0 + 480) = v11;

    [v11 setUserInitiated_];
    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 304);
    v13 = sub_222738F6C();
    *(v0 + 488) = v13;
    *(v0 + 496) = __swift_project_value_buffer(v13, qword_27D019C68);
    *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v14 = *(sub_2227381FC() - 8);
    *(v0 + 512) = *(v14 + 72);
    *(v0 + 536) = *(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v15 = [v11 bundleID];
    v16 = sub_22273919C();
    v18 = v17;

    *(v0 + 120) = MEMORY[0x277D837D0];
    *(v0 + 96) = v16;
    *(v0 + 104) = v18;
    sub_22273815C();
    sub_222660468(v0 + 96, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    v19 = v12[3];
    v20 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v19);
    v21 = *(v20 + 8);
    v22 = v11;
    v23 = swift_task_alloc();
    *(v0 + 520) = v23;
    *v23 = v0;
    v23[1] = sub_222666F2C;
    v24 = *(v0 + 328);

    return MEMORY[0x28213E4F8](v24, v22, v19, v21);
  }

  else
  {
    sub_222660468(v0 + 56, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_222666F2C()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_222667324;
  }

  else
  {
    v4 = v2[60];
    (*(v2[40] + 8))(v2[41], v2[39]);

    v3 = sub_222667060;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222667060()
{
  v1 = v0[60];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v2 = [v1 bundleID];
  v3 = sub_22273919C();
  v5 = v4;

  v0[27] = MEMORY[0x277D837D0];
  v0[24] = v3;
  v0[25] = v5;
  sub_22273815C();
  sub_222660468((v0 + 24), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v6 = v0[59];
  v7 = v0[60];
  v8 = v0[58];
  v9 = v0[52];
  v10 = v0[49];
  v11 = v0[50];
  v16 = v0[57];
  v17 = v0[35];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22273799C();

  (*(v11 + 8))(v9, v10);
  (*(v8 + 8))(v6, v16);
  v12 = *MEMORY[0x277D21CA8];
  v13 = sub_2227383CC();
  (*(*(v13 - 8) + 104))(v17, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_222667324()
{
  v1 = v0[66];
  v2 = v0[60];

  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v3 = [v2 bundleID];
  v4 = sub_22273919C();
  v6 = v5;

  v0[19] = MEMORY[0x277D837D0];
  v0[16] = v4;
  v0[17] = v6;
  sub_22273815C();
  sub_222660468((v0 + 16), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v7 = v0[31];
  v8 = v0[32];
  v0[23] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 20);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v7, v8);
  sub_22273816C();
  sub_222660468((v0 + 20), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v10 = v0[59];
  v11 = v0[60];
  v12 = v0[58];
  v13 = v0[52];
  v14 = v0[49];
  v15 = v0[50];
  v20 = v0[57];
  v21 = v0[35];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22273799C();

  (*(v15 + 8))(v13, v14);
  (*(v12 + 8))(v10, v20);
  v16 = *MEMORY[0x277D21CA8];
  v17 = sub_2227383CC();
  (*(*(v17 - 8) + 104))(v21, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_222667678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v3[53] = swift_task_alloc();
  sub_2227381BC();
  v3[54] = swift_task_alloc();
  v3[55] = type metadata accessor for AppLaunchTrampolineAction(0);
  v3[56] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[57] = v4;
  v3[58] = *(v4 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v5 = sub_22273731C();
  v3[61] = v5;
  v3[62] = *(v5 - 8);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = type metadata accessor for OpenAppAction(0);
  v3[66] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[67] = v6;
  v3[68] = *(v6 - 8);
  v3[69] = swift_task_alloc();
  v7 = sub_22273786C();
  v3[70] = v7;
  v3[71] = *(v7 - 8);
  v3[72] = swift_task_alloc();
  v8 = sub_22273782C();
  v3[73] = v8;
  v3[74] = *(v8 - 8);
  v3[75] = swift_task_alloc();
  v9 = sub_2227378CC();
  v3[76] = v9;
  v3[77] = *(v9 - 8);
  v3[78] = swift_task_alloc();
  v10 = sub_2227377AC();
  v3[79] = v10;
  v3[80] = *(v10 - 8);
  v3[81] = swift_task_alloc();
  sub_222737C2C();
  v3[82] = swift_task_alloc();
  v11 = sub_2227377BC();
  v3[83] = v11;
  v3[84] = *(v11 - 8);
  v3[85] = swift_task_alloc();
  v12 = sub_22273793C();
  v3[86] = v12;
  v3[87] = *(v12 - 8);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222667B48, 0, 0);
}

uint64_t sub_222667B48()
{
  v1 = *(v0 + 408);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 416);
    sub_222634290((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v4 = [v3 id];
    [v4 int64value];
    sub_222737C1C();
    v102 = *(v0 + 712);
    v6 = *(v0 + 696);
    v106 = *(v0 + 688);
    v108 = *(v0 + 704);
    v7 = *(v0 + 680);
    v8 = *(v0 + 672);
    v104 = *(v0 + 664);
    v9 = *(v0 + 624);
    v10 = *(v0 + 616);
    v100 = *(v0 + 608);
    (*(*(v0 + 640) + 104))(*(v0 + 648), *MEMORY[0x277CEBFE8], *(v0 + 632));
    sub_22273778C();

    sub_2227113C0();
    sub_2227379EC();
    (*(v10 + 8))(v9, v100);
    (*(v8 + 8))(v7, v104);
    (*(v6 + 16))(v108, v102, v106);
    v11 = (*(v6 + 88))(v108, v106);
    if (v11 == *MEMORY[0x277CEC0B8])
    {
      (*(*(v0 + 696) + 96))(*(v0 + 704), *(v0 + 688));
      v12 = swift_task_alloc();
      *(v0 + 720) = v12;
      *v12 = v0;
      v13 = sub_222668CD0;
LABEL_11:
      v12[1] = v13;
      v15 = *(v0 + 408);
      v14 = *(v0 + 416);
      v16 = *(v0 + 400);

      return sub_22266AC00(v16, v14, v15);
    }

    if (v11 == *MEMORY[0x277CEC090])
    {
      v17 = *(v0 + 704);
      v18 = *(v0 + 600);
      v19 = *(v0 + 592);
      v20 = *(v0 + 584);
      (*(*(v0 + 696) + 96))(v17, *(v0 + 688));
      (*(v19 + 32))(v18, v17, v20);
      v21 = sub_2226AAD28();
      if (!v21)
      {
        v12 = swift_task_alloc();
        *(v0 + 736) = v12;
        *v12 = v0;
        v13 = sub_222668F90;
        goto LABEL_11;
      }

      v22 = *(v0 + 712);
      v23 = *(v0 + 696);
      v24 = *(v0 + 688);
      v25 = *(v0 + 600);
      v26 = *(v0 + 592);
      v27 = *(v0 + 584);
      v28 = *(v0 + 400);
      v29 = v21;
      [v21 resume];

      (*(v26 + 8))(v25, v27);
      (*(v23 + 8))(v22, v24);
      v30 = *MEMORY[0x277D21CA8];
      v31 = sub_2227383CC();
      (*(*(v31 - 8) + 104))(v28, v30, v31);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));

      v32 = *(v0 + 8);

      return v32();
    }

    else if (v11 == *MEMORY[0x277CEC0C0])
    {
      v33 = *(v0 + 704);
      v34 = *(v0 + 576);
      v35 = *(v0 + 568);
      v36 = *(v0 + 560);
      v37 = *(v0 + 528);
      v109 = *(v0 + 520);
      v38 = *(v0 + 416);
      (*(*(v0 + 696) + 96))(v33, *(v0 + 688));
      (*(v35 + 32))(v34, v33, v36);
      type metadata accessor for ObjectGraph(0);
      sub_222738C9C();
      sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
      sub_222738C9C();
      v39 = *(v0 + 392);
      *(v0 + 752) = v39;
      sub_2226605E0();
      v40 = [v38 id];
      (*(v35 + 16))(v37 + v109[6], v34, v36);
      v41 = [v38 flags];
      *(v37 + v109[5]) = v40;
      *(v37 + v109[7]) = (v41 & 0x2000) != 0;
      v42 = [v39 externalDeepLinkURL];
      v43 = *(v0 + 528);
      if (v42)
      {
        v45 = *(v0 + 504);
        v44 = *(v0 + 512);
        v47 = *(v0 + 488);
        v46 = *(v0 + 496);
        v101 = *(v0 + 520);
        v103 = *(v0 + 528);
        v105 = *(v0 + 464);
        v48 = *(v0 + 448);
        v107 = *(v0 + 456);
        v110 = *(v0 + 472);
        v49 = *(v0 + 440);
        v50 = *(v0 + 416);
        v51 = v42;
        sub_2227372FC();

        (*(v46 + 32))(v44, v45, v47);
        v52 = [v50 bundleID];
        v53 = sub_22273919C();
        v55 = v54;

        v56 = v49[5];
        (*(v46 + 16))(v48 + v56, v44, v47);
        (*(v46 + 56))(v48 + v56, 0, 1, v47);
        LOBYTE(v44) = [v39 universalLinkRequired];
        v57 = (v48 + v49[7]);
        v57[3] = v101;
        v57[4] = sub_22266B710(&qword_27D012F88, type metadata accessor for OpenAppAction, &unk_2227421A0);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
        sub_22266B758(v103, boxed_opaque_existential_1, type metadata accessor for OpenAppAction);
        sub_2226605E0();
        *v48 = v53;
        v48[1] = v55;
        *(v48 + v49[6]) = v44;
        *(v0 + 320) = v49;
        *(v0 + 328) = sub_22266B710(&qword_27D012F90, type metadata accessor for AppLaunchTrampolineAction, &unk_222741F40);
        v59 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
        sub_22266B758(v48, v59, type metadata accessor for AppLaunchTrampolineAction);
        (*(v105 + 104))(v110, *MEMORY[0x277D21E18], v107);
        v60 = swift_task_alloc();
        *(v0 + 776) = v60;
        *v60 = v0;
        v60[1] = sub_222669384;
        v61 = *(v0 + 536);
        v62 = *(v0 + 472);
        v63 = *(v0 + 400);
        v64 = *(v0 + 408);
        v65 = v0 + 296;
      }

      else
      {
        v89 = *(v0 + 480);
        v91 = *(v0 + 456);
        v90 = *(v0 + 464);
        *(v0 + 280) = *(v0 + 520);
        *(v0 + 288) = sub_22266B710(&qword_27D012F88, type metadata accessor for OpenAppAction, &unk_2227421A0);
        v92 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
        sub_22266B758(v43, v92, type metadata accessor for OpenAppAction);
        (*(v90 + 104))(v89, *MEMORY[0x277D21E18], v91);
        v93 = swift_task_alloc();
        *(v0 + 760) = v93;
        *v93 = v0;
        v93[1] = sub_222669238;
        v61 = *(v0 + 536);
        v62 = *(v0 + 480);
        v63 = *(v0 + 400);
        v64 = *(v0 + 408);
        v65 = v0 + 256;
      }

      return MEMORY[0x28217F468](v63, v65, v62, v64, v61);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
      type metadata accessor for ObjectGraph(0);
      sub_222738C9C();
      if (*(*__swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120)) + 16))
      {
        v66 = *(v0 + 416);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013280, &qword_2227414E0);
        sub_222738C9C();
        __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
        v67 = [v66 bundleID];
        sub_22273919C();

        v68 = sub_222737AFC();

        v70 = *(v0 + 416);
        v69 = *(v0 + 424);
        v71 = *(v0 + 408);
        v72 = v0 + 136;
        if (v68)
        {
          sub_22266BCCC(v72, v0 + 216);
          v73 = swift_allocObject();
          *(v73 + 16) = v71;
          *(v73 + 24) = v70;
          sub_222634290((v0 + 216), v73 + 32);
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

          v75 = v70;
          v76 = sub_222738F2C();
          *(v0 + 808) = v76;
          v77 = sub_22273946C();
          (*(*(v77 - 8) + 56))(v69, 1, 1, v77);
          v78 = swift_allocObject();
          v78[2] = 0;
          v78[3] = 0;
          v78[4] = &unk_222741508;
          v78[5] = v73;
          v78[6] = v76;

          sub_2226D4E54(0, 0, v69, &unk_222741510, v78);

          v79 = sub_22266BC78(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
          v80 = swift_task_alloc();
          *(v0 + 816) = v80;
          *v80 = v0;
          v81 = sub_222669B90;
        }

        else
        {
          sub_22266BCCC(v72, v0 + 176);
          v94 = swift_allocObject();
          *(v94 + 16) = v71;
          *(v94 + 24) = v70;
          sub_222634290((v0 + 176), v94 + 32);
          *(v94 + 72) = 0;
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

          v95 = v70;
          v96 = sub_222738F2C();
          *(v0 + 832) = v96;
          v97 = sub_22273946C();
          (*(*(v97 - 8) + 56))(v69, 1, 1, v97);
          v98 = swift_allocObject();
          v98[2] = 0;
          v98[3] = 0;
          v98[4] = &unk_2227414F0;
          v98[5] = v94;
          v98[6] = v96;

          sub_2226D4E54(0, 0, v69, &unk_2227414F8, v98);

          v79 = sub_22266BC78(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
          v80 = swift_task_alloc();
          *(v0 + 840) = v80;
          *v80 = v0;
          v81 = sub_22266A004;
        }

        v80[1] = v81;
        v99 = *(v0 + 400);

        return MEMORY[0x282180360](v99, v74, v79);
      }

      else
      {
        if (qword_27D0129A0 != -1)
        {
          swift_once();
        }

        v82 = *(v0 + 416);
        v83 = sub_222738F6C();
        __swift_project_value_buffer(v83, qword_27D019C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = xmmword_2227412F0;
        sub_2227381AC();
        sub_22273819C();
        v84 = [v82 id];
        *(v0 + 360) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
        *(v0 + 336) = v84;
        sub_22273815C();
        sub_222660468(v0 + 336, &qword_27D0130C0, &unk_2227413B0);
        sub_22273819C();
        sub_2227381CC();
        sub_222738C7C();

        v85 = swift_task_alloc();
        *(v0 + 792) = v85;
        *v85 = v0;
        v85[1] = sub_2226698E8;
        v87 = *(v0 + 408);
        v86 = *(v0 + 416);
        v88 = *(v0 + 400);

        return sub_22266BE94(v88, v86, v87);
      }
    }
  }

  else
  {
    sub_222660468(v0 + 56, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_222668CD0()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_22266A2DC;
  }

  else
  {
    v2 = sub_222668DE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222668DE4()
{
  v1 = v0[88];
  (*(v0[87] + 8))(v0[89], v0[86]);
  v2 = sub_22273784C();
  (*(*(v2 - 8) + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_222668F90()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_22266A490;
  }

  else
  {
    v2 = sub_2226690A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226690A4()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  (*(v0[74] + 8))(v0[75], v0[73]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_222669238()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  (*(v2[58] + 8))(v2[60], v2[57]);
  if (v0)
  {
    v3 = sub_22266A868;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 32);
    v3 = sub_2226696FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222669384()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  (*(v2[58] + 8))(v2[59], v2[57]);
  if (v0)
  {
    v3 = sub_22266A62C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 37);
    v3 = sub_2226694D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226694D0()
{
  v1 = *(v0 + 696);
  v15 = *(v0 + 688);
  v16 = *(v0 + 712);
  v2 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 576);
  v12 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 512);
  v8 = *(v0 + 488);
  v7 = *(v0 + 496);
  v9 = *(v0 + 448);

  sub_22266B7C0(v9, type metadata accessor for AppLaunchTrampolineAction);
  (*(v7 + 8))(v6, v8);
  sub_22266B7C0(v5, type metadata accessor for OpenAppAction);
  (*(v3 + 8))(v12, v4);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2226696FC()
{
  v12 = *(v0 + 712);
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);

  sub_22266B7C0(v9, type metadata accessor for OpenAppAction);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v12, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2226698E8()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_22266AA64;
  }

  else
  {
    v2 = sub_2226699FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226699FC()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_222669B90()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_222669E60;
  }

  else
  {
    v2 = sub_222669CC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222669CC4()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_222669E60()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22266A004()
{
  *(*v1 + 848) = v0;

  if (v0)
  {
    v2 = sub_22266A138;
  }

  else
  {
    v2 = sub_22266BE28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22266A138()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22266A2DC()
{
  v1 = v0[88];
  (*(v0[87] + 8))(v0[89], v0[86]);
  v2 = sub_22273784C();
  (*(*(v2 - 8) + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22266A490()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  (*(v0[74] + 8))(v0[75], v0[73]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22266A62C()
{
  v1 = *(v0 + 696);
  v15 = *(v0 + 688);
  v16 = *(v0 + 712);
  v2 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 576);
  v12 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 512);
  v8 = *(v0 + 488);
  v7 = *(v0 + 496);
  v9 = *(v0 + 448);

  sub_22266B7C0(v9, type metadata accessor for AppLaunchTrampolineAction);
  (*(v7 + 8))(v6, v8);
  sub_22266B7C0(v5, type metadata accessor for OpenAppAction);
  (*(v3 + 8))(v12, v4);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22266A868()
{
  v12 = *(v0 + 712);
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);

  sub_22266B7C0(v9, type metadata accessor for OpenAppAction);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v12, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22266AA64()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22266AC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for CancelOrPauseInstallAction(0);
  v3[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266AD68, 0, 0);
}

uint64_t sub_22266AD68()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  type metadata accessor for ObjectGraph(0);
  sub_222738C9C();
  sub_2226605E0();
  *(v1 + *(v3 + 20)) = [v6 id];
  v0[5] = v3;
  v0[6] = sub_22266B710(&qword_27D0131C0, type metadata accessor for CancelOrPauseInstallAction, &unk_222742090);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22266B758(v1, boxed_opaque_existential_1, type metadata accessor for CancelOrPauseInstallAction);
  (*(v5 + 104))(v2, *MEMORY[0x277D21E18], v4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_22266AF1C;
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[7];

  return MEMORY[0x28217F468](v12, v0 + 2, v10, v11, v9);
}

uint64_t sub_22266AF1C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22266B160;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v6 = sub_22266B09C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22266B09C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_22266B7C0(v0[14], type metadata accessor for CancelOrPauseInstallAction);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22266B160()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_22266B7C0(v0[14], type metadata accessor for CancelOrPauseInstallAction);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22266B22C(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v9 = v7;
  v10 = sub_222738F2C();
  v11 = sub_22273946C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2227414C0;
  v12[5] = v8;
  v12[6] = v10;

  sub_2226D4E54(0, 0, v6, &unk_222741390, v12);

  return v10;
}

uint64_t sub_22266B3C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_222667678(a1, v5, v4);
}

uint64_t sub_22266B470(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_222661200(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_22266B530(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D29C4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_9Tm(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((v1 + 32));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22266B660(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_222666658(a1, v4, v5, v1 + 32);
}

uint64_t sub_22266B710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22266B758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22266B7C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22266B820(uint64_t a1)
{
  v4 = *(sub_22273793C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22266BE24;

  return sub_222662C0C(a1, v7, v8, v1 + v5, v9, v10 + 8);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22266B994(void *a1)
{
  v28 = MEMORY[0x277D84F98];
  v1 = [a1 fields];
  v2 = sub_22273910C();

  v3 = sub_22273919C();
  if (!*(v2 + 16))
  {

LABEL_8:
    v8 = sub_22273919C();
    v10 = v9;
    v11 = [a1 fields];
    v12 = sub_22273910C();

    v13 = sub_22273919C();
    if (*(v12 + 16))
    {
      v15 = sub_222688818(v13, v14);
      v17 = v16;

      if (v17)
      {
        v18 = (*(v12 + 56) + 16 * v15);
        v20 = *v18;
        v19 = v18[1];

        v21 = v19;
        v22 = v20;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v22 = 0;
    v21 = 0;
LABEL_13:
    sub_222730BBC(v22, v21, v8, v10);
    if (!*(v28 + 16))
    {
      goto LABEL_4;
    }

LABEL_14:
    v23 = sub_2227390FC();

    aBlock[4] = sub_222662B00;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222662B34;
    aBlock[3] = &block_descriptor_0;
    v24 = _Block_copy(aBlock);

    v25 = [a1 metricsActivityByMergingFields:v23 uniquingFieldsWithBlock:v24];

    _Block_release(v24);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return v25;
    }

    __break(1u);
    return result;
  }

  sub_222688818(v3, v4);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*(MEMORY[0x277D84F98] + 16))
  {
    goto LABEL_14;
  }

LABEL_4:

  return a1;
}

uint64_t sub_22266BC78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22266BCCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22266BD30(uint64_t a1)
{
  v4 = *(sub_222737C2C() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222660228;

  return sub_2226663F4(a1, v6, v7, v1 + 32, v1 + v5);
}

unint64_t sub_22266BE40()
{
  result = qword_281314020[0];
  if (!qword_281314020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281314020);
  }

  return result;
}

uint64_t sub_22266BE94(uint64_t a1, uint64_t a2, void *a3)
{
  v3[42] = a2;
  v3[43] = a3;
  v3[41] = a1;
  v3[44] = *a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for AlertAction(0);
  v3[49] = swift_task_alloc();
  v5 = sub_22273848C();
  v3[50] = v5;
  v3[51] = *(v5 - 8);
  v3[52] = swift_task_alloc();
  sub_2227383BC();
  v3[53] = swift_task_alloc();
  v6 = sub_22273731C();
  v3[54] = v6;
  v7 = *(v6 - 8);
  v3[55] = v7;
  v3[56] = *(v7 + 64);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = type metadata accessor for AppStoreRepairAction(0);
  v3[60] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[61] = v8;
  v3[62] = *(v8 - 8);
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266C14C, 0, 0);
}

uint64_t sub_22266C14C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  v3 = *(v0 + 336);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_222738C9C();
  __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
  *(v0 + 96) = sub_2227390BC();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 104) = v4;
  swift_getObjectType();
  ASCOffer.actionMetrics.getter(v1);
  *(v1 + *(v2 + 20)) = [v3 id];
  if (([v3 flags] & 0x200) != 0 && (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
  {
    v6 = v5;
    *(v0 + 272) = sub_22266F98C();
    *(v0 + 280) = sub_22266F9D8(&qword_27D0133A0, sub_22266F98C, &protocol conformance descriptor for ASCAppOffer);
    *(v0 + 248) = v6;
    swift_unknownObjectRetain();
  }

  else
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    v8 = *(v0 + 336);
    if (v7)
    {
      v9 = v7;
      swift_unknownObjectRetain();
      v10 = [v9 url];
      sub_2227372FC();

      v58 = [v9 isSensitive];
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = objc_opt_self();
      v12 = [v8 id];
      v13 = [v11 URLForLockupID:v12 ofKind:@"app" withOfferFlags:{objc_msgSend(v8, sel_flags)}];

      sub_2227372FC();
      v58 = 0;
    }

    v15 = *(v0 + 456);
    v14 = *(v0 + 464);
    v16 = *(v0 + 440);
    v56 = *(v0 + 448);
    v17 = *(v0 + 432);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 40) = v19;
    *(inited + 48) = 10;
    v20 = sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_22273839C();
    (*(v16 + 16))(v15, v14, v17);
    v21 = (*(v16 + 80) + 17) & ~*(v16 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v58;
    (*(v16 + 32))(v22 + v21, v15, v17);
    *(v22 + ((v56 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
    v23 = sub_2227383EC();
    v24 = MEMORY[0x277D21CB8];
    *(v0 + 272) = v23;
    *(v0 + 280) = v24;
    __swift_allocate_boxed_opaque_existential_1((v0 + 248));
    sub_2227383DC();
    (*(v16 + 8))(v14, v17);
  }

  v25 = *(v0 + 472);
  v26 = *(v0 + 480);
  v27 = *(v0 + 416);
  v29 = *(v0 + 400);
  v28 = *(v0 + 408);
  v30 = *(v0 + 384);
  v31 = *(v0 + 392);
  v55 = *(v0 + 368);
  v57 = *(v0 + 360);
  v59 = *(v0 + 376);
  ASCOffer.actionMetrics.getter(*(v0 + 424));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FE8, &unk_222741650);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2227413C0;
  *(v32 + 56) = v25;
  *(v32 + 64) = sub_22266F9D8(&qword_27D012FE0, type metadata accessor for AppStoreRepairAction, &unk_222741FF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v32 + 32));
  sub_22266F8C4(v26, boxed_opaque_existential_1, type metadata accessor for AppStoreRepairAction);
  sub_22266BCCC(v0 + 248, v32 + 72);
  sub_22273847C();
  __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
  v34 = sub_2227390BC();
  v36 = v35;
  v37 = MEMORY[0x277D21D10];
  *(v0 + 192) = v29;
  *(v0 + 200) = v37;
  v38 = __swift_allocate_boxed_opaque_existential_1((v0 + 168));
  (*(v28 + 16))(v38, v27, v29);
  *(v0 + 152) = v34;
  *(v0 + 160) = v36;
  __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
  v39 = sub_2227390BC();
  v41 = v40;
  __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
  v42 = sub_2227390BC();
  v44 = v43;
  sub_22273839C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FF0, &qword_2227419A0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2227413C0;
  sub_22265D934(v0 + 96, v45 + 32);
  sub_22265D934(v0 + 152, v45 + 88);
  v46 = (v31 + v30[5]);
  *v46 = v39;
  v46[1] = v41;
  v47 = (v31 + v30[6]);
  *v47 = v42;
  v47[1] = v44;
  *(v31 + v30[7]) = v45;
  *(v0 + 312) = v30;
  *(v0 + 320) = sub_22266F9D8(&qword_27D0131E0, type metadata accessor for AlertAction, &unk_222741DF0);
  v48 = __swift_allocate_boxed_opaque_existential_1((v0 + 288));
  sub_22266F8C4(v31, v48, type metadata accessor for AlertAction);
  (*(v55 + 104))(v59, *MEMORY[0x277D21E18], v57);
  v49 = swift_task_alloc();
  *(v0 + 512) = v49;
  *v49 = v0;
  v49[1] = sub_22266C8E8;
  v50 = *(v0 + 488);
  v51 = *(v0 + 376);
  v52 = *(v0 + 344);
  v53 = *(v0 + 328);

  return MEMORY[0x28217F468](v53, v0 + 288, v51, v52, v50);
}

uint64_t sub_22266C8E8()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 368);
  v5 = *(*v1 + 360);
  *(*v1 + 520) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22266CBD0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 288));
    v6 = sub_22266CA68;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22266CA68()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[60];
  v4 = v0[61];
  v5 = v0[52];
  v6 = v0[50];
  v7 = v0[51];
  sub_22266F92C(v0[49], type metadata accessor for AlertAction);
  sub_22265D990((v0 + 19));
  (*(v7 + 8))(v5, v6);
  sub_22266F92C(v3, type metadata accessor for AppStoreRepairAction);
  sub_22265D990((v0 + 12));
  (*(v1 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22266CBD0()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[60];
  v4 = v0[61];
  v5 = v0[52];
  v6 = v0[50];
  v7 = v0[51];
  sub_22266F92C(v0[49], type metadata accessor for AlertAction);
  sub_22265D990((v0 + 19));
  (*(v7 + 8))(v5, v6);
  sub_22266F92C(v3, type metadata accessor for AppStoreRepairAction);
  sub_22265D990((v0 + 12));
  (*(v1 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22266CD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a2;
  v3[31] = a3;
  v3[29] = a1;
  sub_2227381BC();
  v3[32] = swift_task_alloc();
  v4 = sub_2227373FC();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = sub_22273784C();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_2227377BC();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v7 = sub_2227377AC();
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  sub_222737C2C();
  v3[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013000, &qword_222741668);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266CFFC, 0, 0);
}

uint64_t sub_22266CFFC()
{
  v1 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013280, &qword_2227414E0);
  *(v0 + 432) = type metadata accessor for ObjectGraph(0);
  sub_222738C9C();
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_22266110C(v1 + v2, v0 + 96, &unk_27D013120, &unk_222741980);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 240);
    sub_222634290((v0 + 96), v0 + 56);
    v4 = objc_allocWithZone(MEMORY[0x277CEC4B0]);
    v5 = sub_22273916C();
    v6 = [v4 initWithBundleID_];
    *(v0 + 440) = v6;

    v7 = 1;
    [v6 setUserInitiated_];
    v8 = *(v3 + *(type metadata accessor for AppStoreRepairAction(0) + 20));
    if (v8)
    {
      [v8 int64value];
      sub_222737C1C();
      (*(*(v0 + 368) + 104))(*(v0 + 376), *MEMORY[0x277CEBFE8], *(v0 + 360));
      sub_22273778C();
      v7 = 0;
    }

    v11 = *(v0 + 416);
    v10 = *(v0 + 424);
    v12 = *(v0 + 312);
    v13 = *(v0 + 320);
    (*(v13 + 56))(v10, v7, 1, v12);
    sub_22266110C(v10, v11, &qword_27D013000, &qword_222741668);
    v14 = *(v13 + 48);
    *(v0 + 448) = v14;
    *(v0 + 456) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v14(v11, 1, v12) == 1)
    {
      sub_222660468(*(v0 + 416), &qword_27D013000, &qword_222741668);
    }

    else
    {
      v15 = *(v0 + 352);
      v16 = *(v0 + 320);
      v26 = *(v0 + 312);
      v17 = *(v0 + 296);
      v18 = *(v0 + 304);
      v19 = *(v0 + 288);
      (*(v16 + 32))(v15, *(v0 + 416));
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      (*(v17 + 104))(v18, *MEMORY[0x277CEC058], v19);
      sub_22273798C();
      (*(v17 + 8))(v18, v19);
      (*(v16 + 8))(v15, v26);
    }

    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
    v22 = *(v20 + 8);
    v23 = v6;
    v24 = swift_task_alloc();
    *(v0 + 464) = v24;
    *v24 = v0;
    v24[1] = sub_22266D414;
    v25 = *(v0 + 280);

    return MEMORY[0x28213E4F8](v25, v23, v21, v22);
  }

  else
  {
    sub_222660468(v0 + 96, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_22266D414()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_22266E0B0;
  }

  else
  {

    v3 = sub_22266D530;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22266D530()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[25] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  (*(v1 + 16))(boxed_opaque_existential_1, v2, v3);
  sub_22273816C();
  sub_222660468((v0 + 22), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
  sub_222738C9C();
  if (*(*__swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]) + 16))
  {
    v6 = v0[56];
    v7 = v0[53];
    v8 = v0[51];
    v9 = v0[39];
    v11 = v0[34];
    v10 = v0[35];
    v12 = v0[33];
    v13 = v0[29];
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
    (*(v11 + 8))(v10, v12);
    v14 = *MEMORY[0x277D21CA8];
    v15 = sub_2227383CC();
    (*(*(v15 - 8) + 104))(v13, v14, v15);
    sub_22266110C(v7, v8, &qword_27D013000, &qword_222741668);
    v16 = v6(v8, 1, v9);
    v17 = v0[55];
    if (v16 == 1)
    {
      v18 = v0 + 51;
      v19 = v0[53];

      sub_222660468(v19, &qword_27D013000, &qword_222741668);
    }

    else
    {
      v25 = v0[43];
      v26 = v0[39];
      v27 = v0[40];
      (*(v27 + 32))(v25, v0[51], v26);
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      sub_22273799C();

      (*(v27 + 8))(v25, v26);
      v18 = v0 + 53;
    }

    sub_222660468(*v18, &qword_27D013000, &qword_222741668);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v28 = v0[1];

    return v28();
  }

  else
  {
    v20 = swift_task_alloc();
    v0[60] = v20;
    *(v20 + 16) = v0 + 17;
    v21 = swift_task_alloc();
    v0[61] = v21;
    *v21 = v0;
    v21[1] = sub_22266DA94;
    v22 = MEMORY[0x277D84F78] + 8;
    v23 = MEMORY[0x277D84F78] + 8;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v21, v22, v23, 0, 0, &unk_222741678, v20, v24);
  }
}