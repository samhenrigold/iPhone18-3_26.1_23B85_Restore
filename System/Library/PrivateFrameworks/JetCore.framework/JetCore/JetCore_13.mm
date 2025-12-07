uint64_t sub_1DB419B38(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  (*(*(Configuration - 8) + 16))(a2, a1, Configuration);
  return a2;
}

uint64_t sub_1DB419B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1DB30C4B8(a3, v23 - v10, &unk_1ECC46EB0, &qword_1DB50F750);
  v12 = sub_1DB50ABA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DB30623C(v11, &unk_1ECC46EB0, &qword_1DB50F750);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1DB50AB90();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1DB50AAD0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1DB50A6F0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);

    return v21;
  }

LABEL_8:
  sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1DB419E98(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *a1;
  a2(&v3, &v4);
  sub_1DB3F9794(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DB419F44(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  v6 = *(Configuration - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](Configuration - 8);
  if (qword_1EE30E410 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v9 = swift_allocObject();
  v37 = xmmword_1DB50EE90;
  *(v9 + 16) = xmmword_1DB50EE90;
  v43 = sub_1DB301BC0(0, 50, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001DB52DB20;
  v10._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *a1;
  v12 = a1[1];
  v42[3] = MEMORY[0x1E69E6158];
  v42[0] = v11;
  v42[1] = v12;
  sub_1DB30C4B8(v42, v38, &qword_1ECC426B0, &qword_1DB50EEB0);
  v39 = 0u;
  v40 = 0u;

  sub_1DB301D4C(v38, &v39);
  v41 = 0;
  v13 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
    v43 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v39;
  v18 = v40;
  v16[64] = v41;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v43 = v13;
  sub_1DB30623C(v42, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0x5620676E69737520;
  v19._object = 0xE900000000000033;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v9 + 32) = v43;
  v20 = sub_1DB50AF40();
  if (os_log_type_enabled(v8, v20))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v21 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    v36 = v6;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v39 = v9;
    *(&v39 + 1) = sub_1DB31485C;
    *&v40 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v24 = sub_1DB50A5E0();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v27 = swift_allocObject();
    *(v27 + 16) = v37;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1DB31494C();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v8, v20, v27);

    v6 = v36;
  }

  else
  {
  }

  sub_1DB419B38(a1, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  sub_1DB41ABB4(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457E0, &qword_1DB51BAE8);
  v30 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v30 + 16) = v31;
  *(v30 + 24) = MEMORY[0x1E69E7CC0];
  *(v30 + 32) = 0;
  v32 = sub_1DB50ABA0();
  (*(*(v32 - 8) + 56))(v4, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = &unk_1DB51BAE0;
  v33[5] = v29;
  v33[6] = v30;

  sub_1DB419B9C(0, 0, v4, &unk_1DB51BAF8, v33);

  return v30;
}

uint64_t sub_1DB41A510(void *a1)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  v40 = *(Configuration - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](Configuration - 8);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB50A410();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE30E410 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v9 = swift_allocObject();
  v39 = xmmword_1DB50EE90;
  *(v9 + 16) = xmmword_1DB50EE90;
  v47 = sub_1DB301BC0(0, 50, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001DB52DB20;
  v10._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *a1;
  v12 = a1[1];
  v46[3] = MEMORY[0x1E69E6158];
  v46[0] = v11;
  v46[1] = v12;
  sub_1DB30C4B8(v46, v42, &qword_1ECC426B0, &qword_1DB50EEB0);
  v43 = 0u;
  v44 = 0u;

  sub_1DB301D4C(v42, &v43);
  v45 = 0;
  v13 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
    v47 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v43;
  v18 = v44;
  v16[64] = v45;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v47 = v13;
  sub_1DB30623C(v46, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0x5620676E69737520;
  v19._object = 0xE900000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v9 + 32) = v47;
  v20 = sub_1DB50AF40();
  if (os_log_type_enabled(v8, v20))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v21 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    v38 = a1;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v43 = v9;
    *(&v43 + 1) = sub_1DB314CB0;
    *&v44 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v24 = sub_1DB50A5E0();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v27 = swift_allocObject();
    *(v27 + 16) = v39;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1DB31494C();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v8, v20, v27);

    a1 = v38;
  }

  else
  {
  }

  sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F98], v4);
  v28 = sub_1DB50AFE0();
  (*(v5 + 8))(v7, v4);
  v29 = a1;
  v30 = v41;
  sub_1DB419B38(v29, v41);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  sub_1DB41ABB4(v30, v32 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457E0, &qword_1DB51BAE8);
  v33 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v33 + 16) = v34;
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  *(v33 + 32) = 0;
  v35 = swift_allocObject();
  v35[2] = sub_1DB41B478;
  v35[3] = v32;
  v35[4] = v33;

  OS_dispatch_queue.schedule(task:)(sub_1DB41B510, v35);

  return v33;
}

uint64_t sub_1DB41AB58(uint64_t a1)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  (*(*(Configuration - 8) + 8))(a1, Configuration);
  return a1;
}

uint64_t sub_1DB41ABB4(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  (*(*(Configuration - 8) + 32))(a2, a1, Configuration);
  return a2;
}

uint64_t sub_1DB41AC18(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB4181F4(a1, v1 + v5);
}

uint64_t sub_1DB41ACF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB4194B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB41ADD0(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB306AF4;

  return sub_1DB4181F4(a1, v1 + v5);
}

uint64_t sub_1DB41AEAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB306AF4;

  return sub_1DB4194B0(a1, v4, v5, v6, v7, v8);
}

void sub_1DB41AFC4(uint64_t a1)
{
  sub_1DB41B060(319);
  if (v1 <= 0x3F)
  {
    sub_1DB50A030();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DB41B060(uint64_t a1)
{
  if (!qword_1EE30E340)
  {
    sub_1DB336FD4(255, &qword_1EE30E348, 0x1E698CAC8);
    v1 = sub_1DB50B120();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE30E340);
    }
  }
}

uint64_t sub_1DB41B0C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB30C7A0;

  return sub_1DB38ABAC(a1, v4);
}

uint64_t sub_1DB41B180(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB416EA0(a1, v1 + v5);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB41B2A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB4191BC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for Bag.FetchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_1DB50A030();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1DB41B478(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Bag.FetchConfiguration(0) - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  sub_1DB416DE0(a1, a2, a3, a4, v10);
}

void sub_1DB41B51C(uint64_t *a1)
{
  v2 = *a1;
  swift_getObjectType();

  sub_1DB4B5F74(v2, v1);
}

uint64_t sub_1DB41B588()
{
  v7[3] = &type metadata for SyncTaskScheduler;
  v7[4] = &protocol witness table for SyncTaskScheduler;
  v2 = sub_1DB4241FC;
  v3 = v0;
  v4 = sub_1DB424204;
  v5 = v0;
  sub_1DB30BE90(v7, v6);
  v6[40] = 0;
  swift_retain_n();
  sub_1DB309C44(&v2);

  sub_1DB30623C(&v2, &qword_1ECC42870, &unk_1DB518F90);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1DB41B644()
{
  v7[3] = &type metadata for SyncTaskScheduler;
  v7[4] = &protocol witness table for SyncTaskScheduler;
  v2 = sub_1DB4241FC;
  v3 = v0;
  v4 = sub_1DB4245B4;
  v5 = v0;
  sub_1DB30BE90(v7, v6);
  v6[40] = 0;
  swift_retain_n();
  sub_1DB309A4C(&v2);

  sub_1DB30623C(&v2, &qword_1ECC428A0, &unk_1DB50F6E0);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1DB41B700()
{
  v0 = sub_1DB50A3A0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6977AC8], v0, v2);
  sub_1DB50A3D0();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1DB41B7EC(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000004ELL, 0x80000001DB52DF40);
    v2 = sub_1DB50B8F0();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000051, 0x80000001DB52DEE0);
    swift_getErrorValue();
    v2 = sub_1DB50BC80();
LABEL_5:
    MEMORY[0x1E1285C70](v2);

    return 0;
  }

  if (a1)
  {
    return 0xD000000000000048;
  }

  else
  {
    return 0xD000000000000066;
  }
}

void URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:requestEncoder:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for URLJetPackAssetFetcher(0);
  v9 = *(v8 + 24);
  v10 = sub_1DB509CA0();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 24) = a1;
  *(v11 + 32) = 1;

  *&a4[*(v8 + 28)] = v11;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = a2;
}

uint64_t URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for URLJetPackAssetFetcher(0);
  v7 = *(v6 + 24);
  v8 = sub_1DB509CA0();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v9 + 16) = result;
  *(v9 + 24) = a1;
  *(v9 + 32) = 1;
  *&a3[*(v6 + 28)] = v9;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = a2;
  return result;
}

uint64_t type metadata accessor for URLJetPackAssetFetcher(uint64_t a1)
{
  result = qword_1EE30CF18;
  if (!qword_1EE30CF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLJetPackAssetFetcher.init(bagPromise:urlSessionConfiguration:downloadsBaseURL:urlSessionFactoryProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for URLJetPackAssetFetcher(0);
  *(a6 + *(v12 + 28)) = a1;
  *a6 = a2;
  a6[1] = a4;
  a6[2] = a5;
  return sub_1DB30C06C(a3, a6 + *(v12 + 24), &unk_1ECC42B20, &unk_1DB50F6A0);
}

uint64_t URLJetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB41BC0C, 0, 0);
}

uint64_t sub_1DB41BC0C()
{
  v0[5] = &type metadata for SystemDateProvider;
  v0[6] = &protocol witness table for SystemDateProvider;
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1DB41BCBC;
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];

  return sub_1DB41BE7C(v3, v4, v2, (v0 + 2));
}

uint64_t sub_1DB41BCBC(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB41BE14, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_1DB41BE14()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DB41BE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[182] = v4;
  v5[181] = a4;
  v5[180] = a3;
  v5[179] = a2;
  v5[178] = a1;
  v5[183] = type metadata accessor for JetPackAsset.Metadata(0);
  v5[184] = swift_task_alloc();
  v6 = sub_1DB509DD0();
  v5[185] = v6;
  v5[186] = *(v6 - 8);
  v5[187] = swift_task_alloc();
  v5[188] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v5[189] = swift_task_alloc();
  v5[190] = swift_task_alloc();
  v7 = type metadata accessor for URLJetPackAssetFetcher(0);
  v5[191] = v7;
  v8 = *(v7 - 8);
  v5[192] = v8;
  v5[193] = *(v8 + 64);
  v5[194] = swift_task_alloc();
  v5[195] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BB0, &unk_1DB50F6C0);
  v5[196] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v5[197] = swift_task_alloc();
  v5[198] = swift_task_alloc();
  v5[199] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v5[200] = swift_task_alloc();
  v5[201] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset(0);
  v5[202] = v9;
  v5[203] = *(v9 - 8);
  v5[204] = swift_task_alloc();
  v5[205] = swift_task_alloc();
  v10 = sub_1DB509CA0();
  v5[206] = v10;
  v11 = *(v10 - 8);
  v5[207] = v11;
  v5[208] = *(v11 + 64);
  v5[209] = swift_task_alloc();
  v5[210] = swift_task_alloc();
  v5[211] = swift_task_alloc();
  v12 = sub_1DB509860();
  v5[212] = v12;
  v5[213] = *(v12 - 8);
  v5[214] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB41C238, 0, 0);
}

uint64_t sub_1DB41C238()
{
  if (sub_1DB509B50())
  {
    v1 = (v0 + 920);
    v2 = sub_1DB509C40();
    v4 = v3;
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v44 = *(v0 + 632);
    v45 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_1((v0 + 600), v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    v50 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v6._object = 0x80000001DB52DD20;
    v6._countAndFlagsBits = 0xD000000000000025;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    *(v0 + 1328) = MEMORY[0x1E69E6158];
    *(v0 + 1304) = v2;
    *(v0 + 1312) = v4;
    sub_1DB30C4B8(v0 + 1304, v0 + 1368, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v1 = 0u;
    *(v0 + 936) = 0u;

    sub_1DB301D4C(v0 + 1368, v0 + 920);
    *(v0 + 952) = 2;
    v7 = v50;
    v48 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DB301BC0(0, *(v50 + 2) + 1, 1, v50);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v47 = v4;
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
    }

    v46 = *(v0 + 1616);
    v10 = *(v0 + 1472);
    v11 = *(v0 + 1464);
    v12 = *(v0 + 1448);
    v13 = *(v0 + 1424);
    *(v7 + 2) = v9 + 1;
    v14 = &v7[40 * v9];
    v15 = *v1;
    v16 = *(v0 + 936);
    v14[64] = *(v0 + 952);
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    *&v49 = v7;
    sub_1DB30623C(v0 + 1304, &qword_1ECC426B0, &qword_1DB50EEB0);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v5 + 32) = v7;
    Logger.info(_:)(v5, v45, v44);

    __swift_destroy_boxed_opaque_existential_0((v0 + 600));
    v18 = v12[3];
    v19 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v18);
    (*(v19 + 8))(v18, v19);
    v20 = [objc_opt_self() processInfo];
    [v20 operatingSystemVersion];

    v21 = JEGestaltGetBuildVersion();
    v22 = sub_1DB50A650();
    v24 = v23;

    *v10 = 0u;
    v10[1] = 0u;
    v25 = v10 + v11[7];
    *v25 = v49;
    *(v25 + 2) = v51;
    v25[24] = 0;
    v26 = (v10 + v11[8]);
    *v26 = v22;
    v26[1] = v24;
    v27 = (v10 + v11[9]);
    *v27 = 0;
    v27[1] = 0;
    *(v10 + v11[10]) = 2;
    v28 = v10 + v11[11];
    *v28 = 0x40AC200000000000;
    v28[8] = 0;
    *(v28 + 2) = 0;
    v28[24] = 1;
    *(v28 + 4) = 0x4143C68000000000;
    *(v28 + 20) = 0;
    v13[3] = &type metadata for JetPackFileStreamSource;
    v13[4] = &protocol witness table for JetPackFileStreamSource;
    v29 = swift_allocObject();
    *v13 = v29;
    v29[2] = v48;
    v29[3] = v47;
    v29[4] = 0;
    v29[5] = 0;
    sub_1DB423A58(v10, v13 + v46[5], type metadata accessor for JetPackAsset.Metadata);
    sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v30 = sub_1DB50B8F0();
    v32 = v31;
    sub_1DB423EBC(v10, type metadata accessor for JetPackAsset.Metadata);
    v33 = v13 + v46[6];
    *v33 = 0;
    v33[4] = 1;
    v34 = (v13 + v46[7]);
    *v34 = v30;
    v34[1] = v32;
    *(v13 + v46[8]) = 0;
    *(v13 + v46[9]) = 0;
    *(v13 + v46[10]) = 0;
    v35 = (v13 + v46[11]);
    *v35 = 0;
    v35[1] = 0;

    v36 = *(v0 + 8);

    return v36(0);
  }

  else
  {
    v38 = *(v0 + 1456);
    v39 = *v38;
    [*v38 set:objc_msgSend(*v38 timingDataOptions:sel__timingDataOptions) | 0x45];
    v40 = *(v38 + 8);
    if (v40)
    {
      v41 = *(*(v0 + 1456) + 16);

      v42 = v40(v39);
      sub_1DB365724(v40, v41);
    }

    else
    {
      v42 = [objc_opt_self() sessionWithConfiguration_];
    }

    *(v0 + 1720) = v42;
    type metadata accessor for BaseObjectGraph();
    *(v0 + 1728) = static BaseObjectGraph.current.getter();
    v43 = swift_task_alloc();
    *(v0 + 1736) = v43;
    *v43 = v0;
    v43[1] = sub_1DB41C918;

    return sub_1DB43E550();
  }
}

uint64_t sub_1DB41C918(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1744) = a1;
  *(v3 + 1752) = v1;

  if (v1)
  {
    v4 = sub_1DB41FFC4;
  }

  else
  {

    v4 = sub_1DB41CA38;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB41CA38()
{
  v1 = *(v0 + 1744);
  if (v1)
  {

    sub_1DB3AC958();
    sub_1DB50A3E0();
    v2 = sub_1DB50A3B0();
    v3 = *(v1 + 48);

    os_unfair_lock_lock((v3 + 20));
    v4 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 20));

    if (v4 == 1)
    {

      sub_1DB50A390();
    }

    sub_1DB38371C(v2);
  }

  else
  {
    sub_1DB50A3E0();
    v2 = sub_1DB50A3B0();
  }

  *(v0 + 1760) = v2;
  sub_1DB50A3C0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 1656);
  v6 = *(v0 + 1648);
  v7 = *(v0 + 1432);
  *(v0 + 1768) = qword_1EE30C918;
  sub_1DB50BEB0();
  v86 = *(v0 + 832);
  v88 = *(v0 + 824);
  __swift_project_boxed_opaque_existential_1((v0 + 800), v88);
  *(v0 + 1776) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50EE90;
  v93 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
  v9._countAndFlagsBits = 0xD000000000000021;
  v9._object = 0x80000001DB52DB70;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 1360) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1336));
  v11 = *(v5 + 16);
  *(v0 + 1784) = v11;
  *(v0 + 1792) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v90 = v11;
  v11(boxed_opaque_existential_0, v7, v6);
  sub_1DB30C4B8(v0 + 1336, v0 + 1272, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  sub_1DB301D4C(v0 + 1272, v0 + 960);
  *(v0 + 992) = 0;
  v12 = v93;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1DB301BC0(0, *(v93 + 2) + 1, 1, v93);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
  }

  v15 = *(v0 + 1688);
  v16 = *(v0 + 1648);
  v17 = *(v0 + 1624);
  v81 = *(v0 + 1608);
  v83 = *(v0 + 1616);
  v80 = *(v0 + 1440);
  v18 = *(v0 + 1432);
  *(v12 + 2) = v14 + 1;
  v19 = &v12[40 * v14];
  v20 = *(v0 + 960);
  v21 = *(v0 + 976);
  v19[64] = *(v0 + 992);
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  sub_1DB30623C(v0 + 1336, &qword_1ECC426B0, &qword_1DB50EEB0);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v8 + 32) = v12;
  Logger.info(_:)(v8, v88, v86);

  __swift_destroy_boxed_opaque_existential_0((v0 + 800));
  v90(v15, v18, v16);
  sub_1DB509820();
  sub_1DB5097D0();
  sub_1DB509850();
  sub_1DB30C4B8(v80, v81, &qword_1ECC46F20, qword_1DB5105D0);
  v23 = *(v17 + 48);
  *(v0 + 1800) = v23;
  *(v0 + 1808) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v23(v81, 1, v83) == 1)
  {
    sub_1DB30623C(*(v0 + 1608), &qword_1ECC46F20, qword_1DB5105D0);
  }

  else
  {
    v24 = *(v0 + 1640);
    v25 = *(v0 + 1616);
    sub_1DB423AC0(*(v0 + 1608), v24, type metadata accessor for JetPackAsset);
    v26 = v24 + *(v25 + 20);
    if (*(v26 + 24))
    {
      sub_1DB509850();
    }

    if (*(v26 + 8))
    {
      sub_1DB509850();
    }

    sub_1DB423EBC(*(v0 + 1640), type metadata accessor for JetPackAsset);
  }

  v27 = *(v0 + 1656);
  v28 = *(v0 + 1648);
  v29 = *(v0 + 1592);
  sub_1DB30C4B8(*(v0 + 1456) + *(*(v0 + 1528) + 24), v29, &unk_1ECC42B20, &unk_1DB50F6A0);
  v30 = *(v27 + 48);
  *(v0 + 1816) = v30;
  *(v0 + 1824) = (v27 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v31 = v30(v29, 1, v28);
  v32 = *(v0 + 1720);
  if (v31 == 1)
  {
    v33 = *(v0 + 1552);
    v34 = *(v0 + 1536);
    v91 = *(v0 + 1544);
    v92 = *(v0 + 1456);
    sub_1DB30623C(*(v0 + 1592), &unk_1ECC42B20, &unk_1DB50F6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457F8, &qword_1DB51BBA8);
    v35 = swift_allocObject();
    *(v0 + 1872) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v35 + 16) = v36;
    *(v35 + 24) = MEMORY[0x1E69E7CC0];
    *(v35 + 32) = 0;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    v37 = sub_1DB5097F0();
    *(v0 + 496) = sub_1DB42391C;
    *(v0 + 504) = v35;
    *(v0 + 464) = MEMORY[0x1E69E9820];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_1DB421490;
    *(v0 + 488) = &block_descriptor_14;
    v38 = _Block_copy((v0 + 464));

    v39 = [v32 dataTaskWithRequest:v37 completionHandler:v38];
    *(v0 + 1880) = v39;
    _Block_release(v38);

    v40 = v39;
    sub_1DB50AF50();

    [v40 resume];
    sub_1DB41B644();
    sub_1DB423A58(v92, v33, type metadata accessor for URLJetPackAssetFetcher);
    v41 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v42 = (v91 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v87 = v33;
    sub_1DB423AC0(v33, v44 + v41, type metadata accessor for URLJetPackAssetFetcher);
    *(v44 + v42) = v40;
    *(v44 + v43) = v32;
    sub_1DB423A58(v92, v33, type metadata accessor for URLJetPackAssetFetcher);
    v45 = swift_allocObject();
    sub_1DB423AC0(v87, v45 + v41, type metadata accessor for URLJetPackAssetFetcher);
    *(v45 + v42) = v40;
    *(v45 + v43) = v32;
    v46 = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
    v47 = v32;
    v48 = v40;
    v49 = v47;
    v50 = v48;
    v51 = sub_1DB50AFB0();
    *(v0 + 704) = v46;
    *(v0 + 712) = &protocol witness table for OS_dispatch_queue;
    *(v0 + 680) = v51;
    *(v0 + 144) = sub_1DB42393C;
    *(v0 + 152) = v44;
    *(v0 + 160) = sub_1DB4239E4;
    *(v0 + 168) = v45;
    sub_1DB30BE90(v0 + 680, v0 + 176);
    *(v0 + 216) = 0;

    sub_1DB309A4C(v0 + 144);

    sub_1DB30623C(v0 + 144, &qword_1ECC428A0, &unk_1DB50F6E0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 680));
    v52 = sub_1DB41EC6C;
  }

  else
  {
    v53 = *(v0 + 1688);
    v54 = *(v0 + 1680);
    v55 = *(v0 + 1656);
    v56 = *(v0 + 1648);
    v57 = *(v0 + 1592);
    v58 = *(v0 + 1568);
    v84 = *(v0 + 1544);
    v85 = *(v0 + 1552);
    v82 = *(v0 + 1536);
    v89 = *(v0 + 1456);
    v59 = *(v55 + 32);
    v55 += 32;
    *(v0 + 1832) = v59;
    *(v0 + 1840) = v55 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v59(v54, v57, v56);
    *v58 = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45808, &qword_1DB51BBB0);
    v60 = swift_allocObject();
    *(v0 + 1848) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    v60[2] = v61;
    sub_1DB30C06C(v58, v60 + *(*v60 + 96), &unk_1ECC42BB0, &unk_1DB50F6C0);
    v62 = sub_1DB5097F0();
    v90(v53, v54, v56);
    v63 = (*(v55 + 48) + 24) & ~*(v55 + 48);
    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    v59(v64 + v63, v53, v56);
    *(v0 + 544) = sub_1DB423B28;
    *(v0 + 552) = v64;
    *(v0 + 512) = MEMORY[0x1E69E9820];
    *(v0 + 520) = 1107296256;
    *(v0 + 528) = sub_1DB420FC4;
    *(v0 + 536) = &block_descriptor_16_1;
    v65 = _Block_copy((v0 + 512));

    v66 = [v32 downloadTaskWithRequest:v62 completionHandler:v65];
    *(v0 + 1856) = v66;
    _Block_release(v65);

    v67 = v66;

    sub_1DB50AF50();

    [v67 resume];
    sub_1DB41B588();
    sub_1DB423A58(v89, v85, type metadata accessor for URLJetPackAssetFetcher);
    v68 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v69 = (v84 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    sub_1DB423AC0(v85, v71 + v68, type metadata accessor for URLJetPackAssetFetcher);
    *(v71 + v69) = v67;
    *(v71 + v70) = v32;
    sub_1DB423A58(v89, v85, type metadata accessor for URLJetPackAssetFetcher);
    v72 = swift_allocObject();
    sub_1DB423AC0(v85, v72 + v68, type metadata accessor for URLJetPackAssetFetcher);
    *(v72 + v69) = v67;
    *(v72 + v70) = v32;
    v73 = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
    v74 = v67;
    v75 = v32;
    v76 = v74;
    v77 = v75;
    v78 = sub_1DB50AFB0();
    *(v0 + 864) = v73;
    *(v0 + 872) = &protocol witness table for OS_dispatch_queue;
    *(v0 + 840) = v78;
    *(v0 + 384) = sub_1DB423BB4;
    *(v0 + 392) = v71;
    *(v0 + 400) = sub_1DB423DE8;
    *(v0 + 408) = v72;
    sub_1DB30BE90(v0 + 840, v0 + 416);
    *(v0 + 456) = 0;

    sub_1DB309C44(v0 + 384);

    sub_1DB30623C(v0 + 384, &qword_1ECC42870, &unk_1DB518F90);
    __swift_destroy_boxed_opaque_existential_0((v0 + 840));
    v52 = sub_1DB41D700;
  }

  return MEMORY[0x1EEE6DFA0](v52, 0, 0);
}

uint64_t sub_1DB41D700()
{
  v1 = v0 + 10;
  v2 = v0[189];
  v0[10] = v0;
  v0[15] = v2;
  v0[11] = sub_1DB41D7CC;
  v0[28] = swift_continuation_init();
  v3 = (v0 + 28);
  *(v3 + 72) = 1;
  sub_1DB309C44(v3);
  sub_1DB30623C(v3, &qword_1ECC42870, &unk_1DB518F90);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB41D7CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 1864) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB41EA8C;
  }

  else
  {
    sub_1DB30C06C(*(v2 + 1512), *(v2 + 1520), &unk_1ECC45380, &qword_1DB51BBA0);
    v4 = sub_1DB41D904;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB41D904()
{
  v169 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1584);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1520);
  v162 = *(v5 + *(*(v0 + 1504) + 48));
  sub_1DB30C06C(v5, v3, &unk_1ECC42B20, &unk_1DB50F6A0);
  sub_1DB30C4B8(v3, v4, &unk_1ECC42B20, &unk_1DB50F6A0);
  v6 = v1(v4, 1, v2);
  v7 = *(v0 + 1856);
  v8 = *(v0 + 1680);
  if (v6 == 1)
  {
    v153 = *(v0 + 1784);
    v9 = *(v0 + 1656);
    v10 = *(v0 + 1648);
    v11 = *(v0 + 1584);
    v12 = *(v0 + 1432);
    sub_1DB30623C(*(v0 + 1576), &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v13 = sub_1DB50B8F0();
    v15 = v14;

    sub_1DB30623C(v11, &unk_1ECC42B20, &unk_1DB50F6A0);
    (*(v9 + 8))(v8, v10);
    v16 = type metadata accessor for JetPackDataStreamSource(0);
    *(v0 + 664) = v16;
    *(v0 + 672) = &protocol witness table for JetPackDataStreamSource;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 640));
    v18 = *(v16 + 24);
    v153(boxed_opaque_existential_0 + v18, v12, v10);
    (*(v9 + 56))(boxed_opaque_existential_0 + v18, 0, 1, v10);
    *boxed_opaque_existential_0 = xmmword_1DB51BB20;
    boxed_opaque_existential_0[2] = v13;
    boxed_opaque_existential_0[3] = v15;
  }

  else
  {
    v19 = *(v0 + 1672);
    v20 = *(v0 + 1656);
    v21 = *(v0 + 1648);
    v22 = *(v0 + 1584);
    (*(v0 + 1832))(v19, *(v0 + 1576), v21);
    v158 = sub_1DB509C30();
    v154 = v23;
    sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v24 = sub_1DB50B8F0();
    v26 = v25;

    v27 = *(v20 + 8);
    v27(v19, v21);
    sub_1DB30623C(v22, &unk_1ECC42B20, &unk_1DB50F6A0);
    v27(v8, v21);
    *(v0 + 664) = &type metadata for JetPackFileStreamSource;
    *(v0 + 672) = &protocol witness table for JetPackFileStreamSource;
    v28 = swift_allocObject();
    *(v0 + 640) = v28;
    v28[2] = v158;
    v28[3] = v154;
    v28[4] = v24;
    v28[5] = v26;
  }

  v29 = [v162 statusCode];
  if (v29 == 304)
  {
    v155 = 304;
    v142 = *(v0 + 1616);
    v146 = *(v0 + 1800);
    v30 = *(v0 + 1600);
    v31 = *(v0 + 1440);
    sub_1DB50BEB0();
    v32 = *(v0 + 904);
    v33 = *(v0 + 912);
    __swift_project_boxed_opaque_existential_1((v0 + 880), v32);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1DB50EE90;
    *(v0 + 1168) = MEMORY[0x1E69E6158];
    *(v0 + 1144) = 0xD00000000000002ALL;
    *(v0 + 1152) = 0x80000001DB52DC60;
    *(v35 + 48) = 0u;
    *(v35 + 32) = 0u;
    sub_1DB301D4C(v0 + 1144, v35 + 32);
    *(v35 + 64) = 0;
    *(v34 + 32) = v35;
    Logger.info(_:)(v34, v32, v33);

    __swift_destroy_boxed_opaque_existential_0((v0 + 880));
    sub_1DB30C4B8(v31, v30, &qword_1ECC46F20, qword_1DB5105D0);
    if (v146(v30, 1, v142) == 1)
    {
      v36 = *(v0 + 1720);
      v156 = *(v0 + 1712);
      v37 = *(v0 + 1704);
      v150 = *(v0 + 1696);
      sub_1DB30623C(*(v0 + 1600), &qword_1ECC46F20, qword_1DB5105D0);
      sub_1DB50BEB0();
      v38 = *(v0 + 584);
      v39 = *(v0 + 592);
      __swift_project_boxed_opaque_existential_1((v0 + 560), v38);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1DB50EE90;
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1DB50EE90;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000033;
      *(v0 + 1120) = 0x80000001DB52DC90;
      *(v41 + 48) = 0u;
      *(v41 + 32) = 0u;
      sub_1DB301D4C(v0 + 1112, v41 + 32);
      *(v41 + 64) = 0;
      *(v40 + 32) = v41;
      Logger.error(_:)(v40, v38, v39);

      __swift_destroy_boxed_opaque_existential_0((v0 + 560));
      sub_1DB423A04();
      swift_allocError();
      *v42 = 0;
      *(v42 + 8) = 2;
      swift_willThrow();

      (*(v37 + 8))(v156, v150);
LABEL_16:
      __swift_destroy_boxed_opaque_existential_0((v0 + 640));

      v62 = *(v0 + 8);
      v63 = 0;
      goto LABEL_37;
    }

    v136 = *(v0 + 1720);
    v64 = *(v0 + 1704);
    v140 = *(v0 + 1696);
    v145 = *(v0 + 1712);
    v65 = *(v0 + 1632);
    v66 = *(v0 + 1616);
    v67 = *(v0 + 1496);
    v68 = *(v0 + 1488);
    v149 = *(v0 + 1464);
    v151 = *(v0 + 1480);
    v69 = *(v0 + 1448);
    v160 = *(v0 + 1424);
    sub_1DB423AC0(*(v0 + 1600), v65, type metadata accessor for JetPackAsset);
    v70 = v69[3];
    v71 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v71 + 8))(v70, v71);

    (*(v64 + 8))(v145, v140);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    (*(v68 + 40))(v65 + *(v66 + 20) + *(v149 + 24), v67, v151);
    *(v65 + *(v66 + 36)) = 1;
    sub_1DB423AC0(v65, v160, type metadata accessor for JetPackAsset);
  }

  else
  {
    v43 = v29;
    if ([v162 statusCode] < 200 || objc_msgSend(v162, sel_statusCode) > 299)
    {
      sub_1DB50BEB0();
      v157 = *(v0 + 752);
      v159 = *(v0 + 744);
      __swift_project_boxed_opaque_existential_1((v0 + 720), v159);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1DB50EE90;
      *&v163 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
      v49._countAndFlagsBits = 0xD000000000000023;
      v49._object = 0x80000001DB52DBD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      v50 = [v162 statusCode];
      *(v0 + 1264) = MEMORY[0x1E69E6530];
      *(v0 + 1240) = v50;
      sub_1DB30C4B8(v0 + 1240, v0 + 1208, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 1000) = 0u;
      *(v0 + 1016) = 0u;
      sub_1DB301D4C(v0 + 1208, v0 + 1000);
      *(v0 + 1032) = 0;
      v51 = v163;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1DB301BC0(0, *(v163 + 16) + 1, 1, v163);
      }

      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_1DB301BC0((v52 > 1), v53 + 1, 1, v51);
      }

      v54 = *(v0 + 1720);
      v148 = *(v0 + 1712);
      v55 = *(v0 + 1704);
      v144 = *(v0 + 1696);
      *(v51 + 2) = v53 + 1;
      v56 = &v51[40 * v53];
      v57 = *(v0 + 1000);
      v58 = *(v0 + 1016);
      v56[64] = *(v0 + 1032);
      *(v56 + 2) = v57;
      *(v56 + 3) = v58;
      *&v163 = v51;
      sub_1DB30623C(v0 + 1240, &qword_1ECC426B0, &qword_1DB50EEB0);
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v59);
      *(v48 + 32) = v51;
      Logger.error(_:)(v48, v159, v157);

      __swift_destroy_boxed_opaque_existential_0((v0 + 720));
      v60 = [v162 statusCode];
      sub_1DB423A04();
      swift_allocError();
      *v61 = v60;
      *(v61 + 8) = 0;
      swift_willThrow();

      (*(v55 + 8))(v148, v144);
      goto LABEL_16;
    }

    v155 = v43;
    v44 = sub_1DB50A620();
    v45 = [v162 valueForHTTPHeaderField_];

    if (v45)
    {
      v46 = sub_1DB50A650();
      v143 = v47;
      v147 = v46;
    }

    else
    {
      v143 = 0;
      v147 = 0;
    }

    v72 = sub_1DB50A620();
    v73 = [v162 valueForHTTPHeaderField_];

    if (v73)
    {
      v74 = sub_1DB50A650();
      v139 = v75;
      v141 = v74;
    }

    else
    {
      v139 = 0;
      v141 = 0;
    }

    v76 = sub_1DB50A620();
    v77 = [v162 valueForHTTPHeaderField_];

    if (v77)
    {
      v78 = sub_1DB50A650();
      v80 = v79;
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    v81 = sub_1DB50A620();
    v82 = [v162 valueForHTTPHeaderField_];

    if (v82)
    {
      v83 = sub_1DB50A650();
      v137 = v84;
      v138 = v83;
    }

    else
    {
      v137 = 0;
      v138 = 0;
    }

    v85 = (v0 + 1040);
    sub_1DB50BEB0();
    v129 = *(v0 + 792);
    v130 = *(v0 + 784);
    __swift_project_boxed_opaque_existential_1((v0 + 760), v130);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1DB50EE90;
    *&v163 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v86._countAndFlagsBits = 0xD000000000000017;
    v86._object = 0x80000001DB52DC40;
    LogMessage.StringInterpolation.appendLiteral(_:)(v86);
    if (v80)
    {
      v87 = MEMORY[0x1E69E6158];
      v88 = v80;
      v89 = v78;
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v87 = 0;
      *(v0 + 1096) = 0;
    }

    *(v0 + 1080) = v89;
    *(v0 + 1088) = v88;
    *(v0 + 1104) = v87;
    sub_1DB30C4B8(v0 + 1080, v0 + 1176, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v85 = 0u;
    *(v0 + 1056) = 0u;

    sub_1DB301D4C(v0 + 1176, v0 + 1040);
    *(v0 + 1072) = 0;
    v90 = v163;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_1DB301BC0(0, *(v163 + 16) + 1, 1, v163);
    }

    v92 = *(v90 + 2);
    v91 = *(v90 + 3);
    v161 = v78;
    v152 = v80;
    if (v92 >= v91 >> 1)
    {
      v90 = sub_1DB301BC0((v91 > 1), v92 + 1, 1, v90);
    }

    v133 = *(v0 + 1704);
    v134 = *(v0 + 1696);
    v135 = *(v0 + 1712);
    v132 = *(v0 + 1720);
    v93 = *(v0 + 1616);
    v94 = *(v0 + 1472);
    v95 = *(v0 + 1464);
    v96 = *(v0 + 1448);
    v97 = *(v0 + 1424);
    *(v90 + 2) = v92 + 1;
    v98 = &v90[40 * v92];
    v99 = *v85;
    v100 = *(v0 + 1056);
    v98[64] = *(v0 + 1072);
    *(v98 + 2) = v99;
    *(v98 + 3) = v100;
    *&v163 = v90;
    sub_1DB30623C(v0 + 1080, &qword_1ECC426B0, &qword_1DB50EEB0);
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v101);
    *(v128 + 32) = v90;
    Logger.info(_:)(v128, v130, v129);

    __swift_destroy_boxed_opaque_existential_0((v0 + 760));
    v102 = v96[3];
    v103 = v96[4];
    __swift_project_boxed_opaque_existential_1(v96, v102);
    (*(v103 + 8))(v102, v103);
    v104 = [objc_opt_self() processInfo];
    [v104 operatingSystemVersion];
    v131 = v163;
    v105 = v164;

    v106 = JEGestaltGetBuildVersion();
    v107 = sub_1DB50A650();
    v109 = v108;

    sub_1DB4219E0(v162, &v163);
    v110 = v163;
    v111 = BYTE8(v163);
    v112 = v164;
    v113 = v165;
    v114 = v166;
    v115 = v167;
    v116 = v168;
    *v94 = v147;
    v94[1] = v143;
    v94[2] = v141;
    v94[3] = v139;
    v117 = v94 + v95[7];
    *v117 = v131;
    *(v117 + 2) = v105;
    v117[24] = 0;
    v118 = (v94 + v95[8]);
    *v118 = v107;
    v118[1] = v109;
    v119 = (v94 + v95[9]);
    *v119 = v138;
    v119[1] = v137;
    *(v94 + v95[10]) = 2;
    v120 = v94 + v95[11];
    *v120 = v110;
    v120[8] = v111;
    *(v120 + 2) = v112;
    v120[24] = v113;
    *(v120 + 4) = v114;
    v120[40] = v115;
    v120[41] = v116;
    sub_1DB30BE90(v0 + 640, v97);
    sub_1DB423A58(v94, v97 + v93[5], type metadata accessor for JetPackAsset.Metadata);
    sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v121 = sub_1DB50B8F0();
    v123 = v122;

    sub_1DB423EBC(v94, type metadata accessor for JetPackAsset.Metadata);
    (*(v133 + 8))(v135, v134);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    v124 = v97 + v93[6];
    *v124 = 0;
    *(v124 + 4) = 1;
    v125 = (v97 + v93[7]);
    *v125 = v121;
    v125[1] = v123;
    *(v97 + v93[8]) = 0;
    *(v97 + v93[9]) = 0;
    *(v97 + v93[10]) = 0;
    v126 = (v97 + v93[11]);
    *v126 = v161;
    v126[1] = v152;
  }

  v62 = *(v0 + 8);
  v63 = v155 == 304;
LABEL_37:

  return v62(v63);
}

uint64_t sub_1DB41EA8C()
{
  v1 = *(v0 + 1720);
  v9 = *(v0 + 1712);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1656);
  v6 = *(v0 + 1648);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v9, v3);

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1DB41EC6C()
{
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1400;
  *(v0 + 24) = sub_1DB41ED38;
  *(v0 + 304) = swift_continuation_init();
  *(v0 + 376) = 1;
  sub_1DB309A4C(v0 + 304);
  sub_1DB30623C(v0 + 304, &qword_1ECC428A0, &unk_1DB50F6E0);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DB41ED38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 1888) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB41FE0C;
  }

  else
  {
    *(v2 + 1896) = *(v2 + 1400);
    *(v2 + 1912) = *(v2 + 1416);
    v4 = sub_1DB41EE6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB41EE6C()
{
  v151 = v0;
  v143 = *(v0 + 1904);
  v139 = *(v0 + 1896);
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1656);
  v4 = *(v0 + 1648);
  v5 = *(v0 + 1432);
  sub_1DB42420C(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v6 = sub_1DB50B8F0();
  v8 = v7;

  v9 = type metadata accessor for JetPackDataStreamSource(0);
  *(v0 + 664) = v9;
  *(v0 + 672) = &protocol witness table for JetPackDataStreamSource;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 640));
  v11 = *(v9 + 24);
  v2(boxed_opaque_existential_0 + v11, v5, v4);
  (*(v3 + 56))(boxed_opaque_existential_0 + v11, 0, 1, v4);
  *boxed_opaque_existential_0 = v139;
  boxed_opaque_existential_0[1] = v143;
  boxed_opaque_existential_0[2] = v6;
  boxed_opaque_existential_0[3] = v8;
  v12 = *(v0 + 1912);
  v13 = [v12 statusCode];
  v144 = v12;
  if (v13 == 304)
  {
    v134 = 304;
    v127 = *(v0 + 1616);
    v131 = *(v0 + 1800);
    v14 = *(v0 + 1600);
    v15 = *(v0 + 1440);
    sub_1DB50BEB0();
    v16 = *(v0 + 904);
    v17 = *(v0 + 912);
    __swift_project_boxed_opaque_existential_1((v0 + 880), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    *(v0 + 1168) = MEMORY[0x1E69E6158];
    *(v0 + 1144) = 0xD00000000000002ALL;
    *(v0 + 1152) = 0x80000001DB52DC60;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1DB301D4C(v0 + 1144, v19 + 32);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_0((v0 + 880));
    sub_1DB30C4B8(v15, v14, &qword_1ECC46F20, qword_1DB5105D0);
    if (v131(v14, 1, v127) == 1)
    {
      v20 = *(v0 + 1720);
      v136 = *(v0 + 1712);
      v21 = *(v0 + 1704);
      v135 = *(v0 + 1696);
      sub_1DB30623C(*(v0 + 1600), &qword_1ECC46F20, qword_1DB5105D0);
      sub_1DB50BEB0();
      v22 = *(v0 + 584);
      v23 = *(v0 + 592);
      __swift_project_boxed_opaque_existential_1((v0 + 560), v22);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DB50EE90;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DB50EE90;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000033;
      *(v0 + 1120) = 0x80000001DB52DC90;
      *(v25 + 48) = 0u;
      *(v25 + 32) = 0u;
      sub_1DB301D4C(v0 + 1112, v25 + 32);
      *(v25 + 64) = 0;
      *(v24 + 32) = v25;
      Logger.error(_:)(v24, v22, v23);

      __swift_destroy_boxed_opaque_existential_0((v0 + 560));
      sub_1DB423A04();
      swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 2;
      swift_willThrow();

      (*(v21 + 8))(v136, v135);
LABEL_13:
      __swift_destroy_boxed_opaque_existential_0((v0 + 640));

      v46 = *(v0 + 8);
      v47 = 0;
      goto LABEL_34;
    }

    v121 = *(v0 + 1720);
    v48 = *(v0 + 1704);
    v126 = *(v0 + 1696);
    v130 = *(v0 + 1712);
    v49 = *(v0 + 1632);
    v50 = *(v0 + 1616);
    v51 = *(v0 + 1496);
    v52 = *(v0 + 1488);
    v138 = *(v0 + 1480);
    v133 = *(v0 + 1464);
    v53 = *(v0 + 1448);
    v141 = *(v0 + 1424);
    sub_1DB423AC0(*(v0 + 1600), v49, type metadata accessor for JetPackAsset);
    v54 = v53[3];
    v55 = v53[4];
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v55 + 8))(v54, v55);

    (*(v48 + 8))(v130, v126);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    (*(v52 + 40))(v49 + *(v50 + 20) + *(v133 + 24), v51, v138);
    *(v49 + *(v50 + 36)) = 1;
    sub_1DB423AC0(v49, v141, type metadata accessor for JetPackAsset);
  }

  else
  {
    v27 = v13;
    if ([v12 statusCode] < 200 || objc_msgSend(v12, sel_statusCode) > 299)
    {
      sub_1DB50BEB0();
      v137 = *(v0 + 752);
      v140 = *(v0 + 744);
      __swift_project_boxed_opaque_existential_1((v0 + 720), v140);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1DB50EE90;
      *&v145 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
      v33._countAndFlagsBits = 0xD000000000000023;
      v33._object = 0x80000001DB52DBD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v34 = [v12 statusCode];
      *(v0 + 1264) = MEMORY[0x1E69E6530];
      *(v0 + 1240) = v34;
      sub_1DB30C4B8(v0 + 1240, v0 + 1208, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 1000) = 0u;
      *(v0 + 1016) = 0u;
      sub_1DB301D4C(v0 + 1208, v0 + 1000);
      *(v0 + 1032) = 0;
      v35 = v145;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v145 + 16) + 1, 1, v145);
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      v38 = *(v0 + 1720);
      v132 = *(v0 + 1712);
      v39 = *(v0 + 1704);
      v129 = *(v0 + 1696);
      *(v35 + 2) = v37 + 1;
      v40 = &v35[40 * v37];
      v41 = *(v0 + 1000);
      v42 = *(v0 + 1016);
      v40[64] = *(v0 + 1032);
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      *&v145 = v35;
      sub_1DB30623C(v0 + 1240, &qword_1ECC426B0, &qword_1DB50EEB0);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v32 + 32) = v35;
      Logger.error(_:)(v32, v140, v137);

      __swift_destroy_boxed_opaque_existential_0((v0 + 720));
      v44 = [v144 statusCode];
      sub_1DB423A04();
      swift_allocError();
      *v45 = v44;
      *(v45 + 8) = 0;
      swift_willThrow();

      (*(v39 + 8))(v132, v129);
      goto LABEL_13;
    }

    v134 = v27;
    v28 = sub_1DB50A620();
    v29 = [v12 valueForHTTPHeaderField_];

    if (v29)
    {
      v30 = sub_1DB50A650();
      v125 = v31;
      v128 = v30;
    }

    else
    {
      v125 = 0;
      v128 = 0;
    }

    v56 = sub_1DB50A620();
    v57 = [v12 valueForHTTPHeaderField_];

    if (v57)
    {
      v58 = sub_1DB50A650();
      v123 = v59;
      v124 = v58;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v60 = sub_1DB50A620();
    v61 = [v12 valueForHTTPHeaderField_];

    if (v61)
    {
      v62 = sub_1DB50A650();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v65 = sub_1DB50A620();
    v66 = [v12 valueForHTTPHeaderField_];

    if (v66)
    {
      v67 = sub_1DB50A650();
      v120 = v68;
      v122 = v67;
    }

    else
    {
      v120 = 0;
      v122 = 0;
    }

    v69 = (v0 + 1040);
    sub_1DB50BEB0();
    v113 = *(v0 + 792);
    v114 = *(v0 + 784);
    __swift_project_boxed_opaque_existential_1((v0 + 760), v114);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1DB50EE90;
    *&v145 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v71._countAndFlagsBits = 0xD000000000000017;
    v71._object = 0x80000001DB52DC40;
    LogMessage.StringInterpolation.appendLiteral(_:)(v71);
    if (v64)
    {
      v72 = MEMORY[0x1E69E6158];
      v73 = v64;
      v74 = v62;
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v72 = 0;
      *(v0 + 1096) = 0;
    }

    *(v0 + 1080) = v74;
    *(v0 + 1088) = v73;
    *(v0 + 1104) = v72;
    sub_1DB30C4B8(v0 + 1080, v0 + 1176, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v69 = 0u;
    *(v0 + 1056) = 0u;

    sub_1DB301D4C(v0 + 1176, v0 + 1040);
    *(v0 + 1072) = 0;
    v75 = v145;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_1DB301BC0(0, *(v145 + 16) + 1, 1, v145);
    }

    v77 = *(v75 + 2);
    v76 = *(v75 + 3);
    v142 = v62;
    if (v77 >= v76 >> 1)
    {
      v75 = sub_1DB301BC0((v76 > 1), v77 + 1, 1, v75);
    }

    v116 = *(v0 + 1720);
    v117 = *(v0 + 1704);
    v118 = *(v0 + 1696);
    v119 = *(v0 + 1712);
    v112 = *(v0 + 1616);
    v78 = *(v0 + 1472);
    v79 = *(v0 + 1464);
    v80 = *(v0 + 1448);
    v81 = *(v0 + 1424);
    *(v75 + 2) = v77 + 1;
    v82 = &v75[40 * v77];
    v83 = *v69;
    v84 = *(v0 + 1056);
    v82[64] = *(v0 + 1072);
    *(v82 + 2) = v83;
    *(v82 + 3) = v84;
    *&v145 = v75;
    sub_1DB30623C(v0 + 1080, &qword_1ECC426B0, &qword_1DB50EEB0);
    v85._countAndFlagsBits = 0;
    v85._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v85);
    *(v70 + 32) = v75;
    Logger.info(_:)(v70, v114, v113);

    __swift_destroy_boxed_opaque_existential_0((v0 + 760));
    v86 = v80[3];
    v87 = v80[4];
    __swift_project_boxed_opaque_existential_1(v80, v86);
    (*(v87 + 8))(v86, v87);
    v88 = [objc_opt_self() processInfo];
    [v88 operatingSystemVersion];
    v115 = v145;
    v89 = v146;

    v90 = JEGestaltGetBuildVersion();
    v91 = sub_1DB50A650();
    v93 = v92;

    sub_1DB4219E0(v144, &v145);
    v94 = v145;
    v95 = BYTE8(v145);
    v96 = v146;
    v97 = v147;
    v98 = v148;
    v99 = v149;
    v100 = v150;
    *v78 = v128;
    v78[1] = v125;
    v78[2] = v124;
    v78[3] = v123;
    v101 = v78 + v79[7];
    *v101 = v115;
    *(v101 + 2) = v89;
    v101[24] = 0;
    v102 = (v78 + v79[8]);
    *v102 = v91;
    v102[1] = v93;
    v103 = (v78 + v79[9]);
    *v103 = v122;
    v103[1] = v120;
    *(v78 + v79[10]) = 2;
    v104 = v78 + v79[11];
    *v104 = v94;
    v104[8] = v95;
    *(v104 + 2) = v96;
    v104[24] = v97;
    *(v104 + 4) = v98;
    v104[40] = v99;
    v104[41] = v100;
    sub_1DB30BE90(v0 + 640, v81);
    sub_1DB423A58(v78, v81 + v112[5], type metadata accessor for JetPackAsset.Metadata);
    v105 = sub_1DB50B8F0();
    v107 = v106;

    sub_1DB423EBC(v78, type metadata accessor for JetPackAsset.Metadata);
    (*(v117 + 8))(v119, v118);
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    v108 = v81 + v112[6];
    *v108 = 0;
    *(v108 + 4) = 1;
    v109 = (v81 + v112[7]);
    *v109 = v105;
    v109[1] = v107;
    *(v81 + v112[8]) = 0;
    *(v81 + v112[9]) = 0;
    *(v81 + v112[10]) = 0;
    v110 = (v81 + v112[11]);
    *v110 = v142;
    v110[1] = v64;
  }

  v46 = *(v0 + 8);
  v47 = v134 == 304;
LABEL_34:

  return v46(v47);
}

uint64_t sub_1DB41FE0C()
{
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1712);
  v3 = *(v0 + 1704);
  v4 = *(v0 + 1696);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_1DB41FFC4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1DB420180(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v117 = a5;
  v119 = a4;
  v130 = *MEMORY[0x1E69E9840];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  MEMORY[0x1EEE9AC00](v112);
  v113 = v107 - v8;
  *&v116 = sub_1DB509B70();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v10 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB509E00();
  v114 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v107 - v17;
  v19 = sub_1DB509CA0();
  MEMORY[0x1EEE9AC00](v19);
  v118 = v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v107 - v22;
  v24 = a1;
  v26 = v25;
  v28 = v27;
  sub_1DB30C4B8(v24, v18, &unk_1ECC42B20, &unk_1DB50F6A0);
  if ((*(v26 + 48))(v18, 1, v28) == 1)
  {
    sub_1DB30623C(v18, &unk_1ECC42B20, &unk_1DB50F6A0);
    if (a3)
    {
LABEL_3:
      v29 = a3;
LABEL_27:
      v92 = a3;
      sub_1DB3DE0F8(v29);
      v93 = v29;
LABEL_28:

      return;
    }

LABEL_26:
    sub_1DB423A04();
    v29 = swift_allocError();
    *v91 = 1;
    *(v91 + 8) = 2;
    goto LABEL_27;
  }

  (*(v26 + 32))(v23, v18, v28);
  v30 = v23;
  if (!a2 || (objc_opt_self(), (v31 = swift_dynamicCastObjCClass()) == 0))
  {
    (*(v26 + 8))(v23, v28);
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v108 = v31;
  v109 = v26;
  v32 = a2;
  sub_1DB509DF0();
  v33 = sub_1DB509DE0();
  v110 = v30;
  v35 = v34;
  (*(v114 + 8))(v13, v11);
  *&v127 = 0x6B63617074656A2ELL;
  *(&v127 + 1) = 0xE800000000000000;
  *&v122 = v33;
  *(&v122 + 1) = v35;
  v36 = v110;
  *&v122 = sub_1DB50A860();
  *(&v122 + 1) = v37;
  sub_1DB50A770();
  v127 = v122;
  v38 = v115;
  v39 = v116;
  (v115)[13](v10, *MEMORY[0x1E6968F70], v116);
  sub_1DB301E30();
  v40 = v118;
  sub_1DB509C80();
  (v38[1])(v10, v39);

  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  sub_1DB509C30();
  v43 = sub_1DB50A620();

  *&v127 = 0;
  v44 = [v42 attributesOfItemAtPath:v43 error:&v127];

  v45 = v127;
  if (!v44)
  {
    v100 = v109;
LABEL_32:
    v101 = v45;
    v102 = sub_1DB509B20();

    swift_willThrow();
    sub_1DB423A04();
    v103 = swift_allocError();
    *v104 = v102;
    *(v104 + 8) = 1;
    v105 = v102;
    sub_1DB3DE0F8(v103);

    v106 = *(v100 + 8);
    v106(v40, v28);
    v106(v36, v28);
    v93 = v103;
    goto LABEL_28;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1DB42420C(&qword_1EE30C808, type metadata accessor for FileAttributeKey, &unk_1DB50EDF8);
  v46 = sub_1DB50A4B0();
  v47 = v45;

  if (*(v46 + 16) && (v48 = sub_1DB314CB4(), (v49 & 1) != 0))
  {
    sub_1DB300B14(*(v46 + 56) + 32 * v48, &v127);

    if ((swift_dynamicCast() & 1) != 0 && v122 && [v108 statusCode] >= 200 && objc_msgSend(v108, sel_statusCode) <= 299)
    {
      v115 = v32;
      v117 = v28;
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v50 = v128;
      v51 = v129;
      __swift_project_boxed_opaque_existential_1(&v127, v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v52 = swift_allocObject();
      v116 = xmmword_1DB50EE90;
      *(v52 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v53 = swift_allocObject();
      *(v53 + 16) = v116;
      *(&v123 + 1) = MEMORY[0x1E69E6158];
      *&v122 = 0xD00000000000003ELL;
      *(&v122 + 1) = 0x80000001DB52DE00;
      *(v53 + 48) = 0u;
      *(v53 + 32) = 0u;
      sub_1DB301D4C(&v122, v53 + 32);
      *(v53 + 64) = 0;
      *(v52 + 32) = v53;
      Logger.info(_:)(v52, v50, v51);

      __swift_destroy_boxed_opaque_existential_0(&v127);
      sub_1DB50BEB0();
      v54 = v128;
      v114 = v129;
      v107[1] = __swift_project_boxed_opaque_existential_1(&v127, v128);
      v55 = swift_allocObject();
      *(v55 + 16) = v116;
      v120 = sub_1DB301BC0(0, 15, 0, MEMORY[0x1E69E7CC0]);
      v56._countAndFlagsBits = 0x203A6D6F7266;
      v56._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v56);
      v57 = v117;
      v126 = v117;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v125);
      v59 = v109 + 16;
      v60 = *(v109 + 16);
      v61 = v110;
      v60(boxed_opaque_existential_0, v110, v57);
      sub_1DB30C4B8(v125, v121, &qword_1ECC426B0, &qword_1DB50EEB0);
      v122 = 0u;
      v123 = 0u;
      sub_1DB301D4C(v121, &v122);
      v124 = 0;
      v62 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1DB301BC0(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1DB301BC0((v63 > 1), v64 + 1, 1, v62);
      }

      *(v62 + 2) = v64 + 1;
      v65 = &v62[40 * v64];
      v66 = v122;
      v67 = v123;
      v65[64] = v124;
      *(v65 + 2) = v66;
      *(v65 + 3) = v67;
      v120 = v62;
      sub_1DB30623C(v125, &qword_1ECC426B0, &qword_1DB50EEB0);
      v68._countAndFlagsBits = 0x203A6F74202C20;
      v68._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v68);
      v69 = v117;
      v126 = v117;
      v70 = __swift_allocate_boxed_opaque_existential_0(v125);
      v60(v70, v118, v69);
      sub_1DB30C4B8(v125, v121, &qword_1ECC426B0, &qword_1DB50EEB0);
      v122 = 0u;
      v123 = 0u;
      sub_1DB301D4C(v121, &v122);
      v124 = 0;
      v71 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_1DB301BC0(0, *(v71 + 2) + 1, 1, v71);
      }

      v73 = *(v71 + 2);
      v72 = *(v71 + 3);
      *&v116 = v59;
      v107[0] = v60;
      if (v73 >= v72 >> 1)
      {
        v71 = sub_1DB301BC0((v72 > 1), v73 + 1, 1, v71);
      }

      *(v71 + 2) = v73 + 1;
      v74 = &v71[40 * v73];
      v75 = v122;
      v76 = v123;
      v74[64] = v124;
      *(v74 + 2) = v75;
      *(v74 + 3) = v76;
      v120 = v71;
      sub_1DB30623C(v125, &qword_1ECC426B0, &qword_1DB50EEB0);
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v77);
      *(v55 + 32) = v120;
      Logger.info(_:)(v55, v54, v114);

      __swift_destroy_boxed_opaque_existential_0(&v127);
      v78 = [v41 defaultManager];
      v79 = sub_1DB509BC0();
      v40 = v118;
      v80 = sub_1DB509BC0();
      *&v127 = 0;
      v81 = v61;
      v82 = [v78 moveItemAtURL:v79 toURL:v80 error:&v127];

      v45 = v127;
      if (v82)
      {
        v83 = v111;
        v84 = v117;
        (v107[0])(v111, v40, v117);
        v85 = v109;
        (*(v109 + 56))(v83, 0, 1, v84);
        v86 = *(v112 + 48);
        v87 = v113;
        sub_1DB30C06C(v83, v113, &unk_1ECC42B20, &unk_1DB50F6A0);
        *(v87 + v86) = v108;
        v88 = v115;
        v89 = v45;
        sub_1DB3F9A78(v87);

        sub_1DB30623C(v87, &unk_1ECC45380, &qword_1DB51BBA0);
        v90 = *(v85 + 8);
        v90(v40, v84);
        v90(v81, v84);
        return;
      }

      v28 = v117;
      v100 = v109;
      v36 = v61;
      v32 = v115;
      goto LABEL_32;
    }
  }

  else
  {
  }

  v94 = v109;
  v95 = v111;
  (*(v109 + 56))(v111, 1, 1, v28);
  v96 = *(v112 + 48);
  v97 = v113;
  sub_1DB30C06C(v95, v113, &unk_1ECC42B20, &unk_1DB50F6A0);
  *(v97 + v96) = v108;
  v98 = v32;
  sub_1DB3F9A78(v97);

  sub_1DB30623C(v97, &unk_1ECC45380, &qword_1DB51BBA0);
  v99 = *(v94 + 8);
  v99(v40, v28);
  v99(v110, v28);
}

uint64_t sub_1DB420FC4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1DB509C20();
    v12 = sub_1DB509CA0();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_1DB509CA0();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_1DB30623C(v10, &unk_1ECC42B20, &unk_1DB50F6A0);
}

uint64_t sub_1DB421138(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URLJetPackAssetFetcher(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  sub_1DB50AB80();
  v14 = sub_1DB50ABA0();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_1DB423A58(a2, v10, type metadata accessor for URLJetPackAssetFetcher);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1DB423AC0(v10, v19 + v15, type metadata accessor for URLJetPackAssetFetcher);
  *(v19 + v16) = a3;
  *(v19 + v17) = a4;
  *(v19 + v18) = 0;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = xmmword_1DB51BB30;
  v20 = a3;
  v21 = a4;
  sub_1DB388F14(0, 0, v13, &unk_1DB51BBD0, v19);
}

void sub_1DB421360(uint64_t a1, unint64_t a2, void *a3, id a4)
{
  v5 = a2 >> 60 == 15 || a3 == 0;
  if (v5 || (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) == 0))
  {
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      sub_1DB423A04();
      v12 = swift_allocError();
      *v13 = 1;
      *(v13 + 8) = 2;
    }

    v14 = a4;
    sub_1DB3DE4B8(v12);
    v11 = v12;
  }

  else
  {
    v15 = v9;
    sub_1DB3483BC(a1, a2);
    v10 = a3;
    sub_1DB3F9F48(a1, a2, v15);
    sub_1DB30C158(a1, a2);
    v11 = v15;
  }
}

uint64_t sub_1DB421490(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1DB509CE0();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1DB32E340(v6, v10);
}

uint64_t sub_1DB421558(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v27 = a3;
  v28 = a4;
  v6 = type metadata accessor for URLJetPackAssetFetcher(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = *a1;
  v14 = a1[1];
  sub_1DB30C1AC(v13, v14);
  sub_1DB30C1AC(v13, v14);
  sub_1DB50AB80();
  v15 = sub_1DB50ABA0();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  sub_1DB423A58(a2, v9, type metadata accessor for URLJetPackAssetFetcher);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_1DB423AC0(v9, v20 + v16, type metadata accessor for URLJetPackAssetFetcher);
  v21 = v27;
  v22 = v28;
  *(v20 + v17) = v27;
  *(v20 + v18) = v22;
  *(v20 + v19) = 0;
  v23 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v13;
  v23[1] = v14;
  v24 = v21;
  v25 = v22;
  sub_1DB388F14(0, 0, v12, &unk_1DB51BBE0, v20);
  sub_1DB30C158(v13, v14);
}

uint64_t sub_1DB4217B4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a1;
  v28 = a6;
  v9 = type metadata accessor for URLJetPackAssetFetcher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  sub_1DB50AB80();
  v16 = sub_1DB50ABA0();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_1DB423A58(a2, v12, type metadata accessor for URLJetPackAssetFetcher);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1DB423AC0(v12, v21 + v17, type metadata accessor for URLJetPackAssetFetcher);
  *(v21 + v18) = a3;
  *(v21 + v19) = a4;
  v22 = v27;
  *(v21 + v20) = v27;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = xmmword_1DB51BB30;
  v23 = a3;
  v24 = a4;
  v25 = v22;
  sub_1DB388F14(0, 0, v15, v28, v21);
}

uint64_t sub_1DB4219E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DB50A6B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE30C7C0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  if (v24 == 1)
  {
    if (qword_1EE30C7C8 != -1)
    {
      swift_once();
    }

    if (byte_1EE30C7D0 != 1)
    {
LABEL_15:
      v12 = sub_1DB50A620();
      v11 = [a1 valueForHTTPHeaderField_];

      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = sub_1DB3ADB68(&unk_1F56F0628);
    sub_1DB424254(&unk_1F56F0648);
    if (qword_1EE30C7A8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (!v25)
    {

      goto LABEL_15;
    }

    v9 = sub_1DB33114C(v24, v25, v8);

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = sub_1DB50A620();
  v11 = [a1 valueForHTTPHeaderField_];

  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_1DB50A650();

  sub_1DB50A690();
  v13 = sub_1DB50A660();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  if (v15 >> 60 != 15)
  {
    sub_1DB509890();
    swift_allocObject();
    sub_1DB509880();
    sub_1DB4242A8();
    sub_1DB509870();

    sub_1DB32E340(v13, v15);
  }

LABEL_19:
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v16 = v26;
  v17 = v27;
  __swift_project_boxed_opaque_existential_1(&v24, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v18 = swift_allocObject();
  v22 = xmmword_1DB50EE90;
  *(v18 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  v23[3] = MEMORY[0x1E69E6158];
  v23[0] = 0xD000000000000022;
  v23[1] = 0x80000001DB52DE60;
  *(v19 + 48) = 0u;
  *(v19 + 32) = 0u;
  sub_1DB301D4C(v23, v19 + 32);
  *(v19 + 64) = 0;
  *(v18 + 32) = v19;
  Logger.info(_:)(v18, v16, v17);

  result = __swift_destroy_boxed_opaque_existential_0(&v24);
  *a2 = 0x40AC200000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0x4143C68000000000;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DB4221E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a8;
  v8[58] = v10;
  v8[55] = a6;
  v8[56] = a7;
  v8[53] = a4;
  v8[54] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DB422214, 0, 0);
}

uint64_t sub_1DB422214()
{
  v1 = *(v0 + 424);
  *(v0 + 472) = *(v1 + *(type metadata accessor for URLJetPackAssetFetcher(0) + 28));

  return MEMORY[0x1EEE6DFA0](sub_1DB42228C, 0, 0);
}

uint64_t sub_1DB42228C()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1DB422358;
  v0[26] = swift_continuation_init();
  v2 = (v0 + 26);
  *(v2 + 72) = 1;
  sub_1DB309848(v2);
  sub_1DB30623C(v2, &qword_1ECC428C0, &unk_1DB50F6F0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB422358(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 480) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB422640;
  }

  else
  {
    *(v2 + 488) = *(v2 + 288);
    v4 = sub_1DB42247C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB42247C()
{
  v1 = v0[61];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[54];
  v5 = [v4 _incompleteTaskMetrics];
  v6 = [objc_allocWithZone(MEMORY[0x1E698CA28]) initWithTask:v4 metrics:v5];
  v0[62] = v6;

  [v6 setBag_];
  [v6 setSession_];
  if (v3)
  {
    v7 = sub_1DB509B10();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[58];
  [v6 setError_];

  v9 = [objc_opt_self() currentProcess];
  [v6 setProcessInfo_];

  if (v8 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1DB509CD0();
  }

  [v6 setResponseBody_];

  v11 = objc_opt_self();
  v0[63] = v11;
  v0[64] = sub_1DB4DCBB4([v11 shouldCollectMetricsPromiseForContext_]);

  return MEMORY[0x1EEE6DFA0](sub_1DB4228E0, 0, 0);
}

uint64_t sub_1DB422640()
{
  v1 = *(v0 + 480);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v18 = sub_1DB301BC0(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52DD50;
  v5._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  *(v0 + 352) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v6, v7);
  sub_1DB30C4B8(v0 + 328, v0 + 360, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1DB301D4C(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v9 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = *(v0 + 288);
  v14 = *(v0 + 304);
  v12[64] = *(v0 + 320);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 328, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v4 + 32) = v9;
  Logger.error(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1DB4228E0()
{
  v1 = v0 + 10;
  v0[10] = v0;
  v0[15] = v0 + 36;
  v0[11] = sub_1DB4229AC;
  v0[26] = swift_continuation_init();
  v2 = (v0 + 26);
  *(v2 + 72) = 1;
  sub_1DB30A2E4(v2);
  sub_1DB30623C(v2, &qword_1ECC42890, &unk_1DB518FA0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4229AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 520) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB422BB8;
  }

  else
  {

    *(v2 + 528) = *(v2 + 288);
    v4 = sub_1DB422AD8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB422AD8()
{
  v1 = *(v0 + 528);
  v2 = [v1 BOOLValue];

  if (v2)
  {
    *(v0 + 536) = sub_1DB4DCD64([*(v0 + 504) loadURLEventPromiseWithContext_]);

    return MEMORY[0x1EEE6DFA0](sub_1DB422E70, 0, 0);
  }

  else
  {

    swift_unknownObjectRelease();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1DB422BB8()
{
  v1 = *(v0 + 496);

  swift_unknownObjectRelease();

  v2 = *(v0 + 520);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v19 = sub_1DB301BC0(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52DD50;
  v6._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  *(v0 + 352) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 328, v0 + 360, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1DB301D4C(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v10 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *(v0 + 288);
  v15 = *(v0 + 304);
  v13[64] = *(v0 + 320);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1DB30623C(v0 + 328, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DB422E70()
{
  v1 = v0 + 18;
  v0[18] = v0;
  v0[23] = v0 + 36;
  v0[19] = sub_1DB422F3C;
  v0[26] = swift_continuation_init();
  v2 = (v0 + 26);
  *(v2 + 72) = 1;
  sub_1DB30A130(v2);
  sub_1DB30623C(v2, &qword_1ECC42880, &unk_1DB50F6D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB422F3C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  *(*v1 + 544) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB423068;
  }

  else
  {

    *(v2 + 552) = *(v2 + 288);
    v4 = sub_1DB423320;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB423068()
{
  v1 = *(v0 + 496);

  swift_unknownObjectRelease();

  v2 = *(v0 + 544);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v19 = sub_1DB301BC0(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52DD50;
  v6._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  *(v0 + 352) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 328, v0 + 360, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1DB301D4C(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v10 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *(v0 + 288);
  v15 = *(v0 + 304);
  v13[64] = *(v0 + 320);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1DB30623C(v0 + 328, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DB423320()
{
  [*(v0 + 552) setPreventSampling_];
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 496);
  sub_1DB50BEB0();
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  *(v0 + 312) = MEMORY[0x1E69E6158];
  *(v0 + 288) = 0xD000000000000052;
  *(v0 + 296) = 0x80000001DB52DDA0;
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  sub_1DB301D4C(v0 + 288, v6 + 32);
  *(v6 + 64) = 0;
  *(v5 + 32) = v6;
  Logger.info(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v7 = [objc_opt_self() internalInstanceUsingBag_];
  swift_unknownObjectRelease();
  [v7 enqueueEvent_];

  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DB423550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB423574, 0, 0);
}

uint64_t sub_1DB423574()
{
  v0[5] = &type metadata for SystemDateProvider;
  v0[6] = &protocol witness table for SystemDateProvider;
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1DB423624;
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];

  return sub_1DB41BE7C(v3, v4, v2, (v0 + 2));
}

uint64_t sub_1DB423624(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4245AC, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

void sub_1DB4237A4(uint64_t a1)
{
  sub_1DB336FD4(319, &qword_1EE30C7D8, 0x1E696AF80);
  if (v1 <= 0x3F)
  {
    sub_1DB423868(319);
    if (v2 <= 0x3F)
    {
      sub_1DB377878(319);
      if (v3 <= 0x3F)
      {
        sub_1DB4238CC(319, v3, v4, v5);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DB423868(uint64_t a1)
{
  if (!qword_1EE30C768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC470E0, &unk_1DB50F160);
    v1 = sub_1DB50B120();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE30C768);
    }
  }
}

void sub_1DB4238CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EE30C968[0])
  {
    v4 = type metadata accessor for Promise(0, &type metadata for Bag, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_1EE30C968);
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB42393C(uint64_t *a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DB421558(a1, v1 + v4, v6, v7);
}

unint64_t sub_1DB423A04()
{
  result = qword_1ECC45800;
  if (!qword_1ECC45800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45800);
  }

  return result;
}

uint64_t sub_1DB423A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB423AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DB423B28(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_1DB509CA0() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1DB420180(a1, a2, a3, v8, v9);
}

uint64_t sub_1DB423BB4(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DB421138(a1, v1 + v4, v6, v7);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for URLJetPackAssetFetcher(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 8))
  {
  }

  v6 = *(v1 + 24);
  v7 = sub_1DB509CA0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v2 | 7);
}

uint64_t sub_1DB423E08(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DB4217B4(a1, v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_1DB423EBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB423F1C(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DB30C7A0;

  return sub_1DB4221E4(a1, v11, v12, v1 + v4, v8, v9, v10, v13);
}

uint64_t sub_1DB42408C(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DB306AF4;

  return sub_1DB4221E4(a1, v11, v12, v1 + v4, v8, v9, v10, v13);
}

uint64_t sub_1DB42420C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DB4242A8()
{
  result = qword_1EE30DBE8;
  if (!qword_1EE30DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBE8);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for URLJetPackAssetFetcher(0);
  v13 = *(*(v1 - 8) + 80);
  v2 = (v13 + 32) & ~v13;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = v0 + v2;

  if (*(v0 + v2 + 8))
  {
  }

  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v9 = sub_1DB509CA0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v0 + v7 + 8);
  if (v11 >> 60 != 15)
  {
    sub_1DB30C158(*(v0 + v7), v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v13 | 7);
}

uint64_t get_enum_tag_for_layout_string_7JetCore27URLJetPackAssetFetcherErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1DB4244F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DB424538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB42457C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DB4245B8()
{
  result = sub_1DB50A620();
  qword_1ECC67970 = result;
  return result;
}

uint64_t sub_1DB4245F0()
{
  result = sub_1DB50A620();
  qword_1ECC67978 = result;
  return result;
}

uint64_t SilverBulletJetPackAssetFetcher.init(bag:urlSessionConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for SilverBulletJetPackAssetFetcher(0) + 20);
  v7 = type metadata accessor for URLJetPackAssetFetcher(0);
  v8 = *(v7 + 24);
  v9 = sub_1DB509CA0();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = a1;
  *(v10 + 32) = 1;
  *&v6[*(v7 + 28)] = v10;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = a2;
  *a3 = a1;

  return swift_unknownObjectRetain();
}

uint64_t SilverBulletJetPackAssetFetcher.init(bag:urlAssetFetcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for SilverBulletJetPackAssetFetcher(0) + 20);

  return sub_1DB4247DC(a2, v4);
}

uint64_t type metadata accessor for SilverBulletJetPackAssetFetcher(uint64_t a1)
{
  result = qword_1ECC45818;
  if (!qword_1ECC45818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB4247DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLJetPackAssetFetcher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a1;
  *(v4 + 120) = type metadata accessor for URLJetPackAssetRequest(0);
  *(v4 + 128) = swift_task_alloc();
  v6 = sub_1DB509CA0();
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  v7 = swift_task_alloc();
  *(v4 + 152) = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  *(v4 + 56) = *a2;
  *(v4 + 89) = v10;
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  *(v4 + 88) = v10;
  v11 = swift_task_alloc();
  *(v4 + 160) = v11;
  *v11 = v4;
  v11[1] = sub_1DB42499C;

  return sub_1DB424EA4(v7, (v4 + 56));
}

uint64_t sub_1DB42499C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DB424E30;
  }

  else
  {
    v2 = sub_1DB424AB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB424AB0()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  (*(*(v0 + 144) + 16))(v2, *(v0 + 152), *(v0 + 136));
  *(v2 + *(v3 + 20)) = v1;
  v4 = (v2 + *(v3 + 24));
  type metadata accessor for SilverBulletJetPackAssetFetcher(0);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + 40) = &type metadata for SystemDateProvider;
  *(v0 + 48) = &protocol witness table for SystemDateProvider;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1DB424BB0;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  return sub_1DB41BE7C(v7, v6, v8, v0 + 16);
}

uint64_t sub_1DB424BB0(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1DB424D84;
  }

  else
  {
    *(v4 + 90) = a1 & 1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v5 = sub_1DB424CE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB424CE4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_1DB41531C(*(v0 + 128));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 90);

  return v4(v5);
}

uint64_t sub_1DB424D84()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_1DB41531C(v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1DB424E30()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DB424EA4(uint64_t a1, uint64_t *a2)
{
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  v5 = sub_1DB509B70();
  *(v3 + 232) = v5;
  *(v3 + 240) = *(v5 - 8);
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v6 = sub_1DB509CA0();
  *(v3 + 272) = v6;
  *(v3 + 280) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 288) = v7;
  *(v3 + 296) = v8;
  *(v3 + 304) = *(a2 + 1);
  *(v3 + 320) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1DB42501C, 0, 0);
}

uint64_t sub_1DB42501C()
{
  v1 = **(v0 + 224);
  if (qword_1ECC42120 != -1)
  {
    v4 = **(v0 + 224);
    swift_once();
    v1 = v4;
  }

  v2 = [v1 URLForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45828, &unk_1DB522590);
  inited = swift_initStackObject();
  inited[2] = v2;
  inited[3] = sub_1DB3C8D2C;
  inited[4] = 0;
  *(v0 + 328) = sub_1DB4DC988();

  return MEMORY[0x1EEE6DFA0](sub_1DB425124, 0, 0);
}

uint64_t sub_1DB425124()
{
  v1 = v0 + 2;
  v2 = v0[32];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB4251F0;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30A498(v3);
  sub_1DB30623C(v3, &unk_1ECC42B30, &qword_1DB50F1E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4251F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB4254D4;
  }

  else
  {
    v5 = *(v2 + 256);
    v6 = *(v2 + 264);

    sub_1DB34BBCC(v5, v6);
    v4 = sub_1DB425324;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB425324()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1DB30623C(v3, &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB42610C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[37];
    v7 = v0[38];
    (*(v2 + 32))(v0[36], v3, v1);
    v0[25] = v8;
    v0[26] = v7;

    v9 = swift_task_alloc();
    v0[43] = v9;
    *v9 = v0;
    v9[1] = sub_1DB425568;

    return sub_1DB425934(v0 + 25);
  }
}

uint64_t sub_1DB4254D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB425568(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {

    v7 = sub_1DB425838;
  }

  else
  {
    *(v6 + 360) = a2;
    *(v6 + 368) = a1;

    v7 = sub_1DB4256AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DB4256AC()
{
  v1 = v0[45];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v13 = v0[34];
  v6 = v0[31];
  v8 = v0[29];
  v7 = v0[30];
  v12 = v0[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50F8D0;
  *(v9 + 32) = v12;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  (*(v7 + 104))(v6, *MEMORY[0x1E6968F70], v8);
  sub_1DB301E30();

  sub_1DB509C70();

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DB425838()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1DB4258E0()
{
  result = qword_1ECC45810;
  if (!qword_1ECC45810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45810);
  }

  return result;
}

uint64_t sub_1DB425934(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[38] = v1;
  v2[39] = v3;
  v2[40] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DB42595C, 0, 0);
}

uint64_t sub_1DB42595C()
{
  v1 = **(v0 + 304);
  if (qword_1ECC42118 != -1)
  {
    v4 = **(v0 + 304);
    swift_once();
    v1 = v4;
  }

  v2 = [v1 dictionaryForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46780, &qword_1DB5142C0);
  inited = swift_initStackObject();
  inited[2] = v2;
  inited[3] = sub_1DB3C8F68;
  inited[4] = 0;
  *(v0 + 328) = sub_1DB4DC7EC();

  return MEMORY[0x1EEE6DFA0](sub_1DB425A64, 0, 0);
}

uint64_t sub_1DB425A64()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1DB425B30;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB308440(v2);
  sub_1DB30623C(v2, &qword_1ECC42840, &qword_1DB5142D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB425B30(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB425E4C;
  }

  else
  {

    *(v2 + 344) = *(v2 + 288);
    v4 = sub_1DB425C5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB425C5C()
{
  v1 = *(v0 + 344);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = *(v0 + 320);
  *(v0 + 272) = *(v0 + 312);
  *(v0 + 280) = v2;

  sub_1DB50B2B0();
  if (!*(v1 + 16) || (v3 = sub_1DB30EDA8(v0 + 200), (v4 & 1) == 0))
  {

    sub_1DB314BE8(v0 + 200);
LABEL_12:
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    goto LABEL_13;
  }

  sub_1DB300B14(*(v1 + 56) + 32 * v3, v0 + 240);
  sub_1DB314BE8(v0 + 200);

  if (!*(v0 + 264))
  {
LABEL_13:
    sub_1DB30623C(v0 + 240, &qword_1ECC426B0, &qword_1DB50EEB0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44388, &unk_1DB51BD70);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 296);
    if (*(v5 + 16))
    {
      v6 = sub_1DB306160(0x65756C6176, 0xE500000000000000);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        v9 = *v8;
        v10 = v8[1];

        v11 = *(v0 + 8);

        return v11(v9, v10);
      }
    }
  }

LABEL_14:
  sub_1DB42610C();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DB425E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB425EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB425F60;

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(a1, a2, a3);
}

uint64_t sub_1DB425F60(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1DB426090(uint64_t a1)
{
  result = type metadata accessor for URLJetPackAssetFetcher(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DB42610C()
{
  result = qword_1ECC45830;
  if (!qword_1ECC45830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45830);
  }

  return result;
}

unint64_t sub_1DB426174()
{
  result = qword_1ECC45838;
  if (!qword_1ECC45838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45838);
  }

  return result;
}

void sub_1DB4261C8(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v7 = qword_1EE30E190;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB426738(v4, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock((v6 + 40));
    sub_1DB348178((v6 + 16));
    if (v3)
    {
      os_unfair_lock_unlock((v6 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v6 + 40));
      sub_1DB426738(v4, a1);
      os_unfair_lock_lock((v6 + 40));
      v9 = *(v6 + 16);
      if (v9)
      {
        v10 = *(v6 + 24);
        v17 = *(v6 + 16);
        v11 = v9;
        v12 = v10;

        v13 = ProcessAssertion.invalidate()();

        if (v13)
        {
          v14 = *(v6 + 16);
          v15 = *(v6 + 24);
          v16 = *(v6 + 32);
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
          *(v6 + 32) = 0;
          sub_1DB3481B0(v14, v15, v16);
        }
      }

      os_unfair_lock_unlock((v6 + 40));
    }
  }
}

void sub_1DB426398(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v7 = qword_1EE30E190;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB42684C(v4, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock((v6 + 40));
    sub_1DB349364((v6 + 16));
    if (v3)
    {
      os_unfair_lock_unlock((v6 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v6 + 40));
      sub_1DB42684C(v4, a1);
      os_unfair_lock_lock((v6 + 40));
      v9 = *(v6 + 16);
      if (v9)
      {
        v10 = *(v6 + 24);
        v17 = *(v6 + 16);
        v11 = v9;
        v12 = v10;

        v13 = ProcessAssertion.invalidate()();

        if (v13)
        {
          v14 = *(v6 + 16);
          v15 = *(v6 + 24);
          v16 = *(v6 + 32);
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
          *(v6 + 32) = 0;
          sub_1DB3481B0(v14, v15, v16);
        }
      }

      os_unfair_lock_unlock((v6 + 40));
    }
  }
}

void sub_1DB426568(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_keepAlive);
  v7 = qword_1EE30E190;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  if (byte_1EE30E198)
  {
    sub_1DB426960(v4, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock((v6 + 40));
    sub_1DB349364((v6 + 16));
    if (v3)
    {
      os_unfair_lock_unlock((v6 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v6 + 40));
      sub_1DB426960(v4, a1);
      os_unfair_lock_lock((v6 + 40));
      v9 = *(v6 + 16);
      if (v9)
      {
        v10 = *(v6 + 24);
        v17 = *(v6 + 16);
        v11 = v9;
        v12 = v10;

        v13 = ProcessAssertion.invalidate()();

        if (v13)
        {
          v14 = *(v6 + 16);
          v15 = *(v6 + 24);
          v16 = *(v6 + 32);
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
          *(v6 + 32) = 0;
          sub_1DB3481B0(v14, v15, v16);
        }
      }

      os_unfair_lock_unlock((v6 + 40));
    }
  }
}

void sub_1DB426738(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB348194((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1DB42684C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB349348((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1DB426960(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB349348((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(&v6, v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1DB349330((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

uint64_t AssetPushSubscriptionSQLiteStore.init(database:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[4] = &type metadata for SystemDateProvider;
  a2[5] = &protocol witness table for SystemDateProvider;
  return result;
}

void sub_1DB426A9C()
{
  qword_1ECC45840 = 0xD0000000000001FALL;
  *algn_1ECC45848 = 0x80000001DB52E930;
  qword_1ECC45850 = MEMORY[0x1E69E7CC0];
}

void AssetPushSubscriptionSQLiteStore.create(record:)(uint64_t a1)
{
  v1 = *(a1 + 112);
  v5[8] = *(a1 + 96);
  v5[9] = v1;
  v5[10] = *(a1 + 128);
  v6 = *(a1 + 144);
  v2 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v5[5] = v2;
  v3 = *(a1 + 80);
  v5[6] = *(a1 + 64);
  v5[7] = v3;
  v4 = *(a1 + 16);
  v5[2] = *a1;
  v5[3] = v4;
  sub_1DB426398(sub_1DB4271B4, v5);
}

uint64_t sub_1DB426B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x1E1285C10](102);
  MEMORY[0x1E1285C70](0xD000000000000053, 0x80000001DB52E7B0);
  v61 = *(a2 + 8);
  if (*(&v61 + 1))
  {
    v7 = &off_1F5700098;
    v8 = MEMORY[0x1E69E6158];
    v9 = v61;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v55 = 0;
  }

  v53 = v9;
  v54 = *(&v61 + 1);
  v56 = v8;
  v57 = v7;
  sub_1DB30C4B8(&v53, &v50, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v61, v49, &unk_1ECC46C00, &qword_1DB516350);
  v10 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB302D80((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v50;
  v15 = v51;
  v13[8] = v52;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v53, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v60 = *(a2 + 24);
  if (*(&v60 + 1))
  {
    v16 = &off_1F5700098;
    v17 = MEMORY[0x1E69E6158];
    v18 = v60;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v55 = 0;
  }

  v53 = v18;
  v54 = *(&v60 + 1);
  v56 = v17;
  v57 = v16;
  sub_1DB30C4B8(&v53, &v50, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v60, v49, &unk_1ECC46C00, &qword_1DB516350);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1DB302D80((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v50;
  v23 = v51;
  v21[8] = v52;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v53, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v59 = *(a2 + 40);
  if (*(&v59 + 1))
  {
    v24 = &off_1F5700098;
    v25 = MEMORY[0x1E69E6158];
    v26 = v59;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v55 = 0;
  }

  v53 = v26;
  v54 = *(&v59 + 1);
  v56 = v25;
  v57 = v24;
  sub_1DB30C4B8(&v53, &v50, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v59, v49, &unk_1ECC46C00, &qword_1DB516350);
  v28 = v10[2];
  v27 = v10[3];
  if (v28 >= v27 >> 1)
  {
    v10 = sub_1DB302D80((v27 > 1), v28 + 1, 1, v10);
  }

  v10[2] = v28 + 1;
  v29 = &v10[5 * v28];
  v30 = v50;
  v31 = v51;
  v29[8] = v52;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v53, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v58 = *(a2 + 56);
  if (*(&v58 + 1))
  {
    v32 = &off_1F5700098;
    v33 = MEMORY[0x1E69E6158];
    v34 = v58;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v55 = 0;
  }

  v53 = v34;
  v54 = *(&v58 + 1);
  v56 = v33;
  v57 = v32;
  sub_1DB30C4B8(&v53, &v50, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v58, v49, &unk_1ECC46C00, &qword_1DB516350);
  v36 = v10[2];
  v35 = v10[3];
  if (v36 >= v35 >> 1)
  {
    v10 = sub_1DB302D80((v35 > 1), v36 + 1, 1, v10);
  }

  v10[2] = v36 + 1;
  v37 = &v10[5 * v36];
  v38 = v50;
  v39 = v51;
  v37[8] = v52;
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v53, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x4E52555445522029, 0xED00002A20474E49);
  v53 = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, &v53, &v50);
  if (v3)
  {
  }

  v41 = v53;
  if (v53)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v10);

    v44 = *(inited + 16);
    v45 = sqlite3_step(v44);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v45, qword_1EE312D90) && (v46 = sub_1DB3AD5F0(&unk_1F56F0658), v47 = sub_1DB331244(v45, v46), , v47))
    {
      sub_1DB4271D0(inited, a3);
      swift_setDeallocating();
      v43 = *(inited + 16);
    }

    else
    {
      sub_1DB388320();
      swift_allocError();
      *v48 = v45;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v43 = v44;
    }

    sqlite3_finalize(v43);
  }

  __break(1u);
  return result;
}

sqlite3_int64 sub_1DB4271D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DB4AE7B8();
  if (!v4[2])
  {
    v67 = 0;
    v68 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v65 = 0;
    v66 = 0;
    v71 = 1;
    goto LABEL_22;
  }

  v5 = sub_1DB306160(25705, 0xE200000000000000);
  if (v6)
  {
    v7 = *(v4[7] + 4 * v5);
    if (sqlite3_column_type(*(a1 + 16), v7) != 5)
    {
      v72 = sqlite3_column_int(*(a1 + 16), v7);
      v71 = 0;
      if (v4[2])
      {
        goto LABEL_5;
      }

LABEL_20:
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      goto LABEL_21;
    }
  }

  v72 = 0;
  v71 = 1;
  if (!v4[2])
  {
    goto LABEL_20;
  }

LABEL_5:
  v8 = sub_1DB306160(0x72755F7465737361, 0xE90000000000006CLL);
  if ((v9 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(v4[7] + 4 * v8)))
  {
    v10 = sub_1DB50A7A0();
    v69 = v11;
    v70 = v10;
    if (!v4[2])
    {
LABEL_8:
      v67 = 0;
      v68 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0;
    if (!v4[2])
    {
      goto LABEL_8;
    }
  }

  v12 = sub_1DB306160(0x5F6C656E6E616863, 0xEA00000000006469);
  if ((v13 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(v4[7] + 4 * v12)))
  {
    v67 = sub_1DB50A7A0();
    v68 = v14;
    if (!v4[2])
    {
      goto LABEL_21;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
    if (!v4[2])
    {
      goto LABEL_21;
    }
  }

  v15 = sub_1DB306160(0x695F656C646E7562, 0xE900000000000064);
  if ((v16 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(v4[7] + 4 * v15)))
  {
    v17 = sub_1DB50A7A0();
    v65 = v18;
    v66 = v17;
    goto LABEL_22;
  }

LABEL_21:
  v65 = 0;
  v66 = 0;
LABEL_22:
  if (!v4[2])
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    goto LABEL_35;
  }

  v19 = sub_1DB306160(0x64695F6567617375, 0xE800000000000000);
  if ((v20 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(v4[7] + 4 * v19)))
  {
    v21 = sub_1DB50A7A0();
    v63 = v22;
    v64 = v21;
    if (!v4[2])
    {
LABEL_26:
      v62 = 0;
LABEL_35:
      v26 = 0;
      v60 = 0;
      v61 = 1;
      v27 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    v63 = 0;
    v64 = 0;
    if (!v4[2])
    {
      goto LABEL_26;
    }
  }

  v23 = sub_1DB306160(0x656C756465686373, 0xED00006D6F72665FLL);
  if ((v24 & 1) == 0 || (v25 = *(v4[7] + 4 * v23), sqlite3_column_type(*(a1 + 16), v25) == 5))
  {
    v26 = 0;
    v27 = 1;
    if (v4[2])
    {
      goto LABEL_31;
    }

LABEL_56:
    v62 = 0;
    v60 = 0;
    v61 = 1;
LABEL_36:
    v59 = 1;
    if (v4[2])
    {
      goto LABEL_37;
    }

LABEL_66:
    v46 = 0;
    v37 = 0;
    v42 = 0;
    v47 = 1;
    v38 = 1;
LABEL_73:

    result = 0;
    v57 = 1;
    goto LABEL_74;
  }

  v26 = sqlite3_column_int64(*(a1 + 16), v25);
  v27 = 0;
  if (!v4[2])
  {
    goto LABEL_56;
  }

LABEL_31:
  v28 = sub_1DB306160(0x656C756465686373, 0xEB000000006F745FLL);
  if (v29)
  {
    v30 = v27;
    v31 = v26;
    v32 = *(v4[7] + 4 * v28);
    if (sqlite3_column_type(*(a1 + 16), v32) == 5)
    {
      v62 = 0;
      v61 = 1;
    }

    else
    {
      v62 = sqlite3_column_int64(*(a1 + 16), v32);
      v61 = 0;
    }

    v26 = v31;
    v27 = v30;
    if (!v4[2])
    {
      goto LABEL_65;
    }
  }

  else
  {
    v62 = 0;
    v61 = 1;
    if (!v4[2])
    {
      goto LABEL_65;
    }
  }

  v48 = sub_1DB306160(0x797469726F697270, 0xE800000000000000);
  if (v49)
  {
    v50 = v27;
    v51 = v26;
    v52 = *(v4[7] + 4 * v48);
    if (sqlite3_column_type(*(a1 + 16), v52) == 5)
    {
      v59 = 1;
      v60 = 0;
    }

    else
    {
      v59 = 0;
      v60 = sqlite3_column_int(*(a1 + 16), v52);
    }

    v26 = v51;
    v27 = v50;
    if (!v4[2])
    {
      goto LABEL_66;
    }

    goto LABEL_37;
  }

LABEL_65:
  v59 = 1;
  v60 = 0;
  if (!v4[2])
  {
    goto LABEL_66;
  }

LABEL_37:
  v58 = v27;
  v33 = sub_1DB306160(0xD000000000000010, 0x80000001DB52E270);
  v34 = v26;
  if (v35)
  {
    v36 = *(v4[7] + 4 * v33);
    if (sqlite3_column_type(*(a1 + 16), v36) == 5)
    {
      v37 = 0;
      v38 = 1;
    }

    else
    {
      v37 = sqlite3_column_int64(*(a1 + 16), v36);
      v38 = 0;
    }

    v26 = v34;
    if (!v4[2])
    {
      goto LABEL_50;
    }
  }

  else
  {
    v37 = 0;
    v38 = 1;
    if (!v4[2])
    {
LABEL_50:
      v46 = 0;
      v42 = 0;
      v47 = 1;
LABEL_72:
      v27 = v58;
      goto LABEL_73;
    }
  }

  v39 = sub_1DB306160(0x676E69646E6570, 0xE700000000000000);
  if (v40)
  {
    v41 = *(v4[7] + 4 * v39);
    v42 = sqlite3_column_type(*(a1 + 16), v41) != 5 && sqlite3_column_int(*(a1 + 16), v41) == 1;
    v26 = v34;
    if (!v4[2])
    {
      goto LABEL_59;
    }
  }

  else
  {
    v42 = 0;
    if (!v4[2])
    {
LABEL_59:
      v46 = 0;
      v47 = 1;
      goto LABEL_72;
    }
  }

  v43 = sub_1DB306160(0xD000000000000011, 0x80000001DB52E290);
  if (v44)
  {
    v45 = *(v4[7] + 4 * v43);
    if (sqlite3_column_type(*(a1 + 16), v45) == 5)
    {
      v46 = 0;
      v47 = 1;
    }

    else
    {
      v46 = sqlite3_column_int(*(a1 + 16), v45);
      v47 = 0;
    }

    v26 = v34;
    if (!v4[2])
    {
      goto LABEL_72;
    }
  }

  else
  {
    v46 = 0;
    v47 = 1;
    if (!v4[2])
    {
      goto LABEL_72;
    }
  }

  v53 = sub_1DB306160(0x6465696669646F6DLL, 0xEB0000000074615FLL);
  if (v54)
  {
    v55 = *(v4[7] + 4 * v53);

    if (sqlite3_column_type(*(a1 + 16), v55) == 5)
    {
      result = 0;
      v57 = 1;
    }

    else
    {
      result = sqlite3_column_int64(*(a1 + 16), v55);
      v57 = 0;
    }

    v26 = v34;
  }

  else
  {

    result = 0;
    v57 = 1;
  }

  v27 = v58;
LABEL_74:
  *a2 = v72;
  *(a2 + 4) = v71;
  *(a2 + 8) = v70;
  *(a2 + 16) = v69;
  *(a2 + 24) = v67;
  *(a2 + 32) = v68;
  *(a2 + 40) = v66;
  *(a2 + 48) = v65;
  *(a2 + 56) = v64;
  *(a2 + 64) = v63;
  *(a2 + 72) = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = v62;
  *(a2 + 96) = v61;
  *(a2 + 100) = v60;
  *(a2 + 104) = v59;
  *(a2 + 112) = v37;
  *(a2 + 120) = v38;
  *(a2 + 121) = v42;
  *(a2 + 124) = v46;
  *(a2 + 128) = v47;
  *(a2 + 136) = result;
  *(a2 + 144) = v57;
  return result;
}

uint64_t sub_1DB427878(uint64_t a1, unsigned int a2)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v21[1] = 0xE000000000000000;
  MEMORY[0x1E1285C10](41);
  MEMORY[0x1E1285C70](0xD000000000000029, 0x80000001DB52E780);
  v21[3] = MEMORY[0x1E69E72F0];
  v21[4] = &off_1F57000B8;
  v21[0] = a2;
  sub_1DB30C4B8(v21, v19, &qword_1ECC42798, &qword_1DB50F210);
  v5 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB302D80((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[5 * v7];
  v9 = v19[0];
  v10 = v19[1];
  v8[8] = v20;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(v21, &qword_1ECC42798, &qword_1DB50F210);
  v21[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v21, v19);

  if (v2)
  {
  }

  v12 = v21[0];
  if (v21[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v5);

    v14 = *(inited + 16);
    v15 = sqlite3_step(v14);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v15, qword_1EE312D90) || (v16 = sub_1DB3AD5F0(&unk_1F56F04D0), v17 = sub_1DB331244(v15, v16), , !v17))
    {
      sub_1DB388320();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v14);
  }

  __break(1u);
  return result;
}

void *sub_1DB427B98@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000039, 0x80000001DB52E740, a1, v24, v22);
  if (!v2)
  {
    v6 = v24[0];
    if (v24[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      *(inited + 24) = 0;
      sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = *(inited + 16);
        v10 = sqlite3_step(v9);
        if (qword_1EE30C820 != -1)
        {
          swift_once();
        }

        if (!sub_1DB331244(v10, qword_1EE312D90))
        {
          sub_1DB388320();
          swift_allocError();
          *v21 = v10;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v9);
        }

        if (v10 != 100)
        {
          break;
        }

        sub_1DB4271D0(inited, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB303BE0(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_1DB303BE0((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[152 * v12];
        v14 = v22[1];
        *(v13 + 2) = v22[0];
        *(v13 + 3) = v14;
        v15 = v22[2];
        v16 = v22[3];
        v17 = v22[5];
        *(v13 + 6) = v22[4];
        *(v13 + 7) = v17;
        *(v13 + 4) = v15;
        *(v13 + 5) = v16;
        v18 = v22[6];
        v19 = v22[7];
        v20 = v22[8];
        v13[176] = v23;
        *(v13 + 9) = v19;
        *(v13 + 10) = v20;
        *(v13 + 8) = v18;
      }

      swift_setDeallocating();
      sqlite3_finalize(v9);

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1DB427E80@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 0;

  result = sub_1DB4ABE94(0xD00000000000004BLL, 0x80000001DB52E6F0, a1, v24, v22);
  if (!v2)
  {
    v6 = v24[0];
    if (v24[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      *(inited + 24) = 0;
      sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = *(inited + 16);
        v10 = sqlite3_step(v9);
        if (qword_1EE30C820 != -1)
        {
          swift_once();
        }

        if (!sub_1DB331244(v10, qword_1EE312D90))
        {
          sub_1DB388320();
          swift_allocError();
          *v21 = v10;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v9);
        }

        if (v10 != 100)
        {
          break;
        }

        sub_1DB4271D0(inited, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB303BE0(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_1DB303BE0((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[152 * v12];
        v14 = v22[1];
        *(v13 + 2) = v22[0];
        *(v13 + 3) = v14;
        v15 = v22[2];
        v16 = v22[3];
        v17 = v22[5];
        *(v13 + 6) = v22[4];
        *(v13 + 7) = v17;
        *(v13 + 4) = v15;
        *(v13 + 5) = v16;
        v18 = v22[6];
        v19 = v22[7];
        v20 = v22[8];
        v13[176] = v23;
        *(v13 + 9) = v19;
        *(v13 + 10) = v20;
        *(v13 + 8) = v18;
      }

      swift_setDeallocating();
      sqlite3_finalize(v9);

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1DB428168@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000065, 0x80000001DB52E680, a1, v24, v22);
  if (!v2)
  {
    v6 = v24[0];
    if (v24[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      *(inited + 24) = 0;
      sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = *(inited + 16);
        v10 = sqlite3_step(v9);
        if (qword_1EE30C820 != -1)
        {
          swift_once();
        }

        if (!sub_1DB331244(v10, qword_1EE312D90))
        {
          sub_1DB388320();
          swift_allocError();
          *v21 = v10;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v9);
        }

        if (v10 != 100)
        {
          break;
        }

        sub_1DB4271D0(inited, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB303BE0(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_1DB303BE0((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[152 * v12];
        v14 = v22[1];
        *(v13 + 2) = v22[0];
        *(v13 + 3) = v14;
        v15 = v22[2];
        v16 = v22[3];
        v17 = v22[5];
        *(v13 + 6) = v22[4];
        *(v13 + 7) = v17;
        *(v13 + 4) = v15;
        *(v13 + 5) = v16;
        v18 = v22[6];
        v19 = v22[7];
        v20 = v22[8];
        v13[176] = v23;
        *(v13 + 9) = v19;
        *(v13 + 10) = v20;
        *(v13 + 8) = v18;
      }

      swift_setDeallocating();
      sqlite3_finalize(v9);

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1DB428450(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = *MEMORY[0x1E69E9840];
  *(&v35 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](43);
  v45 = 0;
  v46 = 0xE000000000000000;
  MEMORY[0x1E1285C70](0xD00000000000002BLL, 0x80000001DB52E650);
  *(&v36 + 1) = MEMORY[0x1E69E72F0];
  *&v37 = &off_1F57000B8;
  *&v35 = a2;
  sub_1DB30C4B8(&v35, &v25, &qword_1ECC42798, &qword_1DB50F210);
  v8 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB302D80((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[5 * v10];
  v12 = v25;
  v13 = v26;
  v11[8] = v27;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v35, &qword_1ECC42798, &qword_1DB50F210);
  v15 = v45;
  v14 = v46;
  v45 = 0;

  sub_1DB4ABE94(v15, v14, a1, &v45, &v35);

  if (v4)
  {
    goto LABEL_11;
  }

  v16 = v45;
  if (!v45)
  {
    __break(1u);
    return;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();
  *(inited + 16) = v16;
  *(inited + 24) = 0;
  sub_1DB4B03C0(v8);

  v18 = *(inited + 16);
  v19 = sqlite3_step(v18);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (!sub_1DB331244(v19, qword_1EE312D90))
  {
    sub_1DB388320();
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v18);
LABEL_11:

    return;
  }

  if (v19 == 100)
  {
    sub_1DB4271D0(inited, &v25);
    swift_setDeallocating();
    sqlite3_finalize(*(inited + 16));

    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v35 = v25;
    v36 = v26;
    nullsub_8();
  }

  else
  {
    swift_setDeallocating();
    sqlite3_finalize(v18);

    sub_1DB42CFA8(&v35);
  }

  v21 = v42;
  *(a3 + 96) = v41;
  *(a3 + 112) = v21;
  *(a3 + 128) = v43;
  *(a3 + 144) = v44;
  v22 = v38;
  *(a3 + 32) = v37;
  *(a3 + 48) = v22;
  v23 = v40;
  *(a3 + 64) = v39;
  *(a3 + 80) = v23;
  v24 = v36;
  *a3 = v35;
  *(a3 + 16) = v24;
}

void AssetPushSubscriptionSQLiteStore.find(bundleID:usageID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  sub_1DB426398(sub_1DB42CE3C, v4);
}

void sub_1DB428834(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E1285C10](92);
  v57 = 0;
  v58 = 0xE000000000000000;
  MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52E5F0);
  v11 = MEMORY[0x1E69E6158];
  *(&v48 + 1) = MEMORY[0x1E69E6158];
  *&v49 = &off_1F5700098;
  *&v47 = a2;
  *(&v47 + 1) = a3;
  sub_1DB30C4B8(&v47, &v37, &qword_1ECC42798, &qword_1DB50F210);

  v12 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1DB302D80((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v15 = &v12[5 * v14];
  v16 = v37;
  v17 = v38;
  v15[8] = v39;
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v47, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E570);
  *(&v48 + 1) = v11;
  *&v49 = &off_1F5700098;
  *&v47 = a4;
  *(&v47 + 1) = a5;
  sub_1DB30C4B8(&v47, &v37, &qword_1ECC42798, &qword_1DB50F210);
  v18 = v12[2];
  v19 = v12[3];

  if (v18 >= v19 >> 1)
  {
    v12 = sub_1DB302D80((v19 > 1), v18 + 1, 1, v12);
  }

  v12[2] = v18 + 1;
  v20 = &v12[5 * v18];
  v21 = v37;
  v22 = v38;
  v20[8] = v39;
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v47, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52E630);
  v24 = v57;
  v23 = v58;
  v57 = 0;

  sub_1DB4ABE94(v24, v23, a1, &v57, &v47);
  if (v36)
  {

LABEL_15:

    return;
  }

  v25 = v57;
  if (v57)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v12);

    v27 = *(inited + 16);
    v28 = sqlite3_step(v27);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    v29 = qword_1EE312D90;
    if (!sub_1DB331244(v28, qword_1EE312D90) || !sub_1DB331244(v28, v29))
    {
      sub_1DB388320();
      swift_allocError();
      *v30 = v28;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      sqlite3_finalize(v27);
      goto LABEL_15;
    }

    if (v28 == 100)
    {
      sub_1DB4271D0(inited, &v37);
      swift_setDeallocating();
      sqlite3_finalize(*(inited + 16));

      v53 = v43;
      v54 = v44;
      v55 = v45;
      v56 = v46;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v52 = v42;
      v47 = v37;
      v48 = v38;
      nullsub_8();
    }

    else
    {
      swift_setDeallocating();
      sqlite3_finalize(v27);

      sub_1DB42CFA8(&v47);
    }

    v31 = v54;
    *(a6 + 96) = v53;
    *(a6 + 112) = v31;
    *(a6 + 128) = v55;
    *(a6 + 144) = v56;
    v32 = v50;
    *(a6 + 32) = v49;
    *(a6 + 48) = v32;
    v33 = v52;
    *(a6 + 64) = v51;
    *(a6 + 80) = v33;
    v34 = v48;
    *a6 = v47;
    *(a6 + 16) = v34;
  }

  else
  {
    __break(1u);
  }
}

void AssetPushSubscriptionSQLiteStore.find(channelID:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1DB426568(sub_1DB42CE54, v2);
}

uint64_t sub_1DB428D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](63);
  v33 = v34;
  MEMORY[0x1E1285C70](0xD000000000000033, 0x80000001DB52E5B0);
  *(&v35 + 1) = MEMORY[0x1E69E6158];
  *&v36 = &off_1F5700098;
  *&v34 = a2;
  *(&v34 + 1) = a3;
  sub_1DB30C4B8(&v34, v44, &qword_1ECC42798, &qword_1DB50F210);

  v9 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302D80((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v44[0];
  v14 = v44[1];
  v12[8] = v45;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v34, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x4220524544524F20, 0xEC00000064692059);
  *&v44[0] = 0;

  sub_1DB4ABE94(v33, *(&v33 + 1), a1, v44, &v34);

  if (v4)
  {
  }

  v16 = *&v44[0];
  if (*&v44[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v9);
    v32 = a4;

    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v19 = *(inited + 16);
      v20 = sqlite3_step(v19);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (!sub_1DB331244(v20, qword_1EE312D90))
      {
        sub_1DB388320();
        swift_allocError();
        *v31 = v20;
        *(v31 + 8) = 0;
        *(v31 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v19);
      }

      if (v20 != 100)
      {
        break;
      }

      sub_1DB4271D0(inited, &v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB303BE0(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1DB303BE0((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v23 = &v18[152 * v22];
      v24 = v35;
      *(v23 + 2) = v34;
      *(v23 + 3) = v24;
      v25 = v36;
      v26 = v37;
      v27 = v39;
      *(v23 + 6) = v38;
      *(v23 + 7) = v27;
      *(v23 + 4) = v25;
      *(v23 + 5) = v26;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      v23[176] = v43;
      *(v23 + 9) = v29;
      *(v23 + 10) = v30;
      *(v23 + 8) = v28;
    }

    swift_setDeallocating();
    sqlite3_finalize(v19);

    *v32 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AssetPushSubscriptionSQLiteStore.has(matching:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *v1;
  sub_1DB348C18(v11, v10);
  sub_1DB348870(v6, v11);
  v8 = v7;
  sub_1DB348C74(v11);
  return v8 & 1;
}

uint64_t sub_1DB4291C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x1E1285C10](108);
  MEMORY[0x1E1285C70](0xD000000000000039, 0x80000001DB52E510);
  v61 = *(a2 + 8);
  if (*(&v61 + 1))
  {
    v7 = &off_1F5700098;
    v8 = MEMORY[0x1E69E6158];
    v9 = v61;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v55 = 0;
  }

  v53 = v9;
  v54 = *(&v61 + 1);
  v56 = v8;
  v57 = v7;
  sub_1DB30C4B8(&v53, &v50, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v61, v49, &unk_1ECC46C00, &qword_1DB516350);
  v10 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB302D80((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v50;
  v15 = v51;
  v13[8] = v52;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v53, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52E550);
  v60 = *(a2 + 40);
  if (*(&v60 + 1))
  {
    v16 = &off_1F5700098;
    v17 = MEMORY[0x1E69E6158];
    v18 = v60;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v55 = 0;
  }

  v53 = v18;
  v54 = *(&v60 + 1);
  v56 = v17;
  v57 = v16;
  sub_1DB30C4B8(&v53, &v50, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v60, v49, &unk_1ECC46C00, &qword_1DB516350);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1DB302D80((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v50;
  v23 = v51;
  v21[8] = v52;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v53, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E570);
  v59 = *(a2 + 56);
  if (*(&v59 + 1))
  {
    v24 = &off_1F5700098;
    v25 = MEMORY[0x1E69E6158];
    v26 = v59;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v55 = 0;
  }

  v53 = v26;
  v54 = *(&v59 + 1);
  v56 = v25;
  v57 = v24;
  sub_1DB30C4B8(&v53, &v50, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v59, v49, &unk_1ECC46C00, &qword_1DB516350);
  v28 = v10[2];
  v27 = v10[3];
  if (v28 >= v27 >> 1)
  {
    v10 = sub_1DB302D80((v27 > 1), v28 + 1, 1, v10);
  }

  v10[2] = v28 + 1;
  v29 = &v10[5 * v28];
  v30 = v50;
  v31 = v51;
  v29[8] = v52;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v53, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52E590);
  v58 = *(a2 + 24);
  if (*(&v58 + 1))
  {
    v32 = &off_1F5700098;
    v33 = MEMORY[0x1E69E6158];
    v34 = v58;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v55 = 0;
  }

  v53 = v34;
  v54 = *(&v58 + 1);
  v56 = v33;
  v57 = v32;
  sub_1DB30C4B8(&v53, &v50, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v58, v49, &unk_1ECC46C00, &qword_1DB516350);
  v36 = v10[2];
  v35 = v10[3];
  if (v36 >= v35 >> 1)
  {
    v10 = sub_1DB302D80((v35 > 1), v36 + 1, 1, v10);
  }

  v10[2] = v36 + 1;
  v37 = &v10[5 * v36];
  v38 = v50;
  v39 = v51;
  v37[8] = v52;
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v53, &qword_1ECC42798, &qword_1DB50F210);
  v53 = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, &v53, &v50);
  if (v3)
  {
  }

  v41 = v53;
  if (v53)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v10);

    v43 = *(inited + 16);
    v44 = sqlite3_step(v43);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v44, qword_1EE312D90) || (v45 = sub_1DB3AD5F0(&unk_1F56F04F8), v46 = sub_1DB331244(v44, v45), , !v46))
    {
      sub_1DB388320();
      swift_allocError();
      *v47 = v44;
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      sqlite3_finalize(v43);
    }

    if (sqlite3_column_type(v43, 0) == 5)
    {
      swift_setDeallocating();
      sqlite3_finalize(v43);
    }

    else
    {
      v48 = sqlite3_column_int(v43, 0);
      swift_setDeallocating();
      sqlite3_finalize(v43);

      if (v48 == 1)
      {
        *a3 = 1;
        return result;
      }
    }

    *a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AssetPushSubscriptionSQLiteStore.updateToPending(channelID:scheduleAfter:scheduleBefore:priority:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *&v6[3] = a5;
  *&v6[4] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a1;
  v6[8] = a2;
  sub_1DB426568(sub_1DB42CE90, v6);
}

uint64_t sub_1DB4298DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _UNKNOWN **a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v79 = a6;
  v78 = a5;
  v80 = a1;
  v91 = *MEMORY[0x1E69E9840];
  v15 = sub_1DB509DD0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[4];
  v20 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v19);
  (*(v20 + 8))(v19, v20);
  sub_1DB509D90();
  v22 = v21;
  v23 = *&v21;
  v25 = *(v16 + 8);
  v24 = (v16 + 8);
  v25(v18, v15);
  v26 = v23 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_48;
  }

  v26 = 0xC3E0000000000001;
  if (v22 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v26 = 0x43E0000000000000;
  if (v22 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v26 = 0xC3E0000000000001;
  if (a8 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v26 = 0x43E0000000000000;
  if (a8 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v15 = v22;
  v26 = a8;
  v18 = v22 + a8;
  if (__OFADD__(v22, a8))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v26 = (*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_53;
  }

  v26 = 0xC3E0000000000001;
  if (a9 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = 0x43E0000000000000;
  if (a9 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v26 = a9;
  v20 = v15 + a9;
  if (__OFADD__(v15, a9))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v26 = 0xFFFFFFFF80000000;
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v26 = 0x7FFFFFFFLL;
  if (a3 > 0x7FFFFFFF)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v23 = a4;
  sub_1DB509D90();
  a9 = v27;
  v26 = *&v27 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v26 = 0xC3E0000000000001;
  if (v27 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = 0x43E0000000000000;
  if (v27 < 9.22337204e18)
  {
    v77 = a7;
    v24 = &v88;
    v84 = 0;
    v85 = 0xE000000000000000;
    MEMORY[0x1E1285C10](179);
    v82 = v84;
    v83 = v85;
    MEMORY[0x1E1285C70](0xD000000000000051, 0x80000001DB52E450);
    a7 = &off_1F57000C8;
    v86 = MEMORY[0x1E69E7360];
    v87 = &off_1F57000C8;
    v84 = v22 + a8;
    sub_1DB30C4B8(&v84, &v88, &qword_1ECC42798, &qword_1DB50F210);
    a4 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = a4[2];
    v26 = a4[3];
    v23 = v18 + 1;
    if (v18 < v26 >> 1)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  a4 = sub_1DB302D80((v26 > 1), v23, 1, a4);
LABEL_18:
  a4[2] = v23;
  v28 = &a4[5 * v18];
  v29 = v88;
  v30 = v24[1];
  v28[8] = v90;
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v84, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E4B0);
  v87 = a7;
  v86 = MEMORY[0x1E69E7360];
  v84 = v20;
  sub_1DB30C4B8(&v84, &v88, &qword_1ECC42798, &qword_1DB50F210);
  v32 = a4[2];
  v31 = a4[3];
  if (v32 >= v31 >> 1)
  {
    a4 = sub_1DB302D80((v31 > 1), v32 + 1, 1, a4);
  }

  a4[2] = v32 + 1;
  v33 = &a4[5 * v32];
  v34 = v88;
  v35 = v24[1];
  v33[8] = v90;
  *(v33 + 2) = v34;
  *(v33 + 3) = v35;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v84, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x69726F697270202CLL, 0xED0000203D207974);
  v86 = MEMORY[0x1E69E72F0];
  v87 = &off_1F57000B8;
  LODWORD(v84) = a3;
  sub_1DB30C4B8(&v84, &v88, &qword_1ECC42798, &qword_1DB50F210);
  v37 = a4[2];
  v36 = a4[3];
  if (v37 >= v36 >> 1)
  {
    a4 = sub_1DB302D80((v36 > 1), v37 + 1, 1, a4);
  }

  v38 = MEMORY[0x1E69E7360];
  a4[2] = v37 + 1;
  v39 = &a4[5 * v37];
  v40 = v88;
  v41 = v89;
  v39[8] = v90;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v84, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52E4D0);
  v86 = v38;
  v87 = a7;
  v84 = a9;
  sub_1DB30C4B8(&v84, &v88, &qword_1ECC42798, &qword_1DB50F210);
  v43 = a4[2];
  v42 = a4[3];
  if (v43 >= v42 >> 1)
  {
    a4 = sub_1DB302D80((v42 > 1), v43 + 1, 1, a4);
  }

  v44 = v78;
  a4[2] = v43 + 1;
  v45 = &a4[5 * v43];
  v46 = v88;
  v47 = v89;
  v45[8] = v90;
  *(v45 + 2) = v46;
  *(v45 + 3) = v47;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v84, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E4F0);
  v86 = v38;
  v87 = a7;
  v84 = v15;
  sub_1DB30C4B8(&v84, &v88, &qword_1ECC42798, &qword_1DB50F210);
  v49 = a4[2];
  v48 = a4[3];
  if (v49 >= v48 >> 1)
  {
    a4 = sub_1DB302D80((v48 > 1), v49 + 1, 1, a4);
  }

  v50 = v80;
  v51 = v79;
  a4[2] = v49 + 1;
  v52 = &a4[5 * v49];
  v53 = v88;
  v54 = v89;
  v52[8] = v90;
  *(v52 + 2) = v53;
  *(v52 + 3) = v54;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v84, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52E430);
  v86 = MEMORY[0x1E69E6158];
  v87 = &off_1F5700098;
  v84 = v44;
  v85 = v51;
  sub_1DB30C4B8(&v84, &v88, &qword_1ECC42798, &qword_1DB50F210);
  v55 = a4[2];
  v56 = a4[3];

  if (v55 >= v56 >> 1)
  {
    a4 = sub_1DB302D80((v56 > 1), v55 + 1, 1, a4);
  }

  v57 = v81;
  a4[2] = v55 + 1;
  v58 = &a4[5 * v55];
  v59 = v88;
  v60 = v89;
  v58[8] = v90;
  *(v58 + 2) = v59;
  *(v58 + 3) = v60;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v84, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x494E525554455220, 0xEC0000002A20474ELL);
  v61 = v82;
  v62 = v83;
  *&v88 = 0;

  sub_1DB4ABE94(v61, v62, v50, &v88, &v84);
  if (v57)
  {
  }

  else
  {

    v64 = v88;
    if (v88)
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v64;
      *(inited + 24) = 0;
      sub_1DB4B03C0(a4);

      for (i = 0; ; ++i)
      {
        v67 = *(inited + 16);
        v68 = sqlite3_step(v67);
        if (qword_1EE30C820 != -1)
        {
          swift_once();
        }

        v69 = qword_1EE312D90;
        if (!*(qword_1EE312D90 + 16) || (sub_1DB50BCF0(), sub_1DB50BD20(), v70 = sub_1DB50BD30(), v71 = -1 << *(v69 + 32), v72 = v70 & ~v71, ((*(v69 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0))
        {
LABEL_44:
          sub_1DB388320();
          swift_allocError();
          *v75 = v68;
          *(v75 + 8) = 0;
          *(v75 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v67);
        }

        v73 = ~v71;
        while (*(*(v69 + 48) + 4 * v72) != v68)
        {
          v72 = (v72 + 1) & v73;
          if (((*(v69 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        if (v68 != 100)
        {
          break;
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
        }
      }

      swift_setDeallocating();
      sqlite3_finalize(v67);

      *v77 = i;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DB42A34C(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v46 = *MEMORY[0x1E69E9840];
  v8 = sub_1DB509DD0();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v13 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v12);
  (*(v13 + 8))(v12, v13);
  sub_1DB509D90();
  v15 = v14;
  v16 = *&v14;
  (*(v9 + 8))(v11, v8);
  v17 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0xC3E0000000000001;
  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    MEMORY[0x1E1285C10](178);
    v37 = v42;
    v38 = v43;
    MEMORY[0x1E1285C70](0xD0000000000000A6, 0x80000001DB52E380);
    v44 = MEMORY[0x1E69E7360];
    v45 = &off_1F57000C8;
    v42 = v15;
    sub_1DB30C4B8(&v42, &v39, &qword_1ECC42798, &qword_1DB50F210);
    v8 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v8[2];
    v17 = v8[3];
    v16 = v11 + 1;
    if (v11 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1DB302D80((v17 > 1), v16, 1, v8);
LABEL_5:
  v8[2] = v16;
  v18 = &v8[5 * v11];
  v19 = v39;
  v20 = v40;
  v18[8] = v41;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v42, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x6920455245485720, 0xEC000000203D2064);
  v44 = MEMORY[0x1E69E72F0];
  v45 = &off_1F57000B8;
  LODWORD(v42) = a3;
  sub_1DB30C4B8(&v42, &v39, &qword_1ECC42798, &qword_1DB50F210);
  v22 = v8[2];
  v21 = v8[3];
  if (v22 >= v21 >> 1)
  {
    v8 = sub_1DB302D80((v21 > 1), v22 + 1, 1, v8);
  }

  v8[2] = v22 + 1;
  v23 = &v8[5 * v22];
  v24 = v39;
  v25 = v40;
  v23[8] = v41;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v42, &qword_1ECC42798, &qword_1DB50F210);
  v27 = v37;
  v26 = v38;
  v42 = 0;

  sub_1DB4ABE94(v27, v26, a1, &v42, &v39);
  if (v4)
  {
  }

  v29 = v42;
  if (v42)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v29;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v8);

    v31 = *(inited + 16);
    v32 = sqlite3_step(v31);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v32, qword_1EE312D90) || (v33 = sub_1DB3AD5F0(&unk_1F56F0680), v34 = sub_1DB331244(v32, v33), , !v34))
    {
      sub_1DB388320();
      swift_allocError();
      *v35 = v32;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB42A874(uint64_t a1, void *a2, sqlite3_stmt *a3, unint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = sub_1DB509DD0();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v13 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v12);
  (*(v13 + 8))(v12, v13);
  sub_1DB509D90();
  v15 = v14;
  v16 = *&v14;
  (*(v9 + 8))(v11, v8);
  v17 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0xC3E0000000000001;
  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    MEMORY[0x1E1285C10](186);
    v39 = v44;
    v40 = v45;
    MEMORY[0x1E1285C70](0xD0000000000000A6, 0x80000001DB52E380);
    v46 = MEMORY[0x1E69E7360];
    v47 = &off_1F57000C8;
    v44 = v15;
    sub_1DB30C4B8(&v44, &v41, &qword_1ECC42798, &qword_1DB50F210);
    v8 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v8[2];
    v17 = v8[3];
    v16 = v11 + 1;
    if (v11 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1DB302D80((v17 > 1), v16, 1, v8);
LABEL_5:
  v8[2] = v16;
  v18 = &v8[5 * v11];
  v19 = v41;
  v20 = v42;
  v18[8] = v43;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v44, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52E430);
  v46 = MEMORY[0x1E69E6158];
  v47 = &off_1F5700098;
  v44 = a3;
  v45 = a4;
  sub_1DB30C4B8(&v44, &v41, &qword_1ECC42798, &qword_1DB50F210);
  v22 = v8[2];
  v21 = v8[3];

  if (v22 >= v21 >> 1)
  {
    v8 = sub_1DB302D80((v21 > 1), v22 + 1, 1, v8);
  }

  v8[2] = v22 + 1;
  v23 = &v8[5 * v22];
  v24 = v41;
  v25 = v42;
  v23[8] = v43;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v44, &qword_1ECC42798, &qword_1DB50F210);
  v27 = v39;
  v26 = v40;
  v44 = 0;

  v28 = v27;
  v29 = v38;
  sub_1DB4ABE94(v28, v26, a1, &v44, &v41);
  if (v29)
  {
  }

  v31 = v44;
  if (v44)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v31;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v8);

    v33 = *(inited + 16);
    v34 = sqlite3_step(v33);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v34, qword_1EE312D90) || (v35 = sub_1DB3AD5F0(&unk_1F56F06A8), v36 = sub_1DB331244(v34, v35), , !v36))
    {
      sub_1DB388320();
      swift_allocError();
      *v37 = v34;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB42ADA8(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v46 = *MEMORY[0x1E69E9840];
  v8 = sub_1DB509DD0();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v13 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v12);
  (*(v13 + 8))(v12, v13);
  sub_1DB509D90();
  v15 = v14;
  v16 = *&v14;
  (*(v9 + 8))(v11, v8);
  v17 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0xC3E0000000000001;
  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    MEMORY[0x1E1285C10](114);
    v37 = v42;
    v38 = v43;
    MEMORY[0x1E1285C70](0xD000000000000056, 0x80000001DB52E300);
    v44 = MEMORY[0x1E69E7360];
    v45 = &off_1F57000C8;
    v42 = v15;
    sub_1DB30C4B8(&v42, &v39, &qword_1ECC42798, &qword_1DB50F210);
    v8 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v8[2];
    v17 = v8[3];
    v16 = v11 + 1;
    if (v11 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1DB302D80((v17 > 1), v16, 1, v8);
LABEL_5:
  v8[2] = v16;
  v18 = &v8[5 * v11];
  v19 = v39;
  v20 = v40;
  v18[8] = v41;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v42, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x6920455245485720, 0xEC000000203D2064);
  v44 = MEMORY[0x1E69E72F0];
  v45 = &off_1F57000B8;
  LODWORD(v42) = a3;
  sub_1DB30C4B8(&v42, &v39, &qword_1ECC42798, &qword_1DB50F210);
  v22 = v8[2];
  v21 = v8[3];
  if (v22 >= v21 >> 1)
  {
    v8 = sub_1DB302D80((v21 > 1), v22 + 1, 1, v8);
  }

  v8[2] = v22 + 1;
  v23 = &v8[5 * v22];
  v24 = v39;
  v25 = v40;
  v23[8] = v41;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v42, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E360);
  v27 = v37;
  v26 = v38;
  v42 = 0;

  sub_1DB4ABE94(v27, v26, a1, &v42, &v39);
  if (v4)
  {
  }

  v29 = v42;
  if (v42)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v29;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v8);

    v31 = *(inited + 16);
    v32 = sqlite3_step(v31);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v32, qword_1EE312D90) || (v33 = sub_1DB3AD5F0(&unk_1F56F06D0), v34 = sub_1DB331244(v32, v33), , !v34))
    {
      sub_1DB388320();
      swift_allocError();
      *v35 = v32;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB42B2F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v40 = a3;
  v52[5] = *MEMORY[0x1E69E9840];
  v6 = sub_1DB509DD0();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[4];
  v11 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v10);
  (*(v11 + 8))(v10, v11);
  sub_1DB509D90();
  v13 = v12;
  v14 = *&v12;
  v16 = *(v7 + 8);
  v15 = (v7 + 8);
  v16(v9, v6);
  v17 = v14 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  v17 = 0xC3E0000000000001;
  if (v13 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = 0x43E0000000000000;
  if (v13 < 9.22337204e18)
  {
    v15 = v52;
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    MEMORY[0x1E1285C10](83);
    v41 = v42;
    MEMORY[0x1E1285C70](0xD000000000000047, 0x80000001DB52E2B0);
    *&v44 = &off_1F57000C8;
    *(&v43 + 1) = MEMORY[0x1E69E7360];
    *&v42 = v13;
    sub_1DB30C4B8(&v42, v52, &qword_1ECC42798, &qword_1DB50F210);
    v6 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = v6[2];
    v17 = v6[3];
    v14 = v9 + 1;
    if (v9 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  v6 = sub_1DB302D80((v17 > 1), v14, 1, v6);
LABEL_5:
  v6[2] = v14;
  v18 = &v6[5 * v9];
  v19 = *v15;
  v20 = *(v15 + 1);
  v18[8] = v52[4];
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v42, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x4220524544524F20, 0xEC00000064692059);
  v21 = v41;
  v52[0] = 0;

  sub_1DB4ABE94(v21, *(&v21 + 1), a1, v52, &v42);

  if (v3)
  {
  }

  v23 = v52[0];
  if (v52[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v23;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v6);

    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v26 = *(inited + 16);
      v27 = sqlite3_step(v26);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (!sub_1DB331244(v27, qword_1EE312D90))
      {
        sub_1DB388320();
        swift_allocError();
        *v38 = v27;
        *(v38 + 8) = 0;
        *(v38 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v26);
      }

      if (v27 != 100)
      {
        break;
      }

      sub_1DB4271D0(inited, &v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DB303BE0(0, *(v25 + 2) + 1, 1, v25);
      }

      v29 = *(v25 + 2);
      v28 = *(v25 + 3);
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1DB303BE0((v28 > 1), v29 + 1, 1, v25);
      }

      *(v25 + 2) = v29 + 1;
      v30 = &v25[152 * v29];
      v31 = v43;
      *(v30 + 2) = v42;
      *(v30 + 3) = v31;
      v32 = v44;
      v33 = v45;
      v34 = v47;
      *(v30 + 6) = v46;
      *(v30 + 7) = v34;
      *(v30 + 4) = v32;
      *(v30 + 5) = v33;
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v30[176] = v51;
      *(v30 + 9) = v36;
      *(v30 + 10) = v37;
      *(v30 + 8) = v35;
    }

    swift_setDeallocating();
    sqlite3_finalize(v26);

    *v40 = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB42B894@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, char **a4@<X8>)
{
  v46 = a1;
  v45 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v7 = sub_1DB509DD0();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v11 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v12);
  (*(v11 + 8))(v12, v11);
  v13 = v10;
  sub_1DB509D90();
  v15 = v14;
  v16 = *&v14;
  (*(v8 + 8))(v10, v7);
  v17 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v17 = 0xC3E0000000000001;
  if (v15 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    v12 = v58;
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    MEMORY[0x1E1285C10](106);
    v47 = v48;
    MEMORY[0x1E1285C70](0xD000000000000045, 0x80000001DB52E200);
    *&v50 = &off_1F57000C8;
    *(&v49 + 1) = MEMORY[0x1E69E7360];
    *&v48 = v15;
    sub_1DB30C4B8(&v48, v58, &qword_1ECC42798, &qword_1DB50F210);
    v7 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = v7[2];
    v17 = v7[3];
    v13 = v16 + 1;
    if (v16 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v7 = sub_1DB302D80((v17 > 1), v13, 1, v7);
LABEL_5:
  v18 = v46;
  v7[2] = v13;
  v19 = &v7[5 * v16];
  v20 = *v12;
  v21 = *(v12 + 1);
  v19[8] = v59;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v48, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52E250);
  *(&v49 + 1) = MEMORY[0x1E69E72F0];
  *&v50 = &off_1F57000B8;
  LODWORD(v48) = a3;
  sub_1DB30C4B8(&v48, v58, &qword_1ECC42798, &qword_1DB50F210);
  v23 = v7[2];
  v22 = v7[3];
  if (v23 >= v22 >> 1)
  {
    v7 = sub_1DB302D80((v22 > 1), v23 + 1, 1, v7);
  }

  v7[2] = v23 + 1;
  v24 = &v7[5 * v23];
  v25 = *v12;
  v26 = *(v12 + 1);
  v24[8] = v59;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v48, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x4220524544524F20, 0xEC00000064692059);
  v27 = v47;
  v58[0] = 0;

  sub_1DB4ABE94(v27, *(&v27 + 1), v18, v58, &v48);
  if (v4)
  {
  }

  else
  {

    v29 = v58[0];
    if (v58[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v29;
      *(inited + 24) = 0;
      sub_1DB4B03C0(v7);

      v31 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v32 = *(inited + 16);
        v33 = sqlite3_step(v32);
        if (qword_1EE30C820 != -1)
        {
          swift_once();
        }

        if (!sub_1DB331244(v33, qword_1EE312D90))
        {
          sub_1DB388320();
          swift_allocError();
          *v44 = v33;
          *(v44 + 8) = 0;
          *(v44 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v32);
        }

        if (v33 != 100)
        {
          break;
        }

        sub_1DB4271D0(inited, &v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1DB303BE0(0, *(v31 + 2) + 1, 1, v31);
        }

        v35 = *(v31 + 2);
        v34 = *(v31 + 3);
        if (v35 >= v34 >> 1)
        {
          v31 = sub_1DB303BE0((v34 > 1), v35 + 1, 1, v31);
        }

        *(v31 + 2) = v35 + 1;
        v36 = &v31[152 * v35];
        v37 = v49;
        *(v36 + 2) = v48;
        *(v36 + 3) = v37;
        v38 = v50;
        v39 = v51;
        v40 = v53;
        *(v36 + 6) = v52;
        *(v36 + 7) = v40;
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        v41 = v54;
        v42 = v55;
        v43 = v56;
        v36[176] = v57;
        *(v36 + 9) = v42;
        *(v36 + 10) = v43;
        *(v36 + 8) = v41;
      }

      swift_setDeallocating();
      sqlite3_finalize(v32);

      *v45 = v31;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DB42BEF8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v37[5] = *MEMORY[0x1E69E9840];
  v37[1] = 0xE000000000000000;
  MEMORY[0x1E1285C10](202);
  MEMORY[0x1E1285C70](0xD0000000000000CALL, 0x80000001DB52E0F0);
  v37[3] = MEMORY[0x1E69E72F0];
  v37[4] = &off_1F57000B8;
  v37[0] = a2;
  sub_1DB30C4B8(v37, v35, &qword_1ECC42798, &qword_1DB50F210);
  v7 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB302D80((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  v10 = &v7[5 * v9];
  v11 = v35[0];
  v12 = v35[1];
  v10[8] = v36;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(v37, &qword_1ECC42798, &qword_1DB50F210);
  v37[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v37, v35);

  if (v3)
  {
  }

  v14 = v37[0];
  if (!v37[0])
  {
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();
  *(inited + 16) = v14;
  *(inited + 24) = 0;
  sub_1DB4B03C0(v7);

  v16 = *(inited + 16);
  v17 = sqlite3_step(v16);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (!sub_1DB331244(v17, qword_1EE312D90) || (v18 = sub_1DB3AD5F0(&unk_1F56F0520), v19 = sub_1DB331244(v17, v18), , !v19))
  {
    sub_1DB388320();
    swift_allocError();
    *v31 = v17;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v16);
  }

  v20 = sub_1DB4AE7B8();
  if (!v20[2] || (v21 = sub_1DB306160(0xD000000000000011, 0x80000001DB52E1C0), (v22 & 1) == 0) || (v23 = *(v20[7] + 4 * v21), v24 = *(inited + 16), sqlite3_column_type(v24, v23) == 5) || (sqlite3_column_int64(v24, v23), !v20[2]) || (v25 = sub_1DB306160(0x656863735F6E696DLL, 0xEF6F745F656C7564), (v26 & 1) == 0) || (v27 = *(v20[7] + 4 * v25), sqlite3_column_type(v24, v27) == 5) || (sqlite3_column_int64(v24, v27), !v20[2]) || (v28 = sub_1DB306160(0xD000000000000019, 0x80000001DB52E1E0), (v29 & 1) == 0))
  {

    goto LABEL_22;
  }

  v30 = *(v20[7] + 4 * v28);

  if (sqlite3_column_type(v24, v30) == 5)
  {

LABEL_22:
    Schedule = type metadata accessor for AssetNextSchedule(0);
    return (*(*(Schedule - 8) + 56))(a3, 1, 1, Schedule);
  }

  v33 = sqlite3_column_int(v24, v30);
  sub_1DB509D80();
  v34 = type metadata accessor for AssetNextSchedule(0);
  sub_1DB509D80();
  swift_setDeallocating();
  sqlite3_finalize(v24);

  *(a3 + *(v34 + 24)) = v33;
  return (*(*(v34 - 8) + 56))(a3, 0, 1, v34);
}

uint64_t AssetPushSubscriptionSQLiteStore.channels(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  sub_1DB348A40(v5, a1, a2);
  v7 = v6;

  return v7;
}

uint64_t sub_1DB42C444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E1285C10](68);
  MEMORY[0x1E1285C70](0xD000000000000044, 0x80000001DB52E0A0);
  v37[3] = MEMORY[0x1E69E6158];
  v37[4] = &off_1F5700098;
  v37[0] = a2;
  v37[1] = a3;
  sub_1DB30C4B8(v37, v38, &qword_1ECC42798, &qword_1DB50F210);

  v9 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302D80((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v38[0];
  v14 = v38[1];
  v12[8] = v39;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(v37, &qword_1ECC42798, &qword_1DB50F210);
  *&v38[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v38, v37);

  if (v4)
  {
  }

  v16 = *&v38[0];
  if (*&v38[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v9);

    v36 = MEMORY[0x1E69E7CC0];
    v18 = 0x1EE30C000uLL;
    v19 = &unk_1EE312000;
    while (1)
    {
      v20 = *(inited + 16);
      v21 = sqlite3_step(v20);
      v22 = v18;
      if (*(v18 + 2080) != -1)
      {
        swift_once();
      }

      v23 = v19;
      v24 = v19[434];
      if (!*(v24 + 16) || (sub_1DB50BCF0(), sub_1DB50BD20(), v25 = sub_1DB50BD30(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
      {
LABEL_21:
        sub_1DB388320();
        swift_allocError();
        *v35 = v21;
        *(v35 + 8) = 0;
        *(v35 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v20);
      }

      v28 = ~v26;
      while (*(*(v24 + 48) + 4 * v27) != v21)
      {
        v27 = (v27 + 1) & v28;
        if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if (v21 != 100)
      {
        break;
      }

      v19 = v23;
      if (sqlite3_column_text(v20, 0))
      {
        v29 = sub_1DB50A7A0();
        v31 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1DB302404(0, *(v36 + 2) + 1, 1, v36);
        }

        v33 = *(v36 + 2);
        v32 = *(v36 + 3);
        if (v33 >= v32 >> 1)
        {
          v36 = sub_1DB302404((v32 > 1), v33 + 1, 1, v36);
        }

        *(v36 + 2) = v33 + 1;
        v34 = &v36[16 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        v18 = v22;
        v19 = v23;
      }
    }

    swift_setDeallocating();
    sqlite3_finalize(v20);

    *a4 = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DB42C880(uint64_t a1)
{
  v1 = *(a1 + 112);
  v5[8] = *(a1 + 96);
  v5[9] = v1;
  v5[10] = *(a1 + 128);
  v6 = *(a1 + 144);
  v2 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v5[5] = v2;
  v3 = *(a1 + 80);
  v5[6] = *(a1 + 64);
  v5[7] = v3;
  v4 = *(a1 + 16);
  v5[2] = *a1;
  v5[3] = v4;
  sub_1DB426398(sub_1DB42D5C0, v5);
}

void sub_1DB42CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  sub_1DB426398(sub_1DB42D4B4, v4);
}

void sub_1DB42CA8C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1DB426568(sub_1DB42D544, v2);
}

uint64_t sub_1DB42CAD8(uint64_t a1)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *v1;
  sub_1DB348C18(v11, v10);
  sub_1DB348870(v6, v11);
  v8 = v7;
  sub_1DB348C74(v11);
  return v8 & 1;
}

void sub_1DB42CB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *&v6[3] = a5;
  *&v6[4] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a1;
  v6[8] = a2;
  sub_1DB426568(sub_1DB42D49C, v6);
}

void sub_1DB42CC14(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1DB4261C8(sub_1DB42D52C, v2);
}

uint64_t sub_1DB42CD60(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  sub_1DB348A40(v5, a1, a2);
  v7 = v6;

  return v7;
}

uint64_t sub_1DB42CE74@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[4] = &type metadata for SystemDateProvider;
  a2[5] = &protocol witness table for SystemDateProvider;
  return result;
}

double sub_1DB42CFA8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  return result;
}

uint64_t sub_1DB42CFDC(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  result = sub_1DB387D84(0xD000000000000011, 0x80000001DB52E810);
  if (!v1)
  {
    if (result)
    {
      result = sub_1DB387888();
      if (result <= 0)
      {
        v4 = result;
        if (sub_1DB388044(0xD000000000000011, 0x80000001DB52E810, 0xD000000000000011, 0x80000001DB52E290))
        {
          if (qword_1EE30C928 != -1)
          {
            swift_once();
          }

          sub_1DB50BEB0();
          v5 = v33;
          v6 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_1DB50EE90;
          v25 = sub_1DB301BC0(0, 77, 0, MEMORY[0x1E69E7CC0]);
          v8._countAndFlagsBits = 0xD000000000000027;
          v8._object = 0x80000001DB52E8D0;
          LogMessage.StringInterpolation.appendLiteral(_:)(v8);
          v31 = MEMORY[0x1E69E72F0];
          v30[0] = v4;
          sub_1DB30C4B8(v30, v26, &qword_1ECC426B0, &qword_1DB50EEB0);
          v27 = 0u;
          v28 = 0u;
          sub_1DB301D4C(v26, &v27);
          v29 = 0;
          v9 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1DB301BC0(0, *(v25 + 2) + 1, 1, v25);
          }

          v11 = *(v9 + 2);
          v10 = *(v9 + 3);
          v12 = v11 + 1;
          if (v11 >= v10 >> 1)
          {
            v24 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
            v12 = v11 + 1;
            v9 = v24;
          }

          *(v9 + 2) = v12;
          v13 = &v9[40 * v11];
          v14 = v27;
          v15 = v28;
          v13[64] = v29;
          *(v13 + 2) = v14;
          *(v13 + 3) = v15;
          sub_1DB30623C(v30, &qword_1ECC426B0, &qword_1DB50EEB0);
          v16._countAndFlagsBits = 0xD000000000000025;
          v16._object = 0x80000001DB52E900;
          LogMessage.StringInterpolation.appendLiteral(_:)(v16);
          *(v7 + 32) = v9;
          Logger.warning(_:)(v7, v5, v6);

          return __swift_destroy_boxed_opaque_existential_0(v32);
        }

        else
        {
          sub_1DB4B017C(0xD000000000000042, 0x80000001DB52E830, MEMORY[0x1E69E7CC0]);
          v32[0] = 0;

          result = sub_1DB4ABE94(0xD000000000000044, 0x80000001DB52E880, a1, v32, &v27);
          v17 = v32[0];
          if (v32[0])
          {
            type metadata accessor for SQLiteStatement();
            inited = swift_initStackObject();
            *(inited + 16) = v17;
            *(inited + 24) = 0;
            sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
            v19 = *(inited + 16);
            v20 = sqlite3_step(v19);
            if (qword_1EE30C820 != -1)
            {
              swift_once();
            }

            if (sub_1DB331244(v20, qword_1EE312D90) && (v21 = sub_1DB3AD5F0(&unk_1F56F0570), v22 = sub_1DB331244(v20, v21), , v22))
            {
              swift_setDeallocating();
              sqlite3_finalize(v19);
            }

            else
            {
              sub_1DB388320();
              swift_allocError();
              *v23 = v20;
              *(v23 + 8) = 0;
              *(v23 + 16) = 0;
              swift_willThrow();
              swift_setDeallocating();
              sqlite3_finalize(v19);
            }
          }

          else
          {
            __break(1u);
          }
        }
      }
    }

    else
    {
      if (qword_1ECC42128 != -1)
      {
        swift_once();
      }

      return sub_1DB4B017C(qword_1ECC45840, *algn_1ECC45848, qword_1ECC45850);
    }
  }

  return result;
}

unint64_t IntentDispatcherError.errorDescription.getter()
{
  v1 = 0xD0000000000000A5;
  if (*v0 == 1)
  {
    v1 = 0xD0000000000000C2;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD0000000000000B5;
  }
}

uint64_t IntentDispatcherError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB42D6BC()
{
  result = qword_1ECC45858;
  if (!qword_1ECC45858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45858);
  }

  return result;
}

unint64_t sub_1DB42D714()
{
  v1 = 0xD0000000000000A5;
  if (*v0 == 1)
  {
    v1 = 0xD0000000000000C2;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD0000000000000B5;
  }
}

unint64_t sub_1DB42D77C()
{
  sub_1DB330D60(v0, v8);
  if (!v9)
  {
    sub_1DB330DD0(v8);
LABEL_6:
    v2 = 0x40000001F56FD7F0uLL;
    sub_1DB315178();
    swift_allocError();
    *v3 = xmmword_1DB51C000;
    v4 = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = 0x40000001F56FD7F0uLL;
    *(v3 + 24) = v4;
    swift_willThrow();
    return v2;
  }

  v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1DB300B14(v1, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_6;
  }

  v2 = v6;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v2;
}

unint64_t sub_1DB42D874()
{
  sub_1DB330D60(v0, v8);
  if (!v9)
  {
    sub_1DB330DD0(v8);
LABEL_6:
    v2 = 0x40000001F56FC3C8uLL;
    sub_1DB315178();
    swift_allocError();
    *v3 = xmmword_1DB51C000;
    v4 = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = 0x40000001F56FC3C8uLL;
    *(v3 + 24) = v4;
    swift_willThrow();
    return v2;
  }

  v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1DB300B14(v1, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_6;
  }

  v2 = v6;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v2;
}

__n128 Models.FlowBackAction.init(actionMetrics:dismissal:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t Models.FlowBackAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 Models.FlowBackAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t Models.FlowBackAction.dismissal.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.FlowBackAction.dismissal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1DB42DC08()
{
  if (*v0)
  {
    return 0x617373696D736964;
  }

  else
  {
    return 0x654D6E6F69746361;
  }
}

uint64_t sub_1DB42DC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xE90000000000006CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB42DD40(uint64_t a1)
{
  v2 = sub_1DB42DF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB42DD7C(uint64_t a1)
{
  v2 = sub_1DB42DF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.FlowBackAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45860, &qword_1DB51C010);
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB42DF80();

  sub_1DB50BE40();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  sub_1DB37BCC8();
  sub_1DB50B8A0();

  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_1DB42DFD4();
    sub_1DB50B8A0();
  }

  return (*(v14 + 8))(v6, v4);
}

unint64_t sub_1DB42DF80()
{
  result = qword_1ECC45868;
  if (!qword_1ECC45868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45868);
  }

  return result;
}

unint64_t sub_1DB42DFD4()
{
  result = qword_1ECC45870;
  if (!qword_1ECC45870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45870);
  }

  return result;
}

uint64_t Models.FlowBackAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45878, &qword_1DB51C018);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB42DF80();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = 0;
  sub_1DB37C0CC();
  sub_1DB50B780();
  v9 = v14;
  v10 = v15;
  v16 = 1;
  sub_1DB42E244();
  sub_1DB50B780();
  (*(v6 + 8))(v8, v5);
  v11 = v14;
  v12 = v15;
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB42E244()
{
  result = qword_1ECC45880;
  if (!qword_1ECC45880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45880);
  }

  return result;
}

uint64_t Models.FlowBackAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v16);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v15);

  v7 = sub_1DB320870(v15, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v15);
  v14 = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v15, &v14, &v17);
  sub_1DB3151CC(v16);
  v8 = v17;
  JSONObject.subscript.getter(0x617373696D736964, 0xE90000000000006CLL, v16);
  v9 = sub_1DB42D874();
  if (v3)
  {

    sub_1DB3151CC(a1);
    return sub_1DB3151CC(v16);
  }

  else
  {
    v12 = v9;
    v13 = v10;
    sub_1DB3151CC(a1);
    result = sub_1DB3151CC(v16);
    *a3 = v7;
    a3[1] = v8;
    a3[2] = v12;
    a3[3] = v13;
  }

  return result;
}

unint64_t sub_1DB42E430()
{
  result = qword_1ECC45888;
  if (!qword_1ECC45888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45888);
  }

  return result;
}

unint64_t sub_1DB42E4B8()
{
  result = qword_1ECC45890;
  if (!qword_1ECC45890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45890);
  }

  return result;
}

unint64_t sub_1DB42E510()
{
  result = qword_1ECC45898;
  if (!qword_1ECC45898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45898);
  }

  return result;
}

unint64_t sub_1DB42E568()
{
  result = qword_1ECC458A0;
  if (!qword_1ECC458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC458A0);
  }

  return result;
}

unint64_t sub_1DB42E5BC()
{
  result = qword_1ECC458A8;
  if (!qword_1ECC458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC458A8);
  }

  return result;
}

uint64_t sub_1DB42E620()
{
  v1 = *v0;
  if (!*v0)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_1DB50BA30();

  if ((v2 & 1) == 0)
  {
    if (v1 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1DB50BA30();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1DB42E724()
{
  v1 = *v0;
  if (!*v0)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_1DB50BA30();

  if ((v2 & 1) == 0)
  {
    if (v1 == 2)
    {
      v3 = sub_1DB50BA30();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t JetPackAssetRequestSourcePolicy.debugDescription.getter()
{
  v1 = 0x6E4F65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x6C6E4F6C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

JetCore::JetPackAssetRequestSourcePolicy_optional __swiftcall JetPackAssetRequestSourcePolicy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x647261646E617473 && rawValue._object == 0xE800000000000000;
  if (v5 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6E4F65746F6D6572 && object == 0xEA0000000000796CLL || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6C6E4F6C61636F6CLL && object == 0xE900000000000079)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_1DB50BA30();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1DB42E9C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F65746F6D6572;
  v4 = 0xEA0000000000796CLL;
  if (v2 != 1)
  {
    v3 = 0x6C6E4F6C61636F6CLL;
    v4 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E4F65746F6D6572;
  v8 = 0xEA0000000000796CLL;
  if (*a2 != 1)
  {
    v7 = 0x6C6E4F6C61636F6CLL;
    v8 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x647261646E617473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

unint64_t sub_1DB42EAE0()
{
  result = qword_1ECC458B0;
  if (!qword_1ECC458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC458B0);
  }

  return result;
}

uint64_t sub_1DB42EB34()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB42EBE0(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB42EC78(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB42ED20()
{
  v1 = 0x6E4F65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x6C6E4F6C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

void sub_1DB42EE40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x6E4F65746F6D6572;
  if (v2 != 1)
  {
    v5 = 0x6C6E4F6C61636F6CLL;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DB42EEE0()
{
  result = qword_1EE30DCE8[0];
  if (!qword_1EE30DCE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DCE8);
  }

  return result;
}

uint64_t sub_1DB42EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB42EF5C, 0, 0);
}

uint64_t sub_1DB42EF5C()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for StartUpPerformanceEvent();
  *v5 = v0;
  v5[1] = sub_1DB42F0F4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42F0F4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DB469584;
  }

  else
  {
    v2 = sub_1DB469600;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB42F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42F24C, 0, 0);
}

uint64_t sub_1DB42F24C()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1DB42F3E4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42F3E4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB469584, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB42F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42F55C, 0, 0);
}

uint64_t sub_1DB42F55C()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);
  *v5 = v0;
  v5[1] = sub_1DB42F3E4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42F704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB42F728, 0, 0);
}

uint64_t sub_1DB42F728()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  sub_1DB4679C8();
  *v5 = v0;
  v5[1] = sub_1DB42F0F4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42F8E8, 0, 0);
}

uint64_t sub_1DB42F8E8()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1DB42F3E4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB42FAA4, 0, 0);
}

uint64_t sub_1DB42FAA4()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for JetPackAssetSession();
  *v5 = v0;
  v5[1] = sub_1DB42FC38;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42FC38()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DB3D4B04;
  }

  else
  {
    v2 = sub_1DB4092C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB42FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42FD90, 0, 0);
}

uint64_t sub_1DB42FD90()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for JetPackAsset(0);
  *v5 = v0;
  v5[1] = sub_1DB42F3E4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42FF54, 0, 0);
}

uint64_t sub_1DB42FF54()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1DB4300EC;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB4300EC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB3D4B04, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB43023C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB430264, 0, 0);
}

uint64_t sub_1DB430264()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1DB42F3E4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v8, v0 + 24, v6, v7, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

char *sub_1DB4303FC(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1DB300B14(*(a1 + 56) + 32 * v14, v21);
    *&v22 = v15;
    sub_1DB30C200(v21, (&v22 + 8));
    v8 = v11;
LABEL_14:
    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    v16 = v22;
    if (!v22)
    {

      return v9;
    }

    sub_1DB30C200((v25 + 8), &v22);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1DB303148((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      *&v9[8 * v20 + 32] = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A10, &qword_1DB51CA38);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A18, &qword_1DB51CA40), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1DB303148((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        *&v9[8 * v18 + 32] = v16;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DB4306D4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1DB300B14(*(a1 + 56) + 32 * v14, v24);
    *&v25 = v15;
    sub_1DB30C200(v24, (&v25 + 8));
    v8 = v11;
LABEL_14:
    v28[0] = v25;
    v28[1] = v26;
    v29 = v27;
    v16 = v25;
    if (!v25)
    {

      return v9;
    }

    sub_1DB30C200((v28 + 8), &v25);
    type metadata accessor for JetPackAssetSession();
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_1DB303148((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      *&v9[8 * v18 + 32] = v16;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A30, &qword_1DB51CA98);
      if (swift_dynamicCast())
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          v9 = sub_1DB303148((v19 > 1), v20 + 1, 1, v9);
        }

        *(v9 + 2) = v20 + 1;
        v21 = &v9[8 * v20];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A38, &qword_1DB51CAA0);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
        }

        v23 = *(v9 + 2);
        v22 = *(v9 + 3);
        if (v23 >= v22 >> 1)
        {
          v9 = sub_1DB303148((v22 > 1), v23 + 1, 1, v9);
        }

        *(v9 + 2) = v23 + 1;
        v21 = &v9[8 * v23];
      }

      *(v21 + 4) = v16;
    }

LABEL_18:
    result = __swift_destroy_boxed_opaque_existential_0(&v25);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DB430A1C(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

    v12 = v10;
LABEL_13:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    sub_1DB300B14(*(a1 + 56) + 32 * v15, v30);
    *&v31 = v16;
    sub_1DB30C200(v30, (&v31 + 8));
    v10 = v12;
LABEL_14:
    v34[0] = v31;
    v34[1] = v32;
    v35 = v33;
    v17 = v31;
    if (!v31)
    {

      return v29;
    }

    sub_1DB30C200((v34 + 8), &v31);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB303148(0, *(v29 + 2) + 1, 1, v29);
      }

      v23 = *(v29 + 2);
      v22 = *(v29 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v28 = v23 + 1;
        v27 = sub_1DB303148((v22 > 1), v23 + 1, 1, v29);
        v24 = v28;
        v29 = v27;
      }

      v25 = v29;
      *(v29 + 2) = v24;
      *&v25[8 * v23 + 32] = v17;
      sub_1DB467374(v4, type metadata accessor for JetPackAsset);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45950, &qword_1DB51C748);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45958, &qword_1DB51C750), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1DB303148(0, *(v29 + 2) + 1, 1, v29);
        }

        v19 = *(v29 + 2);
        v18 = *(v29 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v28 = v19 + 1;
          v26 = sub_1DB303148((v18 > 1), v19 + 1, 1, v29);
          v20 = v28;
          v29 = v26;
        }

        v21 = v29;
        *(v29 + 2) = v20;
        *&v21[8 * v19 + 32] = v17;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  if (v8 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v8;
  }

  v10 = v13 - 1;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      v7 = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      goto LABEL_14;
    }

    v7 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB430D78(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = type metadata accessor for StartUpPerformanceEvent();

  return MEMORY[0x1EEE6DFA0](sub_1DB430DE8, 0, 0);
}

uint64_t sub_1DB430DE8()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1DB30EE50(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v5 = off_1EE30D3B0;
    v6 = *(off_1EE30D3B0 + 2);

    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AC8, &qword_1DB51CCC8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_16:

      v4 = 0;
      goto LABEL_17;
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AC8, &qword_1DB51CCC8);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 144);
        if (v11)
        {
          v12 = *(v0 + 152);

          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_1DB4695C8;
          v14 = *(v0 + 216);
          v15 = *(v0 + 224);

          return sub_1DB37F5C0(v0 + 176, v11, v14, v15, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = v3;
LABEL_17:
    v10 = *(v0 + 8);

    return v10(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AD0, &qword_1DB51CCD0);
  if (swift_dynamicCast())
  {
    v16 = sub_1DB4BA9D4();

    *(v0 + 176) = v16;
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = v16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AD8, &qword_1DB51CCD8);
  if (swift_dynamicCast())
  {
    v3 = sub_1DB4C34E4();

    *(v0 + 176) = v3;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AE0, &qword_1DB51CCE0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1DB4313A4;

    return sub_1DB43CE64();
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52F580);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB4313A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1DB469564;
  }

  else
  {
    *(v4 + 264) = a1;
    *(v4 + 176) = a1;
    v5 = sub_1DB4695D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4314D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB4314F0, 0, 0);
}

uint64_t sub_1DB4314F0()
{
  if (!*(*(v0 + 288) + 16) || (v1 = sub_1DB30EE50(&type metadata for JetPackAssetSession.Configuration), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v7 = off_1EE30D3B0;
    v8 = *(off_1EE30D3B0 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 208) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A60, &qword_1DB51CB48);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 192))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 280);

      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 1;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
LABEL_25:
      v18 = *(v0 + 8);

      return v18();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 240) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A60, &qword_1DB51CB48);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 224);
        if (v13)
        {
          v14 = *(v0 + 232);

          v15 = swift_task_alloc();
          *(v0 + 296) = v15;
          *v15 = v0;
          v15[1] = sub_1DB431A98;
          v16 = *(v0 + 280);
          v17 = *(v0 + 288);

          return sub_1DB37F5C0(v16, v13, v17, &type metadata for JetPackAssetSession.Configuration, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 288) + 56) + 32 * v1, v0 + 128);
  sub_1DB30C200((v0 + 128), (v0 + 96));
  sub_1DB300B14(v0 + 96, v0 + 160);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 280);
    *v3 = *(v0 + 16);
    v4 = *(v0 + 32);
    v5 = *(v0 + 48);
    v6 = *(v0 + 80);
    v3[3] = *(v0 + 64);
    v3[4] = v6;
    v3[1] = v4;
    v3[2] = v5;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A68, &qword_1DB51CB50);
  if (swift_dynamicCast())
  {
    sub_1DB4BAA00(*(v0 + 280));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A70, &qword_1DB51CB58);
  if (swift_dynamicCast())
  {
    sub_1DB4C3524(*(v0 + 280));

    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A78, &qword_1DB51CB60);
  if (swift_dynamicCast())
  {
    *(v0 + 304) = *(v0 + 272);
    v19 = swift_task_alloc();
    *(v0 + 312) = v19;
    *v19 = v0;
    v19[1] = sub_1DB431B8C;
    v20 = *(v0 + 280);

    return sub_1DB43D170(v20);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x72756769666E6F43, 0xED00006E6F697461);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB431A98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB431B8C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1DB431D14;
  }

  else
  {
    v2 = sub_1DB431CA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB431CA0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB431D14()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB431D88(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v2[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);

  return MEMORY[0x1EEE6DFA0](sub_1DB431E04, 0, 0);
}

uint64_t sub_1DB431E04()
{
  if (!*(*(v0 + 248) + 16) || (v1 = sub_1DB30EE50(*(v0 + 256)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v3 = off_1EE30D3B0;
    v4 = *(off_1EE30D3B0 + 2);

    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = 0;
    while (1)
    {
      *(v0 + 168) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A90, &qword_1DB51CBB8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 152))
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }

    v7 = *(v3 + 2);
    if (v5 == v7)
    {
LABEL_15:
      v8 = *(v0 + 240);

      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
LABEL_25:
      v15 = *(v0 + 8);

      return v15();
    }

    if (v5 >= v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 200) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A90, &qword_1DB51CBB8);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *(v0 + 184);
        if (v9)
        {
          v10 = *(v0 + 192);

          v11 = swift_task_alloc();
          *(v0 + 264) = v11;
          *v11 = v0;
          v11[1] = sub_1DB432380;
          v12 = *(v0 + 248);
          v13 = *(v0 + 256);
          v14 = *(v0 + 240);

          return sub_1DB37F5C0(v14, v9, v12, v13, v9, v10);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 248) + 56) + 32 * v1, v0 + 88);
  sub_1DB30C200((v0 + 88), (v0 + 56));
  sub_1DB300B14(v0 + 56, v0 + 120);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C((v0 + 16), *(v0 + 240));
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 120));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A98, &qword_1DB51CBC0);
  if (swift_dynamicCast())
  {
    sub_1DB4BAB94();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AA0, &qword_1DB51CBC8);
  if (swift_dynamicCast())
  {
    sub_1DB4C36A8();

    __swift_destroy_boxed_opaque_existential_0((v0 + 120));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AA8, &qword_1DB51CBD0);
  if (swift_dynamicCast())
  {
    *(v0 + 272) = *(v0 + 232);
    v16 = swift_task_alloc();
    *(v0 + 280) = v16;
    *v16 = v0;
    v16[1] = sub_1DB432474;
    v17 = *(v0 + 240);

    return sub_1DB43D478(v17);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52F440);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}