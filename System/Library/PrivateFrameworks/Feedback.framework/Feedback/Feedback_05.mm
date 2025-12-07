double sub_1B8BA4C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void sub_1B8BA4C64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B8C250F8();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v11[4] = sub_1B8BA8FB0;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B8BA4C04;
  v11[3] = &block_descriptor_19_0;
  v10 = _Block_copy(v11);
  sub_1B8B247D4(a4, a5);

  [a1 loginWithAppleConnectToken:v8 completion:v10];
  _Block_release(v10);
}

void sub_1B8BA4D6C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a2)
  {
    v4 = 0;
    goto LABEL_9;
  }

  if ((a2 & 2) != 0)
  {
    v4 = 1;
    goto LABEL_9;
  }

  if ((a2 & 4) != 0)
  {
    v4 = 2;
    goto LABEL_9;
  }

  if (a2)
  {
    v4 = 3;
LABEL_9:
    sub_1B8BA8754(a1, a2, a3);
    v5 = swift_allocError();
    *v6 = v4;
    if (a3)
    {
      v7 = v5;
      v8 = v5;
      a3(v7);

      v5 = v7;
    }

    return;
  }

  if (a3)
  {
    a3(0);
  }
}

void sub_1B8BA4E38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1B8BA8984;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B8BB79D4;
  v8[3] = &block_descriptor_95;
  v7 = _Block_copy(v8);
  sub_1B8B247D4(a2, a3);

  [a1 loginAsUnauthenticatedUserWithCompletion_];
  _Block_release(v7);
}

void sub_1B8BA4F28(int a1, id a2, void (*a3)(id))
{
  if (a2)
  {
    if (a3)
    {
      v5 = a2;
      a3(a2);
    }
  }

  else if (a3)
  {
    a3(0);
  }
}

uint64_t sub_1B8BA4FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;

  return swift_continuation_resume();
}

uint64_t sub_1B8BA5008(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a3 + 24);
    v7 = a1;
  }

  else
  {
    swift_beginAccess();
    v6 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = *(*(a2 + 64) + 40);
  *v8 = v6;
  v8[1] = a1;
  return swift_continuation_resume();
}

void sub_1B8BA50A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a1)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if ((a1 & 2) != 0)
  {
    v11 = 1;
    goto LABEL_9;
  }

  if ((a1 & 4) != 0)
  {
    v11 = 2;
    goto LABEL_9;
  }

  if (a1)
  {
    v11 = 3;
LABEL_9:
    sub_1B8BA8754(a1, a2, a3);
    v12 = swift_allocError();
    *v13 = v11;
    if (a3)
    {
      v14 = v12;
      v15 = v12;
      a3(a2, v14);

      v12 = v14;
    }

    return;
  }

  if ((a2 & 4) != 0)
  {
    v18 = a5;
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a4;
    if (v18 == 1)
    {
      sub_1B8B247D4(a3, a4);
      sub_1B8BA7B94(a7, sub_1B8BA89F8, v19);
    }

    else
    {
      sub_1B8B247D4(a3, a4);

      v20 = [a7 authenticationContextForUsername_];
      [v20 setPresentingViewController_];
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 mainBundle];
      sub_1B8C23348();

      v24 = sub_1B8C250F8();

      [v22 setTitle_];

      [v22 setShouldAllowAppleIDCreation_];
      [v22 setIsUsernameEditable_];
      v25 = [v21 mainBundle];
      sub_1B8C23348();

      v26 = sub_1B8C250F8();

      [v22 setReason_];

      v27 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
      if (v27)
      {
        v28 = v27;
        v29 = swift_allocObject();
        *(v29 + 16) = 0;
        *(v29 + 24) = sub_1B8BA89F8;
        *(v29 + 32) = v19;
        *(v29 + 40) = 0;
        *(v29 + 48) = 0;
        *(v29 + 56) = a6;
        *(v29 + 64) = a7;
        v30 = a7;
        aBlock[4] = sub_1B8BA9010;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8BA4978;
        aBlock[3] = &block_descriptor_126;
        v31 = _Block_copy(aBlock);

        v32 = v28;
        v33 = v30;

        [v32 authenticateWithContext:v22 completion:v31];

        _Block_release(v31);
      }

      else
      {
      }
    }
  }

  else if (a3)
  {
    (a3)(a2, 0, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1B8BA5528(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1)
  {
    (a3)(0, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      if (qword_1EBAA5908 != -1)
      {
        swift_once();
      }

      v14 = sub_1B8C23C38();
      __swift_project_value_buffer(v14, qword_1EBAA77B0);
      v15 = sub_1B8C23C18();
      v16 = sub_1B8C25498();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B8B22000, v15, v16, "Recovering from invalid session with system account failed. Will prompt for username and password", v17, 2u);
        MEMORY[0x1B8CCB0E0](v17, -1, -1);
      }

      v18 = [a8 username];
      if (v18)
      {
        v19 = v18;
        v48 = sub_1B8C25128();
        v21 = v20;
      }

      else
      {
        v48 = 0;
        v21 = 0;
      }

      v27 = [v13 authenticationContextForUsername_];
      [v27 setPresentingViewController_];
      v28 = objc_opt_self();
      v29 = v27;
      v30 = [v28 mainBundle];
      sub_1B8C23348();

      v31 = sub_1B8C250F8();

      [v29 setTitle_];

      [v29 setShouldAllowAppleIDCreation_];
      [v29 setIsUsernameEditable_];
      v32 = [v28 mainBundle];
      sub_1B8C23348();

      v33 = sub_1B8C250F8();

      [v29 setReason_];

      if (v21)
      {
        v34 = sub_1B8C250F8();
        [v29 setUsername_];

        v35 = [v28 mainBundle];
        sub_1B8C23348();

        v36 = sub_1B8C250F8();

        [v29 setTitle_];

        v37 = [v28 mainBundle];
        sub_1B8C23348();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77E0, qword_1B8C2C988);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1B8C2A740;
        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 64) = sub_1B8BA87B4(v38, v39, v40);
        *(v38 + 32) = v48;
        *(v38 + 40) = v21;
        sub_1B8C25148();

        v41 = sub_1B8C250F8();

        [v29 setReason_];
      }

      v42 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
      if (v42)
      {
        v43 = v42;
        v44 = swift_allocObject();
        *(v44 + 16) = 0;
        *(v44 + 24) = a3;
        *(v44 + 32) = a4;
        *(v44 + 40) = 0;
        *(v44 + 48) = 0;
        *(v44 + 56) = a6;
        *(v44 + 64) = v13;
        aBlock[4] = sub_1B8BA87B0;
        aBlock[5] = v44;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8BA4978;
        aBlock[3] = &block_descriptor_31;
        v45 = _Block_copy(aBlock);
        v46 = v43;

        v47 = v13;

        [v46 authenticateWithContext:v29 completion:v45];

        _Block_release(v45);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EBAA5908 != -1)
      {
        swift_once();
      }

      v22 = sub_1B8C23C38();
      __swift_project_value_buffer(v22, qword_1EBAA77B0);
      v23 = sub_1B8C23C18();
      v24 = sub_1B8C25488();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1B8B22000, v23, v24, "Recovering from invalid session with system account failed and login manager is nil", v25, 2u);
        MEMORY[0x1B8CCB0E0](v25, -1, -1);
      }

      v26 = FBKErrorOfType();
      a3();
    }
  }
}

void sub_1B8BA5C10(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1)
  {
    (a3)(0, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [a8 username];
      if (v14)
      {
        v15 = v14;
        v44 = sub_1B8C25128();
        v17 = v16;
      }

      else
      {
        v44 = 0;
        v17 = 0;
      }

      v23 = [v13 authenticationContextForUsername_];
      [v23 setPresentingViewController_];
      v24 = objc_opt_self();
      v25 = v23;
      v26 = [v24 mainBundle];
      sub_1B8C23348();

      v27 = sub_1B8C250F8();

      [v25 setTitle_];

      [v25 setShouldAllowAppleIDCreation_];
      [v25 setIsUsernameEditable_];
      v28 = [v24 mainBundle];
      sub_1B8C23348();

      v29 = sub_1B8C250F8();

      [v25 setReason_];

      if (v17)
      {
        v30 = sub_1B8C250F8();
        [v25 setUsername_];

        v31 = [v24 mainBundle];
        sub_1B8C23348();

        v32 = sub_1B8C250F8();

        [v25 setTitle_];

        v33 = [v24 mainBundle];
        sub_1B8C23348();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77E0, qword_1B8C2C988);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1B8C2A740;
        *(v34 + 56) = MEMORY[0x1E69E6158];
        *(v34 + 64) = sub_1B8BA87B4(v34, v35, v36);
        *(v34 + 32) = v44;
        *(v34 + 40) = v17;
        sub_1B8C25148();

        v37 = sub_1B8C250F8();

        [v25 aLg];
      }

      v38 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
      if (v38)
      {
        v39 = v38;
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        *(v40 + 24) = a3;
        *(v40 + 32) = a4;
        *(v40 + 40) = 0;
        *(v40 + 48) = 0;
        *(v40 + 56) = a6;
        *(v40 + 64) = v13;
        aBlock[4] = sub_1B8BA9010;
        aBlock[5] = v40;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8BA4978;
        aBlock[3] = &block_descriptor_83;
        v41 = _Block_copy(aBlock);
        v42 = v39;

        v43 = v13;

        [v42 authenticateWithContext:v25 completion:v41];

        _Block_release(v41);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EBAA5908 != -1)
      {
        swift_once();
      }

      v18 = sub_1B8C23C38();
      __swift_project_value_buffer(v18, qword_1EBAA77B0);
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25488();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Recovering from invalid session with regular account failed and login manager is nil", v21, 2u);
        MEMORY[0x1B8CCB0E0](v21, -1, -1);
      }

      v22 = FBKErrorOfType();
      a3();
    }
  }
}

void sub_1B8BA625C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1B8C24FD8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B8C25008();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a6;
    *(v22 + 24) = a7;
    sub_1B8B247D4(a6, a7);
    sub_1B8BA844C(a5, a1, a2, sub_1B8BA89E4, v22);
  }

  else
  {
    v38 = v19;
    v39 = v18;
    v40 = v14;
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v23 = sub_1B8C23C38();
    __swift_project_value_buffer(v23, qword_1EBAA77B0);
    v24 = a3;
    v25 = sub_1B8C23C18();
    v26 = sub_1B8C25478();

    if (os_log_type_enabled(v25, v26))
    {
      v37 = a5;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      if (a3)
      {
        v29 = a3;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v27 + 4) = v30;
      *v28 = v31;
      _os_log_impl(&dword_1B8B22000, v25, v26, "Received error from AppleConnect: %@", v27, 0xCu);
      sub_1B8BA7B2C(v28);
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
      MEMORY[0x1B8CCB0E0](v27, -1, -1);
      a5 = v37;
    }

    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v32 = sub_1B8C25538();
    v33 = swift_allocObject();
    v33[2] = a5;
    v33[3] = a3;
    v33[4] = a6;
    v33[5] = a7;
    aBlock[4] = sub_1B8BA8998;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_107;
    v34 = _Block_copy(aBlock);
    sub_1B8B247D4(a6, a7);
    v35 = a3;
    v36 = a5;

    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v21, v16, v34);
    _Block_release(v34);

    (*(v40 + 8))(v16, v13);
    (*(v38 + 8))(v21, v39);
  }
}

void sub_1B8BA6704(void *a1, void (*a2)(uint64_t, void *))
{
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      a2(4, a1);
    }
  }

  else if (a2)
  {
    a2(1, 0);
  }
}

void sub_1B8BA6788(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_1B8BA89EC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B8B8B9F4;
  v11[3] = &block_descriptor_116;
  v9 = _Block_copy(v11);
  v10 = a2;
  sub_1B8B247D4(a3, a4);

  [a1 logOutIfNeededAndRun_];
  _Block_release(v9);
}

void sub_1B8BA6888(void *a1, void (*a2)(uint64_t, id))
{
  if (!a1 || (v3 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0), sub_1B8B46130(0, &qword_1EBAA72E0, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0))
  {
    if (!a2)
    {
      return;
    }

    v4 = FBKErrorOfType();
    a2(4, v4);
    goto LABEL_17;
  }

  v4 = v16;
  v5 = [v16 domain];
  v6 = sub_1B8C25128();
  v8 = v7;

  if (v6 == 0xD000000000000017 && 0x80000001B8C34C00 == v8)
  {
  }

  else
  {
    v10 = sub_1B8C25A08();

    if ((v10 & 1) == 0)
    {
LABEL_15:
      if (a2)
      {
        v15 = FBKErrorOfType();
        a2(4, v15);
      }

      goto LABEL_17;
    }
  }

  if ([v16 code] != -100)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_1B8BA8754(-100, v11, v12);
    v13 = swift_allocError();
    *v14 = 4;
    a2(4, v13);

    return;
  }

LABEL_17:
}

uint64_t sub_1B8BA6A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B8C25128();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1B8BA6B04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1B8C24FD8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B8C25008();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    return sub_1B8BA844C(a5, a1, a2, a6, a7);
  }

  else
  {
    v37 = a6;
    v38 = v19;
    v39 = v18;
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v40 = v14;
    v23 = sub_1B8C23C38();
    __swift_project_value_buffer(v23, qword_1EBAA77B0);
    v24 = a3;
    v25 = sub_1B8C23C18();
    v26 = sub_1B8C25478();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      if (a3)
      {
        v29 = a3;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v27 + 4) = v30;
      *v28 = v31;
      _os_log_impl(&dword_1B8B22000, v25, v26, "Received error from AppleConnect: %@", v27, 0xCu);
      sub_1B8BA7B2C(v28);
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
      MEMORY[0x1B8CCB0E0](v27, -1, -1);
    }

    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v32 = sub_1B8C25538();
    v33 = swift_allocObject();
    v34 = v37;
    v33[2] = a5;
    v33[3] = v34;
    v33[4] = a7;
    aBlock[4] = sub_1B8BA7B20;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_7;
    v35 = _Block_copy(aBlock);
    v36 = a5;

    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v21, v16, v35);
    _Block_release(v35);

    (*(v40 + 8))(v16, v13);
    return (*(v38 + 8))(v21, v39);
  }
}

void sub_1B8BA6F60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1B8BA87A8;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B8B8B9F4;
  v8[3] = &block_descriptor_25_0;
  v7 = _Block_copy(v8);

  [a1 logOutIfNeededAndRun_];
  _Block_release(v7);
}

void sub_1B8BA7044(void (*a1)(void))
{
  v2 = FBKErrorOfType();
  a1();
}

id sub_1B8BA70E0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Authentication();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8BA715C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1B8BA8A40;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8BA6A6C;
  aBlock[3] = &block_descriptor_134;
  v11 = _Block_copy(aBlock);
  v12 = a2;

  FBKLoginWithAppleConnect();
  _Block_release(v11);
}

void sub_1B8BA7318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v48 = a2;
  v49 = a5;
  v47 = a1;
  v7 = sub_1B8C24FD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8C25008();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  MEMORY[0x1EEE9AC00](v15);
  if (a3)
  {
    aBlock[0] = a3;
    v18 = a3;
    sub_1B8C25338();
  }

  else
  {
    v19 = a4;
    v43 = v14;
    v44 = v12;
    v45 = v10;
    v46 = v8;
    v20 = v48;
    if (v48)
    {
      v21 = &v42 - v16;
      v22 = v17;
      (*(v17 + 16))(&v42 - v16, a4, v15);
      v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v24 = swift_allocObject();
      (*(v22 + 32))(v24 + v23, v21, v15);
      sub_1B8BA844C(v49, v47, v20, sub_1B8BA8B70, v24);
    }

    else
    {
      v25 = &v42 - v16;
      v26 = v17;
      v27 = v49;
      v28 = v19;
      if (qword_1EBAA5908 != -1)
      {
        swift_once();
      }

      v29 = sub_1B8C23C38();
      __swift_project_value_buffer(v29, qword_1EBAA77B0);
      v30 = sub_1B8C23C18();
      v31 = sub_1B8C25478();
      v32 = os_log_type_enabled(v30, v31);
      v48 = v11;
      if (v32)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1B8B22000, v30, v31, "Something went wrong in AppleConnect login attempt.", v33, 2u);
        v34 = v33;
        v27 = v49;
        MEMORY[0x1B8CCB0E0](v34, -1, -1);
      }

      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v49 = sub_1B8C25538();
      (*(v26 + 16))(v25, v28, v15);
      v35 = (*(v26 + 80) + 24) & ~*(v26 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v27;
      (*(v26 + 32))(v36 + v35, v25, v15);
      aBlock[4] = sub_1B8BA8B00;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8B8B9F4;
      aBlock[3] = &block_descriptor_140;
      v37 = _Block_copy(aBlock);
      v38 = v27;

      v39 = v43;
      sub_1B8C24FF8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
      sub_1B8B62264();
      v40 = v45;
      sub_1B8C256D8();
      v41 = v49;
      MEMORY[0x1B8CCA210](0, v39, v40, v37);
      _Block_release(v37);

      (*(v46 + 8))(v40, v7);
      (*(v44 + 8))(v39, v48);
    }
  }
}

uint64_t sub_1B8BA7868(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
    return sub_1B8C25338();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
    return sub_1B8C25348();
  }
}

void sub_1B8BA78DC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1B8BA8C80;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_149;
  v10 = _Block_copy(aBlock);

  [a1 logOutIfNeededAndRun_];
  _Block_release(v10);
}

id sub_1B8BA7A8C()
{
  result = FBKErrorOfType();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
    return sub_1B8C25338();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BA7AF0(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1B8BA7B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA69A0, &qword_1B8C29670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BA7B94(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C24FD8();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B8C25008();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v12 = sub_1B8C25538();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1B8BA8978;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_89;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  sub_1B8B247D4(a2, a3);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1B8BA7E74(char a1)
{
  if (a1)
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v1 = sub_1B8C23C38();
    __swift_project_value_buffer(v1, qword_1EBAA77B0);
    v2 = sub_1B8C23C18();
    v3 = sub_1B8C25498();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B8B22000, v2, v3, "AC disabled via user default", v4, 2u);
      MEMORY[0x1B8CCB0E0](v4, -1, -1);
    }

    v5 = 0;
  }

  else
  {
    v6 = sub_1B8C23638();
    v17[3] = v6;
    v17[4] = sub_1B8BA8930(&unk_1EBAA7810, MEMORY[0x1E699C198], MEMORY[0x1E699C190]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E699C188], v6);
    v8 = sub_1B8C235D8();
    v9 = __swift_destroy_boxed_opaque_existential_0(v17);
    v10 = MEMORY[0x1B8CCA870](v9);
    v11 = FBKIsAppleConnectAvailable();
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EBAA77B0);
    v13 = sub_1B8C23C18();
    v14 = sub_1B8C25498();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109632;
      *(v15 + 4) = v8 & 1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v10;
      *(v15 + 14) = 1024;
      *(v15 + 16) = v11;
      _os_log_impl(&dword_1B8B22000, v13, v14, "AC enabled? [true] CFB enabled? [%{BOOL}d], internal? [%{BOOL}d], AC available? [%{BOOL}d]", v15, 0x14u);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }

    v5 = v8 & v10 & v11;
  }

  return v5 & 1;
}

uint64_t sub_1B8BA80F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = 0;
  }

  else if ((result & 2) != 0)
  {
    v3 = 1;
  }

  else if ((result & 4) != 0)
  {
    v3 = 2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v3 = 3;
  }

  sub_1B8BA8754(result, a2, a3);
  result = swift_allocError();
  *v4 = v3;
  return result;
}

uint64_t sub_1B8BA8160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8C24FD8();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B8C25008();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v20 = sub_1B8C25538();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1B8BA8908;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_70;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  sub_1B8B247D4(a3, a4);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  v17 = v20;
  MEMORY[0x1B8CCA210](0, v13, v10, v15);
  _Block_release(v15);

  (*(v22 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_1B8BA844C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = sub_1B8C24FD8();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B8C25008();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v22 = sub_1B8C25538();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = v21;
  v15[6] = v21;
  aBlock[4] = sub_1B8BA8744;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_13_0;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_1B8B247D4(a4, v16);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  v19 = v22;
  MEMORY[0x1B8CCA210](0, v14, v11, v17);
  _Block_release(v17);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

unint64_t sub_1B8BA8754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA77D8;
  if (!qword_1EBAA77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA77D8);
  }

  return result;
}

unint64_t sub_1B8BA87B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA77E8;
  if (!qword_1EBAA77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA77E8);
  }

  return result;
}

uint64_t sub_1B8BA883C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_1B8BA88AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  sub_1B8BA1B04(v1);
  sub_1B8BA8160(v2, v5, v4, v3);
}

uint64_t sub_1B8BA8930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_15Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8BA89F8(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    return v2(*(v1 + 16) & 0xFFFFFFFFFFFFFFFBLL, result);
  }

  return result;
}

void sub_1B8BA8A40(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B8BA7318(a1, a2, a3, v3 + v8, v9);
}

void sub_1B8BA8B00()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1B8BA78DC(v2, v3);
}

uint64_t sub_1B8BA8B70(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);

  return sub_1B8BA7868(a1);
}

uint64_t objectdestroy_142Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1B8BA8C80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);

  return sub_1B8BA7A8C();
}

uint64_t objectdestroy_27Tm()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t getEnumTagSinglePayload for Authentication.AuthenticationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Authentication.AuthenticationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8BA8F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7840;
  if (!qword_1EBAA7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7840);
  }

  return result;
}

uint64_t FBKFeedbackDraftViewController.ResponseType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E55;
    case 2:
      return 0x4620796576727553;
    case 1:
      return 0x6B63616264656546;
  }

  result = sub_1B8C25A28();
  __break(1u);
  return result;
}

unint64_t FBKFeedbackDraftViewController.ResponseType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B8BA90C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7850;
  if (!qword_1EBAA7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7850);
  }

  return result;
}

uint64_t sub_1B8BA911C()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BA9190(uint64_t a1)
{
  v2 = *v1;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v2);
  return sub_1B8C25AF8();
}

unint64_t *sub_1B8BA91D4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B8BA91F0(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (v2 == 2)
  {
    return 0x4620796576727553;
  }

  if (v2 == 1)
  {
    return 0x6B63616264656546;
  }

  result = sub_1B8C25A28();
  __break(1u);
  return result;
}

uint64_t sub_1B8BA92B4(uint64_t a1)
{
  if ((a1 + 1) < 3)
  {
    return a1 + 1;
  }

  sub_1B8C257E8();

  type metadata accessor for FBKBugFormRole(0);
  v2 = sub_1B8C25178();
  MEMORY[0x1B8CC9EB0](v2);

  result = sub_1B8C258A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8BA937C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B8BA93C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_1B8BA9430@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C23A28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v36 = sub_1B8C242E8();
  v44 = 1;
  sub_1B8BA980C(v2, v10, v11, &v38);
  v47 = v40;
  v48 = v41;
  v49[0] = v42[0];
  *(v49 + 9) = *(v42 + 9);
  v45 = v38;
  v46 = v39;
  *(v51 + 9) = *(v42 + 9);
  v50[2] = v40;
  v50[3] = v41;
  v51[0] = v42[0];
  v50[0] = v38;
  v50[1] = v39;
  sub_1B8B34450(&v45, &v37, &qword_1EBAA7950, &qword_1B8C2CE40);
  sub_1B8B3433C(v50, &qword_1EBAA7950, &qword_1B8C2CE40);
  *(&v43[2] + 7) = v47;
  *(&v43[3] + 7) = v48;
  *(&v43[4] + 7) = v49[0];
  v43[5] = *(v49 + 9);
  *(v43 + 7) = v45;
  *(&v43[1] + 7) = v46;
  v12 = v44;
  v13 = *(v2 + *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) + 32));
  if (v13 == 1)
  {
    v14 = sub_1B8C24C88();
  }

  else
  {
    if (qword_1EBAA59C0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_1EBAB3AC0);
    (*(v5 + 16))(v9, v15, v4);
    v14 = sub_1B8C24CE8();
  }

  v16 = v14;
  v17 = sub_1B8C24808();
  if (v13)
  {
    if (qword_1EBAA59A0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBAB3A60;
  }

  else
  {
    if (qword_1EBAA59A8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBAB3A78;
  }

  v19 = __swift_project_value_buffer(v4, v18);
  (*(v5 + 16))(v35, v19, v4);
  v20 = sub_1B8C24CE8();
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7958, &qword_1B8C2CE48) + 36));
  v22 = *(sub_1B8C24078() + 20);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1B8C24418();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #16.0 }

  *v21 = _Q0;
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA61A8, &unk_1B8C2CE50) + 36)] = 256;
  v30 = v43[3];
  *(a1 + 49) = v43[2];
  *(a1 + 65) = v30;
  v31 = v43[5];
  *(a1 + 81) = v43[4];
  *(a1 + 97) = v31;
  result = *v43;
  v33 = v43[1];
  *(a1 + 17) = v43[0];
  *a1 = v36;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 33) = v33;
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a1 + 136) = v20;
  return result;
}

uint64_t sub_1B8BA980C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B8B34CA8(a1, a2, a3);

  v5 = sub_1B8C249E8();
  v7 = v6;
  v9 = v8;
  sub_1B8C248A8();
  v10 = sub_1B8C249B8();
  v12 = v11;
  v27 = v13;
  v15 = v14;

  sub_1B8B34060(v5, v7, v9 & 1);

  LOBYTE(v5) = sub_1B8C24808();
  sub_1B8C23D18();
  v16 = *v30;
  *(&v32 + 1) = *v30;
  DWORD1(v32) = *&v30[3];
  DWORD1(v33) = *&v29[3];
  v17 = *v29;
  *(&v33 + 1) = *v29;
  v28[80] = 1;
  *(a4 + 88) = 1;
  *&v31 = v10;
  *(&v31 + 1) = v12;
  LOBYTE(v32) = v27 & 1;
  *(&v32 + 1) = v15;
  LOBYTE(v33) = v5;
  *(&v33 + 1) = v18;
  *v34 = v19;
  *&v34[8] = v20;
  *&v34[16] = v21;
  v34[24] = 0;
  *(v38 + 9) = *&v34[9];
  v37 = v33;
  v38[0] = *v34;
  v35 = v31;
  v36 = v32;
  v22 = v31;
  v23 = v32;
  v24 = v38[1];
  *(a4 + 48) = *v34;
  *(a4 + 64) = v24;
  v25 = v37;
  *(a4 + 16) = v23;
  *(a4 + 32) = v25;
  *a4 = v22;
  *(a4 + 80) = 0;
  v39[0] = v10;
  v39[1] = v12;
  v40 = v27 & 1;
  *&v41[3] = *&v30[3];
  *v41 = v16;
  v42 = v15;
  v43 = v5;
  *&v44[3] = *&v29[3];
  *v44 = v17;
  v45 = v18;
  v46 = v19;
  v47 = v20;
  v48 = v21;
  v49 = 0;
  sub_1B8B34450(&v31, v28, &qword_1EBAA5E40, &qword_1B8C27C38);
  return sub_1B8B3433C(v39, &qword_1EBAA5E40, &qword_1B8C27C38);
}

uint64_t sub_1B8BA99F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7858, &qword_1B8C2CC90);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  if (*(a1 + 16))
  {
    v20 = v11;
    v14 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *v13 = sub_1B8C24468();
    *(v13 + 1) = 0x4040000000000000;
    v13[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7860, &qword_1B8C2CC98);
    sub_1B8BA9BC0(a1 + v15, a1, a2, a3, a4, &v13[*(v16 + 44)]);
    sub_1B8B2A5AC(v13, a5);
    return (*(v20 + 56))(a5, 0, 1, v10);
  }

  else
  {
    v18 = *(v11 + 56);

    return v18(a5, 1, 1, v10);
  }
}

uint64_t sub_1B8BA9BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v51 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7868, &qword_1B8C2CCA0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = (&v43 - v14);
  v15 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7870, &qword_1B8C2CCA8);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v43 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7878, &qword_1B8C2CCB0);
  v52 = *(v49 - 8);
  v19 = MEMORY[0x1EEE9AC00](v49);
  v47 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v43 - v21;
  *v18 = sub_1B8C24478();
  *(v18 + 1) = 0x4030000000000000;
  v18[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7880, &qword_1B8C2CCB8);
  v23 = a3;
  v24 = a3;
  v25 = a4;
  v26 = a4;
  v27 = a5;
  sub_1B8BAA084(a1, a2, v24, v26, a5, &v18[*(v22 + 44)]);
  sub_1B8BACB40(a1, &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatchUpDonationDecoder.Result.Message);
  v28 = (*(v45 + 80) + 48) & ~*(v45 + 80);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = v23;
  v29[4] = v25;
  v29[5] = v27;
  sub_1B8BAB5DC(&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  sub_1B8B34CFC(&qword_1EBAA7888, &qword_1EBAA7870, &qword_1B8C2CCA8, MEMORY[0x1E6981870]);

  v30 = v44;
  sub_1B8C24AA8();

  sub_1B8B3433C(v18, &qword_1EBAA7870, &qword_1B8C2CCA8);
  v31 = sub_1B8C24478();
  v32 = v48;
  *v48 = v31;
  *(v32 + 8) = 0x4030000000000000;
  *(v32 + 16) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7890, &qword_1B8C2CCC0);
  sub_1B8BAAFE8(a2, v23, v25, v27, (v32 + *(v33 + 44)));
  v34 = *(v52 + 16);
  v35 = v47;
  v36 = v30;
  v37 = v49;
  v34(v47, v30, v49);
  v38 = v50;
  sub_1B8B34450(v32, v50, &qword_1EBAA7868, &qword_1B8C2CCA0);
  v39 = v51;
  v34(v51, v35, v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7898, &qword_1B8C2CCC8);
  sub_1B8B34450(v38, &v39[*(v40 + 48)], &qword_1EBAA7868, &qword_1B8C2CCA0);
  sub_1B8B3433C(v32, &qword_1EBAA7868, &qword_1B8C2CCA0);
  v41 = *(v52 + 8);
  v41(v36, v37);
  sub_1B8B3433C(v38, &qword_1EBAA7868, &qword_1B8C2CCA0);
  return (v41)(v35, v37);
}

uint64_t sub_1B8BAA084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v76 = a4;
  v77 = a5;
  v75 = a3;
  v74 = a2;
  v73 = a1;
  v84 = a6;
  v6 = sub_1B8C23A28();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B8C24078() - 8;
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78E8, &qword_1B8C2CCF8);
  v9 = MEMORY[0x1EEE9AC00](v78);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - v11;
  sub_1B8C243A8();
  v13 = sub_1B8C249C8();
  v15 = v14;
  v17 = v16;
  sub_1B8C24928();
  v18 = sub_1B8C249B8();
  v20 = v19;
  v22 = v21;

  sub_1B8B34060(v13, v15, v17 & 1);

  *&v85 = sub_1B8C24C98();
  v23 = sub_1B8C24998();
  v25 = v24;
  v79 = v26;
  v28 = v27;
  LOBYTE(v26) = v22 & 1;
  v29 = v71;
  sub_1B8B34060(v18, v20, v26);

  *v12 = sub_1B8C24478();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78F0, &qword_1B8C2CD00);
  sub_1B8BAA6B8(v73, v74, v75, &v12[*(v30 + 44)]);
  v31 = sub_1B8C24808();
  sub_1B8C23D18();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78F8, &qword_1B8C2CD08) + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = *(v72 + 28);
  v42 = *MEMORY[0x1E697F468];
  v43 = sub_1B8C24418();
  (*(*(v43 - 8) + 104))(&v29[v41], v42, v43);
  __asm { FMOV            V0.2D, #8.0 }

  *v29 = _Q0;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v49 = v82;
  v50 = __swift_project_value_buffer(v82, qword_1EBAB3AA8);
  (*(v81 + 16))(v80, v50, v49);
  v51 = sub_1B8C24CE8();
  sub_1B8C23DB8();
  v52 = &v12[*(v78 + 36)];
  v53 = MEMORY[0x1E697EAF0];
  sub_1B8BACB40(v29, v52, MEMORY[0x1E697EAF0]);
  v54 = *&v85 * 0.5;
  v55 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10) + 68);
  sub_1B8BACB40(v29, v55, v53);
  *(v55 + *(sub_1B8C24068() + 20)) = v54;
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7078, &qword_1B8C2ACE0) + 36);
  v57 = v86;
  *v56 = v85;
  *(v56 + 16) = v57;
  *(v56 + 32) = v87;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7080, &unk_1B8C2CD20);
  *(v55 + *(v58 + 52)) = v51;
  *(v55 + *(v58 + 56)) = 256;
  v59 = sub_1B8C24F48();
  v61 = v60;
  sub_1B8BACBA8(v29, MEMORY[0x1E697EAF0]);
  v62 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7088, &qword_1B8C2ACE8) + 36));
  *v62 = v59;
  v62[1] = v61;
  v63 = sub_1B8C24F48();
  v65 = v64;
  v66 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7070, &qword_1B8C2CD30) + 36));
  *v66 = v63;
  v66[1] = v65;
  v67 = v83;
  sub_1B8B2A7AC(v12, v83);
  v68 = v84;
  *v84 = v23;
  v68[1] = v25;
  LOBYTE(v63) = v79 & 1;
  *(v68 + 16) = v79 & 1;
  v68[3] = v28;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7900, &qword_1B8C2CD38);
  sub_1B8B2A7AC(v67, v68 + *(v69 + 48));
  sub_1B8B34694(v23, v25, v63);

  sub_1B8B3433C(v12, &qword_1EBAA78E8, &qword_1B8C2CCF8);
  sub_1B8B3433C(v67, &qword_1EBAA78E8, &qword_1B8C2CCF8);
  sub_1B8B34060(v23, v25, v63);
}

uint64_t sub_1B8BAA6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7908, &unk_1B8C2CD40);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v32 = sub_1B8C242E8();
  v36 = 1;
  sub_1B8BAAA14(a1, a2, a3, &v45);
  v39 = *&v46[16];
  v40 = *&v46[32];
  v37 = v45;
  v38 = *v46;
  v42[2] = *&v46[16];
  v42[3] = *&v46[32];
  v42[4] = *&v46[48];
  v42[1] = *v46;
  v41 = *&v46[48];
  v42[0] = v45;
  sub_1B8B34450(&v37, v43, &qword_1EBAA7630, &qword_1B8C2C190);
  sub_1B8B3433C(v42, &qword_1EBAA7630, &qword_1B8C2C190);
  *&v35[23] = v38;
  *&v35[39] = v39;
  *&v35[55] = v40;
  *&v35[71] = v41;
  *&v35[7] = v37;
  LOBYTE(a2) = v36;
  sub_1B8C24C98();
  v34 = a1;
  sub_1B8C24608();
  v16 = sub_1B8C24C98();
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7910, &qword_1B8C2CD50) + 36)] = v16;
  v17 = sub_1B8C24898();
  KeyPath = swift_getKeyPath();
  v19 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7918, &qword_1B8C2CD88) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = swift_getKeyPath();
  v21 = &v15[*(v11 + 44)];
  *v21 = v20;
  *(v21 + 1) = 4;
  v21[16] = 0;
  v22 = v33;
  sub_1B8B34450(v15, v33, &qword_1EBAA7908, &unk_1B8C2CD40);
  v23 = v32;
  v43[0] = v32;
  v43[1] = 0;
  v44[0] = a2;
  *&v44[1] = *v35;
  *&v44[17] = *&v35[16];
  *&v44[65] = *&v35[64];
  *&v44[49] = *&v35[48];
  *&v44[33] = *&v35[32];
  v24 = *&v35[79];
  *&v44[80] = *&v35[79];
  v25 = *v44;
  *a6 = v32;
  *(a6 + 16) = v25;
  v26 = *&v44[16];
  v27 = *&v44[32];
  v28 = *&v44[48];
  v29 = *&v44[64];
  *(a6 + 96) = v24;
  *(a6 + 64) = v28;
  *(a6 + 80) = v29;
  *(a6 + 32) = v26;
  *(a6 + 48) = v27;
  v30 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7920, &unk_1B8C2CDC0) + 48);
  sub_1B8B34450(v22, v30, &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8B34450(v43, &v45, &qword_1EBAA7680, &qword_1B8C2C1D0);
  sub_1B8B3433C(v15, &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8B3433C(v22, &qword_1EBAA7908, &unk_1B8C2CD40);
  *&v46[33] = *&v35[32];
  *&v46[49] = *&v35[48];
  *v47 = *&v35[64];
  *&v46[1] = *v35;
  v45 = v23;
  v46[0] = a2;
  *&v47[15] = *&v35[79];
  *&v46[17] = *&v35[16];
  return sub_1B8B3433C(&v45, &qword_1EBAA7680, &qword_1B8C2C1D0);
}

uint64_t sub_1B8BAAA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B8B34CA8(a1, a2, a3);

  v6 = sub_1B8C249E8();
  v8 = v7;
  v10 = v9;
  sub_1B8C24938();
  v11 = sub_1B8C249B8();
  v33 = v12;
  v34 = v11;
  v32 = v13;
  v35 = v14;

  sub_1B8B34060(v6, v8, v10 & 1);

  sub_1B8BACC24(a1);
  v15 = sub_1B8C249E8();
  v17 = v16;
  v19 = v18;
  sub_1B8C24C98();
  v20 = sub_1B8C24998();
  v22 = v21;
  v24 = v23;
  sub_1B8B34060(v15, v17, v19 & 1);

  sub_1B8C24898();
  v25 = sub_1B8C249B8();
  v27 = v26;
  LOBYTE(v17) = v28;
  v30 = v29;

  sub_1B8B34060(v20, v22, v24 & 1);

  *a4 = v34;
  *(a4 + 8) = v33;
  *(a4 + 16) = v32 & 1;
  *(a4 + 24) = v35;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v25;
  *(a4 + 56) = v27;
  *(a4 + 64) = v17 & 1;
  *(a4 + 72) = v30;
  sub_1B8B34694(v34, v33, v32 & 1);

  sub_1B8B34694(v25, v27, v17 & 1);

  sub_1B8B34060(v25, v27, v17 & 1);

  sub_1B8B34060(v34, v33, v32 & 1);
}

uint64_t sub_1B8BAAC6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8C24398();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B8C24618();
  v5 = v4;
  v7 = v6;
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8C24358();
  sub_1B8C24378();
  type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  sub_1B8C24348();
  sub_1B8C24378();
  sub_1B8C243B8();
  v8 = sub_1B8C249C8();
  sub_1B8B34060(v3, v5, v7 & 1);

  return v8;
}

uint64_t sub_1B8BAADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B8C237B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  MEMORY[0x1B8CC9B00](v20, v16);
  v17 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) + 28);
  v18 = sub_1B8C23328();
  (*(*(v18 - 8) + 16))(v15, a5 + v17, v18);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 104))(v12, *MEMORY[0x1E699C308], v9);
  sub_1B8B5FE50(v15, v12);

  (*(v10 + 8))(v12, v9);
  return sub_1B8BACBA8(v15, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8BAAFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v41 = a4;
  v42 = a2;
  v43 = a3;
  v47 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78A0, &qword_1B8C2CCD0);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v37 - v9;
  v10 = sub_1B8C24398();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v11 = sub_1B8C249C8();
  v13 = v12;
  v15 = v14;
  sub_1B8C24928();
  v16 = sub_1B8C249B8();
  v18 = v17;
  v20 = v19;

  sub_1B8B34060(v11, v13, v15 & 1);

  v53[0] = sub_1B8C24C98();
  v21 = sub_1B8C24998();
  v38 = v22;
  v39 = v23;
  v40 = v24;
  sub_1B8B34060(v16, v18, v20 & 1);

  v49 = a1;
  v50 = v42;
  v51 = v43;
  v52 = v41;
  sub_1B8C247E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78A8, &qword_1B8C2CCD8);
  sub_1B8B34CFC(&qword_1EBAA78B0, &qword_1EBAA78A8, &qword_1B8C2CCD8, MEMORY[0x1E6981870]);
  v25 = v48;
  sub_1B8C23D58();
  v26 = v44;
  v27 = v45;
  v28 = *(v45 + 16);
  v29 = v46;
  v28(v44, v25, v46);
  v30 = v47;
  v31 = v38;
  *v47 = v21;
  v30[1] = v31;
  v32 = v39 & 1;
  *(v30 + 16) = v39 & 1;
  v30[3] = v40;
  v33 = v30;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78B8, &qword_1B8C2CCE0);
  v28(v33 + *(v34 + 48), v26, v29);
  sub_1B8B34694(v21, v31, v32);
  v35 = *(v27 + 8);

  v35(v48, v29);
  v35(v26, v29);
  sub_1B8B34060(v21, v31, v32);
}

uint64_t sub_1B8BAB3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1B8C24478();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v5 = a1;

  sub_1B8BAB6B4(&v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78C0, &qword_1B8C2CCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78C8, &qword_1B8C2CCF0);
  sub_1B8C23568();
  type metadata accessor for CatchUpMessagePreviewer(0);
  sub_1B8B34CFC(&qword_1EBAA78D0, &qword_1EBAA78C8, &qword_1B8C2CCF0, MEMORY[0x1E69E6338]);
  sub_1B8BAB7A8(&qword_1EBAA78D8, type metadata accessor for CatchUpMessagePreviewer, &unk_1B8C2CDF0);
  sub_1B8BAB7A8(&qword_1EBAA78E0, type metadata accessor for CatchUpDonationDecoder.Result.Message, &unk_1B8C2EB98);
  return sub_1B8C24EC8();
}

uint64_t sub_1B8BAB5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8BAB640()
{
  v1 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1B8BAADDC(v2, v3, v4, v5, v6);
}

uint64_t sub_1B8BAB6B4(uint64_t *a1)
{
  v2 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B8BACB2C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B8BAB7F0(v6);
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for CatchUpMessagePreviewer(uint64_t a1)
{
  result = qword_1EBAA7928;
  if (!qword_1EBAA7928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8BAB7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8BAB7F0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B8C259D8();
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
        type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
        v6 = sub_1B8C252F8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B8BABB5C(v8, v9, a1, v4);
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
    return sub_1B8BAB91C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B8BAB91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1B8BACB40(v23, v17, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      sub_1B8BACB40(v20, v13, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      v24 = sub_1B8C234F8();
      sub_1B8BACBA8(v13, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      result = sub_1B8BACBA8(v17, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1B8BAB5DC(v23, v35);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1B8BAB5DC(v25, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BABB5C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  v9 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v108 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v102 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v111 = &v97 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v97 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v97 - v18;
  v110 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1B8BACA34(a4);
    }

    v113 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v110)
      {
        v93 = *(result + 16 * a4);
        v94 = result;
        v95 = *(result + 16 * (a4 - 1) + 40);
        sub_1B8BAC478(*v110 + *(v108 + 72) * v93, *v110 + *(v108 + 72) * *(result + 16 * (a4 - 1) + 32), *v110 + *(v108 + 72) * v95, v5);
        if (v6)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1B8BACA34(v94);
        }

        if (a4 - 2 >= *(v94 + 2))
        {
          goto LABEL_122;
        }

        v96 = &v94[16 * a4];
        *v96 = v93;
        *(v96 + 1) = v95;
        v113 = v94;
        sub_1B8BAC9A8(a4 - 1);
        result = v113;
        a4 = *(v113 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v98 = a4;
  v112 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v103 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v110;
      v26 = *(v108 + 72);
      v5 = *v110 + v26 * v24;
      v100 = v23;
      v27 = v26;
      v109 = v26;
      sub_1B8BACB40(v5, v19, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      sub_1B8BACB40(v25 + v27 * v100, v16, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      LODWORD(v107) = sub_1B8C234F8();
      sub_1B8BACBA8(v16, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      result = sub_1B8BACBA8(v19, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      v28 = v100 + 2;
      v29 = v25 + v109 * (v100 + 2);
      while (v20 != v28)
      {
        sub_1B8BACB40(v29, v19, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        sub_1B8BACB40(v5, v16, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        v30 = sub_1B8C234F8() & 1;
        sub_1B8BACBA8(v16, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        result = sub_1B8BACBA8(v19, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        ++v28;
        v29 += v109;
        v5 += v109;
        if ((v107 & 1) != v30)
        {
          v20 = v28 - 1;
          break;
        }
      }

      a4 = v98;
      v23 = v100;
      if (v107)
      {
        if (v20 < v100)
        {
          goto LABEL_125;
        }

        if (v100 < v20)
        {
          v97 = v6;
          v31 = v109 * (v20 - 1);
          v32 = v20;
          v33 = v20 * v109;
          v107 = v20;
          v34 = v100;
          v35 = v100 * v109;
          do
          {
            if (v34 != --v32)
            {
              v36 = *v110;
              if (!*v110)
              {
                goto LABEL_131;
              }

              v5 = v36 + v35;
              sub_1B8BAB5DC(v36 + v35, v102);
              if (v35 < v31 || v5 >= v36 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v35 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1B8BAB5DC(v102, v36 + v31);
            }

            ++v34;
            v31 -= v109;
            v33 -= v109;
            v35 += v109;
          }

          while (v34 < v32);
          v6 = v97;
          a4 = v98;
          v23 = v100;
          v20 = v107;
        }
      }
    }

    v37 = v110[1];
    if (v20 < v37)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_124;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v37)
        {
          v38 = v110[1];
        }

        else
        {
          v38 = v23 + a4;
        }

        if (v38 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v20 != v38)
        {
          break;
        }
      }
    }

    v39 = v20;
    if (v20 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v103;
    }

    else
    {
      result = sub_1B8B5D890(0, *(v103 + 2) + 1, 1, v103);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v40 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v40 >> 1)
    {
      result = sub_1B8B5D890((v40 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v41 = &v22[16 * a4];
    *(v41 + 4) = v23;
    *(v41 + 5) = v39;
    v42 = *v99;
    if (!*v99)
    {
      goto LABEL_133;
    }

    v104 = v39;
    if (a4)
    {
      while (1)
      {
        v43 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v44 = *(v22 + 4);
          v45 = *(v22 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_52:
          if (v47)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_115;
          }

          v66 = &v22[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_119;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v70 = &v22[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_66:
        if (v65)
        {
          goto LABEL_114;
        }

        v73 = &v22[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_117;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v43 - 1;
        if (v43 - 1 >= v5)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v110)
        {
          goto LABEL_130;
        }

        v81 = v22;
        v82 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v43 + 40];
        sub_1B8BAC478(*v110 + *(v108 + 72) * v82, *v110 + *(v108 + 72) * *&v22[16 * v43 + 32], *v110 + *(v108 + 72) * v5, v42);
        if (v6)
        {
        }

        if (v5 < v82)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1B8BACA34(v81);
        }

        if (a4 >= *(v81 + 2))
        {
          goto LABEL_109;
        }

        v83 = &v81[16 * a4];
        *(v83 + 4) = v82;
        *(v83 + 5) = v5;
        v113 = v81;
        result = sub_1B8BAC9A8(v43);
        v22 = v113;
        v5 = *(v113 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v22[16 * v5 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_110;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_111;
      }

      v55 = &v22[16 * v5];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_113;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_116;
      }

      if (v59 >= v51)
      {
        v77 = &v22[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v46 < v80)
        {
          v43 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v110[1];
    v21 = v104;
    a4 = v98;
    if (v104 >= v20)
    {
      goto LABEL_95;
    }
  }

  v97 = v6;
  v84 = v20;
  v85 = v23;
  v86 = *v110;
  v87 = *(v108 + 72);
  v88 = *v110 + v87 * (v20 - 1);
  v89 = -v87;
  v100 = v85;
  v101 = v87;
  v90 = v85 - v20;
  v107 = v84;
  v5 = v86 + v84 * v87;
  v104 = v38;
LABEL_85:
  v105 = v5;
  v106 = v90;
  v109 = v88;
  v91 = v88;
  while (1)
  {
    sub_1B8BACB40(v5, v19, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    sub_1B8BACB40(v91, v16, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    a4 = sub_1B8C234F8();
    sub_1B8BACBA8(v16, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    result = sub_1B8BACBA8(v19, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v88 = v109 + v101;
      v90 = v106 - 1;
      v39 = v104;
      v5 = v105 + v101;
      if (++v107 != v104)
      {
        goto LABEL_85;
      }

      v6 = v97;
      v23 = v100;
      if (v104 < v100)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v86)
    {
      break;
    }

    a4 = v111;
    sub_1B8BAB5DC(v5, v111);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B8BAB5DC(a4, v91);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1B8BAC478(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1B8BACB40(v30, v43, type metadata accessor for CatchUpDonationDecoder.Result.Message);
          v32 = v44;
          sub_1B8BACB40(v27, v44, type metadata accessor for CatchUpDonationDecoder.Result.Message);
          v33 = sub_1B8C234F8();
          sub_1B8BACBA8(v32, type metadata accessor for CatchUpDonationDecoder.Result.Message);
          sub_1B8BACBA8(v31, type metadata accessor for CatchUpDonationDecoder.Result.Message);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1B8BACB40(a2, v43, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        v21 = v44;
        sub_1B8BACB40(a4, v44, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        v22 = sub_1B8C234F8();
        sub_1B8BACBA8(v21, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        sub_1B8BACBA8(v20, type metadata accessor for CatchUpDonationDecoder.Result.Message);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_1B8BACA48(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1B8BAC9A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B8BACA34(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B8BACA48(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
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

uint64_t sub_1B8BACB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BACBA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8BACC24(uint64_t a1)
{
  v1 = sub_1B8C23528();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23518();
  type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  sub_1B8C234D8();
  if (v5 >= 86400.0)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AE78]) init];
    [v6 setUnitsStyle_];
    [v6 setDateTimeStyle_];
    v9 = sub_1B8C234E8();
    v7 = sub_1B8C234E8();
    v8 = [v6 localizedStringForDate:v9 relativeToDate:v7];
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v6 setDateStyle_];
    [v6 setTimeStyle_];
    v7 = sub_1B8C234E8();
    v8 = [v6 stringFromDate_];
  }

  v10 = sub_1B8C25128();
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_1B8BACE60(uint64_t a1)
{
  result = type metadata accessor for CatchUpDonationDecoder.Result.Message(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B8BACECC()
{
  result = qword_1EBAA7938;
  if (!qword_1EBAA7938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7940, &qword_1B8C2CDE8);
    sub_1B8B34CFC(&qword_1EBAA7948, &qword_1EBAA7858, &qword_1B8C2CC90, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7938);
  }

  return result;
}

unint64_t sub_1B8BACF98()
{
  result = qword_1EBAA7960;
  if (!qword_1EBAA7960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7958, &qword_1B8C2CE48);
    sub_1B8BAD050();
    sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7960);
  }

  return result;
}

unint64_t sub_1B8BAD050()
{
  result = qword_1EBAA7968;
  if (!qword_1EBAA7968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7970, &qword_1B8C2CE60);
    sub_1B8BAD108();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7968);
  }

  return result;
}

unint64_t sub_1B8BAD108()
{
  result = qword_1EBAA7978;
  if (!qword_1EBAA7978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7980, &qword_1B8C2CE68);
    sub_1B8B34CFC(&qword_1EBAA7988, &qword_1EBAA7990, &unk_1B8C2CE70, MEMORY[0x1E69817F8]);
    sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7978);
  }

  return result;
}

uint64_t sub_1B8BAD1EC(uint64_t a1, unsigned __int8 a2)
{
  sub_1B8C251B8();
}

uint64_t sub_1B8BAD338(uint64_t a1, unsigned __int8 a2)
{
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8BAD498(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007374;
  v3 = 0x6C75736572206F4ELL;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001B8C31F60;
    v12 = 0xD00000000000002ELL;
    if (a1 != 6)
    {
      v12 = 0xD000000000000025;
      v11 = 0x80000001B8C31F90;
    }

    v13 = 0x80000001B8C31F30;
    v14 = 0xD00000000000002CLL;
    if (a1 == 4)
    {
      v14 = 0x6C75736572206F4ELL;
      v13 = 0xEA00000000007374;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000001B8C31EC0;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0xD000000000000043;
      v5 = 0x80000001B8C31EE0;
    }

    v7 = 0x80000001B8C31E80;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v7 = 0x80000001B8C31EA0;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001B8C31F60;
        if (v9 != 0xD00000000000002ELL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000001B8C31F90;
        if (v9 != 0xD000000000000025)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 != 4)
    {
      v2 = 0x80000001B8C31F30;
      if (v9 != 0xD00000000000002CLL)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001B8C31EA0;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000001B8C31E80;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 2)
    {
      v2 = 0x80000001B8C31EC0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0x80000001B8C31EE0;
    v3 = 0xD000000000000043;
  }

  if (v9 != v3)
  {
LABEL_45:
    v15 = sub_1B8C25A08();
    goto LABEL_46;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1B8BAD708()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAB39C8);
  v1 = __swift_project_value_buffer(v0, qword_1EBAB39C8);
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EDC85D40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Feedback::FBKEvaluationError_optional __swiftcall FBKEvaluationError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8C25908();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FBKEvaluationError.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6C75736572206F4ELL;
    v6 = 0xD00000000000002ELL;
    if (v1 != 6)
    {
      v6 = 0xD000000000000025;
    }

    if (v1 != 4)
    {
      v5 = 0xD00000000000002CLL;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000043;
    if (v1 == 2)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (*v0)
    {
      v3 = 0xD000000000000019;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1B8BAD954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7998;
  if (!qword_1EBAA7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7998);
  }

  return result;
}

void sub_1B8BAD9D0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEA00000000007374;
    v9 = 0x6C75736572206F4ELL;
    v10 = 0x80000001B8C31F60;
    v11 = 0xD00000000000002ELL;
    if (v2 != 6)
    {
      v11 = 0xD000000000000025;
      v10 = 0x80000001B8C31F90;
    }

    if (v2 != 4)
    {
      v9 = 0xD00000000000002CLL;
      v8 = 0x80000001B8C31F30;
    }

    if (*v1 <= 5u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (*v1 > 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001B8C31EC0;
    v4 = 0xD000000000000043;
    if (v2 == 2)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x80000001B8C31EE0;
    }

    v5 = 0xD000000000000010;
    v6 = 0x80000001B8C31E80;
    if (*v1)
    {
      v5 = 0xD000000000000019;
      v6 = 0x80000001B8C31EA0;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t getEnumTagSinglePayload for FBKEvaluationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FBKEvaluationError(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1B8BADC6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 24);
  v51 = *(*a1 + 16);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 24);
  v50 = *(v2 + 16);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *v9;
  v11 = *(v9 + 8);
  v39 = *(v9 + 16);
  v13 = *(v9 + 24);
  v49 = *v10;
  v48 = *(v10 + 8);
  v41 = *(v10 + 16);
  v47 = *(v10 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v45 = *(v14 + 8);
  v46 = *v14;
  v40 = *(v14 + 16);
  v44 = *(v14 + 24);
  v26 = *(v15 + 8);
  v27 = *v15;
  v42 = *(v15 + 16);
  v16 = *(v15 + 24);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v43 = *(v17 + 16);
  *(a2 + 16) = v51;
  *(a2 + 48) = v50;
  *(a2 + 80) = v39;
  *(a2 + 112) = v41;
  *(a2 + 144) = v40;
  *(a2 + 176) = v42;
  *(a2 + 208) = v43;
  v28 = *(v17 + 8);
  v29 = *v17;
  v19 = *(v17 + 24);
  v30 = *(v18 + 8);
  v20 = *(v18 + 16);
  v31 = *v18;
  v32 = *(v18 + 24);
  v22 = *(a1 + 64);
  v21 = *(a1 + 72);
  v33 = *(v22 + 8);
  v34 = *v22;
  v23 = *(v22 + 16);
  v35 = *(v22 + 24);
  v36 = *(v21 + 8);
  v24 = *(v21 + 16);
  v37 = *v21;
  v38 = *(v21 + 24);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v12;
  *(a2 + 72) = v11;
  *(a2 + 88) = v13;
  *(a2 + 96) = v49;
  *(a2 + 104) = v48;
  *(a2 + 120) = v47;
  *(a2 + 128) = v46;
  *(a2 + 136) = v45;
  *(a2 + 152) = v44;
  *(a2 + 160) = v27;
  *(a2 + 168) = v26;
  *(a2 + 184) = v16;
  *(a2 + 192) = v29;
  *(a2 + 200) = v28;
  *(a2 + 216) = v19;
  *(a2 + 224) = v31;
  *(a2 + 232) = v30;
  *(a2 + 240) = v20;
  *(a2 + 248) = v32;
  *(a2 + 256) = v34;
  *(a2 + 264) = v33;
  *(a2 + 272) = v23;
  *(a2 + 280) = v35;
  *(a2 + 288) = v37;
  *(a2 + 296) = v36;
  *(a2 + 304) = v24;
  *(a2 + 312) = v38;
  sub_1B8B34694(v3, v4, v51);

  sub_1B8B34694(v6, v7, v50);

  sub_1B8B34694(v12, v11, v39);

  sub_1B8B34694(v49, v48, v41);

  sub_1B8B34694(v46, v45, v40);

  sub_1B8B34694(v27, v26, v42);

  sub_1B8B34694(v29, v28, v43);

  sub_1B8B34694(v31, v30, v20);

  sub_1B8B34694(v34, v33, v23);

  sub_1B8B34694(v37, v36, v24);

  return result;
}

void sub_1B8BADF4C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BB04CC(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  sub_1B8C23588();

  *a2 = *(v3 + 73);
}

void *sub_1B8BAE01C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v41 = a3;
  v5 = sub_1B8C242A8();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_1B8C23A28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1B8C24478();
  v44 = 1;
  v40 = a2;
  sub_1B8BAE668(a1, a2 & 1, v45);
  memcpy(v54, v45, sizeof(v54));
  memcpy(v55, v45, sizeof(v55));
  sub_1B8B34450(v54, v42, &qword_1EBAA79A0, &qword_1B8C2D080);
  sub_1B8B3433C(v55, &qword_1EBAA79A0, &qword_1B8C2D080);
  memcpy(&v43[7], v54, 0x140uLL);
  v14 = v44;
  v38 = sub_1B8C24808();
  LOBYTE(v45[0]) = 1;
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_1EBAB3A60);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  v17 = sub_1B8C24CE8();
  v18 = sub_1B8C24808();
  if (qword_1EBAA59A8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_1EBAB3A78);
  v16(v13, v19, v10);
  v20 = sub_1B8C24CE8();
  v45[0] = v39;
  v45[1] = 0;
  LOBYTE(v45[2]) = v14;
  memcpy(&v45[2] + 1, v43, 0x147uLL);
  v46 = v38;
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  v50 = v17;
  v51 = v18;
  *v52 = v42[0];
  *&v52[3] = *(v42 + 3);
  v53 = v20;
  v21 = sub_1B8C24C78();
  sub_1B8BAFF60(v21, v56);

  sub_1B8B3433C(v45, &qword_1EBAA79A8, &qword_1B8C2D088);
  KeyPath = swift_getKeyPath();
  v23 = *MEMORY[0x1E6980E08];
  v24 = sub_1B8C248C8();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v9, v23, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v26 = sub_1B8C24908();
  sub_1B8B3433C(v9, &qword_1EBAA5CD0, &qword_1B8C278C8);
  v27 = swift_getKeyPath();

  if ((v40 & 1) == 0)
  {
    sub_1B8C25488();
    v28 = sub_1B8C247B8();
    sub_1B8C23C08();

    v29 = v35;
    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v36 + 8))(v29, v37);
    a1 = v42[0];
  }

  swift_getKeyPath();
  v42[0] = a1;
  sub_1B8BB04CC(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v30 = *(a1 + 48);

  swift_getKeyPath();
  v42[0] = v30;
  sub_1B8BB04CC(&qword_1EBAA6908, type metadata accessor for DebugController, &unk_1B8C29B28);
  sub_1B8C23588();

  v31 = *(v30 + 17);

  if (v31)
  {
    v32 = 140.0;
  }

  else
  {
    v32 = -200.0;
  }

  v33 = v41;
  result = memcpy(v41, v56, 0x1F0uLL);
  v33[62] = KeyPath;
  *(v33 + 504) = 0;
  v33[64] = v27;
  v33[65] = v26;
  *(v33 + 66) = v32;
  v33[67] = 0x403E000000000000;
  return result;
}

void sub_1B8BAE668(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v138 = a3;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v112[-v5];
  v6 = sub_1B8C242A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v112[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8C24398();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v144 = &v112[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v143 = &v112[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v147 = &v112[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v142 = &v112[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v146 = &v112[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v141 = &v112[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v145 = &v112[-v24];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  sub_1B8C24388();
  sub_1B8C24378();
  v148 = v6;
  v149 = v7;
  v151 = a2;
  if (a2)
  {
    v200[0] = a1;

    v27 = a1;
  }

  else
  {

    sub_1B8C25488();
    v28 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v27 = v200[0];
  }

  swift_getKeyPath();
  *&v192 = v27;
  v150 = sub_1B8BB04CC(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v29 = *(v27 + 40);

  swift_getKeyPath();
  *&v192 = v29;
  sub_1B8BB04CC(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  sub_1B8C23588();

  v30 = v29[2];
  v197 = v29[1];
  v198 = v30;
  v199[0] = v29[3];
  *(v199 + 9) = *(v29 + 57);
  sub_1B8B50FF8(&v197, &v192);

  v192 = v197;
  v193 = v198;
  v194[0] = v199[0];
  *(v194 + 9) = *(v199 + 9);
  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v31 = sub_1B8C249C8();
  v135 = v32;
  v136 = v31;
  v137 = v33;
  v134 = v34;
  sub_1B8C24388();
  sub_1B8C24378();

  v35 = a1;
  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v36 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v148);
    v35 = v192;
  }

  swift_getKeyPath();
  *&v192 = v35;
  sub_1B8C23588();

  v37 = *(v35 + 40);

  swift_getKeyPath();
  *&v192 = v37;
  sub_1B8C23588();

  v38 = *(v37 + 73);

  LOBYTE(v192) = v38;
  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v39 = sub_1B8C249C8();
  v131 = v40;
  v132 = v39;
  v133 = v41;
  v130 = v42;
  sub_1B8C24388();
  sub_1B8C24378();

  v43 = a1;
  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v44 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v148);
    v43 = v192;
  }

  swift_getKeyPath();
  *&v192 = v43;
  sub_1B8C23588();

  swift_beginAccess();
  v45 = *(v43 + 16);

  swift_getKeyPath();
  *&v192 = v45;
  sub_1B8BB04CC(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v46 = *(v45 + 40);
  swift_getKeyPath();
  *&v192 = v45;
  sub_1B8C23588();

  v47 = *(v45 + 48);

  *&v192 = v46 / v47;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v48 = sub_1B8C249C8();
  v127 = v49;
  v128 = v48;
  v129 = v50;
  v126 = v51;
  sub_1B8C24388();
  sub_1B8C24378();

  v52 = a1;
  v53 = v148;
  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v54 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v53);
    v52 = v192;
  }

  swift_getKeyPath();
  *&v192 = v52;
  sub_1B8C23588();

  swift_beginAccess();
  v55 = *(v52 + 16);

  swift_getKeyPath();
  *&v192 = v55;
  sub_1B8C23588();

  v56 = OBJC_IVAR____TtC8Feedback18DonationController__currentID;
  swift_beginAccess();
  sub_1B8B34450(v55 + v56, v139, &qword_1EBAA79C0, &qword_1B8C2D150);

  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v139 = sub_1B8C249C8();
  v125 = v57;
  LODWORD(v140) = v58;
  v145 = v59;
  sub_1B8C24388();
  sub_1B8C24378();

  v60 = a1;
  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v61 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v53);
    v60 = v192;
  }

  swift_getKeyPath();
  *&v192 = v60;
  sub_1B8C23588();

  v62 = *(v60 + 32);

  swift_getKeyPath();
  *&v192 = v62;
  sub_1B8BB04CC(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  v63 = *(v62 + 17);

  LOBYTE(v192) = v63;
  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v64 = sub_1B8C249C8();
  v123 = v65;
  v124 = v64;
  v122 = v66;
  v141 = v67;
  sub_1B8C24388();
  sub_1B8C24378();

  v68 = a1;
  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v69 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v53);
    v68 = v192;
  }

  swift_getKeyPath();
  *&v192 = v68;
  sub_1B8C23588();

  v70 = *(v68 + 32);

  swift_getKeyPath();
  *&v192 = v70;
  sub_1B8C23588();

  v71 = *(v70 + 16);

  LOBYTE(v192) = v71;
  sub_1B8C25178();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v72 = sub_1B8C249C8();
  v120 = v73;
  v121 = v72;
  v119 = v74;
  v146 = v75;
  sub_1B8C24388();
  sub_1B8C24378();

  v76 = a1;
  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v77 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v53);
    v76 = v192;
  }

  swift_getKeyPath();
  *&v192 = v76;
  sub_1B8C23588();

  v78 = *(v76 + 24);

  swift_getKeyPath();
  *&v192 = v78;
  sub_1B8BB04CC(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v79 = *(v78 + 24);

  *&v192 = v79;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v80 = sub_1B8C249C8();
  v117 = v81;
  v118 = v80;
  v116 = v82;
  v142 = v83;
  sub_1B8C24388();
  sub_1B8C24378();

  v84 = a1;
  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v85 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v53);
    v84 = v192;
  }

  swift_getKeyPath();
  *&v192 = v84;
  sub_1B8C23588();

  sub_1B8B51580();
  v87 = v86;

  *&v192 = v87;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v88 = sub_1B8C249C8();
  v114 = v89;
  v115 = v88;
  v113 = v90;
  v147 = v91;
  sub_1B8C24388();
  sub_1B8C24378();

  v92 = a1;
  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v93 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v53);
    v92 = v192;
  }

  swift_getKeyPath();
  *&v192 = v92;
  sub_1B8C23588();

  v94 = *(v92 + 24);

  swift_getKeyPath();
  *&v192 = v94;
  sub_1B8C23588();

  v95 = *(v94 + 24);

  v96 = floor(sqrt(v95 * 0.5));
  if ((*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v96 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v96 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v97 = v96;
  if (v96 >= 99)
  {
    v97 = 99;
  }

  *&v192 = v97;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v98 = sub_1B8C249C8();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  sub_1B8C24388();
  sub_1B8C24378();

  if ((v151 & 1) == 0)
  {
    sub_1B8C25488();
    v105 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v149 + 8))(v9, v148);
    a1 = v192;
  }

  swift_getKeyPath();
  *&v192 = a1;
  sub_1B8C23588();

  sub_1B8B522B8();
  v107 = v106;

  *&v192 = v107;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v108 = sub_1B8C249C8();
  v188 = v136;
  v189 = v135;
  v191 = v134;
  v184 = v132;
  v185 = v131;
  v187 = v130;
  v180 = v128;
  v181 = v127;
  v183 = v126;
  v176 = v139;
  v177 = v125;
  v190 = v137 & 1;
  v186 = v133 & 1;
  *&v192 = &v188;
  *(&v192 + 1) = &v184;
  v182 = v129 & 1;
  v178 = v140 & 1;
  v179 = v145;
  *&v193 = &v180;
  *(&v193 + 1) = &v176;
  v172 = v124;
  v173 = v123;
  v174 = v122 & 1;
  v175 = v141;
  v168 = v121;
  v169 = v120;
  v170 = v119 & 1;
  v171 = v146;
  *&v194[0] = &v172;
  *(&v194[0] + 1) = &v168;
  v164 = v118;
  v165 = v117;
  v166 = v116 & 1;
  v167 = v142;
  v160 = v115;
  v161 = v114;
  v162 = v113 & 1;
  v163 = v147;
  *&v194[1] = &v164;
  *(&v194[1] + 1) = &v160;
  v156 = v98;
  v157 = v100;
  v158 = v102 & 1;
  v159 = v104;
  v152 = v108;
  v153 = v109;
  v154 = v110 & 1;
  v155 = v111;
  v195 = &v156;
  v196 = &v152;
  sub_1B8BADC6C(&v192, v138);
  sub_1B8B34060(v152, v153, v154);

  sub_1B8B34060(v156, v157, v158);

  sub_1B8B34060(v160, v161, v162);

  sub_1B8B34060(v164, v165, v166);

  sub_1B8B34060(v168, v169, v170);

  sub_1B8B34060(v172, v173, v174);

  sub_1B8B34060(v176, v177, v178);

  sub_1B8B34060(v180, v181, v182);

  sub_1B8B34060(v184, v185, v186);

  sub_1B8B34060(v188, v189, v190);
}

uint64_t sub_1B8BAFF60@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B8C23DB8();
  v6 = v28;
  v7 = v28 * 0.5;
  v8 = v29;
  v9 = DWORD1(v29);
  v10 = *(&v29 + 1);
  v11 = v30;

  v12 = sub_1B8C24F48();
  v14 = v13;
  *v31 = v28 * 0.5;
  *(v31 + 1) = v28;
  v31[1] = v29;
  *v32 = v30;
  *&v32[16] = a1;
  *&v32[24] = 256;
  v26 = v29;
  *v27 = v30;
  *&v27[10] = *&v32[10];
  v25 = v31[0];
  v35 = *v27;
  v36 = *&v27[16];
  v33 = v31[0];
  v34 = v29;
  *&v37 = v12;
  *(&v37 + 1) = v13;
  memcpy(a2, v3, 0x1A0uLL);
  v15 = *&v27[16];
  a2[28] = *v27;
  a2[29] = v15;
  a2[30] = v37;
  v16 = v34;
  a2[26] = v33;
  a2[27] = v16;
  v38[0] = v25;
  v38[1] = v26;
  v38[2] = *v27;
  v38[3] = *&v27[16];
  v39 = v12;
  v40 = v14;
  sub_1B8B34450(v31, v18, &qword_1EBAA79B0, &qword_1B8C2D140);
  sub_1B8B34450(v3, v18, &qword_1EBAA79A8, &qword_1B8C2D088);
  sub_1B8B34450(&v33, v18, &qword_1EBAA79B8, &qword_1B8C2D148);
  sub_1B8B3433C(v38, &qword_1EBAA79B8, &qword_1B8C2D148);
  *v18 = v7;
  *&v18[1] = v6;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = a1;
  v24 = 256;
  return sub_1B8B3433C(v18, &qword_1EBAA79B0, &qword_1B8C2D140);
}

void sub_1B8BB0150(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BB04CC(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 40);
}

void sub_1B8BB0220(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BB04CC(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 48);
}

uint64_t sub_1B8BB02F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BB04CC(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback18DonationController__currentID;
  swift_beginAccess();
  return sub_1B8B34450(v3 + v4, a2, &qword_1EBAA79C0, &qword_1B8C2D150);
}

uint64_t sub_1B8BB03C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B8B34450(a1, &v6 - v3, &qword_1EBAA79C0, &qword_1B8C2D150);
  return sub_1B8BC3F54(v4);
}

uint64_t sub_1B8BB0474@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C241E8();
  *a1 = result;
  return result;
}

uint64_t sub_1B8BB04CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8BB0514()
{
  result = qword_1EBAA79C8;
  if (!qword_1EBAA79C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA79D0, &qword_1B8C2D338);
    sub_1B8BB05A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA79C8);
  }

  return result;
}

unint64_t sub_1B8BB05A0()
{
  result = qword_1EBAA79D8;
  if (!qword_1EBAA79D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA79E0, &qword_1B8C2D340);
    sub_1B8BB0658();
    sub_1B8B34CFC(&qword_1EBAA7A48, &unk_1EBAA7A50, &qword_1B8C2D370, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA79D8);
  }

  return result;
}

unint64_t sub_1B8BB0658()
{
  result = qword_1EBAA79E8;
  if (!qword_1EBAA79E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA79F0, &qword_1B8C2D348);
    sub_1B8BB0710();
    sub_1B8B34CFC(&qword_1EBAA5A40, &qword_1EBAA5A48, &qword_1B8C27B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA79E8);
  }

  return result;
}

unint64_t sub_1B8BB0710()
{
  result = qword_1EBAA79F8;
  if (!qword_1EBAA79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7A00, &qword_1B8C2D350);
    sub_1B8BB07C8();
    sub_1B8B34CFC(&qword_1EBAA7A40, &qword_1EBAA79B8, &qword_1B8C2D148, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA79F8);
  }

  return result;
}

unint64_t sub_1B8BB07C8()
{
  result = qword_1EBAA7A08;
  if (!qword_1EBAA7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA79A8, &qword_1B8C2D088);
    sub_1B8BB0880();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7A08);
  }

  return result;
}

unint64_t sub_1B8BB0880()
{
  result = qword_1EBAA7A10;
  if (!qword_1EBAA7A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7A18, &qword_1B8C2D358);
    sub_1B8BB0938();
    sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7A10);
  }

  return result;
}

unint64_t sub_1B8BB0938()
{
  result = qword_1EBAA7A20;
  if (!qword_1EBAA7A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7A28, &qword_1B8C2D360);
    sub_1B8B34CFC(&qword_1EBAA7A30, &qword_1EBAA7A38, &qword_1B8C2D368, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7A20);
  }

  return result;
}

uint64_t sub_1B8BB09F0()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7A60);
  __swift_project_value_buffer(v0, qword_1EBAA7A60);
  return sub_1B8C23C28();
}

void sub_1B8BB0A6C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1B8BB0ACC()
{
  v1 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_1B8BB0B68(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B8BB0BC8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B8B8BBFC;
}

uint64_t sub_1B8BB0CB0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B8BB0D1C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1B8BB0DBC;
}

void sub_1B8BB0DBC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_1B8BB0E44()
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate];
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController);
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection;
  if (!*&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection])
  {
    v4 = qword_1EBAA5918;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EBAA7A60);
    v7 = v5;
    v8 = sub_1B8C23C18();
    v9 = sub_1B8C25498();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v10 = 136446210;
      v11 = v7;
      v12 = [v11 description];
      v13 = v3;
      v14 = sub_1B8C25128();
      v16 = v15;

      v17 = v14;
      v3 = v13;
      v18 = sub_1B8B5DD48(v17, v16, &aBlock);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_1B8B22000, v8, v9, "Initializing XPC Connection for host view controller: %{public}s", v10, 0xCu);
      v19 = __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B8CCB0E0](v40, -1, -1, v19);
      MEMORY[0x1B8CCB0E0](v10, -1, -1);
    }

    v0 = v41;
    aBlock = 0;
    v20 = [v7 makeXPCConnectionWithError:&aBlock];
    v21 = aBlock;
    if (v20)
    {
      v22 = sub_1B8B88E34();
      [v20 setRemoteObjectInterface_];

      [v20 setExportedObject_];
      v23 = sub_1B8B89014();
      [v20 setExportedInterface_];

      v24 = swift_allocObject();
      *(v24 + 16) = v41;
      v46 = sub_1B8BB7454;
      v47 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = sub_1B8B8B9F4;
      v45 = &block_descriptor_91;
      v25 = _Block_copy(&aBlock);
      v26 = v41;

      [v20 setInterruptionHandler_];
      _Block_release(v25);
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v46 = sub_1B8BB7494;
      v47 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = sub_1B8B8B9F4;
      v45 = &block_descriptor_97;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      [v20 setInvalidationHandler_];
      _Block_release(v28);
      v30 = *&v41[v3];
      *&v41[v3] = v20;
      v31 = v20;

      [v31 resume];
    }

    else
    {
      v33 = v21;
      v34 = sub_1B8C23368();

      swift_willThrow();
      v35 = sub_1B8C23C18();
      v36 = sub_1B8C25478();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1B8B22000, v35, v36, "Failed to create XPC connection", v37, 2u);
        MEMORY[0x1B8CCB0E0](v37, -1, -1);
      }

      v7 = v35;
      v0 = v41;
    }
  }

  v32 = *&v0[v3];
  v38 = v32;
  return v32;
}

void sub_1B8BB1308(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection];
    *&Strong[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection] = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1B8BB1798(0xD000000000000015, 0x80000001B8C35240);
  }
}

uint64_t sub_1B8BB13AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v6 = sub_1B8C24FD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B8C25008();
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8C23C38();
  __swift_project_value_buffer(v13, qword_1EBAA7A60);
  v14 = sub_1B8C23C18();
  v15 = sub_1B8C25498();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a2;
    v18 = a4;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1B8B22000, v14, v15, v17, v16, 2u);
    v20 = v19;
    a4 = v18;
    MEMORY[0x1B8CCB0E0](v20, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v21 = sub_1B8C25538();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = v25;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = a4;
  v23 = _Block_copy(aBlock);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v12, v9, v23);
  _Block_release(v23);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v26);
}

void sub_1B8BB16F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection];
    *&Strong[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection] = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1B8BB1798(0xD000000000000015, 0x80000001B8C35220);
  }
}

void sub_1B8BB1798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 presentingViewController];
  v7 = v6;
  if (v6)
  {
  }

  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA7A60);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7 != 0;
    _os_log_impl(&dword_1B8B22000, v9, v10, "is presented %{BOOL}d", v11, 8u);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  if (v7)
  {

    v12 = _s8Feedback18FBKSubmissionErrorC16debugDescriptionACSS_tcfC_0(a1, a2);
    [v3 didFailSubmissionWithError_];
  }
}

void *sub_1B8BB192C()
{
  result = sub_1B8BB0E44();
  if (result)
  {
    v1 = result;
    aBlock[4] = sub_1B8BB1B20;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BB1CC4;
    aBlock[3] = &block_descriptor_173;
    v2 = _Block_copy(aBlock);
    v3 = [v1 remoteObjectProxyWithErrorHandler_];
    _Block_release(v2);

    sub_1B8C256B8();
    swift_unknownObjectRelease();
    sub_1B8B5FDD4(aBlock, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA7BC0, &qword_1B8C2D470);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      return v8;
    }

    else
    {
      if (qword_1EBAA5918 != -1)
      {
        swift_once();
      }

      v4 = sub_1B8C23C38();
      __swift_project_value_buffer(v4, qword_1EBAA7A60);
      v5 = sub_1B8C23C18();
      v6 = sub_1B8C25478();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1B8B22000, v5, v6, "XPC proxy object is not of the expected object type.", v7, 2u);
        MEMORY[0x1B8CCB0E0](v7, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(aBlock);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B8BB1B20(void *a1)
{
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7A60);
  v3 = a1;
  oslog = sub_1B8C23C18();
  v4 = sub_1B8C25478();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    v8 = sub_1B8C25178();
    v10 = sub_1B8B5DD48(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B8B22000, oslog, v4, "XPC proxy object failed with error: %{public}s", v5, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v11);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1B8BB1CC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *FBKFeedbackDraftViewController.init(feedbackForm:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionObserver] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection] = 0;
  v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage] = 1;
  *&v1[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FBKFeedbackDraftViewController();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  objc_allocWithZone(type metadata accessor for FBK_EXQueryObserverDelegateWrapper());
  v5 = v4;
  v6 = sub_1B8BB6354(v5);
  v7 = *&v5[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate];
  *&v5[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate] = v6;

  sub_1B8BB1EF4();
  return v5;
}

void sub_1B8BB1EF4()
{
  [v0 setModalInPresentation_];
  v1 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85B0, &unk_1B8C2BBE0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B8C2D380;
    v3 = objc_opt_self();
    v4 = *MEMORY[0x1E699C108];
    v5 = v1;
    *(v2 + 32) = [v3 extensionPointIdentifierQuery_];
    v6 = objc_allocWithZone(MEMORY[0x1E6966D00]);
    sub_1B8B46130(0, &unk_1EBAA7BD0, 0x1E6966CE0);
    v7 = v5;
    v8 = sub_1B8C252B8();

    v9 = [v6 initWithQueries:v8 delegate:v7];

    v10 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionObserver];
    *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionObserver] = v9;
    v14 = v9;

    if (!v14)
    {
      __break(1u);
      return;
    }

    [v14 resume];
  }

  else
  {
    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EBAA7A60);
    v14 = sub_1B8C23C18();
    v12 = sub_1B8C25488();
    if (os_log_type_enabled(v14, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B8B22000, v14, v12, "query observer is not initialized", v13, 2u);
      MEMORY[0x1B8CCB0E0](v13, -1, -1);
    }
  }
}

id FBKFeedbackDraftViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController);
    *(v1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController) = 0;
  }

  v3 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection;
  v4 = *&v0[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection];
  if (v4)
  {
    [v4 invalidate];
    v5 = *&v0[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v0[v3] = 0;

  v7.receiver = v0;
  v7.super_class = type metadata accessor for FBKFeedbackDraftViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1B8BB2274()
{
  v1 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1B8BB22B8(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  if (*(v1 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection))
  {
    result = sub_1B8BB192C();
    if (result)
    {
      [result setShowsCompletionPage_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t (*sub_1B8BB233C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1B8BB23C4;
}

void sub_1B8BB23C4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(v3[3] + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection))
    {
      v4 = sub_1B8BB192C();
      if (v4)
      {
        [v4 setShowsCompletionPage_];
        swift_unknownObjectRelease();
      }
    }
  }

  free(v3);
}

void sub_1B8BB2444()
{
  if (!*(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection))
  {
    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v1 = sub_1B8C23C38();
    __swift_project_value_buffer(v1, qword_1EBAA7A60);
    oslog = sub_1B8C23C18();
    v2 = sub_1B8C25478();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1B8B22000, oslog, v2, "No _xpcConnection. Cannot dismiss keyboard", v3, 2u);
      MEMORY[0x1B8CCB0E0](v3, -1, -1);
    }
  }
}

id FBKFeedbackDraftViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1B8C250F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall FBKFeedbackDraftViewController.didRequestViewFullScreen()()
{
  v1 = v0;
  v2 = sub_1B8C24FD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C25008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v10 = sub_1B8C23C38();
  __swift_project_value_buffer(v10, qword_1EBAA7A60);
  v11 = sub_1B8C23C18();
  v12 = sub_1B8C25468();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v7;
    aBlock[0] = v14;
    v15 = v3;
    v16 = v1;
    v17 = v6;
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C34EC0, aBlock);
    _os_log_impl(&dword_1B8B22000, v11, v12, "%s", v13, 0xCu);
    v19 = __swift_destroy_boxed_opaque_existential_0(v18);
    v20 = v18;
    v6 = v17;
    v1 = v16;
    v3 = v15;
    v7 = v26;
    MEMORY[0x1B8CCB0E0](v20, -1, -1, v19);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v21 = sub_1B8C25538();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  aBlock[4] = sub_1B8BB6424;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_5;
  v23 = _Block_copy(aBlock);
  v24 = v1;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v9, v5, v23);
  _Block_release(v23);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void sub_1B8BB29E0(void *a1)
{
  v1 = [a1 sheetPresentationController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1B8BB75C0;
    *(v4 + 24) = v3;
    aBlock[4] = sub_1B8BB75DC;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BE5460;
    aBlock[3] = &block_descriptor_170;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    [v6 animateChanges_];

    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_1EBAA5918 != -1)
  {
LABEL_11:
    swift_once();
  }

  v7 = sub_1B8C23C38();
  __swift_project_value_buffer(v7, qword_1EBAA7A60);
  oslog = sub_1B8C23C18();
  v8 = sub_1B8C25478();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B8B22000, oslog, v8, "FBKFeedbackDraftViewController has no Sheet Presentation Controller. Cannot go full screen", v9, 2u);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }
}

void sub_1B8BB2C7C(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1B8BB75B8;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1B8B8B9F4;
  v4[3] = &block_descriptor_161;
  v3 = _Block_copy(v4);

  [a1 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

void sub_1B8BB2D54(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 feedbackDraftViewControllerDidCancel_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t FBKFeedbackDraftViewController.feedbackDidComplete(responseType:responseID:completedForm:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a2;
  v7 = sub_1B8C24FD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B8C25008();
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8C23C38();
  __swift_project_value_buffer(v13, qword_1EBAA7A60);
  v14 = sub_1B8C23C18();
  v15 = sub_1B8C25468();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v7;
    v19 = v10;
    v20 = v8;
    v21 = a4;
    v22 = a3;
    v23 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1B8B5DD48(0xD00000000000003BLL, 0x80000001B8C34EE0, aBlock);
    _os_log_impl(&dword_1B8B22000, v14, v15, "%s", v17, 0xCu);
    v24 = __swift_destroy_boxed_opaque_existential_0(v23);
    v25 = v23;
    a3 = v22;
    a4 = v21;
    v8 = v20;
    v10 = v19;
    v7 = v36;
    MEMORY[0x1B8CCB0E0](v25, -1, -1, v24);
    v26 = v17;
    a1 = v16;
    MEMORY[0x1B8CCB0E0](v26, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v27 = sub_1B8C25538();
  v28 = swift_allocObject();
  v29 = v39;
  v28[2] = v39;
  v28[3] = a4;
  v28[4] = v37;
  v28[5] = a3;
  v28[6] = a1;
  aBlock[4] = sub_1B8BB6B4C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_6;
  v30 = _Block_copy(aBlock);
  v31 = v29;
  v32 = a4;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v33 = v38;
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v12, v33, v30);
  _Block_release(v30);

  (*(v8 + 8))(v33, v7);
  return (*(v10 + 8))(v12, v40);
}

void sub_1B8BB324C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v11 = *&a1[v10];
  *&a1[v10] = a2;
  v12 = a2;

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  aBlock[4] = sub_1B8BB75A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_151;
  v15 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
}

void sub_1B8BB33A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector_])
      {
        v9 = sub_1B8C250F8();
        [v8 feedbackDraftViewController:v6 didCompleteWithFeedbackID:v9];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if ([v10 respondsToSelector_])
      {
        v12 = sub_1B8C250F8();
        [v11 feedbackDraftViewController:v6 didCompleteWithResponseType:a4 responseID:v12];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

uint64_t FBKFeedbackDraftViewController.didFailSubmission(error:)(void *a1)
{
  v2 = sub_1B8C24FD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B8C25008();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EBAA7A60);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25468();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v2;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1B8B5DD48(0xD000000000000019, 0x80000001B8C34F20, aBlock);
    _os_log_impl(&dword_1B8B22000, v10, v11, "%s", v12, 0xCu);
    v15 = __swift_destroy_boxed_opaque_existential_0(v14);
    v2 = v24;
    MEMORY[0x1B8CCB0E0](v14, -1, -1, v15);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v16 = sub_1B8C25538();
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v26;
  *(v17 + 24) = a1;
  aBlock[4] = sub_1B8BB6B5C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_12;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  v21 = a1;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v8, v5, v19);
  _Block_release(v19);

  (*(v3 + 8))(v5, v2);
  return (*(v6 + 8))(v8, v25);
}

void sub_1B8BB394C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        [v6 feedbackDraftViewController:v4 didFailToSubmitFeedback:a2];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t FBKFeedbackDraftViewController.feedbackDidFailToAttachURL(_:nsError:)(uint64_t a1, void *a2)
{
  v35 = a2;
  v3 = sub_1B8C24FD8();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C25008();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C23498();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8C23C38();
  __swift_project_value_buffer(v13, qword_1EBAA7A60);
  v14 = sub_1B8C23C18();
  v15 = sub_1B8C25468();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1B8B5DD48(0xD000000000000026, 0x80000001B8C34F40, aBlock);
    _os_log_impl(&dword_1B8B22000, v14, v15, "%s", v17, 0xCu);
    v19 = __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B8CCB0E0](v18, -1, -1, v19);
    v20 = v17;
    a1 = v33;
    MEMORY[0x1B8CCB0E0](v20, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v21 = sub_1B8C25538();
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v34;
  (*(v10 + 32))(v24 + v22, v12, v9);
  v26 = v35;
  *(v24 + v23) = v35;
  aBlock[4] = sub_1B8BB6B9C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_18;
  v27 = _Block_copy(aBlock);
  v28 = v25;
  v29 = v26;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v30 = v39;
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v8, v5, v27);
  _Block_release(v27);

  (*(v38 + 8))(v5, v30);
  return (*(v36 + 8))(v8, v37);
}

void sub_1B8BB3F04(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (([Strong respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return;
    }

    v7 = [a3 domain];
    v8 = sub_1B8C25128();
    v10 = v9;

    if (v8 == 0xD000000000000025 && 0x80000001B8C34450 == v10)
    {
    }

    else
    {
      v12 = sub_1B8C25A08();

      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = sub_1B8BC08A8([a3 code]);
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      goto LABEL_14;
    }

LABEL_12:
    v15 = 6;
LABEL_14:
    v16 = sub_1B8C233E8();
    [v6 feedbackDraftViewController:a1 didFailToAttachURL:v16 error:v15];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall FBKFeedbackDraftViewController.feedbackRestartDidFail(error:)(NSNumber error)
{
  v2 = sub_1B8C24FD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B8C25008();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EBAA7A60);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25468();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v2;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1B8B5DD48(0xD00000000000001ELL, 0x80000001B8C34F70, aBlock);
    _os_log_impl(&dword_1B8B22000, v10, v11, "%s", v12, 0xCu);
    v15 = __swift_destroy_boxed_opaque_existential_0(v14);
    v2 = v23;
    MEMORY[0x1B8CCB0E0](v14, -1, -1, v15);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v16 = sub_1B8C25538();
  v17 = swift_allocObject();
  v18 = v25;
  v17[2].super.super.isa = v25;
  v17[3].super.super.isa = error.super.super.isa;
  aBlock[4] = sub_1B8BB6C2C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_24;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  v21 = error.super.super.isa;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v8, v5, v19);
  _Block_release(v19);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v24);
}

Swift::Void __swiftcall FBKFeedbackDraftViewController.didBeginHosting()()
{
  v1 = v0;
  v49 = type metadata accessor for URLError(0);
  v2 = *(v49 - 8);
  v3 = MEMORY[0x1EEE9AC00](v49);
  v53 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v7 = sub_1B8BB192C();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
    swift_beginAccess();
    v10 = *&v0[v9];
    aBlock[0] = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v11 = v10;

    v13 = sub_1B8B869B0(v12, aBlock);

    *&v11[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments] = v13;

    v14 = *(aBlock[0] + 16);
    if (v14)
    {
      v47 = v9;
      v48 = v8;
      v15 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_delegate;
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v46 = aBlock[0];
      v17 = aBlock[0] + v16;
      swift_beginAccess();
      v52 = *(v2 + 72);
      *&v18 = 136315138;
      v50 = v18;
      v19 = v53;
      v51 = v6;
      while (1)
      {
        sub_1B8B9628C(v17, v6);
        if (qword_1EBAA5918 != -1)
        {
          swift_once();
        }

        v22 = sub_1B8C23C38();
        __swift_project_value_buffer(v22, qword_1EBAA7A60);
        sub_1B8B9628C(v6, v19);
        v23 = sub_1B8C23C18();
        v24 = sub_1B8C25498();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = v15;
          v27 = v1;
          v28 = swift_slowAlloc();
          aBlock[0] = v28;
          *v25 = v50;
          v29 = URLError.description.getter();
          v31 = v30;
          sub_1B8B962F0(v53);
          v32 = sub_1B8B5DD48(v29, v31, aBlock);
          v19 = v53;

          *(v25 + 4) = v32;
          _os_log_impl(&dword_1B8B22000, v23, v24, "Error generating sandbox extensions %s", v25, 0xCu);
          v33 = __swift_destroy_boxed_opaque_existential_0(v28);
          v34 = v28;
          v1 = v27;
          v15 = v26;
          v6 = v51;
          MEMORY[0x1B8CCB0E0](v34, -1, -1, v33);
          MEMORY[0x1B8CCB0E0](v25, -1, -1);
        }

        else
        {

          sub_1B8B962F0(v19);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v36 = Strong;
          if (([Strong respondsToSelector_] & 1) == 0)
          {
            sub_1B8B962F0(v6);
            swift_unknownObjectRelease();
            goto LABEL_6;
          }

          v20 = *&v6[*(v49 + 20)];
          v21 = sub_1B8C233E8();
          [v36 feedbackDraftViewController:v1 didFailToAttachURL:v21 error:v20];

          swift_unknownObjectRelease();
        }

        sub_1B8B962F0(v6);
LABEL_6:
        v17 += v52;
        if (!--v14)
        {

          v8 = v48;
          v9 = v47;
          goto LABEL_24;
        }
      }
    }

LABEL_24:
    v41 = *&v1[v9];
    v42 = swift_allocObject();
    *(v42 + 16) = v8;
    *(v42 + 24) = v1;
    aBlock[4] = sub_1B8BB6C6C;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BB57A8;
    aBlock[3] = &block_descriptor_30;
    v43 = _Block_copy(aBlock);
    v44 = v41;
    swift_unknownObjectRetain();
    v45 = v1;

    [v8 setFeedbackForm:v44 reply:v43];
    _Block_release(v43);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v37 = sub_1B8C23C38();
    __swift_project_value_buffer(v37, qword_1EBAA7A60);
    v53 = sub_1B8C23C18();
    v38 = sub_1B8C25478();
    if (os_log_type_enabled(v53, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B8B22000, v53, v38, "Failed to start feedback form, proxy object is nil.", v39, 2u);
      MEMORY[0x1B8CCB0E0](v39, -1, -1);
    }

    v40 = v53;
  }
}

void sub_1B8BB4BC0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 feedbackDraftViewController:v2 didFailToStartWithError:7];
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall FBKFeedbackDraftViewController.didFailToHost()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong feedbackDraftViewController:v0 didFailToStartWithError:7];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B8BB4D94(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1B8C24FD8();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B8C25008();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v12 = sub_1B8C25538();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = sub_1B8BB74E4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_113;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  swift_unknownObjectRetain();
  v16 = a3;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1B8BB5044(void *a1, unsigned __int8 *a2, void *a3)
{
  v6 = sub_1B8C24FD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C25008();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  swift_beginAccess();
  [a1 setShowsCompletionPage_];
  if (a3)
  {
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v15 = a3;
    v16 = sub_1B8C25538();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = v15;
    v37 = sub_1B8BB74F8;
    v38 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1B8B8B9F4;
    v36 = &block_descriptor_123;
    v18 = _Block_copy(&aBlock);
    v32 = v11;
    v19 = v7;
    v20 = v10;
    v21 = v18;
    v22 = v15;
    v23 = a2;

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v13, v9, v21);
    v24 = v21;
    v10 = v20;
    v7 = v19;
    v11 = v32;
    _Block_release(v24);
  }

  else
  {
    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v25 = sub_1B8C23C38();
    __swift_project_value_buffer(v25, qword_1EBAA7A60);
    v26 = sub_1B8C23C18();
    v27 = sub_1B8C25498();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B8B22000, v26, v27, "Feedback form was set, and draft start successful.", v28, 2u);
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
    }

    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v16 = sub_1B8C25538();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = sub_1B8BB74F0;
    v38 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1B8B8B9F4;
    v36 = &block_descriptor_117;
    v30 = _Block_copy(&aBlock);

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v13, v9, v30);
    _Block_release(v30);
  }

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_1B8BB5528(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v13[4] = a4;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B8B8B9F4;
  v13[3] = a5;
  v11 = _Block_copy(v13);
  v12 = a2;

  [a1 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

void sub_1B8BB5624(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1B8B8B4E4([a2 integerValue]);
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7;
      }

      [v6 feedbackDraftViewController:v4 didFailToStartWithError:v9];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B8BB56EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        [v4 feedbackDraftViewControllerDidLoadForm_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B8BB57A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1B8BB5814(void *a1)
{
  v2 = OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController;
  if (*(v1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController))
  {
    return;
  }

  v3 = [a1 extensions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7BB8, &qword_1B8C2D468);
  v4 = sub_1B8C252C8();

  v22 = v2;
  v23 = v1;
  if (v4 >> 62)
  {
LABEL_23:
    v5 = sub_1B8C258B8();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_24:

    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v16 = sub_1B8C23C38();
    __swift_project_value_buffer(v16, qword_1EBAA7A60);
    v17 = sub_1B8C23C18();
    v18 = sub_1B8C25478();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B8B22000, v17, v18, "Failed to find drafting extension.", v19, 2u);
      MEMORY[0x1B8CCB0E0](v19, -1, -1);
    }

    v20 = *(v23 + v22);
    *(v23 + v22) = 0;

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_4:
  v6 = 0;
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CCA4C0](v6, v4);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_17;
    }

LABEL_8:
    v9 = [v7 bundleIdentifier];
    v10 = sub_1B8C25128();
    v12 = v11;

    if (v10 == sub_1B8C25128() && v12 == v13)
    {
      goto LABEL_18;
    }

    v15 = sub_1B8C25A08();

    if (v15)
    {
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    ++v6;
    if (v8 == v5)
    {
      goto LABEL_24;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v4 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
LABEL_18:

LABEL_19:

  sub_1B8BB5BA4(v7);
  [a1 suspend];

  swift_unknownObjectRelease();
}

uint64_t sub_1B8BB5BA4(uint64_t a1)
{
  v3 = sub_1B8C24FD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B8C25008();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v10 = sub_1B8C25538();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1B8BB6F20;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_79;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  swift_unknownObjectRetain();

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v16);
}

void sub_1B8BB5E44(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [objc_allocWithZone(MEMORY[0x1E6966D58]) init];
  [v6 setExtension_];
  v35 = [objc_allocWithZone(MEMORY[0x1E6966D50]) initWithConfiguration_];
  [v35 setDelegate_];
  v7 = [v35 view];
  if (!v7)
  {

    v34 = v35;
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = v5;
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v10 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85B0, &unk_1B8C2BBE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B8C2D390;
  v13 = [v9 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v8 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v12 + 32) = v17;
  v18 = [v9 view];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v8 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v12 + 40) = v22;
  v23 = [v9 view];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v8 topAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v12 + 48) = v27;
  v28 = [v9 view];

  if (!v28)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = objc_opt_self();
  v30 = [v28 bottomAnchor];

  v31 = [v8 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v12 + 56) = v32;
  sub_1B8B46130(0, &qword_1EBAA7BB0, 0x1E696ACD8);
  v33 = sub_1B8C252B8();

  [v29 activateConstraints_];

  [v9 addChildViewController_];
  v34 = *(a1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController);
  *(a1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController) = v35;
LABEL_11:
}

id sub_1B8BB62B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B8BB6354(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController] = 0;
  swift_unknownObjectWeakAssign();
  v2 = type metadata accessor for FBK_EXHostViewControllerDelegateWrapper();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v2;
  *&v1[OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_extensionKitHostViewControllerDelegate] = objc_msgSendSuper2(&v6, sel_init);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FBK_EXQueryObserverDelegateWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8BB6444()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection) = 0;
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage) = 1;
  sub_1B8C258A8();
  __break(1u);
}

uint64_t _s8Feedback30FBKFeedbackDraftViewControllerC010didRequestD9Dismissal5savedySb_tF_0()
{
  v1 = v0;
  v2 = sub_1B8C24FD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C25008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v10 = sub_1B8C23C38();
  __swift_project_value_buffer(v10, qword_1EBAA7A60);
  v11 = sub_1B8C23C18();
  v12 = sub_1B8C25468();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v7;
    aBlock[0] = v14;
    v15 = v3;
    v16 = v1;
    v17 = v6;
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B8B5DD48(0xD00000000000001FLL, 0x80000001B8C352D0, aBlock);
    _os_log_impl(&dword_1B8B22000, v11, v12, "%s", v13, 0xCu);
    v19 = __swift_destroy_boxed_opaque_existential_0(v18);
    v20 = v18;
    v6 = v17;
    v1 = v16;
    v3 = v15;
    v7 = v27;
    MEMORY[0x1B8CCB0E0](v20, -1, -1, v19);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v21 = sub_1B8C25538();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  aBlock[4] = sub_1B8BB75B0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_157;
  v23 = _Block_copy(aBlock);
  v24 = v1;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v9, v5, v23);
  _Block_release(v23);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void _s8Feedback30FBKFeedbackDraftViewControllerC22draftDirtyStateUpdatedyySbF_0()
{
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7A60);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25468();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C352B0, &v6);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%s", v2, 0xCu);
    v4 = __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1, v4);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void _s8Feedback30FBKFeedbackDraftViewControllerC26feedbackDidBeginSubmissionyyF_0()
{
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7A60);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25468();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1B8B5DD48(0xD00000000000001CLL, 0x80000001B8C35290, &v6);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%s", v2, 0xCu);
    v4 = __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1, v4);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void sub_1B8BB6B9C()
{
  v1 = *(sub_1B8C23498() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B8BB3F04(v3, v0 + v2, v4);
}

void sub_1B8BB6F28()
{
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7A60);
  v1 = sub_1B8C23C18();
  v2 = sub_1B8C25498();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B8B22000, v1, v2, "hostViewController didBegingHosting", v3, 2u);
    MEMORY[0x1B8CCB0E0](v3, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    FBKFeedbackDraftViewController.didBeginHosting()();
  }
}

void sub_1B8BB7054(void *a1)
{
  v2 = v1;
  v4 = sub_1B8C24FD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B8C25008();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EBAA7A60);
  v12 = a1;
  v13 = sub_1B8C23C18();
  v14 = sub_1B8C25478();

  if (os_log_type_enabled(v13, v14))
  {
    v26 = v1;
    v27 = v5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v17 = sub_1B8C25A68();
      v19 = v18;
    }

    else
    {
      v19 = 0xE600000000000000;
      v17 = 0x296C6C756E28;
    }

    v20 = sub_1B8B5DD48(v17, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1B8B22000, v13, v14, "Failed to host view controller: %s", v15, 0xCu);
    v21 = __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B8CCB0E0](v16, -1, -1, v21);
    MEMORY[0x1B8CCB0E0](v15, -1, -1);

    v2 = v26;
    v5 = v27;
    if (a1)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (a1)
    {
LABEL_10:
      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v22 = sub_1B8C25538();
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      aBlock[4] = sub_1B8BB744C;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8B8B9F4;
      aBlock[3] = &block_descriptor_85;
      v24 = _Block_copy(aBlock);
      v25 = v2;

      sub_1B8C24FF8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B8B6220C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
      sub_1B8B62264();
      sub_1B8C256D8();
      MEMORY[0x1B8CCA210](0, v10, v7, v24);
      _Block_release(v24);

      (*(v5 + 8))(v7, v4);
      (*(v28 + 8))(v10, v29);
    }
  }
}

uint64_t objectdestroy_26Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1B8BB769C(uint64_t a1)
{
  v1 = a1 + 1;
  result = 0x6C65694674786554;
  switch(v1)
  {
    case 0:
      result = 0x6E776F6E6B6E55;
      break;
    case 1:
      return result;
    case 2:
      result = 0x6165724174786554;
      break;
    case 3:
      result = 0x7055706F50;
      break;
    case 4:
      result = 0x6F69646152;
      break;
    case 5:
      result = 0x786F426B63656843;
      break;
    case 6:
      result = 0x656E6F5A656C6946;
      break;
    case 7:
      result = 0x74616D726F666E49;
      break;
    case 8:
      result = 0x726564696C53;
      break;
    case 9:
      result = 1702125892;
      break;
    case 10:
      result = 0x656D695465746144;
      break;
    case 11:
      result = 1701669204;
      break;
    case 12:
      result = 0x6C61646F4DLL;
      break;
    case 13:
      result = 0x656C67676F54;
      break;
    default:
      result = 0x206E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t sub_1B8BB7820(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x206E776F6E6B6E55;
      }

      if (a1 == 1)
      {
        return 0xD000000000000013;
      }

LABEL_20:
      result = sub_1B8C25A28();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000022;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0x6E61432072657355;
        case 7:
          return 0xD000000000000018;
        case 8:
          return 0xD000000000000020;
      }

      goto LABEL_20;
    }

    if (a1 == 4)
    {
      return 0x2064696C61766E49;
    }

    else
    {
      return 0x6F7774656E206F4ELL;
    }
  }
}

void sub_1B8BB79D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

double sub_1B8BB7A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

uint64_t sub_1B8BB7AAC()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7BE0);
  __swift_project_value_buffer(v0, qword_1EBAA7BE0);
  return sub_1B8C23C28();
}

uint64_t sub_1B8BB7B2C(void *a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  sub_1B8C23608();
  swift_allocObject();
  *(v1 + 32) = sub_1B8C235F8();
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  swift_unknownObjectWeakInit();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 16) = a1;
  v4 = a1;
  if (MEMORY[0x1B8CCA870]())
  {
    v5 = &v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
    swift_beginAccess();
    if ((v5[2] & 1) == 0)
    {
      v6 = *v5;
      v7 = &v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
      swift_beginAccess();
      if (*(v7 + 1))
      {
        sub_1B8B46130(0, &qword_1EBAA8840, 0x1E699C158);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v9 = sub_1B8C250F8();

        [ObjCClassFromMetadata overrideEnvironment:v6 host:v9];
      }
    }
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 loginManager];

  if (v11)
  {

    [v11 setReAuthHandler_];
  }

  return v2;
}

double sub_1B8BB7CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA7BE0);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B8B5DD48(0xD000000000000029, 0x80000001B8C35430, &v22);
    _os_log_impl(&dword_1B8B22000, v9, v10, "%{public}s", v11, 0xCu);
    v13 = __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1, v13);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 88);
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;

  sub_1B8B30A44(v14, v15);
  swift_unknownObjectWeakAssign();
  v16 = objc_opt_self();
  v17 = [v16 standardUserDefaults];
  v18 = sub_1B8BD93C0();

  v19 = [v16 standardUserDefaults];
  LOBYTE(v17) = sub_1B8BD94E4();

  v20 = swift_allocObject();
  swift_weakInit();
  sub_1B8BBD468(a1, v18 & 1, v17 & 1, v4, v20);

  return result;
}

double sub_1B8BB7F14(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1B8BB7F88(a1, a2 & 1);
  }

  return result;
}

void sub_1B8BB7F88(uint64_t a1, char a2)
{
  v3 = v2;
  v79 = sub_1B8C24FD8();
  v6 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C25008();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AgreementConsentView(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  if ((a2 & 1) == 0)
  {
    v58 = v3[10];
    if (!v58)
    {
      return;
    }

    v59 = v3[11];

    v58(a1, 1);
    v60 = v58;
    v61 = v59;
    goto LABEL_22;
  }

  v75 = v17;
  v76 = (&v69 - v16);
  v77 = v10;
  v18 = objc_opt_self();
  v19 = [v18 sharedInstance];
  v20 = [v19 currentUser];

  if (!v20)
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v62 = sub_1B8C23C38();
    __swift_project_value_buffer(v62, qword_1EBAA7BE0);
    v63 = sub_1B8C23C18();
    v64 = sub_1B8C25478();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1B8B22000, v63, v64, "Failed to authenticate. No user", v65, 2u);
      MEMORY[0x1B8CCB0E0](v65, -1, -1);
    }

    v66 = v3[10];
    if (!v66)
    {
      return;
    }

    v67 = v3[11];

    v66(0, 1);
    v60 = v66;
    v61 = v67;
LABEL_22:

    sub_1B8B30A44(v60, v61);
    return;
  }

  v71 = v9;
  v72 = v6;
  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v21 = sub_1B8C23C38();
  __swift_project_value_buffer(v21, qword_1EBAA7BE0);
  v22 = v20;
  v23 = sub_1B8C23C18();
  v24 = sub_1B8C25498();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v73 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v25;
    v27 = swift_slowAlloc();
    v74 = v8;
    v28 = v27;
    *v26 = 138412290;
    v29 = [v22 ID];
    *(v26 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_1B8B22000, v23, v24, "Logged in as user %@", v26, 0xCu);
    sub_1B8BA7B2C(v28);
    v30 = v28;
    v8 = v74;
    MEMORY[0x1B8CCB0E0](v30, -1, -1);
    v31 = v26;
    v15 = v73;
    MEMORY[0x1B8CCB0E0](v31, -1, -1);
  }

  v32 = v3[5];
  v3[5] = v20;
  v33 = v22;

  swift_retain_n();
  v34 = [v18 sharedInstance];
  v35 = [v34 pendingConsents];

  if (!v35)
  {
    goto LABEL_27;
  }

  sub_1B8B46130(0, &qword_1EBAA5D60, 0x1E699C708);
  v36 = sub_1B8C252C8();

  if (v36 >> 62)
  {
    if (sub_1B8C258B8())
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

LABEL_27:

    sub_1B8BBD068(v68, v3);

    return;
  }

LABEL_10:
  v73 = v15;
  v74 = v8;
  v70 = v33;
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1B8CCA4C0](0, v36);
    goto LABEL_13;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v36 + 32);
LABEL_13:
    v38 = v37;

    v39 = swift_allocObject();
    *(v39 + 2) = v38;
    *(v39 + 3) = v3;
    *(v39 + 4) = sub_1B8BBD95C;
    *(v39 + 5) = v3;
    KeyPath = swift_getKeyPath();
    v41 = v76;
    *v76 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
    swift_storeEnumTagMultiPayload();
    v42 = v12[5];
    *(v41 + v42) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
    swift_storeEnumTagMultiPayload();
    v43 = v41 + v12[7];
    v86 = 0;
    v44 = v38;
    swift_retain_n();
    v45 = v44;
    sub_1B8C24D58();
    v46 = v81;
    *v43 = aBlock;
    *(v43 + 8) = v46;
    v47 = (v41 + v12[8]);
    v48 = (v41 + v12[6]);
    sub_1B8BBD974();
    *v48 = sub_1B8C23F88();
    v48[1] = v49;
    *v47 = sub_1B8BBD968;
    v47[1] = v39;
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v50 = sub_1B8C25538();
    v51 = v73;
    sub_1B8B3860C(v41, v73);
    v52 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v53 = swift_allocObject();
    sub_1B8B38670(v51, v53 + v52);
    *(v53 + ((v13 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    v84 = sub_1B8BBD9DC;
    v85 = v53;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1B8B8B9F4;
    v83 = &block_descriptor_78;
    v54 = _Block_copy(&aBlock);

    v55 = v78;
    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    v56 = v74;
    v57 = v79;
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v55, v56, v54);
    _Block_release(v54);

    (*(v72 + 8))(v56, v57);
    (*(v77 + 8))(v55, v71);
    sub_1B8BBDA68(v41);
    return;
  }

  __break(1u);
}

void sub_1B8BB8834(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAA7BE0);
    v6 = sub_1B8C23C18();
    v7 = sub_1B8C25478();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315138;
      v10 = sub_1B8BB7820(a1);
      v12 = sub_1B8B5DD48(v10, v11, &v24);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B8B22000, v6, v7, "Failed to authenticate with error %s", v8, 0xCu);
      v13 = __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CCB0E0](v9, -1, -1, v13);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    v14 = *(a3 + 80);
    if (v14)
    {
      v15 = 1;
LABEL_14:
      v23 = *(a3 + 88);

      v14(a1, v15);

      sub_1B8B30A44(v14, v23);
    }
  }

  else
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v16 = sub_1B8C23C38();
    __swift_project_value_buffer(v16, qword_1EBAA7BE0);
    v17 = a1;
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25498();
    sub_1B8B96138(a1, 0);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = a1;
      v22 = v17;
      _os_log_impl(&dword_1B8B22000, v18, v19, "Loaded stub %@", v20, 0xCu);
      sub_1B8BA7B2C(v21);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    v14 = *(a3 + 80);
    if (v14)
    {
      v15 = 0;
      goto LABEL_14;
    }
  }
}

void sub_1B8BB8AF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = [objc_opt_self() sharedInstance];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  v13[4] = sub_1B8BBDAC4;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B8B8B9F4;
  v13[3] = &block_descriptor_84;
  v12 = _Block_copy(v13);

  [v10 recordConsentResponseForConsent:a2 response:v9 ^ 1u completion:v12];
  _Block_release(v12);
}

void sub_1B8BB8C34(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (result)
  {
    v4 = *(a2 + 80);
    if (v4)
    {
      v5 = *(a2 + 88);

      v4(8, 1);

      sub_1B8B30A44(v4, v5);
    }
  }

  else
  {
    sub_1B8BB9498(a3, a4);
  }
}

void sub_1B8BB8CB0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AgreementConsentView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1B8B3860C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C60, &qword_1B8C2D558));
  v6 = sub_1B8C244B8();
  [v6 setModalPresentationStyle_];
  [v6 setModalInPresentation_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }
}

double sub_1B8BB8DAC(uint64_t a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1B8BB8E40(a2, a3 & 1, a4 & 1, a5, a6);
  }

  return result;
}

void sub_1B8BB8E40(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 loginManager];
  if (v13)
  {
    v14 = v13;
    v35 = v12;
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v15 = a3;
    v16 = sub_1B8C23C38();
    __swift_project_value_buffer(v16, qword_1EBAA7BE0);
    v17 = a1;
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25468();

    v34 = a2;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_1B8B22000, v18, v19, "Parent %@", v20, 0xCu);
      sub_1B8BA7B2C(v21);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    v23 = type metadata accessor for Authentication();
    v24 = *(v6 + 16);
    v25 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
    swift_beginAccess();
    v26 = *(v24 + v25);
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    *(v27 + 24) = a5;
    if (!v26)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1B8BBD930;
      *(v29 + 24) = v27;

      sub_1B8BA7B94(v14, sub_1B8BBD954, v29);
      goto LABEL_10;
    }

    if (sub_1B8BA7E74(v15 & 1))
    {
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1B8BBD930;
      *(v28 + 24) = v27;

      sub_1B8BA2510(v14, sub_1B8BBD94C, v28);
LABEL_10:

      return;
    }

    v30 = swift_allocObject();
    *(v30 + 16) = sub_1B8BBD930;
    *(v30 + 24) = v27;
    *(v30 + 32) = v26;
    *(v30 + 40) = v23;
    *(v30 + 48) = v14;
    *(v30 + 56) = v17;
    aBlock[4] = sub_1B8BBD938;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BB7A4C;
    aBlock[3] = &block_descriptor_60;
    v31 = _Block_copy(aBlock);
    v32 = v17;

    v33 = v14;

    [v33 interactiveStartupUsingSystemAccount:v34 & 1 completion:v31];

    _Block_release(v31);
  }

  else
  {
    sub_1B8C258A8();
    __break(1u);
  }
}

uint64_t sub_1B8BB9264(int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = sub_1B8B851D4(a2);
  if (v5)
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EBAA7BE0);
    v7 = sub_1B8C23C18();
    v8 = sub_1B8C25498();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B8B22000, v7, v8, "Login complete", v9, 2u);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
    }

    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = v4;
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EBAA7BE0);
    v14 = sub_1B8C23C18();
    v15 = sub_1B8C25478();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      v18 = sub_1B8BB7820(v12);
      v20 = sub_1B8B5DD48(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B8B22000, v14, v15, "Error authenticating: %{public}s", v16, 0xCu);
      v21 = __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CCB0E0](v17, -1, -1, v21);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
    }

    v10 = v12;
    v11 = 0;
  }

  return a3(v10, v11);
}

void sub_1B8BB9498(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = (v5 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v7 = v6[1];
  v8 = *v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8 || (v9 = v5 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId, swift_beginAccess(), *(v9 + 8) != 1))
  {
    v14 = v5 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
    swift_beginAccess();
    v15 = 0;
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = sub_1B8C25658();
    }

    v16 = [objc_opt_self() sharedInstance];

    v17 = sub_1B8C250F8();

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    aBlock[4] = sub_1B8BBD45C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B963EC;
    aBlock[3] = &block_descriptor_51_0;
    v20 = _Block_copy(aBlock);

    [v16 feedbackFrameworkLoadDataWithFormTat:v17 orFormID:v15 completion:v20];
    _Block_release(v20);
  }

  else
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v10 = sub_1B8C23C38();
    __swift_project_value_buffer(v10, qword_1EBAA7BE0);
    v11 = sub_1B8C23C18();
    v12 = sub_1B8C25498();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B8B22000, v11, v12, "FeedbackForm is misconfigured. Cannot load Form", v13, 2u);
      MEMORY[0x1B8CCB0E0](v13, -1, -1);
    }

    a1(4, 1);
  }
}

double sub_1B8BB977C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_opt_self() sharedInstance];
    v8 = *(v6 + 16);
    sub_1B8BFDB0C();
    v10 = v9;

    v11 = *(v6 + 24);
    *(v6 + 24) = v10;
    v12 = v10;

    if (v10)
    {
      v13 = v12;
      a3(v10, 0);
    }

    else
    {
      a3(1, 1);
    }
  }

  return result;
}

uint64_t sub_1B8BB98A8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 loginManager];
  v0[3] = v2;

  if (!v2)
  {
    return sub_1B8C258A8();
  }

  v3 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  type metadata accessor for Authentication();
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1B8BD94E4();

  v7 = swift_allocObject();
  v0[5] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;

  v8 = v2;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1B8BB9AA8;

  return sub_1B8BA2B50(Strong, v8, 0, v6 & 1, sub_1B8BBDB34, v7);
}

uint64_t sub_1B8BB9AA8(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 32);
  *(*v2 + 56) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B8BB9BDC, 0, 0);
}

uint64_t sub_1B8BB9BDC()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_1B8B851D4(v1);
  v6 = v5;

  sub_1B8BB7F88(v4, v6 & 1);
  v7 = v0[1];

  return v7();
}

void sub_1B8BB9C84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v106 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = &v102 - v8;
  v9 = a3[7];
  v114 = a3;
  if (v9)
  {
    v10 = a3[6];
    if (v10)
    {
      strcpy(v127, "StashedFiles-");
      HIWORD(v127[1]) = -4864;
      v11 = v10;
      v12 = v9;
      v13 = [v11 ID];
      if (!v13)
      {
        goto LABEL_117;
      }

      v14 = v13;
      v15 = [v13 stringValue];

      v16 = sub_1B8C25128();
      v18 = v17;

      MEMORY[0x1B8CC9EB0](v16, v18);

      v19 = sub_1B8BBA6CC(v127[0], v127[1]);

      a3 = v114;
      if (v19)
      {
        v20 = v114[2];
        v21 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
        swift_beginAccess();
        *(v20 + v21) = v19;
        a3 = v114;
      }
    }
  }

  v22 = a3[8];
  if (!v22)
  {
    goto LABEL_110;
  }

  v103 = a4;
  v104 = a2;
  v23 = a3[2];
  v102 = v22;
  v24 = sub_1B8B9CA60(v23);
  v25 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  *(v23 + v25) = MEMORY[0x1E69E7CC8];

  v26 = v24;
  v27 = 0;
  v28 = v24[8];
  v105 = v24 + 8;
  v29 = 1 << *(v24 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v110 = 0x80000001B8C33DC0;
  v121 = xmmword_1B8C2A740;
  v109 = v24;
  v108 = v32;
  v118 = v23;
  do
  {
LABEL_11:
    if (v31)
    {
      goto LABEL_16;
    }

    do
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_113;
      }

      if (v33 >= v32)
      {

        a2 = v104;
        a4 = v103;
LABEL_110:
        v98 = sub_1B8C253A8();
        v99 = v107;
        (*(*(v98 - 8) + 56))(v107, 1, 1, v98);
        v100 = swift_allocObject();
        v100[2] = 0;
        v100[3] = 0;
        v100[4] = a3;
        v100[5] = a4;
        v100[6] = v106;
        v100[7] = a2;

        v101 = a4;

        sub_1B8BE33EC(0, 0, v99, &unk_1B8C2D570, v100);

        return;
      }

      v31 = v105[v33];
      ++v27;
    }

    while (!v31);
    v27 = v33;
LABEL_16:
    v34 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v35 = v34 | (v27 << 6);
    v36 = *(v26[7] + 8 * v35);
    v125 = *(v36 + 16);
  }

  while (!v125);
  v111 = v31;
  v112 = v27;
  v37 = (v26[6] + 16 * v35);
  v39 = *v37;
  v38 = v37[1];
  v41 = *v37 == 0x656C7469743ALL && v38 == 0xE600000000000000;
  v124 = v41;
  v43 = v39 == 0x616572613ALL && v38 == 0xE500000000000000;
  v119 = v43;
  v45 = v39 == 0x706972637365643ALL && v38 == 0xEC0000006E6F6974;
  v47 = v39 == 0x657275746165663ALL && v38 == 0xEF6E69616D6F645FLL;
  v116 = v47;
  v117 = v45;
  v49 = v39 == 0x6165665F6275733ALL && v38 == 0xEC00000065727574;
  v115 = v49;
  v51 = v39 == 0xD000000000000012 && v110 == v38;
  v113 = v51;
  v120 = v38;

  v52 = 0;
  v53 = (v36 + 40);
  v122 = v39;
  v123 = v36;
  while (v52 < *(v36 + 16))
  {
    v54 = *(v53 - 1);
    v55 = *v53;
    if (v124)
    {
      v39 = 0;
      v56 = 0;
    }

    else
    {
      v57 = v120;
      v58 = sub_1B8C25A08();
      if ((v58 | v119))
      {
        v39 = 0;
        v56 = ~v58 & 1;
      }

      else
      {
        v59 = sub_1B8C25A08();
        if (v59)
        {
          v56 = 1;
        }

        else
        {
          v56 = 2;
        }

        if ((v59 | v117) & 1) != 0 || ((v60 = sub_1B8C25A08(), (v60) ? (v56 = 2) : (v56 = 3), ((v60 | v116) & 1) != 0 || ((v61 = sub_1B8C25A08(), (v61) ? (v56 = 3) : (v56 = 4), ((v61 | v115) & 1) != 0 || ((v62 = sub_1B8C25A08(), (v62) ? (v56 = 4) : (v56 = 5), ((v62 | v113)))))
        {
          v39 = 0;
        }

        else if (sub_1B8C25A08())
        {
          v39 = 0;
          v56 = 5;
        }

        else
        {

          v56 = v57;
        }
      }
    }

    v63 = *(v23 + v25);
    v64 = *(v63 + 16);

    if (!v64)
    {
      goto LABEL_89;
    }

    v65 = sub_1B8B5E354(v39, v56);
    if ((v66 & 1) == 0)
    {

LABEL_89:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
      v67 = swift_allocObject();
      *(v67 + 16) = v121;
      *(v67 + 32) = v54;
      *(v67 + 40) = v55;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = *(v23 + v25);
      v83 = v126;
      *(v23 + v25) = 0x8000000000000000;
      v74 = sub_1B8B5E354(v39, v56);
      v85 = v83[2];
      v86 = (v84 & 1) == 0;
      v78 = __OFADD__(v85, v86);
      v87 = v85 + v86;
      if (v78)
      {
        goto LABEL_112;
      }

      v88 = v84;
      if (v83[3] < v87)
      {
        sub_1B8B93050(v87, isUniquelyReferenced_nonNull_native);
        v74 = sub_1B8B5E354(v39, v56);
        if ((v88 & 1) != (v89 & 1))
        {
          goto LABEL_118;
        }

LABEL_94:
        v90 = v126;
        if ((v88 & 1) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_54;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_94;
      }

      v96 = v74;
      sub_1B8B94514();
      v74 = v96;
      v90 = v126;
      if ((v88 & 1) == 0)
      {
LABEL_95:
        v90[(v74 >> 6) + 8] |= 1 << v74;
        v91 = (v90[6] + 16 * v74);
        *v91 = v39;
        v91[1] = v56;
        *(v90[7] + 8 * v74) = v67;
        v92 = v90[2];
        v78 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v78)
        {
          goto LABEL_114;
        }

LABEL_101:
        v90[2] = v93;
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v67 = *(*(v63 + 56) + 8 * v65);

    v68 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_1B8B5D1AC(0, *(v67 + 16) + 1, 1, v67);
    }

    v70 = *(v67 + 16);
    v69 = *(v67 + 24);
    if (v70 >= v69 >> 1)
    {
      v67 = sub_1B8B5D1AC((v69 > 1), v70 + 1, 1, v67);
    }

    *(v67 + 16) = v70 + 1;
    v71 = v67 + 16 * v70;
    *(v71 + 32) = v68;
    *(v71 + 40) = v55;
    v23 = v118;
    swift_beginAccess();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v126 = *(v23 + v25);
    v73 = v126;
    *(v23 + v25) = 0x8000000000000000;
    v74 = sub_1B8B5E354(v39, v56);
    v76 = v73[2];
    v77 = (v75 & 1) == 0;
    v78 = __OFADD__(v76, v77);
    v79 = v76 + v77;
    if (v78)
    {
      goto LABEL_115;
    }

    v80 = v75;
    if (v73[3] < v79)
    {
      sub_1B8B93050(v79, v72);
      v74 = sub_1B8B5E354(v39, v56);
      if ((v80 & 1) != (v81 & 1))
      {
        goto LABEL_118;
      }

LABEL_99:
      v90 = v126;
      if ((v80 & 1) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_54;
    }

    if (v72)
    {
      goto LABEL_99;
    }

    v97 = v74;
    sub_1B8B94514();
    v74 = v97;
    v90 = v126;
    if ((v80 & 1) == 0)
    {
LABEL_100:
      v90[(v74 >> 6) + 8] |= 1 << v74;
      v94 = (v90[6] + 16 * v74);
      *v94 = v39;
      v94[1] = v56;
      *(v90[7] + 8 * v74) = v67;
      v95 = v90[2];
      v78 = __OFADD__(v95, 1);
      v93 = v95 + 1;
      if (v78)
      {
        goto LABEL_116;
      }

      goto LABEL_101;
    }

LABEL_54:
    *(v90[7] + 8 * v74) = v67;

    sub_1B8B5E4C4(v39, v56);
LABEL_55:
    *(v23 + v25) = v90;
    swift_endAccess();
    v39 = v122;
    v36 = v123;
    ++v52;
    v53 += 2;
    if (v125 == v52)
    {

      a3 = v114;
      v26 = v109;
      v27 = v112;
      v32 = v108;
      v31 = v111;
      goto LABEL_11;
    }
  }

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
  sub_1B8C25A58();
  __break(1u);
}

void *sub_1B8BBA6CC(uint64_t a1, uint64_t a2)
{
  v115[1] = *MEMORY[0x1E69E9840];
  v114 = sub_1B8C23498();
  v102 = *(v114 - 8);
  v2 = MEMORY[0x1EEE9AC00](v114);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v94 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v106 = &v94 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v109 = &v94 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v94 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v94 - v18;
  v112 = sub_1B8C25588();
  if (!v112)
  {
    return 0;
  }

  type metadata accessor for FBKFeedbackForm();
  sub_1B8C2061C(v17);
  sub_1B8C233F8();
  v19 = v102 + 8;
  v107 = *(v102 + 8);
  v107(v17, v114);
  v105 = objc_opt_self();
  v20 = [v105 defaultManager];
  sub_1B8C23468();
  v21 = sub_1B8C250F8();

  v22 = [v20 fileExistsAtPath_];

  if (v22)
  {
LABEL_5:
    if (v112 >> 62)
    {
      v27 = sub_1B8C258B8();
      if (v27)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v27 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_7:
        if (v27 >= 1)
        {
          v113 = v14;
          v100 = v4;
          v28 = 0;
          v110 = v112 & 0xC000000000000001;
          v103 = (v102 + 16);
          v99 = v102 + 32;
          v111 = MEMORY[0x1E69E7CC0];
          *&v23 = 138412290;
          v97 = v23;
          *&v23 = 136446722;
          v96 = v23;
          v29 = v109;
          v101 = v19;
          v104 = v27;
          v95 = v7;
          v30 = v100;
          do
          {
            if (v110)
            {
              v33 = MEMORY[0x1B8CCA4C0](v28, v112);
            }

            else
            {
              v33 = *(v112 + 8 * v28 + 32);
            }

            v34 = v33;
            v35 = [v33 fileURL];
            if (v35)
            {
              v36 = v35;
              sub_1B8C23448();

              sub_1B8C233D8();
              sub_1B8C233F8();

              v37 = [v105 defaultManager];
              v38 = sub_1B8C233E8();
              v39 = sub_1B8C233E8();
              v115[0] = 0;
              v40 = v29;
              v41 = [v37 copyItemAtURL:v38 toURL:v39 error:v115];

              v42 = v115[0];
              if (v41)
              {
                (*v103)(v106, v40, v114);
                v43 = v42;
                v29 = v40;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v111 = sub_1B8B5D3EC(0, v111[2] + 1, 1, v111);
                }

                v45 = v111[2];
                v44 = v111[3];
                if (v45 >= v44 >> 1)
                {
                  v111 = sub_1B8B5D3EC((v44 > 1), v45 + 1, 1, v111);
                }

                v46 = v114;
                v47 = v107;
                v107(v29, v114);
                v47(v113, v46);
                v48 = v111;
                v111[2] = v45 + 1;
                (*(v102 + 32))(v48 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v45, v106, v46);
              }

              else
              {
                v57 = v115[0];
                v58 = sub_1B8C23368();

                swift_willThrow();
                if (qword_1EBAA5920 != -1)
                {
                  swift_once();
                }

                v59 = sub_1B8C23C38();
                __swift_project_value_buffer(v59, qword_1EBAA7BE0);
                v60 = *v103;
                v61 = v114;
                (*v103)(v7, v113, v114);
                v60(v30, v109, v61);
                v62 = v58;
                v63 = sub_1B8C23C18();
                v64 = sub_1B8C25478();

                if (os_log_type_enabled(v63, v64))
                {
                  v65 = swift_slowAlloc();
                  v98 = swift_slowAlloc();
                  v115[0] = v98;
                  *v65 = v96;
                  v66 = sub_1B8C23468();
                  v68 = v67;
                  v69 = v7;
                  v70 = v107;
                  v107(v69, v114);
                  v71 = sub_1B8B5DD48(v66, v68, v115);

                  *(v65 + 4) = v71;
                  *(v65 + 12) = 2082;
                  v72 = sub_1B8C23468();
                  v74 = v73;
                  v70(v30, v114);
                  v75 = sub_1B8B5DD48(v72, v74, v115);

                  *(v65 + 14) = v75;
                  *(v65 + 22) = 2082;
                  swift_getErrorValue();
                  v76 = sub_1B8C25A68();
                  v78 = sub_1B8B5DD48(v76, v77, v115);

                  *(v65 + 24) = v78;
                  _os_log_impl(&dword_1B8B22000, v63, v64, "Failed to stash file from %{public}s to %{public}s: %{public}s", v65, 0x20u);
                  v79 = v98;
                  swift_arrayDestroy();
                  v80 = v79;
                  v81 = v114;
                  MEMORY[0x1B8CCB0E0](v80, -1, -1);
                  MEMORY[0x1B8CCB0E0](v65, -1, -1);

                  v29 = v109;
                  v70(v109, v81);
                  v70(v113, v81);
                  v7 = v95;
                }

                else
                {

                  v31 = v114;
                  v32 = v107;
                  v107(v30, v114);
                  v32(v7, v31);
                  v29 = v109;
                  v32(v109, v31);
                  v32(v113, v31);
                }
              }

              v27 = v104;
            }

            else
            {
              if (qword_1EBAA5920 != -1)
              {
                swift_once();
              }

              v49 = sub_1B8C23C38();
              __swift_project_value_buffer(v49, qword_1EBAA7BE0);
              v50 = v34;
              v51 = sub_1B8C23C18();
              v52 = sub_1B8C25478();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                *v53 = v97;
                *(v53 + 4) = v50;
                *v54 = v50;
                v55 = v50;
                _os_log_impl(&dword_1B8B22000, v51, v52, "Cannot stash attachment %@", v53, 0xCu);
                sub_1B8BA7B2C(v54);
                v56 = v54;
                v29 = v109;
                MEMORY[0x1B8CCB0E0](v56, -1, -1);
                MEMORY[0x1B8CCB0E0](v53, -1, -1);
              }

              else
              {
              }
            }

            ++v28;
          }

          while (v27 != v28);
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_42;
      }
    }

    v111 = MEMORY[0x1E69E7CC0];
LABEL_39:

    v107(v108, v114);
    return v111;
  }

  v24 = [v105 defaultManager];
  v25 = sub_1B8C233E8();
  v115[0] = 0;
  v21 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v115];

  if (v21)
  {
    v26 = v115[0];
    goto LABEL_5;
  }

  v82 = v115[0];

  v21 = sub_1B8C23368();

  swift_willThrow();
  if (qword_1EBAA5920 != -1)
  {
LABEL_42:
    swift_once();
  }

  v83 = sub_1B8C23C38();
  __swift_project_value_buffer(v83, qword_1EBAA7BE0);
  v84 = v21;
  v85 = sub_1B8C23C18();
  v86 = sub_1B8C25478();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v115[0] = v88;
    *v87 = 136446210;
    swift_getErrorValue();
    v89 = sub_1B8C25A68();
    v91 = sub_1B8B5DD48(v89, v90, v115);

    *(v87 + 4) = v91;
    _os_log_impl(&dword_1B8B22000, v85, v86, "Stashing files failed: %{public}s", v87, 0xCu);
    v92 = __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x1B8CCB0E0](v88, -1, -1, v92);
    MEMORY[0x1B8CCB0E0](v87, -1, -1);
  }

  else
  {
  }

  v107(v108, v114);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B8BBB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8BBB2B4, 0, 0);
}

uint64_t sub_1B8BBB2B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1B8C25368();
    v0[7] = sub_1B8C25358();
    v3 = sub_1B8C25328();

    return MEMORY[0x1EEE6DFA0](sub_1B8BBB3C4, v3, v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1B8BBB464;

    return sub_1B8BBB910();
  }
}

uint64_t sub_1B8BBB3C4()
{
  v1 = *(v0 + 48);

  DraftingExtensionViewController.prepareUIForLogOut()();

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1B8BBB464;

  return sub_1B8BBB910();
}

uint64_t sub_1B8BBB464()
{
  v1 = *v0;

  v1[9] = sub_1B8C25368();
  v1[10] = sub_1B8C25358();
  v3 = sub_1B8C25328();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B8BBB5A0, v3, v2);
}

uint64_t sub_1B8BBB5A0(uint64_t a1)
{
  v2 = v1[3];
  v1[13] = sub_1B8C25358();
  v3 = swift_task_alloc();
  v1[14] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v1[15] = v4;
  *v4 = v1;
  v4[1] = sub_1B8BBB6A8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8BBB6A8()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1B8BBB808, v3, v2);
}

uint64_t sub_1B8BBB808()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8BBB870, 0, 0);
}

uint64_t sub_1B8BBB870()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2[3];
  v2[3] = 0;

  v4 = v2[5];
  v2[5] = 0;

  v5 = v2[6];
  v2[6] = 0;

  v6 = v2[7];
  v2[7] = 0;

  v1();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B8BBB910()
{
  v1[22] = v0;
  sub_1B8C25368();
  v1[23] = sub_1B8C25358();
  v3 = sub_1B8C25328();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B8BBB9A8, v3, v2);
}

uint64_t sub_1B8BBB9A8()
{
  v1 = v0[22];
  v2 = *(v1 + 48);
  v0[26] = v2;
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = v2;
    [v3 abortAllSessions];
    v5 = [objc_opt_self() sharedInstance];
    v0[27] = v5;
    v6 = [v4 contentItem];
    v0[28] = v6;
    if (v6)
    {
      v7 = v6;
      v0[2] = v0;
      v0[3] = sub_1B8BBBC30;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C58, &qword_1B8C2D4F0);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1B8BBC08C;
      v0[13] = &block_descriptor_42_0;
      v0[14] = v8;
      [v5 deleteDraftFromContentItem:v7 completion:v0 + 10];
      v6 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v6);
  }

  else
  {

    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8C23C38();
    __swift_project_value_buffer(v9, qword_1EBAA7BE0);
    v10 = sub_1B8C23C18();
    v11 = sub_1B8C25498();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B8B22000, v10, v11, "No form response to delete, exiting early.", v12, 2u);
      MEMORY[0x1B8CCB0E0](v12, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1B8BBBC30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_1B8BBBE9C;
  }

  else
  {
    v5 = sub_1B8BBBD60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B8BBBD60()
{
  v1 = v0[27];
  v2 = v0[28];

  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v3 = sub_1B8C23C38();
  __swift_project_value_buffer(v3, qword_1EBAA7BE0);
  v4 = sub_1B8C23C18();
  v5 = sub_1B8C25498();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B8B22000, v4, v5, "Deleted draft.", v8, 2u);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  else
  {

    v4 = v7;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B8BBBE9C()
{
  v20 = v0;
  v1 = v0[28];
  v2 = v0[27];

  swift_willThrow();

  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v3 = v0[29];
  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7BE0);
  v5 = v3;
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25478();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  v10 = v0[26];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = sub_1B8C25A68();
    v15 = sub_1B8B5DD48(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1B8B22000, v6, v7, "Encountered error deleting draft: %{public}s", v11, 0xCu);
    v16 = __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1, v16);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B8BBC08C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1B8BBC138()
{

  MEMORY[0x1B8CCB1A0](v0 + 72);
  sub_1B8B30A44(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t sub_1B8BBC198()
{
  sub_1B8BBC138();

  return swift_deallocClassInstance();
}

void sub_1B8BBC1F0()
{
  v1 = v0;
  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7BE0);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25498();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C353B0, &aBlock);
    _os_log_impl(&dword_1B8B22000, v3, v4, "%s", v5, 0xCu);
    v7 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v7);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = sub_1B8C23C18();
    v23 = sub_1B8C25488();
    if (os_log_type_enabled(Strong, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C353B0, &aBlock);
      _os_log_impl(&dword_1B8B22000, Strong, v23, "Presenter is nil, cannot continue with %s", v24, 0xCu);
      v26 = __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B8CCB0E0](v25, -1, -1, v26);
      MEMORY[0x1B8CCB0E0](v24, -1, -1);
LABEL_26:

      return;
    }

LABEL_24:

    goto LABEL_26;
  }

  v8 = *(v0 + 40);
  if (!v8)
  {
    v27 = sub_1B8C23C18();
    v28 = sub_1B8C25488();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C353B0, &aBlock);
      _os_log_impl(&dword_1B8B22000, v27, v28, "User is nil, cannot continue with %s", v29, 0xCu);
      v31 = __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1B8CCB0E0](v30, -1, -1, v31);
      MEMORY[0x1B8CCB0E0](v29, -1, -1);

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 sharedInstance];
  v12 = [v11 loginManager];

  if (!v12)
  {
    sub_1B8C258A8();
    __break(1u);
    return;
  }

  v13 = type metadata accessor for Authentication();
  v14 = objc_opt_self();
  v15 = Strong;
  v16 = [v14 standardUserDefaults];
  sub_1B8BD93C0();

  v17 = [v14 standardUserDefaults];
  v18 = sub_1B8BD94E4();

  swift_retain_n();
  if ([v10 isUnauthenticatedUser])
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EBAA77B0);
    v19 = sub_1B8C23C18();
    v20 = sub_1B8C25498();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B8B22000, v19, v20, "Cannot recover from invalid session with unauthenticated user", v21, 2u);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
    }

    v22 = FBKErrorOfType();
    sub_1B8BBCB7C(v22, v1);

    goto LABEL_20;
  }

  if (sub_1B8BA7E74(v18 & 1))
  {
    v32 = swift_allocObject();
    v32[2] = sub_1B8BBD060;
    v32[3] = v1;
    v32[4] = v10;
    v33 = v10;

    sub_1B8BA29A8(v12, sub_1B8BBD438, v32);

LABEL_20:

    return;
  }

  if ([v10 isSystemAccount])
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EBAA77B0);
    v34 = sub_1B8C23C18();
    v35 = sub_1B8C25498();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1B8B22000, v34, v35, "Recovering from invalid session with system account", v36, 2u);
      MEMORY[0x1B8CCB0E0](v36, -1, -1);
    }

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = sub_1B8BBD060;
    v38[3] = v1;
    v38[4] = v37;
    v38[5] = v13;
    v38[6] = Strong;
    v38[7] = v10;
    v52 = sub_1B8BBD408;
    v53 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1B8BB79D4;
    v51 = &block_descriptor_36;
    v39 = _Block_copy(&aBlock);
    v40 = v10;
    v41 = v15;

    [v12 loginWithSystemAccountWithCompletion_];
  }

  else
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EBAA77B0);
    v42 = sub_1B8C23C18();
    v43 = sub_1B8C25498();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1B8B22000, v42, v43, "Recovering from invalid session with regular user account", v44, 2u);
      MEMORY[0x1B8CCB0E0](v44, -1, -1);
    }

    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    v46[2] = sub_1B8BBD060;
    v46[3] = v1;
    v46[4] = v45;
    v46[5] = v13;
    v46[6] = Strong;
    v46[7] = v10;
    v52 = sub_1B8BBD388;
    v53 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1B8BB79D4;
    v51 = &block_descriptor_6;
    v39 = _Block_copy(&aBlock);
    v40 = v10;
    v41 = v15;

    [v12 autoLoginWithCompletion_];
  }

  _Block_release(v39);
}

void sub_1B8BBCB7C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EBAA7BE0);
    oslog = sub_1B8C23C18();
    v14 = sub_1B8C25498();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B8B22000, oslog, v14, "Recovered from invalid session error", v15, 2u);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }

    goto LABEL_15;
  }

  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7BE0);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25498();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B8B22000, v3, v4, "Failed to recover from invalid session", v5, 2u);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    oslog = Strong;
    v7 = FBKErrorOfType();
    if (v7)
    {
      v8 = v7;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        sub_1B8BBFD3C();
        v12 = v11;

        if (!v12)
        {

LABEL_15:

          return;
        }

LABEL_19:
        v16 = sub_1B8C23358();
        v17 = objc_allocWithZone(type metadata accessor for FBKSubmissionError());
        v18 = sub_1B8BCD868(v16);
        [v12 didFailSubmissionWithError_];

        swift_unknownObjectRelease();
        return;
      }

      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    sub_1B8C258A8();
    __break(1u);
  }
}

void sub_1B8BBCEB0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1B8BBDC18;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_117_0;
  v10 = _Block_copy(aBlock);

  [a2 logOutIfNeededAndRun_];
  _Block_release(v10);
}

void sub_1B8BBD068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (v3 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v5 = v4[1];
  v6 = *v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6 || (v7 = v3 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId, swift_beginAccess(), *(v7 + 8) != 1))
  {
    v13 = v3 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
    swift_beginAccess();
    if (*(v13 + 8))
    {

      v14 = 0;
    }

    else
    {

      v14 = sub_1B8C25658();
    }

    v15 = [objc_opt_self() sharedInstance];

    v16 = sub_1B8C250F8();

    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_1B8BBDCC8;
    v18[4] = a2;
    aBlock[4] = sub_1B8BBDCA4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B963EC;
    aBlock[3] = &block_descriptor_93;
    v19 = _Block_copy(aBlock);

    [v15 feedbackFrameworkLoadDataWithFormTat:v16 orFormID:v14 completion:v19];
    _Block_release(v19);
  }

  else
  {
    v8 = qword_1EBAA5920;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8C23C38();
    __swift_project_value_buffer(v9, qword_1EBAA7BE0);
    v10 = sub_1B8C23C18();
    v11 = sub_1B8C25498();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B8B22000, v10, v11, "FeedbackForm is misconfigured. Cannot load Form", v12, 2u);
      MEMORY[0x1B8CCB0E0](v12, -1, -1);
    }

    sub_1B8BB8834(4, 1, a2);
  }
}