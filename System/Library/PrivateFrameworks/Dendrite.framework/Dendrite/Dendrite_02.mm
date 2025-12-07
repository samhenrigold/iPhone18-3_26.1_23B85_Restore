uint64_t static Storage.pathURLExists(pathURL:andIsDirectory:)(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  v7 = 0;
  sub_1B1A7C7E8();
  v4 = sub_1B1A7CA58();

  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v7];

  return v5 & (v7 ^ a2 ^ 1);
}

uint64_t MemoryAccess.hashValue.getter()
{
  v1 = *v0;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](v1);
  return sub_1B1A7D098();
}

void static Storage.truncate(_:size:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1B1A7C7E8();
  v3 = sub_1B1A7CA58();

  v4 = [objc_opt_self() fileHandleForUpdatingAtPath_];

  if (v4)
  {
    sub_1B1A701A0(v4, v2);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v5, qword_1EDB770A8);
    sub_1B1A561D8(0xD000000000000019, 0x80000001B1A81CE0, 0xD000000000000062, 0x80000001B1A81D00, 0xD000000000000011, 0x80000001B1A81D70);
    sub_1B1A536C8();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    swift_willThrow();
  }
}

void static Storage.rename(url:to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B1A7C7B8();
  v2 = sub_1B1A7C7B8();
  v6[0] = 0;
  v3 = [v0 moveItemAtURL:v1 toURL:v2 error:v6];

  if (v3)
  {
    v4 = v6[0];
  }

  else
  {
    v5 = v6[0];
    sub_1B1A7C758();

    swift_willThrow();
  }
}

void *static Storage.sharedResourcesDirectory.getter()
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v1 = result;
    v2 = sub_1B1A7CA88();
    v4 = v3;

    MEMORY[0x1B2736400](v2, v4);

    MEMORY[0x1B2736400](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1B1A7C798();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1B1A6EE1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1A6EE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B1A6EE3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1A6F0B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B1A6EE5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1A6F28C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B1A6EE7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1A6EFA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B1A6EE9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E738, &unk_1B1A7FA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B1A6EFA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E450, &unk_1B1A7E380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B1A6F0B4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E740, &qword_1B1A7FA30);
  v10 = *(sub_1B1A7C808() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B1A7C808() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B1A6F28C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E448, &qword_1B1A7E378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_1B1A6F390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB75E550, qword_1B1A7FA40);
  v3 = sub_1B1A7CE98();
  v4 = 0;
  v5 = v3 + 56;
  v6 = a1 + 32;
  while (1)
  {
    v10 = *(v6 + 8 * v4);
    sub_1B1A7D058();
    MEMORY[0x1B2736930](*(v10 + 16));
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      do
      {
        v12 += 4;
        sub_1B1A7D088();
        --v11;
      }

      while (v11);
    }

    result = sub_1B1A7D098();
    v14 = -1 << *(v3 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    v17 = *(v5 + 8 * (v15 >> 6));
    v18 = 1 << v15;
    v19 = *(v3 + 48);
    if (((1 << v15) & v17) != 0)
    {
      break;
    }

LABEL_3:
    *(v5 + 8 * v16) = v17 | v18;
    *(v19 + 8 * v15) = v10;
    v7 = *(v3 + 16);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      goto LABEL_23;
    }

    *(v3 + 16) = v9;

LABEL_5:
    if (++v4 == v1)
    {
      return v3;
    }
  }

  v20 = ~v14;
  v21 = *(v10 + 16);
  while (1)
  {
    v22 = *(v19 + 8 * v15);
    if (*(v22 + 16) == v21)
    {
      break;
    }

LABEL_11:
    v15 = (v15 + 1) & v20;
    v16 = v15 >> 6;
    v17 = *(v5 + 8 * (v15 >> 6));
    v18 = 1 << v15;
    if ((v17 & (1 << v15)) == 0)
    {
      goto LABEL_3;
    }
  }

  if (!v21 || v22 == v10)
  {
    goto LABEL_5;
  }

  v23 = (v22 + 32);
  v24 = (v10 + 32);
  v25 = *(v10 + 16);
  while (v25)
  {
    if (*v23 != *v24)
    {
      goto LABEL_11;
    }

    ++v23;
    ++v24;
    if (!--v25)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  sub_1B1A7C7E8();
  v1 = sub_1B1A7CA58();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1B1A7C7B8();
  v9[0] = 0;
  v4 = [v0 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:v9];

  if (v4)
  {
    v5 = v9[0];
LABEL_4:

    return 1;
  }

  v7 = v9[0];
  v8 = sub_1B1A7C758();

  swift_willThrow();
  return 0;
}

uint64_t sub_1B1A6F67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E748, &qword_1B1A7FA38);
    v3 = sub_1B1A7CE98();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1B1A7CA88();
      sub_1B1A7D058();
      v27 = v7;
      sub_1B1A7CB18();
      v8 = sub_1B1A7D098();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1B1A7CA88();
        v18 = v17;
        if (v16 == sub_1B1A7CA88() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1B1A7CFB8();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void (**sub_1B1A6F870())(char *, uint64_t)
{
  v52 = *MEMORY[0x1E69E9840];
  v42 = sub_1B1A7C748();
  v0 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B1A7C808();
  v47 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v34 - v5;
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1B1A7C7B8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E728, &qword_1B1A7F898);
  v8 = swift_allocObject();
  v44 = xmmword_1B1A7E110;
  *(v8 + 16) = xmmword_1B1A7E110;
  v9 = *MEMORY[0x1E695DB78];
  *(v8 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v43 = v9;
  v10 = sub_1B1A7CC48();

  v51 = 0;
  v11 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v10 options:0 error:&v51];

  v12 = v51;
  if (v11)
  {
    v35 = v6;
    v48 = v2;
    v13 = sub_1B1A7CC58();
    v14 = v12;

    v15 = v13;
    v40 = *(v13 + 16);
    if (v40)
    {
      v16 = 0;
      v38 = v0 + 1;
      v39 = v47 + 16;
      v37 = (v47 + 32);
      v36 = (v47 + 8);
      v0 = MEMORY[0x1E69E7CC0];
      v17 = v48;
      while (1)
      {
        if (v16 >= *(v15 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
        }

        v18 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v19 = *(v47 + 72);
        v20 = v15;
        (*(v47 + 16))(v49, v15 + v18 + v19 * v16, v17);
        inited = swift_initStackObject();
        *(inited + 16) = v44;
        v22 = v43;
        *(inited + 32) = v43;
        v23 = v22;
        sub_1B1A6F67C(inited);
        swift_setDeallocating();
        v24 = v46;
        sub_1B1A6FEB4(inited + 32);
        v25 = v50;
        sub_1B1A7C788();
        if (v25)
        {
          break;
        }

        v50 = 0;

        v26 = sub_1B1A7C738();
        if (v26 == 2)
        {
          goto LABEL_21;
        }

        v27 = v26;
        (*v38)(v24, v42);
        if (v27)
        {
          v17 = v48;
          (*v36)(v49, v48);
        }

        else
        {
          v28 = *v37;
          v17 = v48;
          (*v37)(v41, v49, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v0;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B1A6EE3C(0, v0[2] + 1, 1);
            v17 = v48;
            v0 = v51;
          }

          v31 = v0[2];
          v30 = v0[3];
          if (v31 >= v30 >> 1)
          {
            sub_1B1A6EE3C((v30 > 1), v31 + 1, 1);
            v17 = v48;
            v0 = v51;
          }

          v0[2] = (v31 + 1);
          v28(v0 + v18 + v31 * v19, v41, v17);
        }

        ++v16;
        v15 = v20;
        if (v40 == v16)
        {
          goto LABEL_17;
        }
      }

      (*v36)(v49, v48);
    }

    else
    {
      v0 = MEMORY[0x1E69E7CC0];
LABEL_17:
    }
  }

  else
  {
    v32 = v51;
    sub_1B1A7C758();

    swift_willThrow();
  }

  return v0;
}

void sub_1B1A6FDCC()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B1A7C7B8();
  v5[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v5];

  if (v2)
  {
    v3 = v5[0];
  }

  else
  {
    v4 = v5[0];
    sub_1B1A7C758();

    swift_willThrow();
  }
}

uint64_t sub_1B1A6FEB4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B1A6FF10(uint64_t a1, char *a2)
{
  v2 = *a2;
  sub_1B1A7C7E8();
  v3 = sub_1B1A7CA58();

  v4 = [objc_opt_self() *off_1E7AF1740[v2]];

  return v4;
}

void sub_1B1A6FF98()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  sub_1B1A7C7E8();
  v1 = sub_1B1A7CA58();
  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_1B1A7CA58();

    v11 = 0;
    v4 = [v0 attributesOfItemAtPath:v3 error:&v11];

    v5 = v11;
    if (v4)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1B1A70600();
      v6 = sub_1B1A7CA18();
      v7 = v5;

      if (*(v6 + 16) && (v8 = sub_1B1A71848(*MEMORY[0x1E696A3B8]), (v9 & 1) != 0))
      {
        sub_1B1A56DC8(*(v6 + 56) + 32 * v8, v12);

        swift_dynamicCast();
      }

      else
      {
      }
    }

    else
    {
      v10 = v11;
      sub_1B1A7C758();

      swift_willThrow();
    }
  }

  else
  {
  }
}

uint64_t sub_1B1A701A0(void *a1, unsigned int a2)
{
  result = ftruncate([a1 fileDescriptor], a2);
  if (result)
  {
    v3 = result;
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v4, qword_1EDB770A8);
    v5 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v5);

    sub_1B1A561D8(0x7461636E75727466, 0xEB00000000203A65, 0xD000000000000062, 0x80000001B1A81D00, 0xD000000000000011, 0x80000001B1A81D70);

    sub_1B1A536C8();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B1A70314()
{
  result = qword_1EB75E730;
  if (!qword_1EB75E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E730);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Storage.EnsureExistsResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Storage.EnsureExistsResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B1A704EC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B1A70508(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Dendrite12StorageErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B1A7054C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1B1A70594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1B1A705D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B1A70600()
{
  result = qword_1EDB76498;
  if (!qword_1EDB76498)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76498);
  }

  return result;
}

uint64_t static Device.firstUnlock()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B1A5471C;

  return sub_1B1A709A8();
}

uint64_t sub_1B1A70768()
{
  v0 = sub_1B1A7CDC8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1B1A7CDA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1A7C9F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B1A70CDC();
  sub_1B1A7C9E8();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v1);
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1B1A70D28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E760, qword_1B1A7FAB0);
  sub_1B1A70D80();
  sub_1B1A7CE48();
  result = sub_1B1A7CDD8();
  qword_1EB760C88 = result;
  return result;
}

uint64_t sub_1B1A70968()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6F0, "PG");
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EDB77100 = result;
  return result;
}

uint64_t sub_1B1A709C4()
{
  if (qword_1EDB76A30 != -1)
  {
    swift_once();
  }

  v1 = *(*qword_1EDB77100 + 136);

  LOBYTE(v1) = *v1(v2);

  if (v1)
  {
    goto LABEL_6;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v3 = *(*qword_1EDB77100 + 136);

    *v3(v4) = 1;

LABEL_6:
    v5 = v0[1];

    return v5();
  }

  if (qword_1EB75E278 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB760C88;
  type metadata accessor for FirstUnlockObserver();
  v8 = swift_allocObject();
  v0[2] = v8;
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = v7;
  v11 = swift_task_alloc();
  v0[3] = v11;
  *v11 = v0;
  v11[1] = sub_1B1A70BBC;

  return sub_1B1A66E64();
}

uint64_t sub_1B1A70BBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B1A70CDC()
{
  result = qword_1EB75E750;
  if (!qword_1EB75E750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB75E750);
  }

  return result;
}

unint64_t sub_1B1A70D28()
{
  result = qword_1EB75E758;
  if (!qword_1EB75E758)
  {
    sub_1B1A7CDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E758);
  }

  return result;
}

unint64_t sub_1B1A70D80()
{
  result = qword_1EB75E768;
  if (!qword_1EB75E768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB75E760, qword_1B1A7FAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E768);
  }

  return result;
}

uint64_t sub_1B1A70DE4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B1A47538(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B1A73490();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1B1A7C808();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_1B1A726A4(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1B1A70EC4()
{
  if (qword_1EDB767A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB770E0;

  os_unfair_lock_lock(v1 + 6);
  sub_1B1A601A4(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  v2 = OBJC_IVAR____TtC8Dendrite26GlobalFileLockRegistration_lockedURL;
  v3 = sub_1B1A7C808();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalFileLockRegistration(uint64_t a1)
{
  result = qword_1EDB765F0;
  if (!qword_1EDB765F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1A71028(uint64_t a1)
{
  result = sub_1B1A7C808();
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

uint64_t sub_1B1A710B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E778, &qword_1B1A7FAF8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EDB770E0 = result;
  return result;
}

unint64_t sub_1B1A71104@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B1A7C808();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(*a1 + 16) && (result = sub_1B1A47538(a2), (v12 & 1) != 0))
  {
    v13 = *(v10 + 56) + 16 * result;
    v14 = *v13 + 1;
    if (*v13 == -1)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v13 + 8);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *a1;
      sub_1B1A72B7C(v14, v15, a2, isUniquelyReferenced_nonNull_native);
      *a1 = v45;
      (*(v7 + 16))(v9, a2, v6);
      type metadata accessor for GlobalFileLockRegistration(0);
      v17 = swift_allocObject();
      result = (*(v7 + 32))(v17 + OBJC_IVAR____TtC8Dendrite26GlobalFileLockRegistration_lockedURL, v9, v6);
      *a3 = v17;
    }
  }

  else
  {
    v44 = v9;
    v41 = a1;
    v42 = a3;
    if (qword_1EDB76528 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v18, qword_1EDB770C0);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B1A7CEC8();
    MEMORY[0x1B2736400](0xD000000000000021, 0x80000001B1A81E90);
    sub_1B1A475BC(&qword_1EDB76838, MEMORY[0x1E6968FE0]);
    v19 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v19);

    MEMORY[0x1B2736400](0xD00000000000001CLL, 0x80000001B1A81EC0);
    sub_1B1A561C0(v45, v46, 0xD000000000000058, 0x80000001B1A81E10, 0x7265747369676572, 0xEE00293A726F6628);

    v20 = a2;
    v21 = *(v7 + 16);
    v22 = v6;
    v23 = v44;
    v43 = v20;
    v21(v44);
    type metadata accessor for FileLock(0);
    v24 = swift_allocObject();
    *(v24 + OBJC_IVAR____TtC8Dendrite8FileLock_handle) = 0;
    v25 = OBJC_IVAR____TtC8Dendrite8FileLock_fm;
    *(v24 + v25) = [objc_opt_self() defaultManager];
    v26 = OBJC_IVAR____TtC8Dendrite8FileLock_fileURL;
    v27 = *(v7 + 32);
    v28 = v23;
    v29 = v22;
    v27(v24 + OBJC_IVAR____TtC8Dendrite8FileLock_fileURL, v28, v22);
    (*(v7 + 56))(v24 + v26, 0, 1, v22);
    v30 = v47;
    v31 = sub_1B1A7AD9C();
    if (v30)
    {
    }

    else
    {
      v32 = v43;
      v47 = 0;
      v33 = v31;
      while (flock([v33 fileDescriptor], 2))
      {
        if (MEMORY[0x1B2736280]() == 4)
        {
          v34 = MEMORY[0x1B2736280]();
          sub_1B1A73780();
          swift_allocError();
          *v35 = v34;
          *(v35 + 4) = 0;
          swift_willThrow();
        }
      }

      v36 = v41;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *v36;
      sub_1B1A72B7C(1u, v24, v32, v37);
      *v36 = v45;
      v38 = v29;
      v39 = v44;
      (v21)(v44, v32, v38);
      type metadata accessor for GlobalFileLockRegistration(0);
      v40 = swift_allocObject();
      result = (v27)(v40 + OBJC_IVAR____TtC8Dendrite26GlobalFileLockRegistration_lockedURL, v39, v38);
      *v42 = v40;
    }
  }

  return result;
}

uint64_t sub_1B1A715EC(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC8Dendrite26GlobalFileLockRegistration_lockedURL;
    result = sub_1B1A47538(a2 + OBJC_IVAR____TtC8Dendrite26GlobalFileLockRegistration_lockedURL);
    if (v6)
    {
      v7 = *(v2 + 56) + 16 * result;
      v8 = *(v7 + 8);
      v9 = *v7 - 1;
      if (*v7 == 1)
      {
        v10 = qword_1EDB76528;

        if (v10 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for InternalLogger(0);
        __swift_project_value_buffer(v11, qword_1EDB770C0);
        sub_1B1A7CEC8();

        sub_1B1A7C808();
        sub_1B1A475BC(&qword_1EDB76838, MEMORY[0x1E6968FE0]);
        v12 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v12);

        sub_1B1A561C0(0xD00000000000001FLL, 0x80000001B1A81DF0, 0xD000000000000058, 0x80000001B1A81E10, 0xD000000000000015, 0x80000001B1A81E70);

        sub_1B1A70DE4(a2 + v5);
      }

      else if (*v7)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *v4;
        result = sub_1B1A72B7C(v9, v8, a2 + v5, isUniquelyReferenced_nonNull_native);
        *v4 = v14;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_1B1A71800(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1B2736910](*(v1 + 40), a1, 4);

  return sub_1B1A72EEC(v2, v3);
}

unint64_t sub_1B1A71848(uint64_t a1)
{
  sub_1B1A7CA88();
  sub_1B1A7D058();
  sub_1B1A7CB18();
  v2 = sub_1B1A7D098();

  return sub_1B1A72F58(a1, v2);
}

uint64_t sub_1B1A718DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E790, &qword_1B1A7FB08);
  result = sub_1B1A7CF48();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x1B2736910](*(v7 + 40), v20, 4);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B1A71B50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B1A7C808();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E780, &qword_1B1A7FB00);
  v45 = v4;
  result = sub_1B1A7CF48();
  v11 = result;
  if (*(v9 + 16))
  {
    v50 = v8;
    v41 = v2;
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
    v42 = (v6 + 16);
    v43 = v6;
    v46 = (v6 + 32);
    v18 = result + 64;
    v44 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v49 = *(v6 + 72);
      v27 = v26 + v49 * v25;
      v28 = 48 * v25;
      if (v45)
      {
        (*v46)(v50, v27, v5);
        v29 = *(v9 + 56) + v28;
        v48 = *v29;
        v30 = *(v29 + 24);
        v51 = *(v29 + 8);
        v52 = v30;
        v47 = *(v29 + 40);
      }

      else
      {
        (*v42)(v50, v27, v5);
        v31 = *(v9 + 56) + v28;
        v48 = *v31;
        v32 = *(v31 + 24);
        v51 = *(v31 + 8);
        v52 = v32;
        v47 = *(v31 + 40);
      }

      sub_1B1A475BC(&qword_1EDB76848, MEMORY[0x1E6968FC0]);
      result = sub_1B1A7CA28();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v46)(*(v11 + 48) + v49 * v19, v50, v5);
      v20 = *(v11 + 56) + 48 * v19;
      *v20 = v48;
      v21 = v52;
      *(v20 + 8) = v51;
      *(v20 + 24) = v21;
      *(v20 + 40) = v47;
      ++*(v11 + 16);
      v6 = v43;
      v9 = v44;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B1A71F90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B1A7C808();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E770, "XB");
  v41 = v4;
  result = sub_1B1A7CF48();
  v11 = result;
  if (*(v9 + 16))
  {
    v46 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v9;
    v40 = v6;
    v42 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v45 = *(v40 + 72);
      v26 = v25 + v45 * v24;
      if (v41)
      {
        (*v42)(v46, v26, v5);
        v27 = *(v9 + 56) + 16 * v24;
        v44 = *v27;
        v43 = *(v27 + 8);
      }

      else
      {
        (*v38)(v46, v26, v5);
        v28 = *(v9 + 56) + 16 * v24;
        v44 = *v28;
        v43 = *(v28 + 8);
      }

      sub_1B1A475BC(&qword_1EDB76848, MEMORY[0x1E6968FC0]);
      result = sub_1B1A7CA28();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v11 + 48) + v45 * v19, v46, v5);
      v20 = *(v11 + 56) + 16 * v19;
      *v20 = v44;
      *(v20 + 8) = v43;
      ++*(v11 + 16);
      v9 = v39;
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
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_1B1A7237C(int64_t a1, uint64_t a2)
{
  v40 = sub_1B1A7C808();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v41 = v5;
    v11 = sub_1B1A7CE58();
    v12 = v40;
    v5 = v41;
    v13 = v10;
    v38 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v36 = a2 + 64;
    v37 = v15;
    v16 = *(v14 + 56);
    v35 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v39;
      v20 = v13;
      v21 = v14;
      v37(v39, *(v5 + 48) + v16 * v9, v12);
      sub_1B1A475BC(&qword_1EDB76848, MEMORY[0x1E6968FC0]);
      v22 = sub_1B1A7CA28();
      (*v35)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v38)
      {
        if (v23 >= v38 && a1 >= v23)
        {
LABEL_15:
          v5 = v41;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v41;
            v16 = v17;
            v13 = v20;
            v7 = v36;
          }

          else
          {
            v7 = v36;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v41;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 48 * a1);
          v28 = (v26 + 48 * v9);
          if (48 * a1 < (48 * v9) || v27 >= v28 + 3 || a1 != v9)
          {
            v29 = *v28;
            v30 = v28[2];
            v27[1] = v28[1];
            v27[2] = v30;
            *v27 = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v38 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v36;
      v16 = v17;
      v5 = v41;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v5 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v33;
    ++*(v5 + 36);
  }
}

void sub_1B1A726A4(int64_t a1, uint64_t a2)
{
  v38 = sub_1B1A7C808();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1B1A7CE58();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1B1A475BC(&qword_1EDB76848, MEMORY[0x1E6968FC0]);
      v22 = sub_1B1A7CA28();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1B1A729AC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B1A7C808();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B1A47538(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B1A731B8();
      goto LABEL_7;
    }

    sub_1B1A71B50(v17, a3 & 1);
    v23 = sub_1B1A47538(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1B1A72D5C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1B1A7CFF8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 48 * v14;

  return sub_1B1A73724(a1, v21);
}

uint64_t sub_1B1A72B7C(unsigned int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_1B1A7C808();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1B1A47538(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1B1A73490();
      goto LABEL_9;
    }

    sub_1B1A71F90(v18, a4 & 1);
    v21 = sub_1B1A47538(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1B1A7CFF8();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = v24[7] + 16 * v15;
    *v25 = v28;
    *(v25 + 8) = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1B1A72E28(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_1B1A72D5C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B1A7C808();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 48 * a1);
  *(v11 + 28) = *(a3 + 28);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1B1A72E28(unint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1B1A7C808();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_1B1A72EEC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B1A72F58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B1A7CA88();
      v8 = v7;
      if (v6 == sub_1B1A7CA88() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B1A7CFB8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

void *sub_1B1A7305C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E790, &qword_1B1A7FB08);
  v2 = *v0;
  v3 = sub_1B1A7CF38();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
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

  return result;
}

char *sub_1B1A731B8()
{
  v1 = v0;
  v2 = sub_1B1A7C808();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E780, &qword_1B1A7FB00);
  v5 = *v0;
  v6 = sub_1B1A7CF38();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v42 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v16;
    v38 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v46 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v40;
        v22 = v41;
        v23 = *(v41 + 72) * v20;
        v24 = v39;
        (*(v41 + 16))(v39, *(v5 + 48) + v23, v40);
        v25 = *(v5 + 56);
        v26 = 48 * v20;
        v27 = (v25 + 48 * v20);
        v28 = v27[1];
        v45 = *v27;
        v29 = v27[2];
        v30 = v27[3];
        v43 = v27[4];
        v44 = *(v27 + 10);
        v31 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v24, v21);
        v32 = *(v31 + 56) + v26;
        v5 = v38;
        *v32 = v45;
        *(v32 + 8) = v28;
        *(v32 + 16) = v29;
        *(v32 + 24) = v30;
        *(v32 + 32) = v43;
        *(v32 + 40) = v44;

        v16 = v37;
        v15 = v46;
      }

      while (v46);
    }

    v18 = v11;
    v7 = v42;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v19 = *(v34 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1B1A73490()
{
  v1 = v0;
  v35 = sub_1B1A7C808();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E770, "XB");
  v3 = *v0;
  v4 = sub_1B1A7CF38();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = *(v3 + 56) + 16 * v18;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = *(v27 + 56) + v23;
        *v28 = v25;
        v3 = v33;
        *(v28 + 8) = v26;

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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
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

  return result;
}

unint64_t sub_1B1A73780()
{
  result = qword_1EB75E788;
  if (!qword_1EB75E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E788);
  }

  return result;
}

uint64_t CreatedAnnotation.createdOn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1A7C908();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CreatedAnnotation.init(createdOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B1A7C908();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static CreatedAnnotation.read(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1B1A7C908();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E798, &qword_1B1A7FB10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  (*(v6 + 56))(&v20 - v14, 1, 1, v5, v13);
  v16 = a1;
  sub_1B1A7C2D8(v16, v15, v16);

  if (!v2)
  {
    sub_1B1A73C5C(v15, v11);
    if ((*(v6 + 48))(v11, 1, v5) == 1)
    {
      sub_1B1A73BF4(v11);
      sub_1B1A65484();
      swift_allocError();
      *v17 = 0;
      v17[1] = 0;
      swift_willThrow();
    }

    else
    {
      v18 = *(v6 + 32);
      v18(v8, v11, v5);
      v18(a2, v8, v5);
    }
  }

  return sub_1B1A73BF4(v15);
}

uint64_t sub_1B1A73B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1A7C908();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B1A73BF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E798, &qword_1B1A7FB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1A73C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E798, &qword_1B1A7FB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CreatedAnnotation(uint64_t a1)
{
  result = qword_1EDB760A0;
  if (!qword_1EDB760A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1A73D74(uint64_t a1)
{
  result = sub_1B1A7C908();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MemoryMappedRegion.__allocating_init(filePath:requestedByteSize:minimumByteSize:access:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = swift_allocObject();
  MemoryMappedRegion.init(filePath:requestedByteSize:minimumByteSize:access:)(a1, v6, v5, a4);
  return v8;
}

const void *MemoryMappedRegion.write<A>(structInstance:at:)(const void *__src, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 72);
  v6 = a2 + v5;
  if (__OFADD__(a2, v5))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 < a2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v3[3];
  v8 = v3[4];
  v10 = v7 > a2 || v8 < a2;
  if (v6 < v7 || v8 < v6 || v10)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_17:
      v13 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v13, qword_1EDB770A8);
      sub_1B1A7CEC8();

      sub_1B1A7CF18();
      MEMORY[0x1B2736400](3943982, 0xE300000000000000);
      sub_1B1A7CF18();
      MEMORY[0x1B2736400](0, 0xE000000000000000);

      sub_1B1A561D8(0xD000000000000011, 0x80000001B1A817F0, 0xD00000000000005FLL, 0x80000001B1A81810, 0xD000000000000019, 0x80000001B1A81870);

      return 0;
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v14 = *(v4 + 64);
  if ((v14 & 0x8000000000000000) == 0)
  {
    memcpy((v3[2] + a2), __src, v14);
    return v6;
  }

  __break(1u);
  return __src;
}

Swift::Void __swiftcall MemoryMappedRegion.sync(used:)(Swift::Int used)
{
  if (msync(*(v1 + 16), used, 1))
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v2, qword_1EDB770A8);
    sub_1B1A7CEC8();

    strcpy(v6, "msync return: ");
    HIBYTE(v6[1]) = -18;
    v3 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v3);

    v4 = MEMORY[0x1B2736400](0x203A726F72726520, 0xE800000000000000);
    MEMORY[0x1B2736280](v4);
    v5 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v5);

    sub_1B1A561D8(v6[0], v6[1], 0xD00000000000005FLL, 0x80000001B1A81810, 0x65737528636E7973, 0xEB00000000293A64);
  }
}

void *MemoryMappedRegion.init(filePath:requestedByteSize:minimumByteSize:access:)(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v6 = v4;
  v10 = *a4;
  LOBYTE(v66) = *a4;
  v11 = sub_1B1A6FF10(a1, &v66);
  if (v5)
  {
    goto LABEL_2;
  }

  if (!v11)
  {
LABEL_6:
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v15, qword_1EDB770A8);
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v66 = 0xD00000000000001ELL;
    v67 = 0x80000001B1A81EE0;
    v16 = sub_1B1A7C808();
    sub_1B1A4DD9C();
    v17 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v17);

    sub_1B1A561D8(v66, v67, 0xD00000000000005FLL, 0x80000001B1A81810, 0xD000000000000038, 0x80000001B1A81F00);

    sub_1B1A75488();
    swift_allocError();
    *v18 = 0;
    *(v18 + 4) = 1;
    swift_willThrow();
    (*(*(v16 - 8) + 8))(a1, v16);
    goto LABEL_9;
  }

  v65 = v11;
  sub_1B1A6FF98();
  if (v14)
  {

    goto LABEL_6;
  }

  v20 = v13;
  v21 = NSRoundUpToMultipleOfPageSize(a2);
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(v21))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_16;
  }

  if (v20)
  {
    if (v20 >= v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v57 = v21;
    type metadata accessor for FileLock(0);
    v30 = swift_allocObject();
    v61 = OBJC_IVAR____TtC8Dendrite8FileLock_handle;
    *(v30 + OBJC_IVAR____TtC8Dendrite8FileLock_handle) = 0;
    v59 = OBJC_IVAR____TtC8Dendrite8FileLock_fm;
    v31 = objc_opt_self();
    v58 = v65;
    v64 = [v31 defaultManager];
    *(v30 + v59) = v64;
    *(v30 + v61) = v65;
    v32 = OBJC_IVAR____TtC8Dendrite8FileLock_fileURL;
    v33 = sub_1B1A7C808();
    (*(*(v33 - 8) + 56))(v30 + v32, 1, 1, v33);
    v63 = v30;
    v45 = sub_1B1A7AD9C();
    while (flock([v45 fileDescriptor], 2))
    {
      if (MEMORY[0x1B2736280]() == 4)
      {
        v46 = MEMORY[0x1B2736280]();
        sub_1B1A73780();
        swift_allocError();
        *v47 = v46;
        *(v47 + 4) = 0;
        swift_willThrow();

        swift_setDeallocating();
        v51 = sub_1B1A7AD9C();
        flock([v51 0x1E7AF1178], 8);

        sub_1B1A754DC(v30 + OBJC_IVAR____TtC8Dendrite8FileLock_fileURL);
        v52 = *(v30 + OBJC_IVAR____TtC8Dendrite8FileLock_handle);

        swift_deallocClassInstance();
        goto LABEL_2;
      }
    }

    sub_1B1A6FF98();
    if (v49)
    {
      sub_1B1A75488();
      swift_allocError();
      *v50 = 0;
      *(v50 + 4) = 1;
      swift_willThrow();

      swift_setDeallocating();
      v53 = sub_1B1A7AD9C();
      flock([v53 0x1E7AF1178], 8);

      sub_1B1A754DC(v30 + OBJC_IVAR____TtC8Dendrite8FileLock_fileURL);
      v54 = *(v30 + OBJC_IVAR____TtC8Dendrite8FileLock_handle);

      swift_deallocClassInstance();
      goto LABEL_2;
    }

    v20 = v48;
    if (!v48)
    {
      sub_1B1A701A0(v58, v57);
      v20 = v57;
    }

    v60 = sub_1B1A7AD9C();
    flock([v60 fileDescriptor], 8);

    swift_setDeallocating();
    v55 = sub_1B1A7AD9C();
    flock([v55 fileDescriptor], 8);

    sub_1B1A754DC(v63 + OBJC_IVAR____TtC8Dendrite8FileLock_fileURL);
    v56 = *(v63 + OBJC_IVAR____TtC8Dendrite8FileLock_handle);

    swift_deallocClassInstance();
    LODWORD(v21) = v57;
    if (v20 >= v57)
    {
      goto LABEL_18;
    }
  }

  if (qword_1EDB764F0 != -1)
  {
    goto LABEL_39;
  }

LABEL_16:
  v22 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v22, qword_1EDB770A8);
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1B1A7CEC8();
  MEMORY[0x1B2736400](0xD000000000000025, 0x80000001B1A81FA0);
  v23 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v23);

  MEMORY[0x1B2736400](0xD00000000000001BLL, 0x80000001B1A81FD0);
  v24 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v24);

  sub_1B1A561C0(v66, v67, 0xD00000000000005FLL, 0x80000001B1A81810, 0xD000000000000038, 0x80000001B1A81F00);

  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  LODWORD(v21) = v20;
LABEL_18:
  if (v21 < a3)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_20:
      v25 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v25, qword_1EDB770A8);
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_1B1A7CEC8();
      MEMORY[0x1B2736400](0xD000000000000016, 0x80000001B1A81F60);
      v26 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v26);

      MEMORY[0x1B2736400](0xD000000000000019, 0x80000001B1A81F80);
      v27 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v27);

      MEMORY[0x1B2736400](0x6E696D20646E6120, 0xEE00203A6D756D69);
      v28 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v28);

      sub_1B1A561C0(v66, v67, 0xD00000000000005FLL, 0x80000001B1A81810, 0xD000000000000038, 0x80000001B1A81F00);

      sub_1B1A75488();
      swift_allocError();
      *v29 = 1;
      *(v29 + 4) = 1;
      swift_willThrow();

LABEL_2:
      v12 = sub_1B1A7C808();
      (*(*(v12 - 8) + 8))(a1, v12);
      goto LABEL_9;
    }

LABEL_41:
    swift_once();
    goto LABEL_20;
  }

  v6[3] = 0;
  v6[4] = v21;
  v62 = v21;
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v34, qword_1EDB770A8);
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v66 = 0xD000000000000016;
  v67 = 0x80000001B1A81F40;
  [v65 fileDescriptor];
  v35 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v35);

  MEMORY[0x1B2736400](0x6172206874697720, 0xED0000203A65676ELL);
  v68 = v6[3];
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](3943982, 0xE300000000000000);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](0, 0xE000000000000000);

  sub_1B1A561C0(v66, v67, 0xD00000000000005FLL, 0x80000001B1A81810, 0xD000000000000038, 0x80000001B1A81F00);

  v36 = mmap(0, v62, dword_1B1A7FCEC[v10], 1, [v65 fileDescriptor], 0);
  if (v36)
  {
    v37 = v36;
    if (v36 != sub_1B1A7C9A8())
    {

      v38 = sub_1B1A7C808();
      (*(*(v38 - 8) + 8))(a1, v38);
      v6[2] = v37;
      return v6;
    }
  }

  LODWORD(v66) = MEMORY[0x1B2736280]();
  v39 = sub_1B1A7CF98();
  sub_1B1A561D8(v39, v40, 0xD00000000000005FLL, 0x80000001B1A81810, 0xD000000000000038, 0x80000001B1A81F00);

  v42 = MEMORY[0x1B2736280](v41);
  sub_1B1A75488();
  swift_allocError();
  *v43 = v42;
  *(v43 + 4) = 0;
  swift_willThrow();

  v44 = sub_1B1A7C808();
  (*(*(v44 - 8) + 8))(a1, v44);
LABEL_9:
  swift_deallocPartialClassInstance();
  return v6;
}

void MemoryMappedRegion.read(at:count:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B1A7C848();
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v2[3];
  v11 = v2[4];
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (a1 + a2 < v13)
  {
    v14 = v2[2];
    (*(v6 + 104))(v9, *MEMORY[0x1E6969010], v7);
    sub_1B1A75628(v14 + a1, a2, v9);
  }
}

uint64_t MemoryMappedRegion.deinit()
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v0 = v1;
  if (munmap(*(v1 + 16), v3 - v2))
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_4:
      v4 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v4, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v5 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v5);

      v6 = MEMORY[0x1B2736400](0x203A726F72726520, 0xE800000000000000);
      MEMORY[0x1B2736280](v6);
      v7 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v7);

      sub_1B1A561D8(0x722070616D6E756DLL, 0xEF203A6E72757465, 0xD00000000000005FLL, 0x80000001B1A81810, 0x74696E696564, 0xE600000000000000);

      return v0;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return v0;
}

uint64_t MemoryMappedRegion.__deallocating_deinit()
{
  MemoryMappedRegion.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1B1A75488()
{
  result = qword_1EB75E7A0;
  if (!qword_1EB75E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E7A0);
  }

  return result;
}

uint64_t sub_1B1A754DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E7A8, &qword_1B1A7FC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1A75544(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1B1A7C868();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1B1A7C6D8();
  if (v3)
  {
    result = sub_1B1A7C708();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1B1A7C6F8();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B1A4F9CC(v3, v7);

  return v8;
}

uint64_t sub_1B1A75628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1A7C848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B1A7C838();
  if (a2)
  {
    sub_1B1A7C728();
    swift_allocObject();

    v10 = sub_1B1A7C6B8();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = sub_1B1A7C718();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1B1A75544(v10, a2);
  }

  else
  {
    v13 = sub_1B1A7C838();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

void *sub_1B1A758D4(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    sub_1B1A759A8(&v10);
    v8 = v12;
    if (v12 >> 60 == 15)
    {
      v5 = 0;
LABEL_9:
      sub_1B1A4DE0C(v10, v11, *(&v11 + 1), v8);
    }

    else
    {
      v5 = 0;
      while (1)
      {
        v9 = v11;
        *v7 = v10;
        *(v7 + 8) = v9;
        *(v7 + 24) = v8;
        if (a3 - 1 == v5)
        {
          break;
        }

        sub_1B1A759A8(&v10);
        v8 = v12;
        ++v5;
        v7 += 32;
        if (v12 >> 60 == 15)
        {
          goto LABEL_9;
        }
      }

      v5 = a3;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1B1A759A8(void *a1@<X8>)
{
  v38 = *(*(*(v1 + 56) + 16) + 16);
  if (!v38)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xF000000000000000;
    return;
  }

  v2 = v1;
  v3 = 0;
  v4 = 0;
  v39 = *(v1 + 16);
LABEL_4:
  v5 = 0xF000000000000000;
  do
  {
    if (v39)
    {
      v6 = v38;
      if ((*(v2 + 80) & 1) == 0)
      {
        v6 = *(v2 + 76);
        if (!v6)
        {
          goto LABEL_30;
        }
      }

      v7 = (v6 - 1);
      *(v2 + 76) = v7;
      *(v2 + 80) = 0;
    }

    else
    {
      if (*(v2 + 80))
      {
        v7 = 0;
      }

      else
      {
        v8 = *(v2 + 76);
        v7 = (v8 + 1);
        if (v8 == -1)
        {
          goto LABEL_38;
        }
      }

      *(v2 + 76) = v7;
      *(v2 + 80) = 0;
      if (v7 >= *(*(*(v2 + 56) + 16) + 16))
      {
        goto LABEL_30;
      }
    }

    v40 = v5;
    v41 = v3;
    v9 = *(v2 + 56);
    v10 = *(v2 + 64);
    v11 = *(*(v9 + 16) + 16);

    if (v7 >= v11)
    {
      goto LABEL_3;
    }

    v12 = 8 * v7 + 8;
    v13 = *(v10 + 16);
    v14 = *(v13 + 32);
    v15 = __OFSUB__(v14, v12);
    v16 = v14 - v12;
    if (v15)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v17 = atomic_load((*(v13 + 16) + v16 + 4));
    if (v17 > 2)
    {
      if (v17 == 5 || v17 == 4 || v17 == 3)
      {
LABEL_3:

        sub_1B1A4C400(v41, v40);
        v3 = 0;
        goto LABEL_4;
      }

LABEL_23:
      **(v9 + 16) = 2;
      v21 = *(*(v9 + 16) + 16);
      sub_1B1A6ABE8();
      v22 = swift_allocError();
      *(v23 + 4) = 0;
      *v23 = v21;
      swift_willThrow();
      v4 = v22;

      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E458, &qword_1B1A7E390);
      if ((swift_dynamicCast() & 1) != 0 && v42 <= 0xFAu)
      {

        if (qword_1EDB764F0 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for InternalLogger(0);
        __swift_project_value_buffer(v29, qword_1EDB770A8);
        sub_1B1A7CEC8();
        MEMORY[0x1B2736400](0xD000000000000019, 0x80000001B1A82030);
        v30 = *(v2 + 32);
        v31 = *(v2 + 40);

        MEMORY[0x1B2736400](v30, v31);

        MEMORY[0x1B2736400](0x65646E6920746120, 0xEB00000000203A78);
        v32 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v32);

        MEMORY[0x1B2736400](0xD000000000000016, 0x80000001B1A820D0);
        sub_1B1A7CF18();
        sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000072, 0x80000001B1A82050, 0x29287478656ELL, 0xE600000000000000);
        sub_1B1A4C400(v41, v40);

        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        a1[3] = 0xF000000000000000;

        return;
      }

      if (qword_1EDB764F0 == -1)
      {
LABEL_26:
        v25 = type metadata accessor for InternalLogger(0);
        __swift_project_value_buffer(v25, qword_1EDB770A8);
        sub_1B1A7CEC8();
        MEMORY[0x1B2736400](0xD000000000000019, 0x80000001B1A82030);
        v26 = *(v2 + 32);
        v27 = *(v2 + 40);

        MEMORY[0x1B2736400](v26, v27);

        MEMORY[0x1B2736400](0x65646E6920746120, 0xEB00000000203A78);
        v28 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v28);

        MEMORY[0x1B2736400](0x203A726F72726520, 0xE800000000000000);
        sub_1B1A7CF18();
        sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000072, 0x80000001B1A82050, 0x29287478656ELL, 0xE600000000000000);
        sub_1B1A4C400(v41, v40);

        goto LABEL_31;
      }

LABEL_39:
      swift_once();
      goto LABEL_26;
    }

    if (v17 == 1)
    {
      goto LABEL_3;
    }

    if (v17 != 2)
    {
      goto LABEL_23;
    }

    v18 = DataFrameStreamSegment.frameData(forSegmentIndex:)(v7);
    v20 = v19;

    sub_1B1A4C400(v41, v40);
    v3 = v18;
    v5 = v20;
  }

  while (v20 >> 60 == 15);
  if (*(v2 + 80))
  {
    v3 = v18;
    v5 = v20;
LABEL_30:
    sub_1B1A4C400(v3, v5);
LABEL_31:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xF000000000000000;
    return;
  }

  v33 = *(v2 + 76);
  v34 = *(v2 + 24);
  v35 = __CFADD__(v34, v33);
  v36 = v34 + v33;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *a1 = v33;
    a1[1] = v36;
    a1[2] = v18;
    a1[3] = v20;
  }
}

void *DataFrameStreamSegment.Iterator.deinit()
{

  return v0;
}

uint64_t DataFrameStreamSegment.Iterator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A760E4()
{
  sub_1B1A764F8();
  v1 = v0;

  return v1;
}

uint64_t DataFrameStreamSegment.makeIterator()(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 10);
  type metadata accessor for DataFrameStreamSegment.Iterator();
  v8 = swift_allocObject();
  *(v8 + 72) = v7;
  *(v8 + 76) = 0;
  *(v8 + 80) = 1;
  *(v8 + 24) = *(*(v5 + 16) + 24);
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 16) = 0;

  return v8;
}

unint64_t sub_1B1A76290()
{
  result = qword_1EB75E7B0;
  if (!qword_1EB75E7B0)
  {
    type metadata accessor for DataFrameStreamSegment.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E7B0);
  }

  return result;
}

__n128 sub_1B1A762E4@<Q0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  type metadata accessor for DataFrameStreamSegment.Iterator();
  v5 = swift_allocObject();
  *(v5 + 76) = 0;
  *(v5 + 80) = 1;
  result = *(v1 + 1);
  v7 = *(v1 + 3);
  *(v5 + 24) = *(*(v1[3] + 16) + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = result;
  *(v5 + 56) = v7;
  *(v5 + 72) = v4;
  *(v5 + 16) = 0;
  *a1 = v5;
  return result;
}

uint64_t sub_1B1A7635C()
{
  v1 = v0[1];
  v5 = *v0;
  v6[0] = v1;
  *(v6 + 12) = *(v0 + 28);
  sub_1B1A766A0(&v5);
  v3 = v2;
  sub_1B1A6AC88(&v5);
  return v3;
}

uint64_t sub_1B1A76444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1A76498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1B1A764F8()
{
  sub_1B1A759A8(&v21);
  v0 = v23;
  v1 = MEMORY[0x1E69E7CC0];
  if (v23 >> 60 != 15)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v4 = v21;
      v5 = v22;
      if (!v2)
      {
        v6 = v1[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v20 = v22;
        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E7B8, qword_1B1A7FEC8);
        v9 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v9);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 1;
        }

        v12 = v11 >> 5;
        v9[2] = v8;
        v9[3] = 2 * (v11 >> 5);
        v13 = (v9 + 4);
        v14 = v1[3] >> 1;
        if (v1[2])
        {
          if (v9 != v1 || v13 >= &v1[4 * v14 + 4])
          {
            memmove(v9 + 4, v1 + 4, 32 * v14);
          }

          v1[2] = 0;
        }

        v3 = v13 + 32 * v14;
        v2 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v1 = v9;
        v5 = v20;
      }

      v16 = __OFSUB__(v2--, 1);
      if (v16)
      {
        break;
      }

      *v3 = v4;
      *(v3 + 8) = v5;
      *(v3 + 24) = v0;
      v3 += 32;
      sub_1B1A759A8(&v21);
      v0 = v23;
      if (v23 >> 60 == 15)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = 0;
LABEL_22:
  sub_1B1A4DE0C(v21, v22, *(&v22 + 1), v0);
  v17 = v1[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v2);
    v19 = v18 - v2;
    if (!v16)
    {
      v1[2] = v19;
      return;
    }

LABEL_28:
    __break(1u);
  }
}

void sub_1B1A766A0(__int128 *a1)
{
  type metadata accessor for DataFrameStreamSegment.Iterator();
  inited = swift_initStackObject();
  *(inited + 76) = 0;
  *(inited + 80) = 1;
  v3 = *(*(a1 + 3) + 16);
  sub_1B1A600F4(a1, &v27);
  *(inited + 24) = *(v3 + 24);
  v4 = *a1;
  v5 = a1[1];
  *(inited + 60) = *(a1 + 28);
  *(inited + 32) = v4;
  *(inited + 48) = v5;
  *(inited + 16) = 0;
  sub_1B1A759A8(&v27);
  v6 = v29;
  v7 = MEMORY[0x1E69E7CC0];
  if (v29 >> 60 != 15)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v10 = v27;
      v11 = v28;
      if (!v8)
      {
        v12 = v7[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v26 = v28;
        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E7B8, qword_1B1A7FEC8);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 1;
        }

        v18 = v17 >> 5;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 5);
        v19 = (v15 + 4);
        v20 = v7[3] >> 1;
        if (v7[2])
        {
          if (v15 != v7 || v19 >= &v7[4 * v20 + 4])
          {
            memmove(v15 + 4, v7 + 4, 32 * v20);
          }

          v7[2] = 0;
        }

        v9 = v19 + 32 * v20;
        v8 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v7 = v15;
        v11 = v26;
      }

      v22 = __OFSUB__(v8--, 1);
      if (v22)
      {
        break;
      }

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 24) = v6;
      v9 += 32;
      sub_1B1A759A8(&v27);
      v6 = v29;
      if (v29 >> 60 == 15)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = 0;
LABEL_22:
  swift_setDeallocating();

  sub_1B1A4DE0C(v27, v28, *(&v28 + 1), v6);
  v23 = v7[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v8);
    v25 = v24 - v8;
    if (!v22)
    {
      v7[2] = v25;
      return;
    }

LABEL_28:
    __break(1u);
  }
}

uint64_t sub_1B1A768C4()
{
  sub_1B1A76B24(v0 + OBJC_IVAR____TtC8Dendrite22RollingStreamContainer_storageContainer);

  sub_1B1A76B80(v0 + OBJC_IVAR____TtC8Dendrite22RollingStreamContainer__currentContainerId);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for RollingStreamContainer(uint64_t a1)
{
  result = qword_1EB75E7F0;
  if (!qword_1EB75E7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1A769BC(uint64_t a1)
{
  type metadata accessor for StorageContainer(319);
  if (v1 <= 0x3F)
  {
    sub_1B1A76AC0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B1A76AC0(uint64_t a1)
{
  if (!qword_1EB75E800)
  {
    sub_1B1A7C958();
    v1 = sub_1B1A7CE18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB75E800);
    }
  }
}

uint64_t sub_1B1A76B24(uint64_t a1)
{
  v2 = type metadata accessor for StorageContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1A76B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB75E808, &qword_1B1A7FF68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1A76BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ProtoTagPath.FormatError.hashValue.getter()
{
  v1 = *v0;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](v1);
  return sub_1B1A7D098();
}

uint64_t ProtoTagPath.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v31[0] = 46;
  v29 = v31;
  v4 = sub_1B1A773E8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B1A78218, v28, a1, a2, v31);
  v5 = *(v4 + 16);
  if (v5)
  {
    v27 = a3;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B1A6EE5C(0, v5, 0);
    v6 = 0;
    v7 = v32;
    v8 = (v4 + 56);
    while (v6 < *(v4 + 16))
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *v8;
      if (!((v10 ^ v9) >> 14))
      {
        goto LABEL_20;
      }

      v12 = *(v8 - 1);
      if ((v11 & 0x1000000000000000) != 0)
      {
        v19 = *(v8 - 3);
        v25 = *(v8 - 2);
        v20 = *(v8 - 1);
        swift_bridgeObjectRetain_n();
        v15 = sub_1B1A7781C(v19, v25, v20, v11, 10);

        if ((v15 & 0x100000000) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((v11 & 0x2000000000000000) != 0)
        {
          v31[0] = *(v8 - 1);
          v31[1] = v11 & 0xFFFFFFFFFFFFFFLL;
          v13 = v31;
        }

        else if ((v12 & 0x1000000000000000) != 0)
        {
          v13 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v26 = *(v8 - 3);
          v21 = *(v8 - 2);
          v22 = *(v8 - 1);
          v13 = sub_1B1A7CF08();
          v12 = v22;
          v9 = v26;
          v10 = v21;
        }

        v14 = sub_1B1A78310(v13, v9, v10, v12, v11, 10);
        LODWORD(v15) = v14;
        v30 = BYTE4(v14) & 1;
        v16 = BYTE4(v14) & 1;

        if (v16)
        {
          goto LABEL_21;
        }
      }

      v32 = v7;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B1A6EE5C((v17 > 1), v18 + 1, 1);
        v7 = v32;
      }

      ++v6;
      *(v7 + 16) = v18 + 1;
      *(v7 + 4 * v18 + 32) = v15;
      v8 += 4;
      if (v5 == v6)
      {

        *v27 = v7;
        return result;
      }
    }

    __break(1u);
LABEL_20:

LABEL_21:

    sub_1B1A78270();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {

    *a3 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ProtoTagPath.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B1A6EE1C(0, v2, 0);
    v3 = v16;
    v4 = v1 + 32;
    do
    {
      v4 += 4;
      v5 = sub_1B1A7CF98();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B1A6EE1C((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E898, &qword_1B1A7FFD0);
  sub_1B1A7877C();
  v12 = sub_1B1A7CA38();
  v14 = v13;

  MEMORY[0x1B2736400](v12, v14);

  MEMORY[0x1B2736400](32032, 0xE200000000000000);
  return 8315;
}

uint64_t static ProtoTagPath.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A77140(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ProtoTagPath.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1B2736930](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 4;
      result = sub_1B1A7D088();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t ProtoTagPath.hashValue.getter()
{
  v1 = *v0;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 4;
      sub_1B1A7D088();
      --v2;
    }

    while (v2);
  }

  return sub_1B1A7D098();
}

uint64_t sub_1B1A77264()
{
  v1 = *v0;
  result = MEMORY[0x1B2736930](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 4;
      result = sub_1B1A7D088();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B1A772B8(uint64_t a1)
{
  v2 = *v1;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      v4 += 4;
      sub_1B1A7D088();
      --v3;
    }

    while (v3);
  }

  return sub_1B1A7D098();
}

BOOL sub_1B1A7732C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s8Dendrite12ProtoTagPathV1loiySbAC_ACtFZ_0(&v4, &v5);
}

BOOL sub_1B1A77368(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s8Dendrite12ProtoTagPathV1loiySbAC_ACtFZ_0(&v5, &v4);
}

BOOL sub_1B1A773A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return _s8Dendrite12ProtoTagPathV1loiySbAC_ACtFZ_0(&v4, &v5);
}

unint64_t sub_1B1A773E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B1A7CBD8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B1A79684(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B1A79684((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B1A7CBB8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B1A7CB28();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B1A7CB28();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B1A7CBD8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B1A79684(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B1A7CBD8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B1A79684(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B1A79684((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B1A7CB28();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B1A777A8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E508, "DP");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1B1A7781C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1B1A788AC();

  result = sub_1B1A7CBC8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1B1A77DA4(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B1A7CF08();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1B1A77DA4(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B1A7CBD8();
  v6 = sub_1B1A77E24(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B1A77E24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B1A7CE28();
    if (!v9 || (v10 = v9, v11 = sub_1B1A777A8(v9, 0), v12 = sub_1B1A77F7C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B1A7CB08();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B1A7CB08();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B1A7CF08();
LABEL_4:

  return sub_1B1A7CB08();
}

unint64_t sub_1B1A77F7C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B1A7819C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B1A7CB88();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B1A7CF08();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B1A7819C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B1A7CB58();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1B1A7819C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B1A7CB98();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B2736430](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1B1A78218(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B1A7CFB8() & 1;
  }
}

unint64_t sub_1B1A78270()
{
  result = qword_1EB75E890;
  if (!qword_1EB75E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E890);
  }

  return result;
}

BOOL _s8Dendrite12ProtoTagPathV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v3 >= v2)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  v5 = (*a1 + 32);
  v6 = (*a2 + 32);
  do
  {
    if (!v4)
    {
      return v2 < v3;
    }

    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    --v4;
    v10 = v7 >= v9;
  }

  while (v7 == v9);
  return !v10;
}

uint64_t sub_1B1A78310(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1B1A7819C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1B1A7CB78();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1B1A7819C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1B1A7819C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1B1A7CB78();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_1B1A7877C()
{
  result = qword_1EDB75D48[0];
  if (!qword_1EDB75D48[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB75E898, &qword_1B1A7FFD0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB75D48);
  }

  return result;
}

unint64_t sub_1B1A787E4()
{
  result = qword_1EB75E8A0;
  if (!qword_1EB75E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E8A0);
  }

  return result;
}

unint64_t sub_1B1A78838()
{
  result = qword_1EDB762B8;
  if (!qword_1EDB762B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB762B8);
  }

  return result;
}

unint64_t sub_1B1A788AC()
{
  result = qword_1EB75E8A8;
  if (!qword_1EB75E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E8A8);
  }

  return result;
}

uint64_t TypedStream.segmentSize.getter()
{
  swift_beginAccess();
  v0 = sub_1B1A50430();
  swift_endAccess();
  return v0;
}

char *TypedStream.segments.getter()
{
  v0 = sub_1B1A5992C();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 2);
  if (!v1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v2 = (v0 + 40);
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v3 = *(v2 - 1);
    v4 = *v2;

    sub_1B1A5B4C8(&v18);
    v5 = v19;
    if (v19)
    {
      v16 = v23;
      v6 = v21;
      v7 = v22;
      v8 = v18;
      v9 = v20;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v17;
      }

      else
      {
        v10 = sub_1B1A79790(0, *(v17 + 2) + 1, 1, v17);
      }

      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        v10 = sub_1B1A79790((v11 > 1), v12 + 1, 1, v10);
      }

      *(v10 + 2) = v12 + 1;
      v17 = v10;
      v13 = &v10[48 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v5;
      *(v13 + 6) = v9;
      *(v13 + 7) = v6;
      *(v13 + 8) = v7;
      *(v13 + 18) = v16;
    }

    else
    {
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v14, qword_1EDB770A8);
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v18 = 0xD000000000000018;
      v19 = 0x80000001B1A82310;
      MEMORY[0x1B2736400](v3, v4);

      sub_1B1A561D8(v18, v19, 0xD000000000000069, 0x80000001B1A822A0, 0x73746E656D676573, 0xE800000000000000);
    }

    v2 += 2;
    --v1;
  }

  while (v1);

  return v17;
}

uint64_t Set<>.optimized(for:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v4 = sub_1B1A798AC(*(a2 + 16), 0);
  v5 = sub_1B1A7A43C(&v21, v4 + 4, v2, a2);
  v6 = v21;

  sub_1B1A7A590(v6);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  v21 = v4;
  v7 = 0;
  sub_1B1A79930(&v21);
  v8 = 0;
  v9 = v21;
  v10 = *(v21 + 2);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v10 == v8)
    {

      v19 = sub_1B1A7A598(v11);

      return v19;
    }

    v12 = v8;
    if (v8 >= *(v9 + 2))
    {
      break;
    }

    v13 = &v9[8 * v8];
    v7 = *(v13 + 4);
    v14 = *(v11 + 2);
    if (v14)
    {
      v15 = sub_1B1A78F34(*&v11[8 * v14 + 24], *(v13 + 4));
      v8 = v12 + 1;
      if (!v15)
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_13;
        }

        v16 = v14 + 1;
        goto LABEL_17;
      }
    }

    else
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_13;
      }

      v16 = 1;
LABEL_17:
      v11 = sub_1B1A7906C(0, v16, 1, v11);
LABEL_13:
      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1B1A7906C((v17 > 1), v18 + 1, 1, v11);
      }

      *(v11 + 2) = v18 + 1;
      *&v11[8 * v18 + 32] = v7;
      v8 = v12 + 1;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_1B1A78F34(_BOOL8 result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    v5 = v2 >= v4;
    v6 = v2 == v4;
    v7 = v2 == v4;
    if (v6)
    {
      return v7;
    }

    if (v5)
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(a2 + 32 + 4 * v2);
    v9 = *(result + 32 + 4 * v2++);
    if (v8 != v9)
    {
      return v7;
    }
  }

  v10 = *(result + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ProtoTagTreeOperation.hashValue.getter()
{
  v1 = *v0;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](v1);
  return sub_1B1A7D098();
}

uint64_t Set<>.init(tagPaths:)(uint64_t a1)
{
  return sub_1B1A7A6E4(a1);
}

{
  return sub_1B1A7A6E4(a1);
}

char *sub_1B1A7906C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E450, &unk_1B1A7E380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B1A79178(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E448, &qword_1B1A7E378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1B1A7927C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E738, &unk_1B1A7FA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B1A79388(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E8B8, &unk_1B1A80260);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B1A79578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E8D0, &unk_1B1A80280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B1A79684(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E8C8, &qword_1B1A80278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B1A79790(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E8C0, &qword_1B1A80270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B1A798AC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E450, &unk_1B1A7E380);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_1B1A79930(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B1A535A0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B1A7999C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B1A7999C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B1A7CF88();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B1A7CC78();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B1A79B24(v7, v8, a1, v4);
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
    return sub_1B1A79A94(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B1A79A94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
LABEL_5:
    v5 = *(v4 + 8 * a3);
    v6 = a3;
    while (2)
    {
      v7 = v6 - 1;
      v8 = *(v4 + 8 * (v6 - 1));
      v9 = *(v5 + 16);
      v10 = *(v8 + 16);
      if (v10 >= v9)
      {
        v11 = *(v5 + 16);
      }

      else
      {
        v11 = *(v8 + 16);
      }

      v12 = 32;
      while (v11)
      {
        v13 = *(v5 + v12);
        v14 = *(v8 + v12);
        v12 += 4;
        --v11;
        if (v13 != v14)
        {
          if (v13 < v14)
          {
            goto LABEL_15;
          }

LABEL_4:
          if (++a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (v9 >= v10)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (v4)
      {
        *(v4 + 8 * v6) = v8;
        *(v4 + 8 * v7) = v5;
        --v6;
        if (v7 != result)
        {
          continue;
        }

        goto LABEL_4;
      }

      break;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1A79B24(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v94 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v97 = v10;
      v89 = *(v10 + 2);
      if (v89 >= 2)
      {
        while (*a3)
        {
          v90 = *&v10[16 * v89];
          v91 = *&v10[16 * v89 + 24];
          sub_1B1A7A0DC((*a3 + 8 * v90), (*a3 + 8 * *&v10[16 * v89 + 16]), (*a3 + 8 * v91), v5);
          if (v6)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B1A533A4(v10);
          }

          if (v89 - 2 >= *(v10 + 2))
          {
            goto LABEL_131;
          }

          v92 = &v10[16 * v89];
          *v92 = v90;
          *(v92 + 1) = v91;
          v97 = v10;
          result = sub_1B1A53318(v89 - 1);
          v10 = v97;
          v89 = *(v97 + 2);
          if (v89 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_1B1A533A4(v10);
    v10 = result;
    goto LABEL_107;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v11 = v9++;
  if (v9 < v8)
  {
    v12 = *a3;
    v13 = *(*a3 + 8 * v9);
    v95 = *(*a3 + 8 * v11);
    v96 = v13;
    result = _s8Dendrite12ProtoTagPathV1loiySbAC_ACtFZ_0(&v96, &v95);
    while (v9 != v8 - 1)
    {
      v16 = v9 + 1;
      v17 = *(v12 + 8 * (v9 + 1));
      v18 = *(v12 + 8 * v9);
      v19 = *(v17 + 16);
      v20 = *(v18 + 16);
      if (v20 >= v19)
      {
        v21 = *(v17 + 16);
      }

      else
      {
        v21 = *(v18 + 16);
      }

      v22 = (v17 + 32);
      v23 = (v18 + 32);
      while (v21)
      {
        v25 = *v22++;
        v24 = v25;
        v26 = *v23++;
        --v21;
        v14 = v24 >= v26;
        if (v24 != v26)
        {
          goto LABEL_7;
        }
      }

      v14 = v19 >= v20;
LABEL_7:
      v15 = !v14;
      ++v9;
      if ((result ^ v15))
      {
        goto LABEL_20;
      }
    }

    v16 = v8;
LABEL_20:
    if (result)
    {
      if (v16 < v11)
      {
        goto LABEL_134;
      }

      if (v11 < v16)
      {
        v27 = 8 * v16 - 8;
        v28 = 8 * v11;
        v29 = v16;
        v30 = v11;
        do
        {
          if (v30 != --v29)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v31 = *(v32 + v28);
            *(v32 + v28) = *(v32 + v27);
            *(v32 + v27) = v31;
          }

          ++v30;
          v27 -= 8;
          v28 += 8;
        }

        while (v30 < v29);
      }
    }

    v9 = v16;
  }

  v33 = a3[1];
  if (v9 >= v33)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_133;
  }

  if (v9 - v11 >= a4)
  {
    goto LABEL_54;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_135;
  }

  if (v11 + a4 < v33)
  {
    v33 = v11 + a4;
  }

  if (v33 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v33)
  {
    goto LABEL_54;
  }

  v34 = *a3;
LABEL_40:
  v35 = *(v34 + 8 * v9);
  v36 = v9;
  while (1)
  {
    v37 = v36 - 1;
    v38 = *(v34 + 8 * (v36 - 1));
    v39 = *(v35 + 16);
    v40 = *(v38 + 16);
    v41 = v40 >= v39 ? *(v35 + 16) : *(v38 + 16);
    v42 = 32;
    do
    {
      if (!v41)
      {
        if (v39 >= v40)
        {
          goto LABEL_39;
        }

        goto LABEL_50;
      }

      v43 = *(v35 + v42);
      result = *(v38 + v42);
      v42 += 4;
      --v41;
    }

    while (v43 == result);
    if (v43 >= result)
    {
      goto LABEL_39;
    }

LABEL_50:
    if (!v34)
    {
      break;
    }

    *(v34 + 8 * v36) = v38;
    *(v34 + 8 * v37) = v35;
    --v36;
    if (v37 == v11)
    {
LABEL_39:
      if (++v9 != v33)
      {
        goto LABEL_40;
      }

      v9 = v33;
LABEL_54:
      if (v9 < v11)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B1A5349C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v5 = *(v10 + 2);
      v44 = *(v10 + 3);
      v45 = v5 + 1;
      if (v5 >= v44 >> 1)
      {
        result = sub_1B1A5349C((v44 > 1), v5 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v45;
      v46 = &v10[16 * v5];
      *(v46 + 4) = v11;
      *(v46 + 5) = v9;
      v47 = *v94;
      if (!*v94)
      {
        goto LABEL_142;
      }

      if (v5)
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
            v49 = *(v10 + 4);
            v50 = *(v10 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_74:
            if (v52)
            {
              goto LABEL_121;
            }

            v65 = &v10[16 * v45];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_124;
            }

            v71 = &v10[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_128;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v45 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v75 = &v10[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_88:
          if (v70)
          {
            goto LABEL_123;
          }

          v78 = &v10[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_126;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_95:
          v86 = v48 - 1;
          if (v48 - 1 >= v45)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v87 = *&v10[16 * v86 + 32];
          v5 = *&v10[16 * v48 + 40];
          sub_1B1A7A0DC((*a3 + 8 * v87), (*a3 + 8 * *&v10[16 * v48 + 32]), (*a3 + 8 * v5), v47);
          if (v6)
          {
          }

          if (v5 < v87)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B1A533A4(v10);
          }

          if (v86 >= *(v10 + 2))
          {
            goto LABEL_118;
          }

          v88 = &v10[16 * v86];
          *(v88 + 4) = v87;
          *(v88 + 5) = v5;
          v97 = v10;
          result = sub_1B1A53318(v48);
          v10 = v97;
          v45 = *(v97 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v53 = &v10[16 * v45 + 32];
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_119;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_120;
        }

        v60 = &v10[16 * v45];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_122;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v64 >= v56)
        {
          v82 = &v10[16 * v48 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_129;
          }

          if (v51 < v85)
          {
            v48 = v45 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

LABEL_3:
      v8 = a3[1];
      if (v9 >= v8)
      {
        goto LABEL_105;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1B1A7A0DC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v25 = *v6;
      v24 = v17;
      if (_s8Dendrite12ProtoTagPathV1loiySbAC_ACtFZ_0(&v25, &v24))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 8;
    v5 -= 8;
    v19 = v14;
    do
    {
      v20 = v5 + 8;
      v21 = *(v19 - 1);
      v19 -= 8;
      v22 = *v18;
      v25 = v21;
      v24 = v22;
      if (_s8Dendrite12ProtoTagPathV1loiySbAC_ACtFZ_0(&v25, &v24))
      {
        if (v20 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 8, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 8;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1B1A7A308(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for DataFrameStreamSegment.Iterator();
  v8 = swift_allocObject();
  *(v8 + 76) = 0;
  *(v8 + 80) = 1;
  v9 = *(*(v4 + 24) + 16);
  sub_1B1A600F4(v4, &v15);
  *(v8 + 24) = *(v9 + 24);
  v10 = *(v4 + 16);
  *(v8 + 32) = *v4;
  *(v8 + 48) = v10;
  *(v8 + 60) = *(v4 + 28);
  *(v8 + 16) = 0;
  result = sub_1B1A6AC88(v4);
  v12 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *a1 = v8;
    return v12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1B1A759A8(&v15);
    v13 = v17;
    if (v17 >> 60 == 15)
    {
      v12 = 0;
LABEL_9:
      sub_1B1A4DE0C(v15, v16, *(&v16 + 1), v13);
    }

    else
    {
      v12 = 0;
      while (1)
      {
        v14 = v16;
        *a2 = v15;
        *(a2 + 8) = v14;
        *(a2 + 24) = v13;
        if (a3 - 1 == v12)
        {
          break;
        }

        sub_1B1A759A8(&v15);
        v13 = v17;
        ++v12;
        a2 += 32;
        if (v17 >> 60 == 15)
        {
          goto LABEL_9;
        }
      }

      v12 = a3;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_1B1A7A43C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B1A7A598(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B1A7A9B8();
  result = MEMORY[0x1B2736640](v2, &type metadata for ProtoTagPath, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      sub_1B1A5E4BC(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B1A7A620(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x1B2736640](result, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_1B1A5E640(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B1A7A6E4(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    result = sub_1B1A6EE7C(0, v3, 0);
    v5 = 0;
    v6 = v15;
    v7 = (a1 + 40);
    while (v5 < *(a1 + 16))
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      result = ProtoTagPath.init(_:)(v8, v9, &v14);
      if (v1)
      {
      }

      v10 = v14;
      v15 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1B1A6EE7C((v11 > 1), v12 + 1, 1);
        v6 = v15;
      }

      ++v5;
      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
      v7 += 2;
      if (v3 == v5)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v13 = sub_1B1A7A598(v6);

    return v13;
  }

  return result;
}

uint64_t _sSh8DendriteAA12ProtoTagPathVRszrlE8tagPathsShyACGSaySays6UInt32VGG_tcfC_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1B1A6EE7C(0, v2, 0);
    v3 = 32;
    v4 = v10;
    do
    {
      v5 = *(a1 + v3);
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_1B1A6EE7C((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v5;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1B1A7A598(v4);

  return v8;
}

unint64_t sub_1B1A7A954()
{
  result = qword_1EB75E8B0;
  if (!qword_1EB75E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E8B0);
  }

  return result;
}

unint64_t sub_1B1A7A9B8()
{
  result = qword_1EDB762C0[0];
  if (!qword_1EDB762C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB762C0);
  }

  return result;
}

id sub_1B1A7AA0C(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1A7C7B8();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1B1A7C808();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1B1A7C758();

    swift_willThrow();
    v9 = sub_1B1A7C808();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1B1A7AB64(uint64_t a1)
{
  v2 = sub_1B1A7AD9C();
  flock([v2 fileDescriptor], 8);

  sub_1B1A754DC(v1 + OBJC_IVAR____TtC8Dendrite8FileLock_fileURL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FileLock(uint64_t a1)
{
  result = qword_1EDB764E0;
  if (!qword_1EDB764E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1A7AC8C(uint64_t a1)
{
  sub_1B1A7AD34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B1A7AD34(uint64_t a1)
{
  if (!qword_1EDB76830)
  {
    sub_1B1A7C808();
    v1 = sub_1B1A7CE18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB76830);
    }
  }
}

uint64_t sub_1B1A7AD9C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E7A8, &qword_1B1A7FC20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_1B1A7C808();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v12 = OBJC_IVAR____TtC8Dendrite8FileLock_handle;
  result = *(v0 + OBJC_IVAR____TtC8Dendrite8FileLock_handle);
  if (!result)
  {
    sub_1B1A7B030(v0 + OBJC_IVAR____TtC8Dendrite8FileLock_fileURL, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1B1A754DC(v4);
      sub_1B1A73780();
      swift_allocError();
      *v14 = 0;
      *(v14 + 4) = 1;
      return swift_willThrow();
    }

    v15 = v0;
    (*(v6 + 32))(v11, v4, v5);
    sub_1B1A7B0A0();
    (*(v6 + 16))(v8, v11, v5);
    v16 = sub_1B1A7AA0C(v8);
    if (v1)
    {
      return (*(v6 + 8))(v11, v5);
    }

    else
    {
      v17 = v16;
      (*(v6 + 8))(v11, v5);
      v18 = *(v15 + v12);
      *(v15 + v12) = v17;

      result = *(v15 + v12);
      if (!result)
      {
        sub_1B1A73780();
        swift_allocError();
        *v19 = 0;
        *(v19 + 4) = 1;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1B1A7B030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E7A8, &qword_1B1A7FC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1A7B0A0()
{
  result = qword_1EDB764A8;
  if (!qword_1EDB764A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB764A8);
  }

  return result;
}

void PBDataWriter.writeSubgroup(tag:writeData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BlockShimForPBCodable();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error] = 0;
  v7 = &v6[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
  *v7 = a2;
  *(v7 + 1) = a3;
  v12.receiver = v6;
  v12.super_class = v5;

  v8 = objc_msgSendSuper2(&v12, sel_init);
  if (v8)
  {
    v9 = v8;
    PBDataWriterWriteSubgroup();
    v10 = *&v9[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error];
    if (v10)
    {
      swift_willThrow();
      v11 = v10;
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

id PBDataReader.readSubmessage<A>(ofType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  [v4 mark_];
  (*(a3 + 24))(v4, a2, a3);
  return [v4 recall_];
}

uint64_t PBDataReader.readFields<A>(each:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a1;
  v5[5] = a2;
  return PBDataReader.readFieldsSkipping<A>(each:)(sub_1B1A7BF04, v5, a3, a4);
}

id sub_1B1A7B320()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
  if (v0)
  {
    v1 = v0;
    sub_1B1A7C8C8();
    [v1 writeDouble:1 forTag:?];
    result = [v1 immutableData];
    if (result)
    {
      v3 = result;
      v4 = sub_1B1A7C888();

      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1B1A65484();
    swift_allocError();
    *v5 = 0xD000000000000017;
    v5[1] = 0x80000001B1A82360;
    return swift_willThrow();
  }

  return result;
}

void sub_1B1A7B434(char *a3@<X8>)
{
  v24 = a3;
  v4 = sub_1B1A7C908();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E798, &qword_1B1A7FB10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v15 = sub_1B1A7C878();
  v16 = [v14 initWithData_];

  if (v16)
  {
    (*(v5 + 56))(v13, 1, 1, v4);
    v17 = v16;
    sub_1B1A7C2D8(v17, v13, v17);

    if (!v3)
    {
      sub_1B1A73C5C(v13, v10);
      if ((*(v5 + 48))(v10, 1, v4) != 1)
      {
        v20 = *(v5 + 32);
        v20(v7, v10, v4);
        v21 = v24;
        v20(v24, v7, v4);
        sub_1B1A73BF4(v13);
        v22 = type metadata accessor for CreatedAnnotation(0);
        (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
        goto LABEL_6;
      }

      sub_1B1A73BF4(v10);
      sub_1B1A65484();
      swift_allocError();
      *v18 = 0;
      v18[1] = 0;
      swift_willThrow();
    }

    sub_1B1A73BF4(v13);
LABEL_6:

    return;
  }

  sub_1B1A65484();
  swift_allocError();
  *v19 = 0xD000000000000017;
  v19[1] = 0x80000001B1A82380;
  swift_willThrow();
}

void static ProtoCodable.deserialize(data:)(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v10 = sub_1B1A7C878();
  v11 = [v9 initWithData_];

  if (v11)
  {
    (*(a4 + 24))(v11, a3, a4);
    if (!v5)
    {
      (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
    }
  }

  else
  {
    sub_1B1A65484();
    swift_allocError();
    *v12 = 0xD000000000000017;
    v12[1] = 0x80000001B1A82380;
    swift_willThrow();
  }
}

uint64_t PBDataReader.readDate()@<X0>(uint64_t a1@<X8>)
{
  [v1 readDouble];
  sub_1B1A7C8B8();
  v3 = sub_1B1A7C908();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

id sub_1B1A7BADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlockShimForPBCodable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PBDataReader.readUUID()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 readData];
  if (!v3)
  {
    v9 = 1;
LABEL_25:
    v23 = sub_1B1A7C958();
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, v9, 1, v23);
  }

  v4 = v3;
  v5 = sub_1B1A7C888();
  v7 = v6;

  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 == 16)
      {
        goto LABEL_10;
      }

LABEL_19:
      v9 = 1;
LABEL_24:
      sub_1B1A4696C(v5, v7);
      goto LABEL_25;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_17;
    }

    if (BYTE6(v7) != 16)
    {
      goto LABEL_19;
    }

LABEL_10:
    while (v8 != 2)
    {
      if (v8 != 1)
      {
        goto LABEL_23;
      }

      if (v5 > v5 >> 32)
      {
        goto LABEL_30;
      }

      v14 = sub_1B1A7C6D8();
      if (!v14)
      {
        goto LABEL_35;
      }

      v15 = v14;
      v16 = sub_1B1A7C708();
      if (__OFSUB__(v5, v16))
      {
        goto LABEL_32;
      }

      v17 = v5 - v16 + v15;
      sub_1B1A7C6F8();
      if (v17)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_17:
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_29;
      }

      if (HIDWORD(v5) - v5 != 16)
      {
        goto LABEL_19;
      }
    }

    v18 = *(v5 + 16);
    v19 = sub_1B1A7C6D8();
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = v19;
    v21 = sub_1B1A7C708();
    if (!__OFSUB__(v18, v21))
    {
      v22 = v18 - v21 + v20;
      sub_1B1A7C6F8();
      if (!v22)
      {
        goto LABEL_34;
      }

LABEL_23:
      sub_1B1A7C928();
      v9 = 0;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1B1A7C6F8();
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1B1A7C6F8();
  __break(1u);
  return result;
}

uint64_t PBDataReader.readFields(each:)(uint64_t (*a1)(void))
{
  v8 = *MEMORY[0x1E69E9840];
  result = [v1 hasMoreData];
  if (result)
  {
    while (1)
    {
      v7 = 0;
      v6 = 0;
      [v1 readTag:&v7 type:&v6];
      result = [v1 hasError];
      if (result)
      {
        break;
      }

      if (v6 != 4)
      {
        result = a1(v7);
        if (!v2)
        {
          if ((result & 1) == 0)
          {
            [v1 skipValueWithTag:v7 type:v6];
          }

          result = [v1 hasMoreData];
          if (result)
          {
            continue;
          }
        }
      }

      return result;
    }

    sub_1B1A65484();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t PBDataReader.readFieldsSkipping<A>(each:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v24 = a2;
  v25 = a4;
  v23 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v8 = sub_1B1A7CE18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a3 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v6 hasMoreData];
  if (result)
  {
    v21 = v9;
    v22 = v8;
    v18 = (v12 + 8);
    while (1)
    {
      v28 = 0;
      v27 = 0;
      [v6 readTag:&v28 type:{&v27, v21, v22}];
      result = [v6 hasError];
      if (result)
      {
        goto LABEL_11;
      }

      if (v27 == 4)
      {
        return result;
      }

      v26 = v28;
      sub_1B1A7CC08();
      if ((*(v12 + 48))(v11, 1, a3) == 1)
      {
        (*(v21 + 8))(v11, v22);
LABEL_11:
        sub_1B1A65484();
        swift_allocError();
        *v20 = 0;
        v20[1] = 0;
        return swift_willThrow();
      }

      (*(v12 + 32))(v16, v11, a3);
      v19 = v23(v16);
      if (v5)
      {
        return (*v18)(v16, a3);
      }

      if ((v19 & 1) == 0)
      {
        [v6 skipValueWithTag:v28 type:v27];
      }

      (*v18)(v16, a3);
      result = [v6 hasMoreData];
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  return result;
}

id PBDataReader.readSubmessage(readBody:)(uint64_t (*a1)(id))
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  result = a1([v1 mark_]);
  if (!v2)
  {
    return [v1 recall_];
  }

  return result;
}

uint64_t sub_1B1A7C2D8(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E798, &qword_1B1A7FB10);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v13 - v8;
  result = [a1 hasMoreData];
  if (result)
  {
    while (1)
    {
      HIDWORD(v13) = 0;
      BYTE3(v13) = 0;
      [a1 readTag:&v13 + 4 type:&v13 + 3];
      result = [a1 hasError];
      if (result)
      {
        break;
      }

      if (BYTE3(v13) == 4)
      {
        return result;
      }

      if (HIDWORD(v13) != 1)
      {
        break;
      }

      [a3 readDouble];
      sub_1B1A7C8B8();
      v11 = sub_1B1A7C908();
      (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
      sub_1B1A7C5E8(v9, a2);
      result = [a1 hasMoreData];
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    sub_1B1A65484();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B1A7C4AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B1A7C4FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1A7C550(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B1A7C568(void *result, int a2)
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

uint64_t sub_1B1A7C5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E798, &qword_1B1A7FB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}