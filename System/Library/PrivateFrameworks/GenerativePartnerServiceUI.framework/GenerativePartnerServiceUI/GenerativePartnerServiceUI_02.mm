uint64_t sub_1BE4EF7D0(uint64_t a1)
{
  v59 = a1;
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v57 = &v56 - v7;
  v8 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v56 - v14;
  v16 = *(v2 + 36);
  v60 = v1;
  v17 = (v1 + v16);
  v18 = *v17;
  v19 = v17[1];
  *&v67[0] = *v17;
  *(&v67[0] + 1) = v19;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v20 = sub_1BE54C24C();
  sub_1BE50149C(v20, v21, v22);

  v23 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4C63F8(v12, 1, 4, v23);
  sub_1BE5005B4(v15, v12);
  v25 = v24;
  sub_1BE4FD560();
  sub_1BE4FD560();
  if (v25 & 1) != 0 || (*&v67[0] = v18, *(&v67[0] + 1) = v19, v26 = sub_1BE54C24C(), sub_1BE50149C(v26, v27, v28), , sub_1BE4C63F8(v12, 4, 4, v23), sub_1BE5005B4(v15, v12), v30 = v29, sub_1BE4FD560(), result = sub_1BE4FD560(), (v30))
  {
    *&v64 = v18;
    *(&v64 + 1) = v19;
    sub_1BE54C24C();
    sub_1BE5010B4(&v64);

    if (*(&v65 + 1) || (sub_1BE4FF104(&v64, &qword_1EBDABAF8), sub_1BE4FF0AC(), *(&v65 + 1)))
    {
      sub_1BE4BF094(&v64, &v62);
      sub_1BE4BF094(&v62, &v64);
    }

    else
    {
      sub_1BE4FF104(&v64, &qword_1EBDABAF8);
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      sub_1BE53C930(&v64);
    }

    v67[0] = v64;
    v67[1] = v65;
    v68 = v66;
    sub_1BE4FF0AC();
    if (v63)
    {
      sub_1BE4BF094(&v62, &v64);
      static GenerativePartnerRestrictionUtils.useCaseDoesNotAllowCurrentIPCountryCode(provider:)();
      if (v32)
      {
        if (qword_1EBDABAA8 != -1)
        {
          swift_once();
        }

        v33 = sub_1BE54B2EC();
        sub_1BE4C52BC(v33, qword_1EBDB0C38);
        v34 = sub_1BE54B2BC();
        v35 = sub_1BE54C97C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&v62 = v37;
          *v36 = 136446210;
          *(v36 + 4) = sub_1BE4C5338(0xD00000000000001FLL, 0x80000001BE553EC0, &v62);
          _os_log_impl(&dword_1BE4B8000, v34, v35, "%{public}s: Presenting regional unavailability alert, reason = useCaseDoesNotAllowCurrentIPCountryCode", v36, 0xCu);
          sub_1BE4C58A8(v37);
          MEMORY[0x1BFB48AC0](v37, -1, -1);
          MEMORY[0x1BFB48AC0](v36, -1, -1);
        }

        v38 = (v60 + *(v2 + 56));
        v39 = *v38;
        v40 = *(v38 + 1);
        LOBYTE(v62) = v39;
        *(&v62 + 1) = v40;
        LOBYTE(v61) = 1;
        sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
        sub_1BE54C25C();
      }

      else
      {
        *&v62 = v18;
        *(&v62 + 1) = v19;
        sub_1BE54C24C();
        sub_1BE4C63F8(v15, 2, 4, v23);
        sub_1BE5014C4();

        if (qword_1EBDABAA8 != -1)
        {
          swift_once();
        }

        v45 = sub_1BE54B2EC();
        sub_1BE4C52BC(v45, qword_1EBDB0C38);
        v46 = sub_1BE54B2BC();
        v47 = sub_1BE54C9AC();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v62 = v49;
          *v48 = 136446466;
          *(v48 + 4) = sub_1BE4C5338(0xD000000000000022, 0x80000001BE54F6D0, &v62);
          *(v48 + 12) = 2082;
          *(v48 + 14) = sub_1BE4C5338(0xD00000000000001FLL, 0x80000001BE553EC0, &v62);
          _os_log_impl(&dword_1BE4B8000, v46, v47, "%{public}s.%{public}s: proceeding to spawn sign in task", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB48AC0](v49, -1, -1);
          MEMORY[0x1BFB48AC0](v48, -1, -1);
        }

        v50 = sub_1BE54C91C();
        sub_1BE4C63F8(v57, 1, 1, v50);
        v51 = v58;
        sub_1BE4FCF80();
        sub_1BE4C6918(&v64, &v62);
        sub_1BE54C8CC();
        v52 = sub_1BE54C8BC();
        v53 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v54 = swift_allocObject();
        v55 = MEMORY[0x1E69E85E0];
        *(v54 + 16) = v52;
        *(v54 + 24) = v55;
        sub_1BE4FCFD8(v51, v54 + v53);
        sub_1BE4BF094(&v62, v54 + ((v3 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
        sub_1BE50BA3C();
      }

      sub_1BE4C58A8(&v64);
    }

    else
    {
      sub_1BE4FF104(&v62, &qword_1EBDABAF8);
      if (qword_1EBDABAA8 != -1)
      {
        swift_once();
      }

      v41 = sub_1BE54B2EC();
      sub_1BE4C52BC(v41, qword_1EBDB0C38);
      v42 = sub_1BE54B2BC();
      v43 = sub_1BE54C97C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1BE4B8000, v42, v43, "signInTask: designatedProvider, currentLLM, and defaultLLM are all nil", v44, 2u);
        MEMORY[0x1BFB48AC0](v44, -1, -1);
      }
    }

    return sub_1BE4FF104(v67, &qword_1EBDABAF8);
  }

  return result;
}

uint64_t sub_1BE4F0064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  v6 = sub_1BE54B3EC();
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v5[41] = swift_task_alloc();
  v7 = sub_1BE54B39C();
  v5[42] = v7;
  v5[43] = *(v7 - 8);
  v5[44] = swift_task_alloc();
  v8 = sub_1BE54B3DC();
  v5[45] = v8;
  v5[46] = *(v8 - 8);
  v5[47] = swift_task_alloc();
  sub_1BE54C8CC();
  v5[48] = sub_1BE54C8BC();
  v10 = sub_1BE54C87C();
  v5[49] = v10;
  v5[50] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BE4F0254, v10, v9);
}

uint64_t sub_1BE4F0254()
{
  sub_1BE4E021C();
  v19 = v0;
  if (qword_1EBDABAA8 != -1)
  {
    sub_1BE4FFAF4(&qword_1EBDABAA8);
  }

  v1 = sub_1BE54B2EC();
  v0[51] = sub_1BE4C52BC(v1, qword_1EBDB0C38);
  v2 = sub_1BE54B2BC();
  v3 = sub_1BE54C9AC();
  if (sub_1BE4FFCA4(v3))
  {
    v4 = swift_slowAlloc();
    v18 = sub_1BE4FFE98();
    *v4 = 136446466;
    v5 = sub_1BE4FFA88();
    *(v4 + 4) = sub_1BE4C5338(v5, v6, &v18);
    *(v4 + 12) = 2082;
    sub_1BE4FFAA0();
    *(v4 + 14) = sub_1BE4C5338(0xD00000000000001FLL, v7, &v18);
    sub_1BE4FFE08(&dword_1BE4B8000, v8, v9, "%{public}s.%{public}s: Calling ExternalAIAuthenticatorHelper().authenticateWithExternalAI()");
    swift_arrayDestroy();
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  v11 = v0[34];
  v10 = v0[35];
  v12 = (v11 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
  v13 = *v12;
  v0[52] = *v12;
  v14 = v12[1];
  v0[53] = v14;
  v0[12] = v13;
  v0[13] = v14;
  v0[54] = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE501CB8(0);

  sub_1BE4C6918(v10, (v0 + 2));
  v15 = type metadata accessor for ExternalAIAuthenticatorHelper(0);
  sub_1BE4FFCE4(v15);
  v0[55] = sub_1BE534D4C(v0 + 2);
  v16 = swift_task_alloc();
  v0[56] = v16;
  *v16 = v0;
  v16[1] = sub_1BE4F047C;

  return sub_1BE533AE4();
}

uint64_t sub_1BE4F047C()
{
  sub_1BE4E01D4();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;
  v2[57] = v0;

  if (v0)
  {
    v4 = v2[49];
    v5 = v2[50];
    v6 = sub_1BE4F0834;
  }

  else
  {

    v4 = v2[49];
    v5 = v2[50];
    v6 = sub_1BE4F058C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BE4F058C()
{
  v1 = v0[53];
  v2 = v0[52];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];

  v0[18] = v2;
  v0[19] = v1;
  sub_1BE54C24C();
  sub_1BE54B3AC();
  sub_1BE54B34C();
  (*(v4 + 8))(v3, v5);
  sub_1BE529A24();
  v7 = v6;

  sub_1BE501CB8((v7 & 1) == 0);

  v0[20] = v2;
  v0[21] = v1;
  sub_1BE54C24C();
  v8 = sub_1BE501CA4();

  if (v8)
  {
    sub_1BE4ED7BC(1, v0[35]);
    v9 = sub_1BE4E0628();
    v10(v9);
    v0[14] = v0[52];
    v0[15] = v0[53];
    sub_1BE54C24C();
    v11 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4FFB88(v11);
  }

  else
  {
    v12 = v0[53];
    v13 = v0[52];
    v15 = v0[46];
    v14 = v0[47];
    v16 = v0[45];
    v17 = v0[41];
    v18 = v0[35];
    v0[22] = v13;
    v0[23] = v12;
    sub_1BE54C24C();
    sub_1BE4C6918(v18, (v0 + 7));
    sub_1BE5011B0((v0 + 7));

    v0[24] = v13;
    v0[25] = v12;
    sub_1BE54C24C();
    (*(v15 + 16))(v17, v14, v16);
    v19 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4C63F8(v17, 0, 4, v19);
    sub_1BE5014C4();

    v20 = sub_1BE4E0628();
    v21(v20);
  }

  sub_1BE4FFE48();

  sub_1BE4E01E0();

  return v22();
}

uint64_t sub_1BE4F0834()
{
  v49 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 304);

  *(v0 + 216) = v1;
  v3 = v1;
  sub_1BE4BF11C(&qword_1EBDAC5C0, qword_1BE551A00);
  sub_1BE4FFBD8();
  v4 = swift_dynamicCast();
  v5 = *(v0 + 456);
  if (v4)
  {
    v7 = *(v0 + 312);
    v6 = *(v0 + 320);
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 288);

    (*(v9 + 32))(v6, v8, v10);
    v11 = *(v9 + 16);
    v11(v7, v6, v10);
    v12 = sub_1BE54B2BC();
    v13 = sub_1BE54C98C();
    v14 = sub_1BE4FFCA4(v13);
    v15 = *(v0 + 312);
    v16 = *(v0 + 288);
    if (v14)
    {
      v17 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = sub_1BE4FFE98();
      *v17 = 136446722;
      v18 = sub_1BE4FFA88();
      *(v17 + 4) = sub_1BE4C5338(v18, v19, &v48);
      *(v17 + 12) = 2082;
      sub_1BE4FFAA0();
      *(v17 + 14) = sub_1BE4C5338(0xD00000000000001FLL, v20, &v48);
      *(v17 + 22) = 2114;
      sub_1BE4FEB10(&qword_1EBDAC5C8, MEMORY[0x1E698AA30], MEMORY[0x1E698AA38]);
      swift_allocError();
      log = v12;
      v21 = v2;
      v11(v22, v15, v16);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = sub_1BE4FFC8C();
      (v11)(v24);
      *(v17 + 24) = v23;
      *v47 = v23;
      _os_log_impl(&dword_1BE4B8000, log, v21, "%{public}s.%{public}s: ExternalAIAuthenticatorHelper().authenticateWithExternalAI() exception: %{public}@", v17, 0x20u);
      sub_1BE4FF104(v47, &qword_1EBDAC2F0);
      sub_1BE4C75DC();
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {

      v37 = sub_1BE4FFC8C();
      (v11)(v37);
    }

    v38 = *(v0 + 424);
    v39 = *(v0 + 320);
    v40 = *(v0 + 288);
    *(v0 + 128) = *(v0 + 416);
    *(v0 + 136) = v38;
    sub_1BE54C24C();
    sub_1BE501C7C(1);

    (v11)(v39, v40);
    v41 = *(v0 + 216);
  }

  else
  {

    v25 = v5;
    v26 = sub_1BE54B2BC();
    v27 = sub_1BE54C98C();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 456);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = sub_1BE4FFE98();
      *v30 = 136446722;
      v32 = sub_1BE4FFA88();
      *(v30 + 4) = sub_1BE4C5338(v32, v33, &v48);
      *(v30 + 12) = 2082;
      sub_1BE4FFAA0();
      *(v30 + 14) = sub_1BE4C5338(0xD00000000000001FLL, v34, &v48);
      *(v30 + 22) = 2114;
      v35 = v29;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 24) = v36;
      *v31 = v36;
      _os_log_impl(&dword_1BE4B8000, v26, v27, "%{public}s.%{public}s: ExternalAIAuthenticatorHelper().authenticateWithExternalAI() unknown exception type: %{public}@", v30, 0x20u);
      sub_1BE4FF104(v31, &qword_1EBDAC2F0);
      sub_1BE4C75DC();
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();

      goto LABEL_10;
    }

    v41 = v29;
  }

LABEL_10:
  v42 = *(v0 + 424);
  *(v0 + 112) = *(v0 + 416);
  *(v0 + 120) = v42;
  sub_1BE54C24C();
  v43 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4FFB88(v43);

  sub_1BE4FFE48();

  sub_1BE4E01E0();

  return v44();
}

uint64_t sub_1BE4F0D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC878, &qword_1BE54FAE8);
  v29 = *(v4 - 8);
  v5 = v29;
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v28 - v11;
  v13 = sub_1BE54ADAC();
  MEMORY[0x1EEE9AC00](v13, v14);
  (*(v16 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v17 = sub_1BE54BF7C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1BE54B66C();
  v24 = *(v5 + 16);
  v24(v9, v12, v4);
  *a2 = v17;
  *(a2 + 8) = v19;
  v21 &= 1u;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v25 = sub_1BE4BF11C(&qword_1EBDACA28, &qword_1BE54FCA0);
  v24((a2 + *(v25 + 64)), v9, v4);
  sub_1BE4D91B0(v17, v19, v21);
  v26 = *(v29 + 8);

  v26(v12, v4);
  v26(v9, v4);
  sub_1BE4C68C8(v17, v19, v21);
}

uint64_t sub_1BE4F0FA0@<X0>(uint64_t a1@<X8>)
{
  sub_1BE4BF11C(&qword_1EBDAC948, &qword_1BE54FBD0);
  sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948, &qword_1BE54FBD0, MEMORY[0x1E69817F8]);
  sub_1BE54C29C();
  KeyPath = swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  result = sub_1BE4BF11C(&qword_1EBDACAC8, &qword_1BE54FDE0);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = sub_1BE4FF8C4;
  v5[2] = v3;
  return result;
}

uint64_t sub_1BE4F10C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 64);
  *a2 = sub_1BE54BA4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_1BE4BF11C(&qword_1EBDACA20, &qword_1BE54FC98);
  return sub_1BE4F0D38(a1 + v4, a2 + *(v5 + 44));
}

uint64_t sub_1BE4F112C()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  sub_1BE4EF7D0(v1);
  return sub_1BE4FF104(v1, &qword_1EBDABAF8);
}

uint64_t sub_1BE4F1180(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDACA18, &qword_1BE54FC90);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v30 - v4;
  v6 = sub_1BE4BF11C(&qword_1EBDAC948, &qword_1BE54FBD0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v15 = (a1 + *(v14 + 36));
  v17 = *v15;
  v16 = v15[1];
  v30[2] = v17;
  v30[3] = v16;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v18 = sub_1BE54C24C();
  sub_1BE50149C(v18, v19, v20);

  v21 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v22 = sub_1BE4C63BC(v13, 4, v21);
  sub_1BE4FD560();
  if (v22 == 2)
  {
    v23 = *(v14 + 64);
    *v9 = sub_1BE54BA4C();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v24 = sub_1BE4BF11C(&qword_1EBDACA20, &qword_1BE54FC98);
    sub_1BE4F0D38(a1 + v23, &v9[*(v24 + 44)]);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948, &qword_1BE54FBD0, MEMORY[0x1E69817F8]);
    sub_1BE54BC0C();
    return sub_1BE4FF104(v9, &qword_1EBDAC948);
  }

  else
  {
    sub_1BE54BADC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v26 = qword_1EBDB0C00;
    *v5 = sub_1BE54BF6C();
    *(v5 + 1) = v27;
    v5[16] = v28 & 1;
    *(v5 + 3) = v29;
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948, &qword_1BE54FBD0, MEMORY[0x1E69817F8]);
    return sub_1BE54BC0C();
  }
}

uint64_t sub_1BE4F1538@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a2;
  v5 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v109 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1BE54AD8C();
  v103 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v8);
  v104 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v102 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v101 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1BE54ADAC();
  v110 = *(v116 - 8);
  v17 = MEMORY[0x1EEE9AC00](v116, v16);
  v105 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v115 = v86 - v20;
  v21 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v112 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v98 = *(v112 - 1);
  v23 = *(v98 + 8);
  MEMORY[0x1EEE9AC00](v112, v24);
  v25 = sub_1BE4BF11C(&qword_1EBDABD68, &qword_1BE54DEE0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = v86 - v27;
  v113 = sub_1BE4BF11C(&qword_1EBDAC9A8, &qword_1BE54FC28);
  v99 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v29);
  v31 = v86 - v30;
  v108 = sub_1BE4BF11C(&qword_1EBDAC9B0, &qword_1BE54FC30);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v32);
  v114 = v86 - v33;
  v34 = a1[3];
  v35 = a1[4];
  sub_1BE4C52F4(a1, v34);
  v36 = (*(v35 + 16))(v34, v35);
  v38 = v37;
  sub_1BE54B56C();
  v39 = sub_1BE54B58C();
  sub_1BE4C63F8(v28, 0, 1, v39);
  v100 = a1;
  sub_1BE4C6918(a1, &v118);
  sub_1BE4FCF80();
  v40 = (v98[80] + 56) & ~v98[80];
  v41 = swift_allocObject();
  sub_1BE4BF094(&v118, v41 + 16);
  sub_1BE4FCFD8(v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
  v117 = v3;
  sub_1BE4BF11C(&qword_1EBDAC930, &qword_1BE54FBC8);
  sub_1BE4FEFF4();
  v98 = v31;
  sub_1BE54C28C();
  sub_1BE54BABC();
  sub_1BE54BAAC();
  v97 = v36;
  v42 = v38;
  sub_1BE54BA9C();
  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v43 = qword_1EBDB0C00;
  v91 = sub_1BE54BF6C();
  v90 = v44;
  v88 = v45;
  v89 = v46;
  v47 = (v3 + *(v112 + 9));
  v49 = *v47;
  v48 = v47[1];
  v123 = v49;
  v124 = v48;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C26C();
  v50 = v118;
  v94 = v3;
  v51 = v119;
  swift_getKeyPath();
  v118 = v50;
  v119 = v51;
  sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
  sub_1BE54C31C();

  v86[2] = v123;
  v86[1] = v124;
  v87 = v125;

  v86[0] = v86;
  v54 = MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v57 = sub_1BE4BF11C(&qword_1EBDAC9B8, &qword_1BE54FC60);
  v58 = MEMORY[0x1E697D680];
  v59 = sub_1BE4FF864(&qword_1EBDAC9C0, &qword_1EBDAC9A8, &qword_1BE54FC28, MEMORY[0x1E697D680]);
  v60 = sub_1BE4FF864(&qword_1EBDABC48, &qword_1EBDABB58, &unk_1BE54DC90, v58);
  v92 = sub_1BE4FF1D0();
  v93 = v60;
  v95 = v59;
  v96 = v57;
  v100 = v56;
  v61 = v113;
  v62 = v88;
  v63 = v91;
  v64 = v90;
  v65 = v98;
  sub_1BE54C07C();

  sub_1BE4C68C8(v63, v64, v62 & 1);

  (*(v99 + 8))(v65, v61);
  sub_1BE54C68C();
  sub_1BE54C67C();
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  v66 = v42;
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v67 = v107;
  v68 = sub_1BE4C52BC(v107, qword_1EBDB0C08);
  (*(v103 + 16))(v104, v68, v67);
  sub_1BE54AF2C();
  v69 = v115;
  sub_1BE54ADBC();
  v70 = (v94 + *(v112 + 13));
  v71 = *v70;
  v72 = *(v70 + 1);
  LOBYTE(v123) = v71;
  v124 = v72;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  v73 = sub_1BE54C26C();
  v112 = v86;
  v104 = *(&v118 + 1);
  v107 = v118;
  LODWORD(v109) = v119;
  v75 = MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v110;
  (*(v110 + 16))(v105, v69, v116);
  v78 = sub_1BE54BF7C();
  v80 = v79;
  v82 = v81;
  v105 = v66;
  sub_1BE4BF11C(&qword_1EBDACA00, &qword_1BE54FC80);
  *&v118 = v113;
  *(&v118 + 1) = v100;
  v119 = v96;
  v120 = v95;
  v121 = v93;
  v122 = v92;
  swift_getOpaqueTypeConformance2();
  sub_1BE4FF864(&qword_1EBDACA08, &qword_1EBDACA00, &qword_1BE54FC80, MEMORY[0x1E6981F48]);
  v83 = v108;
  v84 = v114;
  sub_1BE54C07C();
  sub_1BE4C68C8(v78, v80, v82 & 1);

  (*(v77 + 8))(v115, v116);
  return (*(v106 + 8))(v84, v83);
}

uint64_t sub_1BE4F22D0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1BE4C52F4(a1, v3);
  (*(v4 + 216))(&v14, v3, v4);
  v5 = v14;
  v6 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  if (v5 == 128)
  {
    v7 = (a2 + *(v6 + 52));
    v8 = *v7;
    v9 = *(v7 + 1);
    LOBYTE(v14) = v8;
    v15 = v9;
    sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
    return sub_1BE54C25C();
  }

  else
  {
    v11 = (a2 + *(v6 + 36));
    v13 = *v11;
    v12 = v11[1];
    v14 = v13;
    v15 = v12;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    sub_1BE501D7C(1);
  }
}

uint64_t sub_1BE4F23D0(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAC948, &qword_1BE54FBD0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v30 - v4;
  v6 = sub_1BE4BF11C(&qword_1EBDACA18, &qword_1BE54FC90);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v15 = (a1 + *(v14 + 36));
  v17 = *v15;
  v16 = v15[1];
  v30[2] = v17;
  v30[3] = v16;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v18 = sub_1BE54C24C();
  sub_1BE50149C(v18, v19, v20);

  v21 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v22 = sub_1BE4C63BC(v13, 4, v21);
  sub_1BE4FD560();
  if (v22 == 3)
  {
    v23 = *(v14 + 68);
    *v5 = sub_1BE54BA4C();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v24 = sub_1BE4BF11C(&qword_1EBDACA20, &qword_1BE54FC98);
    sub_1BE4F0D38(a1 + v23, &v5[*(v24 + 44)]);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948, &qword_1BE54FBD0, MEMORY[0x1E69817F8]);
    sub_1BE54BC0C();
    return sub_1BE4FF104(v5, &qword_1EBDAC948);
  }

  else
  {
    sub_1BE54BADC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v26 = qword_1EBDB0C00;
    *v9 = sub_1BE54BF6C();
    *(v9 + 1) = v27;
    v9[16] = v28 & 1;
    *(v9 + 3) = v29;
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948, &qword_1BE54FBD0, MEMORY[0x1E69817F8]);
    return sub_1BE54BC0C();
  }
}

uint64_t sub_1BE4F2780(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE4BF11C(&qword_1EBDABD68, &qword_1BE54DEE0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v15 - v9;
  sub_1BE54B56C();
  v11 = sub_1BE54B58C();
  sub_1BE4C63F8(v10, 0, 1, v11);
  sub_1BE4FCF80();
  sub_1BE4C6918(a2, v16);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_1BE4FCFD8(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1BE4BF094(v16, v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1BE54C28C();
}

uint64_t sub_1BE4F2990@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4F2A6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  sub_1BE4C52F4(a1, v12);
  v14 = (*(v13 + 224))(v12, v13);
  v15 = v14;
  v16 = *(v14 + 16);
  switch(v16)
  {
    case 1:
      v137 = a2;
      v138 = a3;
      v139 = v11;
      v140 = a4;
      v141 = (v14 + 32);
      v23 = 32;
      while (2)
      {
        if (v23 == 33)
        {
          v38 = *(v15 + 16);
          v136 = 0x80000001BE552AD0;
          v39 = v141;
          while (2)
          {
            if (!v38)
            {
              v41 = *(v15 + 16);
              v42 = v141;
              while (2)
              {
                if (v41)
                {
                  switch(*v42)
                  {
                    case 2:

                      break;
                    default:
                      v43 = sub_1BE54CCDC();

                      ++v42;
                      --v41;
                      if ((v43 & 1) == 0)
                      {
                        continue;
                      }

                      break;
                  }

                  sub_1BE54BABC();
                  sub_1BE54BAAC();
                  sub_1BE54BA9C();
                  sub_1BE54BAAC();
                  sub_1BE54BAEC();
                  if (qword_1EBDABA80 != -1)
                  {
                    swift_once();
                  }

                  v126 = qword_1EBDB0C00;
                  v127 = sub_1BE54BF6C();
                  v53 = v127;
                  v54 = v128;
                  *&v142 = v127;
                  *(&v142 + 1) = v128;
                  v56 = v129 & 1;
                  *&v143 = v129 & 1;
                  *(&v143 + 1) = v130;
                  LOBYTE(v144) = 0;
                }

                else
                {
                  v61 = *(v15 + 16);
                  while (2)
                  {
                    if (!v61)
                    {

                      sub_1BE54BABC();
                      sub_1BE54BAAC();
                      sub_1BE54BA9C();
                      sub_1BE54BAAC();
                      sub_1BE54BAEC();
                      if (qword_1EBDABA80 != -1)
                      {
                        swift_once();
                      }

                      v122 = qword_1EBDB0C00;
                      *&v142 = sub_1BE54BF6C();
                      *(&v142 + 1) = v123;
                      *&v143 = v124 & 1;
                      *(&v143 + 1) = v125;
                      LOWORD(v144) = 0;
                      BYTE2(v144) = 1;
                      sub_1BE4BF11C(&qword_1EBDAC9F8, &qword_1BE54FC78);
                      sub_1BE4FEB58(&qword_1EBDAC9F0, &qword_1EBDAC9F8, &qword_1BE54FC78, sub_1BE4FDE34);
                      sub_1BE54BC0C();
                      goto LABEL_90;
                    }

                    switch(*v141)
                    {
                      case 3:

                        break;
                      default:
                        v62 = sub_1BE54CCDC();

                        ++v141;
                        --v61;
                        if ((v62 & 1) == 0)
                        {
                          continue;
                        }

                        break;
                    }

                    break;
                  }

                  sub_1BE54BABC();
                  sub_1BE54BAAC();
                  sub_1BE54BA9C();
                  sub_1BE54BAAC();
                  sub_1BE54BAEC();
                  if (qword_1EBDABA80 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_1EBDB0C00;
                  v127 = sub_1BE54BF6C();
                  v53 = v127;
                  v54 = v128;
                  *&v142 = v127;
                  *(&v142 + 1) = v128;
                  v56 = v132 & 1;
                  *&v143 = v132 & 1;
                  *(&v143 + 1) = v133;
                  LOBYTE(v144) = 1;
                }

                break;
              }

              sub_1BE4D91B0(v127, v128, v56);

              sub_1BE54BC0C();
              v142 = v146;
              v143 = v147;
              LOBYTE(v144) = v148;
              BYTE1(v144) = 1;
LABEL_86:
              sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
              sub_1BE4FDE34();
              sub_1BE54BC0C();
              if (BYTE1(v148))
              {
                v102 = 256;
              }

              else
              {
                v102 = 0;
              }

              v142 = v146;
              v143 = v147;
              LOWORD(v144) = v102 | v148;
              BYTE2(v144) = 0;
              sub_1BE4BF11C(&qword_1EBDAC9F8, &qword_1BE54FC78);
              sub_1BE4FEB58(&qword_1EBDAC9F0, &qword_1EBDAC9F8, &qword_1BE54FC78, sub_1BE4FDE34);
              sub_1BE54BC0C();
              sub_1BE4C68C8(v53, v54, v56);

LABEL_90:
              v103 = v148;
              v104 = BYTE2(v148);
              v142 = v146;
              v143 = v147;
              LOWORD(v144) = v148;
              HIWORD(v144) = BYTE2(v148) != 0;
              v105 = v146;
              v106 = *(&v147 + 1);
              v108 = v147;
              v139 = (v108 >> 64);
              v107 = v108;
              v141 = v147;
              LODWORD(v137) = v148;
              LODWORD(v138) = BYTE2(v148);
              sub_1BE4FF3E4(v146, *(&v146 + 1), v147, *(&v147 + 1), v148, SBYTE2(v148));
              sub_1BE4FF3E4(v105, *(&v105 + 1), v107, v106, v103, v104);
              sub_1BE4BF11C(&qword_1EBDAC9E8, &qword_1BE54FC70);
              sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
              sub_1BE4FF2E8();
              sub_1BE4FDE34();
              sub_1BE54BC0C();
              v109 = *(&v146 + 1);
              v110 = v147;
              v111 = v148 | (BYTE2(v148) << 16);
              v112 = HIBYTE(v148);
              if (HIBYTE(v148))
              {
                v113 = 0x1000000;
              }

              else
              {
                v113 = 0;
              }

              v135 = *(&v147 + 1);
              v136 = v146;
              v142 = v146;
              v143 = v147;
              v144 = v113 | v111;
              v145 = 0;
              sub_1BE4FF450(v146, *(&v146 + 1), v147, *(&v147 + 1), v148 | (BYTE2(v148) << 16), SHIBYTE(v148), sub_1BE4FF3E4, sub_1BE4FEEF0);
              sub_1BE4BF11C(&qword_1EBDAC9D8, &qword_1BE54FC68);
              sub_1BE4BF11C(&qword_1EBDAC8C0, &qword_1BE54FB08);
              sub_1BE4FF25C();
              sub_1BE4FEC88();
              sub_1BE54BC0C();
              v114 = v141;
              v115 = v139;
              v116 = v137;
              v117 = v138;
              sub_1BE4FF46C(v105, *(&v105 + 1), v141, v139, v137, v138);
              sub_1BE4FF450(v136, v109, v110, v135, v111, v112, sub_1BE4FF46C, sub_1BE4FEF90);
              result = sub_1BE4FF46C(v105, *(&v105 + 1), v114, v115, v116, v117);
              goto LABEL_94;
            }

            switch(*v39)
            {
              case 1:

                break;
              default:
                v40 = sub_1BE54CCDC();

                ++v39;
                --v38;
                if ((v40 & 1) == 0)
                {
                  continue;
                }

                break;
            }

            break;
          }

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v99 = qword_1EBDB0C00;
          v51 = sub_1BE54BF6C();
          v53 = v51;
          v54 = v52;
          *&v142 = v51;
          *(&v142 + 1) = v52;
          v56 = v100 & 1;
          *&v143 = v100 & 1;
          *(&v143 + 1) = v101;
          LOBYTE(v144) = 1;
        }

        else
        {
          switch(*(v15 + v23))
          {
            case 1:
            case 2:
            case 3:
              v24 = sub_1BE54CCDC();

              ++v23;
              if ((v24 & 1) == 0)
              {
                continue;
              }

              break;
            default:

              break;
          }

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v50 = qword_1EBDB0C00;
          v51 = sub_1BE54BF6C();
          v53 = v51;
          v54 = v52;
          *&v142 = v51;
          *(&v142 + 1) = v52;
          v56 = v55 & 1;
          *&v143 = v55 & 1;
          *(&v143 + 1) = v57;
          LOBYTE(v144) = 0;
        }

        break;
      }

      sub_1BE4D91B0(v51, v52, v56);

      sub_1BE54BC0C();
      v142 = v146;
      v143 = v147;
      LOWORD(v144) = v148;
      goto LABEL_86;
    case 2:
      v137 = a2;
      v138 = a3;
      v139 = v11;
      v140 = a4;
      v20 = (v14 + 32);
      v21 = 32;
      v141 = "moreVisualIntelligence";
      while (2)
      {
        if (v21 == 34)
        {
          goto LABEL_41;
        }

        switch(*(v15 + v21))
        {
          case 1:
          case 2:
          case 3:
            v22 = sub_1BE54CCDC();

            ++v21;
            if ((v22 & 1) == 0)
            {
              continue;
            }

            break;
          default:

            break;
        }

        break;
      }

      v44 = *(v15 + 16);
      v136 = 0x80000001BE552AD0;
      while (2)
      {
        if (!v44)
        {
LABEL_41:

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v46 = qword_1EBDB0C00;
          *&v142 = sub_1BE54BF6C();
          *(&v142 + 1) = v47;
          *&v143 = v48 & 1;
          *(&v143 + 1) = v49;
          LOBYTE(v144) = 1;
        }

        else
        {
          switch(*v20)
          {
            case 2:

              break;
            default:
              v45 = sub_1BE54CCDC();

              ++v20;
              --v44;
              if ((v45 & 1) == 0)
              {
                continue;
              }

              break;
          }

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v83 = qword_1EBDB0C00;
          *&v142 = sub_1BE54BF6C();
          *(&v142 + 1) = v84;
          *&v143 = v85 & 1;
          *(&v143 + 1) = v86;
          LOBYTE(v144) = 0;
        }

        break;
      }

      sub_1BE54BC0C();
      v142 = v146;
      v143 = v147;
      LOWORD(v144) = v148;
      HIWORD(v144) = 256;
      v88 = *(&v146 + 1);
      v87 = v146;
      v141 = v146;
      v89 = v147;
      v138 = v147;
      v139 = *(&v146 + 1);
      v90 = *(&v147 + 1);
      v137 = *(&v147 + 1);
      LODWORD(v136) = v148;
      sub_1BE4FEEF0(v146, *(&v146 + 1), v147, *(&v147 + 1));
      sub_1BE4FEEF0(v87, v88, v89, v90);
      sub_1BE4BF11C(&qword_1EBDAC9E8, &qword_1BE54FC70);
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FF2E8();
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      v91 = *(&v146 + 1);
      v92 = v147;
      v93 = v148 | (BYTE2(v148) << 16);
      v94 = HIBYTE(v148);
      if (HIBYTE(v148))
      {
        v95 = 0x1000000;
      }

      else
      {
        v95 = 0;
      }

      v135 = v146;
      v142 = v146;
      v143 = v147;
      v144 = v95 | v93;
      v145 = 0;
      sub_1BE4FF450(v146, *(&v146 + 1), v147, *(&v147 + 1), v148 | (BYTE2(v148) << 16), SHIBYTE(v148), sub_1BE4FF3E4, sub_1BE4FEEF0);
      sub_1BE4BF11C(&qword_1EBDAC9D8, &qword_1BE54FC68);
      sub_1BE4BF11C(&qword_1EBDAC8C0, &qword_1BE54FB08);
      sub_1BE4FF25C();
      sub_1BE4FEC88();
      sub_1BE54BC0C();
      v96 = v141;
      v98 = v138;
      v97 = v139;
      sub_1BE4FEF90(v141, v139, v138);
      sub_1BE4FF450(v135, v91, v92, *(&v92 + 1), v93, v94, sub_1BE4FF46C, sub_1BE4FEF90);
      v80 = v96;
      v81 = v97;
      v82 = v98;
      goto LABEL_80;
    case 3:
      v137 = a2;
      v138 = a3;
      v139 = v11;
      v140 = a4;
      v17 = (v14 + 32);
      v18 = 32;
      if (v18 == 35)
      {
        goto LABEL_65;
      }

      while (2)
      {
        switch(*(v15 + v18))
        {
          case 1:
          case 2:
          case 3:
            v19 = sub_1BE54CCDC();

            ++v18;
            if ((v19 & 1) == 0)
            {
              continue;
            }

            break;
          default:

            break;
        }

        break;
      }

      v58 = *(v15 + 16);
      v141 = 0x80000001BE552AD0;
      v59 = (v15 + 32);
      while (2)
      {
        if (!v58)
        {
          goto LABEL_65;
        }

        switch(*v59)
        {
          case 1:

            break;
          default:
            v60 = sub_1BE54CCDC();

            ++v59;
            --v58;
            if ((v60 & 1) == 0)
            {
              continue;
            }

            break;
        }

        break;
      }

      v63 = *(v15 + 16);
      while (2)
      {
        if (v63)
        {
          switch(*v17)
          {
            case 2:

              break;
            default:
              v64 = sub_1BE54CCDC();

              ++v17;
              --v63;
              if ((v64 & 1) == 0)
              {
                continue;
              }

              break;
          }

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v118 = qword_1EBDB0C00;
          *&v142 = sub_1BE54BF6C();
          *(&v142 + 1) = v119;
          *&v143 = v120 & 1;
          *(&v143 + 1) = v121;
          LOBYTE(v144) = 0;
        }

        else
        {
LABEL_65:

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v65 = qword_1EBDB0C00;
          *&v142 = sub_1BE54BF6C();
          *(&v142 + 1) = v66;
          *&v143 = v67 & 1;
          *(&v143 + 1) = v68;
          LOBYTE(v144) = 1;
        }

        break;
      }

      sub_1BE54BC0C();
      v142 = v146;
      v143 = v147;
      LOWORD(v144) = v148;
      v70 = *(&v146 + 1);
      v69 = v146;
      v141 = v146;
      v71 = v147;
      v138 = v147;
      v139 = *(&v146 + 1);
      v72 = *(&v147 + 1);
      v137 = *(&v147 + 1);
      LODWORD(v136) = v148;
      sub_1BE4FEEF0(v146, *(&v146 + 1), v147, *(&v147 + 1));
      sub_1BE4FEEF0(v69, v70, v71, v72);
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      v73 = v146;
      v74 = v147;
      v75 = v148;
      LODWORD(v135) = BYTE1(v148);
      if (BYTE1(v148))
      {
        v76 = 256;
      }

      else
      {
        v76 = 0;
      }

      v142 = v146;
      v143 = v147;
      v144 = v76 | v148;
      v145 = 1;
      sub_1BE4FEE8C(v146, *(&v146 + 1), v147, *(&v147 + 1), v148, SBYTE1(v148));
      sub_1BE4BF11C(&qword_1EBDAC9D8, &qword_1BE54FC68);
      sub_1BE4BF11C(&qword_1EBDAC8C0, &qword_1BE54FB08);
      sub_1BE4FF25C();
      sub_1BE4FEC88();
      sub_1BE54BC0C();
      v77 = v141;
      v79 = v138;
      v78 = v139;
      sub_1BE4FEF90(v141, v139, v138);
      sub_1BE4FEF2C(v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v135);
      v80 = v77;
      v81 = v78;
      v82 = v79;
LABEL_80:
      result = sub_1BE4FEF90(v80, v81, v82);
LABEL_94:
      v34 = v146;
      v35 = v147;
      v36 = v148;
      v37 = v149;
      a4 = v140;
      goto LABEL_95;
  }

  sub_1BE54BABC();
  sub_1BE54BAAC();
  sub_1BE54BA9C();
  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v25 = qword_1EBDB0C00;
  v26 = sub_1BE54BF6C();
  v28 = v27;
  v30 = v29 & 1;
  *&v142 = v26;
  *(&v142 + 1) = v27;
  *&v143 = v29 & 1;
  *(&v143 + 1) = v31;
  LOWORD(v144) = 256;
  sub_1BE4D91B0(v26, v27, v29 & 1);

  sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
  sub_1BE4FDE34();
  sub_1BE54BC0C();
  if (BYTE1(v148))
  {
    v32 = 256;
  }

  else
  {
    v32 = 0;
  }

  v142 = v146;
  v143 = v147;
  v144 = v32 | v148;
  v145 = 1;
  sub_1BE4BF11C(&qword_1EBDAC9D8, &qword_1BE54FC68);
  sub_1BE4BF11C(&qword_1EBDAC8C0, &qword_1BE54FB08);
  sub_1BE4FF25C();
  sub_1BE4FEC88();
  sub_1BE54BC0C();
  sub_1BE4C68C8(v26, v28, v30);

  v34 = v146;
  v35 = v147;
  v36 = v148;
  v37 = v149;
LABEL_95:
  *a4 = v34;
  *(a4 + 16) = v35;
  *(a4 + 32) = v36;
  *(a4 + 36) = v37;
  return result;
}

uint64_t sub_1BE4F44E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a1;
  v98 = a2;
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v85 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v83 = v4;
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE4BF11C(&qword_1EBDABD68, &qword_1BE54DEE0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v78 - v12;
  v14 = sub_1BE54AF6C();
  v95 = *(v14 - 8);
  v96 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v92 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v78 - v19;
  v21 = sub_1BE54AD8C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1BE54C6BC();
  v86 = *(v89 - 8);
  v27 = MEMORY[0x1EEE9AC00](v89, v26);
  v87 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v78 - v30;
  v32 = sub_1BE54ADAC();
  v33 = *(v32 - 8);
  v100 = v32;
  v101 = v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v97 = *(v90 - 8);
  v38 = MEMORY[0x1EEE9AC00](v90, v37);
  v94 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v93 = &v78 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v91 = &v78 - v45;
  MEMORY[0x1EEE9AC00](v44, v46);
  v99 = &v78 - v47;
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v48 = sub_1BE4C52BC(v21, qword_1EBDB0C08);
  (*(v22 + 16))(v25, v48, v21);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE54B56C();
  v84 = sub_1BE54B58C();
  sub_1BE4C63F8(v13, 0, 1, v84);
  sub_1BE4FCF80();
  v49 = v85[80];
  v81 = v25;
  v80 = v22;
  v50 = (v49 + 16) & ~v49;
  v51 = swift_allocObject();
  v79 = v21;
  v82 = v20;
  sub_1BE4FCFD8(v5, v51 + v50);
  sub_1BE4FF0AC();
  v53 = MEMORY[0x1EEE9AC00](v10, v52);
  *(&v78 - 2) = v36;
  v88 = v53;
  sub_1BE54C28C();
  sub_1BE4FF104(v13, &qword_1EBDABD68);
  v54 = *(v101 + 8);
  v83 = v36;
  v101 += 8;
  v85 = v54;
  (v54)(v36, v100);
  sub_1BE54C65C();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v55 = qword_1EBDB0C00;
  v56 = v82;
  sub_1BE54AF2C();
  v57 = v86;
  v58 = v89;
  (*(v86 + 16))(v87, v31, v89);
  v59 = v95;
  v60 = *(v95 + 16);
  v78 = v31;
  v61 = v96;
  v60(v92, v56, v96);
  v62 = [v55 bundleURL];
  v63 = v81;
  sub_1BE54AE0C();

  (*(v80 + 104))(v63, *MEMORY[0x1E6968DF8], v79);
  v64 = v83;
  sub_1BE54ADBC();
  (*(v59 + 8))(v56, v61);
  (*(v57 + 8))(v78, v58);
  sub_1BE54B57C();
  sub_1BE4C63F8(v13, 0, 1, v84);
  v65 = sub_1BE4FF0AC();
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v78 - 2) = v64;
  v67 = v91;
  sub_1BE54C28C();
  sub_1BE4FF104(v13, &qword_1EBDABD68);
  (v85)(v64, v100);
  v68 = v97;
  v69 = *(v97 + 16);
  v70 = v93;
  v71 = v99;
  v72 = v90;
  v69(v93, v99, v90);
  v73 = v94;
  v69(v94, v67, v72);
  v74 = v98;
  v69(v98, v70, v72);
  v75 = sub_1BE4BF11C(&qword_1EBDACA10, &qword_1BE54FC88);
  v69(&v74[*(v75 + 48)], v73, v72);
  v76 = *(v68 + 8);
  v76(v67, v72);
  v76(v71, v72);
  v76(v73, v72);
  return (v76)(v70, v72);
}

uint64_t sub_1BE4F4E98()
{
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  sub_1BE5011B0(v1);
}

uint64_t sub_1BE4F4F18@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1BE54BABC();
  sub_1BE54BAAC();
  sub_1BE54BA9C();
  sub_1BE54BAAC();
  sub_1BE54BA9C();
  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_1BE4F50B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v5[12] = swift_task_alloc();
  sub_1BE54C8CC();
  v5[13] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();
  v5[14] = v7;
  v5[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BE4F517C, v7, v6);
}

uint64_t sub_1BE4F517C()
{
  sub_1BE4E021C();
  v12 = v0;
  if (qword_1EBDABAA8 != -1)
  {
    sub_1BE4FFAF4(&qword_1EBDABAA8);
  }

  v1 = sub_1BE54B2EC();
  sub_1BE4C52BC(v1, qword_1EBDB0C38);
  v2 = sub_1BE54B2BC();
  v3 = sub_1BE54C9AC();
  if (sub_1BE4FFCA4(v3))
  {
    v4 = swift_slowAlloc();
    v11 = sub_1BE4FFE98();
    *v4 = 136446466;
    *(v4 + 4) = sub_1BE4C5338(0xD000000000000022, 0x80000001BE54F6D0, &v11);
    *(v4 + 12) = 2082;
    sub_1BE4FFAA0();
    *(v4 + 14) = sub_1BE4C5338(0xD000000000000018, v5, &v11);
    sub_1BE4FFE08(&dword_1BE4B8000, v6, v7, "%{public}s.%{public}s: ExternalAIAuthenticatorHelper().signOutOpenAI()");
    swift_arrayDestroy();
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  sub_1BE4C6918(v0[10], (v0 + 2));
  v8 = type metadata accessor for ExternalAIAuthenticatorHelper(0);
  sub_1BE4FFCE4(v8);
  v0[16] = sub_1BE534D4C(v0 + 2);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_1BE4F5344;

  return sub_1BE534080();
}

uint64_t sub_1BE4F5344()
{
  v1 = *v0;
  v2 = *v0;
  sub_1BE4E01C4();
  *v3 = v2;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1BE4F5480, v5, v4);
}

uint64_t sub_1BE4F5480()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 88);

  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4FFDBC();
  *(v1 + 56) = v2;
  *(v0 + 64) = v3;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v4 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4FFB88(v4);

  sub_1BE4E01E0();

  return v5();
}

void sub_1BE4F5538(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = [objc_opt_self() sharedConnection];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 isExternalIntelligenceSignInAllowed];

  if (v6)
  {
    v7 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
    v8 = (v2 + *(v7 + 36));
    v9 = *v8;
    v10 = v8[1];
    *&v26 = *v8;
    *(&v26 + 1) = v10;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    sub_1BE5010B4(&v26);

    if (v27)
    {
      sub_1BE4BF094(&v26, v29);
      static GenerativePartnerRestrictionUtils.useCaseDoesNotAllowCurrentIPCountryCode(provider:)();
      if (v11)
      {
        if (qword_1EBDABAA8 != -1)
        {
          swift_once();
        }

        v12 = sub_1BE54B2EC();
        sub_1BE4C52BC(v12, qword_1EBDB0C38);
        v13 = sub_1BE54B2BC();
        v14 = sub_1BE54C97C();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *&v26 = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_1BE4C5338(0xD000000000000025, 0x80000001BE553EE0, &v26);
          _os_log_impl(&dword_1BE4B8000, v13, v14, "%{public}s: Presenting regional unavailability alert, reason = useCaseDoesNotAllowCurrentIPCountryCode", v15, 0xCu);
          sub_1BE4C58A8(v16);
          MEMORY[0x1BFB48AC0](v16, -1, -1);
          MEMORY[0x1BFB48AC0](v15, -1, -1);
        }

        v17 = (v2 + *(v7 + 56));
        v18 = *v17;
        v19 = *(v17 + 1);
        LOBYTE(v26) = v18;
        *(&v26 + 1) = v19;
        LOBYTE(v28) = 1;
        sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
        sub_1BE54C25C();
        sub_1BE4C58A8(v29);
        return;
      }

      sub_1BE4C58A8(v29);
    }

    else
    {
      sub_1BE4FF104(&v26, &qword_1EBDABAF8);
    }

    if (qword_1EBDABA68 != -1)
    {
      swift_once();
    }

    v29[0] = v9;
    v29[1] = v10;
    v23 = qword_1EBDAD170;
    sub_1BE54C24C();
    v24 = sub_1BE502160();

    sub_1BE4FD8CC(v3, v23, v24);
  }

  else
  {
    if (qword_1EBDABAC8 != -1)
    {
      swift_once();
    }

    v20 = sub_1BE54B2EC();
    sub_1BE4C52BC(v20, qword_1EBDB0C98);
    oslog = sub_1BE54B2BC();
    v21 = sub_1BE54C9AC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BE4B8000, oslog, v21, "ExternalIntelligence sign in is not allowed", v22, 2u);
      MEMORY[0x1BFB48AC0](v22, -1, -1);
    }
  }
}

uint64_t sub_1BE4F5918@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v122 = a3;
  v4 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v119 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v116 = sub_1BE54B39C();
  *&v115 = *(v116 - 8);
  v8 = MEMORY[0x1EEE9AC00](v116, v7);
  v113 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v114 = &v109 - v11;
  v12 = sub_1BE4BF11C(&qword_1EBDAC980, &qword_1BE54FC08);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v109 - v14;
  v121 = sub_1BE4BF11C(&qword_1EBDAC900, &qword_1BE54FB98);
  MEMORY[0x1EEE9AC00](v121, v16);
  v18 = &v109 - v17;
  v19 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE54B3DC();
  v117 = *(v23 - 8);
  v118 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  sub_1BE4C52F4(a1, v28);
  (*(v27 + 216))(&v129, v28, v27);
  if (v129 == 128)
  {
    *&v129 = sub_1BE54B3CC();
    *(&v129 + 1) = v29;
    sub_1BE4FEA4C(v129, v29, v30);
    v31 = sub_1BE54BF8C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    *v18 = sub_1BE54BA3C();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v38 = sub_1BE4BF11C(&qword_1EBDAC958, &qword_1BE54FBE0);
    sub_1BE4F6410(v33, v37, &v18[*(v38 + 44)]);
    sub_1BE4C68C8(v31, v33, v35 & 1);

    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4BF11C(&qword_1EBDAC988, &qword_1BE54FC10);
    sub_1BE4FF864(&qword_1EBDAC990, &qword_1EBDAC900, &qword_1BE54FB98, MEMORY[0x1E69817F8]);
    sub_1BE4FF864(&qword_1EBDAC998, &qword_1EBDAC988, &qword_1BE54FC10, MEMORY[0x1E6981F48]);
    sub_1BE54BC0C();
    return sub_1BE4FF104(v18, &qword_1EBDAC900);
  }

  v111 = v12;
  v112 = v15;
  v40 = (v120 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
  v42 = *v40;
  v41 = v40[1];
  *&v129 = v42;
  *(&v129 + 1) = v41;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v43 = sub_1BE54C24C();
  sub_1BE50149C(v43, v44, v45);

  v46 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  if (sub_1BE4C63BC(v22, 4, v46))
  {
    sub_1BE4FD560();
LABEL_11:
    sub_1BE54BABC();
    sub_1BE54BAAC();
    v68 = a1[3];
    v69 = a1[4];
    sub_1BE4C52F4(a1, v68);
    (*(v69 + 16))(v68, v69);
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v70 = qword_1EBDB0C00;
    v124 = sub_1BE54BF6C();
    v125 = v71;
    v126 = v72 & 1;
    v127 = v73;
    v128 = 1;
    sub_1BE54BC0C();
    goto LABEL_14;
  }

  v47 = v117;
  v48 = v118;
  (*(v117 + 32))(v26, v22, v118);
  if ((sub_1BE53455C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v49 = v114;
  sub_1BE54B3AC();
  v50 = sub_1BE54B38C();
  v52 = v51;
  v53 = *(v115 + 8);
  v54 = v49;
  v55 = v116;
  v53(v54, v116);

  v56 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v56 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
LABEL_10:
    (*(v47 + 8))(v26, v48);
    goto LABEL_11;
  }

  v57 = v47;
  v58 = v113;
  sub_1BE54B3AC();
  v59 = sub_1BE54B38C();
  v61 = v60;
  v62 = v53(v58, v55);
  *&v129 = v59;
  *(&v129 + 1) = v61;
  sub_1BE4FEA4C(v62, v63, v64);
  v124 = sub_1BE54BF8C();
  v125 = v65;
  v126 = v66 & 1;
  v127 = v67;
  v128 = 0;
  sub_1BE54BC0C();
  (*(v57 + 8))(v26, v48);
LABEL_14:
  v74 = v131;
  v115 = v130;
  v116 = v129;
  v119 = v130;
  v120 = v129;
  v117 = *(&v130 + 1);
  v118 = *(&v129 + 1);
  sub_1BE4FEEF0(v129, *(&v129 + 1), v130, *(&v130 + 1));
  *&v129 = sub_1BE54B3CC();
  *(&v129 + 1) = v75;
  sub_1BE4FEA4C(v129, v75, v76);
  v77 = sub_1BE54BF8C();
  v79 = v78;
  v81 = v80;
  sub_1BE54BE8C();
  v82 = sub_1BE54BF5C();
  v84 = v83;
  v86 = v85;

  sub_1BE4C68C8(v77, v79, v81 & 1);

  LODWORD(v129) = sub_1BE54BCFC();
  v87 = sub_1BE54BF4C();
  v89 = v88;
  v110 = v88;
  v91 = v90;
  v93 = v92;
  sub_1BE4C68C8(v82, v84, v86 & 1);

  v123 = v74;
  LOBYTE(v129) = v74;
  LODWORD(v113) = v74;
  v94 = v91 & 1;
  LOBYTE(v124) = v91 & 1;
  sub_1BE4D91B0(v87, v89, v91 & 1);

  v96 = v119;
  v95 = v120;
  v98 = v117;
  v97 = v118;
  sub_1BE4FEEF0(v120, v118, v119, v117);
  sub_1BE4D91B0(v87, v89, v94);

  sub_1BE4C68C8(v87, v89, v94);
  v99 = v93;

  v100 = v96;
  LOBYTE(v93) = v96;
  v101 = v98;
  sub_1BE4FEF90(v95, v97, v100);
  v102 = v112;
  v103 = v115;
  *v112 = v116;
  v102[1] = v103;
  *(v102 + 32) = v113;
  *(v102 + 5) = v87;
  v104 = v87;
  v114 = v87;
  v105 = v110;
  *(v102 + 6) = v110;
  *(v102 + 56) = v94;
  *(v102 + 8) = v99;
  swift_storeEnumTagMultiPayload();
  sub_1BE4FEEF0(v95, v97, v93, v101);
  sub_1BE4D91B0(v104, v105, v94);

  sub_1BE4BF11C(&qword_1EBDAC988, &qword_1BE54FC10);
  sub_1BE4FF864(&qword_1EBDAC990, &qword_1EBDAC900, &qword_1BE54FB98, MEMORY[0x1E69817F8]);
  sub_1BE4FF864(&qword_1EBDAC998, &qword_1EBDAC988, &qword_1BE54FC10, MEMORY[0x1E6981F48]);
  sub_1BE54BC0C();
  LOBYTE(v97) = v119;
  v106 = v120;
  v107 = v118;
  sub_1BE4FEF90(v120, v118, v119);
  sub_1BE4FEF90(v106, v107, v97);
  v108 = v114;
  sub_1BE4C68C8(v114, v105, v94);

  sub_1BE4C68C8(v108, v105, v94);
}

uint64_t sub_1BE4F6410@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v31 = a4;
  v32 = sub_1BE4BF11C(&qword_1EBDACA30, &qword_1BE54FCA8);
  MEMORY[0x1EEE9AC00](v32, v6);
  v8 = &v28 - v7;
  v9 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v28 - v12;
  v14 = sub_1BE4BF11C(&qword_1EBDACA38, &unk_1BE54FCB0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v28 - v20;
  sub_1BE54BE8C();
  v29 = sub_1BE54BF5C();
  v23 = v22;
  LODWORD(v30) = v24;
  v31 = v25;

  sub_1BE54C29C();
  (*(v10 + 16))(v8, v13, v9);
  swift_storeEnumTagMultiPayload();
  sub_1BE4BF11C(&qword_1EBDABB60, &unk_1BE54E4F0);
  sub_1BE4C5F2C();
  sub_1BE4FF864(&qword_1EBDABC48, &qword_1EBDABB58, &unk_1BE54DC90, MEMORY[0x1E697D680]);
  sub_1BE54BC0C();
  (*(v10 + 8))(v13, v9);
  sub_1BE4FF0AC();
  v26 = v29;
  *a5 = v29;
  *(a5 + 8) = v23;
  LOBYTE(v13) = v30 & 1;
  *(a5 + 16) = v30 & 1;
  *(a5 + 24) = v31;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  sub_1BE4BF11C(&qword_1EBDACA40, &qword_1BE54FCC0);
  sub_1BE4FF0AC();
  sub_1BE4D91B0(v26, v23, v13);

  sub_1BE4FF104(v21, &qword_1EBDACA38);
  sub_1BE4FF104(v18, &qword_1EBDACA38);
  sub_1BE4C68C8(v26, v23, v13);
}

uint64_t sub_1BE4F6794@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4F6874@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v197 = a2;
  v198 = a3;
  v182 = sub_1BE4BF11C(&qword_1EBDAC720, &qword_1BE54FA00);
  MEMORY[0x1EEE9AC00](v182, v4);
  v174 = v162 - v5;
  v6 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v7 = v6 - 8;
  v168 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v169 = v9;
  v170 = v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1BE4BF11C(&qword_1EBDAC8F0, &qword_1BE54FB88);
  v11 = MEMORY[0x1EEE9AC00](v171, v10);
  v172 = v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v173 = v162 - v14;
  v178 = sub_1BE4BF11C(&qword_1EBDAC8F8, &qword_1BE54FB90);
  MEMORY[0x1EEE9AC00](v178, v15);
  v180 = v162 - v16;
  v202 = sub_1BE4BF11C(&qword_1EBDAC700, &qword_1BE54F9F0);
  MEMORY[0x1EEE9AC00](v202, v17);
  v181 = v162 - v18;
  v179 = sub_1BE4BF11C(&qword_1EBDAC710, &qword_1BE54F9F8);
  MEMORY[0x1EEE9AC00](v179, v19);
  v166 = v162 - v20;
  v21 = sub_1BE4BF11C(&qword_1EBDAC900, &qword_1BE54FB98);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v165 = v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v167 = (v162 - v26);
  v191 = sub_1BE4BF11C(&qword_1EBDAC6F0, &qword_1BE54F9E8);
  MEMORY[0x1EEE9AC00](v191, v27);
  v177 = (v162 - v28);
  v199 = sub_1BE4BF11C(&qword_1EBDAC908, &qword_1BE54FBA0);
  MEMORY[0x1EEE9AC00](v199, v29);
  v201 = v162 - v30;
  v189 = sub_1BE4BF11C(&qword_1EBDAC910, &qword_1BE54FBA8);
  MEMORY[0x1EEE9AC00](v189, v31);
  v187 = v162 - v32;
  v200 = sub_1BE4BF11C(&qword_1EBDAC6D0, &qword_1BE54F9D8);
  MEMORY[0x1EEE9AC00](v200, v33);
  v188 = v162 - v34;
  v190 = sub_1BE4BF11C(&qword_1EBDAC6E0, &qword_1BE54F9E0);
  MEMORY[0x1EEE9AC00](v190, v35);
  v184 = v162 - v36;
  v37 = sub_1BE4BF11C(&qword_1EBDAC918, &qword_1BE54FBB0);
  v194 = *(v37 - 8);
  v195 = v37;
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v185 = v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v41);
  v196 = v162 - v42;
  v43 = sub_1BE4BF11C(&qword_1EBDAC920, &qword_1BE54FBB8);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v186 = v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v47);
  v203 = v162 - v48;
  v49 = sub_1BE4BF11C(&qword_1EBDAC928, &qword_1BE54FBC0);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8, v50);
  v183 = v162 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v53);
  v193 = (v162 - v54);
  v55 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v57 = MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v176 = v162 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v175 = v162 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60, v62);
  v65 = v162 - v64;
  MEMORY[0x1EEE9AC00](v63, v66);
  v68 = v162 - v67;
  v192 = sub_1BE54B3DC();
  v69 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v70);
  v72 = v162 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = (a1 + *(v7 + 44));
  v74 = *v73;
  v75 = v73[1];
  v204 = *v73;
  v205 = v75;
  v76 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v77 = sub_1BE54C24C();
  sub_1BE50149C(v77, v78, v79);

  v80 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  if (sub_1BE4C63BC(v68, 4, v80))
  {
    v81 = v197;
    sub_1BE4FD560();
    v204 = v74;
    v205 = v75;
    v82 = sub_1BE54C24C();
    sub_1BE50149C(v82, v83, v84);

    v85 = sub_1BE4C63BC(v65, 4, v80);
    sub_1BE4FD560();
    if (v85 == 4)
    {
      v86 = sub_1BE54BA4C();
      v87 = v177;
      *v177 = v86;
      v87[1] = 0;
      *(v87 + 16) = 1;
      v88 = sub_1BE4BF11C(&qword_1EBDAC968, &qword_1BE54FBF0);
      sub_1BE4F8170(a1, v87 + *(v88 + 44));
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4FF864(&qword_1EBDAC6D8, &qword_1EBDAC6E0, &qword_1BE54F9E0, MEMORY[0x1E6981F48]);
      sub_1BE4FF864(&qword_1EBDAC6E8, &qword_1EBDAC6F0, &qword_1BE54F9E8, MEMORY[0x1E69817F8]);
      v89 = v188;
      sub_1BE54BC0C();
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4FE144();
      sub_1BE4FE228();
      sub_1BE54BC0C();
      sub_1BE4FF104(v89, &qword_1EBDAC6D0);
      v90 = v87;
      v91 = &qword_1EBDAC6F0;
    }

    else
    {
      v109 = v80;
      v110 = v81;
      v111 = v81[3];
      v112 = v81[4];
      sub_1BE4C52F4(v81, v111);
      (*(v112 + 216))(&v204, v111, v112);
      v113 = a1;
      v114 = v76;
      v115 = v176;
      v116 = v175;
      if (v204 != 128 || (v204 = v74, v205 = v75, v117 = sub_1BE54C24C(), sub_1BE50149C(v117, v118, v119), , sub_1BE4C63F8(v115, 1, 4, v109), sub_1BE5005B4(v116, v115), v121 = v120, sub_1BE4FD560(), sub_1BE4FD560(), (v121 & 1) != 0) || (v204 = v74, v205 = v75, v122 = sub_1BE54C24C(), sub_1BE50149C(v122, v123, v124), , sub_1BE4C63F8(v115, 2, 4, v109), sub_1BE5005B4(v116, v115), v126 = v125, sub_1BE4FD560(), sub_1BE4FD560(), (v126 & 1) != 0))
      {
        v162[1] = v113;
        v197 = v114;
        v127 = v170;
        sub_1BE4FCF80();
        v128 = (*(v168 + 80) + 16) & ~*(v168 + 80);
        v129 = swift_allocObject();
        v130 = sub_1BE4FCFD8(v127, v129 + v128);
        MEMORY[0x1EEE9AC00](v130, v131);
        v162[-2] = v113;
        sub_1BE4BF11C(&qword_1EBDAC930, &qword_1BE54FBC8);
        sub_1BE4FEFF4();
        v132 = v173;
        sub_1BE54C29C();
        v204 = v74;
        v205 = v75;
        v133 = sub_1BE54C24C();
        sub_1BE50149C(v133, v134, v135);

        sub_1BE4C63F8(v115, 2, 4, v109);
        sub_1BE5005B4(v116, v115);
        v137 = v136;
        sub_1BE4FD560();
        sub_1BE4FD560();
        KeyPath = swift_getKeyPath();
        v139 = swift_allocObject();
        *(v139 + 16) = v137 & 1;
        v140 = &v132[*(v171 + 36)];
        *v140 = KeyPath;
        v140[1] = sub_1BE4FF8C4;
        v140[2] = v139;
        v141 = v203;
        sub_1BE4F7E38(v203);
        v142 = v172;
        sub_1BE4FF0AC();
        v143 = v186;
        sub_1BE4FF0AC();
        v144 = v174;
        sub_1BE4FF0AC();
        sub_1BE4BF11C(&qword_1EBDAC950, &qword_1BE54FBD8);
        sub_1BE4FF0AC();
        sub_1BE4FF104(v143, &qword_1EBDAC920);
        sub_1BE4FF104(v142, &qword_1EBDAC8F0);
        sub_1BE4FF0AC();
        swift_storeEnumTagMultiPayload();
        v145 = MEMORY[0x1E6981F48];
        sub_1BE4FF864(&qword_1EBDAC708, &qword_1EBDAC710, &qword_1BE54F9F8, MEMORY[0x1E6981F48]);
        sub_1BE4FF864(&qword_1EBDAC718, &qword_1EBDAC720, &qword_1BE54FA00, v145);
        v146 = v181;
        sub_1BE54BC0C();
        sub_1BE4FF0AC();
        swift_storeEnumTagMultiPayload();
        sub_1BE4FE144();
        sub_1BE4FE228();
        sub_1BE54BC0C();
        sub_1BE4FF104(v146, &qword_1EBDAC700);
        sub_1BE4FF104(v144, &qword_1EBDAC720);
        sub_1BE4FF104(v141, &qword_1EBDAC920);
        v90 = v132;
        v91 = &qword_1EBDAC8F0;
      }

      else
      {
        v147 = sub_1BE54BA3C();
        v148 = v167;
        *v167 = v147;
        v148[1] = 0;
        *(v148 + 16) = 1;
        v149 = sub_1BE4BF11C(&qword_1EBDAC958, &qword_1BE54FBE0);
        sub_1BE4F6410(0x80000001BE5540D0, MEMORY[0x1E69E7CC0], v148 + *(v149 + 44));
        v150 = v196;
        sub_1BE4F1538(v110, v196);
        v151 = v165;
        sub_1BE4FF0AC();
        v152 = v194;
        v153 = *(v194 + 16);
        v154 = v185;
        v155 = v150;
        v156 = v195;
        v153(v185, v155, v195);
        v157 = v166;
        sub_1BE4FF0AC();
        v158 = sub_1BE4BF11C(&qword_1EBDAC960, &qword_1BE54FBE8);
        v153((v157 + *(v158 + 48)), v154, v156);
        v159 = *(v152 + 8);
        v159(v154, v156);
        sub_1BE4FF104(v151, &qword_1EBDAC900);
        sub_1BE4FF0AC();
        swift_storeEnumTagMultiPayload();
        v160 = MEMORY[0x1E6981F48];
        sub_1BE4FF864(&qword_1EBDAC708, &qword_1EBDAC710, &qword_1BE54F9F8, MEMORY[0x1E6981F48]);
        sub_1BE4FF864(&qword_1EBDAC718, &qword_1EBDAC720, &qword_1BE54FA00, v160);
        v161 = v181;
        sub_1BE54BC0C();
        sub_1BE4FF0AC();
        swift_storeEnumTagMultiPayload();
        sub_1BE4FE144();
        sub_1BE4FE228();
        sub_1BE54BC0C();
        sub_1BE4FF104(v161, &qword_1EBDAC700);
        sub_1BE4FF104(v157, &qword_1EBDAC710);
        v159(v196, v156);
        v90 = v167;
        v91 = &qword_1EBDAC900;
      }
    }

    return sub_1BE4FF104(v90, v91);
  }

  else
  {
    v164 = v69;
    v92 = *(v69 + 32);
    v163 = v72;
    v92(v72, v68, v192);
    v93 = sub_1BE54BB1C();
    v94 = v193;
    *v193 = v93;
    v94[1] = 0;
    *(v94 + 16) = 1;
    v95 = sub_1BE4BF11C(&qword_1EBDAC970, &qword_1BE54FBF8);
    v96 = v197;
    sub_1BE4F5918(v197, a1, v94 + *(v95 + 44));
    sub_1BE4F7E38(v203);
    v97 = v196;
    sub_1BE4F1538(v96, v196);
    v98 = v183;
    sub_1BE4FF0AC();
    v99 = v186;
    sub_1BE4FF0AC();
    v100 = *(v194 + 16);
    v101 = v185;
    v102 = v97;
    v103 = v195;
    v100(v185, v102, v195);
    v104 = v184;
    sub_1BE4FF0AC();
    v105 = sub_1BE4BF11C(&qword_1EBDAC978, &qword_1BE54FC00);
    sub_1BE4FF0AC();
    v100((v104 + *(v105 + 64)), v101, v103);
    v106 = *(v194 + 8);
    v106(v101, v103);
    sub_1BE4FF104(v99, &qword_1EBDAC920);
    sub_1BE4FF104(v98, &qword_1EBDAC928);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC6D8, &qword_1EBDAC6E0, &qword_1BE54F9E0, MEMORY[0x1E6981F48]);
    sub_1BE4FF864(&qword_1EBDAC6E8, &qword_1EBDAC6F0, &qword_1BE54F9E8, MEMORY[0x1E69817F8]);
    v107 = v188;
    sub_1BE54BC0C();
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FE144();
    sub_1BE4FE228();
    sub_1BE54BC0C();
    sub_1BE4FF104(v107, &qword_1EBDAC6D0);
    sub_1BE4FF104(v104, &qword_1EBDAC6E0);
    v106(v196, v195);
    sub_1BE4FF104(v203, &qword_1EBDAC920);
    sub_1BE4FF104(v193, &qword_1EBDAC928);
    return (*(v164 + 8))(v163, v192);
  }
}

uint64_t sub_1BE4F7E38@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v3 = v2 - 8;
  v27 = *(v2 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26 - v8;
  v10 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v26 - v12;
  v14 = *(v3 + 44);
  v28 = v1;
  v15 = (v1 + v14);
  v16 = *v15;
  v17 = v15[1];
  v31 = *v15;
  v32 = v17;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v18 = sub_1BE5021C8();

  if (v18)
  {
    v31 = v16;
    v32 = v17;
    sub_1BE54C24C();
    sub_1BE502160();

    sub_1BE52051C(v13);

    v19 = sub_1BE54AE3C();
    v20 = 1;
    v21 = sub_1BE4C63BC(v13, 1, v19);
    sub_1BE4FF104(v13, &qword_1EBDABEE8);
    v22 = v30;
    if (v21 != 1)
    {
      sub_1BE4FCF80();
      v23 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v24 = swift_allocObject();
      sub_1BE4FCFD8(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
      sub_1BE54C29C();
      (*(v29 + 32))(v22, v9, v6);
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
    v22 = v30;
  }

  return sub_1BE4C63F8(v22, v20, 1, v6);
}

uint64_t sub_1BE4F8170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_1BE54ADAC();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v56 - v12;
  v14 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v19 = sub_1BE4BF11C(&qword_1EBDAC8F0, &qword_1BE54FB88);
  v20 = v19 - 8;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v57 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v56 - v25;
  sub_1BE4FCF80();
  v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v28 = swift_allocObject();
  sub_1BE4FCFD8(&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v62 = a1;
  sub_1BE4BF11C(&qword_1EBDAC930, &qword_1BE54FBC8);
  sub_1BE4FEFF4();
  sub_1BE54C29C();
  v29 = (a1 + *(v15 + 44));
  v31 = *v29;
  v30 = v29[1];
  v63 = v31;
  v64 = v30;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v32 = sub_1BE54C24C();
  sub_1BE50149C(v32, v33, v34);

  v35 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4C63F8(v10, 2, 4, v35);
  sub_1BE5005B4(v13, v10);
  LOBYTE(v16) = v36;
  sub_1BE4FD560();
  sub_1BE4FD560();
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v16 & 1;
  v39 = &v26[*(v20 + 44)];
  *v39 = KeyPath;
  v39[1] = sub_1BE4FF8C4;
  v39[2] = v38;
  (*(v59 + 16))(v58, a1 + *(v15 + 32), v60);
  v40 = sub_1BE54BF7C();
  v42 = v41;
  LOBYTE(v20) = v43;
  LODWORD(v63) = sub_1BE54BCFC();
  v44 = sub_1BE54BF4C();
  v46 = v45;
  LOBYTE(v15) = v47;
  v49 = v48;
  sub_1BE4C68C8(v40, v42, v20 & 1);

  v50 = v57;
  sub_1BE4FF0AC();
  v51 = v61;
  sub_1BE4FF0AC();
  v52 = sub_1BE4BF11C(&qword_1EBDAC9A0, &unk_1BE54FC18);
  v53 = v51 + *(v52 + 48);
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = v51 + *(v52 + 64);
  *v54 = v44;
  *(v54 + 8) = v46;
  *(v54 + 16) = v15 & 1;
  *(v54 + 24) = v49;
  sub_1BE4D91B0(v44, v46, v15 & 1);

  sub_1BE4FF104(v26, &qword_1EBDAC8F0);
  sub_1BE4C68C8(v44, v46, v15 & 1);

  return sub_1BE4FF104(v50, &qword_1EBDAC8F0);
}

uint64_t sub_1BE4F868C@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4F876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v96 = a2;
  v85 = sub_1BE4BF11C(&qword_1EBDAC860, &qword_1BE54FAD0);
  MEMORY[0x1EEE9AC00](v85, v3);
  v87 = (&v81 - v4);
  v95 = sub_1BE4BF11C(&qword_1EBDAC868, &qword_1BE54FAD8);
  MEMORY[0x1EEE9AC00](v95, v5);
  v88 = &v81 - v6;
  v93 = sub_1BE4BF11C(&qword_1EBDAC870, &qword_1BE54FAE0);
  MEMORY[0x1EEE9AC00](v93, v7);
  v94 = &v81 - v8;
  v9 = sub_1BE54BD4C();
  v91 = *(v9 - 8);
  v92 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE4BF11C(&qword_1EBDAC878, &qword_1BE54FAE8);
  v89 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v81 - v15;
  v17 = sub_1BE4BF11C(&qword_1EBDAC880, &qword_1BE54FAF0);
  v90 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v81 - v19;
  v21 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36);
  v84 = v2;
  v26 = (v2 + v25);
  v27 = *v26;
  v28 = v26[1];
  *&v101 = *v26;
  *(&v101 + 1) = v28;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v29 = sub_1BE54C24C();
  sub_1BE50149C(v29, v30, v31);

  v32 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v86 = v24;
  if (sub_1BE4C63BC(v24, 4, v32) == 3)
  {
    sub_1BE54B66C();
    sub_1BE54BD3C();
    v33 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878, &qword_1BE54FAE8, MEMORY[0x1E697BF38]);
    v34 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    v35 = v92;
    sub_1BE54BFDC();
    (*(v91 + 8))(v12, v35);
    (*(v89 + 8))(v16, v13);
    v36 = v90;
    (*(v90 + 16))(v94, v20, v17);
    swift_storeEnumTagMultiPayload();
    *&v101 = v13;
    *(&v101 + 1) = v35;
    *&v102 = v33;
    *(&v102 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    sub_1BE4FED14();
    sub_1BE54BC0C();
    return (*(v36 + 8))(v20, v17);
  }

  else
  {
    v38 = v91;
    v81 = v13;
    v82 = v17;
    type metadata accessor for LegacyGATUserDefaults();
    v39 = sub_1BE536D88();
    if (v39 == 2)
    {
      *&v101 = v27;
      *(&v101 + 1) = v28;
      sub_1BE54C24C();
      v40 = sub_1BE5024AC();

      v41 = sub_1BE50B920(v83, v40);

      if (v41 == 3)
      {
        sub_1BE54B66C();
        v42 = v12;
        sub_1BE54BD3C();
        v84 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878, &qword_1BE54FAE8, MEMORY[0x1E697BF38]);
        v43 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
        v44 = v20;
        v45 = v81;
        v46 = v92;
        sub_1BE54BFDC();
        (*(v38 + 8))(v42, v46);
        (*(v89 + 8))(v16, v45);
        v47 = v46;
        v48 = v90;
        v49 = v20;
        v50 = v82;
        (*(v90 + 16))(v87, v49, v82);
        swift_storeEnumTagMultiPayload();
        v91 = sub_1BE4BF11C(&qword_1EBDAC898, &qword_1BE54FAF8);
        sub_1BE4FEB58(&qword_1EBDAC8A0, &qword_1EBDAC898, &qword_1BE54FAF8, sub_1BE4FEBD0);
        *&v101 = v45;
        *(&v101 + 1) = v46;
        *&v102 = v84;
        *(&v102 + 1) = v43;
        swift_getOpaqueTypeConformance2();
        v51 = v88;
        sub_1BE54BC0C();
        (*(v48 + 8))(v44, v50);
      }

      else
      {
        sub_1BE4F9450(v41, &v101);
        v66 = v101;
        v67 = v102;
        v68 = BYTE1(v103);
        v69 = v103;
        v70 = sub_1BE54BCFC();
        LODWORD(v89) = v68;
        v71 = 256;
        if (!v68)
        {
          v71 = 0;
        }

        v90 = *(&v66 + 1);
        v91 = v66;
        v97 = v66;
        v98 = v67;
        v99 = v71 & 0xFFFFFFFFFFFFFF00 | v69 | (v70 << 32);
        v100 = 1;
        sub_1BE4FEE8C(v66, *(&v66 + 1), v67, *(&v67 + 1), v69, v68);
        sub_1BE4BF11C(&qword_1EBDAC8B0, &qword_1BE54FB00);
        sub_1BE4FEBD0();
        sub_1BE54BC0C();
        v72 = v103;
        v73 = v104;
        v74 = v102;
        v75 = v87;
        *v87 = v101;
        v75[1] = v74;
        *(v75 + 4) = v72;
        *(v75 + 40) = v73;
        swift_storeEnumTagMultiPayload();
        sub_1BE4BF11C(&qword_1EBDAC898, &qword_1BE54FAF8);
        sub_1BE4FEB58(&qword_1EBDAC8A0, &qword_1EBDAC898, &qword_1BE54FAF8, sub_1BE4FEBD0);
        v76 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878, &qword_1BE54FAE8, MEMORY[0x1E697BF38]);
        v77 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
        v78 = v81;
        v47 = v92;
        *&v101 = v81;
        *(&v101 + 1) = v92;
        *&v102 = v76;
        *(&v102 + 1) = v77;
        swift_getOpaqueTypeConformance2();
        v51 = v88;
        sub_1BE54BC0C();
        v45 = v78;
        sub_1BE4FEF2C(v91, v90, v67, *(&v67 + 1), v69, v89);
      }
    }

    else
    {
      if (v39)
      {
        v52 = 2;
      }

      else
      {
        v52 = 0;
      }

      sub_1BE4F9450(v52, &v101);
      v53 = v101;
      v54 = v102;
      v55 = BYTE1(v103);
      v56 = v103;
      v57 = sub_1BE54BCFC();
      LODWORD(v90) = v55;
      v58 = 256;
      if (!v55)
      {
        v58 = 0;
      }

      v91 = v53;
      v97 = v53;
      v98 = v54;
      v99 = v58 & 0xFFFFFFFFFFFFFF00 | v56 | (v57 << 32);
      v100 = 0;
      sub_1BE4FEE8C(v53, *(&v53 + 1), v54, *(&v54 + 1), v56, v55);
      sub_1BE4BF11C(&qword_1EBDAC8B0, &qword_1BE54FB00);
      sub_1BE4FEBD0();
      sub_1BE54BC0C();
      v59 = v103;
      v60 = v104;
      v61 = v102;
      v62 = v87;
      *v87 = v101;
      v62[1] = v61;
      *(v62 + 4) = v59;
      *(v62 + 40) = v60;
      swift_storeEnumTagMultiPayload();
      sub_1BE4BF11C(&qword_1EBDAC898, &qword_1BE54FAF8);
      sub_1BE4FEB58(&qword_1EBDAC8A0, &qword_1EBDAC898, &qword_1BE54FAF8, sub_1BE4FEBD0);
      v63 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878, &qword_1BE54FAE8, MEMORY[0x1E697BF38]);
      v64 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
      v65 = v81;
      v47 = v92;
      *&v101 = v81;
      *(&v101 + 1) = v92;
      *&v102 = v63;
      *(&v102 + 1) = v64;
      swift_getOpaqueTypeConformance2();
      v51 = v88;
      sub_1BE54BC0C();
      v45 = v65;
      sub_1BE4FEF2C(v91, *(&v53 + 1), v54, *(&v54 + 1), v56, v90);
    }

    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    v79 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878, &qword_1BE54FAE8, MEMORY[0x1E697BF38]);
    v80 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    *&v101 = v45;
    *(&v101 + 1) = v47;
    *&v102 = v79;
    *(&v102 + 1) = v80;
    swift_getOpaqueTypeConformance2();
    sub_1BE4FED14();
    sub_1BE54BC0C();
    sub_1BE4FF104(v51, &qword_1EBDAC868);
    return sub_1BE4FD560();
  }
}

double sub_1BE4F9450@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    sub_1BE54BADC();
    if (qword_1EBDABA80 == -1)
    {
LABEL_6:
      v3 = qword_1EBDB0C00;
      v4 = sub_1BE54BF6C();
      v6 = v5;
      v8 = v7 & 1;
      sub_1BE4D91B0(v4, v5, v7 & 1);

      sub_1BE54BC0C();
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      sub_1BE4C68C8(v4, v6, v8);

      goto LABEL_10;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    sub_1BE54BADC();
    if (qword_1EBDABA80 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBDB0C00;
  sub_1BE54BF6C();
  sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
  sub_1BE4FDE34();
  sub_1BE54BC0C();
LABEL_10:
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 33) = v14;
  return result;
}

uint64_t sub_1BE4F97C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_1BE4BF11C(&qword_1EBDAC830, &qword_1BE54FAA0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v37 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v36 = v30 - v10;
  v33 = sub_1BE4BF11C(&qword_1EBDAC838, &qword_1BE54FAA8);
  v12 = MEMORY[0x1EEE9AC00](v33, v11);
  v35 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v30 - v15;
  *v16 = sub_1BE54BA4C();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v30[1] = sub_1BE4BF11C(&qword_1EBDAC840, &qword_1BE54FAB0);
  v34 = v16;
  v31 = a1;
  sub_1BE4F9BD8(a1);
  v17 = a2[3];
  v18 = a2[4];
  sub_1BE4C52F4(a2, v17);
  v19 = (*(v18 + 224))(v17, v18);
  v20 = *(v19 + 16);
  v32 = v19;
  v21 = (v19 + 32);
  while (2)
  {
    if (v20)
    {
      switch(*v21)
      {
        case 3:

          break;
        default:
          v22 = sub_1BE54CCDC();

          ++v21;
          --v20;
          if ((v22 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v27 = sub_1BE54BA4C();
      v26 = v35;
      *v35 = v27;
      *(v26 + 8) = 0;
      *(v26 + 16) = 1;
      sub_1BE4F9BD8(v31);
      v25 = v36;
      sub_1BE4BCB1C();
      v23 = 0;
      v24 = v37;
    }

    else
    {

      v23 = 1;
      v24 = v37;
      v26 = v35;
      v25 = v36;
    }

    break;
  }

  v28 = v34;
  sub_1BE4C63F8(v25, v23, 1, v33);
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  sub_1BE4BF11C(&qword_1EBDAC848, &qword_1BE54FAB8);
  sub_1BE4FF0AC();
  sub_1BE4FF104(v25, &qword_1EBDAC830);
  sub_1BE4FF104(v28, &qword_1EBDAC838);
  sub_1BE4FF104(v24, &qword_1EBDAC830);
  return sub_1BE4FF104(v26, &qword_1EBDAC838);
}

void sub_1BE4F9BD8(uint64_t a1)
{
  sub_1BE4FFB64();
  v35 = v2;
  v37 = v3;
  sub_1BE4FFD44();
  v38 = sub_1BE54B40C();
  sub_1BE4C7500();
  v36 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE4C757C();
  v9 = v8 - v7;
  v10 = sub_1BE4BF11C(&qword_1EBDAC850, &qword_1BE54FAC0);
  v11 = sub_1BE4C7570(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1BE4CE5E4();
  v39 = v13;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC(&qword_1EBDABA80);
  }

  v18 = qword_1EBDB0C00;
  v19 = sub_1BE54BF6C();
  v21 = v20;
  v23 = v22;
  v40 = sub_1BE54BCEC();
  v24 = sub_1BE54BF4C();
  v26 = v25;
  HIDWORD(v34) = v27;
  v29 = v28;
  sub_1BE4C68C8(v19, v21, v23 & 1);

  v30 = v36;
  v31 = v38;
  (*(v36 + 104))(v9, *v35, v38);
  sub_1BE4F876C(v9, v17);
  (*(v30 + 8))(v9, v31);
  sub_1BE4FF0AC();
  *v1 = v24;
  *(v1 + 8) = v26;
  LOBYTE(v30) = BYTE4(v34) & 1;
  *(v1 + 16) = BYTE4(v34) & 1;
  *(v1 + 24) = v29;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  sub_1BE4BF11C(&qword_1EBDAC858, &qword_1BE54FAC8);
  sub_1BE4FF0AC();
  sub_1BE4D91B0(v24, v26, v30);

  sub_1BE4FF104(v17, &qword_1EBDAC850);
  v32 = sub_1BE4FFD2C();
  sub_1BE4FF104(v32, v33);
  sub_1BE4C68C8(v24, v26, v30);

  sub_1BE4FFB4C();
}

id sub_1BE4F9ED8@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v3 = v2 - 8;
  v51 = *(v2 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v54 = &v47 - v8;
  v9 = sub_1BE4BF11C(&qword_1EBDAC820, &unk_1BE54FA90);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v47 = &v47 - v14;
  v15 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v47 - v17;
  v19 = *(v3 + 44);
  v53 = v1;
  v20 = (v1 + v19);
  v21 = *v20;
  v22 = v20[1];
  v56 = *v20;
  v57 = v22;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE502160();

  sub_1BE52051C(v18);

  v23 = sub_1BE54AE3C();
  v24 = 1;
  v25 = sub_1BE4C63BC(v18, 1, v23);
  sub_1BE4FF104(v18, &qword_1EBDABEE8);
  v26 = v25 == 1;
  v27 = v55;
  if (v26)
  {
    return sub_1BE4C63F8(v27, v24, 1, v9);
  }

  v56 = v21;
  v57 = v22;
  sub_1BE54C24C();
  sub_1BE502160();

  v28 = sub_1BE5205BC();
  v30 = v29;

  if (!v30)
  {
    v24 = 1;
    return sub_1BE4C63F8(v27, v24, 1, v9);
  }

  v56 = v28;
  v57 = v30;
  v31 = v52;
  sub_1BE4FCF80();
  v32 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v33 = swift_allocObject();
  v34 = sub_1BE4FCFD8(v31, v33 + v32);
  sub_1BE4FEA4C(v34, v35, v36);
  v37 = v54;
  sub_1BE54C2AC();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v39 = result;
    v40 = [result isExternalIntelligenceSignInAllowed];

    if (v40)
    {
      type metadata accessor for GenerativePartnerServiceUserDefaults();
      v41 = sub_1BE53EA04() ^ 1;
    }

    else
    {
      v41 = 1;
    }

    KeyPath = swift_getKeyPath();
    v43 = swift_allocObject();
    *(v43 + 16) = v41 & 1;
    v44 = v48;
    (*(v49 + 32))(v48, v37, v50);
    v45 = (v44 + *(v9 + 36));
    *v45 = KeyPath;
    v45[1] = sub_1BE4FF8C4;
    v45[2] = v43;
    v46 = v47;
    sub_1BE4FEAA0(v44, v47);
    sub_1BE4FEAA0(v46, v27);
    v24 = 0;
    return sub_1BE4C63F8(v27, v24, 1, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE4FA368@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE54BA4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(sub_1BE4BF11C(&qword_1EBDACA60, &qword_1BE54FD58) + 44);
  *v4 = sub_1BE54BB1C();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = sub_1BE4BF11C(&qword_1EBDACA68, &qword_1BE54FD60);
  return sub_1BE4FADB4(a1, v4 + *(v5 + 44));
}

uint64_t sub_1BE4FA3E8@<X0>(__int128 *a1@<X8>)
{
  v69 = a1;
  v1 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v64 = sub_1BE54ACEC();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v3);
  v62 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1BE54ACFC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v5);
  v61 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE54AD1C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v58[1] = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54AD3C();
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v65 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v58 - v19;
  v21 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v25 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  *&v68 = sub_1BE54ADAC();
  *&v67 = *(v68 - 8);
  v28 = MEMORY[0x1EEE9AC00](v68, v27);
  v30 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = v58 - v32;
  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (!v79)
  {
    sub_1BE4FF104(v78, &qword_1EBDAC550);
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    goto LABEL_8;
  }

  v58[0] = v10;
  sub_1BE4C52F4(v78, v79);
  sub_1BE4EB2CC(&v75);
  sub_1BE4C58A8(v78);
  if (!*(&v76 + 1))
  {
LABEL_8:
    result = sub_1BE4FF104(&v75, &qword_1EBDABAF8);
    v47 = 0uLL;
    v48 = -1;
    v49 = 0uLL;
    goto LABEL_11;
  }

  sub_1BE4BF094(&v75, v78);
  sub_1BE4C6918(v78, &v75);
  sub_1BE512114(&v75, v33);
  sub_1BE4FF104(&v75, &qword_1EBDABAF8);
  sub_1BE54C68C();
  sub_1BE54C67C();
  sub_1BE4C52F4(v78, v79);
  LLMProvider.localizedTermsTitle()();
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v35 = sub_1BE54C71C();
  v37 = v36;
  v38 = v79;
  v39 = v80;
  sub_1BE4C52F4(v78, v79);
  (*(v39 + 176))(v38, v39);
  v40 = sub_1BE54AE3C();
  if (sub_1BE4C63BC(v20, 1, v40) == 1)
  {

    sub_1BE4FF104(v20, &qword_1EBDABEE8);
    v41 = v67;
    v42 = v68;
    (*(v67 + 16))(v30, v33, v68);
    v70 = sub_1BE54BF7C();
    v71 = v43;
    v72 = v44 & 1;
    v73 = v45;
    v74 = 1;
    sub_1BE54BC0C();
    (*(v41 + 8))(v33, v42);
  }

  else
  {
    v50 = sub_1BE54ADEC();
    v52 = v51;
    (*(*(v40 - 8) + 8))(v20, v40);
    *&v75 = 91;
    *(&v75 + 1) = 0xE100000000000000;
    MEMORY[0x1BFB47CA0](v35, v37);

    MEMORY[0x1BFB47CA0](10333, 0xE200000000000000);
    MEMORY[0x1BFB47CA0](v50, v52);

    MEMORY[0x1BFB47CA0](41, 0xE100000000000000);
    sub_1BE4C63F8(v17, 1, 1, v40);
    (*(v59 + 104))(v61, *MEMORY[0x1E6968750], v60);
    (*(v63 + 104))(v62, *MEMORY[0x1E6968728], v64);
    sub_1BE54AD0C();
    v53 = v65;
    sub_1BE54AD2C();
    sub_1BE54BABC();
    sub_1BE54BAAC();
    sub_1BE54BA8C();
    sub_1BE54BAAC();
    sub_1BE54BA7C();
    sub_1BE54BAAC();
    sub_1BE54BAEC();
    v70 = sub_1BE54BF6C();
    v71 = v54;
    v72 = v55 & 1;
    v73 = v56;
    v74 = 0;
    sub_1BE54BC0C();
    (*(v66 + 8))(v53, v58[0]);
    (*(v67 + 8))(v33, v68);
  }

  v67 = v76;
  v68 = v75;
  v48 = v77;
  result = sub_1BE4C58A8(v78);
  v47 = v68;
  v49 = v67;
LABEL_11:
  v57 = v69;
  *v69 = v47;
  v57[1] = v49;
  *(v57 + 32) = v48;
  return result;
}

uint64_t sub_1BE4FADB4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE54BA4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1BE4BF11C(&qword_1EBDACA70, &qword_1BE54FD68);
  sub_1BE4FAE94(a1, a2 + *(v4 + 44));
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  LOBYTE(a1) = sub_1BE53EA04();
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = (a1 & 1) == 0;
  result = sub_1BE4BF11C(&qword_1EBDACA78, &qword_1BE54FD70);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_1BE4FF8C4;
  v8[2] = v6;
  return result;
}

uint64_t sub_1BE4FAE94@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v110 = sub_1BE4BF11C(&qword_1EBDACA80, &qword_1BE54FD78);
  MEMORY[0x1EEE9AC00](v110, v3);
  v106 = (&v80 - v4);
  v5 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v6 = v5 - 8;
  v103 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v104 = v8;
  v93 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BE54AD8C();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v9);
  v97 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BE54AF6C();
  v94 = *(v96 - 8);
  v12 = MEMORY[0x1EEE9AC00](v96, v11);
  v92 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v90 = &v80 - v15;
  v108 = sub_1BE54C6BC();
  v91 = *(v108 - 8);
  v17 = MEMORY[0x1EEE9AC00](v108, v16);
  v89 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v88 = &v80 - v20;
  v21 = sub_1BE54ADAC();
  v101 = *(v21 - 8);
  v102 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v95 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v105 = *(v100 - 8);
  v25 = MEMORY[0x1EEE9AC00](v100, v24);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v80 - v29;
  v31 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v109 = sub_1BE4BF11C(&qword_1EBDACA88, &qword_1BE54FD80);
  MEMORY[0x1EEE9AC00](v109, v33);
  v35 = &v80 - v34;
  v36 = sub_1BE4BF11C(&qword_1EBDAC7B8, &qword_1BE54FA50);
  v107 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v80 - v38;
  v40 = *(v6 + 44);
  v112 = a1;
  v41 = (a1 + v40);
  v42 = *v41;
  v43 = v41[1];
  v115 = *v41;
  v116 = v43;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(&v115);

  v44 = v118;
  sub_1BE4FF104(&v115, &qword_1EBDABAF8);
  if (v44)
  {
    v113 = v42;
    v114 = v43;
    sub_1BE54C26C();
    v45 = v115;
    v46 = v116;
    v47 = v117;
    swift_getKeyPath();
    v115 = v45;
    v116 = v46;
    v117 = v47;
    sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
    sub_1BE54C31C();

    MEMORY[0x1EEE9AC00](v48, v49);
    sub_1BE54C2DC();
    v50 = v107;
    (*(v107 + 16))(v35, v39, v36);
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC7B0, &qword_1EBDAC7B8, &qword_1BE54FA50, MEMORY[0x1E697D6A8]);
    sub_1BE4FF864(&qword_1EBDACA98, &qword_1EBDACA80, &qword_1BE54FD78, MEMORY[0x1E6981F48]);
    sub_1BE54BC0C();
    return (*(v50 + 8))(v39, v36);
  }

  else
  {
    v52 = v88;
    v85 = v27;
    v87 = v30;
    v86 = v35;
    v107 = v36;
    sub_1BE54BABC();
    sub_1BE54BAAC();
    sub_1BE4E92F8();
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v53 = qword_1EBDB0C00;
    v82 = sub_1BE54BF6C();
    v81 = v54;
    v83 = v55;
    v84 = v56;
    v57 = v52;
    sub_1BE54C65C();
    v58 = v90;
    sub_1BE54AF2C();
    v59 = v91;
    (*(v91 + 16))(v89, v52, v108);
    v60 = v94;
    v61 = v96;
    (*(v94 + 16))(v92, v58, v96);
    v62 = [v53 bundleURL];
    v63 = v97;
    sub_1BE54AE0C();

    (*(v98 + 104))(v63, *MEMORY[0x1E6968DF8], v99);
    v64 = v95;
    sub_1BE54ADBC();
    (*(v60 + 8))(v58, v61);
    (*(v59 + 8))(v57, v108);
    v65 = v93;
    sub_1BE4FCF80();
    v66 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v67 = swift_allocObject();
    v68 = sub_1BE4FCFD8(v65, v67 + v66);
    MEMORY[0x1EEE9AC00](v68, v69);
    v70 = v87;
    sub_1BE54C29C();
    (*(v101 + 8))(v64, v102);
    v71 = v105;
    v72 = *(v105 + 16);
    v73 = v85;
    v74 = v100;
    v72(v85, v70, v100);
    v75 = v106;
    v76 = v82;
    v77 = v81;
    *v106 = v82;
    *(v75 + 8) = v77;
    LOBYTE(v61) = v83 & 1;
    *(v75 + 16) = v83 & 1;
    *(v75 + 24) = v84;
    *(v75 + 32) = 0;
    *(v75 + 40) = 1;
    v78 = sub_1BE4BF11C(&qword_1EBDACA90, &qword_1BE54FD88);
    v72((v75 + *(v78 + 64)), v73, v74);
    sub_1BE4D91B0(v76, v77, v61);

    sub_1BE4D91B0(v76, v77, v61);
    v112 = *(v71 + 8);
    v79 = v112;

    v79(v73, v74);
    sub_1BE4C68C8(v76, v77, v61);

    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC7B0, &qword_1EBDAC7B8, &qword_1BE54FA50, MEMORY[0x1E697D6A8]);
    sub_1BE4FF864(&qword_1EBDACA98, &qword_1EBDACA80, &qword_1BE54FD78, MEMORY[0x1E6981F48]);
    sub_1BE54BC0C();
    sub_1BE4C68C8(v76, v77, v61);

    sub_1BE4FF104(v75, &qword_1EBDACA80);
    return (v112)(v87, v74);
  }
}

uint64_t sub_1BE4FBB64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BE54BABC();
  sub_1BE54BAAC();
  sub_1BE4E92F8();
  sub_1BE54BA9C();

  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1BE4FBCD4(uint64_t a1)
{
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  return sub_1BE54C25C();
}

uint64_t sub_1BE4FBD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v22[0] = sub_1BE4BF11C(&qword_1EBDACA58, &qword_1BE54FD00);
  MEMORY[0x1EEE9AC00](v22[0], v3);
  v5 = v22 - v4;
  v6 = sub_1BE4BF11C(&qword_1EBDAC7B8, &qword_1BE54FA50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v22 - v9;
  v11 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
  v13 = v11[1];
  v23 = *v11;
  v12 = v23;
  v24 = v13;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(&v23);

  v14 = v26;
  sub_1BE4FF104(&v23, &qword_1EBDABAF8);
  v22[2] = v12;
  v22[3] = v13;
  sub_1BE54C26C();
  if (v14)
  {
    v15 = v23;
    v16 = v24;
    v17 = v25;
    swift_getKeyPath();
    v23 = v15;
    v24 = v16;
    v25 = v17;
  }

  else
  {
    v18 = v23;
    v19 = v24;
    v20 = v25;
    swift_getKeyPath();
    v23 = v18;
    v24 = v19;
    v25 = v20;
  }

  sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
  sub_1BE54C31C();

  sub_1BE54C2DC();
  (*(v7 + 16))(v5, v10, v6);
  swift_storeEnumTagMultiPayload();
  sub_1BE4FF864(&qword_1EBDAC7B0, &qword_1EBDAC7B8, &qword_1BE54FA50, MEMORY[0x1E697D6A8]);
  sub_1BE54BC0C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BE4FC140(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BE4FFD44();
  v6 = sub_1BE54ADAC();
  sub_1BE4C7500();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE4C757C();
  v13 = v12 - v11;
  if (*a1 != -1)
  {
    swift_once();
  }

  v14 = sub_1BE4C52BC(v6, a2);
  (*(v8 + 16))(v13, v14, v6);
  result = sub_1BE54BF7C();
  *v3 = result;
  *(v3 + 8) = v16;
  *(v3 + 16) = v17 & 1;
  *(v3 + 24) = v18;
  return result;
}

uint64_t sub_1BE4FC244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54ADAC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
  v8 = *v6;
  v7 = v6[1];
  *&v16 = v8;
  *(&v16 + 1) = v7;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(&v16);

  if (*(&v17 + 1))
  {
    sub_1BE4BF094(&v16, v19);
    sub_1BE511BAC(v19);
    sub_1BE54BF7C();
    sub_1BE54BC0C();
    result = sub_1BE4C58A8(v19);
    v10 = v16;
    v11 = v17;
    v12 = v18;
  }

  else
  {
    sub_1BE4FF104(&v16, &qword_1EBDABAF8);
    sub_1BE511E6C();
    *&v16 = sub_1BE54BF7C();
    *(&v16 + 1) = v14;
    *&v17 = v13 & 1;
    *(&v17 + 1) = v15;
    v18 = 1;
    result = sub_1BE54BC0C();
    v10 = v19[0];
    v11 = v19[1];
    v12 = v20;
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t type metadata accessor for GenerativePartnerSettingsPanelView(uint64_t a1)
{
  result = qword_1EBDAC4B0;
  if (!qword_1EBDAC4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4FC438(uint64_t a1)
{
  v2 = sub_1BE54B5BC();
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE54B84C();
}

unint64_t sub_1BE4FC524()
{
  result = qword_1EBDAC3F8;
  if (!qword_1EBDAC3F8)
  {
    sub_1BE4C5948(&qword_1EBDAC3F0, &qword_1BE54F620);
    sub_1BE4C5948(&qword_1EBDAC400, &qword_1BE54F628);
    sub_1BE54BA2C();
    sub_1BE4FC668();
    sub_1BE4FEB10(&qword_1EBDAC470, MEMORY[0x1E697C480], MEMORY[0x1E697C478]);
    swift_getOpaqueTypeConformance2();
    sub_1BE4FF864(&qword_1EBDAC478, &unk_1EBDAC480, &unk_1BE54F668, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC3F8);
  }

  return result;
}

unint64_t sub_1BE4FC668()
{
  result = qword_1EBDAC408;
  if (!qword_1EBDAC408)
  {
    sub_1BE4C5948(&qword_1EBDAC400, &qword_1BE54F628);
    sub_1BE4FC720();
    sub_1BE4FF864(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC408);
  }

  return result;
}

unint64_t sub_1BE4FC720()
{
  result = qword_1EBDAC410;
  if (!qword_1EBDAC410)
  {
    sub_1BE4C5948(&qword_1EBDAC418, &qword_1BE54F630);
    sub_1BE4FC7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC410);
  }

  return result;
}

unint64_t sub_1BE4FC7A4()
{
  result = qword_1EBDAC420;
  if (!qword_1EBDAC420)
  {
    sub_1BE4C5948(&qword_1EBDAC428, &qword_1BE54F638);
    sub_1BE4FC830();
    sub_1BE4FC98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC420);
  }

  return result;
}

unint64_t sub_1BE4FC830()
{
  result = qword_1EBDAC430;
  if (!qword_1EBDAC430)
  {
    sub_1BE4C5948(&qword_1EBDAC438, &qword_1BE54F640);
    sub_1BE4C5948(&qword_1EBDAC440, &qword_1BE54F648);
    v1 = MEMORY[0x1E6981F48];
    sub_1BE4FF864(&qword_1EBDAC448, &qword_1EBDAC440, &qword_1BE54F648, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    sub_1BE4C5948(&qword_1EBDAC450, &qword_1BE54F650);
    sub_1BE4FF864(&qword_1EBDAC458, &qword_1EBDAC450, &qword_1BE54F650, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC430);
  }

  return result;
}

unint64_t sub_1BE4FC98C()
{
  result = qword_1EBDAC460;
  if (!qword_1EBDAC460)
  {
    sub_1BE4C5948(&qword_1EBDAC468, &qword_1BE54F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC460);
  }

  return result;
}

uint64_t sub_1BE4FCA54(uint64_t a1)
{
  v1 = sub_1BE54ADAC();
  if (v2 <= 0x3F)
  {
    sub_1BE4FCCC8(319, &qword_1EBDAC030, &qword_1EBDAC038, qword_1BE54E6A8, MEMORY[0x1E697DCC0]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1BE4FCD2C(319, &qword_1EBDAC4C0, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1BE4FCD2C(319, &qword_1EBDAC4C8, type metadata accessor for SettingsViewModel, MEMORY[0x1E6981790]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1BE4FCC78();
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_1BE4FCCC8(319, &qword_1EBDAC4D0, &qword_1EBDAC3C8, &qword_1BE54F5F0, MEMORY[0x1E6981790]);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_1BE4FCD2C(319, &qword_1EBDAC4D8, type metadata accessor for LockupViewDelegate, MEMORY[0x1E6981790]);
    if (v10 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1BE4FCC78()
{
  if (!qword_1EDDD63F8)
  {
    v0 = sub_1BE54C27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD63F8);
    }
  }
}

void sub_1BE4FCCC8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1BE4C5948(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BE4FCD2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BE4FCD90()
{
  result = qword_1EBDAC4E0;
  if (!qword_1EBDAC4E0)
  {
    sub_1BE4C5948(&qword_1EBDAC498, &qword_1BE54F678);
    sub_1BE4C5948(&qword_1EBDAC3E0, &qword_1BE54F610);
    sub_1BE4C5948(&qword_1EBDAC3D8, &qword_1BE54F608);
    sub_1BE4FF864(&qword_1EBDAC488, &qword_1EBDAC3D8, &qword_1BE54F608, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BE4FF864(&qword_1EBDAC4E8, &qword_1EBDAC4A0, &qword_1BE54F680, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC4E0);
  }

  return result;
}

unint64_t sub_1BE4FCEFC()
{
  result = qword_1EBDAC530;
  if (!qword_1EBDAC530)
  {
    sub_1BE4C5948(&qword_1EBDAC528, &qword_1BE54F780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC530);
  }

  return result;
}

uint64_t sub_1BE4FCF80()
{
  sub_1BE4FFDA4();
  v1(0);
  sub_1BE4C7470();
  v2 = sub_1BE4D9800();
  v3(v2);
  return v0;
}

uint64_t sub_1BE4FCFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4FD03C()
{
  v2 = sub_1BE4FFD44();
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView(v2);
  sub_1BE4C7570(v3);
  sub_1BE4FFBC0();

  return sub_1BE4EBFE8(v1 + v4, v0);
}

uint64_t sub_1BE4FD0A0()
{
  v2 = sub_1BE4D97A4();
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView(v2);
  sub_1BE4C7570(v3);
  sub_1BE4FFBC0();

  return sub_1BE4EC158(v0, v1 + v4);
}

uint64_t sub_1BE4FD104()
{
  v1 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C7570(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1BE4FF8B4;
  v3 = sub_1BE4E0628();

  return sub_1BE4EC34C(v3, v4, v5);
}

void sub_1BE4FD1F0()
{
  v0 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C7570(v0);
  sub_1BE4FFBC0();
  sub_1BE4EC4F0();
}

unint64_t sub_1BE4FD244()
{
  result = qword_1EBDAC588;
  if (!qword_1EBDAC588)
  {
    sub_1BE4C5948(&qword_1EBDAC578, &qword_1BE54F7F8);
    sub_1BE4C5948(&qword_1EBDAC528, &qword_1BE54F780);
    sub_1BE4FCEFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC588);
  }

  return result;
}

uint64_t sub_1BE4FD30C()
{
  v0 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C7570(v0);
  sub_1BE4FFBC0();
  v1 = sub_1BE4FFBD8();

  return sub_1BE4ECE70(v1, v2, v3);
}

uint64_t sub_1BE4FD380()
{
  v0 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C7570(v0);
  sub_1BE4FFBC0();
  v1 = sub_1BE4FFBD8();

  return sub_1BE4ED264(v1, v2, v3);
}

unint64_t sub_1BE4FD3F4()
{
  result = qword_1EBDAC5A0;
  if (!qword_1EBDAC5A0)
  {
    sub_1BE4C5948(&qword_1EBDAC3C8, &qword_1BE54F5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC5A0);
  }

  return result;
}

uint64_t sub_1BE4FD4A0@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54ADAC();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE4C757C();
  v4 = sub_1BE4FFBD8();
  v5(v4);
  result = sub_1BE54BF7C();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1BE4FD560()
{
  v1 = sub_1BE4D97A4();
  v2(v1);
  sub_1BE4C745C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1BE4FD5B0()
{
  sub_1BE4E021C();
  v0 = sub_1BE4D97A4();
  v1 = type metadata accessor for GenerativePartnerSettingsPanelView(v0);
  sub_1BE4C7570(v1);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v3[1] = sub_1BE4FF8B4;
  v5 = sub_1BE4FFA4C();

  return sub_1BE4F50B8(v5, v6, v7, v8, v9);
}

uint64_t sub_1BE4FD684()
{
  sub_1BE4E021C();
  v0 = sub_1BE4D97A4();
  type metadata accessor for GenerativePartnerSettingsPanelView(v0);
  v1 = swift_task_alloc();
  v2 = sub_1BE4E4408(v1);
  *v2 = v3;
  v2[1] = sub_1BE4FD784;
  v4 = sub_1BE4FFA4C();

  return sub_1BE4F0064(v4, v5, v6, v7, v8);
}

uint64_t sub_1BE4FD784()
{
  sub_1BE4E01D4();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  sub_1BE4E01E0();

  return v3();
}

uint64_t sub_1BE4FD868@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE54B99C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BE4FD8CC(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v6);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v7, v8);
  v16[3] = &type metadata for ImplicitEngagementPresenter;
  v16[4] = &off_1F3CCD2A0;
  v16[0] = a2;
  v9 = a2;
  switch(sub_1BE521FA8())
  {
    case 1u:
    case 5u:
      sub_1BE4C6918(v16, v15);
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a1;
      sub_1BE4BF094(v15, v10 + 32);
      swift_getKeyPath();
      *&v15[0] = a3;
      sub_1BE4FEB10(&qword_1EBDAC5D0, type metadata accessor for SubscriptionInfo, &unk_1BE551090);

      sub_1BE4FFDD0();
      sub_1BE54AFCC();

      *&v15[0] = a3;
      swift_getKeyPath();
      sub_1BE4FFDD0();
      sub_1BE54AFEC();

      swift_beginAccess();
      sub_1BE5301B4(v14, sub_1BE4FDBD8, v10);
      swift_endAccess();

      *&v15[0] = a3;
      swift_getKeyPath();
      sub_1BE54AFDC();

      goto LABEL_4;
    case 3u:
      return sub_1BE4C58A8(v16);
    default:
      v11 = sub_1BE54C91C();
      sub_1BE4FFD50(v11);
      sub_1BE54C8CC();

      sub_1BE54C8BC();
      v12 = swift_allocObject();
      sub_1BE4FFCC0(v12, MEMORY[0x1E69E85E0]);
      sub_1BE50BA3C();
LABEL_4:

      break;
  }

  return sub_1BE4C58A8(v16);
}

uint64_t sub_1BE4FDBE8()
{
  sub_1BE4E021C();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v1[1] = sub_1BE4FF8B4;
  sub_1BE4FFA4C();

  return sub_1BE524758();
}

uint64_t sub_1BE4FDC98()
{
  swift_unknownObjectRelease();

  sub_1BE4C58A8((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BE4FDCE0()
{
  sub_1BE4E021C();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v1[1] = sub_1BE4FF8B4;
  sub_1BE4FFA4C();

  return sub_1BE52457C();
}

unint64_t sub_1BE4FDDB0()
{
  result = qword_1EBDAC680;
  if (!qword_1EBDAC680)
  {
    sub_1BE4C5948(&qword_1EBDAC670, &qword_1BE54F9B8);
    sub_1BE4FDE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC680);
  }

  return result;
}

unint64_t sub_1BE4FDE34()
{
  result = qword_1EBDAC688;
  if (!qword_1EBDAC688)
  {
    sub_1BE4C5948(&qword_1EBDAC690, &qword_1BE54F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC688);
  }

  return result;
}

unint64_t sub_1BE4FDEB0()
{
  result = qword_1EBDAC698;
  if (!qword_1EBDAC698)
  {
    sub_1BE4C5948(&qword_1EBDAC648, &qword_1BE54F990);
    sub_1BE4FDF68();
    sub_1BE4FF864(&qword_1EBDAC798, &qword_1EBDAC628, &qword_1BE54F970, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC698);
  }

  return result;
}

unint64_t sub_1BE4FDF68()
{
  result = qword_1EBDAC6A0;
  if (!qword_1EBDAC6A0)
  {
    sub_1BE4C5948(&qword_1EBDAC650, &qword_1BE54F998);
    sub_1BE4FE020();
    sub_1BE4FF864(&qword_1EBDAC478, &unk_1EBDAC480, &unk_1BE54F668, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6A0);
  }

  return result;
}

unint64_t sub_1BE4FE020()
{
  result = qword_1EBDAC6A8;
  if (!qword_1EBDAC6A8)
  {
    sub_1BE4C5948(&qword_1EBDAC6B0, &qword_1BE54F9C8);
    sub_1BE4FE0B8();
    sub_1BE4FE308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6A8);
  }

  return result;
}

unint64_t sub_1BE4FE0B8()
{
  result = qword_1EBDAC6B8;
  if (!qword_1EBDAC6B8)
  {
    sub_1BE4C5948(&qword_1EBDAC6C0, &qword_1BE54F9D0);
    sub_1BE4FE144();
    sub_1BE4FE228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6B8);
  }

  return result;
}

unint64_t sub_1BE4FE144()
{
  result = qword_1EBDAC6C8;
  if (!qword_1EBDAC6C8)
  {
    sub_1BE4C5948(&qword_1EBDAC6D0, &qword_1BE54F9D8);
    sub_1BE4FF864(&qword_1EBDAC6D8, &qword_1EBDAC6E0, &qword_1BE54F9E0, MEMORY[0x1E6981F48]);
    sub_1BE4FF864(&qword_1EBDAC6E8, &qword_1EBDAC6F0, &qword_1BE54F9E8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6C8);
  }

  return result;
}

unint64_t sub_1BE4FE228()
{
  result = qword_1EBDAC6F8;
  if (!qword_1EBDAC6F8)
  {
    sub_1BE4C5948(&qword_1EBDAC700, &qword_1BE54F9F0);
    v1 = MEMORY[0x1E6981F48];
    sub_1BE4FF864(&qword_1EBDAC708, &qword_1EBDAC710, &qword_1BE54F9F8, MEMORY[0x1E6981F48]);
    sub_1BE4FF864(&qword_1EBDAC718, &qword_1EBDAC720, &qword_1BE54FA00, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6F8);
  }

  return result;
}

unint64_t sub_1BE4FE308()
{
  result = qword_1EBDAC728;
  if (!qword_1EBDAC728)
  {
    sub_1BE4C5948(&qword_1EBDAC730, &qword_1BE54FA08);
    sub_1BE4FE3C0();
    sub_1BE4FF864(&qword_1EBDAC788, &qword_1EBDAC790, &unk_1BE54FA38, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC728);
  }

  return result;
}

unint64_t sub_1BE4FE3C0()
{
  result = qword_1EBDAC738;
  if (!qword_1EBDAC738)
  {
    sub_1BE4C5948(&qword_1EBDAC740, &qword_1BE54FA10);
    sub_1BE4FE478();
    sub_1BE4FF864(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC738);
  }

  return result;
}

unint64_t sub_1BE4FE478()
{
  result = qword_1EBDAC748;
  if (!qword_1EBDAC748)
  {
    sub_1BE4C5948(&qword_1EBDAC750, &qword_1BE54FA18);
    sub_1BE4FE4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC748);
  }

  return result;
}

unint64_t sub_1BE4FE4FC()
{
  result = qword_1EBDAC758;
  if (!qword_1EBDAC758)
  {
    sub_1BE4C5948(&qword_1EBDAC760, &qword_1BE54FA20);
    sub_1BE4FE588();
    sub_1BE4FDE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC758);
  }

  return result;
}

unint64_t sub_1BE4FE588()
{
  result = qword_1EBDAC768;
  if (!qword_1EBDAC768)
  {
    sub_1BE4C5948(&qword_1EBDAC770, &qword_1BE54FA28);
    sub_1BE4FE614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC768);
  }

  return result;
}

unint64_t sub_1BE4FE614()
{
  result = qword_1EBDAC778;
  if (!qword_1EBDAC778)
  {
    sub_1BE4C5948(&qword_1EBDAC780, &qword_1BE54FA30);
    sub_1BE4FF864(&qword_1EBDAC788, &qword_1EBDAC790, &unk_1BE54FA38, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC778);
  }

  return result;
}

unint64_t sub_1BE4FE6D4()
{
  result = qword_1EBDAC7A8;
  if (!qword_1EBDAC7A8)
  {
    sub_1BE4C5948(&qword_1EBDAC7A0, &qword_1BE54FA48);
    sub_1BE4FF864(&qword_1EBDAC7B0, &qword_1EBDAC7B8, &qword_1BE54FA50, MEMORY[0x1E697D6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC7A8);
  }

  return result;
}

unint64_t sub_1BE4FE78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC7D0;
  if (!qword_1EBDAC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC7D0);
  }

  return result;
}

unint64_t sub_1BE4FE810()
{
  result = qword_1EBDAC808;
  if (!qword_1EBDAC808)
  {
    sub_1BE4C5948(&qword_1EBDAC7E0, &qword_1BE54FA70);
    sub_1BE4FF864(&qword_1EBDAC7F8, &qword_1EBDAC7F0, &qword_1BE54FA80, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC808);
  }

  return result;
}

unint64_t sub_1BE4FE8CC()
{
  result = qword_1EBDAC810;
  if (!qword_1EBDAC810)
  {
    sub_1BE4C5948(&qword_1EBDAC800, &qword_1BE54FA88);
    sub_1BE4FE950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC810);
  }

  return result;
}

unint64_t sub_1BE4FE950()
{
  result = qword_1EBDAC818;
  if (!qword_1EBDAC818)
  {
    sub_1BE4C5948(&qword_1EBDAC820, &unk_1BE54FA90);
    sub_1BE4FF864(&qword_1EBDABC48, &qword_1EBDABB58, &unk_1BE54DC90, MEMORY[0x1E697D680]);
    sub_1BE4FF864(&qword_1EBDAC478, &unk_1EBDAC480, &unk_1BE54F668, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC818);
  }

  return result;
}

unint64_t sub_1BE4FEA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC828;
  if (!qword_1EBDAC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC828);
  }

  return result;
}

uint64_t sub_1BE4FEAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC820, &unk_1BE54FA90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4FEB10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE4FEB58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1BE4FFD8C(0, a2);
    sub_1BE4C5948(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BE4FEBD0()
{
  result = qword_1EBDAC8A8;
  if (!qword_1EBDAC8A8)
  {
    sub_1BE4C5948(&qword_1EBDAC8B0, &qword_1BE54FB00);
    sub_1BE4FEC88();
    sub_1BE4FF864(&qword_1EBDAC8C8, &qword_1EBDAC8D0, &qword_1BE54FB10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC8A8);
  }

  return result;
}

unint64_t sub_1BE4FEC88()
{
  result = qword_1EBDAC8B8;
  if (!qword_1EBDAC8B8)
  {
    sub_1BE4C5948(&qword_1EBDAC8C0, &qword_1BE54FB08);
    sub_1BE4FDE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC8B8);
  }

  return result;
}

unint64_t sub_1BE4FED14()
{
  result = qword_1EBDAC8D8;
  if (!qword_1EBDAC8D8)
  {
    sub_1BE4C5948(&qword_1EBDAC868, &qword_1BE54FAD8);
    sub_1BE4FEB58(&qword_1EBDAC8A0, &qword_1EBDAC898, &qword_1BE54FAF8, sub_1BE4FEBD0);
    sub_1BE4C5948(&qword_1EBDAC878, &qword_1BE54FAE8);
    sub_1BE54BD4C();
    sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878, &qword_1BE54FAE8, MEMORY[0x1E697BF38]);
    sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC8D8);
  }

  return result;
}

uint64_t sub_1BE4FEE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_1BE4D91B0(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BE4FEEF0(a1, a2, a3, a4);
  }
}

uint64_t sub_1BE4FEEF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1BE4D91B0(a1, a2, a3 & 1);
}

uint64_t sub_1BE4FEF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_1BE4C68C8(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BE4FEF90(a1, a2, a3);
  }
}

uint64_t sub_1BE4FEF90(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BE4C68C8(a1, a2, a3 & 1);
}

unint64_t sub_1BE4FEFF4()
{
  result = qword_1EBDAC938;
  if (!qword_1EBDAC938)
  {
    sub_1BE4C5948(&qword_1EBDAC930, &qword_1BE54FBC8);
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948, &qword_1BE54FBD0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC938);
  }

  return result;
}

uint64_t sub_1BE4FF0AC()
{
  sub_1BE4FFDA4();
  sub_1BE4BF11C(v1, v2);
  sub_1BE4C7470();
  v3 = sub_1BE4D9800();
  v4(v3);
  return v0;
}

uint64_t sub_1BE4FF104(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE4FFD8C(a1, a2);
  sub_1BE4BF11C(v3, v4);
  sub_1BE4C745C();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4FF154()
{
  v1 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C7570(v1);
  v3 = v0 + ((*(v2 + 80) + 56) & ~*(v2 + 80));

  return sub_1BE4F22D0((v0 + 16), v3);
}

unint64_t sub_1BE4FF1D0()
{
  result = qword_1EBDAC9C8;
  if (!qword_1EBDAC9C8)
  {
    sub_1BE4C5948(&qword_1EBDAC9B8, &qword_1BE54FC60);
    sub_1BE4FF25C();
    sub_1BE4FEC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC9C8);
  }

  return result;
}

unint64_t sub_1BE4FF25C()
{
  result = qword_1EBDAC9D0;
  if (!qword_1EBDAC9D0)
  {
    sub_1BE4C5948(&qword_1EBDAC9D8, &qword_1BE54FC68);
    sub_1BE4FF2E8();
    sub_1BE4FDE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC9D0);
  }

  return result;
}

unint64_t sub_1BE4FF2E8()
{
  result = qword_1EBDAC9E0;
  if (!qword_1EBDAC9E0)
  {
    sub_1BE4C5948(&qword_1EBDAC9E8, &qword_1BE54FC70);
    sub_1BE4FEB58(&qword_1EBDAC9F0, &qword_1EBDAC9F8, &qword_1BE54FC78, sub_1BE4FDE34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC9E0);
  }

  return result;
}

uint64_t sub_1BE4FF3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1BE4D91B0(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BE4FF448(a1, a2, a3, a4);
  }
}

uint64_t sub_1BE4FF450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a6)
  {
    return a8(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
    return a7(a1, a2, a3, a4, a5, WORD1(a5) & 1);
  }
}

uint64_t sub_1BE4FF46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1BE4C68C8(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BE4FF4D0(a1, a2, a3);
  }
}

uint64_t sub_1BE4FF4D8()
{
  v1 = *(type metadata accessor for GenerativePartnerSettingsPanelView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BE4F2968(v0 + v2, v3);
}

uint64_t sub_1BE4FF564()
{
  sub_1BE4FFB64();
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C759C();
  sub_1BE4FFEE0();
  sub_1BE4C7470();
  v3 = *(v2 + 8);
  v4 = sub_1BE4FFBCC();
  v3(v4);
  v5 = sub_1BE4FFA28();
  v3(v5);
  v6 = sub_1BE4FFA18();
  v3(v6);
  sub_1BE4FF944();
  v7 = sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC(v7) == 1)
  {
    sub_1BE54B5BC();
    sub_1BE4C745C();
    (*(v8 + 8))(v0 + v1);
  }

  else
  {
  }

  sub_1BE4FFC1C();

  sub_1BE4FFB30();
  sub_1BE4FFC00();

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  sub_1BE4FFBE4();

  v9 = sub_1BE4FFA08();
  v3(v9);
  v10 = sub_1BE4FF9F8();
  v3(v10);
  sub_1BE4FFAAC();
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1BE4FF704(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C7570(v2);
  sub_1BE4FFBC0();

  return a1(v1 + v3);
}

unint64_t sub_1BE4FF780()
{
  result = qword_1EBDACAD0;
  if (!qword_1EBDACAD0)
  {
    sub_1BE4C5948(&qword_1EBDACAC8, &qword_1BE54FDE0);
    sub_1BE4FF864(&qword_1EBDACAD8, &unk_1EBDACAE0, &unk_1BE54FDE8, MEMORY[0x1E697D680]);
    sub_1BE4FF864(&qword_1EBDAC478, &unk_1EBDAC480, &unk_1BE54F668, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACAD0);
  }

  return result;
}

uint64_t sub_1BE4FF864(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_1BE4FFD8C(0, a2);
    sub_1BE4C5948(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4FF8DC(uint64_t a1)
{

  return swift_once();
}

void sub_1BE4FF930()
{
  v2 = *(v1 - 120);
  *v0 = *(v1 - 128);
  *(v0 + 8) = v2;
}

uint64_t sub_1BE4FF9CC(uint64_t a1, uint64_t a2)
{

  return sub_1BE54C65C();
}

void sub_1BE4FFA60()
{
  v2 = *(v1 - 120);
  *v0 = *(v1 - 128);
  *(v0 + 8) = v2;
}

void sub_1BE4FFA74()
{
  v2 = *(v1 - 120);
  *v0 = *(v1 - 128);
  *(v0 + 8) = v2;
}

uint64_t sub_1BE4FFABC()
{
}

uint64_t sub_1BE4FFAD8()
{
}

uint64_t sub_1BE4FFAF4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE4FFB14()
{
}

uint64_t sub_1BE4FFB30()
{
}

uint64_t sub_1BE4FFB88(uint64_t a1)
{
  sub_1BE4C63F8(v1, 1, 4, a1);

  return sub_1BE5014C4();
}

void sub_1BE4FFBE4()
{
  v3 = *(v1 + *(v0 + 60));
}

uint64_t sub_1BE4FFC00()
{
}

uint64_t sub_1BE4FFC1C()
{
}

uint64_t sub_1BE4FFC58()
{
}

BOOL sub_1BE4FFCA4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BE4FFCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return sub_1BE4BF094((v6 - 144), v5 + 48);
}

uint64_t sub_1BE4FFCE4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1BE4FFCFC(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1BE4FFD50(uint64_t a1)
{
  sub_1BE4C63F8(v1, 1, 1, a1);

  return sub_1BE4C6918(v2 - 104, v2 - 144);
}

void sub_1BE4FFE08(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_1BE4FFE28()
{

  return sub_1BE54AD8C();
}

uint64_t sub_1BE4FFE48()
{
}

uint64_t sub_1BE4FFE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4FFE80(uint64_t a1)
{

  return sub_1BE54C65C();
}

uint64_t sub_1BE4FFE98()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE4FFEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4FFEC8(uint64_t a1, uint64_t a2)
{

  return sub_1BE54C65C();
}

uint64_t sub_1BE4FFEE0()
{

  return sub_1BE54ADAC();
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE54AECC();
  result = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t SettingsViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  SettingsViewModel.init()();
  return v0;
}

uint64_t sub_1BE4FFF88()
{
  sub_1BE50A878();
  v0 = sub_1BE501C68();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4FFFD4()
{
  sub_1BE50A878();
  v0 = sub_1BE501CA4();
  return sub_1BE50A8D4(v0);
}

void sub_1BE500020(uint64_t a1@<X8>)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  v3 = sub_1BE4C7570(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1BE4D981C();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v60 - v10;
  v12 = sub_1BE4BF11C(&qword_1EBDAC5B0, &unk_1BE54F820);
  v13 = sub_1BE4C7570(v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_1BE4D981C();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v60 - v20;
  v22 = sub_1BE54B3DC();
  sub_1BE4C7500();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_1BE4C757C();
  v29 = (v28 - v27);
  v30 = [objc_opt_self() sharedConnection];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 isExternalIntelligenceSignInAllowed];

    if (v32)
    {
      if (qword_1EDDD6890 != -1)
      {
        sub_1BE4C7480(&qword_1EDDD6890);
      }

      sub_1BE53CA80(&v62);
      if (v63)
      {
        v61 = a1;
        sub_1BE4BF094(&v62, v64);
        sub_1BE50A5B8(v64, &v62);
        v33 = type metadata accessor for ExternalAIAuthenticatorHelper(0);
        sub_1BE4FFCE4(v33);
        sub_1BE534D4C(&v62);
        sub_1BE533EC4();

        v34 = sub_1BE54B4FC();
        sub_1BE50AAE8(v11, 1, v34);
        if (v44)
        {
          sub_1BE4C58A8(v64);
          sub_1BE4D0E58(v11, &qword_1EBDAC5A8, &qword_1BE54F818);
          sub_1BE50A890();
          sub_1BE4C63F8(v35, v36, v37, v22);
        }

        else
        {
          sub_1BE54B45C();
          sub_1BE4C58A8(v64);
          sub_1BE50A884();
          (*(v43 + 8))(v11, v34);
          sub_1BE50AAE8(v21, 1, v22);
          if (!v44)
          {
            v55 = *(v24 + 32);
            v55(v29, v21, v22);
            v56 = v61;
            v55(v61, v29, v22);
            v57 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
            v58 = v56;
            v59 = 0;
LABEL_27:
            sub_1BE4C63F8(v58, v59, 4, v57);
            goto LABEL_28;
          }
        }

        sub_1BE4D0E58(v21, &qword_1EBDAC5B0, &unk_1BE54F820);
        a1 = v61;
      }

      else
      {
        sub_1BE4D0E58(&v62, &qword_1EBDABAF8, &qword_1BE54DC20);
      }

      sub_1BE53CA80(&v62);
      if (!v63)
      {
        sub_1BE4D0E58(&v62, &qword_1EBDABAF8, &qword_1BE54DC20);
LABEL_26:
        v57 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
        v58 = a1;
        v59 = 1;
        goto LABEL_27;
      }

      sub_1BE4BF094(&v62, v64);
      sub_1BE50A5B8(v64, &v62);
      v45 = type metadata accessor for ExternalAIAuthenticatorHelper(0);
      sub_1BE4FFCE4(v45);
      sub_1BE534D4C(&v62);
      sub_1BE533EC4();

      v46 = sub_1BE54B4FC();
      sub_1BE50AAE8(v7, 1, v46);
      if (v44)
      {
        sub_1BE4D0E58(v7, &qword_1EBDAC5A8, &qword_1BE54F818);
        v47 = sub_1BE50A848();
        sub_1BE4C63F8(v47, v48, v49, v22);
      }

      else
      {
        sub_1BE54B45C();
        sub_1BE50A884();
        (*(v50 + 8))(v7, v46);
        sub_1BE50AAE8(v17, 1, v22);
        if (!v51)
        {
          sub_1BE4D0E58(v17, &qword_1EBDAC5B0, &unk_1BE54F820);
LABEL_25:
          sub_1BE4C58A8(v64);
          goto LABEL_26;
        }
      }

      sub_1BE4D0E58(v17, &qword_1EBDAC5B0, &unk_1BE54F820);
      sub_1BE4C52F4(v64, v64[3]);
      v52 = sub_1BE4FFBCC();
      v53(v52);
      if (v62 == 128)
      {
        v54 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
        sub_1BE4C63F8(a1, 4, 4, v54);
        sub_1BE4C58A8(v64);
LABEL_28:
        sub_1BE4FFB4C();
        return;
      }

      goto LABEL_25;
    }

    sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4FFB4C();

    sub_1BE4C63F8(v38, v39, v40, v41);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BE5005B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE54B3DC();
  sub_1BE4C7500();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1BE4C757C();
  sub_1BE50A994();
  v10 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v11 = sub_1BE4C7570(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1BE4C757C();
  v15 = v14 - v13;
  v16 = sub_1BE4BF11C(&qword_1EBDACC10, &unk_1BE5500B0);
  sub_1BE4C7570(v16);
  sub_1BE4FFC80();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v26 - v20;
  v22 = *(v19 + 56);
  sub_1BE5096E4(a1, &v26 - v20, type metadata accessor for SettingsViewModel.AccountSignInStatus);
  sub_1BE5096E4(a2, &v21[v22], type metadata accessor for SettingsViewModel.AccountSignInStatus);
  v23 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  switch(sub_1BE4C63BC(v21, 4, v23))
  {
    case 1u:
      if (sub_1BE50A9C0() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_1BE50A9C0() != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3u:
      if (sub_1BE50A9C0() != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4u:
      if (sub_1BE50A9C0() != 4)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_1BE50A7C8();
      sub_1BE508F98();
      break;
    default:
      sub_1BE50A830();
      sub_1BE5096E4(v21, v15, v24);
      if (sub_1BE50A9C0())
      {
        (*(v7 + 8))(v15, v5);
LABEL_7:
        sub_1BE4D0E58(v21, &qword_1EBDACC10, &unk_1BE5500B0);
      }

      else
      {
        (*(v7 + 32))(v2, &v21[v22], v5);
        MEMORY[0x1BFB468C0](v15, v2);
        v25 = *(v7 + 8);
        v25(v2, v5);
        v25(v15, v5);
        sub_1BE50A7C8();
        sub_1BE508F98();
      }

      break;
  }

  sub_1BE4FFB4C();
}

uint64_t sub_1BE500860()
{
  sub_1BE50A878();
  result = sub_1BE502204();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BE500888(uint64_t a1)
{

  v1 = sub_1BE4E0628();
  return sub_1BE5022A8(v1, v2);
}

uint64_t sub_1BE5008C4()
{
  sub_1BE50A878();
  v0 = sub_1BE501D68();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE500910()
{
  sub_1BE50A878();
  v0 = sub_1BE501F10();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE50095C()
{
  sub_1BE50A878();
  v0 = sub_1BE502110();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE5009A8()
{
  sub_1BE50A878();
  v0 = sub_1BE501FC8();
  return sub_1BE50A8D4(v0);
}

unint64_t sub_1BE5009F4(uint64_t a1)
{
  sub_1BE54CC0C();
  sub_1BE50A968();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BE500A3C(char a1)
{
  if (!a1)
  {
    return 0x6465636E61766461;
  }

  if (a1 == 1)
  {
    return 0x6369736162;
  }

  return 0x696D694C64726168;
}

unint64_t sub_1BE500ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BE5009F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BE500AEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE500A3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BE500B18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54986C();
  v3 = sub_1BE549D98(v2, 0);

  v5 = 0;
  v6 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    sub_1BE50A5B8(i, &v16);
    sub_1BE54B24C();
    sub_1BE54B22C();
    v8 = sub_1BE54B21C();
    v10 = v9;

    v11 = v17;
    v12 = v18;
    sub_1BE4C52F4(&v16, v17);
    if (v8 == (*(v12 + 8))(v11, v12) && v10 == v13)
    {

LABEL_12:

      return sub_1BE4BF094(&v16, a1);
    }

    v15 = sub_1BE54CCDC();

    if (v15)
    {
      goto LABEL_12;
    }

    result = sub_1BE4C58A8(&v16);
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE500CA0(uint64_t a1)
{
  sub_1BE4D9250(a1, v21, &qword_1EBDABAF8, &qword_1BE54DC20);
  v1 = v22;
  if (v22)
  {
    v2 = v23;
    sub_1BE4C52F4(v21, v22);
    v3 = (*(v2 + 8))(v1, v2);
    v1 = v4;
    sub_1BE4C58A8(v21);
  }

  else
  {
    sub_1BE4D0E58(v21, &qword_1EBDABAF8, &qword_1BE54DC20);
    v3 = 0;
  }

  sub_1BE5010B4(v21);
  v5 = v22;
  if (!v22)
  {
    result = sub_1BE4D0E58(v21, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (!v1)
    {
      return result;
    }

    goto LABEL_16;
  }

  v6 = v23;
  v7 = sub_1BE4C52F4(v21, v22);
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  sub_1BE4D0E58(v21, &qword_1EBDABAF8, &qword_1BE54DC20);
  v11 = (*(v6 + 8))(v5, v6);
  v13 = v12;
  result = (*(v8 + 8))(v10, v5);
  if (!v1)
  {
    if (!v13)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v13)
  {
LABEL_16:

LABEL_17:
    sub_1BE5010B4(&v19);
    if (v20)
    {
      sub_1BE4BF094(&v19, v21);
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      v17 = v22;
      v18 = v23;
      sub_1BE4C52F4(v21, v22);
      (*(v18 + 8))(v17, v18);
      sub_1BE53CD40();

      return sub_1BE4C58A8(v21);
    }

    else
    {
      sub_1BE4D0E58(&v19, &qword_1EBDABAF8, &qword_1BE54DC20);
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      type metadata accessor for GenerativePartnerServiceUserDefaults();
      return sub_1BE53F998(0, 0xE000000000000000, 0);
    }
  }

  if (v3 == v11 && v1 == v13)
  {
  }

  v16 = sub_1BE54CCDC();

  if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1BE501010(uint64_t a1)
{
  sub_1BE50AA7C(v1 + 16, v10);
  sub_1BE50AB54();
  sub_1BE4D9250(v3, v4, v5, v6);
  sub_1BE50A9A0();
  swift_beginAccess();
  sub_1BE50A2F8(a1, v1 + 16);
  swift_endAccess();
  sub_1BE500CA0(v11);
  v7 = sub_1BE4E0628();
  sub_1BE4D0E58(v7, v8, &qword_1BE54DC20);
  return sub_1BE4D0E58(v11, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE5010B4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v5 = sub_1BE508AD4(v3, v4, &protocol conformance descriptor for SettingsViewModel);
  sub_1BE50A9E4(v5, v6, v7, v8, v9, v10, v11, v12, v15, v1);
  sub_1BE54AFCC();

  sub_1BE4DCFA4(v1 + 16, v13);
  return sub_1BE4D9250(v1 + 16, a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE5011B0(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1BE507D40(KeyPath, sub_1BE50A2DC, &v5);

  return sub_1BE4D0E58(a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE50128C(uint64_t a1)
{
  v2 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v19 - v9;
  sub_1BE50149C(v8, v11, v12);
  sub_1BE5005B4(a1, v10);
  LOBYTE(a1) = v13;
  result = sub_1BE508F98();
  if ((a1 & 1) == 0)
  {
    sub_1BE50149C(result, v15, v16);
    v17 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    result = sub_1BE4C63BC(v6, 4, v17);
    if ((result - 2) >= 3)
    {
      if (!result)
      {
        v18 = sub_1BE54B3DC();
        (*(*(v18 - 8) + 8))(v6, v18);
      }

      return sub_1BE506954();
    }
  }

  return result;
}

uint64_t sub_1BE5013CC()
{
  v3 = sub_1BE4D97A4();
  v4 = type metadata accessor for SettingsViewModel.AccountSignInStatus(v3);
  v5 = sub_1BE4C7570(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE4C757C();
  sub_1BE50A994();
  v7 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__signInStatus;
  sub_1BE50AA7C(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__signInStatus, v10);
  sub_1BE50A908();
  sub_1BE5096E4(v1 + v7, v2, v8);
  sub_1BE50A9A0();
  swift_beginAccess();
  sub_1BE50A278(v0, v1 + v7);
  swift_endAccess();
  sub_1BE50128C(v2);
  sub_1BE508F98();
  sub_1BE4FFBCC();
  return sub_1BE508F98();
}

uint64_t sub_1BE5014C4()
{
  v2 = sub_1BE4D97A4();
  v3 = type metadata accessor for SettingsViewModel.AccountSignInStatus(v2);
  v4 = sub_1BE4C7570(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  sub_1BE50A994();
  v6 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__signInStatus;
  sub_1BE50AA7C(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__signInStatus, v20);
  sub_1BE50A908();
  sub_1BE5096E4(v0 + v6, v1, v7);
  v8 = sub_1BE4FFBD8();
  sub_1BE5005B4(v8, v9);
  LOBYTE(v6) = v10;
  sub_1BE4FFBCC();
  sub_1BE508F98();
  if (v6)
  {
    sub_1BE50A830();
    v11 = sub_1BE4E0628();
    sub_1BE5096E4(v11, v12, v13);
    sub_1BE5013CC();
  }

  else
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v14, v15);
    sub_1BE50A81C();
    sub_1BE50AB00(v16, v17, v18);
  }

  sub_1BE50A7C8();
  return sub_1BE508F98();
}

uint64_t sub_1BE5015D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1BE5096E4(a2, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsViewModel.AccountSignInStatus);
  return sub_1BE5013CC();
}

uint64_t (*sub_1BE50167C(uint64_t a1))(uint64_t a1)
{
  sub_1BE50A9A0();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BE501740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  sub_1BE4C7570(v10);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16 - v13;
  sub_1BE5096E4(a1, &v16 - v13, a6);
  return a7(v14);
}

uint64_t sub_1BE501804@<X0>(uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  swift_getKeyPath();
  sub_1BE50A7B0();
  v11 = sub_1BE508AD4(v9, v10, &protocol conformance descriptor for SettingsViewModel);
  sub_1BE50A9E4(v11, v12, v13, v14, v15, v16, v17, v18, v22, v4);
  sub_1BE54AFCC();

  v19 = *a2;
  sub_1BE4DCFA4(v7 + *a2, v20);
  return sub_1BE5096E4(v7 + v19, a4, a3);
}

uint64_t sub_1BE5018B4()
{
  v2 = sub_1BE4D97A4();
  v3 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(v2);
  v4 = sub_1BE4C7570(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  sub_1BE50A994();
  v6 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__deepLinkParams;
  sub_1BE50AA7C(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__deepLinkParams, v17);
  sub_1BE5096E4(v0 + v6, v1, type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams);
  sub_1BE4FFBD8();
  v7 = _s26GenerativePartnerServiceUI17SettingsViewModelC26IdentifiableDeepLinkParamsV2eeoiySbAE_AEtFZ_0();
  sub_1BE4FFBCC();
  sub_1BE508F98();
  if (v7)
  {
    sub_1BE50A9F0();
    v8 = sub_1BE4E0628();
    sub_1BE5096E4(v8, v9, v10);
    sub_1BE50A9A0();
    swift_beginAccess();
    sub_1BE4E3630(v1, v0 + v6);
    swift_endAccess();
  }

  else
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v11, v12);
    sub_1BE50A81C();
    sub_1BE50AB00(v13, v14, v15);
  }

  sub_1BE50A950();
  return sub_1BE508F98();
}

uint64_t sub_1BE5019F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE5096E4(a2, v7, type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams);
  v8 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__deepLinkParams;
  swift_beginAccess();
  sub_1BE4E3630(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t (*sub_1BE501AC0(void *a1))()
{
  v3 = sub_1BE508994(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel___observationRegistrar;
  *v3 = v1;
  sub_1BE50A7B0();
  v3[6] = sub_1BE508AD4(v4, v5, &protocol conformance descriptor for SettingsViewModel);
  sub_1BE54AFCC();

  *v3 = v1;
  swift_getKeyPath();
  sub_1BE54AFEC();

  v3[7] = sub_1BE50167C(v3);
  return sub_1BE501BD4;
}

void sub_1BE501BD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1BE54AFDC();

  free(v1);
}

uint64_t sub_1BE501CE0(uint64_t result, void *a2, uint64_t a3)
{
  if (*(v3 + *a2) == (result & 1))
  {
    *(v3 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1BE50AA50(v6);
  }

  return result;
}

uint64_t sub_1BE501DA4(uint64_t a1)
{
  v1 = a1 & 1;
  result = sub_1BE501F10();
  if ((result & 1) != v1)
  {
    if (sub_1BE501F10())
    {
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      sub_1BE53C930(v5);
      v3 = v6;
      if (v6)
      {
        v4 = v7;
        sub_1BE4C52F4(v5, v6);
        (*(v4 + 8))(v3, v4);
        sub_1BE4C58A8(v5);
      }

      else
      {
        sub_1BE4D0E58(v5, &qword_1EBDABAF8, &qword_1BE54DC20);
      }

      sub_1BE53CD40();
    }

    else
    {
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      type metadata accessor for GenerativePartnerServiceUserDefaults();
      return sub_1BE53F998(0, 0xE000000000000000, 0);
    }
  }

  return result;
}

uint64_t sub_1BE501EF8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyEnableToggleState);
  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyEnableToggleState) = a1;
  return sub_1BE501DA4(v2);
}

void sub_1BE501F60(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacySetupPromptsOn) = a1;
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  v2 = sub_1BE501FC8();
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53FA78(v2 & 1, 0);
}

uint64_t sub_1BE502018(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    v10 = a1 & 1;

    return a5(v10);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BE50AA50(v8);
  }
}

void sub_1BE5020C8(char a1)
{
  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyConfirmationPromptsOn) = a1;
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v2 = sub_1BE502110();
  sub_1BE53EBAC(v2 & 1, 0);
}

uint64_t sub_1BE502204()
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v3 = sub_1BE508AD4(v1, v2, &protocol conformance descriptor for SettingsViewModel);
  sub_1BE50A9E4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1BE54AFCC();

  return sub_1BE4D9800();
}

uint64_t sub_1BE5022A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID);
  if (sub_1BE5080E8(*(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID), *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID + 8), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath, v7);
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = a2;
    sub_1BE50AB00(v8, v9, v11);
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

uint64_t sub_1BE50239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1BE5023F8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v6 = sub_1BE508AD4(v4, v5, &protocol conformance descriptor for SettingsViewModel);
  sub_1BE50A9E4(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2);
  sub_1BE54AFCC();

  return *(v2 + *a2);
}

uint64_t sub_1BE5024AC()
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v3 = sub_1BE508AD4(v1, v2, &protocol conformance descriptor for SettingsViewModel);
  sub_1BE50A9E4(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1BE54AFCC();

  sub_1BE4DCFA4(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates, v11);
}

uint64_t sub_1BE502578(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates;
  swift_beginAccess();

  v5 = sub_1BE509C4C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1BE50A81C();
    sub_1BE50AB00(v9, v10, v11);
  }
}

uint64_t sub_1BE50264C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1BE5026E0(uint64_t a1)
{
  v4 = sub_1BE4BF11C(&qword_1EBDACB98, &qword_1BE54FE48);
  sub_1BE4C7570(v4);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE50A994();
  v7 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__userAccountStatus;
  sub_1BE50AA7C(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__userAccountStatus, v21);
  sub_1BE4D9250(v1 + v7, v2, &qword_1EBDACB98, &qword_1BE54FE48);
  v8 = sub_1BE4FFBD8();
  v10 = sub_1BE50813C(v8, v9);
  v11 = sub_1BE4FFBCC();
  sub_1BE4D0E58(v11, v12, &qword_1BE54FE48);
  if (v10)
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v13, v14);
    sub_1BE50A81C();
    sub_1BE50AB00(v15, v16, v17);
  }

  else
  {
    v18 = sub_1BE4E0628();
    sub_1BE4D9250(v18, v19, &qword_1EBDACB98, &qword_1BE54FE48);
    sub_1BE50A9A0();
    swift_beginAccess();
    sub_1BE4D2184(v2, v1 + v7, &qword_1EBDACB98, &qword_1BE54FE48);
    swift_endAccess();
  }

  return sub_1BE4D0E58(a1, &qword_1EBDACB98, &qword_1BE54FE48);
}

uint64_t sub_1BE50285C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v5 = sub_1BE508AD4(v3, v4, &protocol conformance descriptor for SettingsViewModel);
  sub_1BE50A9E4(v5, v6, v7, v8, v9, v10, v11, v12, v14, v2);
  sub_1BE54AFCC();
}

uint64_t sub_1BE502940(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1BE50A81C();
    sub_1BE507D40(v8, a4, v9);
  }
}

uint64_t sub_1BE5029F4(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

uint64_t sub_1BE502A58@<X0>(uint64_t *a2@<X1>, uint64_t *x2_0@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v9 = v5;
  swift_getKeyPath();
  sub_1BE50A7B0();
  v13 = sub_1BE508AD4(v11, v12, &protocol conformance descriptor for SettingsViewModel);
  sub_1BE50A9E4(v13, v14, v15, v16, v17, v18, v19, v20, v24, v5);
  sub_1BE54AFCC();

  v21 = *a2;
  sub_1BE4DCFA4(v9 + *a2, v22);
  return sub_1BE4D9250(v9 + v21, a4, x2_0, a3);
}

uint64_t sub_1BE502B40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1BE4BF11C(a3, a4);
  sub_1BE4C7570(v10);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  sub_1BE4D9250(a2, &v17 - v13, a3, a4);
  v15 = *a5;
  sub_1BE50A9A0();
  swift_beginAccess();
  sub_1BE4D2184(v14, a1 + v15, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1BE502C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_1BE4BF11C(a5, a6);
  sub_1BE4C7570(v11);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v17 - v14;
  sub_1BE4D9250(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

void sub_1BE502D08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE4BF11C(&qword_1EBDACBA0, &qword_1BE54FE50);
  sub_1BE4C7570(v8);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v30 - v11 + 24;
  sub_1BE50AA7C(v4 + *a2, v30);
  sub_1BE50AB48();
  sub_1BE4D9250(v13, v14, v15, v16);
  LOBYTE(a2) = sub_1BE507DE8(v12, a1);
  sub_1BE4D0E58(v12, &qword_1EBDACBA0, &qword_1BE54FE50);
  if (a2)
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v17, v18);
    sub_1BE50A81C();
    sub_1BE507D40(v19, a4, v20);
  }

  else
  {
    sub_1BE50AB54();
    sub_1BE4D9250(v21, v22, v23, v24);
    sub_1BE50A9A0();
    swift_beginAccess();
    sub_1BE50AB54();
    sub_1BE4D2184(v25, v26, v27, v28);
    swift_endAccess();
  }

  sub_1BE4D0E58(a1, &qword_1EBDACBA0, &qword_1BE54FE50);
  sub_1BE4FFB4C();
}

uint64_t SettingsViewModel.init()()
{
  v2 = v0;
  v3 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  sub_1BE4C757C();
  sub_1BE50A994();
  v6 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v7 = sub_1BE4C7570(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4C757C();
  v11 = v10 - v9;
  sub_1BE500B18(&aBlock);
  v12 = v53;
  *(v2 + 16) = aBlock;
  *(v2 + 32) = v12;
  *(v2 + 48) = v54;
  sub_1BE500020(v11);
  sub_1BE5089E8(v11, v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__signInStatus, type metadata accessor for SettingsViewModel.AccountSignInStatus);
  sub_1BE54AECC();
  *(v1 + *(v4 + 28)) = 0;
  sub_1BE5089E8(v1, v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__deepLinkParams, type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams);
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showingSignInFailureAlert) = 0;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showSignInFailedDueToWorkspaceRestriction) = 0;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showingSignOutDialog) = 0;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyEnableToggleState) = 1;
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacySetupPromptsOn) = sub_1BE53FB20() & 1;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyConfirmationPromptsOn) = sub_1BE53EAA8() & 1;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showManageSubscription) = 0;
  v13 = (v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showRateLimitStatus) = 0;
  v14 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_rateLimitCategories;
  sub_1BE4BF11C(&qword_1EBDACB50, &unk_1BE54FE38);
  v15 = sub_1BE54B40C();
  sub_1BE4C7500();
  v17 = v16;
  v19 = *(v18 + 72);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BE54DC10;
  v22 = v21 + v20;
  v23 = *(v17 + 104);
  v23(v22, *MEMORY[0x1E698AA58], v15);
  v23(v22 + v19, *MEMORY[0x1E698AA48], v15);
  *(v2 + v14) = v21;
  sub_1BE508AD4(&qword_1EBDACB58, MEMORY[0x1E698AA60], MEMORY[0x1E698AA68]);
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates) = sub_1BE54C61C();
  sub_1BE54B50C();
  sub_1BE50A890();
  sub_1BE4C63F8(v24, v25, v26, v27);
  v28 = sub_1BE54AE9C();
  sub_1BE50A890();
  sub_1BE4C63F8(v29, v30, v31, v28);
  sub_1BE50A890();
  sub_1BE4C63F8(v32, v33, v34, v28);
  v35 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_observer;
  *(v2 + v35) = [objc_allocWithZone(type metadata accessor for SettingsObserver()) init];
  sub_1BE54AFFC();
  if (qword_1EBDABA60 != -1)
  {
    sub_1BE50A974(&qword_1EBDABA60);
  }

  sub_1BE50AA08(v36, v37, 0x80000001BE554730);
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__subscriptionInfo) = sub_1BE508E2C(2, v38, v39, v40, v41);
  type metadata accessor for BillingInfo();
  v42 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__billingInfo) = sub_1BE51D494();
  v43 = *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_observer);
  sub_1BE50A968();

  sub_1BE509BB0(v44, v42, &off_1F3CCC538);

  sub_1BE502160();
  sub_1BE50A968();

  sub_1BE520660(v45, &off_1F3CCC550);

  sub_1BE502848();
  swift_weakAssign();

  sub_1BE506954();
  v46 = [objc_opt_self() defaultCenter];
  v47 = *MEMORY[0x1E69ADD68];
  v48 = [objc_opt_self() mainQueue];
  v54 = sub_1BE508F78;
  v55 = v2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v53 = sub_1BE5036B0;
  *(&v53 + 1) = &unk_1F3CCC510;
  v49 = _Block_copy(&aBlock);

  v50 = [v46 addObserverForName:v47 object:0 queue:v48 usingBlock:v49];
  _Block_release(v49);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1BE503478(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = sub_1BE54C91C();
  sub_1BE4C63F8(v6, 1, 1, v7);
  sub_1BE54C8CC();

  v8 = sub_1BE54C8BC();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_1BE50BA3C();
}

uint64_t sub_1BE503578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v4[3] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[4] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50363C, v6, v5);
}

uint64_t sub_1BE50363C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 24);

  sub_1BE500020(v1);
  sub_1BE5014C4();

  sub_1BE4E01E0();

  return v2();
}

uint64_t sub_1BE5036B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE54ACBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_1BE54ACAC();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BE5037A4(uint64_t a1)
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  sub_1BE53CA80(v3);
  sub_1BE5011B0(v3);
  sub_1BE5010B4(v3);
  v1 = v4 != 0;
  sub_1BE4D0E58(v3, &qword_1EBDABAF8, &qword_1BE54DC20);
  return sub_1BE501F24(v1);
}

uint64_t sub_1BE503840()
{
  if (qword_1EBDABA78 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBDB0BF8;
  if (qword_1EBDB0BF8)
  {
    v1 = sub_1BE54C6DC();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 1;
  }

  result = sub_1BE502110();
  if (v2 != (result & 1))
  {

    return sub_1BE502124(v2);
  }

  return result;
}

uint64_t sub_1BE503918()
{
  v1 = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v2);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1BE50A994();
  sub_1BE54C91C();
  v5 = sub_1BE50A848();
  sub_1BE4C63F8(v5, v6, v7, v8);
  sub_1BE54C8CC();
  sub_1BE50A968();

  v9 = sub_1BE54C8BC();
  sub_1BE50AADC();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v1;
  sub_1BE50A89C(v10, v12, v13, v14, v10);
}

uint64_t sub_1BE5039EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1BE54C8CC();
  v4[4] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BE503A88, v6, v5);
}

uint64_t sub_1BE503A88()
{
  sub_1BE4E4418();
  if (qword_1EBDABA60 != -1)
  {
    sub_1BE50A974(&qword_1EBDABA60);
  }

  v1 = qword_1EBDAD030;
  swift_bridgeObjectRetain_n();
  sub_1BE50AA08(v1, v2, 0x80000001BE554730);
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = v5;
  sub_1BE516C58(v3, v4, v6, v5);
  sub_1BE50AA08(v1, v7, 0x80000001BE554730);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v0[10] = v8;
  v0[11] = v10;
  v0[12] = v14;
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_1BE503BAC;

  return sub_1BE5171F0(0, 1, v9, v11, v13, v15);
}

uint64_t sub_1BE503BAC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  sub_1BE4E01C4();
  *v8 = v7;
  *v8 = *v3;

  v9 = *(v6 + 88);
  if (v2)
  {

    a1 = 0;
    a2 = 0;
  }

  else
  {
  }

  *(v7 + 112) = a1;
  *(v7 + 120) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1BE503D40, 0, 0);
}

uint64_t sub_1BE503D40()
{
  sub_1BE4E01D4();
  *(v0 + 128) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  v1 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE503DBC()
{
  sub_1BE4E4418();

  v1 = sub_1BE4E0628();
  sub_1BE5022A8(v1, v2);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BE503E34, v3, v4);
}

uint64_t sub_1BE503E34()
{
  sub_1BE4E4418();
  v1 = *(v0 + 64);

  sub_1BE4E01E0();

  return v2();
}

void sub_1BE503EB0()
{
  v0 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v0);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v1, v2);
  v116 = &v113 - v3;
  v124 = sub_1BE54AE9C();
  sub_1BE4C7500();
  v114 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE4C757C();
  v113 = v8 - v7;
  v9 = sub_1BE4BF11C(&qword_1EBDACBA0, &qword_1BE54FE50);
  v10 = sub_1BE4C7570(v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1BE4D981C();
  v115 = v12 - v13;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v122 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v113 - v19;
  sub_1BE54B36C();
  sub_1BE4C7500();
  v120 = v22;
  v121 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  sub_1BE4C757C();
  v119 = v25 - v24;
  sub_1BE54B39C();
  sub_1BE4C7500();
  v117 = v27;
  v118 = v26;
  MEMORY[0x1EEE9AC00](v26, v28);
  sub_1BE4C757C();
  v31 = v30 - v29;
  v32 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v33 = sub_1BE4C7570(v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  sub_1BE4C757C();
  v37 = v36 - v35;
  v38 = sub_1BE54B3DC();
  sub_1BE4C7500();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  sub_1BE4C757C();
  v45 = v44 - v43;
  v46 = sub_1BE54AEDC();
  sub_1BE4C7500();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49, v50);
  sub_1BE4C757C();
  v53 = v52 - v51;
  sub_1BE54AECC();
  v123 = sub_1BE54AEAC();
  v55 = v54;
  v56 = (*(v48 + 8))(v53, v46);
  v57 = v125;
  sub_1BE50149C(v56, v58, v59);
  v60 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  if (sub_1BE4C63BC(v37, 4, v60))
  {
    sub_1BE50A7C8();
    sub_1BE508F98();
  }

  else
  {
    (*(v40 + 32))(v45, v37, v38);
    sub_1BE54B3AC();
    v61 = v119;
    sub_1BE54B37C();
    (*(v117 + 8))(v31, v118);
    (*(v40 + 8))(v45, v38);
    v63 = v120;
    v62 = v121;
    if ((*(v120 + 88))(v61, v121) == *MEMORY[0x1E698AA20])
    {

      (*(v63 + 8))(v61, v62);
      return;
    }

    (*(v63 + 8))(v61, v62);
  }

  v64 = v55;
  sub_1BE502C18(v20);
  v65 = v124;
  v66 = sub_1BE4C63BC(v20, 1, v124);
  sub_1BE4D0E58(v20, &qword_1EBDACBA0, &qword_1BE54FE50);
  if (v66 == 1)
  {
    v67 = v122;
    sub_1BE502A34(v122);
    sub_1BE50AAE8(v67, 1, v65);
    if (v68)
    {
      sub_1BE4D0E58(v67, &qword_1EBDACBA0, &qword_1BE54FE50);
    }

    else
    {
      v76 = v113;
      v75 = v114;
      (*(v114 + 32))(v113, v67, v65);
      sub_1BE54AE7C();
      v78 = fabs(v77);
      if (v78 < 2.0)
      {
        if (qword_1EBDABAC8 != -1)
        {
          sub_1BE50A7E0(&qword_1EBDABAC8);
        }

        v79 = sub_1BE54B2EC();
        sub_1BE4C52BC(v79, qword_1EBDB0C98);

        v80 = sub_1BE54B2BC();
        v81 = sub_1BE54C97C();

        if (!os_log_type_enabled(v80, v81))
        {

          goto LABEL_41;
        }

        v82 = sub_1BE50AB18();
        v83 = sub_1BE50AAC4();
        v126 = v83;
        *v82 = 136446466;
        v84 = sub_1BE50AA34();

        *(v82 + 4) = v84;
        *(v82 + 12) = 2050;
        v85 = v78 * 1000.0;
        if (COERCE_UNSIGNED_INT64(v78 * 1000.0) >> 52 > 0x7FE)
        {
          __break(1u);
        }

        else if (v85 > -9.22337204e18)
        {
          if (v85 < 9.22337204e18)
          {
            *(v82 + 14) = v85;
            _os_log_impl(&dword_1BE4B8000, v80, v81, "Fetch %{public}s: Quelling rate limit fetch that occurred only %{public}ldms ago.", v82, 0x16u);
            sub_1BE4C58A8(v83);
            sub_1BE4C75DC();
            sub_1BE4C75DC();

LABEL_41:
            (*(v75 + 8))(v76, v65);
            return;
          }

          goto LABEL_44;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      (*(v75 + 8))(v76, v65);
    }

    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v86 = sub_1BE54B2EC();
    sub_1BE4C52BC(v86, qword_1EBDB0C98);

    v87 = sub_1BE54B2BC();
    v88 = sub_1BE54C97C();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = sub_1BE50AB7C();
      v90 = sub_1BE50AAC4();
      v126 = v90;
      *v89 = 136446210;
      *(v89 + 4) = sub_1BE50AA34();
      _os_log_impl(&dword_1BE4B8000, v87, v88, "Fetch %{public}s: Starting rate limit fetch", v89, 0xCu);
      sub_1BE4C58A8(v90);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    v91 = v115;
    sub_1BE54AE8C();
    sub_1BE4C63F8(v91, 0, 1, v65);
    sub_1BE502CE0(v91);
    sub_1BE50A890();
    sub_1BE4C63F8(v92, v93, v94, v65);
    sub_1BE502B18(v91);
    type metadata accessor for LegacyGATUserDefaults();
    v95 = sub_1BE536D88();
    if (v95 != 2)
    {
      v96 = v95;

      v97 = sub_1BE54B2BC();
      v98 = sub_1BE54C9AC();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = sub_1BE50AB18();
        v126 = swift_slowAlloc();
        *v99 = 136446466;
        *(v99 + 4) = sub_1BE50AA34();
        *(v99 + 12) = 2082;
        if (v96)
        {
          v100 = 1702195828;
        }

        else
        {
          v100 = 0x65736C6166;
        }

        if (v96)
        {
          v101 = 0xE400000000000000;
        }

        else
        {
          v101 = 0xE500000000000000;
        }

        v102 = sub_1BE4C5338(v100, v101, &v126);

        *(v99 + 14) = v102;
        _os_log_impl(&dword_1BE4B8000, v97, v98, "Fetch %{public}s: !! You have a rate limit override set to: forceRateLimitState = %{public}s", v99, 0x16u);
        swift_arrayDestroy();
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }
    }

    sub_1BE54C91C();
    v103 = sub_1BE50A848();
    sub_1BE4C63F8(v103, v104, v105, v106);
    sub_1BE54C8CC();

    v107 = sub_1BE54C8BC();
    v108 = swift_allocObject();
    v109 = MEMORY[0x1E69E85E0];
    v108[2] = v107;
    v108[3] = v109;
    v108[4] = v123;
    v108[5] = v64;
    v108[6] = v57;
    sub_1BE50A89C(v108, v110, v111, v112, v108);
  }

  else
  {
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v69 = sub_1BE54B2EC();
    sub_1BE4C52BC(v69, qword_1EBDB0C98);

    v70 = sub_1BE54B2BC();
    v71 = sub_1BE54C97C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = sub_1BE50AB7C();
      v73 = sub_1BE50AAC4();
      v126 = v73;
      *v72 = 136446210;
      v74 = sub_1BE50AA34();

      *(v72 + 4) = v74;
      _os_log_impl(&dword_1BE4B8000, v70, v71, "Fetch %{public}s: Rate limit fetch currently pending; quelling new request", v72, 0xCu);
      sub_1BE4C58A8(v73);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {
    }
  }
}

uint64_t sub_1BE50492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1BE54B40C();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_1BE4BF11C(&qword_1EBDACC18, &qword_1BE5500D0);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  sub_1BE4BF11C(&qword_1EBDACBA0, &qword_1BE54FE50);
  v6[18] = swift_task_alloc();
  v6[19] = sub_1BE54C8CC();
  v6[20] = sub_1BE54C8BC();
  v9 = sub_1BE54C87C();
  v6[21] = v9;
  v6[22] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BE504AB0, v9, v8);
}

uint64_t sub_1BE504AB0()
{
  v20 = v0;
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0(&qword_1EBDABAC8);
  }

  v1 = sub_1BE54B2EC();
  v0[23] = sub_1BE4C52BC(v1, qword_1EBDB0C98);

  v2 = sub_1BE54B2BC();
  v3 = sub_1BE54C97C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = sub_1BE50AB7C();
    v7 = sub_1BE50AAC4();
    v19 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1BE4C5338(v5, v4, &v19);
    _os_log_impl(&dword_1BE4B8000, v2, v3, "Fetch %{public}s: Starting task group", v6, 0xCu);
    sub_1BE4C58A8(v7);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = sub_1BE54C8BC();
  v0[24] = v11;
  v12 = swift_task_alloc();
  v0[25] = v12;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  v13 = sub_1BE4BF11C(&qword_1EBDACC20, &qword_1BE5500E8);
  v14 = sub_1BE4BF11C(&qword_1EBDACC28, &qword_1BE5500F0);
  swift_task_alloc();
  sub_1BE50A8BC();
  v0[26] = v15;
  *v15 = v16;
  v15[1] = sub_1BE504CDC;
  v17 = MEMORY[0x1E69E85E0];
  v22 = v14;

  return MEMORY[0x1EEE6DBF8](v0 + 5, v13, v14, v11, v17, &unk_1BE5500E0, v12, v13);
}

uint64_t sub_1BE504CDC()
{
  sub_1BE4E4418();
  sub_1BE50AB30();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;

  sub_1BE50AB3C();
  v5 = *(v4 + 176);
  v6 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1BE504E28, v6, v5);
}

void sub_1BE504E28()
{
  v73 = v0;
  v1 = v0[18];

  v2 = v0[5];
  v3 = sub_1BE54AE9C();
  sub_1BE50A890();
  sub_1BE4C63F8(v4, v5, v6, v3);
  sub_1BE502CE0(v1);
  sub_1BE54AE8C();
  sub_1BE4C63F8(v1, 0, 1, v3);
  sub_1BE502B18(v1);

  v7 = sub_1BE54B2BC();
  v8 = sub_1BE54C97C();

  v62 = v2;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = sub_1BE50AB18();
    v12 = sub_1BE50AAC4();
    v72 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1BE4C5338(v10, v9, &v72);
    *(v11 + 12) = 2050;
    *(v11 + 14) = *(v2 + 16);

    _os_log_impl(&dword_1BE4B8000, v7, v8, "Fetch %{public}s: Completed task group. budgets dictionary count: %{public}ld", v11, 0x16u);
    sub_1BE4C58A8(v12);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
  }

  v13 = v0[13];
  v71 = v0[11];
  v14 = v2 + 64;
  v15 = -1;
  v16 = -1 << *(v2 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v2 + 64);
  v70 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates;
  v18 = (63 - v16) >> 6;
  v66 = v0[13];
  v67 = (v13 + 32);
  v65 = (v13 + 8);

  v19 = 0;
  v63 = v18;
  v64 = v2 + 64;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v22 = v0[15];
      v21 = v0[16];
      v23 = v0[12];
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v20 << 6);
      (*(v66 + 16))(v22, v62[6] + *(v66 + 72) * v25, v23);
      v68 = *(v62[7] + v25);
      v26 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
      v27 = *(v26 + 48);
      v28 = v0;
      (*(v66 + 32))(v21, v22, v23);
      *(v21 + v27) = v68;
      sub_1BE4C63F8(v21, 0, 1, v26);
LABEL_13:
      v29 = v28[17];
      sub_1BE4D9204(v28[16], v29, &qword_1EBDACC18, &qword_1BE5500D0);
      v30 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
      sub_1BE50AAE8(v29, 1, v30);
      if (v31)
      {
        break;
      }

      v32 = v28[11];
      v69 = *(v28[17] + *(v30 + 48));
      (*v67)(v28[14]);
      swift_getKeyPath();
      v28[6] = v32;
      sub_1BE50A7B0();
      sub_1BE508AD4(&qword_1EBDAC5B8, v33, &protocol conformance descriptor for SettingsViewModel);
      sub_1BE54AFCC();

      v28[7] = v32;
      swift_getKeyPath();
      sub_1BE54AFEC();

      sub_1BE50A9A0();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v72 = *(v71 + v70);
      *(v71 + v70) = 0x8000000000000000;
      sub_1BE52F6F0();
      sub_1BE50AAB4();
      if (__OFADD__(v36, v37))
      {
        goto LABEL_35;
      }

      v38 = v34;
      v39 = v35;
      v0 = v28;
      sub_1BE4BF11C(&qword_1EBDACC38, &qword_1BE550128);
      v40 = sub_1BE54CBAC();
      v41 = v72;
      if (v40)
      {
        v42 = sub_1BE52F6F0();
        if ((v39 & 1) != (v43 & 1))
        {

          sub_1BE54CCFC();
          return;
        }

        v38 = v42;
      }

      v44 = v28[14];
      v45 = v28[12];
      if (v39)
      {
        *(v41[7] + v38) = v69;
        (*v65)(v44, v45);
      }

      else
      {
        v41[(v38 >> 6) + 8] |= 1 << v38;
        (*(v66 + 16))(v41[6] + *(v66 + 72) * v38, v44, v45);
        *(v41[7] + v38) = v69;
        (*(v66 + 8))(v44, v45);
        v46 = v41[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_36;
        }

        v41[2] = v48;
      }

      v49 = v28[11];
      *(v71 + v70) = v41;

      swift_endAccess();
      v28[8] = v49;
      swift_getKeyPath();
      sub_1BE54AFDC();

      v18 = v63;
      v14 = v64;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    v54 = sub_1BE54B2BC();
    v55 = sub_1BE54C97C();

    if (os_log_type_enabled(v54, v55))
    {
      v57 = v28[9];
      v56 = v28[10];
      v58 = sub_1BE50AB18();
      v59 = sub_1BE50AAC4();
      v72 = v59;
      *v58 = 136446466;
      *(v58 + 4) = sub_1BE4C5338(v57, v56, &v72);
      *(v58 + 12) = 2050;
      v60 = v62[2];

      *(v58 + 14) = v60;

      _os_log_impl(&dword_1BE4B8000, v54, v55, "Fetch %{public}s: Updated latestRateLimitStates dictionary, ending count: %{public}ld", v58, 0x16u);
      sub_1BE4C58A8(v59);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v61 = v28[1];

    v61();
  }

  else
  {
LABEL_8:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v28 = v0;
        sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
        sub_1BE50AA28();
        sub_1BE50A890();
        sub_1BE4C63F8(v50, v51, v52, v53);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

uint64_t sub_1BE5055AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_1BE54B43C();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  sub_1BE4BF11C(&qword_1EBDACC40, &qword_1BE550130);
  v5[20] = swift_task_alloc();
  v5[21] = sub_1BE4BF11C(&qword_1EBDACC20, &qword_1BE5500E8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v7 = sub_1BE54B40C();
  v5[28] = v7;
  v8 = *(v7 - 8);
  v5[29] = v8;
  v5[30] = *(v8 + 64);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = sub_1BE54C8CC();
  v5[36] = sub_1BE54C8BC();
  v10 = sub_1BE54C87C();
  v5[37] = v10;
  v5[38] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BE505810, v10, v9);
}

uint64_t sub_1BE505810(uint64_t a1)
{
  v2 = *(*(v1 + 112) + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_rateLimitCategories);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + 232);
    v34 = **(v1 + 104);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = v2 + v5;
    v32 = *(v4 + 72);
    v31 = (v4 + 16);
    v33 = v5;
    v29 = (v4 + 32);
    v30 = (*(v1 + 240) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = sub_1BE54C91C();
    do
    {
      v35 = v3;
      v9 = *(v1 + 264);
      v8 = *(v1 + 272);
      v10 = *(v1 + 256);
      v11 = *(v1 + 224);
      v12 = *(v1 + 112);
      sub_1BE50A890();
      sub_1BE4C63F8(v13, v14, v15, v7);
      (*v31)(v10, v6, v11);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      (*v29)(v16 + v33, v10, v11);
      *(v16 + v30) = v12;
      sub_1BE4D9250(v8, v9, &qword_1EBDAC3A8, &qword_1BE550DA0);
      LODWORD(v9) = sub_1BE4C63BC(v9, 1, v7);

      v17 = *(v1 + 264);
      if (v9 == 1)
      {
        sub_1BE4D0E58(*(v1 + 264), &qword_1EBDAC3A8, &qword_1BE550DA0);
      }

      else
      {
        sub_1BE54C90C();
        (*(*(v7 - 8) + 8))(v17, v7);
      }

      if (*(v16 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1BE54C87C();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1BE550148;
      *(v21 + 24) = v16;

      if (v20 | v18)
      {
        v22 = v1 + 16;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 32) = v18;
        *(v1 + 40) = v20;
      }

      else
      {
        v22 = 0;
      }

      v23 = *(v1 + 272);
      *(v1 + 48) = 1;
      *(v1 + 56) = v22;
      *(v1 + 64) = v34;
      swift_task_create();

      sub_1BE4D0E58(v23, &qword_1EBDAC3A8, &qword_1BE550DA0);
      v6 += v32;
      v3 = v35 - 1;
    }

    while (v35 != 1);
  }

  *(v1 + 336) = *MEMORY[0x1E698AA58];
  *(v1 + 340) = *MEMORY[0x1E698AA48];
  *(v1 + 344) = *MEMORY[0x1E698AA50];
  *(v1 + 348) = *MEMORY[0x1E698AA40];
  *(v1 + 312) = MEMORY[0x1E69E7CC8];
  v24 = sub_1BE54C8BC();
  *(v1 + 320) = v24;
  v25 = swift_task_alloc();
  *(v1 + 328) = v25;
  sub_1BE4BF11C(&qword_1EBDACC48, &qword_1BE550158);
  *v25 = v1;
  v26 = sub_1BE50A8E0();
  v27 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8A0](v26, v24, v27);
}

uint64_t sub_1BE505C08()
{
  sub_1BE4E4418();
  sub_1BE50AB30();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;

  sub_1BE50AB3C();
  v5 = *(v4 + 304);
  v6 = *(v0 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1BE505D38, v6, v5);
}

uint64_t sub_1BE505D38()
{
  v119 = v0;
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_1BE50AAE8(v2, 1, v3);
  if (v19)
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 96);

    sub_1BE4D0E58(v2, &qword_1EBDACC40, &qword_1BE550130);
    *v5 = v4;

    sub_1BE4E01E0();
    sub_1BE50AB60();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 136);
  sub_1BE50AB48();
  sub_1BE4D9204(v10, v11, v12, v13);
  sub_1BE50AB48();
  sub_1BE4D9250(v14, v15, v16, v17);
  v18 = *(v3 + 48);
  sub_1BE50AAE8(v8 + v18, 1, v9);
  if (!v19)
  {
    v35 = *(v0 + 224);
    v36 = *(v0 + 232);
    v37 = *(v0 + 208);
    (*(*(v0 + 144) + 32))(*(v0 + 152), v8 + v18, *(v0 + 136));
    v38 = *(v36 + 8);
    v38(v37, v35);
    v39 = sub_1BE54B42C();
    if (v39)
    {
      v40 = 2;
    }

    else
    {
      v40 = sub_1BE54B41C() & 1;
    }

    v41 = *(v0 + 312);
    sub_1BE4D9250(*(v0 + 216), *(v0 + 192), &qword_1EBDACC20, &qword_1BE5500E8);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v41;
    sub_1BE52F6F0();
    sub_1BE50AAB4();
    if (!__OFADD__(v44, v45))
    {
      v46 = v42;
      v47 = v43;
      sub_1BE4BF11C(&qword_1EBDACC38, &qword_1BE550128);
      if (sub_1BE54CBAC())
      {
        v48 = sub_1BE52F6F0();
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_20;
        }

        v46 = v48;
      }

      v1 = *(v0 + 80);
      if (v47)
      {
        *(*(v1 + 56) + v46) = v40;
LABEL_34:
        v77 = *(v0 + 192);
        v78 = *(*(v0 + 168) + 48);
        v38(v77, *(v0 + 224));
        sub_1BE4D0E58(v77 + v78, &qword_1EBDACC50, &qword_1BE550160);
        if (qword_1EBDABAC8 != -1)
        {
          sub_1BE50A7E0(&qword_1EBDABAC8);
        }

        v79 = *(v0 + 216);
        v80 = *(v0 + 184);
        v81 = sub_1BE54B2EC();
        sub_1BE4C52BC(v81, qword_1EBDB0C98);
        sub_1BE4D9250(v79, v80, &qword_1EBDACC20, &qword_1BE5500E8);

        v82 = sub_1BE54B2BC();
        v83 = sub_1BE54C97C();

        if (os_log_type_enabled(v82, v83))
        {
          v114 = v83;
          v117 = v38;
          v115 = v40;
          v116 = v1;
          v113 = *(v0 + 336);
          v84 = *(v0 + 248);
          v86 = *(v0 + 224);
          v85 = *(v0 + 232);
          v88 = *(v0 + 176);
          v87 = *(v0 + 184);
          v89 = *(v0 + 120);
          v90 = *(v0 + 128);
          v91 = sub_1BE50AAC4();
          *(v0 + 88) = swift_slowAlloc();
          *v91 = 136446722;
          *(v91 + 4) = sub_1BE4C5338(v89, v90, (v0 + 88));
          *(v91 + 12) = 2082;
          sub_1BE4D9250(v87, v88, &qword_1EBDACC20, &qword_1BE5500E8);
          (*(v85 + 16))(v84, v88, v86);
          v92 = (*(v85 + 88))(v84, v86);
          if (v92 == v113)
          {
            v93 = 0xEF65736E6F707365;
            v94 = 0x526E6F6973736573;
            v95 = v115;
          }

          else
          {
            v95 = v115;
            if (v92 == *(v0 + 340))
            {
              v93 = 0xEE00726F74617265;
              v94 = 0x6E65476567616D69;
            }

            else if (v92 == *(v0 + 344))
            {
              v93 = 0xEF72657465727072;
              v94 = 0x65746E4965646F63;
            }

            else if (v92 == *(v0 + 348))
            {
              v93 = 0xEA00000000006461;
              v94 = 0x6F6C7055656C6966;
            }

            else
            {
              v117(*(v0 + 248), *(v0 + 224));
              v93 = 0xEF544C5541464544;
              v94 = 0x5F4E574F4E4B4E55;
            }
          }

          v100 = *(v0 + 224);
          v101 = *(v0 + 176);
          v102 = *(*(v0 + 168) + 48);
          sub_1BE4D0E58(*(v0 + 184), &qword_1EBDACC20, &qword_1BE5500E8);
          v117(v101, v100);
          sub_1BE4D0E58(v101 + v102, &qword_1EBDACC50, &qword_1BE550160);
          v103 = sub_1BE4C5338(v94, v93, (v0 + 88));

          *(v91 + 14) = v103;
          *(v91 + 22) = 2082;
          if (v95)
          {
            v1 = v116;
            if (v95 == 1)
            {
              v104 = 0xE500000000000000;
              v105 = 0x6369736162;
            }

            else
            {
              v104 = 0xEB00000000646574;
              v105 = 0x696D694C64726168;
            }
          }

          else
          {
            v104 = 0xE800000000000000;
            v105 = 0x6465636E61766461;
            v1 = v116;
          }

          v106 = *(v0 + 216);
          v107 = *(v0 + 144);
          v108 = *(v0 + 152);
          v109 = *(v0 + 136);
          v110 = sub_1BE4C5338(v105, v104, (v0 + 88));

          *(v91 + 24) = v110;
          _os_log_impl(&dword_1BE4B8000, v82, v114, "Fetch %{public}s: Retrieved rate limit for category %{public}s, value: %{public}s", v91, 0x20u);
          swift_arrayDestroy();
          sub_1BE4C75DC();
          sub_1BE4C75DC();

          (*(v107 + 8))(v108, v109);
          v71 = &qword_1EBDACC20;
          v72 = v106;
        }

        else
        {
          v96 = *(v0 + 184);
          v98 = *(v0 + 144);
          v97 = *(v0 + 152);
          v99 = *(v0 + 136);

          sub_1BE4D0E58(v96, &qword_1EBDACC20, &qword_1BE5500E8);
          (*(v98 + 8))(v97, v99);
          v72 = sub_1BE4D9800();
        }

LABEL_53:
        sub_1BE4D0E58(v72, v71, &qword_1BE5500E8);
        *(v0 + 312) = v1;
        *(v0 + 320) = sub_1BE54C8BC();
        v111 = swift_task_alloc();
        *(v0 + 328) = v111;
        sub_1BE4BF11C(&qword_1EBDACC48, &qword_1BE550158);
        *v111 = v0;
        sub_1BE50A8E0();
        sub_1BE50AB60();

        return MEMORY[0x1EEE6D8A0](v54, v55, v56);
      }

      v73 = sub_1BE50A920(*(v0 + 232));
      v54 = v74(v73);
      *(*(v1 + 56) + v46) = v40;
      v75 = *(v1 + 16);
      v58 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (!v58)
      {
        *(v1 + 16) = v76;
        goto LABEL_34;
      }

LABEL_60:
      __break(1u);
      return MEMORY[0x1EEE6D8A0](v54, v55, v56);
    }

    goto LABEL_57;
  }

  v20 = *(v0 + 312);
  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  v24 = *(v0 + 208);
  v23 = *(v0 + 216);
  v25 = *(v0 + 200);
  sub_1BE4D0E58(v8 + v18, &qword_1EBDACC50, &qword_1BE550160);
  v26 = *(v22 + 8);
  v26(v24, v21);
  sub_1BE4D9250(v23, v25, &qword_1EBDACC20, &qword_1BE5500E8);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v20;
  sub_1BE52F6F0();
  sub_1BE50AAB4();
  if (__OFADD__(v29, v30))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v31 = v27;
  v32 = v28;
  sub_1BE4BF11C(&qword_1EBDACC38, &qword_1BE550128);
  if ((sub_1BE54CBAC() & 1) == 0)
  {
LABEL_12:
    v1 = *(v0 + 72);
    if (v32)
    {
      *(*(v1 + 56) + v31) = 0;
    }

    else
    {
      v52 = sub_1BE50A920(*(v0 + 232));
      v54 = v53(v52);
      *(*(v1 + 56) + v31) = 0;
      v57 = *(v1 + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        __break(1u);
        goto LABEL_60;
      }

      *(v1 + 16) = v59;
    }

    v60 = *(v0 + 200);
    v61 = *(*(v0 + 168) + 48);
    v26(v60, *(v0 + 224));
    sub_1BE4D0E58(v60 + v61, &qword_1EBDACC50, &qword_1BE550160);
    if (qword_1EBDABAC8 == -1)
    {
LABEL_26:
      v62 = sub_1BE54B2EC();
      sub_1BE4C52BC(v62, qword_1EBDB0C98);
      sub_1BE50A968();

      v63 = sub_1BE54B2BC();
      v64 = sub_1BE54C97C();

      v65 = os_log_type_enabled(v63, v64);
      v66 = *(v0 + 216);
      if (v65)
      {
        v68 = *(v0 + 120);
        v67 = *(v0 + 128);
        v69 = sub_1BE50AB7C();
        v70 = sub_1BE50AAC4();
        v118 = v70;
        *v69 = 136446210;
        *(v69 + 4) = sub_1BE4C5338(v68, v67, &v118);
        _os_log_impl(&dword_1BE4B8000, v63, v64, "Fetch %{public}s: value is nil, assigning state .advanced", v69, 0xCu);
        sub_1BE4C58A8(v70);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }

      v71 = &qword_1EBDACC20;
      v72 = v66;
      goto LABEL_53;
    }

LABEL_58:
    sub_1BE50A7E0(&qword_1EBDABAC8);
    goto LABEL_26;
  }

  v33 = sub_1BE52F6F0();
  if ((v32 & 1) == (v34 & 1))
  {
    v31 = v33;
    goto LABEL_12;
  }

LABEL_20:
  sub_1BE50AB60();

  return sub_1BE54CCFC();
}

uint64_t sub_1BE50676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BE506790, 0, 0);
}

uint64_t sub_1BE506790()
{
  sub_1BE4E4418();
  sub_1BE4BF11C(&qword_1EBDACC20, &qword_1BE5500E8);
  sub_1BE54B40C();
  sub_1BE4C7470();
  v1 = sub_1BE4D9800();
  v2(v1);
  swift_task_alloc();
  sub_1BE50A8BC();
  *(v0 + 40) = v3;
  *v3 = v4;
  v3[1] = sub_1BE506874;

  return sub_1BE5075C4();
}

uint64_t sub_1BE506874()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  sub_1BE4E01E0();

  return v3();
}

uint64_t sub_1BE506954()
{
  v1 = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v2);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1BE50A994();
  v5 = sub_1BE54C91C();
  v6 = sub_1BE50A848();
  sub_1BE4C63F8(v6, v7, v8, v5);
  sub_1BE54C8CC();
  sub_1BE50A968();

  v9 = sub_1BE54C8BC();
  sub_1BE50AADC();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v0;
  sub_1BE50A89C(v10, v12, v13, v14, v10);

  v15 = sub_1BE50A848();
  sub_1BE4C63F8(v15, v16, v17, v5);

  v18 = sub_1BE54C8BC();
  sub_1BE50AADC();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v11;
  v19[4] = v1;
  sub_1BE50A89C(v19, v20, v21, v22, v19);
}

uint64_t sub_1BE506A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v4[3] = swift_task_alloc();
  v5 = sub_1BE54B3DC();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = sub_1BE54C8CC();
  v4[8] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BE506BA8, v7, v6);
}

uint64_t sub_1BE506BA8()
{
  sub_1BE4E01D4();
  *(v0 + 88) = sub_1BE502848();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1BE506C40;

  return sub_1BE51A0E4();
}

uint64_t sub_1BE506C40()
{
  sub_1BE4E4418();
  sub_1BE50AB30();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;

  sub_1BE50AB3C();
  v5 = *(v4 + 80);
  v6 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BE506D70, v6, v5);
}

uint64_t sub_1BE506D70()
{
  sub_1BE4E021C();
  v1 = v0[3];
  sub_1BE50149C(v2, v3, v4);
  v5 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  if (sub_1BE4C63BC(v1, 4, v5))
  {
    sub_1BE50A7C8();
    sub_1BE508F98();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    sub_1BE502160();
    v6 = sub_1BE53455C();
    sub_1BE5206E4(v6 & 1);

    v7 = sub_1BE4E0628();
    v8(v7);
  }

  v0[13] = sub_1BE502160();
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1BE506EBC;

  return sub_1BE5207AC();
}

uint64_t sub_1BE506EBC()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;
  *(v4 + 128) = v3;

  v5 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BE506FC4()
{
  sub_1BE4E01D4();
  *(v0 + 120) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  v1 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE507040()
{
  sub_1BE4E4418();
  v1 = *(v0 + 128);

  sub_1BE502484((v1 & 0xFE) != 2);
  sub_1BE5021DC(v1 == 2);
  sub_1BE503EB0();
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BE5070D4, v2, v3);
}

uint64_t sub_1BE5070D4()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE507144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_1BE4BF11C(&qword_1EBDACC78, &qword_1BE550438);
  v4[18] = swift_task_alloc();
  sub_1BE4BF11C(&qword_1EBDACB98, &qword_1BE54FE48);
  v4[19] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[20] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BE50724C, v6, v5);
}

uint64_t sub_1BE50724C()
{
  sub_1BE4E01D4();
  sub_1BE5010B4(v0 + 56);
  if (*(v0 + 80))
  {
    sub_1BE4BF094((v0 + 56), v0 + 16);
    sub_1BE50A5B8(v0 + 16, v0 + 96);
    v1 = type metadata accessor for ExternalAIAuthenticatorHelper(0);
    sub_1BE4FFCE4(v1);
    *(v0 + 184) = sub_1BE534D4C((v0 + 96));
    swift_task_alloc();
    sub_1BE50A8BC();
    *(v0 + 192) = v2;
    *v2 = v3;
    v2[1] = sub_1BE507380;

    return sub_1BE534718();
  }

  else
  {

    sub_1BE4D0E58(v0 + 56, &qword_1EBDABAF8, &qword_1BE54DC20);

    sub_1BE4E01E0();

    return v5();
  }
}

uint64_t sub_1BE507380()
{
  sub_1BE4E4418();
  sub_1BE50AB30();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;

  sub_1BE50AB3C();
  v5 = *(v4 + 176);
  v6 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1BE5074B0, v6, v5);
}

uint64_t sub_1BE5074B0()
{
  sub_1BE4E4418();
  v1 = v0[18];

  v2 = sub_1BE54B52C();
  if (sub_1BE4C63BC(v1, 1, v2) == 1)
  {
    sub_1BE4D0E58(v0[18], &qword_1EBDACC78, &qword_1BE550438);
    sub_1BE54B50C();
    sub_1BE50AA28();
    sub_1BE50A890();
    sub_1BE4C63F8(v3, v4, v5, v6);
  }

  else
  {
    sub_1BE54B51C();
    sub_1BE50A884();
    v7 = sub_1BE4FFBD8();
    v8(v7);
  }

  sub_1BE5026E0(v0[19]);
  sub_1BE4C58A8(v0 + 2);

  sub_1BE4E01E0();

  return v9();
}

uint64_t sub_1BE5075C4()
{
  sub_1BE4E01D4();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_1BE54B40C();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v5 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v5);
  v1[23] = swift_task_alloc();
  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE5076B0()
{
  sub_1BE4E01D4();
  sub_1BE54C8CC();
  *(v0 + 192) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  v1 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE507734()
{
  sub_1BE4E01D4();

  sub_1BE5010B4(v0 + 56);
  v1 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE50779C()
{
  sub_1BE4E01D4();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 184);
    sub_1BE4BF094((v0 + 56), v0 + 16);
    sub_1BE50A5B8(v0 + 16, v0 + 96);
    v2 = type metadata accessor for ExternalAIAuthenticatorHelper(0);
    sub_1BE4FFCE4(v2);
    sub_1BE534D4C((v0 + 96));
    sub_1BE533EC4();

    v3 = sub_1BE54B4FC();
    *(v0 + 200) = v3;
    sub_1BE50AAE8(v1, 1, v3);
    if (!v4)
    {
      swift_task_alloc();
      sub_1BE50A8BC();
      *(v0 + 208) = v12;
      *v12 = v13;
      v12[1] = sub_1BE507948;
      v14 = *(v0 + 136);
      v15 = *(v0 + 144);

      return MEMORY[0x1EEDEB758](v14, v15);
    }

    v5 = *(v0 + 184);
    sub_1BE4C58A8((v0 + 16));
    sub_1BE4D0E58(v5, &qword_1EBDAC5A8, &qword_1BE54F818);
    sub_1BE54B43C();
  }

  else
  {
    sub_1BE4D0E58(v0 + 56, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE54B43C();
    sub_1BE50AA28();
  }

  sub_1BE50A890();
  sub_1BE4C63F8(v6, v7, v8, v9);

  sub_1BE4E01E0();

  return v10();
}

uint64_t sub_1BE507948()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;
  *(v3 + 216) = v0;

  if (v0)
  {
    v6 = sub_1BE507AE0;
  }

  else
  {
    sub_1BE50A884();
    (*(v7 + 8))();
    v6 = sub_1BE507A78;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BE507A78()
{
  sub_1BE4E01D4();
  sub_1BE4C58A8((v0 + 16));

  sub_1BE4E01E0();

  return v1();
}

uint64_t sub_1BE507AE0()
{
  sub_1BE4C58A8(v0 + 2);
  sub_1BE50A884();
  v1 = sub_1BE4D9800();
  v2(v1);
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0(&qword_1EBDABAC8);
  }

  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[18];
  v8 = sub_1BE54B2EC();
  sub_1BE4C52BC(v8, qword_1EBDB0C98);
  (*(v5 + 16))(v4, v7, v6);
  v9 = v3;
  v10 = sub_1BE54B2BC();
  v11 = sub_1BE54C98C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[27];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[20];
  if (v12)
  {
    v17 = sub_1BE50AB18();
    v18 = swift_slowAlloc();
    *v17 = 134349314;
    v19 = MEMORY[0x1BFB46900]();
    (*(v15 + 8))(v14, v16);
    *(v17 + 4) = v19;
    *(v17 + 12) = 2114;
    v20 = v13;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    *v18 = v21;
    _os_log_impl(&dword_1BE4B8000, v10, v11, "retrieveLatestRateLimitBudget for category %{public}ld failed with error: %{public}@", v17, 0x16u);
    sub_1BE4D0E58(v18, &qword_1EBDAC2F0, &qword_1BE54F880);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
    (*(v15 + 8))(v0[22], v0[20]);
  }

  sub_1BE54B43C();
  sub_1BE50AA28();
  sub_1BE50A890();
  sub_1BE4C63F8(v22, v23, v24, v25);

  sub_1BE4E01E0();

  return v26();
}

uint64_t sub_1BE507D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE50A7B0();
  sub_1BE508AD4(v3, v4, &protocol conformance descriptor for SettingsViewModel);
  return sub_1BE54AFBC();
}

uint64_t sub_1BE507DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54AE9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDACBA0, &qword_1BE54FE50);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDACC58, &qword_1BE5501A0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1BE4D9250(a1, &v23 - v16, &qword_1EBDACBA0, &qword_1BE54FE50);
  sub_1BE4D9250(a2, &v17[v18], &qword_1EBDACBA0, &qword_1BE54FE50);
  if (sub_1BE4C63BC(v17, 1, v4) != 1)
  {
    sub_1BE4D9250(v17, v12, &qword_1EBDACBA0, &qword_1BE54FE50);
    if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BE508AD4(&qword_1EBDACC60, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v20 = sub_1BE54C64C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BE4D0E58(v17, &qword_1EBDACBA0, &qword_1BE54FE50);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BE4D0E58(v17, &qword_1EBDACC58, &qword_1BE5501A0);
    v19 = 1;
    return v19 & 1;
  }

  sub_1BE4D0E58(v17, &qword_1EBDACBA0, &qword_1BE54FE50);
  v19 = 0;
  return v19 & 1;
}

BOOL sub_1BE5080E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BE54CCDC();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1BE50813C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B50C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDACB98, &qword_1BE54FE48);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDACC68, &qword_1BE550220);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1BE4D9250(a1, &v23 - v16, &qword_1EBDACB98, &qword_1BE54FE48);
  sub_1BE4D9250(a2, &v17[v18], &qword_1EBDACB98, &qword_1BE54FE48);
  if (sub_1BE4C63BC(v17, 1, v4) != 1)
  {
    sub_1BE4D9250(v17, v12, &qword_1EBDACB98, &qword_1BE54FE48);
    if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BE508AD4(&qword_1EBDACC70, MEMORY[0x1E698AAA8], MEMORY[0x1E698AAB0]);
      v20 = sub_1BE54C64C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BE4D0E58(v17, &qword_1EBDACB98, &qword_1BE54FE48);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BE4D0E58(v17, &qword_1EBDACC68, &qword_1BE550220);
    v19 = 1;
    return v19 & 1;
  }

  sub_1BE4D0E58(v17, &qword_1EBDACB98, &qword_1BE54FE48);
  v19 = 0;
  return v19 & 1;
}

uint64_t SettingsViewModel.deinit()
{
  sub_1BE4D0E58(v0 + 16, &qword_1EBDABAF8, &qword_1BE54DC20);
  sub_1BE50A7C8();
  sub_1BE508F98();
  sub_1BE50A950();
  sub_1BE508F98();

  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__userAccountStatus, &qword_1EBDACB98, &qword_1BE54FE48);

  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__lastRateLimitResponseDate, &qword_1EBDACBA0, &qword_1BE54FE50);
  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__pendingRateLimitFetchStart, &qword_1EBDACBA0, &qword_1BE54FE50);

  v1 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel___observationRegistrar;
  sub_1BE54B00C();
  sub_1BE4C7470();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SettingsViewModel.__deallocating_deinit()
{
  SettingsViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1BE508600(char a1)
{
  v2 = v1;
  v4 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v4);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE50A994();
  if (a1)
  {
    sub_1BE54C91C();
    v7 = sub_1BE50A848();
    sub_1BE4C63F8(v7, v8, v9, v10);
    sub_1BE54C8CC();
    sub_1BE50A968();

    v11 = sub_1BE54C8BC();
    sub_1BE50AADC();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v2;
    sub_1BE50A89C(v12, v14, v15, v16, v12);
  }
}

uint64_t sub_1BE5086DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BE54C8CC();
  *(v4 + 24) = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE508774, v6, v5);
}

uint64_t sub_1BE508774()
{
  sub_1BE4E01D4();

  sub_1BE502848();
  sub_1BE51AAB0();

  sub_1BE4E01E0();

  return v0();
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.id.getter()
{
  sub_1BE54AEDC();
  sub_1BE4C7470();
  v0 = sub_1BE4D9800();

  return v1(v0);
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.id.setter()
{
  sub_1BE4D97A4();
  sub_1BE54AEDC();
  sub_1BE4C7470();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.params.getter()
{
  type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.params.setter()
{
  v2 = sub_1BE4D97A4();
  v3 = *(type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

void (*SettingsViewModel.IdentifiableDeepLinkParams.params.modify())()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(v0);
  return nullsub_1;
}

void *sub_1BE508994(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1BE5089E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1BE4C7470();
  v4 = sub_1BE4D9800();
  v5(v4);
  return a2;
}

id sub_1BE508A44(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE54C6DC();

  sub_1BE4FFBD8();
  v3 = sub_1BE54C6DC();

  v4 = [swift_getObjCClassFromMetadata() bagForProfile:v2 profileVersion:v3];

  return v4;
}

uint64_t sub_1BE508AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BE508B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = &unk_1F3CCCBE8;
  v14 = &off_1F3CCCDA8;
  v9 = swift_allocObject();
  v12[0] = v9;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  sub_1BE4C52F4(v12, &unk_1F3CCCBE8);
  sub_1BE5174E4();
  sub_1BE50A6A4();
  sub_1BE4C52F4(v12, v13);
  sub_1BE4C52F4(v12, v13);

  sub_1BE50AB48();
  sub_1BE508A44(v10, v11);
  sub_1BE4C58A8(v12);
  sub_1BE4D9800();
  sub_1BE50AB54();
}

uint64_t sub_1BE508C24(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v27[-1] - v14;
  v27[3] = &type metadata for AppStoreDaemonDataSource;
  v27[4] = &off_1F3CCD210;
  v16 = swift_allocObject();
  v27[0] = v16;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  *(a6 + 16) = 5;
  v17 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL;
  v18 = sub_1BE54AE3C();
  sub_1BE4C63F8(a6 + v17, 1, 1, v18);
  v19 = (a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText);
  *v19 = 0;
  v19[1] = 0;
  *(a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions) = MEMORY[0x1E69E7CD0];
  v20 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan;
  *(a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan) = 2;
  *(a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__subscriptionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1BE54AFFC();
  *(a6 + v20) = a1;
  sub_1BE50A5B8(v27, a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__appStoreDataSource);
  v21 = sub_1BE54C91C();
  sub_1BE4C63F8(v15, 1, 1, v21);
  sub_1BE54C8CC();

  v22 = sub_1BE54C8BC();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a6;
  sub_1BE50BA3C();

  sub_1BE4C58A8(v27);
  return a6;
}

uint64_t sub_1BE508E2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[3] = &type metadata for AppStoreDaemonDataSource;
  v19[4] = &off_1F3CCD210;
  v10 = swift_allocObject();
  v19[0] = v10;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  type metadata accessor for SubscriptionInfo(0);
  v11 = swift_allocObject();
  v12 = sub_1BE50A568(v19, &type metadata for AppStoreDaemonDataSource);
  MEMORY[0x1EEE9AC00](v12, v12);
  v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_1BE508C24(a1, *v14, v14[1], v14[2], v14[3], v11);
  sub_1BE4C58A8(v19);
  return v16;
}

uint64_t sub_1BE508F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BE508F98()
{
  v1 = sub_1BE4D97A4();
  v2(v1);
  sub_1BE4C7470();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1BE50903C(uint64_t a1)
{
  type metadata accessor for SettingsViewModel.AccountSignInStatus(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(319);
    if (v2 <= 0x3F)
    {
      sub_1BE5092FC(319, &qword_1EBDACBC0, MEMORY[0x1E698AAA8]);
      if (v3 <= 0x3F)
      {
        sub_1BE5092FC(319, &qword_1EBDACBC8, MEMORY[0x1E6969530]);
        if (v4 <= 0x3F)
        {
          sub_1BE54B00C();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1BE5092FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE54C9EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BE509378(uint64_t a1)
{
  sub_1BE54AEDC();
  if (v1 <= 0x3F)
  {
    sub_1BE5093FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BE5093FC(uint64_t a1)
{
  if (!qword_1EBDACBE0)
  {
    sub_1BE4C5948(&qword_1EBDACBE8, &qword_1BE54FFB0);
    v1 = sub_1BE54C9EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDACBE0);
    }
  }
}

uint64_t getEnumTagSinglePayload for RateLimitState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RateLimitState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE5095EC(uint64_t a1)
{
  sub_1BE509644();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1BE509644()
{
  if (!qword_1EBDACC00)
  {
    v0 = sub_1BE54B3DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDACC00);
    }
  }
}

unint64_t sub_1BE509690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDACC08;
  if (!qword_1EBDACC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACC08);
  }

  return result;
}

uint64_t sub_1BE5096E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1BE4C7470();
  v4 = sub_1BE4D9800();
  v5(v4);
  return a2;
}

uint64_t sub_1BE509740()
{
  sub_1BE4E021C();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v5[1] = sub_1BE4E43A8;
  v7 = sub_1BE4FFA4C();

  return sub_1BE50492C(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1BE5097F0()
{
  sub_1BE4E021C();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_1BE4E4408(v8);
  *v9 = v10;
  v9[1] = sub_1BE4E43A8;

  return sub_1BE5055AC(v4, v2, v5, v6, v7);
}

uint64_t sub_1BE5098A8()
{
  sub_1BE4E021C();
  sub_1BE4D97A4();
  v1 = *(sub_1BE54B40C() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  v4 = sub_1BE4E4408(v3);
  *v4 = v5;
  v4[1] = sub_1BE4E43A8;
  v6 = sub_1BE4FFA4C();

  return sub_1BE50676C(v6, v7, v8, v9, v2);
}

uint64_t sub_1BE5099AC()
{
  sub_1BE4E4418();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v5[1] = sub_1BE4DF8E8;

  return sub_1BE4E3B40(v2, v3);
}

uint64_t sub_1BE509A58()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE5039EC(v3, v4, v5, v6);
}

uint64_t sub_1BE509BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_subscribers;
  sub_1BE50A9A0();
  swift_beginAccess();
  sub_1BE4DC9A0();
  v5 = *(*(a2 + v4) + 16);
  sub_1BE4DCA14(v5);
  v6 = *(a2 + v4);
  *(v6 + 16) = v5 + 1;
  sub_1BE50A368(v8, v6 + 16 * v5 + 32);
  *(a2 + v4) = v6;
  return swift_endAccess();
}

uint64_t sub_1BE509C4C(uint64_t a1, uint64_t a2)
{
  v64 = sub_1BE54B40C();
  v58 = *(v64 - 8);
  v5 = MEMORY[0x1EEE9AC00](v64, v4);
  v59 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v57 = v54 - v8;
  v9 = sub_1BE4BF11C(&qword_1EBDACC18, &qword_1BE5500D0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  result = MEMORY[0x1EEE9AC00](v11, v12);
  v16 = v54 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v60 = v15;
  v17 = 0;
  v55 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v54[0] = v19;
  v54[1] = v58 + 16;
  v61 = v54 - v14;
  v62 = (v58 + 32);
  v56 = (v58 + 8);
  while (v23)
  {
    v63 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_13:
    v29 = v55;
    v30 = v57;
    v31 = v58;
    v32 = v64;
    (*(v58 + 16))(v57, *(v55 + 48) + *(v58 + 72) * v25, v64);
    v33 = *(*(v29 + 56) + v25);
    v34 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
    v35 = *(v34 + 48);
    v36 = *(v31 + 32);
    v26 = v60;
    v36(v60, v30, v32);
    *(v26 + v35) = v33;
    sub_1BE4C63F8(v26, 0, 1, v34);
    v16 = v61;
LABEL_14:
    sub_1BE4D9204(v26, v16, &qword_1EBDACC18, &qword_1BE5500D0);
    v37 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
    v38 = sub_1BE4C63BC(v16, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v59;
    v42 = v64;
    (*v62)(v59, v16, v64);
    v43 = v16[v40];
    v44 = sub_1BE52F6F0();
    v46 = v45;
    (*v56)(v41, v42);
    if ((v46 & 1) == 0)
    {
      return v39;
    }

    if (*(*(a2 + 56) + v44))
    {
      if (*(*(a2 + 56) + v44) == 1)
      {
        v47 = 0xE500000000000000;
        v48 = 0x6369736162;
        if (!v43)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v48 = 0x696D694C64726168;
        v47 = 0xEB00000000646574;
        if (!v43)
        {
LABEL_24:
          v49 = 0xE800000000000000;
          v50 = 0x6465636E61766461;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v47 = 0xE800000000000000;
      v48 = 0x6465636E61766461;
      if (!v43)
      {
        goto LABEL_24;
      }
    }

    if (v43 == 1)
    {
      v49 = 0xE500000000000000;
      v50 = 0x6369736162;
    }

    else
    {
      v50 = 0x696D694C64726168;
      v49 = 0xEB00000000646574;
    }

LABEL_26:
    if (v48 == v50 && v47 == v49)
    {

      v16 = v61;
      v23 = v63;
    }

    else
    {
      v52 = sub_1BE54CCDC();

      v16 = v61;
      v23 = v63;
      if ((v52 & 1) == 0)
      {
        return v39;
      }
    }
  }

  v26 = v60;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v53 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
      sub_1BE4C63F8(v26, 1, 1, v53);
      v63 = 0;
      goto LABEL_14;
    }

    v28 = *(v54[0] + 8 * v27);
    ++v17;
    if (v28)
    {
      v63 = (v28 - 1) & v28;
      v25 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE50A278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE50A2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE50A3C4()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE503578(v3, v4, v5, v6);
}

uint64_t sub_1BE50A450()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE506A84(v3, v4, v5, v6);
}

uint64_t sub_1BE50A4DC()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE507144(v3, v4, v5, v6);
}

uint64_t sub_1BE50A568(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1BE50A5B8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_1BE50A884();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1BE50A618()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  sub_1BE50A800(v1);

  return sub_1BE522DDC();
}

unint64_t sub_1BE50A6A4()
{
  result = qword_1EBDACC80;
  if (!qword_1EBDACC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDACC80);
  }

  return result;
}

uint64_t sub_1BE50A6E8()
{
  swift_unknownObjectRelease();

  sub_1BE50AADC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BE50A724()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE5086DC(v3, v4, v5, v6);
}

uint64_t sub_1BE50A7E0(uint64_t a1)
{

  return swift_once();
}

void sub_1BE50A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1BE50BA3C();
}

uint64_t sub_1BE50A974(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE50A9C0()
{

  return sub_1BE4C63BC(v0 + v2, 4, v1);
}

void sub_1BE50AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1BE508B1C(a1, 0xD000000000000011, a3, 49, 0xE100000000000000);
}

unint64_t sub_1BE50AA34()
{
  v3 = *(v1 - 128);

  return sub_1BE4C5338(v3, v0, (v1 - 104));
}

uint64_t sub_1BE50AA50(uint64_t a1)
{

  return sub_1BE507D40(a1, v1, &v4);
}

uint64_t sub_1BE50AA7C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1BE50AAC4()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE50AB00(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BE507D40(a1, v3, a3);
}

uint64_t sub_1BE50AB18()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE50AB7C()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE50AB94()
{
  v3[3] = sub_1BE4BF11C(&qword_1EBDACC88, &qword_1BE550480);
  v3[4] = sub_1BE4C6A14(&qword_1EBDACC90, &qword_1EBDACC88, &qword_1BE550480, MEMORY[0x1E697C858]);
  sub_1BE50B648(v3);
  sub_1BE4BF11C(&qword_1EBDACC98, &qword_1BE550488);
  sub_1BE4C6A14(&qword_1EBDACCA0, &qword_1EBDACC98, &qword_1BE550488, &unk_1BE550728);
  sub_1BE54BD0C();
  MEMORY[0x1BFB47EC0](v3);
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  v1[2] = v0;
  v1[3] = sub_1BE50AD20;
  v1[4] = 0;

  sub_1BE54C9CC();
}

uint64_t sub_1BE50AD20@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = sub_1BE54B76C();
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBDB0C00;
  v6 = sub_1BE54BF6C();
  v8 = v7;
  v10 = v9;
  sub_1BE54B75C();
  v11 = sub_1BE54BF4C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1BE4C68C8(v6, v8, v10 & 1);

  result = (*(v21 + 8))(v4, v1);
  v19 = v22;
  *v22 = v11;
  v19[1] = v13;
  *(v19 + 16) = v15 & 1;
  v19[3] = v17;
  return result;
}

void sub_1BE50AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    MEMORY[0x1EEE9AC00](Strong, v6);
    v8[3] = sub_1BE4BF11C(&qword_1EBDACCA8, &qword_1BE550490);
    v8[4] = sub_1BE4C6A14(&qword_1EBDACCB0, &qword_1EBDACCA8, &qword_1BE550490, MEMORY[0x1E697C858]);
    sub_1BE50B648(v8);
    sub_1BE4BF11C(&qword_1EBDACCB8, &qword_1BE550498);
    sub_1BE50B6C0();
    sub_1BE54BD0C();
    MEMORY[0x1BFB47EC0](v8);
  }
}

uint64_t sub_1BE50B04C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1BE54BC5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE4BF11C(&qword_1EBDACCB8, &qword_1BE550498);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v20 - v13);
  if (sub_1BE54B54C())
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BE54B53C();
  }

  KeyPath = swift_getKeyPath();
  if (v15)
  {
    sub_1BE54BC4C();
  }

  else
  {
    sub_1BE54BC3C();
  }

  v17 = (v14 + *(v11 + 36));
  v18 = sub_1BE4BF11C(&qword_1EBDACCD0, &qword_1BE5504A0);
  (*(v7 + 32))(v17 + *(v18 + 28), v10, v6);
  *v17 = KeyPath;
  *v14 = a1;
  v14[1] = a2;
  sub_1BE50B7A4(v14, a3);
}

uint64_t sub_1BE50B220(uint64_t a1)
{
  v2 = sub_1BE54BC5C();
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE54B8EC();
}

id sub_1BE50B348(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_1BE54C6DC();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_1BE50B46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_1BE54C6DC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id sub_1BE50B550(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BE50B5E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BE50B63C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t *sub_1BE50B648(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_1BE50B6C0()
{
  result = qword_1EBDACCC0;
  if (!qword_1EBDACCC0)
  {
    sub_1BE4C5948(&qword_1EBDACCB8, &qword_1BE550498);
    sub_1BE4C6A14(&qword_1EBDACCA0, &qword_1EBDACC98, &qword_1BE550488, &unk_1BE550728);
    sub_1BE4C6A14(&qword_1EBDACCC8, &qword_1EBDACCD0, &qword_1BE5504A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACCC0);
  }

  return result;
}

uint64_t sub_1BE50B7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDACCB8, &qword_1BE550498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BE50B814@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1BE52F67C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1BE4C6FB8(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1BE50B878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BE52F67C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE50B8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BE52F67C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1BE50B920(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 3;
  }

  v3 = sub_1BE52F6F0();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 3;
  }
}

double sub_1BE50B96C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1BE52F784(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 40 * v5;

    sub_1BE4C6918(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1BE50B9D8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1BE52F850(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_1BE4C6FB8(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1BE50BA3C()
{
  sub_1BE4FFB64();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v9);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = sub_1BE511B08();
  sub_1BE51170C(v12, v13, &qword_1EBDAC3A8, &qword_1BE550DA0);
  v14 = sub_1BE54C91C();
  v15 = sub_1BE4C63BC(v0, 1, v14);

  if (v15 == 1)
  {
    sub_1BE511848(v0, &qword_1EBDAC3A8, &qword_1BE550DA0);
  }

  else
  {
    sub_1BE54C90C();
    sub_1BE50A884();
    (*(v16 + 8))(v0, v14);
  }

  v17 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1BE511848(v6, &qword_1EBDAC3A8, &qword_1BE550DA0);
    sub_1BE4D9838();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1BE54C87C();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1BE54C75C();
  sub_1BE4D9838();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;

  swift_task_create();

  sub_1BE511848(v6, &qword_1EBDAC3A8, &qword_1BE550DA0);

LABEL_9:
  sub_1BE4FFB4C();
}

void sub_1BE50BCEC()
{
  sub_1BE4FFB64();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v9);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = sub_1BE511B08();
  sub_1BE51170C(v12, v13, &qword_1EBDAC3A8, &qword_1BE550DA0);
  v14 = sub_1BE54C91C();
  v15 = sub_1BE4C63BC(v0, 1, v14);

  if (v15 == 1)
  {
    sub_1BE511848(v0, &qword_1EBDAC3A8, &qword_1BE550DA0);
  }

  else
  {
    sub_1BE54C90C();
    sub_1BE50A884();
    (*(v16 + 8))(v0, v14);
  }

  v17 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1BE511848(v6, &qword_1EBDAC3A8, &qword_1BE550DA0);
    sub_1BE4D9838();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v2;
    sub_1BE4BF11C(&qword_1EBDACD78, &qword_1BE550648);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1BE54C87C();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1BE54C75C();
  sub_1BE4D9838();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;

  sub_1BE4BF11C(&qword_1EBDACD78, &qword_1BE550648);
  swift_task_create();

  sub_1BE511848(v6, &qword_1EBDAC3A8, &qword_1BE550DA0);

LABEL_9:
  sub_1BE4FFB4C();
}

uint64_t sub_1BE50BFB0()
{
  sub_1BE4BF11C(&qword_1EBDABE48, &unk_1BE550660);
  result = swift_allocObject();
  *(result + 16) = xmmword_1BE5504E0;
  v2 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier);
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  *(result + 32) = v2;
  v4 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupRequestsToggleSpecifier);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 40) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 48) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_requestDialogToggleSpecifier);
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 56) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier);
  if (v7)
  {
    *(result + 64) = v7;
    v8 = v2;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    return v3;
  }

LABEL_11:
  __break(1u);
  return result;
}