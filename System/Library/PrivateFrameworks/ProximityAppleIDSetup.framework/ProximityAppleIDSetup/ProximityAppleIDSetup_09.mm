uint64_t sub_261083D98(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[8 * v11] <= __src)
    {
      v22 = a2;
      v23 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v23;
      a2 = v22;
    }

    v38 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v36 = v5;
LABEL_27:
        v37 = a2;
        v24 = a2 - 8;
        v4 -= 8;
        v25 = v14;
        v26 = v14;
        do
        {
          v27 = v4 + 8;
          v28 = *(v26 - 1);
          v26 -= 8;
          v29 = v24;
          v30 = *v24;
          v31 = *(v28 + 16);

          v32 = [v31 age];
          v33 = [*(v30 + 16) age];

          if (v33 < v32)
          {
            v34 = v29;
            if (v27 != v37)
            {
              *v4 = *v29;
            }

            v13 = v38;
            v14 = v25;
            if (v25 <= v38 || (a2 = v34, v34 <= v36))
            {
              a2 = v34;
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          if (v27 != v25)
          {
            *v4 = *v26;
          }

          v4 -= 8;
          v25 = v26;
          v13 = v38;
          v24 = v29;
        }

        while (v26 > v38);
        v14 = v26;
        a2 = v37;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[8 * v8];
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v13;
        v17 = *(*v15 + 16);

        v18 = [v17 age];
        v19 = [*(v16 + 16) age];

        if (v19 >= v18)
        {
          break;
        }

        v20 = v15;
        v21 = v5 == v15;
        v15 += 8;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        v5 += 8;
        if (v13 >= v14 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v5 == v13;
      v13 += 8;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    a2 = v5;
  }

LABEL_39:
  if (a2 != v13 || a2 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

uint64_t sub_261084084(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2610BD0E4();
  }

  return sub_2610BCFD4();
}

void *sub_2610840E8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2610BD0E4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2610833D0(v3, 0);
  sub_26108417C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26108417C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2610BD0E4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2610BD0E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2610865EC(&qword_27FE664D8, &qword_27FE664D0, &unk_2610CD678);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664D0, &unk_2610CD678);
            v9 = sub_260FDC4C0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PASFamilyMember();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26108430C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2610BD0E4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2610BD0E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2610865EC(&unk_27FE66520, &qword_27FE66110, &qword_2610CC1C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66110, &qword_2610CC1C0);
            v9 = sub_260FDC548(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PASPickerPresentable();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26108449C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_261084590;

  return v5(v2 + 16);
}

uint64_t sub_261084590()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2610846C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;

  return MEMORY[0x2822009F8](sub_261084754, 0, 0);
}

uint64_t sub_261084754()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_2610BC7B4();
  *(v0 + 184) = __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 141558274;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberImageProvider fetchImage for %{mask.hash}@", v7, 0x16u);
    sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v10 = *(v0 + 160);

  if ([v10 isEnabledForDataclass_])
  {
    v11 = *(v0 + 176);
    v12 = *MEMORY[0x277CBD158];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E0, &unk_2610CC230);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2610C23D0;
    *(v13 + 32) = v12;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66508, &qword_2610CD6F0);
    v15 = sub_2610BCB24();

    *(v0 + 80) = 0;
    v16 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    v17 = *(v0 + 80);
    if (v16)
    {
      v18 = v17;
      v19 = v16;
      v20 = sub_2610BC794();
      v21 = sub_2610BCD54();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 141558274;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2112;
        *(v22 + 14) = v19;
        *v23 = v16;
        v24 = v19;
        _os_log_impl(&dword_260F97000, v20, v21, "PASFamilyMemberPickerDataSource fetchImage got contact %{mask.hash}@", v22, 0x16u);
        sub_260FA9980(v23, &qword_27FE63FF0, &unk_2610BFDA0);
        MEMORY[0x2666F8720](v23, -1, -1);
        MEMORY[0x2666F8720](v22, -1, -1);
      }

      v25 = [v19 thumbnailImageData];
      if (v25)
      {
        v26 = v25;
        v27 = sub_2610BC534();
        v29 = v28;

        v30 = *(v0 + 8);

        return v30(v27, v29);
      }
    }

    else
    {
      v32 = v17;
      v33 = sub_2610BC4F4();

      swift_willThrow();
    }
  }

  v34 = sub_2610BC794();
  v35 = sub_2610BCD64();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_260F97000, v34, v35, "PASFamilyMemberImageProvider fetchImage no contact image. Fallback to AAMyPhotoRequest", v36, 2u);
    MEMORY[0x2666F8720](v36, -1, -1);
  }

  v37 = *(v0 + 160);

  v38 = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  *(v0 + 192) = v38;
  if (v38)
  {
    v39 = v38;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_261084E58;
    v40 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664F8, &qword_2610CD6D8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2610803C0;
    *(v0 + 104) = &block_descriptor_42;
    *(v0 + 112) = v40;
    [v39 performRequestWithHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v41 = *(v0 + 160);
    v42 = sub_2610BC794();
    v43 = sub_2610BCD64();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 160);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 141558274;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2112;
      *(v45 + 14) = v44;
      *v46 = v37;
      v47 = v44;
      _os_log_impl(&dword_260F97000, v42, v43, "PASFamilyMemberImageProvider failed to fetchImage for account %{mask.hash}@. A request could not be made.", v45, 0x16u);
      sub_260FA9980(v46, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v46, -1, -1);
      MEMORY[0x2666F8720](v45, -1, -1);
    }

    sub_261085C0C();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_261084E58()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_26108538C;
  }

  else
  {
    v2 = sub_261084F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261084F94()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = v0[18];
  v1 = v0[19];
  if (v1 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    v5 = v1;
    v6 = [v4 photoData];
    if (v6)
    {
      v7 = v6;
      v8 = v0[24];
      v9 = sub_2610BC534();
      v11 = v10;
    }

    else
    {
      v31 = sub_2610BC794();
      v32 = sub_2610BCD64();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_260F97000, v31, v32, "PASFamilyMemberImageProvider fetchImage no photo data in AAPhotoResponse. Fallback to monogram", v33, 2u);
        MEMORY[0x2666F8720](v33, -1, -1);
      }

      v7 = v0[24];
      v35 = v0[20];
      v34 = v0[21];

      v36 = v34[3];
      v37 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v36);
      v9 = (*(v37 + 8))(v35, v36, v37);
      v11 = v38;
      v8 = v5;
    }

    v39 = v0[1];

    return v39(v9, v11);
  }

  else
  {
    v12 = v0[20];
    v13 = v2;
    v14 = v12;
    v15 = v1;
    v16 = sub_2610BC794();
    v17 = sub_2610BCD64();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[20];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v19 = 141558786;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v18;
      *v20 = v18;
      *(v19 + 22) = 2160;
      *(v19 + 24) = 1752392040;
      *(v19 + 32) = 2080;
      v0[10] = v1;
      v22 = v18;
      v23 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66500, &unk_2610CD6E0);
      v24 = sub_2610BCA34();
      v26 = sub_260FA5970(v24, v25, v40);

      *(v19 + 34) = v26;
      _os_log_impl(&dword_260F97000, v16, v17, "PASFamilyMemberImageProvider failed to fetchImage for account %{mask.hash}@. the response was not in the correct format: %{mask.hash}s", v19, 0x2Au);
      sub_260FA9980(v20, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v27 = v0[24];
    sub_261085C0C();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_26108538C(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_261085448()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = sub_2610BC7B4();
  *(v0 + 176) = __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 141558274;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberImageProvider fetchImage for %{mask.hash}@", v7, 0x16u);
    sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v10 = *(v0 + 168);

  v11 = [v10 hashedDSID];
  v12 = [objc_allocWithZone(MEMORY[0x277D08290]) initWithFamilyMemberHashedDSID:v11 size:1 localFallback:1];
  *(v0 + 184) = v12;

  if (v12)
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_261085834;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66510, &qword_2610CD6F8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26107FF38;
    *(v0 + 104) = &block_descriptor_46;
    *(v0 + 112) = v13;
    [v12 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 168);
    v15 = sub_2610BC794();
    v16 = sub_2610BCD64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 168);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 141558274;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_260F97000, v15, v16, "PASFamilyMemberImageProvider failed to fetchImage for family member%{mask.hash}@. A request could not be made.", v18, 0x16u);
      sub_260FA9980(v19, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v19, -1, -1);
      MEMORY[0x2666F8720](v18, -1, -1);
    }

    sub_261085C0C();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_261085834()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_261085B24;
  }

  else
  {
    v2 = sub_261085944;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261085944()
{
  v1 = *(v0 + 152);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 168);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD64();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 168);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 141558274;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2112;
      *(v6 + 14) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&dword_260F97000, v3, v4, "PASFamilyMemberPickerDataSource failed to fetchImage for %{mask.hash}@. no image data was returned.", v6, 0x16u);
      sub_260FA9980(v7, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v7, -1, -1);
      MEMORY[0x2666F8720](v6, -1, -1);
    }

    v9 = *(v0 + 184);

    sub_261085C0C();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 144);

    v14 = *(v0 + 8);

    return v14(v13, v1);
  }
}

uint64_t sub_261085B24(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_261085BC0()
{
  result = qword_27FE64000;
  if (!qword_27FE64000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE64000);
  }

  return result;
}

unint64_t sub_261085C0C()
{
  result = qword_27FE664A0;
  if (!qword_27FE664A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664A0);
  }

  return result;
}

unint64_t sub_261085C64()
{
  result = qword_27FE664B0;
  if (!qword_27FE664B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664B0);
  }

  return result;
}

unint64_t sub_261085CB8(void *a1)
{
  a1[1] = sub_261085CF0();
  a1[2] = sub_261085D44();
  result = sub_261085D98();
  a1[3] = result;
  return result;
}

unint64_t sub_261085CF0()
{
  result = qword_27FE664B8;
  if (!qword_27FE664B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664B8);
  }

  return result;
}

unint64_t sub_261085D44()
{
  result = qword_27FE664C0;
  if (!qword_27FE664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664C0);
  }

  return result;
}

unint64_t sub_261085D98()
{
  result = qword_27FE664C8;
  if (!qword_27FE664C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664C8);
  }

  return result;
}

uint64_t dispatch thunk of PASFamilyMemberImageProviderProtocol.fetchImage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBDE14;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASFamilyMemberImageProviderProtocol.fetchImage(for:monogramMaker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2610378A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASFamilyMemberPickerDataSourceProtocol.fetchFamilyMembers()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBDE14;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASFamilyMemberPickerDataSourceProtocol.fetchLocalAccount(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBD298;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_261086314(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26108635C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2610863C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FBF860;

  return sub_261082578(a1, a2, v7, v6);
}

uint64_t sub_261086474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_261082DD0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_261086534(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return sub_26108449C(a1, v4);
}

uint64_t sub_2610865EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_261086680@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults__messageSessionProvider);
  swift_beginAccess();
  sub_260FF518C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_260FF51FC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t PASFlowStepSendSignInResults.prepareForPresentation()()
{
  v1[32] = v0;
  v1[33] = sub_2610BCC74();
  v1[34] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[35] = v2;
  *v2 = v1;
  v2[1] = sub_26108684C;

  return sub_26104582C();
}

uint64_t sub_26108684C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v5 = sub_261087474;
  }

  else
  {
    *(v2 + 296) = v3;
    *(v2 + 304) = v4;
    v5 = sub_2610869B0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2610869B0()
{
  sub_261086680((v0 + 18));
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_261086AE8;

  return v5(v0 + 23, v1, v2);
}

uint64_t sub_261086AE8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_2610874D8;
  }

  else
  {
    v5 = sub_261086C24;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261086C24()
{
  v1 = v0[32];
  v2 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 2;
  v4 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *(inited + 40) = v4;

  v5 = sub_260FA8D08(inited);
  v0[41] = v5;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
  v6 = swift_task_alloc();
  v0[42] = v6;
  *v6 = v0;
  v6[1] = sub_261086DA4;
  v7 = MEMORY[0x277D839B0];

  return sub_260FAECF0(v0 + 137, 3, 0, 0, 1, v5, v2, v7);
}

uint64_t sub_261086DA4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_261087888;
  }

  else
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_261086EC0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261086EC0()
{
  v1 = *(v0 + 137);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  if (v1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "PASFlowStepSendSignInResults sent results to source device";
LABEL_10:
      _os_log_impl(&dword_260F97000, v3, v4, v6, v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "PASFlowStepSendSignInResults failed to send to source device";
      goto LABEL_10;
    }
  }

  v8 = *(v0 + 256) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v10 = *(v0 + 256);
    v11 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    sub_260FA99E0(v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account, v0 + 88);
    *(v0 + 128) = *(v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);
    *(v0 + 136) = 0;
    v13 = *(v11 + 24);

    v18 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 360) = v14;
    *v14 = v0;
    v14[1] = sub_261087250;

    return v18(v0 + 88, ObjectType, v11);
  }

  else
  {

    v16 = *(v0 + 256);
    sub_260FC3450();
    swift_allocError();
    *v17 = xmmword_2610CD700;
    *(v17 + 16) = &unk_2610CD728;
    *(v17 + 24) = v16;
    *(v17 + 32) = 0;
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_261087250()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 88, &qword_27FE65690, qword_2610C7520);
  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_2610873A8, v3, v2);
}

uint64_t sub_2610873A8()
{

  v1 = *(v0 + 256);
  sub_260FC3450();
  swift_allocError();
  *v2 = xmmword_2610CD700;
  *(v2 + 16) = &unk_2610CD728;
  *(v2 + 24) = v1;
  *(v2 + 32) = 0;
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_261087474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610874D8()
{
  v25 = v0;
  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    *(v0 + 248) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v24);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepSendSignInResults failed to send to source\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 256) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v14 = *(v0 + 256);
    v15 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    sub_260FA99E0(v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account, v0 + 88);
    *(v0 + 128) = *(v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);
    *(v0 + 136) = 0;
    v17 = *(v15 + 24);

    v22 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 360) = v18;
    *v18 = v0;
    v18[1] = sub_261087250;

    return v22(v0 + 88, ObjectType, v15);
  }

  else
  {

    v20 = *(v0 + 256);
    sub_260FC3450();
    swift_allocError();
    *v21 = xmmword_2610CD700;
    *(v21 + 16) = &unk_2610CD728;
    *(v21 + 24) = v20;
    *(v21 + 32) = 0;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_261087888()
{
  v25 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  v1 = *(v0 + 344);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    *(v0 + 248) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v24);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepSendSignInResults failed to send to source\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 256) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v14 = *(v0 + 256);
    v15 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    sub_260FA99E0(v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account, v0 + 88);
    *(v0 + 128) = *(v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);
    *(v0 + 136) = 0;
    v17 = *(v15 + 24);

    v22 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 360) = v18;
    *v18 = v0;
    v18[1] = sub_261087250;

    return v22(v0 + 88, ObjectType, v15);
  }

  else
  {

    v20 = *(v0 + 256);
    sub_260FC3450();
    swift_allocError();
    *v21 = xmmword_2610CD700;
    *(v21 + 16) = &unk_2610CD728;
    *(v21 + 24) = v20;
    *(v21 + 32) = 0;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_261087C48()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_260FC77D0(v0);
}

uint64_t sub_261087D08()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account));
}

uint64_t PASFlowStepSendSignInResults.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account));

  return v0;
}

uint64_t PASFlowStepSendSignInResults.__deallocating_deinit()
{
  PASFlowStepSendSignInResults.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PASFlowStepSendSignInResults(uint64_t a1)
{
  result = qword_27FE66560;
  if (!qword_27FE66560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PASFlowStepConnectPeer.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v4 + v5) = v6;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v4 + v7) = v8;
  v9 = v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  *v9 = 0;
  *(v9 + 8) = -1;
  v10 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_261088064()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9D764();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26108813C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC8FEC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_261088268()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610882EC(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261088348@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2610883C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x676E697473697865, 0xEF746E756F636341);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_2610884C8(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x676E697473697865, 0xEF746E756F636341);
  return v2;
}

uint64_t sub_261088534(uint64_t a1)
{
  v2 = sub_26108A894();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261088570(uint64_t a1)
{
  v2 = sub_26108A894();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepConnectPeer.prepareForPresentation()()
{
  v1[27] = v0;
  v1[28] = sub_2610BCC74();
  v1[29] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[30] = v2;
  *v2 = v1;
  v2[1] = sub_26108865C;

  return sub_26104582C();
}

uint64_t sub_26108865C()
{
  *(*v1 + 248) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_261088C54;
  }

  else
  {
    v4 = sub_2610887B4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2610887B4()
{
  v33 = v0;

  sub_26108813C(v0 + 56);
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
  (*(v2 + 8))(v1, v2);
  if (*(v0 + 120))
  {
    sub_260F98E14((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v3 = sub_2610BC7B4();
    __swift_project_value_buffer(v3, qword_27FE65900);
    sub_260FA99E0(v0 + 16, v0 + 136);
    v4 = sub_2610BC794();
    v5 = sub_2610BCD54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32[0] = v7;
      *v6 = 141558274;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2080;
      v8 = *(v0 + 160);
      v9 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v8);
      v10 = (*(v9 + 32))(v8, v9);
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
      v14 = sub_260FA5970(v12, v13, v32);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepConnectPeer prepareForPresentation targetAccount %{mask.hash}s exists", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x2666F8720](v7, -1, -1);
      MEMORY[0x2666F8720](v6, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    }

    sub_260FA99E0(v0 + 16, v0 + 176);
    v17 = sub_2610BC794();
    v18 = sub_2610BCD54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32[0] = v20;
      *v19 = 141558274;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2080;
      v21 = *(v0 + 200);
      v22 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v21);
      v23 = (*(v22 + 56))(v21, v22);
      if (v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v27 = sub_260FA5970(v25, v26, v32);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_260F97000, v17, v18, "PASFlowStepConnectPeer prepareForPresentation targetAccount %{mask.hash}s already exists", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x2666F8720](v20, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    }

    v28 = *(v0 + 216);
    sub_260FC3450();
    swift_allocError();
    *v29 = 0xD000000000000015;
    *(v29 + 8) = 0x80000002610D5BE0;
    *(v29 + 16) = &unk_2610CD7C8;
    *(v29 + 24) = v28;
    *(v29 + 32) = 0;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    v15 = *(v0 + 216);
    sub_260FA9980(v0 + 96, &unk_27FE656B0, &unk_2610BFCE0);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    sub_260FC3450();
    swift_allocError();
    *v16 = 0xD00000000000002CLL;
    *(v16 + 8) = 0x80000002610D5BB0;
    *(v16 + 16) = &unk_2610CD7B8;
    *(v16 + 24) = v15;
    *(v16 + 32) = 0;
    swift_willThrow();
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_261088C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261088CB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2610BCC74();
  *(v1 + 24) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261088D50, v3, v2);
}

uint64_t sub_261088D50()
{
  v1 = *(v0 + 16);

  sub_26108A4E4();
  v2 = swift_allocError();
  v3 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  v4 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
  *v3 = v2;
  v5 = *(v3 + 8);
  *(v3 + 8) = 1;
  sub_260FEBBC8(v4, v5);
  sub_2610439BC();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_261088DF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2610BCC74();
  *(v1 + 24) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261088E90, v3, v2);
}

uint64_t sub_261088E90()
{

  sub_261088EF4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261088EF4()
{
  v1 = v0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE665A8, &unk_2610CD850);
  MEMORY[0x28223BE20](v27, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  MEMORY[0x28223BE20](v3, v4);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE665B0, &unk_2610CD860);
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;
  v14[5] = 60;
  v14[6] = &unk_2610CD878;
  v14[7] = v1;
  swift_retain_n();
  v15 = sub_261042D5C(0, 0, v12, &unk_2610CD880, v14);
  sub_261088064();
  v17 = v16;
  ObjectType = swift_getObjectType();
  (*(v17 + 48))(ObjectType, v17);
  swift_unknownObjectRelease();
  sub_26108813C(v29);
  v20 = v30;
  v19 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v19 + 32))(v20, v19);
  v21 = MEMORY[0x277CBCEC8];
  sub_260FDD378(&qword_27FE646E0, &qword_27FE646C8, &qword_2610C24F0, MEMORY[0x277CBCEC8]);
  sub_260FDD378(&qword_27FE665B8, &qword_27FE665A8, &unk_2610CD850, v21);
  sub_2610BC7C4();
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26108A6A4;
  *(v23 + 24) = v22;
  sub_260FDD378(&qword_27FE665C0, &qword_27FE665B0, &unk_2610CD860, MEMORY[0x277CBCAF0]);

  v24 = v28;
  sub_2610BC8A4();

  (*(v5 + 8))(v8, v24);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();
}

uint64_t sub_261089374(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261089410, 0, 0);
}

uint64_t sub_261089410()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepConnectPeer waitForPeerToBecomeReady timeout.\n%{public}@", v7, 0xCu);
    sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v12 = v0[3];
  v11 = v0[4];

  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_2610BCC74();

  v14 = sub_2610BCC64();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  sub_261042434(0, 0, v11, &unk_2610CD8A8, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_261089654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a4;
  sub_2610BCC74();
  *(v4 + 104) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610896EC, v6, v5);
}

uint64_t sub_2610896EC()
{

  sub_261088064();
  v2 = v1;
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(ObjectType, v2);
  swift_unknownObjectRelease();
  v4 = v0[5];
  sub_260FA9980((v0 + 2), &qword_27FE63850, qword_2610CC240);
  if (v4 && (sub_26108813C((v0 + 2)), v5 = v0[5], v6 = v0[6], __swift_project_boxed_opaque_existential_1(v0 + 2, v5), (*(v6 + 16))(v5, v6), v7 = v0[10], sub_260FA9980((v0 + 7), &unk_27FE641F0, qword_2610C0210), __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2), v7))
  {
    v8 = v0[12] + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
    v9 = *v8;
    *v8 = 1;
    v10 = *(v8 + 8);
    *(v8 + 8) = 0;
    sub_260FEBBC8(v9, v10);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);
    v12 = sub_2610BC794();
    v13 = sub_2610BCD64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASFlowStepConnectPeer waitForPeerToBecomeReady timer failed BUT the device and account contexts were present. This is unexpected, but we can continue.", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }
  }

  else
  {
    v15 = v0[12];
    sub_260FC3450();
    v16 = swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 4;
    v18 = v15 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
    v19 = *(v15 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
    *v18 = v16;
    LOBYTE(v17) = *(v18 + 8);
    *(v18 + 8) = 1;
    sub_260FEBBC8(v19, v17);
  }

  sub_2610439BC();
  v20 = v0[1];

  return v20();
}

void sub_261089950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v31 - v10;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  sub_260FA9918(a1, v36, &qword_27FE63850, qword_2610CC240);
  sub_260FA9918(a2, v35, &unk_27FE641F0, qword_2610C0210);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136446466;
    v32 = a2;
    v33 = v11;
    v34 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63850, qword_2610CC240);
    v17 = sub_2610BCE54();
    v31 = a1;
    v18 = a3;
    v20 = v19;
    sub_260FA9980(v36, &qword_27FE63850, qword_2610CC240);
    v21 = sub_260FA5970(v17, v20, &v34);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE641F0, qword_2610C0210);
    v22 = sub_2610BCE54();
    v24 = v23;
    v11 = v33;
    sub_260FA9980(v35, &unk_27FE641F0, qword_2610C0210);
    v25 = sub_260FA5970(v22, v24, &v34);
    a3 = v18;
    v26 = v31;

    *(v15 + 14) = v25;
    a2 = v32;
    _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepConnectPeer waitForPeerToBecomeReady sink got: %{public}s, %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v16, -1, -1);
    MEMORY[0x2666F8720](v15, -1, -1);

    if (!*(v26 + 24))
    {
      return;
    }
  }

  else
  {

    sub_260FA9980(v35, &unk_27FE641F0, qword_2610C0210);
    sub_260FA9980(v36, &qword_27FE63850, qword_2610CC240);
    if (!*(a1 + 24))
    {
      return;
    }
  }

  if (*(a2 + 24))
  {
    v27 = sub_2610BCC94();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    sub_2610BCC74();

    v28 = sub_2610BCC64();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = a3;
    v29[5] = a4;
    sub_261042434(0, 0, v11, &unk_2610CD890, v29);
  }
}

uint64_t sub_261089D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2610BCC74();
  v5[4] = sub_2610BCC64();
  v7 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261089DA0, v7, v6);
}

uint64_t sub_261089DA0()
{
  v1 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  sub_2610BCCB4();
  v2 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
  *v2 = 1;
  v4 = *(v2 + 8);
  *(v2 + 8) = 0;
  sub_260FEBBC8(v3, v4);
  sub_2610439BC();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t PASFlowStepConnectPeer.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result + 8);
  if (v1 == 255)
  {
    v6 = 0x80000002610D5C00;
    sub_260FC3450();
    swift_allocError();
    *v9 = 0xD000000000000029;
    *(v9 + 8) = 0x80000002610D5C00;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    swift_willThrow();
  }

  else
  {
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
      v3 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      type metadata accessor for PASFlowStepSourceError(0);
      *(swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error) = v2;
      sub_260FEBBEC(v2, v1);
      v6 = sub_26104DC44(Strong, v5);
      swift_unknownObjectRelease();
      v7 = &qword_27FE657A8;
      v8 = type metadata accessor for PASFlowStepSourceError;
    }

    else
    {
      v10 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      v12 = *(v10 + 8);
      type metadata accessor for PASFlowStepSelectPicker(0);
      swift_allocObject();
      v6 = sub_2610B1410(v11, v12);
      swift_unknownObjectRelease();
      v7 = &unk_27FE66588;
      v8 = type metadata accessor for PASFlowStepSelectPicker;
    }

    sub_26108A3E8(v7, v8);
  }

  return v6;
}

uint64_t PASFlowStepConnectPeer.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v2 + v5) = v6;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v2 + v7) = v8;
  v9 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  *v9 = 0;
  *(v9 + 8) = -1;
  v10 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v10;
}

void sub_26108A108()
{

  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result + 8);

  sub_260FEBBC8(v1, v2);
}

uint64_t PASFlowStepConnectPeer.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result + 8));
  return v0;
}

uint64_t PASFlowStepConnectPeer.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result + 8));

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26108A284()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return sub_261088DF8(v0);
}

uint64_t sub_26108A314()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return sub_261088CB8(v0);
}

uint64_t sub_26108A3A4(uint64_t a1)
{
  result = sub_26108A3E8(&qword_27FE64D18, type metadata accessor for PASFlowStepConnectPeer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26108A3E8(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepConnectPeer(uint64_t a1)
{
  result = qword_27FE66590;
  if (!qword_27FE66590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26108A4E4()
{
  result = qword_27FE665A0;
  if (!qword_27FE665A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665A0);
  }

  return result;
}

uint64_t sub_26108A538(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260FBF860;

  return sub_261089374(a1, v1);
}

uint64_t sub_26108A5D0(uint64_t a1)
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
  v10[1] = sub_260FB6DB4;

  return sub_26104A8D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26108A6D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FB6DB4;

  return sub_261089D08(a1, v4, v5, v7, v6);
}

uint64_t sub_26108A798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261089654(a1, v4, v5, v6);
}

unint64_t sub_26108A85C(void *a1)
{
  a1[1] = sub_26108A894();
  a1[2] = sub_26108A8E8();
  result = sub_26108A93C();
  a1[3] = result;
  return result;
}

unint64_t sub_26108A894()
{
  result = qword_27FE665C8;
  if (!qword_27FE665C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665C8);
  }

  return result;
}

unint64_t sub_26108A8E8()
{
  result = qword_27FE665D0;
  if (!qword_27FE665D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665D0);
  }

  return result;
}

unint64_t sub_26108A93C()
{
  result = qword_27FE665D8;
  if (!qword_27FE665D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665D8);
  }

  return result;
}

unint64_t sub_26108A994()
{
  result = qword_27FE665E0;
  if (!qword_27FE665E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665E0);
  }

  return result;
}

uint64_t PASFlowStepSignInResult.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
  v6 = swift_allocObject();
  *(v4 + v5) = v6;
  *(v6 + 16) = 0;
  v7 = (v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_26108AA88()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA1D54();
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t PASFlowStepSignInResult.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_26108AC04;

  return sub_26104582C();
}

uint64_t sub_26108AC04()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_260FC97F4, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v2;
    v5[1] = sub_260FC9654;

    return sub_26108AD88();
  }
}

void sub_26108ADA8()
{
  sub_26108AA88();
  PASMessageSessionProvider.getMessageSession()((v0 + 2));

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(3, 0, &unk_2610CDB40, v3, v1, MEMORY[0x277D839B0], v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_26108AA88();
  PASMessageSessionProvider.getMessageSession()((v0 + 2));

  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(6, 0, &unk_2610CDB50, v6, v4, MEMORY[0x277D839B0], v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v7 = v0[1];

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26108B128()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26108B198, 0, 0);
}

uint64_t sub_26108B198()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26108B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a1;
  return MEMORY[0x2822009F8](sub_26108B21C, 0, 0);
}

uint64_t sub_26108B21C()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
    **(v0 + 64) = 0;
    v3 = *(v0 + 8);
    goto LABEL_4;
  }

  v2 = Strong;
  sub_260FB15A0(*(v0 + 72), 2u, &v20);
  v4 = v20;
  if (!v20)
  {

    sub_260FBE4B4();
    swift_allocError();
    *v18 = xmmword_2610C0790;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    swift_willThrow();

    v3 = *(v0 + 8);
LABEL_4:

    __asm { BRAA            X1, X16 }
  }

  v5 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  type metadata accessor for PASFlowStepRepairFamily(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v8 + v9) = v10;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v8 + v11) = v12;
  *(v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_familyMember) = 0;
  *(v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_error) = 0;
  *(v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_authResults) = v4;
  v13 = sub_26104DC44(v6, v7);
  swift_unknownObjectRelease();
  v14 = sub_26108BF10(&qword_27FE66610, type metadata accessor for PASFlowStepRepairFamily, &protocol conformance descriptor for PASSourceFlowStepBase);
  v15 = (v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  *v15 = v13;
  v15[1] = v14;
  swift_unknownObjectRelease();
  sub_2610BCC74();
  *(v0 + 96) = sub_2610BCC64();
  v17 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26108B508, v17, v16);
}

uint64_t sub_26108B508()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26108B574, 0, 0);
}

uint64_t sub_26108B574()
{

  **(v0 + 64) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26108B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a1;
  return MEMORY[0x2822009F8](sub_26108B608, 0, 0);
}

uint64_t sub_26108B608()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
    v4 = 0;
LABEL_4:
    **(v0 + 64) = v4;
    v5 = *(v0 + 8);
    goto LABEL_5;
  }

  v2 = Strong;
  v3 = sub_260FB22EC(*(v0 + 72), 6u);
  *(v0 + 96) = v3;
  if (!v3)
  {
    sub_260FBE4B4();
    swift_allocError();
    *v7 = xmmword_2610CDA80;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    swift_willThrow();

    v5 = *(v0 + 8);
LABEL_5:

    __asm { BRAA            X1, X16 }
  }

  v6 = v3;
  if ([v3 integerValue])
  {

    v4 = 1;
    goto LABEL_4;
  }

  v8 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 8);
  type metadata accessor for PASFlowStepConfirmExistingPasscode(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *(v11 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v11 + v14) = v15;
  *(v11 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode_authResults) = 0;
  v16 = sub_26104DC44(v9, v10);
  swift_unknownObjectRelease();
  v17 = sub_26108BF10(&qword_27FE66608, type metadata accessor for PASFlowStepConfirmExistingPasscode, &protocol conformance descriptor for PASSourceFlowStepBase);
  v18 = (v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  *v18 = v16;
  v18[1] = v17;
  swift_unknownObjectRelease();
  sub_2610BCC74();
  *(v0 + 104) = sub_2610BCC64();
  v20 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26108B8F0, v20, v19);
}

uint64_t sub_26108B8F0()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26108B960, 0, 0);
}

uint64_t sub_26108B960()
{
  v1 = *(v0 + 96);

  **(v0 + 64) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t PASFlowStepSignInResult.nextStep()()
{
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep))
  {
    return swift_unknownObjectRetain();
  }

  sub_260FC3450();
  swift_allocError();
  *v2 = 0xD000000000000028;
  *(v2 + 8) = 0x80000002610D5C70;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  return swift_willThrow();
}

uint64_t PASFlowStepSignInResult.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
  v6 = swift_allocObject();
  *(v2 + v5) = v6;
  *(v6 + 16) = 0;
  v7 = (v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_26108BAF4()
{

  return swift_unknownObjectRelease();
}

uint64_t PASFlowStepSignInResult.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t PASFlowStepSignInResult.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  swift_unknownObjectRelease();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26108BC14()
{
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep))
  {
    return swift_unknownObjectRetain();
  }

  sub_260FC3450();
  swift_allocError();
  *v2 = 0xD000000000000028;
  *(v2 + 8) = 0x80000002610D5C70;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  return swift_willThrow();
}

uint64_t sub_26108BCAC(uint64_t a1)
{
  result = sub_26108BF10(&qword_27FE64040, type metadata accessor for PASFlowStepSignInResult, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PASFlowStepSignInResult(uint64_t a1)
{
  result = qword_27FE665F8;
  if (!qword_27FE665F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26108BDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_26108B1F8(a1, a2, a3, v3);
}

uint64_t sub_26108BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FB6DB4;

  return sub_26108B5E4(a1, a2, a3, v3);
}

uint64_t sub_26108BF10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *PASAccountWithImage.__allocating_init(account:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t ACAccount.dsid.getter()
{
  v1 = sub_2610BC9D4();
  v2 = [v0 accountPropertyForKey_];

  if (v2)
  {
    sub_2610BCEA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_260FAC3F0(v7);
    return 0;
  }
}

uint64_t sub_26108C0BC()
{
  if (*v0)
  {
    return 0x7461446567616D69;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_26108C0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_26108C1E0(uint64_t a1)
{
  v2 = sub_26108C730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26108C21C(uint64_t a1)
{
  v2 = sub_26108C730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PASAccountWithImage.imageData.getter()
{
  v1 = *(v0 + 24);
  sub_260FAA174(v1, *(v0 + 32));
  return v1;
}

void *PASAccountWithImage.init(account:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t PASAccountWithImage.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PASAccountWithImage.init(from:)(a1);
  return v2;
}

void *PASAccountWithImage.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66618, &qword_2610CDB58);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26108C730();
  sub_2610BD5D4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v10 = a1;
    v11 = v29;
    v28 = v5;
    v31 = 0;
    sub_260FE4B78();
    sub_2610BD1E4();
    v27 = v6;
    v12 = v30;
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64D80, 0x277CB8F30);
    v13 = sub_2610BCD94();
    v26 = v9;
    if (v13)
    {
      v15 = v1;
    }

    else
    {
      v15 = v1;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v16 = sub_2610BC7B4();
      __swift_project_value_buffer(v16, qword_27FE65900);
      v17 = sub_2610BC794();
      v18 = sub_2610BCD64();
      v19 = os_log_type_enabled(v17, v18);
      v25 = v10;
      v20 = v17;
      if (v19)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_260F97000, v20, v18, "PASAccountWithImage failed to init from decoder. Account is missing.", v21, 2u);
        MEMORY[0x2666F8720](v21, -1, -1);
      }

      v13 = [objc_allocWithZone(MEMORY[0x277CB8F30]) init];
      a1 = v25;
    }

    v15[2] = v13;
    v31 = 1;
    v22 = v26;
    v23 = v27;
    sub_2610BD194();
    (*(v11 + 8))(v22, v23);
    sub_260FAC46C(v12, *(&v12 + 1));
    *(v15 + 3) = v30;
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v15;
  }

  return v3;
}

unint64_t sub_26108C730()
{
  result = qword_27FE66620;
  if (!qword_27FE66620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66620);
  }

  return result;
}

uint64_t PASAccountWithImage.encode(to:)(void *a1)
{
  v3 = v1;
  v26 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66628, &qword_2610CDB60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26108C730();
  sub_2610BD5F4();
  v10 = objc_opt_self();
  v11 = v3[2];
  v24 = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v24];
  v13 = v24;
  if (v12)
  {
    v14 = sub_2610BC534();
    v16 = v15;

    v24 = v14;
    v25 = v16;
    v23 = 0;
    sub_260FE50F4();
    sub_2610BD2A4();
    if (v2 || (v17 = v3[4], v17 >> 60 == 15))
    {
      (*(v6 + 8))(v9, v5);
      return sub_260FAC46C(v14, v16);
    }

    else
    {
      v20 = v3[3];
      v24 = v20;
      v25 = v17;
      v23 = 1;
      v22 = v17;
      sub_260FAA188(v20, v17);
      sub_2610BD2A4();
      (*(v6 + 8))(v9, v5);
      sub_260FAC46C(v14, v16);
      return sub_260FAC458(v20, v22);
    }
  }

  else
  {
    v19 = v13;
    sub_2610BC4F4();

    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t PASAccountWithImage.__deallocating_deinit()
{
  sub_260FAC458(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_26108CA98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = PASAccountWithImage.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t PASAccountWithImage.dsid.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_2610BC9D4();
  v3 = [v1 accountPropertyForKey_];

  if (v3)
  {
    sub_2610BCEA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_260FAC3F0(v8);
    return 0;
  }
}

uint64_t sub_26108CC2C(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2610BCA04();

  return v4;
}

uint64_t sub_26108CD04(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + 16) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_2610BCA04();

  return v6;
}

uint64_t sub_26108CD6C()
{
  v1 = *(*v0 + 24);
  sub_260FAA174(v1, *(*v0 + 32));
  return v1;
}

uint64_t sub_26108CDD4(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2610BCA04();

  return v4;
}

unint64_t sub_26108CE44(uint64_t a1)
{
  result = sub_26108CE6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26108CE6C()
{
  result = qword_27FE66630;
  if (!qword_27FE66630)
  {
    type metadata accessor for PASAccountWithImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66630);
  }

  return result;
}

unint64_t sub_26108D000()
{
  result = qword_27FE66638;
  if (!qword_27FE66638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66638);
  }

  return result;
}

unint64_t sub_26108D058()
{
  result = qword_27FE66640;
  if (!qword_27FE66640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66640);
  }

  return result;
}

unint64_t sub_26108D0B0()
{
  result = qword_27FE66648;
  if (!qword_27FE66648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66648);
  }

  return result;
}

uint64_t PASExtensionProvidedViewDetails.proxCardSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle);

  return v1;
}

uint64_t PASExtensionProvidedViewDetails.biometricsNotEnrolledErrorSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle);

  return v1;
}

uint64_t PASExtensionProvidedViewDetails.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v0 = sub_2610BD634();
  MEMORY[0x2666F7380](v0);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0xD00000000000001ALL, 0x80000002610D5D40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66360, &qword_2610C2E00);
  v1 = sub_2610BCA34();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](0xD00000000000002BLL, 0x80000002610D5D60);

  v2 = sub_2610BCA34();
  MEMORY[0x2666F7380](v2);

  MEMORY[0x2666F7380](4095264, 0xE300000000000000);
  return 0;
}

uint64_t PASExtensionProvidedViewDetails.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v11);
  if (!v12)
  {
    sub_260FAC3F0(v11);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8);
  v4 = *&v10[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8];
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle) == *&v10[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle] && v3 == v4;
  if (!v5 && (sub_2610BD384() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8);
  v7 = *&v10[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8];
  if (!v6)
  {

    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v7)
  {
    if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle) != *&v10[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle] || v6 != v7)
    {
      LOBYTE(v7) = sub_2610BD384();
      goto LABEL_17;
    }

LABEL_26:
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

LABEL_17:

  return v7 & 1;
}

uint64_t PASExtensionProvidedViewDetails.hash.getter()
{
  sub_2610BD584();
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8))
  {
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8))
  {
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  return sub_2610BD564();
}

uint64_t static PASExtensionProvidedViewDetails.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE66650 = a1;
  return result;
}

Swift::Void __swiftcall PASExtensionProvidedViewDetails.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8))
  {
    v3 = sub_2610BC9D4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8))
  {
    v5 = sub_2610BC9D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id PASExtensionProvidedViewDetails.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26108DDD4();

  return v4;
}

id PASExtensionProvidedViewDetails.init(coder:)(void *a1)
{
  v2 = sub_26108DDD4();

  return v2;
}

id PASExtensionProvidedViewDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26108DB7C()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup38PASExtensionProvidedViewDetailsBuilder_proxCardSubtitle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup38PASExtensionProvidedViewDetailsBuilder_biometricsNotEnrolledErrorSubtitle);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = type metadata accessor for PASExtensionProvidedViewDetails();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle];
  *v9 = v3;
  *(v9 + 1) = v2;
  v10 = &v8[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle];
  *v10 = v6;
  *(v10 + 1) = v5;
  v12.receiver = v8;
  v12.super_class = v7;

  return objc_msgSendSuper2(&v12, sel_init);
}

id PASExtensionProvidedViewDetailsBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASExtensionProvidedViewDetailsBuilder.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup38PASExtensionProvidedViewDetailsBuilder_proxCardSubtitle];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup38PASExtensionProvidedViewDetailsBuilder_biometricsNotEnrolledErrorSubtitle];
  v3 = type metadata accessor for PASExtensionProvidedViewDetailsBuilder();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PASExtensionProvidedViewDetailsBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASExtensionProvidedViewDetailsBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26108DD84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
}

id sub_26108DDD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_260FE8484();
  v3 = sub_2610BCE14();
  sub_2610BC9F4();

  v4 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = sub_2610BCE14();
  sub_2610BC9F4();

  v6 = &v1[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init, 0, 0);
}

id PASFamilyMember.dsid.getter()
{
  v1 = [*(v0 + 16) dsid];

  return v1;
}

void *PASFamilyMember.__allocating_init(familyMember:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t PASFamilyMember.memberTypeDescription.getter()
{
  v1 = sub_2610BC634();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_2610BC9B4();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = *(v0 + 16);
  if (![v5 isMe])
  {
    [v5 memberType];
  }

  sub_2610BC9C4();
  type metadata accessor for PASSourceFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_2610BC624();
  return sub_2610BCA24();
}

uint64_t PASFamilyMember.formattedUsername.getter()
{
  v1 = objc_opt_self();
  v2 = [*(v0 + 16) appleID];
  v3 = [v1 formattedUsernameFromUsername_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2610BCA04();

  return v4;
}

uint64_t sub_26108E5E4()
{
  if (*v0)
  {
    return 0x7461446567616D69;
  }

  else
  {
    return 0x654D796C696D6166;
  }
}

uint64_t sub_26108E62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D796C696D6166 && a2 == 0xEC0000007265626DLL;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_26108E714(uint64_t a1)
{
  v2 = sub_26108F05C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26108E750(uint64_t a1)
{
  v2 = sub_26108F05C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PASFamilyMember.imageData.getter()
{
  v1 = *(v0 + 24);
  sub_260FAA174(v1, *(v0 + 32));
  return v1;
}

uint64_t PASFamilyMember.dictionary.getter()
{
  v1 = [*(v0 + 16) dictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2610BC914();

  return v3;
}

void *PASFamilyMember.init(familyMember:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t PASFamilyMember.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PASFamilyMember.init(from:)(a1);
  return v2;
}

void *PASFamilyMember.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66678, &qword_2610CDE30);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26108F05C();
  sub_2610BD5D4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v10 = a1;
    v11 = v29;
    v28 = v5;
    v31 = 0;
    sub_260FE4B78();
    sub_2610BD1E4();
    v27 = v6;
    v12 = v30;
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64000, 0x277D08268);
    v13 = sub_2610BCD94();
    v26 = v9;
    if (v13)
    {
      v15 = v1;
    }

    else
    {
      v15 = v1;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v16 = sub_2610BC7B4();
      __swift_project_value_buffer(v16, qword_27FE65900);
      v17 = sub_2610BC794();
      v18 = sub_2610BCD64();
      v19 = os_log_type_enabled(v17, v18);
      v25 = v10;
      v20 = v17;
      if (v19)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_260F97000, v20, v18, "PASFamilyMember failed to init from decoder. FamilyMember is missing.", v21, 2u);
        MEMORY[0x2666F8720](v21, -1, -1);
      }

      v13 = [objc_allocWithZone(MEMORY[0x277D08268]) init];
      a1 = v25;
    }

    v15[2] = v13;
    v31 = 1;
    v22 = v26;
    v23 = v27;
    sub_2610BD194();
    (*(v11 + 8))(v22, v23);
    sub_260FAC46C(v12, *(&v12 + 1));
    *(v15 + 3) = v30;
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v15;
  }

  return v3;
}

uint64_t PASFamilyMember.encode(to:)(void *a1)
{
  v3 = v1;
  v26 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66688, &qword_2610CDE38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26108F05C();
  sub_2610BD5F4();
  v10 = objc_opt_self();
  v11 = v3[2];
  v24 = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v24];
  v13 = v24;
  if (v12)
  {
    v14 = sub_2610BC534();
    v16 = v15;

    v24 = v14;
    v25 = v16;
    v23 = 0;
    sub_260FE50F4();
    sub_2610BD2A4();
    if (v2 || (v17 = v3[4], v17 >> 60 == 15))
    {
      (*(v6 + 8))(v9, v5);
      return sub_260FAC46C(v14, v16);
    }

    else
    {
      v20 = v3[3];
      v24 = v20;
      v25 = v17;
      v23 = 1;
      v22 = v17;
      sub_260FAA188(v20, v17);
      sub_2610BD2A4();
      (*(v6 + 8))(v9, v5);
      sub_260FAC46C(v14, v16);
      return sub_260FAC458(v20, v22);
    }
  }

  else
  {
    v19 = v13;
    sub_2610BC4F4();

    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t PASFamilyMember.__deallocating_deinit()
{
  sub_260FAC458(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_26108EF94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = PASFamilyMember.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_26108F05C()
{
  result = qword_27FE66680;
  if (!qword_27FE66680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66680);
  }

  return result;
}

id sub_26108F0B0()
{
  v1 = [*(*v0 + 16) dsid];

  return v1;
}

uint64_t sub_26108F110()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = [*(v1 + 16) appleID];
  v4 = [v2 formattedUsernameFromUsername_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2610BCA04();

  return v5;
}

unint64_t sub_26108F1DC(uint64_t a1)
{
  result = sub_26108F204();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26108F204()
{
  result = qword_27FE66690;
  if (!qword_27FE66690)
  {
    type metadata accessor for PASFamilyMember();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66690);
  }

  return result;
}

unint64_t sub_26108F2E4()
{
  result = qword_27FE66698;
  if (!qword_27FE66698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66698);
  }

  return result;
}

unint64_t sub_26108F33C()
{
  result = qword_27FE666A0;
  if (!qword_27FE666A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666A0);
  }

  return result;
}

unint64_t sub_26108F394()
{
  result = qword_27FE666A8;
  if (!qword_27FE666A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666A8);
  }

  return result;
}

uint64_t Result<>.init(catching:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v6 = sub_2610BD594();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[5] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_26108F578;

  return v10(v7);
}

uint64_t sub_26108F578()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26108F728;
  }

  else
  {
    v2 = sub_26108F68C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26108F68C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26108F728()
{
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26108F7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_260FF7C64;

  return sub_261018F4C();
}

id PASExtensionHandle.authenticator(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 56);
  v5 = type metadata accessor for PASExtensionAuthController();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v4;
  a2[3] = v5;
  a2[4] = &off_287388CE0;
  *a2 = v6;

  return a1;
}

uint64_t PASExtensionHandle.signInSucceeded(appleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26108F928, 0, 0);
}

uint64_t sub_26108F928()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_260FE6A50;
  v3 = v0[2];
  v2 = v0[3];

  return sub_26101A998(v3, v2);
}

uint64_t PASExtensionHandle.typeErasedIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v3 - 8) + 16);

  return v6(boxed_opaque_existential_1, v4, v3);
}

uint64_t PASExtensionHandle.viewDetails(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26108FA68, 0, 0);
}

uint64_t sub_26108FA68()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_26108FB04;
  v2 = *(v0 + 16);

  return sub_2610196F0(v2);
}

uint64_t sub_26108FB04(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_26108FC24()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2610793AC;

  return sub_26101B0FC();
}

uint64_t sub_26108FCD8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26108FD6C;

  return sub_26101B924();
}

uint64_t sub_26108FD6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PASExtensionHandle.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t PASExtensionHandle.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t PASExtensionHandle.debugDescription.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_2610BC754();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](47, 0xE100000000000000);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = sub_2610BC764();
  MEMORY[0x2666F7380](v2);

  MEMORY[0x2666F7380](10272, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](41, 0xE100000000000000);
  return 0;
}

uint64_t dispatch thunk of PASSourceAuthControllerProtocol.authenticate(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBD298;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2610901B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, void (*a4)(void *__return_ptr)@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  sub_260FA9918(v5 + 16, v13, a1, a2);
  if (v13[3])
  {
    return a3(v13, a5);
  }

  sub_260FA9980(v13, a1, a2);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  a4(v13);
  sub_260FA99E0(v13, a5);
  a3(v13, v12);
  swift_beginAccess();
  sub_260FC3844(v12, v5 + 16, a1, a2);
  return swift_endAccess();
}

uint64_t sub_261090328(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E756F6363416F6ELL;
  v4 = *a1;
  v5 = 0x6341534D44496F6ELL;
  v6 = 0xED0000746E756F63;
  if (v4 == 1)
  {
    v5 = 0x6E756F6363416F6ELL;
    v6 = 0xE900000000000074;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002610D1AE0;
  }

  if (*a2 != 1)
  {
    v3 = 0x6341534D44496F6ELL;
    v2 = 0xED0000746E756F63;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002610D1AE0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_26109043C()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610904F4(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_261090598(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

unint64_t sub_26109064C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2610929BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26109067C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x6E756F6363416F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6341534D44496F6ELL;
    v3 = 0xED0000746E756F63;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (v5)
  {
    v3 = 0x80000002610D1AE0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2610906F0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B46E4(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_2610907B8(uint64_t a1)
{
  v2 = sub_261091168();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610907F4(uint64_t a1)
{
  v2 = sub_261091168();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261090830(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_261090850, 0, 0);
}

uint64_t sub_261090850()
{

  sub_2610901B4(&qword_27FE65000, &qword_2610BEE60, sub_260FA9F80, sub_260F9DC50, (v0 + 2));

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_2610909CC;

  return v5(v1, v2);
}

uint64_t sub_2610909CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_261090F90;
  }

  else
  {
    v4 = sub_261090AE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261090AE0()
{
  v1 = v0[15];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

    sub_2610901B4(&qword_27FE65000, &qword_2610BEE60, sub_260FA9F80, sub_260F9DC50, (v0 + 7));

    v2 = v0[10];
    v3 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
    v8 = (*(v3 + 64) + **(v3 + 64));
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_261090CE8;

    return v8(v1, v2, v3);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    sub_2610910DC();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_261090CE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_261090FF4;
  }

  else
  {
    v4 = sub_261090DFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261090DFC()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (v1)
  {
    v2 = v0[18];
    v3 = v0[12];
    v3[3] = &type metadata for PASDevice;
    v3[4] = &protocol witness table for PASDevice;
    v3[5] = sub_260FBE5B4();
    v3[6] = sub_260FC37F0();
    v4 = swift_allocObject();
    *v3 = v4;
    v5 = qword_27FE637F8;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = v0[18];
    v8 = v0[15];
    v9 = v0[12];
    sub_260FA6AE0(qword_27FE65498, v4 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
    v10 = swift_allocObject();
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0;
    *(v9 + 56) = v7;
    *(v9 + 64) = v10;
    v11 = v0[1];
  }

  else
  {
    v12 = v0[15];
    sub_2610910DC();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_261090F90()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261090FF4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261091060()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_2610910DC()
{
  result = qword_27FE666B0;
  if (!qword_27FE666B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666B0);
  }

  return result;
}

unint64_t sub_261091130(void *a1)
{
  a1[1] = sub_261091168();
  a1[2] = sub_2610911BC();
  result = sub_261091210();
  a1[3] = result;
  return result;
}

unint64_t sub_261091168()
{
  result = qword_27FE666B8;
  if (!qword_27FE666B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666B8);
  }

  return result;
}

unint64_t sub_2610911BC()
{
  result = qword_27FE666C0;
  if (!qword_27FE666C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666C0);
  }

  return result;
}

unint64_t sub_261091210()
{
  result = qword_27FE666C8;
  if (!qword_27FE666C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666C8);
  }

  return result;
}

unint64_t sub_261091268()
{
  result = qword_27FE666D0;
  if (!qword_27FE666D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666D0);
  }

  return result;
}

uint64_t sub_2610912BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB6F34;

  return sub_261091360();
}

uint64_t sub_261091360()
{
  *(v1 + 216) = v0;
  v2 = swift_task_alloc();
  *(v1 + 224) = v2;
  *v2 = v1;
  v2[1] = sub_2610913F8;

  return sub_261090830(v1 + 16);
}

uint64_t sub_2610913F8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_261091E0C;
  }

  else
  {
    v2 = sub_26109150C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26109150C()
{

  sub_2610901B4(&qword_27FE63CB0, &unk_2610BFDB0, sub_260FA9F80, sub_260F9E15C, (v0 + 16));

  v1 = v0[19];
  v2 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_261091690;

  return v5(v0 + 21, v1, v2);
}

uint64_t sub_261091690()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2610920E8;
  }

  else
  {
    v2 = sub_2610917A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610917A4()
{
  v1 = *(v0 + 192);
  *(v0 + 256) = v1;
  *(v0 + 272) = __swift_project_boxed_opaque_existential_1((v0 + 168), v1);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = sub_261091850;

  return sub_261092E5C(1);
}

uint64_t sub_261091850(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2610923D4, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[38] = v6;
    *v6 = v5;
    v6[1] = sub_2610919FC;
    v7 = v4[32];
    v8 = MEMORY[0x277D839B0];

    return sub_260FAECF0((v4 + 40), 4, 0, 0, 1, a1, v7, v8);
  }
}

uint64_t sub_2610919FC()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_2610926C8;
  }

  else
  {
    v2 = sub_261091B30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261091B30()
{
  v18 = v0;
  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 141558274;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2080;
    if (v1)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_260FA5970(v7, v8, v17);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASPersonalSourceAuthController sent selectedOwnAccount and got response: %{mask.hash}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  sub_260FC3748(v0 + 16);

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, v0 + 88);

  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 88), v10);
  LOBYTE(v17[0]) = 0;
  v12 = (*(v11 + 8))(v17, v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  if (v12)
  {
    v13 = *(v0 + 8);

    return v13(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_261091E0C()
{
  v20 = v0;
  v1 = v0[29];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    v0[26] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASPersonalSourceAuthController failed to send selectedOwnAccount\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, (v0 + 11));

  v12 = v0[14];
  v13 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v12);
  LOBYTE(v19[0]) = 0;
  v14 = (*(v13 + 8))(v19, v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (v14)
  {
    v15 = v0[1];

    return v15(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2610920E8()
{
  v20 = v0;
  sub_260FC3748((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = v0[31];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    v0[26] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASPersonalSourceAuthController failed to send selectedOwnAccount\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, (v0 + 11));

  v12 = v0[14];
  v13 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v12);
  LOBYTE(v19[0]) = 0;
  v14 = (*(v13 + 8))(v19, v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (v14)
  {
    v15 = v0[1];

    return v15(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2610923D4()
{
  v20 = v0;
  sub_260FC3748((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = v0[37];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    v0[26] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASPersonalSourceAuthController failed to send selectedOwnAccount\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, (v0 + 11));

  v12 = v0[14];
  v13 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v12);
  LOBYTE(v19[0]) = 0;
  v14 = (*(v13 + 8))(v19, v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (v14)
  {
    v15 = v0[1];

    return v15(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2610926C8()
{
  v20 = v0;
  sub_260FC3748((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = v0[39];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    v0[26] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASPersonalSourceAuthController failed to send selectedOwnAccount\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, (v0 + 11));

  v12 = v0[14];
  v13 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v12);
  LOBYTE(v19[0]) = 0;
  v14 = (*(v13 + 8))(v19, v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (v14)
  {
    v15 = v0[1];

    return v15(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

unint64_t sub_2610929BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610BD154();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261092A0C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v15[10] = a2;
  sub_2610BC3C4();
  swift_allocObject();
  sub_2610BC3B4();
  type metadata accessor for PASDeviceContext();
  sub_26109BCFC(&qword_27FE655A8, type metadata accessor for PASDeviceContext, &protocol conformance descriptor for PASDeviceContext);
  v8 = sub_2610BC3A4();
  v10 = v9;

  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
    inited = swift_initStackObject();
    *(inited + 32) = a4;
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 64) = MEMORY[0x277CC9318];
    *(inited + 40) = v8;
    *(inited + 48) = v10;

    sub_260FAA188(v8, v10);
    v13 = sub_260FA8D08(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = a1;
    sub_2610998BC(v13, sub_26109954C, 0, isUniquelyReferenced_nonNull_native, v15, a3 & 1);

    sub_260FAC46C(v8, v10);
    return v15[0];
  }

  return result;
}

id sub_261092BE8(void *a1, uint64_t a2, char a3, char a4)
{
  v18[10] = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v8 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v18];
  v9 = v18[0];
  if (v8)
  {
    v10 = sub_2610BC534();
    v12 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
    inited = swift_initStackObject();
    *(inited + 32) = a4;
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 64) = MEMORY[0x277CC9318];
    *(inited + 40) = v10;
    *(inited + 48) = v12;

    sub_260FAA188(v10, v12);
    v14 = sub_260FA8D08(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = a1;
    sub_2610998BC(v14, sub_26109954C, 0, isUniquelyReferenced_nonNull_native, v18, a3 & 1);

    if (v4)
    {

      __break(1u);
    }

    else
    {
      sub_260FAC46C(v10, v12);
      return v18[0];
    }
  }

  else
  {
    v17 = v9;
    sub_2610BC4F4();

    return swift_willThrow();
  }

  return result;
}

uint64_t PASDeviceAndAccount.init(device:account:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(a3 + 64) = v6;
  result = sub_261092E3C(a1, a3);
  *(a3 + 56) = a2;
  return result;
}

uint64_t sub_261092E3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_261092E5C(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 112) = a1;
  return MEMORY[0x2822009F8](sub_261092E80, 0, 0);
}

uint64_t sub_261092E80()
{
  v1 = *(v0 + 56);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  *(v0 + 64) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 56);
    v7 = v1[3];
    v8 = v6[5];
    v9 = v6[6];
    v10 = __swift_project_boxed_opaque_existential_1(v6, v7);
    v11 = sub_260FA8D08(MEMORY[0x277D84F90]);
    v12 = sub_260FB2964(v11, v10, 0, 5, v7, v8, v9);
    *(v0 + 72) = v12;
    v16 = v12;
    v17 = *(v0 + 56);

    v18 = *(v17 + 56);
    *(v0 + 80) = v18;
    if (v18)
    {
      v19 = v18;
      sub_261095FC4(v0 + 16);
      v20 = *(v0 + 40);
      v21 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
      v25 = (*(v21 + 72) + **(v21 + 72));
      v22 = swift_task_alloc();
      *(v0 + 88) = v22;
      *v22 = v0;
      v22[1] = sub_261093148;
      v23 = *(v0 + 112);

      return v25(v19, v23, v20, v21);
    }

    else
    {

      v24 = *(v0 + 8);

      return v24(v16);
    }
  }

  else
  {
    sub_261096B58();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_261093148(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {

    v4 = sub_261093328;
  }

  else
  {
    v4 = sub_261093264;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261093264()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = sub_261092BE8(v3, v1, 0, 0);
  v5 = v0[10];
  v6 = v0[8];

  v8 = v0[1];
  if (!v2)
  {
    v7 = v4;
  }

  return v8(v7);
}

uint64_t sub_261093328()
{
  v1 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26109339C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_260FB1A10(a1, 5u, 5, &v13);
  if (v2)
  {
  }

  if (!*(&v14 + 1))
  {
    sub_260FA9980(&v13, &unk_27FE66710, &qword_2610BF8F8);
    sub_260FBE4B4();
    swift_allocError();
    *v6 = xmmword_2610CE390;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    swift_willThrow();
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  sub_260FB137C(a1, 0, 0, &v13);

  v7 = *(&v13 + 1);
  if (*(&v13 + 1) >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = v13;
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64D80, 0x277CB8F30);
    v8 = sub_2610BCD94();
    sub_260FAC458(v9, v7);
    v10 = v8;
  }

  a2[3] = &type metadata for PASDevice;
  a2[4] = &protocol witness table for PASDevice;
  a2[5] = sub_260FBE5B4();
  a2[6] = sub_260FC37F0();
  v11 = swift_allocObject();
  *a2 = v11;
  v12 = v18;
  *(v11 + 16) = v17;
  *(v11 + 32) = v12;
  *(v11 + 48) = v19;
  *(v11 + 64) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  result = swift_allocObject();
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0;
  a2[7] = v8;
  a2[8] = result;
  return result;
}

uint64_t sub_2610935F0()
{
  v1 = *(v0 + 64);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_261093720;

  return v6(v0 + 16, v2, v3);
}

uint64_t sub_261093720()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2610939E4;
  }

  else
  {
    v2 = sub_261093834;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261093834()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64868, &unk_2610C26F0);
  sub_260FADDAC(5, 0, &unk_2610CE5F8, v3, v1, v4, v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v5 = sub_2610BC7B4();
  __swift_project_value_buffer(v5, qword_27FE65900);
  v6 = sub_2610BC794();
  v7 = sub_2610BCD84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_260F97000, v6, v7, "PASDeviceInfoExchanger did registerForRequests", v8, 2u);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2610939E4()
{
  v17 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[7] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v4, v5, "PASDeviceInfoExchanger failed to registerForRequests. %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_261093BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261093BD8, 0, 0);
}

uint64_t sub_261093BD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_261093CE4;
    v3 = *(v0 + 48);

    return sub_26109A154(v3);
  }

  else
  {
    **(v0 + 40) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_261093CE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_261093E38;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = sub_261093E14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261093E38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261093E9C()
{
  v1[15] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261093F44, 0, 0);
}

uint64_t sub_261093F44()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = sub_2610BCC94();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_260FA9918(v2, v1, &unk_27FE65800, &qword_2610BF910);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 3;
  *(v5 + 40) = &unk_2610CE5C0;
  *(v5 + 48) = v3;
  *(v5 + 56) = sub_261094738;
  *(v5 + 64) = 0;
  *(v5 + 72) = xmmword_2610CE3A0;
  *(v5 + 88) = 0;

  v6 = sub_261043008(0, 0, v1, &unk_2610CE5D0, v5);
  v0[18] = v6;
  sub_260FA9980(v2, &unk_27FE65800, &qword_2610BF910);
  v7 = swift_task_alloc();
  v0[19] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB0, &qword_2610C91A0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  *v7 = v0;
  v7[1] = sub_26109413C;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 14, v6, v8, v9, v10);
}

uint64_t sub_26109413C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_261094658;
  }

  else
  {
    v2 = sub_261094270;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261094270()
{
  v1 = v0[14];
  v0[21] = v1;
  v0[5] = &type metadata for PASDevice;
  v0[6] = &protocol witness table for PASDevice;
  v0[7] = sub_260FBE5B4();
  v0[8] = sub_260FC37F0();
  v2 = swift_allocObject();
  v0[2] = v2;
  v3 = qword_27FE637F8;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_260FA6AE0(qword_27FE65498, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v0[9] = v1;
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_2610943C8;

  return sub_261092E5C(0);
}

uint64_t sub_2610943C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  sub_260FC3748(v3 + 16);
  if (v1)
  {
    v4 = sub_2610946C4;
  }

  else
  {
    v4 = sub_2610944E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2610944E4()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_beginAccess();

  v4 = sub_260FA93B4(v3);

  type metadata accessor for PASDeviceContext();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_261092A0C(v1, v5, 0, 10);
  v7 = v0[21];
  if (v2)
  {

    v8 = v0[1];

    return v8();
  }

  else
  {

    v10 = v0[1];

    return v10(v6);
  }
}

uint64_t sub_261094658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610946C4()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_261094738(uint64_t a1)
{
  v1 = sub_2610BC4E4();
  v2 = [v1 domain];
  v3 = sub_2610BCA04();
  v5 = v4;

  if (v3 == sub_2610BCA04() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_2610BD384();

    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  v10 = [v1 code];

  return v10 == 10002;
}

uint64_t sub_26109481C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26109483C, 0, 0);
}

uint64_t sub_26109483C()
{
  v1 = *(v0 + 24);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_261094964;

  return v6(v2, v3);
}

uint64_t sub_261094964(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 40) = a1;

  return MEMORY[0x2822009F8](sub_261094AB0, 0, 0);
}

uint64_t sub_261094AF4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASDeviceInfoExchanger sendPASDeviceInfo", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 64);

  v6 = v5[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_261094CE0;

  return v10(v0 + 16, v6, v7);
}

uint64_t sub_261094CE0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_261095390;
  }

  else
  {
    v2 = sub_261094DF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261094DF4()
{
  v1 = *(v0 + 40);
  *(v0 + 88) = v1;
  *(v0 + 104) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_261094E9C;

  return sub_261093E9C();
}

uint64_t sub_261094E9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_261090F90, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[17] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
    *v6 = v5;
    v6[1] = sub_261095058;
    v8 = v4[11];

    return sub_260FAECF0((v4 + 7), 5, 0, 10, 0, a1, v8, v7);
  }
}

uint64_t sub_261095058()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2610953A8;
  }

  else
  {

    v2 = sub_261095174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261095174()
{
  v1 = v0[7];
  v0[19] = v1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_261095218;

  return sub_261095478(v1);
}

uint64_t sub_261095218()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_261095414;
  }

  else
  {
    v2 = sub_26109532C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26109532C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610953A8()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261095414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261095478(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x2822009F8](sub_261095498, 0, 0);
}

uint64_t sub_261095498()
{

  sub_26109339C(v1, (v0 + 16));
  v2 = sub_260FB1C74(*(v0 + 168), 0xAu, 10);
  if (!v2)
  {
    type metadata accessor for PASDeviceContext();
    v2 = swift_allocObject();
    *(v2 + 16) = MEMORY[0x277D84FA0];
  }

  *(v0 + 184) = v2;
  v3 = *(v0 + 176);
  v4 = *(v3 + 160);
  *(v0 + 192) = *(v3 + 104);
  v5 = *(v3 + 112);
  *(v0 + 200) = v5;
  *(v0 + 208) = swift_getObjectType();
  v15 = *(v0 + 40);
  v6 = *(v0 + 40);
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  *(v0 + 112) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  *(v0 + 152) = type metadata accessor for PASDeviceContext();
  *(v0 + 160) = sub_26109BCFC(&qword_27FE63848, type metadata accessor for PASDeviceContext, &protocol conformance descriptor for PASDeviceContext);
  *(v0 + 128) = v2;
  if (v4)
  {
    *(v0 + 296) = *(v5 + 80);
    *(v0 + 304) = (v5 + 80) & 0xFFFFFFFFFFFFLL | 0xBEBB000000000000;
    sub_2610BCC74();

    *(v0 + 312) = sub_2610BCC64();
    v9 = sub_2610BCBF4();
    v11 = v10;
    v12 = sub_261095A70;
  }

  else
  {
    *(v0 + 216) = *(v5 + 72);
    *(v0 + 224) = (v5 + 72) & 0xFFFFFFFFFFFFLL | 0x20B1000000000000;
    *(v0 + 232) = sub_2610BCC74();

    *(v0 + 240) = sub_2610BCC64();
    v9 = sub_2610BCBF4();
    v11 = v13;
    v12 = sub_261095714;
  }

  return MEMORY[0x2822009F8](v12, v9, v11);
}

uint64_t sub_261095714()
{
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];

  v1(v0 + 11, v0 + 16, v2, v3);
  sub_260FA9980((v0 + 16), &qword_27FE63850, qword_2610CC240);
  sub_260FA9980((v0 + 11), &qword_27FE63858, &unk_2610BE900);

  return MEMORY[0x2822009F8](sub_2610957DC, 0, 0);
}

uint64_t sub_2610957DC()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = type metadata accessor for PASAccountWithImage();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = xmmword_2610BF320;
    v4 = sub_26109BCFC(&unk_27FE65010, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v3 = 0;
  }

  v5 = v0[22];
  v0[11] = v3;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = v2;
  v0[15] = v4;
  v6 = v5[18];
  v0[31] = v6;
  v7 = v5[19];
  v0[32] = v7;
  v0[33] = __swift_project_boxed_opaque_existential_1(v5 + 15, v6);
  v8 = type metadata accessor for PASAccountContext.ExistingAccount();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v0[19] = v8;
  v0[20] = &protocol witness table for PASAccountContext.ExistingAccount;
  v0[16] = v9;
  v0[34] = *(v7 + 40);
  v0[35] = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xA5A5000000000000;
  v10 = v1;
  v0[36] = sub_2610BCC64();
  v12 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261095950, v12, v11);
}

uint64_t sub_261095950()
{
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];

  v1(v0 + 11, v0 + 16, v3, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x2822009F8](sub_2610959EC, 0, 0);
}

uint64_t sub_2610959EC()
{

  sub_260FA9980(v0 + 88, &unk_27FE656B0, &unk_2610BFCE0);
  sub_260FC3748(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261095A70()
{
  v1 = v0[37];
  v3 = v0[25];
  v2 = v0[26];

  v1(v0 + 11, v0 + 16, v2, v3);
  sub_260FA9980((v0 + 16), &qword_27FE63850, qword_2610CC240);
  sub_260FA9980((v0 + 11), &qword_27FE63858, &unk_2610BE900);

  return MEMORY[0x2822009F8](sub_261095B38, 0, 0);
}

uint64_t sub_261095B38()
{

  sub_260FC3748(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void *sub_261095D70()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASDeviceInfoExchanger deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 15);
  return v1;
}

uint64_t sub_261095E78()
{
  sub_261095D70();

  return MEMORY[0x2821FE8D8](v0, 161, 7);
}

uint64_t sub_261095EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB6DB4;

  return sub_2610935D0();
}

uint64_t sub_261095F38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB6DB4;

  return sub_261094AD4();
}

uint64_t sub_261095FC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_261099C18(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_2610960D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6563697665446F6ELL;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = 0x80000002610D1900;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6563697665446F6ELL;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0x80000002610D1900;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2610BD384();
  }

  return v8 & 1;
}

uint64_t sub_261096184()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26109620C(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_261096280(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_261096304@<X0>(char *a2@<X8>)
{
  v3 = sub_2610BD154();

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

void sub_261096364(unint64_t *a1@<X8>)
{
  v2 = 0x80000002610D1900;
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0x6563697665446F6ELL;
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2610963A8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B4044(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_261096470(uint64_t a1)
{
  v2 = sub_26109BE94();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610964AC(uint64_t a1)
{
  v2 = sub_26109BE94();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASDeviceAndAccount.description.getter()
{
  v1 = v0;
  v2 = 1701736302;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_2610BCF84();

  v36 = 0xD00000000000001CLL;
  v37 = 0x80000002610D5FE0;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  (*(v4 + 8))(&v32, v3, v4);
  v5 = v34;
  v6 = v35;
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  v7 = (*(v6 + 8))(v5, v6);
  MEMORY[0x2666F7380](v7);

  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  MEMORY[0x2666F7380](8236, 0xE200000000000000);
  v9 = v36;
  v8 = v37;
  v32 = 0x6563766965446B61;
  v33 = 0xEA0000000000203ALL;
  v10 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v36 = (*(v11 + 32))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE666D8, &qword_2610CE3B8);
  v12 = sub_2610BCA34();
  MEMORY[0x2666F7380](v12);

  v13 = v32;
  v14 = v33;
  v32 = v9;
  v33 = v8;

  MEMORY[0x2666F7380](v13, v14);

  v16 = v32;
  v15 = v33;
  v32 = 0x797274656D6F6962;
  v33 = 0xEA0000000000203ALL;
  v17 = v0[3];
  v18 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v19 = (*(v18 + 16))(v17, v18);
  MEMORY[0x2666F7380](v19);

  MEMORY[0x2666F7380](8236, 0xE200000000000000);
  v20 = v32;
  v21 = v33;
  v32 = v16;
  v33 = v15;

  MEMORY[0x2666F7380](v20, v21);

  v23 = v32;
  v22 = v33;
  v32 = 0x3A746E756F636361;
  v33 = 0xE800000000000000;
  v24 = v0[7];
  if (v24 && (v25 = [v24 username]) != 0)
  {
    v26 = v25;
    v2 = sub_2610BCA04();
    v28 = v27;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x2666F7380](v2, v28);

  v29 = v32;
  v30 = v33;
  v32 = v23;
  v33 = v22;

  MEMORY[0x2666F7380](v29, v30);

  return v32;
}

uint64_t dispatch thunk of PASDeviceInfoExchangerProtocol.registerForRequests()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASDeviceInfoExchangerProtocol.sendPASDeviceInfo()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return v7(a1, a2);
}

uint64_t sub_261096A48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_261096A90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261096B04()
{
  result = qword_27FE666E8;
  if (!qword_27FE666E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666E8);
  }

  return result;
}

unint64_t sub_261096B58()
{
  result = qword_27FE666F0;
  if (!qword_27FE666F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666F0);
  }

  return result;
}

uint64_t sub_261096BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2610BD074();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_261096CAC, 0, 0);
}

uint64_t sub_261096CAC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2610BD084();
  v5 = sub_26109BCFC(&qword_27FE66720, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2610BD454();
  sub_26109BCFC(&qword_27FE66728, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2610BD094();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_261096E3C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_261096E3C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261096FF8, 0, 0);
}

uint64_t sub_261096FF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261097078(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
  v33 = v4;
  result = sub_2610BD104();
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
        sub_260FA6A84(v24, v34);
      }

      else
      {
        sub_260FA3F5C(v24, v34);
      }

      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
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
      result = sub_260FA6A84(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_261097330(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
  result = sub_2610BD104();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_260FA6A84((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_260FA9708(v23, &v36);
        sub_260FA3F5C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_2610BCF04();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_260FA6A84(v35, (*(v7 + 56) + 32 * v15));
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
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2610975E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C18, &qword_2610BEDE8);
  result = sub_2610BD104();
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_260FA6A84(v21, v30);
      }

      else
      {
        sub_260FA3F5C(v21, v30);
      }

      sub_2610BD514();
      sub_2610BCA54();

      result = sub_2610BD574();
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
      result = sub_260FA6A84(v30, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_261097A0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66740, &qword_2610BECD0);
  v35 = v4;
  result = sub_2610BD104();
  v7 = result;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
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
  return result;
}

uint64_t sub_261097CB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66750, &unk_2610CE610);
  v33 = v4;
  result = sub_2610BD104();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_260F98E14(v24, v34);
      }

      else
      {
        sub_260FA99E0(v24, v34);
      }

      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
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
      result = sub_260F98E14(v34, *(v7 + 56) + 40 * v15);
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

uint64_t sub_261097F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_2610BD104();
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

        swift_unknownObjectRetain();
      }

      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
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

uint64_t sub_261098228(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2610BCEE4() + 1) & ~v5;
    do
    {
      sub_2610BD514();

      sub_2610BCA54();
      v10 = sub_2610BD574();

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

uint64_t sub_2610983D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2610BCEE4() + 1) & ~v5;
    do
    {
      sub_260FA9708(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_2610BCF04();
      result = sub_260FA9764(v25);
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

uint64_t sub_26109857C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2610BCEE4() + 1) & ~v5;
    do
    {
      sub_2610BD514();
      sub_2610BCA54();

      result = sub_2610BD574();
      v10 = result & v7;
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
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
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

uint64_t sub_2610988A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2610BCEE4() + 1) & ~v5;
    do
    {
      sub_2610BD514();

      sub_2610BCA54();
      v9 = sub_2610BD574();

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

_OWORD *sub_261098A54(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_260FA6A84(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_261098AC0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_260FA6A84(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_261098B3C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_260FA6A84(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_261098BA4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void *sub_261098C00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
  v2 = *v0;
  v3 = sub_2610BD0F4();
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
        sub_260FA3F5C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_260FA6A84(v25, (*(v4 + 56) + v22));
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

void *sub_261098DA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
  v2 = *v0;
  v3 = sub_2610BD0F4();
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
        v18 = 40 * v17;
        sub_260FA9708(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_260FA3F5C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_260FA6A84(v22, (*(v4 + 56) + v17));
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

void *sub_261098F48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C18, &qword_2610BEDE8);
  v2 = *v0;
  v3 = sub_2610BD0F4();
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
        v18 = *(*(v2 + 48) + v17);
        sub_260FA3F5C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_260FA6A84(v19, (*(v4 + 56) + 32 * v17));
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

id sub_2610990C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66740, &qword_2610BECD0);
  v2 = *v0;
  v3 = sub_2610BD0F4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_261099230()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66750, &unk_2610CE610);
  v2 = *v0;
  v3 = sub_2610BD0F4();
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
        v22 = 40 * v17;
        sub_260FA99E0(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_260F98E14(v25, *(v4 + 56) + v22);
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

void *sub_2610993EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2610BD0F4();
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

        result = swift_unknownObjectRetain();
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

uint64_t sub_26109954C@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_260FA3F5C((a1 + 8), (a2 + 8));
  *a2 = v3;
  return result;
}

_OWORD *sub_26109957C@<X0>(uint64_t a1@<X8>)
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
    v14 = *(*(v3 + 48) + v13);
    sub_260FA3F5C(*(v3 + 56) + 32 * v13, v18);
    LOBYTE(v20) = v14;
    result = sub_260FA6A84(v18, (&v20 + 8));
    v16 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v20;
      v18[1] = v21;
      v19 = v16;
      v17(v18);
      return sub_260FA9980(v18, &unk_27FE66700, &unk_2610CE580);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
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
        v16 = 0;
        v12 = 0;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
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

uint64_t sub_2610996C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_2610997AC;

  return sub_26109A910(a4, a5, a6, a7, a8, v17, v18, v19 & 1);
}

uint64_t sub_2610997AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_2610998BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, char a6)
{
  LOBYTE(v6) = a6;
  v9 = -1 << *(a1 + 32);
  v10 = ~v9;
  v11 = *(a1 + 64);
  v12 = -v9;
  v50 = a1;
  v51 = a1 + 64;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v52 = v10;
  v53 = 0;
  v54 = v13 & v11;
  v55 = a2;
  v56 = a3;

  sub_26109957C(v47);
  if (!v49)
  {
    goto LABEL_31;
  }

  v14 = v47[0];
  sub_260FA6A84(&v48, v46);
  v15 = *a5;
  result = sub_260FA60F8(v14);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = v17;
  if (*(v15 + 24) < v21)
  {
    sub_2610975E8(v21, a4 & 1);
    result = sub_260FA60F8(v14);
    if ((v22 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_2610BD444();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v28 = result;
    sub_261098F48();
    result = v28;
    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_10:
  if (v22)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_260FA3F5C(*(*a5 + 56) + 32 * result, v44);
    if (v6)
    {
      v26 = v46;
    }

    else
    {
      v26 = v44;
    }

    sub_260FA3F5C(v26, v45);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    v27 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_0Tm((v27 + v25));
    sub_260FA6A84(v45, (v27 + v25));
LABEL_18:
    sub_26109957C(v47);
    if (v49)
    {
      if (v6)
      {
        v6 = v46;
      }

      else
      {
        v6 = v44;
      }

      v22 = 1;
      do
      {
        v14 = v47[0];
        sub_260FA6A84(&v48, v46);
        v35 = *a5;
        result = sub_260FA60F8(v14);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v20 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v20)
        {
          goto LABEL_32;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_2610975E8(v39, 1);
          result = sub_260FA60F8(v14);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_260FA3F5C(*(*a5 + 56) + 32 * result, v44);
          sub_260FA3F5C(v6, v45);
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_0Tm((v34 + v33));
          sub_260FA6A84(v45, (v34 + v33));
        }

        else
        {
          v41 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v41[6] + result) = v14;
          result = sub_260FA6A84(v46, (v41[7] + 32 * result));
          v42 = v41[2];
          v20 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v20)
          {
            goto LABEL_33;
          }

          v41[2] = v43;
        }

        sub_26109957C(v47);
      }

      while (v49);
    }

LABEL_31:
    sub_26103B514(v50);
  }

LABEL_16:
  v29 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v29[6] + result) = v14;
  result = sub_260FA6A84(v46, (v29[7] + 32 * result));
  v30 = v29[2];
  v20 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v20)
  {
    v29[2] = v31;
    goto LABEL_18;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_261099C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65000, &qword_2610BEE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261099C88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260FB6DB4;

  return sub_26109481C(a1, v1);
}

void sub_261099D24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  JUMPOUT(0x2610996C4);
}

uint64_t sub_261099E2C(uint64_t a1, uint64_t *a2, void (*a3)(void *__return_ptr, char *), uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v39 = a5;
  if (v10)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(*(v6 + 48) + (v14 | (v12 << 6)));
        v46 = *(*(v6 + 48) + (v14 | (v12 << 6)));
        a3(v45, &v46);
        if (*(a5 + 16))
        {
          v16 = sub_260FA60F8(v15);
          if (v17)
          {
            break;
          }
        }

        v29 = sub_260FA60B4(v45);
        if (v30)
        {
          v31 = v29;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *a2;
          v42 = *a2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261098DA4();
            v33 = v42;
          }

          sub_260FA9764(*(v33 + 48) + 40 * v31);
          sub_260FA6A84((*(v33 + 56) + 32 * v31), v43);
          sub_2610983D8(v31, v33);
          *a2 = v33;
        }

        else
        {
          memset(v43, 0, sizeof(v43));
        }

        sub_260FA9764(v45);
        sub_260FA9980(v43, &qword_27FE63830, &qword_2610BE8E0);
        a5 = v39;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v18 = v6;
      sub_260FA3F5C(*(a5 + 56) + 32 * v16, v44);
      sub_260FA6A84(v44, v43);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *a2;
      v22 = sub_260FA60B4(v45);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((v19 & 1) == 0)
        {
          sub_261098DA4();
        }
      }

      else
      {
        sub_261097330(v25, v19);
        v27 = sub_260FA60B4(v45);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_33;
        }

        v22 = v27;
      }

      v6 = v18;
      if (v26)
      {
        v34 = (v20[7] + 32 * v22);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        sub_260FA6A84(v43, v34);
      }

      else
      {
        v20[(v22 >> 6) + 8] |= 1 << v22;
        sub_260FA9708(v45, v20[6] + 40 * v22);
        sub_260FA6A84(v43, (v20[7] + 32 * v22));
        v35 = v20[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_32;
        }

        v20[2] = v37;
      }

      sub_260FA9764(v45);
      *a2 = v20;
      a5 = v39;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

uint64_t sub_26109A154(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_26109A174, 0, 0);
}

uint64_t sub_26109A174()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[5] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASDeviceInfoExchanger handlePASDeviceInfo", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26109A2C8;
  v6 = v0[3];

  return sub_261095478(v6);
}

uint64_t sub_26109A2C8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26109A610, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 64) = v3;
    *v3 = v2;
    v3[1] = sub_26109A434;

    return sub_261093E9C();
  }
}

uint64_t sub_26109A434(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26109A790;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_26109A55C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26109A55C()
{
  v7 = v0;
  v1 = *(v0 + 80);
  v6 = sub_260FA8BCC(MEMORY[0x277D84F90]);

  sub_261099E2C(v2, &v6, sub_261095BA4, 0, v1);
  swift_bridgeObjectRelease_n();
  v3 = v6;
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_26109A610()
{
  v14 = v0;
  v1 = v0[7];
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASDeviceInfoExchanger failed to handlePASDeviceInfo\n%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_26109A790()
{
  v14 = v0;
  v1 = v0[9];
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASDeviceInfoExchanger failed to handlePASDeviceInfo\n%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_26109A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 57) = a8;
  *(v8 + 136) = a6;
  *(v8 + 144) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = sub_2610BD074();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_2610BD084();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26109AA48, 0, 0);
}

uint64_t sub_26109AA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[12];
  if (v5 < 0)
  {
    __break(1u);
    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  else if (v5)
  {
    v4[26] = 0;
    v4[27] = 0;
    sub_2610BCCD4();
    v9 = (v4[13] + *v4[13]);
    v6 = swift_task_alloc();
    v4[28] = v6;
    *v6 = v4;
    v6[1] = sub_26109AF6C;

    return v9(v4 + 10);
  }

  else
  {
    sub_26109BD44();
    swift_allocError();
    swift_willThrow();

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_26109AF6C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_26109B110;
  }

  else
  {
    v2 = sub_26109B080;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26109B080()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26109B110()
{
  v29 = v0;
  v1 = *(v0 + 232);
  *(v0 + 240) = v1;

  v2 = v1;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD54();

  if (os_log_type_enabled(v5, v6))
  {
    v26 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136446466;
    swift_getErrorValue();
    v9 = sub_2610BD4A4();
    v11 = sub_260FA5970(v9, v10, &v28);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2050;
    *(v7 + 14) = v26;
    _os_log_impl(&dword_260F97000, v5, v6, "Retry task received error: %{public}s, retryCount: %{public}ld)", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  if (((*(v0 + 120))(v1) & 1) == 0)
  {
    swift_willThrow();

LABEL_14:

    v23 = *(v0 + 8);

    return v23();
  }

  if (*(v0 + 57))
  {

    v12 = *(v0 + 216) + 1;
    if (v12 != *(v0 + 96))
    {
      *(v0 + 208) = *(v0 + 240);
      *(v0 + 216) = v12;
      sub_2610BCCD4();
      v27 = (*(v0 + 104) + **(v0 + 104));
      v24 = swift_task_alloc();
      *(v0 + 224) = v24;
      *v24 = v0;
      v24[1] = sub_26109AF6C;

      return v27(v0 + 80);
    }

    swift_willThrow();
    goto LABEL_14;
  }

  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);
  sub_2610BD474();
  *(v0 + 64) = v17;
  *(v0 + 72) = v15;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v18 = sub_26109BCFC(&qword_27FE66720, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2610BD454();
  sub_26109BCFC(&qword_27FE66728, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2610BD094();
  v19 = *(v14 + 8);
  *(v0 + 248) = v19;
  *(v0 + 256) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v13, v16);
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_26109B5E8;
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);

  return MEMORY[0x2822008C8](v22, v0 + 40, v21, v18);
}

uint64_t sub_26109B5E8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 176), *(v2 + 152));
    v3 = sub_26109BC50;
  }

  else
  {
    v4 = *(v2 + 248);
    v5 = *(v2 + 240);
    v7 = *(v2 + 192);
    v6 = *(v2 + 200);
    v9 = *(v2 + 176);
    v8 = *(v2 + 184);
    v10 = *(v2 + 152);

    v4(v9, v10);
    (*(v7 + 8))(v6, v8);
    v3 = sub_26109B760;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26109B760(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1 + 216) + 1;
  if (v2 == *(v1 + 96))
  {
LABEL_2:
    swift_willThrow();
LABEL_3:

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(v1 + 272);
    v6 = 0x27FE63000uLL;
    while (1)
    {
      *(v1 + 208) = *(v1 + 240);
      *(v1 + 216) = v2;
      sub_2610BCCD4();
      if (!v5)
      {
        break;
      }

      v7 = v5;
      *(v1 + 240) = v5;

      v8 = v5;
      if (*(v6 + 2056) != -1)
      {
        swift_once();
      }

      v9 = sub_2610BC7B4();
      __swift_project_value_buffer(v9, qword_27FE65900);
      v10 = v5;
      v11 = sub_2610BC794();
      v12 = sub_2610BCD54();

      if (os_log_type_enabled(v11, v12))
      {
        v30 = *(v1 + 216);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v32 = v14;
        *v13 = 136446466;
        swift_getErrorValue();
        v15 = sub_2610BD4A4();
        v17 = v6;
        v18 = sub_260FA5970(v15, v16, &v32);

        *(v13 + 4) = v18;
        v6 = v17;
        *(v13 + 12) = 2050;
        *(v13 + 14) = v30;
        _os_log_impl(&dword_260F97000, v11, v12, "Retry task received error: %{public}s, retryCount: %{public}ld)", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x2666F8720](v14, -1, -1);
        MEMORY[0x2666F8720](v13, -1, -1);
      }

      if (((*(v1 + 120))(v7) & 1) == 0)
      {
        swift_willThrow();

        goto LABEL_3;
      }

      if ((*(v1 + 57) & 1) == 0)
      {
        v21 = *(v1 + 160);
        v20 = *(v1 + 168);
        v22 = *(v1 + 144);
        v23 = *(v1 + 152);
        v24 = *(v1 + 136);
        sub_2610BD474();
        *(v1 + 64) = v24;
        *(v1 + 72) = v22;
        *(v1 + 48) = 0;
        *(v1 + 40) = 0;
        *(v1 + 56) = 1;
        v25 = sub_26109BCFC(&qword_27FE66720, MEMORY[0x277D85928], MEMORY[0x277D85930]);
        sub_2610BD454();
        sub_26109BCFC(&qword_27FE66728, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
        sub_2610BD094();
        v26 = *(v21 + 8);
        *(v1 + 248) = v26;
        *(v1 + 256) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v26(v20, v23);
        v27 = swift_task_alloc();
        *(v1 + 264) = v27;
        *v27 = v1;
        v27[1] = sub_26109B5E8;
        v29 = *(v1 + 176);
        v28 = *(v1 + 184);

        return MEMORY[0x2822008C8](v29, v1 + 40, v28, v25);
      }

      v5 = 0;
      v2 = *(v1 + 216) + 1;
      if (v2 == *(v1 + 96))
      {
        goto LABEL_2;
      }
    }

    v31 = (*(v1 + 104) + **(v1 + 104));
    v19 = swift_task_alloc();
    *(v1 + 224) = v19;
    *v19 = v1;
    v19[1] = sub_26109AF6C;

    return v31(v1 + 80);
  }
}

uint64_t sub_26109BC50()
{
  v1 = v0[30];
  (*(v0[24] + 8))(v0[25], v0[23]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26109BCFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26109BD44()
{
  result = qword_27FE66730;
  if (!qword_27FE66730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66730);
  }

  return result;
}

uint64_t sub_26109BD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261093BB4(a1, a2, a3, v3);
}

unint64_t sub_26109BE5C(void *a1)
{
  a1[1] = sub_26109BE94();
  a1[2] = sub_26109BEE8();
  result = sub_26109BF3C();
  a1[3] = result;
  return result;
}

unint64_t sub_26109BE94()
{
  result = qword_27FE66768;
  if (!qword_27FE66768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66768);
  }

  return result;
}

unint64_t sub_26109BEE8()
{
  result = qword_27FE66770;
  if (!qword_27FE66770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66770);
  }

  return result;
}

unint64_t sub_26109BF3C()
{
  result = qword_27FE66778;
  if (!qword_27FE66778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66778);
  }

  return result;
}

unint64_t sub_26109BF94()
{
  result = qword_27FE66780;
  if (!qword_27FE66780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66780);
  }

  return result;
}

uint64_t sub_26109BFF0()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_26109C074(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_26109C0D0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_26109C154(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x636E614372657375, 0xED000064656C6C65);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v4;
}

uint64_t sub_26109C248(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x636E614372657375, 0xED000064656C6C65);
  return v2;
}

uint64_t sub_26109C2B4(uint64_t a1)
{
  v2 = sub_26109CF1C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26109C2F0(uint64_t a1)
{
  v2 = sub_26109CF1C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26109C32C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_26109C350, 0, 0);
}

uint64_t sub_26109C350()
{
  v1 = *(v0 + 48);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_26109C478;

  return v6(v2, v3);
}

uint64_t sub_26109C478(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26109C5AC, 0, 0);
}

uint64_t sub_26109C5AC()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = (*(v0 + 32))();
    *(v0 + 72) = v3;
    [v3 setAuthenticationType_];
    [v3 setAppProvidedContext_];
    v4 = [v1 aa_altDSID];
    [v3 setAltDSID_];

    [v3 setNeedsNewChildAccount_];
    [v3 _setProxyingForApp_];
    v5 = v2[10];
    v6 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
    v7 = *(v6 + 8);
    v8 = v3;
    v13 = (v7 + *v7);
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_26109C7F8;

    return v13(v3, v5, v6);
  }

  else
  {
    sub_26109CE2C();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_26109C7F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_26109C994;
  }

  else
  {

    *(v4 + 96) = a1;
    v5 = sub_26109C928;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26109C928()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 96);

  return v2(v3);
}

uint64_t sub_26109C994()
{
  v35 = v0;

  v1 = sub_2610BC4E4();
  v2 = [v1 code];

  if (v2 == -7003)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 88);
    v4 = sub_2610BC7B4();
    __swift_project_value_buffer(v4, qword_27FE65900);
    v5 = v3;
    v6 = sub_2610BC794();
    v7 = sub_2610BCD84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 88);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136446210;
      *(v0 + 24) = v8;
      v11 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v12 = sub_2610BCA34();
      v14 = sub_260FA5970(v12, v13, v34);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepAccountCreation user cancelled: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x2666F8720](v10, -1, -1);
      MEMORY[0x2666F8720](v9, -1, -1);
    }

    v15 = *(v0 + 88);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    sub_26109CE80();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 88);
    v19 = sub_2610BC7B4();
    __swift_project_value_buffer(v19, qword_27FE65900);
    v20 = v18;
    v21 = sub_2610BC794();
    v22 = sub_2610BCD64();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 88);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136446210;
      *(v0 + 16) = v23;
      v26 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v27 = sub_2610BCA34();
      v29 = sub_260FA5970(v27, v28, v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_260F97000, v21, v22, "PASFlowStepAccountCreation failed: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2666F8720](v25, -1, -1);
      MEMORY[0x2666F8720](v24, -1, -1);
    }

    v30 = *(v0 + 64);
    v31 = *(v0 + 72);
    swift_willThrow();
  }

  v32 = *(v0 + 8);

  return v32();
}