uint64_t sub_1A879E6F8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A879E8B0;
  }

  else
  {
    v2 = sub_1A879E80C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A879E80C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A879E8B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A879E954(uint64_t a1)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A879E974, 0, 0);
}

uint64_t sub_1A879E974()
{
  v46 = v0;
  v1 = *(v0[30] + 16);
  v0[32] = v1;
  if (!v1)
  {
LABEL_26:
    v35 = v0[1];

    return v35();
  }

  v41 = v0 + 26;
  v2 = sub_1A88C7E58();
  v3 = 0;
  v43 = *(*(v2 - 8) + 64);
  v44 = *(v2 - 8);
  v42 = (v44 + 8);
  while (1)
  {
    v0[33] = v3;
    v4 = v0[30] + 16 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v0[34] = v2;
    v0[35] = v44;
    v0[36] = v43;
    v7 = swift_task_alloc();
    if (!MEMORY[0x1E698D428])
    {
      sub_1A88C7E48();
      v22 = sub_1A88C7E38();
      v23 = sub_1A88C89D8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1A85E5000, v22, v23, "Asset download not supported", v24, 2u);
        MEMORY[0x1AC571F20](v24, -1, -1);
      }

      (*v42)(v7, v2);

      goto LABEL_4;
    }

    sub_1A88C7E48();

    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89D8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v45 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1A85F0394(v5, v6, &v45);
      _os_log_impl(&dword_1A85E5000, v8, v9, "Downloading assets for %s", v10, 0xCu);
      sub_1A85F1084(v11);
      MEMORY[0x1AC571F20](v11, -1, -1);
      MEMORY[0x1AC571F20](v10, -1, -1);
    }

    v12 = *v42;
    (*v42)(v7, v2);
    v0[37] = v12;
    v13 = v0[31];

    v14 = *(v13 + 72);
    if (v14)
    {
      break;
    }

    v15 = v5;
    v16 = v0[31];
    v17 = [objc_allocWithZone(MEMORY[0x1E698D428]) init];
    v14 = v17;
    v18 = *(v16 + 72);
    *(v16 + 72) = v17;
    if (v18)
    {
      if (!v17)
      {
        goto LABEL_17;
      }

      sub_1A85E9718(0, &qword_1EB305470, 0x1E698D428);
      v19 = v14;
      v20 = v18;
      v21 = sub_1A88C8BA8();

      if ((v21 & 1) == 0)
      {
        v26 = *(v0[31] + 72);
        goto LABEL_19;
      }

LABEL_23:
      v14 = *(v0[31] + 72);
      goto LABEL_24;
    }

    if (v17)
    {
      v25 = v17;
LABEL_17:
      v26 = v14;
LABEL_19:
      if (v26)
      {
        v27 = v0[31];
        v28 = swift_allocObject();
        swift_weakInit();
        v0[22] = sub_1A87A010C;
        v0[23] = v28;
        v0[18] = MEMORY[0x1E69E9820];
        v0[19] = 1107296256;
        v0[20] = sub_1A85EB8C0;
        v0[21] = &unk_1F1BAE698;
        v29 = _Block_copy(v0 + 18);
        v30 = v26;

        [v30 setInterruptionHandler_];
        _Block_release(v29);

        v31 = *(v27 + 72);
        if (v31)
        {
          v32 = swift_allocObject();
          swift_weakInit();
          v0[28] = sub_1A87A0130;
          v0[29] = v32;
          v0[24] = MEMORY[0x1E69E9820];
          v0[25] = 1107296256;
          v0[26] = sub_1A85EB8C0;
          v0[27] = &unk_1F1BAE6C0;
          v33 = _Block_copy(v0 + 24);
          v34 = v31;

          [v34 setInvalidationHandler_];
          _Block_release(v33);
        }
      }

      v19 = v18;
      goto LABEL_23;
    }

LABEL_24:
    v5 = v15;
    if (v14)
    {
      break;
    }

LABEL_4:
    v3 = v0[33] + 1;
    if (v3 == v0[32])
    {
      goto LABEL_26;
    }
  }

  v0[38] = v14;
  sub_1A870CCE0(&unk_1EB306530, &qword_1A88E3490);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A88E14F0;
  *(v37 + 32) = v5;
  *(v37 + 40) = v6;
  v38 = v14;
  v39 = sub_1A88C85E8();
  v0[39] = v39;

  v0[2] = v0;
  v0[3] = sub_1A879F06C;
  v40 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&qword_1EB304C48, &unk_1A88E90F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A876D87C;
  v0[13] = &unk_1F1BAE648;
  v0[14] = v40;
  [v38 downloadTranslationAssets:v39 useCellular:1 showDownloadCompleteNotification:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A879F06C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_1A879F884;
  }

  else
  {
    v2 = sub_1A879F17C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A879F17C()
{
  v46 = v0;
  v1 = *(v0 + 304);

  v2 = *(v0 + 264) + 1;
  if (v2 == *(v0 + 256))
  {
LABEL_2:
    v3 = *(v0 + 8);

    return v3();
  }

  v5 = sub_1A88C7E58();
  v43 = *(*(v5 - 8) + 64);
  v44 = *(v5 - 8);
  v42 = (v44 + 8);
  v41 = v0 + 208;
  while (1)
  {
    *(v0 + 264) = v2;
    v6 = *(v0 + 240) + 16 * v2;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    *(v0 + 272) = v5;
    *(v0 + 280) = v44;
    *(v0 + 288) = v43;
    v9 = swift_task_alloc();
    if (!MEMORY[0x1E698D428])
    {
      sub_1A88C7E48();
      v24 = sub_1A88C7E38();
      v25 = sub_1A88C89D8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1A85E5000, v24, v25, "Asset download not supported", v26, 2u);
        MEMORY[0x1AC571F20](v26, -1, -1);
      }

      (*v42)(v9, v5);

      goto LABEL_7;
    }

    sub_1A88C7E48();

    v10 = sub_1A88C7E38();
    v11 = sub_1A88C89D8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v45 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1A85F0394(v7, v8, &v45);
      _os_log_impl(&dword_1A85E5000, v10, v11, "Downloading assets for %s", v12, 0xCu);
      sub_1A85F1084(v13);
      MEMORY[0x1AC571F20](v13, -1, -1);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }

    v14 = *v42;
    (*v42)(v9, v5);
    *(v0 + 296) = v14;
    v15 = *(v0 + 248);

    v16 = *(v15 + 72);
    if (v16)
    {
      break;
    }

    v17 = v7;
    v18 = *(v0 + 248);
    v19 = [objc_allocWithZone(MEMORY[0x1E698D428]) init];
    v16 = v19;
    v20 = *(v18 + 72);
    *(v18 + 72) = v19;
    if (v20)
    {
      if (!v19)
      {
        goto LABEL_20;
      }

      sub_1A85E9718(0, &qword_1EB305470, 0x1E698D428);
      v21 = v16;
      v22 = v20;
      v23 = sub_1A88C8BA8();

      if ((v23 & 1) == 0)
      {
        v28 = *(*(v0 + 248) + 72);
        goto LABEL_22;
      }

LABEL_26:
      v16 = *(*(v0 + 248) + 72);
      goto LABEL_27;
    }

    if (v19)
    {
      v27 = v19;
LABEL_20:
      v28 = v16;
LABEL_22:
      if (v28)
      {
        v29 = *(v0 + 248);
        v30 = swift_allocObject();
        swift_weakInit();
        *(v0 + 176) = sub_1A87A010C;
        *(v0 + 184) = v30;
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_1A85EB8C0;
        *(v0 + 168) = &unk_1F1BAE698;
        v31 = _Block_copy((v0 + 144));
        v32 = v28;

        [v32 setInterruptionHandler_];
        _Block_release(v31);

        v33 = *(v29 + 72);
        if (v33)
        {
          v34 = swift_allocObject();
          swift_weakInit();
          *(v0 + 224) = sub_1A87A0130;
          *(v0 + 232) = v34;
          *(v0 + 192) = MEMORY[0x1E69E9820];
          *(v0 + 200) = 1107296256;
          *(v0 + 208) = sub_1A85EB8C0;
          *(v0 + 216) = &unk_1F1BAE6C0;
          v35 = _Block_copy((v0 + 192));
          v36 = v33;

          [v36 setInvalidationHandler_];
          _Block_release(v35);
        }
      }

      v21 = v20;
      goto LABEL_26;
    }

LABEL_27:
    v7 = v17;
    if (v16)
    {
      break;
    }

LABEL_7:
    v2 = *(v0 + 264) + 1;
    if (v2 == *(v0 + 256))
    {
      goto LABEL_2;
    }
  }

  *(v0 + 304) = v16;
  sub_1A870CCE0(&unk_1EB306530, &qword_1A88E3490);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A88E14F0;
  *(v37 + 32) = v7;
  *(v37 + 40) = v8;
  v38 = v16;
  v39 = sub_1A88C85E8();
  *(v0 + 312) = v39;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1A879F06C;
  v40 = swift_continuation_init();
  *(v0 + 136) = sub_1A870CCE0(&qword_1EB304C48, &unk_1A88E90F0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A876D87C;
  *(v0 + 104) = &unk_1F1BAE648;
  *(v0 + 112) = v40;
  [v38 downloadTranslationAssets:v39 useCellular:1 showDownloadCompleteNotification:0 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A879F884(uint64_t a1)
{
  v2 = v1[39];
  v3 = v1[40];
  v4 = v1[38];
  swift_willThrow();

  v5 = swift_task_alloc();
  sub_1A88C7E48();
  v6 = v3;
  v7 = sub_1A88C7E38();
  v8 = sub_1A88C89C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[40];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1A85E5000, v7, v8, "assetManagementClient download failed: %@", v10, 0xCu);
    sub_1A85EF638(v11, &qword_1EB306540, &qword_1A88E8320);
    MEMORY[0x1AC571F20](v11, -1, -1);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }

  v14 = v1[37];
  v15 = v1[34];

  v14(v5, v15);

  swift_willThrow();
  v16 = v1[1];

  return v16();
}

Swift::Void __swiftcall TranslationLanguages.removeLanguage(for:)(Swift::String a1)
{
  v1 = sub_1A88C75E8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A88C74C8();
  v5 = objc_opt_self();
  sub_1A870CCE0(&qword_1EB3034C0, &qword_1A88E9070);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A88E14F0;
  (*(v2 + 16))(v7 + v6, v4, v1);
  v8 = sub_1A88C85E8();

  [v5 removeLanguages_];

  (*(v2 + 8))(v4, v1);
}

void sub_1A879FC00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A870CCE0(&unk_1EB306530, &qword_1A88E3490);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1A879FCD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for IMLowPowerModeMonitor.ListenerBox();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A870CCE0(&qword_1EB303098, &qword_1A88E2A60);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1A879FDBC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1A85F2008(v2, 0);

    MEMORY[0x1AC56F6E0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1A88C8D38();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t dispatch thunk of TranslationLanguages.awaitFirstObservation()()
{
  v4 = (*(*v0 + 384) + **(*v0 + 384));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A8716570;

  return v4();
}

uint64_t sub_1A87A0154()
{
  v1 = *(sub_1A870CCE0(&qword_1EB303D00, &unk_1A88E9100) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1A879BD14(v2, v3);
}

uint64_t sub_1A87A0238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8716570;

  return sub_1A879C758(a1, v4, v5, v7, v6);
}

uint64_t sub_1A87A02F8(uint64_t *a1)
{
  v2 = *(type metadata accessor for TranslationLanguage(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A8885A7C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1A87A03A0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1A87A03A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A88C9338();
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
        type metadata accessor for TranslationLanguage(0);
        v6 = sub_1A88C8658();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TranslationLanguage(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A87A0754(v8, v9, a1, v4);
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
    return sub_1A87A04CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A87A04CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TranslationLanguage(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v31 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v42 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v38 = -v17;
    v39 = v16;
    v19 = a1 - a3;
    v32 = v17;
    v20 = v16 + v17 * a3;
    v41 = v8;
LABEL_5:
    v36 = v18;
    v37 = a3;
    v34 = v20;
    v35 = v19;
    while (1)
    {
      v21 = v42;
      sub_1A876E4B4(v20, v42);
      v22 = v46;
      sub_1A876E4B4(v18, v46);
      LOBYTE(v45[0]) = 0;
      v23 = Locale.displayName(context:)(v45);
      v25 = v24;
      LOBYTE(v45[0]) = 0;
      v26 = Locale.displayName(context:)(v45);
      v45[0] = v23;
      v45[1] = v25;
      v43 = v26;
      v44 = v27;
      sub_1A8722620();
      v28 = sub_1A88C8C78();

      sub_1A879C55C(v22);
      result = sub_1A879C55C(v21);
      if (v28 != -1)
      {
LABEL_4:
        a3 = v37 + 1;
        v18 = v36 + v32;
        v19 = v35 - 1;
        v20 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v29 = v40;
      sub_1A8739C78(v20, v40);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1A8739C78(v29, v18);
      v18 += v38;
      v20 += v38;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A87A0754(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v116 = a1;
  v8 = type metadata accessor for TranslationLanguage(0);
  v125 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v118 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v130 = &v113 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v131 = &v113 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v132 = &v113 - v16;
  v17 = a3[1];
  if (v17 >= 1)
  {
    v114 = a4;
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v133 = v8;
    v117 = a3;
    while (1)
    {
      if (v18 + 1 >= v17)
      {
        v31 = v18 + 1;
      }

      else
      {
        v127 = v17;
        v20 = *a3;
        v21 = *(v125 + 72);
        v128 = v21;
        v129 = v20;
        a4 = v20 + v21 * (v18 + 1);
        sub_1A876E4B4(a4, v132);
        v22 = v20 + v21 * v18;
        v23 = v131;
        sub_1A876E4B4(v22, v131);
        LOBYTE(v136) = 0;
        v24 = Locale.displayName(context:)(&v136);
        v26 = v25;
        LOBYTE(v136) = 0;
        v27 = Locale.displayName(context:)(&v136);
        v136 = v24;
        v137 = v26;
        v134 = v27;
        v135 = v28;
        v122 = sub_1A8722620();
        v124 = sub_1A88C8C78();

        sub_1A879C55C(v23);
        result = sub_1A879C55C(v132);
        v115 = v18;
        v29 = v18 + 2;
        v30 = v129 + v128 * (v18 + 2);
        v123 = v19;
        while (1)
        {
          v31 = v127;
          if (v127 == v29)
          {
            break;
          }

          v126 = v5;
          LODWORD(v129) = v124 == -1;
          v32 = v132;
          sub_1A876E4B4(v30, v132);
          v33 = v131;
          sub_1A876E4B4(a4, v131);
          LOBYTE(v136) = 0;
          v34 = Locale.displayName(context:)(&v136);
          v36 = v35;
          LOBYTE(v136) = 0;
          v37 = Locale.displayName(context:)(&v136);
          v136 = v34;
          v137 = v36;
          v134 = v37;
          v135 = v38;
          v39 = sub_1A88C8C78();

          sub_1A879C55C(v33);
          result = sub_1A879C55C(v32);
          v19 = v123;
          v5 = v126;
          ++v29;
          v30 += v128;
          a4 += v128;
          if (((v129 ^ (v39 != -1)) & 1) == 0)
          {
            v31 = v29 - 1;
            break;
          }
        }

        a3 = v117;
        v18 = v115;
        if (v124 == -1)
        {
          if (v31 < v115)
          {
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
            return result;
          }

          if (v115 < v31)
          {
            v40 = v128 * (v31 - 1);
            v41 = v31 * v128;
            v127 = v31;
            v42 = v31;
            v43 = v115;
            v44 = v115 * v128;
            do
            {
              if (v43 != --v42)
              {
                v45 = *v117;
                if (!*v117)
                {
                  goto LABEL_130;
                }

                a4 = v45 + v44;
                sub_1A8739C78(v45 + v44, v118);
                if (v44 < v40 || a4 >= v45 + v41)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v44 != v40)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_1A8739C78(v118, v45 + v40);
              }

              ++v43;
              v40 -= v128;
              v41 -= v128;
              v44 += v128;
            }

            while (v43 < v42);
            a3 = v117;
            v18 = v115;
            v31 = v127;
          }
        }
      }

      v46 = a3[1];
      if (v31 >= v46)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v31, v18))
      {
        goto LABEL_122;
      }

      if (v31 - v18 >= v114)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v18, v114))
      {
        goto LABEL_123;
      }

      if (v18 + v114 >= v46)
      {
        v47 = a3[1];
      }

      else
      {
        v47 = v18 + v114;
      }

      if (v47 < v18)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v31 == v47)
      {
LABEL_32:
        v48 = v31;
        if (v31 < v18)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v123 = v19;
        v126 = v5;
        v94 = *a3;
        v95 = *(v125 + 72);
        v96 = *a3 + v95 * (v31 - 1);
        v128 = -v95;
        v115 = v18;
        v97 = v18 - v31;
        v129 = v94;
        v119 = v95;
        v120 = v47;
        a4 = v94 + v31 * v95;
        do
        {
          v127 = v31;
          v121 = a4;
          v122 = v97;
          v124 = v96;
          v98 = v96;
          do
          {
            v99 = v132;
            sub_1A876E4B4(a4, v132);
            v100 = v131;
            sub_1A876E4B4(v98, v131);
            LOBYTE(v136) = 0;
            v101 = Locale.displayName(context:)(&v136);
            v103 = v102;
            LOBYTE(v136) = 0;
            v104 = Locale.displayName(context:)(&v136);
            v136 = v101;
            v137 = v103;
            v134 = v104;
            v135 = v105;
            sub_1A8722620();
            v106 = sub_1A88C8C78();

            sub_1A879C55C(v100);
            result = sub_1A879C55C(v99);
            if (v106 != -1)
            {
              break;
            }

            if (!v129)
            {
              goto LABEL_127;
            }

            v107 = v130;
            sub_1A8739C78(a4, v130);
            swift_arrayInitWithTakeFrontToBack();
            sub_1A8739C78(v107, v98);
            v98 += v128;
            a4 += v128;
          }

          while (!__CFADD__(v97++, 1));
          v31 = v127 + 1;
          v48 = v120;
          v96 = v124 + v119;
          v97 = v122 - 1;
          a4 = v121 + v119;
        }

        while (v127 + 1 != v120);
        v5 = v126;
        a3 = v117;
        v19 = v123;
        v18 = v115;
        if (v120 < v115)
        {
          goto LABEL_121;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A873586C(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      a4 = *(v19 + 2);
      v49 = *(v19 + 3);
      v50 = a4 + 1;
      if (a4 >= v49 >> 1)
      {
        result = sub_1A873586C((v49 > 1), a4 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v50;
      v51 = &v19[16 * a4];
      *(v51 + 4) = v18;
      *(v51 + 5) = v48;
      v120 = v48;
      v52 = *v116;
      if (!*v116)
      {
        goto LABEL_131;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v53 = *(v19 + 4);
            v54 = *(v19 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_52:
            if (v56)
            {
              goto LABEL_110;
            }

            v69 = &v19[16 * v50];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = &v19[16 * a4 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_117;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                a4 = v50 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v79 = &v19[16 * v50];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_66:
          if (v74)
          {
            goto LABEL_112;
          }

          v82 = &v19[16 * a4];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_115;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_73:
          v90 = a4 - 1;
          if (a4 - 1 >= v50)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v91 = *&v19[16 * v90 + 32];
          v92 = *&v19[16 * a4 + 40];
          sub_1A87A112C(*a3 + *(v125 + 72) * v91, *a3 + *(v125 + 72) * *&v19[16 * a4 + 32], *a3 + *(v125 + 72) * v92, v52);
          if (v5)
          {
          }

          if (v92 < v91)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1A8885A28(v19);
          }

          if (v90 >= *(v19 + 2))
          {
            goto LABEL_107;
          }

          v93 = &v19[16 * v90];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          v138 = v19;
          result = sub_1A888599C(a4);
          v19 = v138;
          v50 = *(v138 + 2);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v19[16 * v50 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_108;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_109;
        }

        v64 = &v19[16 * v50];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_111;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_114;
        }

        if (v68 >= v60)
        {
          v86 = &v19[16 * a4 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_118;
          }

          if (v55 < v89)
          {
            a4 = v50 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v17 = a3[1];
      v18 = v120;
      if (v120 >= v17)
      {
        goto LABEL_94;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_94:
  a4 = *v116;
  if (!*v116)
  {
    goto LABEL_132;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_125:
    result = sub_1A8885A28(v19);
    v19 = result;
  }

  v138 = v19;
  v109 = *(v19 + 2);
  if (v109 >= 2)
  {
    while (*a3)
    {
      v110 = *&v19[16 * v109];
      v111 = *&v19[16 * v109 + 24];
      sub_1A87A112C(*a3 + *(v125 + 72) * v110, *a3 + *(v125 + 72) * *&v19[16 * v109 + 16], *a3 + *(v125 + 72) * v111, a4);
      if (v5)
      {
      }

      if (v111 < v110)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1A8885A28(v19);
      }

      if (v109 - 2 >= *(v19 + 2))
      {
        goto LABEL_120;
      }

      v112 = &v19[16 * v109];
      *v112 = v110;
      *(v112 + 1) = v111;
      v138 = v19;
      result = sub_1A888599C(v109 - 1);
      v19 = v138;
      v109 = *(v138 + 2);
      if (v109 <= 1)
      {
      }
    }

    goto LABEL_129;
  }
}

uint64_t sub_1A87A112C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = a3;
  v53 = type metadata accessor for TranslationLanguage(0);
  v7 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v50 = &v44 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = v54 - a2;
  if (v54 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v61 = a1;
  v60 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v16;
    if (v16 >= 1)
    {
      v29 = -v12;
      v30 = v28;
      v52 = a1;
      v46 = a4;
      v47 = -v12;
      while (2)
      {
        while (1)
        {
          v44 = v28;
          v48 = a2;
          v49 = a2 + v29;
          while (1)
          {
            v32 = v54;
            if (a2 <= a1)
            {
              v61 = a2;
              v59 = v44;
              goto LABEL_58;
            }

            v45 = v28;
            v54 += v29;
            v33 = v30 + v29;
            v34 = v50;
            sub_1A876E4B4(v33, v50);
            v35 = v51;
            sub_1A876E4B4(v49, v51);
            LOBYTE(v57) = 0;
            v36 = Locale.displayName(context:)(&v57);
            v38 = v37;
            LOBYTE(v57) = 0;
            v39 = Locale.displayName(context:)(&v57);
            v57 = v36;
            v58 = v38;
            v55 = v39;
            v56 = v40;
            sub_1A8722620();
            v41 = sub_1A88C8C78();

            sub_1A879C55C(v35);
            sub_1A879C55C(v34);
            if (v41 == -1)
            {
              break;
            }

            v28 = v33;
            v42 = v46;
            if (v32 < v30 || v54 >= v30)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v52;
            }

            else
            {
              a1 = v52;
              if (v32 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v30 = v33;
            v31 = v33 > v42;
            v29 = v47;
            a2 = v48;
            if (!v31)
            {
              goto LABEL_56;
            }
          }

          v43 = v46;
          if (v32 < v48 || v54 >= v48)
          {
            break;
          }

          a2 = v49;
          a1 = v52;
          v28 = v45;
          v29 = v47;
          if (v32 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v30 <= v43)
          {
            goto LABEL_56;
          }
        }

        a2 = v49;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v52;
        v28 = v45;
        v29 = v47;
        if (v30 > v43)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v61 = a2;
    v59 = v28;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v15;
    v59 = a4 + v15;
    if (v15 >= 1 && a2 < v54)
    {
      do
      {
        v52 = a1;
        v18 = v50;
        sub_1A876E4B4(a2, v50);
        v19 = v51;
        sub_1A876E4B4(a4, v51);
        LOBYTE(v57) = 0;
        v20 = a4;
        v21 = Locale.displayName(context:)(&v57);
        v23 = v22;
        LOBYTE(v57) = 0;
        v24 = Locale.displayName(context:)(&v57);
        v57 = v21;
        v58 = v23;
        v55 = v24;
        v56 = v25;
        sub_1A8722620();
        v26 = sub_1A88C8C78();

        sub_1A879C55C(v19);
        sub_1A879C55C(v18);
        if (v26 == -1)
        {
          v27 = v52;
          if (v52 < a2 || v52 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
          goto LABEL_33;
        }

        a4 += v12;
        v27 = v52;
        if (v52 < v20 || v52 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v52 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v60 = v20 + v12;
          goto LABEL_33;
        }

        v60 = v20 + v12;
LABEL_33:
        a1 = v27 + v12;
        v61 = a1;
      }

      while (a4 < v49 && a2 < v54);
    }
  }

LABEL_58:
  sub_1A87A16A8(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_1A87A16A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TranslationLanguage(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1A87A178C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB304C30, &qword_1A88E8158);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43[-v5];
  v7 = type metadata accessor for TranslationLanguage(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v43[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43[-v13];
  v50 = a1;
  v15 = *(a1 + 16);

  if (v15)
  {
    v17 = 0;
    v48 = (v8 + 56);
    v18 = 2;
    v46 = v8;
    v47 = v7;
    v45 = v15;
LABEL_3:
    v44 = v18;
    while (v17 < v15)
    {
      if (__OFADD__(v17, 1))
      {
        goto LABEL_44;
      }

      v51 = v17 + 1;
      v19 = *(v8 + 72);
      sub_1A876E4B4(v50 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v19 * v17, v14);
      v20 = sub_1A88C74D8();
      if (!*(a2 + 16))
      {
        sub_1A879C55C(v14);

LABEL_42:

        return 0;
      }

      v22 = sub_1A85F5F40(v20, v21);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        sub_1A879C55C(v14);
        goto LABEL_42;
      }

      v25 = *(a2 + 56) + v22 * v19;
      v26 = v49;
      sub_1A876E4B4(v25, v49);
      sub_1A8739C78(v26, v52);
      v27 = sub_1A88C74D8();
      v29 = sub_1A85F5F40(v27, v28);
      LOBYTE(v26) = v30;

      if (v26)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = a2;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1A87B16A4();
          a2 = v53;
        }

        sub_1A8739C78(*(a2 + 56) + v29 * v19, v6);
        sub_1A87B03D0(v29, a2);
        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      (*v48)(v6, v32, 1, v7);
      v33 = v6;
      sub_1A85EF638(v6, &qword_1EB304C30, &qword_1A88E8158);
      v34 = *v52;
      v35 = *(v52 + 8);
      v36 = *(v52 + 9);
      sub_1A879C55C(v52);
      v37 = *v14;
      v38 = *(v14 + 8);
      v39 = *(v14 + 9);
      result = sub_1A879C55C(v14);
      if (v36 == 1)
      {
        if (*&v34 | v35)
        {
          if (*&v34 ^ 1 | v35)
          {
            if (!v39)
            {
              goto LABEL_42;
            }

            v6 = v33;
            if (*&v37 ^ 2 | v38)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (!v39)
            {
              goto LABEL_42;
            }

            v6 = v33;
            if (*&v37 ^ 1 | v38)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          if (!v39)
          {
            goto LABEL_42;
          }

          v6 = v33;
          if (*&v37 | v38)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        if (v39)
        {
          goto LABEL_42;
        }

        v40 = v34;
        if (v35)
        {
          v40 = 0.0;
        }

        v41 = v40 + 0.01;
        if (v38)
        {
          v6 = v33;
          if (v41 < 0.0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v6 = v33;
          if (v41 < v37)
          {
LABEL_34:
            v18 = 1;
            v15 = v45;
            v8 = v46;
            v17 = v51;
            v7 = v47;
            if (v51 != v45)
            {
              goto LABEL_3;
            }

            goto LABEL_39;
          }
        }
      }

      ++v17;
      v15 = v45;
      v8 = v46;
      v7 = v47;
      if (v51 == v45)
      {
        v18 = v44;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    v18 = 2;
LABEL_39:
    v42 = *(a2 + 16);

    if (v42)
    {
      return 0;
    }

    else
    {
      return v18;
    }
  }

  return result;
}

uint64_t sub_1A87A1BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationLanguage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A87A1C4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A8716570;

  return sub_1A879D1C4(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_1A87A1D24(char a1)
{
  v2 = sub_1A870CCE0(&unk_1EB3090D0, &qword_1A88E2A30);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v6 = &unk_1A88E9138;
  }

  else
  {
    v6 = &unk_1A88E9148;
  }

  v7 = sub_1A88C87A8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1A88C8768();
  v8 = sub_1A88C8758();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  sub_1A885A178(0, 0, v5, v6, v9);
}

uint64_t sub_1A87A1E7C()
{
  sub_1A870CCE0(&qword_1EB303D00, &unk_1A88E9100);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1A879D9EC(v1, v2);
}

uint64_t sub_1A87A1EEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A8714B6C;

  return sub_1A879DB78();
}

uint64_t sub_1A87A1F98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A8716570;

  return sub_1A879DA40();
}

unint64_t sub_1A87A2044()
{
  result = qword_1ED8C9580;
  if (!qword_1ED8C9580)
  {
    v3 = sub_1A88C8A18();
    result = swift_getWitnessTable(MEMORY[0x1E69E8040], v3, v0, v1);
    atomic_store(result, &qword_1ED8C9580);
  }

  return result;
}

unint64_t sub_1A87A209C()
{
  result = qword_1ED8C9590;
  if (!qword_1ED8C9590)
  {
    v3 = sub_1A870CD28(&qword_1EB3023F0, &unk_1A88E1500);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1ED8C9590);
  }

  return result;
}

__n128 sub_1A87A2178(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 56);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1A87A21C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 228))
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

uint64_t sub_1A87A2220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 228) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 228) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A87A22CC(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x44496D616461;
      break;
    case 2:
      result = 0x656D614E707061;
      break;
    case 3:
      result = 0x4449656C646E7562;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6853746E656D6F6DLL;
      break;
    case 6:
      result = 0x5574657373416870;
      break;
    case 7:
      result = 0x726566736E617274;
      break;
    case 8:
      result = 0x756F437465737361;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A87A24C4(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB305478, &qword_1A88E9248);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87A3698();
  sub_1A88C95C8();
  LOBYTE(v13[0]) = 0;
  sub_1A88C91C8();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    sub_1A88C91C8();
    LOBYTE(v13[0]) = 2;
    sub_1A88C91C8();
    LOBYTE(v13[0]) = 3;
    sub_1A88C91C8();
    LOBYTE(v13[0]) = 4;
    sub_1A88C91C8();
    LOBYTE(v13[0]) = 5;
    sub_1A88C91C8();
    LOBYTE(v13[0]) = 6;
    sub_1A88C91C8();
    LOBYTE(v13[0]) = 7;
    sub_1A88C9218();
    LOBYTE(v13[0]) = 8;
    sub_1A88C9218();
    LOBYTE(v13[0]) = 9;
    sub_1A88C91D8();
    LOBYTE(v13[0]) = 10;
    sub_1A88C9208();
    LOBYTE(v13[0]) = *(v3 + 153);
    v15 = 11;
    sub_1A87A36EC();
    sub_1A88C9228();
    LOBYTE(v13[0]) = 12;
    sub_1A88C91D8();
    LOBYTE(v13[0]) = 13;
    sub_1A88C91D8();
    v9 = *(v3 + 160);
    LOBYTE(v13[0]) = 14;
    v15 = v9;
    sub_1A88C91F8();
    v10 = *(v3 + 168);
    LOBYTE(v13[0]) = 15;
    v15 = v10;
    sub_1A88C91F8();
    v11 = *(v3 + 192);
    v13[0] = *(v3 + 176);
    v13[1] = v11;
    v13[2] = *(v3 + 208);
    v14 = *(v3 + 224);
    v15 = 16;
    sub_1A87A3740();
    sub_1A88C9228();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A87A28D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A87A43F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A87A2904(uint64_t a1)
{
  v2 = sub_1A87A3698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87A2940(uint64_t a1)
{
  v2 = sub_1A87A3698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1A87A297C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1A87A4948(a2, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v5;
    *(a1 + 224) = v12;
    v6 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v6;
    v7 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v7;
    v8 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v8;
    v9 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v9;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
    result = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1A87A2A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC8];
  v94 = MEMORY[0x1E69E7CC8];
  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v5;
  v6 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v7 = v3[1];
  if (v7)
  {
    v8 = *v3;
    v93 = v6;
    *&v92 = v8;
    *(&v92 + 1) = v7;
    sub_1A85E99B0(&v92, &v90);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v4;
    sub_1A87AC424(&v90, v95, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v95);
    v94 = v4;
  }

  else
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v10;
  v11 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v12 = v3[3];
  if (v12)
  {
    v13 = v3[2];
    v93 = v11;
    *&v92 = v13;
    *(&v92 + 1) = v12;
    sub_1A85E99B0(&v92, &v90);

    v14 = v94;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v14;
    sub_1A87AC424(&v90, v95, v15);
    sub_1A8717360(v95);
    v94 = v14;
  }

  else
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v16;
  sub_1A88C8D88();
  v17 = v3[5];
  if (v17)
  {
    v18 = v3[4];
    v93 = v11;
    *&v92 = v18;
    *(&v92 + 1) = v17;
    sub_1A85E99B0(&v92, &v90);

    v19 = v94;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v19;
    sub_1A87AC424(&v90, v95, v20);
    sub_1A8717360(v95);
    v94 = v19;
  }

  else
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v21;
  sub_1A88C8D88();
  v22 = v3[7];
  if (v22)
  {
    v23 = v3[6];
    v93 = v11;
    *&v92 = v23;
    *(&v92 + 1) = v22;
    sub_1A85E99B0(&v92, &v90);

    v24 = v94;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v24;
    sub_1A87AC424(&v90, v95, v25);
    sub_1A8717360(v95);
    v94 = v24;
  }

  else
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v26;
  sub_1A88C8D88();
  v27 = v3[9];
  if (v27)
  {
    v28 = v3[8];
    v93 = v11;
    *&v92 = v28;
    *(&v92 + 1) = v27;
    sub_1A85E99B0(&v92, &v90);

    v29 = v94;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v29;
    sub_1A87AC424(&v90, v95, v30);
    sub_1A8717360(v95);
    v94 = v29;
  }

  else
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v31;
  sub_1A88C8D88();
  v32 = v3[11];
  if (v32)
  {
    v33 = v3[10];
    v93 = v11;
    *&v92 = v33;
    *(&v92 + 1) = v32;
    sub_1A85E99B0(&v92, &v90);

    v34 = v94;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v34;
    sub_1A87AC424(&v90, v95, v35);
    sub_1A8717360(v95);
    v94 = v34;
  }

  else
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v36;
  sub_1A88C8D88();
  v37 = v3[13];
  if (v37)
  {
    v38 = v3[12];
    v93 = v11;
    *&v92 = v38;
    *(&v92 + 1) = v37;
    sub_1A85E99B0(&v92, &v90);

    v39 = v94;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v39;
    sub_1A87AC424(&v90, v95, v40);
    sub_1A8717360(v95);
    v94 = v39;
  }

  else
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v41;
  sub_1A88C8D88();
  v42 = MEMORY[0x1E69E6810];
  if (v3[15])
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v43 = v3[14];
    v93 = MEMORY[0x1E69E6810];
    *&v92 = v43;
    sub_1A85E99B0(&v92, &v90);
    v44 = v94;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v44;
    sub_1A87AC424(&v90, v95, v45);
    sub_1A8717360(v95);
    v94 = v44;
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v46;
  sub_1A88C8D88();
  if (v3[17])
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v47 = v3[16];
    v93 = v42;
    *&v92 = v47;
    sub_1A85E99B0(&v92, &v90);
    v48 = v94;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v48;
    sub_1A87AC424(&v90, v95, v49);
    sub_1A8717360(v95);
    v94 = v48;
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v50;
  sub_1A88C8D88();
  v51 = *(v3 + 137);
  v52 = MEMORY[0x1E69E6370];
  if (v51 == 2)
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v93 = MEMORY[0x1E69E6370];
    LOBYTE(v92) = v51;
    sub_1A85E99B0(&v92, &v90);
    v53 = v94;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v53;
    sub_1A87AC424(&v90, v95, v54);
    sub_1A8717360(v95);
    v94 = v53;
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v55;
  sub_1A88C8D88();
  v56 = MEMORY[0x1E69E6530];
  if (v3[19])
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v57 = v3[18];
    v93 = MEMORY[0x1E69E6530];
    *&v92 = v57;
    sub_1A85E99B0(&v92, &v90);
    v58 = v94;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v58;
    sub_1A87AC424(&v90, v95, v59);
    sub_1A8717360(v95);
    v94 = v58;
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v60;
  sub_1A88C8D88();
  v61 = *(v3 + 153);
  if (v61 == 4)
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v93 = v56;
    *&v92 = v61;
    sub_1A85E99B0(&v92, &v90);
    v62 = v94;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v62;
    sub_1A87AC424(&v90, v95, v63);
    sub_1A8717360(v95);
    v94 = v62;
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v64;
  sub_1A88C8D88();
  v65 = *(v3 + 154);
  if (v65 == 2)
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v93 = v52;
    LOBYTE(v92) = v65;
    sub_1A85E99B0(&v92, &v90);
    v66 = v94;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v66;
    sub_1A87AC424(&v90, v95, v67);
    sub_1A8717360(v95);
    v94 = v66;
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v68;
  sub_1A88C8D88();
  v69 = *(v3 + 155);
  if (v69 == 2)
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v93 = v52;
    LOBYTE(v92) = v69;
    sub_1A85E99B0(&v92, &v90);
    v70 = v94;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v70;
    sub_1A87AC424(&v90, v95, v71);
    sub_1A8717360(v95);
    v94 = v70;
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v72;
  sub_1A88C8D88();
  v73 = MEMORY[0x1E69E6448];
  if (v3[20])
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v74 = *(v3 + 39);
    v93 = MEMORY[0x1E69E6448];
    LODWORD(v92) = v74;
    sub_1A85E99B0(&v92, &v90);
    v75 = v94;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v75;
    sub_1A87AC424(&v90, v95, v76);
    sub_1A8717360(v95);
    v94 = v75;
  }

  *&v92 = sub_1A88C82E8();
  *(&v92 + 1) = v77;
  sub_1A88C8D88();
  if (v3[21])
  {
    sub_1A88BEFF8(v95, &v92);
    sub_1A860169C(&v92);
    sub_1A8717360(v95);
  }

  else
  {
    v78 = *(v3 + 41);
    v93 = v73;
    LODWORD(v92) = v78;
    sub_1A85E99B0(&v92, &v90);
    v79 = v94;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v79;
    sub_1A87AC424(&v90, v95, v80);
    sub_1A8717360(v95);
    v94 = v79;
  }

  *&v95[0] = sub_1A88C82E8();
  *(&v95[0] + 1) = v81;
  sub_1A88C8D88();
  v82 = *(v3 + 56);
  if ((v82 & 0xFF00) == 0x300)
  {
    sub_1A88BEFF8(&v92, v95);
    sub_1A860169C(v95);
    sub_1A8717360(&v92);
    return v94;
  }

  else
  {
    v84 = *(v3 + 12);
    v95[0] = *(v3 + 11);
    v85 = *(v3 + 13);
    v95[1] = v84;
    v95[2] = v85;
    v96 = v82;
    v86 = sub_1A88377B8();
    v91 = sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
    *&v90 = v86;
    sub_1A85E99B0(&v90, v89);
    v87 = v94;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v89, &v92, v88);
    sub_1A8717360(&v92);
    return v87;
  }
}

__n128 sub_1A87A360C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A87A3794(a1, v10);
  v3 = v10[13];
  *(a2 + 192) = v10[12];
  *(a2 + 208) = v3;
  *(a2 + 224) = v11;
  v4 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v4;
  v5 = v10[11];
  *(a2 + 160) = v10[10];
  *(a2 + 176) = v5;
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_1A87A3698()
{
  result = qword_1EB305480;
  if (!qword_1EB305480)
  {
    result = swift_getWitnessTable(byte_1A88E931C, &type metadata for RemoteIntentFileTransferAttributionInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB305480);
  }

  return result;
}

unint64_t sub_1A87A36EC()
{
  result = qword_1EB305488;
  if (!qword_1EB305488)
  {
    result = swift_getWitnessTable(byte_1A88F2C74, &type metadata for RemoteIntentFileTransferPreviewGenerationState, v0, v1);
    atomic_store(result, &qword_1EB305488);
  }

  return result;
}

unint64_t sub_1A87A3740()
{
  result = qword_1EB305490;
  if (!qword_1EB305490)
  {
    result = swift_getWitnessTable(byte_1A88F3794, &type metadata for RemoteIntentPreviewGenerationConstraints, v0, v1);
    atomic_store(result, &qword_1EB305490);
  }

  return result;
}

uint64_t sub_1A87A3794@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v129 = sub_1A88C82E8();
  v130 = v5;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v6 = sub_1A8602F10(v125), (v7 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v6, &v129);
    sub_1A8717360(v125);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v131;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v132;
    }

    else
    {
      v10 = 0;
    }

    v123 = v10;
    v124 = v9;
  }

  else
  {
    sub_1A8717360(v125);
    v123 = 0;
    v124 = 0;
  }

  v129 = sub_1A88C82E8();
  v130 = v11;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v12 = sub_1A8602F10(v125), (v13 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v12, &v129);
    sub_1A8717360(v125);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v131;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v132;
    }

    else
    {
      v16 = 0;
    }

    v121 = v16;
    v122 = v15;
  }

  else
  {
    sub_1A8717360(v125);
    v121 = 0;
    v122 = 0;
  }

  v129 = sub_1A88C82E8();
  v130 = v17;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v18 = sub_1A8602F10(v125), (v19 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v18, &v129);
    sub_1A8717360(v125);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v131;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v132;
    }

    else
    {
      v22 = 0;
    }

    v119 = v22;
    v120 = v21;
  }

  else
  {
    sub_1A8717360(v125);
    v119 = 0;
    v120 = 0;
  }

  v129 = sub_1A88C82E8();
  v130 = v23;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v24 = sub_1A8602F10(v125), (v25 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v24, &v129);
    sub_1A8717360(v125);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v131;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v132;
    }

    else
    {
      v28 = 0;
    }

    v117 = v28;
    v118 = v27;
  }

  else
  {
    sub_1A8717360(v125);
    v117 = 0;
    v118 = 0;
  }

  v129 = sub_1A88C82E8();
  v130 = v29;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v30 = sub_1A8602F10(v125), (v31 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v30, &v129);
    sub_1A8717360(v125);
    v32 = swift_dynamicCast();
    if (v32)
    {
      v33 = v131;
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = v132;
    }

    else
    {
      v34 = 0;
    }

    v115 = v34;
    v116 = v33;
  }

  else
  {
    sub_1A8717360(v125);
    v115 = 0;
    v116 = 0;
  }

  v129 = sub_1A88C82E8();
  v130 = v35;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v36 = sub_1A8602F10(v125), (v37 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v36, &v129);
    sub_1A8717360(v125);
    v38 = swift_dynamicCast();
    if (v38)
    {
      v39 = v131;
    }

    else
    {
      v39 = 0;
    }

    if (v38)
    {
      v40 = v132;
    }

    else
    {
      v40 = 0;
    }

    v113 = v40;
    v114 = v39;
  }

  else
  {
    sub_1A8717360(v125);
    v113 = 0;
    v114 = 0;
  }

  v129 = sub_1A88C82E8();
  v130 = v41;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v42 = sub_1A8602F10(v125), (v43 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v42, &v129);
    sub_1A8717360(v125);
    v44 = swift_dynamicCast();
    if (v44)
    {
      v45 = v131;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v132;
    }

    else
    {
      v46 = 0;
    }

    v111 = v46;
    v112 = v45;
  }

  else
  {
    sub_1A8717360(v125);
    v111 = 0;
    v112 = 0;
  }

  v129 = sub_1A88C82E8();
  v130 = v47;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v48 = sub_1A8602F10(v125), (v49 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v48, &v129);
    sub_1A8717360(v125);
    v50 = swift_dynamicCast();
    v51 = v131;
    if (!v50)
    {
      v51 = 0;
    }

    v110 = v51;
    v52 = v50 ^ 1;
  }

  else
  {
    sub_1A8717360(v125);
    v110 = 0;
    v52 = 1;
  }

  v109 = v52;
  v129 = sub_1A88C82E8();
  v130 = v53;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v54 = sub_1A8602F10(v125), (v55 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v54, &v129);
    sub_1A8717360(v125);
    v56 = swift_dynamicCast();
    v57 = v131;
    if (!v56)
    {
      v57 = 0;
    }

    v108 = v57;
    v58 = v56 ^ 1;
  }

  else
  {
    sub_1A8717360(v125);
    v108 = 0;
    v58 = 1;
  }

  v107 = v58;
  v129 = sub_1A88C82E8();
  v130 = v59;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v60 = sub_1A8602F10(v125), (v61 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v60, &v129);
    sub_1A8717360(v125);
    v62 = swift_dynamicCast();
    v63 = v131;
    if (!v62)
    {
      v63 = 2;
    }
  }

  else
  {
    sub_1A8717360(v125);
    v63 = 2;
  }

  v106 = v63;
  v129 = sub_1A88C82E8();
  v130 = v64;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v65 = sub_1A8602F10(v125), (v66 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v65, &v129);
    sub_1A8717360(v125);
    v67 = swift_dynamicCast();
    v68 = v131;
    if (!v67)
    {
      v68 = 0;
    }

    v105 = v68;
    v69 = v67 ^ 1;
  }

  else
  {
    sub_1A8717360(v125);
    v105 = 0;
    v69 = 1;
  }

  v129 = sub_1A88C82E8();
  v130 = v70;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v71 = sub_1A8602F10(v125), (v72 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v71, &v129);
    sub_1A8717360(v125);
    v73 = swift_dynamicCast();
    if (v73)
    {
      v74 = v131;
    }

    else
    {
      v74 = 0;
    }

    v75 = v73 ^ 1;
  }

  else
  {
    sub_1A8717360(v125);
    v74 = 0;
    v75 = 1;
  }

  v76 = sub_1A882ED30(v74, v75);
  v129 = sub_1A88C82E8();
  v130 = v77;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v78 = sub_1A8602F10(v125), (v79 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v78, &v129);
    sub_1A8717360(v125);
    if (swift_dynamicCast())
    {
      v80 = v131;
    }

    else
    {
      v80 = 2;
    }
  }

  else
  {
    sub_1A8717360(v125);
    v80 = 2;
  }

  v129 = sub_1A88C82E8();
  v130 = v81;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v82 = sub_1A8602F10(v125), (v83 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v82, &v129);
    sub_1A8717360(v125);
    if (swift_dynamicCast())
    {
      v84 = v131;
    }

    else
    {
      v84 = 2;
    }
  }

  else
  {
    sub_1A8717360(v125);
    v84 = 2;
  }

  v129 = sub_1A88C82E8();
  v130 = v85;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v86 = sub_1A8602F10(v125), (v87 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v86, &v129);
    sub_1A8717360(v125);
    v88 = swift_dynamicCast();
    if (v88)
    {
      v89 = v131;
    }

    else
    {
      v89 = 0;
    }

    v90 = v88 ^ 1;
  }

  else
  {
    sub_1A8717360(v125);
    v89 = 0;
    v90 = 1;
  }

  v129 = sub_1A88C82E8();
  v130 = v91;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v92 = sub_1A8602F10(v125), (v93 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v92, &v129);
    sub_1A8717360(v125);
    v94 = swift_dynamicCast();
    if (v94)
    {
      v95 = v131;
    }

    else
    {
      v95 = 0;
    }

    v96 = v94 ^ 1;
  }

  else
  {
    sub_1A8717360(v125);
    v95 = 0;
    v96 = 1;
  }

  *&v125[0] = sub_1A88C82E8();
  *(&v125[0] + 1) = v97;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v98 = sub_1A8602F10(&v129), (v99 & 1) == 0))
  {

    result = sub_1A8717360(&v129);
    goto LABEL_132;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v98, &v131);
  sub_1A8717360(&v129);

  sub_1A870CCE0(&qword_1EB303320, &qword_1A88E4760);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_132:
    v101 = 0uLL;
    v104 = 768;
    v102 = 0uLL;
    v103 = 0uLL;
    goto LABEL_133;
  }

  result = off_1EE72DE40(v127);
  v101 = v125[0];
  v102 = v125[1];
  v103 = v125[2];
  v104 = v126;
LABEL_133:
  LOBYTE(v125[0]) = v109;
  LOBYTE(v129) = v107;
  LOBYTE(v131) = v69;
  LOBYTE(v127) = v90;
  v128 = v96;
  *a3 = v124;
  *(a3 + 8) = v123;
  *(a3 + 16) = v122;
  *(a3 + 24) = v121;
  *(a3 + 32) = v120;
  *(a3 + 40) = v119;
  *(a3 + 48) = v118;
  *(a3 + 56) = v117;
  *(a3 + 64) = v116;
  *(a3 + 72) = v115;
  *(a3 + 80) = v114;
  *(a3 + 88) = v113;
  *(a3 + 96) = v112;
  *(a3 + 104) = v111;
  *(a3 + 112) = v110;
  *(a3 + 120) = v125[0];
  *(a3 + 128) = v108;
  *(a3 + 136) = v129;
  *(a3 + 137) = v106;
  *(a3 + 144) = v105;
  *(a3 + 152) = v131;
  *(a3 + 153) = v76;
  *(a3 + 154) = v80;
  *(a3 + 155) = v84;
  *(a3 + 156) = v89;
  *(a3 + 160) = v127;
  *(a3 + 164) = v95;
  *(a3 + 168) = v128;
  *(a3 + 176) = v101;
  *(a3 + 192) = v102;
  *(a3 + 208) = v103;
  *(a3 + 224) = v104;
  return result;
}

uint64_t sub_1A87A43F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891AA10 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6853746E656D6F6DLL && a2 == 0xEE004C5255657261 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5574657373416870 && a2 == 0xEB00000000444955 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xED00007865646E49 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x756F437465737361 && a2 == 0xEA0000000000746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891AA30 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891AA50 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891AA70 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891AA90 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891AAB0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891AAD0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A891AAF0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A891AB10 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1A87A4948@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = sub_1A870CCE0(&qword_1EB305498, &qword_1A88E9250);
  v5 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v7 = &v34 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A87A3698();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v8 = v5;
  v65 = a2;
  LOBYTE(v81[0]) = 0;
  v9 = sub_1A88C9058();
  v64 = v10;
  LOBYTE(v81[0]) = 1;
  v11 = sub_1A88C9058();
  v63 = v12;
  v13 = v11;
  LOBYTE(v81[0]) = 2;
  v57 = sub_1A88C9058();
  v62 = v14;
  LOBYTE(v81[0]) = 3;
  v56 = sub_1A88C9058();
  v61 = v15;
  LOBYTE(v81[0]) = 4;
  v55 = sub_1A88C9058();
  v60 = v16;
  LOBYTE(v81[0]) = 5;
  v54 = sub_1A88C9058();
  v59 = v17;
  LOBYTE(v81[0]) = 6;
  v53 = sub_1A88C9058();
  v58 = v18;
  LOBYTE(v81[0]) = 7;
  v51 = sub_1A88C90A8();
  v52 = v13;
  v123 = v19 & 1;
  LOBYTE(v81[0]) = 8;
  v50 = sub_1A88C90A8();
  v121 = v20 & 1;
  LOBYTE(v81[0]) = 9;
  v21 = sub_1A88C9068();
  LOBYTE(v81[0]) = 10;
  v49 = sub_1A88C9098();
  v118 = v22 & 1;
  LOBYTE(v66) = 11;
  sub_1A87A52C0();
  sub_1A88C90B8();
  v48 = LOBYTE(v81[0]);
  LOBYTE(v81[0]) = 12;
  v47 = sub_1A88C9068();
  LOBYTE(v81[0]) = 13;
  v23 = sub_1A88C9068();
  LOBYTE(v81[0]) = 14;
  v46 = sub_1A88C9088();
  v117 = BYTE4(v46) & 1;
  LOBYTE(v81[0]) = 15;
  v45 = sub_1A88C9088();
  v114 = BYTE4(v45) & 1;
  v108 = 16;
  sub_1A87A5314();
  sub_1A88C90B8();
  (*(v8 + 8))(v7, v124);
  v40 = *(&v109 + 1);
  v41 = v109;
  v38 = *(&v110 + 1);
  v39 = v110;
  v36 = *(&v111 + 1);
  v37 = v111;
  v35 = v112;
  *&v66 = v9;
  *(&v66 + 1) = v64;
  *&v67 = v52;
  *(&v67 + 1) = v63;
  *&v68 = v57;
  *(&v68 + 1) = v62;
  *&v69 = v56;
  *(&v69 + 1) = v61;
  *&v70 = v55;
  *(&v70 + 1) = v60;
  *&v71 = v54;
  *(&v71 + 1) = v59;
  *&v72 = v53;
  *(&v72 + 1) = v58;
  *&v73 = v51;
  LODWORD(v124) = v123;
  BYTE8(v73) = v123;
  *(&v73 + 9) = *v122;
  HIDWORD(v73) = *&v122[3];
  *&v74 = v50;
  v42 = v21;
  v43 = v121;
  BYTE8(v74) = v121;
  BYTE9(v74) = v21;
  *(&v74 + 10) = v119;
  HIWORD(v74) = v120;
  *&v75 = v49;
  v44 = v118;
  BYTE8(v75) = v118;
  BYTE9(v75) = v48;
  BYTE10(v75) = v47;
  BYTE11(v75) = v23;
  LODWORD(v8) = v45;
  HIDWORD(v75) = v46;
  *(&v76 + 1) = v115;
  HIDWORD(v76) = *&v113[3];
  *(&v76 + 9) = *v113;
  LOBYTE(v21) = v117;
  LOBYTE(v76) = v117;
  BYTE3(v76) = v116;
  DWORD1(v76) = v45;
  v24 = v114;
  BYTE8(v76) = v114;
  v77 = v109;
  v78 = v110;
  v79 = v111;
  v80 = v112;
  sub_1A87A5368(&v66, v81);
  sub_1A85F1084(a1);
  v81[0] = v9;
  v81[1] = v64;
  v81[2] = v52;
  v81[3] = v63;
  v81[4] = v57;
  v81[5] = v62;
  v81[6] = v56;
  v81[7] = v61;
  v81[8] = v55;
  v81[9] = v60;
  v81[10] = v54;
  v81[11] = v59;
  v81[12] = v53;
  v81[13] = v58;
  v81[14] = v51;
  v82 = v124;
  *v83 = *v122;
  *&v83[3] = *&v122[3];
  v84 = v50;
  v85 = v43;
  v86 = v42;
  v87 = v119;
  v88 = v120;
  v89 = v49;
  v90 = v44;
  v91 = v48;
  v92 = v47;
  v93 = v23;
  v94 = v46;
  v95 = v21;
  v97 = v116;
  v96 = v115;
  v98 = v8;
  v99 = v24;
  *&v100[3] = *&v113[3];
  *v100 = *v113;
  v101 = v41;
  v102 = v40;
  v103 = v39;
  v104 = v38;
  v105 = v37;
  v106 = v36;
  v107 = v35;
  result = sub_1A87A53A0(v81);
  v26 = v79;
  v27 = v65;
  *(v65 + 192) = v78;
  *(v27 + 208) = v26;
  *(v27 + 224) = v80;
  v28 = v75;
  *(v27 + 128) = v74;
  *(v27 + 144) = v28;
  v29 = v77;
  *(v27 + 160) = v76;
  *(v27 + 176) = v29;
  v30 = v71;
  *(v27 + 64) = v70;
  *(v27 + 80) = v30;
  v31 = v73;
  *(v27 + 96) = v72;
  *(v27 + 112) = v31;
  v32 = v67;
  *v27 = v66;
  *(v27 + 16) = v32;
  v33 = v69;
  *(v27 + 32) = v68;
  *(v27 + 48) = v33;
  return result;
}

unint64_t sub_1A87A52C0()
{
  result = qword_1EB3054A0;
  if (!qword_1EB3054A0)
  {
    result = swift_getWitnessTable(byte_1A88F2B84, &type metadata for RemoteIntentFileTransferPreviewGenerationState, v0, v1);
    atomic_store(result, &qword_1EB3054A0);
  }

  return result;
}

unint64_t sub_1A87A5314()
{
  result = qword_1EB3054A8;
  if (!qword_1EB3054A8)
  {
    result = swift_getWitnessTable(byte_1A88F376C, &type metadata for RemoteIntentPreviewGenerationConstraints, v0, v1);
    atomic_store(result, &qword_1EB3054A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentFileTransferAttributionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentFileTransferAttributionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A87A5524()
{
  result = qword_1EB3054B0;
  if (!qword_1EB3054B0)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for RemoteIntentFileTransferAttributionInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB3054B0);
  }

  return result;
}

unint64_t sub_1A87A557C()
{
  result = qword_1EB3054B8;
  if (!qword_1EB3054B8)
  {
    result = swift_getWitnessTable(byte_1A88E9264, &type metadata for RemoteIntentFileTransferAttributionInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB3054B8);
  }

  return result;
}

unint64_t sub_1A87A55D4()
{
  result = qword_1EB3054C0;
  if (!qword_1EB3054C0)
  {
    result = swift_getWitnessTable(byte_1A88E928C, &type metadata for RemoteIntentFileTransferAttributionInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB3054C0);
  }

  return result;
}

uint64_t sub_1A87A5670()
{
  if (*(v0 + OBJC_IVAR___IMSenderContext_Impl_isKnownSender))
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR___IMSenderContext_Impl_isFromMe);
  }
}

uint64_t SenderContext.serviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMSenderContext_Impl_serviceName);

  return v1;
}

id sub_1A87A5744(char a1)
{
  v2 = type metadata accessor for SenderContext();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = a1;
  v3[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = 0;
  v4 = &v3[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1A87A5870(char a1)
{
  v2 = type metadata accessor for SenderContext();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = a1;
  v3[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = a1;
  v4 = &v3[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1A87A58E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for SenderContext();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = a3;
  v5[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = a3;
  v6 = &v5[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id sub_1A87A5968(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88C82E8();
  v4 = v3;
  v5 = type metadata accessor for SenderContext();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = 1;
  v6[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = 0;
  v7 = &v6[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v7 = v2;
  v7[1] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1A87A5A98(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SenderContext();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = a1;
  v7[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = 0;
  v8 = &v7[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1A87A5C08(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = type metadata accessor for SenderContext();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = a3;
  v9[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = a4;
  v10 = &v9[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v10 = a1;
  v10[1] = a2;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_1A87A5CAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a3)
  {
    v7 = sub_1A88C82E8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = type metadata accessor for SenderContext();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = a4;
  v11[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = a5;
  v12 = &v11[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v12 = v7;
  v12[1] = v9;
  v15.receiver = v11;
  v15.super_class = v10;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  return v13;
}

uint64_t static SenderContext.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB3054D0 = a1;
  return result;
}

void sub_1A87A5ED0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___IMSenderContext_Impl_isKnownSender);
  v4 = sub_1A88C82A8();
  [a1 encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___IMSenderContext_Impl_isFromMe);
  v6 = sub_1A88C82A8();
  [a1 encodeBool:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR___IMSenderContext_Impl_serviceName + 8))
  {
    v7 = sub_1A88C82A8();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1A88C82A8();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id SenderContext.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A87A6204(a1);

  return v4;
}

id SenderContext.init(coder:)(void *a1)
{
  v2 = sub_1A87A6204(a1);

  return v2;
}

id SenderContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SenderContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SenderContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A87A6204(void *a1)
{
  v3 = sub_1A88C82A8();
  v4 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = v4;
  v5 = sub_1A88C82A8();
  v6 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = v6;
  v7 = sub_1A88C82A8();
  v8 = [a1 decodeObjectForKey_];

  if (v8)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    v9 = swift_dynamicCast();
    v10 = v14;
    v11 = v15;
    if (!v9)
    {
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    sub_1A860169C(v19);
    v10 = 0;
    v11 = 0;
  }

  v12 = &v1[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v12 = v10;
  v12[1] = v11;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SenderContext();
  return objc_msgSendSuper2(&v16, sel_init);
}

__n128 sub_1A87A64EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A87A6508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A87A6550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A87A65B8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3054F0);
  sub_1A85EF0E4(v0, qword_1EB3054F0);
  return sub_1A88C7E48();
}

void sub_1A87A6638(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v40 = *(v1 + 56);
  v5 = *(v1 + 72);
  if (*(v1 + 80))
  {
    v36 = *(v1 + 40);
    v37 = *(v1 + 72);
    v6 = *(v1 + 88);
    v42[0] = *(v1 + 80);
    v42[1] = v6;
    v7 = sub_1A87DC50C();
    v8 = [objc_opt_self() sharedInstance];
    if (qword_1EB3021B0 != -1)
    {
LABEL_33:
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB3054F0);

    v10 = sub_1A88C7E38();
    v11 = sub_1A88C89D8();
    v39 = a1;
    v38 = v3;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v42[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1A85F0394(0xD000000000000014, 0x80000001A8917C10, v42);
      *(v12 + 12) = 2048;
      *(v12 + 14) = v7[2];

      _os_log_impl(&dword_1A85E5000, v10, v11, "%s adding %ld contacts to IMContactStore.", v12, 0x16u);
      sub_1A85F1084(v13);
      MEMORY[0x1AC571F20](v13, -1, -1);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }

    else
    {
    }

    v21 = 0;
    v22 = 0;
    v23 = 1 << *(v7 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v3 = v24 & v7[8];
    a1 = ((v23 + 63) >> 6);
    if (v3)
    {
      while (1)
      {
        v25 = v22;
LABEL_19:
        v26 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v27 = *(v7[7] + 8 * (v26 | (v25 << 6)));

        v28 = v27;
        v29 = sub_1A88C82A8();

        [v8 addContact:v28 withID:v29];

        v21 = 1;
        if (!v3)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
LABEL_15:
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v25 >= a1)
      {
        break;
      }

      v3 = v7[v25 + 8];
      ++v22;
      if (v3)
      {
        v22 = v25;
        goto LABEL_19;
      }
    }

    if (v21)
    {
      v30 = [objc_opt_self() defaultCenter];
      v31 = IMContactStoreChangedNotification;
      [v30 __mainThreadPostNotificationName_object_];
    }

    a1 = v39;
    v5 = v37;
    v3 = v38;
    v4 = v36;
  }

  else
  {
    if (qword_1EB3021B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1A88C7E58();
    sub_1A85EF0E4(v14, qword_1EB3054F0);
    v15 = sub_1A88C7E38();
    v16 = sub_1A88C89C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v4;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1A85F0394(0xD000000000000014, 0x80000001A8917C10, v42);
      _os_log_impl(&dword_1A85E5000, v15, v16, "%s No contact info to associate.", v18, 0xCu);
      sub_1A85F1084(v19);
      MEMORY[0x1AC571F20](v19, -1, -1);
      v20 = v18;
      v4 = v17;
      MEMORY[0x1AC571F20](v20, -1, -1);
    }
  }

  v32 = sub_1A88C82A8();
  v33 = sub_1A88C82A8();
  if (v4)
  {

    v4 = sub_1A88C8188();
  }

  if (v40)
  {
    v34 = sub_1A88C82A8();
  }

  else
  {
    v34 = 0;
  }

  v41 = sub_1A88C8188();

  LODWORD(v35) = v5;
  [a1 account:v32 chat:v33 style:v3 chatProperties:v4 chatPersonCentricID:v34 member:v41 statusChanged:v35];
}

uint64_t sub_1A87A6BA0(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB305548, &qword_1A88E94F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5;
  v7 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v7;
  v31 = *(v1 + 32);
  v8 = *(v1 + 40);
  v24 = *(v1 + 48);
  v25 = v8;
  v9 = *(v1 + 64);
  v21 = *(v1 + 56);
  v22 = v9;
  v20[3] = *(v1 + 72);
  v10 = *(v1 + 88);
  v23 = *(v1 + 80);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  sub_1A870C278(v12, v11);
  sub_1A87A78C4();
  sub_1A88C95C8();
  LOBYTE(v29) = 0;
  v15 = v28;
  sub_1A88C9278();
  if (v15)
  {
    return (*(v4 + 8))(v6, v14);
  }

  v16 = v25;
  v17 = v23;
  LOBYTE(v29) = 1;
  sub_1A88C9278();
  LOBYTE(v29) = 2;
  sub_1A88C92F8();
  v32 = 3;
  if (v16)
  {
    v29 = v16;

    sub_1A870CCE0(&qword_1EB3030B0, &qword_1A88E2A70);
    sub_1A85FB520(&qword_1EB3030D8, &qword_1EB3030B0, &qword_1A88E2A70, aMtzf);
    sub_1A88C9228();
    v19 = v17;
  }

  else
  {
    v19 = v17;
  }

  LOBYTE(v29) = 4;
  sub_1A88C91C8();
  v28 = v10;
  v29 = v22;
  v32 = 5;
  sub_1A870CCE0(&qword_1EB305538, &qword_1A88E94E8);
  sub_1A85FB520(&qword_1EB305550, &qword_1EB305538, &qword_1A88E94E8, aMtzf);
  sub_1A88C92C8();
  LOBYTE(v29) = 6;
  sub_1A88C92D8();
  v29 = v19;
  v30 = v28;
  v32 = 7;
  sub_1A874BC28(v19, v28);
  sub_1A874BC68();
  sub_1A88C9228();
  sub_1A874BCBC(v29, v30);
  return (*(v4 + 8))(0, v14);
}

uint64_t sub_1A87A6F8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB305528, &unk_1A88E94D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87A78C4();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v10 = sub_1A88C9108();
    v12 = v11;
    LOBYTE(v37[0]) = 1;
    *&v30 = sub_1A88C9108();
    *(&v30 + 1) = v13;
    v31 = v12;
    LOBYTE(v37[0]) = 2;
    v47 = sub_1A88C9188();
    sub_1A870CCE0(&qword_1EB3030B0, &qword_1A88E2A70);
    LOBYTE(v32[0]) = 3;
    sub_1A85FB520(&qword_1EB3030B8, &qword_1EB3030B0, &qword_1A88E2A70, byte_1A88F1674);
    sub_1A88C90B8();
    v14 = v37[0];
    if (v37[0] == 1)
    {
      v14 = 0;
    }

    v29 = v14;
    LOBYTE(v37[0]) = 4;
    *&v28 = sub_1A88C9058();
    *(&v28 + 1) = v15;
    sub_1A870CCE0(&qword_1EB305538, &qword_1A88E94E8);
    LOBYTE(v32[0]) = 5;
    sub_1A85FB520(&qword_1EB305540, &qword_1EB305538, &qword_1A88E94E8, byte_1A88F1674);
    sub_1A88C9158();
    v16 = v37[0];
    LOBYTE(v37[0]) = 6;
    v27 = sub_1A88C9168();
    v48 = 7;
    sub_1A874BB6C();
    sub_1A88C90B8();
    (*(v6 + 8))(v8, v5);
    v25 = *(&v46 + 1);
    v26 = v46;
    *&v32[0] = v10;
    v17 = v31;
    *(&v32[0] + 1) = v31;
    v32[1] = v30;
    v18 = *(&v30 + 1);
    LOBYTE(v33) = v47;
    v19 = v29;
    *(&v33 + 1) = v29;
    v20 = *(&v28 + 1);
    v34 = v28;
    *&v35 = v16;
    DWORD2(v35) = v27;
    v36 = v46;
    v21 = v30;
    *a2 = v32[0];
    a2[1] = v21;
    v22 = v33;
    v23 = v34;
    v24 = v36;
    a2[4] = v35;
    a2[5] = v24;
    a2[2] = v22;
    a2[3] = v23;
    sub_1A8796F70(v32, v37);
    sub_1A85F1084(a1);
    v37[0] = v10;
    v37[1] = v17;
    v37[2] = v30;
    v37[3] = v18;
    v38 = v47;
    v39 = v19;
    v40 = v28;
    v41 = v20;
    v42 = v16;
    v43 = v27;
    v44 = v26;
    v45 = v25;
    return sub_1A8796FCC(v37);
  }
}

uint64_t sub_1A87A7558()
{
  v1 = *v0;
  v2 = 0x55746E756F636361;
  v3 = 0x737574617473;
  if (v1 != 6)
  {
    v3 = 0x49746361746E6F63;
  }

  v4 = 0x65436E6F73726570;
  if (v1 != 4)
  {
    v4 = 0x6E497265626D656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C79745374616863;
  if (v1 != 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x6E65644974616863;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A87A7690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A87A7B70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A87A76B8(uint64_t a1)
{
  v2 = sub_1A87A78C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87A76F4(uint64_t a1)
{
  v2 = sub_1A87A78C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87A7730()
{
  v0 = qword_1EB305508;

  return v0;
}

unint64_t sub_1A87A779C(uint64_t a1)
{
  *(a1 + 8) = sub_1A877CBC0();
  result = sub_1A877CB6C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A87A77CC(uint64_t a1)
{
  result = sub_1A87A77F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87A77F4()
{
  result = qword_1EB305518;
  if (!qword_1EB305518)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for ChatMemberStatusChangedBroadcast, v0, v1);
    atomic_store(result, &qword_1EB305518);
  }

  return result;
}

unint64_t sub_1A87A7848(uint64_t a1)
{
  result = sub_1A87A7870();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87A7870()
{
  result = qword_1EB305520;
  if (!qword_1EB305520)
  {
    result = swift_getWitnessTable(a9_3, &type metadata for ChatMemberStatusChangedBroadcast, v0, v1);
    atomic_store(result, &qword_1EB305520);
  }

  return result;
}

unint64_t sub_1A87A78C4()
{
  result = qword_1EB305530;
  if (!qword_1EB305530)
  {
    result = swift_getWitnessTable(byte_1A88E95BC, &type metadata for ChatMemberStatusChangedBroadcast.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB305530);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChatMemberStatusChangedBroadcast.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChatMemberStatusChangedBroadcast.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A87A7A6C()
{
  result = qword_1EB305558;
  if (!qword_1EB305558)
  {
    result = swift_getWitnessTable(byte_1A88E9594, &type metadata for ChatMemberStatusChangedBroadcast.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB305558);
  }

  return result;
}

unint64_t sub_1A87A7AC4()
{
  result = qword_1EB305560;
  if (!qword_1EB305560)
  {
    result = swift_getWitnessTable(byte_1A88E9504, &type metadata for ChatMemberStatusChangedBroadcast.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB305560);
  }

  return result;
}

unint64_t sub_1A87A7B1C()
{
  result = qword_1EB305568;
  if (!qword_1EB305568)
  {
    result = swift_getWitnessTable(byte_1A88E952C, &type metadata for ChatMemberStatusChangedBroadcast.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB305568);
  }

  return result;
}

uint64_t sub_1A87A7B70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8917240 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E497265626D656DLL && a2 == 0xEE00617461446F66 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEB000000006F666ELL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1A87A7E34()
{
  if (qword_1EB3021C8 != -1)
  {
    swift_once();
  }

  off_1EB305570 = qword_1EB305580;
}

uint64_t static RemoteIntentSupportedRequestTypes.supported.getter()
{
  if (qword_1EB3021B8 != -1)
  {
    swift_once();
  }
}

void *sub_1A87A7EF4()
{
  result = sub_1A87A7F14();
  off_1EB305578 = result;
  return result;
}

void *sub_1A87A7F14()
{
  if (qword_1EB3021B8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v0 = off_1EB305570;
    v1 = *(off_1EB305570 + 2);
    if (!v1)
    {
      return MEMORY[0x1E69E7CC8];
    }

    v2 = 0;
    v3 = off_1EB305570 + 32;
    v4 = MEMORY[0x1E69E7CC8];
    while (v2 < v0[2])
    {
      v23 = *&v3[16 * v2];
      v6 = (*(*&v3[16 * v2 + 8] + 48))();
      v8 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v4;
      v10 = sub_1A85F5F40(v6, v8);
      v12 = v4[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_20;
      }

      v16 = v11;
      if (v4[3] < v15)
      {
        sub_1A8879C38(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_1A85F5F40(v6, v8);
        if ((v16 & 1) != (v17 & 1))
        {
          result = sub_1A88C9488();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v21 = v10;
      sub_1A87B1904();
      v10 = v21;
      if (v16)
      {
LABEL_4:
        v5 = v10;

        v4 = v24;
        *(v24[7] + 16 * v5) = v23;
        goto LABEL_5;
      }

LABEL_13:
      v4 = v24;
      v24[(v10 >> 6) + 8] |= 1 << v10;
      v18 = (v24[6] + 16 * v10);
      *v18 = v6;
      v18[1] = v8;
      *(v24[7] + 16 * v10) = v23;
      v19 = v24[2];
      v14 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v14)
      {
        goto LABEL_21;
      }

      v24[2] = v20;
LABEL_5:
      if (v1 == ++v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }
}

uint64_t static RemoteIntentSupportedRequestTypes.requestType(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB3021C0 != -1)
  {
    v6 = a1;
    v7 = a2;
    swift_once();
    a1 = v6;
    a2 = v7;
  }

  v2 = off_1EB305578;
  if (*(off_1EB305578 + 2) && (v3 = sub_1A85F5F40(a1, a2), (v4 & 1) != 0))
  {
    return *(v2[7] + 16 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A87A81B0()
{
  sub_1A870CCE0(&qword_1EB305588, &qword_1A88E9658);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A88E9610;
  v1 = sub_1A87A8440();
  *(v0 + 32) = &type metadata for LoadChatHistoryRequest;
  *(v0 + 40) = v1;
  v2 = sub_1A87A8494();
  *(v0 + 48) = &type metadata for SetupXPCObjectRequest;
  *(v0 + 56) = v2;
  v3 = sub_1A87A84E8();
  *(v0 + 64) = &type metadata for SendMessageRequest;
  *(v0 + 72) = v3;
  v4 = sub_1A8743914();
  *(v0 + 80) = &type metadata for RemoteIntentRequestBroadcasts;
  *(v0 + 88) = v4;
  v5 = sub_1A87648E8();
  *(v0 + 96) = &type metadata for RemoteIntentRequestAttachmentBroadcasts;
  *(v0 + 104) = v5;
  v6 = sub_1A87A853C();
  *(v0 + 112) = &type metadata for LoadChatsWithIdentifierRequest;
  *(v0 + 120) = v6;
  v7 = sub_1A87A8590();
  *(v0 + 128) = &type metadata for MarkMessageReadClearUnreadCountRequest;
  *(v0 + 136) = v7;
  v8 = sub_1A87A85E4();
  *(v0 + 144) = &type metadata for MarkMessageReadRequest;
  *(v0 + 152) = v8;
  v9 = sub_1A87A8638();
  *(v0 + 160) = &type metadata for MarkUnreadRequest;
  *(v0 + 168) = v9;
  v10 = sub_1A87A868C();
  *(v0 + 176) = &type metadata for MarkPlayedRequest;
  *(v0 + 184) = v10;
  v11 = sub_1A87A86E0();
  *(v0 + 192) = &type metadata for MarkPlayedExpressiveSendRequest;
  *(v0 + 200) = v11;
  v12 = sub_1A87A8734();
  *(v0 + 208) = &type metadata for MarkSavedRequest;
  *(v0 + 216) = v12;
  v13 = type metadata accessor for MoveMessagesInChatsWithGUIDsRequest(0);
  v14 = sub_1A87A8830(&qword_1EB3055E0, type metadata accessor for MoveMessagesInChatsWithGUIDsRequest, byte_1A88EF0B8);
  *(v0 + 224) = v13;
  *(v0 + 232) = v14;
  v15 = sub_1A87A8788();
  *(v0 + 240) = &type metadata for LoadRecoverableMessagesMetadataRequest;
  *(v0 + 248) = v15;
  v16 = sub_1A87A87DC();
  *(v0 + 256) = &type metadata for LoadPagedHistoryAroundMessageRequest;
  *(v0 + 264) = v16;
  ChatsFilteredRequest = type metadata accessor for LoadChatsFilteredRequest(0);
  v18 = sub_1A87A8830(&qword_1EB3055F8, type metadata accessor for LoadChatsFilteredRequest, byte_1A88F7180);
  *(v0 + 272) = ChatsFilteredRequest;
  *(v0 + 280) = v18;
  UnreadChatsRequest = type metadata accessor for LoadUnreadChatsRequest(0);
  v20 = sub_1A87A8830(&qword_1EB305600, type metadata accessor for LoadUnreadChatsRequest, byte_1A88F70B0);
  *(v0 + 288) = UnreadChatsRequest;
  *(v0 + 296) = v20;
  v21 = sub_1A87A8878();
  *(v0 + 304) = &type metadata for LoadUnreadCountReportsFullReplacementRequest;
  *(v0 + 312) = v21;
  v22 = sub_1A87A88CC();
  *(v0 + 320) = &type metadata for RetrieveLocalFileURLForTransferGUIDRequest;
  *(v0 + 328) = v22;
  v23 = sub_1A87A8920();
  *(v0 + 336) = &type metadata for RetrieveLocalFileURLForTransferGUIDsRequest;
  *(v0 + 344) = v23;
  v24 = sub_1A87A8974();
  *(v0 + 352) = &type metadata for TransferFilesWithGUIDsRequest;
  *(v0 + 360) = v24;
  v25 = sub_1A87A89C8();
  *(v0 + 368) = &type metadata for JoinChatRequest;
  *(v0 + 376) = v25;
  v26 = sub_1A87A8A1C();
  *(v0 + 384) = &type metadata for CancelScheduledMessageRequest;
  *(v0 + 392) = v26;
  v27 = sub_1A87A8A70();
  *(v0 + 400) = &type metadata for RemoteIntentRequestSetupInfo;
  *(v0 + 408) = v27;
  result = sub_1A87A8AC4();
  *(v0 + 416) = &type metadata for MarkChatAsSpamRequest;
  *(v0 + 424) = result;
  qword_1EB305580 = v0;
  return result;
}

unint64_t sub_1A87A8440()
{
  result = qword_1EB305590;
  if (!qword_1EB305590)
  {
    result = swift_getWitnessTable(byte_1A88EF188, &type metadata for LoadChatHistoryRequest, v0, v1);
    atomic_store(result, &qword_1EB305590);
  }

  return result;
}

unint64_t sub_1A87A8494()
{
  result = qword_1EB305598;
  if (!qword_1EB305598)
  {
    result = swift_getWitnessTable(aY_4, &type metadata for SetupXPCObjectRequest, v0, v1);
    atomic_store(result, &qword_1EB305598);
  }

  return result;
}

unint64_t sub_1A87A84E8()
{
  result = qword_1EB3055A0;
  if (!qword_1EB3055A0)
  {
    result = swift_getWitnessTable(byte_1A88F83E0, &type metadata for SendMessageRequest, v0, v1);
    atomic_store(result, &qword_1EB3055A0);
  }

  return result;
}

unint64_t sub_1A87A853C()
{
  result = qword_1EB3055A8;
  if (!qword_1EB3055A8)
  {
    result = swift_getWitnessTable(asc_1A88F7250, &type metadata for LoadChatsWithIdentifierRequest, v0, v1);
    atomic_store(result, &qword_1EB3055A8);
  }

  return result;
}

unint64_t sub_1A87A8590()
{
  result = qword_1EB3055B0;
  if (!qword_1EB3055B0)
  {
    result = swift_getWitnessTable(a1_3, &type metadata for MarkMessageReadClearUnreadCountRequest, v0, v1);
    atomic_store(result, &qword_1EB3055B0);
  }

  return result;
}

unint64_t sub_1A87A85E4()
{
  result = qword_1EB3055B8;
  if (!qword_1EB3055B8)
  {
    result = swift_getWitnessTable(aA_7, &type metadata for MarkMessageReadRequest, v0, v1);
    atomic_store(result, &qword_1EB3055B8);
  }

  return result;
}

unint64_t sub_1A87A8638()
{
  result = qword_1EB3055C0;
  if (!qword_1EB3055C0)
  {
    result = swift_getWitnessTable(aI_10, &type metadata for MarkUnreadRequest, v0, v1);
    atomic_store(result, &qword_1EB3055C0);
  }

  return result;
}

unint64_t sub_1A87A868C()
{
  result = qword_1EB3055C8;
  if (!qword_1EB3055C8)
  {
    result = swift_getWitnessTable("1", &type metadata for MarkPlayedRequest, v0, v1);
    atomic_store(result, &qword_1EB3055C8);
  }

  return result;
}

unint64_t sub_1A87A86E0()
{
  result = qword_1EB3055D0;
  if (!qword_1EB3055D0)
  {
    result = swift_getWitnessTable(byte_1A88E4570, &type metadata for MarkPlayedExpressiveSendRequest, v0, v1);
    atomic_store(result, &qword_1EB3055D0);
  }

  return result;
}

unint64_t sub_1A87A8734()
{
  result = qword_1EB3055D8;
  if (!qword_1EB3055D8)
  {
    result = swift_getWitnessTable(byte_1A88E44A0, &type metadata for MarkSavedRequest, v0, v1);
    atomic_store(result, &qword_1EB3055D8);
  }

  return result;
}

unint64_t sub_1A87A8788()
{
  result = qword_1EB3055E8;
  if (!qword_1EB3055E8)
  {
    result = swift_getWitnessTable(byte_1A88EEFE8, &type metadata for LoadRecoverableMessagesMetadataRequest, v0, v1);
    atomic_store(result, &qword_1EB3055E8);
  }

  return result;
}

unint64_t sub_1A87A87DC()
{
  result = qword_1EB3055F0;
  if (!qword_1EB3055F0)
  {
    result = swift_getWitnessTable(aYwI, &type metadata for LoadPagedHistoryAroundMessageRequest, v0, v1);
    atomic_store(result, &qword_1EB3055F0);
  }

  return result;
}

uint64_t sub_1A87A8830(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1A87A8878()
{
  result = qword_1EB305608;
  if (!qword_1EB305608)
  {
    result = swift_getWitnessTable(byte_1A88F6FE0, &type metadata for LoadUnreadCountReportsFullReplacementRequest, v0, v1);
    atomic_store(result, &qword_1EB305608);
  }

  return result;
}

unint64_t sub_1A87A88CC()
{
  result = qword_1EB305610;
  if (!qword_1EB305610)
  {
    result = swift_getWitnessTable(a1_5, &type metadata for RetrieveLocalFileURLForTransferGUIDRequest, v0, v1);
    atomic_store(result, &qword_1EB305610);
  }

  return result;
}

unint64_t sub_1A87A8920()
{
  result = qword_1EB305618;
  if (!qword_1EB305618)
  {
    result = swift_getWitnessTable(byte_1A88F6170, &type metadata for RetrieveLocalFileURLForTransferGUIDsRequest, v0, v1);
    atomic_store(result, &qword_1EB305618);
  }

  return result;
}

unint64_t sub_1A87A8974()
{
  result = qword_1EB305620;
  if (!qword_1EB305620)
  {
    result = swift_getWitnessTable(a9_4, &type metadata for TransferFilesWithGUIDsRequest, v0, v1);
    atomic_store(result, &qword_1EB305620);
  }

  return result;
}

unint64_t sub_1A87A89C8()
{
  result = qword_1EB305628;
  if (!qword_1EB305628)
  {
    result = swift_getWitnessTable(aA_8, &type metadata for JoinChatRequest, v0, v1);
    atomic_store(result, &qword_1EB305628);
  }

  return result;
}

unint64_t sub_1A87A8A1C()
{
  result = qword_1EB305630;
  if (!qword_1EB305630)
  {
    result = swift_getWitnessTable(byte_1A88E50B8, &type metadata for CancelScheduledMessageRequest, v0, v1);
    atomic_store(result, &qword_1EB305630);
  }

  return result;
}

unint64_t sub_1A87A8A70()
{
  result = qword_1EB305638;
  if (!qword_1EB305638)
  {
    result = swift_getWitnessTable(byte_1A88E8788, &type metadata for RemoteIntentRequestSetupInfo, v0, v1);
    atomic_store(result, &qword_1EB305638);
  }

  return result;
}

unint64_t sub_1A87A8AC4()
{
  result = qword_1EB305640;
  if (!qword_1EB305640)
  {
    result = swift_getWitnessTable(byte_1A88F39D0, &type metadata for MarkChatAsSpamRequest, v0, v1);
    atomic_store(result, &qword_1EB305640);
  }

  return result;
}

uint64_t sub_1A87A8B98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1A87A8BF0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A87A9740(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1A87A8CD0()
{
  result = qword_1EB305648;
  if (!qword_1EB305648)
  {
    result = swift_getWitnessTable(byte_1A88E9880, &type metadata for RemoteIntentItemType, v0, v1);
    atomic_store(result, &qword_1EB305648);
  }

  return result;
}

uint64_t sub_1A87A8DD4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_1A87A9708(a2);

  *a1 = v3;
  return result;
}

unint64_t sub_1A87A8E18()
{
  result = qword_1EB305650;
  if (!qword_1EB305650)
  {
    result = swift_getWitnessTable(aQ_11, &type metadata for RemoteIntentMessageFlags, v0, v1);
    atomic_store(result, &qword_1EB305650);
  }

  return result;
}

unint64_t sub_1A87A8E70()
{
  result = qword_1EB305658;
  if (!qword_1EB305658)
  {
    result = swift_getWitnessTable(aA_9, &type metadata for RemoteIntentMessageFlags, v0, v1);
    atomic_store(result, &qword_1EB305658);
  }

  return result;
}

unint64_t sub_1A87A8EC8()
{
  result = qword_1EB305660;
  if (!qword_1EB305660)
  {
    result = swift_getWitnessTable(aA_10, &type metadata for RemoteIntentMessageFlags, v0, v1);
    atomic_store(result, &qword_1EB305660);
  }

  return result;
}

unint64_t sub_1A87A8F20()
{
  result = qword_1EB305668;
  if (!qword_1EB305668)
  {
    result = swift_getWitnessTable(aY_5, &type metadata for RemoteIntentMessageFlags, v0, v1);
    atomic_store(result, &qword_1EB305668);
  }

  return result;
}

unint64_t sub_1A87A9028()
{
  result = qword_1EB305670;
  if (!qword_1EB305670)
  {
    result = swift_getWitnessTable(byte_1A88E9B50, &type metadata for RemoteIntentMessageItemExpireState, v0, v1);
    atomic_store(result, &qword_1EB305670);
  }

  return result;
}

unint64_t sub_1A87A9130()
{
  result = qword_1EB305678;
  if (!qword_1EB305678)
  {
    result = swift_getWitnessTable(asc_1A88E9C40, &type metadata for RemoteIntentMessageItemScheduleType, v0, v1);
    atomic_store(result, &qword_1EB305678);
  }

  return result;
}

uint64_t sub_1A87A9184(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1A88C9528();
  a3(v5);
  return sub_1A88C9578();
}

uint64_t sub_1A87A91DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1A88C9528();
  a4(v6);
  return sub_1A88C9578();
}

unint64_t sub_1A87A9230@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A87A984C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1A87A9310()
{
  result = qword_1EB305680;
  if (!qword_1EB305680)
  {
    result = swift_getWitnessTable(byte_1A88E9D30, &type metadata for RemoteIntentMessageItemScheduleState, v0, v1);
    atomic_store(result, &qword_1EB305680);
  }

  return result;
}

unint64_t sub_1A87A9418()
{
  result = qword_1EB305688;
  if (!qword_1EB305688)
  {
    result = swift_getWitnessTable(asc_1A88E9E20, &type metadata for RemoteIntentLocationShareStatus, v0, v1);
    atomic_store(result, &qword_1EB305688);
  }

  return result;
}

unint64_t sub_1A87A9520()
{
  result = qword_1EB305690;
  if (!qword_1EB305690)
  {
    result = swift_getWitnessTable(a9_5, &type metadata for RemoteIntentLocationShareDirection, v0, v1);
    atomic_store(result, &qword_1EB305690);
  }

  return result;
}

uint64_t sub_1A87A9574()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE20](v1);
  return sub_1A88C9578();
}

uint64_t sub_1A87A95BC(uint64_t a1)
{
  v2 = *v1;
  sub_1A88C9528();
  MEMORY[0x1AC56FE20](v2);
  return sub_1A88C9578();
}

unint64_t sub_1A87A96B4()
{
  result = qword_1EB305698;
  if (!qword_1EB305698)
  {
    result = swift_getWitnessTable(aI_11, &type metadata for RemoteIntentParticipantChangeType, v0, v1);
    atomic_store(result, &qword_1EB305698);
  }

  return result;
}

uint64_t sub_1A87A9708(uint64_t a1)
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

unint64_t sub_1A87A9740(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_1A87A9750()
{
  result = qword_1EB3056A0;
  if (!qword_1EB3056A0)
  {
    result = swift_getWitnessTable(byte_1A88E9F88, &type metadata for RemoteIntentParticipantChangeType, v0, v1);
    atomic_store(result, &qword_1EB3056A0);
  }

  return result;
}

unint64_t sub_1A87A97A4()
{
  result = qword_1EB3056A8;
  if (!qword_1EB3056A8)
  {
    result = swift_getWitnessTable(byte_1A88E9E98, &type metadata for RemoteIntentLocationShareDirection, v0, v1);
    atomic_store(result, &qword_1EB3056A8);
  }

  return result;
}

unint64_t sub_1A87A97F8()
{
  result = qword_1EB3056B0;
  if (!qword_1EB3056B0)
  {
    result = swift_getWitnessTable(byte_1A88E9DA8, &type metadata for RemoteIntentLocationShareStatus, v0, v1);
    atomic_store(result, &qword_1EB3056B0);
  }

  return result;
}

unint64_t sub_1A87A984C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1A87A985C()
{
  result = qword_1EB3056B8;
  if (!qword_1EB3056B8)
  {
    result = swift_getWitnessTable(byte_1A88E9CB8, &type metadata for RemoteIntentMessageItemScheduleState, v0, v1);
    atomic_store(result, &qword_1EB3056B8);
  }

  return result;
}

unint64_t sub_1A87A98B0()
{
  result = qword_1EB3056C0;
  if (!qword_1EB3056C0)
  {
    result = swift_getWitnessTable(aY_6, &type metadata for RemoteIntentMessageItemScheduleType, v0, v1);
    atomic_store(result, &qword_1EB3056C0);
  }

  return result;
}

unint64_t sub_1A87A9904()
{
  result = qword_1EB3056C8;
  if (!qword_1EB3056C8)
  {
    result = swift_getWitnessTable(aI_12, &type metadata for RemoteIntentMessageItemExpireState, v0, v1);
    atomic_store(result, &qword_1EB3056C8);
  }

  return result;
}

unint64_t sub_1A87A9958()
{
  result = qword_1EB3056D0;
  if (!qword_1EB3056D0)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for RemoteIntentItemType, v0, v1);
    atomic_store(result, &qword_1EB3056D0);
  }

  return result;
}

uint64_t sub_1A87A99D4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3056D8);
  sub_1A85EF0E4(v0, qword_1EB3056D8);
  return sub_1A88C7E48();
}

uint64_t PacketTrackerErrors.hashValue.getter()
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](0);
  return sub_1A88C9578();
}

unint64_t sub_1A87A9AD0()
{
  result = qword_1EB3056F0;
  if (!qword_1EB3056F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PacketTrackerErrors, &type metadata for PacketTrackerErrors, v0, v1);
    atomic_store(result, &qword_1EB3056F0);
  }

  return result;
}

uint64_t sub_1A87A9BBC(uint64_t result)
{
  *(v1 + OBJC_IVAR___IMPacketTracker_trackedPacketCount) = 0;
  v2 = v1 + OBJC_IVAR___IMPacketTracker_expectedPackets;
  *v2 = result;
  *(v2 + 8) = 0;
  v3 = ceil(vcvtd_n_f64_s64(result, 6uLL));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = result;
  if (v4)
  {
    v6 = sub_1A88C8658();
    *(v6 + 16) = v4;
    bzero((v6 + 32), 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (v5 <= 0)
  {
    v7 = -(-v5 & 0x3F);
  }

  else
  {
    v7 = v5 & 0x3F;
  }

  *(v1 + OBJC_IVAR___IMPacketTracker_packetBits) = v6;

  v8 = 1 << v7;
  if (v7 < 0)
  {
    v8 = 0;
  }

  v9 = v8 != 0;
  v10 = v8 - 1;
  if (v9)
  {
    *(v1 + OBJC_IVAR___IMPacketTracker_expectedLastPacketBits) = v10;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A87A9D30(uint64_t result, uint64_t a2)
{
  v9 = result;
  if (v2[OBJC_IVAR___IMPacketTracker_expectedPackets + 8])
  {
    result = [v2 setPacketsExpected_];
  }

  else if (*&v2[OBJC_IVAR___IMPacketTracker_expectedPackets] != a2)
  {
    sub_1A87AA524();
    swift_allocError();
    return swift_willThrow();
  }

  v10 = floor(vcvtd_n_f64_s64(v9, 6uLL));
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = OBJC_IVAR___IMPacketTracker_packetBits;
  v3 = *&v2[OBJC_IVAR___IMPacketTracker_packetBits];
  if (!v3)
  {
    return result;
  }

  v6 = v10;
  if (v10 < 0)
  {
    goto LABEL_29;
  }

  if (*(v3 + 16) <= v6)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
LABEL_18:
    v12 = sub_1A88C7E58();
    sub_1A85EF0E4(v12, qword_1EB3056D8);
    v13 = sub_1A88C7E38();
    v14 = sub_1A88C89A8();
    if (os_log_type_enabled(v13, v14))
    {
      v20 = v4;
      v15 = swift_slowAlloc();
      *v15 = 134218496;
      *(v15 + 4) = v7;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v8;
      *(v15 + 22) = 2048;
      *(v15 + 24) = v6;
      _os_log_impl(&dword_1A85E5000, v13, v14, "PacketTracker: Setting bit %ld as %llu in packet %ld", v15, 0x20u);
      v16 = v15;
      v4 = v20;
      MEMORY[0x1AC571F20](v16, -1, -1);
    }

    v17 = *&v21[OBJC_IVAR___IMPacketTracker_trackedPacketCount];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      *&v21[OBJC_IVAR___IMPacketTracker_trackedPacketCount] = v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_22;
      }
    }

    result = sub_1A87A00B8(v3);
    v3 = result;
LABEL_22:
    if (*(v3 + 16) <= v6)
    {
      __break(1u);
    }

    else
    {
      *(v3 + 8 * v6 + 32) = v4 | v8;
      *&v21[v5] = v3;
    }

    return result;
  }

  v4 = *(v3 + 8 * v6 + 32);
  if (v9 <= 0)
  {
    v7 = -(-v9 & 0x3F);
  }

  else
  {
    v7 = v9 & 0x3F;
  }

  if (v7 >= 0)
  {
    v8 = 1 << v7;
  }

  else
  {
    v8 = 0;
  }

  if ((v4 & v8) == 0)
  {
    v21 = v2;
    v11 = qword_1EB3021D0;

    if (v11 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1A87AA068()
{
  v3 = *&v0[OBJC_IVAR___IMPacketTracker_packetBits];
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v1 = 1;
    v2 = (v3 + 32);
    while (v4 != 1)
    {
      if (!v4)
      {
        __break(1u);
        goto LABEL_25;
      }

      v6 = *v2++;
      --v1;
      --v4;
      if (v6 != -1)
      {
        v7 = qword_1EB3021D0;

        if (v7 != -1)
        {
          goto LABEL_26;
        }

        goto LABEL_8;
      }
    }

    v14 = *(v3 + 32 + 8 * v5);
    v15 = OBJC_IVAR___IMPacketTracker_expectedLastPacketBits;
    v16 = *&v0[OBJC_IVAR___IMPacketTracker_expectedLastPacketBits];
    if (v16)
    {
      v17 = v16 == v14;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }

    if (qword_1EB3021D0 != -1)
    {
      swift_once();
    }

    v18 = sub_1A88C7E58();
    sub_1A85EF0E4(v18, qword_1EB3056D8);
    v19 = v0;
    v20 = v0;
    v21 = sub_1A88C7E38();
    v22 = sub_1A88C89A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134218240;
      *(v23 + 4) = *&v19[v15];

      *(v23 + 12) = 2048;
      *(v23 + 14) = v14;
      _os_log_impl(&dword_1A85E5000, v21, v22, "PacketTracker: expecting %llu, have %llu", v23, 0x16u);
      MEMORY[0x1AC571F20](v23, -1, -1);
    }

    else
    {
    }

    return 1;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_8:
  v8 = sub_1A88C7E58();
  sub_1A85EF0E4(v8, qword_1EB3056D8);

  v9 = sub_1A88C7E38();
  v10 = sub_1A88C89A8();
  if (!os_log_type_enabled(v9, v10))
  {

    swift_bridgeObjectRelease_n();
    return 1;
  }

  result = swift_slowAlloc();
  *result = 134218240;
  *(result + 4) = -v1;
  *(result + 12) = 2048;
  if (-v1 < *(v3 + 16))
  {
    v12 = result;
    v13 = *(v2 - 1);

    *(v12 + 14) = v13;

    _os_log_impl(&dword_1A85E5000, v9, v10, "PacketTracker: missing packet at %ld %llu, was not Uint64.max", v12, 0x16u);
    MEMORY[0x1AC571F20](v12, -1, -1);

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A87AA354()
{
  v1 = [v0 isMissingAnyPacket];
  v2 = *&v0[OBJC_IVAR___IMPacketTracker_trackedPacketCount];
  v3 = *&v0[OBJC_IVAR___IMPacketTracker_expectedPackets];
  v4 = v0[OBJC_IVAR___IMPacketTracker_expectedPackets + 8];
  v5 = v2 == v3;
  if (qword_1EB3021D0 != -1)
  {
    swift_once();
  }

  v6 = v5 & ~v4;
  v7 = sub_1A88C7E58();
  sub_1A85EF0E4(v7, qword_1EB3056D8);
  v8 = sub_1A88C7E38();
  v9 = sub_1A88C89A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v1;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6;
    _os_log_impl(&dword_1A85E5000, v8, v9, "PacketTracker: Checking complete missing? %{BOOL}d countsMatch? %{BOOL}d", v10, 0xEu);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }

  return (v1 ^ 1) & v6;
}

unint64_t type metadata accessor for IMPacketTracker()
{
  result = qword_1EB305718;
  if (!qword_1EB305718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB305718);
  }

  return result;
}

unint64_t sub_1A87AA524()
{
  result = qword_1EB305720;
  if (!qword_1EB305720)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PacketTrackerErrors, &type metadata for PacketTrackerErrors, v0, v1);
    atomic_store(result, &qword_1EB305720);
  }

  return result;
}

id sub_1A87AA578()
{
  result = [objc_allocWithZone(type metadata accessor for IMCTChatBotCache()) init];
  qword_1EB338DC0 = result;
  return result;
}

id sub_1A87AA5A8()
{
  v1 = v0;
  v2 = sub_1A88C7ED8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *&v0[OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_cache] = v6;
  v7 = v6;
  [v7 setCountLimit_];

  sub_1A85E9718(0, &qword_1ED8C95A0, 0x1E69E9610);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E7F88], v2);
  v8 = sub_1A88C8A88();
  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  *&v1[OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_client] = v9;
  v10 = type metadata accessor for IMCTChatBotCache();
  v14.receiver = v1;
  v14.super_class = v10;
  v11 = v9;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 setDelegate_];

  return v12;
}

id sub_1A87AAA24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMCTChatBotCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A87AAAC8()
{
  v0 = [objc_opt_self() sharedInstanceForBagType_];
  v1 = sub_1A88C82A8();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1A88C8CB8();
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
    sub_1A85E9718(0, &qword_1ED8C9450, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_1A860169C(v8);
  }

  return 5000;
}

void sub_1A87AAC04(void *a1, void *a2)
{
  if (([a1 isBot] & 1) == 0 && a2)
  {
    [a2 cacheType];
  }

  v5 = *(v2 + OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_cache);
  v6 = sub_1A88C86C8();
  v7 = [a1 uri];
  if (v7)
  {
    v8 = v7;
    [v5 setObject:v6 forKey:?];
  }

  else
  {
    __break(1u);
  }
}

id IMRichCard.init(dictionary:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  return v3;
}

{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(0x74756F79616CLL, 0xE600000000000000);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v27);
      sub_1A870CCE0(&unk_1EB3091D0, &qword_1A88EAC10);
      if (swift_dynamicCast())
      {
        v6 = objc_allocWithZone(IMRichCardLayout);
        v7 = sub_1A88C8188();

        v8 = [v6 initWithDictionary_];

        if (v8)
        {
          if (*(a1 + 16) && (v9 = sub_1A85F5F40(0x616964656DLL, 0xE500000000000000), (v10 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v9, v27), (swift_dynamicCast() & 1) != 0))
          {
            v11 = objc_allocWithZone(IMRichCardMedia);
            v12 = sub_1A88C8188();

            v13 = [v11 initWithDictionary_];
          }

          else
          {
            v13 = 0;
          }

          if (*(a1 + 16) && (v15 = sub_1A85F5F40(0x7473694C70696863, 0xE800000000000000), (v16 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v15, v27), (swift_dynamicCast() & 1) != 0))
          {
            v17 = objc_allocWithZone(IMChipList);
            v18 = sub_1A88C8188();

            v19 = [v17 initWithDictionary_];
          }

          else
          {
            v19 = 0;
          }

          if (*(a1 + 16) && (v20 = sub_1A85F5F40(0x656C746974, 0xE500000000000000), (v21 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v20, v27), (swift_dynamicCast() & 1) != 0))
          {
            v22 = sub_1A88C82A8();
          }

          else
          {
            v22 = 0;
          }

          if (*(a1 + 16) && (v23 = sub_1A85F5F40(0x6373654464726163, 0xEF6E6F6974706972), (v24 & 1) != 0))
          {
            sub_1A85F1028(*(a1 + 56) + 32 * v23, v27);

            if (swift_dynamicCast())
            {
              v25 = sub_1A88C82A8();

LABEL_28:
              v26 = [v2 initWithLayout:v8 media:v13 title:v22 cardDescription:v25 chipList:v19];

              return v26;
            }
          }

          else
          {
          }

          v25 = 0;
          goto LABEL_28;
        }
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A87AB334(const char **a1)
{
  v3 = v1;
  sub_1A870CCE0(&qword_1EB303B58, &qword_1A88E4F98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F80;
  *(inited + 32) = 0x74756F79616CLL;
  *(inited + 40) = 0xE600000000000000;
  v5 = [v3 layout];
  v6 = [v5 dictionaryRepresentation];

  v7 = sub_1A88C81A8();
  v8 = sub_1A870CCE0(&unk_1EB3091D0, &qword_1A88EAC10);
  *(inited + 48) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x616964656DLL;
  *(inited + 88) = 0xE500000000000000;
  v9 = [v3 media];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 dictionaryRepresentation];

    v12 = sub_1A88C81A8();
    v13 = v8;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v12;
  *(inited + 120) = v13;
  *(inited + 128) = 0x656C746974;
  *(inited + 136) = 0xE500000000000000;
  v14 = [v3 title];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1A88C82E8();
    v18 = v17;

    v19 = MEMORY[0x1E69E6158];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v19 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v16;
  *(inited + 152) = v18;
  *(inited + 168) = v19;
  *(inited + 176) = 0x6373654464726163;
  *(inited + 184) = 0xEF6E6F6974706972;
  v20 = [v3 cardDescription];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1A88C82E8();
    v24 = v23;

    v25 = MEMORY[0x1E69E6158];
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v25 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v22;
  *(inited + 200) = v24;
  *(inited + 216) = v25;
  *(inited + 224) = 0x7473694C70696863;
  *(inited + 232) = 0xE800000000000000;
  v26 = [v3 chipList];
  if (v26)
  {
    v27 = *a1;
    v28 = v26;
    v29 = [v26 v27];

    v30 = sub_1A88C81A8();
  }

  else
  {
    v30 = 0;
    v8 = 0;
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v30;
  *(inited + 264) = v8;
  v31 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50, &qword_1A88E4FA0);
  swift_arrayDestroy();
  v32 = sub_1A8895CC8(v31);

  return v32;
}

id sub_1A87AB6A4(void *a1, uint64_t a2, const char **a3)
{
  v4 = a1;
  sub_1A87AB334(a3);

  v5 = sub_1A88C8188();

  return v5;
}

void IMRichCard.update(urlToTransferMap:)(void *a1)
{
  sub_1A8738BDC(MEMORY[0x1E69E7CC0]);
  v3 = [v1 media];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 mediaUrl];

    v6 = v5;
    if (!v5)
    {
      sub_1A88C82E8();
      v6 = sub_1A88C82A8();
    }

    v7 = sub_1A88C82E8();
    v9 = v8;
    v10 = [a1 transferGuidFromUrl_];

    if (v10)
    {
      v11 = sub_1A88C82E8();
      v13 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1A87AC5B0(v11, v13, v7, v9, isUniquelyReferenced_nonNull_native);
    }
  }

  v15 = [v1 media];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 thumbnailUrl];

    if (v17)
    {
      v18 = sub_1A88C82E8();
      v20 = v19;
      v21 = [a1 transferGuidFromUrl_];

      if (v21)
      {
        v22 = sub_1A88C82E8();
        v24 = v23;

        v25 = swift_isUniquelyReferenced_nonNull_native();
        sub_1A87AC5B0(v22, v24, v18, v20, v25);
      }
    }
  }

  v26 = [v1 layout];
  v27 = [v26 cardStyleUrl];

  if (v27)
  {
    v28 = sub_1A88C82E8();
    v30 = v29;
    v31 = [a1 transferGuidFromUrl_];

    if (v31)
    {
      v32 = sub_1A88C82E8();
      v34 = v33;

      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A87AC5B0(v32, v34, v28, v30, v35);
    }
  }

  v36 = objc_allocWithZone(IMUrlToTransferMap);
  v37 = sub_1A88C8188();

  v38 = [v36 initWithUrlToTransferGuids_];

  [v1 setUrlToTransferMap_];
}

uint64_t sub_1A87ABAD4@<X0>(void *a1@<X8>)
{
  v3 = [v1 dictionaryRepresentation];
  sub_1A88C81A8();

  v4 = objc_allocWithZone(IMRichCard);
  v5 = sub_1A88C8188();

  v6 = [v4 initWithDictionary_];

  if (v6)
  {
    v7 = [v1 urlToTransferMap];
    if (v7)
    {
      v8 = v7;
      [v6 updateUrlToTransferMap_];
    }

    result = type metadata accessor for IMRichCard(v7);
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    result = sub_1A85E9718(0, &qword_1ED8C91E0, 0x1E695DFB0);
  }

  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t IMRichCard.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1A87303E8(a1, v39);
  if (!v40)
  {
    sub_1A860169C(v39);
    goto LABEL_44;
  }

  type metadata accessor for IMRichCard(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:
    v36 = 0;
    return v36 & 1;
  }

  sub_1A85E9718(0, &qword_1EB3091E0, 0x1E69E58C0);
  v3 = v1;
  v4 = [v1 layout];
  v5 = [v38 layout];
  v6 = sub_1A88C8BA8();

  if ((v6 & 1) == 0)
  {
    goto LABEL_43;
  }

  v7 = v3;
  v8 = [v3 media];
  v9 = [v38 media];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
LABEL_42:

      goto LABEL_43;
    }

    type metadata accessor for IMRichCardMedia(0);
    v7 = v3;
    v11 = sub_1A88C8BA8();

    if ((v11 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v9)
  {

    goto LABEL_43;
  }

  v12 = [v7 title];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1A88C82E8();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v38 title];
  if (!v17)
  {
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v18 = v17;
  v19 = sub_1A88C82E8();
  v21 = v20;

  if (v16)
  {
    if (v21)
    {
      if (v14 == v19 && v16 == v21)
      {
      }

      else
      {
        v22 = sub_1A88C9398();

        if ((v22 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_25;
    }

LABEL_35:

    goto LABEL_44;
  }

  if (v21)
  {
LABEL_37:

    goto LABEL_43;
  }

LABEL_25:
  v23 = [v7 cardDescription];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1A88C82E8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v38 cardDescription];
  if (!v28)
  {
    if (!v27)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v29 = v28;
  v30 = sub_1A88C82E8();
  v32 = v31;

  if (!v27)
  {
    if (!v32)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (!v32)
  {
    goto LABEL_35;
  }

  if (v25 == v30 && v27 == v32)
  {

    goto LABEL_39;
  }

  v33 = sub_1A88C9398();

  if ((v33 & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

LABEL_39:
  v8 = [v7 chipList];
  v34 = [v38 chipList];
  v35 = v34;
  if (!v8)
  {

    if (!v35)
    {
      v36 = 1;
      return v36 & 1;
    }

    goto LABEL_44;
  }

  if (!v34)
  {
    goto LABEL_42;
  }

  type metadata accessor for IMChipList(0);
  v36 = sub_1A88C8BA8();

  return v36 & 1;
}

uint64_t IMRichCard.hash.getter()
{
  v1 = v0;
  sub_1A88C9588();
  v2 = [v0 layout];
  sub_1A88C8BB8();

  v3 = [v1 media];
  if (v3)
  {
    v4 = v3;
    sub_1A88C9548();
    v5 = v4;
    sub_1A88C8BB8();
  }

  else
  {
    sub_1A88C9548();
  }

  v6 = [v1 title];
  if (v6)
  {
    v7 = v6;
    sub_1A88C82E8();

    sub_1A88C9548();
    sub_1A88C8268();
  }

  else
  {
    sub_1A88C9548();
  }

  v8 = [v1 cardDescription];
  if (v8)
  {
    v9 = v8;
    sub_1A88C82E8();

    sub_1A88C9548();
    sub_1A88C8268();
  }

  else
  {
    sub_1A88C9548();
  }

  v10 = [v1 chipList];
  if (v10)
  {
    v11 = v10;
    sub_1A88C9548();
    v12 = v11;
    sub_1A88C8BB8();
  }

  else
  {
    sub_1A88C9548();
  }

  return sub_1A88C9568();
}

id IMRichCard.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

_OWORD *sub_1A87AC424(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A8602F10(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A87B1030();
      goto LABEL_7;
    }

    sub_1A8878AB8(v13, a3 & 1);
    v19 = sub_1A8602F10(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A8717304(a2, v21);
      return sub_1A887B634(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1A88C9488();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1A85F1084(v17);

  return sub_1A85E99B0(a1, v17);
}

uint64_t sub_1A87AC5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A85F5F40(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1A87B1374();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1A887909C(v18, a5 & 1);
    v13 = sub_1A85F5F40(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1A887B6B0(v13, a3, a4, a1, a2, v23);
  }
}

_OWORD *sub_1A87AC700(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A85F5F40(a2, a3);
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
      sub_1A87B14EC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A887935C(v16, a4 & 1);
    v11 = sub_1A85F5F40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1A85F1084(v22);

    return sub_1A85E99B0(a1, v22);
  }

  else
  {
    sub_1A887B700(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1A87AC890(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A8716CC4(a3);
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
      sub_1A87B192C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A8879C60(v16, a4 & 1);
    v11 = sub_1A8716CC4(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1A887B76C(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_1A87AC9C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A85F5F40(a2, a3);
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
      sub_1A87B1A94();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A8879F00(v16, a4 & 1);
    v11 = sub_1A85F5F40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      v11 = sub_1A88C9488();
      __break(1u);
      return MEMORY[0x1EEE66BB8](v11);
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11);
  }

  sub_1A85FADCC(v11, a2, a3, a1, v21);
}

uint64_t sub_1A87ACB0C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A85F5F40(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1A87B1C04();
      result = v19;
      goto LABEL_8;
    }

    sub_1A887A1A4(v16, a4 & 1);
    result = sub_1A85F5F40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    sub_1A887B7B4(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

uint64_t sub_1A87ACC40(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A8716D30(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A87B1D6C();
      goto LABEL_7;
    }

    sub_1A887A444(v13, a3 & 1);
    v24 = sub_1A8716D30(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      v26 = sub_1A88C72E8();
      MEMORY[0x1EEE9AC00](v26);
      v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28, a2);
      return sub_1A887B7FC(v10, v28, a1, v16);
    }

LABEL_15:
    sub_1A88C72E8();
    result = sub_1A88C9488();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_1A88C72E8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

unint64_t sub_1A87ACE40(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A8717F68();
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
      sub_1A87B2038();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A887A864(v16, a4 & 1);
    v11 = sub_1A8717F68();
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1A887B8D8(v11, a3 & 1, a1, a2, v21);
  }
}

uint64_t sub_1A87ACFB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1A85F5F40(a2, a3);
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
    v17 = sub_1A85F5F40(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_1A87AD164(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A85F5F40(a2, a3);
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
      sub_1A87B24A8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A887ADD0(v16, a4 & 1);
    v11 = sub_1A85F5F40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
  }

  else
  {
    sub_1A887B924(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1A87AD310(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1A85F5F40(a2, a3);
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
    v17 = sub_1A85F5F40(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

IMRichCardStyle_optional __swiftcall IMRichCardStyle.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  result.value.super.isa = v3;
  *&result.value.bold = v4;
  result.value.underline = BYTE2(v4);
  result.is_nil = v5;
  return result;
}

id IMRichCardStyle.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(1684828002, 0xE400000000000000), (v5 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v4, v16), sub_1A85E9718(0, &qword_1ED8C9450, 0x1E696AD98), (swift_dynamicCast() & 1) != 0))
  {
    v6 = [v15 BOOLValue];

    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v7 = sub_1A85F5F40(0x7363696C617469, 0xE700000000000000);
  if (v8)
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v7, v16);
    sub_1A85E9718(0, &qword_1ED8C9450, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v9 = [v15 BOOLValue];

      if (!*(a1 + 16))
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  v9 = 0;
  if (!*(a1 + 16))
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_12:
  v10 = sub_1A85F5F40(0x6E696C7265646E75, 0xE900000000000065);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v10, v16);

  sub_1A85E9718(0, &qword_1ED8C9450, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v13 = 0;
    return [v2 initWithBold:v6 italics:v9 underline:v13];
  }

  v12 = [v15 BOOLValue];

  v13 = v12;
  return [v2 initWithBold:v6 italics:v9 underline:v13];
}

unint64_t sub_1A87AD820()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303718, &unk_1A88EA7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F70;
  *(inited + 32) = 1684828002;
  *(inited + 40) = 0xE400000000000000;
  [v1 bold];
  v3 = sub_1A88C86C8();
  v4 = sub_1A85E9718(0, &qword_1ED8C9450, 0x1E696AD98);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x7363696C617469;
  *(inited + 88) = 0xE700000000000000;
  [v1 italics];
  *(inited + 96) = sub_1A88C86C8();
  *(inited + 120) = v4;
  *(inited + 128) = 0x6E696C7265646E75;
  *(inited + 136) = 0xE900000000000065;
  [v1 underline];
  v5 = sub_1A88C86C8();
  *(inited + 168) = v4;
  *(inited + 144) = v5;
  v6 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720, qword_1A88E3DC8);
  swift_arrayDestroy();
  return v6;
}

uint64_t IMRichCardStyle.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1A87303E8(a1, v9);
  if (v10)
  {
    type metadata accessor for IMRichCardStyle(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 bold];
      if (v3 == [v8 bold])
      {
        v4 = [v1 italics];
        if (v4 == [v8 italics])
        {
          v6 = [v1 underline];
          v7 = [v8 underline];

          return v6 ^ v7 ^ 1;
        }
      }
    }
  }

  else
  {
    sub_1A860169C(v9);
  }

  return 0;
}

uint64_t IMRichCardStyle.hash.getter()
{
  sub_1A88C9588();
  [v0 bold];
  sub_1A88C9548();
  [v0 italics];
  sub_1A88C9548();
  [v0 underline];
  sub_1A88C9548();
  return sub_1A88C9568();
}

IMRichCardStyle __swiftcall IMRichCardStyle.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.bold = v1;
  result.italics = BYTE1(v1);
  result.underline = BYTE2(v1);
  return result;
}

uint64_t sub_1A87ADCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1A870CCE0(&unk_1EB3090D0, &qword_1A88E2A30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  sub_1A873C504(a1, v20 - v9);
  v11 = sub_1A88C87A8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A85EF638(v10, &unk_1EB3090D0, &qword_1A88E2A30);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1A88C86D8();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A88C8798();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  sub_1A870CCE0(&qword_1EB305830, &qword_1A88EA128);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1A87ADEE4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB305810);
  sub_1A85EF0E4(v0, qword_1EB305810);
  return sub_1A88C7E48();
}

uint64_t sub_1A87ADF64()
{
  type metadata accessor for RemoteIntentFileMirrorRequestManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  qword_1EB305828 = v0;
  return result;
}

uint64_t static RemoteIntentFileMirrorRequestManager.shared.getter()
{
  if (qword_1EB3021E8 != -1)
  {
    swift_once();
  }
}

void *sub_1A87AE008(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC8];
  v7 = a1 + 40;
  while (2)
  {
    while (2)
    {
      v8 = (v7 + 16 * v5);
      for (i = v5; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_25;
        }

        v10 = *(v2 + 112);
        if (*(v10 + 16))
        {
          break;
        }

LABEL_4:
        v8 += 2;
        if (v5 == v4)
        {
          return v6;
        }
      }

      v12 = *(v8 - 1);
      v11 = *v8;

      v13 = sub_1A85F5F40(v12, v11);
      if ((v14 & 1) == 0)
      {

        goto LABEL_4;
      }

      v30 = v7;
      v15 = *(*(v10 + 56) + 8 * v13);
      swift_retain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v6;
      v17 = sub_1A85F5F40(v12, v11);
      v19 = v6[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v23 = v18;
      if (v6[3] < v22)
      {
        sub_1A8878A90(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_1A85F5F40(v12, v11);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_28;
        }

LABEL_15:
        v7 = v30;
        if (v23)
        {
          goto LABEL_16;
        }

LABEL_19:
        v6[(v17 >> 6) + 8] |= 1 << v17;
        v26 = (v6[6] + 16 * v17);
        *v26 = v12;
        v26[1] = v11;
        *(v6[7] + 8 * v17) = v15;

        v27 = v6[2];
        v21 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (!v21)
        {
          v6[2] = v28;
          if (v5 != v4)
          {
            continue;
          }

          return v6;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        result = sub_1A88C9488();
        __break(1u);
        return result;
      }

      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v25 = v17;
    sub_1A87B2348(&qword_1EB305878, &qword_1A88EA268);
    v17 = v25;
    v7 = v30;
    v6 = v31;
    if ((v23 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_16:
    *(v6[7] + 8 * v17) = v15;

    if (v5 != v4)
    {
      continue;
    }

    return v6;
  }
}

void sub_1A87AE26C()
{
  swift_beginAccess();

  v2 = sub_1A87335A0(v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1A88C8D38();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = *(*(v0 + 112) + 16);
  if (qword_1EB3021E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  sub_1A85EF0E4(v5, qword_1EB305810);
  v6 = sub_1A88C7E38();
  v7 = sub_1A88C89D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v3;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v4;
    _os_log_impl(&dword_1A85E5000, v6, v7, "Current mirror fetch request info: %ld total requests in progress for %ld total transfer guids.", v8, 0x16u);
    MEMORY[0x1AC571F20](v8, -1, -1);
  }
}

uint64_t sub_1A87AE3C8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A87AE3E8, v1, 0);
}

uint64_t sub_1A87AE3E8()
{
  v53 = v0;
  if (qword_1EB3021E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  v0[9] = sub_1A85EF0E4(v1, qword_1EB305810);

  v2 = sub_1A88C7E38();
  v3 = sub_1A88C89A8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v52 = v5;
    *v4 = 136315138;
    v6 = sub_1A88C8908();
    v8 = sub_1A85F0394(v6, v7, &v52);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1A85E5000, v2, v3, "fetchMirrors: fetching: %s", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }

  v9 = v0[7];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_1A87365FC(v10, 0);
    v12 = sub_1A85F1C3C(&v52, v11 + 4, v10, v9);
    v13 = v52;

    v14 = sub_1A8739EC8(v13);
    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v22 = v0 + 5;
  v23 = sub_1A87AE008(v11);

  v24 = sub_1A85F11E0();
  v25 = v0[7];
  if (*(v24 + 16) <= *(v9 + 16) >> 3)
  {
    v52 = v0[7];

    sub_1A8736C1C(v24);

    v26 = v52;
  }

  else
  {

    v26 = sub_1A8736D48(v24, v25);
  }

  v0[10] = v26;
  v27 = sub_1A87335A0(v23);
  v0[11] = v27;
  v0[5] = 0;
  if (!*(v26 + 16))
  {
    v32 = sub_1A88C7E38();
    v33 = sub_1A88C89D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      if ((v27 & 0xC000000000000001) != 0)
      {
        v35 = sub_1A88C8D38();
      }

      else
      {
        v35 = *(v27 + 16);
      }

      *(v34 + 4) = v35;
      _os_log_impl(&dword_1A85E5000, v32, v33, "fetchMirrors: All guids have active requests in progress. Waiting on: %ld active requests", v34, 0xCu);
      MEMORY[0x1AC571F20](v34, -1, -1);
    }

    goto LABEL_30;
  }

  v28 = sub_1A88C7E38();
  v29 = sub_1A88C89D8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = *(v26 + 16);

    *(v30 + 12) = 2048;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v31 = sub_1A88C8D38();
    }

    else
    {
      v31 = *(v27 + 16);
    }

    *(v30 + 14) = v31;
    _os_log_impl(&dword_1A85E5000, v28, v29, "fetchMirrors: Creating a new mirror request for %ld guids, and waiting on %ld active requests for the others.", v30, 0x16u);
    MEMORY[0x1AC571F20](v30, -1, -1);
  }

  else
  {
  }

  v36 = *(v26 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  if (!v36)
  {
    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v51 = v27;
  v38 = sub_1A87365FC(v36, 0);
  v39 = sub_1A85F1C3C(&v52, v38 + 4, v36, v26);
  v40 = v52;

  v14 = sub_1A8739EC8(v40);
  if (v39 != v36)
  {
LABEL_34:
    __break(1u);
    return MEMORY[0x1EEE6DBF8](v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v27 = v51;
  v22 = v0 + 5;
  v37 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v41 = v0[8];
  type metadata accessor for RemoteIntentFileMirrorRequestTask();
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 40) = -1;
  *(v42 + 48) = v37;
  *(v42 + 56) = 0;
  *(v42 + 16) = v38;
  v0[5] = v42;

  sub_1A87B2940(v26, v41, v22);

LABEL_30:
  v44 = v0[7];
  v43 = v0[8];
  v45 = sub_1A870CCE0(&qword_1EB305830, &qword_1A88EA128);
  v47 = sub_1A87B2EC8(&qword_1EB305838, v46, type metadata accessor for RemoteIntentFileMirrorRequestManager, protocol conformance descriptor for RemoteIntentFileMirrorRequestManager);
  v48 = swift_task_alloc();
  v0[12] = v48;
  v48[2] = v27;
  v48[3] = v44;
  v48[4] = v22;
  v49 = swift_task_alloc();
  v0[13] = v49;
  *v49 = v0;
  v49[1] = sub_1A87AE9EC;
  v55 = v45;
  v19 = &unk_1A88EA138;
  v14 = (v0 + 6);
  v15 = v45;
  v16 = v45;
  v17 = v43;
  v18 = v47;
  v20 = v48;
  v21 = v45;

  return MEMORY[0x1EEE6DBF8](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1A87AE9EC()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A87AEB3C, v1, 0);
}

uint64_t sub_1A87AEB3C()
{
  v30 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v28 = v0[6];
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = (*(v1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = *v10;
    v11 = v10[1];
    swift_beginAccess();

    v13 = sub_1A85F5F40(v12, v11);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v2 + 112);
      v29 = v17;
      *(v2 + 112) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A87B2348(&qword_1EB305878, &qword_1A88EA268);
        v17 = v29;
      }

      sub_1A87B05BC(v15, v17);
      *(v2 + 112) = v17;
    }

    v5 &= v5 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  v18 = sub_1A88C7E38();
  v19 = sub_1A88C89D8();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[7];
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 134218498;
    *(v22 + 4) = *(v28 + 16);

    *(v22 + 12) = 2048;
    *(v22 + 14) = *(v21 + 16);

    *(v22 + 22) = 2080;
    v24 = sub_1A88C8908();
    v26 = sub_1A85F0394(v24, v25, &v29);

    *(v22 + 24) = v26;
    _os_log_impl(&dword_1A85E5000, v18, v19, "fetchMirrors: completed with %ld mirror files out of requested count: %ld. Requested guids: %s", v22, 0x20u);
    sub_1A85F1084(v23);
    MEMORY[0x1AC571F20](v23, -1, -1);
    MEMORY[0x1AC571F20](v22, -1, -1);
  }

  else
  {
  }

  sub_1A87AE26C();

  v27 = v0[1];

  return v27(v28);
}

uint64_t sub_1A87AEE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = sub_1A870CCE0(&qword_1EB305880, &unk_1A88EA270);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  sub_1A870CCE0(&unk_1EB3090D0, &qword_1A88E2A30);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A87AEF84, 0, 0);
}

uint64_t sub_1A87AEF84(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 152);
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1A88C8D28();
    type metadata accessor for RemoteIntentFileMirrorRequestTask();
    sub_1A87B2EC8(&qword_1EB303E38, 255, type metadata accessor for RemoteIntentFileMirrorRequestTask, byte_1A88F9960);
    v4 = sub_1A88C8938();
    v3 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
    v10 = *(v2 + 40);
    v11 = *(v2 + 48);
  }

  else
  {
    v12 = -1 << *(v3 + 32);
    v8 = v3 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v3 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  v44 = v3;
  v45 = v15;
  v46 = v8;
  while (v3 < 0)
  {
    v22 = sub_1A88C8D58();
    if (!v22 || (*(v2 + 128) = v22, type metadata accessor for RemoteIntentFileMirrorRequestTask(), swift_dynamicCast(), v21 = *(v2 + 120), v19 = v10, v20 = v11, !v21))
    {
LABEL_25:
      v37 = *(v2 + 168);
      sub_1A8739EC8(v3);
      v38 = *v37;
      if (*v37)
      {
        v39 = *(v2 + 200);
        v40 = sub_1A88C87A8();
        (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
        v41 = swift_allocObject();
        v41[2] = 0;
        v41[3] = 0;
        v41[4] = v38;

        sub_1A87ADCCC(v39, &unk_1A88EA288, v41);
        sub_1A85EF638(v39, &unk_1EB3090D0, &qword_1A88E2A30);
      }

      sub_1A870CCE0(&qword_1EB305830, &qword_1A88EA128);
      sub_1A88C8718();
      *(v2 + 224) = MEMORY[0x1E69E7CC0];
      v42 = swift_task_alloc();
      *(v2 + 232) = v42;
      *v42 = v2;
      v42[1] = sub_1A87AF534;
      v7 = *(v2 + 176);
      v4 = v2 + 112;
      v5 = 0;
      v6 = 0;

      return MEMORY[0x1EEE6D8A8](v4, v5, v6, v7);
    }

LABEL_18:
    v47 = v20;
    v24 = *(v2 + 208);
    v23 = *(v2 + 216);
    v25 = *(v2 + 160);
    v26 = sub_1A88C87A8();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v23, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v29 = v28 + 2;
    v28[3] = 0;
    v28[4] = v21;
    v28[5] = v25;
    sub_1A873C504(v23, v24);
    LODWORD(v24) = (*(v27 + 48))(v24, 1, v26);

    v30 = *(v2 + 208);
    if (v24 == 1)
    {
      sub_1A85EF638(*(v2 + 208), &unk_1EB3090D0, &qword_1A88E2A30);
      if (*v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1A88C8798();
      (*(v27 + 8))(v30, v26);
      if (*v29)
      {
LABEL_20:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = sub_1A88C86D8();
        v33 = v32;
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    v31 = 0;
    v33 = 0;
LABEL_23:
    v34 = **(v2 + 144);
    v35 = swift_allocObject();
    *(v35 + 16) = &unk_1A88EA298;
    *(v35 + 24) = v28;

    sub_1A870CCE0(&qword_1EB305830, &qword_1A88EA128);
    v36 = v33 | v31;
    if (v33 | v31)
    {
      v36 = v2 + 56;
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      *(v2 + 72) = v31;
      *(v2 + 80) = v33;
    }

    v3 = v44;
    v16 = *(v2 + 216);
    *(v2 + 88) = 1;
    *(v2 + 96) = v36;
    *(v2 + 104) = v34;
    swift_task_create();

    v4 = sub_1A85EF638(v16, &unk_1EB3090D0, &qword_1A88E2A30);
    v10 = v19;
    v8 = v46;
    v11 = v47;
    v15 = v45;
  }

  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v3 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_25;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8A8](v4, v5, v6, v7);
}

uint64_t sub_1A87AF534()
{

  return MEMORY[0x1EEE6DFA0](sub_1A87AF630, 0, 0);
}

uint64_t sub_1A87AF630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[14];
  if (v5)
  {
    v6 = v4[28];
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v4[28];
      if (isUniquelyReferenced_nonNull_native && v9 <= v11[3] >> 1)
      {
        if (*(v5 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v8 <= v9)
        {
          v20 = v8 + v7;
        }

        else
        {
          v20 = v8;
        }

        v11 = sub_1A8735A88(isUniquelyReferenced_nonNull_native, v20, 1, v4[28]);
        if (*(v5 + 16))
        {
LABEL_6:
          v12 = (v11[3] >> 1) - v11[2];
          v6 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
          if (v12 >= v7)
          {
            swift_arrayInitWithCopy();

            if (!v7)
            {
              goto LABEL_18;
            }

            v13 = v11[2];
            v14 = __OFADD__(v13, v7);
            v15 = v13 + v7;
            if (!v14)
            {
              v11[2] = v15;
              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            return MEMORY[0x1EEE6D8A8](v6, a2, a3, a4);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!v7)
      {
LABEL_18:
        v4[28] = v11;
        v21 = swift_task_alloc();
        v4[29] = v21;
        *v21 = v4;
        v21[1] = sub_1A87AF534;
        a4 = v4[22];
        v6 = (v4 + 14);
        a2 = 0;
        a3 = 0;

        return MEMORY[0x1EEE6D8A8](v6, a2, a3, a4);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v16 = v4[28];
  v17 = v4[17];
  (*(v4[23] + 8))(v4[24], v4[22], a3, a4);
  *v17 = v16;

  v18 = v4[1];

  return v18();
}

uint64_t sub_1A87AF874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v6 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_1A87AF970;

  return sub_1A88A03EC();
}

uint64_t sub_1A87AF970(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1A87AFD28;
  }

  else
  {
    v4 = sub_1A87AFA84;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A87AFA84()
{
  result = *(v0 + 72);
  v27 = *(result + 16);
  if (v27)
  {
    v2 = 0;
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);
    v3 = *(v0 + 24);
    v4 = v3 + 56;
    v23 = MEMORY[0x1E69E7CC0];
    v26 = *(v0 + 72);
    while (v2 < *(result + 16))
    {
      v5 = *(v0 + 56);
      v6 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v7 = *(v25 + 72);
      sub_1A87B31F4(*(v0 + 72) + v6 + v7 * v2, v5, type metadata accessor for RemoteIntentMirrorFileRepresentation);
      if (*(v3 + 16) && (v8 = (v5 + *(v24 + 24)), v9 = *v8, v10 = v8[1], sub_1A88C9528(), sub_1A88C8268(), v11 = sub_1A88C9578(), v12 = -1 << *(v3 + 32), v13 = v11 & ~v12, ((*(v4 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (1)
        {
          v15 = (*(v3 + 48) + 16 * v13);
          v16 = *v15 == v9 && v15[1] == v10;
          if (v16 || (sub_1A88C9398() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v4 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1A87B325C(*(v0 + 56), *(v0 + 48), type metadata accessor for RemoteIntentMirrorFileRepresentation);
        v17 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A871D72C(0, *(v23 + 16) + 1, 1);
          v17 = v23;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1A871D72C((v18 > 1), v19 + 1, 1);
          v17 = v23;
        }

        v20 = *(v0 + 48);
        *(v17 + 16) = v19 + 1;
        v23 = v17;
        sub_1A87B325C(v20, v17 + v6 + v19 * v7, type metadata accessor for RemoteIntentMirrorFileRepresentation);
      }

      else
      {
LABEL_3:
        sub_1A8761CE4(*(v0 + 56));
      }

      ++v2;
      result = v26;
      if (v2 == v27)
      {
        v21 = v23;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_23:

    **(v0 + 16) = v21;

    v22 = *(v0 + 8);

    return v22();
  }

  return result;
}

uint64_t sub_1A87AFD28()
{
  if (qword_1EB3021E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB305810);
  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1A85E5000, v4, v5, "fetchMirrors: Caught error while waiting for existing guid request: %@", v7, 0xCu);
    sub_1A85EF638(v8, &qword_1EB306540, &qword_1A88E8320);
    MEMORY[0x1AC571F20](v8, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }

  v11 = *(v0 + 80);

  **(v0 + 16) = MEMORY[0x1E69E7CC0];

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A87AFEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A87AFF78, v5, 0);
}

uint64_t sub_1A87AFF78()
{
  sub_1A88A08DC(MEMORY[0x1E69E7CC0], 0);

  return MEMORY[0x1EEE6DFA0](sub_1A87AFFEC, 0, 0);
}

uint64_t RemoteIntentFileMirrorRequestManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RemoteIntentFileMirrorRequestManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A87B007C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A88C8D08() + 1) & ~v5;
    do
    {
      sub_1A8717304(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1A88C8D68();
      result = sub_1A8717360(v25);
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

uint64_t sub_1A87B0220(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A88C8D08() + 1) & ~v5;
    do
    {
      sub_1A88C9528();

      sub_1A88C8268();
      v10 = sub_1A88C9578();

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

unint64_t sub_1A87B03D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A88C8D08() + 1) & ~v5;
    while (1)
    {
      sub_1A88C9528();

      sub_1A88C8268();
      v9 = sub_1A88C9578();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for TranslationLanguage(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A87B05BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A88C8D08() + 1) & ~v5;
    do
    {
      sub_1A88C9528();

      sub_1A88C8268();
      v9 = sub_1A88C9578();

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

unint64_t sub_1A87B076C(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A88C8D08() + 1) & ~v5;
    result = sub_1A88C72E8();
    v35 = result;
    v9 = *(result - 8);
    v10 = v9[2];
    v32 = v9 + 2;
    v33 = v10;
    v11 = v9[8];
    v12 = v9[9];
    v30 = (v9 + 1);
    v31 = v11;
    v34 = v4;
    v29 = v12;
    do
    {
      MEMORY[0x1EEE9AC00](result);
      v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v12 * v6;
      v16 = v35;
      v33(v14, *(v2 + 48) + v12 * v6, v35);
      v17 = v2;
      sub_1A87B2E7C();
      v18 = sub_1A88C8228();
      result = (*v30)(v14, v16);
      v19 = v18 & v7;
      if (v3 >= v8)
      {
        if (v19 >= v8 && v3 >= v19)
        {
LABEL_15:
          v2 = v17;
          v22 = *(v17 + 48);
          v12 = v29;
          v23 = v29 * v3;
          if (v29 * v3 < v15 || v22 + v29 * v3 >= (v22 + v15 + v29))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v24 = *(v2 + 56);
          result = v24 + v23;
          if (v23 < v15 || result >= v24 + v15 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v3 = v6;
            v4 = v34;
          }

          else
          {
            v3 = v6;
            v4 = v34;
            if (v23 != v15)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v3 = v6;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v19 >= v8 || v3 >= v19)
      {
        goto LABEL_15;
      }

      v4 = v34;
      v2 = v17;
      v12 = v29;
LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_1A87B0A24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A88C8D08() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v9);
      result = sub_1A88C9578();
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

uint64_t sub_1A87B0BB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A88C8D08() + 1) & ~v5;
    do
    {
      sub_1A88C9528();

      sub_1A88C8268();
      v11 = sub_1A88C9578();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1A87B0D88()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303EB8, &qword_1A88E5550);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v33 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v34 = v2;
    v35 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = *(v2 + 64);
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
        v19 = v16 | (v9 << 6);
        v20 = v34;
        v21 = 16 * v19;
        v22 = (*(v34 + 48) + 16 * v19);
        v23 = *v22;
        v36 = v22[1];
        v37 = v23;
        v24 = sub_1A88C72E8();
        v38 = &v33;
        v25 = *(v24 - 8);
        MEMORY[0x1EEE9AC00](v24);
        v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = *(v28 + 72) * v19;
        (*(v25 + 16))(v27, *(v20 + 56) + v29, v24);
        v30 = v35;
        v31 = (*(v35 + 48) + v21);
        v32 = v36;
        *v31 = v37;
        v31[1] = v32;
        (*(v25 + 32))(*(v30 + 56) + v29, v27, v24);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v33;
        v4 = v35;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1A87B1030()
{
  v1 = v0;
  sub_1A870CCE0(&unk_1EB305300, &qword_1A88E53B8);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
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
        sub_1A8717304(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A85F1028(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A85E99B0(v22, (*(v4 + 56) + v17));
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

void *sub_1A87B11E8()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303CC0, &unk_1A88EA1C0);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LOBYTE(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
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

void *sub_1A87B1374()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303E40, &qword_1A88EABE0);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
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