uint64_t sub_1C6DEAC8C(uint64_t a1)
{
  result = sub_1C6EE41A0();
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

uint64_t FileStore.init(containersDirectory:resourcesDirectory:modelsDirectory:)(char *a1, char *a2, char *a3)
{
  v4 = v3;
  v86 = *MEMORY[0x1E69E9840];
  v79 = sub_1C6EE4090();
  v83 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6EE42F0();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C6EE41A0();
  v82 = *(v75 - 8);
  v11 = MEMORY[0x1EEE9AC00](v75);
  v80 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v65 - v13;
  *(v3 + qword_1EDEF6910) = 0;
  if (qword_1EDEF85F0 != -1)
  {
    swift_once();
  }

  *(v3 + qword_1EDEF6928) = qword_1EDEFCCE0;
  v14 = objc_opt_self();

  v15 = [v14 defaultManager];
  v16 = sub_1C6EE4100();
  v84 = 0;
  v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v84];

  v18 = v84;
  if (v17 && (v19 = v84, v20 = [v14 defaultManager], v21 = sub_1C6EE4100(), v84 = 0, v22 = objc_msgSend(v20, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v21, 1, 0, &v84), v20, v21, v18 = v84, v22))
  {
    v23 = v84;
    v24 = [v14 defaultManager];
    v25 = sub_1C6EE4100();
    v84 = 0;
    v26 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v84];

    if (v26)
    {
      v27 = v84;
      v28 = v81;
      sub_1C6EE4120();
      v29 = v82;
      v30 = *(v82 + 32);
      v31 = v75;
      v30(v4 + qword_1EDEF6918, v28, v75);
      sub_1C6EE4120();
      v30(v4 + qword_1EDEF6920, v28, v31);
      sub_1C6EE4120();
      v32 = *(v29 + 8);
      v32(a3, v31);
      v32(a2, v31);
      v32(a1, v31);
      v33 = v4;
      v30(v4 + qword_1EDEF6938, v28, v31);
      return v33;
    }

    v64 = v84;
    v35 = sub_1C6EE4050();
  }

  else
  {
    v34 = v18;
    v35 = sub_1C6EE4050();
  }

  swift_willThrow();
  v70 = a3;
  v71 = a2;
  v72 = a1;
  v73 = v4;
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDEF8F88;
  v37 = sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C6EE6590;
  v84 = 0;
  v85 = 0xE000000000000000;
  swift_getErrorValue();
  sub_1C6EE5480();
  v39 = v84;
  v40 = v85;
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1C6DF10E0();
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  sub_1C6EE4730("Failed to create directories for computationalGraph store with error: %{public}@", 80, 2, &dword_1C6DE9000, v36, v37, v38);

  v41 = v80;
  sub_1C6EE40F0();
  v42 = v76;
  sub_1C6EE42E0();
  v43 = sub_1C6EE42D0();
  v45 = v44;
  (*(v77 + 8))(v42, v78);
  v84 = v43;
  v85 = v45;
  v46 = *MEMORY[0x1E6968F58];
  v47 = v83;
  v48 = v83 + 104;
  v49 = *(v83 + 104);
  v50 = v74;
  v69 = v35;
  v51 = v79;
  v49(v74, v46, v79);
  v76 = v49;
  v77 = v48;
  v67 = sub_1C6DF0C68();
  sub_1C6EE4180();
  v52 = *(v47 + 8);
  v83 = v47 + 8;
  v52(v50, v51);
  v78 = v52;

  v53 = v82;
  v68 = *(v82 + 8);
  v54 = v41;
  v55 = v75;
  v68(v54, v75);
  v84 = 0x656E6961746E6F63;
  v85 = 0xEA00000000007372;
  v66 = v46;
  v49(v50, v46, v51);
  sub_1C6EE4190();
  v52(v50, v51);
  v56 = *(v53 + 32);
  v82 = v53 + 32;
  v65 = v56;
  v57 = v73;
  v58 = v80;
  v56(v73 + qword_1EDEF6918, v80, v55);
  v84 = 0x656372756F736572;
  v85 = 0xE900000000000073;
  v59 = v79;
  (v76)(v50, v46, v79);
  v60 = v81;
  sub_1C6EE4190();
  v78(v50, v59);
  v61 = v65;
  v65(v57 + qword_1EDEF6920, v58, v55);
  v84 = 0x736C65646F6DLL;
  v85 = 0xE600000000000000;
  (v76)(v50, v66, v59);
  sub_1C6EE4190();

  v62 = v68;
  v68(v70, v55);
  v62(v71, v55);
  v62(v72, v55);
  v78(v50, v59);
  v62(v60, v55);
  v33 = v57;
  v61(v57 + qword_1EDEF6938, v80, v55);
  return v33;
}

uint64_t sub_1C6DEB66C()
{
  result = sub_1C6DEB68C();
  qword_1EDEFCCE0 = result;
  return result;
}

uint64_t sub_1C6DEB68C()
{
  type metadata accessor for PackageInstaller();
  v0 = swift_allocObject();
  v1 = 0;
  v64 = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v2 = (v0 + 16);
  while (1)
  {
    if (!byte_1F468A2C8[v1 + 32])
    {
      v16 = type metadata accessor for DirectoryPackageInstaller();
      v17 = swift_allocObject();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v2;
      v70 = &off_1F468BCE8;
      v71 = v19;
      v69 = v16;
      *&v68 = v17;

      v8 = sub_1C6DEBD64(0);
      v21 = v19[2];
      v22 = (v20 & 1) == 0;
      v12 = __OFADD__(v21, v22);
      v23 = v21 + v22;
      if (v12)
      {
        goto LABEL_40;
      }

      v24 = v20;
      if (v19[3] < v23)
      {
        sub_1C6DEBFEC(v23, isUniquelyReferenced_nonNull_native);
        v8 = sub_1C6DEBD64(0);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_45;
        }

LABEL_24:
        v36 = v71;
        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_2;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v60 = v8;
      sub_1C6E09F2C();
      v8 = v60;
      v36 = v71;
      if ((v24 & 1) == 0)
      {
LABEL_25:
        v45 = v8;
        v46 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
        MEMORY[0x1EEE9AC00](v46);
        v48 = (&v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v49 + 16))(v48);
        v50 = *v48;
        v66 = v16;
        v67 = &off_1F468BCE8;
        *&v65 = v50;
        v36[(v45 >> 6) + 8] |= 1 << v45;
        *(v36[6] + v45) = 0;
        sub_1C6DEC3A8(&v65, v36[7] + 40 * v45);
        v51 = v36[2];
        v12 = __OFADD__(v51, 1);
        v44 = v51 + 1;
        if (v12)
        {
          goto LABEL_44;
        }

LABEL_31:
        v36[2] = v44;
        __swift_destroy_boxed_opaque_existential_1(&v68);
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    if (byte_1F468A2C8[v1 + 32] == 1)
    {
      break;
    }

    v26 = type metadata accessor for AppleArchivePackageInstaller();
    v27 = swift_allocObject();
    swift_beginAccess();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v2;
    v70 = &off_1F468BCF8;
    v71 = v29;
    v69 = v26;
    *&v68 = v27;

    v8 = sub_1C6DEBD64(2);
    v31 = v29[2];
    v32 = (v30 & 1) == 0;
    v12 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v12)
    {
      goto LABEL_41;
    }

    v34 = v30;
    if (v29[3] < v33)
    {
      sub_1C6DEBFEC(v33, v28);
      v8 = sub_1C6DEBD64(2);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_45;
      }

LABEL_29:
      v36 = v71;
      if ((v34 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_2;
    }

    if (v28)
    {
      goto LABEL_29;
    }

    v61 = v8;
    sub_1C6E09F2C();
    v8 = v61;
    v36 = v71;
    if ((v34 & 1) == 0)
    {
LABEL_30:
      v52 = v8;
      v53 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x1EEE9AC00](v53);
      v55 = (&v63 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v56 + 16))(v55);
      v57 = *v55;
      v66 = v26;
      v67 = &off_1F468BCF8;
      *&v65 = v57;
      v36[(v52 >> 6) + 8] |= 1 << v52;
      *(v36[6] + v52) = 2;
      sub_1C6DEC3A8(&v65, v36[7] + 40 * v52);
      v58 = v36[2];
      v12 = __OFADD__(v58, 1);
      v44 = v58 + 1;
      if (v12)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

LABEL_2:
    v3 = (v36[7] + 40 * v8);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C6DEC3A8(&v68, v3);
LABEL_3:
    *v2 = v36;
    swift_endAccess();
    ++v1;

    if (v1 == 3)
    {
      return v64;
    }
  }

  v4 = type metadata accessor for ZipArchivePackageInstaller();
  v5 = swift_allocObject();
  swift_beginAccess();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v70 = &off_1F468BD08;
  v71 = v7;
  v69 = v4;
  *&v68 = v5;

  v8 = sub_1C6DEBD64(1);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (!v12)
  {
    v14 = v9;
    if (v7[3] < v13)
    {
      sub_1C6DEBFEC(v13, v6);
      v8 = sub_1C6DEBD64(1);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_45;
      }

LABEL_19:
      v36 = v71;
      if ((v14 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_2;
    }

    if (v6)
    {
      goto LABEL_19;
    }

    v59 = v8;
    sub_1C6E09F2C();
    v8 = v59;
    v36 = v71;
    if ((v14 & 1) == 0)
    {
LABEL_20:
      v37 = v8;
      v38 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x1EEE9AC00](v38);
      v40 = (&v63 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v41 + 16))(v40);
      v42 = *v40;
      v66 = v4;
      v67 = &off_1F468BD08;
      *&v65 = v42;
      v36[(v37 >> 6) + 8] |= 1 << v37;
      *(v36[6] + v37) = 1;
      sub_1C6DEC3A8(&v65, v36[7] + 40 * v37);
      v43 = v36[2];
      v12 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v12)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }

    goto LABEL_2;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

unint64_t sub_1C6DEBD64(uint64_t a1)
{
  v1 = a1;
  sub_1C6EE5580();
  sub_1C6EE4B30();

  v2 = sub_1C6EE55A0();

  return sub_1C6DEBE3C(v1, v2);
}

unint64_t sub_1C6DEBE3C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x696863724170697ALL;
          v8 = 0xEA00000000006576;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x637241656C707061;
          v8 = 0xEC00000065766968;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE900000000000079;
            if (v7 != 0x726F746365726964)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x726F746365726964;
        v8 = 0xE900000000000079;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x696863724170697ALL;
      }

      else
      {
        v10 = 0x637241656C707061;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006576;
      }

      else
      {
        v11 = 0xEC00000065766968;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1C6EE54B0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C6DEBFEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77D0, &qword_1C6EE6988);
  result = sub_1C6EE5330();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_1C6DEC3A8(v21, v30);
      }

      else
      {
        sub_1C6E0D038(v21, v30);
      }

      sub_1C6EE5580();
      sub_1C6EE4B30();

      result = sub_1C6EE55A0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_1C6DEC3A8(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1C6DEC304()
{
  result = qword_1EDEF85F8;
  if (!qword_1EDEF85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF85F8);
  }

  return result;
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

uint64_t sub_1C6DEC3A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_1C6DEC478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C6DEC4C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 26))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1C6DEC520(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1C6DEC53C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1C6DEC598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C6DEC5E8()
{
  result = qword_1EDEF6768;
  if (!qword_1EDEF6768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6768);
  }

  return result;
}

uint64_t sub_1C6DEC634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6DEC67C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C6DEC6D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C6DEC73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C6DEC79C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C6EE54B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_1C6DEC868(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t FileStore.import(configuration:resources:models:method:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v123 = a3;
  v134 = a2;
  v144 = *MEMORY[0x1E69E9840];
  v133 = *v5;
  v8 = v133;
  v141 = sub_1C6EE41A0();
  v9 = *(v141 - 8);
  v10 = MEMORY[0x1EEE9AC00](v141);
  v138 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v137 = &v123 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v127 = &v123 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v123 - v16;
  v17 = *(v8 + 80);
  v18 = sub_1C6EE4FE0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v123 - v21;
  v23 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v123 - v24;
  v135 = *a4;
  (*(v19 + 16))(v22, a1, v18);
  v26 = (*(v23 + 48))(v22, 1, v17);
  v139 = v9;
  if (v26 == 1)
  {
    result = (*(v19 + 8))(v22, v18);
    v124 = 0;
    v28 = v141;
    v29 = v127;
    v30 = v136;
    v31 = v134;
  }

  else
  {
    (*(v23 + 32))(v25, v22, v17);
    v124 = sub_1C6ECFF6C(v25);
    v28 = v141;
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v32 = qword_1EDEF8F88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1C6EE6590;
    v34 = sub_1C6EBF184(v17, *(v133 + 96));
    v36 = v35;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1C6DF10E0();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v37 = sub_1C6EE4EE0();
    sub_1C6EE4730("Successfully imported configuration into FileStore, identifier=%{public}@", 73, 2, &dword_1C6DE9000, v32, v37, v33);

    v31 = v134;
    result = (*(v23 + 8))(v25, v17);
    v29 = v127;
    v30 = v136;
  }

  v38 = *(v31 + 16);
  v140 = v5;
  if (v38)
  {
    v39 = objc_opt_self();
    v133 = qword_1EDEF6920;
    v131 = *(v139 + 16);
    v40 = v31 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    *&v130 = *(v139 + 72);
    v132 = v139 + 16;
    v129 = (v139 + 8);
    v128 = xmmword_1C6EE6590;
    v125 = xmmword_1C6EE6B40;
    v134 = v39;
    (v131)(v30, v40, v28);
    while (1)
    {
      sub_1C6EE40E0();
      v50 = v5;
      sub_1C6EE4110();

      v51 = [v39 defaultManager];
      sub_1C6EE4170();
      v52 = v39;
      v53 = sub_1C6EE4A60();

      v54 = [v51 fileExistsAtPath_];

      if (v54)
      {
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v41 = qword_1EDEF8F88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v42 = swift_allocObject();
        *(v42 + 16) = v128;
        v43 = sub_1C6EE40E0();
        v44 = v29;
        v46 = v45;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1C6DF10E0();
        *(v42 + 32) = v43;
        *(v42 + 40) = v46;
        v47 = sub_1C6EE4EE0();
        sub_1C6EE4730("Skipping import of resource into FileStore because it already exists, resource=%{public}@", 89, 2, &dword_1C6DE9000, v41, v47, v42);

        v5 = v50;
        v28 = v141;
      }

      else
      {
        v55 = [v52 defaultManager];
        v56 = sub_1C6EE4100();
        v57 = sub_1C6EE4100();
        if (v135)
        {
          v142 = 0;
          v58 = [v55 moveItemAtURL:v56 toURL:v57 error:&v142];

          v59 = v142;
          v5 = v50;
          v28 = v141;
          if (v58)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v142 = 0;
          v67 = [v55 copyItemAtURL:v56 toURL:v57 error:&v142];

          v59 = v142;
          v5 = v50;
          v28 = v141;
          if (v67)
          {
LABEL_16:
            v60 = v59;
            if (qword_1EDEF8F80 != -1)
            {
              swift_once();
            }

            v61 = qword_1EDEF8F88;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v62 = swift_allocObject();
            *(v62 + 16) = v128;
            v44 = v127;
            v63 = sub_1C6EE40E0();
            v65 = v64;
            *(v62 + 56) = MEMORY[0x1E69E6158];
            *(v62 + 64) = sub_1C6DF10E0();
            *(v62 + 32) = v63;
            *(v62 + 40) = v65;
            v66 = sub_1C6EE4EE0();
            sub_1C6EE4730("Successfully imported resource into FileStore, resource=%{public}@", 66, 2, &dword_1C6DE9000, v61, v66, v62);

            goto LABEL_11;
          }
        }

        v68 = v59;
        v69 = sub_1C6EE4050();

        swift_willThrow();
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v126 = qword_1EDEF8F88;
        v70 = sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v71 = swift_allocObject();
        *(v71 + 16) = v125;
        v44 = v127;
        v72 = sub_1C6EE40E0();
        v74 = v73;
        v75 = MEMORY[0x1E69E6158];
        *(v71 + 56) = MEMORY[0x1E69E6158];
        v76 = sub_1C6DF10E0();
        *(v71 + 64) = v76;
        *(v71 + 32) = v72;
        *(v71 + 40) = v74;
        v142 = 0;
        v143 = 0xE000000000000000;
        swift_getErrorValue();
        sub_1C6EE5480();
        v77 = v142;
        v78 = v143;
        *(v71 + 96) = v75;
        *(v71 + 104) = v76;
        *(v71 + 72) = v77;
        *(v71 + 80) = v78;
        sub_1C6EE4730("Failed to import resource into FileStore, resource=%{public}@, error=%{public}@", 79, 2, &dword_1C6DE9000, v126, v70, v71);

        v5 = v140;
        v28 = v141;
      }

LABEL_11:
      v48 = *v129;
      (*v129)(v44, v28);
      v49 = v136;
      result = v48(v136, v28);
      v40 += v130;
      --v38;
      v29 = v44;
      v39 = v134;
      if (!v38)
      {
        break;
      }

      (v131)(v49, v40, v28);
    }
  }

  v79 = v123;
  v80 = *(v123 + 16);
  v81 = v139;
  v82 = v137;
  if (v80)
  {
    v83 = objc_opt_self();
    v134 = qword_1EDEF6938;
    v85 = *(v81 + 16);
    v84 = v81 + 16;
    v133 = v85;
    v86 = v79 + ((*(v84 + 64) + 32) & ~*(v84 + 64));
    v132 = *(v84 + 56);
    v139 = v84;
    v131 = (v84 - 8);
    v130 = xmmword_1C6EE6590;
    v128 = xmmword_1C6EE6B40;
    v136 = v83;
    v85(v82, v86, v28);
    while (1)
    {
      sub_1C6EE40E0();
      sub_1C6EE4110();

      v96 = [v83 defaultManager];
      sub_1C6EE4170();
      v97 = sub_1C6EE4A60();

      v98 = [v96 fileExistsAtPath_];

      if (v98)
      {
        break;
      }

      v99 = [v83 defaultManager];
      v100 = sub_1C6EE4100();
      v101 = sub_1C6EE4100();
      if (v135)
      {
        v142 = 0;
        v102 = [v99 moveItemAtURL:v100 toURL:v101 error:&v142];

        v103 = v142;
        if (v102)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v142 = 0;
        v111 = [v99 copyItemAtURL:v100 toURL:v101 error:&v142];

        v103 = v142;
        if (v111)
        {
LABEL_34:
          v104 = v103;
          if (qword_1EDEF8F80 != -1)
          {
            swift_once();
          }

          v105 = qword_1EDEF8F88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v106 = swift_allocObject();
          *(v106 + 16) = v130;
          v89 = v138;
          v107 = sub_1C6EE40E0();
          v109 = v108;
          *(v106 + 56) = MEMORY[0x1E69E6158];
          *(v106 + 64) = sub_1C6DF10E0();
          *(v106 + 32) = v107;
          *(v106 + 40) = v109;
          v110 = sub_1C6EE4EE0();
          sub_1C6EE4730("Successfully imported model into FileStore, model=%{public}@", 60, 2, &dword_1C6DE9000, v105, v110, v106, v123);
LABEL_28:

          goto LABEL_29;
        }
      }

      v112 = v103;
      v113 = sub_1C6EE4050();

      swift_willThrow();
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v129 = qword_1EDEF8F88;
      v114 = sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v115 = swift_allocObject();
      *(v115 + 16) = v128;
      v89 = v138;
      v116 = sub_1C6EE40E0();
      v118 = v117;
      v119 = MEMORY[0x1E69E6158];
      *(v115 + 56) = MEMORY[0x1E69E6158];
      v120 = sub_1C6DF10E0();
      *(v115 + 64) = v120;
      *(v115 + 32) = v116;
      *(v115 + 40) = v118;
      v142 = 0;
      v143 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1C6EE5480();
      v121 = v142;
      v122 = v143;
      *(v115 + 96) = v119;
      *(v115 + 104) = v120;
      *(v115 + 72) = v121;
      *(v115 + 80) = v122;
      sub_1C6EE4730("Failed to import model into FileStore, model=%{public}@, error=%{public}@", 73, 2, &dword_1C6DE9000, v129, v114, v115);

      v28 = v141;
LABEL_29:
      v94 = *v131;
      (*v131)(v89, v28);
      v95 = v137;
      result = (v94)(v137, v28);
      v86 += v132;
      --v80;
      v83 = v136;
      if (!v80)
      {
        goto LABEL_41;
      }

      (v133)(v95, v86, v28);
    }

    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v87 = qword_1EDEF8F88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v88 = swift_allocObject();
    *(v88 + 16) = v130;
    v89 = v138;
    v90 = sub_1C6EE40E0();
    v92 = v91;
    *(v88 + 56) = MEMORY[0x1E69E6158];
    *(v88 + 64) = sub_1C6DF10E0();
    *(v88 + 32) = v90;
    *(v88 + 40) = v92;
    v93 = sub_1C6EE4EE0();
    sub_1C6EE4730("Skipping import of model into FileStore because it already exists, resource=%{public}@", 86, 2, &dword_1C6DE9000, v87, v93, v88, v123);
    goto LABEL_28;
  }

LABEL_41:
  if (v124)
  {
    sub_1C6ED3280();
  }

  return result;
}

double sub_1C6DED904(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
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

uint64_t sub_1C6DED958(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1C6EE5230();
  return sub_1C6EE5220();
}

void sub_1C6DED9D4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph20RetentionTokenVendorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C6DEDA5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1C6DEDAF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

unint64_t sub_1C6DEDB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77E0, &qword_1C6EE6998);
    v3 = sub_1C6EE5340();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6E02334(v5, v6, sub_1C6DEC79C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
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

uint64_t sub_1C6DEDC90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6DEDCF8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1C6DEDD3C(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = sub_1C6DEE4A0(0, 1);
  type metadata accessor for FileStore.FileContainer(0, v3[10], v3[11], v3[12]);
  if (sub_1C6EE4D40())
  {
    v5 = 0;
    while (1)
    {
      v6 = sub_1C6EE4D10();
      sub_1C6EE4CD0();
      if (v6)
      {
        v7 = *(v4 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = sub_1C6EE51D0();
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_10:
          __break(1u);
          goto LABEL_11;
        }
      }

      if (sub_1C6DF280C(v2))
      {
        break;
      }

      ++v5;
      if (v8 == sub_1C6EE4D40())
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    return 0;
  }

  return v7;
}

char *sub_1C6DEDFB8()
{
  v48[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v34 - v3;
  v4 = sub_1C6EE41A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v45 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_1C6EE4100();
  v48[0] = 0;
  v14 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:4 error:v48];

  v15 = v48[0];
  if (!v14)
  {
    v32 = v48[0];
    sub_1C6EE4050();

    swift_willThrow();
    return v46;
  }

  v16 = sub_1C6EE4CA0();
  v17 = v15;

  v18 = v16;
  v44 = *(v16 + 16);
  if (!v44)
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v46;
  }

  v43 = v11;
  v19 = 0;
  v41 = v5 + 16;
  v42 = (v5 + 8);
  v39 = (v5 + 32);
  v40 = (v5 + 48);
  v46 = MEMORY[0x1E69E7CC0];
  v35 = v5;
  v36 = v1;
  v20 = v38;
  while (1)
  {
    if (v19 >= *(v18 + 16))
    {
      __break(1u);
    }

    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v22 = v18;
    v23 = *(v5 + 72);
    v24 = v43;
    (*(v5 + 16))(v43, v18 + v21 + v23 * v19, v4);
    v25 = v47;
    sub_1C6DEE6A8(v20);
    v47 = v25;
    if (v25)
    {
      break;
    }

    (*v42)(v24, v4);
    if ((*v40)(v20, 1, v4) == 1)
    {
      sub_1C6EDA890(v20, &unk_1EC1F9AB0, &qword_1C6EE9250);
    }

    else
    {
      v26 = *v39;
      v27 = v37;
      (*v39)(v37, v20, v4);
      v26(v45, v27, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1C6DEE840(0, *(v46 + 2) + 1, 1, v46, &qword_1EC1F9910, &unk_1C6EF6B80, MEMORY[0x1E6968FB0]);
      }

      v29 = *(v46 + 2);
      v28 = *(v46 + 3);
      if (v29 >= v28 >> 1)
      {
        v46 = sub_1C6DEE840((v28 > 1), v29 + 1, 1, v46, &qword_1EC1F9910, &unk_1C6EF6B80, MEMORY[0x1E6968FB0]);
      }

      v30 = v45;
      v31 = v46;
      *(v46 + 2) = v29 + 1;
      v26(&v31[v21 + v29 * v23], v30, v4);
      v5 = v35;
      v20 = v38;
    }

    ++v19;
    v18 = v22;
    if (v44 == v19)
    {
      goto LABEL_16;
    }
  }

  (*v42)(v24, v4);

  __break(1u);
  return result;
}

uint64_t sub_1C6DEE4A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1C6DEDFB8();
  if (!v3)
  {
    v12 = v11;
    v13 = v6;
    v7 = MEMORY[0x1EEE9AC00](v6);
    v11[1] = 0;
    v11[2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9918, &qword_1C6EF6FA0);
    type metadata accessor for FileStore.FileContainer(0, v5[10], v5[11], v5[12]);
    sub_1C6EDA944(&qword_1EDEF6818, &qword_1EC1F9918, &qword_1C6EF6FA0, MEMORY[0x1E69E6328]);
    v8 = sub_1C6EE4C20();

    v12 = v11;
    v13 = v8;
    MEMORY[0x1EEE9AC00](v9);
    sub_1C6EE4D50();
    swift_getWitnessTable();
    a2 = sub_1C6EE4C30();
  }

  return a2;
}

uint64_t sub_1C6DEE6A8@<X0>(uint64_t a2@<X8>)
{
  sub_1C6EE40E0();
  v3 = sub_1C6EE4BA0();

  if (v3)
  {
    sub_1C6EE4120();
    v4 = 0;
  }

  else
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDEF8F88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C6EE6590;
    v7 = sub_1C6EE40E0();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1C6DF10E0();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v10 = sub_1C6EE4EE0();
    sub_1C6EE4730("Ignoring non-container file in container directory, %{public}@", 62, 2, &dword_1C6DE9000, v5, v10, v6);

    v4 = 1;
  }

  v11 = sub_1C6EE41A0();
  return (*(*(v11 - 8) + 56))(a2, v4, 1, v11);
}

void *sub_1C6DEE840(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_3(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1C6DEEA60(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C6EE41A0();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_1C6DEEB8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v32 = a3;
  v31 = a4;
  v29 = a1;
  v34 = a5;
  v6 = *a2;
  v7 = *(*a2 + 80);
  v8 = sub_1C6EE4FE0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v28 - v9;
  v10 = sub_1C6EE41A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v20 = *(v11 + 16);
  v20(&v28 - v18, v29, v10);
  v20(v17, a2 + qword_1EDEF6920, v10);
  v20(v14, a2 + qword_1EDEF6938, v10);
  v21 = *(a2 + qword_1EDEF6928);
  v22 = *(a2 + qword_1EDEF6910);
  v23 = 12;
  if (*(a2 + qword_1EDEF6910))
  {
    v23 = 18;
  }

  if (v31)
  {
    v24 = v23;
  }

  else
  {
    v24 = v32;
  }

  type metadata accessor for FileStore.FileContainer(0, v7, *(v6 + 88), *(v6 + 96));
  v25 = v30;
  (*(*(v7 - 8) + 56))(v30, 1, 1, v7);
  swift_allocObject();

  v26 = v33;
  result = sub_1C6DEEE64(v19, v17, v14, v21, v24, v22, v25);
  if (v26)
  {

    result = 0;
  }

  *v34 = result;
  return result;
}

char *sub_1C6DEEE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7)
{
  v8 = v7;
  v100 = a7;
  LODWORD(v104) = a6;
  v103 = a5;
  v105 = a4;
  v106 = a3;
  v107 = a2;
  v10 = *v7;
  v94 = v10;
  v11 = *(v10 + 80);
  v12 = sub_1C6EE4FE0();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v83 = &v82 - v14;
  v97 = v11;
  v95 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v85 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v82 - v19;
  v20 = sub_1C6EE4090();
  v91 = *(v20 - 8);
  v92 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C6EE41A0();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v108 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v82 - v27;
  v29 = *(v10 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A80, &qword_1C6EF7600);
  v30 = swift_allocObject();
  *(v30 + 28) = 0;
  *(v30 + 16) = 0;
  *(v30 + 24) = -1;
  v90 = v29;
  *(v8 + v29) = v30;
  v31 = *(*v8 + 120);
  v99 = v24;
  v32 = *(v24 + 16);
  v32(v8 + v31, a1, v23);
  v88 = *(*v8 + 128);
  v32(v8 + v88, v107, v23);
  v87 = *(*v8 + 136);
  v32(v8 + v87, v106, v23);
  v86 = *(*v8 + 144);
  *(v8 + v86) = v105;
  v89 = v31;
  v98 = v23;
  v32(v28, v8 + v31, v23);
  v33 = a1;
  v34 = objc_allocWithZone(type metadata accessor for ContainerLock(0));

  v35 = sub_1C6DEFEF8(v28, v103);
  v36 = *(*v8 + 160);
  *&v36[v8] = v35;
  *(v8 + *(*v8 + 168)) = v104;
  strcpy(v109, "configuration");
  HIWORD(v109[1]) = -4864;
  v38 = v91;
  v37 = v92;
  (*(v91 + 104))(v22, *MEMORY[0x1E6968F68], v92);
  sub_1C6DF0C68();
  v39 = v108;
  v103 = v33;
  sub_1C6EE4190();
  v40 = v22;
  v41 = v93;
  (*(v38 + 8))(v40, v37);
  v42 = v94;

  v43 = v96;
  sub_1C6DF0CBC(v39);
  if (v43)
  {
    v96 = v36;
    v44 = v95;
    v45 = v97;
    if (v104)
    {
      type metadata accessor for FileStore.FileContainer.Errors(0, v97, *(v42 + 88), *(v42 + 96));
      swift_getWitnessTable();
      swift_allocError();
      *v46 = xmmword_1C6EE91C0;
      *(v46 + 16) = 1;
      swift_willThrow();

      (*(v101 + 8))(v100, v102);
      v47 = v98;
      v48 = *(v99 + 8);
      v48(v106, v98);
      v48(v107, v47);
      v48(v103, v47);
      v48(v108, v47);
LABEL_8:
      v48(v8 + v89, v47);
      v48(v8 + v88, v47);
      v48(v8 + v87, v47);

      swift_deallocPartialClassInstance();
      return v8;
    }

    v52 = v100;
    v51 = v101;
    v53 = v83;
    v54 = v102;
    (*(v101 + 16))(v83, v100, v102);
    if ((*(v44 + 48))(v53, 1, v45) == 1)
    {
      v55 = *(v51 + 8);
      v55(v53, v54);
      swift_willThrow();

      v55(v52, v54);
      v47 = v98;
      v48 = *(v99 + 8);
      v48(v106, v98);
      v48(v107, v47);
      v48(v103, v47);
      v48(v108, v47);
      goto LABEL_8;
    }

    v56 = v84;
    (*(v44 + 32))(v84, v53, v45);
    sub_1C6ED3FE0(v56, v108);
    v50 = v43;
    v96 = 0;
    v81 = v84;
    (*(v44 + 16))(v8 + *(*v8 + 104), v84, v45);
    type metadata accessor for FileStore.FileContainer.Flags(0, v45, *(v42 + 88), *(v42 + 96));
    sub_1C6EE4CF0();
    swift_getWitnessTable();
    sub_1C6EE5040();

    (*(v44 + 8))(v81, v45);
    *(v8 + *(*v8 + 152)) = v109[0];
  }

  else
  {
    v44 = v95;
    v45 = v97;
    (*(v95 + 32))(v8 + *(*v8 + 104), v41, v97);
    v49 = *&v36[v8];
    v50 = 0;
    v57 = sub_1C6DF11A0(v103);
    v96 = 0;

    *(v8 + *(*v8 + 152)) = v57;
  }

  v58 = v85;
  (*(v44 + 16))(v85, v8 + *(*v8 + 104), v45);
  v59 = *(v42 + 96);
  sub_1C6EE51C0();
  (*(v44 + 8))(v58, v45);
  v60 = v109[1];
  v61 = (v8 + *(*v8 + 112));
  *v61 = v109[0];
  v61[1] = v60;
  v62 = sub_1C6DF22D8(v8);
  v63 = v42;
  v64 = *(*v8 + 152);
  v65 = *(v63 + 88);
  *(v8 + v64) |= v62;
  v66 = v45;
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v104 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1C6EE65B0;
  v68 = sub_1C6DF10E0();
  v69 = v68;
  v70 = 0x64657461657243;
  if (!v50)
  {
    v70 = 0x646564616F4CLL;
  }

  v71 = 0xE700000000000000;
  if (!v50)
  {
    v71 = 0xE600000000000000;
  }

  v72 = MEMORY[0x1E69E6158];
  *(v67 + 56) = MEMORY[0x1E69E6158];
  *(v67 + 64) = v68;
  *(v67 + 32) = v70;
  *(v67 + 40) = v71;
  v73 = sub_1C6EE40E0();
  *(v67 + 96) = v72;
  *(v67 + 104) = v69;
  *(v67 + 72) = v73;
  *(v67 + 80) = v74;
  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  v110 = *(v8 + v64);
  type metadata accessor for FileStore.FileContainer.Flags(0, v66, v65, v59);
  swift_getWitnessTable();
  sub_1C6EE5490();
  v75 = v109[0];
  v76 = v109[1];
  *(v67 + 136) = v72;
  *(v67 + 144) = v69;
  *(v67 + 112) = v75;
  *(v67 + 120) = v76;
  v77 = sub_1C6EE4EE0();
  sub_1C6EE4730("%{public}@ file container, name=%{public}@, flags=%{public}@", 60, 2, &dword_1C6DE9000, v104, v77, v67);

  (*(v101 + 8))(v100, v102);
  v78 = v98;
  v79 = *(v99 + 8);
  v79(v106, v98);
  v79(v107, v78);
  v79(v103, v78);
  v79(v108, v78);
  return v8;
}

uint64_t sub_1C6DEFBD4()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8F88 = result;
  return result;
}

unint64_t sub_1C6DEFC3C()
{
  result = qword_1EDEF6750;
  if (!qword_1EDEF6750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6750);
  }

  return result;
}

uint64_t sub_1C6DEFCA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6DEFCF8(uint64_t a1)
{
  sub_1C6DEFDAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C6DEFDAC(uint64_t a1)
{
  if (!qword_1EDEF8FB0)
  {
    sub_1C6EE41A0();
    v1 = sub_1C6EE4FE0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEF8FB0);
    }
  }
}

uint64_t type metadata accessor for ContainerLock(uint64_t a1)
{
  result = qword_1EDEF88E0;
  if (!qword_1EDEF88E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6DEFE50(uint64_t a1)
{
  result = sub_1C6EE41A0();
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

_BYTE *sub_1C6DEFEF8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL;
  v7 = sub_1C6EE41A0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options] = a2;
  v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isRetained] = (a2 & 8) != 0;
  v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter] = (a2 & 0x10) != 0;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = v9;
  if (*(v9 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isRetained) == 1)
  {
    if (qword_1EDEF66B0 != -1)
    {
      v9 = swift_once();
    }

    v11 = qword_1EDEF66C0;
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock((v11 + 24));
    sub_1C6DF03B0((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));
  }

  if (*(v10 + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter) == 1)
  {
    [objc_opt_self() addFilePresenter_];
  }

  (*(v8 + 8))(a1, v7);
  return v10;
}

uint64_t sub_1C6DF00C8(uint64_t a1)
{
  *(*v2 + 152) = v1;

  if (v1)
  {
    v3 = sub_1C6DF01E8;
  }

  else
  {

    v3 = sub_1C6E504C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6DF01E8()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[12];
  v4 = sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6EE6590;
  swift_getErrorValue();
  sub_1C6EE5480();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C6DF10E0();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1C6EE4730("Failed to run ComputeService.StartupTaskType.run(), not updating loaded configuration. Error=%{public}@", 103, 2, &dword_1C6DE9000, v2, v4, v5);

  if ((*(v3 + 128) & 0xC0) != 0x40)
  {
    sub_1C6E52454();
  }

  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  sub_1C6E50668();
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1C6DF0364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A88, &qword_1C6EF7608);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EDEF66C0 = result;
  return result;
}

uint64_t sub_1C6DF03CC(void *a1, uint64_t a2)
{
  v22 = sub_1C6EE41A0();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *a1;
  v10 = v23;
  v12 = sub_1C6DF0598(a2 + v8);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  result = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v11;
  if (v10[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_13;
    }

    *a1 = v10;
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C6DF07F0(result, isUniquelyReferenced_nonNull_native);
    v10 = v23;
    result = sub_1C6DF0598(a2 + v8);
    if ((v2 & 1) != (v16 & 1))
    {
      result = sub_1C6EE5500();
      __break(1u);
      return result;
    }

    v12 = result;
    *a1 = v10;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    v18 = v10[7];
    v19 = *(v18 + 8 * v12);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    result = sub_1C6E0A9A4();
    v10 = v23;
    *a1 = v23;
    if ((v2 & 1) == 0)
    {
LABEL_8:
      v17 = *(v5 + 16);
      v5 += 16;
      v17(v7, a2 + v8, v22);
      result = sub_1C6DF0BB0(v12, v7, 0, v10);
    }
  }

  *(v18 + 8 * v12) = v21;
  return result;
}

unint64_t sub_1C6DF0598(uint64_t a1)
{
  sub_1C6EE41A0();
  sub_1C6E0D2A4(&qword_1EDEF66E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v2 = sub_1C6EE49F0();

  return sub_1C6DF0630(a1, v2);
}

unint64_t sub_1C6DF0630(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1C6EE41A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1C6E0D2A4(&qword_1EDEF66D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v15 = sub_1C6EE4A50();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1C6DF07F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C6EE41A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77B8, &qword_1C6EE6970);
  v40 = v4;
  result = sub_1C6EE5330();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1C6E0D2A4(&qword_1EDEF66E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      result = sub_1C6EE49F0();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C6DF0BB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C6EE41A0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1C6DF0C68()
{
  result = qword_1EDEF6850;
  if (!qword_1EDEF6850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6850);
  }

  return result;
}

uint64_t sub_1C6DF0CBC(uint64_t a1)
{
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6EE6590;
  sub_1C6EE41A0();
  sub_1C6DF1088();
  v4 = sub_1C6EE5460();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6DF10E0();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v8 = v2;
  v9 = sub_1C6EE4EE0();
  sub_1C6EE4730("Loading computationalGraph configuration from %{public}@", 56, 2, &dword_1C6DE9000, v2, v9, v3);

  v10 = sub_1C6EE41C0();
  if (v1)
  {
    v25 = sub_1C6EE4EC0();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C6EE6B40;
    v27 = sub_1C6EE5460();
    v28 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = v7;
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v26 + 96) = v28;
    *(v26 + 104) = v7;
    *(v26 + 72) = 0;
    *(v26 + 80) = 0xE000000000000000;
    sub_1C6EE4730("Failed to find loaded computationalGraph configuration at %{public}@. Error=%{public}@", 86, 2, &dword_1C6DE9000, v8, v25, v26);

    return swift_willThrow();
  }

  else
  {
    v12 = v11;
    v32 = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6EE6B40;
    result = sub_1C6EE5460();
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v7;
    *(v13 + 32) = result;
    *(v13 + 40) = v15;
    v30 = v8;
    v31 = v12;
    v16 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      v17 = 0;
      if (v16 != 2)
      {
        goto LABEL_13;
      }

      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      v17 = v18 - v19;
      if (!__OFSUB__(v18, v19))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(v12);
LABEL_13:
      v20 = [objc_opt_self() stringFromByteCount:v17 countStyle:1];
      v21 = sub_1C6EE4A90();
      v23 = v22;

      MEMORY[0x1CCA57F60](v21, v23);

      *(v13 + 96) = MEMORY[0x1E69E6158];
      *(v13 + 104) = v7;
      *(v13 + 72) = 0;
      *(v13 + 80) = 0xE000000000000000;
      v24 = sub_1C6EE4EE0();
      sub_1C6EE4730("Loaded configuration data %{public}@ with size %{public}@", 57, 2, &dword_1C6DE9000, v30, v24, v13);

      sub_1C6EE3F00();
      swift_allocObject();
      sub_1C6EE3EF0();
      sub_1C6EE3EE0();

      return sub_1C6DF1134(v32, v31);
    }

    if (!__OFSUB__(HIDWORD(v32), v32))
    {
      v17 = HIDWORD(v32) - v32;
      goto LABEL_13;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C6DF1088()
{
  result = qword_1EDEF8FC0[0];
  if (!qword_1EDEF8FC0[0])
  {
    sub_1C6EE41A0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8FC0);
  }

  return result;
}

unint64_t sub_1C6DF10E0()
{
  result = qword_1EDEF6848;
  if (!qword_1EDEF6848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6848);
  }

  return result;
}

uint64_t sub_1C6DF1134(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1C6DF11A0(uint64_t a1)
{
  v3 = v1[11];
  v17 = v1[10];
  v18 = v3;
  v19 = v1[12];
  v20 = a1;
  v4 = type metadata accessor for FileStore.FileContainer.Flags(0, v17, v3, v19);
  sub_1C6DF138C(sub_1C6DF1B28, &v16, v4, &v21);
  if (!v2)
  {
    return v21;
  }

  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDEF8F88;
  v6 = sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6B40;
  v8 = sub_1C6EE40E0();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C6DF10E0();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v21 = 0;
  v22 = 0xE000000000000000;
  swift_getErrorValue();
  sub_1C6EE5480();
  v13 = v21;
  v14 = v22;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  sub_1C6EE4730("Failed to load container flags, container=%{public}@, error=%{public}@", 70, 2, &dword_1C6DE9000, v5, v6, v7);

  return swift_willThrow();
}

uint64_t sub_1C6DF1344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C6DF138C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1C6EE4FE0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  if ((v4[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options] & 2) == 0)
  {
    return a1(v14);
  }

  v30 = v14;
  v18 = *(a3 - 8);
  v28 = a4;
  v29 = v18;
  (*(v18 + 56))(&v28 - v15, 1, 1, a3);
  v19 = 0;
  v32[0] = 0;
  if (v4[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter] == 1)
  {
    v19 = v4;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  swift_unknownObjectRelease();
  v21 = sub_1C6EE4100();
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = v16;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = v32;
  v23 = swift_allocObject();
  v23[2] = sub_1C6EDA6FC;
  v23[3] = v22;
  aBlock[4] = sub_1C6EDAD7C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6ED7D7C;
  aBlock[3] = &block_descriptor_53;
  v24 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v20 coordinateReadingItemAtURL:v21 options:0 error:aBlock byAccessor:v24];
  _Block_release(v24);

  v25 = aBlock[0];
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  if (v25)
  {
    swift_willThrow();

LABEL_10:
    (*(v10 + 8))(v16, v30);
  }

  if (v32[0])
  {
    swift_willThrow();
    goto LABEL_10;
  }

  v26 = v30;
  (*(v10 + 16))(v13, v16, v30);
  v27 = v29;
  result = (*(v29 + 48))(v13, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v27 + 32))(v28, v13, a3);
    (*(v10 + 8))(v16, v26);
  }

  return result;
}

uint64_t sub_1C6DF17E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, _DWORD *a4@<X8>)
{
  v9 = sub_1C6DF1918(0xD000000000000031, 0x80000001C6EFDB50, 512);
  v11 = v10;

  if (!v4)
  {
    if (v11 >> 60 == 15)
    {
      type metadata accessor for FileStore.FileContainer.Errors(0, a1, a2, a3);
      swift_getWitnessTable();
      swift_allocError();
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      v14 = sub_1C6DF20F0(v9, v11, a1, a2, a3);
      result = sub_1C6DF20DC(v9, v11);
      *a4 = v14;
    }
  }

  return result;
}

char *sub_1C6DF1918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v27 = sub_1C6DF1B4C(a3);
  v28 = v9;
  v26[2] = v5;
  v26[3] = a1;
  v26[4] = a2;
  v26[5] = a3;
  v10 = &v27;
  if ((sub_1C6DF1BEC(sub_1C6DF200C, v26) & 0x8000000000000000) == 0)
  {
    v11 = sub_1C6EE4200();
LABEL_3:
    v10 = v11;
LABEL_17:
    sub_1C6DF1134(v27, v28);
    return v10;
  }

  v12 = MEMORY[0x1CCA57C40]();
  switch(v12)
  {
    case 93:
      v10 = 0;
      goto LABEL_17;
    case 34:
      sub_1C6EE4170();
      v14 = sub_1C6EE4B10();

      v15 = sub_1C6EE4B10();
      v16 = getxattr((v14 + 32), (v15 + 32), 0, 0, 0, 0);

      if ((v16 & 0x8000000000000000) == 0)
      {
        v18 = v16;
        v10 = v5;
        v11 = sub_1C6DF1918(a1, a2, v18);
        if (v4)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

      break;
    case 2:
      sub_1C6E2BFC0();
      swift_allocError();
      v13[1] = 0;
      v13[2] = 0;
      *v13 = 0;
LABEL_16:
      swift_willThrow();
      goto LABEL_17;
    default:
      v19 = MEMORY[0x1CCA57C40]();
      v20 = MEMORY[0x1CCA57C40]();
      v17 = strerror(v20);
      if (v17)
      {
LABEL_15:
        v10 = sub_1C6EE4B70();
        v24 = v23;
        sub_1C6E2BFC0();
        swift_allocError();
        *v25 = v19;
        v25[1] = v10;
        v25[2] = v24;
        goto LABEL_16;
      }

      __break(1u);
      break;
  }

  v19 = MEMORY[0x1CCA57C40](v17);
  v21 = MEMORY[0x1CCA57C40]();
  result = strerror(v21);
  if (result)
  {
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6DF1B4C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1C6ED9F78(result);
    }

    else
    {
      sub_1C6EE3FE0();
      swift_allocObject();
      sub_1C6EE3FA0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C6EE41D0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

char *sub_1C6DF1BEC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1C6DF1134(v7, v6);
      *&v18 = v7;
      WORD4(v18) = v6;
      BYTE10(v18) = BYTE2(v6);
      BYTE11(v18) = BYTE3(v6);
      BYTE12(v18) = BYTE4(v6);
      BYTE13(v18) = BYTE5(v6);
      BYTE14(v18) = BYTE6(v6);
      result = a1(&v17, &v18, &v18 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
      *v4 = v18;
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C6DF1134(v7, v6);
    *v4 = xmmword_1C6EE6B50;
    sub_1C6DF1134(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_1C6EE3F90() && __OFSUB__(v7, sub_1C6EE3FC0()))
      {
LABEL_22:
        __break(1u);
      }

      sub_1C6EE3FE0();
      swift_allocObject();
      v14 = sub_1C6EE3F80();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1C6DF1F5C(v7, v7 >> 32, a1);

      *v4 = v7;
      v4[1] = v12 | 0x4000000000000000;
      if (!v3)
      {
        return v15;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v8 == 2)
  {

    sub_1C6DF1134(v7, v6);
    *&v18 = v7;
    *(&v18 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1C6EE6B50;
    sub_1C6DF1134(0, 0xC000000000000000);
    sub_1C6EE41B0();
    v11 = *(&v18 + 1);
    result = sub_1C6DF1F5C(*(v18 + 16), *(v18 + 24), a1);
    *v4 = v18;
    v4[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&v18 + 7) = 0;
    *&v18 = 0;
    result = a1(&v17, &v18, &v18);
    if (!v3)
    {
      return v17;
    }
  }

  return result;
}

char *sub_1C6DF1F5C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C6EE3F90();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C6EE3FC0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1C6EE3FB0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1C6DF202C@<X0>(void *a1@<X0>, size_t a3@<X5>, ssize_t *a4@<X8>)
{
  sub_1C6EE4170();
  v7 = sub_1C6EE4B10();

  v8 = sub_1C6EE4B10();
  v9 = getxattr((v7 + 32), (v8 + 32), a1, a3, 0, 0);

  *a4 = v9;
  return result;
}

uint64_t sub_1C6DF20DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6DF1134(result, a2);
  }

  return result;
}

uint64_t sub_1C6DF20F0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = BYTE6(a2);
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v6)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) == 8)
    {
LABEL_8:
      while (v6 != 2)
      {
        if (v6 != 1)
        {
          return result;
        }

        v11 = result;
        if (result > result >> 32)
        {
          goto LABEL_34;
        }

        v12 = sub_1C6EE3F90();
        if (!v12)
        {
          goto LABEL_40;
        }

        v13 = v12;
        v14 = sub_1C6EE3FC0();
        if (__OFSUB__(v11, v14))
        {
          goto LABEL_37;
        }

        v15 = (v11 - v14 + v13);
        result = sub_1C6EE3FB0();
        if (v15)
        {
          return *v15;
        }

        __break(1u);
LABEL_15:
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_33;
        }

        if (HIDWORD(result) - result != 8)
        {
          goto LABEL_17;
        }
      }

      v17 = *(result + 16);
      v18 = sub_1C6EE3F90();
      if (!v18)
      {
        goto LABEL_38;
      }

      v19 = v18;
      v20 = sub_1C6EE3FC0();
      if (!__OFSUB__(v17, v20))
      {
        v15 = (v17 - v20 + v19);
        sub_1C6EE3FB0();
        if (!v15)
        {
          goto LABEL_39;
        }

        return *v15;
      }

      goto LABEL_36;
    }

LABEL_17:
    if (v6 == 2)
    {
      v22 = *(result + 16);
      v21 = *(result + 24);
      v16 = v21 - v22;
      if (!__OFSUB__(v21, v22))
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (v6 == 1)
    {
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v16 = HIDWORD(result) - result;
LABEL_30:
        type metadata accessor for FileStore.FileContainer.Errors(0, a3, a4, a5);
        swift_getWitnessTable();
        swift_allocError();
        *v23 = v16;
        *(v23 + 8) = 8;
        *(v23 + 16) = 0;
        return swift_willThrow();
      }

      goto LABEL_35;
    }

    v16 = v5;
    goto LABEL_30;
  }

  if (v6 != 2)
  {
    v16 = 0;
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (!v9)
  {
    if (v10 == 8)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1C6EE3FB0();
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1C6EE3FB0();
  __break(1u);
  return result;
}

uint64_t sub_1C6DF22D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 80);
  v4 = *((*(v2 + 48))(v3, v2) + 16);

  type metadata accessor for FileStore.FileContainer.Flags(255, v3, *(v1 + 88), v2);
  sub_1C6EE5470();
  swift_allocObject();
  sub_1C6EE4CC0();
  if (v4)
  {
    *v5 = 1;
    sub_1C6EE4D50();
    swift_getWitnessTable();
    sub_1C6EE5040();
    return v8;
  }

  else
  {
    *v5 = 0x400000001;
    v5[2] = 8;
    sub_1C6EE4D50();
    swift_getWitnessTable();
    sub_1C6EE5040();
    return v7;
  }
}

uint64_t sub_1C6DF24D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1C6DF2578();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

unint64_t sub_1C6DF2578()
{
  result = qword_1EDEF6748;
  if (!qword_1EDEF6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6748);
  }

  return result;
}

uint64_t sub_1C6DF2608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C6DF2674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1C6DF26E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C6DF2578();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t sub_1C6DF2780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E7310];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C6DF280C(char a1)
{
  type metadata accessor for FileStore.FileContainer.Flags(0, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  swift_getWitnessTable();
  if (sub_1C6EE5620())
  {
    v3 = 0;
  }

  else
  {
    v4 = 1;
    if (a1)
    {
      v4 = sub_1C6EE5620();
    }

    v5 = ((a1 & 2) == 0) & v4;
    if (a1 & 2) != 0 && (v4)
    {
      v5 = sub_1C6EE5620();
    }

    v6 = ((a1 & 4) == 0) & v5;
    if (a1 & 4) != 0 && (v5)
    {
      v6 = sub_1C6EE5620();
    }

    v7 = ((a1 & 8) == 0) & v6;
    if (a1 & 8) != 0 && (v6)
    {
      v7 = sub_1C6EE5620();
    }

    v3 = ((a1 & 0x10) == 0) & v7;
    if (a1 & 0x10) != 0 && (v7)
    {
      v3 = sub_1C6EE5620();
    }
  }

  return v3 & 1;
}

uint64_t sub_1C6DF2A4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6DF2A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = sub_1C6EE4880();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6EE48C0();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[4];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = *(v6 + 80);
  v14[3] = *(v6 + 88);
  v14[4] = v13;
  aBlock[4] = a2;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6DEDCF0;
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);

  sub_1C6EE48A0();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1C6DEC634(&qword_1EDEF6858, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6DEC67C(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6EE50C0();
  MEMORY[0x1CCA58340](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_1C6DF2D94()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6DF2DD8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 80) = 0;
    if (qword_1EDEF8F90 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDEF8F98;
    v3 = sub_1C6EE4EE0();
    sub_1C6EE4730("App became active", 17, 2, &dword_1C6DE9000, v2, v3, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1C6DF2E98()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8F98 = result;
  return result;
}

uint64_t sub_1C6DF2F54@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

__n128 sub_1C6DF30A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C6DF30B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C6DF30C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C6DF30E4()
{
  v1 = sub_1C6EE41A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C6DF3180()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6DF31F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE41A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF32A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE41A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF3350()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C6DF3390()
{
  v1 = sub_1C6EE42C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6DF346C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6DF34E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6DF3560()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6DF35A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6DF365C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6DF36A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE42C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6DF3714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE42C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6DF3784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimedData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C6DF3850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TimedData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C6DF3908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF3A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DF3BC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1C6DF3D70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1C6DF3F30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF3FDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s18ComputationalGraph47Com_Apple_News_Algorithms_Proto_Model_ModelTypeV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18ComputationalGraph47Com_Apple_News_Algorithms_Proto_Model_ModelTypeV4EnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6DF40D0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DF40EC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6DF410C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[9]];

  return v16(v17, a2, v15);
}

char *sub_1C6DF42E4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6DF44BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1018)
  {
    v4 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
    if (v4 >= 0x3FB)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF456C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 1018)
  {
    *result = 0;
    *(result + 8) = (~a2 & 3) << 60;
    *(result + 16) = ~a2 >> 2;
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF4640(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF46EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF4790(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DF483C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF48E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF4A10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF4C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6EE4430();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6DF4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6EE4430();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6DF4D80(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DF4E2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF4ED0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF4F7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF50B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1C6EE4430();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6DF5130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1C6EE4430();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t _s18ComputationalGraph52Com_Apple_News_Algorithms_Proto_Ratings_RatingSourceV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18ComputationalGraph52Com_Apple_News_Algorithms_Proto_Ratings_RatingSourceV4EnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6DF5208(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DF5224(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6DF524C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF52F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF539C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF5448(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF54EC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F50, &unk_1C6EED3E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF5670(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F50, &unk_1C6EED3E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C6DF57F4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF5978(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C6DF5AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF5C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DF5DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C6DF5EB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t _s18ComputationalGraph61Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultTypeV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18ComputationalGraph61Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultTypeV4EnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6DF6014(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DF6030(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6DF6050(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF60FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF61A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C6EE4430();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C6DF624C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF62EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C6EE4430();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6DF6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C6EE4430();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6DF64EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C6EE4430();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8968, &qword_1C6EEEF08);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_1C6DF6640(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8968, &qword_1C6EEEF08);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6DF67BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF68EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF6A1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF6AC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF6B98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1C6DF6DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t _s18ComputationalGraph62Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyTypeV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18ComputationalGraph62Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyTypeV4EnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6DF70CC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DF70E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6DF71D0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B90, &qword_1C6EF0738);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_1C6DF73FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B90, &qword_1C6EF0738);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DF7644(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF76F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF7794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8C60, &unk_1C6EF0950);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6DF7890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8C60, &unk_1C6EF0950);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6DF7998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6EE4430();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6DF7A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6EE4430();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6DF7AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
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

uint64_t sub_1C6DF7B64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C6EE4430();
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

uint64_t sub_1C6DF7C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6DF7C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6DF7D14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E20, &qword_1C6EF1730);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF7E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E20, &qword_1C6EF1730);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF7F74(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E30, &qword_1C6EF1740);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF80A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E30, &qword_1C6EF1740);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF81D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DF8280(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF8324(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF83D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF8474(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF8520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF85C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF86F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF8824(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF88D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF8990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF8AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF8BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6DF8C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6DF8CCC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF8DFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF8F2C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF905C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF918C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF92BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF93EC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF951C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF9670(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DF971C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF97C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF986C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF9910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6DF9A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6DF9B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF9C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DF9DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C6DF9ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1C6DF9FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1C6EE4430();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6DFA0E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1C6EE4430();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6DFA1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DFA2A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFA3D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFA508(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFA638(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F0, &qword_1C6EF4760);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1C6DFA810(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F0, &qword_1C6EF4760);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6DFA9E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFAB18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFAC48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFAD78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFAECC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFAF78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFB01C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C6EE4430();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C6DFB0C8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFB168(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFB214(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFB2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DFB410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DFB5C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFB670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFB760(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9690, &qword_1C6EF6160);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DFB890(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9690, &qword_1C6EF6160);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFB9C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFBAF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFBC20(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DFBCCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFBD70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFBE1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFBEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DFC018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DFC17C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFC2AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFC3DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C6EE4430();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1C6DFC50C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFC638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFC6E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFC788(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFC8B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFCA00()
{
  v1 = sub_1C6EE41A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_1C6DF1134(*(v0 + v5), *(v0 + v5 + 8));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

BOOL sub_1C6DFCAD8(void *a1, uint64_t *a2)
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

uint64_t sub_1C6DFCB64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6DFCBA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6DFCBE0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6DFCC18()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6DFCC68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C6DFCC80(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id APDefaultLog()
{
  predicate = &APDefaultLog_once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = APDefaultLog_result;

  return v0;
}

uint64_t __APDefaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.ComputationalGraph", "Default");
  v1 = APDefaultLog_result;
  APDefaultLog_result = v0;
  return MEMORY[0x1E69E5920](v1);
}

void CGZipUnarchiverCopyFileFinishedHandler(uint64_t a1, const char *a2, int a3, uint64_t a4, int a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = BOMCopierUserData();
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 stringWithFileSystemRepresentation:v11 length:strlen(v11)];
  MEMORY[0x1E69E5920](v5);
  [v7 addObject:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
}

void CGZipUnarchiverCopyFatalErrorHandler(NSObject *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v3 = a2;
  oslog = APDefaultLog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_32(v5, v3);
    _os_log_error_impl(&dword_1C6DE9000, oslog, OS_LOG_TYPE_ERROR, "encountered fatal error %s", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
}

uint64_t __os_log_helper_16_2_3_8_0_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_1C6DFD544(uint64_t a1, id *a2)
{
  result = sub_1C6EE4A70();
  *a2 = 0;
  return result;
}

uint64_t sub_1C6DFD5BC(uint64_t a1, id *a2)
{
  v3 = sub_1C6EE4A80();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C6DFD63C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6EE4A90();
  v2 = sub_1C6EE4A60();

  *a1 = v2;
  return result;
}

uint64_t sub_1C6DFD680()
{
  v0 = sub_1C6EE4A90();
  v1 = MEMORY[0x1CCA57FC0](v0);

  return v1;
}

uint64_t sub_1C6DFD6BC(uint64_t a1)
{
  sub_1C6EE4A90();
  sub_1C6EE4B30();
}

uint64_t sub_1C6DFD710(uint64_t a1)
{
  sub_1C6EE4A90();
  sub_1C6EE5580();
  sub_1C6EE4B30();
  v1 = sub_1C6EE55A0();

  return v1;
}

void *sub_1C6DFD798@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C6DFD7B4(void *a1, uint64_t *a2)
{
  v2 = sub_1C6EE4A90();
  v4 = v3;
  if (v2 == sub_1C6EE4A90() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C6EE54B0();
  }

  return v7 & 1;
}

uint64_t sub_1C6DFD83C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C6EE4A60();

  *a2 = v3;
  return result;
}

uint64_t sub_1C6DFD884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C6EE4A90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6DFD8B0(uint64_t a1)
{
  v2 = sub_1C6DFDBB8(&qword_1EC1F74F8, &unk_1C6EE64F8);
  v3 = sub_1C6DFDBB8(&qword_1EC1F7500, &unk_1C6EE6498);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6DFD948(uint64_t result, uint64_t a2)
{
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v2 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    v6 = result;
    while (1)
    {
      v8 = *v4++;
      v7 = v8;
      if (!v8)
      {
        break;
      }

      if (v6 == 0x80000000 && v7 == -1)
      {
        goto LABEL_23;
      }

      v2 = v6 / v7;
      if (v6 % v7)
      {

        return 0;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6ED8F9C(0, *(v5 + 2) + 1, 1, v5);
        v5 = result;
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        result = sub_1C6ED8F9C((v9 > 1), v10 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 2) = v11;
      *&v5[8 * v10 + 32] = v7;
      v6 = v2;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_16:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v11 >= *(v5 + 3) >> 1)
  {
    v5 = sub_1C6ED8F9C(isUniquelyReferenced_nonNull_native, v11 + 1, 1, v5);
  }

  sub_1C6EC8844(0, 0, 1, v2);
  return v5;
}

uint64_t sub_1C6DFDAE0(uint64_t a1, int a2)
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

uint64_t sub_1C6DFDB00(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6DFDBB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6DFDC30(uint64_t a1)
{
  v63 = sub_1C6EE4020();
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_1C6EE41A0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v48 - v12;
  v13 = sub_1C6EE4070();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C6EE40D0())
  {
    v61 = v9;
    v59 = v14;
    v17 = [objc_opt_self() defaultManager];
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
    v18 = swift_allocObject();
    v58 = xmmword_1C6EE6590;
    *(v18 + 16) = xmmword_1C6EE6590;
    v19 = *MEMORY[0x1E695DBB8];
    *(v18 + 32) = *MEMORY[0x1E695DBB8];
    v56 = v19;
    v20 = sub_1C6EE4EA0();

    if (v20)
    {
      v54 = v20;
      v55 = v13;
      v60 = v1;
      sub_1C6EE4E90();
      sub_1C6EE4060();
      if (!v66)
      {
        v3 = MEMORY[0x1E69E7CC0];
        v23 = v59;
LABEL_21:
        (*(v23 + 8))(v16, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1C6ECE32C(v3);
        }

        v39 = v54;
        v40 = v3[2];
        v65[0] = v3 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v65[1] = v40;
        sub_1C6DFE514(v65);

        return v3;
      }

      v21 = (v61 + 56);
      v22 = (v61 + 32);
      v52 = (v3 + 1);
      v53 = (v61 + 8);
      v50 = (v61 + 16);
      v3 = MEMORY[0x1E69E7CC0];
      v23 = v59;
      while (1)
      {
        v24 = swift_dynamicCast();
        v25 = *v21;
        if (v24)
        {
          v25(v7, 0, 1, v8);
          v26 = *v22;
          v51 = v22;
          v49 = v26;
          v26(v67, v7, v8);
          inited = swift_initStackObject();
          *(inited + 16) = v58;
          v28 = v56;
          *(inited + 32) = v56;
          v29 = v28;
          sub_1C6ED9D4C(inited);
          swift_setDeallocating();
          sub_1C6DFFC0C(inited + 32);
          v30 = v64;
          v31 = v60;
          sub_1C6EE40C0();
          v60 = v31;
          if (v31)
          {

            if (qword_1EDEF8F80 != -1)
            {
              swift_once();
            }

            v41 = qword_1EDEF8F88;
            v3 = sub_1C6EE4EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v42 = swift_allocObject();
            *(v42 + 16) = v58;
            sub_1C6DF1088();
            v43 = v67;
            v44 = sub_1C6EE5460();
            v46 = v45;
            *(v42 + 56) = MEMORY[0x1E69E6158];
            *(v42 + 64) = sub_1C6DF10E0();
            *(v42 + 32) = v44;
            *(v42 + 40) = v46;
            sub_1C6EE4730("Error getting resource values for file at URL %{public}@", 56, 2, &dword_1C6DE9000, v41, v3, v42);

            sub_1C6DFE4C0();
            swift_allocError();
            *v47 = 0;
            *(v47 + 8) = 0;
            *(v47 + 16) = 5;
            swift_willThrow();

            (*v53)(v43, v8);
            (*(v59 + 8))(v16, v55);
            return v3;
          }

          result = sub_1C6EE4010();
          if (result == 2)
          {
            __break(1u);
            return result;
          }

          v23 = v59;
          if (result)
          {
            (*v50)(v62, v67, v8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_1C6DEEA1C(0, v3[2] + 1, 1, v3);
            }

            v34 = v3[2];
            v33 = v3[3];
            v48 = v34 + 1;
            if (v34 >= v33 >> 1)
            {
              v3 = sub_1C6DEEA1C((v33 > 1), v34 + 1, 1, v3);
            }

            (*v52)(v64, v63);
            v35 = v61;
            (*(v61 + 8))(v67, v8);
            v3[2] = v48;
            v36 = v3 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34;
            v22 = v51;
            v49(v36, v62, v8);
          }

          else
          {
            (*v52)(v30, v63);
            (*v53)(v67, v8);
            v22 = v51;
          }
        }

        else
        {
          v25(v7, 1, 1, v8);
          sub_1C6DFFBA4(v7);
        }

        sub_1C6EE4060();
        if (!v66)
        {
          goto LABEL_21;
        }
      }
    }

    sub_1C6DFE4C0();
    swift_allocError();
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 5;
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9910, &unk_1C6EF6B80);
    v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_1C6EE6590;
    (*(v9 + 16))(v3 + v37, a1, v8);
  }

  return v3;
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

unint64_t sub_1C6DFE4C0()
{
  result = qword_1EDEF6008[0];
  if (!qword_1EDEF6008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF6008);
  }

  return result;
}

uint64_t sub_1C6DFE514(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6EE5450();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6EE41A0();
        v6 = sub_1C6EE4D00();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C6EE41A0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C6DFE94C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C6DFE640(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6DFE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6EE41A0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_1C6EE4170();
      v27 = v26;
      if (v25 == sub_1C6EE4170() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_1C6EE54B0();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6DFE94C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_1C6EE41A0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_1C6DFF508(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1C6ECCA74(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_1C6ECC9E8(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1C6ECCA74(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_1C6EE4170();
      v37 = v36;
      v38 = sub_1C6EE4170();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_1C6EE54B0();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_1C6EE4170();
        v52 = v51;
        if (v50 == sub_1C6EE4170() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_1C6EE54B0();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6ED92D4(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_1C6ED92D4((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1C6DFF508(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1C6ECCA74(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_1C6ECC9E8(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_1C6EE4170();
    v69 = v68;
    if (v5 == sub_1C6EE4170() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1C6EE54B0();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1C6DFF508(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_1C6EE41A0();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x1EEE9AC00](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_1C6EE4170();
            v52 = v51;
            if (v50 == sub_1C6EE4170() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_1C6EE54B0();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_1C6EE4170();
        v32 = v31;
        if (v30 == sub_1C6EE4170() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_1C6EE54B0();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_1C6ECCA88(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_1C6DFFBA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6DFFC0C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C6DFFC6C(uint64_t a1)
{
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v127 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v126 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v118 - v6;
  v8 = v1 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec;
  v9 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  if ((sub_1C6E20DC4(v9, a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v118 = v8;
  v119 = v1;
  v125 = *(v9 + 16);
  if (v125)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC8];
    v120 = xmmword_1C6EE65B0;
    v122 = a1;
    *&v121 = v9;
    while (v10 < *(v9 + 16))
    {
      sub_1C6E00BFC(v9 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v10, v7);
      v12 = *v7;
      v13 = *(v7 + 1);
      v14 = *(v7 + 3);
      v15 = v7[32];

      if (sub_1C6E26E94(v12, v13, v14, v15, a1))
      {
        if (*(a1 + 16) && (v16 = sub_1C6DEC784(v12, v13), (v17 & 1) != 0))
        {
          v18 = *(a1 + 56) + 24 * v16;
          v19 = *(v18 + 8);
          v20 = *(v18 + 16);
          v123 = *v18;
          v124 = v19;
          v21 = v20;
          sub_1C6E00CBC(v123, v19, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v130 = v11;
          v24 = sub_1C6DEC784(v12, v13);
          v25 = v11[2];
          v26 = (v23 & 1) == 0;
          v27 = v25 + v26;
          if (__OFADD__(v25, v26))
          {
            goto LABEL_61;
          }

          v28 = v23;
          if (v11[3] >= v27)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C6E09928();
            }
          }

          else
          {
            sub_1C6E06D1C(v27, isUniquelyReferenced_nonNull_native);
            v29 = sub_1C6DEC784(v12, v13);
            if ((v28 & 1) != (v30 & 1))
            {
              goto LABEL_65;
            }

            v24 = v29;
          }

          v52 = v123;
          v51 = v124;
          v11 = v130;
          if (v28)
          {
            v53 = v130[7] + 24 * v24;
            v54 = *v53;
            v55 = *(v53 + 8);
            v56 = *(v53 + 16);
            *v53 = v123;
            *(v53 + 8) = v51;
            *(v53 + 16) = v21;
            sub_1C6E00C60(v54, v55, v56);
          }

          else
          {
            v130[(v24 >> 6) + 8] |= 1 << v24;
            v57 = (v11[6] + 16 * v24);
            *v57 = v12;
            v57[1] = v13;
            v58 = v11[7] + 24 * v24;
            *v58 = v52;
            *(v58 + 8) = v51;
            *(v58 + 16) = v21;
            v59 = v11[2];
            v60 = __OFADD__(v59, 1);
            v61 = v59 + 1;
            if (v60)
            {
              goto LABEL_63;
            }

            v11[2] = v61;
          }

          a1 = v122;
          v9 = v121;
        }

        else
        {
          v41 = sub_1C6DEC784(v12, v13);
          if (v42)
          {
            v43 = v41;
            v44 = swift_isUniquelyReferenced_nonNull_native();
            v130 = v11;
            if ((v44 & 1) == 0)
            {
              sub_1C6E09928();
              v11 = v130;
            }

            v45 = v11[7] + 24 * v43;
            v46 = v11;
            v47 = *v45;
            v48 = *(v45 + 8);
            v49 = *(v45 + 16);
            sub_1C6ECDDA0(v43, v46);

            v50 = v48;
            v11 = v46;
            sub_1C6E00C60(v47, v50, v49);
          }

          else
          {
          }
        }
      }

      else
      {
        v124 = v11;
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v123 = qword_1EDEF8F88;
        v31 = sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v32 = swift_allocObject();
        *(v32 + 16) = v120;
        v33 = MEMORY[0x1E69E6158];
        *(v32 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1C6DF10E0();
        *(v32 + 64) = v34;
        *(v32 + 32) = v12;
        *(v32 + 40) = v13;
        v130 = 0;
        v131 = 0xE000000000000000;
        v128 = v14;
        v129 = v15;
        sub_1C6EE52F0();
        v35 = v130;
        v36 = v131;
        *(v32 + 96) = v33;
        *(v32 + 104) = v34;
        *(v32 + 72) = v35;
        *(v32 + 80) = v36;
        v37 = v122;
        v38 = sub_1C6EE49B0();
        *(v32 + 136) = v33;
        *(v32 + 144) = v34;
        *(v32 + 112) = v38;
        *(v32 + 120) = v39;
        v40 = v31;
        a1 = v37;
        sub_1C6EE4730("Features didn't contain %{public}@ with dtype %{public}@. Features: %{public}@", 78, 2, &dword_1C6DE9000, v123, v40, v32);

        v9 = v121;
        v11 = v124;
      }

      ++v10;
      sub_1C6E00D6C(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      if (v125 == v10)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  v11 = MEMORY[0x1E69E7CC8];
LABEL_30:
  v63 = (*(*v119 + 112))(v11);

  v64 = *(v118 + 8);
  v125 = *(v64 + 16);
  if (!v125)
  {
    v62 = MEMORY[0x1E69E7CC8];
LABEL_57:

    return v62;
  }

  v65 = 0;
  v62 = MEMORY[0x1E69E7CC8];
  v121 = xmmword_1C6EE65B0;
  v122 = v64;
  v123 = v63;
  while (v65 < *(v64 + 16))
  {
    v66 = v126;
    sub_1C6E00BFC(v64 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v65, v126);
    v68 = *v66;
    v67 = *(v66 + 8);
    v69 = *(v66 + 24);
    v70 = *(v66 + 32);

    if (sub_1C6E26E94(v68, v67, v69, v70, v63))
    {
      if (*(v63 + 16) && (v71 = sub_1C6DEC784(v68, v67), (v72 & 1) != 0))
      {
        v73 = *(v63 + 56) + 24 * v71;
        v74 = *(v73 + 8);
        v75 = *(v73 + 16);
        v124 = *v73;
        v76 = v74;
        v77 = v75;
        sub_1C6E00CBC(v124, v74, v75);
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v130 = v62;
        v80 = sub_1C6DEC784(v68, v67);
        v81 = v62[2];
        v82 = (v79 & 1) == 0;
        v83 = v81 + v82;
        if (__OFADD__(v81, v82))
        {
          goto LABEL_62;
        }

        v84 = v79;
        if (v62[3] >= v83)
        {
          if ((v78 & 1) == 0)
          {
            sub_1C6E09928();
          }
        }

        else
        {
          sub_1C6E06D1C(v83, v78);
          v85 = sub_1C6DEC784(v68, v67);
          if ((v84 & 1) != (v86 & 1))
          {
            goto LABEL_65;
          }

          v80 = v85;
        }

        v108 = v124;
        v62 = v130;
        if (v84)
        {
          v109 = v130[7] + 24 * v80;
          v110 = *v109;
          v111 = *(v109 + 8);
          v112 = *(v109 + 16);
          *v109 = v124;
          *(v109 + 8) = v76;
          *(v109 + 16) = v77;
          sub_1C6E00C60(v110, v111, v112);
        }

        else
        {
          v130[(v80 >> 6) + 8] |= 1 << v80;
          v113 = (v62[6] + 16 * v80);
          *v113 = v68;
          v113[1] = v67;
          v114 = v62[7] + 24 * v80;
          *v114 = v108;
          *(v114 + 8) = v76;
          *(v114 + 16) = v77;
          v115 = v62[2];
          v60 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v60)
          {
            goto LABEL_64;
          }

          v62[2] = v116;
        }

        v64 = v122;
        v63 = v123;
      }

      else
      {
        v98 = sub_1C6DEC784(v68, v67);
        if (v99)
        {
          v100 = v98;
          v101 = swift_isUniquelyReferenced_nonNull_native();
          v130 = v62;
          if ((v101 & 1) == 0)
          {
            sub_1C6E09928();
            v62 = v130;
          }

          v102 = v62[7] + 24 * v100;
          v103 = v62;
          v104 = *v102;
          v105 = *(v102 + 8);
          v106 = *(v102 + 16);
          sub_1C6ECDDA0(v100, v103);

          v107 = v105;
          v62 = v103;
          sub_1C6E00C60(v104, v107, v106);
        }

        else
        {
        }
      }
    }

    else
    {
      v124 = v62;
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v87 = qword_1EDEF8F88;
      v88 = sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v89 = swift_allocObject();
      *(v89 + 16) = v121;
      v90 = MEMORY[0x1E69E6158];
      *(v89 + 56) = MEMORY[0x1E69E6158];
      v91 = sub_1C6DF10E0();
      *(v89 + 64) = v91;
      *(v89 + 32) = v68;
      *(v89 + 40) = v67;
      v130 = 0;
      v131 = 0xE000000000000000;
      v128 = v69;
      v129 = v70;
      sub_1C6EE52F0();
      v92 = v130;
      v93 = v131;
      *(v89 + 96) = v90;
      *(v89 + 104) = v91;
      *(v89 + 72) = v92;
      *(v89 + 80) = v93;
      v94 = v123;
      v95 = sub_1C6EE49B0();
      *(v89 + 136) = v90;
      *(v89 + 144) = v91;
      *(v89 + 112) = v95;
      *(v89 + 120) = v96;
      v97 = v88;
      v63 = v94;
      sub_1C6EE4730("Features didn't contain %{public}@ with dtype %{public}@. Features: %{public}@", 78, 2, &dword_1C6DE9000, v87, v97, v89);

      v64 = v122;
      v62 = v124;
    }

    ++v65;
    sub_1C6E00D6C(v126, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v125 == v65)
    {
      goto LABEL_57;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}