uint64_t sub_29EBFCE98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F10, &qword_29EC02D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBFCF18(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBC35A4;

  return sub_29EBFC510(a1, a2, v6);
}

uint64_t sub_29EBFCFE0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_29EBFD030(uint64_t *a1, int a2)
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

uint64_t sub_29EBFD078(uint64_t result, int a2, int a3)
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

uint64_t sub_29EBFD128()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29EBFD18C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29EC00828();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29EBFD24C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29EC00828();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s19ParentDirectoryCRUDVMa(uint64_t a1)
{
  result = qword_2A188A860;
  if (!qword_2A188A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EBFD33C(uint64_t a1)
{
  result = sub_29EBFD3C0();
  if (v2 <= 0x3F)
  {
    result = sub_29EC00828();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29EBFD3C0()
{
  result = qword_2A188A870;
  if (!qword_2A188A870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A188A870);
  }

  return result;
}

uint64_t sub_29EBFD40C()
{
  v0 = sub_29EC00988();
  __swift_allocate_value_buffer(v0, qword_2A188A848);
  v1 = __swift_project_value_buffer(v0, qword_2A188A848);
  if (qword_2A1889AD8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A188E680);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_29EBFD4D4()
{
  v40[1] = *MEMORY[0x29EDCA608];
  v2 = _s19ParentDirectoryCRUDVMa(0);
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v37 - v6;
  v39 = 0;
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  v38 = v0;
  sub_29EC00818();
  v10 = sub_29EC00AB8();

  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v39];

  if (v11)
  {
    if (v39)
    {
      return;
    }

    if (qword_2A1889B18 != -1)
    {
      swift_once();
    }

    v12 = sub_29EC00988();
    __swift_project_value_buffer(v12, qword_2A188A848);
    sub_29EBF233C(v38, v7);
    v13 = sub_29EC00968();
    v14 = sub_29EC00EC8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40[0] = v16;
      *v15 = 136315138;
      v17 = sub_29EC00818();
      v19 = v18;
      sub_29EBFDD74(v7);
      v20 = sub_29EBD24D0(v17, v19, v40);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_29EBB9000, v13, v14, "PersonalizationAssetManager.parentDirectory is a file {path: %s}", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x29EDAC460](v16, -1, -1);
      MEMORY[0x29EDAC460](v15, -1, -1);
    }

    else
    {

      sub_29EBFDD74(v7);
    }

    sub_29EBBD72C();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 2;
  }

  else
  {
    if (qword_2A1889B18 != -1)
    {
      swift_once();
    }

    v21 = sub_29EC00988();
    __swift_project_value_buffer(v21, qword_2A188A848);
    sub_29EBF233C(v38, v5);
    v22 = sub_29EC00968();
    v23 = sub_29EC00ED8();
    v24 = os_log_type_enabled(v22, v23);
    v37[1] = v1;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v25 = 136315138;
      v27 = sub_29EC00818();
      v29 = v28;
      sub_29EBFDD74(v5);
      v30 = sub_29EBD24D0(v27, v29, v40);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_29EBB9000, v22, v23, "Creating directory: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x29EDAC460](v26, -1, -1);
      MEMORY[0x29EDAC460](v25, -1, -1);
    }

    else
    {

      sub_29EBFDD74(v5);
    }

    v31 = [v8 defaultManager];
    v32 = sub_29EC007C8();
    v40[0] = 0;
    v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v40];

    if (v33)
    {
      v34 = v40[0];
      return;
    }

    v35 = v40[0];
    sub_29EC00788();
  }

  swift_willThrow();
}

uint64_t sub_29EBFD980(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EC00828();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v21 - v10;
  _s19ParentDirectoryCRUDVMa(0);
  v21[0] = a1;
  v21[1] = a2;
  sub_29EC007E8();
  v12 = *v2;
  sub_29EC00818();
  v13 = sub_29EC00AB8();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    sub_29EC007E8();
    v15 = v21[3];
    v16 = sub_29EC00838();
    if (v15)
    {
      v17 = *(v6 + 8);
      v17(v9, v5);
      return (v17)(v11, v5);
    }

    else
    {
      v19 = *(v6 + 8);
      v20 = v16;
      v19(v9, v5);
      v19(v11, v5);
      return v20;
    }
  }

  else
  {
    (*(v6 + 8))(v11, v5);
    return 0;
  }
}

uint64_t sub_29EBFDB90(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x29EDCA608];
  v3 = sub_29EC00828();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19ParentDirectoryCRUDVMa(0);
  sub_29EC007E8();
  v7 = *v2;
  sub_29EC00818();
  v8 = sub_29EC00AB8();

  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
    v10 = sub_29EC007C8();
    v16[0] = 0;
    v11 = [v7 removeItemAtURL:v10 error:v16];

    if (v11)
    {
      v12 = *(v4 + 8);
      v13 = v16[0];
      return v12(v6, v3);
    }

    v15 = v16[0];
    sub_29EC00788();

    swift_willThrow();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29EBFDD74(uint64_t a1)
{
  v2 = _s19ParentDirectoryCRUDVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29EBFDDEC()
{
  result = qword_2A188A878;
  if (!qword_2A188A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A878);
  }

  return result;
}

uint64_t _s14ProductKitCore0A5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_29EC011F8();
      sub_29EBFE3C0(v6, v5, 0);
      sub_29EBFE3C0(v3, v2, 0);
      sub_29EBF2B0C(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_24;
    }

    sub_29EBFE3C0(v17, v2, 0);
    sub_29EBFE3C0(v3, v2, 0);
    sub_29EBF2B0C(v3, v2, 0);
    v16 = v3;
    v19 = v2;
    v20 = 0;
LABEL_136:
    sub_29EBF2B0C(v16, v19, v20);
    return 1;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v13 = 1;
        sub_29EBF2B0C(1, 0, 2u);
        return v13;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 2;
        goto LABEL_135;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 3;
        goto LABEL_135;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 4;
        goto LABEL_135;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 5;
        goto LABEL_135;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 6;
        goto LABEL_135;
      case 7:
        if (v7 != 2 || v6 != 7 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 7;
        goto LABEL_135;
      case 8:
        if (v7 != 2 || v6 != 8 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 8;
        goto LABEL_135;
      case 9:
        if (v7 != 2 || v6 != 9 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 9;
        goto LABEL_135;
      case 10:
        if (v7 != 2 || v6 != 10 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 10;
        goto LABEL_135;
      case 11:
        if (v7 != 2 || v6 != 11 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 11;
        goto LABEL_135;
      case 12:
        if (v7 != 2 || v6 != 12 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 12;
        goto LABEL_135;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_10;
        }

        sub_29EBF2B0C(*a1, v2, 2u);
        v16 = 0;
LABEL_135:
        v19 = 0;
        v20 = 2;
        break;
    }

    goto LABEL_136;
  }

  if (v7 != 1)
  {
LABEL_10:
    sub_29EBFE3C0(*a2, a2[1], v7);
    sub_29EBFE3C0(v3, v2, v4);
    sub_29EBF2B0C(v3, v2, v4);
    sub_29EBF2B0C(v6, v5, v7);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_29EBFE3C0(*a1, v2, 1u);
    sub_29EBFE3C0(v3, v2, 1u);
    sub_29EBF2B0C(v3, v2, 1u);
    sub_29EBF2B0C(v3, v2, 1u);
    return v13;
  }

  v9 = sub_29EC011F8();
  sub_29EBFE3C0(v6, v5, 1u);
  sub_29EBFE3C0(v3, v2, 1u);
  sub_29EBF2B0C(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_24:
  sub_29EBF2B0C(v10, v11, v12);
  return v9 & 1;
}

uint64_t get_enum_tag_for_layout_string_14ProductKitCore0A5ErrorO(uint64_t a1)
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

uint64_t sub_29EBFE30C(uint64_t a1, unsigned int a2)
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

uint64_t sub_29EBFE354(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29EBFE398(uint64_t result, unsigned int a2)
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

uint64_t sub_29EBFE3C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_29EBFE3D8(unint64_t result, unint64_t a2)
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
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
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
          v21 = v27;
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
          v10 = v27 + 1;
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
        result = sub_29EC01078();
        v3 = v26;
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
          v28 = v3;
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

  v6 = sub_29EBFF2E4(result, a2, 10);
  v24 = v25;
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

uint64_t sub_29EBFE6D8()
{
  v0 = sub_29EC00988();
  __swift_allocate_value_buffer(v0, qword_2A188A880);
  v1 = __swift_project_value_buffer(v0, qword_2A188A880);
  if (qword_2A1889AD8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A188E680);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ProductKitCore::SemanticVersion __swiftcall SemanticVersion.init(_:_:_:)(Swift::Int a1, Swift::Int a2, Swift::Int a3)
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
  v5._countAndFlagsBits = sub_29EC01028();
  result = SemanticVersion.init(_:)(v5);
  if (v10)
  {
    sub_29EC01018();

    v7 = sub_29EC01028();
    MEMORY[0x29EDAB670](v7);

    result = sub_29EC010D8();
    __break(1u);
  }

  else
  {
    *a4 = v8;
    *(a4 + 16) = v9;
  }

  return result;
}

ProductKitCore::SemanticVersion_optional __swiftcall SemanticVersion.init(_:)(Swift::String a1)
{
  v2 = v1;
  v41 = a1;
  sub_29EBCF030();
  v3 = sub_29EC00F78();

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
    v41._countAndFlagsBits = v3[4];
    v41._object = (v8 & 0xFFFFFFFFFFFFFFLL);
    if (v7 == 43)
    {
      if (v9)
      {
        v13 = v9 - 1;
        if (v9 != 1)
        {
          v7 = 0;
          v23 = &v41._countAndFlagsBits + 1;
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
        v28 = &v41;
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
          v17 = &v41._countAndFlagsBits + 1;
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

  for (i = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_29EC01078())
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

      v7 = sub_29EBFF2E4(v7, v8, 10);
      v31 = v40;
    }

LABEL_70:
    v33 = v3[6];
    v8 = v3[7];

    v34 = sub_29EBFE3D8(v33, v8);
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

  i = sub_29EBFE3D8(v38, v39);
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
    sub_29EC01018();
    MEMORY[0x29EDAB670](0xD000000000000018, 0x800000029EC085E0);
    if (qword_2A1889B30 != -1)
    {
      swift_once();
    }

    v3 = SemanticVersion.description.getter();
    MEMORY[0x29EDAB670](v3);

    MEMORY[0x29EDAB670](0xD000000000000021, 0x800000029EC08600);
    MEMORY[0x29EDAB670](countAndFlagsBits, object);
    MEMORY[0x29EDAB670](0xD000000000000035, 0x800000029EC08630);
    sub_29EC010D8();
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

  if (qword_2A1889B20 != -1)
  {
    swift_once();
  }

  v8 = sub_29EC00988();
  __swift_project_value_buffer(v8, qword_2A188A880);

  v9 = sub_29EC00968();
  v10 = sub_29EC00EB8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    if (qword_2A1889B30 != -1)
    {
      swift_once();
    }

    v20 = xmmword_2A188A9B8;
    v21 = qword_2A188A9C8;
    v13 = SemanticVersion.description.getter();
    v15 = sub_29EBD24D0(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_29EBD24D0(countAndFlagsBits, object, &v19);
    _os_log_impl(&dword_29EBB9000, v9, v10, "### Failed ProductKit Runtime Version check {SDKVersion: %s, RuntimeVersion: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v12, -1, -1);
    MEMORY[0x29EDAC460](v11, -1, -1);
  }

  return 0;
}

uint64_t SemanticVersion.description.getter()
{
  v3 = sub_29EC011D8();
  MEMORY[0x29EDAB670](46, 0xE100000000000000);
  v0 = sub_29EC011D8();
  MEMORY[0x29EDAB670](v0);

  MEMORY[0x29EDAB670](46, 0xE100000000000000);
  v1 = sub_29EC011D8();
  MEMORY[0x29EDAB670](v1);

  return v3;
}

BOOL sub_29EBFF17C(void *a1, void *a2)
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

BOOL sub_29EBFF1AC(void *a1, void *a2)
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

BOOL sub_29EBFF1DC(void *a1, void *a2)
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

BOOL sub_29EBFF20C(void *a1, void *a2)
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

void *sub_29EBFF270(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889FB0, &unk_29EC03520);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_29EBFF2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_29EC00C28();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_29EBFF938(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_29EC01078();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_29EBFF874()
{
  result = qword_2A188A898;
  if (!qword_2A188A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A898);
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

uint64_t getEnumTagSinglePayload for SemanticVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SemanticVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_29EBFF938(uint64_t a1, unint64_t a2)
{
  v2 = sub_29EC00C38();
  v6 = sub_29EBFF9B8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_29EBFF9B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_29EC00F68();
    if (!v9 || (v10 = v9, v11 = sub_29EBFF270(v9, 0), v12 = sub_29EBFFB10(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_29EC00B78();

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
      return sub_29EC00B78();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_29EC01078();
LABEL_4:

  return sub_29EC00B78();
}

unint64_t sub_29EBFFB10(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_29EBFFD30(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_29EC00BE8();
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
          result = sub_29EC01078();
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

    result = sub_29EBFFD30(v12, a6, a7);
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

    result = sub_29EC00BC8();
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

unint64_t sub_29EBFFD30(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_29EC00BF8();
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
    v5 = MEMORY[0x29EDAB6A0](15, a1 >> 16);
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

uint64_t sub_29EBFFDCC(unint64_t a1)
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
    return MEMORY[0x2A1C73BA0](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_29EBFFEB4;
  a1 = v4;

  return MEMORY[0x2A1C73BA0](a1);
}

uint64_t sub_29EBFFEB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29EBFFFA8()
{
  v0 = sub_29EC00988();
  __swift_allocate_value_buffer(v0, qword_2A188A8A0);
  v1 = __swift_project_value_buffer(v0, qword_2A188A8A0);
  if (qword_2A1889AD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A188E668);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_29EC00070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_29EC000AC(uint64_t a1, int a2)
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

uint64_t sub_29EC000F4(uint64_t result, int a2, int a3)
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

uint64_t sub_29EC0014C(uint64_t a1)
{
  sub_29EC00F58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_29EC001C4(_DWORD *a1, unsigned int a2, uint64_t a3)
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

void sub_29EC00320(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

double ProductKitVersion.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_2A1889B30 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_2A188A9C8;
  result = *&xmmword_2A188A9B8;
  *a1 = xmmword_2A188A9B8;
  *(a1 + 16) = v1;
  return result;
}