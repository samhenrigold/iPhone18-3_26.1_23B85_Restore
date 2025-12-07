uint64_t sub_1A9422ACC()
{
  if (*v0 >= 2uLL)
  {
    if (*v0 != 2)
    {
    }

    sub_1A937829C(&qword_1EB387258, &qword_1A958C0C0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1A958BF20;
    *(v1 + 32) = *sub_1A9493C6C();
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 65) = 0u;
    v2 = sub_1A9493C9C();
  }

  else
  {
    sub_1A937829C(&qword_1EB387258, &qword_1A958C0C0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1A958BF20;
    *(v1 + 32) = *sub_1A9493C9C();
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 65) = 0u;
    v2 = sub_1A9493CB4();
  }

  *(v1 + 88) = *v2;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 121) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = -64;
  v3 = sub_1A9493C54();
  result = v1;
  *(v1 + 200) = *v3;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 233) = 0u;
  *(v1 + 256) = 1;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0;
  *(v1 + 304) = -64;
  return result;
}

uint64_t sub_1A9422C00(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  v8 = *(a1 + 96);
  v7 = *(a1 + 104);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  v14 = *(a2 + 10);
  v13 = *(a2 + 11);
  v16 = *(a2 + 12);
  v15 = *(a2 + 13);
  v17 = *(a2 + 14);
  v18 = *v2;
  v19 = *(v2 + 16);
  v20 = *(v2 + 32);
  v21 = *(v2 + 48);
  v22 = v21 >> 6;
  v23 = *(a2 + 120);
  if (v21 >> 6 > 1)
  {
    v28 = *(a1 + 40);
    v27 = *(a1 + 48);
    v29 = *(a1 + 56);
    v31 = *(a2 + 5);
    v30 = *(a2 + 6);
    v32 = *(a2 + 56);
    if (v22 == 2)
    {
      v33 = *(a1 + 16);
      v78 = *a1;
      v79 = v33;
      v80.i64[0] = *(a1 + 32);
      v80.i64[1] = v28;
      v81 = v27;
      v82 = v29;
      *v83 = *(a1 + 57);
      *&v83[3] = *(a1 + 60);
      v84 = v4;
      v85 = v3;
      v86 = v6;
      v87 = v5;
      v88 = v8;
      v89 = v7;
      v90 = v9;
      v91 = v10;
      *(v100 + 15) = *(a1 + 264);
      v100[0] = *(a1 + 249);
      v99 = *(a1 + 233);
      v98 = *(a1 + 217);
      v97 = *(a1 + 201);
      v96 = *(a1 + 185);
      v95 = *(a1 + 169);
      v94 = *(a1 + 153);
      v93 = *(a1 + 137);
      v92 = *(a1 + 121);
      v34 = a2[1];
      v54 = *a2;
      v55 = v34;
      v56 = *(a2 + 4);
      v57 = v31;
      v58 = v30;
      v59 = v32;
      *v60 = *(a2 + 57);
      *&v60[3] = *(a2 + 15);
      v61 = v11;
      v62 = v12;
      v63 = v14;
      v64 = v13;
      v65 = v16;
      v66 = v15;
      v67 = v17;
      v68 = v23;
      *(v77 + 15) = *(a2 + 264);
      v77[0] = *(a2 + 249);
      v76 = *(a2 + 233);
      v75 = *(a2 + 217);
      v74 = *(a2 + 201);
      v73 = *(a2 + 185);
      v72 = *(a2 + 169);
      v71 = *(a2 + 153);
      v70 = *(a2 + 137);
      v69 = *(a2 + 121);
      return (v18.i64[0])(&v78, &v54);
    }

    else
    {
      v18.i64[1] = *(v2 + 24);
      v38 = vorrq_s8(v20, v18);
      if (*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | v19 | *(v2 + 8) || v21 != 192)
      {
        v78.i64[0] = *(a1 + 40);
        v78.i64[1] = v27;
        *&v54 = v31;
        *(&v54 + 1) = v30;
        sub_1A93820F4();
        return sub_1A957CD18();
      }

      else
      {
        v39 = *(a2 + 56);
        sub_1A93B1148();
        sub_1A957C438();
        sub_1A957C438();
        if (*&v78 == v54)
        {

          return 0;
        }

        else
        {
          v42 = sub_1A957D3E8();

          if (v42)
          {
            return 0;
          }

          else
          {
            v78.i8[0] = v29;
            v43 = CoreSynthesizer.Voice.Quality.rawValue.getter();
            v45 = v44;
            LOBYTE(v54) = v39;
            if (CoreSynthesizer.Voice.Quality.rawValue.getter() == v43 && v46 == v45)
            {

              return 1;
            }

            else
            {
              v47 = sub_1A957D3E8();

              if (v47)
              {
                return -1;
              }

              else
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v51 = *v2;
    if (v22)
    {
      v50 = *(a2 + 14);
      v36 = v21 & 0x3F;
      v78 = *v2;
      v79 = v19;
      v48 = v19;
      v49 = v20;
      v80 = v20;
      LOBYTE(v81) = v21 & 0x3F;
      *&v54 = v3;
      *(&v54 + 1) = v6;
      *&v55 = v5;
      *(&v55 + 1) = v8;
      v56 = v7;
      v57 = v9;
      LOBYTE(v58) = v10;
      sub_1A93B17E8();
      sub_1A957C438();
      sub_1A957C438();
      if (v53 == v52)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_1A957D3E8();
      }

      v78 = v51;
      v79 = v48;
      v80 = v49;
      LOBYTE(v81) = v36;
      *&v54 = v12;
      *(&v54 + 1) = v14;
      *&v55 = v13;
      *(&v55 + 1) = v16;
      v56 = v15;
      v57 = v50;
      LOBYTE(v58) = v23;
      sub_1A957C438();
      sub_1A957C438();
      if (v53 == v52)
      {
        v40 = 1;
      }

      else
      {
        v40 = sub_1A957D3E8();
      }

      v25 = v37 ^ v40;
      v26 = (v37 & 1) == 0;
    }

    else
    {
      sub_1A9387410();
      v24 = sub_1A957CD88();
      v78.i64[0] = v51.i64[0];
      *&v54 = v11;
      v25 = v24 ^ sub_1A957CD88();
      v26 = (v24 & 1) == 0;
    }

    v41 = -1;
    if (v26)
    {
      v41 = 1;
    }

    if (v25)
    {
      return v41;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A9423148(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v3[14] = swift_task_alloc();
  v4 = sub_1A957B2E8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_1A957B188();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = sub_1A957B308();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94233A4, 0, 0);
}

uint64_t sub_1A94233A4()
{
  v1 = v0;
  if ((Locale.LanguageCode.isMacroLanguage.getter() & 1) == 0)
  {
LABEL_14:
    *(v1 + 248) = 0;
    v44 = (*(**(v1 + 72) + 232) + **(**(v1 + 72) + 232));
    v32 = swift_task_alloc();
    *(v1 + 256) = v32;
    *v32 = v1;
    v32[1] = sub_1A9423AFC;

    return v44();
  }

  v2 = *(v0 + 72);
  v3 = v2[6];
  v4 = v2[7];
  v40 = v2;
  sub_1A93780F4(v2 + 3, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v1 + 176);
    v45 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB88(0, v6, 0);
    v8 = v45;
    v37 = (v7 + 8);
    v38 = v7;
    v9 = v5 + 40;
    do
    {
      v11 = *(v1 + 192);
      v10 = *(v1 + 200);
      v42 = *(v1 + 168);
      swift_bridgeObjectRetain_n();
      sub_1A957B1B8();
      v13 = v40[6];
      v12 = v40[7];
      sub_1A93780F4(v40 + 3, v13);
      v14 = (*(v12 + 16))(v13, v12);
      Locale.withTTSLanguageDisambiguation(overrides:)(v14, v10);

      (*v37)(v11, v42);
      v16 = *(v45 + 16);
      v15 = *(v45 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1A93ABB88((v15 > 1), v16 + 1, 1);
      }

      v17 = *(v1 + 200);
      v18 = *(v1 + 168);
      *(v45 + 16) = v16 + 1;
      (*(v38 + 32))(v45 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v16, v17, v18);
      v9 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v1 + 64);
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  v21 = sub_1A9424688(sub_1A942E60C, v20, v8);

  if (!*(v21 + 16))
  {

    goto LABEL_14;
  }

  v22 = *(v1 + 208);
  v23 = *(v1 + 216);
  v24 = *(v1 + 176);
  v25 = *(v1 + 184);
  v26 = *(v1 + 168);
  v27 = *(v1 + 152);
  v28 = *(v1 + 128);
  v29 = *(v1 + 136);
  v41 = *(v1 + 120);
  v43 = *(v1 + 144);
  v39 = *(v1 + 112);
  (*(v24 + 16))(v22, v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v26);

  (*(v24 + 32))(v23, v22, v26);
  Locale.withTTSLanguageDisambiguation(overrides:)(0, v25);
  sub_1A957B2F8();
  v30 = *(v24 + 8);
  *(v1 + 224) = v30;
  *(v1 + 232) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v25, v26);
  sub_1A957B2B8();
  (*(v28 + 8))(v29, v41);
  if ((*(v27 + 48))(v39, 1, v43) == 1)
  {
    v31 = *(v1 + 112);
    v30(*(v1 + 216), *(v1 + 168));
    sub_1A937B960(v31, &qword_1EB386A68, &qword_1A9587F40);
    goto LABEL_14;
  }

  (*(*(v1 + 152) + 32))(*(v1 + 160), *(v1 + 112), *(v1 + 144));
  v34 = swift_task_alloc();
  *(v1 + 240) = v34;
  *v34 = v1;
  v34[1] = sub_1A94238E8;
  v35 = *(v1 + 160);
  v36 = *(v1 + 56);

  return sub_1A9423148(v36, v35);
}

uint64_t sub_1A94238E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94239E4, 0, 0);
}

uint64_t sub_1A94239E4()
{
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[21];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A9423AFC(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A9423BFC, 0, 0);
}

uint64_t sub_1A9423BFC()
{
  v39 = v0;
  v37 = *(v0[22] + 56);
  v37(v0[13], 1, 1, v0[21]);
  v1 = *sub_1A93A7EF0();

  v2 = sub_1A957B148();
  if (*(v1 + 16))
  {
    sub_1A937A490(v2, v3);
    v5 = v4;

    if (v5)
    {
      v6 = v0[21];
      v8 = v0[12];
      v7 = v0[13];

      sub_1A957B1B8();
      v37(v8, 0, 1, v6);
      sub_1A942C62C(v8, v7);
      goto LABEL_6;
    }
  }

  else
  {
  }

LABEL_6:
  v9 = v0[33];
  v10 = v0[31];
  v11 = v0[8];
  v12 = Locale.LanguageCode.childLanguages.getter();
  v13 = swift_task_alloc();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = sub_1A942B040(sub_1A942E5DC, v13, v9);

  v15 = v14[2];
  if (v15)
  {
    v36 = v10;
    v16 = v0[22];
    v17 = sub_1A9427810(v15, 0);
    v18 = sub_1A942BBF8(&v38, &v17[(*(v16 + 80) + 32) & ~*(v16 + 80)], v15, v14);
    v19 = v38;

    result = sub_1A932D088(v19);
    if (v18 != v15)
    {
      __break(1u);
      return result;
    }

    v10 = v36;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v21 = v0[13];
  v38 = v17;
  sub_1A94276D4(&v38, v21);
  if (v10)
  {
  }

  else
  {
    v22 = v0[21];
    v23 = v0[22];
    v24 = v0[11];
    v25 = v0[9];

    v26 = v38;
    v0[5] = sub_1A937829C(&qword_1EB387268, &unk_1A9591CB0);
    v0[6] = sub_1A93B744C(&qword_1EB386450, &qword_1EB387268, &unk_1A9591CB0, MEMORY[0x1E69E6340]);
    v0[2] = v26;
    v27 = v25[6];
    v28 = v25[7];
    sub_1A93780F4(v25 + 3, v27);
    v29 = (*(v28 + 16))(v27, v28);
    sub_1A9419174(v0 + 2, v25 + 3, v29, v24);

    sub_1A9378138(v0 + 2);
    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      v30 = v0[13];
      v31 = v0[7];
      sub_1A937B960(v0[11], &qword_1EB386988, &qword_1A9587830);
      sub_1A93A7460(v30, v31, &qword_1EB386988, &qword_1A9587830);
    }

    else
    {
      v32 = v0[21];
      v33 = v0[13];
      v34 = v0[7];
      (*(v0[22] + 32))(v34, v0[11], v32);
      v37(v34, 0, 1, v32);
      sub_1A937B960(v33, &qword_1EB386988, &qword_1A9587830);
    }

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1A9424088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v45 - v7;
  v8 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v45 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = sub_1A957B2E8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  v51 = a2;
  v24 = Locale.LanguageCode.childLanguages.getter();
  v52 = a1;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v25 = *(v18 + 8);
  v25(v23, v17);
  v26 = *(v5 + 48);
  v56 = v4;
  v49 = v26;
  result = (v26)(v16, 1, v4);
  if (result != 1)
  {
    v28 = sub_1A939A620(v16, v24);

    v29 = *(v5 + 8);
    v29(v16, v56);
    if (v28)
    {
LABEL_3:
      v30 = 1;
      return v30 & 1;
    }

    v45 = v29;
    v46 = v5;
    v31 = v55;
    v32 = v56;
    (*(v5 + 16))(v55, v51, v56);
    (*(v5 + 56))(v31, 0, 1, v32);
    sub_1A957B2F8();
    v33 = v53;
    sub_1A957B2B8();
    v25(v21, v17);
    v34 = *(v50 + 48);
    v35 = v54;
    sub_1A9391BAC(v31, v54, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A9391BAC(v33, v35 + v34, &qword_1EB386A68, &qword_1A9587F40);
    v36 = v49;
    v37 = v49(v35, 1, v32);
    v38 = v46;
    if (v37 == 1)
    {
      sub_1A937B960(v33, &qword_1EB386A68, &qword_1A9587F40);
      sub_1A937B960(v31, &qword_1EB386A68, &qword_1A9587F40);
      if (v36(v35 + v34, 1, v56) == 1)
      {
        sub_1A937B960(v35, &qword_1EB386A68, &qword_1A9587F40);
        goto LABEL_3;
      }
    }

    else
    {
      v39 = v48;
      sub_1A9391BAC(v35, v48, &qword_1EB386A68, &qword_1A9587F40);
      if (v36(v35 + v34, 1, v56) != 1)
      {
        v40 = v35 + v34;
        v41 = v47;
        v42 = v56;
        (*(v38 + 32))(v47, v40, v56);
        sub_1A942C3E8(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v30 = sub_1A957C098();
        v43 = v41;
        v44 = v45;
        v45(v43, v42);
        sub_1A937B960(v33, &qword_1EB386A68, &qword_1A9587F40);
        sub_1A937B960(v55, &qword_1EB386A68, &qword_1A9587F40);
        v44(v39, v42);
        sub_1A937B960(v35, &qword_1EB386A68, &qword_1A9587F40);
        return v30 & 1;
      }

      sub_1A937B960(v33, &qword_1EB386A68, &qword_1A9587F40);
      sub_1A937B960(v55, &qword_1EB386A68, &qword_1A9587F40);
      v45(v39, v56);
    }

    sub_1A937B960(v35, &qword_1EB386B70, &unk_1A95888A0);
    v30 = 0;
    return v30 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9424688(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1A957B308();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A93ABB88(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1A93ABB88((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1A9424958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v44 = a2;
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v45 = &v36 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = sub_1A957B2E8();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v39 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v36 - v25;
  v43 = a1;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v27 = *(v22 + 8);
  v40 = v22 + 8;
  v41 = v21;
  v38 = v27;
  v27(v26, v21);
  (*(v5 + 16))(v18, v44, v4);
  (*(v5 + 56))(v18, 0, 1, v4);
  v28 = *(v8 + 56);
  sub_1A9391BAC(v20, v10, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A9391BAC(v18, &v10[v28], &qword_1EB386A68, &qword_1A9587F40);
  v29 = *(v5 + 48);
  if (v29(v10, 1, v4) == 1)
  {
    sub_1A937B960(v18, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v20, &qword_1EB386A68, &qword_1A9587F40);
    if (v29(&v10[v28], 1, v4) == 1)
    {
      sub_1A937B960(v10, &qword_1EB386A68, &qword_1A9587F40);
LABEL_10:
      v33 = 1;
      return v33 & 1;
    }

    goto LABEL_6;
  }

  sub_1A9391BAC(v10, v45, &qword_1EB386A68, &qword_1A9587F40);
  if (v29(&v10[v28], 1, v4) == 1)
  {
    sub_1A937B960(v18, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v20, &qword_1EB386A68, &qword_1A9587F40);
    (*(v5 + 8))(v45, v4);
LABEL_6:
    sub_1A937B960(v10, &qword_1EB386B70, &unk_1A95888A0);
    goto LABEL_7;
  }

  v34 = v36;
  (*(v5 + 32))(v36, &v10[v28], v4);
  sub_1A942C3E8(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
  LODWORD(v44) = sub_1A957C098();
  v35 = *(v5 + 8);
  v35(v34, v4);
  sub_1A937B960(v18, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A937B960(v20, &qword_1EB386A68, &qword_1A9587F40);
  v35(v45, v4);
  sub_1A937B960(v10, &qword_1EB386A68, &qword_1A9587F40);
  if (v44)
  {
    goto LABEL_10;
  }

LABEL_7:
  v30 = v39;
  sub_1A957B2F8();
  v31 = v42;
  sub_1A957B2B8();
  v38(v30, v41);
  result = (v29)(v31, 1, v4);
  if (result != 1)
  {
    v33 = sub_1A939A620(v31, v37);
    (*(v5 + 8))(v31, v4);
    return v33 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_1A9424F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = a1;
  v10 = sub_1A957B118();
  v12 = v11;
  v13 = *(v7 + 48);
  if (v13(a3, 1, v6))
  {
  }

  else
  {
    v31[0] = a2;
    (*(v7 + 16))(v9, a3, v6);
    v21 = sub_1A957B118();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    if (v10 == v21 && v12 == v23)
    {

      return 1;
    }

    v25 = sub_1A957D3E8();

    if (v25)
    {
      return 1;
    }
  }

  v14 = sub_1A957B118();
  v16 = v15;
  if (v13(a3, 1, v6))
  {

LABEL_5:
    v31[4] = sub_1A957B118();
    v31[5] = v17;
    v31[2] = sub_1A957B118();
    v31[3] = v18;
    sub_1A93820F4();
    v19 = sub_1A957CCE8();

    return v19 == -1;
  }

  (*(v7 + 16))(v9, a3, v6);
  v26 = sub_1A957B118();
  v28 = v27;
  (*(v7 + 8))(v9, v6);
  if (v14 == v26 && v16 == v28)
  {

    return 0;
  }

  else
  {
    v30 = sub_1A957D3E8();

    result = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return result;
}

BOOL sub_1A9425200()
{
  v0 = sub_1A937829C(&qword_1EB387280, &qword_1A958C648);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1A957B138();
  v3 = sub_1A957B128();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) == 1;
  sub_1A937B960(v2, &qword_1EB387280, &qword_1A958C648);
  return v4;
}

uint64_t sub_1A94252F0()
{
  v0 = type metadata accessor for VoiceResolver(0);
  v1 = sub_1A942C3E8(&qword_1ED96FD70, type metadata accessor for VoiceResolver, &protocol conformance descriptor for VoiceResolver);

  return TTSActor.unownedExecutor.getter(v0, v1);
}

unint64_t sub_1A9425364(uint64_t a1)
{
  sub_1A957B308();
  v2 = MEMORY[0x1E6969770];
  sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  v3 = sub_1A957C058();
  return sub_1A9425438(a1, v3, MEMORY[0x1E6969770], &unk_1ED970210, v2, MEMORY[0x1E6969788]);
}

unint64_t sub_1A9425438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1A942C3E8(v23, v24, v25);
      v19 = sub_1A957C098();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void sub_1A94255D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A9425364(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    __src[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A9426300();
      v9 = __src[0];
    }

    v10 = *(v9 + 48);
    v11 = sub_1A957B308();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    memmove(a2, (*(v9 + 56) + 280 * v7), 0x118uLL);
    sub_1A9425D70(v7, v9);
    *v3 = v9;
    nullsub_23();
  }

  else
  {
    sub_1A93847E0(__src);
    memcpy(a2, __src, 0x118uLL);
  }
}

uint64_t sub_1A94256D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v64 = sub_1A957B308();
  v5 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A937829C(&qword_1EB387290, &qword_1A958C738);
  v66 = v4;
  result = sub_1A957D118();
  v9 = result;
  if (*(v7 + 16))
  {
    v60[0] = v2;
    v10 = 0;
    v65 = v7;
    v13 = *(v7 + 64);
    v12 = (v7 + 64);
    v11 = v13;
    v14 = 1 << *(v12 - 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v11;
    v17 = (v14 + 63) >> 6;
    v60[1] = v5 + 16;
    v61 = result;
    v67 = (v5 + 32);
    v18 = result + 64;
    v62 = v5;
    while (v16)
    {
      v30 = __clz(__rbit64(v16));
      v31 = (v16 - 1) & v16;
LABEL_15:
      v34 = v30 | (v10 << 6);
      v98 = v31;
      v35 = v65;
      v36 = *(v65 + 48);
      v97 = *(v5 + 72);
      v37 = v36 + v97 * v34;
      v38 = v63;
      if (v66)
      {
        (*(v5 + 32))(v63, v37, v64);
        v39 = *(v35 + 56) + 280 * v34;
        v40 = *v39;
        v70 = *(v39 + 8);
        v41 = *(v39 + 24);
        v71 = *(v39 + 32);
        v72 = v40;
        v42 = *(v39 + 48);
        v76 = *(v39 + 40);
        v73 = v42;
        v74 = v41;
        v75 = *(v39 + 56);
        v77 = *(v39 + 57);
        v43 = *(v39 + 64);
        v80 = *(v39 + 80);
        v78 = v43;
        v44 = *(v39 + 96);
        v82 = *(v39 + 104);
        v83 = v44;
        v81 = *(v39 + 112);
        v79 = *(v39 + 120);
        v45 = *(v39 + 128);
        v84 = *(v39 + 136);
        v46 = *(v39 + 152);
        v88 = *(v39 + 144);
        v85 = v46;
        v86 = v45;
        v87 = *(v39 + 160);
        v47 = *(v39 + 176);
        LODWORD(v45) = *(v39 + 184);
        v89 = *(v39 + 188);
        v68 = *(v39 + 192);
        v69 = v45;
        v90 = *(v39 + 193);
        v48 = *(v39 + 216);
        v93 = *(v39 + 200);
        v94 = v48;
        v49 = *(v39 + 248);
        v91 = *(v39 + 232);
        v92 = v49;
        v50 = *(v39 + 264);
        v95 = *(v39 + 272);
        v96 = v50;
      }

      else
      {
        (*(v5 + 16))(v63, v37, v64);
        memcpy(v107, (*(v35 + 56) + 280 * v34), 0x118uLL);
        v95 = *&v107[17];
        v96 = *(&v107[16] + 1);
        v93 = *(&v107[12] + 8);
        v94 = *(&v107[13] + 8);
        v91 = *(&v107[14] + 8);
        v92 = *(&v107[15] + 8);
        v90 = BYTE1(v107[12]);
        v89 = HIDWORD(v107[11]);
        v68 = LOBYTE(v107[12]);
        v69 = BYTE8(v107[11]);
        v87 = v107[10];
        v47 = *&v107[11];
        v85 = *(&v107[9] + 1);
        v88 = *&v107[9];
        v86 = *&v107[8];
        v83 = *&v107[6];
        v84 = *(&v107[8] + 1);
        v81 = *&v107[7];
        v82 = *(&v107[6] + 1);
        v79 = BYTE8(v107[7]);
        v80 = v107[5];
        v78 = v107[4];
        v77 = BYTE9(v107[3]);
        v75 = BYTE8(v107[3]);
        v76 = *(&v107[2] + 1);
        v73 = *&v107[3];
        v74 = *(&v107[1] + 1);
        v71 = *&v107[2];
        v72 = *&v107[0];
        v70 = *(v107 + 8);
        sub_1A937B3DC(v107, &v105);
      }

      v9 = v61;
      sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      result = sub_1A957C058();
      v51 = -1 << *(v9 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v18 + 8 * (v52 >> 6))) == 0)
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        v5 = v62;
        while (++v53 != v55 || (v54 & 1) == 0)
        {
          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v18 + 8 * v53);
          if (v57 != -1)
          {
            v19 = __clz(__rbit64(~v57)) + (v53 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v52) & ~*(v18 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
      v5 = v62;
LABEL_7:
      v104 = v69;
      v101 = v68;
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v67)(*(v9 + 48) + v97 * v19, v38);
      v20 = *(v9 + 56) + 280 * v19;
      *v20 = v72;
      *(v20 + 8) = v70;
      v21 = v71;
      *(v20 + 24) = v74;
      *(v20 + 32) = v21;
      v22 = v73;
      *(v20 + 40) = v76;
      *(v20 + 48) = v22;
      *(v20 + 56) = v75;
      *(v20 + 57) = v77;
      *(v20 + 62) = v106;
      *(v20 + 58) = v105;
      v23 = v80;
      *(v20 + 64) = v78;
      *(v20 + 80) = v23;
      v24 = v82;
      *(v20 + 96) = v83;
      *(v20 + 104) = v24;
      *(v20 + 112) = v81;
      *(v20 + 120) = v79;
      *(v20 + 121) = v107[0];
      *(v20 + 124) = *(v107 + 3);
      v25 = v84;
      *(v20 + 128) = v86;
      *(v20 + 136) = v25;
      v26 = v85;
      *(v20 + 144) = v88;
      *(v20 + 152) = v26;
      *(v20 + 160) = v87;
      *(v20 + 176) = v47;
      *(v20 + 184) = v104;
      *(v20 + 185) = v102;
      *(v20 + 187) = v103;
      *(v20 + 188) = v89;
      *(v20 + 192) = v101;
      *(v20 + 193) = v90;
      *(v20 + 198) = v100;
      *(v20 + 194) = v99;
      v27 = v93;
      *(v20 + 216) = v94;
      *(v20 + 200) = v27;
      v28 = v91;
      *(v20 + 248) = v92;
      *(v20 + 232) = v28;
      v29 = v95;
      *(v20 + 264) = v96;
      *(v20 + 272) = v29;
      ++*(v9 + 16);
      v16 = v98;
    }

    v32 = v10;
    while (1)
    {
      v10 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v17)
      {
        break;
      }

      v33 = v12[v10];
      ++v32;
      if (v33)
      {
        v30 = __clz(__rbit64(v33));
        v31 = (v33 - 1) & v33;
        goto LABEL_15;
      }
    }

    if ((v66 & 1) == 0)
    {

      v3 = v60[0];
      goto LABEL_35;
    }

    v58 = v65;
    v59 = 1 << *(v65 + 32);
    v3 = v60[0];
    if (v59 >= 64)
    {
      bzero(v12, ((v59 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v59;
    }

    *(v58 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

char *sub_1A9425D70(int64_t a1, uint64_t a2)
{
  v38 = sub_1A957B308();
  v4 = *(v38 - 8);
  result = MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = sub_1A957CE28();
    v12 = v10;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v35 = (v11 + 1) & v10;
    v36 = v14;
    v15 = *(v13 + 56);
    v33 = (v13 - 8);
    v34 = a2 + 64;
    v39 = v12;
    v16 = v38;
    do
    {
      v17 = v15;
      v18 = v15 * v9;
      v19 = *(a2 + 48) + v15 * v9;
      v20 = v37;
      v21 = v13;
      v36(v37, v19, v16);
      sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      v22 = sub_1A957C058();
      result = (*v33)(v20, v16);
      v23 = v39;
      v24 = v22 & v39;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v13 = v21;
          v15 = v17;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v39;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v39;
            }
          }

          v27 = *(a2 + 56);
          result = (v27 + 280 * a1);
          v28 = (v27 + 280 * v9);
          if (a1 != v9 || result >= v28 + 280)
          {
            result = memmove(result, v28, 0x118uLL);
            v23 = v39;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v13 = v21;
      v7 = v34;
      v15 = v17;
LABEL_4:
      v9 = (v9 + 1) & v23;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1A9426068(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A957B308();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A9425364(a2);
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
      sub_1A9426300();
      goto LABEL_7;
    }

    sub_1A94256D4(v17, a3 & 1);
    v23 = sub_1A9425364(a2);
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
      return sub_1A9426238(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1A957D438();
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
  v21 = v20[7] + 280 * v14;

  return sub_1A93F0618(a1, v21);
}

void *sub_1A9426238(unint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A957B308();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = memcpy((a4[7] + 280 * a1), a3, 0x118uLL);
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

void *sub_1A9426300()
{
  v1 = v0;
  v27 = sub_1A957B308();
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB387290, &qword_1A958C738);
  v3 = *v0;
  v4 = sub_1A957D108();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v28 = v3;
    v29 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v25[1] = v30 + 32;
    v25[2] = v30 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v31 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v20 = v27;
        v19 = v28;
        v21 = v30;
        v22 = *(v30 + 72) * v18;
        v23 = v26;
        (*(v30 + 16))(v26, *(v28 + 48) + v22, v27);
        v18 *= 280;
        memcpy(v33, (*(v19 + 56) + v18), 0x118uLL);
        v24 = v29;
        (*(v21 + 32))(*(v29 + 48) + v22, v23, v20);
        memcpy((*(v24 + 56) + v18), v33, 0x118uLL);
        result = sub_1A937B3DC(v33, &v32);
        v13 = v31;
      }

      while (v31);
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

        v1 = v25[0];
        v5 = v29;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v31 = (v17 - 1) & v17;
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

uint64_t sub_1A94265A0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  v33 = a2;
  v11 = sub_1A957C058();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A942C3E8(&unk_1ED970210, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
      v21 = sub_1A957C098();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A9426BDC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1A9426880(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1A957B308();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1A937829C(&qword_1EB387288, &qword_1A958C650);
  result = sub_1A957CEA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      result = sub_1A957C058();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1A9426BDC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A9426880(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1A9426E80();
      goto LABEL_12;
    }

    sub_1A94270B8(v10 + 1);
  }

  v12 = *v3;
  sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  v13 = sub_1A957C058();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1A942C3E8(&unk_1ED970210, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
      v21 = sub_1A957C098();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A9426E80()
{
  v1 = v0;
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB387288, &qword_1A958C650);
  v6 = *v0;
  v7 = sub_1A957CE98();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1A94270B8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1A957B308();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1A937829C(&qword_1EB387288, &qword_1A958C650);
  v7 = sub_1A957CEA8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      result = sub_1A957C058();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void *sub_1A94273D4(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v10 = *(sub_1A957B308() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1A957B308() - 8);
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

char *sub_1A94275AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386AD8, &qword_1A95884F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 280);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[280 * v8])
    {
      memmove(v12, v13, 280 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A94276D4(uint64_t *a1, uint64_t a2)
{
  v4 = *(sub_1A957B308() - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1A942BE9C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_1A942790C(v8, a2);
  *a1 = v5;
  return result;
}

uint64_t sub_1A942778C(uint64_t (*a1)(_BYTE *, _BYTE *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1A942BEB0(v5);
  }

  result = sub_1A9427A44(a1, a2);
  *v2 = v5;
  return result;
}

void *sub_1A9427810(uint64_t a1, uint64_t a2)
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

  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v4 = *(sub_1A957B308() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A942790C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_1A957D388();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A957B308();
        v8 = sub_1A957C518();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_1A957B308() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_1A9428260(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1A9427B4C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1A9427A44(uint64_t (*a1)(_BYTE *, _BYTE *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1A957D388();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1A957C518();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_1A9429370(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1A9428094(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1A9427B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v75 = a5;
  v9 = sub_1A957B308();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v58 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v72 = &v58 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v81 = &v58 - v18;
  v60 = a2;
  if (a3 != a2)
  {
    v21 = *(v10 + 16);
    v19 = v10 + 16;
    v20 = v21;
    v22 = *a4;
    v23 = *(v19 + 56);
    v73 = (v19 - 8);
    v74 = (v19 + 32);
    v24 = v22 + v23 * (a3 - 1);
    v66 = -v23;
    v67 = (v19 + 16);
    v25 = a1 - a3;
    v68 = v22;
    v59 = v23;
    v26 = v22 + v23 * a3;
    v70 = v21;
    v71 = v19;
    while (2)
    {
      v63 = v24;
      v64 = a3;
      v61 = v26;
      v62 = v25;
      v27 = v72;
      while (1)
      {
        v76 = v25;
        v20(v81, v26, v9);
        v20(v27, v24, v9);
        v28 = sub_1A957B118();
        v30 = v29;
        v31 = v75;
        v32 = *v74;
        if ((*v74)(v75, 1, v9))
        {
          break;
        }

        v37 = v31;
        v38 = v65;
        v20(v65, v37, v9);
        v39 = sub_1A957B118();
        v40 = *v73;
        v41 = v38;
        v43 = v42;
        (*v73)(v41, v9);
        if (v28 == v39 && v30 == v43)
        {
        }

        else
        {
          v55 = sub_1A957D3E8();

          if ((v55 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v27 = v72;
        v40(v72, v9);
        result = (v40)(v81, v9);
        v20 = v70;
        if (!v68)
        {
LABEL_25:
          __break(1u);
          return result;
        }

LABEL_23:
        v56 = *v67;
        v57 = v69;
        (*v67)(v69, v26, v9);
        swift_arrayInitWithTakeFrontToBack();
        result = (v56)(v24, v57, v9);
        v24 += v66;
        v26 += v66;
        v25 = v76 + 1;
        if (v76 == -1)
        {
          goto LABEL_6;
        }
      }

LABEL_10:
      v27 = v72;
      v33 = sub_1A957B118();
      v35 = v34;
      v36 = v75;
      if (v32(v75, 1, v9))
      {
      }

      else
      {
        v44 = v65;
        v70(v65, v36, v9);
        v45 = sub_1A957B118();
        v47 = v46;
        v48 = *v73;
        (*v73)(v44, v9);
        if (v33 == v45 && v35 == v47)
        {

          v27 = v72;
LABEL_5:
          v48(v27, v9);
          result = (v48)(v81, v9);
          v20 = v70;
LABEL_6:
          a3 = v64 + 1;
          v24 = v63 + v59;
          v25 = v62 - 1;
          v26 = v61 + v59;
          if (v64 + 1 == v60)
          {
            return result;
          }

          continue;
        }

        v49 = sub_1A957D3E8();

        v27 = v72;
        if (v49)
        {
          goto LABEL_5;
        }
      }

      break;
    }

    v50 = v81;
    v79 = sub_1A957B118();
    v80 = v51;
    v77 = sub_1A957B118();
    v78 = v52;
    sub_1A93820F4();
    v53 = sub_1A957CCE8();

    v54 = *v73;
    (*v73)(v27, v9);
    result = (v54)(v50, v9);
    v20 = v70;
    if (v53 != -1)
    {
      goto LABEL_6;
    }

    if (!v68)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1A9428094(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 280 * a3 - 280;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    v22 = v9;
    while (1)
    {
      memcpy(__dst, (v9 + 280), sizeof(__dst));
      memcpy(v19, (v9 + 280), sizeof(v19));
      memcpy(v21, v9, 0x118uLL);
      memcpy(__src, v9, sizeof(__src));
      sub_1A937B3DC(__dst, v17);
      sub_1A937B3DC(v21, v17);
      v12 = a4(v19, __src);
      if (v5)
      {
        memcpy(v16, __src, sizeof(v16));
        sub_1A937B48C(v16);
        memcpy(v17, v19, sizeof(v17));
        return sub_1A937B48C(v17);
      }

      v13 = v12;
      memcpy(v16, __src, sizeof(v16));
      sub_1A937B48C(v16);
      memcpy(v17, v19, sizeof(v17));
      result = sub_1A937B48C(v17);
      if ((v13 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 = v22 + 280;
        --v10;
        if (v7 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      memcpy(v15, (v9 + 280), sizeof(v15));
      memcpy((v9 + 280), v9, 0x118uLL);
      result = memcpy(v9, v15, 0x118uLL);
      if (!v11)
      {
        goto LABEL_3;
      }

      v9 -= 280;
      ++v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9428260(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v189 = a1;
  v10 = sub_1A957B308();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v191 = &v185 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v208 = &v185 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v217 = &v185 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v215 = &v185 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v204 = &v185 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v202 = &v185 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v185 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  result = MEMORY[0x1EEE9AC00](v26);
  v199 = a3;
  v31 = a3[1];
  v214 = a5;
  v198 = v30;
  if (v31 < 1)
  {
    v34 = MEMORY[0x1E69E7CC0];
LABEL_131:
    v32 = *v189;
    if (!*v189)
    {
      goto LABEL_172;
    }

    a4 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v198;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_166;
    }

    result = a4;
LABEL_134:
    v179 = v6;
    v222 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v180 = v214;
      while (*v199)
      {
        v181 = *(result + 16 * a4);
        v182 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_1A9429C00(&(*v199)[*(v33 + 72) * v181], &(*v199)[*(v33 + 72) * *(result + 16 * (a4 - 1) + 32)], &(*v199)[*(v33 + 72) * v6], v32, v180);
        if (v179)
        {
        }

        if (v6 < v181)
        {
          goto LABEL_159;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_1A938911C(v182);
        }

        if (a4 - 2 >= *(v182 + 2))
        {
          goto LABEL_160;
        }

        v183 = &v182[16 * a4];
        *v183 = v181;
        *(v183 + 1) = v6;
        v222 = v182;
        sub_1A93CE710(a4 - 1);
        result = v222;
        a4 = *(v222 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_170;
    }
  }

  v186 = &v185 - v28;
  v185 = v29;
  v32 = 0;
  v33 = v30 + 16;
  v211 = (v30 + 8);
  v212 = (v30 + 48);
  v209 = (v30 + 32);
  v34 = MEMORY[0x1E69E7CC0];
  v216 = v10;
  v188 = a4;
  v200 = v25;
  v205 = v30 + 16;
  while (1)
  {
    v193 = v32;
    v35 = v32 + 1;
    v192 = v34;
    if ((v32 + 1) >= v31)
    {
      v79 = v32 + 1;
      goto LABEL_42;
    }

    v201 = v31;
    v36 = *v199;
    v37 = *(v198 + 72);
    v38 = *(v198 + 16);
    v39 = v186;
    v213 = &(*v199)[v37 * v35];
    (v38)(v186);
    v206 = v36;
    v40 = &v36[v37 * v193];
    v41 = v193;
    v42 = v185;
    v207 = v38;
    (v38)(v185, v40, v10);
    v43 = v214;
    LODWORD(v203) = sub_1A9424F14(v39, v42, v214);
    if (v6)
    {
      v184 = *v211;
      (*v211)(v42, v10);
      v184(v186, v10);
    }

    v187 = 0;
    v44 = *v211;
    (*v211)(v42, v10);
    v210 = v44;
    result = (v44)(v186, v10);
    v45 = v41 + 2;
    v46 = &v206[v37 * (v41 + 2)];
    v47 = v37;
    v206 = v37;
    v32 = v213;
    do
    {
      if (v201 == v45)
      {
        v79 = v201;
        goto LABEL_28;
      }

      v53 = v207;
      (v207)(v25, v46, v10);
      v213 = v32;
      (v53)(v202, v32, v10);
      v54 = v43;
      v55 = sub_1A957B118();
      v56 = v10;
      v58 = v57;
      v59 = *v212;
      if ((*v212)(v54, 1, v56))
      {
      }

      else
      {
        v68 = v54;
        v69 = v204;
        (v53)(v204, v68, v56);
        v70 = sub_1A957B118();
        v72 = v71;
        v210(v69, v56);
        if (v55 == v70 && v58 == v72)
        {

LABEL_8:
          v48 = 1;
          v49 = v202;
          v25 = v200;
          v33 = v205;
          v50 = v213;
          goto LABEL_9;
        }

        v73 = sub_1A957D3E8();

        if (v73)
        {
          goto LABEL_8;
        }
      }

      v60 = sub_1A957B118();
      v62 = v61;
      v63 = v214;
      v64 = v216;
      if (v59(v214, 1, v216))
      {

        v49 = v202;
        v25 = v200;
        v33 = v205;
        v50 = v213;
LABEL_15:
        v220 = sub_1A957B118();
        v221 = v65;
        v218 = sub_1A957B118();
        v219 = v66;
        sub_1A93820F4();
        v67 = sub_1A957CCE8();

        v48 = v67 == -1;
        goto LABEL_9;
      }

      v74 = v204;
      (v207)(v204, v63, v64);
      v75 = sub_1A957B118();
      v77 = v76;
      v210(v74, v64);
      v50 = v213;
      if (v60 == v75 && v62 == v77)
      {

        v48 = 0;
        v49 = v202;
        v25 = v200;
        v33 = v205;
      }

      else
      {
        v78 = sub_1A957D3E8();

        v48 = 0;
        v49 = v202;
        v25 = v200;
        v33 = v205;
        if ((v78 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_9:
      v51 = v49;
      v10 = v216;
      v52 = v210;
      v210(v51, v216);
      result = (v52)(v25, v10);
      ++v45;
      v47 = v206;
      v46 = &v206[v46];
      v32 = &v206[v50];
      v43 = v214;
    }

    while (((v203 ^ v48) & 1) == 0);
    v79 = v45 - 1;
LABEL_28:
    v6 = v187;
    v80 = v192;
    a4 = v188;
    if (v203)
    {
      if (v79 >= v193)
      {
        if (v193 < v79)
        {
          v81 = v47 * (v79 - 1);
          v82 = v79 * v47;
          v201 = v79;
          v32 = v193;
          v83 = v79;
          v84 = v193;
          v85 = v193 * v47;
          do
          {
            if (v84 != --v83)
            {
              v87 = *v199;
              if (!*v199)
              {
                goto LABEL_169;
              }

              v32 = &v87[v85];
              v88 = *v209;
              (*v209)(v191, &v87[v85], v216, v80);
              if (v85 < v81 || v32 >= &v87[v82])
              {
                v86 = v216;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v86 = v216;
                if (v85 != v81)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v88)(&v87[v81], v191, v86);
              v80 = v192;
              v10 = v86;
              v33 = v205;
              v47 = v206;
            }

            ++v84;
            v81 -= v47;
            v82 -= v47;
            v85 += v47;
          }

          while (v84 < v83);
          v6 = v187;
          a4 = v188;
          v25 = v200;
          v79 = v201;
        }

        goto LABEL_42;
      }

LABEL_165:
      __break(1u);
LABEL_166:
      result = sub_1A938911C(a4);
      goto LABEL_134;
    }

LABEL_42:
    v89 = v199[1];
    if (v79 >= v89)
    {
      goto LABEL_51;
    }

    if (__OFSUB__(v79, v193))
    {
      goto LABEL_162;
    }

    if (v79 - v193 >= a4)
    {
      goto LABEL_51;
    }

    if (__OFADD__(v193, a4))
    {
      goto LABEL_163;
    }

    if ((v193 + a4) >= v89)
    {
      v90 = v199[1];
    }

    else
    {
      v90 = (v193 + a4);
    }

    if (v90 < v193)
    {
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    if (v79 == v90)
    {
LABEL_51:
      v91 = v79;
      goto LABEL_52;
    }

    v187 = v6;
    v138 = *v199;
    v139 = *(v198 + 72);
    v140 = *(v198 + 16);
    v141 = &(*v199)[v139 * (v79 - 1)];
    v206 = -v139;
    v142 = v193 - v79;
    v207 = v138;
    v190 = v139;
    v143 = &v138[v79 * v139];
    v210 = v140;
    v194 = v90;
LABEL_108:
    v201 = v79;
    v195 = v143;
    v196 = v142;
    v144 = v142;
    v197 = v141;
    v145 = v141;
LABEL_109:
    v213 = v144;
    (v140)(v215, v143, v10);
    (v140)(v217, v145, v10);
    v146 = sub_1A957B118();
    v148 = v147;
    v149 = *v212;
    v150 = v214;
    if ((*v212)(v214, 1, v10))
    {

      goto LABEL_111;
    }

    v156 = v150;
    v157 = v204;
    (v140)(v204, v156, v10);
    v158 = sub_1A957B118();
    v160 = v159;
    v203 = *v211;
    v203(v157, v10);
    if (v146 == v158 && v148 == v160)
    {

      v33 = v205;
      goto LABEL_122;
    }

    v173 = sub_1A957D3E8();

    v33 = v205;
    if (v173)
    {
LABEL_122:
      v10 = v216;
      v174 = v203;
      v203(v217, v216);
      result = (v174)(v215, v10);
      goto LABEL_123;
    }

LABEL_111:
    v151 = sub_1A957B118();
    v153 = v152;
    v154 = v214;
    v155 = v216;
    if (v149(v214, 1, v216))
    {

      goto LABEL_119;
    }

    v161 = v204;
    (v210)(v204, v154, v155);
    v162 = sub_1A957B118();
    a4 = v163;
    v164 = v155;
    v165 = *v211;
    (*v211)(v161, v164);
    if (v151 != v162 || v153 != a4)
    {
      break;
    }

    v33 = v205;
LABEL_105:
    v10 = v216;
    v165(v217, v216);
    v165(v215, v10);
LABEL_106:
    v140 = v210;
LABEL_107:
    v79 = v201 + 1;
    v141 = v197 + v190;
    v142 = v196 - 1;
    v143 = &v195[v190];
    v91 = v194;
    if (v201 + 1 != v194)
    {
      goto LABEL_108;
    }

    v6 = v187;
    v25 = v200;
LABEL_52:
    v32 = v214;
    if (v91 < v193)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v34 = v192;
    }

    else
    {
      result = sub_1A9389130(0, *(v192 + 2) + 1, 1, v192);
      v34 = result;
    }

    v93 = *(v34 + 2);
    v92 = *(v34 + 3);
    a4 = v93 + 1;
    if (v93 >= v92 >> 1)
    {
      result = sub_1A9389130((v92 > 1), v93 + 1, 1, v34);
      v34 = result;
    }

    *(v34 + 2) = a4;
    v94 = &v34[16 * v93];
    *(v94 + 4) = v193;
    *(v94 + 5) = v91;
    v213 = *v189;
    if (!v213)
    {
      goto LABEL_171;
    }

    v194 = v91;
    if (v93)
    {
      while (1)
      {
        v95 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v96 = *(v34 + 4);
          v97 = *(v34 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_72:
          if (v99)
          {
            goto LABEL_150;
          }

          v112 = &v34[16 * a4];
          v114 = *v112;
          v113 = *(v112 + 1);
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_153;
          }

          v118 = &v34[16 * v95 + 32];
          v120 = *v118;
          v119 = *(v118 + 1);
          v106 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v106)
          {
            goto LABEL_156;
          }

          if (__OFADD__(v116, v121))
          {
            goto LABEL_157;
          }

          if (v116 + v121 >= v98)
          {
            if (v98 < v121)
            {
              v95 = a4 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v122 = &v34[16 * a4];
        v124 = *v122;
        v123 = *(v122 + 1);
        v106 = __OFSUB__(v123, v124);
        v116 = v123 - v124;
        v117 = v106;
LABEL_86:
        if (v117)
        {
          goto LABEL_152;
        }

        v125 = &v34[16 * v95];
        v127 = *(v125 + 4);
        v126 = *(v125 + 5);
        v106 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v106)
        {
          goto LABEL_155;
        }

        if (v128 < v116)
        {
          goto LABEL_3;
        }

LABEL_93:
        v133 = v95 - 1;
        if (v95 - 1 >= a4)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v199)
        {
          goto LABEL_168;
        }

        v134 = v34;
        a4 = *&v34[16 * v133 + 32];
        v135 = *&v34[16 * v95 + 40];
        sub_1A9429C00(&(*v199)[*(v198 + 72) * a4], &(*v199)[*(v198 + 72) * *&v34[16 * v95 + 32]], &(*v199)[*(v198 + 72) * v135], v213, v32);
        if (v6)
        {
        }

        if (v135 < a4)
        {
          goto LABEL_146;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v136 = v134;
        }

        else
        {
          v136 = sub_1A938911C(v134);
        }

        v10 = v216;
        if (v133 >= *(v136 + 2))
        {
          goto LABEL_147;
        }

        v137 = &v136[16 * v133];
        *(v137 + 4) = a4;
        *(v137 + 5) = v135;
        v222 = v136;
        result = sub_1A93CE710(v95);
        v34 = v222;
        a4 = *(v222 + 16);
        v25 = v200;
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v100 = &v34[16 * a4 + 32];
      v101 = *(v100 - 64);
      v102 = *(v100 - 56);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_148;
      }

      v105 = *(v100 - 48);
      v104 = *(v100 - 40);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_149;
      }

      v107 = &v34[16 * a4];
      v109 = *v107;
      v108 = *(v107 + 1);
      v106 = __OFSUB__(v108, v109);
      v110 = v108 - v109;
      if (v106)
      {
        goto LABEL_151;
      }

      v106 = __OFADD__(v98, v110);
      v111 = v98 + v110;
      if (v106)
      {
        goto LABEL_154;
      }

      if (v111 >= v103)
      {
        v129 = &v34[16 * v95 + 32];
        v131 = *v129;
        v130 = *(v129 + 1);
        v106 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v106)
        {
          goto LABEL_158;
        }

        if (v98 < v132)
        {
          v95 = a4 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v31 = v199[1];
    v32 = v194;
    a4 = v188;
    if (v194 >= v31)
    {
      goto LABEL_131;
    }
  }

  v166 = sub_1A957D3E8();

  v33 = v205;
  if (v166)
  {
    goto LABEL_105;
  }

LABEL_119:
  v167 = v215;
  v220 = sub_1A957B118();
  v221 = v168;
  v169 = v217;
  v218 = sub_1A957B118();
  v219 = v170;
  sub_1A93820F4();
  a4 = sub_1A957CCE8();

  v171 = *v211;
  v172 = v169;
  v10 = v216;
  (*v211)(v172, v216);
  result = (v171)(v167, v10);
  if (a4 != -1)
  {
    goto LABEL_106;
  }

LABEL_123:
  v175 = v213;
  if (v207)
  {
    v176 = v208;
    a4 = *v209;
    (*v209)(v208, v143, v10);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v145, v176, v10);
    v145 += v206;
    v143 = &v206[v143];
    v177 = __CFADD__(v175, 1);
    v144 = v175 + 1;
    v140 = v210;
    if (v177)
    {
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_1A9429370(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(_BYTE *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v87 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v7 = *v87;
    if (*v87)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
    }

    else
    {
      v12 = *a3;
      v13 = (*a3 + 280 * v11);
      memcpy(__dst, v13, sizeof(__dst));
      memcpy(v100, v13, sizeof(v100));
      memcpy(v102, (v12 + 280 * v10), 0x118uLL);
      memcpy(__src, (v12 + 280 * v10), sizeof(__src));
      sub_1A937B3DC(__dst, v98);
      sub_1A937B3DC(v102, v98);
      v14 = a4(v100, __src);
      if (v6)
      {
LABEL_104:
        memcpy(v97, __src, sizeof(v97));
        sub_1A937B48C(v97);
        memcpy(v98, v100, sizeof(v98));
        sub_1A937B48C(v98);
      }

      v15 = v10;
      v16 = v14;
      memcpy(v97, __src, sizeof(v97));
      sub_1A937B48C(v97);
      memcpy(v98, v100, sizeof(v98));
      result = sub_1A937B48C(v98);
      v17 = v15 + 2;
      if (v15 + 2 >= v7)
      {
        v18 = v15;
        v8 = v15 + 2;
        if ((v16 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v18 = v15;
        v19 = v12 + 280 * v15 + 280;
        do
        {
          v8 = v17;
          memcpy(v95, (v19 + 280), sizeof(v95));
          memcpy(v94, (v19 + 280), sizeof(v94));
          memcpy(v96, v19, sizeof(v96));
          memcpy(v93, v19, sizeof(v93));
          sub_1A937B3DC(v95, v92);
          sub_1A937B3DC(v96, v92);
          v20 = a4(v94, v93);
          memcpy(v91, v93, sizeof(v91));
          sub_1A937B48C(v91);
          memcpy(v92, v94, sizeof(v92));
          result = sub_1A937B48C(v92);
          if ((v16 ^ v20))
          {
            v11 = v8 - 1;
            if ((v16 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_14;
          }

          v17 = v8 + 1;
          v19 += 280;
        }

        while (v7 != v8 + 1);
        v11 = v8;
        v8 = v7;
        if ((v16 & 1) == 0)
        {
LABEL_23:
          v10 = v18;
          goto LABEL_24;
        }
      }

LABEL_14:
      if (v8 < v18)
      {
        goto LABEL_127;
      }

      v10 = v18;
      if (v18 <= v11)
      {
        v21 = 280 * v8 - 280;
        v7 = 280 * v18;
        v22 = v8;
        v83 = v10;
        do
        {
          if (v10 != --v22)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            memcpy(v96, (v23 + v7), sizeof(v96));
            memmove((v23 + v7), (v23 + v21), 0x118uLL);
            result = memcpy((v23 + v21), v96, 0x118uLL);
          }

          ++v10;
          v21 -= 280;
          v7 += 280;
        }

        while (v10 < v22);
        v10 = v83;
      }
    }

LABEL_24:
    v24 = a3[1];
    if (v8 >= v24)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_123;
    }

    if (v8 - v10 >= a6)
    {
      goto LABEL_136;
    }

    v25 = v10 + a6;
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v25 >= v24)
    {
      v25 = a3[1];
    }

    if (v25 < v10)
    {
      goto LABEL_126;
    }

    if (v8 == v25)
    {
LABEL_136:
      if (v8 < v10)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v72 = *a3;
      v73 = *a3 + 280 * v8 - 280;
      v82 = v25;
      v84 = v10;
      v7 = v10 - v8 + 1;
      do
      {
        v85 = v7;
        v74 = v73;
        for (i = v73; ; i -= 280)
        {
          memcpy(__dst, (i + 280), sizeof(__dst));
          memcpy(v100, (i + 280), sizeof(v100));
          memcpy(v102, i, 0x118uLL);
          memcpy(__src, i, sizeof(__src));
          sub_1A937B3DC(__dst, v98);
          sub_1A937B3DC(v102, v98);
          v76 = a4(v100, __src);
          if (v6)
          {
            goto LABEL_104;
          }

          v77 = v76;
          memcpy(v97, __src, sizeof(v97));
          sub_1A937B48C(v97);
          memcpy(v98, v100, sizeof(v98));
          result = sub_1A937B48C(v98);
          if ((v77 & 1) == 0)
          {
            break;
          }

          if (!v72)
          {
            goto LABEL_129;
          }

          memcpy(v96, (i + 280), sizeof(v96));
          memcpy((i + 280), i, 0x118uLL);
          memcpy(i, v96, 0x118uLL);
          if (!v7)
          {
            break;
          }

          ++v7;
        }

        ++v8;
        v73 = v74 + 280;
        v7 = v85 - 1;
      }

      while (v8 != v82);
      v8 = v82;
      v10 = v84;
      if (v82 < v84)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v27 = *(v9 + 2);
    v26 = *(v9 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = sub_1A9389130((v26 > 1), v27 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v28;
    v29 = &v9[16 * v27];
    *(v29 + 4) = v10;
    *(v29 + 5) = v8;
    v30 = *v87;
    if (!*v87)
    {
      goto LABEL_132;
    }

    if (v27)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v31 = v28 - 1;
    if (v28 >= 4)
    {
      v36 = &v9[16 * v28 + 32];
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_109;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_110;
      }

      v43 = &v9[16 * v28];
      v45 = *v43;
      v44 = *(v43 + 1);
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_112;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_115;
      }

      if (v47 >= v39)
      {
        v65 = &v9[16 * v31 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_121;
        }

        if (v34 < v68)
        {
          v31 = v28 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v28 == 3)
    {
      v32 = *(v9 + 4);
      v33 = *(v9 + 5);
      v42 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      v35 = v42;
LABEL_52:
      if (v35)
      {
        goto LABEL_111;
      }

      v48 = &v9[16 * v28];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      v53 = v51;
      if (v51)
      {
        goto LABEL_114;
      }

      v54 = &v9[16 * v31 + 32];
      v56 = *v54;
      v55 = *(v54 + 1);
      v42 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v42)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v52, v57))
      {
        goto LABEL_118;
      }

      if (v52 + v57 >= v34)
      {
        if (v34 < v57)
        {
          v31 = v28 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v58 = &v9[16 * v28];
    v60 = *v58;
    v59 = *(v58 + 1);
    v42 = __OFSUB__(v59, v60);
    v52 = v59 - v60;
    v53 = v42;
LABEL_66:
    if (v53)
    {
      goto LABEL_113;
    }

    v61 = &v9[16 * v31];
    v63 = *(v61 + 4);
    v62 = *(v61 + 5);
    v42 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v42)
    {
      goto LABEL_116;
    }

    if (v64 < v52)
    {
      goto LABEL_3;
    }

LABEL_73:
    v7 = v31 - 1;
    if (v31 - 1 >= v28)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v69 = *&v9[16 * v7 + 32];
    v70 = *&v9[16 * v31 + 40];
    sub_1A942A750((*a3 + 280 * v69), (*a3 + 280 * *&v9[16 * v31 + 32]), (*a3 + 280 * v70), v30, a4, a5);
    if (v6)
    {
    }

    if (v70 < v69)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1A938911C(v9);
    }

    if (v7 >= *(v9 + 2))
    {
      goto LABEL_108;
    }

    v71 = &v9[16 * v7];
    *(v71 + 4) = v69;
    *(v71 + 5) = v70;
    v103 = v9;
    result = sub_1A93CE710(v31);
    v9 = v103;
    v28 = *(v103 + 2);
    if (v28 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_124:
  result = sub_1A938911C(v9);
  v9 = result;
LABEL_95:
  v103 = v9;
  v78 = *(v9 + 2);
  if (v78 < 2)
  {
  }

  while (*a3)
  {
    v79 = *&v9[16 * v78];
    v80 = *&v9[16 * v78 + 24];
    sub_1A942A750((*a3 + 280 * v79), (*a3 + 280 * *&v9[16 * v78 + 16]), (*a3 + 280 * v80), v7, a4, a5);
    if (v6)
    {
    }

    if (v80 < v79)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1A938911C(v9);
    }

    if (v78 - 2 >= *(v9 + 2))
    {
      goto LABEL_120;
    }

    v81 = &v9[16 * v78];
    *v81 = v79;
    *(v81 + 1) = v80;
    v103 = v9;
    result = sub_1A93CE710(v78 - 1);
    v9 = v103;
    v78 = *(v103 + 2);
    if (v78 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1A9429C00(unint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  v120 = a5;
  v121 = a3;
  v122 = a1;
  v123 = sub_1A957B308();
  v7 = *(v123 - 8);
  v8 = MEMORY[0x1EEE9AC00](v123);
  v112 = (v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v108 = v104 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v111 = v104 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v119 = v104 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v116 = v104 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  v20 = a2 - v122;
  if (a2 - v122 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_94;
  }

  v21 = &v121[-a2];
  if (&v121[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_95;
  }

  v130 = v122;
  v129 = a4;
  if (v20 / v19 < v21 / v19)
  {
    v22 = v20 / v19 * v19;
    if (a4 < v122 || v122 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v122)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v110 = (a4 + v22);
    v128 = a4 + v22;
    if (v22 < 1 || a2 >= v121)
    {
      goto LABEL_92;
    }

    v27 = *(v7 + 16);
    v25 = (v7 + 16);
    v26 = v27;
    v114 = (v25 - 1);
    v115 = (v25 + 4);
    v112 = v27;
    v113 = v25;
    v109 = v19;
    while (1)
    {
      v118 = a2;
      v28 = v123;
      v26(v116, a2, v123);
      v117 = a4;
      v26(v119, a4, v28);
      v29 = sub_1A957B118();
      v31 = v30;
      v32 = *v115;
      v33 = v120;
      if ((*v115)(v120, 1, v28))
      {
      }

      else
      {
        v46 = v111;
        v47 = v123;
        v26(v111, v33, v123);
        v48 = sub_1A957B118();
        v50 = v49;
        v51 = *v114;
        (*v114)(v46, v47);
        if (v29 == v48 && v31 == v50)
        {

LABEL_34:
          v59 = v123;
          v51(v119, v123);
          v51(v116, v59);
          a4 = v117;
          a2 = v118;
          v45 = v109;
          goto LABEL_35;
        }

        v58 = sub_1A957D3E8();

        if (v58)
        {
          goto LABEL_34;
        }
      }

      v34 = sub_1A957B118();
      v36 = v35;
      v37 = v120;
      if (v32(v120, 1, v123))
      {

        a2 = v118;
      }

      else
      {
        v52 = v111;
        v53 = v123;
        v112(v111, v37, v123);
        v54 = sub_1A957B118();
        v56 = v55;
        v57 = *v114;
        (*v114)(v52, v53);
        if (v34 == v54 && v36 == v56)
        {

          a2 = v118;
LABEL_42:
          v61 = v123;
          v57(v119, v123);
          v57(v116, v61);
          a4 = v117;
          v45 = v109;
LABEL_43:
          if (v122 < a4 || v122 >= v45 + a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v122 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v129 = v45 + a4;
          a4 += v45;
          goto LABEL_49;
        }

        v60 = sub_1A957D3E8();

        a2 = v118;
        if (v60)
        {
          goto LABEL_42;
        }
      }

      v38 = v123;
      v39 = v116;
      v126 = sub_1A957B118();
      v127 = v40;
      v41 = v119;
      v124 = sub_1A957B118();
      v125 = v42;
      sub_1A93820F4();
      v43 = sub_1A957CCE8();

      v44 = *v114;
      (*v114)(v41, v38);
      v44(v39, v38);
      a4 = v117;
      v45 = v109;
      if (v43 != -1)
      {
        goto LABEL_43;
      }

LABEL_35:
      if (v122 < a2 || v122 >= v45 + a2)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v122 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v45;
LABEL_49:
      v122 += v45;
      v130 = v122;
      v26 = v112;
      if (a4 >= v110 || a2 >= v121)
      {
        goto LABEL_92;
      }
    }
  }

  v23 = v21 / v19 * v19;
  if (a4 < a2 || a2 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v62 = a4 + v23;
  if (v23 < 1)
  {
    goto LABEL_91;
  }

  v63 = -v19;
  v64 = (v7 + 16);
  v113 = (v7 + 48);
  v109 = (v7 + 8);
  v106 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v65 = v62;
  v66 = v112;
  v116 = v63;
  v117 = a4;
  v110 = v64;
  while (2)
  {
    while (2)
    {
      v104[0] = v62;
      v67 = a2;
      v68 = a2 + v63;
      v69 = v108;
      v118 = v68;
      v107 = v67;
      while (1)
      {
        if (v67 <= v122)
        {
          v130 = v67;
          v128 = v104[0];
          goto LABEL_92;
        }

        v114 = v121;
        v105 = v62;
        v115 = v65;
        v70 = &v65[v63];
        v71 = *v110;
        v119 = v70;
        v72 = v123;
        v71(v69);
        (v71)(v66, v68, v72);
        v73 = sub_1A957B118();
        v75 = v74;
        v76 = *v113;
        v77 = v120;
        if ((*v113)(v120, 1, v72))
        {
        }

        else
        {
          v90 = v111;
          v91 = v123;
          (v71)(v111, v77, v123);
          v92 = sub_1A957B118();
          v121 = v93;
          v89 = *v109;
          (*v109)(v90, v91);
          if (v73 == v92 && v75 == v121)
          {

            v88 = 1;
LABEL_70:
            v82 = v117;
            v87 = v112;
LABEL_73:
            v83 = v108;
            goto LABEL_74;
          }

          v99 = sub_1A957D3E8();

          v87 = v112;
          if (v99)
          {
            v88 = 1;
            v82 = v117;
            goto LABEL_73;
          }
        }

        v78 = sub_1A957B118();
        v80 = v79;
        v81 = v120;
        if (v76(v120, 1, v123))
        {

          v82 = v117;
          v83 = v108;
LABEL_63:
          v126 = sub_1A957B118();
          v127 = v84;
          v124 = sub_1A957B118();
          v125 = v85;
          sub_1A93820F4();
          v86 = sub_1A957CCE8();

          v87 = v112;

          v88 = v86 == -1;
          v89 = *v109;
          goto LABEL_74;
        }

        v94 = v111;
        v95 = v123;
        (v71)(v111, v81, v123);
        v96 = sub_1A957B118();
        v98 = v97;
        v89 = *v109;
        (*v109)(v94, v95);
        if (v78 == v96 && v80 == v98)
        {

          v88 = 0;
          goto LABEL_70;
        }

        v103 = sub_1A957D3E8();

        v88 = 0;
        v82 = v117;
        v87 = v112;
        v83 = v108;
        if ((v103 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_74:
        v100 = v114;
        v121 = &v116[v114];
        v66 = v87;
        v101 = v87;
        v102 = v123;
        v89(v101, v123);
        v89(v83, v102);
        v65 = v115;
        v67 = v107;
        if (v88)
        {
          break;
        }

        v69 = v83;
        v68 = v118;
        v62 = v119;
        if (v100 < v115 || v121 >= v115)
        {
          swift_arrayInitWithTakeFrontToBack();
          v63 = v116;
        }

        else
        {
          v63 = v116;
          if (v100 != v115)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v62;
        if (v119 <= v82)
        {
          a2 = v67;
          goto LABEL_91;
        }
      }

      a2 = v118;
      if (v100 >= v107 && v121 < v107)
      {
        v62 = v105;
        v63 = v116;
        if (v100 != v107)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v65 <= v82)
        {
          goto LABEL_91;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v62 = v105;
    v63 = v116;
    if (v65 > v82)
    {
      continue;
    }

    break;
  }

LABEL_91:
  v130 = a2;
  v128 = v62;
LABEL_92:
  sub_1A942AC58(&v130, &v129, &v128);
  return 1;
}

uint64_t sub_1A942A750(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(_BYTE *, _BYTE *), uint64_t a6)
{
  v43 = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 280;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 280;
  if (v12 < v14)
  {
    if (a4 != __dst || &__dst[280 * v12] <= a4)
    {
      memmove(a4, __dst, 280 * v12);
    }

    v15 = (v7 + 280 * v12);
    if (v11 < 280)
    {
LABEL_6:
      v9 = v10;
      goto LABEL_48;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      memcpy(__dsta, v9, sizeof(__dsta));
      memmove(v40, v9, 0x118uLL);
      memcpy(v42, v7, 0x118uLL);
      memmove(__srca, v7, 0x118uLL);
      sub_1A937B3DC(__dsta, v38);
      sub_1A937B3DC(v42, v38);
      v18 = a5(v40, __srca);
      if (v6)
      {
        memcpy(v37, __srca, sizeof(v37));
        sub_1A937B48C(v37);
        memcpy(v38, v40, sizeof(v38));
        sub_1A937B48C(v38);
        v30 = &v15[-v7] / 280;
        if (v10 < v7 || v10 >= v7 + 280 * v30 || v10 != v7)
        {
          v29 = 280 * v30;
          v27 = v10;
          goto LABEL_52;
        }

        return 1;
      }

      v19 = v18;
      memcpy(v37, __srca, sizeof(v37));
      sub_1A937B48C(v37);
      memcpy(v38, v40, sizeof(v38));
      sub_1A937B48C(v38);
      if (v19)
      {
        break;
      }

      v16 = v7;
      v17 = v10 == v7;
      v7 += 280;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += 280;
      if (v7 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
    v17 = v10 == v9;
    v9 += 280;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v10, v16, 0x118uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[280 * v14] <= a4)
  {
    memmove(a4, __src, 280 * v14);
  }

  v15 = (v7 + 280 * v14);
  if (v13 >= 280 && v9 > v10)
  {
    v20 = -v7;
    v35 = v7;
    v33 = -v7;
    while (2)
    {
      v34 = v9;
      v9 -= 280;
      v21 = &v15[v20];
      v8 -= 280;
      v22 = v15;
      while (1)
      {
        v15 = v22;
        v22 -= 280;
        memcpy(__dsta, v22, sizeof(__dsta));
        memmove(v40, v22, 0x118uLL);
        memcpy(v42, v9, 0x118uLL);
        memcpy(__srca, v9, sizeof(__srca));
        sub_1A937B3DC(__dsta, v38);
        sub_1A937B3DC(v42, v38);
        v23 = a5(v40, __srca);
        if (v6)
        {
          memcpy(v37, __srca, sizeof(v37));
          sub_1A937B48C(v37);
          memcpy(v38, v40, sizeof(v38));
          sub_1A937B48C(v38);
          v26 = v21 / 280;
          v27 = v34;
          v28 = v35;
          if (v34 < v35 || v34 >= &v35[280 * v26] || v34 != v35)
          {
            v29 = 280 * v26;
            goto LABEL_53;
          }

          return 1;
        }

        v24 = v23;
        memcpy(v37, __srca, sizeof(v37));
        sub_1A937B48C(v37);
        memcpy(v38, v40, sizeof(v38));
        sub_1A937B48C(v38);
        v25 = v8 + 280;
        if (v24)
        {
          break;
        }

        if (v25 < v15 || v8 >= v15 || v25 != v15)
        {
          memmove(v8, v22, 0x118uLL);
        }

        v21 -= 280;
        v8 -= 280;
        if (v22 <= v35)
        {
          v15 = v22;
          v9 = v34;
          v7 = v35;
          goto LABEL_48;
        }
      }

      if (v25 < v34 || v8 >= v34)
      {
        memmove(v8, v9, 0x118uLL);
        v7 = v35;
        v20 = v33;
      }

      else
      {
        v7 = v35;
        v20 = v33;
        if (v25 != v34)
        {
          memmove(v8, v9, 0x118uLL);
        }
      }

      if (v15 > v7 && v9 > v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_48:
  v31 = &v15[-v7] / 280;
  if (v9 < v7 || v9 >= v7 + 280 * v31 || v9 != v7)
  {
    v29 = 280 * v31;
    v27 = v9;
LABEL_52:
    v28 = v7;
LABEL_53:
    memmove(v27, v28, v29);
  }

  return 1;
}

uint64_t sub_1A942AC58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1A957B308();
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

void *sub_1A942AD3C(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v10 = *(sub_1A957B308() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1A957B308() - 8);
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

uint64_t sub_1A942AF14(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A942AD3C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1A957B308();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A942B040(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v11;
    v41 = v10;
    v42 = v8;
    v46 = v4;
    v37 = &v34;
    MEMORY[0x1EEE9AC00](v8);
    v36 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v13 = 0;
    v44 = a3;
    v15 = *(a3 + 56);
    a3 += 56;
    v14 = v15;
    v16 = 1 << *(a3 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v10 = ((v16 + 63) >> 6);
    v38 = 0;
    v39 = v7 + 16;
    v40 = (v7 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
LABEL_12:
      v11 = v19 | (v13 << 6);
      v22 = *(v44 + 48) + *(v7 + 72) * v11;
      v4 = v7;
      v23 = *(v7 + 16);
      v24 = v41;
      v25 = v42;
      v23(v41, v22, v42);
      v26 = v46;
      v27 = v43(v24);
      v46 = v26;
      if (v26)
      {
        (*v40)(v24, v25);

        return swift_willThrow();
      }

      v28 = v27;
      v8 = (*v40)(v24, v25);
      v7 = v4;
      v18 = v45;
      if (v28)
      {
        *&v36[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_1A942B6C8(v36, v35, v38, v44);
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        return sub_1A942B6C8(v36, v35, v38, v44);
      }

      v21 = *(a3 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v31 = v8;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v8 = v31;
  }

  v32 = swift_slowAlloc();
  v33 = sub_1A942B638(v32, v11, a3, v43);

  result = MEMORY[0x1AC587CD0](v32, -1, -1);
  if (!v4)
  {
    return v33;
  }

  return result;
}

uint64_t sub_1A942B3D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_1A957B308();
  result = MEMORY[0x1EEE9AC00](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_1A942B6C8(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A942B638(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1A942B3D8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1A942B6C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1A957B308();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1A937829C(&qword_1EB387288, &qword_1A958C650);
  result = sub_1A957CEB8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    result = sub_1A957C058();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A942B9F0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1A942BAE4;

  return v5(v2 + 32);
}

uint64_t sub_1A942BAE4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A942BBF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1A957B308();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s12TextToSpeech18VoiceQueryCriteriaV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1A957B308();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &Criteria - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &Criteria - v8;
  v10 = sub_1A937829C(&qword_1EB3872A8, &qword_1A958C788);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &Criteria - v11;
  v13 = *a1;
  v31 = *a2;
  v32 = v13;
  sub_1A93FC780();
  sub_1A957C438();
  sub_1A957C438();
  if (v30 != v29)
  {
    return 0;
  }

  v14 = a1[1];
  v31 = a2[1];
  v32 = v14;
  sub_1A957C438();
  sub_1A957C438();
  if (v30 != v29)
  {
    return 0;
  }

  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v15 = *(Criteria + 24);
  v16 = *(v10 + 48);
  sub_1A9391BAC(a1 + v15, v12, &qword_1EB386988, &qword_1A9587830);
  sub_1A9391BAC(a2 + v15, &v12[v16], &qword_1EB386988, &qword_1A9587830);
  v17 = v28;
  v18 = *(v28 + 48);
  if (v18(v12, 1, v4) != 1)
  {
    sub_1A9391BAC(v12, v9, &qword_1EB386988, &qword_1A9587830);
    if (v18(&v12[v16], 1, v4) != 1)
    {
      (*(v17 + 32))(v6, &v12[v16], v4);
      sub_1A942C3E8(&unk_1ED970210, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
      v20 = sub_1A957C098();
      v21 = *(v17 + 8);
      v21(v6, v4);
      v21(v9, v4);
      sub_1A937B960(v12, &qword_1EB386988, &qword_1A9587830);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v17 + 8))(v9, v4);
LABEL_8:
    sub_1A937B960(v12, &qword_1EB3872A8, &qword_1A958C788);
    return 0;
  }

  if (v18(&v12[v16], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1A937B960(v12, &qword_1EB386988, &qword_1A9587830);
LABEL_12:
  v22 = *(Criteria + 28);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (v26 && (*v23 == *v25 && v24 == v26 || (sub_1A957D3E8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v26)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1A942C2EC()
{
  result = qword_1EB38EE70;
  if (!qword_1EB38EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38EE70);
  }

  return result;
}

unint64_t sub_1A942C340()
{
  result = qword_1EB386400;
  if (!qword_1EB386400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386400);
  }

  return result;
}

unint64_t sub_1A942C394()
{
  result = qword_1EB386300;
  if (!qword_1EB386300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386300);
  }

  return result;
}

uint64_t sub_1A942C3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A942C430()
{
  result = qword_1EB3863F8;
  if (!qword_1EB3863F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3863F8);
  }

  return result;
}

uint64_t sub_1A942C484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564646962726F66 && a2 == 0xEF7374696172546ELL;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xEE00737469617254 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1A942C5FC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1A942C62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A942C69C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A942C6DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A9416A8C(v5, v2, v3, v4);
}

uint64_t sub_1A942C784(uint64_t a1, _OWORD *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return sub_1A9418EA0(a1, a2, v7, v6);
}

void *sub_1A942C838(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3872A0, &qword_1A958C768);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB387290, &qword_1A958C738);
  v7 = sub_1A957D128();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = *(v3 + 72);
  v25 = *(v2 + 48);
  v26 = v9;

  sub_1A9391BAC(a1 + v8, v5, &qword_1EB3872A0, &qword_1A958C768);
  v10 = sub_1A9425364(v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  v24 = sub_1A957B308();
  v13 = *(v24 - 8);
  v14 = *(v13 + 32);
  v15 = *(v13 + 72);
  v16 = a1 + v26 + v8;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v14(v7[6] + v15 * v12, v5, v24);
    result = memmove((v7[7] + 280 * v12), &v5[v25], 0x118uLL);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v21 = v16 + v26;
    sub_1A9391BAC(v16, v5, &qword_1EB3872A0, &qword_1A958C768);
    v12 = sub_1A9425364(v5);
    v16 = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A942CA78(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return sub_1A941A184(a1, v1);
}

uint64_t sub_1A942CB14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A942B9F0(a1, v4);
}

uint64_t sub_1A942CBCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A9382328;

  return sub_1A941A184(a1, v1);
}

uint64_t sub_1A942CC68(uint64_t a1)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A941A724(a1, v4, v1);
}

unint64_t sub_1A942CD04(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1A942CD14()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A941BFCC(v3, v4, v5, v2);
}

uint64_t sub_1A942CDA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A93836DC;

  return sub_1A941D5C8(v7, v2, v3, v4, v5, v6);
}

uint64_t sub_1A942CE64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A93836DC;

  return sub_1A941DDB4(v9, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1A942CF7C(uint64_t a1)
{
  result = sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver, &protocol conformance descriptor for VoiceResolver);
  *(a1 + 8) = result;
  return result;
}

void sub_1A942CFFC(uint64_t a1)
{
  sub_1A942D0B4(319);
  if (v1 <= 0x3F)
  {
    sub_1A942E334(319, &qword_1EB3863D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A942D0B4(uint64_t a1)
{
  if (!qword_1EB386488)
  {
    sub_1A957B308();
    v1 = sub_1A957CC58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB386488);
    }
  }
}

void sub_1A942D178(uint64_t a1)
{
  sub_1A942D0B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of VoiceResolver.currentSystemLocale()(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceResolver.currentLocales()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93916A8;

  return v4();
}

uint64_t dispatch thunk of VoiceResolver.currentLocaleIdentifiers()()
{
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9431DCC;

  return v4();
}

uint64_t dispatch thunk of VoiceResolver.currentSystemLocaleIdentifier()()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9431DC8;

  return v4();
}

uint64_t dispatch thunk of VoiceResolver.currentVoiceLocales()()
{
  v4 = (*(*v0 + 320) + **(*v0 + 320));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93918CC;

  return v4();
}

uint64_t dispatch thunk of VoiceResolver.voice(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 360) + **(*v3 + 360));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of VoiceResolver.voice(forLocale:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 416) + **(*v2 + 416));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceResolver.voices(forLocale:)(uint64_t a1)
{
  v6 = (*(*v1 + 424) + **(*v1 + 424));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A9431DCC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceResolver.voice(forLocaleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 432) + **(*v3 + 432));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of VoiceResolver.voice(forIdentifier:preferringLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 456) + **(*v5 + 456));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1A93836DC;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of VoiceResolver.fallback(forVoice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 464) + **(*v2 + 464));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t sub_1A942E0E8(uint64_t a1)
{
  v1 = *(a1 + 48) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1A942E104(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A942E120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 49))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 48) & 0x3C | (*(a1 + 48) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A942E170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1A942E1EC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -64;
  }

  return result;
}

uint64_t sub_1A942E238(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A942E250(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A942E2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_1A942E334(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for TTSSpeechQueue.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSSpeechQueue.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A942E4D8()
{
  result = qword_1EB3951E0[0];
  if (!qword_1EB3951E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3951E0);
  }

  return result;
}

unint64_t sub_1A942E530()
{
  result = qword_1EB38EE60;
  if (!qword_1EB38EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38EE60);
  }

  return result;
}

unint64_t sub_1A942E588()
{
  result = qword_1EB38EE68;
  if (!qword_1EB38EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38EE68);
  }

  return result;
}

uint64_t sub_1A942E63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[0] = a4;
  v12 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v23 - v13;
  sub_1A9391BAC(a5, v23 - v13, &qword_1EB388000, &qword_1A9587710);
  v15 = sub_1A957C688();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1A937B960(v14, &qword_1EB388000, &qword_1A9587710);
    if (a2)
    {
LABEL_3:
      v17 = sub_1A957C1C8();

      v18 = swift_allocObject();
      *(v18 + 16) = a6;
      *(v18 + 24) = a7;

      swift_unknownObjectRetain();
      if (a3 == 1)
      {
        v19 = 0;
      }

      else
      {
        v24[0] = 6;
        v24[1] = 0;
        v24[2] = a3;
        v24[3] = v23[0];
        v19 = v24;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17 + 32;
      v21 = swift_task_create();

      goto LABEL_12;
    }
  }

  else
  {
    sub_1A957C678();
    (*(v16 + 8))(v14, v15);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;

  swift_unknownObjectRetain();
  if (a3 != 1)
  {
    v24[4] = 6;
    v24[5] = 0;
    v24[6] = a3;
    v24[7] = v23[0];
  }

  v21 = swift_task_create();
LABEL_12:
  sub_1A937B960(a5, &qword_1EB388000, &qword_1A9587710);
  return v21;
}

uint64_t sub_1A942E900(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v163 = a3;
  v154 = sub_1A957B188();
  v156 = *(v154 - 8);
  v5 = MEMORY[0x1EEE9AC00](v154);
  v139 = &v135[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v152 = &v135[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v135[-v9];
  v10 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  MEMORY[0x1EEE9AC00](v10);
  v155 = &v135[-v11];
  v12 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v146 = &v135[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v151 = &v135[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v150 = &v135[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v149 = &v135[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v143 = &v135[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v144 = &v135[-v24];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v135[-v26];
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v135[-v28];
  v153 = sub_1A957B2E8();
  v157 = *(v153 - 8);
  v30 = MEMORY[0x1EEE9AC00](v153);
  v141 = &v135[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v145 = &v135[-v33];
  v34 = MEMORY[0x1EEE9AC00](v32);
  v148 = &v135[-v35];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v147 = &v135[-v37];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v142 = &v135[-v39];
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v135[-v41];
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v135[-v43];
  v45 = sub_1A957B308();
  v46 = *(v45 - 8);
  v158 = v45;
  v159 = v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v161 = &v135[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v47);
  v162 = &v135[-v49];
  v50 = sub_1A957B1A8();
  v52 = v51;
  v160 = a2;
  if (v50 == sub_1A957B1A8() && v52 == v53)
  {

    goto LABEL_5;
  }

  v54 = sub_1A957D3E8();

  if (v54)
  {
LABEL_5:
    result = 10000 - v163;
    if (!__OFSUB__(10000, v163))
    {
      return result;
    }

LABEL_65:
    __break(1u);
    return result;
  }

  v138 = a1;
  sub_1A957B118();
  sub_1A957B108();
  sub_1A957B118();
  sub_1A957B108();
  v56 = sub_1A957B118();
  v58 = v57;
  if (v56 == sub_1A957B118() && v58 == v59)
  {
  }

  else
  {
    v60 = sub_1A957D3E8();

    if ((v60 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v42 = v158;
  v61 = *(v159 + 8);
  v61(v161, v158);
  v61(v162, v42);
  result = 5000 - v163;
  if (!__OFSUB__(5000, v163))
  {
    return result;
  }

  __break(1u);
LABEL_14:
  sub_1A957B2F8();
  sub_1A957B2B8();
  v62 = v157 + 8;
  v63 = *(v157 + 8);
  v64 = v153;
  v63(v44, v153);
  sub_1A957B2F8();
  sub_1A957B2B8();
  v157 = v62;
  v137 = v63;
  v63(v42, v64);
  v65 = *(v10 + 48);
  v66 = v155;
  sub_1A9391BAC(v29, v155, &qword_1EB386A68, &qword_1A9587F40);
  v67 = v66;
  sub_1A9391BAC(v27, &v66[v65], &qword_1EB386A68, &qword_1A9587F40);
  v68 = *(v156 + 48);
  v69 = v154;
  if (v68(v67, 1, v154) == 1)
  {
    sub_1A937B960(v27, &qword_1EB386A68, &qword_1A9587F40);
    v70 = v155;
    sub_1A937B960(v29, &qword_1EB386A68, &qword_1A9587F40);
    if (v68(&v70[v65], 1, v69) == 1)
    {
      sub_1A937B960(v70, &qword_1EB386A68, &qword_1A9587F40);
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  v71 = v144;
  sub_1A9391BAC(v67, v144, &qword_1EB386A68, &qword_1A9587F40);
  if (v68((v67 + v65), 1, v69) == 1)
  {
    sub_1A937B960(v27, &qword_1EB386A68, &qword_1A9587F40);
    v70 = v155;
    sub_1A937B960(v29, &qword_1EB386A68, &qword_1A9587F40);
    (*(v156 + 8))(v71, v69);
LABEL_19:
    sub_1A937B960(v70, &qword_1EB386B70, &unk_1A95888A0);
    goto LABEL_20;
  }

  v84 = v156;
  v85 = v67 + v65;
  v86 = v140;
  (*(v156 + 32))(v140, v85, v69);
  sub_1A942C3E8(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
  v136 = sub_1A957C098();
  v87 = *(v84 + 8);
  v87(v86, v154);
  sub_1A937B960(v27, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A937B960(v29, &qword_1EB386A68, &qword_1A9587F40);
  v87(v71, v154);
  v69 = v154;
  sub_1A937B960(v155, &qword_1EB386A68, &qword_1A9587F40);
  if ((v136 & 1) == 0)
  {
LABEL_20:
    v72 = v147;
    sub_1A957B2F8();
    v73 = v149;
    sub_1A957B2B8();
    v137(v72, v64);
    if (v68(v73, 1, v69) == 1)
    {
      sub_1A937B960(v73, &qword_1EB386A68, &qword_1A9587F40);
      v155 = 0;
      v74 = 0;
    }

    else
    {
      sub_1A957B148();
      (*(v156 + 8))(v73, v69);
      v155 = sub_1A957C1A8();
      v74 = v75;
    }

    v76 = v150;
    v77 = v151;
    v78 = v148;
    sub_1A957B2F8();
    sub_1A957B2B8();
    v137(v78, v64);
    if (v68(v76, 1, v69) == 1)
    {
      sub_1A937B960(v76, &qword_1EB386A68, &qword_1A9587F40);
      v79 = v152;
      v80 = v146;
    }

    else
    {
      sub_1A957B148();
      (*(v156 + 8))(v76, v69);
      v81 = sub_1A957C1A8();
      v83 = v82;

      if (v74)
      {
        if (v83)
        {
          if (v155 == v81 && v74 == v83)
          {
          }

          else
          {
            v127 = sub_1A957D3E8();

            v79 = v152;
            v80 = v146;
            if ((v127 & 1) == 0)
            {
LABEL_41:
              v108 = v145;
              sub_1A957B2F8();
              sub_1A957B2B8();
              v109 = v153;
              v137(v108, v153);
              if (v68(v77, 1, v69) == 1)
              {
                v110 = v158;
                v111 = *(v159 + 8);
                v111(v161, v158);
                v111(v162, v110);
                sub_1A937B960(v77, &qword_1EB386A68, &qword_1A9587F40);
              }

              else
              {
                v112 = v79;
                v113 = v156;
                v160 = *(v156 + 32);
                v160(v112, v77, v69);
                v114 = v141;
                sub_1A957B2F8();
                sub_1A957B2B8();
                v137(v114, v109);
                if (v68(v80, 1, v69) == 1)
                {
                  (*(v113 + 8))(v152, v69);
                  v115 = v158;
                  v116 = *(v159 + 8);
                  v116(v161, v158);
                  v116(v162, v115);
                  sub_1A937B960(v80, &qword_1EB386A68, &qword_1A9587F40);
                }

                else
                {
                  v117 = v139;
                  v160(v139, v80, v69);
                  v118 = v152;
                  if (Locale.LanguageCode.isMacroLanguage.getter())
                  {
                    v119 = Locale.LanguageCode.childLanguages.getter();
                    v120 = sub_1A939A620(v117, v119);

                    v121 = *(v156 + 8);
                    v121(v117, v69);
                    v121(v118, v69);
                    v122 = v158;
                    v123 = *(v159 + 8);
                    v123(v161, v158);
                    v123(v162, v122);
                    if (v120)
                    {
                      result = 100 - v163;
                      if (!__OFSUB__(100, v163))
                      {
                        return result;
                      }

                      __break(1u);
                      goto LABEL_57;
                    }
                  }

                  else
                  {
                    v124 = *(v156 + 8);
                    v124(v117, v69);
                    v124(v118, v69);
                    v125 = v158;
                    v126 = *(v159 + 8);
                    v126(v161, v158);
                    v126(v162, v125);
                  }
                }
              }

              return 0;
            }
          }

          v128 = v158;
          v129 = *(v159 + 8);
          v129(v161, v158);
          v129(v162, v128);
          result = 500 - v163;
          if (!__OFSUB__(500, v163))
          {
            return result;
          }

          __break(1u);
          goto LABEL_57;
        }

        v79 = v152;
        v80 = v146;
      }

      else
      {
        v79 = v152;
        v80 = v146;
      }
    }

    goto LABEL_41;
  }

LABEL_31:
  v88 = v142;
  sub_1A957B2F8();
  v89 = v143;
  sub_1A957B2B8();
  v137(v88, v64);
  if (v68(v89, 1, v69) == 1)
  {
    v90 = v158;
    v91 = *(v159 + 8);
    v91(v161, v158);
    v91(v162, v90);
    sub_1A937B960(v89, &qword_1EB386A68, &qword_1A9587F40);
    goto LABEL_58;
  }

  v92 = sub_1A957B148();
  v94 = v93;
  (*(v156 + 8))(v89, v69);
  v95 = sub_1A957B1A8();
  v97 = v96;
  v98 = sub_1A93A7EF0();
  v99 = *v98;
  if (!*(*v98 + 16) || (, v100 = sub_1A937A490(v92, v94), v102 = v101, , (v102 & 1) == 0))
  {
LABEL_57:

    v130 = v158;
    v131 = *(v159 + 8);
    v131(v161, v158);
    v131(v162, v130);
LABEL_58:
    while (1)
    {
      result = 1000 - v163;
      if (!__OFSUB__(1000, v163))
      {
        return result;
      }

      __break(1u);
LABEL_61:
      v132 = sub_1A957D3E8();

      v133 = v158;
      v134 = *(v159 + 8);
      v134(v161, v158);
      v134(v162, v133);
      if (v132)
      {
        goto LABEL_62;
      }
    }
  }

  v103 = (*(v99 + 56) + 16 * v100);
  v105 = *v103;
  v104 = v103[1];

  if (v95 != v105 || v97 != v104)
  {
    goto LABEL_61;
  }

  v106 = v158;
  v107 = *(v159 + 8);
  v107(v161, v158);
  v107(v162, v106);
LABEL_62:
  result = 2000 - v163;
  if (__OFSUB__(2000, v163))
  {
    __break(1u);
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_1A942F9B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v42 = a1;
  v43 = a2;
  v44 = sub_1A957B308();
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1A937829C(&qword_1EB387270, &qword_1A958C630);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = (&v35 - v9);
  v10 = sub_1A937829C(&qword_1EB387278, &unk_1A958C638);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v35 - v14);
  v16 = *a3;
  v35 = v4 + 16;
  v17 = *(v16 + 16);
  v18 = (v8 + 48);
  v40 = (v4 + 32);
  v41 = (v8 + 56);
  v37 = v4;
  v38 = v16;
  v39 = (v4 + 8);

  v20 = 0;
  v21 = v44;
  while (1)
  {
    if (v20 == v17)
    {
      v22 = 1;
      v20 = v17;
      goto LABEL_7;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *(v38 + 16))
    {
      goto LABEL_16;
    }

    v24 = v36;
    v23 = v37;
    v25 = v38 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20;
    v26 = *(v7 + 48);
    *v36 = v20;
    (*(v23 + 16))(v24 + v26, v25, v44);
    sub_1A93A7460(v24, v13, &qword_1EB387270, &qword_1A958C630);
    v22 = 0;
    ++v20;
LABEL_7:
    (*v41)(v13, v22, 1, v7);
    sub_1A93A7460(v13, v15, &qword_1EB387278, &unk_1A958C638);
    if ((*v18)(v15, 1, v7) == 1)
    {

      v31 = sub_1A957B118();
      v33 = v32;
      if (v31 == sub_1A957B118() && v33 == v34)
      {

        v30 = 0;
      }

      else
      {
        v30 = sub_1A957D3E8();
      }

      return v30 & 1;
    }

    v27 = *v15;
    (*v40)(v6, v15 + *(v7 + 48), v21);
    v28 = sub_1A942E900(v42, v6, v27);
    v29 = sub_1A942E900(v43, v6, v27);
    result = (*v39)(v6, v21);
    if (v28 != v29)
    {

      v30 = v29 < v28;
      return v30 & 1;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A942FDA0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  v60 = a6;
  v71 = a5;
  v10 = sub_1A957B308();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v58 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v58 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v58 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_68;
  }

  v26 = (a2 - a1) / v24;
  v76 = a1;
  v75 = a4;
  v72 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v72;
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
      v24 = v72;
    }

    v39 = a4 + v28;
    if (v28 >= 1)
    {
      v66 = v14;
      v40 = -v24;
      v64 = (v11 + 16);
      v65 = (v11 + 8);
      v41 = (a4 + v28);
      v42 = v70;
      v62 = a1;
      v63 = a4;
      v68 = -v24;
      do
      {
        v59 = v39;
        v43 = a2;
        v44 = v39;
        v69 = a2 + v40;
        v67 = a2;
        while (1)
        {
          if (v43 <= a1)
          {
            v76 = v43;
            v74 = v59;
            goto LABEL_65;
          }

          v45 = a3;
          v61 = v44;
          v46 = v68;
          v72 = v41;
          v47 = &v41[v68];
          v48 = *v64;
          (*v64)(v42, &v41[v68], v10);
          v49 = v10;
          v50 = v66;
          v48(v66, v69, v49);
          v51 = sub_1A942F9B4(v42, v50, v71);
          if (v73)
          {
            v57 = *v65;
            (*v65)(v50, v49);
            v57(v42, v49);
            v76 = v67;
            v74 = v61;
            goto LABEL_65;
          }

          v52 = v51;
          v53 = v45 + v46;
          v54 = *v65;
          (*v65)(v50, v49);
          v54(v42, v49);
          v10 = v49;
          if (v52)
          {
            break;
          }

          v44 = v47;
          a3 = v45 + v46;
          a1 = v62;
          if (v45 < v72 || v53 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v70;
          }

          else
          {
            v42 = v70;
            if (v45 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v41 = v47;
          v43 = v67;
          if (v47 <= v63)
          {
            a2 = v67;
            v39 = v47;
            goto LABEL_64;
          }
        }

        a3 = v45 + v46;
        a1 = v62;
        if (v45 < v67 || v53 >= v67)
        {
          a2 = v69;
          swift_arrayInitWithTakeFrontToBack();
          v42 = v70;
          v40 = v68;
        }

        else
        {
          v55 = v45 == v67;
          a2 = v69;
          v42 = v70;
          v40 = v68;
          if (!v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v41 = v72;
        v39 = v61;
      }

      while (v72 > v63);
    }

LABEL_64:
    v76 = a2;
    v74 = v39;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = (a4 + v27);
    v74 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = *(v11 + 16);
      v67 = a3;
      v68 = v30;
      v69 = v11 + 16;
      v31 = (v11 + 8);
      while (1)
      {
        v32 = v68;
        (v68)(v22, a2, v10);
        v32(v19, a4, v10);
        v33 = sub_1A942F9B4(v22, v19, v71);
        if (v73)
        {
          v56 = *v31;
          (*v31)(v19, v10);
          v56(v22, v10);
          goto LABEL_65;
        }

        v34 = v33;
        v35 = a2;
        v36 = *v31;
        (*v31)(v19, v10);
        v36(v22, v10);
        if ((v34 & 1) == 0)
        {
          break;
        }

        v37 = v72;
        a2 = v35 + v72;
        if (a1 < v35 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (a1 == v35)
          {
            goto LABEL_36;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v37 = v72;
LABEL_36:
        a1 += v37;
        v76 = a1;
        if (a4 >= v70 || a2 >= v67)
        {
          goto LABEL_65;
        }
      }

      v37 = v72;
      v38 = a4 + v72;
      a2 = v35;
      if (a1 < a4 || a1 >= v38)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a1 == a4)
        {
LABEL_35:
          v75 = v38;
          a4 = v38;
          goto LABEL_36;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v72;
      goto LABEL_35;
    }
  }

LABEL_65:
  sub_1A942AC58(&v76, &v75, &v74);

  return 1;
}

uint64_t sub_1A943042C(uint64_t *a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v28 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v28 = sub_1A938911C(v28);
  }

  v23 = v7;
  *v7 = v28;
  v9 = v28 + 16;
  v10 = *(v28 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v23 = v28;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v28[16 * v10];
      v13 = *v12;
      v14 = v9;
      v15 = &v9[16 * v10];
      v17 = *v15;
      v16 = *(v15 + 1);
      v18 = *(*(sub_1A957B308() - 8) + 72);
      v19 = v11 + v18 * v13;
      v29 = v11 + v18 * v17;
      v7 = (v11 + v18 * v16);

      sub_1A942FDA0(v19, v29, v7, a2, a4, a5);
      if (v6)
      {
        goto LABEL_9;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v20 = *v14;
      if (v10 - 2 >= *v14)
      {
        goto LABEL_11;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v21 = v20 - v10;
      if (v20 < v10)
      {
        goto LABEL_12;
      }

      v9 = v14;
      v10 = v20 - 1;
      memmove(v15, v15 + 16, 16 * v21);
      *v14 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v23 = v28;
    __break(1u);
  }

  return result;
}

uint64_t sub_1A94305D8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v171 = a5;
  v10 = sub_1A957B308();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v157 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v143 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v143 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v143 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v25);
  v174 = MEMORY[0x1E69E7CC0];
  v170 = a3;
  v30 = a3[1];
  v165 = a6;
  if (v30 >= 1)
  {
    v31 = v30;
    v154 = &v143 - v26;
    v148 = v29;
    v159 = v27;
    v160 = v28;
    v168 = (v11 + 8);
    v169 = v11 + 16;
    v162 = (v11 + 32);
    swift_bridgeObjectRetain_n();
    v32 = a4;
    v33 = 0;
    v173 = MEMORY[0x1E69E7CC0];
    v167 = v10;
    v152 = a1;
    v151 = v32;
    v163 = v11;
    v158 = v16;
    v153 = v20;
    v150 = v24;
    v34 = v32;
    while (1)
    {
      v166 = v31;
      if (v33 + 1 >= v31)
      {
        v54 = v33 + 1;
        v55 = v33;
      }

      else
      {
        v39 = *v170;
        v40 = *(v11 + 72);
        v41 = v11;
        v42 = *v170 + v40 * (v33 + 1);
        v43 = *(v41 + 16);
        v44 = v154;
        v43(v154, v42, v10);
        v45 = v148;
        v43(v148, v39 + v40 * v33, v10);
        LODWORD(v161) = sub_1A942F9B4(v44, v45, v171);
        if (v172)
        {
          v142 = *v168;
          (*v168)(v45, v10);
          v142(v154, v10);
LABEL_103:
          swift_bridgeObjectRelease_n();
        }

        v164 = v39;
        v46 = *v168;
        (*v168)(v45, v10);
        v46(v154, v10);
        v149 = v33;
        v47 = v33 + 2;
        v48 = (v164 + v40 * (v33 + 2));
        v49 = v40;
        v164 = v40;
        while (v166 != v47)
        {
          v43(v24, v48, v10);
          v50 = v24;
          v51 = v160;
          v43(v160, v42, v10);
          v52 = sub_1A942F9B4(v50, v51, v171);
          if (v172)
          {
            v46(v51, v10);
            v46(v50, v10);
            goto LABEL_103;
          }

          v53 = v52;
          v46(v51, v10);
          v46(v50, v10);
          ++v47;
          v49 = v164;
          v48 += v164;
          v42 += v164;
          v24 = v50;
          if ((v161 ^ v53))
          {
            v54 = v47 - 1;
            goto LABEL_17;
          }
        }

        v54 = v166;
LABEL_17:
        v11 = v163;
        v20 = v153;
        v55 = v149;
        if ((v161 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v54 < v149)
        {
          goto LABEL_124;
        }

        if (v149 < v54)
        {
          v56 = v49 * (v54 - 1);
          v57 = v54 * v49;
          v166 = v54;
          v58 = v54;
          v59 = v149;
          v60 = v149 * v49;
          do
          {
            if (v59 != --v58)
            {
              v61 = *v170;
              if (!*v170)
              {
                goto LABEL_127;
              }

              v62 = *v162;
              (*v162)(v157, v61 + v60, v167);
              if (v60 < v56 || v61 + v60 >= (v61 + v57))
              {
                v10 = v167;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v10 = v167;
                if (v60 != v56)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v62((v61 + v56), v157, v10);
              v49 = v164;
            }

            ++v59;
            v56 -= v49;
            v57 -= v49;
            v60 += v49;
          }

          while (v59 < v58);
          a1 = v152;
          v34 = v151;
          v11 = v163;
          v20 = v153;
          v55 = v149;
          v54 = v166;
        }

        else
        {
LABEL_30:
          a1 = v152;
          v34 = v151;
        }
      }

      v63 = v170[1];
      if (v54 >= v63)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v54, v55))
      {
        goto LABEL_121;
      }

      if (v54 - v55 >= v34)
      {
LABEL_41:
        v65 = v54;
        if (v54 < v55)
        {
          goto LABEL_120;
        }

        goto LABEL_42;
      }

      if (__OFADD__(v55, v34))
      {
        goto LABEL_122;
      }

      if (v55 + v34 >= v63)
      {
        v64 = v170[1];
      }

      else
      {
        v64 = v55 + v34;
      }

      if (v64 < v55)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_126:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_127:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_128:
        swift_bridgeObjectRelease_n();
        __break(1u);
        goto LABEL_129;
      }

      if (v54 == v64)
      {
        goto LABEL_41;
      }

      v126 = *v170;
      v127 = *(v11 + 72);
      v164 = *(v11 + 16);
      v128 = v126 + v127 * (v54 - 1);
      v156 = -v127;
      v149 = v55;
      v129 = v55 - v54;
      v161 = v126;
      v144 = v127;
      v130 = v126 + v54 * v127;
      v155 = v64;
      while (2)
      {
        v166 = v54;
        v145 = v130;
        v146 = v129;
        v147 = v128;
        do
        {
          v131 = v164;
          (v164)(v20, v130, v10);
          v132 = v20;
          v133 = v159;
          v131(v159, v128, v10);
          v134 = sub_1A942F9B4(v132, v133, v171);
          if (v172)
          {
            v140 = *v168;
            (*v168)(v133, v10);
            v140(v132, v10);
            goto LABEL_103;
          }

          v135 = v134;
          v136 = *v168;
          (*v168)(v133, v10);
          v136(v132, v10);
          v20 = v132;
          if ((v135 & 1) == 0)
          {
            break;
          }

          if (!v161)
          {
            goto LABEL_126;
          }

          v137 = *v162;
          v138 = v158;
          (*v162)(v158, v130, v10);
          swift_arrayInitWithTakeFrontToBack();
          v137(v128, v138, v10);
          v128 += v156;
          v130 += v156;
        }

        while (!__CFADD__(v129++, 1));
        v54 = v166 + 1;
        v128 = v147 + v144;
        v129 = v146 - 1;
        v130 = v145 + v144;
        v65 = v155;
        if (v166 + 1 != v155)
        {
          continue;
        }

        break;
      }

      a1 = v152;
      v34 = v151;
      v11 = v163;
      v55 = v149;
      if (v155 < v149)
      {
        goto LABEL_120;
      }

LABEL_42:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v65;
      v67 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v173 = sub_1A9389130(0, *(v173 + 2) + 1, 1, v173);
      }

      v69 = *(v173 + 2);
      v68 = *(v173 + 3);
      v70 = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        v173 = sub_1A9389130((v68 > 1), v69 + 1, 1, v173);
      }

      v71 = v173;
      *(v173 + 2) = v70;
      v72 = v71 + 32;
      v73 = &v71[16 * v69 + 32];
      v74 = v155;
      *v73 = v67;
      *(v73 + 1) = v74;
      v174 = v71;
      v166 = *a1;
      if (!v166)
      {
        goto LABEL_128;
      }

      if (v69)
      {
        while (1)
        {
          v75 = v70 - 1;
          if (v70 >= 4)
          {
            break;
          }

          if (v70 == 3)
          {
            v76 = *(v173 + 4);
            v77 = *(v173 + 5);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_61:
            if (v79)
            {
              goto LABEL_111;
            }

            v92 = &v173[16 * v70];
            v94 = *v92;
            v93 = *(v92 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_114;
            }

            v98 = &v72[16 * v75];
            v100 = *v98;
            v99 = *(v98 + 1);
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_118;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v75 = v70 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v102 = &v173[16 * v70];
          v104 = *v102;
          v103 = *(v102 + 1);
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_75:
          if (v97)
          {
            goto LABEL_113;
          }

          v105 = &v72[16 * v75];
          v107 = *v105;
          v106 = *(v105 + 1);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_116;
          }

          if (v108 < v96)
          {
            goto LABEL_6;
          }

LABEL_82:
          if (v75 - 1 >= v70)
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
            goto LABEL_123;
          }

          v113 = *v170;
          if (!*v170)
          {
            goto LABEL_125;
          }

          v114 = &v72[16 * v75 - 16];
          v115 = *v114;
          v116 = &v72[16 * v75];
          v117 = *(v116 + 1);
          v118 = *(v11 + 72);
          v119 = v113 + v118 * *v114;
          v120 = v113 + v118 * *v116;
          v121 = v113 + v118 * v117;
          v122 = v165;

          v123 = v119;
          v124 = v172;
          sub_1A942FDA0(v123, v120, v121, v166, v171, v122);
          v172 = v124;
          if (v124)
          {
            v174 = v173;
            goto LABEL_103;
          }

          if (v117 < v115)
          {
            goto LABEL_106;
          }

          v125 = *(v173 + 2);
          if (v75 > v125)
          {
            goto LABEL_107;
          }

          *v114 = v115;
          *(v114 + 1) = v117;
          if (v75 >= v125)
          {
            goto LABEL_108;
          }

          v70 = v125 - 1;
          memmove(&v72[16 * v75], v116 + 16, 16 * (v125 - 1 - v75));
          *(v173 + 2) = v125 - 1;
          v10 = v167;
          v11 = v163;
          if (v125 <= 2)
          {
LABEL_6:
            v174 = v173;
            a1 = v152;
            v34 = v151;
            goto LABEL_7;
          }
        }

        v80 = &v72[16 * v70];
        v81 = *(v80 - 8);
        v82 = *(v80 - 7);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_109;
        }

        v85 = *(v80 - 6);
        v84 = *(v80 - 5);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_110;
        }

        v87 = &v173[16 * v70];
        v89 = *v87;
        v88 = *(v87 + 1);
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_112;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_115;
        }

        if (v91 >= v83)
        {
          v109 = &v72[16 * v75];
          v111 = *v109;
          v110 = *(v109 + 1);
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_119;
          }

          if (v78 < v112)
          {
            v75 = v70 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_7:
      v31 = v170[1];
      v33 = v155;
      v20 = v153;
      v24 = v150;
      if (v155 >= v31)
      {
        goto LABEL_4;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_4:
  v35 = *a1;
  if (*a1)
  {
    v36 = v165;

    v37 = v35;
    v38 = v172;
    sub_1A943042C(&v174, v37, v170, v171, v36);

    v172 = v38;
    goto LABEL_103;
  }

LABEL_129:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1A9431158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v52 = a5;
  v9 = sub_1A957B308();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v51 = &v39 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - v16;
  v40 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v15 + 16);
    v19 = v15 + 16;
    v21 = *(v19 + 56);
    v48 = (v19 - 8);
    v49 = v20;
    v50 = v19;
    v22 = (v19 + 16);
    v23 = v18 + v21 * (a3 - 1);
    v45 = -v21;
    v46 = v18;
    v24 = a1 - a3;
    v39 = v21;
    v25 = v18 + v21 * a3;
    while (2)
    {
      v43 = v23;
      v44 = a3;
      v41 = v25;
      v42 = v24;
      v26 = v23;
      do
      {
        v27 = v17;
        v28 = v17;
        v29 = v49;
        v49(v27, v25, v9);
        v30 = v51;
        v29(v51, v26, v9);
        v17 = v28;
        v31 = sub_1A942F9B4(v28, v30, v52);
        if (v53)
        {
          v38 = *v48;
          (*v48)(v30, v9);
          return (v38)(v28, v9);
        }

        v32 = v31;
        v33 = v30;
        v34 = *v48;
        (*v48)(v33, v9);
        result = (v34)(v28, v9);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v35 = *v22;
        v36 = v47;
        (*v22)(v47, v25, v9);
        swift_arrayInitWithTakeFrontToBack();
        result = (v35)(v26, v36, v9);
        v26 += v45;
        v25 += v45;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v44 + 1;
      v23 = v43 + v39;
      v24 = v42 - 1;
      v25 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1A943141C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1A957D388();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A957B308();
        v10 = sub_1A957C518();
        *(v10 + 16) = v9;
      }

      v11 = *(sub_1A957B308() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;

      sub_1A94305D8(v12, v13, a1, v8, a2, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1A9431158(0, v6, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1A943159C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(sub_1A957B308() - 8);
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1A942BE9C(v8);
  }

  v9 = v8[2];
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;

  sub_1A943141C(v11, a2, a4);

  *a1 = v8;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1A943168C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A941FA54(v2, v3, v4);
}

uint64_t sub_1A9431748()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A9431798()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A94317E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A941C8F0(v2, v3, v4);
}

uint64_t sub_1A9431894()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A94318DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A941B258(v2, v3, v4);
}

uint64_t sub_1A9431990()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A94178F4(v2, v3);
}

void sub_1A9431A3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1A957C4B8();
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_1A9431A9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9431ADC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9431B1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9415E34(v2, v3);
}

uint64_t sub_1A9431C34(uint64_t a1)
{
  v1 = sub_1A957B1A8();
  v3 = v2;
  if (v1 == sub_1A957B1A8() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1A957D3E8();
  }

  return v6 & 1;
}

uint64_t sub_1A9431CCC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9431D0C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A9417ED0(v3, v4, v5, v2);
}

uint64_t sub_1A9431DF0()
{
  type metadata accessor for SSEVoiceManager();
  v0 = swift_allocObject();
  type metadata accessor for VoiceDatabaseClient();
  v1 = sub_1A938983C();
  result = VoiceDatabaseClient.__allocating_init(readOnly:)(v1 & 1);
  *(v0 + 16) = result;
  qword_1EB3953F8 = v0;
  return result;
}

uint64_t sub_1A9431E44()
{
  v0 = swift_allocObject();
  type metadata accessor for VoiceDatabaseClient();
  v1 = sub_1A938983C();
  *(v0 + 16) = VoiceDatabaseClient.__allocating_init(readOnly:)(v1 & 1);
  return v0;
}

uint64_t *sub_1A9431E94()
{
  if (qword_1EB3953F0 != -1)
  {
    swift_once();
  }

  return &qword_1EB3953F8;
}

uint64_t static SSEVoiceManager.shared.getter()
{
  if (qword_1EB3953F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A9431F40(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  sub_1A937829C(&unk_1EB387BC0, &qword_1A9587E30);
  sub_1A957B9D8();
}

uint64_t sub_1A9431FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[112] = a4;
  v4[111] = a3;
  v4[110] = a2;
  v4[109] = a1;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v4[113] = swift_task_alloc();
  type metadata accessor for VoiceQueryCriteria(0);
  v4[114] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94320C8, 0, 0);
}

uint64_t sub_1A94320C8()
{
  v14 = v0;
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = *(v0[110] + 16);
  v6 = sub_1A957B308();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A9587160;
  *(v7 + 32) = *sub_1A9493C84();
  v0[108] = v7;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  sub_1A957CE08();
  v12 = v0[107];
  sub_1A9431DA8();

  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v4, v3, v2, &v13, &v12, v1);
  v11 = (*(*v5 + 320) + **(*v5 + 320));
  v8 = swift_task_alloc();
  v0[115] = v8;
  *v8 = v0;
  v8[1] = sub_1A9432324;
  v9 = v0[114];

  return v11(v9);
}

uint64_t sub_1A9432324(uint64_t a1)
{
  v2 = *(*v1 + 912);
  *(*v1 + 928) = a1;

  sub_1A9391040(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A9432444, 0, 0);
}

uint64_t sub_1A9432444()
{
  v1 = v0[116];
  v2 = v0[109];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v2, v0 + 2, 0x118uLL);
    nullsub_23();
  }

  else
  {

    sub_1A93847E0((v0 + 72));
    memcpy(v2, v0 + 72, 0x118uLL);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9432524(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  memcpy((v3 + 24), __src, 0x118uLL);

  sub_1A937B3DC(__dst, &v5);
  sub_1A937829C(&qword_1EB3872B0, &unk_1A9597060);
  sub_1A957B9D8();

  return v5;
}

uint64_t sub_1A94325E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a2;
  v3[39] = a3;
  v3[37] = a1;
  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v3[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9432688, 0, 0);
}

uint64_t sub_1A9432688()
{
  v1 = *(*(v0 + 304) + 16);
  memcpy((v0 + 16), *(v0 + 312), 0x118uLL);
  v5 = (*(*v1 + 288) + **(*v1 + 288));
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_1A94327CC;
  v3 = *(v0 + 320);

  return v5(v3, v0 + 16);
}

uint64_t sub_1A94327CC()
{

  if (v0)
  {

    v1 = sub_1A9432A1C;
  }

  else
  {
    v1 = sub_1A94328E4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A94328E4()
{
  v1 = v0[40];
  v2 = sub_1A957AFD8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[37];
  if (v4 == 1)
  {
    sub_1A937B960(v1, &unk_1EB387B80, qword_1A9587740);
    *v5 = 0;
    v5[1] = 0;
  }

  else
  {
    v6 = sub_1A957AFA8();
    v8 = v7;
    (*(v3 + 8))(v1, v2);
    *v5 = v6;
    v5[1] = v8;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A9432A1C()
{
  v1 = *(v0 + 296);
  *v1 = 0;
  v1[1] = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A9432A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(a1 + 24);
    v13 = sub_1A957C688();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v3;
    v14[5] = v12;
    v14[6] = v11;
    v14[7] = a2;
    v14[8] = a3;

    sub_1A93C4B70(0, 0, v10, &unk_1A958C7B8, v14);
  }

  return result;
}

uint64_t sub_1A9432BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[113] = a8;
  v8[112] = a7;
  v8[111] = a6;
  v8[110] = a5;
  v8[109] = a4;
  v9 = sub_1A937829C(&qword_1EB3872B8, &qword_1A958C7F8);
  v8[114] = v9;
  v8[115] = *(v9 - 8);
  v8[116] = swift_task_alloc();
  v10 = sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  v8[117] = v10;
  v8[118] = *(v10 - 8);
  v8[119] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v8[120] = swift_task_alloc();
  type metadata accessor for VoiceQueryCriteria(0);
  v8[121] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9432D74, 0, 0);
}

uint64_t sub_1A9432D74()
{
  v14 = v0;
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[111];
  v4 = v0[110];
  v5 = *(v0[109] + 16);
  v0[122] = v5;
  v6 = sub_1A957B308();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A9587160;
  *(v7 + 32) = *sub_1A9493C84();
  v0[108] = v7;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  sub_1A957CE08();
  v12 = v0[107];
  sub_1A9431DA8();

  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v4, v3, v2, &v12, &v13, v1);
  v11 = (*(*v5 + 320) + **(*v5 + 320));
  v8 = swift_task_alloc();
  v0[123] = v8;
  *v8 = v0;
  v8[1] = sub_1A9432FD4;
  v9 = v0[121];

  return v11(v9);
}

uint64_t sub_1A9432FD4(uint64_t a1)
{
  v2 = *(*v1 + 968);
  *(*v1 + 992) = a1;

  sub_1A9391040(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A94330F4, 0, 0);
}

uint64_t sub_1A94330F4()
{
  v1 = v0[124];
  if (*(v1 + 16))
  {
    v2 = v0[122];
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v0 + 72, v0 + 2, 0x118uLL);
    v7 = (*(*v2 + 296) + **(*v2 + 296));
    v3 = swift_task_alloc();
    v0[125] = v3;
    *v3 = v0;
    v3[1] = sub_1A94332E0;
    v4 = v0[119];

    return v7(v4, v0 + 72);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A94332E0()
{
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v2 = sub_1A9433728;
  }

  else
  {
    v2 = sub_1A94333F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A94333F4()
{
  sub_1A957C6F8();
  v1 = swift_task_alloc();
  *(v0 + 1016) = v1;
  *v1 = v0;
  v1[1] = sub_1A94334AC;
  v2 = *(v0 + 912);

  return MEMORY[0x1EEE6D9C8](v0 + 1024, 0, 0, v2);
}

uint64_t sub_1A94334AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94335A8, 0, 0);
}

uint64_t sub_1A94335A8()
{
  if (*(v0 + 1028))
  {
    v1 = *(v0 + 952);
    v2 = *(v0 + 944);
    v3 = *(v0 + 936);
    v4 = *(v0 + 896);
    v5 = (*(*(v0 + 920) + 8))(*(v0 + 928), *(v0 + 912));
    v4(v5);
    sub_1A937B48C(v0 + 16);
    (*(v2 + 8))(v1, v3);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 1016) = v8;
    *v8 = v0;
    v8[1] = sub_1A94334AC;
    v9 = *(v0 + 912);

    return MEMORY[0x1EEE6D9C8](v0 + 1024, 0, 0, v9);
  }
}

uint64_t sub_1A9433728()
{
  sub_1A937B48C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SSEVoiceManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A943381C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A9431FF4(a1, v4, v5, v6);
}

uint64_t sub_1A94338D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A9382328;

  return sub_1A94325E8(a1, v4, v1 + 24);
}

uint64_t sub_1A943397C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A9382328;

  return sub_1A9432BCC(v7, v8, v9, v2, v3, v4, v5, v6);
}

id sub_1A9433AE0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1A943639C(0xD000000000000063, 0x80000001A95C2970, 0);
  qword_1EB3A7BD8 = result;
  return result;
}

id sub_1A9433B6C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1A943639C(0xD000000000000083, 0x80000001A95C2C90, 0);
  qword_1EB3A7BE0 = result;
  return result;
}

id sub_1A9433BF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1A943639C(0xD00000000000001CLL, 0x80000001A95C2C70, 0);
  qword_1EB3A7BE8 = result;
  return result;
}

id sub_1A9433C84()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1A943639C(0xD000000000000064, 0x80000001A95C2BD0, 0);
  qword_1EB3A7BF0 = result;
  return result;
}

void *sub_1A9433D10()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_1A9433D54(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *sub_1A9433D9C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1A9433DE0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void *sub_1A9433E28()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_1A9433E6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *sub_1A9433F04()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_1A9433F48(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_1A9434014(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_1A94340D8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 65) = a1;
  return result;
}

uint64_t sub_1A9434168@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94341BC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 320);

  return v2(v3);
}

uint64_t sub_1A9434250(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_1A943431C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_1A94343E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_1A94344B0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

unint64_t sub_1A9434540()
{
  v1 = (*(*v0 + 384))();
  result = sub_1A957C238();
  if (result < v1)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_1A957C268();
    result = sub_1A957C268();
    if (result >> 14 >= v3 >> 14)
    {
      v4 = sub_1A957C3B8();
      v5 = MEMORY[0x1AC585090](v4);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A9434624()
{
  if (((*(*v0 + 288))() & 1) == 0)
  {
    return 0;
  }

  if (qword_1EB395418 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3A7BE8;
  v2 = (*v0 + 408);
  v3 = *v2;
  (*v2)();
  v4 = sub_1A957C0C8();

  (v3)(v5);

  (v3)(v6);
  sub_1A937829C(&qword_1EB3872C8, &qword_1A958C808);
  sub_1A9436478();
  sub_1A93820F4();
  v7 = sub_1A957CC38();
  v9 = [v1 matchesInString:v4 options:0 range:{v7, v8}];

  sub_1A94364DC();
  v10 = sub_1A957C4C8();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_1A957CE48();
  if (!result)
  {
LABEL_13:

    return 0;
  }

LABEL_6:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1AC585DE0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  [v13 range];
  v15 = v14;

  result = (v3)();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = sub_1A957C268();
    result = sub_1A957C268();
    if (result >> 14 >= v16 >> 14)
    {
      v17 = sub_1A957C3B8();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = MEMORY[0x1AC585090](v17, v19, v21, v23);

      return v24;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A9434904()
{
  if (qword_1EB395408 != -1)
  {
    swift_once();
  }

  v1 = *(*v0 + 288);
  v2 = qword_1EB3A7BD8;
  if ((v1() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1EB395410 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v3 = qword_1EB3A7BE0;

    v2 = v3;
LABEL_6:
    v4 = (*v0 + 408);
    v5 = *v4;
    (*v4)();
    v6 = sub_1A957C0C8();

    (v5)(v7);

    (v5)(v8);
    sub_1A937829C(&qword_1EB3872C8, &qword_1A958C808);
    sub_1A9436478();
    sub_1A93820F4();
    v9 = sub_1A957CC38();
    v11 = [v2 matchesInString:v6 options:0 range:{v9, v10}];

    sub_1A94364DC();
    v12 = sub_1A957C4C8();

    if (v12 >> 62)
    {
      break;
    }

    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_8:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1AC585DE0](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;

    (v5)(v15);
    v0 = v16;
    if (([v14 range] & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v17 = sub_1A957C268();
    if (sub_1A957C268() >> 14 >= v17 >> 14)
    {
      v18 = sub_1A957C3B8();
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = MEMORY[0x1AC585090](v18, v20, v22, v24);

      return v25;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  if (sub_1A957CE48())
  {
    goto LABEL_8;
  }

LABEL_15:

  v25 = (v5)(v26);

  return v25;
}

uint64_t sub_1A9434C48(uint64_t a1)
{
  if ((*(*v1 + 336))())
  {
    sub_1A9379534(a1, v13);
    v3 = (*(*v1 + 376))(v12);
  }

  else
  {
    sub_1A9379534(a1, v13);
    v3 = (*(*v1 + 328))(v12);
  }

  v5 = v3;
  v6 = v4;
  v7 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A93ADC90(0, v7[2] + 1, 1, v7);
    *v6 = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A93ADC90((v9 > 1), v10 + 1, 1, v7);
    *v6 = v7;
  }

  v7[2] = v10 + 1;
  sub_1A932D070(v13, &v7[5 * v10 + 4]);
  return v5(v12, 0);
}

void sub_1A9434E04()
{
  if (qword_1EB395420 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB3A7BF0;
  v3 = (*v0 + 408);
  v4 = *v3;
  (*v3)();
  v5 = sub_1A957C0C8();

  (v4)(v6);

  v85[5] = 15;
  v85[0] = (v4)(v7);
  v85[1] = v8;
  sub_1A937829C(&qword_1EB3872C8, &qword_1A958C808);
  sub_1A9436478();
  sub_1A93820F4();
  v9 = sub_1A957CC38();
  v11 = [v2 matchesInString:v5 options:0 range:{v9, v10}];

  sub_1A94364DC();
  v12 = sub_1A957C4C8();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_42:

    v69 = sub_1A957CA78();
    v1 = sub_1A9445750();
    v70 = sub_1A938983C();
    sub_1A94457AC(v69, v1, v70 & 1, 0xD000000000000080, 0x80000001A95C29E0, 0x6D6F436573726170, 0xEE002928646E616DLL, 0xD00000000000001ELL, 0x80000001A95C2AB0, MEMORY[0x1E69E7CC0]);
LABEL_43:

    return;
  }

  if (!sub_1A957CE48())
  {
    goto LABEL_42;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1AC585DE0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;
  v15 = sub_1A957C0C8();
  [v14 rangeWithName_];

  v4();
  sub_1A957CA08();
  v16 = v4;
  v18 = v17;

  v19 = sub_1A957C0C8();
  v84 = v14;
  [v14 rangeWithName_];

  v4();
  sub_1A957CA08();
  v21 = v20;
  v23 = v22;

  (v4)(v24);
  if (v18)
  {
    __break(1u);
    goto LABEL_79;
  }

  v25 = sub_1A957C3B8();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = MEMORY[0x1AC585090](v25, v27, v29, v31);
  v34 = v33;

  (v16)(v35);
  if (v23)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v36 = sub_1A957C3B8();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  MEMORY[0x1AC585090](v36, v38, v40, v42);

  if (v32 == 1702125938 && v34 == 0xE400000000000000)
  {

    v1 = v84;
LABEL_15:

    v43 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v43 setNumberStyle_];
    v44 = sub_1A957C0C8();

    v45 = [v43 numberFromString_];

    (*(*v0 + 176))(v45);
LABEL_16:
    while (1)
    {
      [v1 range];
      v47 = v46;
      v48 = (*(*v0 + 400))(v85);
      if (!__OFADD__(*v49, v47))
      {
        break;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      v68 = sub_1A957D3E8();

LABEL_48:
      (*(*v0 + 272))(v68 & 1);
    }

    *v49 += v47;
    v50 = v48(v85, 0);
    (*(*v0 + 464))(v50);
    goto LABEL_43;
  }

  v1 = v84;
  if (sub_1A957D3E8())
  {

    goto LABEL_15;
  }

  if (v32 == 1935762032 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v51 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v51 setNumberStyle_];
    v52 = sub_1A957C0C8();

    v53 = [v51 numberFromString_];

    (*(*v0 + 224))(v53);
    goto LABEL_16;
  }

  if (v32 == 1685024112 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v54 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v54 setNumberStyle_];
    v55 = sub_1A957C0C8();

    v56 = [v54 numberFromString_];

    (*(*v0 + 248))(v56);
    goto LABEL_16;
  }

  if (v32 == 1835822966 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v57 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v57 setNumberStyle_];
    v58 = sub_1A957C0C8();

    v59 = [v57 numberFromString_];

    (*(*v0 + 200))(v59);
    goto LABEL_16;
  }

  if ((v32 != 1668181107 || v34 != 0xE400000000000000) && (sub_1A957D3E8() & 1) == 0)
  {

    if (v32 == 1918986339 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
    {

      v65 = sub_1A957C1A8();
      v67 = v66;

      if (v65 == 1819440236 && v67 == 0xE400000000000000)
      {

        v68 = 1;
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v32 == 1919053166 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
    {

      v71 = sub_1A957C1A8();
      v73 = v72;

      if (v71 == 1819440236 && v73 == 0xE400000000000000)
      {

        v74 = 1;
      }

      else
      {
        v74 = sub_1A957D3E8();
      }

      (*(*v0 + 296))(v74 & 1);
      goto LABEL_57;
    }

    if (v32 == 1954051171 && v34 == 0xE400000000000000)
    {
    }

    else
    {
      v75 = sub_1A957D3E8();

      if ((v75 & 1) == 0)
      {

        v77 = sub_1A957CA88();
        v78 = 0x80000001A95C2A70;
        v79 = sub_1A9445750();
        v80 = sub_1A938983C();
        v81 = 0xD00000000000001BLL;
        goto LABEL_70;
      }
    }

    v21 = sub_1A957C1A8();
    v16 = v76;

    if (v21 == 1886090103 && v16 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0 || v21 == 1886090100 && v16 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
    {

      (*(*v0 + 344))(1);
LABEL_57:
      v1 = v84;
      goto LABEL_16;
    }

    if (v21 == 1685221239 && v16 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0 || v21 == 1954047348 && v16 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
    {

      (*(*v0 + 344))(2);
      goto LABEL_57;
    }

LABEL_80:
    if (v21 == 1836216174 && v16 == 0xE400000000000000)
    {

LABEL_84:
      (*(*v0 + 440))(v82);
      (*(*v0 + 344))(0);
      goto LABEL_57;
    }

    v83 = sub_1A957D3E8();

    if (v83)
    {
      goto LABEL_84;
    }

    v77 = sub_1A957CA88();
    v78 = 0x80000001A95C2A90;
    v79 = sub_1A9445750();
    v80 = sub_1A938983C();
    v81 = 0xD000000000000015;
LABEL_70:
    sub_1A94457AC(v77, v79, v80 & 1, 0xD000000000000080, 0x80000001A95C29E0, 0x6D6F436573726170, 0xEE002928646E616DLL, v81, v78, MEMORY[0x1E69E7CC0]);

    goto LABEL_57;
  }

  v60 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v60 setNumberStyle_];
  v61 = sub_1A957C0C8();
  v62 = [v60 numberFromString_];

  if (v62)
  {

    [v62 floatValue];
    v64 = v63;

    v85[3] = &type metadata for TTSMarkup.Pause;
    v85[4] = &protocol witness table for TTSMarkup.Pause;
    v85[0] = swift_allocObject();
    TTSMarkup.Pause.init(seconds:)(v85[0] + 16, v64 / 1000.0);
    (*(*v0 + 432))(v85);
    sub_1A9378138(v85);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1A9435D00()
{
  v1 = (*(*v0 + 424))();
  v3 = v2;
  result = (*(*v0 + 288))();
  if (result)
  {
    v5 = (*v0 + 416);
    v6 = *v5;
    result = (*v5)();
    if (v7)
    {

      result = (v6)(v8);
      v1 = result;
      v3 = v9;
    }
  }

  if (!v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = TTSMarkup.SpeechText.init(_:)(v1, v3, v26);
  v11 = v26[0];
  v12 = v26[1];
  v13 = v26[2];
  v14 = v27;
  v15 = *(*v0 + 168);
  v16 = v15(v10);
  if (v16)
  {

    result = (v15)();
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v17 = result;
    [result floatValue];
  }

  v18 = *(*v0 + 216);
  v19 = v18();
  if (!v19)
  {
LABEL_11:
    v27 = &type metadata for TTSMarkup.SpeechText;
    v28 = &protocol witness table for TTSMarkup.SpeechText;
    v21 = swift_allocObject();
    v26[0] = v21;
    v21[2] = v11;
    v21[3] = v12;
    v21[4] = v13;
    v21[5] = v14;
    v22 = *(*v0 + 432);

    v22(v26);
    sub_1A9378138(v26);

    v23 = sub_1A957C238();

    result = (*(*v0 + 400))(v26);
    if (!__OFADD__(*v24, v23))
    {
      *v24 += v23;
      v25 = (result)(v26, 0);
      return (*(*v0 + 464))(v25);
    }

    __break(1u);
    goto LABEL_14;
  }

  result = v18();
  if (result)
  {
    v20 = result;
    [result floatValue];

    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A943602C()
{
  v1 = (*v0 + 408);
  v2 = *v1;
  v3 = (*v1)();
  v5 = v4;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    (v2)(v6);
    if (qword_1EB395420 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB3A7BF0;
    v9 = sub_1A957C0C8();
    sub_1A937829C(&qword_1EB3872C8, &qword_1A958C808);
    sub_1A9436478();
    sub_1A93820F4();
    v10 = sub_1A957CC38();
    v12 = [v8 matchesInString:v9 options:0 range:{v10, v11}];

    sub_1A94364DC();
    v13 = sub_1A957C4C8();

    if (v13 >> 62)
    {
      v14 = sub_1A957CE48();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = *v0;
    if (v14 < 1)
    {
      return (*(v16 + 456))(v15);
    }

    else
    {
      return (*(v16 + 448))(v15);
    }
  }

  else
  {
    v18 = *(*v0 + 440);

    return v18();
  }
}

double PTParser.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 72) = MEMORY[0x1E69E7CC0];
  *(v4 + 80) = 0;
  *(v4 + 88) = v6;
  *(v4 + 96) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return result;
}

uint64_t PTParser.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = 0;
  *(v2 + 88) = v3;
  *(v2 + 96) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

id *PTParser.deinit()
{

  return v0;
}

uint64_t PTParser.__deallocating_deinit()
{
  PTParser.deinit();

  return swift_deallocClassInstance();
}

id sub_1A943639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1A957C0C8();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1A957AEF8();

    swift_willThrow();
  }

  return v6;
}