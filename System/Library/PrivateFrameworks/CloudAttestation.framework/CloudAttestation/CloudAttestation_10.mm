__SecKey *sub_22FF7D1F8()
{
  v72 = v0;
  v1 = *(v0 + 208);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    if (v5 == 3 && v3 == 1 && v4 == 0)
    {

      v25 = *(v0 + 96);
      v26 = *(v0 + 72);
      v27 = swift_task_alloc();
      v28 = *(v0 + 184);
      v29 = *(v0 + 168);
      *(v27 + 16) = v29;
      *(v27 + 32) = v26;
      *(v27 + 40) = v25;
      *(v27 + 48) = MEMORY[0x277D84F90];
      *(v27 + 72) = v28;
      *(v27 + 56) = v29;
      sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
      sub_22FFB11B8();
      v30 = *(v0 + 160);
      v32 = *(v0 + 48);
      v31 = *(v0 + 56);

      sub_22FF9064C(v30, v32, type metadata accessor for Proto_AttestationBundle);
      result = SecKeyCopyPublicKey(v31);
      if (result)
      {
        v33 = result;
        result = SecKeyCopyExternalRepresentation(result, 0);
        if (result)
        {
          v34 = result;
          if (qword_27DAF1498 != -1)
          {
            swift_once();
          }

          v35 = sub_22FFB12F8();
          __swift_project_value_buffer(v35, qword_27DAF38A0);
          v36 = v34;
          v37 = sub_22FFB12D8();
          v38 = sub_22FFB1848();

          v70 = v38;
          v39 = os_log_type_enabled(v37, v38);
          v41 = *(v0 + 184);
          v40 = *(v0 + 192);
          v43 = *(v0 + 168);
          v42 = *(v0 + 176);
          v44 = *(v0 + 160);
          if (v39)
          {
            v61 = *(v0 + 136);
            v58 = *(v0 + 144);
            v59 = *(v0 + 128);
            v68 = *(v0 + 160);
            v69 = *(v0 + 168);
            v67 = v36;
            v45 = *(v0 + 112);
            v46 = *(v0 + 120);
            v47 = *(v0 + 104);
            log = v37;
            buf = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v71 = v63;
            *buf = 136446210;
            v65 = v42;
            v66 = v41;
            v48 = sub_22FFB07E8();
            v50 = v49;
            sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
            v51 = v33;
            v64 = v40;
            sub_22FFB1388();
            sub_22FEA5608(v48, v50);
            sub_22FF9EA78(v48, v50, v46);
            sub_22FEA55AC(v48, v50);
            sub_22FFB1368();
            sub_22FEA55AC(v48, v50);
            (*(v45 + 8))(v46, v47);
            sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
            v52 = sub_22FFB1BA8();
            v54 = v53;
            (*(v61 + 8))(v58, v59);
            v55 = sub_22FF9E448(v52, v54, &v71);

            *(buf + 4) = v55;
            _os_log_impl(&dword_22FE99000, log, v70, "Successfully created attestation for key: %{public}s", buf, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            MEMORY[0x23190EFF0](v63, -1, -1);
            MEMORY[0x23190EFF0](buf, -1, -1);

            sub_22FF906D4(v68, type metadata accessor for Proto_AttestationBundle);
            sub_22FEA55AC(v69, v65);
            v56 = v66;
            v57 = v64;
          }

          else
          {

            sub_22FF906D4(v44, type metadata accessor for Proto_AttestationBundle);
            sub_22FEA55AC(v43, v42);
            v56 = v41;
            v57 = v40;
          }

          sub_22FEA55AC(v56, v57);

          v23 = *(v0 + 8);
          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    sub_22FF905E4(v3, v4, v5);
    v12 = v11;
    v13 = v10;
  }

  else
  {
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
  }

  sub_22FEA55AC(v12, v13);
  sub_22FEA55AC(v8, v9);

  v14 = *(v0 + 208);
  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v15 = sub_22FFB12F8();
  __swift_project_value_buffer(v15, qword_27DAF38A0);
  v16 = v14;
  v17 = sub_22FFB12D8();
  v18 = sub_22FFB1838();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v14;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_22FE99000, v17, v18, "attestation creation failed: %@", v19, 0xCu);
    sub_22FEAEA34(v20, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v20, -1, -1);
    MEMORY[0x23190EFF0](v19, -1, -1);
  }

  swift_willThrow();

  v23 = *(v0 + 8);
LABEL_16:

  return v23();
}

uint64_t Attestor.defaultAttest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[23] = a8;
  v9[24] = v8;
  v9[21] = a6;
  v9[22] = a7;
  v9[19] = a4;
  v9[20] = a5;
  v9[17] = a2;
  v9[18] = a3;
  v9[16] = a1;
  v10 = sub_22FFB13C8();
  v9[25] = v10;
  v9[26] = *(v10 - 8);
  v9[27] = swift_task_alloc();
  v11 = sub_22FFB1398();
  v9[28] = v11;
  v9[29] = *(v11 - 8);
  v9[30] = swift_task_alloc();
  v9[31] = type metadata accessor for Proto_AttestationBundle(0);
  v9[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF7DA50, 0, 0);
}

uint64_t sub_22FF7DA50()
{
  v17 = v0;
  v1 = *(v0 + 168);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 160);
    sub_22FEA5608(v2, *(v0 + 168));
    v3 = sub_22FFB07B8();
    SecKeySetParameter();

    sub_22FEA56EC(v2, v1);
  }

  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  (*(*(v0 + 184) + 24))(*(v0 + 176));
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  (*(v7 + 8))(v16, v5, v4, v6, v7);
  v8 = *(v0 + 184);
  v9 = *(v0 + 176);
  v10 = v16[1];
  *(v0 + 264) = v16[0];
  *(v0 + 280) = v10;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v8 + 32))(v9, v8);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v11);
  v15 = (*(v12 + 16) + **(v12 + 16));
  v13 = swift_task_alloc();
  *(v0 + 296) = v13;
  *v13 = v0;
  v13[1] = sub_22FF7DE20;

  return v15(v11, v12);
}

uint64_t sub_22FF7DE20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = sub_22FF7E590;
  }

  else
  {
    *(v4 + 312) = a1;
    v5 = sub_22FF7DF48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

__SecKey *sub_22FF7DF48()
{
  v65 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = swift_task_alloc();
  v7 = *(v0 + 264);
  v6 = *(v0 + 280);
  *(v5 + 16) = *(v0 + 176);
  *(v5 + 32) = v7;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  *(v5 + 64) = v2;
  *(v5 + 72) = v7;
  *(v5 + 88) = v6;
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  sub_22FFB11B8();
  if (!v1)
  {
    v22 = *(v0 + 256);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);

    sub_22FF9064C(v22, v24, type metadata accessor for Proto_AttestationBundle);
    result = SecKeyCopyPublicKey(v23);
    if (result)
    {
      v26 = result;
      result = SecKeyCopyExternalRepresentation(result, 0);
      if (result)
      {
        v27 = result;
        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v28 = sub_22FFB12F8();
        __swift_project_value_buffer(v28, qword_27DAF38A0);
        v29 = v27;
        v30 = sub_22FFB12D8();
        v31 = sub_22FFB1848();

        v63 = v31;
        v32 = os_log_type_enabled(v30, v31);
        v34 = *(v0 + 280);
        v33 = *(v0 + 288);
        v36 = *(v0 + 264);
        v35 = *(v0 + 272);
        v37 = *(v0 + 256);
        if (v32)
        {
          v54 = *(v0 + 232);
          v51 = *(v0 + 240);
          v52 = *(v0 + 224);
          v61 = *(v0 + 256);
          v62 = *(v0 + 264);
          v60 = v29;
          v38 = *(v0 + 208);
          v39 = *(v0 + 216);
          v40 = *(v0 + 200);
          log = v30;
          buf = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v64 = v56;
          *buf = 136446210;
          v58 = v35;
          v59 = v34;
          v41 = sub_22FFB07E8();
          v43 = v42;
          sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          v44 = v26;
          v57 = v33;
          sub_22FFB1388();
          sub_22FEA5608(v41, v43);
          sub_22FF9EA78(v41, v43, v39);
          sub_22FEA55AC(v41, v43);
          sub_22FFB1368();
          sub_22FEA55AC(v41, v43);
          (*(v38 + 8))(v39, v40);
          sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
          v45 = sub_22FFB1BA8();
          v47 = v46;
          (*(v54 + 8))(v51, v52);
          v48 = sub_22FF9E448(v45, v47, &v64);

          *(buf + 4) = v48;
          _os_log_impl(&dword_22FE99000, log, v63, "Successfully created attestation for key: %{public}s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v56);
          MEMORY[0x23190EFF0](v56, -1, -1);
          MEMORY[0x23190EFF0](buf, -1, -1);

          sub_22FF906D4(v61, type metadata accessor for Proto_AttestationBundle);
          sub_22FEA55AC(v62, v58);
          v49 = v59;
          v50 = v57;
        }

        else
        {

          sub_22FF906D4(v37, type metadata accessor for Proto_AttestationBundle);
          sub_22FEA55AC(v36, v35);
          v49 = v34;
          v50 = v33;
        }

        sub_22FEA55AC(v49, v50);

        v21 = *(v0 + 8);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v8 = v1;
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);

  sub_22FEA55AC(v12, v11);
  sub_22FEA55AC(v10, v9);

  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v13 = sub_22FFB12F8();
  __swift_project_value_buffer(v13, qword_27DAF38A0);
  v14 = v8;
  v15 = sub_22FFB12D8();
  v16 = sub_22FFB1838();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_22FE99000, v15, v16, "attestation creation failed: %@", v17, 0xCu);
    sub_22FEAEA34(v18, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v18, -1, -1);
    MEMORY[0x23190EFF0](v17, -1, -1);
  }

  swift_willThrow();

  v21 = *(v0 + 8);
LABEL_15:

  return v21();
}

__SecKey *sub_22FF7E590()
{
  v72 = v0;
  v1 = *(v0 + 304);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    if (v5 == 3 && v3 == 1 && v4 == 0)
    {

      v25 = *(v0 + 192);
      v26 = *(v0 + 152);
      v27 = swift_task_alloc();
      v29 = *(v0 + 264);
      v28 = *(v0 + 280);
      *(v27 + 16) = *(v0 + 176);
      *(v27 + 32) = v29;
      *(v27 + 48) = v26;
      *(v27 + 56) = v25;
      *(v27 + 64) = MEMORY[0x277D84F90];
      *(v27 + 72) = v29;
      *(v27 + 88) = v28;
      sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
      sub_22FFB11B8();
      v30 = *(v0 + 256);
      v32 = *(v0 + 128);
      v31 = *(v0 + 136);

      sub_22FF9064C(v30, v32, type metadata accessor for Proto_AttestationBundle);
      result = SecKeyCopyPublicKey(v31);
      if (result)
      {
        v33 = result;
        result = SecKeyCopyExternalRepresentation(result, 0);
        if (result)
        {
          v34 = result;
          if (qword_27DAF1498 != -1)
          {
            swift_once();
          }

          v35 = sub_22FFB12F8();
          __swift_project_value_buffer(v35, qword_27DAF38A0);
          v36 = v34;
          v37 = sub_22FFB12D8();
          v38 = sub_22FFB1848();

          v70 = v38;
          v39 = os_log_type_enabled(v37, v38);
          v41 = *(v0 + 280);
          v40 = *(v0 + 288);
          v43 = *(v0 + 264);
          v42 = *(v0 + 272);
          v44 = *(v0 + 256);
          if (v39)
          {
            v61 = *(v0 + 232);
            v58 = *(v0 + 240);
            v59 = *(v0 + 224);
            v68 = *(v0 + 256);
            v69 = *(v0 + 264);
            v67 = v36;
            v45 = *(v0 + 208);
            v46 = *(v0 + 216);
            v47 = *(v0 + 200);
            log = v37;
            buf = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v71 = v63;
            *buf = 136446210;
            v65 = v42;
            v66 = v41;
            v48 = sub_22FFB07E8();
            v50 = v49;
            sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
            v51 = v33;
            v64 = v40;
            sub_22FFB1388();
            sub_22FEA5608(v48, v50);
            sub_22FF9EA78(v48, v50, v46);
            sub_22FEA55AC(v48, v50);
            sub_22FFB1368();
            sub_22FEA55AC(v48, v50);
            (*(v45 + 8))(v46, v47);
            sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
            v52 = sub_22FFB1BA8();
            v54 = v53;
            (*(v61 + 8))(v58, v59);
            v55 = sub_22FF9E448(v52, v54, &v71);

            *(buf + 4) = v55;
            _os_log_impl(&dword_22FE99000, log, v70, "Successfully created attestation for key: %{public}s", buf, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            MEMORY[0x23190EFF0](v63, -1, -1);
            MEMORY[0x23190EFF0](buf, -1, -1);

            sub_22FF906D4(v68, type metadata accessor for Proto_AttestationBundle);
            sub_22FEA55AC(v69, v65);
            v56 = v66;
            v57 = v64;
          }

          else
          {

            sub_22FF906D4(v44, type metadata accessor for Proto_AttestationBundle);
            sub_22FEA55AC(v43, v42);
            v56 = v41;
            v57 = v40;
          }

          sub_22FEA55AC(v56, v57);

          v23 = *(v0 + 8);
          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    sub_22FF905E4(v3, v4, v5);
    v12 = v11;
    v13 = v10;
  }

  else
  {
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v12 = *(v0 + 264);
    v13 = *(v0 + 272);
  }

  sub_22FEA55AC(v12, v13);
  sub_22FEA55AC(v8, v9);

  v14 = *(v0 + 304);
  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v15 = sub_22FFB12F8();
  __swift_project_value_buffer(v15, qword_27DAF38A0);
  v16 = v14;
  v17 = sub_22FFB12D8();
  v18 = sub_22FFB1838();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v14;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_22FE99000, v17, v18, "attestation creation failed: %@", v19, 0xCu);
    sub_22FEAEA34(v20, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v20, -1, -1);
    MEMORY[0x23190EFF0](v19, -1, -1);
  }

  swift_willThrow();

  v23 = *(v0 + 8);
LABEL_16:

  return v23();
}

uint64_t sub_22FF7EC9C(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(char *, uint64_t), uint64_t a9, uint64_t a10)
{
  v338 = a8;
  v327 = a7;
  v350 = a6;
  v351 = a5;
  v347 = a4;
  v346 = a3;
  v345 = a2;
  v341 = type metadata accessor for Proto_SealedHash(0);
  v336 = *(v341 - 8);
  v11 = MEMORY[0x28223BE20](v341);
  v323 = &v314 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v321 = &v314 - v14;
  MEMORY[0x28223BE20](v13);
  v329 = &v314 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v325 = &v314 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v322 = &v314 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v334 = &v314 - v22;
  MEMORY[0x28223BE20](v21);
  v331 = &v314 - v23;
  v340 = type metadata accessor for Proto_SealedHashLedger(0);
  *&v326 = *(v340 - 8);
  v24 = MEMORY[0x28223BE20](v340);
  v333 = (&v314 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v332 = (&v314 - v27);
  MEMORY[0x28223BE20](v26);
  v339 = (&v314 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v320 = &v314 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v330 = &v314 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v319 = &v314 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v328 = &v314 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v324 = &v314 - v39;
  MEMORY[0x28223BE20](v38);
  v335 = &v314 - v40;
  v354 = sub_22FFB0958();
  v348 = *(v354 - 8);
  v41 = MEMORY[0x28223BE20](v354);
  v337 = &v314 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v352 = &v314 - v44;
  MEMORY[0x28223BE20](v43);
  v353 = &v314 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v46 - 8);
  v344 = &v314 - v47;
  v342 = sub_22FFB0908();
  v48 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v50 = &v314 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = sub_22FFB0EE8();
  v51 = *(v343 - 8);
  MEMORY[0x28223BE20](v343);
  v53 = &v314 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(a1 + v54);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v56 = sub_22FF10520(v56);
    *(a1 + v54) = v56;
  }

  swift_beginAccess();
  v57 = v56[2];
  v58 = v56[3];
  v59 = v345;
  v60 = v346;
  v56[2] = v345;
  v56[3] = v60;
  sub_22FEA5608(v59, v60);
  sub_22FEA55AC(v57, v58);
  (*(v48 + 16))(v50, v347, v342);
  sub_22FFB0EC8();
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(a1 + v54);
  v347 = a1;
  if ((v61 & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v62 = sub_22FF10520(v62);
    *(a1 + v54) = v62;
  }

  v63 = v351;
  v64 = v352;
  v65 = v344;
  v66 = v343;
  (*(v51 + 32))(v344, v53, v343);
  (*(v51 + 56))(v65, 0, 1, v66);
  v67 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v65, v62 + v67, &qword_27DAF1520, &qword_22FFB3A30);
  swift_endAccess();
  v68 = *(v63 + 64);
  v69 = *(v63 + 72);
  __swift_project_boxed_opaque_existential_1((v63 + 40), v68);
  v70 = v349;
  v71 = (*(v69 + 8))(v68, v69);
  v73 = v70;
  if (v70)
  {
    if (qword_27DAF1498 != -1)
    {
LABEL_160:
      swift_once();
    }

    v74 = sub_22FFB12F8();
    __swift_project_value_buffer(v74, qword_27DAF38A0);
    v75 = v73;
    v76 = sub_22FFB12D8();
    v77 = sub_22FFB1838();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v62;
      v80 = v64;
      v81 = v63;
      v82 = v54;
      v83 = swift_slowAlloc();
      *v78 = 138543362;
      v84 = v73;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 4) = v85;
      *v83 = v85;
      _os_log_impl(&dword_22FE99000, v76, v77, "Unable to fetch ap ticket: %{public}@", v78, 0xCu);
      sub_22FEAEA34(v83, &qword_27DAF1680, &unk_22FFB4B10);
      v86 = v83;
      v54 = v82;
      v63 = v81;
      v64 = v80;
      v62 = v79;
      MEMORY[0x23190EFF0](v86, -1, -1);
      MEMORY[0x23190EFF0](v78, -1, -1);
    }

    v87 = v350;
    if (*(v63 + 97) == 1)
    {
      return swift_willThrow();
    }

    if (!v87[2])
    {
      goto LABEL_11;
    }

LABEL_21:
    v99 = v347;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v99 + v54);
    if ((v100 & 1) == 0)
    {
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v62 = sub_22FF10520(v62);
      *(v99 + v54) = v62;
    }

    v101 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
    swift_beginAccess();
    *(v62 + v101) = v87;

    goto LABEL_24;
  }

  v93 = v72;
  v94 = v71;
  v95 = v347;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v95 + v54);
  if ((v96 & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v62 = sub_22FF10520(v62);
    *(v95 + v54) = v62;
  }

  swift_beginAccess();
  v97 = v62[4];
  v98 = v62[5];
  v62[4] = v94;
  v62[5] = v93;
  sub_22FEA55AC(v97, v98);
  v87 = v350;
  if (v350[2])
  {
    goto LABEL_21;
  }

LABEL_11:
  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v88 = sub_22FFB12F8();
  __swift_project_value_buffer(v88, qword_27DAF38A0);
  v89 = sub_22FFB12D8();
  v90 = sub_22FFB1838();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_22FE99000, v89, v90, "Empty provisioning certificate chain", v91, 2u);
    MEMORY[0x23190EFF0](v91, -1, -1);
  }

  if (*(v63 + 97) == 1)
  {
    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

LABEL_24:
  v102 = *(v63 + 64);
  v103 = *(v63 + 72);
  __swift_project_boxed_opaque_existential_1((v63 + 40), v102);
  v73 = 0;
  v359 = (*(v103 + 24))(v102, v103);
  if (!*(v359 + 16))
  {
  }

  v357[0] = v327;
  v357[1] = v338;
  v357[2] = a9;
  v357[3] = a10;
  sub_22FF82DC8(v357, &v359);
  if (*(v63 + 104))
  {
    v104 = *(v63 + 104);
  }

  else
  {

    v104 = sub_22FEBAD18(v105);
  }

  v357[0] = sub_22FF8E4E0(v104);
  sub_22FF8E600(v357);

  v107 = v357[0];
  v344 = *(v357[0] + 16);
  if (!v344)
  {
LABEL_153:
  }

  v108 = 0;
  v343 = v357[0] + ((*(v348 + 80) + 32) & ~*(v348 + 80));
  v345 = v348 + 16;
  v63 = v348 + 8;
  v318 = (v336 + 56);
  v317 = (v326 + 48);
  v316 = (v336 + 48);
  v314 = (v326 + 56);
  *&v106 = 136446210;
  v326 = v106;
  v327 = v348 + 8;
  v315 = v54;
  v342 = v357[0];
  while (1)
  {
    if (v108 >= *(v107 + 16))
    {
      __break(1u);
      goto LABEL_160;
    }

    v350 = v62;
    v109 = *(v348 + 72);
    v349 = v108;
    v110 = *(v348 + 16);
    v111 = v353;
    v112 = v354;
    (v110)(v353, v343 + v109 * v108, v354);
    (v110)(v64, v111, v112);
    if (qword_281490280 != -1)
    {
      swift_once();
    }

    v113 = __swift_project_value_buffer(v354, qword_281491418);
    sub_22FF7BE88(&qword_281491318, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    if (sub_22FFB1478())
    {
      break;
    }

    v346 = v73;
    if (qword_28148FA40 != -1)
    {
      swift_once();
    }

    v132 = v354;
    v133 = __swift_project_value_buffer(v354, qword_2814913A0);
    v134 = sub_22FFB1478();
    v135 = *v63;
    (*v63)(v64, v132);
    v136 = v359;
    v137 = *(v359 + 16);
    v338 = v135;
    if (v134)
    {
      if (!v137 || (v138 = sub_22FFA6214(v133), (v139 & 1) == 0))
      {
        v184 = v64;
        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v185 = sub_22FFB12F8();
        __swift_project_value_buffer(v185, qword_27DAF38A0);
        v186 = sub_22FFB12D8();
        v187 = sub_22FFB1838();
        if (os_log_type_enabled(v186, v187))
        {
          v54 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          v355 = v188;
          *v54 = v326;
          sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v189 = sub_22FFB1BA8();
          v191 = sub_22FF9E448(v189, v190, &v355);

          *(v54 + 4) = v191;
          v184 = v352;
          v192 = v351;
          _os_log_impl(&dword_22FE99000, v186, v187, "Failed to read secure config from %{public}s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v188);
          MEMORY[0x23190EFF0](v188, -1, -1);
          MEMORY[0x23190EFF0](v54, -1, -1);
        }

        else
        {

          v192 = v351;
        }

        v205 = v338;
        if (*(v192 + 97) == 1)
        {

          type metadata accessor for CloudAttestationError(0);
          sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
          swift_allocError();
          v311 = v310;
          v312 = v133;
          v313 = v354;
          (v110)(v311, v312, v354);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v205(v353, v313);
        }

        v206 = v327;
        v338(v353, v354);
        v73 = v346;
        v64 = v184;
        v63 = v206;
        goto LABEL_32;
      }

      v140 = *(*(v136 + 56) + 8 * v138);
      if (*(v140 + 16))
      {

        v141 = sub_22FFB0928();
        v143 = v142;
        MEMORY[0x28223BE20](v141);
        *(&v314 - 2) = v140;
        sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
        v144 = v328;
        v145 = v341;
        v146 = v346;
        sub_22FFB11B8();
        if (v146)
        {
          v338(v353, v354);
        }

        v147 = *v318;
        (*v318)(v144, 0, 1, v145);
        v148 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
        v149 = v350;
        swift_beginAccess();
        v150 = v149 + v148;
        v151 = v322;
        sub_22FEBF3A4(v150, v322, &qword_27DAF26E8, &qword_22FFB7C60);
        v73 = v317;
        v152 = *v317;
        v153 = v340;
        if ((*v317)(v151, 1, v340) == 1)
        {
          v154 = sub_22FFA6E68(MEMORY[0x277D84F90]);
          *v332 = v154;
          _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
          if (v152(v151, 1, v153) != 1)
          {
            sub_22FEAEA34(v151, &qword_27DAF26E8, &qword_22FFB7C60);
          }
        }

        else
        {
          sub_22FF90754(v151, v332, type metadata accessor for Proto_SealedHashLedger);
        }

        v253 = v328;
        if ((*v316)(v328, 1, v341) == 1)
        {
          sub_22FEAEA34(v253, &qword_27DAF38F0, &unk_22FFC0170);
          v254 = v332;
          v255 = sub_22FFA619C(v141, v143);
          v257 = v256;

          if (v257)
          {
            v258 = swift_isUniquelyReferenced_nonNull_native();
            v259 = *v254;
            v355 = *v254;
            v54 = v347;
            v64 = v352;
            if (!v258)
            {
              sub_22FF8D3FC();
              v259 = v355;
            }

            v260 = v319;
            sub_22FF90754(*(v259 + 56) + *(v336 + 72) * v255, v319, type metadata accessor for Proto_SealedHash);
            sub_22FF8C2A8(v255, v259);
            v261 = 0;
            *v254 = v259;
            v262 = v341;
          }

          else
          {
            v261 = 1;
            v54 = v347;
            v262 = v341;
            v260 = v319;
            v64 = v352;
          }

          v147(v260, v261, 1, v262);
          sub_22FEAEA34(v260, &qword_27DAF38F0, &unk_22FFC0170);
          v73 = 0;
          v63 = v327;
          goto LABEL_148;
        }

        sub_22FF90754(v253, v321, type metadata accessor for Proto_SealedHash);
        v263 = v332;
        v264 = swift_isUniquelyReferenced_nonNull_native();
        v265 = *v263;
        v355 = v265;
        v266 = sub_22FFA619C(v141, v143);
        v268 = *(v265 + 16);
        v269 = (v267 & 1) == 0;
        v227 = __OFADD__(v268, v269);
        v270 = v268 + v269;
        if (v227)
        {
          goto LABEL_164;
        }

        v271 = v267;
        v73 = 0;
        if (*(v265 + 24) >= v270)
        {
          v63 = v327;
          if (v264)
          {
            goto LABEL_126;
          }

          v293 = v266;
          sub_22FF8D3FC();
          v266 = v293;
          if ((v271 & 1) == 0)
          {
            goto LABEL_145;
          }

LABEL_127:
          v275 = v266;

          v276 = v355;
          sub_22FF91AF4(v321, v355[7] + *(v336 + 72) * v275, type metadata accessor for Proto_SealedHash);
          *v332 = v276;
        }

        else
        {
          sub_22FF8A5C8(v270, v264);
          v266 = sub_22FFA619C(v141, v143);
          v63 = v327;
          if ((v271 & 1) != (v272 & 1))
          {
            goto LABEL_167;
          }

LABEL_126:
          if (v271)
          {
            goto LABEL_127;
          }

LABEL_145:
          v294 = v355;
          v355[(v266 >> 6) + 8] |= 1 << v266;
          v295 = (v294[6] + 16 * v266);
          *v295 = v141;
          v295[1] = v143;
          sub_22FF90754(v321, v294[7] + *(v336 + 72) * v266, type metadata accessor for Proto_SealedHash);
          v296 = v294[2];
          v227 = __OFADD__(v296, 1);
          v297 = v296 + 1;
          if (v227)
          {
            goto LABEL_166;
          }

          v294[2] = v297;
          *v332 = v294;
        }

        v54 = v347;
        v64 = v352;
LABEL_148:
        v298 = v315;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v338(v353, v354);
          v62 = *(v54 + v298);
        }

        else
        {
          type metadata accessor for Proto_AttestationBundle._StorageClass(0);
          swift_allocObject();

          v62 = sub_22FF10520(v299);
          v338(v353, v354);

          *(v54 + v298) = v62;
        }

        v284 = v340;
        v285 = &v355;
        goto LABEL_152;
      }
    }

    else
    {
      v166 = v337;
      if (!v137 || (v167 = sub_22FFA6214(v353), (v168 & 1) == 0))
      {
        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v193 = sub_22FFB12F8();
        __swift_project_value_buffer(v193, qword_27DAF38A0);
        (v110)(v166, v353, v354);
        v194 = sub_22FFB12D8();
        v54 = sub_22FFB1838();
        if (os_log_type_enabled(v194, v54))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v355 = v196;
          *v195 = v326;
          sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v197 = sub_22FFB1BA8();
          v199 = v198;
          v200 = v166;
          v201 = v338;
          v338(v200, v354);
          v202 = sub_22FF9E448(v197, v199, &v355);

          *(v195 + 4) = v202;
          _os_log_impl(&dword_22FE99000, v194, v54, "Failed to read seled hashes from %{public}s", v195, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v196);
          MEMORY[0x23190EFF0](v196, -1, -1);
          v203 = v195;
          v63 = v327;
          v204 = v351;
          v64 = v352;
          MEMORY[0x23190EFF0](v203, -1, -1);
        }

        else
        {

          v207 = v166;
          v201 = v338;
          v338(v207, v354);
          v204 = v351;
        }

        if (*(v204 + 97) == 1)
        {

          type metadata accessor for CloudAttestationError(0);
          sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
          swift_allocError();
          v307 = v353;
          v308 = v354;
          (v110)(v309, v353, v354);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v201(v307, v308);
        }

        v201(v353, v354);
        goto LABEL_31;
      }

      v169 = *(*(v136 + 56) + 8 * v167);
      if (*(v169 + 16))
      {

        v170 = sub_22FFB0928();
        v172 = v171;
        MEMORY[0x28223BE20](v170);
        *(&v314 - 2) = v169;
        sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
        v173 = v330;
        v174 = v341;
        v175 = v346;
        sub_22FFB11B8();
        v73 = v175;

        v176 = *v318;
        (*v318)(v173, 0, 1, v174);
        v177 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
        v178 = v350;
        swift_beginAccess();
        v179 = v178 + v177;
        v180 = v325;
        sub_22FEBF3A4(v179, v325, &qword_27DAF26E8, &qword_22FFB7C60);
        v181 = *v317;
        v182 = v340;
        if ((*v317)(v180, 1, v340) == 1)
        {
          v183 = sub_22FFA6E68(MEMORY[0x277D84F90]);
          *v333 = v183;
          _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
          if (v181(v180, 1, v182) != 1)
          {
            sub_22FEAEA34(v180, &qword_27DAF26E8, &qword_22FFB7C60);
          }
        }

        else
        {
          sub_22FF90754(v180, v333, type metadata accessor for Proto_SealedHashLedger);
        }

        v231 = v330;
        if ((*v316)(v330, 1, v341) == 1)
        {
          sub_22FEAEA34(v231, &qword_27DAF38F0, &unk_22FFC0170);
          v232 = v333;
          v233 = sub_22FFA619C(v170, v172);
          v235 = v234;

          if (v235)
          {
            v236 = swift_isUniquelyReferenced_nonNull_native();
            v237 = *v232;
            v355 = *v232;
            v54 = v347;
            v64 = v352;
            if (!v236)
            {
              sub_22FF8D3FC();
              v237 = v355;
            }

            v238 = v320;
            sub_22FF90754(*(v237 + 56) + *(v336 + 72) * v233, v320, type metadata accessor for Proto_SealedHash);
            sub_22FF8C2A8(v233, v237);
            v239 = 0;
            *v232 = v237;
            v240 = v341;
          }

          else
          {
            v239 = 1;
            v54 = v347;
            v240 = v341;
            v238 = v320;
            v64 = v352;
          }

          v176(v238, v239, 1, v240);
          sub_22FEAEA34(v238, &qword_27DAF38F0, &unk_22FFC0170);
          v73 = v175;
          v63 = v327;
LABEL_140:
          v291 = v315;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v338(v353, v354);
            v62 = *(v54 + v291);
          }

          else
          {
            type metadata accessor for Proto_AttestationBundle._StorageClass(0);
            swift_allocObject();

            v62 = sub_22FF10520(v292);
            v338(v353, v354);

            *(v54 + v291) = v62;
          }

          v284 = v340;
          v285 = &v356;
LABEL_152:
          v300 = *(v285 - 32);
          v301 = v334;
          sub_22FF9064C(v300, v334, type metadata accessor for Proto_SealedHashLedger);
          (*v314)(v301, 0, 1, v284);
          v302 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
          swift_beginAccess();
          sub_22FEFF0DC(v301, v62 + v302, &qword_27DAF26E8, &qword_22FFB7C60);
          swift_endAccess();
          sub_22FF906D4(v300, type metadata accessor for Proto_SealedHashLedger);
          goto LABEL_33;
        }

        sub_22FF90754(v231, v323, type metadata accessor for Proto_SealedHash);
        v241 = v333;
        v242 = swift_isUniquelyReferenced_nonNull_native();
        v243 = *v241;
        v355 = v243;
        v244 = sub_22FFA619C(v170, v172);
        v246 = *(v243 + 16);
        v247 = (v245 & 1) == 0;
        v227 = __OFADD__(v246, v247);
        v248 = v246 + v247;
        if (v227)
        {
          goto LABEL_162;
        }

        v249 = v245;
        if (*(v243 + 24) >= v248)
        {
          if (v242)
          {
            goto LABEL_121;
          }

          v286 = v244;
          sub_22FF8D3FC();
          v244 = v286;
          if ((v249 & 1) == 0)
          {
            goto LABEL_137;
          }

LABEL_122:
          v273 = v244;

          v274 = v355;
          sub_22FF91AF4(v323, v355[7] + *(v336 + 72) * v273, type metadata accessor for Proto_SealedHash);
          *v333 = v274;
        }

        else
        {
          sub_22FF8A5C8(v248, v242);
          v244 = sub_22FFA619C(v170, v172);
          if ((v249 & 1) != (v250 & 1))
          {
            goto LABEL_167;
          }

LABEL_121:
          if (v249)
          {
            goto LABEL_122;
          }

LABEL_137:
          v287 = v355;
          v355[(v244 >> 6) + 8] |= 1 << v244;
          v288 = (v287[6] + 16 * v244);
          *v288 = v170;
          v288[1] = v172;
          sub_22FF90754(v323, v287[7] + *(v336 + 72) * v244, type metadata accessor for Proto_SealedHash);
          v289 = v287[2];
          v227 = __OFADD__(v289, 1);
          v290 = v289 + 1;
          if (v227)
          {
            goto LABEL_165;
          }

          v287[2] = v290;
          *v333 = v287;
        }

        v54 = v347;
        v64 = v352;
        goto LABEL_140;
      }
    }

    v338(v353, v354);
LABEL_31:
    v73 = v346;
LABEL_32:
    v62 = v350;
LABEL_33:
    v108 = v349 + 1;
    v107 = v342;
    if (v344 == v349 + 1)
    {
      goto LABEL_153;
    }
  }

  v114 = *v63;
  (*v63)(v64, v354);
  v115 = v359;
  if (!*(v359 + 16) || (v116 = sub_22FFA6214(v113), (v117 & 1) == 0))
  {
    v338 = v110;
    v155 = v114;
    if (qword_27DAF1498 != -1)
    {
      swift_once();
    }

    v156 = sub_22FFB12F8();
    __swift_project_value_buffer(v156, qword_27DAF38A0);
    v157 = sub_22FFB12D8();
    v158 = sub_22FFB1838();
    if (os_log_type_enabled(v157, v158))
    {
      v54 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v346 = v73;
      v160 = v159;
      v355 = v159;
      *v54 = v326;
      sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v161 = sub_22FFB1BA8();
      v163 = sub_22FF9E448(v161, v162, &v355);

      *(v54 + 4) = v163;
      v63 = v327;
      v164 = v351;
      _os_log_impl(&dword_22FE99000, v157, v158, "Failed to read cryptex sealed hashes from %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v160);
      v165 = v160;
      v73 = v346;
      MEMORY[0x23190EFF0](v165, -1, -1);
      MEMORY[0x23190EFF0](v54, -1, -1);
    }

    else
    {

      v164 = v351;
    }

    if (*(v164 + 97) == 1)
    {

      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
      swift_allocError();
      v304 = v303;
      v305 = v113;
      v306 = v354;
      (v338)(v304, v305, v354);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v155(v353, v306);
    }

    v155(v353, v354);
    goto LABEL_71;
  }

  v118 = *(*(v115 + 56) + 8 * v116);
  if (!*(v118 + 16))
  {
    v114(v353, v354);
LABEL_71:
    v64 = v352;
    goto LABEL_32;
  }

  v119 = sub_22FFB0928();
  v346 = v120;
  MEMORY[0x28223BE20](v119);
  *(&v314 - 2) = v118;
  sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
  v121 = v335;
  v122 = v341;
  v123 = v73;
  sub_22FFB11B8();

  v124 = *v318;
  (*v318)(v121, 0, 1, v122);
  v125 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v126 = v350;
  swift_beginAccess();
  v127 = v126 + v125;
  v128 = v331;
  sub_22FEBF3A4(v127, v331, &qword_27DAF26E8, &qword_22FFB7C60);
  v129 = *v317;
  v130 = v340;
  if ((*v317)(v128, 1, v340) == 1)
  {
    v131 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    *v339 = v131;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v129(v128, 1, v130) != 1)
    {
      sub_22FEAEA34(v128, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF90754(v128, v339, type metadata accessor for Proto_SealedHashLedger);
  }

  v208 = v335;
  v209 = (*v316)(v335, 1, v341);
  v210 = v346;
  if (v209 == 1)
  {
    sub_22FEAEA34(v208, &qword_27DAF38F0, &unk_22FFC0170);
    v211 = v339;
    v212 = sub_22FFA619C(v119, v210);
    v214 = v213;

    if (v214)
    {
      v215 = swift_isUniquelyReferenced_nonNull_native();
      v216 = *v211;
      v355 = *v211;
      v54 = v347;
      v64 = v352;
      if (!v215)
      {
        sub_22FF8D3FC();
        v216 = v355;
      }

      v217 = v324;
      sub_22FF90754(*(v216 + 56) + *(v336 + 72) * v212, v324, type metadata accessor for Proto_SealedHash);
      sub_22FF8C2A8(v212, v216);
      v218 = 0;
      *v211 = v216;
      v219 = v341;
    }

    else
    {
      v218 = 1;
      v54 = v347;
      v219 = v341;
      v217 = v324;
      v64 = v352;
    }

    v124(v217, v218, 1, v219);
    sub_22FEAEA34(v217, &qword_27DAF38F0, &unk_22FFC0170);
    v73 = v123;
    v63 = v327;
    goto LABEL_132;
  }

  sub_22FF90754(v208, v329, type metadata accessor for Proto_SealedHash);
  v220 = v339;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v222 = *v220;
  v355 = v222;
  v223 = sub_22FFA619C(v119, v210);
  v225 = *(v222 + 16);
  v226 = (v224 & 1) == 0;
  v227 = __OFADD__(v225, v226);
  v228 = v225 + v226;
  if (!v227)
  {
    v229 = v224;
    if (*(v222 + 24) >= v228)
    {
      if (v221)
      {
        goto LABEL_106;
      }

      v277 = v223;
      sub_22FF8D3FC();
      v223 = v277;
      if ((v229 & 1) == 0)
      {
        goto LABEL_129;
      }

LABEL_107:
      v251 = v223;

      v252 = v355;
      sub_22FF91AF4(v329, v355[7] + *(v336 + 72) * v251, type metadata accessor for Proto_SealedHash);
      *v339 = v252;
    }

    else
    {
      sub_22FF8A5C8(v228, v221);
      v223 = sub_22FFA619C(v119, v210);
      if ((v229 & 1) != (v230 & 1))
      {
        goto LABEL_167;
      }

LABEL_106:
      if (v229)
      {
        goto LABEL_107;
      }

LABEL_129:
      v278 = v355;
      v355[(v223 >> 6) + 8] |= 1 << v223;
      v279 = (v278[6] + 16 * v223);
      *v279 = v119;
      v279[1] = v210;
      sub_22FF90754(v329, v278[7] + *(v336 + 72) * v223, type metadata accessor for Proto_SealedHash);
      v280 = v278[2];
      v227 = __OFADD__(v280, 1);
      v281 = v280 + 1;
      if (v227)
      {
        goto LABEL_163;
      }

      v278[2] = v281;
      *v339 = v278;
    }

    v54 = v347;
    v64 = v352;
LABEL_132:
    v282 = v315;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v114(v353, v354);
      v62 = *(v54 + v282);
    }

    else
    {
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();

      v62 = sub_22FF10520(v283);
      v114(v353, v354);

      *(v54 + v282) = v62;
    }

    v284 = v340;
    v285 = v358;
    goto LABEL_152;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);

  __break(1u);
LABEL_167:
  result = sub_22FFB1C18();
  __break(1u);
  return result;
}

uint64_t sub_22FF81754(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  v154 = a8;
  *&v153 = a7;
  v166 = a5;
  v167 = a6;
  v161 = a4;
  v164 = a3;
  v170 = a12;
  v168 = a11;
  v165 = sub_22FFB0958();
  v157 = *(v165 - 8);
  v14 = MEMORY[0x28223BE20](v165);
  v158 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v169 = &v149 - v17;
  MEMORY[0x28223BE20](v16);
  v155 = &v149 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v19 - 8);
  v162 = &v149 - v20;
  v159 = sub_22FFB0908();
  v21 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v23 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22FFB0EE8();
  v24 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v26 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a1 + v27);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v29 = sub_22FF10520(v29);
    *(a1 + v27) = v29;
  }

  swift_beginAccess();
  v30 = v29[2];
  v31 = v29[3];
  v32 = v164;
  v29[2] = a2;
  v29[3] = v32;
  sub_22FEA55AC(v30, v31);
  (*(v21 + 16))(v23, v161, v159);
  sub_22FEA5608(a2, v32);
  sub_22FFB0EC8();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a1 + v27);
  v164 = a1;
  v156 = v27;
  if ((v33 & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v34 = sub_22FF10520(v34);
    *(a1 + v27) = v34;
  }

  v35 = v162;
  v36 = v160;
  (*(v24 + 32))(v162, v26, v160);
  (*(v24 + 56))(v35, 0, 1, v36);
  v37 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v35, v34 + v37, &qword_27DAF1520, &qword_22FFB3A30);
  swift_endAccess();
  v38 = v170;
  v39 = v168;
  v162 = *(v170 + 4);
  (v162)(v171, v168, v170);
  v40 = v172;
  v41 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  v42 = v163;
  v43 = (*(v41 + 8))(v40, v41);
  v45 = v42;
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v171);
    if (qword_27DAF1498 != -1)
    {
      goto LABEL_80;
    }

    goto LABEL_7;
  }

  v63 = v44;
  v64 = v43;
  v65 = v164;
  v56 = v156;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v65 + v56);
  if ((v66 & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v67 = sub_22FF10520(v67);
    *(v65 + v56) = v67;
  }

  v38 = v169;
  swift_beginAccess();
  v68 = v67[4];
  v69 = v67[5];
  v67[4] = v64;
  v67[5] = v63;
  sub_22FEA55AC(v68, v69);
  __swift_destroy_boxed_opaque_existential_1(v171);
  v45 = 0;
  v55 = v167;
  if (*(v167 + 16))
  {
    goto LABEL_21;
  }

  while (2)
  {
    if (qword_27DAF1498 != -1)
    {
      swift_once();
    }

    v57 = sub_22FFB12F8();
    __swift_project_value_buffer(v57, qword_27DAF38A0);
    v58 = sub_22FFB12D8();
    v59 = sub_22FFB1838();
    v60 = os_log_type_enabled(v58, v59);
    v39 = v165;
    if (v60)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_22FE99000, v58, v59, "Empty provisioning certificate chain", v61, 2u);
      MEMORY[0x23190EFF0](v61, -1, -1);
    }

    (*(v170 + 5))(v171, v168);
    if (BYTE1(v171[0]) == 1)
    {
      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

LABEL_24:
    (v162)(v171, v168, v170);
    v74 = v172;
    v75 = v173;
    __swift_project_boxed_opaque_existential_1(v171, v172);
    v174 = (*(v75 + 24))(v74, v75);
    v76 = v174;

    __swift_destroy_boxed_opaque_existential_1(v171);
    v77 = *(v76 + 16);

    if (!v77)
    {
    }

    v171[0] = v153;
    v171[1] = v154;
    v171[2] = a9;
    v172 = a10;
    sub_22FF82DC8(v171, &v174);
    (*(v170 + 6))(v171, v168);
    v78 = v171[0];
    if (!v171[0])
    {

      v78 = sub_22FEBAD18(v79);
    }

    v80 = v157;
    v81 = v158;
    v82 = *(v78 + 16);
    if (v82)
    {
      v83 = MEMORY[0x277CC95F0];
      v84 = sub_22FF8A2B0(*(v78 + 16), 0, &qword_27DAF1D60, &qword_22FFB43C0, MEMORY[0x277CC95F0]);
      v45 = sub_22FF8FF60(v171, &v84[(*(v80 + 80) + 32) & ~*(v80 + 80)], v82, v78, v83);
      v85 = v171[0];

      sub_22FF6F7A8(v85);
      if (v45 != v82)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v39 = v165;
      v80 = v157;
      v81 = v158;
      v38 = v169;
    }

    else
    {
      v84 = MEMORY[0x277D84F90];
    }

    v171[0] = v84;
    sub_22FF8E600(v171);
    v151 = 0;

    v88 = v171[0];
    v89 = v155;
    v160 = *(v171[0] + 16);
    if (!v160)
    {
LABEL_73:
    }

    v90 = 0;
    v156 = v171[0] + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v163 = (v80 + 16);
    v167 = v80 + 8;
    v154 = v170 + 40;
    *&v87 = 136446210;
    v153 = v87;
    v159 = v171[0];
    while (v90 < *(v88 + 16))
    {
      v93 = *(v80 + 16);
      v93(v89, v156 + *(v80 + 72) * v90, v39);
      v162 = v93;
      v93(v38, v89, v39);
      if (qword_281490280 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v39, qword_281491418);
      sub_22FF7BE88(&qword_281491318, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      if (sub_22FFB1478())
      {
        v161 = *v167;
        v161(v38, v39);
        v94 = v174;
        if (*(v174 + 16) && (v95 = sub_22FFA6214(v45), (v96 & 1) != 0))
        {
          v91 = *(*(v94 + 56) + 8 * v95);

          sub_22FF83C60(v164, v91, v45, sub_22FF91B98);

          v92 = v89;
        }

        else
        {
          if (qword_27DAF1498 != -1)
          {
            swift_once();
          }

          v97 = sub_22FFB12F8();
          __swift_project_value_buffer(v97, qword_27DAF38A0);
          v98 = sub_22FFB12D8();
          v99 = sub_22FFB1838();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v171[0] = v101;
            *v100 = v153;
            sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v102 = sub_22FFB1BA8();
            v104 = sub_22FF9E448(v102, v103, v171);

            *(v100 + 4) = v104;
            _os_log_impl(&dword_22FE99000, v98, v99, "Failed to read cryptex sealed hashes from %{public}s", v100, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v101);
            v105 = v101;
            v80 = v157;
            MEMORY[0x23190EFF0](v105, -1, -1);
            v106 = v100;
            v89 = v155;
            MEMORY[0x23190EFF0](v106, -1, -1);
          }

          v81 = v158;
          (*(v170 + 5))(v171, v168);
          if (BYTE1(v171[0]) == 1)
          {

            type metadata accessor for CloudAttestationError(0);
            sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
            swift_allocError();
            v141 = v140;
            v142 = v45;
            v143 = v89;
            v144 = v165;
            (v162)(v141, v142, v165);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v161(v143, v144);
          }

          v92 = v89;
          v39 = v165;
        }

        v161(v92, v39);
        goto LABEL_35;
      }

      if (qword_28148FA40 != -1)
      {
        swift_once();
      }

      v107 = __swift_project_value_buffer(v39, qword_2814913A0);
      v108 = v169;
      v109 = sub_22FFB1478();
      v110 = v108;
      v45 = *v167;
      (*v167)(v110, v39);
      v161 = v174;
      v111 = *(v174 + 16);
      if (v109)
      {
        if (v111)
        {
          v112 = sub_22FFA6214(v107);
          if (v113)
          {
            v114 = *(*(v161 + 7) + 8 * v112);

            v115 = v151;
            sub_22FF8365C(v164, v114);
            v151 = v115;
            if (v115)
            {
              v45(v89, v39);
            }

            v45(v89, v39);

            goto LABEL_35;
          }
        }

        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v120 = sub_22FFB12F8();
        __swift_project_value_buffer(v120, qword_27DAF38A0);
        v121 = sub_22FFB12D8();
        v122 = sub_22FFB1838();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v171[0] = v124;
          *v123 = v153;
          sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v125 = sub_22FFB1BA8();
          v127 = sub_22FF9E448(v125, v126, v171);

          *(v123 + 4) = v127;
          _os_log_impl(&dword_22FE99000, v121, v122, "Failed to read secure config from %{public}s", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v124);
          v128 = v124;
          v80 = v157;
          MEMORY[0x23190EFF0](v128, -1, -1);
          v129 = v123;
          v89 = v155;
          MEMORY[0x23190EFF0](v129, -1, -1);
        }

        v81 = v158;
        (*(v170 + 5))(v171, v168);
        if (BYTE1(v171[0]) == 1)
        {

          type metadata accessor for CloudAttestationError(0);
          sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
          swift_allocError();
          v145 = v89;
          v146 = v165;
          (v162)(v147, v107, v165);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v45(v145, v146);
        }

        v119 = v89;
        v39 = v165;
        goto LABEL_65;
      }

      if (v111)
      {
        v116 = sub_22FFA6214(v89);
        if (v117)
        {
          v118 = *(*(v161 + 7) + 8 * v116);

          sub_22FF83C60(v164, v118, v89, sub_22FF91B68);

          v119 = v89;
LABEL_65:
          v45(v119, v39);
LABEL_35:
          v38 = v169;
          goto LABEL_36;
        }
      }

      v152 = v45;
      if (qword_27DAF1498 != -1)
      {
        swift_once();
      }

      v130 = sub_22FFB12F8();
      __swift_project_value_buffer(v130, qword_27DAF38A0);
      (v162)(v81, v89, v39);
      v131 = sub_22FFB12D8();
      v132 = sub_22FFB1838();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v171[0] = v150;
        *v133 = v153;
        sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v134 = sub_22FFB1BA8();
        v136 = v135;
        v45 = v152;
        v152(v81, v39);
        v137 = sub_22FF9E448(v134, v136, v171);

        *(v133 + 4) = v137;
        _os_log_impl(&dword_22FE99000, v131, v132, "Failed to read seled hashes from %{public}s", v133, 0xCu);
        v138 = v150;
        __swift_destroy_boxed_opaque_existential_1(v150);
        v80 = v157;
        MEMORY[0x23190EFF0](v138, -1, -1);
        v139 = v133;
        v89 = v155;
        MEMORY[0x23190EFF0](v139, -1, -1);

        v38 = v169;
      }

      else
      {

        v45 = v152;
        v152(v81, v39);
        v38 = v169;
        v80 = v157;
      }

      (*(v170 + 5))(v171, v168);
      if (BYTE1(v171[0]) == 1)
      {

        type metadata accessor for CloudAttestationError(0);
        sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
        swift_allocError();
        (v162)(v148, v89, v39);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v45(v89, v39);
      }

      v45(v89, v39);
LABEL_36:
      ++v90;
      v88 = v159;
      if (v160 == v90)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_80:
    swift_once();
LABEL_7:
    v46 = sub_22FFB12F8();
    __swift_project_value_buffer(v46, qword_27DAF38A0);
    v47 = v45;
    v48 = sub_22FFB12D8();
    v49 = sub_22FFB1838();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v45;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138543362;
      v53 = v50;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_22FE99000, v48, v49, "Unable to fetch ap ticket: %{public}@", v51, 0xCu);
      sub_22FEAEA34(v52, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v52, -1, -1);
      v45 = v50;
      MEMORY[0x23190EFF0](v51, -1, -1);
    }

    (*(v38 + 5))(v171, v39, v38);
    v55 = v167;
    if (BYTE1(v171[0]) != 1)
    {

      v45 = 0;
      v38 = v169;
      v56 = v156;
      if (!*(v55 + 16))
      {
        continue;
      }

LABEL_21:
      v70 = v164;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v72 = *(v70 + v56);
      if ((v71 & 1) == 0)
      {
        type metadata accessor for Proto_AttestationBundle._StorageClass(0);
        swift_allocObject();
        v72 = sub_22FF10520(v72);
        *(v70 + v56) = v72;
      }

      v39 = v165;
      v73 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
      swift_beginAccess();
      *(v72 + v73) = v55;

      goto LABEL_24;
    }

    return swift_willThrow();
  }
}

uint64_t sub_22FF82DC8(uint64_t a1, uint64_t *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - v5;
  v73 = type metadata accessor for SEP.SealedHash(0);
  v7 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FFB0958();
  v11 = MEMORY[0x28223BE20](v10);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v77 = &v60 - v16;
  v62 = a2;
  v17 = *a2;
  v18 = v9;
  v19 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = v20 + 63;
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  v26 = v23 >> 6;
  v80 = v15 + 16;
  v76 = v15 + 32;
  v70 = v24;
  v75 = v24 >> 62;
  v69 = v25;
  v67 = v25;
  v65 = v25 >> 32;
  v74 = (v7 + 48);
  v78 = v15;
  v72 = (v15 + 8);
  v27 = 0;

  v66 = v81;
  v71 = v10;
  v79 = v19;
  v68 = v26;
  v64 = v18;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v22)
          {
            goto LABEL_10;
          }

          do
          {
            v28 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            if (v28 >= v26)
            {
            }

            v22 = *(v19 + 8 * v28);
            ++v27;
          }

          while (!v22);
          v27 = v28;
LABEL_10:
          v29 = v78;
          v30 = v77;
          v31 = *(v78 + 16);
          v31(v77, *(v81 + 48) + *(v78 + 72) * (__clz(__rbit64(v22)) | (v27 << 6)), v10);
          (*(v29 + 32))(v82, v30, v10);
          memset(v84, 0, sizeof(v84));
          if (v75 > 1)
          {
            if (v75 != 2)
            {
              memset(v83, 0, 14);
LABEL_25:
              sub_22FF53FB0(v84, v6);
              v19 = v79;
              goto LABEL_26;
            }

            v32 = *(v67 + 16);
            v33 = sub_22FFB0588();
            if (v33)
            {
              v34 = v33;
              v35 = sub_22FFB05B8();
              if (!__OFSUB__(v32, v35))
              {
                v36 = v32 - v35 + v34;
                sub_22FFB05A8();
                if (v36)
                {
                  sub_22FF53FB0(v84, v6);
                  v18 = v64;
                  v10 = v71;
                  v19 = v79;
                  goto LABEL_23;
                }

LABEL_54:
                __break(1u);
LABEL_55:
                sub_22FFB05A8();
LABEL_56:
                __break(1u);
              }

LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
            }

            sub_22FFB05A8();
            goto LABEL_54;
          }

          if (!v75)
          {
            LOBYTE(v83[0]) = v69;
            *(v83 + 1) = *(&v67 + 1);
            *(v83 + 5) = *(&v67 + 5);
            HIBYTE(v83[0]) = HIBYTE(v67);
            LODWORD(v83[1]) = v70;
            WORD2(v83[1]) = WORD2(v70);
            goto LABEL_25;
          }

          v19 = v79;
          if (v65 < v69)
          {
            goto LABEL_48;
          }

          v37 = sub_22FFB0588();
          if (!v37)
          {
            goto LABEL_55;
          }

          v38 = v37;
          v39 = sub_22FFB05B8();
          if (__OFSUB__(v69, v39))
          {
            goto LABEL_50;
          }

          v40 = v69 - v39 + v38;
          sub_22FFB05A8();
          if (!v40)
          {
            goto LABEL_56;
          }

          sub_22FF53FB0(v84, v6);
          v10 = v71;
LABEL_23:
          v26 = v68;
LABEL_26:
          v22 &= v22 - 1;
          if ((*v74)(v6, 1, v73) != 1)
          {
            break;
          }

          (*v72)(v82, v10);
          sub_22FEAEA34(v6, &qword_27DAF1F08, &qword_22FFB4B00);
        }

        sub_22FF90754(v6, v18, type metadata accessor for SEP.SealedHash);
        if ((*v18 & 4) != 0)
        {
          break;
        }

        sub_22FF906D4(v18, type metadata accessor for SEP.SealedHash);
        (*v72)(v82, v10);
      }

      if (*(v66 + 16))
      {
        v41 = sub_22FFA6214(v82);
        if (v42)
        {
          v43 = *(*(*(v66 + 56) + 8 * v41) + 16);
          if (v43)
          {
            break;
          }
        }
      }

      sub_22FF906D4(v18, type metadata accessor for SEP.SealedHash);
      v10 = v71;
      (*v72)(v82, v71);
    }

    v44 = v62;
    LODWORD(v66) = swift_isUniquelyReferenced_nonNull_native();
    v45 = v63;
    v31(v63, v82, v71);
    v46 = *v44;
    *v84 = v46;
    v48 = sub_22FFA6214(v45);
    v49 = *(v46 + 16);
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_51;
    }

    v52 = v47;
    if (*(v46 + 24) >= v51)
    {
      break;
    }

    sub_22FF8BECC(v51, v66);
    v53 = sub_22FFA6214(v63);
    if ((v52 & 1) != (v54 & 1))
    {
      result = sub_22FFB1C18();
      __break(1u);
      return result;
    }

    v48 = v53;
    if ((v52 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_40:
    v55 = *v84;
    v56 = *(*(*v84 + 56) + 8 * v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_22FF8FC68(v56);
    }

    if (v43 > *(v56 + 2))
    {
      goto LABEL_52;
    }

    v56[64 * v43] |= 4u;
    *(*(v55 + 56) + 8 * v48) = v56;
    v58 = *v72;

    v10 = v71;
    v58(v63, v71);
    sub_22FF906D4(v18, type metadata accessor for SEP.SealedHash);

    v66 = *v84;
    *v62 = *v84;
    v58(v82, v10);
    v6 = v61;
    v19 = v79;
    v26 = v68;
  }

  if (v66)
  {
    if ((v47 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  sub_22FF8E260();
  if (v52)
  {
    goto LABEL_40;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_22FF8365C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SealedHash(0);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Proto_SealedHashLedger(0);
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  if (*(a2 + 16))
  {
    v47 = v9;
    v48 = v14;
    v49 = a1;
    if (qword_28148FA40 != -1)
    {
      swift_once();
    }

    v22 = sub_22FFB0958();
    __swift_project_value_buffer(v22, qword_2814913A0);
    v23 = sub_22FFB0928();
    v25 = v24;
    MEMORY[0x28223BE20](v23);
    *(&v46 - 2) = a2;
    sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
    v26 = v55;
    sub_22FFB11B8();
    if (v26)
    {
    }

    else
    {
      v55 = 0;
      (*(v51 + 56))(v21, 0, 1, v4);
      v46 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
      v27 = *(v49 + v46);
      v28 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      sub_22FEBF3A4(v27 + v28, v11, &qword_27DAF26E8, &qword_22FFB7C60);
      v29 = v53;
      v30 = *(v52 + 48);
      if (v30(v11, 1, v53) == 1)
      {
        v31 = sub_22FFA6E68(MEMORY[0x277D84F90]);
        *v48 = v31;
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v32 = v30(v11, 1, v29);
        v33 = v25;
        if (v32 != 1)
        {
          sub_22FEAEA34(v11, &qword_27DAF26E8, &qword_22FFB7C60);
        }
      }

      else
      {
        sub_22FF90754(v11, v48, type metadata accessor for Proto_SealedHashLedger);
        v33 = v25;
      }

      v34 = (*(v51 + 48))(v21, 1, v4);
      v35 = v49;
      if (v34 == 1)
      {
        sub_22FEAEA34(v21, &qword_27DAF38F0, &unk_22FFC0170);
        v36 = v48;
        sub_22FF8A3AC(v23, v33, v18);

        sub_22FEAEA34(v18, &qword_27DAF38F0, &unk_22FFC0170);
      }

      else
      {
        v37 = v50;
        sub_22FF90754(v21, v50, type metadata accessor for Proto_SealedHash);
        v36 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = *v36;
        sub_22FF8C7D8(v37, v23, v33, isUniquelyReferenced_nonNull_native);

        *v36 = v54;
      }

      v39 = v53;
      v40 = v46;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v35 + v40);
      if ((v41 & 1) == 0)
      {
        type metadata accessor for Proto_AttestationBundle._StorageClass(0);
        swift_allocObject();
        v42 = sub_22FF10520(v42);
        *(v35 + v40) = v42;
      }

      v43 = v36;
      v44 = v47;
      sub_22FF90754(v43, v47, type metadata accessor for Proto_SealedHashLedger);
      (*(v52 + 56))(v44, 0, 1, v39);
      v45 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      sub_22FEFF0DC(v44, v42 + v45, &qword_27DAF26E8, &qword_22FFB7C60);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22FF83C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Proto_SealedHash(0);
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Proto_SealedHashLedger(0);
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  result = MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  if (*(a2 + 16))
  {
    v40 = v20;
    v44 = v11;
    v41 = sub_22FFB0928();
    v43 = v23;
    MEMORY[0x28223BE20](v41);
    *(&v39 - 2) = a2;
    sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
    sub_22FFB11B8();
    v24 = v46;
    (*(v46 + 56))(v22, 0, 1, v6);
    v25 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
    v26 = *(a1 + v25);
    v27 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEBF3A4(v26 + v27, v13, &qword_27DAF26E8, &qword_22FFB7C60);
    v28 = *(v47 + 48);
    v29 = v28(v13, 1, v14);
    v42 = v14;
    if (v29 == 1)
    {
      *v16 = sub_22FFA6E68(MEMORY[0x277D84F90]);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v28(v13, 1, v14) != 1)
      {
        sub_22FEAEA34(v13, &qword_27DAF26E8, &qword_22FFB7C60);
      }
    }

    else
    {
      sub_22FF90754(v13, v16, type metadata accessor for Proto_SealedHashLedger);
    }

    v30 = (*(v24 + 48))(v22, 1, v6);
    v31 = v44;
    if (v30 == 1)
    {
      sub_22FEAEA34(v22, &qword_27DAF38F0, &unk_22FFC0170);
      v32 = v40;
      sub_22FF8A3AC(v41, v43, v40);

      sub_22FEAEA34(v32, &qword_27DAF38F0, &unk_22FFC0170);
    }

    else
    {
      v33 = v45;
      sub_22FF90754(v22, v45, type metadata accessor for Proto_SealedHash);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *v16;
      sub_22FF8C7D8(v33, v41, v43, isUniquelyReferenced_nonNull_native);

      *v16 = v48;
    }

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(a1 + v25);
    if ((v35 & 1) == 0)
    {
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v36 = sub_22FF10520(v36);
      *(a1 + v25) = v36;
    }

    v37 = v47;
    sub_22FF90754(v16, v31, type metadata accessor for Proto_SealedHashLedger);
    (*(v37 + 56))(v31, 0, 1, v42);
    v38 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEFF0DC(v31, v36 + v38, &qword_27DAF26E8, &qword_22FFB7C60);
    return swift_endAccess();
  }

  return result;
}

uint64_t Attestor.attest(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22FFB0908();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF842D0, 0, 0);
}

uint64_t sub_22FF842D0()
{
  v1 = (*(v0[5] + 16))(v0[4]);
  v0[10] = v1;
  v2 = v1;
  v11 = v0[5];
  (*(v11 + 8))(v0[4]);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v10 = (*(v11 + 56) + **(v11 + 56));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_22FF844D8;
  v4 = v0[9];
  v5 = v0[5];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v2, v4, 0, 0xF000000000000000, v7, v5);
}

uint64_t sub_22FF844D8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF846AC, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_22FF846AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Attestor.attest(key:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_22FFB0908();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF847DC, 0, 0);
}

uint64_t sub_22FF847DC()
{
  v1 = (*(v0[7] + 16))(v0[6]);
  v0[12] = v1;
  v2 = v1;
  v13 = v0[7];
  (*(v13 + 8))(v0[6]);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v12 = (*(v13 + 56) + **(v13 + 56));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_22FF849E0;
  v4 = v0[11];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return v12(v10, v8, v2, v4, v9, v6, v7, v5);
}

uint64_t sub_22FF849E0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF84BB4, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_22FF84BB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Attestor.attest(key:expiration:appData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FF84C44, 0, 0);
}

uint64_t sub_22FF84C44()
{
  v1 = (*(v0[7] + 16))(v0[6]);
  v0[9] = v1;
  v2 = v1;
  v11 = (*(v0[7] + 64) + **(v0[7] + 64));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_22FF84DC8;
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v2, v8, v5, v6, v4);
}

uint64_t sub_22FF84DC8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF84F04, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FF84F04()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Attestor.attest(key:appData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22FFB0908();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF85030, 0, 0);
}

uint64_t sub_22FF85030()
{
  v1 = (*(v0[6] + 16))(v0[5]);
  v0[11] = v1;
  v2 = v1;
  v12 = v0[6];
  (*(v12 + 8))(v0[5]);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v11 = (*(v12 + 64) + **(v12 + 64));
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22FF85230;
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return v11(v8, v9, v2, v4, v6, v7, v5);
}

uint64_t sub_22FF85230()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF85404, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_22FF85404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FF85468(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a6;
  v89 = a2;
  v90 = a3;
  v86 = a1;
  v8 = sub_22FFB13C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FFB1398();
  v85 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v84 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v80 - v15;
  v16 = *(a5 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData;
  result = swift_beginAccess();
  v18 = *v16;
  v19 = *(v16 + 8);
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v18 + 16) == *(v18 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v20)
  {
    if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    result = sub_22FEA5608(*v16, *(v16 + 8));
    goto LABEL_10;
  }

  if (v18 != v18 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v18 = 0;
  v19 = 0xF000000000000000;
LABEL_10:
  if (a4 >> 60 == 15)
  {
    if (v19 >> 60 != 15)
    {
      sub_22FEA56EC(v18, v19);
      v21 = sub_22FFB12D8();
      v22 = sub_22FFB1838();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_22FE99000, v21, v22, "app data integrity check failed: no nonce observed", v23, 2u);
        MEMORY[0x23190EFF0](v23, -1, -1);
      }

      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    return result;
  }

  if (v19 >> 60 == 15)
  {
    v24 = v89;
    if (v89 >> 60 == 15)
    {
      v25 = v90;
      sub_22FEA5608(v90, a4);
      v26 = sub_22FFB12D8();
      v27 = sub_22FFB1838();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22FE99000, v26, v27, "Attestation contains nonce, but no nonce provided to validate", v28, 2u);
        MEMORY[0x23190EFF0](v28, -1, -1);
      }

      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v29 = v25;
    }

    else
    {
      v37 = v90;
      sub_22FEBF8F0(v90, a4);
      v38 = v86;
      sub_22FEBF8F0(v86, v24);
      if (!sub_22FEC3DC8(v37, a4, v38, v24))
      {
        sub_22FEBF8F0(v37, a4);
        sub_22FEBF8F0(v38, v24);
        v39 = sub_22FFB12D8();
        v40 = sub_22FFB1838();
        sub_22FEA56EC(v37, a4);
        sub_22FEA56EC(v38, v24);
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v91 = v42;
          *v41 = 136446466;
          v43 = sub_22FEB0B54(v37, a4);
          v45 = sub_22FF9E448(v43, v44, &v91);

          *(v41 + 4) = v45;
          *(v41 + 12) = 2082;
          v46 = sub_22FEB0B54(v38, v89);
          v48 = sub_22FF9E448(v46, v47, &v91);

          *(v41 + 14) = v48;
          v37 = v90;
          _os_log_impl(&dword_22FE99000, v39, v40, "Observed nonce %{public}s does not match %{public}s", v41, 0x16u);
          swift_arrayDestroy();
          v49 = v42;
          v24 = v89;
          MEMORY[0x23190EFF0](v49, -1, -1);
          MEMORY[0x23190EFF0](v41, -1, -1);
        }

        type metadata accessor for CloudAttestationError(0);
        sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      sub_22FEA56EC(v38, v24);
      v29 = v37;
    }

    return sub_22FEA56EC(v29, a4);
  }

  v82 = v12;
  v30 = v90;
  sub_22FEA5608(v90, a4);
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v83 = a4;
  sub_22FFB1388();
  sub_22FEA5608(v18, v19);
  sub_22FF9EA78(v18, v19, v11);
  v81 = v18;
  sub_22FEA56EC(v18, v19);
  v31 = v87;
  v32 = v83;
  sub_22FFB1368();
  (*(v9 + 8))(v11, v8);
  v33 = v89;
  if (v89 >> 60 == 15)
  {
LABEL_23:
    v35 = sub_22FECAD68(v30, v32);
    v36 = v31;
    if (v35)
    {
      (*(v85 + 8))(v31, v82);
      sub_22FEA56EC(v30, v32);
      return sub_22FEA56EC(v81, v19);
    }

    else
    {
      v51 = v84;
      v50 = v85;
      v52 = v82;
      (*(v85 + 16))(v84, v36, v82);
      sub_22FEA5608(v30, v32);
      v53 = sub_22FFB12D8();
      v54 = sub_22FFB1838();
      sub_22FEA56EC(v30, v32);
      v55 = os_log_type_enabled(v53, v54);
      v56 = v81;
      if (v55)
      {
        v57 = v51;
        v58 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v91 = v89;
        *v58 = 136446466;
        v59 = sub_22FEB0B54(v30, v32);
        v61 = sub_22FF9E448(v59, v60, &v91);

        *(v58 + 4) = v61;
        *(v58 + 12) = 2082;
        v62 = sub_22FF95DBC();
        v64 = v63;
        LODWORD(v88) = v54;
        v65 = *(v50 + 8);
        v66 = v57;
        v52 = v82;
        v65(v66, v82);
        v67 = sub_22FF9E448(v62, v64, &v91);
        v32 = v83;

        *(v58 + 14) = v67;
        v56 = v81;
        _os_log_impl(&dword_22FE99000, v53, v88, "app data integrity check failed: (nonce:%{public}s != digest:%{public}s", v58, 0x16u);
        v68 = v89;
        swift_arrayDestroy();
        MEMORY[0x23190EFF0](v68, -1, -1);
        MEMORY[0x23190EFF0](v58, -1, -1);
      }

      else
      {

        v65 = *(v50 + 8);
        v65(v51, v52);
      }

      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FEA56EC(v56, v19);
      sub_22FEA56EC(v90, v32);
      return (v65)(v87, v52);
    }
  }

  v34 = v86;
  sub_22FEBF8F0(v86, v89);
  if (sub_22FEC3DC8(v34, v33, v30, v32))
  {
    sub_22FEA56EC(v34, v33);
    v31 = v87;
    goto LABEL_23;
  }

  sub_22FEBF8F0(v30, v32);
  sub_22FEBF8F0(v34, v33);
  v69 = sub_22FFB12D8();
  v70 = sub_22FFB1838();
  sub_22FEA56EC(v30, v32);
  sub_22FEA56EC(v34, v33);
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v91 = v72;
    *v71 = 136446466;
    v73 = sub_22FEB0B54(v30, v32);
    v75 = sub_22FF9E448(v73, v74, &v91);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    v76 = sub_22FEB0B54(v34, v89);
    v78 = sub_22FF9E448(v76, v77, &v91);

    *(v71 + 14) = v78;
    v30 = v90;
    _os_log_impl(&dword_22FE99000, v69, v70, "Observed nonce %{public}s does not match %{public}s", v71, 0x16u);
    swift_arrayDestroy();
    v33 = v89;
    MEMORY[0x23190EFF0](v72, -1, -1);
    MEMORY[0x23190EFF0](v71, -1, -1);
  }

  v79 = v81;
  type metadata accessor for CloudAttestationError(0);
  sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_22FEA56EC(v79, v19);
  sub_22FEA56EC(v34, v33);
  sub_22FEA56EC(v30, v32);
  return (*(v85 + 8))(v87, v82);
}

uint64_t sub_22FF8603C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05AB0);
  __swift_project_value_buffer(v0, qword_27DB05AB0);
  return sub_22FFB12E8();
}

uint64_t AttestationBundle.init(jsonString:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22FFB0FA8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for Proto_AttestationBundle(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0F98();
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  result = sub_22FFB1148();
  if (!v3)
  {
    return sub_22FF90754(v8, a3, type metadata accessor for Proto_AttestationBundle);
  }

  return result;
}

uint64_t AttestationBundle.withUnvalidatedAttestationBundle<A>(_:)(void (*a1)(char *))
{
  v3 = type metadata accessor for Unvalidated.AttestationBundle(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v1, v5, type metadata accessor for AttestationBundle);
  a1(v5);
  return sub_22FF906D4(v5, type metadata accessor for Unvalidated.AttestationBundle);
}

uint64_t sub_22FF86350()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491670);
  __swift_project_value_buffer(v0, qword_281491670);
  return sub_22FFB12E8();
}

uint64_t Unvalidated.AttestationBundle.udid.getter()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v0, v3, type metadata accessor for AttestationBundle);
  v4 = *&v3[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  sub_22FEA5608(v5, v6);
  sub_22FF906D4(v3, type metadata accessor for Proto_AttestationBundle);
  v7 = SEP.Attestation.init(from:)(v5, v6, &v34);
  v9 = v34;
  v8 = v35;
  v11 = v36;
  v10 = v37;
  v33 = 0;
  v32 = 0;
  MEMORY[0x28223BE20](v7);
  *(&v31 - 2) = &v33;
  *(&v31 - 1) = &v32;
  sub_22FED55F8(v11, v10, sub_22FEB341C);
  if (v36 == 2)
  {
    if (qword_281490AA0 != -1)
    {
      swift_once();
    }

    v12 = sub_22FFB12F8();
    __swift_project_value_buffer(v12, qword_281491670);
    v13 = sub_22FFB12D8();
    v14 = sub_22FFB1838();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22FE99000, v13, v14, "Unable to parse device udid from sep attestation", v15, 2u);
      MEMORY[0x23190EFF0](v15, -1, -1);
    }

    sub_22FEA55AC(v9, v8);
    sub_22FEA55AC(v11, v10);

    return 0;
  }

  else
  {
    v18 = v34;
    v17 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22FFB2D20;
    v20 = MEMORY[0x277D84D30];
    *(v19 + 56) = MEMORY[0x277D84CC0];
    *(v19 + 64) = v20;
    v21 = MEMORY[0x277D84D38];
    *(v19 + 32) = v18;
    v22 = MEMORY[0x277D84D90];
    *(v19 + 96) = v21;
    *(v19 + 104) = v22;
    *(v19 + 72) = v17;
    v23 = sub_22FFB14D8();
    v25 = v24;
    if (qword_281490AA0 != -1)
    {
      swift_once();
    }

    v26 = sub_22FFB12F8();
    __swift_project_value_buffer(v26, qword_281491670);

    v27 = sub_22FFB12D8();
    v28 = sub_22FFB1848();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22FF9E448(v23, v25, &v34);
      _os_log_impl(&dword_22FE99000, v27, v28, "Parsed udid=%{public}s from unvalidated attestation bundle", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x23190EFF0](v30, -1, -1);
      MEMORY[0x23190EFF0](v29, -1, -1);
    }

    sub_22FEA55AC(v9, v8);
    sub_22FEA55AC(v11, v10);

    return v23;
  }
}

BOOL _s16CloudAttestation0B6BundleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  result = 0;
  if (v5 == v6 || (, , v7 = sub_22FF121B0(v5, v6), , , v7))
  {
    sub_22FFB0F88();
    sub_22FF7BE88(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_22FFB1478())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_22FF86A34()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05AC8);
  __swift_project_value_buffer(v0, qword_27DB05AC8);
  return sub_22FFB12E8();
}

uint64_t Validated.AttestationBundle.sepAttestation.getter()
{
  v1 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v0, v3, type metadata accessor for AttestationBundle);
  v4 = *&v3[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
  swift_beginAccess();
  v5 = *(v4 + 16);
  sub_22FEA5608(v5, *(v4 + 24));
  sub_22FF906D4(v3, type metadata accessor for Proto_AttestationBundle);
  return v5;
}

uint64_t Validated.AttestationBundle.udid.getter()
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for Validated.AttestationBundle(0) + 20));
  if (v4[1])
  {
    v5 = *v4;
  }

  else
  {
    if (qword_27DAF14A8 != -1)
    {
      swift_once();
    }

    v6 = sub_22FFB12F8();
    __swift_project_value_buffer(v6, qword_27DB05AC8);
    v7 = sub_22FFB12D8();
    v8 = sub_22FFB1838();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22FE99000, v7, v8, "UDID was not set from validation context, attempting to lazily parse from sep attestation blob", v9, 2u);
      MEMORY[0x23190EFF0](v9, -1, -1);
    }

    sub_22FF9064C(v0, v3, type metadata accessor for AttestationBundle);
    v10 = *&v3[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
    swift_beginAccess();
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    sub_22FEA5608(v11, v12);
    sub_22FF906D4(v3, type metadata accessor for Proto_AttestationBundle);
    v13 = SEP.Attestation.init(from:)(v11, v12, &v31);
    v15 = v31;
    v14 = v32;
    v17 = v33;
    v16 = v34;
    v30 = 0;
    v29 = 0;
    MEMORY[0x28223BE20](v13);
    *(&v28 - 2) = &v30;
    *(&v28 - 1) = &v29;
    sub_22FED55F8(v17, v16, sub_22FEBFA54);
    if (v33 == 2)
    {
      v18 = sub_22FFB12D8();
      v19 = sub_22FFB1838();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_22FE99000, v18, v19, "Unable to parse device udid from sep attestation", v20, 2u);
        MEMORY[0x23190EFF0](v20, -1, -1);
      }

      sub_22FEA55AC(v15, v14);
      sub_22FEA55AC(v17, v16);

      return 0;
    }

    else
    {
      v23 = v31;
      v22 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_22FFB2D20;
      v25 = MEMORY[0x277D84D30];
      *(v24 + 56) = MEMORY[0x277D84CC0];
      *(v24 + 64) = v25;
      v26 = MEMORY[0x277D84D38];
      *(v24 + 32) = v23;
      v27 = MEMORY[0x277D84D90];
      *(v24 + 96) = v26;
      *(v24 + 104) = v27;
      *(v24 + 72) = v22;
      v5 = sub_22FFB14D8();
      sub_22FEA55AC(v15, v14);
      sub_22FEA55AC(v17, v16);
    }
  }

  return v5;
}

uint64_t Validated.AttestationBundle.provisioningCertificateChain.getter()
{
  v1 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v0, v3, type metadata accessor for AttestationBundle);
  v4 = *&v3[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
  v5 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v6 = *(v4 + v5);

  sub_22FF906D4(v3, type metadata accessor for Proto_AttestationBundle);
  return v6;
}

uint64_t Validated.AttestationBundle.keyExpiration.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_22FFB0EE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v1, v11, type metadata accessor for AttestationBundle);
  v12 = *&v11[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
  v13 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v12 + v13, v4, &qword_27DAF1520, &qword_22FFB3A30);
  v14 = *(v6 + 48);
  if (v14(v4, 1, v5) == 1)
  {
    sub_22FFB0ED8();
    if (v14(v4, 1, v5) != 1)
    {
      sub_22FEAEA34(v4, &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  sub_22FF906D4(v11, type metadata accessor for Proto_AttestationBundle);
  sub_22FFB0EB8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t Validated.AttestationBundle.routingHint.getter()
{
  v1 = *(v0 + *(type metadata accessor for Validated.AttestationBundle(0) + 24));

  return v1;
}

uint64_t Validated.AttestationBundle.releaseDigest.getter()
{
  v1 = v0 + *(type metadata accessor for Validated.AttestationBundle(0) + 28);
  v2 = *v1;
  sub_22FEBF8F0(*v1, *(v1 + 8));
  return v2;
}

uint64_t Validated.AttestationBundle.ensembleUDIDs.getter()
{
  type metadata accessor for Validated.AttestationBundle(0);
}

uint64_t Validated.AttestationBundle.init(bundle:sepAttestation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = sub_22FFB1398();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22FFB13C8();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22FFB0E58();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_AttestationBundle(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Release(0);
  v17 = MEMORY[0x28223BE20](v68);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v69 = &v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38B8, &qword_22FFBF438);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v76 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v77 = &v68 - v24;
  v25 = *a2;
  v26 = a2[1];
  v27 = a2[2];
  v28 = a2[3];
  v83 = v27;
  v84 = v25;
  v82 = type metadata accessor for Validated.AttestationBundle(0);
  v29 = *(v82 + 32);
  v80 = a3;
  *(a3 + v29) = 0;
  v85 = a1;
  if (v26 >> 60 == 15)
  {
    v30 = *(a1 + *(v11 + 20));
    swift_beginAccess();
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    sub_22FEA5608(v31, v32);
    SEP.Attestation.init(from:)(v31, v32, &v88);
    v26 = v89;
    v28 = v91;
    v83 = v90;
    v84 = v88;
  }

  v81 = v28;
  sub_22FF9064C(v85, v16, type metadata accessor for AttestationBundle);
  sub_22FF9064C(v16, v13, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v13, 0, 0, v19);
  sub_22FF906D4(v16, type metadata accessor for AttestationBundle);
  v33 = v69;
  sub_22FF90754(v19, v69, type metadata accessor for Release);
  sub_22FFB0E48();
  sub_22FF7BE88(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
  sub_22FFB0E38();
  sub_22FFB0E18();
  v34 = sub_22FF9F990();
  v36 = v35;

  (*(v70 + 8))(v10, v71);
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v37 = v72;
  v38 = v74;
  sub_22FFB1388();
  sub_22FEA5608(v34, v36);
  sub_22FF9EA78(v34, v36, v37);
  sub_22FEA55AC(v34, v36);
  v39 = v77;
  sub_22FFB1368();
  sub_22FEA55AC(v34, v36);
  sub_22FF906D4(v33, type metadata accessor for Release);
  (*(v73 + 8))(v37, v38);
  v41 = v78;
  v40 = v79;
  v42 = v82;
  (*(v78 + 56))(v39, 0, 1, v79);
  v43 = v80;
  v44 = sub_22FF9064C(v85, v80, type metadata accessor for AttestationBundle);
  if (v26 >> 60 == 15)
  {
    v45 = 0;
    v46 = 0;
    v47 = v76;
  }

  else
  {
    v79 = &v68;
    v87[0] = 0;
    v86 = 0;
    MEMORY[0x28223BE20](v44);
    *(&v68 - 2) = v87;
    *(&v68 - 1) = &v86;
    v48 = v84;
    v49 = v26;
    v50 = v26;
    v51 = v83;
    v52 = v81;
    sub_22FEDC90C(v84, v49, v83, v81);
    sub_22FED55F8(v51, v52, sub_22FEBFA54);
    sub_22FECB858(v48, v50, v51, v52);
    if (v90 == 2)
    {
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v54 = v88;
      v53 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_22FFB2D20;
      v56 = MEMORY[0x277D84D30];
      *(v55 + 56) = MEMORY[0x277D84CC0];
      *(v55 + 64) = v56;
      v57 = MEMORY[0x277D84D38];
      *(v55 + 32) = v54;
      v58 = MEMORY[0x277D84D90];
      *(v55 + 96) = v57;
      *(v55 + 104) = v58;
      *(v55 + 72) = v53;
      v45 = sub_22FFB14D8();
    }

    v26 = v50;
    v47 = v76;
    v42 = v82;
  }

  v59 = (v43 + v42[5]);
  *v59 = v45;
  v59[1] = v46;
  v60 = (v43 + v42[6]);
  *v60 = 0;
  v60[1] = 0;
  sub_22FEBF3A4(v39, v47, &qword_27DAF38B8, &qword_22FFBF438);
  if ((*(v41 + 48))(v47, 1, v40) == 1)
  {
    sub_22FEAEA34(v39, &qword_27DAF38B8, &qword_22FFBF438);
    sub_22FECB858(v84, v26, v83, v81);
    v61 = 0;
    v62 = 0xF000000000000000;
  }

  else
  {
    v63 = v39;
    v64 = v75;
    (*(v41 + 32))(v75, v47, v40);
    v91 = v40;
    v92 = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    v65 = __swift_allocate_boxed_opaque_existential_1(&v88);
    (*(v41 + 16))(v65, v64, v40);
    __swift_project_boxed_opaque_existential_1(&v88, v91);
    sub_22FFB0618();
    sub_22FECB858(v84, v26, v83, v81);
    (*(v41 + 8))(v64, v40);
    sub_22FEAEA34(v63, &qword_27DAF38B8, &qword_22FFBF438);
    v61 = v87[0];
    v62 = v87[1];
    __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  result = sub_22FF906D4(v85, type metadata accessor for AttestationBundle);
  v67 = (v43 + v42[7]);
  *v67 = v61;
  v67[1] = v62;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AttestationBundle.jsonString()()
{
  v0 = sub_22FFB0FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0FB8();
  type metadata accessor for Proto_AttestationBundle(0);
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  v4 = sub_22FFB1138();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

void sub_22FF88030()
{
  v88 = *MEMORY[0x277D85DE8];
  v0 = sub_22FFB13C8();
  v79 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22FFB1398();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFB0658();
  v80 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22FFB06B8();
  v9 = *(v84 - 8);
  v10 = MEMORY[0x28223BE20](v84);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v69 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v69 - v15;
  MEMORY[0x28223BE20](v14);
  v83 = &v69 - v17;
  if (os_variant_allows_internal_security_policies())
  {
    v18 = sub_22FFB1488();
    v19 = sub_22FFB1488();
    v76 = v9;
    v20 = v19;
    v21 = CFPreferencesCopyAppValue(v18, v19);

    if (v21)
    {
      v85 = v21;
      if (swift_dynamicCast())
      {
        v75 = v86;
        type metadata accessor for Proto_AttestationBundle(0);
        sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
        v22 = sub_22FFB1178();
        v24 = v23;
        v74 = v22;
        sub_22FFB0668();

        v25 = static Environment.default.getter(&v85);
        v75 = v24;
        v86 = Environment.description.getter(v25);
        v87 = v26;
        v27 = *MEMORY[0x277CC91C0];
        v28 = v80;
        v69 = v80[13];
        v72 = (v80 + 13);
        v69(v8, v27, v6);
        v71 = sub_22FEB2CAC();
        sub_22FFB0698();
        v70 = v28[1];
        v70(v8, v6);

        v29 = *(v76 + 8);
        v73 = v76 + 8;
        v80 = v29;
        (v29)(v16, v84);
        sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        sub_22FFB1388();
        v30 = v74;
        v31 = v75;
        sub_22FEA5608(v74, v75);
        sub_22FF9EA78(v30, v31, v2);
        sub_22FEA55AC(v30, v31);
        sub_22FFB1368();
        v32 = v0;
        v33 = v83;
        (*(v79 + 8))(v2, v32);
        v34 = sub_22FF95DBC();
        v36 = v35;
        (*(v77 + 8))(v5, v78);
        v86 = v34;
        v87 = v36;
        MEMORY[0x23190DD10](0x617473657474612ELL, 0xEC0000006E6F6974);
        v69(v8, *MEMORY[0x277CC91D8], v6);
        v37 = v82;
        sub_22FFB06A8();
        v70(v8, v6);

        if (qword_27DAF14A0 != -1)
        {
          swift_once();
        }

        v38 = sub_22FFB12F8();
        __swift_project_value_buffer(v38, qword_27DB05AB0);
        v39 = v81;
        v40 = v84;
        (*(v76 + 16))(v81, v37, v84);
        v41 = sub_22FFB12D8();
        v42 = sub_22FFB1828();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v86 = v44;
          *v43 = 136446210;
          sub_22FF7BE88(&qword_27DAF3728, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v45 = sub_22FFB1BA8();
          v47 = v46;
          (v80)(v39, v40);
          v48 = sub_22FF9E448(v45, v47, &v86);

          *(v43 + 4) = v48;
          _os_log_impl(&dword_22FE99000, v41, v42, "Writing attestation bundle to %{public}s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x23190EFF0](v44, -1, -1);
          MEMORY[0x23190EFF0](v43, -1, -1);
        }

        else
        {

          (v80)(v39, v40);
        }

        v49 = [objc_opt_self() defaultManager];
        v50 = sub_22FFB0678();
        v86 = 0;
        v51 = [v49 createDirectoryAtURL:v50 withIntermediateDirectories:1 attributes:0 error:&v86];

        if (v51)
        {
          v52 = v86;
          v53 = v82;
          v55 = v74;
          v54 = v75;
          sub_22FFB0808();
          sub_22FEA55AC(v55, v54);
          v67 = v53;
          v68 = v80;
          (v80)(v67, v40);
          v68(v33, v40);
        }

        else
        {
          v56 = v86;
          v57 = sub_22FFB0648();

          swift_willThrow();
          sub_22FEA55AC(v74, v75);
          v58 = v80;
          (v80)(v82, v40);
          v58(v33, v40);
          if (qword_27DAF14A0 != -1)
          {
            swift_once();
          }

          v59 = sub_22FFB12F8();
          __swift_project_value_buffer(v59, qword_27DB05AB0);
          v60 = v57;
          v61 = sub_22FFB12D8();
          v62 = sub_22FFB1838();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            *v63 = 138543362;
            v65 = v57;
            v66 = _swift_stdlib_bridgeErrorToNSError();
            *(v63 + 4) = v66;
            *v64 = v66;
            _os_log_impl(&dword_22FE99000, v61, v62, "Tracing attestation bundle failed with error %{public}@", v63, 0xCu);
            sub_22FEAEA34(v64, &qword_27DAF1680, &unk_22FFB4B10);
            MEMORY[0x23190EFF0](v64, -1, -1);
            MEMORY[0x23190EFF0](v63, -1, -1);
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_22FF88A6C(uint64_t a1)
{
  v2 = sub_22FF7BE88(&qword_27DAF38E8, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FF88AD8(uint64_t a1)
{
  v2 = sub_22FF7BE88(&qword_27DAF38E8, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t CloudAttestationError.errorCode.getter()
{
  v1 = type metadata accessor for CloudAttestationError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v0, v3, type metadata accessor for CloudAttestationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return 4;
      }

      else
      {
        return 6;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 7;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      return 8;
    }

    else
    {
      return 10;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_22FF906D4(v3, type metadata accessor for CloudAttestationError);
      return 2;
    }

    else
    {
      sub_22FF906D4(v3, type metadata accessor for CloudAttestationError);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_22FF906D4(v3, type metadata accessor for CloudAttestationError);
    return 3;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = sub_22FFB0908();
    (*(*(v5 - 8) + 8))(v3, v5);
    return 5;
  }

  else
  {
    v7 = sub_22FFB0958();
    (*(*(v7 - 8) + 8))(v3, v7);
    return 9;
  }
}

uint64_t AttestationBundle.atLogProofs.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v27 - v3;
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_TransparencyProofs(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v16 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v15 + v16, v10, &qword_27DAF2118, &unk_22FFB5C70);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    (*(v5 + 56))(&v14[*(v11 + 20)], 1, 1, v4);
    if (v17(v10, 1, v11) != 1)
    {
      sub_22FEAEA34(v10, &qword_27DAF2118, &unk_22FFB5C70);
    }
  }

  else
  {
    sub_22FF90754(v10, v14, type metadata accessor for Proto_TransparencyProofs);
  }

  v18 = &v14[*(v11 + 20)];
  v19 = v27;
  sub_22FEBF3A4(v18, v27, &qword_27DAF37C0, &unk_22FFB5C60);
  v20 = *(v5 + 48);
  if (v20(v19, 1, v4) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    sub_22FF906D4(v14, type metadata accessor for Proto_TransparencyProofs);
    v21 = *(v4 + 20);
    v22 = type metadata accessor for LogEntry(0);
    (*(*(v22 - 8) + 56))(&v7[v21], 1, 1, v22);
    v23 = *(v4 + 24);
    v24 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v24 - 8) + 56))(&v7[v23], 1, 1, v24);
    if (v20(v19, 1, v4) != 1)
    {
      sub_22FEAEA34(v19, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    sub_22FF906D4(v14, type metadata accessor for Proto_TransparencyProofs);
    sub_22FF90754(v19, v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  sub_22FF7BE88(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v25 = sub_22FFB1178();
  sub_22FF906D4(v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return v25;
}

uint64_t sub_22FF89230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Cryptex(0);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Proto_Cryptex.Salt(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 32);
  *a1 = v9;
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v11;
  sub_22FEA5608(v10, v11);
  v14 = sub_22FEA55AC(v13, v12);
  v15 = *(a2 + 56);
  if (v15)
  {
    v16 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 28);

    *(a1 + v16) = v15;
  }

  if (v9 & 4) != 0 && (v14 = sub_22FECB038(&unk_2844D8490, v10, v11), (v14))
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v17, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF90754(v8, a1 + v17, type metadata accessor for Proto_Cryptex.Salt);
    v18 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1 + v17, 0, 1, v18);
  }

  else
  {
    MEMORY[0x28223BE20](v14);
    *(&v23 - 2) = a2;
    sub_22FF7BE88(qword_281490550, type metadata accessor for Proto_Cryptex, &protocol conformance descriptor for Proto_Cryptex);
    v20 = v24;
    sub_22FFB11B8();
    v21 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v21, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF90754(v20, a1 + v21, type metadata accessor for Proto_Cryptex);
    v22 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v22 - 8) + 56))(a1 + v21, 0, 1, v22);
  }
}

uint64_t *sub_22FF89560(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >> 60 != 15)
  {
    v3 = *(a2 + 16);
    v4 = *result;
    v5 = result[1];
    v6 = result;
    sub_22FEA5608(v3, *(a2 + 24));
    result = sub_22FEA55AC(v4, v5);
    *v6 = v3;
    v6[1] = v2;
  }

  return result;
}

uint64_t sub_22FF895CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Proto_SealedHash.Entry(0);
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (a2 + 32);
    sub_22FF226F0(&v20);
    v10 = v21;
    *a1 = v20;
    v18 = a1;
    *(a1 + 8) = v10;
    v23 = MEMORY[0x277D84F90];
    v11 = sub_22FECDB58(0, v8, 0);
    v12 = v23;
    while (1)
    {
      v13 = v9[1];
      v22[0] = *v9;
      v22[1] = v13;
      v14 = v9[3];
      v22[2] = v9[2];
      v22[3] = v14;
      MEMORY[0x28223BE20](v11);
      *(&v18 - 2) = v22;
      sub_22FEBF904(v22, &v20);
      sub_22FF7BE88(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);
      sub_22FFB11B8();
      if (v2)
      {
        break;
      }

      sub_22FEBF960(v22);
      v23 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22FECDB58((v15 > 1), v16 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v16 + 1;
      v11 = sub_22FF90754(v7, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, type metadata accessor for Proto_SealedHash.Entry);
      v9 += 4;
      if (!--v8)
      {
        a1 = v18;
        goto LABEL_10;
      }
    }

    sub_22FEBF960(v22);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v12 = MEMORY[0x277D84F90];
LABEL_10:

    *(a1 + 16) = v12;
  }

  return result;
}

uint64_t sub_22FF89868(uint64_t a1, __int128 *a2)
{
  v5 = type metadata accessor for Proto_SecureConfig(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = *(a2 + 32);
  v16 = *a2;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_22FF91A04(&v16, v15);
  sub_22FEA55AC(v8, v9);
  *(a1 + 8) = v16;
  v14 = a2;
  sub_22FF7BE88(&qword_28148FD30, type metadata accessor for Proto_SecureConfig, &protocol conformance descriptor for Proto_SecureConfig);
  result = sub_22FFB11B8();
  if (!v2)
  {
    v11 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v11, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF90754(v7, a1 + v11, type metadata accessor for Proto_SecureConfig);
    v12 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a1 + v11, 0, 1, v12);
  }

  return result;
}

uint64_t sub_22FF89A38(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >> 60 != 15)
  {
    v3 = result;
    v4 = *(a2 + 16);
    sub_22FEA5608(v4, *(a2 + 24));
    sub_22FEA5608(v4, v2);
    SecureConfig.init(from:)(v4, v2, v12);
    v5 = v13;
    if (v13)
    {
      v7 = v14;
      v6 = v15;
      v9 = v12[0];
      v8 = v12[1];
      sub_22FEA56EC(v4, v2);
      v10 = *(v3 + 24);
      v11 = *(v3 + 32);
      sub_22FEA5608(v7, v6);
      sub_22FEA55AC(v10, v11);
      result = sub_22FF91A7C(v9, v8, v5, v7, v6);
      *(v3 + 24) = v7;
      *(v3 + 32) = v6;
    }

    else
    {
      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_22FEA56EC(v4, v2);
    }
  }

  return result;
}

uint64_t sub_22FF89B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = type metadata accessor for Proto_SealedHash.Entry(0);
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (a2 + 32);
    sub_22FF226F0(v23);
    v10 = BYTE8(v23[0]);
    *a1 = *&v23[0];
    v19 = a1;
    *(a1 + 8) = v10;
    v24 = MEMORY[0x277D84F90];
    v11 = sub_22FECDB58(0, v8, 0);
    v12 = v24;
    do
    {
      v13 = v9[1];
      v23[0] = *v9;
      v23[1] = v13;
      v14 = v9[3];
      v23[2] = v9[2];
      v23[3] = v14;
      MEMORY[0x28223BE20](v11);
      *(&v18 - 2) = v23;
      sub_22FEBF904(v23, v22);
      sub_22FF7BE88(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);
      sub_22FFB11B8();
      sub_22FEBF960(v23);
      v24 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22FECDB58((v15 > 1), v16 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v16 + 1;
      v11 = sub_22FF90754(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for Proto_SealedHash.Entry);
      v9 += 4;
      --v8;
    }

    while (v8);
    a1 = v19;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v12 = MEMORY[0x277D84F90];
  }

  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_22FF89E0C(uint64_t a1, __int128 *a2)
{
  *a1 = *(a2 + 32);
  v12 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 8) = v12;
  sub_22FF91A04(&v12, &v11);
  result = sub_22FEA55AC(v4, v5);
  v7 = *(a2 + 3);
  if (v7 >> 60 != 15)
  {
    v8 = *(a2 + 2);
    v9 = (a1 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 24));
    sub_22FEA5608(v8, v7);
    sub_22FEAEA34(v9, &qword_27DAF2130, &unk_22FFB5C80);
    *v9 = v8;
    v9[1] = v7;
    v10 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  return result;
}

uint64_t sub_22FF89F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF75E50(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF8A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF8A028, 0, 0);
}

uint64_t sub_22FF8A028()
{
  v1 = NodeAttestor.attestingKey.getter();
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22FF8A124;
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v7, v8, v2, v5, v6, v4);
}

uint64_t sub_22FF8A124()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_22FF8A230()
{
  v0 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v1 * 1.0e-18 + v0;
}

void *sub_22FF8A2B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF8A3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22FFA619C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22FF8D3FC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Proto_SealedHash(0);
    v19 = *(v12 - 8);
    sub_22FF90754(v11 + *(v19 + 72) * v8, a3, type metadata accessor for Proto_SealedHash);
    sub_22FF8C2A8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Proto_SealedHash(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_22FF8A518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v8 = sub_22FFA62AC(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v14 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22FF8D654();
      v12 = v14;
    }

    sub_22FEA2968((*(v12 + 56) + 32 * v10), a5);
    sub_22FF8C494(v10, v12);
    *v6 = v12;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_22FF8A5C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Proto_SealedHash(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3900, &qword_22FFBF978);
  v40 = v4;
  result = sub_22FFB1AD8();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22FF90754(v28, v41, type metadata accessor for Proto_SealedHash);
      }

      else
      {
        sub_22FF9064C(v28, v41, type metadata accessor for Proto_SealedHash);
      }

      sub_22FFB1CA8();
      sub_22FFB1548();
      result = sub_22FFB1CF8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_22FF90754(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Proto_SealedHash);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22FF8A940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3928, &qword_22FFBFA10);
  v34 = v4;
  result = sub_22FFB1AD8();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 32 * (v18 | (v8 << 6));
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + v21;
      v35 = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v34)
      {
        sub_22FEA2968((v22 + v21), v36);
      }

      else
      {
        sub_22FEBF2A4(v22 + v21, v36);
      }

      sub_22FFB1CA8();
      MEMORY[0x23190E460](v35);
      result = sub_22FFB1CF8();
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
      v16 = 32 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v35;
      *(v17 + 16) = v24;
      *(v17 + 24) = v25;
      result = sub_22FEA2968(v36, (*(v7 + 56) + v16));
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22FF8AC14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SEP.SealedHash(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFB0958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3920, &unk_22FFC02C0);
  v43 = v4;
  result = sub_22FFB1AD8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22FF90754(v27 + v28 * v24, v47, type metadata accessor for SEP.SealedHash);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22FF9064C(v29 + v28 * v24, v47, type metadata accessor for SEP.SealedHash);
      }

      sub_22FF7BE88(&qword_281491320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22FFB1428();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_22FF90754(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SEP.SealedHash);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22FF8B0B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3930, &qword_22FFBFA18);
  v36 = v4;
  result = sub_22FFB1AD8();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_22FEBF3A4(v26, &v37, &qword_27DAF1CC0, &qword_22FFBFA20);
      }

      sub_22FFB1CA8();
      sub_22FFB1548();
      result = sub_22FFB1CF8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22FF8B37C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3938, &qword_22FFBFA28);
  v33 = v4;
  result = sub_22FFB1AD8();
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
        sub_22FEA2968(v24, v34);
      }

      else
      {
        sub_22FEBF2A4(v24, v34);
      }

      sub_22FFB1CA8();
      sub_22FFB1548();
      result = sub_22FFB1CF8();
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
      result = sub_22FEA2968(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_22FF8B634(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3940, &unk_22FFBFA30);
  v33 = v4;
  result = sub_22FFB1AD8();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_22FEA5608(v34, *(&v34 + 1));
      }

      sub_22FFB1CA8();
      sub_22FFB1548();
      result = sub_22FFB1CF8();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FF8B8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_22FFB0CC8();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3918, &unk_22FFBFA00);
  v37 = v4;
  result = sub_22FFB1AD8();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_22FFB1C98();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22FF8BC3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3910, &qword_22FFBF9F8);
  v30 = v4;
  result = sub_22FFB1AD8();
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_22FFB1CA8();
      MEMORY[0x23190E460](v20);
      result = sub_22FFB1CF8();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_22FF8BECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22FFB0958();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3898, &unk_22FFBF3C0);
  v39 = v4;
  result = sub_22FFB1AD8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_22FF7BE88(&qword_281491320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22FFB1428();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_22FF8C2A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FFB1958() + 1) & ~v5;
    while (1)
    {
      sub_22FFB1CA8();

      sub_22FFB1548();
      v9 = sub_22FFB1CF8();

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
      v15 = *(*(type metadata accessor for Proto_SealedHash(0) - 8) + 72);
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

uint64_t sub_22FF8C494(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FFB1958() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 32 * v6);
      sub_22FFB1CA8();
      MEMORY[0x23190E460](v10);
      result = sub_22FFB1CF8();
      v11 = result & v7;
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
        v13 = (v12 + 32 * v3);
        v14 = (v12 + 32 * v6);
        if (v3 != v6 || v13 >= v14 + 2)
        {
          v15 = v14[1];
          *v13 = *v14;
          v13[1] = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
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

unint64_t sub_22FF8C62C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FFB1958() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22FFB1C98();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_22FFB0CC8() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22FF8C7D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22FFA619C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Proto_SealedHash(0);
      return sub_22FF91AF4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Proto_SealedHash);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22FF8D3FC();
    goto LABEL_7;
  }

  sub_22FF8A5C8(v15, a4 & 1);
  v22 = sub_22FFA619C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_22FFB1C18();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22FF8D0D4(v12, a2, a3, a1, v18);
}

_OWORD *sub_22FF8C944(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_22FFA62AC(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_22FF8D654();
      v15 = v23;
      goto LABEL_8;
    }

    sub_22FF8A940(v20, a6 & 1);
    v15 = sub_22FFA62AC(a2, a3, a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_22FFB1C18();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v26);

    return sub_22FEA2968(a1, v26);
  }

  else
  {
    sub_22FF8D180(v15, a2, a3, a4, a5, a1, v25);
  }
}

uint64_t sub_22FF8CAC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22FFB0958();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22FFA6214(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for SEP.SealedHash(0);
      return sub_22FF91AF4(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for SEP.SealedHash);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_22FF8D7F0();
    goto LABEL_7;
  }

  sub_22FF8AC14(v17, a3 & 1);
  v24 = sub_22FFA6214(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_22FFB1C18();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_22FF8D1F4(v14, v11, a1, v20);
}

_OWORD *sub_22FF8CC94(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22FFA619C(a2, a3);
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
      sub_22FF8DCD0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22FF8B37C(v16, a4 & 1);
    v11 = sub_22FFA619C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22FFB1C18();
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

    return sub_22FEA2968(a1, v22);
  }

  else
  {
    sub_22FF8D2E4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_22FF8CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22FFA619C(a3, a4);
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
      sub_22FF8B634(v18, a5 & 1);
      v13 = sub_22FFA619C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_22FFB1C18();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22FF8DE74();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_22FEA55AC(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t sub_22FF8CF6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22FFA6338(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22FF8DFF8();
      goto LABEL_7;
    }

    sub_22FF8B8F0(v13, a3 & 1);
    v24 = sub_22FFA6338(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22FFB1C18();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_22FFB0CC8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22FF8D350(v10, a2, a1, v16);
}

uint64_t sub_22FF8D0D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Proto_SealedHash(0);
  result = sub_22FF90754(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Proto_SealedHash);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_22FF8D180(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a7[6] + 32 * a1);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  result = sub_22FEA2968(a6, (a7[7] + 32 * a1));
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

uint64_t sub_22FF8D1F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22FFB0958();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for SEP.SealedHash(0);
  result = sub_22FF90754(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for SEP.SealedHash);
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

_OWORD *sub_22FF8D2E4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22FEA2968(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22FF8D350(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22FFB0CC8();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_22FF8D3FC()
{
  v1 = v0;
  v2 = type metadata accessor for Proto_SealedHash(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3900, &qword_22FFBF978);
  v4 = *v0;
  v5 = sub_22FFB1AC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22FF9064C(*(v4 + 56) + v26, v30, type metadata accessor for Proto_SealedHash);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22FF90754(v25, *(v27 + 56) + v26, type metadata accessor for Proto_SealedHash);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_22FF8D654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3928, &qword_22FFBFA10);
  v2 = *v0;
  v3 = sub_22FFB1AC8();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v22 = *v18;
        sub_22FEBF2A4(*(v2 + 56) + v17, v23);
        v21 = *(v4 + 48) + v17;
        *v21 = v22;
        *(v21 + 16) = v20;
        *(v21 + 24) = v19;
        sub_22FEA2968(v23, (*(v4 + 56) + v17));
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

char *sub_22FF8D7F0()
{
  v1 = v0;
  v2 = type metadata accessor for SEP.SealedHash(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22FFB0958();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3920, &unk_22FFC02C0);
  v5 = *v0;
  v6 = sub_22FFB1AC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_22FF9064C(*(v5 + 56) + v26, v35, type metadata accessor for SEP.SealedHash);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_22FF90754(v25, *(v27 + 56) + v26, type metadata accessor for SEP.SealedHash);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

void *sub_22FF8DB1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3930, &qword_22FFBFA18);
  v2 = *v0;
  v3 = sub_22FFB1AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_22FEBF3A4(*(v2 + 56) + 32 * v17, v27, &qword_27DAF1CC0, &qword_22FFBFA20);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
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

void *sub_22FF8DCD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3938, &qword_22FFBFA28);
  v2 = *v0;
  v3 = sub_22FFB1AC8();
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
        sub_22FEBF2A4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22FEA2968(v25, (*(v4 + 56) + v22));
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

void *sub_22FF8DE74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3940, &unk_22FFBFA30);
  v2 = *v0;
  v3 = sub_22FFB1AC8();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_22FEA5608(v22, *(&v22 + 1));
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

void *sub_22FF8DFF8()
{
  v1 = v0;
  v29 = sub_22FFB0CC8();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3918, &unk_22FFBFA00);
  v3 = *v0;
  v4 = sub_22FFB1AC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

char *sub_22FF8E260()
{
  v1 = v0;
  v33 = sub_22FFB0958();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3898, &unk_22FFBF3C0);
  v3 = *v0;
  v4 = sub_22FFB1AC8();
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

char *sub_22FF8E4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = MEMORY[0x277CC95F0];
  v4 = sub_22FF8A2B0(*(a1 + 16), 0, &qword_27DAF1D60, &qword_22FFB43C0, MEMORY[0x277CC95F0]);
  v5 = *(sub_22FFB0958() - 8);
  v6 = sub_22FF8FF60(&v9, &v4[(*(v5 + 80) + 32) & ~*(v5 + 80)], v1, a1, v3);
  v7 = v9;

  sub_22FF6F7A8(v7);
  if (v6 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_22FF8E600(uint64_t *a1)
{
  v2 = *(sub_22FFB0958() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22FF90208(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22FF8E6A8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22FF8E6A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FFB1B98();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22FFB0958();
        v6 = sub_22FFB1718();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22FFB0958() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22FF8EA98(v8, v9, a1, v4);
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
    return sub_22FF8E7D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FF8E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22FFB0958();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
      v26 = sub_22FFB1468();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FF8EA98(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_22FFB0958();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_22FF8FB54(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_22FF8F4C0(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_22FF8FB54(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_22FF8FAC8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
      LODWORD(v133) = sub_22FFB1468();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_22FFB1468() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22FEC2F98(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_22FEC2F98((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_22FF8F4C0(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_22FF8FB54(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_22FF8FAC8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
    v109 = sub_22FFB1468();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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

uint64_t sub_22FF8F4C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_22FFB0958();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
          LOBYTE(v35) = sub_22FFB1468();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_22FF7BE88(&qword_27DAF3908, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
        LOBYTE(v22) = sub_22FFB1468();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_22FF8FB80(&v55, &v54, &v53, MEMORY[0x277CC95F0]);
  return 1;
}

uint64_t sub_22FF8FAC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FF8FB54(v3);
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

uint64_t sub_22FF8FB80(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_22FF8FC7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v8)
    {
      v9 = a4 >> 32;
    }

    else
    {
      v9 = BYTE6(a5);
    }

    if (a2)
    {
      goto LABEL_6;
    }

LABEL_43:
    v10 = 0;
    goto LABEL_45;
  }

LABEL_38:
  if (v8 == 2)
  {
    v9 = *(a4 + 24);
    if (!a2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_43;
    }
  }

LABEL_6:
  if (!a3)
  {
    v10 = 0;
    goto LABEL_45;
  }

  if (a3 < 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  v20 = a3;
  v21 = a1;
  v10 = 0;
  v11 = a3 - 1;
  while (1)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v12 = *(a4 + 16);
LABEL_14:
        if (v9 == v12)
        {
          goto LABEL_46;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = a4;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    if (!v9)
    {
LABEL_46:
      a1 = v21;
      goto LABEL_45;
    }

LABEL_17:
    if (__OFSUB__(v9--, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_55;
      }

      if (v9 < *(a4 + 16))
      {
        goto LABEL_49;
      }

      if (v9 >= *(a4 + 24))
      {
        goto LABEL_51;
      }

      v15 = sub_22FFB0588();
      if (!v15)
      {
        goto LABEL_57;
      }

      v16 = v15;
      a1 = sub_22FFB05B8();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_53;
      }

      goto LABEL_33;
    }

    if (v8)
    {
      if (v9 < a4 || v9 >= a4 >> 32)
      {
        goto LABEL_50;
      }

      v18 = sub_22FFB0588();
      if (!v18)
      {
        goto LABEL_56;
      }

      v16 = v18;
      a1 = sub_22FFB05B8();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_52;
      }

LABEL_33:
      v14 = *(v16 + v17);
      goto LABEL_34;
    }

    if (v9 >= BYTE6(a5))
    {
      goto LABEL_48;
    }

    v22 = a4;
    v23 = a5;
    v24 = BYTE2(a5);
    v25 = BYTE3(a5);
    v26 = BYTE4(a5);
    v27 = BYTE5(a5);
    v14 = *(&v22 + v9);
LABEL_34:
    *(a2 + v10) = v14;
    if (v11 == v10)
    {
      break;
    }

    if (__OFADD__(++v10, 1))
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  v10 = v20;
  a1 = v21;
LABEL_45:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v9;
  return v10;
}

uint64_t sub_22FF8FF60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL _s16CloudAttestation13PublicKeyDataO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_22FEA5600(*a2, a2[1]);
      sub_22FEA5600(v2, v3);
      v7 = v3 & 0xDFFFFFFFFFFFFFFFLL;
      v9 = v5 & 0xDFFFFFFFFFFFFFFFLL;
      v6 = v2;
      v8 = v4;
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_22FEA5600(*a2, a2[1]);
    sub_22FEA5600(v2, v3);
    v6 = v2;
    v7 = v3;
    v8 = v4;
    v9 = v5;
LABEL_7:
    v10 = sub_22FEC3DC8(v6, v7, v8, v9);
    goto LABEL_8;
  }

  sub_22FEA5600(*a2, a2[1]);
  sub_22FEA5600(v2, v3);
  v10 = 0;
LABEL_8:
  sub_22FEA55A4(v2, v3);
  sub_22FEA55A4(v4, v5);
  return v10;
}

BOOL _s16CloudAttestation9ValidatedO0B6BundleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_22FF121B0(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_22FFB0F88();
  sub_22FF7BE88(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if ((sub_22FFB1478() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for Validated.AttestationBundle(0);
  v9 = v8[5];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }

    if (*v10 != *v12 || v11 != v13)
    {
      v15 = v8;
      v16 = sub_22FFB1BC8();
      v8 = v15;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = v8[6];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }

    if (*v18 != *v20 || v19 != v21)
    {
      v23 = v8;
      v24 = sub_22FFB1BC8();
      v8 = v23;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  v25 = v8[7];
  v27 = *(a1 + v25);
  v26 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v30 = *v28;
  v29 = v28[1];
  if (v26 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      v31 = v8;
      sub_22FEBF8F0(v27, v26);
      sub_22FEBF8F0(v30, v29);
      sub_22FEA56EC(v27, v26);
      goto LABEL_29;
    }

LABEL_26:
    sub_22FEBF8F0(v27, v26);
    sub_22FEBF8F0(v30, v29);
    sub_22FEA56EC(v27, v26);
    sub_22FEA56EC(v30, v29);
    return 0;
  }

  if (v29 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v31 = v8;
  sub_22FEBF8F0(v27, v26);
  sub_22FEBF8F0(v30, v29);
  v33 = sub_22FEC3DC8(v27, v26, v30, v29);
  sub_22FEA56EC(v30, v29);
  sub_22FEA56EC(v27, v26);
  if (!v33)
  {
    return 0;
  }

LABEL_29:
  v34 = v31[8];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35)
  {
    return v36 && (sub_22FEE766C(v35, v36) & 1) != 0;
  }

  return !v36;
}

void sub_22FF905E4(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_22FF9064C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF906D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF90754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of Attestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 56) + **(a8 + 56));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of Attestor.attest(key:using:expiration:appData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 64) + **(a7 + 64));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22FEAA538;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of Attestor.attest(key:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 72) + **(a7 + 72));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22FEAA0D4;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t getEnumTagSinglePayload for EnforcementOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for EnforcementOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FF90E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t dispatch thunk of Validator.validate<A>(bundle:nonce:policy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = (*(a11 + 48) + **(a11 + 48));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = sub_22FEAA538;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of Validator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 64) + **(a8 + 64));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of Validator.validate(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 72) + **(a6 + 72));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_22FF914A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF91548(uint64_t a1)
{
  type metadata accessor for AttestationBundle(319);
  if (v1 <= 0x3F)
  {
    sub_22FF9161C(319, &qword_28148F168, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22FF9161C(319, &qword_281491340, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        sub_22FF91668(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FF9161C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22FFB1888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22FF91668(uint64_t a1)
{
  if (!qword_28148F128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAF3740, &unk_22FFB4290);
    v1 = sub_22FFB1888();
    if (!v2)
    {
      atomic_store(v1, &qword_28148F128);
    }
  }
}

uint64_t sub_22FF916D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FF9172C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

void sub_22FF917AC(uint64_t a1)
{
  sub_22FF91880();
  if (v1 <= 0x3F)
  {
    sub_22FED85D4();
    if (v2 <= 0x3F)
    {
      sub_22FF918B0(319, &qword_27DAF38D8, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_22FF918B0(319, &qword_27DAF38E0, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22FF91880()
{
  result = qword_27DAF38D0;
  if (!qword_27DAF38D0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DAF38D0);
  }

  return result;
}

void sub_22FF918B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22FF91A7C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    sub_22FEA55AC(result, a2);

    return sub_22FEA55AC(a4, a5);
  }

  return result;
}

uint64_t sub_22FF91AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF91BD0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v103 = a1;
  v101 = a3;
  v114 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v84 - v5;
  v7 = type metadata accessor for Proto_Cryptex(0);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3948, &unk_22FFBFBB8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v94 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v84 - v12;
  v96 = type metadata accessor for Proto_SealedHash.Entry(0);
  v95 = *(v96 - 8);
  v13 = MEMORY[0x28223BE20](v96);
  v92 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v84 - v17;
  v19 = type metadata accessor for Proto_SealedHashLedger(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for Proto_SealedHash(0);
  v100 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v97 = &v84 - v27;
  v28 = *(v3 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v29 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v28 + v29, v18, &qword_27DAF26E8, &qword_22FFB7C60);
  v30 = *(v20 + 48);
  if (v30(v18, 1, v19) == 1)
  {
    *v22 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v30(v18, 1, v19) != 1)
    {
      sub_22FEAEA34(v18, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF93C00(v18, v22, type metadata accessor for Proto_SealedHashLedger);
  }

  v31 = *v22;

  sub_22FF93C68(v22, type metadata accessor for Proto_SealedHashLedger);
  v32 = sub_22FFB0928();
  v34 = v102;
  if (!*(v31 + 16))
  {

    goto LABEL_59;
  }

  v35 = sub_22FFA619C(v32, v33);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_59:

    v46 = 0;
    v75 = -1;
    v76 = v101;
    goto LABEL_68;
  }

  sub_22FF93B98(*(v31 + 56) + *(v100 + 72) * v35, v26, type metadata accessor for Proto_SealedHash);

  v38 = v97;
  sub_22FF93C00(v26, v97, type metadata accessor for Proto_SealedHash);
  v39 = *(v38 + 16);
  v40 = *(v39 + 16);
  if (!v40)
  {
    v79 = v95;
    v78 = v93;
    v80 = v96;
    (*(v95 + 56))(v93, 1, 1, v96);
    v46 = MEMORY[0x277D84F90];
    v77 = v94;
    goto LABEL_63;
  }

  v41 = *(v96 + 24);
  v42 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v89 = *(v38 + 16);
  v43 = v39 + v42;
  v44 = *(v95 + 72);
  if (v98)
  {
    v45 = 1;
  }

  else
  {
    v45 = 3;
  }

  v98 = v45;
  v46 = MEMORY[0x277D84F90];
  v88 = v43;
  v90 = v40;
  v99 = v41;
  v100 = v44;
  do
  {
    sub_22FF93B98(v43, v34, type metadata accessor for Proto_SealedHash.Entry);
    sub_22FEBF3A4(v34 + v41, v6, &qword_27DAF2130, &unk_22FFB5C80);
    v47 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    if ((*(*(v47 - 8) + 48))(v6, 1, v47) == 1)
    {
      sub_22FF93C68(v34, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FEAEA34(v6, &qword_27DAF2130, &unk_22FFB5C80);
      goto LABEL_13;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22FF93C68(v34, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FF93C68(v6, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      goto LABEL_13;
    }

    v103 = v46;
    v48 = v104;
    sub_22FF93C00(v6, v104, type metadata accessor for Proto_Cryptex);
    v50 = *v48;
    v49 = v48[1];
    v113[3] = MEMORY[0x277CC9318];
    v113[4] = MEMORY[0x277CC9300];
    v113[0] = v50;
    v113[1] = v49;
    v51 = __swift_project_boxed_opaque_existential_1(v113, MEMORY[0x277CC9318]);
    v52 = *v51;
    v53 = v51[1];
    v54 = v53 >> 62;
    if ((v53 >> 62) > 1)
    {
      if (v54 == 2)
      {
        v55 = *(v52 + 16);
        v91 = *(v52 + 24);
        sub_22FEA5608(v50, v49);
        v56 = sub_22FFB0588();
        if (v56)
        {
          v57 = v56;
          v58 = sub_22FFB05B8();
          if (__OFSUB__(v55, v58))
          {
            goto LABEL_73;
          }

          v59 = (v55 - v58 + v57);
        }

        else
        {
          v59 = 0;
        }

        v65 = v91 - v55;
        if (__OFSUB__(v91, v55))
        {
          goto LABEL_72;
        }

        v66 = sub_22FFB05A8();
        v52 = 0;
        if (v66 >= v65)
        {
          v67 = v65;
        }

        else
        {
          v67 = v66;
        }

        v53 = 0xC000000000000000;
        if (!v59 || !v67)
        {
          goto LABEL_53;
        }

        if (v67 >= 15)
        {
LABEL_48:
          sub_22FFB05D8();
          swift_allocObject();
          v69 = sub_22FFB0578();
          v70 = v69;
          if (v67 >= 0x7FFFFFFF)
          {
            sub_22FFB0738();
            v52 = swift_allocObject();
            *(v52 + 16) = 0;
            *(v52 + 24) = v67;
            v53 = v70 | 0x8000000000000000;
          }

          else
          {
            v52 = v67 << 32;
            v53 = v69 | 0x4000000000000000;
          }

          goto LABEL_53;
        }

        memset(__dst, 0, sizeof(__dst));
        v112 = v67;
        memcpy(__dst, v59, v67);
        v52 = *__dst;
        v53 = v85 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v112 << 16)) << 32);
        v85 = v53;
      }

      else
      {
        sub_22FEA5608(v50, v49);
      }
    }

    else if (v54)
    {
      v60 = (v52 >> 32) - v52;
      if (v52 >> 32 < v52)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      sub_22FEA5608(v50, v49);
      v61 = sub_22FFB0588();
      if (v61)
      {
        v62 = v61;
        v63 = sub_22FFB05B8();
        if (__OFSUB__(v52, v63))
        {
          goto LABEL_74;
        }

        v64 = (v52 - v63 + v62);
      }

      else
      {
        v64 = 0;
      }

      v34 = v102;
      v68 = sub_22FFB05A8();
      v52 = 0;
      if (v68 >= v60)
      {
        v67 = v60;
      }

      else
      {
        v67 = v68;
      }

      v53 = 0xC000000000000000;
      if (!v64 || !v67)
      {
        goto LABEL_53;
      }

      if (v67 >= 15)
      {
        goto LABEL_48;
      }

      memset(__dst, 0, sizeof(__dst));
      v112 = v67;
      memcpy(__dst, v64, v67);
      v52 = *__dst;
      v53 = v86 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v112 << 16)) << 32);
      v86 = v53;
    }

    else
    {
      __src = *v51;
      v106 = v53;
      v107 = BYTE2(v53);
      v108 = BYTE3(v53);
      v109 = BYTE4(v53);
      v110 = BYTE5(v53);
      if (BYTE6(v53))
      {
        if (BYTE6(v53) <= 0xEuLL)
        {
          memset(__dst, 0, sizeof(__dst));
          v112 = BYTE6(v53);
          memcpy(__dst, &__src, BYTE6(v53));
          v52 = *__dst;
          v53 = v87 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v112 << 16)) << 32);
          sub_22FEA5608(v50, v49);
          v87 = v53;
        }

        else
        {
          sub_22FFB05D8();
          swift_allocObject();
          sub_22FEA5608(v50, v49);
          v52 = BYTE6(v53) << 32;
          v53 = sub_22FFB0578() | 0x4000000000000000;
        }
      }

      else
      {
        sub_22FEA5608(v50, v49);
        v52 = 0;
        v53 = 0xC000000000000000;
      }
    }

LABEL_53:
    v46 = v103;
    sub_22FF93C68(v104, type metadata accessor for Proto_Cryptex);
    sub_22FF93C68(v34, type metadata accessor for Proto_SealedHash.Entry);
    __swift_destroy_boxed_opaque_existential_1(v113);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_22FEC2E70(0, *(v46 + 2) + 1, 1, v46);
    }

    v72 = *(v46 + 2);
    v71 = *(v46 + 3);
    if (v72 >= v71 >> 1)
    {
      v46 = sub_22FEC2E70((v71 > 1), v72 + 1, 1, v46);
    }

    *(v46 + 2) = v72 + 1;
    v73 = &v46[24 * v72];
    *(v73 + 4) = v52;
    *(v73 + 5) = v53;
    v73[48] = v98;
    v41 = v99;
    v44 = v100;
LABEL_13:
    v43 += v44;
    --v40;
  }

  while (v40);
  v77 = v94;
  if (v90 > *(v89 + 16))
  {
    goto LABEL_75;
  }

  v78 = v93;
  sub_22FF93B98(v88 + v44 * (v90 - 1), v93, type metadata accessor for Proto_SealedHash.Entry);
  v79 = v95;
  v80 = v96;
  (*(v95 + 56))(v78, 0, 1, v96);
LABEL_63:
  sub_22FEBF3A4(v78, v77, &qword_27DAF3948, &unk_22FFBFBB8);
  if ((*(v79 + 48))(v77, 1, v80) == 1)
  {
    sub_22FEAEA34(v78, &qword_27DAF3948, &unk_22FFBFBB8);
    v76 = v101;
    goto LABEL_66;
  }

  v81 = v77;
  v82 = v92;
  sub_22FF93C00(v81, v92, type metadata accessor for Proto_SealedHash.Entry);
  sub_22FF938FC(v82, v113);
  sub_22FF93C68(v82, type metadata accessor for Proto_SealedHash.Entry);
  sub_22FEAEA34(v78, &qword_27DAF3948, &unk_22FFBFBB8);
  v83 = v113[0];
  v76 = v101;
  if (LOBYTE(v113[0]) == 2)
  {
LABEL_66:
    result = sub_22FF93C68(v97, type metadata accessor for Proto_SealedHash);
    goto LABEL_67;
  }

  result = sub_22FF93C68(v97, type metadata accessor for Proto_SealedHash);
  if (v83)
  {
    v75 = 1;
  }

  else
  {
LABEL_67:
    v75 = 0;
  }

LABEL_68:
  *v76 = v46;
  *(v76 + 8) = v75;
  return result;
}