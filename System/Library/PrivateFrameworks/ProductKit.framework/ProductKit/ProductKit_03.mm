uint64_t AbstractAssetRequest.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = type metadata accessor for MobileAssetManager();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = 0;
  *(v9 + 120) = &unk_260E704C8;
  *(v9 + 128) = 0;
  *(v9 + 136) = &unk_260E704B8;
  *(v9 + 144) = 0;
  v13[3] = v8;
  v13[4] = &off_2873619E8;
  v13[0] = v9;
  v10 = (*(v1 + 112))(v7, v13);
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_260E4BEF4(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_260E4BF44(a1, a2);
  return v4;
}

uint64_t sub_260E4BF44(uint64_t a1, __int128 *a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  sub_260E41B2C(a2, v2 + *(*v2 + 104));
  return v2;
}

uint64_t sub_260E4BFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = type metadata accessor for MobileAssetRequest(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E4C088, 0, 0);
}

uint64_t sub_260E4C088()
{
  v19 = v0;
  if (qword_27FE53DE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = sub_260E68E94();
  *(v0 + 72) = __swift_project_value_buffer(v3, qword_27FE54AE0);
  sub_260E4C858(v2, v1);
  v4 = sub_260E68E74();
  v5 = sub_260E69474();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = sub_260E643C0();
    v12 = v11;
    sub_260E4C8BC(v7);
    v13 = sub_260E43774(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260E02000, v4, v5, "Beginning %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {

    sub_260E4C8BC(v7);
  }

  __swift_project_boxed_opaque_existential_0(*(v0 + 40), *(*(v0 + 40) + 24));
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_260E4C294;
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);

  return sub_260E60118(v15, v16, 0);
}

uint64_t sub_260E4C294()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_260E4C458;
  }

  else
  {
    v2 = sub_260E4C3A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E4C3A8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for MobileAssetResult(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_260E4C458()
{
  v24 = v0;
  v1 = v0[4];
  v2 = v0[11];
  if (*(v1 + *(v0[6] + 20)))
  {
    sub_260E4C858(v1, v0[7]);
    v3 = v2;
    v4 = sub_260E68E74();
    v5 = sub_260E69474();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    v8 = v0[7];
    if (v6)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23[0] = v10;
      *v9 = 136315394;
      sub_260E68A04();
      sub_260E4C918();
      v11 = sub_260E69804();
      v13 = v12;
      sub_260E4C8BC(v8);
      v14 = sub_260E43774(v11, v13, v23);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      v0[2] = v7;
      v15 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v16 = sub_260E69074();
      v18 = sub_260E43774(v16, v17, v23);

      *(v9 + 14) = v18;
      _os_log_impl(&dword_260E02000, v4, v5, "Request %s failed: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v10, -1, -1);
      MEMORY[0x2666F1EF0](v9, -1, -1);
    }

    else
    {

      sub_260E4C8BC(v8);
    }

    v20 = v0[3];
    v21 = type metadata accessor for MobileAssetResult(0);
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

    v19 = v0[1];
  }

  else
  {
    swift_willThrow();

    v19 = v0[1];
  }

  return v19();
}

uint64_t AbstractAssetRequest.__deallocating_deinit()
{
  AbstractAssetRequest.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_260E4C78C(uint64_t a1)
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

uint64_t sub_260E4C858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E4C8BC(uint64_t a1)
{
  v2 = type metadata accessor for MobileAssetRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_260E4C918()
{
  result = qword_27FE54B78;
  if (!qword_27FE54B78)
  {
    sub_260E68A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54B78);
  }

  return result;
}

uint64_t sub_260E4C970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_260E4C9C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_260E4CA08(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_260E4CAD4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = objc_allocWithZone(MEMORY[0x277D289D8]);
  if ((v2 & 1) == 0)
  {
    v6 = sub_260E68FF4();
    v5 = [v3 initWithType_];

    if (v1)
    {
      if (!v5)
      {
        return v5;
      }

      v7 = v5;
      v8 = sub_260E68FF4();
      v9 = sub_260E68FF4();
      [v7 addKeyValuePair:v8 with:v9];

      v10 = v7;
      v11 = sub_260E68FF4();
      v12 = sub_260E68FF4();
      [v10 addKeyValuePair:v11 with:v12];
    }

    else
    {
      if (!v5)
      {
        return v5;
      }

      v13 = v5;
      v11 = sub_260E68FF4();
      v12 = sub_260E68FF4();
      [v13 addKeyValuePair:v11 with:v12];
    }

    [v5 returnTypes_];
    return v5;
  }

  v4 = sub_260E68FF4();
  v5 = [v3 initWithType_];

  return v5;
}

unint64_t sub_260E4CCC4(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
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
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_260E696A4();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_260E4DC24(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_260E4CFC4()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54C00);
  v1 = __swift_project_value_buffer(v0, qword_27FE54C00);
  if (qword_27FE53E60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CBA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ProductKit::SemanticVersion __swiftcall SemanticVersion.init(_:_:_:)(Swift::Int a1, Swift::Int a2, Swift::Int a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  result.patch = a3;
  result.minor = a2;
  result.major = a1;
  return result;
}

uint64_t SemanticVersion.init(asserting:)@<X0>(uint64_t a4@<X8>)
{
  v5._countAndFlagsBits = sub_260E69654();
  result = SemanticVersion.init(_:)(v5);
  if (v10)
  {
    sub_260E69644();

    v7 = sub_260E69654();
    MEMORY[0x2666F0C00](v7);

    result = sub_260E69704("Fatal error", 11, 2, 0xD000000000000017, 0x8000000260E72CF0, "ProductKit/SemanticVersion.swift", 32, 2, 42, 0);
    __break(1u);
  }

  else
  {
    *a4 = v8;
    *(a4 + 16) = v9;
  }

  return result;
}

ProductKit::SemanticVersion_optional __swiftcall SemanticVersion.init(_:)(Swift::String a1)
{
  v2 = v1;
  v42 = a1;
  sub_260E4D598();
  v3 = sub_260E695B4();

  if (v3[2] != 3)
  {

    goto LABEL_22;
  }

  v7 = v3[4];
  v8 = v3[5];
  v9 = HIBYTE(v8) & 0xF;
  v10 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v32 = 0;
    v31 = 1;
    goto LABEL_70;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    goto LABEL_76;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v42._countAndFlagsBits = v3[4];
    v42._object = (v8 & 0xFFFFFFFFFFFFFFLL);
    if (v7 == 43)
    {
      if (v9)
      {
        v13 = v9 - 1;
        if (v9 != 1)
        {
          v7 = 0;
          v23 = &v42._countAndFlagsBits + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v13)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if (v7 != 45)
      {
        if (!v9)
        {
          goto LABEL_64;
        }

        v7 = 0;
        v28 = &v42;
        do
        {
          v29 = LOBYTE(v28->_countAndFlagsBits) - 48;
          if (v29 > 9)
          {
            goto LABEL_64;
          }

          v30 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            goto LABEL_64;
          }

          v7 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_64;
          }

          v28 = (v28 + 1);
          --v9;
        }

        while (v9);
        goto LABEL_63;
      }

      if (v9)
      {
        v13 = v9 - 1;
        if (v9 != 1)
        {
          v7 = 0;
          v17 = &v42._countAndFlagsBits + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v13)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
    goto LABEL_83;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    goto LABEL_78;
  }

  for (i = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_260E696A4())
  {
    v12 = *i;
    if (v12 == 43)
    {
      if (v10 < 1)
      {
        goto LABEL_81;
      }

      v13 = v10 - 1;
      if (v10 != 1)
      {
        v7 = 0;
        if (!i)
        {
          goto LABEL_63;
        }

        v20 = i + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v13)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v12 == 45)
    {
      if (v10 < 1)
      {
        __break(1u);
        goto LABEL_80;
      }

      v13 = v10 - 1;
      if (v10 != 1)
      {
        v7 = 0;
        if (!i)
        {
          goto LABEL_63;
        }

        v14 = i + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v13)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v10)
    {
      v7 = 0;
      if (!i)
      {
LABEL_63:
        LOBYTE(v13) = 0;
        goto LABEL_65;
      }

      while (1)
      {
        v26 = *i - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v7;
        if ((v7 * 10) >> 64 != (10 * v7) >> 63)
        {
          break;
        }

        v7 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++i;
        if (!--v10)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_64:
    v7 = 0;
    LOBYTE(v13) = 1;
LABEL_65:
    v31 = v13;
    while (1)
    {
      v32 = (v31 & 1) != 0 ? 0 : v7;
      if (v3[2] >= 2uLL)
      {
        break;
      }

      __break(1u);
LABEL_76:

      sub_260E4DC24(v7, v8, 10);
      v7 = v40;
      v31 = v41;
    }

LABEL_70:
    v33 = v3[6];
    v8 = v3[7];

    v34 = sub_260E4CCC4(v33, v8);
    if (v3[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_78:
    ;
  }

  v36 = v34;
  v37 = v35;
  v38 = v3[8];
  v39 = v3[9];

  i = sub_260E4CCC4(v38, v39);
  if (((v31 | v37) & 1) == 0 && (v10 & 1) == 0)
  {
    *v2 = v32;
    *(v2 + 8) = v36;
    *(v2 + 16) = i;
    *(v2 + 24) = 0;
    goto LABEL_83;
  }

LABEL_22:
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
LABEL_83:
  result.value.patch = v5;
  result.value.minor = v10;
  result.value.major = i;
  result.is_nil = v6;
  return result;
}

unint64_t sub_260E4D598()
{
  result = qword_27FE54C18;
  if (!qword_27FE54C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54C18);
  }

  return result;
}

BOOL static SemanticVersion.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 != v5 || a1[2] < a2[2];
}

Swift::Void __swiftcall SemanticVersion.assertContains(version:)(Swift::String version)
{
  object = version._object;
  countAndFlagsBits = version._countAndFlagsBits;
  if (!SemanticVersion.contains(version:)(version))
  {
    sub_260E69644();
    MEMORY[0x2666F0C00](0xD000000000000018, 0x8000000260E72D10);
    if (qword_27FE53E08 != -1)
    {
      swift_once();
    }

    v3 = SemanticVersion.description.getter();
    MEMORY[0x2666F0C00](v3);

    MEMORY[0x2666F0C00](0xD000000000000021, 0x8000000260E72D30);
    MEMORY[0x2666F0C00](countAndFlagsBits, object);
    MEMORY[0x2666F0C00](0xD000000000000035, 0x8000000260E72D60);
    sub_260E69704("Fatal error", 11, 2, 0, 0xE000000000000000, "ProductKit/SemanticVersion.swift", 32, 2, 75, 0);
    __break(1u);
  }
}

Swift::Bool __swiftcall SemanticVersion.contains(version:)(Swift::String version)
{
  object = version._object;
  countAndFlagsBits = version._countAndFlagsBits;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];

  v7._countAndFlagsBits = countAndFlagsBits;
  v7._object = object;
  SemanticVersion.init(_:)(v7);
  if ((v22 & 1) == 0)
  {
    return v4 >= v20 && v5 >= *(&v20 + 1) && v6 >= v21;
  }

  if (qword_27FE53DE8 != -1)
  {
    swift_once();
  }

  v8 = sub_260E68E94();
  __swift_project_value_buffer(v8, qword_27FE54C00);

  v9 = sub_260E68E74();
  v10 = sub_260E69454();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    if (qword_27FE53E08 != -1)
    {
      swift_once();
    }

    v20 = xmmword_27FE54FE0;
    v21 = qword_27FE54FF0;
    v13 = SemanticVersion.description.getter();
    v15 = sub_260E43774(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_260E43774(countAndFlagsBits, object, &v19);
    _os_log_impl(&dword_260E02000, v9, v10, "### Failed ProductKit Runtime Version check {SDKVersion: %s, RuntimeVersion: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v12, -1, -1);
    MEMORY[0x2666F1EF0](v11, -1, -1);
  }

  return 0;
}

uint64_t SemanticVersion.description.getter()
{
  v3 = sub_260E69804();
  MEMORY[0x2666F0C00](46, 0xE100000000000000);
  v0 = sub_260E69804();
  MEMORY[0x2666F0C00](v0);

  MEMORY[0x2666F0C00](46, 0xE100000000000000);
  v1 = sub_260E69804();
  MEMORY[0x2666F0C00](v1);

  return v3;
}

BOOL sub_260E4DABC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 != v5 || a1[2] < a2[2];
}

BOOL sub_260E4DAEC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a2 >= *a1)
  {
    v5 = __OFSUB__(v3, v2);
    v4 = v3 - v2 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 == v5 && a2[2] >= a1[2];
}

BOOL sub_260E4DB1C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 == v5 && a1[2] >= a2[2];
}

BOOL sub_260E4DB4C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a2 >= *a1)
  {
    v5 = __OFSUB__(v3, v2);
    v4 = v3 - v2 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 != v5 || a2[2] < a1[2];
}

void *sub_260E4DBB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549A8, &qword_260E6E5B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_260E4DC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_260E69174();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_260E4E22C(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_260E696A4();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
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

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

unint64_t sub_260E4E1B4()
{
  result = qword_27FE54C20;
  if (!qword_27FE54C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54C20);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_260E4E22C(uint64_t a1, unint64_t a2)
{
  v2 = sub_260E69184();
  v6 = sub_260E4E2AC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_260E4E2AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_260E695A4();
    if (!v9 || (v10 = v9, v11 = sub_260E4DBB0(v9, 0), v12 = sub_260E4E404(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_260E690B4();

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
      return sub_260E690B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_260E696A4();
LABEL_4:

  return sub_260E690B4();
}

unint64_t sub_260E4E404(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_260E4E624(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_260E69144();
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
          result = sub_260E696A4();
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

    result = sub_260E4E624(v12, a6, a7);
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

    result = sub_260E69124();
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

unint64_t sub_260E4E624(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_260E69154();
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
    v5 = MEMORY[0x2666F0C40](15, a1 >> 16);
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

uint64_t iosmacHardware.init(_:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54C28, "Pn");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_260E68C04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(a1) = *a1;
  *(a2 + *(type metadata accessor for iosmacHardware(0) + 20)) = a1;
  v13[7] = a1;
  iosmacHardware.Model.rawValue.getter();
  sub_260E68BF4();
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D426E0], v7);
    if (v11(v6, 1, v7) != 1)
    {
      sub_260E4F714(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  return (*(v8 + 32))(a2, v10, v7);
}

uint64_t iosmacHardware.model.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for iosmacHardware(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t iosmacHardware.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54C28, "Pn");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_260E68C04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for iosmacHardware(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  iosmacHardware.Model.init(rawValue:)(&v24);
  v16 = v24;
  if (v24 != 286)
  {

    sub_260E68BF4();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {

      v18 = *(v9 + 32);
      v18(v11, v7, v8);
      *&v15[*(v12 + 20)] = v16;
      v18(v15, v11, v8);
      goto LABEL_10;
    }

    sub_260E4F714(v7);
  }

  if (a1 == 0x656E6F685069 && a2 == 0xE600000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 166;
    v17 = MEMORY[0x277D426E0];
  }

  else if (a1 == 1684099177 && a2 == 0xE400000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 107;
    v17 = MEMORY[0x277D42728];
  }

  else if (a1 == 0x6E696D2064615069 && a2 == 0xE900000000000069 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 77;
    v17 = MEMORY[0x277D42720];
  }

  else if (a1 == 1685016681 && a2 == 0xE400000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 184;
    v17 = MEMORY[0x277D42700];
  }

  else if (a1 == 0x206B6F6F4263614DLL && a2 == 0xEB000000006F7250 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 229;
    v17 = MEMORY[0x277D426F0];
  }

  else if (a1 == 0x206B6F6F4263614DLL && a2 == 0xEB00000000726941 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 189;
    v17 = MEMORY[0x277D42710];
  }

  else if (a1 == 0x6F72502063614D69 && a2 == 0xE800000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 22;
    v17 = MEMORY[0x277D426D8];
  }

  else if (a1 == 1667321193 && a2 == 0xE400000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 17;
    v17 = MEMORY[0x277D42718];
  }

  else if (a1 == 0x696E696D2063614DLL && a2 == 0xE800000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 238;
    v17 = MEMORY[0x277D426E8];
  }

  else if (a1 == 0x647574532063614DLL && a2 == 0xEA00000000006F69 || (sub_260E69834() & 1) != 0)
  {

    *&v15[*(v12 + 20)] = 186;
    v17 = MEMORY[0x277D42708];
  }

  else
  {
    if (a1 == 0x695620656C707041 && a2 == 0xEC0000006E6F6973)
    {
    }

    else
    {
      v22 = sub_260E69834();

      if ((v22 & 1) == 0)
      {
        v20 = 1;
        v19 = v23;
        return (*(v13 + 56))(v19, v20, 1, v12);
      }
    }

    *&v15[*(v12 + 20)] = 273;
    v17 = MEMORY[0x277D426F8];
  }

  (*(v9 + 104))(v15, *v17, v8);
LABEL_10:
  v19 = v23;
  sub_260E4F77C(v15, v23);
  v20 = 0;
  return (*(v13 + 56))(v19, v20, 1, v12);
}

uint64_t iosmacHardware.image.getter()
{
  v1 = v0;
  v2 = sub_260E68C04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260E68C24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v8);
  sub_260E68C34();
  sub_260E68C14();
  if (v11)
  {
    sub_260E68E64();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_260E68EB4();
  }

  else
  {
    v14 = sub_260E68EA4();
  }

  v15 = v14;
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t iosmacHardware.imageName.getter()
{
  v1 = sub_260E68C04();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260E68C24();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1, v7);
  sub_260E68C34();
  v10 = sub_260E68C14();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_260E4F300@<X0>(uint64_t *a1@<X8>)
{
  result = iosmacHardware.Model.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_260E4F340@<X0>(uint64_t *a1@<X8>)
{
  result = _s10ProductKit14iosmacHardwareV8allCasesSayACGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t _s10ProductKit14iosmacHardwareV8allCasesSayACGvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54C28, "Pn");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_260E68C04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for iosmacHardware(0);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v24 - v11;
  v31 = MEMORY[0x277D84F90];
  sub_260E65A00(0, 286, 0);
  v12 = v31;
  v13 = (v4 + 48);
  v14 = (v4 + 32);
  v25 = *MEMORY[0x277D426E0];
  v24 = (v4 + 104);
  v15 = 0x20u;
  v26 = (v4 + 48);
  do
  {
    v16 = *(&unk_28735D038 + v15);
    *&v9[*(v28 + 20)] = v16;
    v30 = v16;
    iosmacHardware.Model.rawValue.getter();
    sub_260E68BF4();
    v17 = *v13;
    if ((*v13)(v2, 1, v3) == 1)
    {
      (*v24)(v6, v25, v3);
      if (v17(v2, 1, v3) != 1)
      {
        sub_260E4F714(v2);
      }
    }

    else
    {
      (*v14)(v6, v2, v3);
    }

    v18 = v2;
    v19 = v6;
    (*v14)(v9, v6, v3);
    v20 = v29;
    sub_260E4F77C(v9, v29);
    v31 = v12;
    v22 = *(v12 + 16);
    v21 = *(v12 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_260E65A00((v21 > 1), v22 + 1, 1);
      v20 = v29;
      v12 = v31;
    }

    *(v12 + 16) = v22 + 1;
    sub_260E4F77C(v20, v12 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22);
    v15 += 2;
    v6 = v19;
    v2 = v18;
    v13 = v26;
  }

  while (v15 != 604);
  return v12;
}

uint64_t type metadata accessor for iosmacHardware(uint64_t a1)
{
  result = qword_27FE54C40;
  if (!qword_27FE54C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E4F714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54C28, "Pn");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E4F77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iosmacHardware(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_260E4F7E4()
{
  result = qword_27FE54C30;
  if (!qword_27FE54C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE54C38, &qword_260E6F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54C30);
  }

  return result;
}

uint64_t sub_260E4F85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260E68C04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0x11E)
    {
      return v10 - 285;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_260E4F928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_260E68C04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 285;
  }

  return result;
}

uint64_t sub_260E4F9E0(uint64_t a1)
{
  result = sub_260E68C04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_260E4FA54()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54C50);
  v1 = __swift_project_value_buffer(v0, qword_27FE54C50);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E4FB3C(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_260E4FC24;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_260E4FC24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260E4FD20(uint64_t a1)
{
  sub_260E69584();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_260E4FD98(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 32) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 >= 2)
  {
    v9 = 8;
  }

  else
  {
    v7 = 0;
    v9 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v11 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + v9;
  v12 = 8 * v11;
  if (v11 > 3)
  {
LABEL_14:
    v14 = *(a1 + v11);
    if (!*(a1 + v11))
    {
      goto LABEL_25;
    }

LABEL_17:
    v15 = (v14 - 1) << v12;
    if (v11 >= 4)
    {
      v15 = 0;
    }

    if (v11)
    {
      if (v11 == 1)
      {
        LODWORD(v11) = *a1;
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    return v7 + (v11 | v15) + 1;
  }

  v13 = ((v10 + ~(-1 << v12)) >> v12) + 1;
  if (HIWORD(v13))
  {
    v14 = *(a1 + v11);
    if (v14)
    {
      goto LABEL_17;
    }
  }

  else if (v13 > 0xFF)
  {
    v14 = *(a1 + v11);
    if (*(a1 + v11))
    {
      goto LABEL_17;
    }
  }

  else if (v13 >= 2)
  {
    goto LABEL_14;
  }

LABEL_25:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v17 = (*(v4 + 48))(a1, v5);
  v18 = v17 >= 2;
  result = v17 - 2;
  if (result == 0 || !v18)
  {
    return 0;
  }

  return result;
}

void sub_260E4FEF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 32) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
    ++v9;
  }

  v11 = 8;
  if (v8 < 2)
  {
    v11 = 9;
  }

  v12 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v11;
  v13 = v10 - 1;
  if (v8 < 2)
  {
    v13 = 0;
  }

  v14 = a3 >= v13;
  v15 = a3 - v13;
  if (v15 == 0 || !v14)
  {
LABEL_19:
    if (v13 < a2)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v13 < a2)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v16 = ((v15 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
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

    goto LABEL_19;
  }

  v6 = 4;
  if (v13 < a2)
  {
LABEL_20:
    v18 = ~v13 + a2;
    if (v12 >= 4)
    {
      bzero(a1, v12);
      v19 = 1;
      goto LABEL_47;
    }

    v19 = (v18 >> (8 * v12)) + 1;
    if (v12)
    {
      bzero(a1, v12);
      if (v12 != 1)
      {
        v18 = v18;
LABEL_47:
        *a1 = v18;
        if (v6 > 1)
        {
LABEL_48:
          if (v6 == 2)
          {
            *&a1[v12] = v19;
          }

          else
          {
            *&a1[v12] = v19;
          }

          return;
        }

        goto LABEL_26;
      }

      *a1 = v18;
    }

    if (v6 > 1)
    {
      goto LABEL_48;
    }

LABEL_26:
    if (v6)
    {
      a1[v12] = v19;
    }

    return;
  }

LABEL_29:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
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
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v21 = *(v7 + 56);

      v21();
    }
  }

  else if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = a2 - v10;
    bzero(a1, ((v9 + 7) & 0xFFFFFFF8) + 8);
    *a1 = v20;
  }
}

uint64_t sub_260E5015C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_260E50198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_260E501E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_260E50238(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_260E68904();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54D68, &qword_260E6F550);
  v16 = *(v5 + 72);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v43 = v16;
  v40 = swift_allocObject();
  v45 = v40 + v17;
  v18 = sub_260E68FF4();
  v19 = sub_260E68FF4();
  v20 = v1;
  v21 = [v1 URLForResource:v18 withExtension:v19];

  if (v21)
  {
    sub_260E688C4();

    v22 = *(v3 + 56);
    v22(v15, 0, 1, v2);
  }

  else
  {
    v22 = *(v3 + 56);
    v22(v15, 1, 1, v2);
  }

  v23 = v2;
  sub_260E48D40(v15, v45);
  v24 = sub_260E68FF4();
  v25 = sub_260E68FF4();
  v26 = [v20 URLForResource:v24 withExtension:v25];

  v27 = v39;
  if (v26)
  {
    sub_260E688C4();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v22(v12, v28, 1, v23);
  v29 = v45;
  sub_260E48D40(v12, v45 + v43);
  sub_260E48DB0(v29, v27);
  sub_260E48D40(v27, v7);
  v30 = *(v3 + 48);
  v31 = (v3 + 32);
  if (v30(v7, 1, v23) == 1)
  {
    sub_260E5086C(v7);
    v32 = MEMORY[0x277D84F90];
  }

  else
  {
    v38 = *v31;
    v38(v44, v7, v23);
    v32 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_260E41BA4(0, *(v32 + 2) + 1, 1, v32);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_260E41BA4((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v38(&v32[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34], v44, v23);
  }

  sub_260E48DB0(v45 + v43, v27);
  sub_260E48D40(v27, v7);
  if (v30(v7, 1, v23) == 1)
  {
    sub_260E5086C(v7);
  }

  else
  {
    v35 = *v31;
    (*v31)(v44, v7, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_260E41BA4(0, *(v32 + 2) + 1, 1, v32);
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    if (v37 >= v36 >> 1)
    {
      v32 = sub_260E41BA4((v36 > 1), v37 + 1, 1, v32);
    }

    *(v32 + 2) = v37 + 1;
    v35(&v32[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37], v44, v23);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v32 + 2))
  {
    (*(v3 + 16))(v42, &v32[(*(v3 + 80) + 32) & ~*(v3 + 80)], v23);
  }

  else
  {

    sub_260E69704("Fatal error", 11, 2, 0xD000000000000022, 0x8000000260E72E10, "ProductKit/Bundle+Additions.swift", 33, 2, 51, 0);
    __break(1u);
  }
}

uint64_t sub_260E5086C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E508D4()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54D70);
  v1 = __swift_project_value_buffer(v0, qword_27FE54D70);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E5099C()
{
  sub_260E687A4();
  swift_allocObject();
  result = sub_260E68794();
  qword_27FE54D88 = result;
  return result;
}

uint64_t sub_260E509EC()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

void sub_260E50A20(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_260E69834() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_260E69834();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_260E50AF4(uint64_t a1)
{
  v2 = sub_260E50CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E50B30(uint64_t a1)
{
  v2 = sub_260E50CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FrameInlet.FrameSize.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54D90, &qword_260E6F558);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E50CF4();
  sub_260E69944();
  v8[15] = 0;
  sub_260E697D4();
  if (!v1)
  {
    v8[14] = 1;
    sub_260E697D4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_260E50CF4()
{
  result = qword_27FE54D98;
  if (!qword_27FE54D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54D98);
  }

  return result;
}

uint64_t FrameInlet.FrameSize.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54DA0, &qword_260E6F560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E50CF4();
  sub_260E69934();
  if (!v2)
  {
    v16 = 0;
    sub_260E69794();
    v10 = v9;
    v15 = 1;
    sub_260E69794();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 FrameInlet.size.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

ProductKit::FrameInlet __swiftcall FrameInlet.init(size:verticalOffset:cornerRadius:)(ProductKit::FrameInlet::FrameSize size, Swift::Double verticalOffset, Swift::Double cornerRadius)
{
  v5 = *v3;
  *v4 = *v3;
  *(v4 + 16) = size.width;
  *(v4 + 24) = size.height;
  result.verticalOffset = *&v5;
  result.size.height = size.height;
  result.size.width = size.width;
  result.cornerRadius = cornerRadius;
  return result;
}

uint64_t sub_260E50F4C()
{
  v1 = 0x6C61636974726576;
  if (*v0 != 1)
  {
    v1 = 0x615272656E726F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_260E50FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260E51AB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260E50FDC(uint64_t a1)
{
  v2 = sub_260E5121C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E51018(uint64_t a1)
{
  v2 = sub_260E5121C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FrameInlet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54DA8, &qword_260E6F568);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6];
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E5121C();
  sub_260E69944();
  v12 = v8;
  v13 = v9;
  v11[15] = 0;
  sub_260E51270();
  sub_260E697F4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_260E697D4();
    LOBYTE(v12) = 2;
    sub_260E697D4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_260E5121C()
{
  result = qword_27FE54DB0;
  if (!qword_27FE54DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DB0);
  }

  return result;
}

unint64_t sub_260E51270()
{
  result = qword_27FE54DB8;
  if (!qword_27FE54DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DB8);
  }

  return result;
}

uint64_t FrameInlet.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54DC0, &qword_260E6F570);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E5121C();
  sub_260E69934();
  if (!v2)
  {
    v17 = 0;
    sub_260E514BC();
    sub_260E697B4();
    v9 = v16[0];
    v10 = v16[1];
    LOBYTE(v16[0]) = 1;
    sub_260E69794();
    v13 = v12;
    LOBYTE(v16[0]) = 2;
    sub_260E69794();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 2) = v13;
    *(a2 + 3) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_260E514BC()
{
  result = qword_27FE54DC8;
  if (!qword_27FE54DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DC8);
  }

  return result;
}

double FrameInlet.init(fileURL:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260E68914();
  v6 = v5;
  if (qword_27FE53E00 != -1)
  {
    swift_once();
  }

  sub_260E51814();
  sub_260E68784();
  v7 = sub_260E68904();
  (*(*(v7 - 8) + 8))(a1, v7);
  sub_260E15FB4(v4, v6);
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = 0;
  return result;
}

unint64_t sub_260E51814()
{
  result = qword_27FE54DD0;
  if (!qword_27FE54DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DD0);
  }

  return result;
}

unint64_t sub_260E518AC()
{
  result = qword_27FE54DD8;
  if (!qword_27FE54DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DD8);
  }

  return result;
}

unint64_t sub_260E51904()
{
  result = qword_27FE54DE0;
  if (!qword_27FE54DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DE0);
  }

  return result;
}

unint64_t sub_260E5195C()
{
  result = qword_27FE54DE8;
  if (!qword_27FE54DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DE8);
  }

  return result;
}

unint64_t sub_260E519B4()
{
  result = qword_27FE54DF0;
  if (!qword_27FE54DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DF0);
  }

  return result;
}

unint64_t sub_260E51A0C()
{
  result = qword_27FE54DF8;
  if (!qword_27FE54DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DF8);
  }

  return result;
}

unint64_t sub_260E51A64()
{
  result = qword_27FE54E00;
  if (!qword_27FE54E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54E00);
  }

  return result;
}

uint64_t sub_260E51AB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_260E69834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEE0074657366664FLL || (sub_260E69834() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 2;
  }

  else
  {
    v6 = sub_260E69834();

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

uint64_t dispatch thunk of VideoPlaybackControllable.fastForward(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260E0F964;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of VideoPlaybackControllable.fastForward(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 104) + **(a5 + 104));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_260E52BF8;

  return v13(a1, a2, a3, a4, a5);
}

void sub_260E51FE0(uint64_t a1)
{
  sub_260E68904();
  if (v1 <= 0x3F)
  {
    sub_260E52068(319);
    if (v2 <= 0x3F)
    {
      sub_260E520CC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_260E52068(uint64_t a1)
{
  if (!qword_27FE54E18)
  {
    sub_260E68904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FE54E18);
    }
  }
}

void sub_260E520CC(uint64_t a1)
{
  if (!qword_27FE54E20)
  {
    sub_260E68904();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FE54E20);
    }
  }
}

uint64_t sub_260E52148(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_260E68904();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542E0, &qword_260E6BFE8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_260E5231C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_260E68904();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542E0, &qword_260E6BFE8);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_260E524EC(uint64_t a1)
{
  type metadata accessor for VideoViewConfiguration.VideoSequence(319);
  if (v1 <= 0x3F)
  {
    sub_260E68904();
    if (v2 <= 0x3F)
    {
      sub_260E52644(319, &qword_27FE54E38, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        sub_260E52644(319, &qword_27FE54E40, MEMORY[0x277D42738]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v5 <= 0x3F)
          {
            sub_260E52644(319, &qword_27FE54E48, type metadata accessor for CATransform3D);
            if (v6 <= 0x3F)
            {
              sub_260E52698();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_260E52644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_260E69584();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_260E52698()
{
  if (!qword_27FE54E50)
  {
    v0 = sub_260E69584();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE54E50);
    }
  }
}

char *sub_260E526E8(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-1] - v10;
  v12 = type metadata accessor for VideoViewConfiguration(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27[-1] - v17;
  sub_260E15684(a1, v11, &qword_27FE544D8, &unk_260E6C160);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_260E155E4(v11, &qword_27FE544D8, &unk_260E6C160);
  }

  else
  {
    sub_260E52A7C(v11, v18);
    sub_260E15684(&v18[*(v12 + 24)], v5, &qword_27FE54320, &qword_260E6E720);
    v19 = sub_260E68904();
    if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
    {
      sub_260E52AE0(v18);
      sub_260E155E4(v5, &qword_27FE54320, &qword_260E6E720);
    }

    else
    {
      sub_260E155E4(v5, &qword_27FE54320, &qword_260E6E720);
      if (v26)
      {

        if (sub_260E68E44())
        {
          sub_260E52B3C(v18, v15);
          v20 = type metadata accessor for PersonalizedVideoView(0);
          v21 = objc_allocWithZone(v20);
          v22 = sub_260E0CE14(v15);
          v27[3] = v20;
          v27[4] = sub_260E52BA0();
          v27[0] = v22;
          v23 = v22;
          sub_260E68E34();

          sub_260E52AE0(v18);
          __swift_destroy_boxed_opaque_existential_0(v27);
          return v23;
        }

        sub_260E52AE0(v18);
      }

      else
      {
        sub_260E52AE0(v18);
      }
    }
  }

  sub_260E15684(a1, v8, &qword_27FE544D8, &unk_260E6C160);
  v25 = objc_allocWithZone(type metadata accessor for AdjustedVideoView(0));
  return sub_260E559EC(v8);
}

uint64_t sub_260E52A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoViewConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E52AE0(uint64_t a1)
{
  v2 = type metadata accessor for VideoViewConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E52B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoViewConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_260E52BA0()
{
  result = qword_27FE54E58;
  if (!qword_27FE54E58)
  {
    type metadata accessor for PersonalizedVideoView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54E58);
  }

  return result;
}

id FrameInletImageView.inletView.getter()
{
  v1 = OBJC_IVAR____TtC10ProductKit19FrameInletImageView_inletView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void FrameInletImageView.inletView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ProductKit19FrameInletImageView_inletView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id FrameInletImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void Product.WatchBandFeature.URLs.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
}

void Product.WatchBandFeature.Images.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
}

uint64_t sub_260E52F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *))
{
  __swift_project_boxed_opaque_existential_0((v8 + *(a6 + 36)), *(v8 + *(a6 + 36) + 24));
  v14 = sub_260E53550();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  sub_260E61A78(v14, v16, a2, a3, a8, v17);
}

uint64_t Product.WatchBandFeature.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void Product.WatchBandFeature.Strings.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
}

void Product.WatchBandFeature.Videos.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
}

void Product.WatchBandFeature.Datas.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
}

uint64_t sub_260E53344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E533CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

void sub_260E53424(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
}

uint64_t sub_260E534A4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_260E534D4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_260E54860(a1, a5, type metadata accessor for Product.Identifier);
  v10 = a5 + *(type metadata accessor for Product.WatchBand(0, a3, a4, v9) + 36);

  return sub_260E41B2C(a2, v10);
}

uint64_t sub_260E53550()
{
  v1 = v0;
  v2 = type metadata accessor for Product.Identifier(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketingPartNumberURL(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E547FC(v1, v4);
  sub_260E54860(v4, v7, type metadata accessor for MarketingPartNumberURL);
  v8 = sub_260E688E4();
  sub_260E548C8(1uLL, v8, v9);

  v10 = sub_260E69594();
  v12 = v11;

  v15[0] = v10;
  v15[1] = v12;
  sub_260E69174();
  v13 = sub_260E69094();

  sub_260E361B4(v7);
  return v13;
}

void sub_260E536EC(uint64_t a1, void (*a2)(__int128 *), uint64_t a3)
{
  v6 = sub_260E68904();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  sub_260E54730(a1, &v30 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v18[16];
    v38 = *v18;
    LOBYTE(v39) = v19;
    HIBYTE(v39) = 1;
    a2(&v38);
    sub_260E54978(v38, *(&v38 + 1), v39, SHIBYTE(v39));
    return;
  }

  v20 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD8, &qword_260E6FE70) + 48)];
  v35 = *(v7 + 32);
  v36 = v15;
  v35();
  if (!*(v20 + 16) || (v21 = sub_260E35BFC(0x6361666863746157, 0xEE00746E756F4365), (v22 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_260E1426C(*(v20 + 56) + 32 * v21, &v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v23 = MEMORY[0x277D84F90];
LABEL_18:
    v38 = v23;
    v39 = 0;
    a2(&v38);
    v29 = sub_260E54978(v38, *(&v38 + 1), v39, SHIBYTE(v39));
    (*(v7 + 8))(v36, v6, v29);
    return;
  }

  v32 = a3;
  v34 = v37;
  if (v37 >= 1)
  {
    v31 = a2;
    v33 = v7 + 8;
    v23 = MEMORY[0x277D84F90];
    v24 = 1;
    while (1)
    {
      v37 = v24;
      *&v38 = sub_260E69804();
      *(&v38 + 1) = v25;
      MEMORY[0x2666F0C00](0x616668637461772ELL, 0xEA00000000006563);
      sub_260E688A4();

      (*(v7 + 16))(v9, v12, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_260E41BA4(0, v23[2] + 1, 1, v23);
      }

      v27 = v23[2];
      v26 = v23[3];
      if (v27 >= v26 >> 1)
      {
        v23 = sub_260E41BA4((v26 > 1), v27 + 1, 1, v23);
      }

      (*(v7 + 8))(v12, v6);
      v23[2] = v27 + 1;
      (v35)(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v9, v6);
      if (v34 == v24)
      {
        break;
      }

      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    a2 = v31;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void sub_260E53B28(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = sub_260E68904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  sub_260E54730(a1, &v17[-v9]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v10[16];
    *v17 = *v10;
    *&v17[16] = v11;
    v18 = 1;
    a2(v17);
    sub_260E547A0(*v17, *&v17[8], *&v17[16], v18);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD8, &qword_260E6FE70);

    (*(v5 + 32))(v7, v10, v4);
    v12 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v13 = sub_260E68894();
    v14 = [v12 initWithURL_];

    if (v14)
    {
      *v17 = v14;
      *&v17[8] = xmmword_260E6F930;
      v18 = 0;
      v15 = v14;
      a2(v17);

      v16.n128_f64[0] = sub_260E547A0(*v17, *&v17[8], *&v17[16], v18);
    }

    else
    {
      *v17 = xmmword_260E6F940;
      *&v17[16] = 2;
      v18 = 1;
      a2(v17);
    }

    (*(v5 + 8))(v7, v4, v16);
  }
}

uint64_t sub_260E53D9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_260E53DD8()
{
  result = qword_27FE54E80;
  if (!qword_27FE54E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54E80);
  }

  return result;
}

unint64_t sub_260E53E60()
{
  result = qword_27FE54E98;
  if (!qword_27FE54E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54E98);
  }

  return result;
}

unint64_t sub_260E53EE8()
{
  result = qword_27FE54EB0;
  if (!qword_27FE54EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54EB0);
  }

  return result;
}

unint64_t sub_260E53F70()
{
  result = qword_27FE54EC8;
  if (!qword_27FE54EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54EC8);
  }

  return result;
}

unint64_t sub_260E53FF8()
{
  result = qword_27FE54EE0;
  if (!qword_27FE54EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54EE0);
  }

  return result;
}

unint64_t sub_260E54080()
{
  result = qword_27FE54EF8;
  if (!qword_27FE54EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54EF8);
  }

  return result;
}

unint64_t sub_260E540D8()
{
  result = qword_27FE54F00;
  if (!qword_27FE54F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F00);
  }

  return result;
}

unint64_t sub_260E54130()
{
  result = qword_27FE54F08;
  if (!qword_27FE54F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F08);
  }

  return result;
}

unint64_t sub_260E54188()
{
  result = qword_27FE54F10;
  if (!qword_27FE54F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F10);
  }

  return result;
}

unint64_t sub_260E541E0()
{
  result = qword_27FE54F18;
  if (!qword_27FE54F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F18);
  }

  return result;
}

unint64_t sub_260E54238()
{
  result = qword_27FE54F20;
  if (!qword_27FE54F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F20);
  }

  return result;
}

unint64_t sub_260E54290()
{
  result = qword_27FE54F28;
  if (!qword_27FE54F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F28);
  }

  return result;
}

unint64_t sub_260E542E8()
{
  result = qword_27FE54F30;
  if (!qword_27FE54F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F30);
  }

  return result;
}

unint64_t sub_260E54340()
{
  result = qword_27FE54F38;
  if (!qword_27FE54F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F38);
  }

  return result;
}

unint64_t sub_260E54398()
{
  result = qword_27FE54F40[0];
  if (!qword_27FE54F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE54F40);
  }

  return result;
}

uint64_t sub_260E54454(uint64_t a1)
{
  result = type metadata accessor for Product.Identifier(319);
  if (v2 <= 0x3F)
  {
    result = sub_260E546CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_260E544EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(type metadata accessor for Product.Identifier(0) - 8) + 84) == a2)
  {
    v6 = type metadata accessor for MarketingPartNumberURL(0);
    v7 = *(*(v6 - 8) + 48);

    return v7(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_260E545DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Product.Identifier(0);
  v10 = *(v8 - 8);
  result = v8 - 8;
  if (*(v10 + 84) == a3)
  {
    v11 = type metadata accessor for MarketingPartNumberURL(0);
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_260E546CC()
{
  result = qword_27FE54FC8;
  if (!qword_27FE54FC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FE54FC8);
  }

  return result;
}

uint64_t sub_260E54730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_260E547A0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    sub_260E1A330(a1, a2, a3);
  }

  else
  {
  }

  return result;
}

uint64_t sub_260E547FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Product.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E54860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_260E548C8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_260E690E4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_260E69184();
}

double sub_260E54978(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    sub_260E1A330(a1, a2, a3);
  }

  else
  {
  }

  return result;
}

double ProductKitVersion.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FE53E08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27FE54FF0;
  result = *&xmmword_27FE54FE0;
  *a1 = xmmword_27FE54FE0;
  *(a1 + 16) = v1;
  return result;
}

void *Product.Catalog.__allocating_init()()
{
  v0 = type metadata accessor for MobileAssetManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = &unk_260E704C8;
  *(v1 + 128) = 0;
  *(v1 + 136) = &unk_260E704B8;
  *(v1 + 144) = 0;
  v11[3] = v0;
  v11[4] = &off_2873619E8;
  v11[0] = v1;
  type metadata accessor for Product.Catalog();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = *v6;
  v2[5] = v0;
  v2[6] = &off_2873619E8;
  v2[2] = v8;
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v2;
}

uint64_t sub_260E54B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Product.Identifier(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E547FC(a1, v11);
  sub_260E36150(v4 + 16, v14);
  return sub_260E534D4(v11, v14, a2, a3, a4);
}

uint64_t Product.Catalog.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Product.Identifier(uint64_t a1)
{
  result = qword_27FE54FF8;
  if (!qword_27FE54FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E54D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingPartNumberURL(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_260E54D98);
}

uint64_t sub_260E54D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_260E54E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MarketingPartNumberURL(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_260E54E6C);
}

uint64_t sub_260E54E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_260E54EDC(uint64_t a1)
{
  v2 = type metadata accessor for MarketingPartNumberURL(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = sub_260E68904();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t AppleHardware.image.getter(uint64_t a1)
{
  sub_260E68C14();
  if (v1)
  {
    sub_260E68E64();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];

    return sub_260E68EB4();
  }

  else
  {

    return sub_260E68EA4();
  }
}

id sub_260E55088(uint64_t a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AdjustedAsset(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC10ProductKit21PersonalizedImageView_metrics];
  *v13 = a2;
  v13[1] = a3;
  v13[2] = a4;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_260E55864(a1, v12);
  v15 = objc_allocWithZone(type metadata accessor for AdjustedImageView());
  v16 = v14;
  v17 = sub_260E5B188(v12);
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = v16;
  [v18 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_260E6BDA0;
  v21 = [v17 topAnchor];
  v22 = [v18 topAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [v17 bottomAnchor];
  v25 = [v18 bottomAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v20 + 40) = v26;
  v27 = [v17 leftAnchor];
  v28 = [v18 leftAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v20 + 48) = v29;
  v30 = [v17 rightAnchor];

  v31 = [v18 rightAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v20 + 56) = v32;
  sub_260E55818();
  v33 = sub_260E691A4();

  [v19 activateConstraints_];

  sub_260E558C8(a1);
  return v18;
}

void sub_260E553F4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_260E66494();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
    v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v7 = v6;
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setContentMode_];
    [v2 addSubview_];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_260E6BDA0;
    v10 = [v7 heightAnchor];
    v11 = &v2[OBJC_IVAR____TtC10ProductKit21PersonalizedImageView_metrics];
    v12 = [v10 constraintEqualToConstant_];

    *(v9 + 32) = v12;
    v13 = [v7 widthAnchor];
    v14 = [v13 constraintEqualToConstant_];

    *(v9 + 40) = v14;
    v15 = [v7 centerXAnchor];
    v16 = [v2 centerXAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v9 + 48) = v17;
    v18 = [v7 centerYAnchor];

    v19 = [v2 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v11[2]];

    *(v9 + 56) = v20;
    sub_260E55818();
    v21 = sub_260E691A4();

    [v8 activateConstraints_];
  }
}

id sub_260E55788()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_260E55818()
{
  result = qword_27FE54378;
  if (!qword_27FE54378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE54378);
  }

  return result;
}

uint64_t sub_260E55864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdjustedAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E558C8(uint64_t a1)
{
  v2 = type metadata accessor for AdjustedAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E55924()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE55010);
  v1 = __swift_project_value_buffer(v0, qword_27FE55010);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_260E559EC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_260E68904();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v94 - v8;
  v9 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VideoViewConfiguration(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v99 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v94 - v19;
  v21 = &v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_featureHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_startedHandler];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_completedHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  sub_260E57B64(a1, &v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_configuration]);
  v24 = [objc_allocWithZone(PKMediaPlayerView) init];
  *&v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView] = v24;
  v100 = a1;
  sub_260E57B64(a1, v20);
  v25 = *(v13 + 48);
  if (v25(v20, 1, v12) == 1)
  {
    sub_260E57BD4(v20);
  }

  else
  {
    v26 = *&v20[*(v12 + 44)];

    sub_260E57C3C(v20, type metadata accessor for VideoViewConfiguration);
    if (v26)
    {
      v101 = v26;
      v27 = sub_260E64640();

      goto LABEL_6;
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_6:
  *&v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges] = v27;
  v102.receiver = v2;
  v102.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v102, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_260E57B64(v100, v17);
  if (v25(v17, 1, v12) == 1)
  {
    v29 = v28;
    sub_260E57BD4(v17);
    if (qword_27FE53E10 != -1)
    {
      swift_once();
    }

    v30 = sub_260E68E94();
    __swift_project_value_buffer(v30, qword_27FE55010);
    v31 = sub_260E68E74();
    v32 = sub_260E69454();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_260E02000, v31, v32, "No configuration provided for video view", v33, 2u);
      MEMORY[0x2666F1EF0](v33, -1, -1);
    }

    v34 = &unk_27FE55000;
  }

  else
  {
    v35 = v99;
    sub_260E52A7C(v17, v99);
    sub_260E19464(v35, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
        v60 = *(v59 + 48);
        v94 = *(v59 + 64);
        v61 = v96;
        v62 = v97;
        v63 = *(v97 + 32);
        v64 = v98;
        v63(v96, v11, v98);
        v65 = v95;
        v63(v95, &v11[v60], v64);
        v66 = objc_allocWithZone(PKMediaPlayerItem);
        v67 = v28;
        v68 = sub_260E68894();
        v69 = [v66 initWithURL_];

        [v69 setShouldLoop_];
        v70 = OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView;
        [*&v67[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView] addMovieItem_];

        v71 = objc_allocWithZone(PKMediaPlayerItem);
        v72 = sub_260E68894();
        v73 = [v71 initWithURL_];

        v34 = &unk_27FE55000;
        [v73 setShouldLoop_];
        [*&v67[v70] addMovieItem_];

        v74 = *(v62 + 8);
        v74(v65, v64);
        v74(v61, v64);
        sub_260E57C3C(v99, type metadata accessor for VideoViewConfiguration);
        v74(&v11[v94], v64);
        goto LABEL_18;
      }

      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
      v39 = v96;
      v38 = v97;
      v40 = *(v97 + 32);
      v41 = v98;
      v40(v96, v11, v98);
      v42 = v95;
      v40(v95, &v11[v37], v41);
      v43 = objc_allocWithZone(PKMediaPlayerItem);
      v44 = v28;
      v45 = sub_260E68894();
      v46 = [v43 initWithURL_];

      [v46 setShouldLoop_];
      v47 = OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView;
      [*&v44[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView] addMovieItem_];

      v48 = objc_allocWithZone(PKMediaPlayerItem);
      v49 = sub_260E68894();
      v50 = [v48 initWithURL_];

      v34 = &unk_27FE55000;
      [v50 setShouldLoop_];
      [*&v44[v47] addMovieItem_];

      v51 = *(v38 + 8);
      v51(v42, v41);
      v51(v39, v41);
    }

    else
    {
      v53 = v96;
      v52 = v97;
      v54 = v98;
      (*(v97 + 32))(v96, v11, v98);
      v55 = objc_allocWithZone(PKMediaPlayerItem);
      v56 = v28;
      v57 = sub_260E68894();
      v58 = [v55 initWithURL_];

      [v58 setShouldLoop_];
      v34 = &unk_27FE55000;
      [*&v56[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView] addMovieItem_];

      (*(v52 + 8))(v53, v54);
    }

    sub_260E57C3C(v99, type metadata accessor for VideoViewConfiguration);
  }

LABEL_18:
  v75 = v34[6];
  [*&v28[v75] setTranslatesAutoresizingMaskIntoConstraints_];
  v76 = *&v28[v75];
  v77 = v28;
  [v77 addSubview_];
  v78 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_260E6BDA0;
  v80 = [*&v28[v75] leadingAnchor];
  v81 = [v77 leadingAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v79 + 32) = v82;
  v83 = [*&v28[v75] trailingAnchor];
  v84 = [v77 trailingAnchor];

  v85 = [v83 constraintEqualToAnchor_];
  *(v79 + 40) = v85;
  v86 = [*&v28[v75] topAnchor];
  v87 = [v77 topAnchor];

  v88 = [v86 constraintEqualToAnchor_];
  *(v79 + 48) = v88;
  v89 = [*&v28[v75] bottomAnchor];
  v90 = [v77 bottomAnchor];

  v91 = [v89 constraintEqualToAnchor_];
  *(v79 + 56) = v91;
  sub_260E157C4(0, &qword_27FE54378, 0x277CCAAD0);
  v92 = sub_260E691A4();

  [v78 activateConstraints_];

  sub_260E564A4();
  sub_260E57BD4(v100);
  return v77;
}

uint64_t sub_260E564A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_260E68904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  sub_260E57B64(v0 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_configuration, v3);
  v11 = type metadata accessor for VideoViewConfiguration(0);
  if ((*(*(v11 - 8) + 48))(v3, 1, v11) == 1)
  {
    return sub_260E57BD4(v3);
  }

  (*(v5 + 16))(v7, &v3[*(v11 + 20)], v4);
  sub_260E57C3C(v3, type metadata accessor for VideoViewConfiguration);
  (*(v5 + 32))(v10, v7, v4);
  v13 = [objc_opt_self() currentTraitCollection];
  v14 = [v13 userInterfaceStyle];

  if (v14 > 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = dword_260E6FF9C[v14];
  }

  v16 = *(v0 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView);
  v17 = sub_260E68894();
  [v16 updateViewForAssetType:v15 adjustmentsURL:v17];

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_260E567B4()
{
  v1 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_260E68904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for VideoViewConfiguration(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E57B64(v0 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_configuration, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_260E57BD4(v10);
  }

  sub_260E52A7C(v10, v14);
  sub_260E19464(v14, v3);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
    v17 = *(v16 + 48);
    (*(v5 + 32))(v7, &v3[*(v16 + 64)], v4);
    v20 = *(v5 + 8);
    v19 = v5 + 8;
    v18 = v20;
    v20(&v3[v17], v4);
    v50 = v4;
    v20(v3, v4);
    v21 = objc_allocWithZone(PKMediaPlayerItem);
    v51 = v0;
    v22 = sub_260E68894();
    v23 = v51;
    v24 = v22;
    v25 = [v21 initWithURL_];

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v56 = sub_260E57CD4;
    *(&v56 + 1) = v26;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_260E12B54;
    *(&v55 + 1) = &block_descriptor_2;
    v27 = _Block_copy(&aBlock);

    [v25 setCompletedHandler_];
    _Block_release(v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v56 = sub_260E57D10;
    *(&v56 + 1) = v28;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_260E12B54;
    *(&v55 + 1) = &block_descriptor_6;
    v29 = _Block_copy(&aBlock);

    [v25 setStartedHandler_];
    _Block_release(v29);
    v30 = (v23 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_featureHandler);
    swift_beginAccess();
    v31 = *v30;
    if (*v30)
    {
      v47 = v18;
      v48 = v7;
      v49 = v19;
      v32 = v30[1];
      v33 = *(v23 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges);
      v34 = *(v33 + 16);
      if (v34)
      {
        v46 = v25;
        v53 = MEMORY[0x277D84F90];
        v45 = v32;
        sub_260E145EC(v31, v32);

        sub_260E696D4();
        v35 = objc_opt_self();
        v36 = v34 - 1;
        for (i = 32; ; i += 48)
        {
          aBlock = *(v33 + i);
          v55 = *(v33 + i + 16);
          v56 = *(v33 + i + 32);
          v52[0] = aBlock;
          v52[1] = v55;
          v52[2] = v56;
          v38 = [v35 valueWithCMTimeRange_];
          sub_260E696B4();
          sub_260E696E4();
          sub_260E696F4();
          sub_260E696C4();
          if (!v36)
          {
            break;
          }

          --v36;
        }

        v23 = v51;
        v25 = v46;
        v32 = v45;
      }

      else
      {
        sub_260E145EC(v31, v30[1]);
      }

      sub_260E157C4(0, &qword_27FE542D0, 0x277CCAE60);
      v41 = sub_260E691A4();

      *&v56 = v31;
      *(&v56 + 1) = v32;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v55 = sub_260E56ED0;
      *(&v55 + 1) = &block_descriptor_9;
      v42 = _Block_copy(&aBlock);
      sub_260E145EC(v31, v32);

      [v25 setPlaybackNotificationTimeRanges:v41 withTimeRangeHandler:v42];
      _Block_release(v42);

      sub_260E145DC(v31, v32);
      v7 = v48;
      v18 = v47;
    }

    v43 = *(v23 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView);
    [v43 breakFirstEnqueuedLoop];
    [v43 speedUpRemainderOfCurrentItem];
    [v43 addMovieItem_];

    v18(v7, v50);
    v39 = type metadata accessor for VideoViewConfiguration;
    v40 = v14;
  }

  else
  {
    sub_260E57C3C(v14, type metadata accessor for VideoViewConfiguration);
    v39 = type metadata accessor for VideoViewConfiguration.VideoSequence;
    v40 = v3;
  }

  return sub_260E57C3C(v40, v39);
}

uint64_t sub_260E56ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_260E56F30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_260E692E4();
  v2[5] = sub_260E692D4();
  v4 = sub_260E69284();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_260E56FCC, v4, v3);
}

uint64_t sub_260E56FCC()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges);
  v2 = *(v1 + 16);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(v0 + 16);
    if (v2 > v3)
    {
      v4 = v1 + 48 * v3;
      *(v0 + 72) = *(v4 + 32);
      *(v0 + 120) = *(v4 + 40);
      *(v0 + 124) = *(v4 + 44);
      *(v0 + 80) = *(v4 + 48);
      *(v0 + 88) = sub_260E692D4();
      v6 = sub_260E69284();

      return MEMORY[0x2822009F8](sub_260E571B0, v6, v5);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_27FE53E10 != -1)
  {
LABEL_13:
    swift_once();
  }

  v7 = sub_260E68E94();
  __swift_project_value_buffer(v7, qword_27FE55010);
  v8 = sub_260E68E74();
  v9 = sub_260E69474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_260E02000, v8, v9, "fastForward: playbackTimeRanges is empty, returning", v10, 2u);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 64) != 0;

  return v11(v12);
}

uint64_t sub_260E571B0()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[3];
  v4 = v0[15];

  v5 = *(v3 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView);
  v0[12] = v2;
  v0[13] = v4;
  v0[14] = v1;
  [v5 seekToTime_];
  v6 = v0[6];
  v7 = v0[7];

  return MEMORY[0x2822009F8](sub_260E57250, v6, v7);
}

uint64_t sub_260E57250()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64) != 0;

  return v1(v2);
}

void sub_260E572BC(id a1)
{
  if (a1)
  {
    v2 = [a1 userInterfaceStyle];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!a1 || v2 != v4)
  {

    sub_260E564A4();
  }
}

uint64_t type metadata accessor for AdjustedVideoView(uint64_t a1)
{
  result = qword_27FE55040;
  if (!qword_27FE55040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260E574F8(uint64_t a1)
{
  sub_260E575B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_260E575B0(uint64_t a1)
{
  if (!qword_27FE55050)
  {
    type metadata accessor for VideoViewConfiguration(255);
    v1 = sub_260E69584();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE55050);
    }
  }
}

uint64_t sub_260E57790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (*v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

uint64_t sub_260E5785C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  *(*v3 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges) = a1;

  v7 = (v6 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_featureHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  sub_260E145DC(v8, v9);
}

uint64_t sub_260E57908(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260E0F964;

  return sub_260E56F30(a1);
}

uint64_t sub_260E579A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  sub_260E692E4();
  v4[6] = sub_260E692D4();
  v7 = sub_260E69284();

  return MEMORY[0x2822009F8](sub_260E57A40, v7, v6);
}

uint64_t sub_260E57A40()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = *(v1 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v2;
  [v5 seekToTime_];
  v6 = v0[1];

  return v6(1);
}

uint64_t sub_260E57B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E57BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E57C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_260E57C9C()
{
  MEMORY[0x2666F1F80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MarketingPartNumberURL.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260E68A24();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_260E68A44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260E688F4();
  if (!v10)
  {
    goto LABEL_13;
  }

  if (v9 == 0x7370747468 && v10 == 0xE500000000000000)
  {
  }

  else
  {
    v11 = sub_260E69834();

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = sub_260E688D4();
  if (!v13)
  {
    goto LABEL_13;
  }

  if (v12 != 0x6C7070612E6E706DLL || v13 != 0xED00006D6F632E65)
  {
    v14 = sub_260E69834();

    if (v14)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    sub_260E68A34();
    (*(v6 + 8))(v8, v5);
    swift_willThrow();
    v19 = sub_260E68904();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

LABEL_11:
  v15 = sub_260E688E4();
  v17 = sub_260E35A2C(47, 0xE100000000000000, v15, v16);

  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_260E688E4();
  v18 = sub_260E690D4();

  if (v18 < 6)
  {
    goto LABEL_13;
  }

  v21 = sub_260E68904();
  return (*(*(v21 - 8) + 32))(a2, a1, v21);
}

BOOL _s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0(__n128 a1)
{
  v1 = sub_260E688F4();
  if (!v2)
  {
    return 0;
  }

  if (v1 == 0x7370747468 && v2 == 0xE500000000000000)
  {
  }

  else
  {
    v3 = sub_260E69834();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = sub_260E688D4();
  if (v5)
  {
    if (v4 == 0x6C7070612E6E706DLL && v5 == 0xED00006D6F632E65)
    {
    }

    else
    {
      v6 = sub_260E69834();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    v7 = sub_260E688E4();
    v9 = sub_260E35A2C(47, 0xE100000000000000, v7, v8);

    if (v9)
    {
      sub_260E688E4();
      v10 = sub_260E690D4();

      return v10 > 5;
    }
  }

  return 0;
}

uint64_t sub_260E58184(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_260E58204(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MarketingPartNumberURL(uint64_t a1)
{
  result = qword_27FE55058;
  if (!qword_27FE55058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E582C0(uint64_t a1)
{
  result = sub_260E68904();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_260E5832C()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE55068);
  v1 = __swift_project_value_buffer(v0, qword_27FE55068);
  if (qword_27FE53E48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E583F4(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_260E58468, 0, 0);
}

uint64_t sub_260E58468()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55080, &qword_260E70018);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + ((*(*v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 2, v4);
  v5 = [v1 assetId];
  if (v5)
  {
    v13 = v5;
    v15 = *(v0 + 24);
    v14 = *(v0 + 32);
    v16 = *(v0 + 88);
    v17 = *(v0 + 16);
    v18 = sub_260E69024();
    v20 = v19;

    *(v0 + 48) = v20;
    v21 = swift_task_alloc();
    *(v0 + 56) = v21;
    *(v21 + 16) = v2;
    *(v21 + 24) = v16;
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    *(v21 + 48) = v15;
    *(v21 + 56) = v14;
    v22 = swift_task_alloc();
    *(v0 + 64) = v22;
    v22[2] = v15;
    v22[3] = v17;
    v22[4] = v2;
    v22[5] = v14;
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_260E586C4;
    v6 = &unk_260E70030;
    v8 = sub_260E598DC;
    v12 = MEMORY[0x277D84F78] + 8;
    v7 = v22;
    v9 = v21;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200830](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_260E586C4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_260E58898;
  }

  else
  {
    v2 = sub_260E58834;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E58834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E58898()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_260E588FC(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  sub_260E599F0(a1 + *(*a1 + *MEMORY[0x277D841D0] + 16), (a1 + ((*(*a1 + 48) + 3) & 0x1FFFFFFFCLL)));
  if (a2)
  {
    if (qword_27FE53E18 != -1)
    {
      swift_once();
    }

    v9 = sub_260E68E94();
    __swift_project_value_buffer(v9, qword_27FE55068);

    v10 = sub_260E68E74();
    v11 = sub_260E69474();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_260E43774(a3, a4, aBlock);
      _os_log_impl(&dword_260E02000, v10, v11, "Cancelling download for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2666F1EF0](v13, -1, -1);
      MEMORY[0x2666F1EF0](v12, -1, -1);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    aBlock[4] = sub_260E5AB88;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_260E58CC4;
    aBlock[3] = &block_descriptor_17;
    v15 = _Block_copy(aBlock);

    [a5 cancelDownload_];
    _Block_release(v15);
  }
}

void sub_260E58B5C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_27FE53E18 != -1)
  {
    swift_once();
  }

  v6 = sub_260E68E94();
  __swift_project_value_buffer(v6, qword_27FE55068);

  oslog = sub_260E68E74();
  v7 = sub_260E69474();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_260E43774(a2, a3, &v11);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    _os_log_impl(&dword_260E02000, oslog, v7, "Download cancelled for %s with result %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }
}

uint64_t sub_260E58CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_260E58CF4, 0, 0);
}

uint64_t sub_260E58CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_260E58DEC;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000025, 0x8000000260E730A0, sub_260E599B0, v1, v5);
}

uint64_t sub_260E58DEC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E58F28, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_260E58F28()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_260E58F8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (qword_27FE53E18 != -1)
  {
    swift_once();
  }

  v12 = sub_260E68E94();
  __swift_project_value_buffer(v12, qword_27FE55068);
  v13 = sub_260E68E74();
  v14 = sub_260E69474();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260E02000, v13, v14, "Starting download", v15, 2u);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  v30 = sub_260E592B4;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_260E5940C;
  v29 = &block_descriptor_3;
  v16 = _Block_copy(&aBlock);
  [a2 attachProgressCallBack_];
  _Block_release(v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = *(v8 + 80);
  v22 = a1;
  v18 = (v17 + 24) & ~v17;
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  (*(v8 + 32))(v19 + v18, v11, v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v30 = sub_260E599D8;
  v31 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_260E596E8;
  v29 = &block_descriptor_11;
  v21 = _Block_copy(&aBlock);

  [a2 startDownload:v25 then:v21];
  _Block_release(v21);
  sub_260E5A7D4(v20, v22);
}

void sub_260E592B4(void *a1)
{
  if (a1)
  {
    v1 = qword_27FE53E18;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_260E68E94();
    __swift_project_value_buffer(v3, qword_27FE55068);
    v8 = v2;
    v4 = sub_260E68E74();
    v5 = sub_260E69444();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      [v8 expectedTimeRemaining];
      *(v6 + 4) = v7;
      *(v6 + 12) = 1024;
      *(v6 + 14) = [v8 isStalled];

      _os_log_impl(&dword_260E02000, v4, v5, "Download progress: %f %{BOOL}d", v6, 0x12u);
      MEMORY[0x2666F1EF0](v6, -1, -1);
    }

    else
    {

      v4 = v8;
    }
  }
}

void sub_260E5940C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_260E59478(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FE53E18 != -1)
  {
    swift_once();
  }

  v7 = sub_260E68E94();
  __swift_project_value_buffer(v7, qword_27FE55068);
  v8 = sub_260E68E74();
  v9 = sub_260E69474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_260E02000, v8, v9, "Finished download", v10, 2u);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v11 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v12));
  sub_260E5AA90(a2 + v11, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v14 = (*(*(v13 - 8) + 48))(v6, 2, v13);
  if (v14)
  {
    if (v14 != 1)
    {
      os_unfair_lock_unlock((a2 + v12));
      return;
    }
  }

  else
  {
    sub_260E5AAF4(v6);
  }

  os_unfair_lock_unlock((a2 + v12));
  if (a1)
  {
    sub_260E15590();
    v15 = swift_allocError();
    if (a1 == 51)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if (a1 == 12)
    {
      v17 = 10;
    }

    *v16 = v17;
    *(v16 + 8) = 0;
    *(v16 + 16) = 2;
    v18[1] = v15;
    sub_260E69294();
  }

  else
  {
    sub_260E692A4();
  }
}

uint64_t sub_260E596F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_260E5976C()
{
  v1 = [*v0 getLocalFileUrl];
  if (v1)
  {
    v2 = v1;
    sub_260E688C4();
  }

  else
  {
    __break(1u);
  }
}

id sub_260E597D4()
{
  result = [*v0 assetId];
  if (result)
  {
    v2 = result;
    v3 = sub_260E69024();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_260E59834(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E30A3C;

  return sub_260E583F4(a1, a2);
}

uint64_t sub_260E598F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260E343A8;

  return sub_260E58CCC(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_260E599F0(uint64_t a1, os_unfair_lock_s *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = _s11CancelStateOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(a2);
  sub_260E5AA90(a1, v10);
  v11 = (*(v5 + 48))(v10, 2, v4);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_260E5AAF4(a1);
      (*(v5 + 56))(a1, 2, 2, v4);
    }

    os_unfair_lock_unlock(a2);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_260E5AAF4(a1);
    (*(v5 + 56))(a1, 2, 2, v4);
    os_unfair_lock_unlock(a2);
    sub_260E15590();
    v12 = swift_allocError();
    *v13 = xmmword_260E6D940;
    *(v13 + 16) = 2;
    v14[1] = v12;
    sub_260E69294();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_260E59C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_260E59C48, 0, 0);
}

uint64_t sub_260E59C48()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55080, &qword_260E70018);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + ((*(*v3 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v11 = *(v0 + 24);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 2, v5);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v1;
  *(v7 + 56) = v1;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_260E59E64;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v8, &unk_260E70048, v7, sub_260E5AB90, v6, 0, 0, v9);
}

uint64_t sub_260E59E64()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_260E5A01C;
  }

  else
  {
    v2 = sub_260E59FB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E59FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E5A01C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E5A080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_260E5A0AC, 0, 0);
}

uint64_t sub_260E5A0AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_260E5A1BC;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000260E73150, sub_260E5ACE0, v3, v8);
}

uint64_t sub_260E5A1BC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E5A2F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_260E5A2F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_260E5A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a4;
  v26 = a5;
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (qword_27FE53E18 != -1)
  {
    swift_once();
  }

  v12 = sub_260E68E94();
  __swift_project_value_buffer(v12, qword_27FE55068);
  v13 = sub_260E68E74();
  v14 = sub_260E69474();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260E02000, v13, v14, "Starting catalog download", v15, 2u);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  v16 = objc_opt_self();
  v17 = sub_260E68FF4();
  v18 = v27;
  (*(v8 + 16))(v11, v27, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v26;
  (*(v8 + 32))(v21 + v19, v11, v7);
  *(v21 + v20) = v24;
  aBlock[4] = sub_260E5ADCC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_260E596E8;
  aBlock[3] = &block_descriptor_28;
  v23 = _Block_copy(aBlock);

  [v16 startCatalogDownload:v17 options:v25 then:v23];
  _Block_release(v23);

  sub_260E5A7D4(v22, v18);
}

void sub_260E5A634(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v8));
  sub_260E5AA90(a2 + v7, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v10 = (*(*(v9 - 8) + 48))(v6, 2, v9);
  if (v10)
  {
    if (v10 != 1)
    {
      os_unfair_lock_unlock((a2 + v8));
      return;
    }
  }

  else
  {
    sub_260E5AAF4(v6);
  }

  os_unfair_lock_unlock((a2 + v8));
  if (a1)
  {
    sub_260E15590();
    v11 = swift_allocError();
    *v12 = xmmword_260E6D950;
    *(v12 + 16) = 2;
    v13[1] = v11;
    sub_260E69294();
  }

  else
  {
    sub_260E692A4();
  }
}

void sub_260E5A7D4(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v8));
  sub_260E5AA90(a1 + v7, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 2, v9);
  if (v11 == 1)
  {
    sub_260E5AAF4(a1 + v7);
    (*(v10 + 16))(a1 + v7, a2, v9);
    (*(v10 + 56))(a1 + v7, 0, 2, v9);
    os_unfair_lock_unlock((a1 + v8));
  }

  else if (v11 == 2)
  {
    sub_260E5AAF4(a1 + v7);
    (*(v10 + 56))(a1 + v7, 2, 2, v9);
    os_unfair_lock_unlock((a1 + v8));
    sub_260E15590();
    v12 = swift_allocError();
    *v13 = xmmword_260E6D940;
    *(v13 + 16) = 2;
    v14[1] = v12;
    sub_260E69294();
  }

  else
  {
    os_unfair_lock_unlock((a1 + v8));
    sub_260E69704("Fatal error", 11, 2, 0xD000000000000015, 0x8000000260E73130, "ProductKit/MAAsset+Additions.swift", 34, 2, 128, 0);
    __break(1u);
  }
}

uint64_t _s11CancelStateOMa(uint64_t a1)
{
  result = qword_27FE55090;
  if (!qword_27FE55090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E5AA90(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E5AAF4(uint64_t a1)
{
  v2 = _s11CancelStateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E5AB50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260E5AC0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_260E343A8;

  return sub_260E5A080(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_260E5ADE4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_260E5AEB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
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

uint64_t sub_260E5AF44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_260E5AFD4(uint64_t a1)
{
  sub_260E5B02C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_260E5B02C(uint64_t a1)
{
  if (!qword_27FE550A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE545B0, &unk_260E6C010);
    v1 = sub_260E692B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE550A0);
    }
  }
}

uint64_t sub_260E5B0C0()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE550A8);
  v1 = __swift_project_value_buffer(v0, qword_27FE550A8);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_260E5B188(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AdjustedAsset(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = sub_260E68904();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1 + *(v6 + 28), v13);
  Adjustments.init(fileURL:)(v15, v39);
  v17 = v40;
  v18 = &v2[OBJC_IVAR____TtC10ProductKit17AdjustedImageView_adjustments];
  v19 = *&v39[16];
  *v18 = *v39;
  *(v18 + 1) = v19;
  v18[32] = v17;
  v20 = *(a1 + 16);
  v21 = sub_260E68FF4();
  v22 = [objc_opt_self() imageNamed:v21 inBundle:v20 compatibleWithTraitCollection:0];

  if (!v22)
  {
    if (qword_27FE53E20 != -1)
    {
      swift_once();
    }

    v23 = sub_260E68E94();
    __swift_project_value_buffer(v23, qword_27FE550A8);
    sub_260E55864(a1, v11);
    v24 = sub_260E68E74();
    v25 = sub_260E69454();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v26 = 136315138;
      sub_260E55864(v11, v8);
      *v39 = 0;
      *&v39[8] = 0xE000000000000000;
      sub_260E69644();

      v42 = 0xD000000000000015;
      v43 = 0x8000000260E72C40;
      v27 = *(v8 + 3);
      v28 = *(v8 + 4);
      v29 = v8[40];
      *v39 = *v8;
      *&v39[8] = *(v8 + 8);
      *&v39[24] = v27;
      v40 = v28;
      v41 = v29;
      v30 = GenericAsset.description.getter();
      v38 = ObjectType;
      MEMORY[0x2666F0C00](v30);

      MEMORY[0x2666F0C00](41, 0xE100000000000000);
      v31 = v42;
      v32 = v43;
      sub_260E558C8(v11);
      sub_260E558C8(v8);
      v33 = sub_260E43774(v31, v32, &v44);
      ObjectType = v38;

      *(v26 + 4) = v33;
      _os_log_impl(&dword_260E02000, v24, v25, "Could not load image for %s", v26, 0xCu);
      v34 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x2666F1EF0](v34, -1, -1);
      MEMORY[0x2666F1EF0](v26, -1, -1);
    }

    else
    {

      sub_260E558C8(v11);
    }
  }

  v45.receiver = v2;
  v45.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v45, sel_initWithImage_, v22);
  sub_260E5B568();

  sub_260E558C8(a1);
  return v35;
}

void sub_260E5B568()
{
  v1 = &v0[OBJC_IVAR____TtC10ProductKit17AdjustedImageView_adjustments];
  if ((v0[OBJC_IVAR____TtC10ProductKit17AdjustedImageView_adjustments + 32] & 1) == 0)
  {
    v2 = v1[3];
    v3 = v1[1];
    v4 = [objc_opt_self() currentTraitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v2;
    }

    if (v5)
    {
      v2 = v6;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v8 = v2;
    v9 = objc_opt_self();
    v21 = v8;
    v22 = *(MEMORY[0x277CD9DA0] + 4);
    v23 = *(MEMORY[0x277CD9DA0] + 20);
    v24 = v8;
    v25 = *(MEMORY[0x277CD9DA0] + 28);
    v26 = *(MEMORY[0x277CD9DA0] + 44);
    v27 = v8;
    *v28 = *(MEMORY[0x277CD9DA0] + 52);
    *&v28[12] = *(MEMORY[0x277CD9DA0] + 64);
    v10 = [v9 valueWithCAColorMatrix_];
    v11 = sub_260E68FF4();
    [v7 setValue:v10 forKey:v11];

    v12 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v13 = sub_260E69364();
    v14 = sub_260E68FF4();
    [v12 setValue:v13 forKey:v14];

    v15 = [v0 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_260E6BDD0;
    v17 = sub_260E5BBC4();
    *(v16 + 32) = v7;
    *(v16 + 88) = v17;
    *(v16 + 56) = v17;
    *(v16 + 64) = v12;
    v18 = v7;
    v19 = v12;
    v20 = sub_260E691A4();

    [v15 setFilters_];
  }
}

Swift::Void __swiftcall AdjustedImageView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  if (a1.value.super.isa)
  {
    v2 = [(objc_class *)a1.value.super.isa userInterfaceStyle];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!isa || v2 != v4)
  {

    sub_260E5B568();
  }
}

id AdjustedImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id AdjustedImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id AdjustedImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_260E5BBC4()
{
  result = qword_27FE550D0[0];
  if (!qword_27FE550D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FE550D0);
  }

  return result;
}

uint64_t sub_260E5BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_260E30A3C;

  return sub_260E5E83C(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t AsyncChannel.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v4 = sub_260E69584();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E5BDD4, 0, 0);
}

uint64_t sub_260E5BDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  if (*(v5 + 8) == 1)
  {
    v6 = v4[4];
    v7 = *v5;
    v4[9] = *v5;
    v8 = sub_260E5C254(a1, a2, a3, a4);
    v9 = swift_task_alloc();
    v4[10] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = swift_task_alloc();
    v4[11] = v10;
    v10[2] = v6;
    v10[3] = v5;
    v10[4] = v8;

    v11 = swift_task_alloc();
    v4[12] = v11;
    *v11 = v4;
    v11[1] = sub_260E5BFA4;
    v12 = v4[8];
    v13 = v4[5];

    return sub_260E5BC10(v12, sub_260E5C2DC, v9, &unk_260E70098, v10, v13);
  }

  else
  {
    (*(*(v4[4] - 8) + 56))(v4[2], 1, 1);

    v15 = v4[1];

    return v15();
  }
}

void sub_260E5BFA4()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_260E5C0F4, 0, 0);
  }
}

uint64_t sub_260E5C0F4()
{
  v1 = v0[7];
  v2 = v0[4];
  (*(v0[6] + 32))(v1, v0[8], v0[5]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    (*(v0[6] + 8))(v0[7], v0[5]);
    *(v5 + 8) = 0;
    (*(v3 + 56))(v6, 1, 1, v4);
  }

  else
  {
    v7 = v0[4];
    v8 = v0[2];
    (*(v3 + 32))(v8, v0[7], v7);
    (*(v3 + 56))(v8, 0, 1, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_260E5C254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v8 = *(*v4 + 80);
  type metadata accessor for AsyncChannel.State(0, v8, a3, a4);
  sub_260E15978(sub_260E5F130, &v7, v5);
  return v9;
}

void sub_260E5C304(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_260E69584();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-v6];
  v8 = v1[2];
  v13 = v3;
  v14 = a1;
  type metadata accessor for AsyncChannel.State(0, v3, v9, v10);
  sub_260E69334();
  sub_260E69584();
  sub_260E15978(sub_260E5F0C4, v12, v8);
  v11 = v15;
  if (v15)
  {
    (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
    (*(v5 + 32))(*(*(v11 + 64) + 40), v7, v4);
    swift_continuation_resume();
  }
}

uint64_t sub_260E5C4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_260E5C4D4, 0, 0);
}

uint64_t sub_260E5C4D4()
{
  *(v0 + 40) = **(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_260E5C584;
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_260E5C74C(v3, v2);
}

uint64_t sub_260E5C584()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260E5C698(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260E343A8;

  return sub_260E5C4B0(a1, v4, v5);
}

uint64_t sub_260E5C74C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_260E5C798, 0, 0);
}

uint64_t sub_260E5C798()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_260E69584();
  *v4 = v0;
  v4[1] = sub_260E5C898;
  v6 = v0[2];

  return (sub_260E5D4FC)(v6, 0, 0, sub_260E5F098, v3, v5);
}

uint64_t sub_260E5C898()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260E5C9A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E30690;

  return AsyncChannel.Iterator.next()(a1, a2);
}

uint64_t sub_260E5CA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_260E5CB1C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_260E5CB1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260E5CC4C(uint64_t a1)
{
  sub_260E698F4();
  MEMORY[0x2666F1410](a1);
  return sub_260E69914();
}

uint64_t sub_260E5CCAC(uint64_t a1)
{
  sub_260E698F4();
  sub_260E5CC18(v3, *v1);
  return sub_260E69914();
}

uint64_t sub_260E5CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(v4 + 8);
  if (*(v4 + 8))
  {
    if (result == 1)
    {
      v7 = v4;
      v19 = *v4;
      type metadata accessor for AsyncChannel.Awaiting(255, *(a2 + 16), a3, a4);

      swift_getWitnessTable();
      sub_260E693C4();
      sub_260E69394();
      if (v18 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = v18;
      }

      v9 = v19;
      v10 = sub_260E693B4();

      if (v10)
      {

        v9 = 0;
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      *v7 = v9;
      *(v7 + 8) = v11;
      return v8;
    }

    else
    {
      v12 = a1;
      v13 = type metadata accessor for AsyncChannel.Awaiting(255, *(a2 + 16), a3, a4);
      sub_260E69814();
      swift_initStackObject();
      v14 = sub_260E691D4();
      *v15 = v12;
      *(v15 + 8) = 0;
      *(v15 + 16) = 1;
      sub_260E69274();
      if (sub_260E69234())
      {
        WitnessTable = swift_getWitnessTable();
        v17 = sub_260E5EC0C(v14, v13, WitnessTable);
      }

      else
      {
        v17 = MEMORY[0x277D84FA0];
      }

      result = 0;
      *v4 = v17;
      *(v4 + 8) = 1;
    }
  }

  return result;
}

uint64_t AsyncChannel.__allocating_init(element:)()
{
  v0 = swift_allocObject();
  AsyncChannel.init(element:)(v0, v1, v2, v3);
  return v0;
}

void *AsyncChannel.init(element:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v11 = 0;
  v12 = 2;
  v13 = 0;
  v14 = 0;
  v6 = type metadata accessor for AsyncChannel.State(0, v5, a3, a4);
  v9 = sub_260E15A30(&v11, v6, v7, v8);

  v4[2] = v9;
  return v4;
}

void sub_260E5CF6C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*a2 + 80);
  v7 = sub_260E69584();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9];
  v30 = 0;
  v11 = a2[2];
  v19 = v6;
  v20 = &v30;
  v21 = a3;
  v22 = a1;
  v23 = &v30 + 1;
  type metadata accessor for AsyncChannel.State(0, v6, v12, v13);
  v14 = MEMORY[0x277D84A98];
  v15 = MEMORY[0x277D84AC0];
  sub_260E69334();
  v16 = sub_260E69584();
  v17 = type metadata accessor for UnsafeResumption(255, v16, v14, v15);
  sub_260E69584();
  sub_260E15978(sub_260E5F0A0, v18, v11);
  if (v27)
  {
    v24 = v27;
    v25 = v28;
    v26 = v29 & 1;
    sub_260E66EF8(v17);
  }

  if ((v30 & 0x100) != 0 || v30 == 1)
  {
    (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
    (*(v8 + 32))(*(*(a1 + 64) + 40), v10, v7);
    swift_continuation_resume();
  }
}

void sub_260E5D1A4(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    *a2 = 1;
LABEL_15:
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    return;
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v32 = *a1;
      type metadata accessor for AsyncChannel.Awaiting(255, a6, a3, a4);

      swift_getWitnessTable();
      sub_260E693C4();
      sub_260E693A4();
      if (v30 != 1)
      {
        sub_260E69394();
        *a5 = 1;
      }

      v9 = v32;
      v10 = sub_260E693B4();

      if (v10)
      {

        v9 = 0;
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      *a1 = v9;
      *(a1 + 8) = v11;
      goto LABEL_15;
    }

    v20 = type metadata accessor for AsyncChannel.Awaiting(255, a6, a3, a4);
    sub_260E69814();
    swift_initStackObject();
    v21 = sub_260E691D4();
    *v22 = a3;
    *(v22 + 8) = a4;
    *(v22 + 16) = 0;
    sub_260E69274();
    if (sub_260E69234())
    {
      WitnessTable = swift_getWitnessTable();
      v24 = sub_260E5EC0C(v21, v20, WitnessTable);
    }

    else
    {
      v24 = MEMORY[0x277D84FA0];
    }

    *a1 = v24;
    *(a1 + 8) = 1;
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
  }

  else
  {
    v28 = *a1;
    sub_260E69584();
    sub_260E69334();
    v13 = sub_260E69584();
    sub_260E69334();
    sub_260E69274();

    swift_getWitnessTable();
    sub_260E693D4();
    v14 = v29;
    v15 = v28;
    v16 = sub_260E69234();

    if (v16)
    {
      v17 = 0;
    }

    else
    {

      v15 = 0;
      v17 = 2;
    }

    *a1 = v15;
    *(a1 + 8) = v17;
    v32 = a4;
    sub_260E66DF4(v14, &v32, v13, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], &v29);
    v25 = v30;
    v26 = v31;
    *a7 = v29;
    *(a7 + 8) = v25;
    *(a7 + 16) = v26;
  }
}

uint64_t sub_260E5D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_260E69284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_260E5D590, v6, v8);
}

uint64_t sub_260E5D590()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_260E5D638;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E5D638()
{
  v1 = *(*v0 + 8);

  return v1();
}

void _s10ProductKit12AsyncChannelC6finishyyF_0()
{
  v1 = *(*v0 + 80);
  v2 = sub_260E69584();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = &v27 - v3;
  v4 = v0[2];
  v32 = v1;
  type metadata accessor for AsyncChannel.State(0, v1, v5, v6);
  v30 = v2;
  sub_260E69334();
  v7 = sub_260E69584();
  sub_260E69334();
  sub_260E69274();
  type metadata accessor for AsyncChannel.Awaiting(255, v1, v8, v9);
  swift_getWitnessTable();
  sub_260E693C4();
  swift_getTupleTypeMetadata2();
  sub_260E15978(sub_260E5EBD8, v31, v4);
  v11 = v33[0];
  v10 = v33[1];
  if (sub_260E69234())
  {
    v12 = 4;
    do
    {
      v13 = v12 - 4;
      v14 = sub_260E69214();
      sub_260E691E4();
      if (v14)
      {
        v15 = *(v11 + 8 * v12);
        v16 = v12 - 3;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = sub_260E69664();
        swift_unknownObjectRelease();
        v16 = v12 - 3;
        if (__OFADD__(v13, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v33[0] = 0;
      (*(*(v7 - 8) + 32))(*(*(v15 + 64) + 40), v33, v7);
      swift_continuation_resume();
      ++v12;
    }

    while (v16 != sub_260E69234());
  }

  v17 = 0;
  v18 = 1 << *(v10 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v10 + 56);
  v21 = (v18 + 63) >> 6;
  v22 = (v28 + 32);
  while (v20)
  {
LABEL_18:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = *(*(v10 + 48) + 24 * (v24 | (v17 << 6)) + 8);
    if (v25)
    {
      v26 = v29;
      (*(*(v1 - 8) + 56))(v29, 1, 1, v1);
      (*v22)(*(*(v25 + 64) + 40), v26, v30);
      swift_continuation_resume();
    }
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v10 + 56 + 8 * v23);
    ++v17;
    if (v20)
    {
      v17 = v23;
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_260E5DAD8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (*(a1 + 24) != 1)
  {
    *(a1 + 24) = 1;
    v6 = *a1;
    if (!*(a1 + 8))
    {
      *a1 = 0;
      *(a1 + 8) = 2;
      *a3 = v6;
      goto LABEL_6;
    }

    if (*(a1 + 8) == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 2;
      sub_260E69584();
      sub_260E69334();
      sub_260E69584();
      sub_260E69334();
      *a3 = sub_260E69204();
      a3[1] = v6;
      return;
    }
  }

  v7 = a2;
  sub_260E69584();
  sub_260E69334();
  sub_260E69584();
  sub_260E69334();
  *a3 = sub_260E69204();
  a2 = v7;
LABEL_6:
  v8 = type metadata accessor for AsyncChannel.Awaiting(0, a2, a4, a5);
  v9 = sub_260E69204();
  if (sub_260E69234())
  {
    WitnessTable = swift_getWitnessTable();
    v11 = sub_260E5EC0C(v9, v8, WitnessTable);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  a3[1] = v11;
}

uint64_t sub_260E5DC90(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_260E5DCB0, 0, 0);
}

uint64_t sub_260E5DCB0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_260E5DDA0;
  v3 = v0[1].i64[1];
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v2, &unk_260E70278, v1, j___s10ProductKit12AsyncChannelC6finishyyF, v3, 0, 0, v4);
}

void sub_260E5DDA0()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_260E5DEDC, 0, 0);
  }
}

uint64_t sub_260E5DEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = *(*a2 + 80);
  v4 = sub_260E69584();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E5DFA0, 0, 0);
}

uint64_t sub_260E5DFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  sub_260E69334();
  v2 = sub_260E69584();
  *v1 = v0;
  v1[1] = sub_260E5E09C;
  v3 = *(v0 + 24);

  return (sub_260E5D4FC)(v0 + 16, 0, 0, sub_260E5F074, v3, v2);
}

uint64_t sub_260E5E09C()
{

  return MEMORY[0x2822009F8](sub_260E5E198, 0, 0);
}

uint64_t sub_260E5E198()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = *(v5 - 8);
    (*(v6 + 16))(v2, v0[4], v5);
    (*(v6 + 56))(v2, 0, 1, v5);
    (*(v3 + 32))(*(*(v1 + 64) + 40), v2, v4);
    swift_continuation_resume();
  }

  v7 = v0[1];

  return v7();
}

void sub_260E5E2F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[2];
  v10 = *(*a2 + 80);
  v11 = a1;
  type metadata accessor for AsyncChannel.State(0, v10, a3, a4);
  sub_260E69584();
  v5 = MEMORY[0x277D84A98];
  v6 = MEMORY[0x277D84AC0];
  sub_260E69334();
  v7 = sub_260E69584();
  v8 = type metadata accessor for UnsafeResumption(255, v7, v5, v6);
  sub_260E69584();
  sub_260E15978(sub_260E5F07C, &v9, v4);
  if (v15)
  {
    v12 = v15;
    v13 = v16;
    v14 = v17 & 1;
    sub_260E66EF8(v8);
  }
}

void *sub_260E5E404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  if (*(a1 + 24) != 1)
  {
    if (*(a1 + 8))
    {
      if (*(a1 + 8) == 1)
      {
        v25 = *a1;
        type metadata accessor for AsyncChannel.Awaiting(255, a3, a3, a5);

        swift_getWitnessTable();
        sub_260E693C4();
        sub_260E69374();
        v20 = v23;
        v12 = v25;
        v13 = sub_260E69384();

        if (v13)
        {
          v14 = 1;
        }

        else
        {

          v12 = 0;
          v14 = 2;
        }

        *a1 = v12;
        *(a1 + 8) = v14;
        v21 = v20;
        sub_260E69584();
        v7 = MEMORY[0x277D84A98];
        v8 = MEMORY[0x277D84AC0];
        sub_260E69334();
        v9 = sub_260E69584();
        v10 = &v21;
        goto LABEL_12;
      }

      sub_260E69584();
      sub_260E69334();
      sub_260E69584();
      sub_260E69334();
      sub_260E69814();
      swift_allocObject();
      v16 = sub_260E691D4();
      *v17 = a2;
      result = sub_260E69274();
      *a1 = v16;
    }

    else
    {
      v22 = *a1;
      v25 = a2;
      sub_260E69584();
      sub_260E69334();
      sub_260E69584();
      sub_260E69334();
      sub_260E69274();
      result = sub_260E69244();
      *a1 = v22;
    }

    *(a1 + 8) = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v25 = 0;
  sub_260E69584();
  v7 = MEMORY[0x277D84A98];
  v8 = MEMORY[0x277D84AC0];
  sub_260E69334();
  v9 = sub_260E69584();
  v10 = &v25;
LABEL_12:
  result = sub_260E66DF4(a2, v10, v9, v7, v8, &v22);
  v18 = v23;
  v19 = v24;
  *a4 = v22;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
  return result;
}

uint64_t AsyncChannel.send(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260E30A3C;

  return sub_260E5DC90(a1);
}

uint64_t AsyncChannel.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 1;
  *a1 = v1;
}

uint64_t AsyncChannel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_260E5E804@<X0>(uint64_t a1@<X8>)
{
  AsyncChannel.makeAsyncIterator()(a1);
}

uint64_t sub_260E5E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_260E343A8;

  return MEMORY[0x282200830](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_260E5E9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_260E5EA44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_260E5EA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_260E5EAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10ProductKit12AsyncChannelC8EmissionOyx_G(uint64_t a1)
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

uint64_t sub_260E5EB3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_260E5EB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_260E5EC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  if (sub_260E69234())
  {
    sub_260E69624();
    v15 = sub_260E69614();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_260E69234();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_260E69214();
    sub_260E691E4();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_260E69664();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_260E68FA4();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_260E68FD4();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_260E5EFC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260E30A3C;

  return sub_260E5DEF0(a1, v5, v4);
}

uint64_t sub_260E5F0C4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X2>, uint64_t a3@<X3>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for AsyncChannel.Emission(0, v5, a2, a3);
  result = sub_260E5CD04(v6, v7, v8, v9);
  *a1 = result;
  return result;
}

uint64_t sub_260E5F130@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = v2;
  *(result + 16) = v2 + 1;
  return result;
}

uint64_t sub_260E5F144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_260E5F180(uint64_t a1, unsigned int a2)
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

uint64_t sub_260E5F1DC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_260E5F230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_260E5F26C(uint64_t a1, unsigned int a2)
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

uint64_t sub_260E5F2B4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_260E5F2F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_260E5F330()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE55358);
  v1 = __swift_project_value_buffer(v0, qword_27FE55358);
  if (qword_27FE53E48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_260E5F3F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v0 setDiscretionary_];
  [v0 setCanUseLocalCacheServer_];
  [v0 setAllowsCellularAccess_];
  result = [v0 setTimeoutIntervalForResource_];
  qword_27FE55370 = v0;
  return result;
}

uint64_t sub_260E5F484(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_260E5F4A4, 0, 0);
}

void sub_260E5F4A4()
{
  v1 = sub_260E641E8();
  v2 = [v1 assetType];

  if (v2)
  {
    sub_260E62CCC();
    v3 = sub_260E69024();
    v5 = v4;

    v0[4] = v5;
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_260E5F59C;
    v7 = v0[3];

    sub_260E59C24(v3, v5, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_260E5F59C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E5F6D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_260E5F6D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E5F75C()
{
  v1 = sub_260E641E8();
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E5F884;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE553A8, &qword_260E704C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E5FA34;
  v0[13] = &block_descriptor_27;
  v0[14] = v2;
  [v1 queryMetaData_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E5F884()
{

  return MEMORY[0x2822009F8](sub_260E5F964, 0, 0);
}

uint64_t sub_260E5F964()
{
  v1 = *(v0 + 144);
  v2 = [*(v0 + 160) results];
  if (v2)
  {
    v3 = v2;
    sub_260E62CCC();
    v4 = sub_260E691B4();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *(v0 + 160);
  v6 = sub_260E5FA90(v4);

  v7 = *(v0 + 8);

  return v7(v1, v6);
}

uint64_t sub_260E5FA34(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

void *sub_260E5FA90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_260E69714();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_260E65A20(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2666F1180](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_260E65A20((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_260E62CCC();
        v16 = &off_287361678;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_260E41B2C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_260E65A20((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_260E62CCC();
        v16 = &off_287361678;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_260E41B2C(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_260E5FC48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_260E5FC68, v1, 0);
}

uint64_t sub_260E5FC68()
{
  v1 = v0[3];
  if (*(v1 + 112))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    *(v1 + 112) = 1;
    if (qword_27FE53E28 != -1)
    {
      swift_once();
    }

    v4 = sub_260E68E94();
    v0[4] = __swift_project_value_buffer(v4, qword_27FE55358);
    v5 = sub_260E68E74();
    v6 = sub_260E69474();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260E02000, v5, v6, "Updating catalog", v7, 2u);
      MEMORY[0x2666F1EF0](v7, -1, -1);
    }

    v8 = v0[3];

    v9 = *(v8 + 120);
    v0[5] = *(v8 + 128);
    v10 = qword_27FE53E30;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_27FE55370;
    v14 = (v9 + *v9);
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_260E5FEB0;
    v13 = v0[2];

    return v14(v13, v11);
  }
}

uint64_t sub_260E5FEB0()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_260E600B4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_260E5FFD8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E5FFD8(uint64_t a1)
{
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v2, v3, "Done updating catalog", v4, 2u);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v5 = *(v1 + 24);

  *(v5 + 112) = 0;
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_260E600B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E60118(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 272) = a2;
  *(v4 + 280) = v3;
  *(v4 + 408) = a3;
  *(v4 + 264) = a1;
  *(v4 + 288) = *v3;
  v5 = sub_260E68904();
  *(v4 + 296) = v5;
  *(v4 + 304) = *(v5 - 8);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = type metadata accessor for MobileAssetRequest(0);
  *(v4 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E60238, v3, 0);
}

uint64_t sub_260E60238()
{
  v21 = v0;
  if (qword_27FE53E28 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[34];
  v3 = sub_260E68E94();
  v0[42] = __swift_project_value_buffer(v3, qword_27FE55358);
  sub_260E4C858(v2, v1);
  v4 = sub_260E68E74();
  v5 = sub_260E69474();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = sub_260E643C0();
    v12 = v11;
    sub_260E4C8BC(v7);
    v13 = sub_260E43774(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260E02000, v4, v5, "Performing request: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {

    sub_260E4C8BC(v7);
  }

  v14 = v0[35];
  v15 = *(v14 + 136);
  v0[43] = *(v14 + 144);

  v19 = (v15 + *v15);
  v16 = swift_task_alloc();
  v0[44] = v16;
  *v16 = v0;
  v16[1] = sub_260E604A0;
  v17 = v0[34];

  return v19(v17);
}

uint64_t sub_260E604A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  *(v3 + 360) = a1;
  *(v3 + 368) = a2;

  return MEMORY[0x2822009F8](sub_260E605D4, v4, 0);
}

uint64_t sub_260E605D4()
{
  v56 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v1 + 16);
  if (v2)
  {
    if (!v3)
    {
      v4 = *(v0 + 408);

      if (v2 == 2 && (v4 & 1) == 0)
      {
        v5 = sub_260E68E74();
        v6 = sub_260E69474();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_260E02000, v5, v6, "XML is missing", v7, 2u);
          MEMORY[0x2666F1EF0](v7, -1, -1);
        }

        v8 = swift_task_alloc();
        *(v0 + 392) = v8;
        *v8 = v0;
        v8[1] = sub_260E60FFC;
        v9 = *(v0 + 272);

        return sub_260E5FC48(v9);
      }

LABEL_29:
      sub_260E15590();
      swift_allocError();
      *v48 = xmmword_260E6C9E0;
      *(v48 + 16) = 2;
      swift_willThrow();

      v49 = *(v0 + 8);
      goto LABEL_32;
    }
  }

  else if (!v3)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_20;
  }

  v11 = 0;
  v12 = v1 + 32;
  do
  {
    if (v11 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_260E36150(v12, v0 + 136);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_0((v0 + 136), v13);
    if ((*(v14 + 8))(v13, v14))
    {
      sub_260E41B2C((v0 + 136), v0 + 96);
      sub_260E41B2C((v0 + 96), v0 + 56);
      goto LABEL_20;
    }

    ++v11;
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v12 += 40;
  }

  while (v3 != v11);
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  if (!*(v1 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_260E36150(*(v0 + 368) + 32, v0 + 56);
  if (*(v0 + 120))
  {
    sub_260E155E4(v0 + 96, &qword_27FE55378, &qword_260E70478);
  }

LABEL_20:
  if (!*(v0 + 80))
  {
    sub_260E155E4(v0 + 56, &qword_27FE55378, &qword_260E70478);

    v29 = sub_260E68E74();
    v30 = sub_260E69454();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 368);
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55[0] = v34;
      *v33 = 136315138;
      *(v0 + 256) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55380, &qword_260E70480);
      v35 = sub_260E69084();
      v37 = sub_260E43774(v35, v36, v55);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_260E02000, v29, v30, "Failed to find asset, received: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x2666F1EF0](v34, -1, -1);
      MEMORY[0x2666F1EF0](v33, -1, -1);
    }

    else
    {
    }

    goto LABEL_29;
  }

  sub_260E41B2C((v0 + 56), v0 + 16);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v15);
  if ((*(v16 + 8))(v15, v16))
  {
    sub_260E36150(v0 + 16, v0 + 216);
    v17 = sub_260E68E74();
    v18 = sub_260E69474();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 304);
      v19 = *(v0 + 312);
      v53 = *(v0 + 296);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55[0] = v22;
      *v21 = 136315138;
      v23 = *(v0 + 240);
      v24 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_0((v0 + 216), v23);
      (*(v24 + 16))(v23, v24);
      sub_260E194E8();
      v25 = sub_260E69804();
      v27 = v26;
      (*(v20 + 8))(v19, v53);
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v28 = sub_260E43774(v25, v27, v55);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_260E02000, v17, v18, "Found local asset: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2666F1EF0](v22, -1, -1);
      MEMORY[0x2666F1EF0](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    }

    sub_260E61334((v0 + 16), *(v0 + 264));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v49 = *(v0 + 8);
LABEL_32:

    return v49();
  }

  else
  {
    sub_260E36150(v0 + 16, v0 + 176);
    v38 = sub_260E68E74();
    v39 = sub_260E69474();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55[0] = v41;
      *v40 = 136315138;
      v42 = *(v0 + 200);
      v43 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_0((v0 + 176), v42);
      v44 = (*(v43 + 24))(v42, v43);
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      v47 = sub_260E43774(v44, v46, v55);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_260E02000, v38, v39, "Downloading asset: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2666F1EF0](v41, -1, -1);
      MEMORY[0x2666F1EF0](v40, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    }

    v1 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
    if (qword_27FE53E30 != -1)
    {
LABEL_42:
      swift_once();
    }

    v50 = qword_27FE55370;
    v51 = *(*(v0 + 272) + *(*(v0 + 320) + 20));
    v54 = (*(v12 + 32) + **(v12 + 32));
    v52 = swift_task_alloc();
    *(v0 + 376) = v52;
    *v52 = v0;
    v52[1] = sub_260E60E30;

    return v54(v50, (v51 & 1) == 0, v1, v12);
  }
}

uint64_t sub_260E60E30()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_260E612BC;
  }

  else
  {
    v4 = sub_260E60F5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E60F5C()
{
  sub_260E61334(v0 + 2, v0[33]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_260E60FFC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v2[50] = v6;
    *v6 = v3;
    v6[1] = sub_260E61188;
    v7 = v2[34];
    v8 = v2[33];

    return sub_260E60118(v8, v7, 1);
  }
}

uint64_t sub_260E61188()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260E612BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void sub_260E61334(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = sub_260E68904();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v35 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = [objc_opt_self() defaultManager];
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v13);
  (*(v12 + 16))(v13, v12);
  v14 = sub_260E68894();
  v36 = *(v4 + 8);
  v36(v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55388, &unk_260E70490);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_260E6BDD0;
  v16 = *MEMORY[0x277CBE868];
  v17 = *MEMORY[0x277CBE8A0];
  *(v15 + 32) = *MEMORY[0x277CBE868];
  *(v15 + 40) = v17;
  type metadata accessor for URLResourceKey(0);
  v18 = v16;
  v19 = v17;
  v20 = sub_260E691A4();

  v40[0] = 0;
  v21 = [v11 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:v20 options:7 error:v40];

  v22 = v40[0];
  if (v21)
  {
    v23 = sub_260E691B4();
    v24 = v22;

    if (*(v23 + 16))
    {
      v25 = v38;
      (*(v4 + 16))(v38, v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

      v26 = *(v4 + 32);
      v27 = v39;
      v26(v39, v25, v3);
      v28 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v29 = sub_260E68894();
      v30 = [v28 initWithURL_];

      if (v30)
      {

        v26(v37, v27, v3);
        return;
      }

      v36(v27, v3);
    }

    else
    {
    }

    sub_260E15590();
    v32 = swift_allocError();
    *v33 = xmmword_260E6F940;
    *(v33 + 16) = 2;
  }

  else
  {
    v31 = v40[0];
    v32 = sub_260E68854();
  }

  swift_willThrow();
  sub_260E15590();
  swift_allocError();
  *v34 = xmmword_260E6D930;
  *(v34 + 16) = 2;
  swift_willThrow();
}

unint64_t sub_260E61748(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54760, &qword_260E6D7F8);
    v2 = sub_260E69744();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_260E62D78(*(a1 + 48) + 40 * v12, v27);
        sub_260E1426C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_260E62D78(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_260E1426C(v25 + 8, v20);
        sub_260E155E4(v24, &qword_27FE553A0, &qword_260E704B0);
        v21 = v18;
        sub_260E145CC(v20, v22);
        v13 = v21;
        sub_260E145CC(v22, v23);
        sub_260E145CC(v23, &v21);
        result = sub_260E35BFC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_260E145CC(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_260E145CC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_260E155E4(v24, &qword_27FE553A0, &qword_260E704B0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_260E61A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_260E61A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v7 = v6;
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  MEMORY[0x28223BE20](v15);
  v17 = &aBlock[-1] - v16;
  aBlock[6] = a1;
  aBlock[7] = a2;
  aBlock[8] = a3;
  aBlock[9] = a4;
  v25 = 0;
  v18 = sub_260E4CAD4();
  if (v18)
  {
    v19 = v18;
    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = v19;
    v20[5] = v14;
    aBlock[4] = sub_260E62CA8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_260E61A24;
    aBlock[3] = &block_descriptor_4;
    v21 = _Block_copy(aBlock);

    v22 = v19;

    [v22 queryMetaData_];
    _Block_release(v21);
  }

  else
  {
    *v17 = xmmword_260E703E0;
    v17[16] = 2;
    swift_storeEnumTagMultiPayload();
    a5(v17);
    sub_260E155E4(v17, &qword_27FE54FD0, &qword_260E6FE68);
  }
}

void sub_260E61C78(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v8 = sub_260E68904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v69 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  MEMORY[0x28223BE20](v16);
  v77 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v69 - v23;
  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v25 = 10;
      goto LABEL_25;
    }

    if (a1 == 9)
    {
      v25 = 11;
      goto LABEL_25;
    }

LABEL_8:
    v25 = 1;
    goto LABEL_25;
  }

  if (a1)
  {
    if (a1 == 2)
    {
      v25 = 8;
LABEL_25:
      *v20 = v25;
      *(v20 + 1) = 0;
      v20[16] = 2;
      swift_storeEnumTagMultiPayload();
      a2(v20);
      v50 = v20;
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  v26 = [a4 results];
  if (v26)
  {
    v27 = v26;
    v73 = v24;
    sub_260E62CCC();
    v28 = sub_260E691B4();

    if (v28 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_260E69714())
    {
      v69 = v9;
      v70 = v8;
      v9 = v28 & 0xC000000000000001;
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2666F1180](0, v28);
      }

      else
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_51;
        }

        v30 = *(v28 + 32);
      }

      v31 = v30;
      v71 = a2;
      v72 = a3;
      *&aBlock = v30;
      if (i == 1)
      {
        a2 = v30;
LABEL_17:

        if ([a2 wasLocal])
        {
          v32 = [a2 getLocalFileUrl];
          v34 = v69;
          v33 = v70;
          if (v32)
          {
            v35 = v32;
            sub_260E688C4();

            v36 = v77;
            (*(v34 + 32))(v77, v15, v33);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_260E6BDB0;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_260E69644();

            strcpy(&aBlock, "Local asset: ");
            HIWORD(aBlock) = -4864;
            v38 = sub_260E68874();
            MEMORY[0x2666F0C00](v38);

            MEMORY[0x2666F0C00](41, 0xE100000000000000);
            v39 = aBlock;
            *(v37 + 56) = MEMORY[0x277D837D0];
            *(v37 + 32) = v39;
            sub_260E698E4();

            (*(v34 + 8))(v36, v33);
          }

          v40 = [a2 attributes];
          if (v40)
          {
            v41 = v40;
            v42 = sub_260E68F94();

            v43 = sub_260E61748(v42);

            if (v43)
            {
              v44 = [a2 getLocalFileUrl];
              if (v44)
              {
                v45 = v75;
                v46 = v44;
                sub_260E688C4();

                v47 = v76;
                (*(v34 + 32))(v76, v45, v33);
                v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD8, &qword_260E6FE70) + 48);
                v49 = v73;
                (*(v34 + 16))(v73, v47, v33);
                *(v49 + v48) = v43;
                swift_storeEnumTagMultiPayload();
                v71(v49);

                sub_260E155E4(v49, &qword_27FE54FD0, &qword_260E6FE68);
                (*(v34 + 8))(v47, v33);
                return;
              }
            }
          }

          v68 = v73;
          *v73 = xmmword_260E6D930;
          v68[16] = 2;
          swift_storeEnumTagMultiPayload();
          v71(v68);

          v50 = v68;
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_260E6BDB0;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_260E69644();

        *&aBlock = 0xD000000000000012;
        *(&aBlock + 1) = 0x8000000260E732D0;
        v54 = [a2 assetId];
        if (v54)
        {
          v55 = v54;
          v56 = sub_260E69024();
          v58 = v57;
        }

        else
        {
          v56 = 0;
          v58 = 0;
        }

        v83[0] = v56;
        v83[1] = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55398, &qword_260E704A8);
        v59 = sub_260E69574();
        v61 = v60;

        MEMORY[0x2666F0C00](v59, v61);

        v62 = aBlock;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 32) = v62;
        sub_260E698E4();

        if (qword_27FE53E30 == -1)
        {
LABEL_41:
          v63 = qword_27FE55370;
          v64 = swift_allocObject();
          v65 = v72;
          v64[2] = v71;
          v64[3] = v65;
          v64[4] = a2;
          v81 = sub_260E62D6C;
          v82 = v64;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v79 = sub_260E596E8;
          v80 = &block_descriptor_18;
          v66 = _Block_copy(&aBlock);

          v67 = a2;

          [v67 startDownload:v63 then:v66];

          _Block_release(v66);
          return;
        }

LABEL_51:
        swift_once();
        goto LABEL_41;
      }

      v74 = v28 & 0xFFFFFFFFFFFFFF8;
      a3 = 5;
      while (1)
      {
        v8 = a3 - 4;
        if (v9)
        {
          v51 = MEMORY[0x2666F1180](a3 - 4, v28);
        }

        else
        {
          if (v8 >= *(v74 + 16))
          {
            goto LABEL_45;
          }

          v51 = *(v28 + 8 * a3);
        }

        a2 = v51;
        v52 = __OFADD__(v8, 1);
        v8 = a3 - 3;
        if (v52)
        {
          break;
        }

        v83[0] = v51;
        if (sub_260E62568(&aBlock, v83))
        {

          *&aBlock = a2;
          v31 = a2;
        }

        else
        {

          a2 = v31;
        }

        ++a3;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

    v24 = v73;
  }

  *v24 = xmmword_260E703F0;
  v24[16] = 2;
  swift_storeEnumTagMultiPayload();
  a2(v24);
  v50 = v24;
LABEL_26:
  sub_260E155E4(v50, &qword_27FE54FD0, &qword_260E6FE68);
}

id sub_260E62568(id *a1, void **a2)
{
  v2 = *a2;
  result = [*a1 attributes];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = sub_260E68F94();

  v13 = sub_260E69024();
  sub_260E69604();
  if (!*(v5 + 16) || (v6 = sub_260E66018(v15), (v7 & 1) == 0))
  {
LABEL_10:

    sub_260E62DD4(v15);
    return 0;
  }

  sub_260E1426C(*(v5 + 56) + 32 * v6, v16);
  sub_260E62DD4(v15);

  if (swift_dynamicCast())
  {
    v8 = v13;
    result = [v2 attributes];
    if (result)
    {
      v9 = result;
      v10 = sub_260E68F94();

      v14 = sub_260E69024();
      sub_260E69604();
      if (*(v10 + 16))
      {
        v11 = sub_260E66018(v15);
        if (v12)
        {
          sub_260E1426C(*(v10 + 56) + 32 * v11, v16);
          sub_260E62DD4(v15);

          if (swift_dynamicCast())
          {
            return (v8 < v14);
          }

          return 0;
        }
      }

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_260E62768(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_260E68904();
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  *&v24 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v26 = &v45 - v25;
  if (a1 == 51)
  {
    v43 = 3;
    goto LABEL_13;
  }

  if (a1 == 12)
  {
    v43 = 10;
LABEL_13:
    *v8 = v43;
    *(v8 + 1) = 0;
    v8[16] = 2;
    swift_storeEnumTagMultiPayload();
    v48(v8);
    v44 = v8;
    return sub_260E155E4(v44, &qword_27FE54FD0, &qword_260E6FE68);
  }

  if (a1)
  {
    v43 = 2;
    goto LABEL_13;
  }

  v46 = v23;
  v47 = v22;
  v27 = [a4 getLocalFileUrl];
  if (v27)
  {
    v28 = v27;
    sub_260E688C4();

    (*(v46 + 32))(v26, v20, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_260E6BDB0;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_260E69644();

    v49 = 0xD000000000000012;
    v50 = 0x8000000260E732F0;
    v30 = sub_260E68874();
    MEMORY[0x2666F0C00](v30);

    MEMORY[0x2666F0C00](41, 0xE100000000000000);
    v31 = v49;
    v32 = v50;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 32) = v31;
    *(v29 + 40) = v32;
    sub_260E698E4();

    (*(v46 + 8))(v26, v47);
  }

  v33 = [a4 attributes];
  if (v33)
  {
    v34 = v33;
    v35 = sub_260E68F94();

    v36 = sub_260E61748(v35);

    if (v36)
    {
      v37 = [a4 getLocalFileUrl];
      if (v37)
      {
        v38 = v37;
        sub_260E688C4();

        v40 = v46;
        v39 = v47;
        (*(v46 + 32))(v17, v14, v47);
        v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD8, &qword_260E6FE70) + 48);
        (*(v40 + 16))(v11, v17, v39);
        *&v11[v41] = v36;
        swift_storeEnumTagMultiPayload();
        v48(v11);
        sub_260E155E4(v11, &qword_27FE54FD0, &qword_260E6FE68);
        return (*(v40 + 8))(v17, v39);
      }
    }
  }

  *v11 = xmmword_260E6D950;
  v11[16] = 2;
  swift_storeEnumTagMultiPayload();
  v48(v11);
  v44 = v11;
  return sub_260E155E4(v44, &qword_27FE54FD0, &qword_260E6FE68);
}

uint64_t sub_260E62C3C()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_260E62CCC()
{
  result = qword_27FE55390;
  if (!qword_27FE55390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE55390);
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_260E62E28(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_260E68FF4();
  if (qword_27FE53E30 != -1)
  {
    swift_once();
  }

  v6 = qword_27FE55370;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_260E62FBC;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_260E596E8;
  v9[3] = &block_descriptor_24;
  v8 = _Block_copy(v9);

  [v4 startCatalogDownload:v5 options:v6 then:v8];
  _Block_release(v8);
}

uint64_t sub_260E62F84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260E62FBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v4 = xmmword_260E6D950;
    v5 = 258;
  }

  else
  {
    v4 = 0uLL;
    v5 = 0;
  }

  return v2(&v4);
}

unint64_t HeadphoneHardwareModel.rawValue.getter()
{
  result = 0x3173646F50726941;
  switch(*v0)
  {
    case 5:
      result = 0x4D73646F50726941;
      break;
    case 6:
      result = 0x4D73646F50726941;
      break;
    case 7:
      result = 0x5073646F50726941;
      break;
    case 8:
      result = 0x5073646F50726941;
      break;
    case 9:
      result = 0x5073646F50726941;
      break;
    case 0xA:
      result = 0x7469467374616542;
      break;
    case 0xB:
      result = 0x6C6F537374616542;
      break;
    case 0xC:
      result = 0x6C6F537374616542;
      break;
    case 0xD:
      result = 0x7574537374616542;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0x6C6F537374616542;
      break;
    case 0x10:
      result = 0x6C69507374616542;
      break;
    case 0x11:
    case 0x12:
      result = 0xD000000000000012;
      break;
    case 0x13:
      result = 0xD000000000000010;
      break;
    case 0x14:
      result = 0x2C31587374616542;
      break;
    case 0x15:
      result = 0x2C32587374616542;
      break;
    case 0x16:
      result = 0x6165427265776F50;
      break;
    case 0x17:
      result = 0x6165627265776F50;
      break;
    case 0x18:
      result = 0xD000000000000010;
      break;
    case 0x19:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}