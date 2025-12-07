void sub_1DB3D0F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52CB90);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v44);
    sub_1DB365724(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52CB90);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v10 = v44;
    v11 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v12 = sub_1DB50B0F0();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1DB50B350();
      v17 = sub_1DB3D4EE8(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1DB3D4EE8(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1DB2F5000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v14, -1, -1);
      MEMORY[0x1E1288220](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v19 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v50 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1DB301DBC(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1DB301DBC(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52CB90);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1DB301DBC(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52CB90);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D1784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001DLL, 0x80000001DB52CBC0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v44);
    sub_1DB365724(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001DLL, 0x80000001DB52CBC0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v10 = v44;
    v11 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v12 = sub_1DB50B0F0();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1DB50B350();
      v17 = sub_1DB3D4EE8(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1DB3D4EE8(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1DB2F5000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v14, -1, -1);
      MEMORY[0x1E1288220](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v19 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v50 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1DB301DBC(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1DB301DBC(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD00000000000001DLL, 0x80000001DB52CBC0);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1DB301DBC(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001DLL, 0x80000001DB52CBC0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D1FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52CC00);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v44);
    sub_1DB365724(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52CC00);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v10 = v44;
    v11 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v12 = sub_1DB50B0F0();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1DB50B350();
      v17 = sub_1DB3D4EE8(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1DB3D4EE8(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1DB2F5000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v14, -1, -1);
      MEMORY[0x1E1288220](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v19 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v50 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1DB301DBC(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1DB301DBC(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52CC00);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1DB301DBC(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52CC00);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D2874(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000079;
    *(&v42 + 1) = 0x80000001DB52CE00;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD000000000000079, 0x80000001DB52CE00, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000079;
      v46 = 0x80000001DB52CE00;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3D2E4C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000002ALL;
    *(&v42 + 1) = 0x80000001DB52CDD0;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD00000000000002ALL, 0x80000001DB52CDD0, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000002ALL;
      v46 = 0x80000001DB52CDD0;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3D3424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000022, 0x80000001DB52CD60);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52CD90);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000022, 0x80000001DB52CD60);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52CD90);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000022, 0x80000001DB52CD60);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52CD90);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000022, 0x80000001DB52CD60);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52CD90);
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D3C0C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000029;
    *(&v42 + 1) = 0x80000001DB52CD30;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD000000000000029, 0x80000001DB52CD30, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000029;
      v46 = 0x80000001DB52CD30;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void requirementFailure(_:file:line:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  v11 = sub_1DB50BEB0();
  v12 = v53;
  if (v53)
  {
    v13 = *(&v53 + 1);
    *&v53 = a1(v11);
    *(&v53 + 1) = v14;
    v12(&v53);
    sub_1DB365724(v12, v13);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    v11 = swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    v15 = (a1)();
    v17 = v16;
    v18 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v19 = sub_1DB50B0F0();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v53 = v21;
      *v20 = 136446722;
      v22 = sub_1DB50B350();
      v24 = sub_1DB3D4EE8(v22, v23, &v53);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2050;
      *(v20 + 14) = a6;
      *(v20 + 22) = 2082;
      v25 = sub_1DB3D4EE8(v15, v17, &v53);

      *(v20 + 24) = v25;
      _os_log_impl(&dword_1DB2F5000, v19, v18, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v21, -1, -1);
      MEMORY[0x1E1288220](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v26 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1DB50EE90;
      v60 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v59 = MEMORY[0x1E69E6A70];
      v56 = a3;
      v57 = a4;
      v58 = v7;
      sub_1DB301CDC(&v56, v52);
      v53 = 0u;
      v54 = 0u;
      sub_1DB301D4C(v52, &v53);
      v55 = 0;
      v29 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v60 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v53;
      v34 = v54;
      v32[64] = v55;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v60 = v29;
      sub_1DB301DBC(&v56);
      v35._countAndFlagsBits = 58;
      v35._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      v59 = MEMORY[0x1E69E6810];
      v56 = a6;
      sub_1DB301CDC(&v56, v52);
      v53 = 0u;
      v54 = 0u;
      sub_1DB301D4C(v52, &v53);
      v55 = 0;
      v36 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v60 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v53;
      v41 = v54;
      v39[64] = v55;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v60 = v36;
      sub_1DB301DBC(&v56);
      v42._object = 0x80000001DB52C9D0;
      v42._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      v43 = (a1)();
      v59 = MEMORY[0x1E69E6158];
      v56 = v43;
      v57 = v44;
      sub_1DB301CDC(&v56, v52);
      v53 = 0u;
      v54 = 0u;
      sub_1DB301D4C(v52, &v53);
      v55 = 0;
      v45 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1DB301BC0(0, *(v45 + 2) + 1, 1, v45);
        v60 = v45;
      }

      v47 = *(v45 + 2);
      v46 = *(v45 + 3);
      if (v47 >= v46 >> 1)
      {
        v45 = sub_1DB301BC0((v46 > 1), v47 + 1, 1, v45);
      }

      *(v45 + 2) = v47 + 1;
      v48 = &v45[40 * v47];
      v49 = v53;
      v50 = v54;
      v48[64] = v55;
      *(v48 + 2) = v49;
      *(v48 + 3) = v50;
      v60 = v45;
      sub_1DB301DBC(&v56);
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v51);
      *(v27 + 32) = v60;
      *&v53 = v26;
      LOBYTE(v56) = 0;
      OSLogger.log(contentsOf:withLevel:)(v27, &v56);
      goto LABEL_26;
    }

    a1(v11);
    sub_1DB50B580();
    __break(1u);
  }
}

uint64_t withUnsatisfiedRequirementHandler(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3D4824, 0, 0);
}

uint64_t sub_1DB3D4824()
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v0 + 16) = sub_1DB3D6D30;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 48);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1DB3D49B0;

  return MEMORY[0x1EEE6DE98](v5, v0 + 16, &unk_1DB518E00, v4, 0, 0, 0xD00000000000001ALL, 0x80000001DB52C9F0);
}

uint64_t sub_1DB3D49B0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DB3D4B04;
  }

  else
  {
    v2 = sub_1DB2FEB3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3D4B1C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DB306AF4;

  return v5();
}

uint64_t withUnsatisfiedRequirementHandler(_:perform:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F40, &qword_1DB518E08);
  v7 = swift_task_localValuePush();
  a3(v7);
  swift_task_localValuePop();
}

uint64_t sub_1DB3D4D10()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = JEGestaltGetBuildVersion();
  v2 = sub_1DB50A650();
  v4 = v3;

  if (has_internal_content)
  {
    v5 = sub_1DB3D541C(v2, v4);

    v7 = (v5 & 1) == 0;
  }

  else
  {

    v7 = 2;
  }

  byte_1ECC44F38 = v7;
  return result;
}

uint64_t static RequirementFailurePolicy.active.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1ECC420E8 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1ECC44F38;
  return result;
}

uint64_t sub_1DB3D4E04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F58, &unk_1DB518EB0);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC67960 = result;
  return result;
}

uint64_t RequirementFailurePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB3D4EE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DB3D4FB4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DB300B14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1DB3D4FB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DB3D50C0(a5, a6);
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
    result = sub_1DB50B440();
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

void *sub_1DB3D50C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DB3D510C(a1, a2);
  sub_1DB3D523C(&unk_1F56EF1E8);
  return v3;
}

void *sub_1DB3D510C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DB412DFC(v5, 0);
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

  result = sub_1DB50B440();
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
        v10 = sub_1DB50A7C0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DB412DFC(v10, 0);
        result = sub_1DB50B300();
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

uint64_t sub_1DB3D523C(uint64_t result)
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

  result = sub_1DB3D5328(result, v11, 1, v3);
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

char *sub_1DB3D5328(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F50, &qword_1DB518EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1DB3D541C(uint64_t a1, uint64_t a2)
{

  v2 = sub_1DB50A7B0();
  if (!v3)
  {
LABEL_13:

    return 0;
  }

  v4 = v2;
  v5 = v3;
  while (1)
  {
    v7 = v5 == 0xE100000000000000;
    v8 = v5 == 0xE100000000000000 && v4 == 65;
    if (!v8)
    {
      if (sub_1DB50BA30())
      {
        goto LABEL_4;
      }

      if (v4 == 90 && v5 == 0xE100000000000000)
      {
        break;
      }
    }

    if ((sub_1DB50BA30() & 1) == 0)
    {

      if (!v8)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_4:

    v4 = sub_1DB50A7B0();
    v5 = v6;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = 1;
LABEL_15:
  if (sub_1DB50BA30())
  {
    goto LABEL_19;
  }

  v10 = !v7;
  if (v4 != 69)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
LABEL_19:

    return 1;
  }

  v11 = sub_1DB50BA30();

  return v11 & 1;
}

void sub_1DB3D5598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D5E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v49 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D66F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1DB50BEB0();
  v11 = v52;
  if (v52)
  {
    v12 = *(&v52 + 1);
    *&v52 = a5(v10);
    *(&v52 + 1) = v13;
    v11(&v52);
    sub_1DB365724(v11, v12);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    v10 = swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    v14 = (a5)();
    v16 = v15;
    v17 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v18 = sub_1DB50B0F0();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v52 = v20;
      *v19 = 136446722;
      v21 = sub_1DB50B350();
      v23 = sub_1DB3D4EE8(v21, v22, &v52);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2050;
      *(v19 + 14) = a4;
      *(v19 + 22) = 2082;
      v24 = sub_1DB3D4EE8(v14, v16, &v52);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_1DB2F5000, v18, v17, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v20, -1, -1);
      MEMORY[0x1E1288220](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v25 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1DB50EE90;
      v59 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v58 = MEMORY[0x1E69E6A70];
      v55 = a1;
      v56 = a2;
      v57 = v7;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v28 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v59 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v52;
      v33 = v53;
      v31[64] = v54;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v59 = v28;
      sub_1DB301DBC(&v55);
      v34._countAndFlagsBits = 58;
      v34._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v58 = MEMORY[0x1E69E6810];
      v55 = a4;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v35 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v59 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v52;
      v40 = v53;
      v38[64] = v54;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v59 = v35;
      sub_1DB301DBC(&v55);
      v41._object = 0x80000001DB52C9D0;
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      v42 = (a5)();
      v58 = MEMORY[0x1E69E6158];
      v55 = v42;
      v56 = v43;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v44 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1DB301BC0(0, *(v44 + 2) + 1, 1, v44);
        v59 = v44;
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1DB301BC0((v45 > 1), v46 + 1, 1, v44);
      }

      *(v44 + 2) = v46 + 1;
      v47 = &v44[40 * v46];
      v48 = v52;
      v49 = v53;
      v47[64] = v54;
      *(v47 + 2) = v48;
      *(v47 + 3) = v49;
      v59 = v44;
      sub_1DB301DBC(&v55);
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      *(v26 + 32) = v59;
      *&v52 = v25;
      LOBYTE(v55) = 0;
      OSLogger.log(contentsOf:withLevel:)(v26, &v55);
      goto LABEL_26;
    }

    a5(v10);
    sub_1DB50B580();
    __break(1u);
  }
}

unint64_t sub_1DB3D6CE4()
{
  result = qword_1EE30E300;
  if (!qword_1EE30E300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30E300);
  }

  return result;
}

uint64_t sub_1DB3D6D60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return sub_1DB3D4B1C(a1, v4);
}

unint64_t sub_1DB3D6E1C()
{
  result = qword_1ECC44F48;
  if (!qword_1ECC44F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F48);
  }

  return result;
}

void sub_1DB3D6E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v49 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D7FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v49 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D9158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D9A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v49 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3DA2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3DAB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v46);
    sub_1DB365724(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v49 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v49 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3DB408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v12 = v48;
  if (v48)
  {
    v13 = *(&v48 + 1);
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CE80);
    *&v51 = a5;
    *(&v51 + 1) = a6;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
    v12(&v48);
    sub_1DB365724(v12, v13);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CE80);
    *&v51 = a5;
    *(&v51 + 1) = a6;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
    v14 = v48;
    v15 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v16 = sub_1DB50B0F0();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v48 = v18;
      *v17 = 136446722;
      v19 = sub_1DB50B350();
      v21 = sub_1DB3D4EE8(v19, v20, &v48);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2050;
      *(v17 + 14) = a4;
      *(v17 + 22) = 2082;
      v22 = sub_1DB3D4EE8(v14, *(&v14 + 1), &v48);

      *(v17 + 24) = v22;
      _os_log_impl(&dword_1DB2F5000, v16, v15, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v18, -1, -1);
      MEMORY[0x1E1288220](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v23 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DB50EE90;
      v54 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v53 = MEMORY[0x1E69E6A70];
      *&v51 = a1;
      *(&v51 + 1) = a2;
      v52 = v9;
      sub_1DB301CDC(&v51, v47);
      v48 = 0u;
      v49 = 0u;
      sub_1DB301D4C(v47, &v48);
      v50 = 0;
      v26 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v54 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v48;
      v31 = v49;
      v29[64] = v50;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v54 = v26;
      sub_1DB301DBC(&v51);
      v32._countAndFlagsBits = 58;
      v32._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v53 = MEMORY[0x1E69E6810];
      *&v51 = a4;
      sub_1DB301CDC(&v51, v47);
      v48 = 0u;
      v49 = 0u;
      sub_1DB301D4C(v47, &v48);
      v50 = 0;
      v33 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v54 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v48;
      v38 = v49;
      v36[64] = v50;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v54 = v33;
      sub_1DB301DBC(&v51);
      v39._countAndFlagsBits = 0xD00000000000001BLL;
      v39._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CE80);
      *&v51 = a5;
      *(&v51 + 1) = a6;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
      v53 = MEMORY[0x1E69E6158];
      v51 = v48;
      sub_1DB301CDC(&v51, v47);
      v48 = 0u;
      v49 = 0u;
      sub_1DB301D4C(v47, &v48);
      v50 = 0;
      v40 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1DB301BC0(0, *(v40 + 2) + 1, 1, v40);
        v54 = v40;
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1DB301BC0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v48;
      v45 = v49;
      v43[64] = v50;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v54 = v40;
      sub_1DB301DBC(&v51);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v24 + 32) = v54;
      *&v48 = v23;
      LOBYTE(v51) = 0;
      OSLogger.log(contentsOf:withLevel:)(v24, &v51);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CE80);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3DBC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v16 = v52;
  if (v52)
  {
    v17 = *(&v52 + 1);
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    v55 = v52;
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52CCF0);
    *&v53 = a7;
    *(&v53 + 1) = a8;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
    v16(&v52);
    sub_1DB365724(v16, v17);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    v55 = v52;
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52CCF0);
    *&v52 = a5;
    *(&v52 + 1) = a6;
    *&v53 = a7;
    *(&v53 + 1) = a8;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
    v18 = v55;
    v19 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v20 = sub_1DB50B0F0();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v52 = v22;
      *v21 = 136446722;
      v23 = sub_1DB50B350();
      v25 = sub_1DB3D4EE8(v23, v24, &v52);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2050;
      *(v21 + 14) = a4;
      *(v21 + 22) = 2082;
      v26 = sub_1DB3D4EE8(v18, *(&v18 + 1), &v52);

      *(v21 + 24) = v26;
      _os_log_impl(&dword_1DB2F5000, v20, v19, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v22, -1, -1);
      MEMORY[0x1E1288220](v21, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v50 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1DB50EE90;
      v58 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v57 = MEMORY[0x1E69E6A70];
      *&v55 = a1;
      *(&v55 + 1) = a2;
      v56 = v13;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v29 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v58 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v52;
      v34 = v53;
      v32[64] = v54;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v58 = v29;
      sub_1DB301DBC(&v55);
      v35._countAndFlagsBits = 58;
      v35._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      v57 = MEMORY[0x1E69E6810];
      *&v55 = a4;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v36 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v58 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v52;
      v41 = v53;
      v39[64] = v54;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v58 = v36;
      sub_1DB301DBC(&v55);
      v42._object = 0x80000001DB52C9D0;
      v42._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      v55 = v52;
      MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52CCF0);
      *&v52 = a5;
      *(&v52 + 1) = a6;
      *&v53 = a7;
      *(&v53 + 1) = a8;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
      v57 = MEMORY[0x1E69E6158];
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v43 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1DB301BC0(0, *(v43 + 2) + 1, 1, v43);
        v58 = v43;
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1DB301BC0((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      v46 = &v43[40 * v45];
      v47 = v52;
      v48 = v53;
      v46[64] = v54;
      *(v46 + 2) = v47;
      *(v46 + 3) = v48;
      v58 = v43;
      sub_1DB301DBC(&v55);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v27 + 32) = v58;
      *&v52 = v50;
      LOBYTE(v55) = 0;
      OSLogger.log(contentsOf:withLevel:)(v27, &v55);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52CCF0);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);

    sub_1DB50B580();
    __break(1u);
  }
}

uint64_t sub_1DB3DC428()
{
  v2 = sub_1DB509CA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  sub_1DB509B60();
  sub_1DB3DC6BC(v14);
  if (v1)
  {
    (*(v3 + 8))(v11, v2);
  }

  else
  {
    v22[1] = v0;
    v15 = *(v3 + 8);
    v15(v11, v2);
    v16 = sub_1DB509B90();
    v15(v14, v2);
    sub_1DB509B60();
    sub_1DB3DC6BC(v8);
    v15(v5, v2);
    v17 = sub_1DB509B90();
    v15(v8, v2);
    v18 = *(v16 + 16);
    if (*(v17 + 16) >= v18)
    {
      if (v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = *(v16 + v19 + 32) == *(v17 + v19 + 32) && *(v16 + v19 + 40) == *(v17 + v19 + 40);
          if (!v20 && (sub_1DB50BA30() & 1) == 0)
          {
            break;
          }

          v19 += 16;
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        LOBYTE(v2) = 0;
      }

      else
      {
LABEL_14:
        LOBYTE(v2) = 1;
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

void sub_1DB3DC6BC(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1DB509EE0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DB509F00();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB509CA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v37 - v13;
  v14 = sub_1DB509B90();
  v44 = *(v14 + 16);
  if (v44)
  {
    v15 = 0;
    v42 = (v6 + 32);
    v16 = (v6 + 8);
    v17 = (v14 + 40);
    v18 = MEMORY[0x1E69E7CC0];
    v43 = v14;
    while (v15 < *(v14 + 16))
    {
      v20 = *(v17 - 1);
      v19 = *v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB302404(0, *(v18 + 16) + 1, 1, v18);
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1DB302404((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v24 = objc_opt_self();
      v25 = sub_1DB50A980();

      v26 = [v24 fileURLWithPathComponents_];

      if (!v26)
      {

        goto LABEL_13;
      }

      ++v15;
      v27 = v46;
      sub_1DB509C20();

      v28 = v45;
      (*v42)(v45, v27, v5);
      v29 = v48;
      sub_1DB509B60();
      v30 = v47;
      sub_1DB509BE0();
      v31 = *v16;
      (*v16)(v29, v5);
      v18 = sub_1DB509B90();
      v31(v30, v5);
      v31(v28, v5);
      v17 += 2;
      v14 = v43;
      if (v44 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v32 = objc_opt_self();
    v33 = sub_1DB50A980();

    v34 = [v32 fileURLWithPathComponents_];

    if (v34)
    {
      sub_1DB509C20();
    }

    else
    {
LABEL_13:
      sub_1DB509ED0();
      sub_1DB34DB68(MEMORY[0x1E69E7CC0]);
      sub_1DB3DCB68();
      v35 = v38;
      v36 = v41;
      sub_1DB509B00();
      sub_1DB509EF0();
      (*(v40 + 8))(v35, v36);
      swift_willThrow();
    }
  }
}

unint64_t sub_1DB3DCB68()
{
  result = qword_1ECC44F60;
  if (!qword_1ECC44F60)
  {
    sub_1DB509F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F60);
  }

  return result;
}

void sub_1DB3DCBD0(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v5 = v3[2];
    if (v5)
    {
      v20 = v3;
      v6 = (v3 + 4);
      v7 = &unk_1ECC44FC0;
      do
      {
        sub_1DB30C4B8(v6, v28, v7, &unk_1DB50F4E0);
        sub_1DB30C4B8(v28, v25, v7, &unk_1DB50F4E0);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v28, v7, &unk_1DB50F4E0);
        }

        else
        {

          v10 = v7;
          v12 = v25[2];
          v11 = v25[3];
          sub_1DB2FEA0C(&v26, v22);
          v13 = v23;
          v14 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E2E68, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v28, v10, &unk_1DB50F4E0);
          __swift_destroy_boxed_opaque_existential_0(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
      v18 = MEMORY[0x1E69E7D48];
      v19 = v20;
    }

    else
    {
      v18 = MEMORY[0x1E69E7D48];
      v19 = v3;
    }

    sub_1DB3E30AC(v19, 0, v18);
  }
}

void sub_1DB3DCE84(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 40) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 40))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    sub_1DB3E30E8(v3, v4, 0);
    v5 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 2;
    sub_1DB30C340(v3, v4, 0);
    os_unfair_lock_unlock(v2 + 4);
    v6 = v3[2];
    if (v6)
    {
      v20 = v3;
      v21 = v4;
      v7 = (v3 + 4);
      v8 = &qword_1DB518FD0;
      do
      {
        sub_1DB30C4B8(v7, v29, &qword_1ECC429C0, v8);
        sub_1DB30C4B8(v29, v26, &qword_1ECC429C0, v8);
        if (v28)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v9 = a1;
          v10 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v29, &qword_1ECC429C0, v8);
        }

        else
        {

          v12 = v26[2];
          v11 = v26[3];
          sub_1DB2FEA0C(&v27, v23);
          v13 = v24;
          v14 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = v8;
          v17 = *(v14 + 8);
          v18 = a1;

          v17(sub_1DB3E31BC, v15, v13, v14);
          v8 = v16;
          v4 = v21;

          sub_1DB30623C(v29, &qword_1ECC429C0, v16);
          __swift_destroy_boxed_opaque_existential_0(v23);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
      v19 = v20;
    }

    else
    {
      v19 = v3;
    }

    sub_1DB30C340(v19, v4, 0);
  }
}

void sub_1DB3DD13C(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1DB3E2FCC(v3, 0);
    v4 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    sub_1DB30C3C4(v3, 0);
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1ECC44FD0;
      do
      {
        sub_1DB30C4B8(v6, v26, v7, &qword_1DB50F1D0);
        sub_1DB30C4B8(v26, v23, v7, &qword_1DB50F1D0);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v26, v7, &qword_1DB50F1D0);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1DB2FEA0C(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E31BC, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v26, v10, &qword_1DB50F1D0);
          __swift_destroy_boxed_opaque_existential_0(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB30C3C4(v18, 0);
  }
}

void sub_1DB3DD3E0(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BE0, &unk_1DB518FC0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v9, v7, &unk_1ECC42BE0, &unk_1DB518FC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v7, &unk_1ECC42BE0, &unk_1DB518FC0);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1DB30C2D8(v4, v1 + v9, &unk_1ECC42BE0, &unk_1DB518FC0);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1DB30C4B8(v15, v37, qword_1ECC453B0, &qword_1DB50F720);
        sub_1DB30C4B8(v37, v32, qword_1ECC453B0, &qword_1DB50F720);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v37, qword_1ECC453B0, &qword_1DB50F720);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1DB2FEA0C(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1DB3E31BC, v23, v21, v22);

          sub_1DB30623C(v37, qword_1ECC453B0, &qword_1DB50F720);
          __swift_destroy_boxed_opaque_existential_0(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1DB3DD7A0(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v9, v7, &unk_1ECC42BD0, &unk_1DB518FB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v7, &unk_1ECC42BD0, &unk_1DB518FB0);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1DB30C2D8(v4, v1 + v9, &unk_1ECC42BD0, &unk_1DB518FB0);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1DB30C4B8(v15, v37, &unk_1ECC453A0, &unk_1DB50F710);
        sub_1DB30C4B8(v37, v32, &unk_1ECC453A0, &unk_1DB50F710);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v37, &unk_1ECC453A0, &unk_1DB50F710);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1DB2FEA0C(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1DB3E31BC, v23, v21, v22);

          sub_1DB30623C(v37, &unk_1ECC453A0, &unk_1DB50F710);
          __swift_destroy_boxed_opaque_existential_0(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1DB3DDB60(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &qword_1ECC428D0;
      do
      {
        sub_1DB30C4B8(v6, v26, v7, &qword_1DB50F350);
        sub_1DB30C4B8(v26, v23, v7, &qword_1DB50F350);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v26, v7, &qword_1DB50F350);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1DB2FEA0C(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E31BC, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v26, v10, &qword_1DB50F350);
          __swift_destroy_boxed_opaque_existential_0(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB3E30AC(v18, 0, MEMORY[0x1E69E7D60]);
  }
}

void sub_1DB3DDDFC(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1DB3E2FF0(v3, 0);
    v4 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    sub_1DB3E30AC(v3, 0, MEMORY[0x1E69E7D60]);
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &qword_1ECC428C0;
      do
      {
        sub_1DB30C4B8(v6, v26, v7, &unk_1DB50F6F0);
        sub_1DB30C4B8(v26, v23, v7, &unk_1DB50F6F0);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v26, v7, &unk_1DB50F6F0);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1DB2FEA0C(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E31BC, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v26, v10, &unk_1DB50F6F0);
          __swift_destroy_boxed_opaque_existential_0(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB3E30AC(v18, 0, MEMORY[0x1E69E7D60]);
  }
}

void sub_1DB3DE0F8(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BB0, &unk_1DB50F6C0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v9, v7, &unk_1ECC42BB0, &unk_1DB50F6C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v7, &unk_1ECC42BB0, &unk_1DB50F6C0);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1DB30C2D8(v4, v1 + v9, &unk_1ECC42BB0, &unk_1DB50F6C0);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1DB30C4B8(v15, v37, &qword_1ECC42870, &unk_1DB518F90);
        sub_1DB30C4B8(v37, v32, &qword_1ECC42870, &unk_1DB518F90);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v37, &qword_1ECC42870, &unk_1DB518F90);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1DB2FEA0C(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1DB3E31BC, v23, v21, v22);

          sub_1DB30623C(v37, &qword_1ECC42870, &unk_1DB518F90);
          __swift_destroy_boxed_opaque_existential_0(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1DB3DE4B8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v1 + 48) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 48))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 40);
    sub_1DB3E3028(v4, *(v1 + 32), v5, 0);
    v6 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 2;
    v20 = v5;
    v21 = v3;
    sub_1DB30C0D4(v4, v3, v5, 0);
    os_unfair_lock_unlock(v2 + 4);
    v22 = v4;
    v7 = v4[2];
    if (v7)
    {
      v8 = (v4 + 4);
      v9 = &qword_1ECC428A0;
      do
      {
        sub_1DB30C4B8(v8, v30, v9, &unk_1DB50F6E0);
        sub_1DB30C4B8(v30, v27, v9, &unk_1DB50F6E0);
        if (v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v10 = a1;
          v11 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v30, v9, &unk_1DB50F6E0);
        }

        else
        {

          v13 = v27[2];
          v12 = v27[3];
          sub_1DB2FEA0C(&v28, v24);
          v14 = v25;
          v15 = v26;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v16 = v9;
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v12;
          v17[4] = a1;
          v18 = *(v15 + 8);
          v19 = a1;

          v18(sub_1DB3E31BC, v17, v14, v15);

          v9 = v16;

          sub_1DB30623C(v30, v16, &unk_1DB50F6E0);
          __swift_destroy_boxed_opaque_existential_0(v24);
        }

        v8 += 80;
        --v7;
      }

      while (v7);
    }

    sub_1DB30C0D4(v22, v21, v20, 0);
  }
}

void sub_1DB3DE7B4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v23 = v9;
    v11 = v9[2];
    if (v11)
    {
      v12 = v23 + 32;
      v24 = a2;
      do
      {
        sub_1DB30C4B8(v12, v33, a2, a3);
        sub_1DB30C4B8(v33, v30, a2, a3);
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v33, a2, a3);
        }

        else
        {

          v15 = v30[2];
          v16 = v30[3];
          sub_1DB2FEA0C(&v31, v27);
          v18 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v24;

          sub_1DB30623C(v33, v24, a3);
          __swift_destroy_boxed_opaque_existential_0(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1DB30C3E8(v23, 0);
  }
}

void sub_1DB3DEA54(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v25, &unk_1ECC45000, &unk_1DB51A930);
  if (v26 == 3)
  {
    sub_1DB30623C(v25, &unk_1ECC45000, &unk_1DB51A930);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45000, &unk_1DB51A930);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1DB30C4B8(v6, v23, &unk_1ECC42B90, &qword_1DB50F290);
        sub_1DB30C4B8(v23, v20, &unk_1ECC42B90, &qword_1DB50F290);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v23, &unk_1ECC42B90, &qword_1DB50F290);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1DB2FEA0C(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1DB3E31BC, v13, v11, v12);

          sub_1DB30623C(v23, &unk_1ECC42B90, &qword_1DB50F290);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3DED44(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v25, &unk_1ECC45010, &unk_1DB51A940);
  if (v26 == 3)
  {
    sub_1DB30623C(v25, &unk_1ECC45010, &unk_1DB51A940);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45010, &unk_1DB51A940);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1DB30C4B8(v6, v23, &unk_1ECC42BA0, &qword_1DB50F2A0);
        sub_1DB30C4B8(v23, v20, &unk_1ECC42BA0, &qword_1DB50F2A0);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v23, &unk_1ECC42BA0, &qword_1DB50F2A0);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1DB2FEA0C(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1DB3E31BC, v13, v11, v12);

          sub_1DB30623C(v23, &unk_1ECC42BA0, &qword_1DB50F2A0);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3DF094(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v23 = v9;
    v11 = v9[2];
    if (v11)
    {
      v12 = v23 + 32;
      v24 = a2;
      do
      {
        sub_1DB30C4B8(v12, v33, a2, a3);
        sub_1DB30C4B8(v33, v30, a2, a3);
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v33, a2, a3);
        }

        else
        {

          v15 = v30[2];
          v16 = v30[3];
          sub_1DB2FEA0C(&v31, v27);
          v18 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v24;

          sub_1DB30623C(v33, v24, a3);
          __swift_destroy_boxed_opaque_existential_0(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1DB3E30AC(v23, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1DB3DF318(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45350, &unk_1DB518F60);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v9, v7, &unk_1ECC45350, &unk_1DB518F60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v7, &unk_1ECC45350, &unk_1DB518F60);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1DB30C2D8(v4, v1 + v9, &unk_1ECC45350, &unk_1DB518F60);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1DB30C4B8(v15, v37, &unk_1ECC42B50, &qword_1DB50F240);
        sub_1DB30C4B8(v37, v32, &unk_1ECC42B50, &qword_1DB50F240);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v37, &unk_1ECC42B50, &qword_1DB50F240);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1DB2FEA0C(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1DB3E31BC, v23, v21, v22);

          sub_1DB30623C(v37, &unk_1ECC42B50, &qword_1DB50F240);
          __swift_destroy_boxed_opaque_existential_0(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1DB3DF6D8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v25, &unk_1ECC45370, &unk_1DB518F80);
  if (v26 == 3)
  {
    sub_1DB30623C(v25, &unk_1ECC45370, &unk_1DB518F80);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45370, &unk_1DB518F80);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1DB30C4B8(v6, v23, &unk_1ECC42B70, &qword_1DB50F260);
        sub_1DB30C4B8(v23, v20, &unk_1ECC42B70, &qword_1DB50F260);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v23, &unk_1ECC42B70, &qword_1DB50F260);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1DB2FEA0C(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1DB3E31BC, v13, v11, v12);

          sub_1DB30623C(v23, &unk_1ECC42B70, &qword_1DB50F260);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3DF9C8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v25, &unk_1ECC45360, &unk_1DB518F70);
  if (v26 == 3)
  {
    sub_1DB30623C(v25, &unk_1ECC45360, &unk_1DB518F70);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45360, &unk_1DB518F70);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1DB30C4B8(v6, v23, &unk_1ECC42B60, &qword_1DB50F250);
        sub_1DB30C4B8(v23, v20, &unk_1ECC42B60, &qword_1DB50F250);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v23, &unk_1ECC42B60, &qword_1DB50F250);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1DB2FEA0C(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1DB3E31BC, v13, v11, v12);

          sub_1DB30623C(v23, &unk_1ECC42B60, &qword_1DB50F250);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3DFCB8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &qword_1ECC429E0;
      do
      {
        sub_1DB30C4B8(v6, v26, v7, &qword_1DB50F498);
        sub_1DB30C4B8(v26, v23, v7, &qword_1DB50F498);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v26, v7, &qword_1DB50F498);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1DB2FEA0C(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E31BC, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v26, v10, &qword_1DB50F498);
          __swift_destroy_boxed_opaque_existential_0(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB30C3C4(v18, 0);
  }
}

void sub_1DB3DFF70(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  if (*(v1 + 32))
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  *(v1 + 32) = 2;
  v4 = a1;
  os_unfair_lock_unlock(v2 + 4);
  v5 = v3[2];
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 4);
    v8 = &qword_1DB5142D0;
    v19 = v3;
    while (v6 < v5)
    {
      sub_1DB30C4B8(v7, v27, &qword_1ECC42840, v8);
      sub_1DB30C4B8(v27, v24, &qword_1ECC42840, v8);
      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
        swift_allocError();
        *v9 = a1;
        v10 = a1;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v11 = v24[2];
        v12 = v24[3];
        sub_1DB2FEA0C(&v25, v21);
        v13 = v22;
        v14 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v15 = swift_allocObject();
        v15[2] = v11;
        v15[3] = v12;
        v15[4] = a1;
        v16 = v8;
        v17 = *(v14 + 8);
        v18 = a1;

        v17(sub_1DB3E31BC, v15, v13, v14);
        v8 = v16;
        v3 = v19;

        __swift_destroy_boxed_opaque_existential_0(v21);
      }

      ++v6;
      sub_1DB30623C(v27, &qword_1ECC42840, v8);
      v5 = v3[2];
      v7 += 80;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1DB3E30AC(v3, 0, MEMORY[0x1E69E7CF8]);
}

void sub_1DB3E0244(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
    return;
  }

  if (*(v5 + 32))
  {
    goto LABEL_14;
  }

  v9 = *(v5 + 24);
  *(v5 + 24) = a1;
  *(v5 + 32) = 2;
  v10 = a1;
  os_unfair_lock_unlock(v8 + 4);
  v11 = v9[2];
  if (v11)
  {
    v12 = 0;
    v13 = (v9 + 4);
    v24 = v9;
    v25 = a3;
    while (v12 < v11)
    {
      sub_1DB30C4B8(v13, v34, a2, a3);
      sub_1DB30C4B8(v34, v31, a2, a3);
      if (v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
        swift_allocError();
        *v14 = a1;
        v15 = a1;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v16 = v31[2];
        v17 = v31[3];
        sub_1DB2FEA0C(&v32, v28);
        v19 = v29;
        v18 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v20 = swift_allocObject();
        v20[2] = v16;
        v20[3] = v17;
        v20[4] = a1;
        v21 = a2;
        v22 = *(v18 + 8);
        v23 = a1;

        v22(a5, v20, v19, v18);
        a2 = v21;
        v9 = v24;
        a3 = v25;

        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      ++v12;
      sub_1DB30623C(v34, a2, a3);
      v11 = v9[2];
      v13 += 80;
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1DB30C3E8(v9, 0);
}

void sub_1DB3E04B4(void *a1)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45340, &unk_1DB518F50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v28 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v9, v7, &unk_1ECC45340, &unk_1DB518F50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v7, &unk_1ECC45340, &unk_1DB518F50);
    os_unfair_lock_unlock(v8 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  v11 = *v7;
  v12 = v30;
  *v4 = v30;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v13 = v12;
  sub_1DB30C2D8(v4, v1 + v9, &unk_1ECC45340, &unk_1DB518F50);
  swift_endAccess();
  os_unfair_lock_unlock(v8 + 4);
  v14 = *(v11 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v11 + 32;
    v29 = v11;
    while (v15 < v14)
    {
      sub_1DB30C4B8(v16, v39, &unk_1ECC42B30, &qword_1DB50F1E0);
      sub_1DB30C4B8(v39, v34, &unk_1ECC42B30, &qword_1DB50F1E0);
      if (v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
        swift_allocError();
        v17 = v30;
        *v18 = v30;
        v19 = v17;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v20 = v35;
        v21 = v36;
        sub_1DB2FEA0C(&v37, v31);
        v22 = v32;
        v23 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v24 = swift_allocObject();
        v24[2] = v20;
        v24[3] = v21;
        v25 = v30;
        v24[4] = v30;
        v26 = *(v23 + 8);
        v27 = v25;

        v26(sub_1DB3E31BC, v24, v22, v23);
        v11 = v29;

        __swift_destroy_boxed_opaque_existential_0(v31);
      }

      ++v15;
      sub_1DB30623C(v39, &unk_1ECC42B30, &qword_1DB50F1E0);
      v14 = *(v11 + 16);
      v16 += 80;
      if (v15 == v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
}

uint64_t sub_1DB3E08A8(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = result + 32; ; i += 40)
  {
    sub_1DB30C420(i, &v24);
    v6 = v24;
    sub_1DB300B14(&v25, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    v21 = *v3;
    *v3 = 0x8000000000000000;
    v9 = sub_1DB30EE50(v6);
    v11 = v8[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      sub_1DB31A6AC(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_1DB30EE50(v6);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v17 = v21;
      if (v15)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v20 = v9;
    sub_1DB311D10();
    v9 = v20;
    v17 = v21;
    if (v15)
    {
LABEL_3:
      v5 = 32 * v9;
      sub_1DB30C200((v17[7] + 32 * v9), v23);
      sub_1DB30C200(v22, (v17[7] + v5));
      goto LABEL_4;
    }

LABEL_11:
    v17[(v9 >> 6) + 8] |= 1 << v9;
    *(v17[6] + 8 * v9) = v6;
    sub_1DB30C200(v22, (v17[7] + 32 * v9));
    v18 = v17[2];
    v13 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v13)
    {
      goto LABEL_17;
    }

    v17[2] = v19;
    memset(v23, 0, sizeof(v23));
LABEL_4:
    *v3 = v17;
    sub_1DB30623C(v23, &qword_1ECC426B0, &qword_1DB50EEB0);
    result = sub_1DB30BF1C(&v24);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB3E0A84()
{
  v8 = sub_1DB50AFA0();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1DB357BD4();
  sub_1DB50A430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448E8, &unk_1DB518F40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  sub_1DB50AF70();
  v9 = v5;
  sub_1DB35A9C4(&qword_1EE30C810, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400, MEMORY[0x1E69E6328]);
  sub_1DB50B240();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v8);
  result = sub_1DB50AFD0();
  qword_1ECC67968 = result;
  return result;
}

void sub_1DB3E0D64(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_1DB357BD4();
  sub_1DB50AF90();
  dispatch_group_leave(a4);
}

unint64_t sub_1DB3E0DE0(unint64_t result, uint64_t a2, void (*a3)(uint64_t (*)(), uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 + 16 * result;
  v6 = swift_allocObject();
  *(v6 + 16) = *(v5 + 32);

  a3(sub_1DB3E2E28, v6);
}

uint64_t sub_1DB3E0E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DB3E2F28;
  *(v15 + 24) = v14;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = sub_1DB302884(0, a5[2] + 1, 1, a5);
  }

  v17 = a5[2];
  v16 = a5[3];
  if (v17 >= v16 >> 1)
  {
    a5 = sub_1DB302884((v16 > 1), v17 + 1, 1, a5);
  }

  a5[2] = v17 + 1;
  v18 = &a5[2 * v17];
  v18[4] = sub_1DB3E2F34;
  v18[5] = v15;
  a7[3] = &type metadata for StandaloneObjectGraphBuilder;
  a7[4] = &off_1F56F8D18;

  *a7 = a4;
  a7[1] = a5;
  return result;
}

char *sub_1DB3E0FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = a5;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a1;
  v7 = type metadata accessor for Promise(0, a5, a3, a4);
  sub_1DB40CCB4(sub_1DB3E2F68, v11, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a4;
  v12[3] = &type metadata for SyncTaskScheduler;
  v12[4] = &protocol witness table for SyncTaskScheduler;
  v9 = Promise.map<A>(on:_:)(v12, sub_1DB3E2FB0, v8, &type metadata for Dependency);

  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

uint64_t sub_1DB3E10C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  return Dependency.init<A>(satisfying:with:)(a2, v9, a3, a4);
}

uint64_t sub_1DB3E11A4(__darwin_time_t a1, uint64_t a2)
{
  v74 = a1;
  v3 = sub_1DB50A400();
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DB50A440();
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50AFA0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  if (*(a2 + 16))
  {
    v63 = *(a2 + 16);
    v69 = v7;
    v70 = v5;
    v68 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
    v14 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = MEMORY[0x1E69E7CC0];
    *(v14 + 16) = v15;
    *(v14 + 24) = v16;
    v67 = v14;
    *(v14 + 32) = 0;
    v17 = sub_1DB357BD4();
    v75 = "ors array required";
    (*(v11 + 104))(v13, *MEMORY[0x1E69E8098], v10);
    _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    aBlock.tv_sec = v16;
    sub_1DB35A9C4(&qword_1EE30C810, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
    v18 = v16;
    sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400, MEMORY[0x1E69E6328]);
    sub_1DB50B240();
    v66 = v9;
    v62 = v17;
    v19 = sub_1DB50AFD0();
    v20 = dispatch_group_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F90, &qword_1DB518F28);
    v21 = swift_allocObject();
    *(v21 + 24) = 0;
    *(v21 + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F98, &qword_1DB518F30);
    v22 = swift_allocObject();
    *(v22 + 24) = 0;
    *(v22 + 16) = v16;
    if (qword_1EE30EAE0 != -1)
    {
      swift_once();
    }

    v23 = v74;
    aBlock.tv_sec = v74;
    type metadata accessor for BaseObjectGraph();

    swift_task_localValuePush();
    sub_1DB4C1C98(*(v23 + 16), &aBlock);
    swift_task_localValuePop();
    if (aBlock.tv_sec)
    {
      tv_sec = aBlock.tv_sec;
    }

    else
    {
      tv_sec = v16;
    }

    type metadata accessor for _AsyncObjectGraphMetricsBox();
    v25 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44FA0, &qword_1DB518F38);
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 16) = tv_sec;
    *(v25 + 16) = v26;
    v27 = swift_allocObject();
    v27[2] = v20;
    v27[3] = v23;
    v27[4] = v25;
    v27[5] = v21;
    v27[6] = v22;
    v27[7] = v19;
    v28 = v71;
    v65 = v19;
    v64 = v20;
    v75 = v25;
    if (v63 == 1)
    {
      v29 = *(v71 + 32);

      v30 = v20;

      v31 = v19;
      dispatch_group_enter(v30);
      static MonotonicTime.now.getter(&aBlock);
      v32 = v22;
      v34 = aBlock.tv_sec;
      tv_nsec = aBlock.tv_nsec;
      aBlock.tv_sec = v23;
      v29(v82, &aBlock);

      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = tv_nsec;
      v35[4] = v75;
      v35[5] = v21;
      v35[6] = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      *(v36 + 24) = v30;
      v82[3] = v62;
      v82[4] = &protocol witness table for OS_dispatch_queue;
      v37 = v31;
      v82[0] = v31;
      aBlock.tv_sec = sub_1DB3E2DDC;
      aBlock.tv_nsec = v35;
      v77 = sub_1DB3E2DE0;
      v78 = v36;
      sub_1DB30BE90(v82, &v79);
      v81 = 0;
      v38 = v30;
      v39 = v75;
      v40 = v38;

      v41 = v32;
      v28 = v71;

      v42 = v37;

      sub_1DB307EB8(&aBlock);

      sub_1DB30623C(&aBlock, &qword_1ECC42700, &unk_1DB50F690);
      __swift_destroy_boxed_opaque_existential_0(v82);

      v43 = v68;
      v44 = v23;
      v45 = v66;
      v46 = &property descriptor for MetricsData.excludingFields;
    }

    else
    {

      v49 = v20;

      v63 = v21;

      v62 = v22;

      v50 = v19;

      dispatch_group_enter(v49);
      v45 = v66;
      if (qword_1ECC420F8 != -1)
      {
        swift_once();
      }

      v61[1] = qword_1ECC67968;
      v51 = swift_allocObject();
      v51[2] = v28;
      v51[3] = sub_1DB3E25E8;
      v51[4] = v27;
      v51[5] = v49;
      v79 = sub_1DB3E2E10;
      v80 = v51;
      aBlock.tv_sec = MEMORY[0x1E69E9820];
      aBlock.tv_nsec = 1107296256;
      v77 = sub_1DB3330B0;
      v78 = &block_descriptor_15;
      v52 = _Block_copy(&aBlock);
      v53 = v49;

      _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      v82[0] = v18;
      sub_1DB35A9C4(qword_1EE30E380, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
      sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0, MEMORY[0x1E69E6328]);
      v54 = v70;
      v43 = v68;
      sub_1DB50B240();
      MEMORY[0x1E12864B0](0, v45, v54, v52);
      _Block_release(v52);
      v46 = &property descriptor for MetricsData.excludingFields;

      (*(v73 + 8))(v54, v43);
      (*(v72 + 8))(v45, v69);

      v44 = v74;
      v39 = v75;
      v21 = v63;
      v41 = v62;
    }

    v55 = swift_allocObject();
    v55[2] = v41;
    v55[3] = v21;
    v55[4] = v39;
    v55[5] = v44;
    v47 = v67;
    v55[6] = v28;
    v55[7] = v47;
    v79 = sub_1DB3E2DE8;
    v80 = v55;
    aBlock.tv_sec = MEMORY[0x1E69E9820];
    aBlock.tv_nsec = v46[241];
    v77 = sub_1DB3330B0;
    v78 = &block_descriptor_10;
    v56 = _Block_copy(&aBlock);

    _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v82[0] = MEMORY[0x1E69E7CC0];
    sub_1DB35A9C4(qword_1EE30E380, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
    sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0, MEMORY[0x1E69E6328]);
    v57 = v70;
    sub_1DB50B240();
    v58 = v65;
    v59 = v64;
    sub_1DB50AF60();
    _Block_release(v56);

    (*(v73 + 8))(v57, v43);
    (*(v72 + 8))(v45, v69);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
    v47 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v47 + 16) = v48;
    *(v47 + 24) = v74;
    *(v47 + 32) = 1;
  }

  return v47;
}

uint64_t sub_1DB3E1D5C(uint64_t (*a1)(uint64_t), int a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  dispatch_group_enter(group);
  static MonotonicTime.now.getter(&v22);
  tv_sec = v22.tv_sec;
  tv_nsec = v22.tv_nsec;
  a1(a4);
  v17 = swift_allocObject();
  v17[2] = tv_sec;
  v17[3] = tv_nsec;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = group;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = group;
  v26[3] = sub_1DB357BD4();
  v26[4] = &protocol witness table for OS_dispatch_queue;
  v26[0] = a8;
  v22.tv_sec = sub_1DB3E31B4;
  v22.tv_nsec = v17;
  v23 = sub_1DB3E31B8;
  v24 = v18;
  sub_1DB30BE90(v26, v25);
  v25[40] = 0;
  v19 = group;

  v20 = a8;

  sub_1DB307EB8(&v22);

  sub_1DB30623C(&v22, &qword_1ECC42700, &unk_1DB50F690);
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

void sub_1DB3E1EF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  static MonotonicTime.now.getter(v24);
  tv_sec = v24[0].tv_sec;
  tv_nsec = v24[0].tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v14 = tv_nsec / *&qword_1EE30ED50 + tv_sec - (a3 / *&qword_1EE30ED50 + a2);
  v15 = *(a4 + 16);
  os_unfair_lock_lock(v15 + 6);
  sub_1DB3BB9D4(a1, v14);
  os_unfair_lock_unlock(v15 + 6);
  os_unfair_lock_lock((a5 + 24));
  sub_1DB30C420(a1, v24);
  v16 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = *(v16 + 2);

    *(a5 + 16) = sub_1DB303748(0, v23 + 1, 1, v16);

    v16 = *(a5 + 16);
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1DB303748((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[40 * v19];
  v21 = v24[0];
  v22 = v24[1];
  v20[4].tv_sec = v25;
  v20[2] = v21;
  v20[3] = v22;
  *(a5 + 16) = v16;
  os_unfair_lock_unlock((a5 + 24));
  dispatch_group_leave(a6);
}

void sub_1DB3E2094(uint64_t a1, os_unfair_lock_s *a2, NSObject *a3)
{
  os_unfair_lock_lock(a2 + 6);
  sub_1DB3E2E74(&a2[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a2 + 6);
  dispatch_group_leave(a3);
}

id sub_1DB3E20F4(void *a1, void *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB302A34(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1DB302A34((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v4[v6 + 4] = a2;
  *a1 = v4;
  return a2;
}

void sub_1DB3E21A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 24));
  v8 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  v9 = *(v8 + 16);

  if (v9)
  {
    os_unfair_lock_lock((a1 + 24));
    v10 = *(a1 + 16);

    os_unfair_lock_unlock((a1 + 24));
    sub_1DB3516A0();
    v11 = swift_allocError();
    *v12 = v10;
    sub_1DB3DCBD0(v11);
  }

  else
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1DB3E2344((a2 + 16), a3);
    os_unfair_lock_unlock((a2 + 24));
    os_unfair_lock_lock((a2 + 24));
    v13 = *(a2 + 16);

    os_unfair_lock_unlock((a2 + 24));
    v14 = sub_1DB3E25F8(v13);

    swift_beginAccess();
    v16 = *(a4 + 24);
    v15 = *(a4 + 32);
    swift_beginAccess();
    *(v14 + 24) = v16;
    *(v14 + 32) = v15;

    sub_1DB3F8328(v14);
  }
}

__n128 sub_1DB3E2344(char **a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1DB303748(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB303748((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[40 * v7];
  v8[2].n128_u64[0] = &type metadata for AsyncObjectGraphMetrics;
  v8[2].n128_u64[1] = v4;
  result = v10;
  v8[3] = v10;
  v8[4].n128_u64[0] = &type metadata for AsyncObjectGraphMetrics;
  *a1 = v5;
  return result;
}

uint64_t sub_1DB3E2440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DB30C420(v2, v10);
      v4 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v4);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1DB302404(0, *(v3 + 2) + 1, 1, v3);
      }

      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        v3 = sub_1DB302404((v5 > 1), v6 + 1, 1, v3);
      }

      sub_1DB30BF1C(v10);
      *(v3 + 2) = v6 + 1;
      v7 = &v3[16 * v6];
      *(v7 + 4) = 60;
      *(v7 + 5) = 0xE100000000000000;
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70, MEMORY[0x1E69E6310]);
  v8 = sub_1DB50A5E0();

  return v8;
}

uint64_t sub_1DB3E25F8(uint64_t a1)
{
  v3 = *v1;
  v8 = v1[2];

  sub_1DB3E08A8(a1);
  swift_beginAccess();
  v6 = v1[3];
  v7 = v1[4];

  MEMORY[0x1E1285C70](1528834848, 0xE400000000000000);
  v4 = sub_1DB3E2440(a1);
  MEMORY[0x1E1285C70](v4);

  MEMORY[0x1E1285C70](93, 0xE100000000000000);
  return (*(v3 + 96))(v6, v7, &v8);
}

uint64_t sub_1DB3E274C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1DB30C4B8(v5, v21, a2, a3);
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    swift_allocError();
    *v8 = a1;
    v9 = a1;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    v12 = v21[2];
    v11 = v21[3];
    sub_1DB2FEA0C(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = a1;
    v16 = *(v14 + 8);

    v17 = a1;
    v16(a5, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB3E2E28(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB3E2F34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DB3E2F68@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))(*(v1 + 40));
  *a1 = result;
  return result;
}

id sub_1DB3E2FCC(id result, char a2)
{
  if (a2 == 3 || a2 == 2)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

id sub_1DB3E2FF0(id result, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
      return result;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  return result;
}

id sub_1DB3E3028(id result, unint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {

      return result;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1DB30C1AC(result, a2);
      result = a3;

      return result;
    }
  }

  else
  {
  }

  return result;
}

void sub_1DB3E30AC(void *a1, unsigned __int8 a2, void (*a3)(void *))
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      a3(a1);
    }
  }

  else
  {
  }
}

id sub_1DB3E30E8(id result, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {

      return result;
    }
  }

  else
  {
    if (!a3)
    {
    }

    if (a3 == 1)
    {
    }
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 ClosureAction.init(actionMetrics:body:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t ClosureAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 ClosureAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_1DB3E326C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_1DB3E3374;
  *(a2 + 24) = v5;
  return result;
}

uint64_t ClosureAction.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ClosureAction.body.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

id sub_1DB3E33EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    v6 = *(a1 + 32);
    *a3 = v6;
    *(a3 + 8) = 1;

    return v6;
  }

  else
  {
    if (v4)
    {
      sub_1DB32E3B0();
      v9 = swift_allocError();
      *v10 = a1;
      *a3 = v9;
      *(a3 + 8) = 1;
    }

    else
    {
      *a3 = *a2;
      *(a3 + 8) = 0;
    }
  }
}

uint64_t sub_1DB3E3498(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v5, a1);
  if (EnumCaseMultiPayload == 1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t _s7JetCore14DaemonResponseO3getxyAA0cD12CodableErrorVYKF@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v8);
  }

  v11 = *v8;
  v12 = v8[1];
  v13 = v8[2];
  v14 = v8[3];
  v15 = v8[4];
  *a2 = *v8;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = v14;
  v16[5] = v15;
  sub_1DB36562C();
  return swift_willThrowTypedImpl();
}

id sub_1DB3E3700()
{
  if (!*(v0 + 8))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v3;
  sub_1DB36562C();
  v4 = sub_1DB50BC80();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB351638(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1DB50A620();
  v8 = sub_1DB50A490();

  v9 = [v6 initWithDomain:v7 code:v1 userInfo:v8];

  return v9;
}

uint64_t sub_1DB3E3868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45068, &qword_1DB519748);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3E6124();
  sub_1DB50BE40();
  v13 = 0;
  sub_1DB50B860();
  if (!v4)
  {
    v12 = 1;
    sub_1DB50B890();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DB3E39FC()
{
  if (*v0)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1DB3E3A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
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

uint64_t sub_1DB3E3B04(uint64_t a1)
{
  v2 = sub_1DB3E6124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3E3B40(uint64_t a1)
{
  v2 = sub_1DB3E6124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB3E3B7C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DB3E6178(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t DaemonResponseCodableError.errorDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DaemonResponseCodableError.errorDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t DaemonResponseCodableError.description.getter()
{
  v1 = v0[1];
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  v4 = *v0;

  sub_1DB50B320();

  MEMORY[0x1E1285C70](v2, v3);

  MEMORY[0x1E1285C70](34, 0xE100000000000000);
  if (v1)
  {
    sub_1DB50B320();

    MEMORY[0x1E1285C70](v4, v1);
    MEMORY[0x1E1285C70](0x3A65646F63202C22, 0xE900000000000020);
    v5 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v5);

    MEMORY[0x1E1285C70](0x6E69616D6F64202CLL, 0xEB0000000022203ALL);
  }

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return 0xD00000000000002ELL;
}

uint64_t sub_1DB3E3DF0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x49726F727245736ELL;
  }
}

uint64_t sub_1DB3E3E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49726F727245736ELL && a2 == 0xEB000000006F666ELL;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB52D070 == a2)
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

uint64_t sub_1DB3E3F20(uint64_t a1)
{
  v2 = sub_1DB3E4140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3E3F5C(uint64_t a1)
{
  v2 = sub_1DB3E4140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonResponseCodableError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45040, &qword_1DB519050);
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - v4;
  v6 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v12[1] = v1[4];
  v12[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3E4140();

  sub_1DB50BE40();
  v14 = v6;
  v15 = v7;
  v16 = v9;
  v17 = 0;
  sub_1DB3E4194();
  v10 = v12[3];
  sub_1DB50B830();

  if (!v10)
  {
    LOBYTE(v14) = 1;
    sub_1DB50B800();
  }

  return (*(v13 + 8))(v5, v3);
}

unint64_t sub_1DB3E4140()
{
  result = qword_1EE30CAD8;
  if (!qword_1EE30CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAD8);
  }

  return result;
}

unint64_t sub_1DB3E4194()
{
  result = qword_1EE30CAA8;
  if (!qword_1EE30CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAA8);
  }

  return result;
}

uint64_t DaemonResponseCodableError.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45048, &unk_1DB519058);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3E4140();
  sub_1DB50BDF0();
  if (!v2)
  {
    v21 = 0;
    sub_1DB3E4410();
    sub_1DB50B710();
    v9 = v19;
    v16 = v20;
    v17 = v18;
    LOBYTE(v18) = 1;
    v11 = sub_1DB50B6E0();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    *a2 = v17;
    a2[1] = v9;
    a2[2] = v14;
    a2[3] = v11;
    a2[4] = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB3E4410()
{
  result = qword_1ECC45050;
  if (!qword_1ECC45050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45050);
  }

  return result;
}

uint64_t sub_1DB3E4464()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DaemonResponse.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  swift_getErrorValue();
  v10 = sub_1DB50BC80();
  v12 = v11;

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = v10;
  a5[4] = v12;
  type metadata accessor for DaemonResponse(0, a2, a3, a4);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.init(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a1;
  a6[4] = a2;
  type metadata accessor for DaemonResponse(0, a3, a4, a5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.init(nsError:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = [a1 domain];
  v10 = sub_1DB50A650();
  v12 = v11;

  v13 = [a1 code];
  v14 = [a1 localizedDescription];
  v15 = sub_1DB50A650();
  v17 = v16;

  *a5 = v10;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v15;
  a5[4] = v17;
  type metadata accessor for DaemonResponse(0, a2, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

double DaemonResponse.init<>(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1 & 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 1;
  return result;
}

uint64_t DaemonResponse.init<>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_1DB3E471C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DB3E4820(char a1)
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](a1 & 1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3E4868(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t sub_1DB3E4898(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DB50BA30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DB3E4948(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB3E47F8(v3, *v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3E49A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB3E471C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB3E49DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB3A5E1C();
  *a1 = result;
  return result;
}

uint64_t sub_1DB3E4A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB3E4A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB3E4AC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB34AABC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DB3E4AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB3E4B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB3E4BA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB3E4BF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DaemonResponse.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v41 = type metadata accessor for DaemonResponse.SuccessCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1DB50B8C0();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = v34 - v8;
  v42 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v38 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DaemonResponse.FailureCodingKeys(255, v4, v5, v6);
  v12 = swift_getWitnessTable();
  v34[2] = v11;
  v34[1] = v12;
  v13 = sub_1DB50B8C0();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v35 = v34 - v14;
  v15 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v6;
  *&v46 = v4;
  type metadata accessor for DaemonResponse.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v19 = sub_1DB50B8C0();
  v48 = *(v19 - 8);
  v49 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v34 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE40();
  (*(v15 + 16))(v18, v47, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v42;
    v23 = v38;
    v24 = v46;
    (*(v42 + 32))(v38, v18, v46);
    LOBYTE(v50) = 1;
    v25 = v40;
    v26 = v49;
    sub_1DB50B7E0();
    v27 = v44;
    sub_1DB50B8A0();
    (*(v43 + 8))(v25, v27);
    (*(v22 + 8))(v23, v24);
    return (*(v48 + 8))(v21, v26);
  }

  else
  {
    v29 = *(v18 + 4);
    LOBYTE(v50) = 0;
    v30 = *v18;
    v46 = *(v18 + 1);
    v47 = v30;
    v31 = v35;
    v32 = v49;
    sub_1DB50B7E0();
    v50 = v47;
    v51 = v46;
    v52 = v29;
    sub_1DB3E51F4();
    v33 = v37;
    sub_1DB50B8A0();
    (*(v36 + 8))(v31, v33);
    (*(v48 + 8))(v21, v32);
  }
}

unint64_t sub_1DB3E51F4()
{
  result = qword_1EE30CAA0;
  if (!qword_1EE30CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAA0);
  }

  return result;
}

uint64_t DaemonResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a5;
  v9 = type metadata accessor for DaemonResponse.SuccessCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v69 = v9;
  v62 = sub_1DB50B7C0();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v70 = &v57 - v10;
  v11 = type metadata accessor for DaemonResponse.FailureCodingKeys(255, a2, a3, a4);
  v12 = swift_getWitnessTable();
  v66 = v11;
  v65 = v12;
  v60 = sub_1DB50B7C0();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v57 - v13;
  type metadata accessor for DaemonResponse.CodingKeys(255, a2, a3, a4);
  v75 = swift_getWitnessTable();
  v14 = sub_1DB50B7C0();
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v63 = a2;
  v64 = a3;
  v17 = type metadata accessor for DaemonResponse(0, a2, a3, a4);
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v26 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v76;
  sub_1DB50BDF0();
  if (!v27)
  {
    v76 = v19;
    v58 = v22;
    v75 = v25;
    v28 = v74;
    v29 = v16;
    *&v77 = sub_1DB50B7A0();
    sub_1DB50AA60();
    swift_getWitnessTable();
    *&v80 = sub_1DB50B220();
    *(&v80 + 1) = v30;
    *&v81 = v31;
    *(&v81 + 1) = v32;
    sub_1DB50B210();
    swift_getWitnessTable();
    sub_1DB50AE50();
    v33 = v77;
    if (v77 == 2 || (v57 = v80, v77 = v80, v78 = v81, (sub_1DB50AE70() & 1) == 0))
    {
      v39 = sub_1DB50B3E0();
      swift_allocError();
      v40 = v28;
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
      *v42 = v17;
      sub_1DB50B6B0();
      sub_1DB50B3C0();
      (*(*(v39 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v73 + 8))(v16, v40);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        LOBYTE(v77) = 1;
        v34 = v70;
        v35 = v16;
        sub_1DB50B6A0();
        v36 = v71;
        v37 = v72;
        v38 = v73;
        v48 = v34;
        v49 = v76;
        v50 = v62;
        sub_1DB50B780();
        (*(v61 + 8))(v48, v50);
        (*(v38 + 8))(v35, v74);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v55 = *(v37 + 32);
        v56 = v75;
        v55(v75, v49, v17);
      }

      else
      {
        LOBYTE(v77) = 0;
        v43 = v67;
        v44 = v29;
        sub_1DB50B6A0();
        v46 = v72;
        v45 = v73;
        sub_1DB3E5A64();
        v47 = v60;
        sub_1DB50B780();
        (*(v59 + 8))(v43, v47);
        (*(v45 + 8))(v44, v28);
        swift_unknownObjectRelease();
        v52 = v79;
        v53 = v78;
        v54 = v58;
        *v58 = v77;
        v54[1] = v53;
        *(v54 + 4) = v52;
        swift_storeEnumTagMultiPayload();
        v55 = *(v46 + 32);
        v56 = v75;
        v55(v75, v54, v17);
        v36 = v71;
      }

      v55(v36, v56, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v82);
}

unint64_t sub_1DB3E5A64()
{
  result = qword_1ECC45058;
  if (!qword_1ECC45058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45058);
  }

  return result;
}

uint64_t sub_1DB3E5AF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1DB3E5B54(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB3E5BC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB3E5C30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DB3E5D48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1DB3E5F24()
{
  result = qword_1ECC45060;
  if (!qword_1ECC45060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45060);
  }

  return result;
}

unint64_t sub_1DB3E6078()
{
  result = qword_1EE30CAC8;
  if (!qword_1EE30CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAC8);
  }

  return result;
}

unint64_t sub_1DB3E60D0()
{
  result = qword_1EE30CAD0;
  if (!qword_1EE30CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAD0);
  }

  return result;
}

unint64_t sub_1DB3E6124()
{
  result = qword_1EE30CAC0;
  if (!qword_1EE30CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAC0);
  }

  return result;
}

uint64_t sub_1DB3E6178(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45070, &unk_1DB519750);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3E6124();
  sub_1DB50BDF0();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1DB50B740();
    v9[14] = 1;
    sub_1DB50B770();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1DB3E6364()
{
  result = qword_1ECC45078[0];
  if (!qword_1ECC45078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC45078);
  }

  return result;
}

unint64_t sub_1DB3E63BC()
{
  result = qword_1EE30CAB0;
  if (!qword_1EE30CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAB0);
  }

  return result;
}

unint64_t sub_1DB3E6414()
{
  result = qword_1EE30CAB8;
  if (!qword_1EE30CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CAB8);
  }

  return result;
}

uint64_t sub_1DB3E648C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3E64FC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 3);
  v6 = sub_1DB50B120();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 2);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 8);
  v16 = sub_1DB50AA00();
  v17 = *(v2 + 16);
  if (v17 != v16)
  {
    v30 = a2;
    v21 = sub_1DB50A9F0();
    sub_1DB50A9B0();
    if (v21)
    {
      v22 = v34;
      (*(v35 + 16))(v34, v15 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v17, v12);
    }

    else
    {
      v29 = sub_1DB50B380();
      if (v13 != 8)
      {
        goto LABEL_13;
      }

      v36[0] = v29;
      v22 = v34;
      (*(v35 + 16))(v34, v36, v12);
      swift_unknownObjectRelease();
    }

    v23 = v30;
    if (!__OFADD__(v17, 1))
    {
      *(v2 + 16) = v17 + 1;
      sub_1DB50A590();
      v24 = v22;
      if ((*(v9 + 48))(v8, 1, v5) != 1)
      {
        v25 = *(v9 + 32);
        v26 = v33;
        v25(v33, v8, v5);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v28 = *(TupleTypeMetadata2 + 48);
        (*(v35 + 32))(v23, v24, v12);
        v25((v23 + v28), v26, v5);
        return (*(*(TupleTypeMetadata2 - 8) + 56))(v23, 0, 1, TupleTypeMetadata2);
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    (*(v31 + 8))(v8, v32);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000002ELL, 0x80000001DB52D0F0);
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](96, 0xE100000000000000);
    result = sub_1DB50B580();
    __break(1u);
    return result;
  }

  v18 = swift_getTupleTypeMetadata2();
  v19 = *(*(v18 - 8) + 56);

  return v19(a2, 1, 1, v18);
}

uint64_t sub_1DB3E69AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a3;
  v5 = *(a2 + 16);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v27 = a1;
  v28 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50A590();
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v16 = 1;
    v17 = v29;
    return (*(v13 + 56))(v17, v16, 1, v8);
  }

  v18 = v12;
  v19 = *(v13 + 32);
  v19(v28, v18, v8);
  v32 = *(v3 + 16);
  v20 = v5;
  sub_1DB50AA60();
  swift_getWitnessTable();
  v21 = v27;
  sub_1DB50AE80();
  if ((v31 & 1) == 0)
  {
    v22 = v25;
    sub_1DB50AA20();
    v23 = v26;
    (*(v26 + 8))(v22, v20);
    (*(v23 + 16))(v22, v21, v20);
    sub_1DB50AA10();
    v17 = v29;
    v19(v29, v28, v8);
    v16 = 0;
    return (*(v13 + 56))(v17, v16, 1, v8);
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB3E6D9C(char *a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = sub_1DB50B120();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v6 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 16);
  v24 = a1;
  v19(v13, a1, v7, v16);
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    v20 = *(v8 + 8);
    v20(v13, v7);
    sub_1DB3E7578(a2, a3, v10);
    (*(*(a3[2] - 8) + 8))(a2);
    v20(v24, v7);
    return (v20)(v10, v7);
  }

  else
  {
    (*(v14 + 32))(v18, v13, v6);
    sub_1DB3E7084(v18, a2, a3, v10);
    (*(*(a3[2] - 8) + 8))(a2);
    v22 = *(v8 + 8);
    v22(v24, v7);
    v22(v10, v7);
    return (*(v14 + 8))(v18, v6);
  }
}

uint64_t sub_1DB3E7084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v42 = a4;
  v7 = a3[2];
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v37 = sub_1DB50B120();
  v11 = *(v37 - 1);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v39 = &v34 - v22;
  (*(v16 + 16))(v19, a1, v10, v21);
  v35 = a3;
  sub_1DB50A540();
  v23 = v38;
  sub_1DB50A4D0();
  if ((*(v16 + 48))(v15, 1, v10) == 1)
  {
    v24 = *(v11 + 8);
    v25 = v15;
    v26 = v37;
    v24(v25, v37);
    v27 = sub_1DB50A510();
    if (v27 >= 1 && *v4 < v27)
    {
      v28 = v36;
      sub_1DB3E7944(v35, v36);
      v24(v28, v26);
    }

    (*(v40 + 16))(v41, v23, v7);
    sub_1DB50AA60();
    sub_1DB50AA10();
    v29 = 1;
    v30 = v42;
    return (*(v16 + 56))(v30, v29, 1, v10);
  }

  v37 = *(v16 + 32);
  (v37)(v39, v15, v10);
  v45 = v4[2];
  sub_1DB50AA60();
  swift_getWitnessTable();
  sub_1DB50AE80();
  if ((v44 & 1) == 0)
  {
    v31 = v41;
    sub_1DB50AA20();
    v32 = v40;
    (*(v40 + 8))(v31, v7);
    (*(v32 + 16))(v31, v23, v7);
    sub_1DB50AA10();
    v30 = v42;
    (v37)(v42, v39, v10);
    v29 = 0;
    return (*(v16 + 56))(v30, v29, 1, v10);
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB3E7578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a3;
  v4 = *(a2 + 16);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v16 = v27;
  sub_1DB50A540();
  v26 = a1;
  sub_1DB50A4C0();
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v17 = 1;
    v18 = v28;
    return (*(v12 + 56))(v18, v17, 1, v7);
  }

  v22 = *(v12 + 32);
  v22(v15, v11, v7);
  v31 = *(v16 + 16);
  v19 = v25;
  sub_1DB50AA60();
  swift_getWitnessTable();
  sub_1DB50AE80();
  if ((v30 & 1) == 0)
  {
    v20 = v23;
    sub_1DB50AA20();
    (*(v24 + 8))(v20, v19);
    v18 = v28;
    v22(v28, v15, v7);
    v17 = 0;
    return (*(v12 + 56))(v18, v17, 1, v7);
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB3E7944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[2];
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v2 + 16);
  sub_1DB50AA60();
  swift_getWitnessTable();
  if (sub_1DB50AE70())
  {
    return (*(*(a1[3] - 8) + 56))(a2, 1, 1);
  }

  swift_getWitnessTable();
  sub_1DB50AEA0();
  sub_1DB50A540();
  sub_1DB50A4C0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DB3E7AF8(uint64_t a1, void *a2)
{
  sub_1DB50A540();
  sub_1DB50A530();
  sub_1DB50AA60();
  return sub_1DB50AA50();
}

uint64_t sub_1DB3E7B64(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a2;
}

uint64_t sub_1DB3E7BA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DB3E7B64(a1, *(v2 + 8), *(v2 + 16));
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  return result;
}

uint64_t sub_1DB3E7C08(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB4ED3FC(v2, a1, a2);

  return v3;
}

uint64_t sub_1DB3E7C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MediaArtwork.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = &_s12_EmptySourceVN;
  v4 = &off_1EECE8048;
  return MediaArtwork.init(_:)(v2, a1);
}

uint64_t MediaArtwork.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43508, &qword_1DB5118D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v104 - v8;
  v10 = _s10_URLSourceVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  sub_1DB3171C0(a1, v110);
  v107[0] = v14;

  if ((sub_1DB34BF54(v110, v107) & 1) == 0)
  {

    *(a3 + 72) = &_s12_EmptySourceVN;
    *(a3 + 80) = &off_1EECE8048;
    sub_1DB30BE90(a3 + 48, v110);
    v31 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    *&v106 = (*(*(&v31 + 1) + 24))(v31, *(&v31 + 1));
    v33 = *(&v111 + 1);
    v32 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v34 = (*(v33 + 32))(v32, v33);
    v36 = v35;
    v37 = a1;
    v39 = *(&v111 + 1);
    v38 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v40 = (*(v39 + 40))(v38, v39);
    v41 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v42 = (*(*(&v41 + 1) + 48))(v41, *(&v41 + 1));
    v44 = v43;
    sub_1DB3151CC(v37);
    result = __swift_destroy_boxed_opaque_existential_0(v110);
    *a3 = v106;
    *(a3 + 8) = v34;
LABEL_12:
    *(a3 + 16) = v36 & 1;
    *(a3 + 24) = v40;
    goto LABEL_13;
  }

  sub_1DB3171C0(a1, v110);
  v107[0] = v14;

  sub_1DB34AE0C(v110, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {

    sub_1DB34CA28(v9, v13);
    *(a3 + 72) = v10;
    *(a3 + 80) = &off_1EECE7FA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a3 + 48));
    sub_1DB3EB58C(v13, boxed_opaque_existential_0);
    sub_1DB30BE90(a3 + 48, v110);
    v47 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    *&v106 = (*(*(&v47 + 1) + 24))(v47, *(&v47 + 1));
    v49 = *(&v111 + 1);
    v48 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v105 = (*(v49 + 32))(v48, v49);
    v36 = v50;
    v51 = a1;
    v53 = *(&v111 + 1);
    v52 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v40 = (*(v53 + 40))(v52, v53);
    v54 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v42 = (*(*(&v54 + 1) + 48))(v54, *(&v54 + 1));
    v44 = v55;
    sub_1DB3151CC(v51);
    sub_1DB3EB5F0(v13);
    result = __swift_destroy_boxed_opaque_existential_0(v110);
    v56 = v105;
    *a3 = v106;
    *(a3 + 8) = v56;
    goto LABEL_12;
  }

  sub_1DB30623C(v9, &qword_1ECC43508, &qword_1DB5118D0);
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v110);
  v15 = JSONObject.string.getter();
  v17 = v16;
  sub_1DB3151CC(v110);
  if (!v17)
  {
    sub_1DB3171C0(a1, v110);
    v107[0] = v14;
    v57 = sub_1DB34C02C(v110, v107);
    if (!v57)
    {
      sub_1DB315178();
      swift_allocError();
      v70 = MEMORY[0x1E69E7CC0];
      *v71 = &type metadata for MediaArtwork;
      v71[1] = v70;
      v71[2] = 0;
      v71[3] = 0;
      goto LABEL_19;
    }

    *(a3 + 72) = &_s20_AppleServicesSourceVN;
    *(a3 + 80) = &off_1EECE7FF8;
    *(a3 + 48) = v57;
    sub_1DB30BE90(a3 + 48, v110);
    *&v106 = v3;
    v58 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v59 = (*(*(&v58 + 1) + 24))(v58, *(&v58 + 1));
    v60 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v61 = (*(*(&v60 + 1) + 32))(v60, *(&v60 + 1));
    v63 = v62;
    v64 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v65 = (*(*(&v64 + 1) + 40))(v64, *(&v64 + 1));
    v66 = v111;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v42 = (*(*(&v66 + 1) + 48))(v66, *(&v66 + 1));
    v44 = v67;
    sub_1DB3151CC(a1);
    result = __swift_destroy_boxed_opaque_existential_0(v110);
    *a3 = v59;
    *(a3 + 8) = v61;
    *(a3 + 16) = v63 & 1;
    *(a3 + 24) = v65;
LABEL_13:
    *(a3 + 32) = v42;
    *(a3 + 40) = v44;
    return result;
  }

  v18 = sub_1DB316378(0xD000000000000027, 0x80000001DB52A4A0, v14);
  if (!v18)
  {
LABEL_17:

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8) | 0x8000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v69 = v15;
    v69[1] = v17;
    v69[2] = v68;
    v69[3] = 0;
LABEL_19:
    swift_willThrow();
    v72 = a1;
    return sub_1DB3151CC(v72);
  }

  v19 = v18;
  if (!*(v18 + 16) || (v20 = sub_1DB306160(v15, v17), (v21 & 1) == 0))
  {

    goto LABEL_17;
  }

  v22 = v20;
  v104 = a1;

  v23 = *(*(v19 + 56) + 16 * v22);

  v24 = dynamic_cast_existential_2_conditional(v23, v23, &protocol descriptor for ExpressibleByJSON, &protocol descriptor for MediaArtworkSource);
  if (v24)
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
    sub_1DB3171C0(v104, v107);
    v113 = v14;
    v30 = *(v28 + 8);
    *&v111 = v27;
    *(&v111 + 1) = v28;
    v112 = v29;
    __swift_allocate_boxed_opaque_existential_0(v110);
    v30(v107, &v113, v27, v28);
    if (v3)
    {
      sub_1DB3151CC(v104);
      return __swift_deallocate_boxed_opaque_existential_0(v110);
    }

    v80 = v111;
    v81 = v112;
    v82 = __swift_project_boxed_opaque_existential_1(v110, v111);
    *(a3 + 72) = v80;
    *(a3 + 80) = v81;
    v83 = __swift_allocate_boxed_opaque_existential_0((a3 + 48));
    (*(*(v80 - 8) + 16))(v83, v82, v80);
    sub_1DB30BE90(a3 + 48, v107);
    v84 = v108;
    goto LABEL_28;
  }

  v73 = dynamic_cast_existential_2_conditional(v23, v23, &protocol descriptor for MediaArtworkSource, MEMORY[0x1E69E6440]);
  if (!v73)
  {

    sub_1DB315178();
    swift_allocError();
    v85 = MEMORY[0x1E69E7CC0];
    *v86 = v23;
    v86[1] = v85;
    v86[2] = 0;
    v86[3] = 0;
    swift_willThrow();
    v72 = v104;
    return sub_1DB3151CC(v72);
  }

  v107[0] = v14;
  *&v111 = v73;
  *(&v111 + 1) = v74;
  v112 = v75;
  v76 = v73;
  v77 = v75;
  __swift_allocate_boxed_opaque_existential_0(v110);
  v78 = v77;
  v79 = v104;
  JSONObject.decode<A>(_:using:)(v76, v107, v76, v78);
  if (v3)
  {
    sub_1DB3151CC(v79);

    return __swift_deallocate_boxed_opaque_existential_0(v110);
  }

  v106 = v111;
  v87 = v111;
  v88 = __swift_project_boxed_opaque_existential_1(v110, v111);
  *(a3 + 72) = v106;
  v89 = __swift_allocate_boxed_opaque_existential_0((a3 + 48));
  (*(*(v87 - 8) + 16))(v89, v88, v87);
  sub_1DB30BE90(a3 + 48, v107);
  v84 = v108;
LABEL_28:
  v90 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v84);
  v91 = (*(v90 + 24))(v84, v90);
  v92 = v108;
  v93 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v94 = (*(v93 + 32))(v92, v93);
  LOBYTE(v93) = v95;
  v96 = v108;
  v97 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v98 = (*(v97 + 40))(v96, v97);
  v99 = v108;
  v100 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v101 = (*(v100 + 48))(v99, v100);
  v103 = v102;
  sub_1DB3151CC(v104);
  __swift_destroy_boxed_opaque_existential_0(v107);
  *a3 = v91;
  *(a3 + 8) = v94;
  *(a3 + 16) = v93 & 1;
  *(a3 + 24) = v98;
  *(a3 + 32) = v101;
  *(a3 + 40) = v103;
  return __swift_destroy_boxed_opaque_existential_0(v110);
}