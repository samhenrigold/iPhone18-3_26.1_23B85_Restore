__int128 *PIR.IndexPirClient.decrypt(reply:index:)(void *a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 2);
  if (v4 != 2)
  {
    v7 = *(v2 + 3);
    v8 = *(v2 + 4);
    LOWORD(v45) = *v2;
    BYTE2(v45) = v4;
    *(&v45 + 3) = *(v2 + 3);
    v9 = *(v2 + 2);
    *(&v45 + 1) = *(v2 + 1);
    v46 = v9;
    v47 = v7;
    v48 = v8;
    v10 = *(v2 + 56);
    v49 = *(v2 + 40);
    v50 = v10;
    v51 = *(v2 + 9);
    v2 = &v45;
    v11 = sub_1C0D5CAFC(a1);
    if (v3)
    {
      return v2;
    }

    if (v8)
    {
      v13 = v11;
      v14 = v12;
      if (a2 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_49;
      }

      v15 = a2 % v8 * v9;
      if ((a2 % v8 * v9) >> 64 == v15 >> 63)
      {
        v16 = v15 + v9;
        if (!__OFADD__(v15, v9))
        {
          v17 = v14 >> 62;
          if ((v14 >> 62) <= 1)
          {
            if (v17)
            {
              if (__OFSUB__(HIDWORD(v13), v13))
              {
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

              if (HIDWORD(v13) - v13 < v16)
              {
                goto LABEL_24;
              }
            }

            else if (BYTE6(v14) < v16)
            {
              goto LABEL_24;
            }

            goto LABEL_16;
          }

          if (v17 == 2)
          {
            v19 = *(v13 + 16);
            v18 = *(v13 + 24);
            v20 = __OFSUB__(v18, v19);
            v21 = v18 - v19;
            if (v20)
            {
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            if (v21 >= v16)
            {
              goto LABEL_16;
            }
          }

          else if (v16 <= 0)
          {
LABEL_16:
            if (v16 >= v15)
            {
              v22 = sub_1C0D782DC();
              v47 = MEMORY[0x1E6969080];
              v48 = MEMORY[0x1E6969078];
              *&v45 = v22;
              *(&v45 + 1) = v23;
              v24 = __swift_project_boxed_opaque_existential_1(&v45, MEMORY[0x1E6969080]);
              v25 = *v24;
              v26 = v24[1];
              v27 = v26 >> 62;
              if ((v26 >> 62) > 1)
              {
                if (v27 != 2)
                {
                  memset(v43, 0, 14);
                  v29 = v43;
                  v28 = v43;
                  goto LABEL_45;
                }

                v32 = *(v25 + 16);
                v33 = *(v25 + 24);
                v34 = sub_1C0D7812C();
                if (v34)
                {
                  v35 = sub_1C0D7815C();
                  v25 = v32 - v35;
                  if (__OFSUB__(v32, v35))
                  {
LABEL_54:
                    __break(1u);
                    goto LABEL_55;
                  }

                  v34 += v25;
                }

                v20 = __OFSUB__(v33, v32);
                v36 = v33 - v32;
                if (!v20)
                {
                  goto LABEL_37;
                }

                __break(1u);
              }

              else if (!v27)
              {
                v43[0] = *v24;
                LOWORD(v43[1]) = v26;
                BYTE2(v43[1]) = BYTE2(v26);
                BYTE3(v43[1]) = BYTE3(v26);
                BYTE4(v43[1]) = BYTE4(v26);
                BYTE5(v43[1]) = BYTE5(v26);
                v28 = v43 + BYTE6(v26);
                v29 = v43;
LABEL_45:
                sub_1C0D20850(v29, v28, &v44);
                sub_1C0CF448C(v13, v14);
                v2 = v44;
                __swift_destroy_boxed_opaque_existential_1(&v45);
                return v2;
              }

              v37 = v25;
              v38 = v25 >> 32;
              v36 = v38 - v37;
              if (v38 >= v37)
              {
                v34 = sub_1C0D7812C();
                if (!v34)
                {
LABEL_37:
                  v40 = sub_1C0D7814C();
                  if (v40 >= v36)
                  {
                    v41 = v36;
                  }

                  else
                  {
                    v41 = v40;
                  }

                  v42 = (v41 + v34);
                  if (v34)
                  {
                    v28 = v42;
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v29 = v34;
                  goto LABEL_45;
                }

                v39 = sub_1C0D7815C();
                if (!__OFSUB__(v37, v39))
                {
                  v34 += v37 - v39;
                  goto LABEL_37;
                }

LABEL_55:
                __break(1u);
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            goto LABEL_50;
          }

LABEL_24:
          sub_1C0CF8DE0();
          swift_allocError();
          *v30 = 5;
          *(v30 + 4) = 1;
          swift_willThrow();
          sub_1C0CF448C(v13, v14);
          return v2;
        }

        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1C0CF8DE0();
  swift_allocError();
  *v5 = 5;
  *(v5 + 4) = 1;
  swift_willThrow();
  return v2;
}

char *sub_1C0D5BA94(char *result)
{
  v12 = *(v1 + 32);
  v3 = *(v1 + 48);
  if (*(v1 + 56))
  {
    v3 = 1;
  }

  if (!v3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = result;
  if (*(&v12 + 1) == 0x8000000000000000 && v3 == -1)
  {
    goto LABEL_30;
  }

  v5 = *(&v12 + 1) / v3;
  if (!(*(&v12 + 1) / v3))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v6 = *(result + 2);
  result = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  if (v5 >= 1 && v6 != 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = v8 + v5;
      v10 = __OFADD__(v8, v5) ? ((v8 + v5) >> 63) ^ 0x8000000000000000 : v8 + v5;
      if (__OFADD__(v8, v5))
      {
        break;
      }

      if (v6 < v9)
      {
        v9 = v6;
      }

      if (v9 < v8)
      {
        goto LABEL_26;
      }

      if (v8 < 0)
      {
        goto LABEL_27;
      }

      v11 = sub_1C0D5BEF0(v4, (v4 + 32), v8, (2 * v9) | 1);
      if (v2)
      {
      }

      result = sub_1C0CF9B90(v11);
      v8 = v10;
      if (v10 >= v6)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1C0D5BBD0(uint64_t result)
{
  v4 = v1[1];
  v41 = *v1;
  v42 = v4;
  v43[0] = v1[2];
  *(v43 + 10) = *(v1 + 42);
  v6 = *(v1 + 8);
  v5 = *(v1 + 9);
  v7 = *(result + 16);
  if (!v7)
  {

    v3 = MEMORY[0x1E69E7CC0];
    v2 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v31 = sub_1C0D52840(v2, v6, v5, v3);

    return v31;
  }

  v8 = *&v43[0];
  if (!*&v43[0])
  {
    goto LABEL_47;
  }

  v32 = v5;
  v33 = v6;
  v34 = result;
  v9 = *(&v42 + 1);
  v10 = *(result + 32);
  if (*&v43[0] == -1 && v10 == 0x8000000000000000)
  {
LABEL_35:
    __break(1u);
LABEL_36:

    v6 = v33;
    v5 = v32;
    goto LABEL_38;
  }

  v11 = v7 - 1;
  v2 = MEMORY[0x1E69E7CC0];
  v12 = 40;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v44 = v12;
    v36 = v41;
    v37 = v42;
    v38[0] = v43[0];
    *(v38 + 10) = *(v43 + 10);
    v13 = v8;
    v14 = v10 / v8;
    sub_1C0D3B860(&v41, v35);
    v15 = sub_1C0D33848(v14);
    v39[0] = v36;
    v39[1] = v37;
    v40[0] = v38[0];
    *(v40 + 10) = *(v38 + 10);
    result = sub_1C0D3B80C(v39);
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v18 <= *(v2 + 24) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v23 = v17 + v16;
      }

      else
      {
        v23 = v17;
      }

      result = sub_1C0CF4C28(result, v23, 1, v2);
      v2 = result;
      if (*(v15 + 16))
      {
LABEL_10:
        v19 = *(v2 + 16);
        if ((*(v2 + 24) >> 1) - v19 < v16)
        {
          goto LABEL_43;
        }

        memcpy((v2 + 8 * v19 + 32), (v15 + 32), 8 * v16);

        if (v16)
        {
          v20 = *(v2 + 16);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_45;
          }

          *(v2 + 16) = v22;
        }

        goto LABEL_19;
      }
    }

    if (v16)
    {
      goto LABEL_40;
    }

LABEL_19:
    v24 = *(v9 + 16);
    v25 = *(v3 + 16);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_41;
    }

    sub_1C0D3B860(&v41, &v36);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= *(v3 + 24) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v30 = v25 + v24;
      }

      else
      {
        v30 = v25;
      }

      result = sub_1C0CF4C28(result, v30, 1, v3);
      v3 = result;
      if (*(v9 + 16))
      {
LABEL_23:
        v27 = *(v3 + 16);
        if ((*(v3 + 24) >> 1) - v27 < v24)
        {
          goto LABEL_44;
        }

        memcpy((v3 + 8 * v27 + 32), (v9 + 32), 8 * v24);
        result = sub_1C0D3B80C(&v41);
        v8 = v13;
        if (v24)
        {
          v28 = *(v3 + 16);
          v21 = __OFADD__(v28, v24);
          v29 = v28 + v24;
          if (v21)
          {
            goto LABEL_46;
          }

          *(v3 + 16) = v29;
        }

        goto LABEL_32;
      }
    }

    result = sub_1C0D3B80C(&v41);
    v8 = v13;
    if (v24)
    {
      goto LABEL_42;
    }

LABEL_32:
    if (!v11)
    {
      goto LABEL_36;
    }

    v10 = *(v34 + v44);
    v12 = v44 + 8;
    --v11;
    if (v8 == -1 && v10 == 0x8000000000000000)
    {
      goto LABEL_35;
    }
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
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1C0D5BEF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = v5;
  if (*(v5 + 56))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v5 + 48);
  }

  if (!v11)
  {
    goto LABEL_98;
  }

  v12 = *(v5 + 40);
  if (v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_100;
  }

  v14 = a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_99;
  }

  v83 = v12 / v11;
  if (v12 / v11 < ((a4 >> 1) - a3))
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v15 = 5;
    *(v15 + 4) = 1;
    swift_willThrow();
    return v5;
  }

  v8 = v6;
  inited = a1;
  v75 = a4 >> 1;
  *&v84 = v11;
  v7 = v10[3];
  v18 = cche_encryption_params_polynomial_degree();
  v72 = a2;
  v73 = inited;
  if (v18)
  {
    v19 = v18;
    v20 = v14;
    v21 = v18;
    v22 = sub_1C0D78C2C();
    *(v22 + 16) = v21;
    v14 = v20;
    inited = v73;
    bzero((v22 + 32), 8 * v19);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v74 = *(v7 + 16);
  v9 = sub_1C0D5FC34(v22, v74);

  v85 = v10;
  if (v75 != v14)
  {
    if ((v84 & 0x8000000000000000) == 0)
    {
      swift_unknownObjectRetain();
      inited = v14;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_49;
      }

      goto LABEL_106;
    }

    goto LABEL_105;
  }

  inited = v9[2];
  if (!inited)
  {
LABEL_80:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v87 = MEMORY[0x1E69E7CC0];
  sub_1C0CF7A90(0, inited, 0);
  v23 = 0;
  v5 = v87;
  v24 = v10[8];
  v74 = *(v24 + 32);
  v75 = inited;
  v76 = v9;
  v83 = v24;
  while (1)
  {
    if (v23 >= v9[2])
    {
      goto LABEL_96;
    }

    v79 = v23;
    v9 = v9[v23 + 4];
    cche_plaintext_sizeof();
    sub_1C0D78BFC();

    v25 = swift_slowAlloc();
    if (HIDWORD(v9[2]))
    {
      goto LABEL_97;
    }

    v7 = v25;
    LODWORD(v26) = cche_encode_simd_uint64();
    if (v26)
    {
LABEL_84:
      v64 = v26;
      sub_1C0CF8DE0();
      swift_allocError();
      *v65 = v64;
      *(v65 + 4) = 0;
      swift_willThrow();

      MEMORY[0x1C68E4EB0](v7, -1, -1);

LABEL_86:

      return v5;
    }

    *&v84 = v7;
    v81 = v5;
    v27 = v8;
    v8 = v10[9];
    v7 = cche_param_ctx_ciphertext_ctx_nmoduli();
    v28 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    inited = swift_initStackObject();
    *(inited + 16) = v24;

    v29 = swift_slowAlloc();
    *(inited + 24) = v29;
    *(inited + 32) = v29 + v28;
    result = cche_rng_seed_sizeof();
    if (result)
    {
      v30 = result;
      if (result < 15)
      {
        if (result < 0)
        {
          goto LABEL_103;
        }

        result = 0;
        v32 = v73 & 0xF00000000000000 | (v30 << 48);
        v73 = v32;
      }

      else
      {
        sub_1C0D7818C();
        swift_allocObject();
        v31 = sub_1C0D7813C();
        if (v30 >= 0x7FFFFFFF)
        {
          sub_1C0D7828C();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v30;
          v32 = v31 | 0x8000000000000000;
        }

        else
        {
          result = v30 << 32;
          v32 = v31 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v32 = 0xC000000000000000;
    }

    *&v86[0] = result;
    *(&v86[0] + 1) = v32;
    v33 = v8[3];
    if (!v33)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1C0D51ED4(v86, v29, v84, v83, v33, v7);

    if (v5)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v66 = v5;
      *(v66 + 4) = 0;
      swift_willThrow();
      swift_setDeallocating();

      MEMORY[0x1C68E4EB0](v29, -1, -1);

      sub_1C0CF448C(*&v86[0], *(&v86[0] + 1));

      MEMORY[0x1C68E4EB0](v84, -1, -1);

      goto LABEL_86;
    }

    v34 = *(&v86[0] + 1);
    v7 = *&v86[0];
    sub_1C0CF6468(*&v86[0], *(&v86[0] + 1));
    sub_1C0CF448C(v7, v34);
    v35 = cche_serialize_seeded_ciphertext_coeff_nbytes();
    if (!v35)
    {
      v38 = 0xC000000000000000;
      goto LABEL_40;
    }

    v36 = v35;
    if (v35 <= 14)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        v35 = 0;
        v38 = v72 & 0xF00000000000000 | (v36 << 48);
        v72 = v38;
        goto LABEL_40;
      }

      while (1)
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        v9 = sub_1C0CFD6D4(v9);
LABEL_49:
        v46 = v75;
        v82 = 0;
        v71 = (v7 + 32);
        v47 = v9 + 4;
        v48 = MEMORY[0x1E69E7CC0];
        v70 = v8;
LABEL_50:
        v77 = inited;
        if (inited >= v46)
        {
          goto LABEL_101;
        }

        if (!__OFADD__(v82, 1))
        {
          break;
        }

LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
      }

      v49 = v74;
      if (!v74)
      {
        v51 = v84;
LABEL_62:
        v56 = 0;
        v78 = v77 + 1;
        v80 = v48;
        do
        {
          if (v56 >= v51)
          {
            goto LABEL_91;
          }

          v57 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_92;
          }

          v58 = v85[3];
          v86[2] = v85[2];
          v86[3] = v58;
          v86[4] = v85[4];
          v59 = v85[1];
          v86[0] = *v85;
          v86[1] = v59;
          v60 = v56 * v83;
          if ((v56 * v83) >> 64 != (v56 * v83) >> 63)
          {
            goto LABEL_93;
          }

          v61 = v82 + v60;
          if (__OFADD__(v82, v60))
          {
            goto LABEL_94;
          }

          inited = v48;
          sub_1C0D78BFC();
          v26 = sub_1C0D5C8C4(v61, inited);
          v5 = v26;
          v62 = *(v26 + 2);
          if (v62)
          {
            inited = 0;
            while (inited < v9[2])
            {
              v7 = v9;
              v63 = *(v5 + 32 + 8 * inited);
              v8 = v47[inited];
              LODWORD(v26) = swift_isUniquelyReferenced_nonNull_native();
              v47[inited] = v8;
              if (v26)
              {
                if ((v63 & 0x8000000000000000) != 0)
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v26 = sub_1C0CFD6C0(v8);
                v8 = v26;
                v47[inited] = v26;
                if ((v63 & 0x8000000000000000) != 0)
                {
                  goto LABEL_82;
                }
              }

              if (v63 >= v8[2])
              {
                goto LABEL_83;
              }

              ++inited;
              v8[v63 + 4] = 1;
              v9 = v7;
              if (v62 == inited)
              {
                goto LABEL_63;
              }
            }

            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

LABEL_63:

          v56 = v57;
          v51 = v84;
          v48 = v80;
        }

        while (v57 != v84);

        ++v82;
        v46 = v75;
        inited = v78;
        v8 = v70;
        v10 = v85;
        v48 = MEMORY[0x1E69E7CC0];
        if (v78 != v75)
        {
          goto LABEL_50;
        }

        swift_unknownObjectRelease();
        inited = v9[2];
        if (!inited)
        {
          goto LABEL_80;
        }

        goto LABEL_18;
      }

      v50 = *(v72 + 8 * inited);
      v48 = sub_1C0CF4C28(0, 1, 1, v48);
      v8 = v71;
      v51 = v84;
      while (1)
      {
        v52 = *v8++;
        inited = v52;
        if (!v52)
        {
          break;
        }

        if (v50 == 0x8000000000000000 && inited == -1)
        {
          goto LABEL_95;
        }

        v54 = *(v48 + 2);
        v53 = *(v48 + 3);
        if (v54 >= v53 >> 1)
        {
          v55 = sub_1C0CF4C28((v53 > 1), v54 + 1, 1, v48);
          v51 = v84;
          v48 = v55;
        }

        *(v48 + 2) = v54 + 1;
        *&v48[8 * v54 + 32] = v50 % inited;
        v50 /= inited;
        if (!--v49)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_1C0D7818C();
    swift_allocObject();
    v37 = sub_1C0D7813C();
    if (v36 >= 0x7FFFFFFF)
    {
      sub_1C0D7828C();
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = v36;
      v38 = v37 | 0x8000000000000000;
    }

    else
    {
      v35 = v36 << 32;
      v38 = v37 | 0x4000000000000000;
    }

LABEL_40:
    *&v86[0] = v35;
    *(&v86[0] + 1) = v38;
    v39 = sub_1C0D52488(v86, inited);
    v24 = v83;
    if (v39)
    {
      break;
    }

    v8 = v27;

    MEMORY[0x1C68E4EB0](v84, -1, -1);

    swift_setDeallocating();
    v40 = *(inited + 24);
    v41 = v34;

    if (v40)
    {
      MEMORY[0x1C68E4EB0](v40, -1, -1);
    }

    v9 = v76;
    v10 = v85;

    v42 = v86[0];
    v5 = v81;
    v87 = v81;
    v44 = *(v81 + 16);
    v43 = *(v81 + 24);
    inited = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v84 = v86[0];
      sub_1C0CF7A90((v43 > 1), v44 + 1, 1);
      v42 = v84;
      v5 = v87;
    }

    *(v5 + 16) = inited;
    v45 = v5 + 32 * v44;
    *(v45 + 32) = v42;
    v23 = v79 + 1;
    *(v45 + 48) = v7;
    *(v45 + 56) = v41;
    if (v75 == v79 + 1)
    {

      return v5;
    }
  }

  v67 = v39;

  sub_1C0CF8DE0();
  swift_allocError();
  *v68 = v67;
  *(v68 + 4) = 0;
  swift_willThrow();

  MEMORY[0x1C68E4EB0](v84, -1, -1);

  sub_1C0CF448C(v7, v34);
  swift_setDeallocating();
  v5 = *(inited + 16);
  v69 = *(inited + 24);

  if (v69)
  {
    MEMORY[0x1C68E4EB0](v69, -1, -1);
  }

  sub_1C0CF448C(*&v86[0], *(&v86[0] + 1));

  return v5;
}

char *sub_1C0D5C8C4(uint64_t a1, char *a2)
{
  v5 = *(v2 + 40);
  v6 = dword_1C0D7E4A4;
  if (v5 >= 2)
  {
    v7 = a1 >= 0 ? a1 & 1 : -(a1 & 1);
    v8 = cche_encryption_params_polynomial_degree();
    v9 = *(a2 + 2);
    if (v9)
    {
      v10 = v7 * v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_1C0CFD6E8(a2);
      }

      v11 = 32;
      v12 = v10 / v5;
      do
      {
        v13 = *&a2[v11];
        v14 = __OFADD__(v13, v12);
        v15 = v13 + v12;
        if (v14)
        {
          goto LABEL_52;
        }

        *&a2[v11] = v15;
        v11 += 8;
        --v9;
      }

      while (v9);
    }
  }

  if (v5 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 /= 2;
  }

  v16 = cche_encryption_params_polynomial_degree();
  if (!v5)
  {
    goto LABEL_59;
  }

  v6 = *(a2 + 2);
  v17 = v6 - 1;
  if (v6 == 1)
  {
    goto LABEL_43;
  }

  if (!v6)
  {
    goto LABEL_60;
  }

  v6 = v16 / v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1C0CFD6E8(a2);
  }

  v18 = 0;
  v19 = v6 / 2;
  v20 = v6 + 1;
  v21 = v6 + 3;
  do
  {
    if (v18 >= *(a2 + 2))
    {
      goto LABEL_51;
    }

    v22 = &a2[8 * v18];
    v24 = *(v22 + 4);
    v23 = *(v22 + 5);
    v14 = __OFADD__(v24, v23);
    v25 = v24 + v23;
    v26 = v14;
    if (v24 >= v19)
    {
      if (v26)
      {
        goto LABEL_54;
      }

      if (v20 < 3)
      {
        goto LABEL_55;
      }

      if (v25 == 0x8000000000000000 && v21 < 2)
      {
        goto LABEL_57;
      }

      v28 = v25 % v19 + v19;
    }

    else
    {
      if (v26)
      {
        goto LABEL_53;
      }

      if (v20 < 3)
      {
        goto LABEL_56;
      }

      if (v25 == 0x8000000000000000 && v21 < 2)
      {
        while (1)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          a2 = sub_1C0CFD6E8(a2);
LABEL_44:
          v30 = a1 / 2;
          for (i = 32; ; i += 8)
          {
            v32 = *&a2[i];
            v33 = v32 * v5;
            if ((v32 * v5) >> 64 != (v32 * v5) >> 63)
            {
              break;
            }

            *&a2[i] = v33;
            v14 = __OFADD__(v33, v30);
            v34 = v33 + v30;
            if (v14)
            {
              goto LABEL_50;
            }

            *&a2[i] = v34;
            if (!--v6)
            {
              return a2;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
        }
      }

      v28 = v25 % v19;
    }

    *(v22 + 5) = v28;
    ++v18;
  }

  while (v17 != v18);
  v6 = *(a2 + 2);
  if (v6)
  {
LABEL_43:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_44;
    }

    goto LABEL_61;
  }

  return a2;
}

char *sub_1C0D5CAFC(void *a1)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  if (!*(v1 + 2))
  {
    result = sub_1C0D5CF00(a1);
    v6 = v2;
    if (!v2)
    {
      goto LABEL_6;
    }

    return v3;
  }

  if (*(v1 + 2) != 1)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v18 = 5;
    *(v18 + 4) = 1;
    swift_willThrow();
    return v3;
  }

  result = sub_1C0D5E4A8(a1);
  v6 = v2;
  if (v2)
  {
    return v3;
  }

LABEL_6:
  v7 = result;
  v8 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v22 = *(result + 2);
  if (!v22)
  {
LABEL_22:

    v3 = sub_1C0D0FA30(v8);

    return v3;
  }

  v23 = v4;
  v9 = 0;
  while (v9 < *(v7 + 2))
  {
    v10 = *&v7[8 * v9 + 32];
    v11 = cche_plaintext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    inited = swift_initStackObject();
    inited[2] = v3;

    result = swift_slowAlloc();
    inited[3] = result;
    inited[4] = &result[v11];
    if (!*(v10 + 24))
    {
      goto LABEL_28;
    }

    if (!*(v23 + 24))
    {
      goto LABEL_29;
    }

    v13 = result;
    v14 = cche_decrypt();
    if (v14)
    {
      v19 = v14;
      sub_1C0CF8DE0();
      swift_allocError();
      *v20 = v19;
      *(v20 + 4) = 0;
      swift_willThrow();
      swift_setDeallocating();

      MEMORY[0x1C68E4EB0](v13, -1, -1);

LABEL_24:

      return v3;
    }

    v15 = cche_param_ctx_polynomial_degree();

    sub_1C0D5FCD0(v15, inited, v3);
    if (v6)
    {

      swift_setDeallocating();
      v21 = inited[3];

      if (v21)
      {
        MEMORY[0x1C68E4EB0](v21, -1, -1);
      }

      goto LABEL_24;
    }

    result = cche_param_ctx_plaintext_modulus();
    if (!result)
    {
      goto LABEL_27;
    }

    v16 = sub_1C0D74850(__clz(result) ^ 0x3F);

    swift_setDeallocating();
    v17 = inited[3];

    if (v17)
    {
      MEMORY[0x1C68E4EB0](v17, -1, -1);
    }

    ++v9;

    result = sub_1C0CF9C84(v16);
    if (v22 == v9)
    {
      v8 = v24;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C0D5CF00(void *a1)
{
  v132[1] = *MEMORY[0x1E69E9840];
  v115 = v1[3];
  v2 = v1[8];
  v122 = v1[9];
  v132[0] = MEMORY[0x1E69E7CC0];
  v3 = a1[2];
  v124 = v2;
  if (v3)
  {
    v5 = a1[5];
    v116 = MEMORY[0x1E69E7CC0];
    if ((v5 & 0x2000000000000000) != 0)
    {
      v6 = a1[6];
      v7 = a1[4];
      sub_1C0CF6468(v7, v5 & 0xDFFFFFFFFFFFFFFFLL);
      sub_1C0D78BFC();
      sub_1C0CF448C(v7, v5 & 0xDFFFFFFFFFFFFFFFLL);
      v116 = v6;
      v132[0] = v6;
    }

    v131 = MEMORY[0x1E69E7CC0];
    sub_1C0D78E3C();
    v8 = 0;
    v9 = a1 + 4;
    v119 = v3;
    v120 = a1 + 4;
    while (1)
    {
      if (v8 == v3)
      {
        goto LABEL_197;
      }

      v10 = &v9[4 * v8];
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      sub_1C0D5FDD4(*v10, v12, v13, v14);
      v125 = v11;
      sub_1C0D5FDD4(v11, v12, v13, v14);
      v15 = qword_1EBE6CB78;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = qword_1EBE72CC0;
      if (qword_1EBE72CC0 < 0)
      {
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        sub_1C0D7814C();
LABEL_243:
        __break(1u);
      }

      if (HIDWORD(qword_1EBE72CC0))
      {
        goto LABEL_199;
      }

      v127 = v13;
      v17 = cche_ciphertext_sizeof();
      type metadata accessor for HE.ObjectStorage();
      v18 = swift_allocObject();
      v18[2] = v2;

      v19 = swift_slowAlloc();
      v18[3] = v19;
      v18[4] = v19 + v17;
      if ((v12 & 0x2000000000000000) != 0)
      {
        v121 = v8;
        v24 = *(v127 + 16);
        if (v24)
        {
          v129 = MEMORY[0x1E69E7CC0];

          sub_1C0CF7C90(0, v24, 0);
          v25 = (v127 + 32);
          do
          {
            v27 = *v25++;
            v26 = v27;
            if ((v27 & 0x8000000000000000) != 0)
            {
              goto LABEL_193;
            }

            if (HIDWORD(v26))
            {
              goto LABEL_194;
            }

            v29 = *(v129 + 16);
            v28 = *(v129 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_1C0CF7C90((v28 > 1), v29 + 1, 1);
            }

            *(v129 + 16) = v29 + 1;
            *(v129 + 4 * v29 + 32) = v26;
            --v24;
          }

          while (v24);
          v2 = v124;
          v3 = v119;
        }

        else
        {
        }

        v34 = v12 >> 62;
        v8 = v121;
        if ((v12 >> 62) > 1)
        {
          if (v34 == 2)
          {
            v36 = *(v125 + 16);
            v37 = *(v125 + 24);
            sub_1C0D78BFC();
            v38 = sub_1C0D7812C();
            if (v38)
            {
              v39 = v38;
              v40 = sub_1C0D7815C();
              if (__OFSUB__(v36, v40))
              {
                goto LABEL_209;
              }

              v41 = v36 - v40 + v39;
              if (__OFSUB__(v37, v36))
              {
                goto LABEL_204;
              }
            }

            else
            {
              v41 = 0;
              if (__OFSUB__(v37, v36))
              {
                goto LABEL_204;
              }
            }

            sub_1C0D7814C();
            if (!v41)
            {
              goto LABEL_241;
            }

            v35 = cche_deserialize_ciphertext_coeff();
            swift_bridgeObjectRelease_n();
            v2 = v124;
            v3 = v119;
            v8 = v121;
            v21 = v127;
          }

          else
          {
            sub_1C0D78BFC();
            v35 = cche_deserialize_ciphertext_coeff();
            swift_bridgeObjectRelease_n();
            v21 = v127;
          }
        }

        else if (v34)
        {
          if (v125 >> 32 < v125)
          {
            goto LABEL_203;
          }

          sub_1C0D78BFC();
          v46 = sub_1C0D7812C();
          if (!v46)
          {
            goto LABEL_242;
          }

          v47 = v46;
          v48 = sub_1C0D7815C();
          if (__OFSUB__(v125, v48))
          {
            goto LABEL_205;
          }

          v49 = v125 - v48 + v47;
          sub_1C0D7814C();
          if (!v49)
          {
            goto LABEL_243;
          }

          v35 = cche_deserialize_ciphertext_coeff();
          swift_bridgeObjectRelease_n();
          v3 = v119;
          v21 = v127;
        }

        else
        {
          sub_1C0D78BFC();
          v35 = cche_deserialize_ciphertext_coeff();
          v21 = v127;
          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        v20 = v12 >> 62;
        v21 = v127;
        if ((v12 >> 62) > 1)
        {
          if (v20 != 2)
          {
            v44 = v14 >> 62;
            if ((v14 >> 62) > 1)
            {
              if (v44 == 2)
              {
                v57 = *(v127 + 16);

                v58 = sub_1C0D7812C();
                if (!v58)
                {
                  goto LABEL_254;
                }

                v59 = v58;
                v60 = sub_1C0D7815C();
                if (__OFSUB__(v57, v60))
                {
                  goto LABEL_211;
                }

                v16 = v57 - v60 + v59;
                sub_1C0D7814C();
                if (!v16)
                {
                  goto LABEL_255;
                }

                v21 = v127;
                if (qword_1EBE6CC50 != -1)
                {
                  swift_once();
                }

                if (qword_1EBE72CC8 < 0)
                {
                  goto LABEL_221;
                }
              }

              else
              {
                v85 = qword_1EBE6CC50;

                if (v85 != -1)
                {
                  swift_once();
                }

                if (qword_1EBE72CC8 < 0)
                {
                  goto LABEL_212;
                }
              }
            }

            else if (v44)
            {
              if (v127 > v127 >> 32)
              {
                goto LABEL_213;
              }

              v79 = sub_1C0D7812C();
              if (!v79)
              {
                goto LABEL_266;
              }

              v80 = v79;
              v81 = sub_1C0D7815C();
              if (__OFSUB__(v127, v81))
              {
                goto LABEL_220;
              }

              v82 = v127 - v81 + v80;
              result = sub_1C0D7814C();
              if (!v82)
              {
                goto LABEL_267;
              }

              v21 = v127;
              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_232;
              }
            }

            else
            {
              v45 = qword_1EBE6CC50;

              if (v45 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_216;
              }
            }

LABEL_133:
            v35 = cche_deserialize_seeded_ciphertext_coeff();
            goto LABEL_163;
          }

          v123 = v14;
          v30 = *(v125 + 16);
          v31 = *(v125 + 24);

          v16 = sub_1C0D7812C();
          if (v16)
          {
            v32 = sub_1C0D7815C();
            if (__OFSUB__(v30, v32))
            {
              goto LABEL_207;
            }

            v16 += v30 - v32;
          }

          if (__OFSUB__(v31, v30))
          {
            goto LABEL_202;
          }

          sub_1C0D7814C();
          v33 = v123 >> 62;
          if ((v123 >> 62) > 1)
          {
            v21 = v127;
            if (v33 != 2)
            {
              if (!v16)
              {
                goto LABEL_250;
              }

              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_229;
              }

              goto LABEL_147;
            }

            v61 = *(v127 + 16);
            v62 = sub_1C0D7812C();
            if (!v62)
            {
              goto LABEL_262;
            }

            v63 = v62;
            v64 = sub_1C0D7815C();
            v65 = __OFSUB__(v61, v64);
            v66 = v61 - v64;
            if (v65)
            {
              goto LABEL_228;
            }

            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_263;
            }

            if (!(v66 + v63))
            {
              goto LABEL_264;
            }

            v21 = v127;
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
              v21 = v127;
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_235;
            }
          }

          else
          {
            v21 = v127;
            if (!v33)
            {
              if (!v16)
              {
                goto LABEL_265;
              }

              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_227;
              }

LABEL_147:
              v35 = cche_deserialize_seeded_ciphertext_coeff();
              v14 = v123;
              goto LABEL_163;
            }

            if (v127 > v127 >> 32)
            {
              goto LABEL_224;
            }

            v86 = sub_1C0D7812C();
            if (!v86)
            {
              goto LABEL_251;
            }

            v87 = v86;
            v88 = sub_1C0D7815C();
            v89 = v127 - v88;
            if (__OFSUB__(v127, v88))
            {
              goto LABEL_234;
            }

            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_252;
            }

            if (!(v89 + v87))
            {
              goto LABEL_253;
            }

            v21 = v127;
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
              v21 = v127;
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_238;
            }
          }

          v35 = cche_deserialize_seeded_ciphertext_coeff();
          v14 = v123;
          goto LABEL_157;
        }

        if (!v20)
        {
          v16 = BYTE6(v12);
          v22 = v14 >> 62;
          if ((v14 >> 62) > 1)
          {
            if (v22 == 2)
            {
              v50 = *(v127 + 16);

              v51 = sub_1C0D7812C();
              if (!v51)
              {
                sub_1C0D7814C();
LABEL_245:
                __break(1u);
LABEL_246:
                sub_1C0D7814C();
                if (!v16)
                {
LABEL_247:
                  __break(1u);
                }

LABEL_248:
                __break(1u);
LABEL_249:
                __break(1u);
LABEL_250:
                __break(1u);
LABEL_251:
                sub_1C0D7814C();
                if (!v16)
                {
LABEL_252:
                  __break(1u);
                }

LABEL_253:
                __break(1u);
LABEL_254:
                sub_1C0D7814C();
LABEL_255:
                __break(1u);
LABEL_256:
                sub_1C0D7814C();
LABEL_257:
                __break(1u);
LABEL_258:
                __break(1u);
LABEL_259:
                sub_1C0D7814C();
                if (!v16)
                {
LABEL_260:
                  __break(1u);
                }

LABEL_261:
                __break(1u);
LABEL_262:
                sub_1C0D7814C();
                if (!v16)
                {
LABEL_263:
                  __break(1u);
                }

LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                result = sub_1C0D7814C();
LABEL_267:
                __break(1u);
                return result;
              }

              v52 = v51;
              v53 = sub_1C0D7815C();
              if (__OFSUB__(v50, v53))
              {
                goto LABEL_218;
              }

              v54 = v14;
              v55 = v50 - v53 + v52;
              v56 = v54;
              sub_1C0D7814C();
              if (!v55)
              {
                goto LABEL_245;
              }

              v21 = v127;
              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_222;
              }

              goto LABEL_117;
            }

            v84 = qword_1EBE6CC50;

            if (v84 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_214;
            }
          }

          else
          {
            if (v22)
            {
              if (v127 > v127 >> 32)
              {
                goto LABEL_217;
              }

              v16 = v19;

              v74 = sub_1C0D7812C();
              if (!v74)
              {
                goto LABEL_256;
              }

              v75 = v74;
              v76 = sub_1C0D7815C();
              if (__OFSUB__(v127, v76))
              {
                goto LABEL_219;
              }

              v77 = v14;
              v78 = v127 - v76 + v75;
              v56 = v77;
              sub_1C0D7814C();
              if (!v78)
              {
                goto LABEL_257;
              }

              v21 = v127;
              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_231;
              }

LABEL_117:
              v35 = cche_deserialize_seeded_ciphertext_coeff();
              v14 = v56;
              goto LABEL_163;
            }

            v23 = qword_1EBE6CC50;

            if (v23 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_215;
            }
          }

          goto LABEL_133;
        }

        if (v125 >> 32 < v125)
        {
          goto LABEL_201;
        }

        v16 = sub_1C0D7812C();
        v117 = v12;
        if (v16)
        {
          v42 = sub_1C0D7815C();
          if (__OFSUB__(v125, v42))
          {
            goto LABEL_208;
          }

          v43 = v14;
          v16 += v125 - v42;
        }

        else
        {
          v43 = v14;
        }

        sub_1C0D7814C();
        v67 = v43 >> 62;
        if ((v43 >> 62) > 1)
        {
          v21 = v127;
          if (v67 == 2)
          {
            v69 = *(v127 + 16);
            v70 = sub_1C0D7812C();
            if (!v70)
            {
              goto LABEL_246;
            }

            v71 = v70;
            v72 = sub_1C0D7815C();
            v65 = __OFSUB__(v69, v72);
            v73 = v69 - v72;
            if (v65)
            {
              goto LABEL_230;
            }

            v14 = v43;
            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_247;
            }

            if (!(v73 + v71))
            {
              goto LABEL_248;
            }

            v12 = v117;
            v21 = v127;
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
              v21 = v127;
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_236;
            }

            v35 = cche_deserialize_seeded_ciphertext_coeff();
LABEL_157:
            v3 = v119;
            goto LABEL_163;
          }

          if (!v16)
          {
            goto LABEL_258;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_226;
          }

          v35 = cche_deserialize_seeded_ciphertext_coeff();
          v14 = v43;
          v12 = v117;
        }

        else
        {
          if (v67)
          {
            if (v127 > v127 >> 32)
            {
              goto LABEL_223;
            }

            v14 = v43;
            v90 = sub_1C0D7812C();
            if (!v90)
            {
              goto LABEL_259;
            }

            v91 = v90;
            v92 = sub_1C0D7815C();
            v93 = v127 - v92;
            if (__OFSUB__(v127, v92))
            {
              goto LABEL_233;
            }

            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_260;
            }

            if (!(v93 + v91))
            {
              goto LABEL_261;
            }

            v21 = v127;
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
              v21 = v127;
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_237;
            }

            v35 = cche_deserialize_seeded_ciphertext_coeff();
            v12 = v117;
            goto LABEL_157;
          }

          if (!v16)
          {
            goto LABEL_249;
          }

          v68 = v43;
          v12 = v117;
          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_225;
          }

          v35 = cche_deserialize_seeded_ciphertext_coeff();
          v14 = v68;
          v21 = v127;
        }
      }

LABEL_163:
      sub_1C0D5FE40(v125, v12, v21, v14);

      if (v35)
      {
        sub_1C0CF8DE0();
        swift_allocError();
        *v114 = v35;
        *(v114 + 4) = 0;
        swift_willThrow();

        sub_1C0D5FE40(v125, v12, v21, v14);
        v16 = v131;

LABEL_189:

        return v16;
      }

      ++v8;

      sub_1C0D5FE40(v125, v12, v21, v14);
      sub_1C0D78E0C();
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      sub_1C0D78E1C();
      v9 = v120;
      if (v8 == v3)
      {
        v16 = v131;
        if (!*(v131 + 16))
        {
          goto LABEL_192;
        }

LABEL_167:
        v94 = *(v16 + 32);

        v95 = sub_1C0D3CD98(v116, v94);

        v96 = *(v115 + 16);
        if (v96)
        {
          v97 = v96 - 1;
          if (v96 == 1)
          {
            goto LABEL_186;
          }

          v98 = 0;
          v126 = v96 - 1;
          v128 = v95;
          while (1)
          {
            if (v98 == v97)
            {
              goto LABEL_200;
            }

            v99 = *(v16 + 16);
            if (!v99)
            {
              break;
            }

            v130 = MEMORY[0x1E69E7CC0];
            sub_1C0CF7BA0(0, v99, 0);
            v100 = 0;
            v101 = v130;
            do
            {
              if (v100 >= *(v16 + 16))
              {
                __break(1u);
LABEL_197:
                __break(1u);
                goto LABEL_198;
              }

              v102 = *(v16 + 8 * v100 + 32);
              v103 = v2;
              v104 = cche_plaintext_sizeof();
              type metadata accessor for HE.ObjectStorage();
              v105 = swift_allocObject();
              v105[2] = v103;

              v106 = swift_slowAlloc();
              v105[3] = v106;
              v105[4] = v106 + v104;
              if (!*(v102 + 24))
              {
                goto LABEL_239;
              }

              if (!*(v122 + 24))
              {
                goto LABEL_240;
              }

              v2 = v124;
              v107 = cche_decrypt();
              if (v107)
              {
                v112 = v107;

                sub_1C0CF8DE0();
                swift_allocError();
                *v113 = v112;
                *(v113 + 4) = 0;
                swift_willThrow();

                goto LABEL_189;
              }

              v109 = *(v130 + 16);
              v108 = *(v130 + 24);
              if (v109 >= v108 >> 1)
              {
                sub_1C0CF7BA0((v108 > 1), v109 + 1, 1);
              }

              ++v100;
              *(v130 + 16) = v109 + 1;
              *(v130 + 8 * v109 + 32) = v105;
            }

            while (v99 != v100);

            v97 = v126;
            v95 = v128;
            if (!v128)
            {
              goto LABEL_206;
            }

LABEL_184:
            v110 = *(v101 + 16);
            sub_1C0D78BFC();
            v111 = sub_1C0D5A090(0, v110, v95, v95, v101, v132);
            if (v118)
            {
              goto LABEL_195;
            }

            v16 = v111;
            ++v98;

            if (v98 == v97)
            {
LABEL_186:

              return v16;
            }
          }

          v101 = MEMORY[0x1E69E7CC0];
          if (v95)
          {
            goto LABEL_184;
          }

          goto LABEL_206;
        }

        goto LABEL_210;
      }
    }
  }

  v116 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_167;
  }

LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:

  return v16;
}

uint64_t sub_1C0D5E4A8(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return result;
  }

  v5 = *(v1 + 64);
  v104 = MEMORY[0x1E69E7CC0];
  sub_1C0D78E3C();
  v6 = 0;
  v99 = a1 + 32;
  v96 = v3;
  v97 = v5;
  while (1)
  {
    v7 = (v99 + 32 * v6);
    v8 = *v7;
    v9 = v7[1];
    v11 = v7[2];
    v10 = v7[3];
    sub_1C0D5FDD4(*v7, v9, v11, v10);
    v102 = v11;
    sub_1C0D5FDD4(v8, v9, v11, v10);
    v12 = qword_1EBE6CB78;

    if (v12 != -1)
    {
      swift_once();
    }

    if (qword_1EBE72CC0 < 0)
    {
      goto LABEL_169;
    }

    if (HIDWORD(qword_1EBE72CC0))
    {
      goto LABEL_170;
    }

    v101 = v10;
    v13 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    v14 = swift_allocObject();
    v14[2] = v5;

    v15 = swift_slowAlloc();
    v14[3] = v15;
    v14[4] = v15 + v13;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v100 = v8;
      v20 = *(v102 + 16);
      if (v20)
      {
        v103 = MEMORY[0x1E69E7CC0];

        sub_1C0CF7C90(0, v20, 0);
        v21 = (v102 + 32);
        while (1)
        {
          v23 = *v21++;
          v22 = v23;
          if ((v23 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (HIDWORD(v22))
          {
            goto LABEL_168;
          }

          v25 = *(v103 + 16);
          v24 = *(v103 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1C0CF7C90((v24 > 1), v25 + 1, 1);
          }

          *(v103 + 16) = v25 + 1;
          *(v103 + 4 * v25 + 32) = v22;
          if (!--v20)
          {
            v3 = v96;
            v5 = v97;
            v8 = v100;
            goto LABEL_31;
          }
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
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        sub_1C0D7814C();
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
      }

LABEL_31:
      v35 = v9 >> 62;
      v17 = v101;
      if ((v9 >> 62) > 1)
      {
        if (v35 == 2)
        {
          v36 = *(v8 + 16);
          v37 = *(v8 + 24);
          sub_1C0D78BFC();
          v38 = sub_1C0D7812C();
          if (v38)
          {
            v39 = sub_1C0D7815C();
            if (__OFSUB__(v36, v39))
            {
              goto LABEL_178;
            }

            v38 += v36 - v39;
          }

          if (__OFSUB__(v37, v36))
          {
            goto LABEL_174;
          }

          sub_1C0D7814C();
          if (!v38)
          {
            goto LABEL_209;
          }

          v17 = v101;
          v40 = cche_deserialize_ciphertext_coeff();
          swift_bridgeObjectRelease_n();
          v3 = v96;
          v5 = v97;
          goto LABEL_58;
        }

        sub_1C0D78BFC();
LABEL_57:
        v40 = cche_deserialize_ciphertext_coeff();
        swift_bridgeObjectRelease_n();
LABEL_58:
        v26 = v102;
        goto LABEL_162;
      }

      if (!v35)
      {
        sub_1C0D78BFC();
        v17 = v101;
        goto LABEL_57;
      }

      if (v8 >> 32 < v8)
      {
        goto LABEL_173;
      }

      sub_1C0D78BFC();
      v48 = sub_1C0D7812C();
      if (!v48)
      {
        goto LABEL_207;
      }

      v49 = v48;
      v50 = sub_1C0D7815C();
      if (__OFSUB__(v8, v50))
      {
        goto LABEL_175;
      }

      v51 = v8 - v50 + v49;
      sub_1C0D7814C();
      if (!v51)
      {
        goto LABEL_208;
      }

      v17 = v101;
      v40 = cche_deserialize_ciphertext_coeff();
      swift_bridgeObjectRelease_n();
      v3 = v96;
      v5 = v97;
      goto LABEL_161;
    }

    v16 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      break;
    }

    v26 = v102;
    if (v16 != 2)
    {
      v17 = v101;
      v46 = v101 >> 62;
      if ((v101 >> 62) > 1)
      {
        if (v46 != 2)
        {
          v86 = qword_1EBE6CC50;

          if (v86 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_180;
          }

          goto LABEL_132;
        }

        v59 = v9;
        v34 = *(v102 + 16);

        v60 = sub_1C0D7812C();
        if (!v60)
        {
          goto LABEL_211;
        }

        v61 = v60;
        v62 = sub_1C0D7815C();
        if (__OFSUB__(v34, v62))
        {
          goto LABEL_182;
        }

        v63 = v34 - v62 + v61;
        sub_1C0D7814C();
        if (!v63)
        {
          goto LABEL_212;
        }

        v26 = v102;
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        v5 = v97;
        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_187;
        }
      }

      else
      {
        if (!v46)
        {
          v47 = qword_1EBE6CC50;

          if (v47 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_181;
          }

LABEL_132:
          v40 = cche_deserialize_seeded_ciphertext_coeff();
          goto LABEL_162;
        }

        v34 = v102;
        if (v102 > v102 >> 32)
        {
          goto LABEL_186;
        }

        v59 = v9;

        v81 = sub_1C0D7812C();
        if (!v81)
        {
          goto LABEL_223;
        }

        v82 = v81;
        v83 = sub_1C0D7815C();
        if (__OFSUB__(v102, v83))
        {
          goto LABEL_189;
        }

        v84 = v102 - v83 + v82;
        sub_1C0D7814C();
        if (!v84)
        {
          goto LABEL_224;
        }

        v26 = v102;
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        v5 = v97;
        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_199;
        }
      }

      v9 = v59;
      v40 = cche_deserialize_seeded_ciphertext_coeff();
      v17 = v101;
      goto LABEL_162;
    }

    v27 = v8;
    v28 = v6;
    v29 = *(v27 + 16);
    v30 = *(v27 + 24);
    v100 = v27;

    v31 = sub_1C0D7812C();
    if (v31)
    {
      v32 = v31;
      v33 = sub_1C0D7815C();
      if (__OFSUB__(v29, v33))
      {
        goto LABEL_176;
      }

      v34 = v29 - v33 + v32;
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_172;
      }
    }

    else
    {
      v34 = 0;
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_172;
      }
    }

    sub_1C0D7814C();
    v17 = v101;
    v64 = v101 >> 62;
    if ((v101 >> 62) > 1)
    {
      if (v64 != 2)
      {
        v3 = v96;
        if (!v34)
        {
          goto LABEL_230;
        }

        v5 = v97;
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_197;
        }

        goto LABEL_160;
      }

      v65 = *(v102 + 16);
      v66 = sub_1C0D7812C();
      if (!v66)
      {
        goto LABEL_216;
      }

      v67 = v66;
      v68 = sub_1C0D7815C();
      v69 = __OFSUB__(v65, v68);
      v70 = v65 - v68;
      if (v69)
      {
        goto LABEL_193;
      }

      sub_1C0D7814C();
      if (!v34)
      {
        goto LABEL_217;
      }

      if (!(v70 + v67))
      {
        goto LABEL_218;
      }

      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      v3 = v96;
      v5 = v97;
      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_201;
      }
    }

    else
    {
      if (!v64)
      {
        v3 = v96;
        if (!v34)
        {
          goto LABEL_222;
        }

        v5 = v97;
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_196;
        }

        goto LABEL_160;
      }

      if (v102 > v102 >> 32)
      {
        goto LABEL_192;
      }

      v87 = sub_1C0D7812C();
      if (!v87)
      {
        goto LABEL_231;
      }

      v88 = v87;
      v89 = sub_1C0D7815C();
      v90 = v102 - v89;
      if (__OFSUB__(v102, v89))
      {
        goto LABEL_202;
      }

      result = sub_1C0D7814C();
      if (!v34)
      {
        goto LABEL_232;
      }

      if (!(v90 + v88))
      {
        goto LABEL_233;
      }

      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      v3 = v96;
      v5 = v97;
      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_205;
      }
    }

LABEL_155:
    v40 = cche_deserialize_seeded_ciphertext_coeff();
    v6 = v28;
    v17 = v101;
LABEL_161:
    v26 = v102;
    v8 = v100;
LABEL_162:
    sub_1C0D5FE40(v8, v9, v26, v17);

    if (v40)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v95 = v40;
      *(v95 + 4) = 0;
      swift_willThrow();

      sub_1C0D5FE40(v8, v9, v26, v17);
    }

    ++v6;

    sub_1C0D5FE40(v8, v9, v26, v17);
    sub_1C0D78E0C();
    sub_1C0D78E4C();
    sub_1C0D78E5C();
    sub_1C0D78E1C();
    if (v6 == v3)
    {
      return v104;
    }
  }

  v17 = v101;
  if (!v16)
  {
    v18 = v101 >> 62;
    if ((v101 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v85 = qword_1EBE6CC50;

        if (v85 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_183;
        }

        goto LABEL_128;
      }

      v34 = BYTE6(v9);
      v98 = v9;
      v52 = v8;
      v53 = v6;
      v54 = *(v102 + 16);

      v55 = sub_1C0D7812C();
      if (!v55)
      {
        goto LABEL_225;
      }

      v56 = v55;
      v57 = sub_1C0D7815C();
      if (__OFSUB__(v54, v57))
      {
        goto LABEL_179;
      }

      v58 = v54 - v57 + v56;
      sub_1C0D7814C();
      if (!v58)
      {
        goto LABEL_226;
      }

      v6 = v53;
      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      v5 = v97;
      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_188;
      }

      v8 = v52;
    }

    else
    {
      if (!v18)
      {
        v19 = qword_1EBE6CC50;

        if (v19 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_184;
        }

LABEL_128:
        v40 = cche_deserialize_seeded_ciphertext_coeff();
        v26 = v102;
        goto LABEL_162;
      }

      v98 = v9;
      if (v102 > v102 >> 32)
      {
        goto LABEL_185;
      }

      v34 = v5;

      v77 = sub_1C0D7812C();
      if (!v77)
      {
        goto LABEL_213;
      }

      v78 = v77;
      v79 = sub_1C0D7815C();
      if (__OFSUB__(v102, v79))
      {
        goto LABEL_190;
      }

      v80 = v102 - v79 + v78;
      sub_1C0D7814C();
      if (!v80)
      {
        goto LABEL_214;
      }

      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_200;
      }
    }

    v40 = cche_deserialize_seeded_ciphertext_coeff();
    v17 = v101;
    v26 = v102;
    v9 = v98;
    goto LABEL_162;
  }

  v41 = v8;
  v28 = v6;
  v42 = v41;
  v100 = v41;
  if (v41 >> 32 < v41)
  {
    goto LABEL_171;
  }

  v43 = sub_1C0D7812C();
  if (v43)
  {
    v44 = v43;
    v45 = sub_1C0D7815C();
    if (__OFSUB__(v42, v45))
    {
      goto LABEL_177;
    }

    v34 = v42 - v45 + v44;
  }

  else
  {
    v34 = 0;
  }

  sub_1C0D7814C();
  v17 = v101;
  v71 = v101 >> 62;
  if ((v101 >> 62) > 1)
  {
    if (v71 != 2)
    {
      if (!v34)
      {
        goto LABEL_215;
      }

      v5 = v97;
      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_194;
      }

      goto LABEL_160;
    }

    v72 = *(v102 + 16);
    v73 = sub_1C0D7812C();
    if (!v73)
    {
      goto LABEL_227;
    }

    v74 = v73;
    v75 = sub_1C0D7815C();
    v69 = __OFSUB__(v72, v75);
    v76 = v72 - v75;
    if (v69)
    {
      goto LABEL_195;
    }

    sub_1C0D7814C();
    if (!v34)
    {
      goto LABEL_228;
    }

    if (!(v76 + v74))
    {
      goto LABEL_229;
    }

    if (qword_1EBE6CC50 != -1)
    {
      swift_once();
    }

    v3 = v96;
    v5 = v97;
    if (qword_1EBE72CC8 < 0)
    {
      goto LABEL_204;
    }

    goto LABEL_155;
  }

  if (v71)
  {
    if (v102 > v102 >> 32)
    {
      goto LABEL_191;
    }

    v91 = sub_1C0D7812C();
    if (!v91)
    {
      goto LABEL_219;
    }

    v92 = v91;
    v93 = sub_1C0D7815C();
    v94 = v102 - v93;
    if (__OFSUB__(v102, v93))
    {
      goto LABEL_203;
    }

    sub_1C0D7814C();
    if (!v34)
    {
      goto LABEL_220;
    }

    if (!(v94 + v92))
    {
      goto LABEL_221;
    }

    if (qword_1EBE6CC50 != -1)
    {
      swift_once();
    }

    v3 = v96;
    v5 = v97;
    if (qword_1EBE72CC8 < 0)
    {
      goto LABEL_206;
    }

    goto LABEL_155;
  }

  if (v34)
  {
    v5 = v97;
    if (qword_1EBE6CC50 != -1)
    {
      swift_once();
    }

    if (qword_1EBE72CC8 < 0)
    {
      goto LABEL_198;
    }

LABEL_160:
    v40 = cche_deserialize_seeded_ciphertext_coeff();
    v6 = v28;
    goto LABEL_161;
  }

  __break(1u);
LABEL_211:
  sub_1C0D7814C();
LABEL_212:
  __break(1u);
LABEL_213:
  sub_1C0D7814C();
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  sub_1C0D7814C();
  if (!v34)
  {
LABEL_217:
    __break(1u);
  }

LABEL_218:
  __break(1u);
LABEL_219:
  sub_1C0D7814C();
  if (!v34)
  {
LABEL_220:
    __break(1u);
  }

LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  sub_1C0D7814C();
LABEL_224:
  __break(1u);
LABEL_225:
  sub_1C0D7814C();
LABEL_226:
  __break(1u);
LABEL_227:
  sub_1C0D7814C();
  if (!v34)
  {
LABEL_228:
    __break(1u);
  }

LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  result = sub_1C0D7814C();
  if (!v34)
  {
LABEL_232:
    __break(1u);
  }

LABEL_233:
  __break(1u);
  return result;
}

uint64_t sub_1C0D5F79C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = sub_1C0D78C2C();
    *(v7 + 16) = v4;
    v28 = v7;
    v25 = v7 + 32;
    bzero((v7 + 32), 8 * v4);
    v8 = 0;
    v24 = (v3 + 32);
    v26 = v4;
    v27 = a2;
    while (1)
    {
      v9 = v3;
      v10 = *(v3 + 16);
      if (v10)
      {
        break;
      }

      v13 = MEMORY[0x1E69E7CC0];
LABEL_13:
      v3 = v9;
      v19 = sub_1C0D5C8C4(v8, v13);
      v20 = *(v19 + 2);
      if (!v20)
      {

        sub_1C0CF8DE0();
        swift_allocError();
        *v23 = 5;
        *(v23 + 4) = 1;
        swift_willThrow();
        return v28;
      }

      v21 = *&v19[8 * v20 + 24];

      if (!v27)
      {
        goto LABEL_27;
      }

      if (v21 == 0x8000000000000000 && v27 == -1)
      {
        goto LABEL_29;
      }

      if (v8 >= *(v28 + 16))
      {
        goto LABEL_28;
      }

      *(v25 + 8 * v8++) = v21 / v27;
      if (v8 == v26)
      {
        return v28;
      }
    }

    v11 = *(a1 + 32 + 8 * v8);
    result = sub_1C0CF4C28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = result;
    v14 = v24;
    while (1)
    {
      v16 = *v14++;
      v15 = v16;
      if (!v16)
      {
        break;
      }

      if (v11 == 0x8000000000000000 && v15 == -1)
      {
        goto LABEL_26;
      }

      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1C0CF4C28((v17 > 1), v18 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v18 + 1;
      *(v13 + 8 * v18 + 32) = v11 % v15;
      v11 /= v15;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1C0D5F9FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0E8, &qword_1C0D7B5F8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1C0D5FAD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C0D5FB1C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *sub_1C0D5FB80(void *result, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D068, &unk_1C0D7B720);
    v6 = sub_1C0D78C2C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v5;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        sub_1C0D134D0(v5, a2);
        *(v9 - 1) = v5;
        *v9 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    sub_1C0D134D0(v5, a2);
    return v7;
  }

  return result;
}

uint64_t sub_1C0D5FC34(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D088, &qword_1C0D7B5D0);
    v4 = sub_1C0D78C2C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        sub_1C0D78BFC();
        --v6;
      }

      while (v6);
    }

    sub_1C0D78BFC();
    return v5;
  }

  return result;
}

uint64_t sub_1C0D5FCD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  if (result)
  {
    result = sub_1C0D78C2C();
    *(result + 16) = v4;
    if (*(a2 + 24))
    {
      if (!HIDWORD(v4))
      {
        v5 = result;
LABEL_8:
        v6 = cche_decode_poly_uint64();
        if (v6)
        {
          v7 = v6;
          sub_1C0CF8DE0();
          swift_allocError();
          *v8 = v7;
          *(v8 + 4) = 0;
          swift_willThrow();
          *(v5 + 16) = 0;

          return v5;
        }

        result = cche_param_ctx_polynomial_degree();
        if (result <= v4)
        {
          *(v5 + 16) = result;
          return v5;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  else if (*(a2 + 24))
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D5FDD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1C0CF6468(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);

    return sub_1C0D78BFC();
  }

  else
  {
    sub_1C0CF6468(a1, a2);

    return sub_1C0CF6468(a3, a4);
  }
}

uint64_t sub_1C0D5FE40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1C0CF448C(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_1C0CF448C(a1, a2);

    return sub_1C0CF448C(a3, a4);
  }
}

uint64_t sub_1C0D5FEAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  result = _s13ServerSecretsVMa(319, v6, v7, v8);
  if (v11 <= 0x3F)
  {
    result = _s14KeyCommitmentsVMa(319, v2, v1, v10);
    if (v13 <= 0x3F)
    {
      result = type metadata accessor for ATHM.Ciphersuite(319, v2, v1, v12);
      if (v14 <= 0x3F)
      {
        if (v5 > 0x3F)
        {
          return AssociatedTypeWitness;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0D60058(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_checkMetadataState() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v6 + 80);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v15;
  }

  if (v9 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v11 | 7;
  v19 = v11 | 7 | v12;
  v20 = ((v10 + v11 + ((v10 + v11 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & ~v11)) & ~v11) + v10 + v19;
  v21 = v13 + v12;
  v22 = v18 + v13;
  v23 = v10 + 7;
  v24 = (v23 & 0xFFFFFFFFFFFFFFF8) + v12 + ((v18 + v13 + ((v13 + v12 + ((v13 + v12) & ~v12)) & ~v12)) & ~v18) + 16;
  v25 = v13 + 7;
  if (v17 < a2)
  {
    v26 = ((((v25 + ((v21 + ((v24 + (v20 & ~v19)) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v27 = a2 - v17;
    v28 = v26 & 0xFFFFFFF8;
    if ((v26 & 0xFFFFFFF8) != 0)
    {
      v29 = 2;
    }

    else
    {
      v29 = v27 + 1;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v32 = *(a1 + v26);
        if (!v32)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v32 = *(a1 + v26);
        if (!v32)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (!v31)
      {
        goto LABEL_36;
      }

      v32 = *(a1 + v26);
      if (!v32)
      {
        goto LABEL_36;
      }
    }

    v34 = v32 - 1;
    if (v28)
    {
      v34 = 0;
      v35 = *a1;
    }

    else
    {
      v35 = 0;
    }

    return v17 + (v35 | v34) + 1;
  }

LABEL_36:
  if (v7 == v17)
  {
    v36 = *(v6 + 48);
    v37 = a1;
LABEL_38:

    return v36(v37, v7, AssociatedTypeWitness);
  }

  v38 = ~v12;
  v39 = (a1 + v20) & ~v19;
  if (v15 == v17)
  {
    if (v9 < v14)
    {
      v37 = ((v22 + ((v21 + ((v21 + v39) & v38)) & v38)) & ~v18);
      if (v7 >= 0x7FFFFFFF)
      {
        v36 = *(v6 + 48);
        goto LABEL_38;
      }

      v40 = *((v37 + v23) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_53;
    }
  }

  else
  {
    v39 = (v24 + v39) & v38;
    if (v9 < v16)
    {
      v40 = *(((((v25 + ((v21 + v39) & v38)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_53:
      if (v40 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      return (v40 + 1);
    }
  }

  v41 = *(v8 + 48);

  return v41(v39);
}

void sub_1C0D60470(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_checkMetadataState() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  if (v11 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(v10 + 84);
  }

  v20 = v13 | 7;
  v21 = v13 | 7 | v14;
  v22 = ((v12 + v13 + ((v12 + v13 + ((v12 + v13 + ((v12 + v13) & ~v13)) & ~v13)) & ~v13)) & ~v13) + v12 + v21;
  v23 = v15 + v14;
  v24 = v20 + v15;
  v25 = v12 + 7;
  v26 = (v25 & 0xFFFFFFFFFFFFFFF8) + 8;
  v27 = v14 + v26 + ((v20 + v15 + ((v15 + v14 + ((v15 + v14) & ~v14)) & ~v14)) & ~v20) + 8;
  v28 = (v15 + v14 + ((v27 + (v22 & ~v21)) & ~v14)) & ~v14;
  v29 = v15 + 7;
  v30 = ((((v29 + v28) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 >= a3)
  {
    v32 = 0;
    v33 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_25;
    }

LABEL_30:
    if (v30)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    if (v30)
    {
      v35 = ~v19 + a2;
      bzero(a1, v30);
      *a1 = v35;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        *(a1 + v30) = v34;
      }

      else
      {
        *(a1 + v30) = v34;
      }
    }

    else if (v32)
    {
      *(a1 + v30) = v34;
    }

    return;
  }

  if (((((v29 + v28) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v31 = a3 - v19 + 1;
  }

  else
  {
    v31 = 2;
  }

  if (v31 >= 0x10000)
  {
    v32 = 4;
  }

  else
  {
    v32 = 2;
  }

  if (v31 < 0x100)
  {
    v32 = 1;
  }

  if (v31 < 2)
  {
    v32 = 0;
  }

  v33 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v30) = 0;
  }

  else if (v32)
  {
    *(a1 + v30) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v9 == v19)
  {
LABEL_42:
    v36 = *(v8 + 56);

    v36(a1, a2, v9, AssociatedTypeWitness);
    return;
  }

  v37 = ~v14;
  v38 = (a1 + v22) & ~v21;
  if (v17 != v19)
  {
    v38 = (v27 + v38) & v37;
    if (v11 < v18)
    {
      v40 = ((((v29 + ((v23 + v38) & v37)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v40 = a2 & 0x7FFFFFFF;
        v40[1] = 0;
      }

      else
      {
        v40[1] = (a2 - 1);
      }

      return;
    }

    goto LABEL_59;
  }

  if (v11 >= v16)
  {
LABEL_59:
    v41 = *(v10 + 56);

    v41(v38, a2);
    return;
  }

  a1 = ((v24 + ((v23 + ((v23 + v38) & v37)) & v37)) & ~v20);
  if (v16 >= a2)
  {
    if (v9 >= 0x7FFFFFFF)
    {
      goto LABEL_42;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v42 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v42 = (a2 - 1);
    }

    *((a1 + v25) & 0xFFFFFFFFFFFFFFF8) = v42;
  }

  else if ((v25 & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v39 = ~v16 + a2;
    bzero(((v24 + ((v23 + ((v23 + v38) & v37)) & v37)) & ~v20), v26);
    *a1 = v39;
  }
}

uint64_t sub_1C0D60928(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D609A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1C0D60B0C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v7;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
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
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t sub_1C0D60D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  v7 = a1;
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7A90(0, v6 & ~(v6 >> 63), 0);
    if (a2 < v7 || v6 < 0)
    {
LABEL_59:
      __break(1u);
    }

    v11 = 0;
    result = v63;
    v51 = a3;
    v52 = a4;
    v53 = v7;
    v54 = v6;
    while (v11 < v6)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_43;
      }

      v12 = v7 + v11;
      v13 = v7 + v11 + 1;
      if (__OFADD__(v7 + v11, 1))
      {
        goto LABEL_44;
      }

      v14 = v12 * a3;
      if ((v12 * a3) >> 64 != (v12 * a3) >> 63)
      {
        goto LABEL_45;
      }

      v15 = v13 * a3;
      if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
      {
        goto LABEL_46;
      }

      if (v15 < v14)
      {
        goto LABEL_47;
      }

      v16 = v12 * a4;
      if ((v12 * a4) >> 64 != (v12 * a4) >> 63)
      {
        goto LABEL_48;
      }

      v17 = v13 * a4;
      if ((v13 * a4) >> 64 != (v13 * a4) >> 63)
      {
        goto LABEL_49;
      }

      if (v17 < v16)
      {
        goto LABEL_50;
      }

      if (v14 < 0)
      {
        goto LABEL_51;
      }

      v18 = *a5;
      v19 = *(*a5 + 16);
      if (v19 < v14 || v19 < v15)
      {
        goto LABEL_52;
      }

      v58 = v11 + 1;
      v59 = v11;
      v60 = result;
      v20 = (2 * v15) | 1;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C8, &qword_1C0D7C028);
      v65 = v21;
      v22 = sub_1C0D61554();
      v66 = v22;
      v23 = swift_allocObject();
      v64[0] = v23;
      v23[2] = v18;
      v23[3] = v18 + 32;
      v23[4] = v14;
      v23[5] = v20;
      v24 = __swift_project_boxed_opaque_existential_1(v64, v21);
      v25 = v24[2];
      v26 = v24[3] >> 1;
      v27 = v26 - v25;
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_53;
      }

      if (v27)
      {
        v28 = v24[1];
        if (v27 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v62 = v26 - v25;
          memcpy(__dst, (v28 + v25), v26 - v25);
          v31 = *__dst;
          v32 = v50 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v62 << 16)) << 32);
          sub_1C0D78BFC();
          v50 = v32;
        }

        else
        {
          sub_1C0D7818C();
          swift_allocObject();
          sub_1C0D78BFC();
          v29 = sub_1C0D7811C();
          v30 = v29;
          if (v27 >= 0x7FFFFFFF)
          {
            sub_1C0D7828C();
            v31 = swift_allocObject();
            *(v31 + 16) = 0;
            *(v31 + 24) = v27;
            v32 = v30 | 0x8000000000000000;
          }

          else
          {
            v31 = v27 << 32;
            v32 = v29 | 0x4000000000000000;
          }
        }
      }

      else
      {
        sub_1C0D78BFC();
        v31 = 0;
        v32 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
      v6 = v54;
      if (v16 < 0)
      {
        goto LABEL_54;
      }

      v33 = *a6;
      v34 = *(*a6 + 16);
      if (v34 < v16 || v34 < v17)
      {
        goto LABEL_55;
      }

      v35 = v31;
      v65 = v21;
      v66 = v22;
      v36 = swift_allocObject();
      v64[0] = v36;
      v36[2] = v33;
      v36[3] = v33 + 32;
      v36[4] = v16;
      v36[5] = (2 * v17) | 1;
      v37 = __swift_project_boxed_opaque_existential_1(v64, v21);
      v38 = v37[2];
      v39 = v37[3] >> 1;
      v40 = v39 - v38;
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_56;
      }

      if (v40)
      {
        v41 = v37[1];
        if (v40 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v62 = v39 - v38;
          memcpy(__dst, (v41 + v38), v39 - v38);
          v44 = *__dst;
          v45 = v49 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v62 << 16)) << 32);
          sub_1C0D78BFC();
          v49 = v45;
        }

        else
        {
          sub_1C0D7818C();
          swift_allocObject();
          sub_1C0D78BFC();
          v42 = sub_1C0D7811C();
          v43 = v42;
          if (v40 >= 0x7FFFFFFF)
          {
            sub_1C0D7828C();
            v44 = swift_allocObject();
            *(v44 + 16) = 0;
            *(v44 + 24) = v40;
            v45 = v43 | 0x8000000000000000;
          }

          else
          {
            v44 = v40 << 32;
            v45 = v42 | 0x4000000000000000;
          }
        }
      }

      else
      {
        sub_1C0D78BFC();
        v44 = 0;
        v45 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
      result = v60;
      v63 = v60;
      v47 = *(v60 + 16);
      v46 = *(v60 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C0CF7A90((v46 > 1), v47 + 1, 1);
        result = v63;
      }

      *(result + 16) = v47 + 1;
      v48 = (result + 32 * v47);
      v48[4] = v35;
      v48[5] = v32;
      v48[6] = v44;
      v48[7] = v45;
      v11 = v59 + 1;
      v7 = v53;
      if ((v53 + v59) >= a2)
      {
        goto LABEL_57;
      }

      a3 = v51;
      a4 = v52;
      if (v58 == v54)
      {
        return result;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
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
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_1C0D61224@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  cche_relin_key_sizeof();
  v5 = cche_param_ctx_key_ctx_poly_nbytes();
  v6 = cche_rng_seed_sizeof();
  v7 = cche_param_ctx_key_ctx_nmoduli();
  v8 = v7 - 1;
  v9 = v8 * v5;
  if ((v8 * v5) >> 64 != (v8 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = v6;
  v11 = v8 * v6;
  v22 = v10;
  if ((v8 * v10) >> 64 != v11 >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = v7;
  v20 = v5;
  if (v9)
  {
    v12 = sub_1C0D78C2C();
    *(v12 + 16) = v9;
    bzero((v12 + 32), v9);
    v25[0] = v12;
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = MEMORY[0x1E69E7CC0];
  v25[0] = MEMORY[0x1E69E7CC0];
  if (v11 < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v19 = a3;
  if (v11)
  {
    v13 = sub_1C0D78C2C();
    *(v13 + 16) = v11;
    bzero((v13 + 32), v11);
    goto LABEL_11;
  }

LABEL_10:
  v13 = MEMORY[0x1E69E7CC0];
LABEL_11:

  v23 = swift_slowAlloc();
  if (!*(a2 + 24))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v11))
  {
    goto LABEL_23;
  }

  if (!ccrng())
  {
    goto LABEL_27;
  }

  v24 = v13;
  v14 = cche_relin_key_generate();
  if (v14)
  {
LABEL_17:
    v15 = v14;
    sub_1C0CF8DE0();
    swift_allocError();
    *v16 = v15;
    *(v16 + 4) = 0;
    swift_willThrow();

    MEMORY[0x1C68E4EB0](v23, -1, -1);
  }

  if (HIDWORD(v9))
  {
    goto LABEL_24;
  }

  v25[0] = v12;
  v14 = cche_relin_key_save();
  if (v14)
  {
    goto LABEL_17;
  }

  if (!v21)
  {
    goto LABEL_25;
  }

  v18 = sub_1C0D60D3C(0, v8, v20, v22, v25, &v24);

  MEMORY[0x1C68E4EB0](v23, -1, -1);

  *v19 = v18;
  return result;
}

unint64_t sub_1C0D61554()
{
  result = qword_1EBE6C9C0;
  if (!qword_1EBE6C9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D4C8, &qword_1C0D7C028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6C9C0);
  }

  return result;
}

uint64_t sub_1C0D615B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v103 = *MEMORY[0x1E69E9840];
  v93 = *(a2 + 16);
  if (HIDWORD(v93))
  {
    goto LABEL_89;
  }

  v6 = cche_galois_key_sizeof();
  v7 = cche_param_ctx_key_ctx_poly_nbytes();
  v8 = cche_rng_seed_sizeof();
  v9 = cche_param_ctx_key_ctx_nmoduli();
  v10 = v9 - 1;
  v11 = v93 * v10;
  if ((v93 * v10) >> 64 != (v93 * v10) >> 63)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v12 = v11 * v7;
  if ((v11 * v7) >> 64 != (v11 * v7) >> 63)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v89 = v9 - 1;
  v13 = v11 * v8;
  if ((v11 * v8) >> 64 != (v11 * v8) >> 63)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v14 = v9;
  if (v12)
  {
    v15 = sub_1C0D78C2C();
    *(v15 + 16) = v12;
    v90 = v15;
    bzero((v15 + 32), v12);
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v90 = MEMORY[0x1E69E7CC0];
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v88 = v8;
  v91 = v14;
  if (v13)
  {
    v16 = sub_1C0D78C2C();
    *(v16 + 16) = v13;
    v96 = v16;
    bzero((v16 + 32), v13);
    goto LABEL_13;
  }

LABEL_12:
  v96 = MEMORY[0x1E69E7CC0];
LABEL_13:
  type metadata accessor for HE.ObjectStorage();
  inited = swift_initStackObject();
  inited[2] = a1;

  v18 = swift_slowAlloc();
  inited[3] = v18;
  inited[4] = v18 + v6;
  if (!*(a3 + 24))
  {
    goto LABEL_101;
  }

  if (HIDWORD(v13))
  {
LABEL_94:
    __break(1u);
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v19 = v18;
  LODWORD(v100[0]) = 0;
  if (!ccrng())
  {
    goto LABEL_102;
  }

  v20 = cche_galois_key_generate();
  if (v20)
  {
    goto LABEL_19;
  }

  if (HIDWORD(v12))
  {
    goto LABEL_98;
  }

  v20 = cche_galois_key_save();
  if (v20)
  {
LABEL_19:
    v21 = v20;

    sub_1C0CF8DE0();
    swift_allocError();
    *v22 = v21;
    *(v22 + 4) = 0;
    swift_willThrow();

    swift_setDeallocating();

    MEMORY[0x1C68E4EB0](v19, -1, -1);
  }

  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1C0D39970(MEMORY[0x1E69E7CC0]);
  v78 = *(a2 + 16);
  if (v78)
  {
    if (!v91)
    {
      goto LABEL_100;
    }

    v26 = 0;
    v27 = v88;
    v28 = v89;
    v86 = v7;
    while (1)
    {
      if (v26 >= *(a2 + 16))
      {
        goto LABEL_95;
      }

      v82 = *(a2 + 32 + 4 * v26);
      v81 = v26;
      if (v28)
      {
        v99 = v24;
        sub_1C0CF7A90(0, v28, 0);
        v87 = v81 * v28;
        if ((v81 * v28) >> 64 == (v81 * v28) >> 63)
        {
          v79 = v25;
          v29 = 0;
          v30 = v99;
          v31 = v90;
          while (1)
          {
            v32 = v87 + v29;
            if (__OFADD__(v87, v29))
            {
              break;
            }

            v33 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_77;
            }

            v34 = v32 * v7;
            if ((v32 * v7) >> 64 != (v32 * v7) >> 63)
            {
              goto LABEL_78;
            }

            v35 = v33 * v7;
            if ((v33 * v7) >> 64 != (v33 * v7) >> 63)
            {
              goto LABEL_79;
            }

            v36 = v32 * v27;
            if ((v32 * v27) >> 64 != (v32 * v27) >> 63)
            {
              goto LABEL_80;
            }

            v37 = v33 * v27;
            if ((v33 * v27) >> 64 != (v33 * v27) >> 63)
            {
              goto LABEL_81;
            }

            if (v35 < v34 || v37 < v36)
            {
              goto LABEL_82;
            }

            if (v34 < 0)
            {
              goto LABEL_83;
            }

            v38 = *(v31 + 16);
            if (v38 < v34 || v38 < v35)
            {
              goto LABEL_84;
            }

            v94 = v30;
            v39 = (2 * v35) | 1;
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C8, &qword_1C0D7C028);
            v101 = v40;
            v41 = sub_1C0D61554();
            v102 = v41;
            v42 = swift_allocObject();
            v100[0] = v42;
            v42[2] = v31;
            v42[3] = v90 + 32;
            v42[4] = v34;
            v42[5] = v39;
            v43 = __swift_project_boxed_opaque_existential_1(v100, v40);
            v44 = v43[2];
            v45 = v43[3] >> 1;
            v46 = v45 - v44;
            if (__OFSUB__(v45, v44))
            {
              goto LABEL_85;
            }

            if (v46)
            {
              v47 = v43[1];
              if (v46 <= 14)
              {
                memset(__dst, 0, sizeof(__dst));
                v98 = v45 - v44;
                memcpy(__dst, (v47 + v44), v45 - v44);
                v92 = *__dst;
                v50 = v85 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v98 << 16)) << 32);
                v31 = v90;
                sub_1C0D78BFC();
                v85 = v50;
              }

              else
              {
                sub_1C0D7818C();
                swift_allocObject();
                sub_1C0D78BFC();
                v48 = sub_1C0D7811C();
                v49 = v48;
                if (v46 >= 0x7FFFFFFF)
                {
                  sub_1C0D7828C();
                  v51 = swift_allocObject();
                  *(v51 + 16) = 0;
                  *(v51 + 24) = v46;
                  v92 = v51;
                  v50 = v49 | 0x8000000000000000;
                }

                else
                {
                  v92 = v46 << 32;
                  v50 = v48 | 0x4000000000000000;
                }

                v31 = v90;
              }
            }

            else
            {
              sub_1C0D78BFC();
              v92 = 0;
              v50 = 0xC000000000000000;
            }

            __swift_destroy_boxed_opaque_existential_1(v100);
            if (v36 < 0)
            {
              goto LABEL_86;
            }

            v52 = *(v96 + 16);
            if (v52 < v36 || v52 < v37)
            {
              goto LABEL_87;
            }

            v101 = v40;
            v102 = v41;
            v53 = swift_allocObject();
            v100[0] = v53;
            v53[2] = v96;
            v53[3] = v96 + 32;
            v53[4] = v36;
            v53[5] = (2 * v37) | 1;
            v54 = __swift_project_boxed_opaque_existential_1(v100, v40);
            v55 = v54[2];
            v56 = v54[3] >> 1;
            v57 = v56 - v55;
            if (__OFSUB__(v56, v55))
            {
              goto LABEL_88;
            }

            if (v57)
            {
              v58 = v54[1];
              v7 = v86;
              if (v57 <= 14)
              {
                memset(__dst, 0, sizeof(__dst));
                v98 = v56 - v55;
                memcpy(__dst, (v58 + v55), v56 - v55);
                v61 = *__dst;
                v62 = v84 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v98 << 16)) << 32);
                sub_1C0D78BFC();
                v84 = v62;
              }

              else
              {
                sub_1C0D7818C();
                swift_allocObject();
                sub_1C0D78BFC();
                v59 = sub_1C0D7811C();
                v60 = v59;
                if (v57 >= 0x7FFFFFFF)
                {
                  sub_1C0D7828C();
                  v61 = swift_allocObject();
                  *(v61 + 16) = 0;
                  *(v61 + 24) = v57;
                  v62 = v60 | 0x8000000000000000;
                }

                else
                {
                  v61 = v57 << 32;
                  v62 = v59 | 0x4000000000000000;
                }
              }
            }

            else
            {
              sub_1C0D78BFC();
              v61 = 0;
              v62 = 0xC000000000000000;
              v7 = v86;
            }

            __swift_destroy_boxed_opaque_existential_1(v100);
            v30 = v94;
            v99 = v94;
            v64 = *(v94 + 16);
            v63 = *(v94 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_1C0CF7A90((v63 > 1), v64 + 1, 1);
              v30 = v99;
            }

            ++v29;
            *(v30 + 16) = v64 + 1;
            v65 = (v30 + 32 * v64);
            v65[4] = v92;
            v65[5] = v50;
            v65[6] = v61;
            v65[7] = v62;
            v27 = v88;
            v28 = v89;
            if (v89 == v29)
            {
              v95 = v30;
              v24 = MEMORY[0x1E69E7CC0];
              v25 = v79;
              goto LABEL_65;
            }
          }

          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      v95 = v24;
LABEL_65:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v25;
      v67 = sub_1C0D0EF18(v82);
      v69 = v25[2];
      v70 = (v68 & 1) == 0;
      v71 = __OFADD__(v69, v70);
      v72 = v69 + v70;
      if (v71)
      {
        goto LABEL_96;
      }

      v73 = v68;
      if (v25[3] < v72)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_70;
      }

      v77 = v67;
      sub_1C0CFB920();
      v67 = v77;
      v25 = v100[0];
      if (v73)
      {
LABEL_23:
        *(v25[7] + 8 * v67) = v95;

        goto LABEL_24;
      }

LABEL_71:
      v25[(v67 >> 6) + 8] |= 1 << v67;
      *(v25[6] + 4 * v67) = v82;
      *(v25[7] + 8 * v67) = v95;
      v75 = v25[2];
      v71 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v71)
      {
        goto LABEL_99;
      }

      v25[2] = v76;
LABEL_24:
      v26 = v81 + 1;
      if (v81 + 1 == v78)
      {
        goto LABEL_75;
      }
    }

    sub_1C0CFB0A0(v72, isUniquelyReferenced_nonNull_native);
    v67 = sub_1C0D0EF18(v82);
    if ((v73 & 1) != (v74 & 1))
    {
      result = sub_1C0D78F7C();
      __break(1u);
      return result;
    }

LABEL_70:
    v25 = v100[0];
    if (v73)
    {
      goto LABEL_23;
    }

    goto LABEL_71;
  }

LABEL_75:

  *a4 = v25;
  return result;
}

uint64_t sub_1C0D61EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 3);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_170:
    v109 = v4;
    LOBYTE(v108[0]) = v5;
    return sub_1C0CFE738(&v109, v108, v8, a3);
  }

  v95 = *(v3 + 16);
  v96 = *v3;
  v97 = a3;
  v110 = MEMORY[0x1E69E7CC0];
  sub_1C0CF7BA0(0, v7, 0);
  v10 = 0;
  v8 = v110;
  v100 = v6;
  v101 = v6 + 32;
  v105 = a1;
  v99 = v7;
  while (1)
  {
    if (v10 >= *(v6 + 16))
    {
      goto LABEL_175;
    }

    v104 = v10;
    v11 = (v101 + 32 * v10);
    v13 = *v11;
    v12 = v11[1];
    v15 = v11[2];
    v14 = v11[3];
    sub_1C0D5FDD4(*v11, v12, v15, v14);
    sub_1C0D5FDD4(v13, v12, v15, v14);
    if (qword_1EBE6CB78 != -1)
    {
      swift_once();
    }

    if (qword_1EBE72CC0 < 0)
    {
      goto LABEL_176;
    }

    if (HIDWORD(qword_1EBE72CC0))
    {
      goto LABEL_177;
    }

    v16 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    inited = swift_initStackObject();
    inited[2] = a1;

    v18 = swift_slowAlloc();
    inited[3] = v18;
    inited[4] = v18 + v16;
    v106 = inited;
    v107 = v12;
    if ((v12 & 0x2000000000000000) != 0)
    {
      break;
    }

    v19 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v29 = *(v13 + 16);
        v30 = *(v13 + 24);
        v16 = sub_1C0D7812C();
        if (v16)
        {
          v31 = sub_1C0D7815C();
          if (__OFSUB__(v29, v31))
          {
            goto LABEL_183;
          }

          v16 += v29 - v31;
        }

        if (__OFSUB__(v30, v29))
        {
          goto LABEL_179;
        }

        v12 = v107;
        sub_1C0D7814C();
        v32 = v14 >> 62;
        if ((v14 >> 62) > 1)
        {
          if (v32 == 2)
          {
            v56 = *(v15 + 16);
            v57 = sub_1C0D7812C();
            if (!v57)
            {
              goto LABEL_237;
            }

            v58 = v57;
            v59 = sub_1C0D7815C();
            v60 = __OFSUB__(v56, v59);
            v61 = v56 - v59;
            if (v60)
            {
              goto LABEL_205;
            }

            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_238;
            }

            if (!(v61 + v58))
            {
              goto LABEL_239;
            }

            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
            }

            a1 = v105;
            v12 = v107;
            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_210;
            }
          }

          else
          {
            *(&v109 + 6) = 0;
            *&v109 = 0;
            a1 = v105;
            if (!v16)
            {
              goto LABEL_229;
            }

            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_202;
            }
          }
        }

        else if (v32)
        {
          if (v15 > v15 >> 32)
          {
            goto LABEL_199;
          }

          v76 = sub_1C0D7812C();
          if (!v76)
          {
            goto LABEL_221;
          }

          v77 = v76;
          v78 = sub_1C0D7815C();
          v79 = v15 - v78;
          if (__OFSUB__(v15, v78))
          {
            goto LABEL_209;
          }

          sub_1C0D7814C();
          if (!v16)
          {
            goto LABEL_222;
          }

          if (!(v79 + v77))
          {
            goto LABEL_223;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          a1 = v105;
          v12 = v107;
          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_212;
          }
        }

        else
        {
          *&v109 = v15;
          WORD4(v109) = v14;
          BYTE10(v109) = BYTE2(v14);
          BYTE11(v109) = BYTE3(v14);
          BYTE12(v109) = BYTE4(v14);
          BYTE13(v109) = BYTE5(v14);
          a1 = v105;
          if (!v16)
          {
            goto LABEL_225;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_201;
          }
        }

LABEL_157:
        v34 = cche_deserialize_seeded_ciphertext_coeff();
        v20 = v106;
        goto LABEL_158;
      }

      v42 = v14 >> 62;
      *(&v109 + 6) = 0;
      *&v109 = 0;
      v20 = inited;
      if ((v14 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v52 = *(v15 + 16);
          v53 = sub_1C0D7812C();
          if (!v53)
          {
            goto LABEL_233;
          }

          v54 = v53;
          v55 = sub_1C0D7815C();
          if (__OFSUB__(v52, v55))
          {
            goto LABEL_192;
          }

          v16 = v52 - v55 + v54;
          sub_1C0D7814C();
          a1 = v105;
          if (!v16)
          {
            goto LABEL_234;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_194;
          }
        }

        else
        {
          memset(v108, 0, 14);
          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_191;
          }
        }
      }

      else if (v42)
      {
        if (v15 > v15 >> 32)
        {
          goto LABEL_193;
        }

        v71 = sub_1C0D7812C();
        if (!v71)
        {
          goto LABEL_241;
        }

        v72 = v71;
        v73 = sub_1C0D7815C();
        if (__OFSUB__(v15, v73))
        {
          goto LABEL_197;
        }

        v74 = v15 - v73 + v72;
        result = sub_1C0D7814C();
        a1 = v105;
        if (!v74)
        {
          goto LABEL_242;
        }

        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_206;
        }
      }

      else
      {
        v108[0] = v15;
        LOWORD(v108[1]) = v14;
        BYTE2(v108[1]) = BYTE2(v14);
        BYTE3(v108[1]) = BYTE3(v14);
        BYTE4(v108[1]) = BYTE4(v14);
        BYTE5(v108[1]) = BYTE5(v14);
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_129;
    }

    v20 = inited;
    if (v19)
    {
      if (v13 >> 32 < v13)
      {
        goto LABEL_178;
      }

      v16 = sub_1C0D7812C();
      if (v16)
      {
        v40 = sub_1C0D7815C();
        if (__OFSUB__(v13, v40))
        {
          goto LABEL_184;
        }

        v16 += v13 - v40;
      }

      sub_1C0D7814C();
      v41 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v41 == 2)
        {
          v62 = *(v15 + 16);
          v63 = sub_1C0D7812C();
          if (!v63)
          {
            goto LABEL_226;
          }

          v64 = v63;
          v65 = sub_1C0D7815C();
          v60 = __OFSUB__(v62, v65);
          v66 = v62 - v65;
          if (v60)
          {
            goto LABEL_203;
          }

          sub_1C0D7814C();
          if (!v16)
          {
            goto LABEL_227;
          }

          if (!(v66 + v64))
          {
            goto LABEL_228;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          a1 = v105;
          v12 = v107;
          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_211;
          }
        }

        else
        {
          *(&v109 + 6) = 0;
          *&v109 = 0;
          a1 = v105;
          if (!v16)
          {
            goto LABEL_224;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_204;
          }
        }
      }

      else if (v41)
      {
        if (v15 > v15 >> 32)
        {
          goto LABEL_198;
        }

        v80 = sub_1C0D7812C();
        if (!v80)
        {
          goto LABEL_230;
        }

        v81 = v80;
        v82 = sub_1C0D7815C();
        v83 = v15 - v82;
        if (__OFSUB__(v15, v82))
        {
          goto LABEL_208;
        }

        sub_1C0D7814C();
        if (!v16)
        {
          goto LABEL_231;
        }

        if (!(v83 + v81))
        {
          goto LABEL_232;
        }

        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        a1 = v105;
        v12 = v107;
        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_213;
        }
      }

      else
      {
        *&v109 = v15;
        WORD4(v109) = v14;
        BYTE10(v109) = BYTE2(v14);
        BYTE11(v109) = BYTE3(v14);
        BYTE12(v109) = BYTE4(v14);
        BYTE13(v109) = BYTE5(v14);
        a1 = v105;
        if (!v16)
        {
          goto LABEL_240;
        }

        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_200;
        }
      }

      goto LABEL_157;
    }

    *&v109 = v13;
    WORD4(v109) = v12;
    BYTE10(v109) = BYTE2(v12);
    BYTE11(v109) = BYTE3(v12);
    BYTE12(v109) = BYTE4(v12);
    BYTE13(v109) = BYTE5(v12);
    v21 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v21 != 2)
      {
        memset(v108, 0, 14);
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_190;
        }

        goto LABEL_129;
      }

      v16 = BYTE6(v12);
      v47 = *(v15 + 16);
      v48 = sub_1C0D7812C();
      if (!v48)
      {
        goto LABEL_235;
      }

      v49 = v48;
      v50 = sub_1C0D7815C();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_186;
      }

      v51 = v47 - v50 + v49;
      sub_1C0D7814C();
      a1 = v105;
      if (!v51)
      {
        goto LABEL_236;
      }

      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (!v21)
      {
        v108[0] = v15;
        LOWORD(v108[1]) = v14;
        BYTE2(v108[1]) = BYTE2(v14);
        BYTE3(v108[1]) = BYTE3(v14);
        BYTE4(v108[1]) = BYTE4(v14);
        BYTE5(v108[1]) = BYTE5(v14);
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_187;
        }

LABEL_129:
        v34 = cche_deserialize_seeded_ciphertext_coeff();
        goto LABEL_158;
      }

      if (v15 > v15 >> 32)
      {
        goto LABEL_189;
      }

      v16 = BYTE6(v12);
      v67 = sub_1C0D7812C();
      if (!v67)
      {
        goto LABEL_219;
      }

      v68 = v67;
      v69 = sub_1C0D7815C();
      if (__OFSUB__(v15, v69))
      {
        goto LABEL_195;
      }

      v70 = v15 - v69 + v68;
      sub_1C0D7814C();
      a1 = v105;
      if (!v70)
      {
        goto LABEL_220;
      }

      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_207;
      }
    }

    v34 = cche_deserialize_seeded_ciphertext_coeff();
    v12 = v107;
LABEL_158:

LABEL_159:
    sub_1C0D5FE40(v13, v12, v15, v14);

    if (v34)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v91 = v34;
      *(v91 + 4) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v92 = v20[3];

      if (v92)
      {
        MEMORY[0x1C68E4EB0](v92, -1, -1);
      }

      sub_1C0D5FE40(v13, v107, v15, v14);
    }

    v84 = cche_plaintext_sizeof();
    v85 = swift_allocObject();
    v85[2] = a1;

    v86 = swift_slowAlloc();
    v85[3] = v86;
    v85[4] = v86 + v84;
    v87 = v20[3];
    if (!v87)
    {
      goto LABEL_215;
    }

    if (!*(a2 + 24))
    {
      goto LABEL_214;
    }

    v88 = cche_decrypt();
    if (v88)
    {
      v93 = v88;
      sub_1C0CF8DE0();
      swift_allocError();
      *v94 = v93;
      *(v94 + 4) = 0;
      swift_willThrow();

      sub_1C0D5FE40(v13, v107, v15, v14);
      swift_setDeallocating();

      MEMORY[0x1C68E4EB0](v87, -1, -1);
    }

    swift_setDeallocating();

    MEMORY[0x1C68E4EB0](v87, -1, -1);

    sub_1C0D5FE40(v13, v107, v15, v14);
    v110 = v8;
    v90 = *(v8 + 16);
    v89 = *(v8 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_1C0CF7BA0((v89 > 1), v90 + 1, 1);
      v8 = v110;
    }

    v10 = v104 + 1;
    *(v8 + 16) = v90 + 1;
    *(v8 + 8 * v90 + 32) = v85;
    v6 = v100;
    a1 = v105;
    if (v104 + 1 == v99)
    {
      a3 = v97;
      v4 = v96;
      v5 = v95;
      goto LABEL_170;
    }
  }

  v103 = v13;
  v22 = *(v15 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v98 = v8;
    *&v109 = MEMORY[0x1E69E7CC0];

    sub_1C0CF7C90(0, v22, 0);
    v16 = v109;
    v23 = v15;
    v24 = (v15 + 32);
    while (1)
    {
      v26 = *v24++;
      v25 = v26;
      if ((v26 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v25))
      {
        goto LABEL_174;
      }

      *&v109 = v16;
      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C0CF7C90((v27 > 1), v28 + 1, 1);
        v16 = v109;
      }

      *(v16 + 16) = v28 + 1;
      *(v16 + 4 * v28 + 32) = v25;
      if (!--v22)
      {
        v8 = v98;
        a1 = v105;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
  }

  v23 = v15;

LABEL_38:
  v12 = v107;
  v33 = v107 >> 62;
  if ((v107 >> 62) > 1)
  {
    v15 = v23;
    if (v33 == 2)
    {
      v35 = v8;
      v36 = *(v103 + 16);
      v37 = *(v103 + 24);
      v38 = sub_1C0D7812C();
      if (v38)
      {
        v39 = sub_1C0D7815C();
        if (__OFSUB__(v36, v39))
        {
          goto LABEL_185;
        }

        v38 += v36 - v39;
      }

      if (__OFSUB__(v37, v36))
      {
        goto LABEL_181;
      }

      sub_1C0D7814C();
      if (!v38)
      {
        goto LABEL_218;
      }

      v34 = cche_deserialize_ciphertext_coeff();

      a1 = v105;
      v12 = v107;
      v8 = v35;
    }

    else
    {
      *(&v109 + 6) = 0;
      *&v109 = 0;
      v34 = cche_deserialize_ciphertext_coeff();
    }

LABEL_71:
    v13 = v103;
    v20 = v106;
    goto LABEL_159;
  }

  v15 = v23;
  if (!v33)
  {
    v13 = v103;
    *&v109 = v103;
    DWORD2(v109) = v107;
    WORD6(v109) = WORD2(v107);
    v34 = cche_deserialize_ciphertext_coeff();

    v20 = v106;
    goto LABEL_159;
  }

  if (v103 >> 32 < v103)
  {
    goto LABEL_180;
  }

  v43 = sub_1C0D7812C();
  if (v43)
  {
    v44 = v43;
    v45 = sub_1C0D7815C();
    if (__OFSUB__(v103, v45))
    {
      goto LABEL_182;
    }

    v46 = v103 - v45 + v44;
    sub_1C0D7814C();
    if (!v46)
    {
      goto LABEL_217;
    }

    v34 = cche_deserialize_ciphertext_coeff();

    a1 = v105;
    v12 = v107;
    v15 = v23;
    goto LABEL_71;
  }

  sub_1C0D7814C();
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  sub_1C0D7814C();
LABEL_220:
  __break(1u);
LABEL_221:
  sub_1C0D7814C();
  if (!v16)
  {
LABEL_222:
    __break(1u);
  }

LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  sub_1C0D7814C();
  if (!v16)
  {
LABEL_227:
    __break(1u);
  }

LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  sub_1C0D7814C();
  if (!v16)
  {
LABEL_231:
    __break(1u);
  }

LABEL_232:
  __break(1u);
LABEL_233:
  sub_1C0D7814C();
LABEL_234:
  __break(1u);
LABEL_235:
  sub_1C0D7814C();
LABEL_236:
  __break(1u);
LABEL_237:
  sub_1C0D7814C();
  if (!v16)
  {
LABEL_238:
    __break(1u);
  }

LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  result = sub_1C0D7814C();
LABEL_242:
  __break(1u);
  return result;
}

uint64_t PEC.SerializedCiphertextCoeffMatrix.init(encryptionParams:dimensions:packing:ciphertexts:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!*(a4 + 16))
  {
    goto LABEL_6;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  v15[0] = v8;
  v15[1] = v9;
  v14 = v10;
  result = sub_1C0CFFC20(v16, v15, &v14);
  if (v5)
  {
  }

  if (*(a4 + 16) == result)
  {
    *a5 = v8;
    *(a5 + 8) = v9;
    *(a5 + 16) = v10;
    *(a5 + 24) = a4;
  }

  else
  {
LABEL_6:

    sub_1C0CF8DE0();
    swift_allocError();
    *v13 = 1;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C0D63338(uint64_t result, uint64_t a2)
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

uint64_t sub_1C0D63394(uint64_t result, uint64_t a2)
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

uint64_t HE.RlweParams.init(inParams:plaintextModulus:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v4 = 0;
  v5 = *a1;
  while (1)
  {
    v6 = byte_1F4034348[v4 + 32];
    v7 = cche_encryption_params_polynomial_degree();
    if (v7 != cche_encryption_params_polynomial_degree() || cche_encryption_params_plaintext_modulus() != v3)
    {
      goto LABEL_3;
    }

    result = cche_encryption_params_coefficient_nmoduli();
    if (result < 0)
    {
      break;
    }

    v9 = result;
    if (result)
    {
      v10 = sub_1C0D78C2C();
      *(v10 + 16) = v9;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v11 = (v10 + 32);
    cche_encryption_params_coefficient_moduli();
    *(v10 + 16) = v9;
    result = cche_encryption_params_coefficient_nmoduli();
    if (result < 0)
    {
      goto LABEL_39;
    }

    v12 = result;
    if (result)
    {
      v13 = sub_1C0D78C2C();
      *(v13 + 16) = v12;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = (v13 + 32);
    cche_encryption_params_coefficient_moduli();
    *(v13 + 16) = v12;
    if (*(v10 + 16) != v12)
    {
      goto LABEL_2;
    }

    if (v12 && v10 != v13)
    {
      while (*v11 == *v14)
      {
        ++v11;
        ++v14;
        if (!--v12)
        {
          goto LABEL_19;
        }
      }

LABEL_2:

      v3 = a2;
      goto LABEL_3;
    }

LABEL_19:

    v15 = 0x1EFFCu >> v6;
    if (((1 << v5) & 0x1EFFC) != 0)
    {
      v16 = 0x316D75746E617571;
    }

    else
    {
      v16 = 0x656B636568636E75;
    }

    if (((1 << v5) & 0x1EFFC) != 0)
    {
      v17 = 0xEA00000000003832;
    }

    else
    {
      v17 = 0xE900000000000064;
    }

    if (v15)
    {
      v18 = 0x316D75746E617571;
    }

    else
    {
      v18 = 0x656B636568636E75;
    }

    if (v15)
    {
      v19 = 0xEA00000000003832;
    }

    else
    {
      v19 = 0xE900000000000064;
    }

    if (v18 == v16 && v19 == v17)
    {

LABEL_37:
      *a3 = v6;
      return result;
    }

    v20 = sub_1C0D78F3C();

    v3 = a2;
    if (v20)
    {
      goto LABEL_37;
    }

LABEL_3:
    if (++v4 == 17)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v21 = 5;
      *(v21 + 4) = 1;
      return swift_willThrow();
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

_BYTE *HE.EncryptionParams.init(rlweParams:scheme:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t HE.RlweParams.coefficientModuli.getter()
{
  result = cche_encryption_params_coefficient_nmoduli();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_1C0D78C2C();
      *(v2 + 16) = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v3 = v2;
    cche_encryption_params_coefficient_moduli();
    *(v3 + 16) = v1;
    return v3;
  }

  return result;
}

unint64_t HE.RlweParams.supportsEvaluationKey.getter()
{
  result = cche_encryption_params_coefficient_nmoduli();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_1C0D78C2C();
      *(v2 + 16) = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v3 = v2;
    cche_encryption_params_coefficient_moduli();
    *(v3 + 16) = v1;

    return v1 > 1;
  }

  return result;
}

uint64_t HE.RlweParams.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1C0D78F5C();

  v6 = 17;
  if (v4 < 0x11)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t HE.RlweParams.rawValue.getter()
{
  result = 0xD00000000000001DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
    case 4:
    case 0xD:
    case 0x10:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 9:
    case 0xA:
    case 0xB:
    case 0xE:
    case 0xF:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 6:
    case 7:
    case 8:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C0D63A30()
{
  v0 = HE.RlweParams.rawValue.getter();
  v2 = v1;
  if (v0 == HE.RlweParams.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C0D78F3C();
  }

  return v5 & 1;
}

uint64_t sub_1C0D63ACC()
{
  sub_1C0D78FFC();
  HE.RlweParams.rawValue.getter();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D63B34(uint64_t a1)
{
  HE.RlweParams.rawValue.getter();
  sub_1C0D78B0C();
}

uint64_t sub_1C0D63B98(uint64_t a1)
{
  sub_1C0D78FFC();
  HE.RlweParams.rawValue.getter();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

unint64_t sub_1C0D63C08@<X0>(unint64_t *a1@<X8>)
{
  result = HE.RlweParams.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0D63CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D64CE0();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_1C0D63D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C0D64CE0();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t HE.SecurityLevel.rawValue.getter()
{
  if (*v0)
  {
    return 0x316D75746E617571;
  }

  else
  {
    return 0x656B636568636E75;
  }
}

uint64_t sub_1C0D63E1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x316D75746E617571;
  }

  else
  {
    v3 = 0x656B636568636E75;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEA00000000003832;
  }

  if (*a2)
  {
    v5 = 0x316D75746E617571;
  }

  else
  {
    v5 = 0x656B636568636E75;
  }

  if (*a2)
  {
    v6 = 0xEA00000000003832;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C0D78F3C();
  }

  return v8 & 1;
}

uint64_t sub_1C0D63ECC()
{
  sub_1C0D78FFC();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D63F58(uint64_t a1)
{
  sub_1C0D78B0C();
}

uint64_t sub_1C0D63FD0(uint64_t a1)
{
  sub_1C0D78FFC();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

void sub_1C0D64064(uint64_t *a1@<X8>)
{
  v2 = 0x656B636568636E75;
  if (*v1)
  {
    v2 = 0x316D75746E617571;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEA00000000003832;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C0D6416C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D64C8C();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_1C0D641C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C0D64C8C();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_1C0D64248@<X0>(char *a4@<X8>)
{
  v5 = sub_1C0D78F1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t HE.Scheme.rawValue.getter()
{
  if (*v0)
  {
    return 5654338;
  }

  else
  {
    return 5654082;
  }
}

uint64_t sub_1C0D642D4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 5654338;
  }

  else
  {
    v2 = 5654082;
  }

  if (*a2)
  {
    v3 = 5654338;
  }

  else
  {
    v3 = 5654082;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C0D78F3C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1C0D64348()
{
  sub_1C0D78FFC();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D643AC(uint64_t a1)
{
  sub_1C0D78B0C();
}

uint64_t sub_1C0D643F4(uint64_t a1)
{
  sub_1C0D78FFC();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D64460@<X0>(char *a3@<X8>)
{
  v4 = sub_1C0D78F1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1C0D644BC(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 5654338;
  }

  else
  {
    v2 = 5654082;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1C0D645A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D64C38();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_1C0D645F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C0D64C38();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t _s16CryptoKitPrivate2HEO16EncryptionParamsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = HE.RlweParams.rawValue.getter();
  v6 = v5;
  if (v4 == HE.RlweParams.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1C0D78F3C();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  if (v2)
  {
    v11 = 5654338;
  }

  else
  {
    v11 = 5654082;
  }

  if (v3)
  {
    v12 = 5654338;
  }

  else
  {
    v12 = 5654082;
  }

  if (v11 == v12)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C0D78F3C();
  }

  swift_bridgeObjectRelease_n();
  return v10 & 1;
}

unint64_t sub_1C0D64780()
{
  result = qword_1EBE6E050;
  if (!qword_1EBE6E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E050);
  }

  return result;
}

unint64_t sub_1C0D64808()
{
  result = qword_1EBE6CB70;
  if (!qword_1EBE6CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CB70);
  }

  return result;
}

unint64_t sub_1C0D64890()
{
  result = qword_1EBE6E078;
  if (!qword_1EBE6E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E078);
  }

  return result;
}

uint64_t sub_1C0D64914(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _s16EncryptionParamsVwet(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16EncryptionParamsVwst(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10RlweParamsOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10RlweParamsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0D64C38()
{
  result = qword_1EBE6CB60;
  if (!qword_1EBE6CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CB60);
  }

  return result;
}

unint64_t sub_1C0D64C8C()
{
  result = qword_1EBE6CB68;
  if (!qword_1EBE6CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CB68);
  }

  return result;
}

unint64_t sub_1C0D64CE0()
{
  result = qword_1EBE6CB80;
  if (!qword_1EBE6CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CB80);
  }

  return result;
}

uint64_t sub_1C0D64D50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 32))
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

uint64_t sub_1C0D64DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

int64_t sub_1C0D64E2C(int64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    if (result >= 1)
    {
      v4 = v2;
      while (1)
      {
        v6 = *v4;
        result = swift_beginAccess();
        v7 = v6[2];
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = _swift_stdlib_malloc_size(v6) - 32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v10 = v9 < v8;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (v8 < 0)
          {
            goto LABEL_32;
          }

          if (HIDWORD(v8))
          {
            goto LABEL_34;
          }

          if (v7 == -1)
          {
            v14 = 1;
          }

          else
          {
            v11 = v7 | (v7 >> 1) | ((v7 | (v7 >> 1)) >> 2);
            v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
            v13 = v12 | HIWORD(v12);
            if (v13 == -1)
            {
              v14 = 0xFFFFFFFFLL;
            }

            else
            {
              v14 = (v13 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing(0);
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v14;
          if (v7 < 0)
          {
            goto LABEL_36;
          }

          v19 = result;
          v20 = *v4;
          result = swift_beginAccess();
          v21 = v20[2];
          if (v21 < v7)
          {
            __break(1u);
            return result;
          }

          sub_1C0CF062C(v20, 0, v7);
          sub_1C0CF0710(a2);
          sub_1C0CF062C(v20, v7, v21);

          *v4 = v19;
          if (!--v3)
          {
            return result;
          }
        }

        else
        {
          v15 = *v4;
          result = swift_beginAccess();
          v16 = v15[2];
          if (__OFADD__(v16, 1))
          {
            goto LABEL_33;
          }

          result = _swift_stdlib_malloc_size(v15);
          if (result - 32 < v16 + 1)
          {
            goto LABEL_35;
          }

          if (v16 < v7)
          {
            goto LABEL_37;
          }

          result = sub_1C0CF2E8C(v7, v16, 1);
          if (v7 < 0)
          {
            goto LABEL_38;
          }

          result = _swift_stdlib_malloc_size(v15);
          if (result - 32 < v8)
          {
            goto LABEL_39;
          }

          if (v8 < v7)
          {
            goto LABEL_40;
          }

          result = _swift_stdlib_malloc_size(v15);
          *(v15 + v7 + 32) = a2;
          v17 = v15[2];
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_41;
          }

          result = swift_beginAccess();
          v15[2] = v18;
          if (!--v3)
          {
            return result;
          }
        }
      }

      __break(1u);
LABEL_32:
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
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

size_t sub_1C0D65070(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *v1;
  swift_beginAccess();
  return sub_1C0CF15F4(*(v4 + 16), *(v4 + 16), (a1 + 32), v3);
}

size_t sub_1C0D650E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1C0D7836C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D6E02C(a1, a2, v3);
  if (result)
  {
    v29 = v7;
    sub_1C0CF6468(a1, a2);
    sub_1C0D7837C();
    sub_1C0D6F118(&qword_1ED9076D8, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
    sub_1C0D78D4C();
    if (v31)
    {
      return (*(v29 + 8))(v9, v6);
    }

    else
    {
      v11 = v30;
      while (1)
      {
        v12 = *v3;
        result = swift_beginAccess();
        v13 = v12[2];
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v15 = _swift_stdlib_malloc_size(v12) - 32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v16 = v15 < v14;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          if (v14 < 0)
          {
            goto LABEL_33;
          }

          if (HIDWORD(v14))
          {
            goto LABEL_35;
          }

          if (v13 == -1)
          {
            v20 = 1;
          }

          else
          {
            v17 = v13 | (v13 >> 1) | ((v13 | (v13 >> 1)) >> 2);
            v18 = v17 | (v17 >> 4) | ((v17 | (v17 >> 4)) >> 8);
            v19 = v18 | HIWORD(v18);
            if (v19 == -1)
            {
              v20 = 0xFFFFFFFFLL;
            }

            else
            {
              v20 = (v19 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing(0);
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v20;
          if (v13 < 0)
          {
            goto LABEL_37;
          }

          v25 = result;
          v26 = *v3;
          result = swift_beginAccess();
          v27 = v26[2];
          if (v27 < v13)
          {
            __break(1u);
            break;
          }

          sub_1C0CF062C(v26, 0, v13);
          sub_1C0CF0710(v11);
          sub_1C0CF062C(v26, v13, v27);

          *v3 = v25;
        }

        else
        {
          v21 = *v3;
          result = swift_beginAccess();
          v22 = v21[2];
          if (__OFADD__(v22, 1))
          {
            goto LABEL_34;
          }

          result = _swift_stdlib_malloc_size(v21);
          if ((result - 32) < v22 + 1)
          {
            goto LABEL_36;
          }

          if (v22 < v13)
          {
            goto LABEL_38;
          }

          result = sub_1C0CF2E8C(v13, v22, 1);
          if (v13 < 0)
          {
            goto LABEL_39;
          }

          result = _swift_stdlib_malloc_size(v21);
          if ((result - 32) < v14)
          {
            goto LABEL_40;
          }

          if (v14 < v13)
          {
            goto LABEL_41;
          }

          result = _swift_stdlib_malloc_size(v21);
          *(v21 + v13 + 32) = v11;
          v23 = v21[2];
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_42;
          }

          swift_beginAccess();
          v21[2] = v24;
        }

        sub_1C0D78D4C();
        v11 = v30;
        if (v31)
        {
          return (*(v29 + 8))(v9, v6);
        }
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
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }
  }

  return result;
}

char *sub_1C0D65484(void *(*a1)(_OWORD *__return_ptr, int *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = HIDWORD(a3);
  if (HIDWORD(a3) < a3)
  {
    v6 = -(a3 - HIDWORD(a3));
  }

  else
  {
    v6 = (HIDWORD(a3) - a3);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6 == -1)
  {
    return v7;
  }

  v27 = MEMORY[0x1E69E7CC0];
  result = sub_1C0CF7D10(0, (v6 + 1) & ~((v6 + 1) >> 63), 0);
  if (v6 >= -1)
  {
    v7 = v27;
    v10 = v6 + 1;
    while (1)
    {
      v24 = v4;
      result = a1(v25, &v24, &v23);
      if (v3)
      {

        return v7;
      }

      v22 = v26;
      v20 = v25[4];
      v21 = v25[5];
      v18 = v25[2];
      v19 = v25[3];
      v16 = v25[0];
      v17 = v25[1];
      v27 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1C0CF7D10((v11 > 1), v12 + 1, 1);
        v7 = v27;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 104 * v12;
      *(v13 + 48) = v17;
      *(v13 + 64) = v18;
      *(v13 + 32) = v16;
      *(v13 + 128) = v22;
      *(v13 + 96) = v20;
      *(v13 + 112) = v21;
      *(v13 + 80) = v19;
      if (v4 == v5)
      {
        v14 = 0;
      }

      else
      {
        v14 = v4 + 1;
        if (v4 == -1)
        {
          __break(1u);
          break;
        }
      }

      if (!--v10)
      {
        return v7;
      }

      v15 = v4 == v5;
      v4 = v14;
      if (v15)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C0D6562C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D7825C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = xmmword_1C0D7BAB0;
  *(a2 + 48) = 0;
  *(a2 + 56) = xmmword_1C0D7BAB0;
  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  sub_1C0D783DC();
  v30 = 0;
  if (!ccss_sizeof_shamir_share_generator_serialization())
  {
    v12 = 0x80000001C0D80270;
    sub_1C0D01E40();
    swift_allocError();
    *(v14 + 12) = 0;
    *(v14 + 16) = 256;
    *(v14 + 4) = -7;
    *(v14 + 8) = 0;
    v13 = 0xD00000000000003ALL;
    v15 = 49;
    goto LABEL_5;
  }

  v8 = swift_slowAlloc();
  v9 = ccss_shamir_share_generator_serialize();
  if (v9)
  {
    v10 = v9;
    MEMORY[0x1C68E4EB0](v8, -1, -1);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000038, 0x80000001C0D802B0);
    v27[3] = v10;
    v11 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v11);

    v13 = v28;
    v12 = v29;
    sub_1C0D01E40();
    swift_allocError();
    *(v14 + 4) = 0;
    *(v14 + 8) = 1;
    *(v14 + 12) = 0;
    *(v14 + 16) = 256;
    v15 = 56;
LABEL_5:
    *(v14 + 64) = v13;
    *(v14 + 72) = v12;
    *v14 = 3;
    *(v14 + 24) = v15;
    *(v14 + 32) = 0x293A5F2874696E69;
    *(v14 + 40) = 0xE800000000000000;
    *(v14 + 48) = 0xD00000000000006BLL;
    *(v14 + 56) = 0x80000001C0D81620;
    swift_willThrow();

    return sub_1C0D6F0B8(a2, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
  }

  v17 = v30;
  (*(v5 + 104))(v7, *MEMORY[0x1E6969000], v4);
  v18 = sub_1C0D04A08(v8, v17, v7);
  v20 = v19;
  *a2 = 1;
  *(a2 + 17) = *(a1 + 17);
  v21 = *(a1 + 32);
  *(a2 + 20) = *(a1 + 24);
  *(a2 + 24) = *(a1 + 16);
  v22 = *(a1 + 40);
  if (v22 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  if (v22 >> 60 == 15)
  {
    v24 = 0xC000000000000000;
  }

  else
  {
    v24 = *(a1 + 40);
  }

  v25 = *(a2 + 32);
  v26 = *(a2 + 40);
  sub_1C0D134D0(v21, v22);
  sub_1C0CF448C(v25, v26);
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  LOBYTE(v25) = *(a1 + 18);

  *(a2 + 48) = v25;
  result = sub_1C0CF448C(*(a2 + 56), *(a2 + 64));
  *(a2 + 56) = v18;
  *(a2 + 64) = v20;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1C0D659DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v2 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 8) = xmmword_1C0D7BAB0;
  sub_1C0D783DC();
  v13 = *(v10 + 36);
  v14 = *(v6 + 56);
  v25 = v5;
  v14(&v12[v13], 1, 1, v5);
  v15 = *(v3 + 56);
  v26 = *(v10 + 40);
  v27 = v15;
  v29 = v3 + 56;
  v30 = v2;
  v15(&v12[v26], 1, 1, v2);
  *v12 = 1;
  v16 = v32;

  v18 = v33;
  sub_1C0D6562C(v17, v8);
  if (!v18)
  {
    sub_1C0D13578(&v12[v13], &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    sub_1C0D37A20(v8, &v12[v13], type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    v14(&v12[v13], 0, 1, v25);
    v19 = type metadata accessor for CKSecretSharing.HybridGenerator(0);
    MEMORY[0x1EEE9AC00](v19);
    *(&v25 - 2) = v12;
    v20 = sub_1C0D7867C();
    MEMORY[0x1EEE9AC00](v20);
    *(&v25 - 2) = v16;
    sub_1C0D6F118(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox, &unk_1C0D7D034);
    v21 = v28;
    v22 = v30;
    sub_1C0D7851C();
    v23 = v26;
    sub_1C0D13578(&v12[v26], &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    sub_1C0D37A20(v21, &v12[v23], type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    v27(&v12[v23], 0, 1, v22);
    sub_1C0D6F050(v12, v31, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  sub_1C0D6F0B8(v16, type metadata accessor for CKSecretSharing.HybridGenerator);
  return sub_1C0D6F0B8(v12, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
}

uint64_t sub_1C0D65E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = MEMORY[0x1E69E6290];
  v16[4] = MEMORY[0x1E6969DF8];
  v16[0] = a1;
  v16[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1C0D77CE4(v5, v6);
      v9 = v14 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1C0D77DA4(v5, v6);
      v9 = v15 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1C0D77E20(v5, v6);
      v9 = v13 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  return sub_1C0CF448C(v10, v11);
}

uint64_t sub_1C0D65EE0(uint64_t a1)
{
  v2 = sub_1C0D7877C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CKSecretSharing.HybridGenerator(0);
  v6 = sub_1C0D7878C();
  v8 = v7;
  sub_1C0CF448C(*(a1 + 16), *(a1 + 24));
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  v9 = sub_1C0D7879C();
  v11 = v10;
  sub_1C0CF448C(*(a1 + 32), *(a1 + 40));
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  sub_1C0D787BC();
  v18 = v2;
  v19 = sub_1C0D6F118(&qword_1EBE6E090, MEMORY[0x1E69664E8], MEMORY[0x1E69664E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_1C0D7819C();
  (*(v3 + 8))(v5, v2);
  v13 = v16[1];
  v14 = v16[2];
  __swift_destroy_boxed_opaque_existential_1(v17);
  result = sub_1C0CF448C(*a1, *(a1 + 8));
  *a1 = v13;
  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_1C0D660D8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, char a5, uint64_t a6, char a7)
{
  v8 = v7;
  *(v8 + 16) = 257;
  *(v8 + 18) = 0;
  sub_1C0CEDF4C(v8 + 48);
  v29[0] = xmmword_1C0D7A9A0;
  v29[1] = xmmword_1C0D7A9B0;
  v29[2] = xmmword_1C0D7A9C0;
  v30 = 16;
  v31 = &unk_1F4034280;
  v32 = 0xD000000000000021;
  v33 = 0x80000001C0D7FDC0;
  v34 = 0xD000000000000023;
  v35 = 0x80000001C0D7FDF0;
  *(v8 + 16) = a4;
  *(v8 + 17) = a5;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  if ((a1 - 0x7FFFFFFF) >= 0xFFFFFFFF80000003)
  {
    if ((a7 & 1) == 0)
    {
      *(v8 + 18) = 1;
    }

    sub_1C0D134D0(a2, a3);
    ccss_sizeof_parameters_fix();
    *(v8 + 144) = swift_slowAlloc();
    v21 = ccss_shamir_parameters_init();
    if (!v21)
    {
      ccss_sizeof_share();
      *(v8 + 152) = swift_slowAlloc();
      ccss_sizeof_generator();
      *(v8 + 160) = swift_slowAlloc();
      ccss_shamir_share_init();
      sub_1C0D6E5CC(v29);
      sub_1C0D13830(a2, a3);
      return v8;
    }

    MEMORY[0x1C68E4EB0](*(v8 + 144), -1, -1);
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000056, 0x80000001C0D81D30);
    LODWORD(v36) = v21;
    v22 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v22);

    v23 = v28[0];
    sub_1C0D01E40();
    swift_allocError();
    *(v18 + 12) = 0;
    *(v18 + 16) = 256;
    *(v18 + 4) = v21;
    *(v18 + 8) = 0;
    *(v18 + 64) = v23;
    v19 = 3;
    v20 = 156;
  }

  else
  {
    sub_1C0D134D0(a2, a3);
    sub_1C0D78DAC();

    *&v28[0] = 0xD000000000000016;
    *(&v28[0] + 1) = 0x80000001C0D80500;
    v15 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v15);

    MEMORY[0x1C68E3B00](8236, 0xE200000000000000);
    v36 = 2147483646;
    v16 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v16);

    MEMORY[0x1C68E3B00](93, 0xE100000000000000);
    v17 = v28[0];
    sub_1C0D01E40();
    swift_allocError();
    *(v18 + 4) = 0;
    v19 = 1;
    *(v18 + 8) = 1;
    *(v18 + 12) = 0;
    *(v18 + 16) = 256;
    *(v18 + 64) = v17;
    v20 = 141;
  }

  *v18 = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = 0xD00000000000007FLL;
  *(v18 + 40) = 0x80000001C0D81D90;
  *(v18 + 48) = 0xD00000000000006BLL;
  *(v18 + 56) = 0x80000001C0D81620;
  swift_willThrow();
  sub_1C0D13830(a2, a3);
  sub_1C0D6E5CC(v29);
  sub_1C0D13830(*(v8 + 32), *(v8 + 40));
  v24 = *(v8 + 96);
  v28[2] = *(v8 + 80);
  v28[3] = v24;
  v25 = *(v8 + 128);
  v28[4] = *(v8 + 112);
  v28[5] = v25;
  v26 = *(v8 + 64);
  v28[0] = *(v8 + 48);
  v28[1] = v26;
  sub_1C0D6E5CC(v28);
  type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t sub_1C0D664D8()
{
  MEMORY[0x1C68E4EB0](*(v0 + 144), -1, -1);
  MEMORY[0x1C68E4EB0](*(v0 + 152), -1, -1);
  memset_s(*(v0 + 160), 8uLL, 0, 8uLL);
  MEMORY[0x1C68E4EB0](*(v0 + 160), -1, -1);
  sub_1C0D13830(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t CKSecretSharing.HybridGenerator.init(threshold:secret:associatedData:includeADInShares:includeThresholdInShares:ciphersuite:insecureToChangeIncludeMessageEntropy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t *a8@<X8>, unsigned __int8 a9)
{
  v165 = a2;
  LODWORD(v163) = a7;
  LODWORD(v162) = a6;
  v166 = a3;
  v160 = a8;
  LODWORD(v161) = a9;
  v186 = *MEMORY[0x1E69E9840];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6DCE8, &unk_1C0D7EF60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v153 = v143 - v13;
  v14 = sub_1C0D787CC();
  v158 = *(v14 - 8);
  v159 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v152 = v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1C0D7877C();
  v154 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C0D786AC();
  v157 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v143 - v21;
  type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  swift_allocObject();
  sub_1C0D134D0(a4, a5);
  v23 = a1;
  v24 = a1;
  v25 = a4;
  v26 = v164;
  v28 = sub_1C0D660D8(v24, a4, a5, v162, v163, v27, v161);
  if (v26)
  {
    sub_1C0D13830(a4, a5);
    v29 = v165;
    v30 = v166;
    return sub_1C0CF448C(v29, v30);
  }

  v163 = v17;
  v164 = v23;
  v161 = v28;
  v162 = 0;
  v150 = v22;
  v151 = v20;
  *v160 = v28;
  v170[0] = xmmword_1C0D7A9A0;
  v170[1] = xmmword_1C0D7A9B0;
  v171 = xmmword_1C0D7A9C0;
  v172 = 16;
  v173 = &unk_1F4034280;
  v174 = 0xD000000000000021;
  v175 = 0x80000001C0D7FDC0;
  v32 = a5 >> 60;
  v176 = 0xD000000000000023;
  v177 = 0x80000001C0D7FDF0;
  v33 = a4;
  if (a5 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v49 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v49 != 2)
    {
      sub_1C0D13830(a4, a5);
LABEL_5:
      v34 = 0;
      goto LABEL_6;
    }

    v63 = a4[2];
    v62 = a4[3];
    v35 = __OFSUB__(v62, v63);
    v34 = v62 - v63;
    if (v35)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else if (v49)
  {
    LODWORD(v34) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
      goto LABEL_62;
    }

    v34 = v34;
  }

  else
  {
    sub_1C0D13830(a4, a5);
    v34 = BYTE6(a5);
  }

LABEL_6:
  v35 = __OFADD__(v34, 4);
  v36 = v34 + 4;
  if (v35)
  {
    __break(1u);
  }

  else if (!__OFADD__(v36, 1))
  {
    a4 = &v180;
    v184 = sub_1C0D6E528(v36 + 1);
    v185 = v37;
    if (qword_1EBE6CB98 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_9:
  v38 = off_1EBE6CBA0;
  v168 = off_1EBE6CBA0;
  v169 = off_1EBE6CBA0;
  if ((v164 - 0x7FFFFFFF) >= 0xFFFFFFFF80000003)
  {
    v148 = v25;
    v149 = a5;
    v167 = bswap32(v164);
    swift_retain_n();
    v50 = sub_1C0D07CD0(&v167, &v168);
    v52 = v51;
    v53 = MEMORY[0x1E6969080];
    v54 = MEMORY[0x1E6969078];
    a4[11] = MEMORY[0x1E6969080];
    a4[12] = v54;
    a4[8] = v50;
    a4[9] = v52;
    v55 = __swift_project_boxed_opaque_existential_1(v183, v53);
    v33 = &v180;
    v57 = *v55;
    v56 = v55[1];
    sub_1C0CF6468(v50, v52);
    v58 = v162;
    sub_1C0D4268C(v57, v56, &v184);
    v25 = v58;
    sub_1C0CF448C(v50, v52);
    __swift_destroy_boxed_opaque_existential_1(v183);
    v147 = v38;
    if (v32 > 0xE)
    {
      v59 = v161;
      v60 = MEMORY[0x1E6969080];
      v61 = MEMORY[0x1E6969078];
      goto LABEL_21;
    }

LABEL_20:
    v64 = MEMORY[0x1E6969080];
    v33[11] = MEMORY[0x1E6969080];
    v61 = MEMORY[0x1E6969078];
    v33[12] = MEMORY[0x1E6969078];
    v66 = v148;
    v65 = v149;
    v33[8] = v148;
    v33[9] = v65;
    v67 = __swift_project_boxed_opaque_existential_1(v183, v64);
    v68 = *v67;
    v69 = v67[1];
    sub_1C0CF6468(v66, v65);
    sub_1C0D4268C(v68, v69, &v184);
    __swift_destroy_boxed_opaque_existential_1(v183);
    v59 = v161;
    v60 = v64;
LABEL_21:
    if (*(v59 + 18))
    {
      v70 = &unk_1F40346F8;
    }

    else
    {
      v70 = &unk_1F4034720;
    }

    v71 = sub_1C0D0FA30(v70);
    v73 = v72;
    v33[11] = v60;
    v33[12] = v61;
    v33[8] = v71;
    v33[9] = v72;
    v74 = __swift_project_boxed_opaque_existential_1(v183, v60);
    v75 = *v74;
    v76 = v74[1];
    sub_1C0CF6468(v71, v73);
    v77 = v25;
    sub_1C0D4268C(v75, v76, &v184);
    sub_1C0CF448C(v71, v73);
    __swift_destroy_boxed_opaque_existential_1(v183);
    sub_1C0D650E4(v33[13], v33[14]);
    v79 = v165;
    v78 = v166;
    sub_1C0D650E4(v165, v166);
    sub_1C0D650E4(v79, v78);
    v80 = *(v59 + 18);
    v164 = v77;
    if (v80)
    {
      goto LABEL_44;
    }

    v81 = v171;
    if (!v171)
    {
      v91 = v147;

      v47 = v159;
      v46 = v160;
      v82 = v149;
      goto LABEL_39;
    }

    v46 = v160;
    v82 = v149;
    if ((v171 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v47 = v159;
      if (!DWORD1(v171))
      {
        v83 = (v171 - 1) | ((v171 - 1) >> 1) | (((v171 - 1) | ((v171 - 1) >> 1)) >> 2);
        v84 = v83 | (v83 >> 4) | ((v83 | (v83 >> 4)) >> 8);
        v85 = v84 | HIWORD(v84);
        v86 = __CFADD__(v85, 1);
        v87 = v85 + 1;
        if (v86)
        {
          v88 = 0xFFFFFFFFLL;
        }

        else
        {
          v88 = v87;
        }

        type metadata accessor for SecureBytes.Backing(0);
        v89 = swift_allocObject();
        v89[2] = 0;
        v90 = v89 + 2;
        v89[3] = v88;
        v91 = v89;
        if ((_swift_stdlib_malloc_size(v89) - 32) >= v81)
        {
          LODWORD(v183[0]) = 0;
          result = ccrng();
          if (!result)
          {
            __break(1u);
            return result;
          }

          if (!LODWORD(v183[0]))
          {
            ccrng_generate_bridge();
            swift_beginAccess();
            *v90 = v81;
LABEL_39:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              swift_beginAccess();
              v92 = v164;
              sub_1C0CF2CF4(v91 + 32, v91 + 32 + *(v91 + 16), v182);
              v164 = v92;
              v93 = v33[2];

              v91 = v93;
            }

            swift_beginAccess();
            if (SecRandomCopyBytes(*MEMORY[0x1E697B308], *(v91 + 16), (v91 + 32)))
            {
              sub_1C0D01E40();
              swift_allocError();
              *(v94 + 4) = 0;
              *(v94 + 8) = 1;
              *(v94 + 12) = 0;
              *(v94 + 16) = 256;
              *(v94 + 64) = 0;
              *(v94 + 72) = 0xE000000000000000;
              *v94 = 7;
              *(v94 + 24) = xmmword_1C0D7ED40;
              *(v94 + 40) = 0x80000001C0D81590;
              *(v94 + 48) = 0xD00000000000006BLL;
              *(v94 + 56) = 0x80000001C0D81620;
              swift_willThrow();
              sub_1C0CF448C(v165, v166);
              sub_1C0D6E5CC(v170);
              sub_1C0D13830(v148, v82);

              v44 = 0;
              v45 = 0;
              v48 = v163;
              goto LABEL_47;
            }

            sub_1C0D65070(v91);
            sub_1C0D65070(v91);

LABEL_44:
            v95 = v150;
            v96 = v169;
            v180 = v169;
            v161 = sub_1C0CF39A8();
            swift_retain_n();
            sub_1C0D7868C();
            v97 = v174;
            v98 = v175;
            sub_1C0D78BFC();
            v180 = sub_1C0D07698(v97, v98);
            v181 = v99;
            sub_1C0D78BFC();
            v178 = sub_1C0D07698(v97, v98);
            v179 = v100;
            v144 = type metadata accessor for CKSecretSharing.HybridGenerator(0);
            v101 = *(v144 + 20);
            v147 = sub_1C0D789EC();
            v102 = v95;
            v146 = sub_1C0D6F118(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
            sub_1C0D17E68();
            v145 = v101;
            sub_1C0D7881C();
            sub_1C0CF448C(v178, v179);
            sub_1C0CF448C(v180, v181);
            v103 = v157 + 8;
            v104 = *(v157 + 8);
            v48 = v163;
            v104(v102, v163);
            v162 = v96;
            v180 = v96;
            sub_1C0D7868C();
            v105 = v176;
            v106 = v177;
            sub_1C0D78BFC();
            v180 = sub_1C0D07698(v105, v106);
            v181 = v107;
            sub_1C0D78BFC();
            v108 = v106;
            v109 = v104;
            v178 = sub_1C0D07698(v105, v108);
            v179 = v110;
            v111 = v151;
            sub_1C0D7881C();
            sub_1C0CF448C(v178, v179);
            sub_1C0CF448C(v180, v181);
            v112 = v102;
            v113 = v103;
            v104(v112, v48);
            v114 = v155;
            v115 = v156;
            v116 = v164;
            sub_1C0D7867C();
            if (v116)
            {
              sub_1C0CF448C(v165, v166);
              sub_1C0D6E5CC(v170);
              sub_1C0D13830(v148, v149);
              v109(v111, v48);

              v45 = 0;
              v44 = 1;
              v46 = v160;
              v47 = v159;
            }

            else
            {
              v143[0] = v109;
              v143[1] = v113;
              v117 = v115;
              v118 = v168;
              v178 = v168;
              v119 = v114;
              v121 = v153;
              v120 = v154;
              (*(v154 + 16))(v153, v119, v117);
              (*(v120 + 56))(v121, 0, 1, v117);
              v123 = v184;
              v122 = v185;
              v180 = v184;
              v181 = v185;
              v164 = v118;

              v124 = v122;
              v125 = v121;
              sub_1C0CF6468(v123, v124);
              sub_1C0CF330C();
              v126 = v160;
              v127 = v152;
              sub_1C0D7874C();
              v131 = v156;
              sub_1C0CF448C(v180, v181);
              sub_1C0D13578(v125, qword_1EBE6DCE8, &unk_1C0D7EF60);

              (*(v158 + 32))(v126 + *(v144 + 24), v127, v159);
              v132 = v145;
              sub_1C0D7867C();
              v133 = v150;
              v134 = (*(v157 + 16))(v150, v126 + v132, v48);
              v135 = v48;
              MEMORY[0x1EEE9AC00](v134);
              sub_1C0D7867C();
              v136 = v143[0];
              (v143[0])(v133, v48);
              v137 = v180;
              if (!v180)
              {
                sub_1C0CF448C(v165, v166);
                sub_1C0D6E5CC(v170);
                sub_1C0D13830(v148, v149);
                (*(v154 + 8))(v155, v131);
                v136(v151, v135);

                v29 = v184;
                v30 = v185;
                return sub_1C0CF448C(v29, v30);
              }

              v180 = 0;
              v181 = 0xE000000000000000;
              sub_1C0D78DAC();
              MEMORY[0x1C68E3B00](0xD000000000000036, 0x80000001C0D7FF20);
              LODWORD(v178) = v137;
              v138 = sub_1C0D78F2C();
              MEMORY[0x1C68E3B00](v138);

              v139 = v180;
              v140 = v181;
              v141 = v135;
              sub_1C0D01E40();
              swift_allocError();
              *(v142 + 12) = 0;
              *(v142 + 16) = 256;
              *(v142 + 4) = v137;
              *(v142 + 8) = 0;
              *(v142 + 64) = v139;
              *(v142 + 72) = v140;
              v46 = v160;
              *v142 = 3;
              *(v142 + 24) = xmmword_1C0D7ED50;
              *(v142 + 40) = 0x80000001C0D81590;
              *(v142 + 48) = 0xD00000000000006BLL;
              *(v142 + 56) = 0x80000001C0D81620;
              swift_willThrow();
              sub_1C0CF448C(v165, v166);
              sub_1C0D6E5CC(v170);
              sub_1C0D13830(v148, v149);
              (*(v154 + 8))(v155, v131);
              (v143[0])(v151, v135);

              v44 = 1;
              v45 = 1;
              v47 = v159;
              v48 = v141;
            }

            goto LABEL_47;
          }

          goto LABEL_61;
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  a4[8] = 0;
  a4[9] = 0xE000000000000000;
  swift_retain_n();
  sub_1C0D78DAC();

  a4[8] = 0xD000000000000016;
  a4[9] = 0x80000001C0D80500;
  a4[5] = 2;
  v39 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v39);

  MEMORY[0x1C68E3B00](8236, 0xE200000000000000);
  a4[5] = 2147483646;
  v40 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v40);

  MEMORY[0x1C68E3B00](93, 0xE100000000000000);
  v41 = a4[8];
  v42 = a4[9];
  sub_1C0D01E40();
  swift_allocError();
  *(v43 + 4) = 0;
  *(v43 + 8) = 1;
  *(v43 + 12) = 0;
  *(v43 + 16) = 256;
  *(v43 + 64) = v41;
  *(v43 + 72) = v42;
  *v43 = 1;
  *(v43 + 24) = xmmword_1C0D7ED60;
  *(v43 + 40) = 0x80000001C0D81590;
  *(v43 + 48) = 0xD00000000000006BLL;
  *(v43 + 56) = 0x80000001C0D81620;
  swift_willThrow();
  sub_1C0CF448C(v165, v166);
  sub_1C0D6E5CC(v170);
  sub_1C0D13830(v33, a5);

  v44 = 0;
  v45 = 0;
  v47 = v159;
  v46 = v160;
  v48 = v163;
LABEL_47:
  sub_1C0CF448C(v184, v185);

  if (v44)
  {
    v128 = type metadata accessor for CKSecretSharing.HybridGenerator(0);
    result = (*(v157 + 8))(v46 + *(v128 + 20), v48);
  }

  v129 = v158;
  if (v45)
  {
    v130 = type metadata accessor for CKSecretSharing.HybridGenerator(0);
    return (*(v129 + 8))(v46 + *(v130 + 24), v47);
  }

  return result;
}

uint64_t sub_1C0D67714@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t sub_1C0D67728@<X0>(uint64_t a1@<X0>, _DWORD *a4@<X8>)
{
  if (!ccrng())
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  result = ccss_shamir_share_generator_init();
  *a4 = result;
  return result;
}

uint64_t CKSecretSharing.HybridGenerator.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v298 = a3;
  v270 = sub_1C0D787CC();
  v269 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v275 = &v261 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_1C0D7877C();
  v276 = *(v277 - 8);
  v6 = MEMORY[0x1EEE9AC00](v277);
  v281 = &v261 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v282 = &v261 - v8;
  v9 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v302 = *(v9 - 8);
  v303 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v295 = (&v261 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v291 = (&v261 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v287 = (&v261 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v283 = (&v261 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v274 = (&v261 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v273 = (&v261 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v280 = (&v261 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v286 = (&v261 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v290 = (&v261 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v294 = (&v261 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v296 = (&v261 - v30);
  v301 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  v304 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v299 = (&v261 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v300 = &v261 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v293 = &v261 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v289 = &v261 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v285 = &v261 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v279 = &v261 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v272 = &v261 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v271 = &v261 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v278 = &v261 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v284 = &v261 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v288 = &v261 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v292 = &v261 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v297 = &v261 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v261 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v60 = MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = &v261 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v60);
  v65 = &v261 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v261 - v66;
  v68 = sub_1C0D7840C();
  MEMORY[0x1EEE9AC00](v68 - 8);
  v69 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  MEMORY[0x1EEE9AC00](v69);
  v71 = (&v261 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v312 = 0;
  v310 = 0u;
  v311 = 0u;
  sub_1C0CF6468(a1, a2);
  sub_1C0D783FC();
  sub_1C0D6F118(&qword_1EBE6DA88, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization, &unk_1C0D7D1E0);
  v72 = v305;
  sub_1C0D784DC();
  if (v72)
  {
    return sub_1C0CF448C(a1, a2);
  }

  v267 = v62;
  v266 = v65;
  v74 = v304;
  v268 = a2;
  v305 = a1;
  v75 = *v71;
  if (*v71 != 1)
  {
    *&v310 = 0;
    *(&v310 + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000038, 0x80000001C0D81690);
    LODWORD(v306) = v75;
    v95 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v95);

    v96 = v310;
    sub_1C0D01E40();
    swift_allocError();
    *(v97 + 4) = 0;
    *(v97 + 8) = 1;
    *(v97 + 12) = 0;
    *(v97 + 16) = 256;
    *(v97 + 64) = v96;
    *v97 = 17;
    *(v97 + 24) = xmmword_1C0D7ED70;
    *(v97 + 40) = 0xE800000000000000;
    *(v97 + 48) = 0xD00000000000006BLL;
    *(v97 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    sub_1C0D03EF4(v71 + 1);
    sub_1C0CF448C(v305, v268);
    v94 = v71;
    return sub_1C0D6F0B8(v94, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  v263 = 0;
  v264 = *(v69 + 28);
  sub_1C0D13734(v71 + v264, v67, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v76 = *(v74 + 48);
  v77 = v301;
  v304 = v74 + 48;
  v265 = v76;
  v78 = v76(v67, 1, v301);
  sub_1C0D13578(v67, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if (v78 == 1 || (v79 = *(v69 + 32), v80 = v58, sub_1C0D13734(v71 + v79, v58, &qword_1EBE6D9D0, &qword_1C0D7CAF8), v81 = (v302 + 6), v262 = v302[6], v82 = v262(v80, 1, v303), sub_1C0D13578(v80, &qword_1EBE6D9D0, &qword_1C0D7CAF8), v82 == 1))
  {
    *&v310 = 0;
    *(&v310 + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000028, 0x80000001C0D816D0);
    v83 = v267;
    sub_1C0D13734(v71 + v264, v267, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    v84 = v265(v83, 1, v77);
    sub_1C0D13578(v83, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    v85 = v84 == 1;
    v86 = 1702195828;
    if (v85)
    {
      v87 = 0x65736C6166;
    }

    else
    {
      v87 = 1702195828;
    }

    if (v85)
    {
      v88 = 0xE500000000000000;
    }

    else
    {
      v88 = 0xE400000000000000;
    }

    MEMORY[0x1C68E3B00](v87, v88);

    MEMORY[0x1C68E3B00](0xD000000000000011, 0x80000001C0D81700);
    v89 = v71 + *(v69 + 32);
    v90 = v300;
    sub_1C0D13734(v89, v300, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    if ((v302[6])(v90, 1, v303) == 1)
    {
      v86 = 0x65736C6166;
      v91 = 0xE500000000000000;
    }

    else
    {
      v91 = 0xE400000000000000;
    }

    sub_1C0D13578(v90, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    MEMORY[0x1C68E3B00](v86, v91);

    v92 = v310;
    sub_1C0D01E40();
    swift_allocError();
    *(v93 + 4) = 0;
    *(v93 + 8) = 1;
    *(v93 + 12) = 0;
    *(v93 + 16) = 256;
    *(v93 + 64) = v92;
    *v93 = 17;
    *(v93 + 24) = xmmword_1C0D7EDE0;
    *(v93 + 40) = 0xE800000000000000;
    *(v93 + 48) = 0xD00000000000006BLL;
    *(v93 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    sub_1C0D03EF4(v71 + 1);
    sub_1C0CF448C(v305, v268);
    v94 = v71;
    return sub_1C0D6F0B8(v94, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  v300 = v81;
  v302 = v71;
  v98 = v266;
  sub_1C0D13734(v71 + v264, v266, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v99 = v265;
  v100 = v265(v98, 1, v77);
  v101 = v263;
  if (v100 == 1)
  {
    v102 = v299;
    *v299 = 0;
    *(v102 + 1) = 0;
    *(v102 + 8) = 1;
    v102[5] = 0;
    *(v102 + 24) = 0;
    *(v102 + 2) = xmmword_1C0D7BAB0;
    *(v102 + 48) = 0;
    *(v102 + 14) = xmmword_1C0D7BAB0;
    sub_1C0D783DC();
    v103 = v99(v98, 1, v77);
    v104 = v305;
    if (v103 != 1)
    {
      sub_1C0D13578(v98, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    }
  }

  else
  {
    v102 = v299;
    sub_1C0D37A20(v98, v299, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    v104 = v305;
  }

  result = sub_1C0D6E898(v102);
  if (v101)
  {
    v105 = v302;
    sub_1C0D03EF4(v302 + 1);
    sub_1C0CF448C(v104, v268);
    v94 = v105;
    return sub_1C0D6F0B8(v94, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  v106 = result;
  v304 = v79;
  *v298 = result;
  v107 = v302[1];
  v108 = v302[2];
  v109 = v108 >> 62;
  if ((v108 >> 62) <= 1)
  {
    v110 = v297;
    if (!v109)
    {
      v111 = BYTE6(v108);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v110 = v297;
  if (v109 != 2)
  {
    v111 = 0;
    goto LABEL_35;
  }

  v113 = *(v107 + 16);
  v112 = *(v107 + 24);
  v111 = v112 - v113;
  if (__OFSUB__(v112, v113))
  {
    __break(1u);
LABEL_32:
    if (__OFSUB__(HIDWORD(v107), v107))
    {
      __break(1u);
      goto LABEL_189;
    }

    v111 = HIDWORD(v107) - v107;
  }

LABEL_35:
  v114 = *(result + 72);
  if (v111 == v114)
  {
    v263 = 0;
    *&v310 = v107;
    *(&v310 + 1) = v108;
    v301 = type metadata accessor for CKSecretSharing.HybridGenerator(0);
    sub_1C0CF6468(v107, v108);
    sub_1C0D7868C();
    sub_1C0D13734(v302 + v304, v110, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    v115 = v303;
    v116 = v262;
    v117 = v300;
    if (v262(v110, 1, v303) == 1)
    {
      v118 = v296;
      *v296 = xmmword_1C0D7BAB0;
      v118[1] = xmmword_1C0D7BAB0;
      v118[2] = xmmword_1C0D7BAB0;
      sub_1C0D783DC();
      result = v116(v110, 1, v115);
      if (result != 1)
      {
        result = sub_1C0D13578(v110, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
      }
    }

    else
    {
      v118 = v296;
      result = sub_1C0D37A20(v110, v296, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    }

    v123 = *v118;
    v124 = *(v118 + 1);
    v125 = (v124 >> 62);
    if ((v124 >> 62) <= 1)
    {
      if (!v125)
      {
        v126 = BYTE6(v124);
        goto LABEL_61;
      }

      v129 = __OFSUB__(HIDWORD(v123), v123);
      v136 = HIDWORD(v123) - v123;
      if (!v129)
      {
        v126 = v136;
        goto LABEL_61;
      }

LABEL_190:
      __break(1u);
      goto LABEL_191;
    }
  }

  else
  {
    v116 = 0xD00000000000006BLL;
    *&v310 = 0;
    *(&v310 + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    result = MEMORY[0x1C68E3B00](0xD000000000000046, 0x80000001C0D81720);
    v119 = v302[1];
    v120 = v302[2];
    v121 = v120 >> 62;
    v117 = v114;
    if ((v120 >> 62) <= 1)
    {
      v110 = v268;
      if (!v121)
      {
        v114 = v111;
        v122 = BYTE6(v120);
LABEL_57:
        v306 = v122;
        v133 = sub_1C0D78F2C();
        MEMORY[0x1C68E3B00](v133);

        MEMORY[0x1C68E3B00](v116 - 57, 0x80000001C0D81770);
        v134 = v310;
        sub_1C0D01E40();
        swift_allocError();
        *(v135 + 4) = 0;
        *(v135 + 8) = 1;
        *(v135 + 12) = 0;
        *(v135 + 16) = 256;
        *(v135 + 64) = v134;
        *v135 = 17;
        *(v135 + 24) = xmmword_1C0D7ED80;
        *(v135 + 40) = 0xE800000000000000;
        *(v135 + 48) = v116;
        *(v135 + 56) = 0x80000001C0D81620;
        goto LABEL_174;
      }

      goto LABEL_55;
    }

    v114 = v111;
    v111 = v106;
    v122 = 0;
    v85 = v121 == 2;
    v125 = &v300;
    v110 = v268;
    if (!v85)
    {
      goto LABEL_57;
    }

    v128 = v119 + 16;
    v123 = *(v119 + 16);
    v127 = *(v128 + 8);
    v129 = __OFSUB__(v127, v123);
    v122 = v127 - v123;
    if (!v129)
    {
      goto LABEL_57;
    }

    __break(1u);
  }

  if (v125 != 2)
  {
    v126 = 0;
    goto LABEL_61;
  }

  v131 = v123 + 16;
  v119 = *(v123 + 16);
  v130 = *(v131 + 8);
  v126 = v130 - v119;
  if (__OFSUB__(v130, v119))
  {
    __break(1u);
LABEL_55:
    v129 = __OFSUB__(HIDWORD(v119), v119);
    v132 = HIDWORD(v119) - v119;
    if (!v129)
    {
      v114 = v111;
      v122 = v132;
      goto LABEL_57;
    }

LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

LABEL_61:
  v137 = *(v106 + 88);
  sub_1C0D6F0B8(v296, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
  if (v126 == v137)
  {
    v138 = v114;
    v139 = v292;
    sub_1C0D13734(v302 + v304, v292, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    v140 = v303;
    v117 = v300;
    if (v116(v139, 1, v303) == 1)
    {
      v141 = v294;
      *v294 = xmmword_1C0D7BAB0;
      v141[1] = xmmword_1C0D7BAB0;
      v141[2] = xmmword_1C0D7BAB0;
      sub_1C0D783DC();
      v110 = v116;
      result = v116(v139, 1, v140);
      if (result != 1)
      {
        result = sub_1C0D13578(v139, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
      }
    }

    else
    {
      v110 = v116;
      v141 = v294;
      result = sub_1C0D37A20(v139, v294, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    }

    v145 = *v141;
    v146 = *(v141 + 1);
    v147 = v146 >> 62;
    if ((v146 >> 62) <= 1)
    {
      v114 = v138;
      if (!v147)
      {
        v148 = BYTE6(v146);
LABEL_88:
        v158 = v110;
        goto LABEL_89;
      }

      v129 = __OFSUB__(HIDWORD(v145), v145);
      v157 = HIDWORD(v145) - v145;
      if (!v129)
      {
        v158 = v110;
        v148 = v157;
LABEL_89:
        v138 = v298;
        v159 = *(v106 + 88);
        sub_1C0D6F0B8(v294, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
        if (v148 == v159)
        {
          v299 = v111;
          v160 = v288;
          sub_1C0D13734(v302 + v304, v288, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
          v161 = v303;
          v110 = v300;
          if (v158(v160, 1, v303) == 1)
          {
            v162 = v290;
            *v290 = xmmword_1C0D7BAB0;
            v162[1] = xmmword_1C0D7BAB0;
            v162[2] = xmmword_1C0D7BAB0;
            sub_1C0D783DC();
            result = v158(v160, 1, v161);
            if (result != 1)
            {
              result = sub_1C0D13578(v160, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
            }
          }

          else
          {
            v162 = v290;
            result = sub_1C0D37A20(v160, v290, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
          }

          v172 = *(v162 + 4);
          v173 = *(v162 + 5);
          v174 = v173 >> 62;
          if ((v173 >> 62) <= 1)
          {
            v175 = v299;
            if (!v174)
            {
              v176 = BYTE6(v173);
LABEL_118:
              v186 = *(v106 + 96);
              sub_1C0D6F0B8(v290, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
              if (v176 == v186)
              {
                v117 = v284;
                sub_1C0D13734(v302 + v304, v284, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                v187 = v303;
                if (v158(v117, 1, v303) == 1)
                {
                  v188 = v286;
                  *v286 = xmmword_1C0D7BAB0;
                  v188[1] = xmmword_1C0D7BAB0;
                  v188[2] = xmmword_1C0D7BAB0;
                  sub_1C0D783DC();
                  result = v158(v117, 1, v187);
                  if (result != 1)
                  {
                    result = sub_1C0D13578(v117, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                  }
                }

                else
                {
                  v188 = v286;
                  result = sub_1C0D37A20(v117, v286, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                }

                v195 = *(v188 + 4);
                v196 = *(v188 + 5);
                v197 = v196 >> 62;
                if ((v196 >> 62) <= 1)
                {
                  if (!v197)
                  {
                    v198 = BYTE6(v196);
LABEL_147:
                    v208 = *(v106 + 96);
                    sub_1C0D6F0B8(v286, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                    if (v198 == v208)
                    {
                      v209 = v278;
                      sub_1C0D13734(v302 + v304, v278, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                      v210 = v303;
                      if (v158(v209, 1, v303) == 1)
                      {
                        v211 = v280;
                        *v280 = xmmword_1C0D7BAB0;
                        v211[1] = xmmword_1C0D7BAB0;
                        v211[2] = xmmword_1C0D7BAB0;
                        sub_1C0D783DC();
                        v212 = v158(v209, 1, v210);
                        v213 = v282;
                        v214 = v281;
                        if (v212 != 1)
                        {
                          sub_1C0D13578(v209, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                        }
                      }

                      else
                      {
                        v211 = v280;
                        sub_1C0D37A20(v209, v280, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        v213 = v282;
                        v214 = v281;
                      }

                      v221 = *v211;
                      v222 = *(v211 + 1);
                      sub_1C0CF6468(*v211, v222);
                      sub_1C0D6F0B8(v211, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                      *&v310 = v221;
                      *(&v310 + 1) = v222;
                      sub_1C0D17E68();
                      v223 = v263;
                      sub_1C0D7876C();
                      v224 = v223;
                      if (v223)
                      {
                        v225 = v268;
                      }

                      else
                      {
                        v263 = 0;
                        (*(v276 + 16))(v214, v213, v277);
                        v233 = v271;
                        sub_1C0D13734(v302 + v304, v271, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                        if (v262(v233, 1, v303) == 1)
                        {
                          v234 = v273;
                          *v273 = xmmword_1C0D7BAB0;
                          v234[1] = xmmword_1C0D7BAB0;
                          v234[2] = xmmword_1C0D7BAB0;
                          v235 = v303;
                          sub_1C0D783DC();
                          if (v262(v233, 1, v235) != 1)
                          {
                            sub_1C0D13578(v233, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                          }
                        }

                        else
                        {
                          v234 = v273;
                          sub_1C0D37A20(v233, v273, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        }

                        v242 = *(v234 + 2);
                        v243 = *(v234 + 3);
                        sub_1C0CF6468(v242, v243);
                        sub_1C0D6F0B8(v234, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        *&v310 = v242;
                        *(&v310 + 1) = v243;
                        v244 = v272;
                        sub_1C0D13734(v302 + v304, v272, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                        v245 = v303;
                        v246 = v262;
                        if (v262(v244, 1, v303) == 1)
                        {
                          v247 = v274;
                          *v274 = xmmword_1C0D7BAB0;
                          v247[1] = xmmword_1C0D7BAB0;
                          v247[2] = xmmword_1C0D7BAB0;
                          sub_1C0D783DC();
                          if (v246(v244, 1, v245) != 1)
                          {
                            sub_1C0D13578(v244, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                          }
                        }

                        else
                        {
                          v247 = v274;
                          sub_1C0D37A20(v244, v274, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        }

                        v248 = v247;
                        v249 = *(v247 + 4);
                        v250 = *(v247 + 5);
                        sub_1C0CF6468(v249, v250);
                        sub_1C0D6F0B8(v248, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        v306 = v249;
                        v307 = v250;
                        v251 = v275;
                        v252 = v263;
                        sub_1C0D787AC();
                        v224 = v252;
                        v225 = v268;
                        if (!v252)
                        {
                          (*(v276 + 8))(v282, v277);
                          (*(v269 + 32))(v138 + *(v301 + 24), v251, v270);
                          v260 = v302;
                          sub_1C0D03EF4(v302 + 1);
                          sub_1C0CF448C(v305, v225);
                          v94 = v260;
                          return sub_1C0D6F0B8(v94, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
                        }

                        (*(v276 + 8))(v282, v277);
                      }

                      *&v310 = v224;
                      v253 = v224;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
                      if (swift_dynamicCast())
                      {
                        v306 = v224;
                        v254 = v224;
                        swift_dynamicCast();
                        v255 = v224;
                        v256 = v308;
                        v257 = v309;
                        sub_1C0D01E40();
                        swift_allocError();
                        *(v258 + 4) = 0;
                        *(v258 + 8) = 1;
                        *(v258 + 16) = v257 != 0;
                        *(v258 + 12) = v256;
                        *(v258 + 17) = 0;
                        *(v258 + 64) = 0xD00000000000002CLL;
                        *(v258 + 72) = 0x80000001C0D818C0;
                        *v258 = 17;
                        *(v258 + 24) = xmmword_1C0D7EDD0;
                        *(v258 + 40) = 0xE800000000000000;
                        *(v258 + 48) = 0xD00000000000006BLL;
                        *(v258 + 56) = 0x80000001C0D81620;
                        swift_willThrow();
                      }

                      else
                      {

                        swift_willThrow();
                      }

                      v259 = v302;
                      sub_1C0D03EF4(v302 + 1);
                      sub_1C0CF448C(v305, v225);
                      sub_1C0D6F0B8(v259, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);

LABEL_175:
                      v240 = *(type metadata accessor for CKSecretSharing.HybridGenerator(0) + 20);
                      v241 = sub_1C0D786AC();
                      return (*(*(v241 - 8) + 8))(v298 + v240, v241);
                    }

                    v138 = 0xD00000000000006BLL;
                    *&v310 = 0;
                    *(&v310 + 1) = 0xE000000000000000;
                    sub_1C0D78DAC();
                    MEMORY[0x1C68E3B00](0xD000000000000051, 0x80000001C0D81860);
                    v215 = v279;
                    sub_1C0D13734(v302 + v304, v279, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                    v216 = v303;
                    if (v158(v215, 1, v303) == 1)
                    {
                      v217 = v283;
                      *v283 = xmmword_1C0D7BAB0;
                      v217[1] = xmmword_1C0D7BAB0;
                      v217[2] = xmmword_1C0D7BAB0;
                      sub_1C0D783DC();
                      v85 = v158(v215, 1, v216) == 1;
                      result = v215;
                      v110 = v268;
                      if (!v85)
                      {
                        result = sub_1C0D13578(result, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                      }
                    }

                    else
                    {
                      v217 = v283;
                      result = sub_1C0D37A20(v215, v283, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                      v110 = v268;
                    }

                    v117 = v114;
                    v226 = *(v217 + 4);
                    v227 = *(v217 + 5);
                    v228 = v227 >> 62;
                    v114 = v175;
                    if ((v227 >> 62) <= 1)
                    {
                      if (!v228)
                      {
                        v229 = v106;
                        v226 = BYTE6(v227);
LABEL_172:
                        v306 = v226;
                        v236 = sub_1C0D78F2C();
                        MEMORY[0x1C68E3B00](v236);

                        sub_1C0D6F0B8(v283, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        MEMORY[0x1C68E3B00](0x707865202E737620, 0xEE00206465746365);
                        v306 = *(v229 + 96);
                        v237 = sub_1C0D78F2C();
                        MEMORY[0x1C68E3B00](v237);

                        v238 = *(&v310 + 1);
                        v168 = v310;
                        sub_1C0D01E40();
                        swift_allocError();
                        *(v170 + 4) = 0;
                        *(v170 + 8) = 1;
                        *(v170 + 12) = 0;
                        *(v170 + 16) = 256;
                        *(v170 + 72) = v238;
                        *v170 = 17;
                        v171 = xmmword_1C0D7EDC0;
                        goto LABEL_173;
                      }

                      v129 = __OFSUB__(HIDWORD(v226), v226);
                      LODWORD(v226) = HIDWORD(v226) - v226;
                      if (!v129)
                      {
                        v229 = v106;
                        v226 = v226;
                        goto LABEL_172;
                      }

LABEL_201:
                      __break(1u);
                      return result;
                    }

                    if (v228 != 2)
                    {
                      v229 = v106;
                      v226 = 0;
                      goto LABEL_172;
                    }

                    v232 = (v226 + 16);
                    v230 = *(v226 + 16);
                    v231 = v232[1];
                    v129 = __OFSUB__(v231, v230);
                    v226 = v231 - v230;
                    if (!v129)
                    {
                      v229 = v106;
                      goto LABEL_172;
                    }

LABEL_200:
                    __break(1u);
                    goto LABEL_201;
                  }

                  v129 = __OFSUB__(HIDWORD(v195), v195);
                  v207 = HIDWORD(v195) - v195;
                  if (!v129)
                  {
                    v198 = v207;
                    goto LABEL_147;
                  }

                  goto LABEL_198;
                }

                if (v197 != 2)
                {
                  v198 = 0;
                  goto LABEL_147;
                }

                v203 = v195 + 16;
                v199 = *(v195 + 16);
                v202 = *(v203 + 8);
                v198 = v202 - v199;
                if (!__OFSUB__(v202, v199))
                {
                  goto LABEL_147;
                }

                __break(1u);
              }

              else
              {
                v138 = 0xD00000000000006BLL;
                *&v310 = 0;
                *(&v310 + 1) = 0xE000000000000000;
                sub_1C0D78DAC();
                MEMORY[0x1C68E3B00](0xD000000000000051, 0x80000001C0D81860);
                v189 = v285;
                sub_1C0D13734(v302 + v304, v285, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                v190 = v303;
                if (v158(v189, 1, v303) == 1)
                {
                  v191 = v287;
                  *v287 = xmmword_1C0D7BAB0;
                  v191[1] = xmmword_1C0D7BAB0;
                  v191[2] = xmmword_1C0D7BAB0;
                  sub_1C0D783DC();
                  v85 = v158(v189, 1, v190) == 1;
                  result = v189;
                  v110 = v268;
                  if (!v85)
                  {
                    result = sub_1C0D13578(result, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                  }
                }

                else
                {
                  v191 = v287;
                  result = sub_1C0D37A20(v189, v287, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                  v110 = v268;
                }

                v117 = v114;
                v199 = *(v191 + 4);
                v200 = *(v191 + 5);
                v197 = v200 >> 62;
                v114 = v175;
                if ((v200 >> 62) <= 1)
                {
                  if (v197)
                  {
                    v129 = __OFSUB__(HIDWORD(v199), v199);
                    LODWORD(v199) = HIDWORD(v199) - v199;
                    if (v129)
                    {
LABEL_199:
                      __break(1u);
                      goto LABEL_200;
                    }

                    v201 = v106;
                    v199 = v199;
                  }

                  else
                  {
                    v201 = v106;
                    v199 = BYTE6(v200);
                  }

                  goto LABEL_155;
                }
              }

              if (v197 != 2)
              {
                v201 = v106;
                v199 = 0;
                goto LABEL_155;
              }

              v206 = (v199 + 16);
              v204 = *(v199 + 16);
              v205 = v206[1];
              v129 = __OFSUB__(v205, v204);
              v199 = v205 - v204;
              if (!v129)
              {
                v201 = v106;
LABEL_155:
                v306 = v199;
                v218 = sub_1C0D78F2C();
                MEMORY[0x1C68E3B00](v218);

                sub_1C0D6F0B8(v287, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                MEMORY[0x1C68E3B00](0x707865202E737620, 0xEE00206465746365);
                v306 = *(v201 + 96);
                v219 = sub_1C0D78F2C();
                MEMORY[0x1C68E3B00](v219);

                v220 = *(&v310 + 1);
                v168 = v310;
                sub_1C0D01E40();
                swift_allocError();
                *(v170 + 4) = 0;
                *(v170 + 8) = 1;
                *(v170 + 12) = 0;
                *(v170 + 16) = 256;
                *(v170 + 72) = v220;
                *v170 = 17;
                v171 = xmmword_1C0D7EDB0;
                goto LABEL_173;
              }

LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            }

            v129 = __OFSUB__(HIDWORD(v172), v172);
            v185 = HIDWORD(v172) - v172;
            if (!v129)
            {
              v176 = v185;
              goto LABEL_118;
            }

            goto LABEL_195;
          }

          v175 = v299;
          if (v174 != 2)
          {
            v176 = 0;
            goto LABEL_118;
          }

          v181 = v172 + 16;
          v177 = *(v172 + 16);
          v180 = *(v181 + 8);
          v176 = v180 - v177;
          if (!__OFSUB__(v180, v177))
          {
            goto LABEL_118;
          }

          __break(1u);
        }

        else
        {
          v138 = 0xD00000000000006BLL;
          *&v310 = 0;
          *(&v310 + 1) = 0xE000000000000000;
          sub_1C0D78DAC();
          MEMORY[0x1C68E3B00](0xD000000000000053, 0x80000001C0D81800);
          v163 = v289;
          sub_1C0D13734(v302 + v304, v289, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
          v164 = v303;
          if (v158(v163, 1, v303) == 1)
          {
            v165 = v291;
            *v291 = xmmword_1C0D7BAB0;
            v165[1] = xmmword_1C0D7BAB0;
            v165[2] = xmmword_1C0D7BAB0;
            sub_1C0D783DC();
            v85 = v158(v163, 1, v164) == 1;
            result = v163;
            v110 = v268;
            if (!v85)
            {
              result = sub_1C0D13578(result, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
            }
          }

          else
          {
            v165 = v291;
            result = sub_1C0D37A20(v163, v291, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
            v110 = v268;
          }

          v117 = v114;
          v177 = *v165;
          v178 = *(v165 + 1);
          v174 = v178 >> 62;
          v114 = v111;
          if ((v178 >> 62) <= 1)
          {
            if (v174)
            {
              v129 = __OFSUB__(HIDWORD(v177), v177);
              LODWORD(v177) = HIDWORD(v177) - v177;
              if (v129)
              {
LABEL_196:
                __break(1u);
                goto LABEL_197;
              }

              v179 = v106;
              v177 = v177;
            }

            else
            {
              v179 = v106;
              v177 = BYTE6(v178);
            }

            goto LABEL_126;
          }
        }

        if (v174 != 2)
        {
          v179 = v106;
          v177 = 0;
          goto LABEL_126;
        }

        v184 = (v177 + 16);
        v182 = *(v177 + 16);
        v183 = v184[1];
        v129 = __OFSUB__(v183, v182);
        v177 = v183 - v182;
        if (!v129)
        {
          v179 = v106;
LABEL_126:
          v306 = v177;
          v192 = sub_1C0D78F2C();
          MEMORY[0x1C68E3B00](v192);

          sub_1C0D6F0B8(v291, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
          MEMORY[0x1C68E3B00](0x707865202E737620, 0xEE00206465746365);
          v306 = *(v179 + 88);
          v193 = sub_1C0D78F2C();
          MEMORY[0x1C68E3B00](v193);

          v194 = *(&v310 + 1);
          v168 = v310;
          sub_1C0D01E40();
          swift_allocError();
          *(v170 + 4) = 0;
          *(v170 + 8) = 1;
          *(v170 + 12) = 0;
          *(v170 + 16) = 256;
          *(v170 + 72) = v194;
          *v170 = 17;
          v171 = xmmword_1C0D7EDA0;
          goto LABEL_173;
        }

LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      goto LABEL_192;
    }

    v114 = v138;
    if (v147 != 2)
    {
      v148 = 0;
      goto LABEL_88;
    }

    v153 = v145 + 16;
    v149 = *(v145 + 16);
    v152 = *(v153 + 8);
    v148 = v152 - v149;
    if (!__OFSUB__(v152, v149))
    {
      goto LABEL_88;
    }

    __break(1u);
LABEL_80:
    if (v147 != 2)
    {
      v151 = v106;
      v149 = 0;
      goto LABEL_97;
    }

    v156 = (v149 + 16);
    v154 = *(v149 + 16);
    v155 = v156[1];
    v129 = __OFSUB__(v155, v154);
    v149 = v155 - v154;
    if (!v129)
    {
      v151 = v106;
      goto LABEL_97;
    }

LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v138 = 0xD00000000000006BLL;
  *&v310 = 0;
  *(&v310 + 1) = 0xE000000000000000;
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD000000000000048, 0x80000001C0D817B0);
  v142 = v293;
  sub_1C0D13734(v302 + v304, v293, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v143 = v303;
  if (v116(v142, 1, v303) == 1)
  {
    v144 = v295;
    *v295 = xmmword_1C0D7BAB0;
    v144[1] = xmmword_1C0D7BAB0;
    v144[2] = xmmword_1C0D7BAB0;
    sub_1C0D783DC();
    v85 = v116(v142, 1, v143) == 1;
    result = v142;
    v110 = v268;
    if (!v85)
    {
      result = sub_1C0D13578(result, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    }
  }

  else
  {
    v144 = v295;
    result = sub_1C0D37A20(v142, v295, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    v110 = v268;
  }

  v117 = v114;
  v149 = *v144;
  v150 = *(v144 + 1);
  v147 = v150 >> 62;
  v114 = v111;
  if ((v150 >> 62) > 1)
  {
    goto LABEL_80;
  }

  if (v147)
  {
    v129 = __OFSUB__(HIDWORD(v149), v149);
    LODWORD(v149) = HIDWORD(v149) - v149;
    if (v129)
    {
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    v151 = v106;
    v149 = v149;
  }

  else
  {
    v151 = v106;
    v149 = BYTE6(v150);
  }

LABEL_97:
  v306 = v149;
  v166 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v166);

  sub_1C0D6F0B8(v295, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
  MEMORY[0x1C68E3B00](0x707865202E737620, 0xEE00206465746365);
  v306 = *(v151 + 88);
  v167 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v167);

  v169 = *(&v310 + 1);
  v168 = v310;
  sub_1C0D01E40();
  swift_allocError();
  *(v170 + 4) = 0;
  *(v170 + 8) = 1;
  *(v170 + 12) = 0;
  *(v170 + 16) = 256;
  *(v170 + 72) = v169;
  *v170 = 17;
  v171 = xmmword_1C0D7ED90;
LABEL_173:
  *(v170 + 24) = v171;
  *(v170 + 40) = 0xE800000000000000;
  *(v170 + 48) = v138;
  *(v170 + 56) = 0x80000001C0D81620;
  *(v170 + 64) = v168;
LABEL_174:
  swift_willThrow();
  v239 = v302;
  sub_1C0D03EF4(v302 + 1);
  sub_1C0CF448C(v305, v110);
  sub_1C0D6F0B8(v239, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);

  if (v114 == v117)
  {
    goto LABEL_175;
  }

  return result;
}