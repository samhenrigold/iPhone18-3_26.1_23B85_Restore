void *sub_1DD9C5CA4(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AB8, &qword_1DDA1BF48);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = &v58 - v3;
  v4 = sub_1DDA13DF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v71 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v58 - v8;
  v10 = sub_1DDA13E40();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v58 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v58 = &v58 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v58 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v63 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - v22;
  v24 = 0;
  v66 = a1;
  v25 = *(a1 + 2);
  v72 = v11 + 16;
  LODWORD(v65) = *MEMORY[0x1E69DA7B8];
  v26 = (v5 + 8);
  v69 = (v11 + 8);
  v70 = (v5 + 104);
  v67 = v25;
  v68 = v11;
  do
  {
    v27 = v24;
    if (!(v25 + v24))
    {
      break;
    }

    --v24;
    (*(v11 + 16))(v23, &v66[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v27 - 1 + v25)], v10);
    sub_1DDA13E00();
    v28 = v71;
    (*v70)(v71, v65, v4);
    sub_1DD9C65AC(&qword_1ECD83738, MEMORY[0x1E69DA7C0], MEMORY[0x1E69DA7C8]);
    v29 = sub_1DDA14AF0();
    v30 = v10;
    v31 = *v26;
    (*v26)(v28, v4);
    v31(v9, v4);
    v10 = v30;
    v11 = v68;
    (*(v68 + 8))(v23, v10);
    v25 = v67;
  }

  while ((v29 & 1) == 0);
  if (v27)
  {
    v32 = sub_1DD9C4BF0(-v27, 0);
    v33 = sub_1DD9C4D14(v73, v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), -v27, v67, v67 + v27, v66);

    if (&v33[v27])
    {
LABEL_25:
      __break(1u);
LABEL_26:
      v33 = sub_1DD908874(0, *(v33 + 2) + 1, 1, v33);
      goto LABEL_20;
    }

    v34 = v32;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = v34[2];

  v33 = v63;
  v65 = v35;
  if (v35)
  {
    v37 = 0;
    LODWORD(v64) = *MEMORY[0x1E69DA7A0];
    v38 = v71;
    while (v37 < *(v36 + 16))
    {
      v39 = v36;
      (*(v11 + 16))(v33, v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v37, v10);
      sub_1DDA13E00();
      (*v70)(v38, v64, v4);
      v40 = sub_1DDA13DE0();
      v41 = v10;
      v42 = *v26;
      (*v26)(v38, v4);
      v42(v9, v4);
      if (v40)
      {

        v52 = v68;
        v53 = v62;
        (*(v68 + 32))(v62, v33, v41);
        (*(v52 + 56))(v53, 0, 1, v41);
        v51 = v39;
        sub_1DD90D378(v53, &qword_1ECD83AB8, &qword_1DDA1BF48);
        return sub_1DD9C49C4(v51);
      }

      ++v37;
      (*v69)(v33, v41);
      v10 = v41;
      v11 = v68;
      v36 = v39;
      if (v65 == v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v63 = v36;

  v43 = v62;
  (*(v11 + 56))(v62, 1, 1, v10);
  sub_1DD90D378(v43, &qword_1ECD83AB8, &qword_1DDA1BF48);
  v44 = v67;
  if (!v67)
  {
LABEL_17:
    v51 = v63;
    return sub_1DD9C49C4(v51);
  }

  v45 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v64 = *(v11 + 72);
  v62 = v45;
  v46 = &v66[v45];
  LODWORD(v65) = *MEMORY[0x1E69DA7A0];
  v66 = *(v11 + 16);
  v47 = v61;
  while (1)
  {
    (v66)(v47, v46, v10);
    sub_1DDA13E00();
    v48 = v71;
    (*v70)(v71, v65, v4);
    v49 = sub_1DDA13DE0();
    v11 = v10;
    v50 = *v26;
    (*v26)(v48, v4);
    v50(v9, v4);
    if (v49)
    {
      break;
    }

    (*v69)(v47, v11);
    v46 += v64;
    --v44;
    v10 = v11;
    if (!v44)
    {
      goto LABEL_17;
    }
  }

  v26 = *(v68 + 32);
  v54 = v58;
  (v26)(v58, v47, v11);
  v9 = v59;
  (v26)(v59, v54, v11);
  v4 = v60;
  (v66)(v60, v9, v11);
  v33 = v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v56 = *(v33 + 2);
  v55 = *(v33 + 3);
  v51 = v33;
  if (v56 >= v55 >> 1)
  {
    v51 = sub_1DD908874((v55 > 1), v56 + 1, 1, v33);
  }

  (*v69)(v9, v11);
  v51[2] = v56 + 1;
  (v26)(&v62[v51 + v56 * v64], v4, v11);
  return sub_1DD9C49C4(v51);
}

uint64_t sub_1DD9C64C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83010, &qword_1DDA18A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD9C6554(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440() & 1;
  }
}

uint64_t sub_1DD9C65AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD9C6604(uint64_t a1, uint64_t a2)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1DDA134E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v36 - v7;
  type metadata accessor for SessionRegistry();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1DDA14B00();
  v12 = sub_1DDA14B00();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (!v13)
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v22 = sub_1DDA14810();
    __swift_project_value_buffer(v22, qword_1ECDA20F8);
    v23 = sub_1DDA147F0();
    v24 = sub_1DDA14EE0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DD8F8000, v23, v24, "Unable to access list of authorized use case IDs", v25, 2u);
      MEMORY[0x1E12B8CE0](v25, -1, -1);
    }

    return 0;
  }

  sub_1DDA134A0();

  (*(v3 + 32))(v8, v6, v2);
  v27 = sub_1DDA13500();
  v29 = v28;
  v30 = objc_opt_self();
  v31 = sub_1DDA13570();
  v37[0] = 0;
  v32 = [v30 propertyListWithData:v31 options:0 format:0 error:v37];

  if (!v32)
  {
    v34 = v37[0];
    v35 = sub_1DDA13410();

    swift_willThrow();
    sub_1DD909D28(v27, v29);
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1DDA14810();
    __swift_project_value_buffer(v14, qword_1ECDA20F8);
    v15 = v35;
    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14EE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v35;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1DD8F8000, v16, v17, "Unable to get property list due to: %@", v18, 0xCu);
      sub_1DD9420B4(v19);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
      MEMORY[0x1E12B8CE0](v18, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  v33 = v37[0];
  sub_1DDA14FB0();
  sub_1DD909D28(v27, v29);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83620, &qword_1DDA1AFA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v36[2];
}

uint64_t sub_1DD9C6AF0()
{
  result = sub_1DD9C6604(0xD000000000000014, 0x80000001DDA290D0);
  if (!result)
  {
    result = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  qword_1ECDA2160 = result;
  return result;
}

void sub_1DD9C6B38(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    internalBuild = MobileGestalt_get_internalBuild();

    byte_1EE16F3D0 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD9C6B80(uint64_t a1)
{
  if (a1 < 27)
  {
    goto LABEL_5;
  }

  if (qword_1EE16F3C8 != -1)
  {
    swift_once();
  }

  if ((byte_1EE16F3D0 & 1) == 0)
  {
LABEL_5:
    sub_1DDA15070();

    v1 = sub_1DDA15400();
    MEMORY[0x1E12B7AB0](v1);

    MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
    v2 = sub_1DDA15400();
    MEMORY[0x1E12B7AB0](v2);

    MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
    v3 = sub_1DDA15400();
    MEMORY[0x1E12B7AB0](v3);
  }

  return 0x206E6F6973726556;
}

uint64_t sub_1DD9C6CFC(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  bzero(&v18, 0x500uLL);
  uname(&v18);
  MEMORY[0x1E12B7A60](v18.machine);
  if (!v4)
  {
    __break(1u);
  }

  v5 = [objc_opt_self() processInfo];
  [v5 operatingSystemVersion];

  if (a2)
  {
    if (qword_1ECD827E0 != -1)
    {
      swift_once();
    }

    v6 = 0xEC000000736C6F6FLL;
    v7 = qword_1ECDA2160;
    if (*(qword_1ECDA2160 + 16) && (v8 = sub_1DD96AC38(a1, a2), (v9 & 1) != 0))
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v11 = *v10;
      v6 = v10[1];
    }

    else
    {
      v11 = 0x54676E6974697257;
    }

    MEMORY[0x1E12B7AB0](32, 0xE100000000000000);
    MEMORY[0x1E12B7AB0](v11, v6);

    a2 = 0;
  }

  if (sub_1DDA14C50())
  {

    v12 = 0xE600000000000000;
    v13 = 0x656E6F685069;
  }

  else
  {
    v13 = 6512973;
    if (sub_1DDA14C50() & 1) != 0 || (sub_1DDA14C50())
    {

      v12 = 0xE300000000000000;
    }

    else
    {
      v13 = 1684099177;
      v14 = sub_1DDA14C50();

      if (v14)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v13 = 0x656E6F685069;
        v12 = 0xE600000000000000;
      }
    }
  }

  MEMORY[0x1E12B7AB0](v13, v12);

  MEMORY[0x1E12B7AB0](2108704, 0xE300000000000000);
  v15 = sub_1DD9C6B80(v17);
  MEMORY[0x1E12B7AB0](v15);

  MEMORY[0x1E12B7AB0](41, 0xE100000000000000);

  MEMORY[0x1E12B7AB0](40, 0xE100000000000000);

  return a2;
}

uint64_t sub_1DD9C7010(uint64_t a1)
{
  result = sub_1DDA14810();
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

uint64_t sub_1DD9C70C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1DD9CB364(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1DD96AC38(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1DD9C9D00();
        v16 = v18;
      }

      result = sub_1DD9CAB74(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1DD9C71D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    sub_1DD9C82D4(a3, a4, a5, a6, &v15);

    return sub_1DD90D440(v15, *(&v15 + 1));
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15 = *v6;
    sub_1DD9CB4EC(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v15;
  }

  return result;
}

uint64_t sub_1DD9C72B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1DD9CB6A0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1DD96AC38(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1DD9CA414(&qword_1ECD83090, &qword_1DDA1C120);
        v14 = v16;
      }

      result = sub_1DD9CB1B4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1DD9C73C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1DD9CB840(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1DD96AC38(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1DD9CA70C(&qword_1ECD830B8, &qword_1DDA18D48);
        v14 = v16;
      }

      result = sub_1DD9CB1B4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_1DD9C74C8(uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for UserDefaultsValueStore(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AE0, &unk_1DDA1C168);
  sub_1DDA14B70();
  sub_1DDA14800();

  if ((a3 & 0x100000000) == 0)
  {
    MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
    v6 = sub_1DDA15400();
    MEMORY[0x1E12B7AB0](v6);
  }

  v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v8 = sub_1DDA14B00();

  v9 = [v7 initWithSuiteName_];

  if (v9)
  {

    *a4 = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD9C7628()
{
  v1 = v0;
  sub_1DDA15070();

  strcpy(v4, "Vault.Value<");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v2 = sub_1DDA15680();
  MEMORY[0x1E12B7AB0](v2);

  MEMORY[0x1E12B7AB0](2112062, 0xE300000000000000);
  MEMORY[0x1E12B7AB0](v1[4], v1[5]);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](v1[2], v1[3]);
  return v4[0];
}

char *sub_1DD9C7708()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  v1 = qword_1EE16F638;
  v2 = sub_1DDA14810();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DD9C7790()
{
  sub_1DD9C7708();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD9C7870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v19[2] = a4;
  v19[1] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D08, &unk_1DDA185D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - v10;
  v12 = sub_1DDA14050();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1DDA14040();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = type metadata accessor for ManagedKeychainValueStore(0);
    if (a6 >> 60 == 15)
    {
      v21 = *(v6 + *(v17 + 28) + 4);
      sub_1DDA14190();
      return (*(v13 + 8))(v15, v12);
    }

    else
    {
      v18 = *(v6 + *(v17 + 28) + 4);
      sub_1DD909CD4(a5, a6);
      v20 = v18;
      sub_1DDA141B0();
      (*(v13 + 8))(v15, v12);
      return sub_1DD90D440(a5, a6);
    }
  }

  return result;
}

uint64_t sub_1DD9C7AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D08, &unk_1DDA185D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1DDA14050();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1DDA14040();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = *(v5 + *(a5 + 28) + 4);
    v15 = sub_1DDA141A0();
    (*(v11 + 8))(v13, v10);
    return v15;
  }

  return result;
}

uint64_t sub_1DD9C7CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;

  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](a3, a4);
  v8 = sub_1DDA14B00();

  v9 = [v7 dataForKey_];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1DDA13590();

  return v10;
}

void sub_1DD9C7D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = *v6;
  if (a6 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1DDA13570();
  }

  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](a3, a4);
  v13 = sub_1DDA14B00();

  [v11 setValue:v12 forKey:{v13, a1, a2}];
  swift_unknownObjectRelease();
}

uint64_t sub_1DD9C7EA8()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9C7F10(uint64_t a1)
{
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9C7F60(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9C7FC4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DDA15440(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DDA15440();
    }
  }

  return result;
}

uint64_t sub_1DD9C8068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (*(v9 + 16) && (v10 = sub_1DD96ACB0(a1, a2, a3, a4), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 16 * v10;
    v13 = *v12;
    sub_1DD909CD4(*v12, *(v12 + 8));
  }

  else
  {
    v13 = 0;
  }

  swift_endAccess();
  return v13;
}

uint64_t sub_1DD9C8120()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1DD9C8190()
{
  result = qword_1ECD83AC0;
  if (!qword_1ECD83AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83AC0);
  }

  return result;
}

uint64_t sub_1DD9C8208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  swift_beginAccess();

  sub_1DD9C82C0(a5, a6);
  sub_1DD9C71D0(a5, a6, a1, a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1DD9C82C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD909CD4(result, a2);
  }

  return result;
}

double sub_1DD9C82D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v8 = sub_1DD96ACB0(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v14 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DD9C9E78();
      v12 = v14;
    }

    *a5 = *(*(v12 + 56) + 16 * v10);
    sub_1DD9CAD24(v10, v12);
    *v6 = v12;
  }

  else
  {
    result = 0.0;
    *a5 = xmmword_1DDA195F0;
  }

  return result;
}

uint64_t sub_1DD9C838C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
  v37 = v4;
  result = sub_1DDA151B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DD9C864C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AC8, &qword_1DDA1C118);
  v36 = v4;
  result = sub_1DDA151B0();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v38 = v22[2];
      v37 = *(v21 + 16 * v20);
      if ((v36 & 1) == 0)
      {

        sub_1DD909CD4(v37, *(&v37 + 1));
      }

      sub_1DDA15570();
      sub_1DDA14BC0();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v38;
      v16[3] = v25;
      *(*(v7 + 56) + 16 * v15) = v37;
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
  return result;
}

uint64_t sub_1DD9C8930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1DDA134E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F90, &qword_1DDA18930);
  v40 = v4;
  result = sub_1DDA151B0();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_1DD9CBEC0();
      result = sub_1DDA14AC0();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1DD9C8CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AD8, &qword_1DDA1C138);
  v31 = v4;
  result = sub_1DDA151B0();
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
      v20 = (*(v5 + 56) + 16 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      if ((v31 & 1) == 0)
      {
      }

      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v21;
      v16[1] = v22;
      ++*(v7 + 16);
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DD9C8FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1DDA151B0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      if ((v36 & 1) == 0)
      {
      }

      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1DD9C9248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83080, &unk_1DDA1C150);
  v38 = v4;
  result = sub_1DDA151B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      if ((v38 & 1) == 0)
      {

        sub_1DD940DF4(v25, v26, v27);
      }

      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
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
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DD9C9528(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_1DDA151B0();
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

        v27 = v26;
      }

      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
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

uint64_t sub_1DD9C97C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AD0, &unk_1DDA1C128);
  v34 = v4;
  result = sub_1DDA151B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_1DDA15560();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DD9C9A48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83070, &unk_1DDA1C140);
  v33 = v4;
  result = sub_1DDA151B0();
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
        sub_1DD940DE4(v24, v34);
      }

      else
      {
        sub_1DD9410C8(v24, v34);
      }

      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
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
      result = sub_1DD940DE4(v34, (*(v7 + 56) + 32 * v15));
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

void *sub_1DD9C9D00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
  v2 = *v0;
  v3 = sub_1DDA151A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_1DD9C9E78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AC8, &qword_1DDA1C118);
  v2 = *v0;
  v3 = sub_1DDA151A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v17 *= 16;
        v23 = (*(v4 + 48) + v18);
        v24 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        *(*(v4 + 56) + v17) = v24;

        result = sub_1DD909CD4(v24, *(&v24 + 1));
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

  return result;
}

char *sub_1DD9CA010()
{
  v1 = v0;
  v33 = sub_1DDA134E0();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F90, &qword_1DDA18930);
  v3 = *v0;
  v4 = sub_1DDA151A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

  return result;
}

void *sub_1DD9CA290()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AD8, &qword_1DDA1C138);
  v2 = *v0;
  v3 = sub_1DDA151A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 56) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

  return result;
}

void *sub_1DD9CA414(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DDA151A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

  return result;
}

void *sub_1DD9CA574()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83080, &unk_1DDA1C150);
  v2 = *v0;
  v3 = sub_1DDA151A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;

        result = sub_1DD940DF4(v22, v23, v24);
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

  return result;
}

id sub_1DD9CA70C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DDA151A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

  return result;
}

void *sub_1DD9CA868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AD0, &unk_1DDA1C128);
  v2 = *v0;
  v3 = sub_1DDA151A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

  return result;
}

void *sub_1DD9CA9D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83070, &unk_1DDA1C140);
  v2 = *v0;
  v3 = sub_1DDA151A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_1DD9410C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DD940DE4(v25, (*(v4 + 56) + v22));
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

  return result;
}

uint64_t sub_1DD9CAB74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DDA14FE0() + 1) & ~v5;
    do
    {
      sub_1DDA15570();

      sub_1DDA14BC0();
      v9 = sub_1DDA155B0();

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

uint64_t sub_1DD9CAD24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DDA14FE0() + 1) & ~v5;
    do
    {
      sub_1DDA15570();

      sub_1DDA14BC0();
      sub_1DDA14BC0();
      v9 = sub_1DDA155B0();

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
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
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

unint64_t sub_1DD9CAEFC(int64_t a1, uint64_t a2)
{
  v4 = sub_1DDA134E0();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1DDA14FE0();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_1DD9CBEC0();
      v21 = sub_1DDA14AC0();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DD9CB1B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DDA14FE0() + 1) & ~v5;
    do
    {
      sub_1DDA15570();

      sub_1DDA14BC0();
      v9 = sub_1DDA155B0();

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

uint64_t sub_1DD9CB364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DD96AC38(a3, a4);
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
      sub_1DD9C838C(v18, a5 & 1);
      v13 = sub_1DD96AC38(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DD9C9D00();
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

uint64_t sub_1DD9CB4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1DD96ACB0(a3, a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1DD9C864C(v22, a7 & 1);
      v17 = sub_1DD96ACB0(a3, a4, a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1DD9C9E78();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    v29 = *v28;
    v30 = v28[1];
    *v28 = a1;
    v28[1] = a2;

    return sub_1DD909D28(v29, v30);
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v27[6] + 32 * v17);
  *v32 = a3;
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = a6;
  v33 = (v27[7] + 16 * v17);
  *v33 = a1;
  v33[1] = a2;
  v34 = v27[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v35;
}

uint64_t sub_1DD9CB6A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DD96AC38(a2, a3);
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
      sub_1DD9C8FA8(v16, a4 & 1, &qword_1ECD83090, &qword_1DDA1C120);
      v11 = sub_1DD96AC38(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DD9CA414(&qword_1ECD83090, &qword_1DDA1C120);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1DD9CB840(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DD96AC38(a2, a3);
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
      sub_1DD9C9528(v16, a4 & 1, &qword_1ECD830B8, &qword_1DDA18D48);
      v11 = sub_1DD96AC38(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DDA15500();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1DD9CA70C(&qword_1ECD830B8, &qword_1DDA18D48);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
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

uint64_t sub_1DD9CB9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DD96AC38(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1DD9C9248(v20, a6 & 1);
      v15 = sub_1DD96AC38(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1DD9CA574();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    return sub_1DD94A02C(v27, v28, v29);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v25[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = (v25[7] + 24 * v15);
  *v32 = a1;
  v32[1] = a2;
  v32[2] = a3;
  v33 = v25[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v34;
}

unint64_t sub_1DD9CBB84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DD96AE9C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DD9C97C4(v16, a4 & 1);
      result = sub_1DD96AE9C(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DD9CA868();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

_OWORD *sub_1DD9CBCE4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DD96AC38(a2, a3);
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
      sub_1DD9CA9D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DD9C9A48(v16, a4 & 1);
    v11 = sub_1DD96AC38(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1DDA15500();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1DD940DE4(a1, v22);
  }

  else
  {
    sub_1DD9CBE34(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1DD9CBE34(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DD940DE4(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1DD9CBEC0()
{
  result = qword_1ECD83488;
  if (!qword_1ECD83488)
  {
    sub_1DDA134E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83488);
  }

  return result;
}

uint64_t sub_1DD9CBF50(uint64_t a1)
{
  result = sub_1DD9CBFD4();
  if (v2 <= 0x3F)
  {
    result = sub_1DDA14810();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DD9CBFD4()
{
  result = qword_1EE16F388;
  if (!qword_1EE16F388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE16F388);
  }

  return result;
}

void sub_1DD9CC068(uint64_t a1)
{
  sub_1DDA141D0();
  if (v1 <= 0x3F)
  {
    sub_1DDA14050();
    if (v2 <= 0x3F)
    {
      sub_1DDA14060();
      if (v3 <= 0x3F)
      {
        sub_1DD9CC11C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD9CC11C()
{
  if (!qword_1EE16F0E0)
  {
    v0 = sub_1DDA14F50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE16F0E0);
    }
  }
}

uint64_t sub_1DD9CC1B4(uint64_t a1)
{
  result = sub_1DD9CC248();
  if (v2 <= 0x3F)
  {
    result = sub_1DDA14810();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DD9CC248()
{
  result = qword_1EE16F8E0;
  if (!qword_1EE16F8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE16F8E0);
  }

  return result;
}

unint64_t sub_1DD9CC2B0()
{
  result = qword_1ECD83AE8;
  if (!qword_1ECD83AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83AE8);
  }

  return result;
}

void sub_1DD9CC34C(uint64_t a1)
{
  sub_1DD9CD674(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD9CC404(uint64_t a1)
{
  type metadata accessor for CreateSessionResponse(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChatChunk.FileUploadResponse(319);
    if (v2 <= 0x3F)
    {
      sub_1DD9CDA20(319, &qword_1ECD83B00, &type metadata for ChatChunk.Notice, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ChatChunk.ChoiceResource(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ChatChunk.ChoiceItemMessageContent(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ChatChunk.TextValueAnnotation(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ChatChunk.RateLimits(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1DD9CC6F0(uint64_t a1)
{
  sub_1DD9CDA20(319, &qword_1ECD83B18, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FileGeneratorCall.File(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 28);
  v7 = a4(0);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1 + v6, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *(a4 + 28);
  v8 = (a5)(0, a2, a3);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, a2, a2, v8);
}

uint64_t __swift_get_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DD9CCA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil9InputItemO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DD9CCB34(uint64_t a1, int a2)
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

uint64_t sub_1DD9CCB7C(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD9CCC24(uint64_t a1)
{
  result = type metadata accessor for TextAnnotation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CCD04(uint64_t a1)
{
  result = type metadata accessor for TextAnnotation.URLCitation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CCDC4(uint64_t a1)
{
  result = sub_1DDA134E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CCE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD9CCEA0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1DD9CCF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CD038(uint64_t a1)
{
  result = type metadata accessor for ImageURLItem(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImageGeneratorImage(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FileGeneratorFile(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_119Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DDA134E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_120Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DDA134E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD9CD2D0(uint64_t a1)
{
  result = sub_1DDA134E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CD3C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 65))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 64);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DD9CD408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD9CD4B8(uint64_t a1)
{
  result = type metadata accessor for ChatChunk.Choice(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD9CD55C(uint64_t a1)
{
  sub_1DD9CDA20(319, &qword_1ECD83C00, &type metadata for InputItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1DD9CDA20(319, &qword_1ECD83C08, &type metadata for ChatChunk.IncompleteDetail, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD9CD674(319, &qword_1ECD83C10, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD9CD674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DDA14F50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DD9CD6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DD9CD720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DD9CD774(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1DD9CD7F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1DD9CD840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DD9CD8D4(uint64_t a1)
{
  sub_1DD9CD674(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_1DD9CDA20(319, &qword_1ECD83C28, &type metadata for ChatChunk.FileUploadResponse.Status, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD9CDA20(319, &unk_1EE16F3B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DD9CDA20(319, &qword_1ECD83C30, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD9CDA20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD9CDAA8(uint64_t a1)
{
  sub_1DDA13680();
  if (v1 <= 0x3F)
  {
    sub_1DD9CD674(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionExpirationOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionExpirationOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1DD9CDBF4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1DD9CDC08(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1DD9CDC64(uint64_t a1)
{
  sub_1DD9CD674(319, qword_1EE16F4D8, type metadata accessor for ChatChunk.RateLimits.Limits);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1DD9CDCF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1DD928DC0(a2, a3);
  sub_1DDA14BC0();
}

uint64_t sub_1DD9CDE0C(uint64_t a1, unsigned __int8 a2)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9CDF44(uint64_t a1, unsigned __int8 a2)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE064(uint64_t a1, unsigned __int8 a2)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE1A8(uint64_t a1, unsigned __int8 a2)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE2CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1DDA15570();
  sub_1DD928DC0(a2, a3);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE3F8(uint64_t a1, unsigned __int8 a2)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE544(uint64_t a1, unsigned __int8 a2)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9CE658()
{
  v1 = 0xEA00000000006E6FLL;
  v45 = type metadata accessor for MessageContent(0);
  v2 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v4 = (&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0 + *(type metadata accessor for ChatChunk.ChoiceResource(0) + 20);
  if (*(v5 + 16) && *(v5 + 16) == 1)
  {
  }

  else
  {
    v6 = sub_1DDA15440();

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 56) != 1)
  {
    v19 = *(v5 + 32);
    v20 = *(v5 + 40);
    v21 = 0x6974617265646F6DLL;
    v43 = *(v5 + 48);
    v44 = v19;
    if (v20 <= 1)
    {
      v29 = 0x6974617265646F6DLL;
      v30 = 0xEA00000000006E6FLL;
      if (!v20)
      {
LABEL_32:
        if (v29 == 0x6974617265646F6DLL && v30 == 0xEA00000000006E6FLL)
        {
          goto LABEL_47;
        }

LABEL_34:
        v31 = sub_1DDA15440();
        sub_1DD928DC0(v44, v20);

        if (v31)
        {
          goto LABEL_49;
        }

        if (v20 <= 1)
        {
          if (v20 <= 1)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v20 == 2)
          {
            v32 = 0x5F746E65746E6F63;
            v33 = 0xEE007265746C6966;
LABEL_45:
            if (v32 != 0x5F746E65746E6F63 || v33 != 0xEE007265746C6966)
            {
              goto LABEL_48;
            }

LABEL_47:
            sub_1DD928DC0(v44, v20);

            goto LABEL_49;
          }

          if (v20 == 3 || v20 == 4)
          {
LABEL_48:
            v34 = sub_1DDA15440();
            sub_1DD928DC0(v44, v20);

            if ((v34 & 1) == 0)
            {
              goto LABEL_6;
            }

LABEL_49:
            v35 = sub_1DDA13840();
            sub_1DD9E4B98(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
            swift_allocError();
            v37 = v36;
            v38 = *MEMORY[0x1E69A0960];
            v39 = sub_1DDA142D0();
            (*(*(v39 - 8) + 104))(v37, v38, v39);
            v46 = 0;
            v47 = 0xE000000000000000;
            sub_1DDA15070();

            v46 = 0xD00000000000001DLL;
            v47 = 0x80000001DDA29CC0;
            if (v20 <= 1)
            {
              if (!v20)
              {
                goto LABEL_60;
              }

              if (v20 == 1)
              {
                v1 = 0xE500000000000000;
                v21 = 0x726568746FLL;
                goto LABEL_60;
              }
            }

            else
            {
              switch(v20)
              {
                case 2:
                  v21 = 0x5F746E65746E6F63;
                  v1 = 0xEE007265746C6966;
                  goto LABEL_60;
                case 3:
                  v1 = 0x80000001DDA28030;
                  v21 = 0xD00000000000001BLL;
                  goto LABEL_60;
                case 4:
                  v1 = 0x80000001DDA28010;
                  v21 = 0xD00000000000001CLL;
LABEL_60:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84260, &qword_1DDA1E360);
                  sub_1DD928DC0(v44, v20);
                  MEMORY[0x1E12B7AB0](v21, v1);

                  sub_1DDA137F0();
                  (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69DA4B8], v35);
                  return;
              }
            }

            v21 = v44;
            v1 = v20;
            goto LABEL_60;
          }
        }

        v32 = v44;
        v33 = v20;
        goto LABEL_45;
      }

      if (v20 == 1)
      {
        goto LABEL_34;
      }
    }

    else if (v20 == 2 || v20 == 3 || v20 == 4)
    {
      goto LABEL_34;
    }

    v29 = v44;
    v30 = v20;
    goto LABEL_32;
  }

LABEL_6:
  v7 = *(v5 + 24);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    while (v9 < *(v7 + 16))
    {
      v10 = v7 + 32 + 56 * v9;
      if (!*(v10 + 48))
      {
        v11 = *(v10 + 24);
        if (v11)
        {
          v12 = *v10;
          v13 = *(v10 + 8);
          v14 = *(v10 + 16);
          v16 = *(v10 + 32);
          v15 = *(v10 + 40);
          v44 = v16;
          v42 = v12;
          v43 = v15;
          v17 = *(v13 + 16);
          v41 = v14;
          sub_1DD96E3D8(v13, v14, 1);
          if (v17)
          {
            v18 = 0;
            while (v18 < *(v13 + 16))
            {
              sub_1DD9FF500(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v4, type metadata accessor for MessageContent);
              if (swift_getEnumCaseMultiPayload() == 4)
              {
                sub_1DD96E310(v42, v13, v41, v11, v44, v43, 0);
                v23 = *v4;
                v22 = v4[1];
                v24 = sub_1DDA13840();
                sub_1DD9E4B98(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
                swift_allocError();
                v26 = v25;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84260, &qword_1DDA1E360);
                v27 = *MEMORY[0x1E69A0960];
                v28 = sub_1DDA142D0();
                (*(*(v28 - 8) + 104))(v26, v27, v28);
                v46 = 0;
                v47 = 0xE000000000000000;
                sub_1DDA15070();

                v46 = 0xD000000000000023;
                v47 = 0x80000001DDA29C90;
                MEMORY[0x1E12B7AB0](v23, v22);
                sub_1DDA137F0();
                (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69DA4B8], v24);
                return;
              }

              ++v18;
              sub_1DD9FF568(v4, type metadata accessor for MessageContent);
              if (v17 == v18)
              {
                goto LABEL_8;
              }
            }

            __break(1u);
            break;
          }

LABEL_8:
          sub_1DD96E310(v42, v13, v41, v11, v44, v43, 0);
        }
      }

      if (++v9 == v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1DD9CEEC4(char a1)
{
  result = 0x5F746E65736E6F63;
  switch(a1)
  {
    case 1:
      return 0x61665F6E69676F6CLL;
    case 2:
      return 0x665F70756E676973;
    case 3:
    case 15:
    case 16:
    case 17:
      return 0x5F64696C61766E69;
    case 4:
    case 5:
    case 13:
      v3 = 10;
      goto LABEL_25;
    case 6:
    case 29:
      v3 = 5;
      goto LABEL_25;
    case 7:
      v3 = 9;
LABEL_25:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
    case 10:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
    case 12:
    case 20:
      result = 0x5F676E697373696DLL;
      break;
    case 14:
    case 19:
    case 23:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x78655F6E656B6F74;
      break;
    case 21:
    case 28:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 24:
    case 36:
      result = 0xD000000000000026;
      break;
    case 25:
      result = 0xD000000000000024;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
    case 34:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x655F64616F6C7075;
      break;
    case 35:
      result = 0xD000000000000020;
      break;
    case 37:
      result = 0xD000000000000025;
      break;
    case 38:
      result = 0xD000000000000030;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD9CF2B0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DD9CF2E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_1DD9CF300(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1DD9CF310(uint64_t a1)
{
  v2 = sub_1DD9FEF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9CF34C(uint64_t a1)
{
  v2 = sub_1DD9FEF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9CF38C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84218, &qword_1DDA1E348);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA06610();
  sub_1DDA15650();
  LOBYTE(v11) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    SessionResponse = type metadata accessor for CreateSessionResponse(0);
    LOBYTE(v11) = 1;
    sub_1DDA13680();
    sub_1DD9E4B98(&qword_1ECD829A0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DDA15380();
    LOBYTE(v11) = 2;
    sub_1DDA15380();
    LOBYTE(v11) = 3;
    sub_1DDA15330();
    v11 = *(v3 + *(SessionResponse + 32));
    v12 = 4;
    sub_1DDA066B8();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9CF600(uint64_t a1)
{
  v2 = sub_1DDA13680();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1DDA14BC0();
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  sub_1DDA14AD0();
  sub_1DD90ADB4(v1 + *(SessionResponse + 28), v8, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1DDA15590();
    sub_1DDA14AD0();
    (*(v3 + 8))(v5, v2);
  }

  v10 = v1 + *(SessionResponse + 32);
  if (*v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 8);
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  return MEMORY[0x1E12B8440](v11);
}

uint64_t sub_1DD9CF8CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v28 - v4;
  v5 = sub_1DDA13680();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v35 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84200, &qword_1DDA1E340);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v16 = *(MEMORY[0x1EEE9AC00](SessionResponse) + 28);
  v17 = *(v6 + 56);
  v40 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = v16;
  v17(v40 + v16, 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA06610();
  v38 = v13;
  v18 = v39;
  sub_1DDA15620();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DD90D378(v40 + v41, &qword_1ECD82838, &unk_1DDA185F0);
  }

  else
  {
    v19 = v36;
    v39 = a1;
    v31 = v6;
    v32 = SessionResponse;
    LOBYTE(v42) = 0;
    v20 = sub_1DDA15280();
    v21 = v40;
    *v40 = v20;
    *(v21 + 8) = v22;
    v30 = v22;
    LOBYTE(v42) = 1;
    sub_1DD9E4B98(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1DDA152C0();
    v23 = v21 + v32[5];
    v29 = *(v31 + 32);
    v29(v23, v10, v5);
    LOBYTE(v42) = 2;
    v24 = v35;
    sub_1DDA152C0();
    v29(v21 + v32[6], v24, v5);
    LOBYTE(v42) = 3;
    sub_1DDA15260();
    sub_1DD90AE1C(v34, v21 + v41, &qword_1ECD82838, &unk_1DDA185F0);
    v43 = 4;
    sub_1DDA06664();
    sub_1DDA152C0();
    v25 = v39;
    (*(v19 + 8))(v38, v37);
    v26 = v33;
    *(v21 + v32[8]) = v42;
    sub_1DD9FF500(v21, v26, type metadata accessor for CreateSessionResponse);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return sub_1DD9FF568(v21, type metadata accessor for CreateSessionResponse);
  }
}

uint64_t sub_1DD9CFEC0(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD847A8, &qword_1DDA227A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C338();
  sub_1DDA15650();
  v14 = a2 & 1;
  v13 = 0;
  sub_1DDA0C3E0();
  sub_1DDA15380();
  if (!v3)
  {
    v12 = 1;
    sub_1DDA15370();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DD9D006C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D0164(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D0248(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9D033C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA01600(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9D036C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEE0074615F657669;
  v6 = 0x7463615F7473616CLL;
  v7 = 0xEA00000000007461;
  if (v2 != 3)
  {
    v7 = 0xED00007265746661;
  }

  if (v2 != 2)
  {
    v6 = 0x5F73657269707865;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F64657461657263;
    v3 = 0xEA00000000007461;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1DD9D0420()
{
  v1 = 25705;
  v2 = 0x7463615F7473616CLL;
  if (*v0 != 2)
  {
    v2 = 0x5F73657269707865;
  }

  if (*v0)
  {
    v1 = 0x5F64657461657263;
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

unint64_t sub_1DD9D04D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA01600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9D04F8(uint64_t a1)
{
  v2 = sub_1DDA06610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D0534(uint64_t a1)
{
  v2 = sub_1DDA06610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D05D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463615F7473616CLL;
  }

  else
  {
    v3 = 0x5F64657461657263;
  }

  if (v2)
  {
    v4 = 0xEA00000000007461;
  }

  else
  {
    v4 = 0xEE0074615F657669;
  }

  if (*a2)
  {
    v5 = 0x7463615F7473616CLL;
  }

  else
  {
    v5 = 0x5F64657461657263;
  }

  if (*a2)
  {
    v6 = 0xEE0074615F657669;
  }

  else
  {
    v6 = 0xEA00000000007461;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

void sub_1DD9D0698(uint64_t *a1@<X8>)
{
  v2 = 0x5F64657461657263;
  if (*v1)
  {
    v2 = 0x7463615F7473616CLL;
  }

  v3 = 0xEA00000000007461;
  if (*v1)
  {
    v3 = 0xEE0074615F657669;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9D0798()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D082C(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D08AC(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D093C()
{
  if (*v0)
  {
    return 0x73646E6F636573;
  }

  else
  {
    return 0x726F68636E61;
  }
}

uint64_t sub_1DD9D0974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9D0A4C(uint64_t a1)
{
  v2 = sub_1DDA0C338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D0A88(uint64_t a1)
{
  v2 = sub_1DDA0C338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D0AC4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA0164C(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1DD9D0B18()
{
  v1 = *(v0 + 8);
  sub_1DDA15570();
  sub_1DDA14BC0();

  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D0BC4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1DDA14BC0();

  return MEMORY[0x1E12B8440](v2);
}

uint64_t sub_1DD9D0C54(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1DDA15570();
  sub_1DDA14BC0();

  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D0D18(void *a1, char a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  if (a2 == 2)
  {
    sub_1DDA15470();
  }

  else
  {
    sub_1DDA06760();
    sub_1DDA154A0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1DD9D0E58()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1DDA15570();
  v3 = 0;
  if (v1 != 2)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();

    v3 = v2;
  }

  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D0F1C(uint64_t a1)
{
  if (*v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 8);
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  return MEMORY[0x1E12B8440](v2);
}

uint64_t sub_1DD9D0FCC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_1DDA15570();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D10A4(char a1)
{
  result = 0x72756769666E6F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
      result = 0x7463757274736E69;
      break;
    case 4:
      result = 0x7475706E69;
      break;
    case 5:
      result = 0x69685F7475706E69;
      break;
    case 6:
      v3 = 0x746E65696C63;
      goto LABEL_15;
    case 7:
      v3 = 0x726576726573;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      break;
    case 8:
      result = 0x6F68635F6C6F6F74;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x74617265706D6574;
      break;
    case 11:
      result = 0x6974636964657270;
      break;
    case 12:
      result = 0x65736E6F70736572;
      break;
    case 13:
      result = 0x6D6165727473;
      break;
    case 14:
      result = 0x6564756C636E69;
      break;
    case 15:
      result = 0x6E696E6F73616572;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1DD9D128C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD847B8, &qword_1DDA227A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C434();
  sub_1DDA15650();
  LOBYTE(v20) = 0;
  sub_1DDA15300();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v20 = *(v3 + 16);
    v21 = v9;
    *&v22[0] = *(v3 + 48);
    LOBYTE(v17[0]) = 1;
    sub_1DDA0C488();
    sub_1DDA15330();
    LOBYTE(v20) = 2;
    sub_1DDA15300();
    LOBYTE(v20) = 3;
    sub_1DDA15300();
    *&v20 = *(v3 + 88);
    LOBYTE(v17[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84118, &qword_1DDA1E308);
    sub_1DDA0C4DC();
    sub_1DDA15380();
    LOBYTE(v20) = *(v3 + 96);
    LOBYTE(v17[0]) = 5;
    sub_1DDA0C5B4();
    sub_1DDA15330();
    *&v20 = *(v3 + 104);
    LOBYTE(v17[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD847E8, &qword_1DDA227B0);
    sub_1DDA0C608();
    sub_1DDA15380();
    *&v20 = *(v3 + 112);
    LOBYTE(v17[0]) = 7;
    sub_1DDA15380();
    v20 = *(v3 + 120);
    LOBYTE(v17[0]) = 8;
    sub_1DDA0C6E0();
    sub_1DDA15330();
    *&v20 = *(v3 + 136);
    LOBYTE(v17[0]) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84808, &qword_1DDA227B8);
    sub_1DDA0C734();
    sub_1DDA15330();
    LOBYTE(v20) = 10;
    sub_1DDA15320();
    v10 = *(v3 + 176);
    v20 = *(v3 + 160);
    v21 = v10;
    LOBYTE(v17[0]) = 11;
    sub_1DDA0C80C();
    sub_1DDA15330();
    v11 = *(v3 + 208);
    v23[0] = *(v3 + 192);
    v23[1] = v11;
    v13 = *(v3 + 192);
    v12 = *(v3 + 208);
    v24[0] = *(v3 + 224);
    *(v24 + 9) = *(v3 + 233);
    v20 = v13;
    v21 = v12;
    v22[0] = *(v3 + 224);
    *(v22 + 9) = *(v3 + 233);
    v19 = 12;
    sub_1DD90ADB4(v23, v17, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DDA0C860();
    sub_1DDA15330();
    v17[0] = v20;
    v17[1] = v21;
    *v18 = v22[0];
    *&v18[9] = *(v22 + 9);
    sub_1DD90D378(v17, &qword_1ECD83748, &unk_1DDA227C0);
    LOBYTE(v16) = 13;
    sub_1DDA15350();
    v16 = *(v3 + 256);
    v15[7] = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD9C03AC();
    sub_1DDA15330();
    LOBYTE(v16) = 15;
    sub_1DDA15300();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9D1854(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    sub_1DDA15590();
    if (!*(v1 + 24))
    {
      goto LABEL_11;
    }

LABEL_5:
    v4 = *(v1 + 40);
    v3 = *(v1 + 48);
    v5 = *(v1 + 32);
    sub_1DDA15590();
    sub_1DDA14BC0();
    sub_1DD96CFA8(a1, v5);
    if (v4)
    {
      sub_1DDA15590();
      sub_1DD96C990(a1, v4);
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1DDA15590();
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    sub_1DDA15590();
    sub_1DD96C724(a1, v3);
    if (*(v1 + 64))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  sub_1DDA15590();
  sub_1DDA14BC0();
  if (*(v1 + 24))
  {
    goto LABEL_5;
  }

LABEL_11:
  sub_1DDA15590();
  if (*(v1 + 64))
  {
LABEL_12:
    sub_1DDA15590();
    sub_1DDA14BC0();
    if (*(v1 + 80))
    {
      goto LABEL_13;
    }

LABEL_9:
    sub_1DDA15590();
    goto LABEL_14;
  }

LABEL_8:
  sub_1DDA15590();
  if (!*(v1 + 80))
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_1DDA15590();
  sub_1DDA14BC0();
LABEL_14:
  sub_1DD96BCC4(a1, *(v1 + 88));
  if (*(v1 + 96) == 3)
  {
    sub_1DDA15590();
  }

  else
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  sub_1DD96CB44(a1, *(v1 + 104));
  sub_1DD96CB44(a1, *(v1 + 112));
  v6 = *(v1 + 128);
  if (v6 != 3)
  {
    sub_1DDA15590();
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = 1;
      }

      else
      {
        if (v6 != 2)
        {
          MEMORY[0x1E12B8440](3);
          sub_1DDA14BC0();
          v7 = *(v1 + 136);
          if (!v7)
          {
            goto LABEL_35;
          }

          goto LABEL_27;
        }

        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1E12B8440](v8);
    v7 = *(v1 + 136);
    if (!v7)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  sub_1DDA15590();
  v7 = *(v1 + 136);
  if (!v7)
  {
LABEL_35:
    sub_1DDA15590();
    if ((*(v1 + 152) & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_31:
    sub_1DDA15590();
    if (!*(v1 + 168))
    {
      goto LABEL_40;
    }

LABEL_32:
    sub_1DDA15590();
    sub_1DDA14BC0();
    sub_1DDA14BC0();
    if (!*(v1 + 200))
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

LABEL_27:
  sub_1DDA15590();
  v9 = *(v7 + 16);
  MEMORY[0x1E12B8440](v9);
  if (v9)
  {
    v10 = v7 + 56;
    do
    {

      sub_1DDA14BC0();
      sub_1DDA14BC0();

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  if (*(v1 + 152))
  {
    goto LABEL_31;
  }

LABEL_36:
  v11 = *(v1 + 144);
  sub_1DDA15590();
  if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E12B8460](v12);
  if (*(v1 + 168))
  {
    goto LABEL_32;
  }

LABEL_40:
  sub_1DDA15590();
  if (*(v1 + 200))
  {
LABEL_33:
    sub_1DDA15590();
    sub_1DDA14BC0();
    sub_1DDA14BC0();
    sub_1DD965608(a1);
    sub_1DDA14BC0();
  }

LABEL_41:
  sub_1DDA15590();
  sub_1DDA15590();
  v13 = *(v1 + 256);
  if (v13)
  {
    sub_1DDA15590();
    v14 = *(v13 + 16);
    MEMORY[0x1E12B8440](v14);
    if (v14)
    {
      v15 = v13 + 40;
      do
      {

        sub_1DDA14BC0();

        v15 += 16;
        --v14;
      }

      while (v14);
    }

    if (*(v1 + 272))
    {
      goto LABEL_46;
    }

    return sub_1DDA15590();
  }

  sub_1DDA15590();
  if (!*(v1 + 272))
  {
    return sub_1DDA15590();
  }

LABEL_46:
  sub_1DDA15590();

  return sub_1DDA14BC0();
}

unint64_t sub_1DD9D1E00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA01C74(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DD9D1E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD9D10A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD9D1E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA01C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9D1EAC(uint64_t a1)
{
  v2 = sub_1DDA0C434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D1EE8(uint64_t a1)
{
  v2 = sub_1DDA0C434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D1F3C()
{
  sub_1DDA15570();
  sub_1DD9D1854(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D1F80(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD9D1854(v2);
  return sub_1DDA155B0();
}

BOOL sub_1DD9D1FBC(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1DD9F9430(v4, __dst);
}

uint64_t sub_1DD9D2014()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD9D2048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9D2124(uint64_t a1)
{
  v2 = sub_1DDA11258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D2160(uint64_t a1)
{
  v2 = sub_1DDA11258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D219C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA01CC0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9D2224(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000001DDA26AC0;
  if (v2 == 1)
  {
    v5 = 0x80000001DDA26AC0;
  }

  else
  {
    v3 = 0x74756374726F6873;
    v5 = 0xE900000000000073;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6764656C776F6E6BLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x74756374726F6873;
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6764656C776F6E6BLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9D231C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D23C8(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D2460(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9D2508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA01E8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9D2538(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0x80000001DDA26AC0;
  v5 = 0xD000000000000010;
  if (v3 != 1)
  {
    v5 = 0x74756374726F6873;
    v4 = 0xE900000000000073;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6764656C776F6E6BLL;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1DD9D265C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D2724(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D27D8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9D289C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA01ED8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9D28CC(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7972657571;
  v4 = 0x80000001DDA26B10;
  v5 = 0xD000000000000026;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x80000001DDA26B30;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001FLL;
    v2 = 0x80000001DDA26AE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DD9D2950()
{
  v1 = 0x7972657571;
  v2 = 0xD000000000000026;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001FLL;
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

unint64_t sub_1DD9D29D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA01ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9D29F8(uint64_t a1)
{
  v2 = sub_1DDA0EB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D2A34(uint64_t a1)
{
  v2 = sub_1DDA0EB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D2A70(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      sub_1DDA15470();
    }

    else
    {
      v9 = a2;
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
      sub_1DD9C03AC();
      sub_1DDA154A0();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (a4)
    {
      sub_1DDA15490();
    }

    else
    {
      sub_1DDA15480();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DD9D2BDC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      MEMORY[0x1E12B8440](2);

      return sub_1DDA14BC0();
    }

    else
    {
      MEMORY[0x1E12B8440](3, a2, a3);
      v6 = *(a2 + 16);
      result = MEMORY[0x1E12B8440](v6);
      if (v6)
      {
        v7 = a2 + 40;
        do
        {

          sub_1DDA14BC0();

          v7 += 16;
          --v6;
        }

        while (v6);
      }
    }
  }

  else if (a4)
  {
    MEMORY[0x1E12B8440](1, a2, a3);
    return MEMORY[0x1E12B8440](a2);
  }

  else
  {
    MEMORY[0x1E12B8440](0, a2, a3);
    return sub_1DDA15590();
  }

  return result;
}

uint64_t sub_1DD9D2CD8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD848F8, &qword_1DDA22818);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0E76C();
  sub_1DDA15650();
  LOBYTE(v11) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v10[15] = 1;
    sub_1DDA0E7C0();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9D2E7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1DDA15570();
  sub_1DD9D2BDC(v5, v1, v2, v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D2EE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1DDA15570();
  sub_1DD9D2BDC(v6, v2, v3, v4);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D2F58()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DD9D2F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9D3060(uint64_t a1)
{
  v2 = sub_1DDA0E76C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D309C(uint64_t a1)
{
  v2 = sub_1DDA0E76C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D30F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD9D2BDC(v5, v1, v2, v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3168(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1DDA14BC0();

  return sub_1DD9D2BDC(a1, v3, v4, v5);
}

uint64_t sub_1DD9D31C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD9D2BDC(v6, v2, v3, v4);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3234(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = sub_1DDA15440(), result = 0, (v9 & 1) != 0))
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        if (v7 != 2 || (v2 != v5 || v3 != v6) && (sub_1DDA15440() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7 != 3 || (sub_1DD967B14(v2, v5) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v4)
    {
      if (v7 != 1 || v2 != v5)
      {
        return 0;
      }
    }

    else if (v7 || ((v5 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1DD9D334C(uint64_t a1)
{
  sub_1DDA14BC0();
}

unint64_t sub_1DD9D3460@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA01F24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9D3490(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE700000000000000;
  v6 = 0x746C7561666564;
  if (v2 != 5)
  {
    v6 = 0x766F5F776F6C6C61;
    v5 = 0xEF73656469727265;
  }

  v7 = 0x656C7069746C756DLL;
  if (v2 != 3)
  {
    v7 = 0x6465726975716572;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1701869940;
  if (v2 != 1)
  {
    v9 = 0x736E6F6974706FLL;
    v8 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1DD9D356C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x746C7561666564;
  if (v1 != 5)
  {
    v3 = 0x766F5F776F6C6C61;
  }

  v4 = 0x656C7069746C756DLL;
  if (v1 != 3)
  {
    v4 = 0x6465726975716572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x736E6F6974706FLL;
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

unint64_t sub_1DD9D3644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA01F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9D366C(uint64_t a1)
{
  v2 = sub_1DDA0E814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D36A8(uint64_t a1)
{
  v2 = sub_1DDA0E814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D36E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84910, &qword_1DDA22820);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0E814();
  sub_1DDA15650();
  LOBYTE(v10) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1DDA15340();
    *&v10 = *(v3 + 32);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A0, &qword_1DDA1B228);
    sub_1DDA0E868();
    sub_1DDA15330();
    LOBYTE(v10) = 3;
    sub_1DDA15350();
    LOBYTE(v10) = 4;
    sub_1DDA15350();
    v10 = *(v3 + 48);
    v11 = *(v3 + 64);
    v12 = 5;
    sub_1DDA0E7C0();
    sub_1DDA15330();
    LOBYTE(v10) = 6;
    sub_1DDA15350();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9D3980(uint64_t a1)
{
  v2 = v1;
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v4 = *(v2 + 32);
  if (v4)
  {
    sub_1DDA15590();
    v5 = *(v4 + 16);
    MEMORY[0x1E12B8440](v5);
    if (v5)
    {
      v6 = (v4 + 32);
      do
      {
        v7 = *v6++;

        sub_1DD96CE3C(a1, v7);

        --v5;
      }

      while (v5);
    }
  }

  else
  {
    sub_1DDA15590();
  }

  sub_1DDA15590();
  sub_1DDA15590();
  v8 = *(v2 + 64);
  if (v8 == 255)
  {
    sub_1DDA15590();
  }

  else
  {
    v10 = *(v2 + 48);
    v9 = *(v2 + 56);
    sub_1DDA15590();
    sub_1DD9D2BDC(a1, v10, v9, v8);
  }

  return sub_1DDA15590();
}

uint64_t sub_1DD9D3A7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84970, &qword_1DDA22840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0EB0C();
  sub_1DDA15650();
  LOBYTE(v11) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v11 = v3[2];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84980, &qword_1DDA22848);
    sub_1DDA0EB60();
    sub_1DDA15380();
    v11 = v3[3];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84990, &qword_1DDA22850);
    sub_1DDA0EBEC();
    sub_1DDA15330();
    v11 = v3[4];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD849A8, &qword_1DDA22858);
    sub_1DDA0ECC4();
    sub_1DDA15330();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9D3CB4()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD96CFA8(v5, v1);
  if (!v2)
  {
    sub_1DDA15590();
    v3 = v0[4];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DDA15590();
    return sub_1DDA155B0();
  }

  sub_1DDA15590();
  sub_1DD96C990(v5, v2);
  v3 = v0[4];
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DDA15590();
  sub_1DD96C724(v5, v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3D9C()
{
  sub_1DDA15570();
  sub_1DD9D3980(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3DE0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD9D3980(v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DD9FAA64(v7, v9) & 1;
}

uint64_t sub_1DD9D3E94(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  sub_1DDA14BC0();
  sub_1DD96CFA8(a1, v4);
  if (!v3)
  {
    sub_1DDA15590();
    if (v5)
    {
      goto LABEL_3;
    }

    return sub_1DDA15590();
  }

  sub_1DDA15590();
  sub_1DD96C990(a1, v3);
  if (!v5)
  {
    return sub_1DDA15590();
  }

LABEL_3:
  sub_1DDA15590();

  return sub_1DD96C724(a1, v5);
}

uint64_t sub_1DD9D3F54(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD96CFA8(v6, v3);
  if (!v2)
  {
    sub_1DDA15590();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DDA15590();
    return sub_1DDA155B0();
  }

  sub_1DDA15590();
  sub_1DD96C990(v6, v2);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DDA15590();
  sub_1DD96C724(v6, v4);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD9F8C2C(v5, v7) & 1;
}

uint64_t sub_1DD9D4060(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6863735F6E6F736ALL;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB00000000616D65;
  }

  if (*a2)
  {
    v5 = 0x6863735F6E6F736ALL;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xEB00000000616D65;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

uint64_t sub_1DD9D4108()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D418C(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D41FC(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9D4288(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x6863735F6E6F736ALL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000616D65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9D42C8()
{
  if (*v0)
  {
    return 0x6863735F6E6F736ALL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD9D4310(uint64_t a1)
{
  v2 = sub_1DDA0ED9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D434C(uint64_t a1)
{
  v2 = sub_1DDA0ED9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D4388(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D58, &qword_1DDA24C70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11744();
  sub_1DDA15650();
  v12 = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    type metadata accessor for JSONSchema();
    sub_1DD9E4B98(&qword_1ECD83450, type metadata accessor for JSONSchema, &unk_1DDA1A530);
    sub_1DDA15380();
    v10[14] = 2;
    sub_1DDA15340();
    v10[13] = 3;
    sub_1DDA15350();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9D458C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD849D8, &qword_1DDA22868);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0ED9C();
  sub_1DDA15650();
  LOBYTE(v12) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v9 = v3[2];
    v12 = v3[1];
    v13[0] = v9;
    *(v13 + 9) = *(v3 + 41);
    v11[15] = 1;
    sub_1DDA0EEAC();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9D471C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D47D0(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D4870(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD9D4920@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA01F70(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9D4950(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0x80000001DDA26BA0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x746369727473;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x616D65686373;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DD9D49C0()
{
  v1 = 1701667182;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 0x616D65686373;
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

unint64_t sub_1DD9D4A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA01F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9D4A54(uint64_t a1)
{
  v2 = sub_1DDA11744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D4A90(uint64_t a1)
{
  v2 = sub_1DDA11744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9D4ACC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DDA01FBC(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DD9D4B28()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD965608(v1);
  sub_1DDA14BC0();
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4BC0(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DD965608(a1);
  sub_1DDA14BC0();
  return sub_1DDA15590();
}

uint64_t sub_1DD9D4C2C(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD965608(v2);
  sub_1DDA14BC0();
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4CC0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_1DDA15440()) && (sub_1DD96D458(v2, v7) & 1) != 0 && (v3 == v6 && v4 == v8 || (sub_1DDA15440()))
  {
    return v5 ^ v9 ^ 1u;
  }

  else
  {
    return 0;
  }
}

double sub_1DD9D4D84@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DDA022C0(a2, v6);
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

uint64_t sub_1DD9D4DE8()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(v1);
  sub_1DDA14BC0();
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4E9C(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(a1);
  sub_1DDA14BC0();
  return sub_1DDA15590();
}

uint64_t sub_1DD9D4F24(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(v2);
  sub_1DDA14BC0();
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4FD4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v12 = sub_1DDA15440(), result = 0, (v12 & 1) != 0))
  {
    if ((v2 != v7 || v4 != v8) && (sub_1DDA15440() & 1) == 0 || (sub_1DD96D458(v3, v10) & 1) == 0)
    {
      return 0;
    }

    if (v5 == v9 && v6 == v11)
    {
      if (v15 != v14)
      {
        return 0;
      }
    }

    else if (sub_1DDA15440() & 1) == 0 || ((v15 ^ v14))
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1DD9D5100(void *a1)
{
  v3 = v1;
  v5 = v3[1];
  v18 = *v3;
  v19 = v5;
  v6 = v3[3];
  v28 = v3[2];
  v7 = v3[5];
  v16 = v3[4];
  v17 = v6;
  v15 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84070, &qword_1DDA1E2B8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FEF7C();
  sub_1DDA15650();
  v12 = *(v3 + 48);
  v20[0] = 1701869940;
  v20[1] = 0xE400000000000000;
  v21 = 0;
  LOBYTE(v22) = 1;
  sub_1DDA15340();
  if (v2)
  {
  }

  else
  {

    if (v12 <= 1)
    {
      if (v12)
      {
        v20[0] = v18;
        v20[1] = v19;
        v21 = v28;
        v22 = v17;
        v23 = v16;
        v24 = v15;
        strcpy(v25, "function_call");
        HIWORD(v25[1]) = -4864;
        v26 = 0;
        v27 = 1;
        sub_1DDA062BC();
      }

      else
      {
        LOBYTE(v20[0]) = v18;
        v20[1] = v19;
        v21 = v28;
        LOBYTE(v22) = v17 & 1;
        strcpy(v25, "message");
        v25[1] = 0xE700000000000000;
        v26 = 0;
        v27 = 1;
        sub_1DDA06310();
      }
    }

    else if (v12 == 2)
    {
      v20[0] = v18;
      v20[1] = v19;
      v21 = v28;
      v22 = v17;
      v23 = v16;
      v25[0] = 0xD000000000000014;
      v25[1] = 0x80000001DDA29BF0;
      v26 = 0;
      v27 = 1;
      sub_1DDA061C0();
    }

    else if (v12 == 3)
    {
      v25[0] = v18;
      v25[1] = v19;
      v26 = v28;
      v20[0] = 0xD000000000000013;
      v20[1] = 0x80000001DDA29C10;
      v21 = 0;
      LOBYTE(v22) = 1;
      sub_1DDA0616C();
    }

    else if (v28 | v19 | v18 | v17 | v16 | v15)
    {
      v20[0] = 0xD000000000000010;
      v20[1] = 0x80000001DDA29BD0;
      v21 = 0;
      LOBYTE(v22) = 1;
      sub_1DDA06214();
    }

    else
    {
      strcpy(v20, "browser_call");
      BYTE5(v20[1]) = 0;
      HIWORD(v20[1]) = -5120;
      v21 = 0;
      LOBYTE(v22) = 1;
      sub_1DDA06268();
    }

    sub_1DDA15380();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1DD9D55C0(uint64_t a1)
{
  v3 = type metadata accessor for FileGeneratorCall.File(0);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageGeneratorCall.Image(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 48);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      MEMORY[0x1E12B8440](4);
      sub_1DDA14BC0();
      sub_1DDA14BC0();
      v19 = *(v12 + 16);
      result = MEMORY[0x1E12B8440](v19);
      if (v19)
      {
        v20 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v21 = *(v7 + 72);
        do
        {
          sub_1DD9FF500(v20, v9, type metadata accessor for ImageGeneratorCall.Image);
          sub_1DDA134E0();
          sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1DDA14AD0();
          result = sub_1DD9FF568(v9, type metadata accessor for ImageGeneratorCall.Image);
          v20 += v21;
          --v19;
        }

        while (v19);
      }
    }

    else if (v13 == 3)
    {
      v14 = *(v1 + 16);
      MEMORY[0x1E12B8440](5);
      sub_1DDA14BC0();
      v15 = *(v14 + 16);
      result = MEMORY[0x1E12B8440](v15);
      if (v15)
      {
        v17 = v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v18 = *(v24 + 72);
        do
        {
          sub_1DD9FF500(v17, v5, type metadata accessor for FileGeneratorCall.File);
          sub_1DDA134E0();
          sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1DDA14AD0();
          result = sub_1DD9FF568(v5, type metadata accessor for FileGeneratorCall.File);
          v17 += v18;
          --v15;
        }

        while (v15);
      }
    }

    else
    {
      if (*(v1 + 16) | v10 | *v1 | v11 | v12 | *(v1 + 40))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      return MEMORY[0x1E12B8440](v22);
    }

    return result;
  }

  if (*(v1 + 48))
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();

    if (v11)
    {
      MEMORY[0x1E12B8440](1);

      return sub_1DD96B794(a1, v10);
    }

    MEMORY[0x1E12B8440](0);
  }

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9D5AA4()
{
  sub_1DDA15570();
  sub_1DD9D55C0(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D5AE8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD9D55C0(v2);
  return sub_1DDA155B0();
}

BOOL sub_1DD9D5B24(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return sub_1DD9FAFE8(v5, v7);
}

uint64_t sub_1DD9D5B80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E65746E6F63;
  }

  else
  {
    v3 = 1701605234;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E65746E6F63;
  }

  else
  {
    v5 = 1701605234;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

uint64_t sub_1DD9D5C20()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D5C9C(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D5D04(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9D5D88(uint64_t *a1@<X8>)
{
  v2 = 1701605234;
  if (*v1)
  {
    v2 = 0x746E65746E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9D5DC0()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701605234;
  }
}

uint64_t sub_1DD9D5E00(uint64_t a1)
{
  v2 = sub_1DDA0BF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D5E3C(uint64_t a1)
{
  v2 = sub_1DDA0BF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D5E78(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  if (a4)
  {
    v9 = a2;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84C68, &qword_1DDA24C20);
    sub_1DDA11150();
    sub_1DDA154A0();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_1DDA15470();
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DD9D5F78(void *a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = a5;
  v14 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84778, &qword_1DDA22790);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BF84();
  sub_1DDA15650();
  LOBYTE(v15) = a2;
  v19 = 0;
  sub_1DDA0C290();
  sub_1DDA15380();
  if (!v5)
  {
    v15 = a3;
    v16 = v14;
    v17 = v18 & 1;
    v19 = 1;
    sub_1DDA0C2E4();
    sub_1DDA15380();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DD9D6128(char a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  if (a4)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DD96B794(v7, a2);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

void *sub_1DD9D6214@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA02E38(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DD9D6268()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1DDA15570();
  if (v2)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DD96B794(v4, v1);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D62EC(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x1E12B8440](1);

    return sub_1DD96B794(a1, v3);
  }

  else
  {
    MEMORY[0x1E12B8440](0);

    return sub_1DDA14BC0();
  }
}

uint64_t sub_1DD9D6380(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1DDA15570();
  if (v3)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DD96B794(v5, v2);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D6400(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return sub_1DD966858(v3, *a2);
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v3 == *a2 && v5 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440();
  }
}

uint64_t sub_1DD9D6458@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DDA033BC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1DD9D64C4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_1DDA14BC0();

  if (v3)
  {
    MEMORY[0x1E12B8440](1);

    return sub_1DD96B794(a1, v2);
  }

  else
  {
    MEMORY[0x1E12B8440](0);

    return sub_1DDA14BC0();
  }
}

uint64_t sub_1DD9D65C0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_1DDA15570();
  sub_1DDA14BC0();

  if (v3)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DD96B794(v5, v2);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D66C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v102 = sub_1DDA150C0();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for ChatChunk.RateLimits(0);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  v8 = MEMORY[0x1EEE9AC00](v91);
  v90 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v84 - v10;
  v108 = type metadata accessor for ChatChunk.ChoiceResource(0);
  v11 = MEMORY[0x1EEE9AC00](v108);
  v103 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v104 = &v84 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v105 = &v84 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v106 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v84 - v19;
  v110 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  MEMORY[0x1EEE9AC00](SessionResponse);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D88, &qword_1DDA1E188);
  v112 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  v27 = type metadata accessor for ChatChunk(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[3];
  v126 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1DD9FEF7C();
  v31 = v113;
  sub_1DDA15620();
  if (!v31)
  {
    v113 = SessionResponse;
    v88 = v23;
    v87 = v27;
    v86 = v29;
    v32 = v111;
    *&v114 = 1701869940;
    *(&v114 + 1) = 0xE400000000000000;
    *&v115 = 0;
    BYTE8(v115) = 1;
    v33 = 0;
    v34 = sub_1DDA15280();
    v36 = v35;
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v37 = sub_1DDA14810();
    v38 = __swift_project_value_buffer(v37, qword_1ECDA20E0);

    v84 = v38;
    v39 = sub_1DDA147F0();
    v40 = sub_1DDA14EC0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v85 = 0;
      v43 = v42;
      *&v114 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_1DD93FA54(v34, v36, &v114);
      _os_log_impl(&dword_1DD8F8000, v39, v40, "Received chunk information of type: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v44 = v43;
      v33 = v85;
      MEMORY[0x1E12B8CE0](v44, -1, -1);
      MEMORY[0x1E12B8CE0](v41, -1, -1);
    }

    if (v34 == 0x2E6E6F6973736573 && v36 == 0xEF64657461657263 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v34;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD837F8, type metadata accessor for CreateSessionResponse, &unk_1DDA1CBD4);
      v45 = v88;
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v26, v24);

        v46 = v86;
        sub_1DD9FEFD0(v45, v86, type metadata accessor for CreateSessionResponse);
LABEL_11:
        swift_storeEnumTagMultiPayload();
        v47 = v32;
LABEL_12:
        sub_1DD9FEFD0(v46, v47, type metadata accessor for ChatChunk);
        return __swift_destroy_boxed_opaque_existential_1(v126);
      }

LABEL_17:
      (*(v112 + 8))(v26, v24);
LABEL_18:

      return __swift_destroy_boxed_opaque_existential_1(v126);
    }

    v48 = v24;
    if (v34 == 0xD000000000000016 && 0x80000001DDA29170 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v34;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83E38, type metadata accessor for ChatChunk.FileUploadResponse, &unk_1DDA1CD2C);
      v49 = v109;
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v26, v24);

        v46 = v86;
        sub_1DD9FEFD0(v49, v86, type metadata accessor for ChatChunk.FileUploadResponse);
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    v113 = v26;
    v51 = v34;
    v52 = v34 == 0xD000000000000018;
    v53 = v32;
    v54 = v112;
    if (v52 && 0x80000001DDA29190 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF3D4();
      v55 = v113;
      sub_1DDA152C0();
      v56 = (v54 + 8);
      if (v33)
      {
        (*v56)(v55, v48);
        goto LABEL_18;
      }

      (*v56)(v55, v48);

      v57 = v119;
      v46 = v86;
      *(v86 + 4) = v118;
      *(v46 + 80) = v57;
      *(v46 + 96) = v120;
      *(v46 + 112) = v121;
      v58 = v115;
      *v46 = v114;
      *(v46 + 16) = v58;
      v59 = v117;
      *(v46 + 32) = v116;
      *(v46 + 48) = v59;
LABEL_28:
      swift_storeEnumTagMultiPayload();
      v47 = v53;
      goto LABEL_12;
    }

    if (v51 == 0xD000000000000020 && 0x80000001DDA291B0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E20, &qword_1DDA1E190);
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9FF428();
      v60 = v113;
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v60, v48);

        v46 = v86;
        *v86 = v122;
        goto LABEL_28;
      }

LABEL_33:
      (*(v112 + 8))(v60, v48);
      goto LABEL_18;
    }

    if (v51 == 0xD000000000000015 && 0x80000001DDA291E0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF3D4();
      v61 = v113;
      sub_1DDA152C0();
      v62 = (v112 + 8);
      if (v33)
      {
        (*v62)(v61, v48);
        goto LABEL_18;
      }

      (*v62)(v61, v48);

      v63 = v119;
      v46 = v86;
      *(v86 + 4) = v118;
      *(v46 + 80) = v63;
      *(v46 + 96) = v120;
      *(v46 + 112) = v121;
      v64 = v115;
      *v46 = v114;
      *(v46 + 16) = v64;
      v65 = v117;
      *(v46 + 32) = v116;
      *(v46 + 48) = v65;
      goto LABEL_28;
    }

    if (v51 == 0xD000000000000020 && 0x80000001DDA29200 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource, &unk_1DDA1D17C);
      v66 = v107;
      v60 = v113;
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v60, v48);

        v67 = v66;
        v46 = v86;
        sub_1DD9FEFD0(v67, v86, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    if (v51 == 0xD000000000000026 && 0x80000001DDA29230 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource, &unk_1DDA1D17C);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v106, v86, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000024 && 0x80000001DDA29260 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource, &unk_1DDA1D17C);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v105, v86, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000025 && 0x80000001DDA29290 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource, &unk_1DDA1D17C);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v104, v86, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD00000000000001FLL && 0x80000001DDA292C0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource, &unk_1DDA1D17C);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v103, v86, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000028 && 0x80000001DDA292E0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF380();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
LABEL_72:
        (*v68)(v113, v48);
        goto LABEL_18;
      }

LABEL_193:
      (*v68)(v113, v48);

      v72 = v117;
      v46 = v86;
      *(v86 + 2) = v116;
      *(v46 + 48) = v72;
      *(v46 + 64) = v118;
      v73 = v115;
      *v46 = v114;
      *(v46 + 16) = v73;
      goto LABEL_11;
    }

    if (v51 == 0xD000000000000027 && 0x80000001DDA29310 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF380();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v51 == 0xD00000000000003ALL && 0x80000001DDA29340 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83E00, type metadata accessor for ChatChunk.ChoiceItemMessageContent, &unk_1DDA1D57C);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v89, v86, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000039 && 0x80000001DDA29380 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83E00, type metadata accessor for ChatChunk.ChoiceItemMessageContent, &unk_1DDA1D57C);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v90, v86, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000045 && 0x80000001DDA293C0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF2D8();
      sub_1DDA152C0();
      if (!v33)
      {
        goto LABEL_113;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000044 && 0x80000001DDA29410 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF32C();
      sub_1DDA152C0();
      if (!v33)
      {
        goto LABEL_113;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD00000000000004DLL && 0x80000001DDA29460 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83DF0, type metadata accessor for ChatChunk.TextValueAnnotation, &unk_1DDA1DA0C);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v93, v86, type metadata accessor for ChatChunk.TextValueAnnotation);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000042 && 0x80000001DDA294B0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF2D8();
      sub_1DDA152C0();
      if (!v33)
      {
        goto LABEL_113;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000041 && 0x80000001DDA29500 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF284();
      sub_1DDA152C0();
      if (!v33)
      {
LABEL_113:
        (*(v112 + 8))(v113, v48);

        v69 = v116;
        v70 = v115;
        v46 = v86;
        *v86 = v114;
        *(v46 + 16) = v70;
        *(v46 + 32) = v69;
        goto LABEL_11;
      }

LABEL_50:
      (*(v112 + 8))(v113, v48);
      goto LABEL_18;
    }

    v110 = 0xD000000000000040;
    if (v51 == 0xD000000000000040 && 0x80000001DDA29550 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF230();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

LABEL_153:
      (*(v112 + 8))(v113, v48);

      v71 = v115;
      v46 = v86;
      *v86 = v114;
      *(v46 + 16) = v71;
      goto LABEL_11;
    }

    v109 = 0xD00000000000003FLL;
    if (v51 == 0xD00000000000003FLL && 0x80000001DDA295A0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF1DC();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_153;
    }

    if (v51 == v109 && 0x80000001DDA295E0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9FF188();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

LABEL_208:
      (*(v112 + 8))(v113, v48);

      v46 = v86;
      goto LABEL_11;
    }

    v109 = 0xD00000000000003DLL;
    if (v51 == 0xD00000000000003DLL && 0x80000001DDA29620 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9FF188();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v51 == 0xD00000000000003ALL && 0x80000001DDA29660 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9FF188();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v51 == 0xD000000000000043 && 0x80000001DDA296A0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v51 == 0xD000000000000044 && 0x80000001DDA296F0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF134();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_153;
    }

    if (v51 == 0xD000000000000043 && 0x80000001DDA29740 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF0E0();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_153;
    }

    if (v51 == 0xD000000000000042 && 0x80000001DDA29790 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v51 == 0xD000000000000046 && 0x80000001DDA297E0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83DB0, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded, &unk_1DDA1DEB4);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v95, v86, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == 0xD000000000000041 && 0x80000001DDA29830 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v51 == 0xD000000000000042 && 0x80000001DDA29880 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v51 == 0xD000000000000041 && 0x80000001DDA298D0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v51 == 0xD000000000000044 && 0x80000001DDA29920 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83DA8, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded, &unk_1DDA1DFFC);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v97, v86, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v51 == v110 && 0x80000001DDA29970 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v51 == 0xD00000000000003BLL && 0x80000001DDA299C0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      v122 = v51;
      v123 = v36;
      v124 = 0;
      v125 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v68 = (v112 + 8);
      if (v33)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v51 == v109 && 0x80000001DDA29A00 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9FF038();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v51 == 0xD00000000000004ALL && 0x80000001DDA29A40 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9FF038();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v51 == 0xD000000000000048 && 0x80000001DDA29A90 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9FF038();
      sub_1DDA152C0();
      if (v33)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v51 == 0xD00000000000001BLL && 0x80000001DDA29AE0 == v36 || (sub_1DDA15440() & 1) != 0)
    {
      *&v114 = v51;
      *(&v114 + 1) = v36;
      *&v115 = 0;
      BYTE8(v115) = 1;
      sub_1DD9E4B98(&qword_1ECD83570, type metadata accessor for ChatChunk.RateLimits, &unk_1DDA1CA64);
      sub_1DDA152C0();
      if (!v33)
      {
        (*(v112 + 8))(v113, v48);

        v46 = v86;
        sub_1DD9FEFD0(v99, v86, type metadata accessor for ChatChunk.RateLimits);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    v74 = sub_1DDA147F0();
    v75 = sub_1DDA14EE0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v114 = v77;
      *v76 = 136446210;
      *(v76 + 4) = sub_1DD93FA54(v51, v36, &v114);
      _os_log_impl(&dword_1DD8F8000, v74, v75, "Unrecognized ChatChunk type: %{public}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1E12B8CE0](v77, -1, -1);
      MEMORY[0x1E12B8CE0](v76, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v126, v126[3]);
    sub_1DDA155F0();
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_1DDA15070();

    *&v114 = 0xD00000000000001DLL;
    *(&v114 + 1) = 0x80000001DDA29B00;
    MEMORY[0x1E12B7AB0](v51, v36);

    v78 = v100;
    sub_1DDA150B0();
    v79 = sub_1DDA150D0();
    swift_allocError();
    v81 = v80;
    v82 = v101;
    v83 = v102;
    (*(v101 + 16))(v80, v78, v102);
    (*(*(v79 - 8) + 104))(v81, *MEMORY[0x1E69E6B00], v79);
    swift_willThrow();
    (*(v82 + 8))(v78, v83);
    (*(v112 + 8))(v113, v48);
  }

  return __swift_destroy_boxed_opaque_existential_1(v126);
}

uint64_t sub_1DD9D9418(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DDA13680();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  sub_1DDA14BC0();
  v13 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  sub_1DD90ADB4(v2 + v13[5], v12, &qword_1ECD82838, &unk_1DDA185F0);
  v14 = *(v4 + 48);
  if (v14(v12, 1, v3) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v4 + 8))(v6, v3);
  }

  sub_1DD90ADB4(v2 + v13[6], v10, &qword_1ECD82838, &unk_1DDA185F0);
  if (v14(v10, 1, v3) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v2 + v13[7]) == 2)
  {
    sub_1DDA15590();
  }

  else
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  if (*(v2 + v13[8] + 8))
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  if (*(v2 + v13[9] + 8))
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  v15 = (v2 + v13[10]);
  if (*(v15 + 8) == 1)
  {
    return sub_1DDA15590();
  }

  v17 = *v15;
  sub_1DDA15590();
  return MEMORY[0x1E12B8460](v17);
}

uint64_t sub_1DD9D985C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD841E0, &qword_1DDA1E338);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 20);
  v16 = sub_1DDA13680();
  v17 = *(*(v16 - 8) + 56);
  v48 = v15;
  v17(v14 + v15, 1, 1, v16);
  v49 = *(v11 + 24);
  v46 = v14;
  v17(v14 + v49, 1, 1, v16);
  v18 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1DDA06514();
  v44 = v10;
  v19 = v45;
  sub_1DDA15620();
  if (v19)
  {
    v22 = v48;
    __swift_destroy_boxed_opaque_existential_1(v47);
    v23 = v46;
    sub_1DD90D378(v46 + v22, &qword_1ECD82838, &unk_1DDA185F0);
    sub_1DD90D378(v23 + v49, &qword_1ECD82838, &unk_1DDA185F0);
  }

  else
  {
    v45 = v11;
    v20 = v42;
    v57 = 0;
    v21 = sub_1DDA15280();
    v24 = v46;
    *v46 = v21;
    *(v24 + 8) = v25;
    v56 = 1;
    sub_1DD9E4B98(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1DDA15260();
    sub_1DD90AE1C(v7, v24 + v48, &qword_1ECD82838, &unk_1DDA185F0);
    v55 = 2;
    v26 = v41;
    sub_1DDA15260();
    sub_1DD90AE1C(v26, v24 + v49, &qword_1ECD82838, &unk_1DDA185F0);
    v53 = 3;
    sub_1DDA06568();
    sub_1DDA15260();
    v27 = v45;
    *(v24 + v45[7]) = v54;
    v52 = 4;
    v28 = sub_1DDA15220();
    v29 = (v24 + v27[8]);
    *v29 = v28;
    v29[1] = v30;
    v51 = 5;
    v31 = sub_1DDA15220();
    v32 = (v24 + v27[9]);
    *v32 = v31;
    v32[1] = v33;
    v50 = 6;
    v34 = sub_1DDA15270();
    v36 = v35;
    v37 = v20;
    v38 = v24 + v27[10];
    (*(v37 + 8))(v44, v43);
    *v38 = v34;
    *(v38 + 8) = v36 & 1;
    sub_1DD9FF500(v24, v40, type metadata accessor for ChatChunk.FileUploadResponse);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_1DD9FF568(v24, type metadata accessor for ChatChunk.FileUploadResponse);
  }
}

uint64_t sub_1DD9D9E04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69737365636F7270;
  }

  else
  {
    v3 = 0x6574656C706D6F63;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v5 = 0x69737365636F7270;
  }

  else
  {
    v5 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000676ELL;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

void sub_1DD9D9EC0(uint64_t *a1@<X8>)
{
  v2 = 0x6574656C706D6F63;
  if (*v1)
  {
    v2 = 0x69737365636F7270;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9D9F68()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D9FF4(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DA06C(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DA10C(uint64_t a1)
{
  sub_1DDA14BC0();
}

unint64_t sub_1DD9DA214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA035A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9DA244(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701667182;
  if (v2 != 5)
  {
    v6 = 1702521203;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737574617473;
  if (v2 != 3)
  {
    v8 = 0x7079745F656D696DLL;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007461;
  v10 = 0x5F64657461657263;
  if (v2 != 1)
  {
    v10 = 0x6574656C706D6F63;
    v9 = 0xEC00000074615F64;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t sub_1DD9DA314()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701667182;
  if (v1 != 5)
  {
    v3 = 1702521203;
  }

  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x7079745F656D696DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x5F64657461657263;
  if (v1 != 1)
  {
    v5 = 0x6574656C706D6F63;
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

unint64_t sub_1DD9DA3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA035A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9DA408(uint64_t a1)
{
  v2 = sub_1DDA06514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DA444(uint64_t a1)
{
  v2 = sub_1DDA06514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DA4D0(uint64_t a1)
{
  v3 = sub_1DDA134E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v26 - v7;
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (v1[5])
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  sub_1DDA14BC0();
  if (v1[9])
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  v27 = v1;
  v9 = v1[10];
  if (v9)
  {
    sub_1DDA15590();
    v10 = *(v9 + 16);
    MEMORY[0x1E12B8440](v10);
    if (v10)
    {
      v11 = type metadata accessor for ChatChunk.Choice(0);
      v12 = *(v11 - 8);
      v13 = (v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
      v26[1] = 0x80000001DDA28010;
      v14 = *(v12 + 72);
      v26[0] = 0x80000001DDA28030;
      v34 = (v4 + 48);
      v29 = (v4 + 8);
      v30 = (v4 + 32);
      v31 = v14;
      v32 = v11;
      v28 = v8;
      do
      {
        sub_1DDA14BC0();
        sub_1DDA14BC0();

        sub_1DD96BCC4(a1, v13[3]);
        v16 = v13[7];
        if (v16 == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v17 = v3;
          v18 = v13[4];
          v19 = v13[5];
          sub_1DDA15590();
          sub_1DD928DC0(v18, v19);
          sub_1DDA14BC0();

          sub_1DDA15590();
          if (v16)
          {
            sub_1DDA14BC0();
          }

          v3 = v17;
          v8 = v28;
          v14 = v31;
          v11 = v32;
        }

        sub_1DD90ADB4(v13 + *(v11 + 32), v8, &qword_1ECD82CE0, &qword_1DDA18700);
        if ((*v34)(v8, 1, v3) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v15 = v33;
          (*v30)(v33, v8, v3);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1DDA14AD0();
          (*v29)(v15, v3);
        }

        v13 = (v13 + v14);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1DDA15590();
  }

  v20 = v27[11];
  if (v20)
  {
    sub_1DDA15590();
    v21 = *(v20 + 16);
    MEMORY[0x1E12B8440](v21);
    if (v21)
    {
      v22 = v20 + 56;
      do
      {

        sub_1DDA14BC0();

        sub_1DDA14BC0();
        swift_bridgeObjectRelease_n();

        v22 += 32;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    sub_1DDA15590();
  }

  v23 = v27[12];
  if (!v23)
  {
    return sub_1DDA15590();
  }

  v24 = v27[14];
  sub_1DDA15590();
  sub_1DD96C2BC(a1, v23);
  if (!v24)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();
  return sub_1DDA14BC0();
}

unint64_t sub_1DD9DAB3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DDA035EC(*a1, a1[1]);
  *a2 = result;
  return result;
}