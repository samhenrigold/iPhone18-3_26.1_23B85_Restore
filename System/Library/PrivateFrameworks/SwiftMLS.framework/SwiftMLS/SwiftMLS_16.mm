BOOL sub_26BF32780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = a1;
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a2);
  v6 = sub_26C00B0CC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = *(a3 + 48) + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = v11 == v5 && v12 == a2;
    result = v13;
    if (v13)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_26BF32868(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a3 + 16))
  {
    sub_26C00B05C();
    sub_26C00911C();
    v6 = sub_26C00B0CC();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_26BE00608(v17, v16);
              sub_26BE567B0(v44, a1, a2, v43);
              sub_26BE00258(v17, v16);
              if (v43[0])
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_26BE00608(v17, v16);
            v31 = sub_26C008E9C();
            if (v31)
            {
              v33 = sub_26C008ECC();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            sub_26C008EBC();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_26BE567B0(v34, v36, v37, v44);
            sub_26BE00258(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_26BE00608(v17, v16);
            v31 = sub_26C008E9C();
            if (v31)
            {
              v32 = sub_26C008ECC();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_26BE00608(v17, v16);
          sub_26BE567B0(v44, a1, a2, v43);
          sub_26BE00258(v17, v16);
          if (v43[0])
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t sub_26BF32C8C(uint64_t a1, uint64_t a2)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v59);
  v5 = &v43 - v4;
  v49 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v6 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C0094DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  if (*(a2 + 16))
  {
    v60 = v6;
    v44 = a2;
    sub_26C00B05C();
    sub_26C00947C();
    sub_26BF7EFF4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
    sub_26C00A3CC();
    v17 = type metadata accessor for MLS.AlgorithmIdentifier(0);
    v57 = *(v17 + 20);
    v58 = v17;
    sub_26BE2E1F0(a1 + v57, v16, &qword_28045EE48, &unk_26C022430);
    v18 = v10 + 48;
    v56 = *(v10 + 48);
    v19 = v56(v16, 1, v9);
    v50 = v9;
    v48 = v10;
    if (v19 == 1)
    {
      sub_26C00B07C();
    }

    else
    {
      v20 = v46;
      (*(v10 + 32))(v46, v16, v9);
      sub_26C00B07C();
      sub_26BF7EFF4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
      sub_26C00A3CC();
      (*(v10 + 8))(v20, v9);
    }

    v21 = *(v49 + 20);
    sub_26C00959C();
    sub_26BF7EFF4(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
    v45 = v21;
    sub_26C00A3CC();
    v22 = sub_26C00B0CC();
    v23 = v44;
    v24 = v44 + 56;
    v25 = -1 << *(v44 + 32);
    v26 = v22 & ~v25;
    if ((*(v44 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
    {
      v55 = v18;
      v27 = ~v25;
      v43 = (v48 + 32);
      v60 = *(v60 + 72);
      v47 = (v48 + 8);
      v29 = v50;
      v28 = v51;
      v48 = v5;
      v53 = ~v25;
      v54 = v8;
      v52 = v44 + 56;
      do
      {
        sub_26BF7F0BC(*(v23 + 48) + v60 * v26, v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if ((sub_26C00945C() & 1) == 0)
        {
          goto LABEL_14;
        }

        v30 = *(v59 + 48);
        sub_26BE2E1F0(&v8[*(v58 + 20)], v5, &qword_28045EE48, &unk_26C022430);
        sub_26BE2E1F0(a1 + v57, &v5[v30], &qword_28045EE48, &unk_26C022430);
        v31 = v5;
        v32 = v29;
        v33 = v5;
        v34 = v29;
        v35 = v56;
        if (v56(v31, 1, v32) == 1)
        {
          if (v35(v33 + v30, 1, v34) != 1)
          {
            v8 = v54;
            sub_26BF7F05C(v54, type metadata accessor for MLS.SubjectPublicKeyInfo);
            v24 = v52;
            v29 = v50;
            goto LABEL_8;
          }

          sub_26BE2E258(v33, &qword_28045EE48, &unk_26C022430);
          v24 = v52;
          v27 = v53;
          v29 = v50;
          v5 = v33;
        }

        else
        {
          sub_26BE2E1F0(v33, v28, &qword_28045EE48, &unk_26C022430);
          if (v35(v33 + v30, 1, v34) == 1)
          {
            v8 = v54;
            sub_26BF7F05C(v54, type metadata accessor for MLS.SubjectPublicKeyInfo);
            (*v47)(v28, v34);
            v24 = v52;
            v29 = v34;
LABEL_8:
            v5 = v48;
            sub_26BE2E258(v48, &qword_28045F0D8, &unk_26C01A530);
            v27 = v53;
            goto LABEL_9;
          }

          v36 = a1;
          v37 = v46;
          (*v43)(v46, v33 + v30, v34);
          sub_26BF7EFF4(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
          v38 = sub_26C00A43C();
          v39 = *v47;
          v40 = v37;
          a1 = v36;
          v28 = v51;
          (*v47)(v40, v34);
          v39(v28, v34);
          v23 = v44;
          sub_26BE2E258(v33, &qword_28045EE48, &unk_26C022430);
          v24 = v52;
          v27 = v53;
          v29 = v34;
          v5 = v33;
          if ((v38 & 1) == 0)
          {
            v8 = v54;
LABEL_14:
            sub_26BF7F05C(v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
            goto LABEL_9;
          }
        }

        v8 = v54;
        v41 = sub_26C00956C();
        sub_26BF7F05C(v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if (v41)
        {
          return 1;
        }

LABEL_9:
        v26 = (v26 + 1) & v27;
      }

      while (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_26BF33464(unint64_t *a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(&v80);
  v4 = sub_26C00B0CC();
  v5 = v2 + 56;
  v6 = -1 << *(v2 + 32);
  v7 = v4 & ~v6;
  if (((*(v2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v76 = v2 + 56;
  v77 = ~v6;
  v8 = *a1;
  v9 = a1[1];
  if (*a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0xC000000000000000;
  }

  v11 = !v10;
  v73 = v11;
  v74 = 0;
  v75 = v9 >> 62;
  v12 = __OFSUB__(HIDWORD(v8), v8);
  v72 = v12;
  while (1)
  {
    sub_26BE2DB68(*(v2 + 48) + 56 * v7, &v80);
    v14 = v80;
    v13 = v81;
    if ((v81 & 0x2000000000000000) == 0)
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        goto LABEL_49;
      }

      v15 = v81 >> 62;
      if (v81 >> 62 == 3)
      {
        if (v80)
        {
          v16 = 0;
        }

        else
        {
          v16 = v81 == 0xC000000000000000;
        }

        v17 = v9 >> 62;
        v19 = !v16 || v9 >> 62 != 3;
        if (((v19 | v73) & 1) == 0)
        {
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE0489C(0, 0xC000000000000000);
          v20 = 0;
          v21 = 0xC000000000000000;
          goto LABEL_54;
        }
      }

      else
      {
        v17 = v9 >> 62;
        if (v15 <= 1)
        {
          if (v15)
          {
            LODWORD(v23) = HIDWORD(v80) - v80;
            if (__OFSUB__(HIDWORD(v80), v80))
            {
              goto LABEL_116;
            }

            v23 = v23;
            if (v75 > 1)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v23 = BYTE6(v81);
            if (v75 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_37;
        }

        if (v15 == 2)
        {
          v25 = *(v80 + 16);
          v24 = *(v80 + 24);
          v26 = __OFSUB__(v24, v25);
          v23 = v24 - v25;
          if (v26)
          {
            goto LABEL_117;
          }

          if (v75 > 1)
          {
            goto LABEL_41;
          }

          goto LABEL_37;
        }
      }

      v23 = 0;
      if (v17 > 1)
      {
LABEL_41:
        if (v17 != 2)
        {
          if (v23)
          {
LABEL_49:
            sub_26BE04890(v8, v9);
            sub_26BE04890(v14, v13);
            sub_26BE0489C(v14, v13);
            sub_26BE0489C(v8, v9);
            goto LABEL_50;
          }

LABEL_53:
          sub_26BE04890(v8, v9);
          sub_26BE04890(v14, v13);
          sub_26BE0489C(v14, v13);
          v20 = v8;
          v21 = v9;
LABEL_54:
          sub_26BE0489C(v20, v21);
          goto LABEL_55;
        }

        v29 = *(v8 + 16);
        v28 = *(v8 + 24);
        v26 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v26)
        {
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
        }

LABEL_43:
        if (v23 != v27)
        {
          goto LABEL_49;
        }

        if (v23 < 1)
        {
          goto LABEL_53;
        }

        if (v15 > 1)
        {
          if (v15 != 2)
          {
            *&v79[6] = 0;
            *v79 = 0;
            sub_26BE04890(v8, v9);
            sub_26BE04890(v14, v13);
            goto LABEL_103;
          }

          v71 = v2;
          v51 = *(v80 + 16);
          v50 = *(v80 + 24);
          sub_26BE04890(v8, v9);
          sub_26BE04890(v14, v13);
          v52 = sub_26C008E9C();
          if (v52)
          {
            v53 = sub_26C008ECC();
            if (__OFSUB__(v51, v53))
            {
              goto LABEL_122;
            }

            v52 += v51 - v53;
          }

          if (__OFSUB__(v50, v51))
          {
            goto LABEL_121;
          }

          sub_26C008EBC();
          v54 = v52;
          v55 = v8;
          v56 = v9;
          v57 = v74;
        }

        else
        {
          if (!v15)
          {
            *v79 = v80;
            *&v79[8] = v81;
            *&v79[12] = WORD2(v81);
            sub_26BE04890(v8, v9);
            sub_26BE04890(v14, v13);
LABEL_103:
            sub_26BE567B0(v79, v8, v9, v78);
            sub_26BE0489C(v14, v13);
            sub_26BE0489C(v8, v9);
            v67 = v78[0];
LABEL_104:
            v5 = v76;
            if ((v67 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_55;
          }

          v71 = v2;
          if (v80 >> 32 < v80)
          {
            goto LABEL_120;
          }

          sub_26BE04890(v8, v9);
          sub_26BE04890(v14, v13);
          v65 = sub_26C008E9C();
          if (v65)
          {
            v66 = sub_26C008ECC();
            if (__OFSUB__(v14, v66))
            {
              goto LABEL_123;
            }

            v65 += v14 - v66;
          }

          v57 = v74;
          sub_26C008EBC();
          v54 = v65;
          v55 = v8;
          v56 = v9;
        }

        sub_26BE567B0(v54, v55, v56, v79);
        v74 = v57;
        sub_26BE0489C(v14, v13);
        sub_26BE0489C(v8, v9);
        v67 = v79[0];
        v2 = v71;
        goto LABEL_104;
      }

LABEL_37:
      v27 = BYTE6(v9);
      if (v17)
      {
        v27 = HIDWORD(v8) - v8;
        if (v72)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_43;
    }

    if ((v9 & 0x2000000000000000) == 0)
    {
      goto LABEL_49;
    }

    sub_26BE04890(v8, v9);
    sub_26BE04890(v14, v13);
    v22 = sub_26BFB0104(v14, v8);
    sub_26BE0489C(v14, v13);
    sub_26BE0489C(v8, v9);
    if ((v22 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_55:
    v31 = v83;
    v30 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (*(*(v30 + 8) + 24))(v79, v31);
    v32 = v79[0];

    v34 = a1[5];
    v33 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v34);
    (*(*(v33 + 8) + 24))(v78, v34);
    LODWORD(v33) = LOBYTE(v78[0]);

    if (v32 != v33)
    {
      v5 = v76;
      goto LABEL_50;
    }

    v36 = v83;
    v35 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v37 = (*(*(v35 + 8) + 16))(v36);
    v39 = v38;
    v41 = a1[5];
    v40 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v41);
    v42 = (*(*(v40 + 8) + 16))(v41);
    v44 = v39 >> 62;
    v45 = v43 >> 62;
    v5 = v76;
    if (v39 >> 62 == 3)
    {
      v46 = 0;
      if (!v37)
      {
        if (v39 == 0xC000000000000000 && v43 >> 62 == 3)
        {
          v46 = 0;
          if (!v42 && v43 == 0xC000000000000000)
          {
            sub_26BE00258(0, 0xC000000000000000);
            v69 = 0;
            v70 = 0xC000000000000000;
            goto LABEL_110;
          }
        }

LABEL_84:
        if (v45 > 1)
        {
          goto LABEL_68;
        }

        goto LABEL_85;
      }

      if (v45 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v44 == 2)
      {
        v59 = *(v37 + 16);
        v58 = *(v37 + 24);
        v26 = __OFSUB__(v58, v59);
        v46 = v58 - v59;
        if (v26)
        {
          goto LABEL_119;
        }

        goto LABEL_84;
      }

      if (v44 == 1)
      {
        LODWORD(v46) = HIDWORD(v37) - v37;
        if (__OFSUB__(HIDWORD(v37), v37))
        {
          goto LABEL_118;
        }

        v46 = v46;
        if (v45 <= 1)
        {
          goto LABEL_85;
        }

LABEL_68:
        if (v45 == 2)
        {
          v48 = *(v42 + 16);
          v47 = *(v42 + 24);
          v26 = __OFSUB__(v47, v48);
          v49 = v47 - v48;
          if (v26)
          {
            goto LABEL_115;
          }

LABEL_87:
          if (v46 != v49)
          {
            goto LABEL_93;
          }

          goto LABEL_88;
        }

        if (!v46)
        {
          break;
        }

LABEL_93:
        sub_26BE00258(v42, v43);
        sub_26BE00258(v37, v39);
LABEL_50:
        sub_26BE2DBC4(&v80);
        goto LABEL_51;
      }

      v46 = BYTE6(v39);
      if (v45 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_85:
    if (!v45)
    {
      v49 = BYTE6(v43);
      goto LABEL_87;
    }

    if (__OFSUB__(HIDWORD(v42), v42))
    {
      goto LABEL_114;
    }

    if (v46 != HIDWORD(v42) - v42)
    {
      goto LABEL_93;
    }

LABEL_88:
    if (v46 < 1)
    {
      break;
    }

    v60 = v42;
    v61 = v43;
    sub_26BE00608(v42, v43);
    v62 = sub_26BECB6A4(v37, v39, v60, v61);
    v63 = v37;
    v64 = v62;
    sub_26BE00258(v63, v39);
    sub_26BE00258(v60, v61);
    sub_26BE2DBC4(&v80);
    if (v64)
    {
      return 1;
    }

    v5 = v76;
LABEL_51:
    v7 = (v7 + 1) & v77;
    if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BE00258(v42, v43);
  v69 = v37;
  v70 = v39;
LABEL_110:
  sub_26BE00258(v69, v70);
  sub_26BE2DBC4(&v80);
  return 1;
}

void MLS.Client.KeyPackage.asKeyPackage()(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = v1[1];
  sub_26BE00608(v14, v13);
  MLS.MLSMessage.init(rawValue:quiet:)(v14, v13, 0, v12);
  if (!v2)
  {
    sub_26BF7F0BC(v12, v9, type metadata accessor for MLS.MLSMessage.Inner);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
      v15 = *(v9 + 9);
      *(a1 + 128) = *(v9 + 8);
      *(a1 + 144) = v15;
      *(a1 + 160) = *(v9 + 10);
      *(a1 + 176) = *(v9 + 22);
      v16 = *(v9 + 5);
      *(a1 + 64) = *(v9 + 4);
      *(a1 + 80) = v16;
      v17 = *(v9 + 7);
      *(a1 + 96) = *(v9 + 6);
      *(a1 + 112) = v17;
      v18 = *(v9 + 1);
      *a1 = *v9;
      *(a1 + 16) = v18;
      v19 = *(v9 + 3);
      *(a1 + 32) = *(v9 + 2);
      *(a1 + 48) = v19;
    }

    else
    {
      sub_26BF7F05C(v9, type metadata accessor for MLS.MLSMessage.Inner);
      sub_26BE01654();
      swift_allocError();
      v21 = v20;
      sub_26BF7F0BC(v12, v7, type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v23 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v23 = 2;
        }

        else
        {
          v23 = *v7;
          sub_26BE00258(*(v7 + 1), *(v7 + 2));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v23 = 4;
        }

        else
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v23 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
        v23 = 3;
      }

      *v21 = v23;
      *(v21 + 2) = 5;
      *(v21 + 4) = 0;
      *(v21 + 112) = 17;
      swift_willThrow();
      sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
    }
  }
}

void MLS.Group.Message.asWelcome()(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = v1[1];
  sub_26BE00608(v14, v13);
  MLS.MLSMessage.init(rawValue:quiet:)(v14, v13, 0, v12);
  if (!v2)
  {
    sub_26BF7F0BC(v12, v9, type metadata accessor for MLS.MLSMessage.Inner);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26BF7F05C(v9, type metadata accessor for MLS.MLSMessage.Inner);
      sub_26BE01654();
      swift_allocError();
      v16 = v15;
      sub_26BF7F0BC(v12, v7, type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v18 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v18 = 2;
        }

        else
        {
          v18 = *v7;
          sub_26BE00258(*(v7 + 1), *(v7 + 2));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v18 = 4;
        }

        else
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v18 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
        v18 = 3;
      }

      *v16 = v18;
      *(v16 + 2) = 3;
      *(v16 + 4) = 0;
      *(v16 + 112) = 17;
      swift_willThrow();
      sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
    }

    else
    {
      sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
      v19 = *(v9 + 1);
      *a1 = *v9;
      *(a1 + 8) = v19;
      *(a1 + 16) = *(v9 + 1);
    }
  }
}

uint64_t sub_26BF34320@<X0>(_OWORD *a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  LOBYTE(v17) = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v4, v5, &v21);
  if (v2)
  {
  }

  v17 = v6;
  *&v18 = v7;
  MLS.Credential.rawValue.getter();
  v9 = v8;
  v11 = v10;
  sub_26BE00608(v8, v10);
  MLS.Credential.init(rawValue:)(v9, v11, &v16);
  v12 = v16;
  v15 = v16;
  sub_26BE04890(v16, *(&v16 + 1));
  sub_26C006590(&v15, &v16);

  sub_26BE0489C(v12, *(&v12 + 1));
  sub_26BE00258(v9, v11);
  v13 = v16;
  result = sub_26BE03890(&v21, (a1 + 1));
  *a1 = v13;
  return result;
}

uint64_t MLS.MLSMessage.messageEpoch.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BF7F0BC(v1, v7, type metadata accessor for MLS.MLSMessage.Inner);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
LABEL_5:
    sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
    return 0;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v9 = *v7;
      v10 = v7[1];
      v11 = v7[2];
      v12 = v7[4];
      v13 = v7[5];
      v14 = v7[6];
      v15 = v7[7];
      v17 = v7[8];
      v16 = v7[9];
      sub_26BE00258(v9, v10);
      sub_26BE00258(v12, v13);
      sub_26BE00258(v14, v15);
      sub_26BE00258(v17, v16);
      return v11;
    }

    goto LABEL_5;
  }

  sub_26BF7F124(v7, v4, type metadata accessor for MLS.PublicMessage);
  v19 = *(v4 + 2);
  sub_26BF7F05C(v4, type metadata accessor for MLS.PublicMessage);
  return v19;
}

unint64_t MLS.MLSMessage.messageEra.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BF7F0BC(v1, v7, type metadata accessor for MLS.MLSMessage.Inner);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_26BF7F124(v7, v4, type metadata accessor for MLS.PublicMessage);
    v24 = *(v4 + 4);
    v25 = *(v4 + 5);
    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v26 != 2 || *(v24 + 16) == *(v24 + 24))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!v26)
      {
        if ((v25 & 0xFF000000000000) != 0)
        {
          v27 = 0;
LABEL_30:
          *&v28 = v24;
          *(&v28 + 1) = v25;
          *&v29 = v27;
          sub_26BFF91C8(v33);
          sub_26BE00258(v28, *(&v28 + 1));
          sub_26BF7F05C(v4, type metadata accessor for MLS.PublicMessage);
          goto LABEL_34;
        }

LABEL_25:
        v19 = type metadata accessor for MLS.PublicMessage;
        v20 = v4;
        goto LABEL_9;
      }

      if (v24 == v24 >> 32)
      {
        goto LABEL_25;
      }
    }

    if (v26 == 2)
    {
      v27 = *(v24 + 16);
    }

    else
    {
      v27 = v24;
    }

    sub_26BE00608(*(v4 + 4), *(v4 + 5));
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_8:
    v19 = type metadata accessor for MLS.MLSMessage.Inner;
    v20 = v7;
LABEL_9:
    sub_26BF7F05C(v20, v19);
LABEL_10:
    v21 = 0;
    v22 = 1;
    goto LABEL_11;
  }

  v10 = *v7;
  v9 = v7[1];
  v12 = v7[4];
  v11 = v7[5];
  v14 = v7[6];
  v13 = v7[7];
  v16 = v7[8];
  v15 = v7[9];
  v17 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v17 != 2 || *(v12 + 16) == *(v12 + 24))
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (v17)
  {
    if (v12 == v12 >> 32)
    {
      goto LABEL_27;
    }

LABEL_22:
    if (v17 == 2)
    {
      v18 = *(v12 + 16);
    }

    else
    {
      v18 = v12;
    }

    sub_26BE00608(v12, v11);
    goto LABEL_33;
  }

  if ((v11 & 0xFF000000000000) == 0)
  {
LABEL_27:
    sub_26BE00258(*v7, v7[1]);
    sub_26BE00258(v12, v11);
    sub_26BE00258(v14, v13);
    sub_26BE00258(v16, v15);
    goto LABEL_10;
  }

  v18 = 0;
LABEL_33:
  *&v28 = v12;
  *(&v28 + 1) = v11;
  *&v29 = v18;
  sub_26BFF91C8(v33);
  sub_26BE00258(v10, v9);
  sub_26BE00258(v12, v11);
  sub_26BE00258(v14, v13);
  sub_26BE00258(v16, v15);
  sub_26BE00258(v28, *(&v28 + 1));
LABEL_34:
  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v29 = v33[1];
  v28 = v33[0];
  v22 = *(&v34 + 1) == 1;
  if (*(&v34 + 1) == 1)
  {
    sub_26BE2E258(&v28, &qword_28045FAA8, qword_26C01F928);
    v21 = 0;
  }

  else
  {
    v21 = DWORD2(v29);
    sub_26BE6FDD8(&v28);
  }

LABEL_11:
  LOBYTE(v33[0]) = v22;
  return v21 | (v22 << 32);
}

uint64_t sub_26BF34B98@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BF7F0BC(v1, v8, type metadata accessor for MLS.MLSMessage.Inner);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v10 = *v8;
      v11 = v8[1];
      v12 = v8[2];
      v13 = v8[4];
      v14 = v8[5];
      v15 = v8[6];
      v16 = v8[7];
      v18 = v8[8];
      v17 = v8[9];
      sub_26BE00258(v10, v11);
      sub_26BE00258(v13, v14);
      sub_26BE00258(v15, v16);
      sub_26BE00258(v18, v17);
      result = MLS.MLSMessage.messageEra.getter();
      if ((result & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_6:
    result = sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage.Inner);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    return result;
  }

  sub_26BF7F124(v8, v5, type metadata accessor for MLS.PublicMessage);
  v12 = *(v5 + 2);
  sub_26BF7F05C(v5, type metadata accessor for MLS.PublicMessage);
  result = MLS.MLSMessage.messageEra.getter();
  if ((result & 0x100000000) != 0)
  {
LABEL_8:
    result = sub_26BE4126C();
  }

LABEL_9:
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  return result;
}

uint64_t MLS.Group.PureSwiftGroup.EraEpoch.init(era:epoch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_26BF34D88()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478FB0);
  __swift_project_value_buffer(v0, qword_280478FB0);
  return sub_26C009A4C();
}

BOOL static MLS.Group.PureSwiftGroup.EraEpoch.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t MLS.Group.PureSwiftGroup.EraEpoch.description.getter()
{
  sub_26C00AC1C();

  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](0x3D68636F7065202CLL, 0xE800000000000000);
  v1 = sub_26C00AEFC();
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](93, 0xE100000000000000);
  return 0x3D6172655BLL;
}

unint64_t *MLS.Group.PureSwiftGroup.EraEpoch.init(_:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    v3 = result[1];
    *a2 = v2;
    *(a2 + 8) = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t MLS.Group.PureSwiftGroup.EraEpoch.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_26C00B09C();
  return MEMORY[0x26D699B60](v1);
}

uint64_t MLS.Group.PureSwiftGroup.EraEpoch.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BF35010()
{
  v1 = *(v0 + 8);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BF35070()
{
  v1 = *(v0 + 8);
  sub_26C00B09C();
  return MEMORY[0x26D699B60](v1);
}

uint64_t sub_26BF350B0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

BOOL sub_26BF3510C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_26BF35134(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) >= *(a1 + 8);
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_26BF3515C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) >= *(a2 + 8);
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_26BF35184(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) < *(a1 + 8);
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t sub_26BF351DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 160) = v2;
}

uint64_t sub_26BF35274(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t sub_26BF3536C()
{
  *(v1 + 88) = v0;
  type metadata accessor for MLS.GroupState(0);
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF353FC, 0, 0);
}

uint64_t sub_26BF353FC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_26BF354B0;
  v5 = *(v0 + 96);

  return sub_26BF37CA4(v5, (v0 + 72), 0);
}

uint64_t sub_26BF354B0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26BF357F8;
  }

  else
  {
    v2 = sub_26BF355C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF355C4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  v8 = sub_26BFEB264(sub_26BF7F1F4, v7, v6, v3, v4, v5);
  if (v1)
  {
    v9 = *(v0 + 96);

    sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = v8;

    v13 = *(v12 + 2);
    if (v13)
    {
      v23 = MEMORY[0x277D84F90];
      sub_26BECBA54(0, v13, 0);
      v14 = v23;
      v15 = (v12 + 32);
      do
      {
        sub_26BE2DB68(v15, v0 + 16);
        v17 = *(v23 + 16);
        v16 = *(v23 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_26BECBA54((v16 > 1), v17 + 1, 1);
        }

        *(v23 + 16) = v17 + 1;
        v18 = v23 + 56 * v17;
        v19 = *(v0 + 16);
        v20 = *(v0 + 32);
        v21 = *(v0 + 48);
        *(v18 + 80) = *(v0 + 64);
        *(v18 + 48) = v20;
        *(v18 + 64) = v21;
        *(v18 + 32) = v19;
        v15 += 56;
        --v13;
      }

      while (v13);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    sub_26BF7F05C(*(v0 + 96), type metadata accessor for MLS.GroupState);

    v22 = *(v0 + 8);

    return v22(v14);
  }
}

uint64_t sub_26BF357F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3587C()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BE22BF0;
  v2 = *(v0 + 16);

  return sub_26BE8EC78(v2, v2);
}

uint64_t sub_26BF35930@<X0>(uint64_t a1@<X0>, int *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v16 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v15 = v5;

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v15, &v20);
  if (v3)
  {
  }

  else
  {

    v11[6] = v26;
    v11[7] = v27;
    v11[2] = v22;
    v11[3] = v23;
    v11[4] = v24;
    v11[5] = v25;
    v11[0] = v20;
    v11[1] = v21;
    v13[6] = v26;
    v13[7] = v27;
    v13[2] = v22;
    v13[3] = v23;
    v13[4] = v24;
    v13[5] = v25;
    v12 = v28;
    v14 = v28;
    v13[0] = v20;
    v13[1] = v21;
    if (sub_26BE59C80(v13) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v10 = 8;
      v10[112] = 0;
      return swift_willThrow();
    }

    else
    {
      sub_26BF34320(a3);
      return sub_26BE2E258(v11, &qword_28045E6A0, &unk_26C016520);
    }
  }
}

uint64_t sub_26BF35AF8(int *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a1;
  result = sub_26BF34320(v11);
  if (!v5)
  {
    v10 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v11, a4);
    result = sub_26BE2DBC4(v11);
    if (v10)
    {
      *a5 = v8;
      *(a5 + 4) = 0;
    }
  }

  return result;
}

uint64_t sub_26BF35B78(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_26BF35B98, 0, 0);
}

uint64_t sub_26BF35B98()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_26BEAAEE4;
  v5 = *(v0 + 32);

  return sub_26BF37CA4(v5, (v0 + 16), 0);
}

uint64_t sub_26BF35C6C()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BE3C714;
  v2 = *(v0 + 32);

  return sub_26BE9EC54(v0 + 16, v2, v2);
}

uint64_t sub_26BF35D28(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for MLS.GroupState(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF35E20, 0, 0);
}

uint64_t sub_26BF35E20()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_26BF35ED4;
  v5 = *(v0 + 64);

  return sub_26BF37CA4(v5, (v0 + 16), 0);
}

uint64_t sub_26BF35ED4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_26BF36120;
  }

  else
  {
    v2 = sub_26BF35FF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF35FF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  (*(*(v0 + 80) + 56))(v2, 0, 1, *(v0 + 72));
  sub_26BF7F124(v2, v1, type metadata accessor for MLS.GroupState);
  type metadata accessor for MLS.KeySchedule(0);
  sub_26C009C3C();
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);
  **(v0 + 48) = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26BF36120()
{
  v14 = v0;
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 1, 1, v0[9]);
  sub_26BE2E258(v1, &qword_28045FAB0, &qword_26C01F960);
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00A9FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;

    v7 = sub_26BE3D034();
    v9 = v8;

    v10 = sub_26BE29740(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: could not find state when fetching epoch authenticator", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D69A4E0](v6, -1, -1);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }

  *v0[6] = xmmword_26C00DA60;

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF3634C()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BF36408;
  v2 = *(v0 + 32);

  return sub_26BE9F40C(v0 + 16, v2, v2);
}

uint64_t sub_26BF36408()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26BE26758;
  }

  else
  {
    v2 = sub_26BE3A098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF3651C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  type metadata accessor for MLS.GroupState(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF365AC, 0, 0);
}

uint64_t sub_26BF365AC()
{
  v17 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: serializing ratchet tree", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 40);
  v11 = *(v10 + 152);
  v12 = *(v10 + 24);
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  *v13 = v0;
  v13[1] = sub_26BF367B4;
  v14 = *(v0 + 48);

  return sub_26BF37CA4(v14, (v0 + 16), 0);
}

uint64_t sub_26BF367B4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26BF369D0;
  }

  else
  {
    v2 = sub_26BF368C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF368C8()
{
  v1 = v0[8];

  MLS.RatchetTree.rawRepresentation.getter();
  v4 = v3;
  v5 = v0[6];
  if (v1)
  {
    sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  }

  else
  {
    v7 = v2;
    v8 = v0[4];
    sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);

    *v8 = v4;
    v8[1] = v7;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF369D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF36A34(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MLS.GroupState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  swift_beginAccess();
  if (*(v8 + 312) != 1)
  {
    return 0;
  }

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v9 = sub_26C009A5C();
  __swift_project_value_buffer(v9, qword_280478EE8);
  sub_26BF7F0BC(a1, v7, type metadata accessor for MLS.GroupState);

  v10 = sub_26C009A3C();
  v11 = sub_26C00AA1C();

  if (!os_log_type_enabled(v10, v11))
  {
    sub_26BF7F05C(v7, type metadata accessor for MLS.GroupState);

    goto LABEL_12;
  }

  *&v28 = a1;
  v12 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v32 = v37;
  *v12 = 136315394;

  v13 = sub_26BE3D034();
  v15 = v14;

  v16 = sub_26BE29740(v13, v15, &v32);

  *(v12 + 4) = v16;
  *(v12 + 12) = 1024;
  v17 = sub_26BE81FE0(*&v7[*(v5 + 40)]);
  if (v2)
  {

    v3 = 0;
LABEL_10:
    v19 = sub_26BE4126C();
    goto LABEL_11;
  }

  v19 = v17;
  if ((v17 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_26BF7F05C(v7, type metadata accessor for MLS.GroupState);
  *(v12 + 14) = v19;
  _os_log_impl(&dword_26BDFE000, v10, v11, "%s: eraOnlyAuthenticatedData: adding era %u to authenticated data", v12, 0x12u);
  v20 = v37;
  __swift_destroy_boxed_opaque_existential_1(v37);
  MEMORY[0x26D69A4E0](v20, -1, -1);
  MEMORY[0x26D69A4E0](v12, -1, -1);

  a1 = v28;
LABEL_12:
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v21 = sub_26BE81FE0(*(a1 + *(v5 + 40)));
  if (v3)
  {
  }

  else if ((v21 & 0x100000000) == 0)
  {
    goto LABEL_16;
  }

  LODWORD(v21) = sub_26BE4126C();
LABEL_16:
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  LOWORD(v32) = 1;
  v28 = xmmword_26C00BBD0;
  v33 = xmmword_26C00BBD0;
  v34 = v21;
  sub_26BE7170C(&v29, v35, &qword_28045E2A8, &qword_26C028DD0);
  v29 = v28;
  *&v30 = 0;
  sub_26BFF933C(&v32);
  v22 = v29;
  v23 = *(&v29 + 1) >> 62;
  if ((*(&v29 + 1) >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_24;
    }

    v26 = *(v29 + 24);
LABEL_22:
    v25 = *(&v29 + 1);
    v24 = v29;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_24:
    v25 = *(&v22 + 1);
    v24 = v22;
    goto LABEL_25;
  }

  if (v23)
  {
    v26 = v29 >> 32;
    goto LABEL_22;
  }

  v25 = *(&v29 + 1);
  v24 = v29;
LABEL_25:
  v27 = sub_26C00909C();
  sub_26BE00258(v24, v25);
  sub_26BE6FDD8(&v32);
  return v27;
}

void sub_26BF36E34()
{
  sub_26BF880D8(v0);
  if (!v1)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

uint64_t sub_26BF36F0C()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for MLS.GroupState(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF37004, 0, 0);
}

uint64_t sub_26BF37004()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_26BF370B4;
  v5 = *(v0 + 40);

  return sub_26BF378BC(v5, v0 + 16);
}

uint64_t sub_26BF370B4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26BF37300;
  }

  else
  {
    v2 = sub_26BF371C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF371C8()
{
  v1 = v0[6];
  v2 = v0[5];
  if ((*(v0[7] + 48))(v2, 1, v1) == 1)
  {
    sub_26BE2E258(v2, &qword_28045FAB0, &qword_26C01F960);
    v3 = 0;
  }

  else
  {
    v4 = v0[8];
    sub_26BF7F124(v2, v4, type metadata accessor for MLS.GroupState);
    v5 = *(v4 + *(v1 + 40));
    v6 = (v5 + 32);
    v7 = *(v5 + 16) + 1;
    do
    {
      v3 = --v7 != 0;
      if (!v7)
      {
        break;
      }

      v8 = *v6;
      v6 += 12;
    }

    while (v8 != -4094);
    sub_26BF7F05C(v0[8], type metadata accessor for MLS.GroupState);
  }

  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_26BF37300()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26BF37394()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BF37448;
  v2 = *(v0 + 16);

  return sub_26BEA4FD4(v2, v2);
}

uint64_t sub_26BF37448(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_26BF37550(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_26BF37570, 0, 0);
}

void sub_26BF37570()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 64);
  if ((v2 & 0x2000000000000000) == 0)
  {
    goto LABEL_11;
  }

  v3 = *(v1 + 56);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x26D6996F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = *(v3 + 32);
    sub_26BE04890(v3, v2);
    v5 = v4;
  }

  v6 = v5;
  v7 = SecCertificateCopyURIs();
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_26BE0489C(v3, v2);

  *(v0 + 16) = v8;
  type metadata accessor for CFArray(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(v0 + 24);
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!v9[2])
  {

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v10 = v9[4];
  v11 = v9[5];

  v12 = sub_26BE2FBD4(v10, v11);

LABEL_12:
  **(v0 + 32) = v12 & 1;
  v13 = *(v0 + 8);

  v13();
}

uint64_t sub_26BF37734()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F228;
  v2 = *(v0 + 16);

  return sub_26BEA5A3C(v2, v2);
}

uint64_t sub_26BF37808()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F228;
  v2 = *(v0 + 16);

  return sub_26BEA630C(v2, v2);
}

uint64_t sub_26BF378BC(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  v5 = type metadata accessor for MLS.GroupState(0);
  *(v3 + 48) = v5;
  *(v3 + 56) = *(v5 - 8);
  *(v3 + 64) = swift_task_alloc();
  v6 = *(a2 + 8);
  *(v3 + 16) = *a2;
  *(v3 + 24) = v6;
  v7 = swift_task_alloc();
  *(v3 + 72) = v7;
  *v7 = v3;
  v7[1] = sub_26BF379C4;

  return sub_26BF38444(v3 + 16);
}

uint64_t sub_26BF379C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  if (v2)
  {
    v5 = sub_26BF37C40;
  }

  else
  {
    v5 = sub_26BF37ADC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF37ADC()
{
  v1 = v0[11];
  if (v1 >> 60 == 15)
  {
    (*(v0[7] + 56))(v0[4], 1, 1, v0[6]);
  }

  else
  {
    v2 = v0[12];
    MLS.GroupState.init(rawValue:)(v0[10], v1, v0[8]);
    if (!v2)
    {
      v3 = v0[6];
      v4 = v0[7];
      v5 = v0[4];
      v6 = *(v0[5] + 48);
      v7 = *(v3 + 76);
      v8 = v0[8];

      *(v8 + v7) = v6;
      sub_26BF7F0BC(v8, v5, type metadata accessor for MLS.GroupState);
      (*(v4 + 56))(v5, 0, 1, v3);
      sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_26BF37C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF37CA4(uint64_t a1, int *a2, char a3)
{
  *(v4 + 84) = a3;
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960);
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 80) = *a2;
  v8 = *(a2 + 1);
  *(v4 + 48) = v6;
  *(v4 + 56) = v8;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  v9 = swift_task_alloc();
  *(v4 + 64) = v9;
  *v9 = v4;
  v9[1] = sub_26BF37DA4;

  return sub_26BF378BC(v6, v4 + 16);
}

uint64_t sub_26BF37DA4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26BF383E0;
  }

  else
  {
    v2 = sub_26BF37EB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF37EB8()
{
  v46 = v0;
  v1 = *(v0 + 48);
  v2 = type metadata accessor for MLS.GroupState(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_26BE2E258(v1, &qword_28045FAB0, &qword_26C01F960);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v3 = sub_26C009A5C();
    __swift_project_value_buffer(v3, qword_280478EE8);

    v4 = sub_26C009A3C();
    v5 = sub_26C00AA0C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 56);
      v7 = *(v0 + 80);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v43 = v9;
      *v8 = 136315394;

      v10 = sub_26BE3D034();
      v12 = v11;

      v13 = sub_26BE29740(v10, v12, &v43);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v44 = v7;
      v45 = v6;
      v14 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v16 = sub_26BE29740(v14, v15, &v43);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_26BDFE000, v4, v5, "%s: could not find state for %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v9, -1, -1);
      MEMORY[0x26D69A4E0](v8, -1, -1);
    }

    v17 = *(v0 + 56);
    v18 = *(v0 + 40);
    sub_26BE01654();
    swift_allocError();
    *v19 = *(v18 + 24);
    *(v19 + 8) = v17;
    *(v19 + 16) = 0;
    *(v19 + 112) = 19;
    swift_willThrow();
  }

  else
  {
    v21 = *(v0 + 32);
    sub_26BF7F124(v1, v21, type metadata accessor for MLS.GroupState);
    v22 = *(v21 + *(v2 + 40));
    v23 = (v22 + 32);
    v24 = *(v22 + 16) + 1;
    do
    {
      if (!--v24)
      {
        goto LABEL_12;
      }

      v25 = *v23;
      v23 += 12;
    }

    while (v25 != -4094);
    if (*(v0 + 84) == 1)
    {
LABEL_12:

      v20 = *(v0 + 8);
      goto LABEL_13;
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v27 = sub_26C009A5C();
    __swift_project_value_buffer(v27, qword_280478EE8);

    v28 = sub_26C009A3C();
    v29 = sub_26C00AA0C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 56);
      v31 = *(v0 + 80);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136315394;

      v34 = sub_26BE3D034();
      v36 = v35;

      v37 = sub_26BE29740(v34, v36, &v43);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v44 = v31;
      v45 = v30;
      v38 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v40 = sub_26BE29740(v38, v39, &v43);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_26BDFE000, v28, v29, "%s: state for %s had hasEndMLS set to true, throwing .operationOnEndedGroup", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v33, -1, -1);
      MEMORY[0x26D69A4E0](v32, -1, -1);
    }

    v41 = *(v0 + 32);
    sub_26BE01654();
    swift_allocError();
    *v42 = 43;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    *(v42 + 40) = 0u;
    *(v42 + 56) = 0u;
    *(v42 + 72) = 0u;
    *(v42 + 88) = 0u;
    *(v42 + 104) = 0;
    *(v42 + 112) = 23;
    swift_willThrow();
    sub_26BF7F05C(v41, type metadata accessor for MLS.GroupState);
  }

  v20 = *(v0 + 8);
LABEL_13:

  return v20();
}

uint64_t sub_26BF383E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF38444(uint64_t a1)
{
  *(v2 + 544) = v1;
  *(v2 + 372) = *a1;
  *(v2 + 552) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_26BF38474, 0, 0);
}

uint64_t sub_26BF38474()
{
  v67 = v0;
  v1 = *(*(v0 + 544) + 48);
  swift_beginAccess();
  if (*(v1 + 312) == 1)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v2 = sub_26C009A5C();
    *(v0 + 560) = __swift_project_value_buffer(v2, qword_280478EE8);

    v3 = sub_26C009A3C();
    v4 = sub_26C00AA1C();

    if (os_log_type_enabled(v3, v4))
    {
      v62 = *(v0 + 552);
      v5 = *(v0 + 372);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v64 = v7;
      *v6 = 136315394;

      v8 = sub_26BE3D034();
      v10 = v9;

      v11 = sub_26BE29740(v8, v10, &v64);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      LODWORD(v65) = v5;
      v66 = v62;
      v12 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v14 = sub_26BE29740(v12, v13, &v64);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_26BDFE000, v3, v4, "%s: readEpochData for %s from storage v2", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v7, -1, -1);
      MEMORY[0x26D69A4E0](v6, -1, -1);
    }

    sub_26BE295A0(v1 + 40, v0 + 16);
    if (*(v0 + 160))
    {
      v15 = *(v0 + 552);
      v16 = *(v0 + 372);
      v17 = *(v0 + 544);
      sub_26BE038A8(v0 + 136, v0 + 416);
      sub_26BE29710(v0 + 16);
      v18 = *(v0 + 440);
      v19 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1((v0 + 416), v18);
      v20 = *(v17 + 32);
      v21 = *(v17 + 40);
      *(v0 + 456) = v20;
      *(v0 + 464) = v21;
      *(v0 + 472) = v16;
      *(v0 + 480) = v15;
      v22 = *(v19 + 16);
      sub_26BE00608(v20, v21);
      v60 = (v22 + *v22);
      v23 = swift_task_alloc();
      *(v0 + 568) = v23;
      *v23 = v0;
      v23[1] = sub_26BF38CCC;

      return v60(v0 + 456, v18, v19);
    }

    else
    {
      sub_26BE29710(v0 + 16);

      sub_26BE2BAE8(0, 0xF000000000000000);
      v48 = sub_26C009A3C();
      v49 = sub_26C00AA1C();

      sub_26BE132D4(0, 0xF000000000000000);
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v65 = v51;
        *v50 = 136315394;

        v52 = sub_26BE3D034();
        v54 = v53;

        v55 = sub_26BE29740(v52, v54, &v65);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        *(v0 + 528) = 0;
        *(v0 + 536) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB30, &qword_26C01FCB0);
        v56 = sub_26C00A4FC();
        v58 = sub_26BE29740(v56, v57, &v65);

        *(v50 + 14) = v58;
        _os_log_impl(&dword_26BDFE000, v48, v49, "%s: readEpochData from storage v2: %s bytes", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v51, -1, -1);
        MEMORY[0x26D69A4E0](v50, -1, -1);
      }

      v59 = *(v0 + 8);

      return v59(0, 0xF000000000000000);
    }
  }

  else
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v25 = sub_26C009A5C();
    *(v0 + 600) = __swift_project_value_buffer(v25, qword_280478EE8);

    v26 = sub_26C009A3C();
    v27 = sub_26C00AA1C();

    if (os_log_type_enabled(v26, v27))
    {
      v63 = *(v0 + 552);
      v28 = *(v0 + 372);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v64 = v30;
      *v29 = 136315394;

      v31 = sub_26BE3D034();
      v33 = v32;

      v34 = sub_26BE29740(v31, v33, &v64);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      LODWORD(v65) = v28;
      v66 = v63;
      v35 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v37 = sub_26BE29740(v35, v36, &v64);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_26BDFE000, v26, v27, "%s: readEpochData for %s from storage v1", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v30, -1, -1);
      MEMORY[0x26D69A4E0](v29, -1, -1);
    }

    if (*(v0 + 372) == 1)
    {
      v38 = *(v0 + 544);
      sub_26BE038A8(v1 + 120, v0 + 376);
      v39 = *(v0 + 400);
      v40 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), v39);
      v41 = *(v38 + 32);
      *(v0 + 608) = v41;
      v42 = *(v38 + 40);
      *(v0 + 616) = v42;
      v43 = *(v40 + 16);
      sub_26BE00608(v41, v42);
      v61 = (v43 + *v43);
      v44 = swift_task_alloc();
      *(v0 + 624) = v44;
      *v44 = v0;
      v44[1] = sub_26BF39068;
      v45 = *(v0 + 552);

      return v61(v41, v42, v45, v39, v40);
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v46 = 42;
      v46[112] = 0;
      swift_willThrow();
      v47 = *(v0 + 8);

      return v47();
    }
  }
}

uint64_t sub_26BF38CCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 576) = v2;

  if (v2)
  {
    sub_26BE00258(v6[57], v6[58]);
    v7 = sub_26BF39400;
  }

  else
  {
    v6[73] = a2;
    v6[74] = a1;
    sub_26BE00258(v6[57], v6[58]);
    v7 = sub_26BF38E08;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF38E08()
{
  v22 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 416));
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);

  sub_26BE2BAE8(v1, v2);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  sub_26BE132D4(v1, v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315394;

    v7 = sub_26BE3D034();
    v9 = v8;

    v10 = sub_26BE29740(v7, v9, &v21);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    if (v2 >> 60 == 15)
    {
LABEL_3:
      v12 = 0;
LABEL_4:
      *(v0 + 528) = v12;
      *(v0 + 536) = v2 >> 60 == 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB30, &qword_26C01FCB0);
      v13 = sub_26C00A4FC();
      v15 = sub_26BE29740(v13, v14, &v21);

      *(v5 + 14) = v15;
      _os_log_impl(&dword_26BDFE000, v3, v4, "%s: readEpochData from storage v2: %s bytes", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v6, -1, -1);
      MEMORY[0x26D69A4E0](v5, -1, -1);
      goto LABEL_5;
    }

    v17 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_3;
      }

      v19 = *(v1 + 16);
      v18 = *(v1 + 24);
      v20 = __OFSUB__(v18, v19);
      v12 = v18 - v19;
      if (!v20)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v12 = BYTE6(v2);
      goto LABEL_4;
    }

    LODWORD(v12) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      return result;
    }

    v12 = v12;
    goto LABEL_4;
  }

LABEL_5:

  v16 = *(v0 + 8);

  return v16(v1, v2);
}

uint64_t sub_26BF39068(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[79] = a1;
  v4[80] = a2;
  v4[81] = v2;

  if (v2)
  {
    v5 = sub_26BF39464;
  }

  else
  {
    sub_26BE00258(v4[76], v4[77]);
    v5 = sub_26BF39190;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF39190()
{
  v28 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  __swift_destroy_boxed_opaque_existential_1((v0 + 376));

  sub_26BE2BAE8(v2, v1);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  sub_26BE132D4(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 640);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315394;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v27);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    if (v5 >> 60 == 15)
    {
LABEL_3:
      v13 = 0;
LABEL_4:
      *(v0 + 512) = v13;
      *(v0 + 520) = v5 >> 60 == 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB30, &qword_26C01FCB0);
      v14 = sub_26C00A4FC();
      v16 = sub_26BE29740(v14, v15, &v27);

      *(v6 + 14) = v16;
      _os_log_impl(&dword_26BDFE000, v3, v4, "%s: readEpochData from storage v1: %s bytes", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v7, -1, -1);
      MEMORY[0x26D69A4E0](v6, -1, -1);
      goto LABEL_5;
    }

    v20 = *(v0 + 640);
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_3;
      }

      v22 = *(*(v0 + 632) + 16);
      v23 = *(*(v0 + 632) + 24);
      v24 = __OFSUB__(v23, v22);
      v13 = v23 - v22;
      if (!v24)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v13 = BYTE6(v20);
      goto LABEL_4;
    }

    v25 = *(v0 + 632);
    v26 = *(v0 + 636);
    v24 = __OFSUB__(v26, v25);
    LODWORD(v13) = v26 - v25;
    if (v24)
    {
      __break(1u);
      return result;
    }

    v13 = v13;
    goto LABEL_4;
  }

LABEL_5:

  v17 = *(v0 + 640);
  v18 = *(v0 + 632);
  v19 = *(v0 + 8);

  return v19(v18, v17);
}

uint64_t sub_26BF39400()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 416));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF39464()
{
  sub_26BE00258(v0[76], v0[77]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26BF394D4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB8, &qword_26C01F990);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF39650, 0, 0);
}

uint64_t sub_26BF39650()
{
  v141 = v0;
  v1 = v0;
  v2 = *(*(v0 + 144) + 48);
  swift_beginAccess();
  if (*(v2 + 312) == 1)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v3 = sub_26C009A5C();
    __swift_project_value_buffer(v3, qword_280478EE8);
    swift_bridgeObjectRetain_n();

    v4 = sub_26C009A3C();
    v5 = sub_26C00AA1C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 136);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v140[0] = v8;
      *v7 = 136315394;

      v9 = sub_26BE3D034();
      v11 = v10;

      v12 = sub_26BE29740(v9, v11, v140);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2048;
      v13 = *(v6 + 16);

      *(v7 + 14) = v13;

      _os_log_impl(&dword_26BDFE000, v4, v5, "%s: updateStorage for %ld updates using storage v2", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69A4E0](v8, -1, -1);
      MEMORY[0x26D69A4E0](v7, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v29 = sub_26C009A3C();
    v30 = sub_26C00A9FC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 136);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v140[0] = v33;
      *v32 = 136315394;

      v34 = sub_26BE3D034();
      v36 = v35;

      v37 = sub_26BE29740(v34, v36, v140);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v38 = *(v31 + 16);
      if (v38)
      {
        v39 = *(v1 + 240);
        v40 = *(v1 + 176);
        v41 = *(*(v1 + 184) + 80);
        sub_26BE2E1F0(*(v1 + 136) + ((v41 + 32) & ~v41), v39, &qword_28045FAC0, &qword_26C01F998);
        v42 = *v39;
        v43 = *(v39 + 1);
        sub_26BE2E258(v39 + *(v40 + 48), &qword_28045FAB0, &qword_26C01F960);
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      *(v1 + 112) = v42;
      *(v1 + 120) = v43;
      *(v1 + 128) = v38 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC8, &qword_26C01F9A8);
      v75 = sub_26C00A4FC();
      v77 = sub_26BE29740(v75, v76, v140);

      *(v32 + 14) = v77;
      _os_log_impl(&dword_26BDFE000, v29, v30, "%s: first update: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v33, -1, -1);
      MEMORY[0x26D69A4E0](v32, -1, -1);
    }

    else
    {
    }

    v78 = sub_26C009A3C();
    v79 = sub_26C00A9FC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = *(v1 + 136);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v140[0] = v82;
      *v81 = 136315394;

      v83 = sub_26BE3D034();
      v85 = v84;

      v86 = sub_26BE29740(v83, v85, v140);

      *(v81 + 4) = v86;
      *(v81 + 12) = 2080;
      v87 = *(v80 + 16);
      if (v87)
      {
        v88 = *(v1 + 232);
        v89 = *(v1 + 176);
        sub_26BE2E1F0(*(v1 + 136) + ((*(*(v1 + 184) + 80) + 32) & ~*(*(v1 + 184) + 80)) + *(*(v1 + 184) + 72) * (v87 - 1), v88, &qword_28045FAC0, &qword_26C01F998);
        v90 = *v88;
        v91 = *(v88 + 1);
        sub_26BE2E258(v88 + *(v89 + 48), &qword_28045FAB0, &qword_26C01F960);
      }

      else
      {
        v90 = 0;
        v91 = 0;
      }

      *(v1 + 88) = v90;
      *(v1 + 96) = v91;
      *(v1 + 104) = v87 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC8, &qword_26C01F9A8);
      v92 = sub_26C00A4FC();
      v94 = sub_26BE29740(v92, v93, v140);

      *(v81 + 14) = v94;
      _os_log_impl(&dword_26BDFE000, v78, v79, "%s: last update: %s", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v82, -1, -1);
      MEMORY[0x26D69A4E0](v81, -1, -1);
    }

    v95 = swift_task_alloc();
    *(v1 + 248) = v95;
    *v95 = v1;
    v95[1] = sub_26BF3A5F8;
    v96 = *(v1 + 136);

    return sub_26BF3C540(v96);
  }

  else
  {
    v14 = *(v0 + 136);
    v15 = *(v14 + 16);
    v137 = v15;
    v139 = v1;
    if (v15)
    {
      v18 = v1 + 176;
      v16 = *(v1 + 176);
      v17 = *(v18 + 8);
      v140[0] = MEMORY[0x277D84F90];
      sub_26BECB8F4(0, v15, 0);
      v19 = v140[0];
      v20 = v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v21 = *(v17 + 72);
      v22 = v15;
      do
      {
        v24 = v139[27];
        v23 = v139[28];
        sub_26BE2E1F0(v20, v23, &qword_28045FAC0, &qword_26C01F998);
        sub_26BE33F30(v23, v24, &qword_28045FAC0, &qword_26C01F998);
        v25 = *v24;
        sub_26BE2E258(v24 + *(v16 + 48), &qword_28045FAB0, &qword_26C01F960);
        v140[0] = v19;
        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          sub_26BECB8F4((v26 > 1), v27 + 1, 1);
          v19 = v140[0];
        }

        *(v19 + 16) = v28;
        *(v19 + 4 * v27 + 32) = v25;
        v20 += v21;
        --v22;
      }

      while (v22);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      v28 = *(MEMORY[0x277D84F90] + 16);
    }

    v44 = 32;
    while (v28)
    {
      v45 = *(v19 + v44);
      v44 += 4;
      --v28;
      if (v45 != 1)
      {

        sub_26BE01654();
        swift_allocError();
        *v46 = 44;
        v46[112] = 0;
        swift_willThrow();

        v47 = v139[1];

        return v47();
      }
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v49 = v139;
    v50 = sub_26C009A5C();
    __swift_project_value_buffer(v50, qword_280478EE8);
    swift_bridgeObjectRetain_n();

    v51 = sub_26C009A3C();
    v52 = sub_26C00AA1C();

    v53 = &unk_26C00D000;
    if (os_log_type_enabled(v51, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v140[0] = v55;
      *v54 = 136315394;

      v56 = sub_26BE3D034();
      v58 = v57;

      v59 = sub_26BE29740(v56, v58, v140);
      v49 = v139;

      *(v54 + 4) = v59;
      *(v54 + 12) = 2048;

      *(v54 + 14) = v137;

      _os_log_impl(&dword_26BDFE000, v51, v52, "%s: updateStorage for %ld updates using storage v1", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x26D69A4E0](v55, -1, -1);
      MEMORY[0x26D69A4E0](v54, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v60 = sub_26C009A3C();
    v61 = sub_26C00A9FC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v140[0] = v63;
      *v62 = 136315394;

      v64 = sub_26BE3D034();
      v66 = v65;

      v67 = sub_26BE29740(v64, v66, v140);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      v68 = v137;
      if (v137)
      {
        v69 = v49[26];
        v70 = v49[22];
        v71 = *(v49[23] + 80);
        sub_26BE2E1F0(v49[17] + ((v71 + 32) & ~v71), v69, &qword_28045FAC0, &qword_26C01F998);
        v72 = *v69;
        v73 = *(v69 + 1);
        v74 = *(v70 + 48);
        v68 = v137;
        v53 = &unk_26C00D000;
        sub_26BE2E258(v69 + v74, &qword_28045FAB0, &qword_26C01F960);
      }

      else
      {
        v72 = 0;
        v73 = 0;
      }

      v49[8] = v72;
      v49[9] = v73;
      *(v49 + 80) = v68 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC8, &qword_26C01F9A8);
      v97 = sub_26C00A4FC();
      v99 = sub_26BE29740(v97, v98, v140);

      *(v62 + 14) = v99;
      _os_log_impl(&dword_26BDFE000, v60, v61, "%s: first update: %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v63, -1, -1);
      MEMORY[0x26D69A4E0](v62, -1, -1);
    }

    else
    {

      v68 = v137;
    }

    v100 = sub_26C009A3C();
    v101 = sub_26C00A9FC();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v140[0] = v103;
      *v102 = v53[337];

      v104 = sub_26BE3D034();
      v105 = v68;
      v107 = v106;

      v108 = sub_26BE29740(v104, v107, v140);
      v68 = v105;

      *(v102 + 4) = v108;
      *(v102 + 12) = 2080;
      if (v105)
      {
        v109 = v49[25];
        v110 = v49[22];
        sub_26BE2E1F0(v49[17] + ((*(v49[23] + 80) + 32) & ~*(v49[23] + 80)) + *(v49[23] + 72) * (v105 - 1), v109, &qword_28045FAC0, &qword_26C01F998);
        v105 = *v109;
        v111 = *(v109 + 1);
        sub_26BE2E258(v109 + *(v110 + 48), &qword_28045FAB0, &qword_26C01F960);
      }

      else
      {
        v111 = 0;
      }

      v49[5] = v105;
      v49[6] = v111;
      *(v49 + 56) = v68 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC8, &qword_26C01F9A8);
      v112 = sub_26C00A4FC();
      v114 = sub_26BE29740(v112, v113, v140);

      *(v102 + 14) = v114;
      _os_log_impl(&dword_26BDFE000, v100, v101, "%s: last update: %s", v102, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v103, -1, -1);
      MEMORY[0x26D69A4E0](v102, -1, -1);
    }

    v115 = MEMORY[0x277D84F90];
    if (v68)
    {
      v116 = v139;
      v117 = v139[23];
      v134 = v139[22];
      v135 = v139[27];
      v132 = v139[19];
      v133 = v139[20];
      v118 = v139[17];
      v140[0] = MEMORY[0x277D84F90];
      sub_26BECB8D4(0, v68, 0);
      v115 = v140[0];
      v119 = v118 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
      v131 = *(v117 + 72);
      do
      {
        v138 = v68;
        v121 = v116[27];
        v120 = v116[28];
        v122 = v116[24];
        v123 = v116[21];
        sub_26BE2E1F0(v119, v120, &qword_28045FAC0, &qword_26C01F998);
        v136 = *(v132 + 48);
        sub_26BE2E1F0(v120, v121, &qword_28045FAC0, &qword_26C01F998);
        v124 = v115;
        v125 = *(v134 + 48);
        *v123 = *(v135 + 8);
        sub_26BE33F30(v120, v122, &qword_28045FAC0, &qword_26C01F998);
        sub_26BE33F30(v122 + *(v134 + 48), v123 + v136, &qword_28045FAB0, &qword_26C01F960);
        v126 = v121 + v125;
        v115 = v124;
        sub_26BE2E258(v126, &qword_28045FAB0, &qword_26C01F960);
        v140[0] = v124;
        v128 = *(v124 + 16);
        v127 = *(v124 + 24);
        if (v128 >= v127 >> 1)
        {
          sub_26BECB8D4((v127 > 1), v128 + 1, 1);
          v115 = v140[0];
        }

        v116 = v139;
        v129 = v139[21];
        *(v115 + 16) = v128 + 1;
        sub_26BE33F30(v129, v115 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v128, &qword_28045FAB8, &qword_26C01F990);
        v119 += v131;
        v68 = v138 - 1;
      }

      while (v138 != 1);
    }

    else
    {
      v116 = v139;
    }

    v116[32] = v115;
    v130 = swift_task_alloc();
    v116[33] = v130;
    *v130 = v116;
    v130[1] = sub_26BF3A7EC;

    return sub_26BF3AA6C(v115);
  }
}

uint64_t sub_26BF3A5F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BF3A7EC()
{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BF3A9A0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BF3A9A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3AA6C(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960);
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for MLS.GroupState(0);
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB8, &qword_26C01F990);
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF3ABCC, 0, 0);
}

void sub_26BF3ABCC()
{
  v54 = v0;
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[32];
    v45 = v0[29];
    v5 = v0[28];
    v50 = *(v0[30] + 48);
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v49 = v0[25];
    swift_beginAccess();
    v48 = *(v3 + 72);
    v7 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v44 = v4;
    while (1)
    {
      v10 = v0[32];
      v12 = v0[26];
      v11 = v0[27];
      sub_26BE2E1F0(v6, v10, &qword_28045FAB8, &qword_26C01F990);
      v13 = *v10;
      sub_26BE33F30(v4 + v50, v12, &qword_28045FAB0, &qword_26C01F960);
      if ((*(v5 + 48))(v12, 1, v11) == 1)
      {
        sub_26BE2E258(v0[26], &qword_28045FAB0, &qword_26C01F960);
        swift_beginAccess();
        sub_26BE2A900(1, v13, &v52);
        swift_endAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_26BEEC394(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_26BEEC394((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        *&v7[8 * v15 + 32] = v13;
        goto LABEL_5;
      }

      sub_26BF7F124(v0[26], v0[29], type metadata accessor for MLS.GroupState);
      if (v13 != *(v45 + 24))
      {
        v41 = v0[29];

        sub_26BE01654();
        swift_allocError();
        *v42 = 32;
        v42[112] = 0;
        swift_willThrow();
        sub_26BF7F05C(v41, type metadata accessor for MLS.GroupState);

        v43 = v0[1];

        v43();
        return;
      }

      v16 = sub_26BF32780(1, v13, *(v49 + 160));
      v17 = v0[29];
      if (!v16)
      {
        swift_beginAccess();
        sub_26BF75208(&v52, 1, v13);
        swift_endAccess();
        v52 = xmmword_26C00BBD0;
        v53 = 0;
        sub_26BEDD4A8(v17);
        v20 = v52;
        v21 = *(&v52 + 1) >> 62;
        if ((*(&v52 + 1) >> 62) > 1)
        {
          if (v21 != 2)
          {
LABEL_35:
            v24 = sub_26C00909C();
            v26 = v30;
            sub_26BE00258(v20, *(&v20 + 1));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_26BEEC498(0, *(v47 + 2) + 1, 1, v47);
            }

            v28 = *(v47 + 2);
            v31 = *(v47 + 3);
            v29 = v28 + 1;
            if (v28 >= v31 >> 1)
            {
              v47 = sub_26BEEC498((v31 > 1), v28 + 1, 1, v47);
            }

            sub_26BF7F05C(v0[29], type metadata accessor for MLS.GroupState);
            v8 = v47;
            goto LABEL_4;
          }

          v23 = *(v52 + 24);
        }

        else
        {
          if (!v21)
          {
            goto LABEL_35;
          }

          v23 = v52 >> 32;
        }

        if (v23 < 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          return;
        }

        goto LABEL_35;
      }

      v52 = xmmword_26C00BBD0;
      v53 = 0;
      sub_26BEDD4A8(v17);
      v18 = v52;
      v19 = *(&v52 + 1) >> 62;
      if ((*(&v52 + 1) >> 62) > 1)
      {
        if (v19 == 2)
        {
          v22 = *(v52 + 24);
          goto LABEL_25;
        }
      }

      else if (v19)
      {
        v22 = v52 >> 32;
LABEL_25:
        if (v22 < 0)
        {
          goto LABEL_46;
        }
      }

      v24 = sub_26C00909C();
      v26 = v25;
      sub_26BE00258(v18, *(&v18 + 1));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_26BEEC498(0, *(v46 + 2) + 1, 1, v46);
      }

      v28 = *(v46 + 2);
      v27 = *(v46 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v46 = sub_26BEEC498((v27 > 1), v28 + 1, 1, v46);
      }

      sub_26BF7F05C(v0[29], type metadata accessor for MLS.GroupState);
      v8 = v46;
LABEL_4:
      *(v8 + 2) = v29;
      v9 = &v8[24 * v28];
      *(v9 + 4) = v13;
      *(v9 + 5) = v24;
      *(v9 + 6) = v26;
      v4 = v44;
LABEL_5:
      v6 += v48;
      if (!--v2)
      {
        goto LABEL_40;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
LABEL_40:
  v32 = v0[25];
  v33 = v32[6];
  swift_beginAccess();
  sub_26BE038A8(v33 + 120, (v0 + 2));
  v34 = v0[5];
  v35 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
  v36 = v32[4];
  v0[33] = v36;
  v37 = v32[5];
  v0[34] = v37;
  sub_26BE00608(v36, v37);
  sub_26BF36E34();
  v0[7] = v38;
  v0[8] = v39;
  v0[9] = v47;
  v0[10] = v46;
  v0[11] = v7;
  v51 = (*(v35 + 24) + **(v35 + 24));
  v40 = swift_task_alloc();
  v0[35] = v40;
  *v40 = v0;
  v40[1] = sub_26BF3B354;

  v51(v36, v37, v0 + 7, v34, v35);
}

uint64_t sub_26BF3B354()
{
  v2 = *v1;
  v2[36] = v0;

  v3 = v2[7];
  v2 += 7;
  v5 = v2[26];
  v4 = v2[27];
  sub_26BE00258(v3, v2[1]);

  sub_26BE00258(v5, v4);
  if (v0)
  {
    v6 = sub_26BF3B540;
  }

  else
  {
    v6 = sub_26BF3B4B0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF3B4B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3B540()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3B5CC()
{
  v1[14] = v0;
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v2 = sub_26C00921C();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF3B6E0, 0, 0);
}

uint64_t sub_26BF3B6E0()
{
  v1 = v0[19];
  v2 = v0[14];
  swift_beginAccess();
  v3 = *(v2 + 160);
  v4 = *(v3 + 56);
  v43 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
  v49 = *(v2 + 160);

  v51 = v2;
  v48 = v8;
  result = swift_beginAccess();
  v10 = 0;
  v42 = (63 - v5) >> 6;
  v47 = (v1 + 56);
  v45 = (v1 + 32);
  v50 = (v1 + 48);
  v40 = MEMORY[0x277D84F90];
  v41 = v1;
  v46 = (v1 + 8);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_15:
  v15 = v50;
  while (1)
  {
    v20 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v42)
    {
      break;
    }

    v7 = *(v43 + 8 * v20);
    ++v10;
    if (v7)
    {
      v10 = v20;
      while (1)
      {
        v21 = (*(v49 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
        v22 = *v21;
        v23 = *(v21 + 1);
        v24 = *(v51 + v48);
        if (*(v24 + 16) && (v25 = sub_26BEBB598(v22, v23), (v26 & 1) != 0))
        {
          v27 = v0[21];
          v28 = v0[17];
          v29 = v0[18];
          (*(v41 + 16))(v28, *(v24 + 56) + *(v41 + 72) * v25, v29);
          (*(v41 + 56))(v28, 0, 1, v29);
          (*(v41 + 32))(v27, v28, v29);
        }

        else
        {
          v31 = v0[17];
          v30 = v0[18];
          (*v47)(v31, 1, 1, v30);
          sub_26C00917C();
          if ((*v15)(v31, 1, v30) != 1)
          {
            sub_26BE2E258(v0[17], &qword_28045E4A8, &unk_26C00ECB0);
          }
        }

        if (qword_28045DF48 != -1)
        {
          swift_once();
        }

        v32 = v0[18];
        v33 = v0[16];
        v34 = __swift_project_value_buffer(v0[15], qword_28045E4F0);
        swift_beginAccess();
        sub_26BE2E1F0(v34, v33, &qword_28045E4A8, &unk_26C00ECB0);
        v35 = *v15;
        v36 = (*v15)(v33, 1, v32);
        v37 = v0[18];
        v38 = v0[16];
        v44 = v23;
        if (v36 == 1)
        {
          sub_26C00920C();
          if (v35(v38, 1, v37) != 1)
          {
            sub_26BE2E258(v0[16], &qword_28045E4A8, &unk_26C00ECB0);
          }
        }

        else
        {
          (*v45)(v0[20], v38, v37);
        }

        v7 &= v7 - 1;
        v11 = v0[20];
        v12 = v0[21];
        v13 = v0[18];
        sub_26C00918C();
        v14 = *v46;
        (*v46)(v11, v13);
        sub_26C00B15C();
        swift_beginAccess();
        LOBYTE(v11) = sub_26C00B14C();
        result = v14(v12, v13);
        if (v11)
        {
          v16 = v40;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_26BECB9B4(0, *(v40 + 16) + 1, 1);
            v16 = v40;
          }

          v18 = *(v16 + 16);
          v17 = *(v16 + 24);
          if (v18 >= v17 >> 1)
          {
            result = sub_26BECB9B4((v17 > 1), v18 + 1, 1);
            v16 = v40;
          }

          *(v16 + 16) = v18 + 1;
          v40 = v16;
          v19 = v16 + 16 * v18;
          *(v19 + 32) = v22;
          *(v19 + 40) = v44;
          if (!v7)
          {
            goto LABEL_15;
          }
        }

        else if (!v7)
        {
          goto LABEL_15;
        }

LABEL_9:
        v15 = v50;
      }
    }
  }

  v39 = v0[1];

  return v39(v40);
}

uint64_t sub_26BF3BBF0()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_26BF3BCE8;

  return sub_26BF3B5CC();
}

uint64_t sub_26BF3BCE8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BF3BE3C, 0, 0);
  }
}

uint64_t sub_26BF3BE3C()
{
  v48 = v0;
  if (qword_28045DF80 != -1)
  {
LABEL_22:
    swift_once();
  }

  v43 = v0;
  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v2 = v0;
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 136315394;

    v9 = sub_26BE3D034();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, &v47);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    v13 = *(v6 + 16);

    *(v7 + 14) = v13;
    v2 = v0;

    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: cleanUpExpiredEpochs found %ld expired epochs", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v14 = *(v2 + 80);
  v15 = *(v0 + 40);
  v16 = *(v14 + 16);
  *(v0 + 88) = v16;
  swift_beginAccess();
  v17 = *(v15 + 160);
  v18 = v0;
  v19 = *(v17 + 16);
  *(v0 + 96) = v19;
  if (v16 != v19)
  {
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_18:

    v41 = v18[1];
    v42 = v18[11] == v18[12];

    return v41(v42);
  }

  v20 = sub_26C009A3C();
  v21 = sub_26C00AA1C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136315138;

    v24 = sub_26BE3D034();
    v26 = v25;

    v27 = sub_26BE29740(v24, v26, &v47);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_26BDFE000, v20, v21, "%s: cleanUpExpiredEpochs found all epochs expired, indicating that group should be deleted", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x26D69A4E0](v23, -1, -1);
    MEMORY[0x26D69A4E0](v22, -1, -1);
  }

  v18 = v0;
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_9:
  v0 = v18[10];
  v28 = v18[7];
  v45 = v18[6];
  v46 = v18[8];
  v47 = MEMORY[0x277D84F90];
  sub_26BECB9D4(0, v16, 0);
  v29 = v43;
  v30 = v47;
  v44 = type metadata accessor for MLS.GroupState(0);
  v31 = *(*(v44 - 8) + 56);
  v32 = (v0 + 40);
  v33 = 0x8000000000000000;
  do
  {
    if (!v33)
    {
      __break(1u);
      goto LABEL_22;
    }

    v34 = v29[8];
    v35 = *v32;
    v36 = *(v45 + 48);
    *v34 = *(v32 - 2);
    *(v46 + 8) = v35;
    v31(&v34[v36], 1, 1, v44);
    v47 = v30;
    v0 = *(v30 + 16);
    v37 = *(v30 + 24);
    if (v0 >= v37 >> 1)
    {
      sub_26BECB9D4((v37 > 1), v0 + 1, 1);
      v29 = v43;
      v30 = v47;
    }

    v29[13] = v30;
    v38 = v29[8];
    *(v30 + 16) = v0 + 1;
    sub_26BE33F30(v38, v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v0, &qword_28045FAC0, &qword_26C01F998);
    v32 += 2;
    --v33;
    --v16;
  }

  while (v16);

  v39 = swift_task_alloc();
  v29[14] = v39;
  *v39 = v29;
  v39[1] = sub_26BF3C378;

  return sub_26BF3C540(v30);
}

uint64_t sub_26BF3C378()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BF3C4D0, 0, 0);
  }

  else
  {

    v3 = v2[1];
    v4 = v2[11] == v2[12];

    return v3(v4);
  }
}

uint64_t sub_26BF3C4D0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26BF3C540(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960);
  v2[33] = swift_task_alloc();
  v3 = type metadata accessor for MLS.GroupState(0);
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF3C6A0, 0, 0);
}

void sub_26BF3C6A0()
{
  v64 = v0;
  v1 = *(*(v0 + 256) + 48);
  swift_beginAccess();
  sub_26BE2E1F0(v1 + 160, v0 + 112, &qword_28045FA20, &qword_26C029070);
  if (!*(v0 + 136))
  {
    sub_26BE2E258(v0 + 112, &qword_28045FA20, &qword_26C029070);
    sub_26BE01654();
    swift_allocError();
    *v39 = 0xD000000000000029;
    *(v39 + 8) = 0x800000026C02CFB0;
    *(v39 + 112) = 2;
    swift_willThrow();
    goto LABEL_45;
  }

  v2 = *(v0 + 248);
  sub_26BE03890((v0 + 112), v0 + 72);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
    v54 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
LABEL_40:
    v40 = *(v0 + 256);
    v41 = *(v0 + 96);
    v42 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v41);
    v43 = *(v40 + 32);
    v44 = *(v40 + 40);
    sub_26BE00608(v43, v44);
    sub_26BF36E34();
    *(v0 + 16) = v43;
    *(v0 + 24) = v44;
    *(v0 + 32) = v47;
    *(v0 + 40) = v48;
    *(v0 + 48) = v55;
    *(v0 + 56) = v54;
    *(v0 + 64) = v7;
    v62 = (*(v42 + 24) + **(v42 + 24));
    v49 = swift_task_alloc();
    *(v0 + 320) = v49;
    *v49 = v0;
    v49[1] = sub_26BF3CE88;

    v62(v0 + 16, v41, v42);
    return;
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v52 = *(v0 + 288);
  v53 = *(v0 + 272);
  v60 = *(*(v0 + 296) + 48);
  v61 = *(v0 + 312);
  v59 = *(v0 + 248) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v56 = *(v0 + 256);
  swift_beginAccess();
  v6 = 0;
  v58 = *(v4 + 72);
  v7 = MEMORY[0x277D84F90];
  v57 = (v5 + 48);
  v54 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v51 = v3;
  while (1)
  {
    v11 = *(v0 + 312);
    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    sub_26BE2E1F0(v59 + v6 * v58, v11, &qword_28045FAC0, &qword_26C01F998);
    v14 = *v11;
    v15 = *(v61 + 8);
    sub_26BE33F30(v61 + v60, v13, &qword_28045FAB0, &qword_26C01F960);
    if ((*v57)(v13, 1, v12) != 1)
    {
      break;
    }

    sub_26BE2E258(*(v0 + 264), &qword_28045FAB0, &qword_26C01F960);
    swift_beginAccess();
    sub_26BE2A900(v14, v15, v63);
    swift_endAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_26BEEC178(0, *(v7 + 2) + 1, 1, v7);
    }

    v17 = *(v7 + 2);
    v16 = *(v7 + 3);
    if (v17 >= v16 >> 1)
    {
      v7 = sub_26BEEC178((v16 > 1), v17 + 1, 1, v7);
    }

    *(v7 + 2) = v17 + 1;
    v18 = &v7[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v15;
LABEL_6:
    if (++v6 == v3)
    {
      goto LABEL_40;
    }
  }

  v19 = *(v0 + 288);
  sub_26BF7F124(*(v0 + 264), v19, type metadata accessor for MLS.GroupState);
  v20 = *(v19 + *(v53 + 40));
  v21 = (v20 + 32);
  v22 = *(v20 + 16) + 1;
  while (--v22)
  {
    v23 = v21 + 12;
    v24 = *v21;
    v21 += 12;
    if (v24 == -4095)
    {
      *v63 = -4095;
      *&v63[8] = *(v23 - 1);
      v25 = sub_26BE34C94(v63);
      goto LABEL_18;
    }
  }

  v25 = sub_26BE4126C();
LABEL_18:
  if (v14 == v25 && v15 == *(v52 + 24))
  {
    v26 = *(v0 + 288);
    *v63 = xmmword_26C00BBD0;
    *&v63[16] = 0;
    sub_26BEDD4A8(v26);
    v27 = *v63;
    v28 = *&v63[8];
    v29 = *&v63[8] >> 62;
    if ((*&v63[8] >> 62) > 1)
    {
      if (v29 != 2)
      {
LABEL_28:
        v31 = sub_26C00909C();
        v33 = v32;
        sub_26BE00258(v27, v28);
        if (sub_26BF32780(v14, v15, *(v56 + 160)))
        {
          sub_26BE00608(v31, v33);
          v34 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_26BEEC288(0, *(v54 + 2) + 1, 1, v54);
          }

          v36 = *(v54 + 2);
          v35 = *(v54 + 3);
          v37 = v36 + 1;
          if (v36 >= v35 >> 1)
          {
            v54 = sub_26BEEC288((v35 > 1), v36 + 1, 1, v54);
          }

          v8 = *(v0 + 288);
          sub_26BE00258(v31, v33);
          v9 = v54;
        }

        else
        {
          swift_beginAccess();
          sub_26BF75208(v63, v14, v15);
          swift_endAccess();
          sub_26BE00608(v31, v33);
          v34 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_26BEEC288(0, *(v55 + 2) + 1, 1, v55);
          }

          v36 = *(v55 + 2);
          v38 = *(v55 + 3);
          v37 = v36 + 1;
          if (v36 >= v38 >> 1)
          {
            v55 = sub_26BEEC288((v38 > 1), v36 + 1, 1, v55);
          }

          v8 = *(v0 + 288);
          sub_26BE00258(v31, v33);
          v9 = v55;
        }

        *(v9 + 2) = v37;
        v10 = &v9[32 * v36];
        *(v10 + 4) = v14;
        *(v10 + 5) = v15;
        *(v10 + 6) = v31;
        *(v10 + 7) = v33;
        sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState);
        v7 = v34;
        v3 = v51;
        goto LABEL_6;
      }

      v30 = *(*v63 + 24);
    }

    else
    {
      if (!v29)
      {
        goto LABEL_28;
      }

      v30 = *v63 >> 32;
    }

    if (v30 < 0)
    {
      __break(1u);
      return;
    }

    goto LABEL_28;
  }

  v45 = *(v0 + 288);

  sub_26BE01654();
  swift_allocError();
  *v46 = 32;
  v46[112] = 0;
  swift_willThrow();
  sub_26BF7F05C(v45, type metadata accessor for MLS.GroupState);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
LABEL_45:

  v50 = *(v0 + 8);

  v50();
}

uint64_t sub_26BF3CE88()
{
  v2 = *v1;
  v2[41] = v0;

  v3 = v2[2];
  v4 = v2[3];
  v2 += 2;
  v5 = v2[2];
  v6 = v2[3];
  sub_26BE00258(v3, v4);
  sub_26BE132D4(v5, v6);

  if (v0)
  {
    v7 = sub_26BF3D074;
  }

  else
  {
    v7 = sub_26BF3CFE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF3CFE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3D074()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3D120()
{
  v51 = v0;
  v1 = *(*(v0 + 352) + 48);
  swift_beginAccess();
  if (*(v1 + 312) == 1)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v2 = sub_26C009A5C();
    __swift_project_value_buffer(v2, qword_280478EE8);
    swift_retain_n();
    v3 = sub_26C009A3C();
    v4 = sub_26C00AA1C();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 352);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v50[0] = v8;
      *v7 = 136315394;

      v9 = sub_26BE3D034();
      v11 = v10;

      v12 = sub_26BE29740(v9, v11, v50);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2048;
      swift_beginAccess();
      v13 = *(*(v6 + 160) + 16);

      *(v7 + 14) = v13;

      _os_log_impl(&dword_26BDFE000, v3, v4, "%s: deleteGroupFromStorage for %ld epochs using storage v2", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69A4E0](v8, -1, -1);
      MEMORY[0x26D69A4E0](v7, -1, -1);
    }

    else
    {
    }

    sub_26BE2E1F0(v1 + 160, v0 + 192, &qword_28045FA20, &qword_26C029070);
    if (*(v0 + 216))
    {
      v26 = *(v0 + 352);
      sub_26BE03890((v0 + 192), v0 + 152);
      v27 = *(v0 + 176);
      v28 = *(v0 + 184);
      __swift_project_boxed_opaque_existential_1((v0 + 152), v27);
      v29 = *(v26 + 32);
      v30 = *(v26 + 40);
      swift_beginAccess();
      sub_26BE00608(v29, v30);

      v32 = sub_26BF321B0(v31);

      *(v0 + 16) = v29;
      *(v0 + 24) = v30;
      *(v0 + 32) = xmmword_26C00DA60;
      v33 = MEMORY[0x277D84F90];
      *(v0 + 48) = MEMORY[0x277D84F90];
      *(v0 + 56) = v33;
      *(v0 + 64) = v32;
      v48 = (*(v28 + 24) + **(v28 + 24));
      v34 = swift_task_alloc();
      *(v0 + 360) = v34;
      *v34 = v0;
      v34[1] = sub_26BF3D8BC;

      return v48(v0 + 16, v27, v28);
    }

    else
    {
      sub_26BE2E258(v0 + 192, &qword_28045FA20, &qword_26C029070);
      sub_26BE01654();
      swift_allocError();
      *v43 = 0xD000000000000029;
      *(v43 + 8) = 0x800000026C02CFB0;
      *(v43 + 112) = 2;
      swift_willThrow();
      v44 = *(v0 + 8);

      return v44();
    }
  }

  else
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v14 = sub_26C009A5C();
    __swift_project_value_buffer(v14, qword_280478EE8);
    swift_retain_n();
    v15 = sub_26C009A3C();
    v16 = sub_26C00AA1C();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 352);
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50[0] = v20;
      *v19 = 136315394;

      v21 = sub_26BE3D034();
      v23 = v22;

      v24 = sub_26BE29740(v21, v23, v50);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2048;
      swift_beginAccess();
      v25 = *(*(v18 + 160) + 16);

      *(v19 + 14) = v25;

      _os_log_impl(&dword_26BDFE000, v15, v16, "%s: deleteGroupFromStorage for %ld epochs using storage v1", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26D69A4E0](v20, -1, -1);
      MEMORY[0x26D69A4E0](v19, -1, -1);
    }

    else
    {
    }

    v36 = *(v0 + 352);
    sub_26BE038A8(v1 + 120, v0 + 72);
    v37 = *(v0 + 96);
    v38 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v37);
    v39 = *(v36 + 32);
    *(v0 + 376) = v39;
    v40 = *(v36 + 40);
    *(v0 + 384) = v40;
    swift_beginAccess();
    sub_26BE00608(v39, v40);

    v42 = sub_26BF323DC(v41);

    v50[0] = v42;

    sub_26BF7469C(v50);

    *(v0 + 112) = xmmword_26C00BBD0;
    v45 = v50[0];
    v46 = MEMORY[0x277D84F90];
    *(v0 + 128) = MEMORY[0x277D84F90];
    *(v0 + 136) = v46;
    *(v0 + 144) = v45;
    v49 = (*(v38 + 24) + **(v38 + 24));
    v47 = swift_task_alloc();
    *(v0 + 392) = v47;
    *v47 = v0;
    v47[1] = sub_26BF3DA7C;

    return v49(v39, v40, v0 + 112, v37, v38);
  }
}

uint64_t sub_26BF3D8BC()
{
  v2 = *v1;
  v2[46] = v0;

  v3 = v2[2];
  v4 = v2[3];
  v2 += 2;
  v5 = v2[2];
  v6 = v2[3];
  sub_26BE00258(v3, v4);
  sub_26BE132D4(v5, v6);

  if (v0)
  {
    v7 = sub_26BF3DC3C;
  }

  else
  {
    v7 = sub_26BF3DA18;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF3DA18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3DA7C()
{
  v2 = *v1;
  v2[50] = v0;

  v3 = v2[14];
  v2 += 14;
  v5 = v2[33];
  v4 = v2[34];
  sub_26BE00258(v3, v2[1]);

  sub_26BE00258(v5, v4);
  if (v0)
  {
    v6 = sub_26BF3DCA0;
  }

  else
  {
    v6 = sub_26BF3DBD8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF3DBD8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3DC3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3DCA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3DD04(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a1;
  v6 = type metadata accessor for MLS.GroupState(0);
  *(v4 + 184) = v6;
  *(v4 + 192) = *(v6 - 8);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F090, &qword_26C01A358);
  *(v4 + 224) = swift_task_alloc();
  v7 = type metadata accessor for MLS.GroupInfo(0);
  *(v4 + 232) = v7;
  *(v4 + 240) = *(v7 - 8);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = *a2;

  return MEMORY[0x2822009F8](sub_26BF3DE80, 0, 0);
}

uint64_t sub_26BF3DE80()
{
  v53 = v0;
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  *(v1 + 160) = MEMORY[0x277D84FA0];
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  v6 = type metadata accessor for FileInfoAndSender(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v1 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, 1, 1, v6);
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch;
  v9 = MEMORY[0x277D84F90];
  *(v1 + v8) = sub_26C0047C0(MEMORY[0x277D84F90]);
  v10 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  *(v1 + v10) = sub_26C0047C0(v9);
  v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
  *(v1 + v11) = sub_26C0048D4(v9);
  if (*v2 - 3 < 0xFFFFFFFE)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v13 = *(v2 + 1);
  v12 = *(v2 + 2);
  v15 = *(v0 + 256);
  v14 = *(v0 + 264);
  sub_26BE00608(v13, v12);
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v48[0] = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v52[0] = v15;
  v52[1] = v14;

  v17 = sub_26BE3EFC0(v16, v13, v12, v48, v52);
  *(v0 + 272) = v17;
  v18 = v17;
  v19 = *(v0 + 184);
  v20 = *(v0 + 168);
  v21 = *(v20 + 24);
  *(v0 + 280) = v21;
  *(v17 + 24) = v21;
  v22 = *(v20 + *(v19 + 40));
  *(v0 + 288) = v22;

  v23 = sub_26BE81FE0(v22);
  if ((v23 & 0x100000000) != 0)
  {
    LODWORD(v23) = sub_26BE4126C();
  }

  *(v18 + 152) = v23;
  v24 = *(v2 + 1);
  v25 = *(v2 + 2);
  v26 = *(v18 + 32);
  v27 = *(v18 + 40);
  *(v18 + 32) = v24;
  *(v18 + 40) = v25;
  sub_26BE00608(v24, v25);
  sub_26BE00258(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E570, &unk_26C0245A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C011280;
  v29 = sub_26BE81FE0(v22);
  if ((v29 & 0x100000000) != 0)
  {
    LODWORD(v29) = sub_26BE4126C();
  }

  v30 = *(v0 + 232);
  v31 = *(v0 + 240);
  v32 = *(v0 + 224);
  v33 = *(v0 + 184);
  v34 = *(v0 + 168);
  *(inited + 32) = v29;
  *(inited + 40) = v21;
  v35 = sub_26BEC7E78(inited);
  swift_setDeallocating();
  swift_beginAccess();
  *(v18 + 160) = v35;

  sub_26BE038A8(v34 + *(v33 + 56), v0 + 64);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v18 + 112));
  sub_26BE03890((v0 + 64), v18 + 112);
  swift_endAccess();

  sub_26BE2E1F0(v34 + *(v33 + 80), v32, &qword_28045F090, &qword_26C01A358);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    sub_26BE2E258(*(v0 + 224), &qword_28045F090, &qword_26C01A358);
    goto LABEL_12;
  }

  sub_26BF7F124(*(v0 + 224), *(v0 + 248), type metadata accessor for MLS.GroupInfo);
  if (qword_28045DF80 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v36 = sub_26C009A5C();
  __swift_project_value_buffer(v36, qword_280478EE8);
  v37 = sub_26C009A3C();
  v38 = sub_26C00AA1C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_26BDFE000, v37, v38, "Using joiningGroupInfo", v39, 2u);
    MEMORY[0x26D69A4E0](v39, -1, -1);
  }

  v40 = *(v0 + 248);

  sub_26BF582A8(v40);
  sub_26BF7F05C(*(v0 + 248), type metadata accessor for MLS.GroupInfo);
LABEL_12:
  v41 = swift_task_alloc();
  *(v0 + 296) = v41;
  *v41 = v0;
  v41[1] = sub_26BF3E474;
  v42 = *(v0 + 168);

  return sub_26BF40784(v42);
}

uint64_t sub_26BF3E474()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_26BF3EC40;
  }

  else
  {
    v2 = sub_26BF3E588;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF3E588()
{
  v40 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 168);
  v5 = sub_26C009A5C();
  __swift_project_value_buffer(v5, qword_280478EE8);
  sub_26BF7F0BC(v4, v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F0BC(v4, v1, type metadata accessor for MLS.GroupState);
  sub_26BF7F0BC(v4, v3, type metadata accessor for MLS.GroupState);
  v6 = sub_26C009A3C();
  v7 = sub_26C00AA1C();
  if (!os_log_type_enabled(v6, v7))
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_26BF7F05C(*(v0 + 208), type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v13, type metadata accessor for MLS.GroupState);

    sub_26BF7F05C(v14, type metadata accessor for MLS.GroupState);
    v15 = *(v0 + 304);
    goto LABEL_10;
  }

  v8 = *(v0 + 304);
  v9 = *(v0 + 216);
  v10 = *(v0 + 184);
  v11 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v39 = v38;
  *v11 = 67109634;
  v12 = sub_26BE81FE0(*(v9 + *(v10 + 40)));
  if (v8)
  {

LABEL_8:
    v16 = sub_26BE4126C();
    goto LABEL_9;
  }

  v16 = v12;
  if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = *(v0 + 208);
  v18 = *(v0 + 200);
  sub_26BF7F05C(*(v0 + 216), type metadata accessor for MLS.GroupState);
  *(v11 + 4) = v16;
  *(v11 + 8) = 2048;
  v19 = *(v17 + 24);
  sub_26BF7F05C(v17, type metadata accessor for MLS.GroupState);
  *(v11 + 10) = v19;
  *(v11 + 18) = 2080;
  v15 = 0;
  *(v0 + 152) = sub_26BF87240(*(v18 + 8), *(v18 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v20 = sub_26C00A3EC();
  v22 = v21;

  sub_26BF7F05C(v18, type metadata accessor for MLS.GroupState);
  v23 = sub_26BE29740(v20, v22, &v39);

  *(v11 + 20) = v23;
  _os_log_impl(&dword_26BDFE000, v6, v7, "Joining group with era %u, epoch %lld, groupID %s", v11, 0x1Cu);
  __swift_destroy_boxed_opaque_existential_1(v38);
  MEMORY[0x26D69A4E0](v38, -1, -1);
  MEMORY[0x26D69A4E0](v11, -1, -1);

LABEL_10:
  v24 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 312) = v25;
  v26 = *(*(v25 - 8) + 80);
  *(v0 + 344) = v26;
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  *(v0 + 320) = v28;
  *(v28 + 16) = xmmword_26C011280;
  v29 = sub_26BE81FE0(v24);
  if (v15)
  {
  }

  else if ((v29 & 0x100000000) == 0)
  {
    goto LABEL_14;
  }

  LODWORD(v29) = sub_26BE4126C();
LABEL_14:
  v30 = v28 + v27;
  v31 = *(v0 + 280);
  v32 = *(v0 + 184);
  v33 = *(v0 + 192);
  v34 = *(v0 + 168);
  v35 = *(v25 + 48);
  *v30 = v29;
  *(v30 + 8) = v31;
  sub_26BF7F0BC(v34, v28 + v27 + v35, type metadata accessor for MLS.GroupState);
  (*(v33 + 56))(v28 + v27 + v35, 0, 1, v32);
  v36 = swift_task_alloc();
  *(v0 + 328) = v36;
  *v36 = v0;
  v36[1] = sub_26BF3E9F8;

  return sub_26BF394D4(v28);
}

uint64_t sub_26BF3E9F8()
{
  *(*v1 + 336) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF3ED0C;
  }

  else
  {
    v2 = sub_26BF3EB78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF3EB78()
{
  v1 = v0[21];

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v2 = v0[1];
  v3 = v0[34];

  return v2(v3);
}

uint64_t sub_26BF3EC40()
{
  v1 = *(v0 + 168);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BF3ED0C()
{
  v1 = *(v0 + 168);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BF3EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  *(v7 + 2336) = v6;
  *(v7 + 2328) = a6;
  *(v7 + 2320) = a3;
  *(v7 + 2312) = a2;
  *(v7 + 2304) = a1;
  v10 = type metadata accessor for MLS.GroupState(0);
  *(v7 + 2344) = v10;
  *(v7 + 2352) = *(v10 - 8);
  *(v7 + 2360) = swift_task_alloc();
  *(v7 + 2368) = swift_task_alloc();
  *(v7 + 2376) = swift_task_alloc();
  *(v7 + 2384) = swift_task_alloc();
  *(v7 + 2392) = swift_task_alloc();
  *(v7 + 2400) = swift_task_alloc();
  *(v7 + 2292) = *a4;
  *(v7 + 2408) = *(a4 + 8);
  v11 = *(a4 + 32);
  *(v7 + 2424) = *(a4 + 24);
  *(v7 + 2432) = v11;
  *(v7 + 2440) = *a5;

  return MEMORY[0x2822009F8](sub_26BF3EF1C, 0, 0);
}

uint64_t sub_26BF3EF1C()
{
  v106 = v0;
  v1 = *(v0 + 2448);
  v2 = *(v0 + 2440);
  v3 = *(v0 + 2432);
  v93 = *(v0 + 2424);
  v91 = *(v0 + 2408);
  v99 = *(v0 + 2292);
  v4 = *(v0 + 2336);
  v97 = *(v0 + 2320);
  v95 = *(v0 + 2312);
  v5 = *(v0 + 2304);
  *(v4 + 160) = MEMORY[0x277D84FA0];
  v6 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  v9 = type metadata accessor for FileInfoAndSender(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v4 + v8, 1, 1, v9);
  v10(v4 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, 1, 1, v9);
  v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch;
  v12 = MEMORY[0x277D84F90];
  *(v4 + v11) = sub_26C0047C0(MEMORY[0x277D84F90]);
  v13 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  *(v4 + v13) = sub_26C0047C0(v12);
  v14 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
  *(v4 + v14) = sub_26C0048D4(v12);
  LOBYTE(v102) = v99;
  v103 = v91;
  v104 = v93;
  v105 = v3;
  *&v101 = v2;
  *(&v101 + 1) = v1;

  sub_26BE00608(v95, v97);

  sub_26BE04890(v2, v1);
  v15 = sub_26BE3EFC0(v5, v95, v97, &v102, &v101);
  *(v0 + 2456) = v15;
  v16 = *(v0 + 2448);
  v98 = v15;
  v102 = *(v0 + 2440);
  *&v103 = v16;
  v17 = MLS.Identity.Credential.serializedRepresentation.getter();
  v19 = v18;
  sub_26BE0489C(*(v0 + 2440), *(v0 + 2448));
  MLS.Credential.init(rawValue:)(v17, v19, &v101);
  v20 = *(v0 + 2320);
  v21 = *(v0 + 2312);
  v22 = *(v0 + 2304);
  LODWORD(v93) = *(v0 + 2292);
  v23 = *(&v101 + 1);
  v96 = v101;
  *(v0 + 2464) = v101;
  *(v0 + 2472) = v23;
  v24 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v22 + v24, v0 + 2080);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v98 + 112));
  sub_26BE03890((v0 + 2080), v98 + 112);
  swift_endAccess();
  sub_26BE00608(v21, v20);

  if (v93)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  sub_26BE038A8(v22 + v24, v0 + 1880);
  v26 = *(v98 + 48);
  LOBYTE(v101) = v99;
  sub_26BE04890(v96, v23);

  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  swift_beginAccess();
  sub_26BE295A0((v26 + 5), v0 + 16);

  sub_26BE1118C((v0 + 1960));
  v79 = v25;
  sub_26BE29710(v0 + 16);

  sub_26BE03890((v0 + 1960), v0 + 1920);
  sub_26BE038A8(v0 + 1920, v0 + 2000);
  sub_26BE038A8(v0 + 1880, v0 + 2040);
  v90 = v26[42];
  v92 = v26[43];
  v94 = v26[44];
  v100 = v26[45];
  v89 = v26[46];
  v27 = *(v0 + 2024);
  v28 = *(v0 + 2032);
  __swift_project_boxed_opaque_existential_1((v0 + 2000), v27);
  v29 = *(v28 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = v26;
  v83 = *(AssociatedTypeWitness - 8);
  v31 = swift_task_alloc();
  v86 = *(v29 + 32);

  v86(v27, v29);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v88 = v33;
  (*(v83 + 8))(v31, AssociatedTypeWitness);
  v34 = *(v0 + 2064);
  v35 = *(v0 + 2072);
  __swift_project_boxed_opaque_existential_1((v0 + 2040), v34);
  v36 = swift_getAssociatedTypeWitness();
  v37 = *(v36 - 8);
  v38 = swift_task_alloc();
  (*(v35 + 40))(v34, v35);
  v39 = swift_getAssociatedConformanceWitness();
  v40 = (*(*(v39 + 8) + 16))(v36);
  v42 = v41;
  (*(v37 + 8))(v38, v36);

  *(v0 + 520) = v87;
  *(v0 + 528) = v88;
  v84 = v40;
  v85 = v42;
  *(v0 + 536) = v40;
  *(v0 + 544) = v42;
  *(v0 + 552) = v96;
  *(v0 + 560) = v23;
  *(v0 + 568) = v90;
  *(v0 + 576) = v92;
  *(v0 + 584) = v94;
  *(v0 + 592) = v100;
  *(v0 + 600) = v89;
  *(v0 + 608) = xmmword_26C015F70;
  *(v0 + 624) = 0;
  *(v0 + 628) = *(v0 + 374);
  *(v0 + 625) = *(v0 + 371);
  *(v0 + 632) = v12;
  *(v0 + 640) = xmmword_26C00BBD0;
  v43 = *(v0 + 568);
  *(v0 + 824) = *(v0 + 552);
  *(v0 + 840) = v43;
  v44 = *(v0 + 536);
  *(v0 + 792) = *(v0 + 520);
  *(v0 + 808) = v44;
  v45 = *(v0 + 584);
  v46 = *(v0 + 600);
  v47 = *(v0 + 616);
  v48 = *(v0 + 632);
  *(v0 + 920) = *(v0 + 648);
  *(v0 + 888) = v47;
  *(v0 + 904) = v48;
  *(v0 + 856) = v45;
  *(v0 + 872) = v46;
  *(v0 + 2272) = xmmword_26C00DA60;
  *(v0 + 2288) = 0;
  sub_26BE00758(v0 + 520, v0 + 928);
  v49 = sub_26BE5B600(v0 + 2272);
  v51 = v50;
  v52 = *(v0 + 904);
  *(v0 + 1432) = *(v0 + 888);
  *(v0 + 1448) = v52;
  *(v0 + 1464) = *(v0 + 920);
  v53 = *(v0 + 840);
  *(v0 + 1368) = *(v0 + 824);
  *(v0 + 1384) = v53;
  v54 = *(v0 + 872);
  *(v0 + 1400) = *(v0 + 856);
  *(v0 + 1416) = v54;
  v55 = *(v0 + 808);
  *(v0 + 1336) = *(v0 + 792);
  *(v0 + 1352) = v55;
  sub_26BE00854(v0 + 1336);
  v56 = *(v0 + 2064);
  v57 = *(v0 + 2072);
  __swift_project_boxed_opaque_existential_1((v0 + 2040), v56);
  v58 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v49, v51, v56, v57);
  v77 = *(v0 + 2384);
  v78 = *(v0 + 2328);
  v75 = *(v0 + 2312);
  v76 = *(v0 + 2320);
  v81 = v58;
  v60 = v59;
  sub_26BE00258(v49, v51);
  sub_26BE00258(0, 0xC000000000000000);
  *(v0 + 378) = v79;
  sub_26BE038A8(v0 + 2000, v0 + 2120);
  sub_26BE038A8(v0 + 2040, v0 + 2160);
  *(v0 + 1472) = v87;
  *(v0 + 1480) = v88;
  *(v0 + 1488) = v84;
  *(v0 + 1496) = v85;
  *(v0 + 1504) = v96;
  *(v0 + 1512) = v23;
  *(v0 + 1520) = v90;
  *(v0 + 1528) = v92;
  *(v0 + 1536) = v94;
  *(v0 + 1544) = v100;
  *(v0 + 1552) = v89;
  *(v0 + 1560) = 0;
  *(v0 + 1568) = -1;
  *(v0 + 1576) = 0;
  *(v0 + 1577) = *(v0 + 371);
  *(v0 + 1580) = *(v0 + 374);
  *(v0 + 1584) = v12;
  *(v0 + 1592) = v81;
  v80 = v60;
  *(v0 + 1600) = v60;
  v61 = *(v0 + 1520);
  *(v0 + 1776) = *(v0 + 1504);
  *(v0 + 1792) = v61;
  v62 = *(v0 + 1488);
  *(v0 + 1744) = *(v0 + 1472);
  *(v0 + 1760) = v62;
  v63 = *(v0 + 1536);
  v64 = *(v0 + 1552);
  v65 = *(v0 + 1568);
  v66 = *(v0 + 1584);
  *(v0 + 1872) = *(v0 + 1600);
  *(v0 + 1840) = v65;
  *(v0 + 1856) = v66;
  *(v0 + 1808) = v63;
  *(v0 + 1824) = v64;
  sub_26BE00758(v0 + 1472, v0 + 384);
  sub_26BFEF948(v75, v76, (v0 + 378), (v0 + 2120), (v0 + 2160), v0 + 1744, v78, v77);
  v67 = *(v0 + 2400);
  v68 = *(v0 + 2392);
  v69 = *(v0 + 2384);
  v70 = *(v0 + 2344);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1880));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1920));
  *(v0 + 656) = v87;
  *(v0 + 664) = v88;
  *(v0 + 672) = v84;
  *(v0 + 680) = v85;
  *(v0 + 688) = v96;
  *(v0 + 696) = v23;
  *(v0 + 704) = v90;
  *(v0 + 712) = v92;
  *(v0 + 720) = v94;
  *(v0 + 728) = v100;
  *(v0 + 736) = v89;
  *(v0 + 744) = 0;
  *(v0 + 752) = -1;
  *(v0 + 760) = 0;
  *(v0 + 761) = *(v0 + 371);
  *(v0 + 764) = *(v0 + 374);
  *(v0 + 768) = v12;
  *(v0 + 776) = v81;
  *(v0 + 784) = v80;
  sub_26BE00854(v0 + 656);
  sub_26BF7F124(v69, v68, type metadata accessor for MLS.GroupState);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2040));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2000));
  sub_26BF7F124(v68, v67, type metadata accessor for MLS.GroupState);
  v71 = *(v70 + 76);

  *(v67 + v71) = v82;
  v72 = swift_task_alloc();
  *(v0 + 2480) = v72;
  *v72 = v0;
  v72[1] = sub_26BF3FD48;
  v73 = *(v0 + 2400);

  return sub_26BF40784(v73);
}

uint64_t sub_26BF3FD48()
{
  *(*v1 + 2488) = v0;

  if (v0)
  {
    v2 = sub_26BF40574;
  }

  else
  {
    v2 = sub_26BF3FE5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF3FE5C()
{
  v41 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2400);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v4 = *(v0 + 2360);
  v5 = sub_26C009A5C();
  __swift_project_value_buffer(v5, qword_280478EE8);
  sub_26BF7F0BC(v1, v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F0BC(v1, v3, type metadata accessor for MLS.GroupState);
  sub_26BF7F0BC(v1, v4, type metadata accessor for MLS.GroupState);
  v6 = sub_26C009A3C();
  v7 = sub_26C00AA1C();
  if (!os_log_type_enabled(v6, v7))
  {
    v13 = *(v0 + 2376);
    v14 = *(v0 + 2360);
    sub_26BF7F05C(*(v0 + 2368), type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v13, type metadata accessor for MLS.GroupState);

    sub_26BF7F05C(v14, type metadata accessor for MLS.GroupState);
    v15 = *(v0 + 2488);
    goto LABEL_10;
  }

  v8 = *(v0 + 2488);
  v9 = *(v0 + 2376);
  v10 = *(v0 + 2344);
  v11 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v40 = v39;
  *v11 = 67109634;
  v12 = sub_26BE81FE0(*(v9 + *(v10 + 40)));
  if (v8)
  {

LABEL_8:
    v16 = sub_26BE4126C();
    goto LABEL_9;
  }

  v16 = v12;
  if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = *(v0 + 2368);
  v18 = *(v0 + 2360);
  sub_26BF7F05C(*(v0 + 2376), type metadata accessor for MLS.GroupState);
  *(v11 + 4) = v16;
  *(v11 + 8) = 2048;
  v19 = *(v17 + 24);
  sub_26BF7F05C(v17, type metadata accessor for MLS.GroupState);
  *(v11 + 10) = v19;
  *(v11 + 18) = 2080;
  v15 = 0;
  *(v0 + 2296) = sub_26BF87240(*(v18 + 8), *(v18 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v20 = sub_26C00A3EC();
  v22 = v21;

  sub_26BF7F05C(v18, type metadata accessor for MLS.GroupState);
  v23 = sub_26BE29740(v20, v22, &v40);

  *(v11 + 20) = v23;
  _os_log_impl(&dword_26BDFE000, v6, v7, "Created group state with era %u, epoch %lld, groupID %s", v11, 0x1Cu);
  __swift_destroy_boxed_opaque_existential_1(v39);
  MEMORY[0x26D69A4E0](v39, -1, -1);
  MEMORY[0x26D69A4E0](v11, -1, -1);

LABEL_10:
  v24 = *(v0 + 2400);
  v25 = *(v0 + 2344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 2496) = v26;
  v27 = *(*(v26 - 8) + 80);
  *(v0 + 380) = v27;
  v28 = (v27 + 32) & ~v27;
  v29 = swift_allocObject();
  *(v0 + 2504) = v29;
  *(v29 + 16) = xmmword_26C011280;
  v30 = sub_26BE81FE0(*(v24 + *(v25 + 40)));
  if (v15)
  {
  }

  else if ((v30 & 0x100000000) == 0)
  {
    goto LABEL_14;
  }

  LODWORD(v30) = sub_26BE4126C();
LABEL_14:
  v31 = v29 + v28;
  v32 = *(v0 + 2400);
  v33 = *(v0 + 2352);
  v34 = *(v0 + 2344);
  v35 = *(v26 + 48);
  v36 = *(v32 + 24);
  *v31 = v30;
  *(v31 + 8) = v36;
  sub_26BF7F0BC(v32, v31 + v35, type metadata accessor for MLS.GroupState);
  (*(v33 + 56))(v31 + v35, 0, 1, v34);
  v37 = swift_task_alloc();
  *(v0 + 2512) = v37;
  *v37 = v0;
  v37[1] = sub_26BF402E4;

  return sub_26BF394D4(v29);
}

uint64_t sub_26BF402E4()
{
  *(*v1 + 2520) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF4067C;
  }

  else
  {
    v2 = sub_26BF40464;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF40464()
{
  v1 = v0[300];
  v2 = v0[290];
  v3 = v0[289];
  sub_26BE0489C(v0[308], v0[309]);
  sub_26BE00258(v3, v2);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v4 = v0[1];
  v5 = v0[307];

  return v4(v5);
}

uint64_t sub_26BF40574()
{
  v1 = v0[300];
  v2 = v0[290];
  v3 = v0[289];
  sub_26BE0489C(v0[308], v0[309]);
  sub_26BE00258(v3, v2);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF4067C()
{
  v1 = v0[300];
  v2 = v0[290];
  v3 = v0[289];
  sub_26BE0489C(v0[308], v0[309]);
  sub_26BE00258(v3, v2);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF40784(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF40830, 0, 0);
}

void sub_26BF40830()
{
  v1 = v0[20];
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  v7 = sub_26BFEB264(sub_26BF7F1F4, v6, v5, v2, v3, v4);

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_32:

    v36 = v0[20];
    v37 = type metadata accessor for MLS.GroupState(0);
    v7 = sub_26BE81FE0(*(v36 + *(v37 + 40)));
    if ((v7 & 0x100000000) != 0)
    {
      v7 = sub_26BE4126C();
    }

    v8 = *(v0[20] + 24);
    if (qword_28045DF48 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_44;
  }

  v9 = 0;
  v49 = v0[20];
  v50 = v0[21];
  v10 = v7 + 32;
  v47 = v7;
  v48 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
LABEL_35:
      v38 = v0[23];
      v39 = __swift_project_value_buffer(v0[22], qword_28045E4F0);
      swift_beginAccess();
      sub_26BE2E1F0(v39, v38, &qword_28045E4A8, &unk_26C00ECB0);
      v40 = sub_26C00921C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      v43 = v42(v38, 1, v40);
      v44 = v0[23];
      if (v43 == 1)
      {
        sub_26C00920C();
        if (v42(v44, 1, v40) != 1)
        {
          sub_26BE2E258(v0[23], &qword_28045E4A8, &unk_26C00ECB0);
        }
      }

      else
      {
        (*(v41 + 32))(v0[24], v0[23], v40);
      }

      v45 = v0[24];
      (*(v41 + 56))(v45, 0, 1, v40);
      swift_beginAccess();
      sub_26BE4D1CC(v45, v7, v8);
      swift_endAccess();

      v46 = v0[1];

      v46();
      return;
    }

    sub_26BE2DB68(v10 + 56 * v9, (v0 + 2));
    v12 = v0[2];
    v11 = v0[3];
    sub_26BE04890(v12, v11);
    sub_26BE2DBC4((v0 + 2));
    if ((v11 & 0x2000000000000000) != 0)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26D6996F0](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;
      v15 = SecCertificateCopyURIs();
      if (!v15)
      {
        goto LABEL_46;
      }

      v16 = v15;

      v0[18] = v16;
      type metadata accessor for CFArray(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
      if (swift_dynamicCast())
      {
        v17 = v0[19];
        if (v17)
        {
          break;
        }
      }
    }

    sub_26BE0489C(v12, v11);
LABEL_4:
    if (++v9 == v8)
    {
      goto LABEL_32;
    }
  }

  if (!v17[2])
  {
    sub_26BE0489C(v12, v11);

    goto LABEL_4;
  }

  v18 = v0[20];
  v19 = v17[5];
  v51 = v17[4];

  sub_26BE0489C(v12, v11);
  v20 = *(v18 + *(type metadata accessor for MLS.GroupState(0) + 40));
  v21 = (v20 + 32);
  v22 = *(v20 + 16) + 1;
  do
  {
    if (!--v22)
    {
      goto LABEL_24;
    }

    v23 = v21 + 12;
    v24 = *v21;
    v21 += 12;
  }

  while (v24 != -4095);
  v25 = *(v23 - 2);
  v26 = *(v23 - 1);
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 == 2)
    {
      goto LABEL_22;
    }
  }

  else if (v27)
  {
LABEL_22:
    sub_26BE00608(*(v23 - 2), *(v23 - 1));
  }

  v53 = v26;
  v28 = sub_26BEE6028();
  sub_26BE00258(v25, v53);
  if ((v28 & 0x100000000) == 0)
  {
LABEL_30:
    v34 = *(v49 + 24);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v50 + v48);
    *(v50 + v48) = 0x8000000000000000;
    sub_26BE57234(v28, v34, v51, v19, isUniquelyReferenced_nonNull_native);
    v7 = v47;

    *(v50 + v48) = v52;
    swift_endAccess();
    goto LABEL_4;
  }

LABEL_24:
  if (!os_variant_allows_internal_security_policies() || (v29 = objc_allocWithZone(MEMORY[0x277CBEBD0]), v30 = sub_26C00A45C(), v31 = [v29 initWithSuiteName_], v30, !v31) || (v32 = v31, v33 = sub_26C00A45C(), v28 = objc_msgSend(v32, sel_integerForKey_, v33), v32, v32, v33, v28 < 1))
  {
    v28 = 1;
    goto LABEL_30;
  }

  if (!HIDWORD(v28))
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_26BF40E64(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 344) = a2;
  *(v7 + 352) = v6;
  *(v7 + 468) = a6;
  *(v7 + 336) = a1;
  v11 = type metadata accessor for MLS.GroupState(0);
  *(v7 + 360) = v11;
  *(v7 + 368) = *(v11 - 8);
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = *a3;
  *(v7 + 456) = *a4;
  *(v7 + 469) = *(a4 + 4);
  *(v7 + 460) = *a5;
  *(v7 + 470) = *(a5 + 4);

  return MEMORY[0x2822009F8](sub_26BF40F68, 0, 0);
}

uint64_t sub_26BF40F68()
{
  v60 = v0;
  v1 = *(v0 + 468);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v17 = sub_26C009A5C();
    *(v0 + 432) = __swift_project_value_buffer(v17, qword_280478EE8);
    v18 = sub_26C009A3C();
    v19 = sub_26C00AA1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26BDFE000, v18, v19, "Received commit that removed us from the group. Deleting group from storage...", v20, 2u);
      MEMORY[0x26D69A4E0](v20, -1, -1);
    }

    v21 = swift_task_alloc();
    *(v0 + 440) = v21;
    *v21 = v0;
    v21[1] = sub_26BF41A44;

    return sub_26BF5DAA0();
  }

  else
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v2 = sub_26C009A5C();
    __swift_project_value_buffer(v2, qword_280478EE8);
    v3 = sub_26C009A3C();
    v4 = sub_26C00AA0C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26BDFE000, v3, v4, "Received commit that removed and re-added group member", v5, 2u);
      MEMORY[0x26D69A4E0](v5, -1, -1);
    }

    v6 = *(v0 + 352);

    v7 = *(v6 + 48);
    v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BE2E1F0(v7 + v8, v0 + 128, &qword_28045E460, &qword_26C0206D0);
    if (!*(v0 + 160))
    {
      sub_26BE2E258(v0 + 128, &qword_28045E460, &qword_26C0206D0);
      sub_26BE01654();
      swift_allocError();
      *v23 = 17;
      *(v23 + 8) = 0u;
      *(v23 + 24) = 0u;
      *(v23 + 40) = 0u;
      *(v23 + 56) = 0u;
      *(v23 + 72) = 0u;
      *(v23 + 88) = 0u;
      *(v23 + 104) = 0;
      *(v23 + 112) = 23;
      swift_willThrow();
LABEL_23:

      v33 = *(v0 + 8);

      return v33();
    }

    v9 = *(v0 + 392);
    v10 = *(v0 + 208);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 96) = v10;
    *(v0 + 112) = *(v0 + 224);
    v11 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v11;
    v12 = *(v0 + 176);
    *(v0 + 48) = *(v0 + 160);
    *(v0 + 64) = v12;
    if (v9 >> 60 == 15)
    {
      v13 = sub_26C009A3C();
      v14 = sub_26C00AA0C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_26BDFE000, v13, v14, "Received commit that removed and re-added group member, but no accompanying welcome message", v15, 2u);
        MEMORY[0x26D69A4E0](v15, -1, -1);
      }

      sub_26BE01654();
      swift_allocError();
      *v16 = 41;
      *(v16 + 8) = 0u;
      *(v16 + 24) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 56) = 0u;
      *(v16 + 72) = 0u;
      *(v16 + 88) = 0u;
      *(v16 + 104) = 0;
      *(v16 + 112) = 23;
      swift_willThrow();
      sub_26BE2BA24(v0 + 16);
      goto LABEL_23;
    }

    sub_26BE2BAE8(*(v0 + 384), v9);

    v24 = sub_26C009A3C();
    v25 = sub_26C00AA0C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v58 = v27;
      *v26 = 136315138;

      v28 = sub_26BE3D034();
      v30 = v29;

      v31 = sub_26BE29740(v28, v30, &v58);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_26BDFE000, v24, v25, "%s: received commit that removed and re-added group member, presumably due to expired credential", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x26D69A4E0](v27, -1, -1);
      MEMORY[0x26D69A4E0](v26, -1, -1);
    }

    v32 = *(v0 + 376);
    v58 = *(v0 + 384);
    v59 = 0;
    MLS.ClientState.joinGroup(welcome:ratchetTree:)(&v58, &v59, v32);
    v34 = *(v0 + 360);
    v35 = *(v0 + 344);
    v57 = *(*(v0 + 376) + 24);
    *(*(v0 + 352) + 24) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 400) = v36;
    v37 = *(*(v36 - 8) + 72);
    v38 = *(*(v36 - 8) + 80);
    *(v0 + 464) = v38;
    v39 = (v38 + 32) & ~v38;
    v56 = v37;
    v40 = swift_allocObject();
    *(v0 + 408) = v40;
    *(v40 + 16) = xmmword_26C0125B0;
    v41 = v40 + v39;
    v42 = sub_26BE81FE0(*(v35 + *(v34 + 40)));
    if ((v42 & 0x100000000) != 0)
    {
      LODWORD(v42) = sub_26BE4126C();
    }

    v43 = *(v0 + 368);
    v44 = *(v0 + 376);
    v45 = *(v0 + 360);
    v46 = *(v0 + 344);
    v47 = *(v36 + 48);
    v48 = *(v46 + 24);
    *v41 = v42;
    *(v41 + 8) = v48;
    sub_26BF7F0BC(v46, v41 + v47, type metadata accessor for MLS.GroupState);
    v49 = *(v43 + 56);
    v49(v41 + v47, 0, 1, v45);
    v50 = sub_26BE81FE0(*(v44 + *(v34 + 40)));
    if ((v50 & 0x100000000) != 0)
    {
      LODWORD(v50) = sub_26BE4126C();
    }

    v51 = *(v0 + 376);
    v52 = *(v0 + 360);
    v53 = v41 + v56;
    v54 = *(v36 + 48);
    *v53 = v50;
    *(v53 + 8) = v57;
    sub_26BF7F0BC(v51, v53 + v54, type metadata accessor for MLS.GroupState);
    v49(v53 + v54, 0, 1, v52);
    v55 = swift_task_alloc();
    *(v0 + 416) = v55;
    *v55 = v0;
    v55[1] = sub_26BF41730;

    return sub_26BF394D4(v40);
  }
}

uint64_t sub_26BF41730()
{
  *(*v1 + 424) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF41DCC;
  }

  else
  {
    v2 = sub_26BF418B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF418B0()
{
  v13 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 352);
  sub_26BE038A8(*(v0 + 376) + *(*(v0 + 360) + 56), v0 + 240);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 112));
  sub_26BE03890((v0 + 240), v2 + 112);
  swift_endAccess();
  MLS.GroupState.credential.getter(&v12);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = *(v0 + 376);
  if (v1)
  {
    sub_26BE2BA24(v0 + 16);
    sub_26BE132D4(v4, v3);
    sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  }

  else
  {
    v7 = *(v0 + 352);
    v8 = *(v0 + 336);
    sub_26BE2BA24(v0 + 16);
    sub_26BE132D4(v4, v3);
    v9 = *(v7 + 56);
    v10 = *(v7 + 64);
    *(v7 + 56) = v12;
    sub_26BE0489C(v9, v10);
    sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
    *v8 = 1;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 97) = 0u;
    *(v8 + 113) = 4;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26BF41A44()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BF41B94, 0, 0);
  }
}

uint64_t sub_26BF41B94()
{
  v22 = v0;

  v1 = sub_26C009A3C();
  v2 = sub_26C00AA1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 352);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    sub_26BE00608(v6, v7);
    *(v0 + 328) = sub_26BF87240(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v8 = sub_26C00A3EC();
    v10 = v9;
    sub_26BE00258(v6, v7);

    v11 = sub_26BE29740(v8, v10, v21);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v1, v2, "Group %s deleted from storage", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v12 = *(v0 + 470);
  v13 = *(v0 + 460);
  v14 = *(v0 + 469);
  v15 = *(v0 + 344);
  v19 = *(v0 + 456);
  v20 = v14;
  LODWORD(v21[0]) = v13;
  BYTE4(v21[0]) = v12;
  sub_26BE01654();
  swift_allocError();
  sub_26BF51C34(v15, &v19, v21, v16);
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26BF41DCC()
{
  v1 = v0[47];
  sub_26BE132D4(v0[48], v0[49]);
  sub_26BE2BA24((v0 + 2));
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v2 = v0[1];

  return v2();
}

void sub_26BF41E60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB28, &qword_26C01FCA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for MLS.MLSMessage(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = 0;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_7;
    }

    v13 = *(v14 + 16);
  }

  else
  {
    if (!v16)
    {
      goto LABEL_7;
    }

    v13 = v14;
  }

  sub_26BE00608(*a1, *(a1 + 8));
  sub_26BE00608(v14, v15);
LABEL_7:
  v52 = v14;
  v53 = v15;
  v54 = v13;
  sub_26BEE3C08(v6);
  if (v2)
  {
    swift_willThrow();
    sub_26BE00258(v14, v15);
    sub_26BE00258(v52, v53);

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_26BE2E258(v6, &qword_28045FB28, &qword_26C01FCA8);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v17 = sub_26C009A5C();
    v18 = __swift_project_value_buffer(v17, qword_280478EE8);

    v19 = sub_26C009A3C();
    v20 = sub_26C00AA0C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47 = v18;
      v23 = v22;
      v52 = v22;
      *v21 = 136315138;

      v24 = sub_26BE3D034();
      v26 = v25;

      v27 = sub_26BE29740(v24, v26, &v52);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_26BDFE000, v19, v20, "%s: Failed to parse incoming message as MLSMessage, trying CommitList", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x26D69A4E0](v23, -1, -1);
      MEMORY[0x26D69A4E0](v21, -1, -1);
    }

    v50 = v14;
    v51 = v15;
    MLS.Group.Message.asSingleCommit()(&v52);
    v28 = v48;
    MLS.MLSMessage.init(rawValue:quiet:)(v52, v53, 0, v48);
    sub_26BF7F124(v28, v49, type metadata accessor for MLS.MLSMessage);

    v38 = sub_26C009A3C();
    v39 = sub_26C00AA1C();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52 = v42;
      *v41 = 136315138;

      v43 = sub_26BE3D034();
      v45 = v44;

      v46 = sub_26BE29740(v43, v45, &v52);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_26BDFE000, v38, v39, "%s: successfully parsed incoming message as CommitList", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D69A4E0](v42, -1, -1);
      MEMORY[0x26D69A4E0](v41, -1, -1);
    }
  }

  else
  {
    sub_26BE00258(v14, v15);
    sub_26BE00258(v52, v53);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_26BF7F124(v6, v12, type metadata accessor for MLS.MLSMessage);
    sub_26BF7F0BC(v12, v49, type metadata accessor for MLS.MLSMessage);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v29 = sub_26C009A5C();
    __swift_project_value_buffer(v29, qword_280478EE8);

    v30 = sub_26C009A3C();
    v31 = sub_26C00AA1C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136315138;

      v34 = sub_26BE3D034();
      v36 = v35;

      v37 = sub_26BE29740(v34, v36, &v52);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_26BDFE000, v30, v31, "%s: successfully parsed incoming message as MLSMessage", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x26D69A4E0](v33, -1, -1);
      MEMORY[0x26D69A4E0](v32, -1, -1);
    }

    sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
  }
}

uint64_t sub_26BF425C8(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *a3;
  *(v4 + 32) = *a2;
  *(v4 + 48) = v5;
  return MEMORY[0x2822009F8](sub_26BF425F4, 0, 0);
}

uint64_t sub_26BF425F4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  sub_26BE00608(v4, v3);
  sub_26BE2BAE8(v1, v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_26BF426DC;
  v6 = v0[2];

  return (sub_26BE9DF04)(v6);
}

uint64_t sub_26BF426DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BF427D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[302] = a6;
  v6[301] = a5;
  v6[300] = a4;
  v6[299] = a3;
  v6[298] = a2;
  v6[297] = a1;
  v6[303] = type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
  v6[304] = swift_task_alloc();
  v6[305] = swift_task_alloc();
  v6[306] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960);
  v6[307] = swift_task_alloc();
  v7 = type metadata accessor for MLS.GroupState(0);
  v6[308] = v7;
  v6[309] = *(v7 - 8);
  v6[310] = swift_task_alloc();
  v6[311] = swift_task_alloc();
  v6[312] = swift_task_alloc();
  v6[313] = swift_task_alloc();
  v6[314] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v6[315] = swift_task_alloc();
  v6[316] = swift_task_alloc();
  v6[317] = swift_task_alloc();
  v6[318] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v6[319] = v8;
  v6[320] = *(v8 - 8);
  v6[321] = swift_task_alloc();
  v6[322] = swift_task_alloc();
  v6[323] = swift_task_alloc();
  type metadata accessor for MLS.PublicMessage(0);
  v6[324] = swift_task_alloc();
  v6[325] = type metadata accessor for MLS.MLSMessage.Inner(0);
  v6[326] = swift_task_alloc();
  v6[327] = swift_task_alloc();
  v6[328] = swift_task_alloc();
  v6[329] = swift_task_alloc();
  v6[330] = swift_task_alloc();
  type metadata accessor for MLS.MLSMessage(0);
  v6[331] = swift_task_alloc();
  v6[332] = swift_task_alloc();
  v6[333] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF42B00, 0, 0);
}

void sub_26BF42B00()
{
  v190 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2400);
  v2 = *(v0 + 2392);
  v3 = sub_26C009A5C();
  *(v0 + 2672) = __swift_project_value_buffer(v3, qword_280478EE8);

  sub_26BE00608(v2, v1);

  sub_26BE00608(v2, v1);
  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 2400);
  if (!v6)
  {
    v20 = *(v0 + 2392);
    sub_26BE00258(v20, *(v0 + 2400));

    sub_26BE00258(v20, v7);
    goto LABEL_16;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  *&v187 = v9;
  *v8 = 136315394;

  v10 = sub_26BE3D034();
  v12 = v11;

  v13 = sub_26BE29740(v10, v12, &v187);

  *(v8 + 4) = v13;

  *(v8 + 12) = 2048;
  v14 = v7 >> 62;
  v15 = *(v0 + 2400);
  v16 = v0;
  v17 = *(v0 + 2392);
  if ((v7 >> 62) > 1)
  {
    if (v14 != 2)
    {
      sub_26BE00258(v17, v15);
      v19 = 0;
      goto LABEL_15;
    }

    v22 = *(v17 + 16);
    v21 = *(v17 + 24);
    sub_26BE00258(v17, v15);
    v19 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v23 = HIDWORD(v17);
    v24 = v17;
    sub_26BE00258(v17, v15);
    LODWORD(v19) = v23 - v24;
    if (__OFSUB__(v23, v24))
    {
      __break(1u);
      return;
    }

    v19 = v19;
    goto LABEL_15;
  }

  if (v14)
  {
    goto LABEL_12;
  }

  v18 = *(v0 + 2400);
  sub_26BE00258(v17, v15);
  v19 = BYTE6(v18);
LABEL_15:
  v25 = *(v16 + 2400);
  v26 = *(v16 + 2392);
  *(v8 + 14) = v19;
  sub_26BE00258(v26, v25);
  _os_log_impl(&dword_26BDFE000, v4, v5, "%s: processIncomingMessage, message is %ld bytes", v8, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v0 = v16;
  MEMORY[0x26D69A4E0](v9, -1, -1);
  MEMORY[0x26D69A4E0](v8, -1, -1);
LABEL_16:

  v27 = (v0 + 1660);
  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 2392);
  v29 = *(v0 + 2400);
  v30 = *(v0 + 2392);
  __swift_project_value_buffer(v3, qword_280478FB0);
  sub_26BE00608(v30, v29);
  sub_26BE00608(v30, v29);
  v31 = sub_26C009A3C();
  v32 = sub_26C00A9FC();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 2400);
  v35 = *(v0 + 2392);
  if (v33)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v187 = v37;
    *v36 = 136315138;
    v38 = sub_26C0090EC();
    v40 = sub_26BE29740(v38, v39, &v187);

    *(v36 + 4) = v40;
    sub_26BE00258(v35, v34);
    sub_26BE00258(v35, v34);
    _os_log_impl(&dword_26BDFE000, v31, v32, "Received message: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x26D69A4E0](v37, -1, -1);
    v41 = v36;
    v28 = (v0 + 2392);
    MEMORY[0x26D69A4E0](v41, -1, -1);
  }

  else
  {
    sub_26BE00258(*(v0 + 2392), *(v0 + 2400));
    sub_26BE00258(v35, v34);
  }

  v42 = *(v0 + 2664);
  v187 = *v28;
  sub_26BF41E60(&v187, v42);
  sub_26BF34B98(&v187);
  v43 = *(v0 + 2664);
  if (v188)
  {
    sub_26BF7F0BC(v43, *(v0 + 2648), type metadata accessor for MLS.MLSMessage);
    swift_retain_n();
    v44 = sub_26C009A3C();
    v45 = sub_26C00AA0C();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 2648);
    if (!v46)
    {
      sub_26BF7F05C(*(v0 + 2648), type metadata accessor for MLS.MLSMessage);

LABEL_49:

      sub_26BF7F0BC(*(v0 + 2664), *(v0 + 2616), type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v75 = *(v0 + 2616);
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v75, type metadata accessor for MLS.MLSMessage.Inner);
          v76 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v75, type metadata accessor for MLS.MLSMessage.Inner);
          v76 = 2;
        }

        else
        {
          v76 = *v75;
          sub_26BE00258(*(v75 + 8), *(v75 + 16));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v75, type metadata accessor for MLS.MLSMessage.Inner);
          v76 = 4;
        }

        else
        {
          sub_26BF7F05C(v75, type metadata accessor for MLS.MLSMessage.Inner);
          v76 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v75, type metadata accessor for MLS.MLSMessage.Inner);
        v76 = 3;
      }

      v77 = *(v0 + 2664);
      v78 = *(v0 + 2608);
      *(v0 + 1656) = v76;
      *(v0 + 1658) = 0;
      *v27 = 1;
      *(v0 + 1768) = 17;
      sub_26BE7D22C(v0 + 1656);
      sub_26BE2DC9C(v0 + 1656);
      sub_26BE01654();
      swift_allocError();
      v80 = v79;
      sub_26BF7F0BC(v77, v78, type metadata accessor for MLS.MLSMessage.Inner);
      v81 = swift_getEnumCaseMultiPayload();
      v82 = *(v0 + 2608);
      if (v81 > 2)
      {
        if (v81 == 3)
        {
          sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
          v83 = 1;
        }

        else if (v81 == 4)
        {
          sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
          v83 = 2;
        }

        else
        {
          v83 = *v82;
          sub_26BE00258(*(v82 + 8), *(v82 + 16));
        }
      }

      else if (v81)
      {
        if (v81 == 1)
        {
          sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
          v83 = 4;
        }

        else
        {
          sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
          v83 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
        v83 = 3;
      }

      v84 = *(v0 + 2664);
      *v80 = v83;
      *(v80 + 2) = 0;
      *(v80 + 4) = 1;
      *(v80 + 112) = 17;
      swift_willThrow();
      sub_26BF7F05C(v84, type metadata accessor for MLS.MLSMessage);

      v105 = *(v0 + 8);

      v105();
      return;
    }

    v48 = *(v0 + 2624);
    v49 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    *&v187 = v183;
    *v49 = 136315394;

    v50 = sub_26BE3D034();
    v52 = v51;

    v53 = sub_26BE29740(v50, v52, &v187);

    *(v49 + 4) = v53;

    *(v49 + 12) = 512;
    sub_26BF7F0BC(v47, v48, type metadata accessor for MLS.MLSMessage.Inner);
    v54 = swift_getEnumCaseMultiPayload();
    v55 = *(v0 + 2624);
    if (v54 > 2)
    {
      if (v54 != 3)
      {
        v56 = v183;
        v27 = (v0 + 1660);
        if (v54 == 4)
        {
          sub_26BF7F05C(v55, type metadata accessor for MLS.MLSMessage.Inner);
          v57 = 2;
        }

        else
        {
          v57 = *v55;
          sub_26BE00258(*(v55 + 8), *(v55 + 16));
        }

        goto LABEL_48;
      }

      sub_26BF7F05C(v55, type metadata accessor for MLS.MLSMessage.Inner);
      v57 = 1;
    }

    else
    {
      if (v54)
      {
        v56 = v183;
        v27 = (v0 + 1660);
        if (v54 == 1)
        {
          sub_26BF7F05C(v55, type metadata accessor for MLS.MLSMessage.Inner);
          v57 = 4;
        }

        else
        {
          sub_26BF7F05C(v55, type metadata accessor for MLS.MLSMessage.Inner);
          v57 = 5;
        }

        goto LABEL_48;
      }

      sub_26BF7F05C(v55, type metadata accessor for MLS.MLSMessage.Inner);
      v57 = 3;
    }

    v56 = v183;
    v27 = (v0 + 1660);
LABEL_48:
    sub_26BF7F05C(*(v0 + 2648), type metadata accessor for MLS.MLSMessage);
    *(v49 + 14) = v57;
    _os_log_impl(&dword_26BDFE000, v44, v45, "%s: Received message with invalid wire format: %hu", v49, 0x10u);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x26D69A4E0](v56, -1, -1);
    MEMORY[0x26D69A4E0](v49, -1, -1);
    goto LABEL_49;
  }

  v58 = *(v0 + 2656);
  v59 = *(&v187 + 1);
  *(v0 + 2272) = v187;
  *(v0 + 2280) = v59;
  sub_26BF7F0BC(v43, v58, type metadata accessor for MLS.MLSMessage);
  swift_retain_n();
  v60 = sub_26C009A3C();
  v61 = sub_26C00AA1C();
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 2656);
  if (v62)
  {
    v64 = *(v0 + 2640);
    v65 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v189[0] = v184;
    *v65 = 136315650;

    v66 = sub_26BE3D034();
    v68 = v67;

    v69 = sub_26BE29740(v66, v68, v189);

    *(v65 + 4) = v69;

    *(v65 + 12) = 512;
    sub_26BF7F0BC(v63, v64, type metadata accessor for MLS.MLSMessage.Inner);
    v70 = swift_getEnumCaseMultiPayload();
    v71 = *(v0 + 2640);
    if (v70 > 2)
    {
      if (v70 == 3)
      {
        sub_26BF7F05C(v71, type metadata accessor for MLS.MLSMessage.Inner);
        v73 = 1;
        v72 = v184;
      }

      else
      {
        v72 = v184;
        if (v70 == 4)
        {
          sub_26BF7F05C(v71, type metadata accessor for MLS.MLSMessage.Inner);
          v73 = 2;
        }

        else
        {
          v73 = *v71;
          sub_26BE00258(*(v71 + 8), *(v71 + 16));
        }
      }
    }

    else if (v70)
    {
      v72 = v184;
      if (v70 == 1)
      {
        sub_26BF7F05C(v71, type metadata accessor for MLS.MLSMessage.Inner);
        v73 = 4;
      }

      else
      {
        sub_26BF7F05C(v71, type metadata accessor for MLS.MLSMessage.Inner);
        v73 = 5;
      }
    }

    else
    {
      sub_26BF7F05C(v71, type metadata accessor for MLS.MLSMessage.Inner);
      v73 = 3;
      v72 = v184;
    }

    sub_26BF7F05C(*(v0 + 2656), type metadata accessor for MLS.MLSMessage);
    *(v65 + 14) = v73;
    *(v65 + 16) = 2080;
    swift_beginAccess();
    v85 = *(v0 + 2280);
    LODWORD(v187) = *(v0 + 2272);
    *(&v187 + 1) = v85;
    v86 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v88 = sub_26BE29740(v86, v87, v189);

    *(v65 + 18) = v88;
    _os_log_impl(&dword_26BDFE000, v60, v61, "%s: message has wire format %hu and was for %s", v65, 0x1Au);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v72, -1, -1);
    MEMORY[0x26D69A4E0](v65, -1, -1);
  }

  else
  {
    sub_26BF7F05C(*(v0 + 2656), type metadata accessor for MLS.MLSMessage);
  }

  sub_26BF7F0BC(*(v0 + 2664), *(v0 + 2632), type metadata accessor for MLS.MLSMessage.Inner);
  v89 = swift_getEnumCaseMultiPayload();
  v90 = *(v0 + 2632);
  if (v89 != 3)
  {
    v101 = type metadata accessor for MLS.MLSMessage.Inner;
LABEL_80:
    sub_26BF7F05C(v90, v101);
    goto LABEL_81;
  }

  v91 = *(v0 + 2592);
  sub_26BF7F124(v90, v91, type metadata accessor for MLS.PublicMessage);
  v92 = *(v91 + 16);
  memmove((v0 + 392), (v91 + 48), 0xB9uLL);
  if (sub_26BE6917C(v0 + 392) != 1)
  {
    nullsub_1();
    v90 = *(v0 + 2592);
    v101 = type metadata accessor for MLS.PublicMessage;
    goto LABEL_80;
  }

  nullsub_1();
  swift_retain_n();
  v93 = sub_26C009A3C();
  v94 = sub_26C00AA1C();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v187 = v96;
    *v95 = 136315138;

    v97 = sub_26BE3D034();
    v99 = v98;

    v100 = sub_26BE29740(v97, v99, &v187);

    *(v95 + 4) = v100;

    _os_log_impl(&dword_26BDFE000, v93, v94, "%s: assuming that public message proposal is for current era", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v96);
    MEMORY[0x26D69A4E0](v96, -1, -1);
    MEMORY[0x26D69A4E0](v95, -1, -1);
  }

  else
  {
  }

  v149 = *(*(v0 + 2384) + 152);
  sub_26BF7F05C(*(v0 + 2592), type metadata accessor for MLS.PublicMessage);
  swift_beginAccess();
  *(v0 + 2272) = v149;
  *(v0 + 2280) = v92;
LABEL_81:
  if (*(*(v0 + 2384) + 72))
  {
    v102 = 2;
  }

  else
  {
    v102 = 1;
  }

  LOWORD(v187) = v102;
  v103 = sub_26BF2F140(&v187);
  *(v0 + 2680) = v103;
  *(v0 + 2688) = v104;
  v106 = v103;
  v107 = v104;
  v108 = *(v0 + 2560);
  v109 = *(v0 + 2552);
  v110 = *(v0 + 2544);
  v111 = *(v0 + 2384);
  v112 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  *(v0 + 2696) = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  swift_beginAccess();
  sub_26BE2E1F0(v111 + v112, v110, &qword_28045E8D8, &qword_26C012580);
  v113 = *(v108 + 48);
  *(v0 + 2704) = v113;
  *(v0 + 2712) = (v108 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v114 = v113(v110, 1, v109);
  if (v114 == 1)
  {
    v115 = *(v0 + 2544);
    v116 = &qword_28045E8D8;
    v117 = &qword_26C012580;
LABEL_96:
    sub_26BE2E258(v115, v116, v117);

    sub_26BE00608(v106, v107);

    sub_26BE00608(v106, v107);
    v134 = sub_26C009A3C();
    v135 = sub_26C00AA1C();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *&v187 = v137;
      *v136 = 136315394;

      v138 = sub_26BE3D034();
      v140 = v139;

      v141 = sub_26BE29740(v138, v140, &v187);

      *(v136 + 4) = v141;

      *(v136 + 12) = 2080;
      v142 = sub_26BE832D4(v106, v107);
      v144 = sub_26BE29740(v142, v143, &v187);

      *(v136 + 14) = v144;
      sub_26BE00258(v106, v107);
      sub_26BE00258(v106, v107);
      _os_log_impl(&dword_26BDFE000, v134, v135, "%s: message was not client's own commit, hash %s", v136, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v137, -1, -1);
      MEMORY[0x26D69A4E0](v136, -1, -1);
    }

    else
    {

      sub_26BE00258(v106, v107);
      sub_26BE00258(v106, v107);
    }

    swift_beginAccess();
    v145 = *(v0 + 2272);
    *(v0 + 1052) = v145;
    v146 = *(v0 + 2280);
    *(v0 + 2856) = v146;
    *(v0 + 2320) = v145;
    *(v0 + 2328) = v146;
    v147 = swift_task_alloc();
    *(v0 + 2864) = v147;
    *v147 = v0;
    v147[1] = sub_26BF45D64;
    v148 = *(v0 + 2488);

    sub_26BF37CA4(v148, (v0 + 2320), 1);
    return;
  }

  v118 = *(v0 + 2584);
  v119 = *(v0 + 2576);
  v120 = *(v0 + 2552);
  v185 = v0;
  sub_26BE33F30(*(v0 + 2544), v118, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BE2E1F0(v118, v119, &qword_28045E8E0, &unk_26C0204E0);
  v121 = (v119 + *(v120 + 48));
  v122 = v121[7];
  v123 = v121[8];
  v124 = v121[10];
  *(v0 + 904) = v121[9];
  *(v0 + 920) = v124;
  *(v0 + 872) = v122;
  *(v0 + 888) = v123;
  v125 = v121[3];
  v126 = v121[4];
  v127 = v121[6];
  *(v0 + 840) = v121[5];
  *(v0 + 856) = v127;
  *(v0 + 808) = v125;
  *(v0 + 824) = v126;
  v129 = v121[1];
  v128 = v121[2];
  *(v0 + 760) = *v121;
  *(v0 + 776) = v129;
  *(v0 + 792) = v128;
  v130 = *(v0 + 920);
  v131 = *(v0 + 928);
  sub_26BE00608(v106, v107);
  sub_26BE2BAE8(v130, v131);
  sub_26BE6FF8C(v0 + 760);
  if (v107 >> 60 != 15)
  {
    if (v131 >> 60 != 15)
    {
      v150 = *(v0 + 2576);
      sub_26BE00608(v106, v107);
      sub_26BE2BAE8(v130, v131);
      v151 = sub_26BE02DEC(v106, v107, v130, v131);
      sub_26BE132D4(v130, v131);
      sub_26BE132D4(v130, v131);
      sub_26BE00258(v106, v107);
      sub_26BE132D4(v106, v107);
      sub_26BF7F05C(v150, type metadata accessor for MLS.GroupState);
      if (v151)
      {
        goto LABEL_105;
      }

LABEL_95:
      v115 = *(v0 + 2584);
      v116 = &qword_28045E8E0;
      v117 = &unk_26C0204E0;
      goto LABEL_96;
    }

LABEL_94:
    v133 = *(v0 + 2576);
    sub_26BE132D4(v106, v107);
    sub_26BE132D4(v130, v131);
    sub_26BF7F05C(v133, type metadata accessor for MLS.GroupState);
    goto LABEL_95;
  }

  if (v131 >> 60 != 15)
  {
    goto LABEL_94;
  }

  v132 = *(v0 + 2576);
  sub_26BE132D4(v106, v107);
  sub_26BF7F05C(v132, type metadata accessor for MLS.GroupState);
LABEL_105:
  v152 = (v0 + 584);

  sub_26BE00608(v106, v107);

  sub_26BE00608(v106, v107);
  v153 = sub_26C009A3C();
  v154 = sub_26C00AA1C();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *&v187 = v186;
    *v155 = 136315394;

    v156 = sub_26BE3D034();
    v157 = v120;
    v159 = v158;

    v160 = sub_26BE29740(v156, v159, &v187);

    *(v155 + 4) = v160;

    *(v155 + 12) = 2080;
    v161 = sub_26BE832D4(v106, v107);
    v163 = sub_26BE29740(v161, v162, &v187);

    *(v155 + 14) = v163;
    v120 = v157;
    sub_26BE00258(v106, v107);
    sub_26BE00258(v106, v107);
    _os_log_impl(&dword_26BDFE000, v153, v154, "%s: message was client's own commit, hash %s, returning cached state", v155, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v186, -1, -1);
    MEMORY[0x26D69A4E0](v155, -1, -1);
  }

  else
  {

    sub_26BE00258(v106, v107);
    sub_26BE00258(v106, v107);
  }

  v164 = *(v185 + 2568);
  v165 = *(v185 + 2512);
  v166 = *(v185 + 2464);
  v167 = *(v185 + 2384);
  sub_26BE2E1F0(*(v185 + 2584), v164, &qword_28045E8E0, &unk_26C0204E0);
  v168 = (v164 + *(v120 + 48));
  v169 = v168[7];
  v170 = v168[8];
  v171 = v168[10];
  v152[9] = v168[9];
  v152[10] = v171;
  v152[7] = v169;
  v152[8] = v170;
  v172 = v168[3];
  v173 = v168[4];
  v174 = v168[6];
  v152[5] = v168[5];
  v152[6] = v174;
  v152[3] = v172;
  v152[4] = v173;
  v176 = v168[1];
  v175 = v168[2];
  *v152 = *v168;
  v152[1] = v176;
  v152[2] = v175;
  sub_26BF7F124(v164, v165, type metadata accessor for MLS.GroupState);
  sub_26BE038A8(v165 + *(v166 + 56), v185 + 1968);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v167 + 112));
  sub_26BE03890((v185 + 1968), v167 + 112);
  swift_endAccess();
  MLS.GroupState.credential.getter(&v187);
  v177 = *(v185 + 2384);
  v178 = *(v177 + 56);
  v179 = *(v177 + 64);
  *(v177 + 56) = v187;
  sub_26BE0489C(v178, v179);
  swift_beginAccess();
  v180 = *(v185 + 2280);
  *(v185 + 2288) = *(v185 + 2272);
  *(v185 + 2296) = v180;
  v181 = swift_task_alloc();
  *(v185 + 2720) = v181;
  *v181 = v185;
  v181[1] = sub_26BF443EC;
  v182 = *(v185 + 2456);

  sub_26BF378BC(v182, v185 + 2288);
}

uint64_t sub_26BF443EC()
{
  *(*v1 + 2728) = v0;

  if (v0)
  {
    v2 = sub_26BF4B398;
  }

  else
  {
    v2 = sub_26BF44500;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF44500()
{
  v116 = v0;
  v1 = *(v0 + 2456);
  if ((*(*(v0 + 2472) + 48))(v1, 1, *(v0 + 2464)) == 1)
  {
    sub_26BE2E258(v1, &qword_28045FAB0, &qword_26C01F960);
    swift_retain_n();
    v2 = sub_26C009A3C();
    v3 = sub_26C00AA1C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v111 = v5;
      *v4 = 136315394;

      v6 = sub_26BE3D034();
      v8 = v7;

      v9 = sub_26BE29740(v6, v8, &v111);

      *(v4 + 4) = v9;

      *(v4 + 12) = 2080;
      v10 = *(v0 + 2280);
      LODWORD(v100) = *(v0 + 2272);
      *(&v100 + 1) = v10;
      v11 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v13 = sub_26BE29740(v11, v12, &v111);

      *(v4 + 14) = v13;
      _os_log_impl(&dword_26BDFE000, v2, v3, "%s: did not find current state for epoch %s, likely processing a resync", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v5, -1, -1);
      MEMORY[0x26D69A4E0](v4, -1, -1);
    }

    else
    {
    }

    sub_26BF7F0BC(*(v0 + 2512), *(v0 + 2496), type metadata accessor for MLS.GroupState);
    swift_retain_n();
    v26 = sub_26C009A3C();
    v27 = sub_26C00AA1C();
    if (!os_log_type_enabled(v26, v27))
    {
      v48 = *(v0 + 2496);

      sub_26BF7F05C(v48, type metadata accessor for MLS.GroupState);
LABEL_21:

      v61 = *(v0 + 2696);
      v62 = *(v0 + 2536);
      v63 = *(v0 + 2384);
      (*(*(v0 + 2560) + 56))(v62, 1, 1, *(v0 + 2552));
      swift_beginAccess();
      sub_26BE7170C(v62, v63 + v61, &qword_28045E8D8, &qword_26C012580);
      swift_endAccess();
      v64 = swift_task_alloc();
      *(v0 + 2840) = v64;
      *v64 = v0;
      v64[1] = sub_26BF45868;
      v65 = *(v0 + 2512);

      return sub_26BF71884(v65);
    }

    v97 = *(v0 + 2728);
    v28 = *(v0 + 2496);
    v29 = *(v0 + 2464);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v111 = v31;
    *v30 = 136315394;

    v32 = sub_26BE3D034();
    v34 = v33;

    v35 = sub_26BE29740(v32, v34, &v111);

    *(v30 + 4) = v35;

    *(v30 + 12) = 2080;
    v36 = sub_26BE81FE0(*(v28 + *(v29 + 40)));
    if (v97)
    {
    }

    else if ((v36 & 0x100000000) == 0)
    {
LABEL_20:
      v56 = *(v0 + 2496);
      v57 = *(v56 + 24);
      LODWORD(v100) = v36;
      *(&v100 + 1) = v57;
      v58 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v60 = sub_26BE29740(v58, v59, &v111);

      *(v30 + 14) = v60;
      sub_26BF7F05C(v56, type metadata accessor for MLS.GroupState);
      _os_log_impl(&dword_26BDFE000, v26, v27, "%s: advancing to new state %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v31, -1, -1);
      MEMORY[0x26D69A4E0](v30, -1, -1);
      goto LABEL_21;
    }

    LODWORD(v36) = sub_26BE4126C();
    goto LABEL_20;
  }

  sub_26BF7F124(v1, *(v0 + 2504), type metadata accessor for MLS.GroupState);
  swift_retain_n();
  v14 = sub_26C009A3C();
  v15 = sub_26C00AA1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v111 = v17;
    *v16 = 136315394;

    v18 = sub_26BE3D034();
    v20 = v19;

    v21 = sub_26BE29740(v18, v20, &v111);

    *(v16 + 4) = v21;

    *(v16 + 12) = 2080;
    v22 = *(v0 + 2280);
    LODWORD(v100) = *(v0 + 2272);
    *(&v100 + 1) = v22;
    v23 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v25 = sub_26BE29740(v23, v24, &v111);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_26BDFE000, v14, v15, "%s: found current state for epoch %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v17, -1, -1);
    MEMORY[0x26D69A4E0](v16, -1, -1);
  }

  else
  {
  }

  v37 = *(v0 + 2728);
  v38 = *(v0 + 2512);
  v39 = *(v0 + 728);
  v108 = *(v0 + 712);
  v109 = v39;
  v110 = *(v0 + 744);
  v40 = *(v0 + 664);
  v104 = *(v0 + 648);
  v105 = v40;
  v41 = *(v0 + 696);
  v106 = *(v0 + 680);
  v107 = v41;
  v42 = *(v0 + 600);
  v100 = *(v0 + 584);
  v101 = v42;
  v43 = *(v0 + 632);
  v102 = *(v0 + 616);
  v103 = v43;
  sub_26BF91664(&v100, v38, &v111);
  v44 = *(v0 + 2512);
  v45 = *(v0 + 2504);
  if (v37)
  {
    v46 = *(v0 + 2664);
    v47 = *(v0 + 2584);
    sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
    sub_26BF7F05C(v45, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v44, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v47, &qword_28045E8E0, &unk_26C0204E0);
    sub_26BF7F05C(v46, type metadata accessor for MLS.MLSMessage);
    sub_26BE6FF8C(v0 + 584);

    v54 = *(v0 + 8);

    return v54();
  }

  else
  {
    v49 = *(v0 + 2696);
    v50 = *(v0 + 2560);
    v96 = *(v0 + 2536);
    v98 = *(v0 + 2512);
    v51 = *(v0 + 2384);
    v52 = v111;
    *(v0 + 2736) = v111;
    v53 = v112;
    *(v0 + 2752) = v112;
    v93 = v113;
    v94 = v114;
    v95 = v115;
    (*(v50 + 56))();
    swift_beginAccess();
    sub_26BE7170C(v96, v51 + v49, &qword_28045E8D8, &qword_26C012580);
    swift_endAccess();
    v100 = v52;
    v101 = v53;
    LOBYTE(v102) = v93;
    *(&v102 + 1) = v94;
    LOBYTE(v103) = v95;
    sub_26BF4D038(v45, v98, &v100);
    v100 = v52;
    v101 = v53;
    LOBYTE(v102) = v93;
    *(&v102 + 1) = v94;
    LOBYTE(v103) = v95;
    sub_26BF4E118(&v100, &v111);
    v66 = v112;
    *(v0 + 2768) = v111;
    v67 = *(v0 + 2512);
    v68 = *(v0 + 2464);
    *(v0 + 2784) = v66;
    *(v0 + 371) = v113;
    *(v0 + 2800) = v114;
    *(v0 + 377) = v115;
    v99 = *(v67 + *(v68 + 40));
    v69 = sub_26BE81FE0(v99);
    if ((v69 & 0x100000000) != 0)
    {
      LODWORD(v69) = sub_26BE4126C();
    }

    v70 = *(v0 + 2512);
    v71 = *(v0 + 2504);
    v72 = *(v0 + 2384);
    *(v72 + 152) = v69;
    v73 = *(v70 + 24);
    *(v72 + 24) = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 2808) = v74;
    v75 = *(*(v74 - 8) + 72);
    v76 = *(*(v74 - 8) + 80);
    *(v0 + 580) = v76;
    v77 = (v76 + 32) & ~v76;
    v78 = swift_allocObject();
    *(v0 + 2816) = v78;
    *(v78 + 16) = xmmword_26C0125B0;
    v79 = v78 + v77;
    v80 = sub_26BE81FE0(*(v71 + *(v68 + 40)));
    if ((v80 & 0x100000000) != 0)
    {
      LODWORD(v80) = sub_26BE4126C();
    }

    v81 = *(v0 + 2504);
    v82 = *(v0 + 2472);
    v83 = *(v0 + 2464);
    v84 = *(v74 + 48);
    v85 = *(v81 + 24);
    *v79 = v80;
    *(v79 + 8) = v85;
    sub_26BF7F0BC(v81, v79 + v84, type metadata accessor for MLS.GroupState);
    v86 = *(v82 + 56);
    v86(v79 + v84, 0, 1, v83);
    v87 = sub_26BE81FE0(v99);
    if ((v87 & 0x100000000) != 0)
    {
      LODWORD(v87) = sub_26BE4126C();
    }

    v88 = *(v0 + 2512);
    v89 = *(v0 + 2464);
    v90 = v79 + v75;
    v91 = *(v74 + 48);
    *v90 = v87;
    *(v90 + 8) = v73;
    sub_26BF7F0BC(v88, v79 + v75 + v91, type metadata accessor for MLS.GroupState);
    v86(v79 + v75 + v91, 0, 1, v89);
    v92 = swift_task_alloc();
    *(v0 + 2824) = v92;
    *v92 = v0;
    v92[1] = sub_26BF451E4;

    return sub_26BF394D4(v78);
  }
}

uint64_t sub_26BF451E4()
{
  *(*v1 + 2832) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {

    v2 = sub_26BF4B5DC;
  }

  else
  {
    v2 = sub_26BF4540C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF4540C()
{
  v29 = v0;
  swift_retain_n();
  v1 = sub_26C009A3C();
  v2 = sub_26C00AA1C();
  v3 = os_log_type_enabled(v1, v2);
  v26 = *(v0 + 2680);
  v27 = *(v0 + 2688);
  v4 = *(v0 + 2664);
  v5 = *(v0 + 2584);
  v6 = *(v0 + 2512);
  v7 = *(v0 + 2504);
  if (v3)
  {
    v25 = *(v0 + 2512);
    v8 = swift_slowAlloc();
    v23 = v7;
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;

    v24 = v4;
    v10 = sub_26BE3D034();
    v22 = v5;
    v12 = v11;

    v13 = sub_26BE29740(v10, v12, &v28);

    *(v8 + 4) = v13;

    _os_log_impl(&dword_26BDFE000, v1, v2, "%s: processed cached commit, returning", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    sub_26BE6FF8C(v0 + 584);

    sub_26BE00258(v26, v27);
    sub_26BF7F05C(v23, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v25, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v22, &qword_28045E8E0, &unk_26C0204E0);
    v14 = v24;
  }

  else
  {
    sub_26BE6FF8C(v0 + 584);

    sub_26BE00258(v26, v27);
    sub_26BF7F05C(v7, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v5, &qword_28045E8E0, &unk_26C0204E0);
    v14 = v4;
  }

  sub_26BF7F05C(v14, type metadata accessor for MLS.MLSMessage);
  v15 = *(v0 + 377);
  v16 = *(v0 + 2800);
  v17 = *(v0 + 371);
  v18 = *(v0 + 2376);
  v19 = *(v0 + 2784);
  *v18 = *(v0 + 2768);
  *(v18 + 16) = v19;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  *(v18 + 48) = v15;
  *(v18 + 113) = 3;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_26BF45868()
{
  *(*v1 + 2848) = v0;

  if (v0)
  {
    v2 = sub_26BF4B834;
  }

  else
  {
    v2 = sub_26BF4597C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF4597C()
{
  v23 = v0;
  swift_retain_n();
  v1 = sub_26C009A3C();
  v2 = sub_26C00AA1C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[336];
  v5 = v0[335];
  v6 = v0[333];
  v7 = v0[323];
  v8 = v0[314];
  if (v3)
  {
    v9 = swift_slowAlloc();
    v21 = v6;
    v22 = swift_slowAlloc();
    v10 = v22;
    *v9 = 136315138;

    v20 = v7;
    v11 = sub_26BE3D034();
    v19 = v8;
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, &v22);

    *(v9 + 4) = v14;

    _os_log_impl(&dword_26BDFE000, v1, v2, "%s: advanced to new state", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
    sub_26BE6FF8C((v0 + 73));

    sub_26BE00258(v5, v4);
    sub_26BF7F05C(v19, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v20, &qword_28045E8E0, &unk_26C0204E0);
    v15 = v21;
  }

  else
  {
    sub_26BE6FF8C((v0 + 73));

    sub_26BE00258(v5, v4);
    sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v7, &qword_28045E8E0, &unk_26C0204E0);
    v15 = v6;
  }

  sub_26BF7F05C(v15, type metadata accessor for MLS.MLSMessage);
  v16 = v0[297];
  *v16 = 1;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 97) = 0u;
  *(v16 + 113) = 4;

  v17 = v0[1];

  return v17();
}

uint64_t sub_26BF45D64()
{
  *(*v1 + 2872) = v0;

  if (v0)
  {
    v2 = sub_26BF4BA78;
  }

  else
  {
    v2 = sub_26BF45E78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF45E78()
{
  v437 = v0;
  v1 = v0;
  v2 = v0 + 47;
  v3 = v0[359];
  v4 = v0[337];
  v5 = v0[333];
  v6 = v0[316];
  v7 = v1[305];
  sub_26BE2E1F0(v1[298] + v4, v6, &qword_28045E8D8, &qword_26C012580);
  MLS.GroupState.processIncomingMessage(_:cachedStateAndCommitMetadata:)(v5, v6, v7);
  if (v3)
  {
    sub_26BE2E258(v1[316], &qword_28045E8D8, &qword_26C012580);
    v1[295] = v3;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
    if (swift_dynamicCast())
    {
      if (*(v1 + 1288) == 20)
      {
        v9 = v1[302];
        v10 = v1[301];

        v11 = *(v1 + 294);
        v12 = *(v2 + 804);
        v13 = *(v1 + 296);
        v14 = *(v2 + 812);
        v1[288] = v10;
        v1[289] = v9;
        *(v1 + 95) = v11;
        *(v2 + 8) = v12;
        *(v1 + 93) = v13;
        *v2 = v14;
        v15 = *(v1 + 1189);
        v16 = swift_task_alloc();
        v1[406] = v16;
        *v16 = v1;
        v16[1] = sub_26BF4BC70;
        v17 = v1[311];
        v18 = v1[297];

        return sub_26BF40E64(v18, v17, v1 + 144, v1 + 380, v1 + 372, v15);
      }

      v27 = v1[333];
      v28 = v1[311];
      sub_26BE00258(v1[335], v1[336]);
      sub_26BF7F05C(v28, type metadata accessor for MLS.GroupState);
      sub_26BF7F05C(v27, type metadata accessor for MLS.MLSMessage);
      sub_26BE2DC9C((v1 + 147));
    }

    else
    {
      v25 = v1[333];
      v26 = v1[311];
      sub_26BE00258(v1[335], v1[336]);
      sub_26BF7F05C(v26, type metadata accessor for MLS.GroupState);
      sub_26BF7F05C(v25, type metadata accessor for MLS.MLSMessage);
    }

    goto LABEL_11;
  }

  v20 = v1[311];
  v21 = v1[308];
  v22 = v1[306];
  v23 = v1[305];
  v24 = v1[298];
  sub_26BE2E258(v1[316], &qword_28045E8D8, &qword_26C012580);
  sub_26BF7F124(v23, v22, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BE038A8(v20 + *(v21 + 56), (v1 + 236));
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v24 + 112));
  sub_26BE03890(v1 + 118, v24 + 112);
  swift_endAccess();
  MLS.GroupState.credential.getter(&v429);
  v30 = v1[306];
  v31 = v1[304];
  v32 = v1[298];
  v33 = *(v32 + 56);
  v34 = *(v32 + 64);
  *(v32 + 56) = v429;
  sub_26BE0489C(v33, v34);
  sub_26BF7F0BC(v30, v31, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v52 = v1[310];
      v53 = v1[304];
      v54 = v1[298];
      v55 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E740, &unk_26C011540) + 48);
      v56 = *v55;
      v1[388] = *v55;
      v413 = *(v55 + 8);
      v1[389] = v413;
      osloga = *(v55 + 16);
      v1[390] = osloga;
      v57 = *(v55 + 24);
      v1[391] = v57;
      v416 = *(v55 + 32);
      v406 = *(v55 + 40);
      v403 = *(v55 + 48);
      sub_26BF7F124(v53, v52, type metadata accessor for MLS.GroupState);
      v58 = *(v1 + 568);
      v59 = v1;
      v60 = v1[285];
      v59[392] = v60;
      v61 = *(v54 + 152);
      v62 = *(v54 + 24);
      v388 = v54;
      swift_retain_n();
      v63 = sub_26C009A3C();
      v394 = sub_26C00AA1C();
      v410 = v59;
      if (os_log_type_enabled(v63, v394))
      {
        v391 = v57;
        v64 = swift_slowAlloc();
        v386 = swift_slowAlloc();
        *&v424 = v386;
        *v64 = 136315394;

        v65 = sub_26BE3D034();
        logb = v63;
        v66 = v62;
        v67 = v60;
        v68 = v58;
        v69 = v61;
        v70 = v56;
        v72 = v71;

        v73 = sub_26BE29740(v65, v72, &v424);
        v56 = v70;
        v61 = v69;
        v58 = v68;
        v60 = v67;
        v62 = v66;

        *(v64 + 4) = v73;

        *(v64 + 12) = 2080;
        LODWORD(v429) = v58;
        *(&v429 + 1) = v60;
        v74 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
        v76 = sub_26BE29740(v74, v75, &v424);

        *(v64 + 14) = v76;
        _os_log_impl(&dword_26BDFE000, logb, v394, "%s: received commit for %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v386, -1, -1);
        v77 = v64;
        v57 = v391;
        MEMORY[0x26D69A4E0](v77, -1, -1);
      }

      else
      {
      }

      v99 = v58 == v61 && v60 == v62;
      v100 = v61 >= v58;
      v101 = v413;
      v102 = v416;
      v103 = v406;
      if (!v100 || v99)
      {
        v111 = v410;
        v112 = v403;
        if (v403)
        {
          v395 = v56;
          v113 = v57;
          v114 = v410[338];
          v115 = v410[319];
          v116 = v410[315];
          sub_26BE2E1F0(v410[298] + v410[337], v116, &qword_28045E8D8, &qword_26C012580);
          LODWORD(v115) = v114(v116, 1, v115);
          sub_26BE2E258(v116, &qword_28045E8D8, &qword_26C012580);
          if (v115 == 1)
          {
            swift_retain_n();
            v117 = sub_26C009A3C();
            v118 = sub_26C00AA0C();
            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              *&v429 = v120;
              *v119 = 136315138;

              v121 = sub_26BE3D034();
              v123 = v122;

              v124 = sub_26BE29740(v121, v123, &v429);
              v101 = v413;

              *(v119 + 4) = v124;

              _os_log_impl(&dword_26BDFE000, v117, v118, "%s: Committer was self, but cachedStateAndCommitMetadata was already nil", v119, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v120);
              MEMORY[0x26D69A4E0](v120, -1, -1);
              MEMORY[0x26D69A4E0](v119, -1, -1);
            }

            else
            {
            }
          }

          v193 = v410[337];
          v194 = v410[317];
          v195 = v410[298];
          (*(v410[320] + 56))(v194, 1, 1, v410[319]);
          swift_beginAccess();
          sub_26BE7170C(v194, v195 + v193, &qword_28045E8D8, &qword_26C012580);
          swift_endAccess();
          v57 = v113;
          v56 = v395;
          v102 = v416;
          v103 = v406;
          v112 = v403;
        }

        v196 = v410[311];
        v197 = v410[310];
        *&v198 = v56;
        *(&v198 + 1) = v101;
        *&v199 = osloga;
        *(&v199 + 1) = v57;
        *v407 = v199;
        v429 = v198;
        v430 = v199;
        *v420 = v198;
        LOBYTE(v431) = v102;
        *(&v431 + 1) = v103;
        LOBYTE(v432) = v112;
        v200 = v112;
        sub_26BF4D038(v197, v196, &v429);
        v429 = *v420;
        v430 = *v407;
        LOBYTE(v431) = v102;
        *(&v431 + 1) = v103;
        LOBYTE(v432) = v200;
        sub_26BF4E118(&v429, &v424);
        v201 = v425;
        *(v2 + 173) = v424;
        v202 = v410[311];
        v203 = v410[308];
        *(v2 + 174) = v201;
        *(v2 + 2) = v426;
        v410[397] = v427;
        *(v2 + 3) = v428;
        v204 = *(v202 + *(v203 + 40));
        v205 = sub_26BE81FE0(v204);
        if ((v205 & 0x100000000) != 0)
        {
          LODWORD(v205) = sub_26BE4126C();
        }

        v206 = v410[311];
        *(v388 + 152) = v205;
        v421 = *(v206 + 24);
        *(v388 + 24) = v421;
        swift_retain_n();
        v207 = sub_26C009A3C();
        v208 = sub_26C00AA1C();
        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          *&v429 = v210;
          *v209 = 136315138;

          v211 = sub_26BE3D034();
          v213 = v212;

          v214 = sub_26BE29740(v211, v213, &v429);

          *(v209 + 4) = v214;

          _os_log_impl(&dword_26BDFE000, v207, v208, "%s: received commit", v209, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v210);
          MEMORY[0x26D69A4E0](v210, -1, -1);
          v215 = v209;
          v111 = v410;
          MEMORY[0x26D69A4E0](v215, -1, -1);
        }

        else
        {
        }

        v216 = v111[310];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
        v111[398] = v217;
        v218 = v111;
        v219 = *(*(v217 - 8) + 72);
        v220 = *(*(v217 - 8) + 80);
        v218[413] = v220;
        v221 = (v220 + 32) & ~v220;
        v109 = swift_allocObject();
        *(v218 + 399) = v109;
        *(v109 + 16) = xmmword_26C0125B0;
        v222 = v109 + v221;
        v223 = sub_26BE81FE0(*(v216 + *(v203 + 40)));
        if ((v223 & 0x100000000) != 0)
        {
          LODWORD(v223) = sub_26BE4126C();
        }

        v224 = v410[310];
        v225 = v410[309];
        v226 = v410[308];
        v227 = *(v217 + 48);
        v228 = *(v224 + 24);
        *v222 = v223;
        *(v222 + 8) = v228;
        sub_26BF7F0BC(v224, v222 + v227, type metadata accessor for MLS.GroupState);
        v229 = *(v225 + 56);
        v229(v222 + v227, 0, 1, v226);
        v230 = sub_26BE81FE0(v204);
        if ((v230 & 0x100000000) != 0)
        {
          LODWORD(v230) = sub_26BE4126C();
        }

        v231 = v410[311];
        v232 = v410[308];
        v233 = v222 + v219;
        v234 = *(v217 + 48);
        *v233 = v230;
        *(v233 + 8) = v421;
        sub_26BF7F0BC(v231, v233 + v234, type metadata accessor for MLS.GroupState);
        v229(v233 + v234, 0, 1, v232);
        v235 = swift_task_alloc();
        v410[400] = v235;
        *v235 = v410;
        v235[1] = sub_26BF4A878;
      }

      else
      {
        v104 = v410[310];
        v105 = v410[308];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
        v410[402] = v106;
        v107 = *(*(v106 - 8) + 80);
        *(v410 + 443) = v107;
        v108 = (v107 + 32) & ~v107;
        v109 = swift_allocObject();
        v410[403] = v109;
        *(v109 + 16) = xmmword_26C011280;
        v110 = sub_26BE81FE0(*(v104 + *(v105 + 40)));
        if ((v110 & 0x100000000) != 0)
        {
          LODWORD(v110) = sub_26BE4126C();
        }

        v164 = v109 + v108;
        v165 = v410[310];
        v166 = v410[309];
        v167 = v410[308];
        v168 = *(v106 + 48);
        v169 = *(v165 + 24);
        *v164 = v110;
        *(v164 + 8) = v169;
        sub_26BF7F0BC(v165, v164 + v168, type metadata accessor for MLS.GroupState);
        (*(v166 + 56))(v164 + v168, 0, 1, v167);
        v170 = swift_task_alloc();
        v410[404] = v170;
        *v170 = v410;
        v170[1] = sub_26BF4ACF8;
      }

      goto LABEL_71;
    }

    swift_retain_n();
    v89 = sub_26C009A3C();
    v90 = sub_26C00AA1C();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v429 = v92;
      *v91 = 136315138;

      v93 = sub_26BE3D034();
      v95 = v94;

      v96 = sub_26BE29740(v93, v95, &v429);

      *(v91 + 4) = v96;

      _os_log_impl(&dword_26BDFE000, v89, v90, "%s: received proposal", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x26D69A4E0](v92, -1, -1);
      MEMORY[0x26D69A4E0](v91, -1, -1);
    }

    else
    {
    }

    v126 = v1[311];
    v127 = v1[308];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    v1[384] = v128;
    v129 = *(*(v128 - 8) + 80);
    *(v1 + 383) = v129;
    v130 = (v129 + 32) & ~v129;
    v109 = swift_allocObject();
    v1[385] = v109;
    *(v109 + 16) = xmmword_26C011280;
    v131 = sub_26BE81FE0(*(v126 + *(v127 + 40)));
    if ((v131 & 0x100000000) != 0)
    {
      LODWORD(v131) = sub_26BE4126C();
    }

    v150 = v109 + v130;
    v151 = v1[311];
    v152 = v1[309];
    v153 = v1[308];
    v154 = *(v128 + 48);
    v155 = *(v151 + 24);
    *v150 = v131;
    *(v150 + 8) = v155;
    sub_26BF7F0BC(v151, v150 + v154, type metadata accessor for MLS.GroupState);
    (*(v152 + 56))(v150 + v154, 0, 1, v153);
    v156 = swift_task_alloc();
    v1[386] = v156;
    *v156 = v1;
    v157 = sub_26BF4A0B4;
  }

  else if (EnumCaseMultiPayload)
  {
    v78 = v1[304];
    v79 = *v78;
    v1[378] = *(v78 + 1);
    v1[379] = *(v78 + 2);
    swift_retain_n();
    v80 = sub_26C009A3C();
    v81 = sub_26C00AA1C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v429 = v83;
      *v82 = 136315394;

      v417 = v79;
      v84 = sub_26BE3D034();
      v85 = v1;
      v87 = v86;

      v88 = sub_26BE29740(v84, v87, &v429);
      v1 = v85;

      *(v82 + 4) = v88;
      v79 = v417;

      *(v82 + 12) = 1024;
      *(v82 + 14) = v417;
      _os_log_impl(&dword_26BDFE000, v80, v81, "%s: received signed message from index %u", v82, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x26D69A4E0](v83, -1, -1);
      MEMORY[0x26D69A4E0](v82, -1, -1);
    }

    else
    {
    }

    v125 = v1[311];
    LODWORD(v429) = v79;
    sub_26BF35930(v125, &v429, v1 + 111);
    v144 = v1[311];
    v145 = v1[308];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    v1[380] = v146;
    v147 = *(*(v146 - 8) + 80);
    *(v1 + 353) = v147;
    v148 = (v147 + 32) & ~v147;
    v109 = swift_allocObject();
    v1[381] = v109;
    *(v109 + 16) = xmmword_26C011280;
    v149 = sub_26BE81FE0(*(v144 + *(v145 + 40)));
    if ((v149 & 0x100000000) != 0)
    {
      LODWORD(v149) = sub_26BE4126C();
    }

    v171 = v109 + v148;
    v172 = v1[311];
    v173 = v1[309];
    v174 = v1[308];
    v175 = *(v146 + 48);
    v176 = *(v172 + 24);
    *v171 = v149;
    *(v171 + 8) = v176;
    sub_26BF7F0BC(v172, v171 + v175, type metadata accessor for MLS.GroupState);
    (*(v173 + 56))(v171 + v175, 0, 1, v174);
    v156 = swift_task_alloc();
    v1[382] = v156;
    *v156 = v1;
    v157 = sub_26BF49CD0;
  }

  else
  {
    v36 = v1[304];
    v415 = *v36;
    v37 = *(v36 + 1);
    v1[360] = v37;
    v38 = *(v36 + 2);
    v1[361] = v38;
    v39 = *(v36 + 3);
    v1[362] = v39;
    v40 = *(v36 + 4);
    v1[363] = v40;
    v409 = *(v36 + 5);
    v1[364] = v409;
    v412 = *(v36 + 6);
    v1[365] = v412;
    oslog = v36[14];
    v41 = *(v36 + 60);
    swift_retain_n();
    v42 = sub_26C009A3C();
    v43 = sub_26C00AA1C();
    v402 = v37;
    v405 = v38;
    v393 = v41;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v390 = swift_slowAlloc();
      *&v429 = v390;
      *v44 = 136315394;

      v45 = sub_26BE3D034();
      v46 = v39;
      v47 = v40;
      v48 = v1;
      v50 = v49;

      v51 = sub_26BE29740(v45, v50, &v429);
      v1 = v48;
      v40 = v47;
      v39 = v46;

      *(v44 + 4) = v51;

      *(v44 + 12) = 1024;
      *(v44 + 14) = v415;
      _os_log_impl(&dword_26BDFE000, v42, v43, "%s: received application message from index %u", v44, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v390);
      MEMORY[0x26D69A4E0](v390, -1, -1);
      MEMORY[0x26D69A4E0](v44, -1, -1);
    }

    else
    {
    }

    v97 = v1[311];
    LODWORD(v429) = v415;
    sub_26BF35930(v97, &v429, v1 + 229);
    v389 = v39;
    v132 = *(v1[298] + 48);
    swift_beginAccess();
    v133 = *(v132 + 50);
    swift_retain_n();
    v134 = sub_26C009A3C();
    v135 = sub_26C00AA1C();
    v136 = os_log_type_enabled(v134, v135);
    if (v133 == 1)
    {
      if (v136)
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v429 = v138;
        *v137 = 136315138;

        v139 = sub_26BE3D034();
        v418 = v40;
        v140 = v1;
        v142 = v141;

        v143 = sub_26BE29740(v139, v142, &v429);
        v1 = v140;
        v40 = v418;

        *(v137 + 4) = v143;

        _os_log_impl(&dword_26BDFE000, v134, v135, "%s: received application message and using SecretPayload", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v138);
        MEMORY[0x26D69A4E0](v138, -1, -1);
        MEMORY[0x26D69A4E0](v137, -1, -1);
      }

      else
      {
      }

      sub_26BE71DBC(v402, v405, &v429);
      v377 = v429;
      log = WORD1(v429);
      v419 = DWORD1(v429);
      v184 = *(&v429 + 1);
      v183 = v430;
      v1[366] = *(&v429 + 1);
      v392 = v183;
      v1[367] = v183;
      sub_26BE295A0(v132 + 40, (v1 + 2));
      v185 = *(v1 + 370);
      v387 = v184;
      if (v185 == 2)
      {
        v1[244] = &type metadata for SwiftMLSFeatureFlags;
        v1[245] = sub_26BE295D8();
        *(v1 + 1928) = 3;
        v186 = sub_26C00929C();
        __swift_destroy_boxed_opaque_existential_1(v1 + 241);
        if (v186)
        {
          sub_26BE29710((v1 + 2));
LABEL_90:
          swift_retain_n();
          v238 = sub_26C009A3C();
          v239 = sub_26C00AA1C();
          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            v241 = swift_slowAlloc();
            *&v429 = v241;
            *v240 = 136315138;

            v242 = sub_26BE3D034();
            v243 = v40;
            v244 = v1;
            v246 = v245;

            v247 = sub_26BE29740(v242, v246, &v429);
            v1 = v244;
            v40 = v243;

            *(v240 + 4) = v247;

            _os_log_impl(&dword_26BDFE000, v238, v239, "%s: validating key generation", v240, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v241);
            MEMORY[0x26D69A4E0](v241, -1, -1);
            v248 = v240;
            v184 = v387;
            MEMORY[0x26D69A4E0](v248, -1, -1);
          }

          else
          {
          }

          v249 = oslog;
          if (oslog == v419)
          {
            v250 = v393;
          }

          else
          {
            v250 = 1;
          }

          sub_26BE00608(v184, v392);

          sub_26BE00608(v184, v392);
          oslogb = sub_26C009A3C();
          if (v250)
          {
            v251 = sub_26C00AA0C();
            if (os_log_type_enabled(oslogb, v251))
            {
              loga = v251;
              v252 = v184;
              v253 = swift_slowAlloc();
              v378 = swift_slowAlloc();
              *&v429 = v378;
              *v253 = 136315650;

              v254 = sub_26BE3D034();
              v256 = v255;

              v257 = sub_26BE29740(v254, v256, &v429);

              *(v253 + 4) = v257;

              *(v253 + 12) = 1024;
              v258 = v392;
              sub_26BE00258(v252, v392);
              *(v253 + 14) = v419;
              sub_26BE00258(v252, v392);
              *(v253 + 18) = 2080;
              if (v393)
              {
                v259 = 0xE300000000000000;
                v260 = 7104878;
              }

              else
              {
                *(v1 + 97) = v249;
                v260 = sub_26C00AEFC();
                v259 = v366;
              }

              v367 = sub_26BE29740(v260, v259, &v429);

              *(v253 + 20) = v367;
              _os_log_impl(&dword_26BDFE000, oslogb, loga, "%s: received application message with generation in the secret payload of %u, but generation used was %s", v253, 0x1Cu);
              swift_arrayDestroy();
              MEMORY[0x26D69A4E0](v378, -1, -1);
              MEMORY[0x26D69A4E0](v253, -1, -1);

              v268 = v387;
            }

            else
            {
              v258 = v392;
              sub_26BE00258(v184, v392);

              sub_26BE00258(v184, v392);

              v268 = v184;
            }

            v368 = v1[336];
            v369 = v1[335];
            oslogd = v1[333];
            v370 = v1[311];
            v371 = v1[306];
            *(v1 + 1056) = 50;
            *(v1 + 1168) = 0;
            sub_26BE7D22C((v1 + 132));
            sub_26BE2DC9C((v1 + 132));
            sub_26BE01654();
            swift_allocError();
            *v372 = 50;
            v372[112] = 0;
            swift_willThrow();
            sub_26BE00258(v402, v405);
            sub_26BE00258(v268, v258);
            sub_26BE132D4(v409, v412);
            sub_26BE132D4(v389, v40);
            sub_26BE00258(v369, v368);
            sub_26BE2DBC4((v1 + 229));
            sub_26BF7F05C(v371, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
            sub_26BF7F05C(v370, type metadata accessor for MLS.GroupState);
            sub_26BF7F05C(oslogd, type metadata accessor for MLS.MLSMessage);
LABEL_11:

            v29 = v1[1];

            return v29();
          }

          v261 = sub_26C00AA1C();
          if (os_log_type_enabled(oslogb, v261))
          {
            v262 = swift_slowAlloc();
            v263 = swift_slowAlloc();
            *&v429 = v263;
            *v262 = 136315394;

            v264 = sub_26BE3D034();
            v266 = v265;

            v267 = sub_26BE29740(v264, v266, &v429);

            *(v262 + 4) = v267;

            *(v262 + 12) = 1024;
            sub_26BE00258(v387, v392);
            *(v262 + 14) = v249;
            sub_26BE00258(v387, v392);
            _os_log_impl(&dword_26BDFE000, oslogb, v261, "%s: key generation validated, was %u", v262, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v263);
            MEMORY[0x26D69A4E0](v263, -1, -1);
            MEMORY[0x26D69A4E0](v262, -1, -1);
          }

          else
          {
            sub_26BE00258(v387, v392);

            sub_26BE00258(v387, v392);
          }

          v236 = v389;
          goto LABEL_105;
        }

        v237 = os_variant_allows_internal_security_policies();
        sub_26BE29710((v1 + 2));
        v236 = v389;
        if ((v237 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        sub_26BE29710((v1 + 2));
        v236 = v389;
        if (v185)
        {
          goto LABEL_90;
        }
      }

LABEL_105:
      v269 = v236;
      v270 = v40;
      if (v40 >> 60 == 15)
      {
        swift_retain_n();
        v271 = sub_26C009A3C();
        v272 = sub_26C00AA0C();
        if (os_log_type_enabled(v271, v272))
        {
          v273 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          *&v429 = v274;
          *v273 = 136315138;

          v275 = sub_26BE3D034();
          v276 = v40;
          v277 = v1;
          v279 = v278;

          v280 = sub_26BE29740(v275, v279, &v429);
          v1 = v277;
          v40 = v276;
          v236 = v389;

          *(v273 + 4) = v280;

          _os_log_impl(&dword_26BDFE000, v271, v272, "%s: received an application message messageID (likely missing authenticated data), when expecting it; proceeding with empty messageID", v273, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v274);
          MEMORY[0x26D69A4E0](v274, -1, -1);
          MEMORY[0x26D69A4E0](v273, -1, -1);
        }

        else
        {
        }

        v269 = 0;
        v270 = 0xC000000000000000;
      }

      v1[369] = v270;
      v1[368] = v269;
      if (v412 >> 60 == 15)
      {
        v281 = 0;
      }

      else
      {
        v281 = v409;
      }

      v282 = 0xC000000000000000;
      if (v412 >> 60 != 15)
      {
        v282 = v412;
      }

      v396 = v281;
      oslogc = v282;

      if (log == 2)
      {
        v375 = v270;
        v380 = v269;

        sub_26BE2BAE8(v236, v40);
        sub_26BE2BAE8(v409, v412);
        v324 = sub_26C009A3C();
        v325 = sub_26C00AA1C();
        v374 = v1 + 117;
        if (os_log_type_enabled(v324, v325))
        {
          v326 = swift_slowAlloc();
          v327 = swift_slowAlloc();
          *&v429 = v327;
          *v326 = 136315138;

          v328 = sub_26BE3D034();
          v329 = v1;
          v331 = v330;

          v332 = sub_26BE29740(v328, v331, &v429);
          v1 = v329;

          *(v326 + 4) = v332;

          _os_log_impl(&dword_26BDFE000, v324, v325, "%s: received a double-wrapped 1:1 encrypted message", v326, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v327);
          MEMORY[0x26D69A4E0](v327, -1, -1);
          v333 = v326;
          v334 = v387;
          MEMORY[0x26D69A4E0](v333, -1, -1);

          v336 = v392;
          v335 = v396;
        }

        else
        {

          v336 = v392;
          v335 = v396;
          v334 = v387;
        }

        v345 = v1[311];
        LOWORD(v424) = v377;
        WORD1(v424) = 2;
        DWORD1(v424) = v419;
        *(&v424 + 1) = v334;
        *&v425 = v336;
        sub_26BF50BC8(v345, &v424, v380, v375, v335, oslogc, &v429);
        *(v374 + 56) = v436;
        v351 = v434;
        *(v374 + 4) = v433;
        *(v374 + 5) = v351;
        *(v374 + 6) = v435;
        v352 = v430;
        *v374 = v429;
        *(v374 + 1) = v352;
        v353 = v432;
        *(v374 + 2) = v431;
        *(v374 + 3) = v353;
      }

      else
      {
        if (log != 1)
        {
          v376 = v270;
          v381 = v269;
          sub_26BE00608(v387, v392);

          sub_26BE00608(v387, v392);
          sub_26BE2BAE8(v236, v40);
          sub_26BE2BAE8(v409, v412);
          v337 = sub_26C009A3C();
          v338 = sub_26C00AA0C();
          if (os_log_type_enabled(v337, v338))
          {
            v339 = swift_slowAlloc();
            v340 = swift_slowAlloc();
            *&v429 = v340;
            *v339 = 136315394;

            v423 = v337;
            v341 = sub_26BE3D034();
            v343 = v342;

            v344 = sub_26BE29740(v341, v343, &v429);

            *(v339 + 4) = v344;

            *(v339 + 12) = 512;
            sub_26BE00258(v387, v392);
            *(v339 + 14) = log;
            sub_26BE00258(v387, v392);
            _os_log_impl(&dword_26BDFE000, v423, v338, "%s: Unsupported secret payload type: %hu", v339, 0x10u);
            __swift_destroy_boxed_opaque_existential_1(v340);
            MEMORY[0x26D69A4E0](v340, -1, -1);
            MEMORY[0x26D69A4E0](v339, -1, -1);
          }

          else
          {
            sub_26BE00258(v387, v392);

            sub_26BE00258(v387, v392);
          }

          v346 = v1[336];
          v347 = v1[335];
          v348 = v1[333];
          logc = v1[311];
          v349 = v1[306];
          *(v1 + 1536) = 5;
          *(v1 + 1648) = 9;
          sub_26BE7D22C((v1 + 192));
          sub_26BE2DC9C((v1 + 192));
          sub_26BE01654();
          swift_allocError();
          *v350 = 5;
          v350[112] = 9;
          swift_willThrow();
          sub_26BE00258(v402, v405);
          sub_26BE00258(v387, v392);
          sub_26BE00258(v396, oslogc);
          sub_26BE00258(v381, v376);
          sub_26BE132D4(v409, v412);
          sub_26BE132D4(v389, v40);
          sub_26BE00258(v347, v346);
          sub_26BE2DBC4((v1 + 229));
          sub_26BF7F05C(v349, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
          sub_26BF7F05C(logc, type metadata accessor for MLS.GroupState);
          sub_26BF7F05C(v348, type metadata accessor for MLS.MLSMessage);
          goto LABEL_11;
        }

        v373 = (v1 + 117);
        sub_26BE00608(v269, v270);
        v283 = oslogc;
        sub_26BE00608(v396, oslogc);
        v284 = v396;

        sub_26BE00608(v269, v270);
        sub_26BE00608(v396, oslogc);
        sub_26BE2BAE8(v236, v40);
        sub_26BE2BAE8(v409, v412);
        v285 = sub_26C009A3C();
        v286 = sub_26C00AA1C();
        if (os_log_type_enabled(v285, v286))
        {
          v411 = v1;
          v414 = v1 + 292;
          v379 = v269;
          v287 = swift_slowAlloc();
          v422 = swift_slowAlloc();
          *&v429 = v422;
          *v287 = 136315650;

          v288 = sub_26BE3D034();
          v289 = v270;
          v291 = v290;

          v292 = sub_26BE29740(v288, v291, &v429);

          *(v287 + 4) = v292;

          *(v287 + 12) = 2080;
          v1[293] = sub_26BF87240(v379, v289);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
          sub_26BE3C0F4();
          v408 = v285;
          v293 = sub_26C00A3EC();
          v295 = v294;

          v296 = sub_26BE411D0(16, v293, v295);
          v298 = v297;
          v404 = v286;
          v300 = v299;
          v302 = v301;
          v1 = v411;

          v303 = MEMORY[0x26D698FE0](v296, v298, v300, v302);
          v305 = v304;

          v306 = sub_26BE29740(v303, v305, &v429);

          *(v287 + 14) = v306;
          sub_26BE00258(v379, v289);
          sub_26BE00258(v379, v289);
          *(v287 + 22) = 2080;
          *v414 = sub_26BF87240(v396, oslogc);
          v307 = sub_26C00A3EC();
          v309 = v308;

          v310 = sub_26BE411D0(16, v307, v309);
          v312 = v311;
          v314 = v313;
          v316 = v315;
          v283 = oslogc;

          v317 = v314;
          v318 = v387;
          v319 = MEMORY[0x26D698FE0](v310, v312, v317, v316);
          v321 = v320;

          v322 = sub_26BE29740(v319, v321, &v429);
          v284 = v396;

          *(v287 + 24) = v322;
          sub_26BE00258(v396, oslogc);
          sub_26BE00258(v396, oslogc);
          _os_log_impl(&dword_26BDFE000, v408, v404, "%s: returning application message with details: messageID %s, originalMessageID %s", v287, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D69A4E0](v422, -1, -1);
          v323 = v287;
          v269 = v379;
          MEMORY[0x26D69A4E0](v323, -1, -1);
        }

        else
        {

          sub_26BE00258(v269, v270);
          sub_26BE00258(v269, v270);
          sub_26BE00258(v396, oslogc);
          sub_26BE00258(v396, oslogc);

          v289 = v270;
          v318 = v387;
        }

        sub_26BE2DB68((v1 + 229), v373);
        v1[124] = v318;
        v1[125] = v392;
        v1[126] = v269;
        v1[127] = v289;
        v1[128] = v284;
        v1[129] = v283;
        *(v1 + 1040) = 1;
        *(v1 + 261) = 0;
        *(v2 + 672) = 1;
        *(v1 + 1049) = 1;
        sub_26BE00608(v318, v392);
        sub_26BE00608(v269, v289);
        sub_26BE00608(v284, v283);
      }

      v354 = v1[311];
      v355 = v1[308];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
      v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
      v1[370] = v356;
      v357 = *(*(v356 - 8) + 80);
      *(v1 + 293) = v357;
      v358 = (v357 + 32) & ~v357;
      v109 = swift_allocObject();
      v1[371] = v109;
      *(v109 + 16) = xmmword_26C011280;
      v359 = sub_26BE81FE0(*(v354 + *(v355 + 40)));
      if ((v359 & 0x100000000) != 0)
      {
        LODWORD(v359) = sub_26BE4126C();
      }

      v360 = v109 + v358;
      v361 = v1[311];
      v362 = v1[309];
      v363 = v1[308];
      v364 = *(v356 + 48);
      v365 = *(v361 + 24);
      *v360 = v359;
      *(v360 + 8) = v365;
      sub_26BF7F0BC(v361, v360 + v364, type metadata accessor for MLS.GroupState);
      (*(v362 + 56))(v360 + v364, 0, 1, v363);
      v156 = swift_task_alloc();
      v1[372] = v156;
      *v156 = v1;
      v157 = sub_26BF48DE0;
      goto LABEL_70;
    }

    if (v136)
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v429 = v159;
      *v158 = 136315138;

      v160 = sub_26BE3D034();
      v162 = v161;

      v163 = sub_26BE29740(v160, v162, &v429);

      *(v158 + 4) = v163;

      _os_log_impl(&dword_26BDFE000, v134, v135, "%s: received application message, not using SecretPayload", v158, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v159);
      MEMORY[0x26D69A4E0](v159, -1, -1);
      MEMORY[0x26D69A4E0](v158, -1, -1);
    }

    else
    {
    }

    v177 = v1[311];
    v178 = v1[308];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    v1[374] = v179;
    v180 = *(*(v179 - 8) + 80);
    *(v1 + 323) = v180;
    v181 = (v180 + 32) & ~v180;
    v109 = swift_allocObject();
    v1[375] = v109;
    *(v109 + 16) = xmmword_26C011280;
    v182 = sub_26BE81FE0(*(v177 + *(v178 + 40)));
    if ((v182 & 0x100000000) != 0)
    {
      LODWORD(v182) = sub_26BE4126C();
    }

    v187 = v109 + v181;
    v188 = v1[311];
    v189 = v1[309];
    v190 = v1[308];
    v191 = *(v179 + 48);
    v192 = *(v188 + 24);
    *v187 = v182;
    *(v187 + 8) = v192;
    sub_26BF7F0BC(v188, v187 + v191, type metadata accessor for MLS.GroupState);
    (*(v189 + 56))(v187 + v191, 0, 1, v190);
    v156 = swift_task_alloc();
    v1[376] = v156;
    *v156 = v1;
    v157 = sub_26BF49260;
  }

LABEL_70:
  v156[1] = v157;
LABEL_71:

  return sub_26BF394D4(v109);
}

uint64_t sub_26BF48DE0()
{
  *(*v1 + 2984) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF4C1BC;
  }

  else
  {
    v2 = sub_26BF48F60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF48F60()
{
  v1 = *(v0 + 2952);
  v2 = *(v0 + 2944);
  v3 = *(v0 + 2928);
  v4 = *(v0 + 2920);
  v5 = *(v0 + 2912);
  v17 = *(v0 + 2936);
  v18 = *(v0 + 2896);
  v20 = *(v0 + 2904);
  v21 = *(v0 + 2688);
  v19 = *(v0 + 2680);
  v23 = *(v0 + 2488);
  v24 = *(v0 + 2664);
  v22 = *(v0 + 2448);
  v6 = *(v0 + 2376);
  if (v4 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 2912);
  }

  if (v4 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 2920);
  }

  sub_26BE00258(*(v0 + 2880), *(v0 + 2888));
  sub_26BE00258(v7, v8);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v3, v17);
  sub_26BE132D4(v5, v4);
  sub_26BE132D4(v18, v20);
  sub_26BE00258(v19, v21);
  sub_26BE2DBC4(v0 + 1832);
  sub_26BF7F05C(v22, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v23, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v24, type metadata accessor for MLS.MLSMessage);
  v9 = *(v0 + 984);
  v11 = *(v0 + 936);
  v10 = *(v0 + 952);
  *(v6 + 32) = *(v0 + 968);
  *(v6 + 48) = v9;
  *v6 = v11;
  *(v6 + 16) = v10;
  v13 = *(v0 + 1016);
  v12 = *(v0 + 1032);
  v14 = *(v0 + 1000);
  *(v6 + 112) = *(v0 + 1048);
  *(v6 + 80) = v13;
  *(v6 + 96) = v12;
  *(v6 + 64) = v14;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26BF49260()
{
  *(*v1 + 3016) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF4C498;
  }

  else
  {
    v2 = sub_26BF493E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF493E0()
{
  v104 = v0;
  v1 = (v0 + 1832);
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2904);

  if (v3 >> 60 == 15 || v2 >> 60 == 15)
  {

    v5 = sub_26C009A3C();
    v6 = sub_26C00AA1C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 2920);
    v9 = *(v0 + 2912);
    v95 = *(v0 + 2896);
    v97 = *(v0 + 2904);
    v10 = *(v0 + 2688);
    v11 = *(v0 + 2664);
    v99 = *(v0 + 2680);
    loga = *(v0 + 2488);
    v12 = *(v0 + 2448);
    if (v7)
    {
      v13 = swift_slowAlloc();
      v93 = v11;
      v14 = swift_slowAlloc();
      v103[0] = v14;
      *v13 = 136315138;

      v89 = v10;
      v91 = v12;
      v15 = sub_26BE3D034();
      v17 = v16;

      v18 = sub_26BE29740(v15, v17, v103);

      *(v13 + 4) = v18;

      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: returning application message", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D69A4E0](v14, -1, -1);
      v19 = v13;
      v1 = (v0 + 1832);
      MEMORY[0x26D69A4E0](v19, -1, -1);

      sub_26BE132D4(v9, v8);
      sub_26BE132D4(v95, v97);
      sub_26BE00258(v99, v89);
      sub_26BF7F05C(v91, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
      sub_26BF7F05C(loga, type metadata accessor for MLS.GroupState);
      v20 = v93;
    }

    else
    {

      sub_26BE132D4(v9, v8);

      sub_26BE132D4(v95, v97);
      sub_26BE00258(v99, v10);
      sub_26BF7F05C(v12, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
      sub_26BF7F05C(loga, type metadata accessor for MLS.GroupState);
      v20 = v11;
    }

    sub_26BF7F05C(v20, type metadata accessor for MLS.MLSMessage);
    v62 = 0;
    v63 = *(v0 + 2376);
    v64 = *(v0 + 2880);
    v65 = *v1;
    v66 = v1[1];
    v67 = v1[2];
    *(v63 + 48) = *(v1 + 6);
    *(v63 + 16) = v66;
    *(v63 + 32) = v67;
    *v63 = v65;
    *(v63 + 56) = v64;
  }

  else
  {
    v21 = *(v0 + 2912);
    v22 = *(v0 + 2896);
    sub_26BE2BAE8(v22, v3);
    sub_26BE2BAE8(v21, v2);

    sub_26BE2BAE8(v22, v3);
    sub_26BE2BAE8(v21, v2);
    v23 = sub_26C009A3C();
    v24 = sub_26C00AA1C();
    log = v23;
    if (os_log_type_enabled(v23, v24))
    {
      v87 = *(v0 + 2912);
      v88 = *(v0 + 2920);
      v26 = *(v0 + 2904);
      v27 = *(v0 + 2896);
      v84 = v27;
      v85 = v26;
      v92 = *(v0 + 2680);
      v94 = *(v0 + 2688);
      v98 = *(v0 + 2488);
      v100 = *(v0 + 2664);
      v96 = *(v0 + 2448);
      v28 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v103[0] = v90;
      *v28 = 136315650;

      v29 = sub_26BE3D034();
      v31 = v30;

      v32 = sub_26BE29740(v29, v31, v103);

      *(v28 + 4) = v32;

      *(v28 + 12) = 2080;
      *(v0 + 2352) = sub_26BF87240(v27, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE3C0F4();
      v33 = sub_26C00A3EC();
      v86 = v24;
      v35 = v34;

      v36 = sub_26BE411D0(16, v33, v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v43 = MEMORY[0x26D698FE0](v36, v38, v40, v42);
      v45 = v44;

      v46 = sub_26BE29740(v43, v45, v103);

      *(v28 + 14) = v46;
      sub_26BE132D4(v84, v85);
      sub_26BE132D4(v84, v85);
      *(v28 + 22) = 2080;
      *(v0 + 2368) = sub_26BF87240(v87, v88);
      v47 = sub_26C00A3EC();
      v49 = v48;

      v50 = sub_26BE411D0(16, v47, v49);
      v52 = v51;
      v54 = v53;
      v56 = v55;

      v57 = MEMORY[0x26D698FE0](v50, v52, v54, v56);
      v59 = v58;

      v60 = sub_26BE29740(v57, v59, v103);

      *(v28 + 24) = v60;
      sub_26BE132D4(v87, v88);
      sub_26BE132D4(v87, v88);
      _os_log_impl(&dword_26BDFE000, log, v86, "%s: returning application message with details: messageID %s, originalMessageID %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v90, -1, -1);
      MEMORY[0x26D69A4E0](v28, -1, -1);

      sub_26BE00258(v92, v94);
      sub_26BF7F05C(v96, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
      v61 = v98;
    }

    else
    {
      v68 = *(v0 + 2920);
      v69 = *(v0 + 2912);
      v70 = *(v0 + 2904);
      v71 = *(v0 + 2896);
      v72 = *(v0 + 2688);
      v73 = *(v0 + 2680);
      v100 = *(v0 + 2664);
      v74 = *(v0 + 2488);
      v75 = *(v0 + 2448);

      sub_26BE132D4(v69, v68);
      sub_26BE132D4(v69, v68);
      sub_26BE132D4(v71, v70);
      sub_26BE132D4(v71, v70);

      sub_26BE00258(v73, v72);
      sub_26BF7F05C(v75, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
      v61 = v74;
    }

    sub_26BF7F05C(v61, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v100, type metadata accessor for MLS.MLSMessage);
    v63 = *(v0 + 2376);
    v76 = *(v0 + 2880);
    v77 = *(v0 + 2896);
    v78 = *(v0 + 2912);
    v79 = *(v0 + 1832);
    v80 = *(v0 + 1848);
    v81 = *(v0 + 1864);
    *(v63 + 48) = *(v0 + 1880);
    *(v63 + 16) = v80;
    *(v63 + 32) = v81;
    *v63 = v79;
    *(v63 + 56) = v76;
    *(v63 + 72) = v77;
    *(v63 + 88) = v78;
    *(v63 + 104) = 0;
    *(v63 + 108) = 0;
    v62 = 1;
    *(v63 + 112) = 1;
  }

  *(v63 + 113) = v62;

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_26BF49CD0()
{
  *(*v1 + 3064) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF4C714;
  }

  else
  {
    v2 = sub_26BF49E50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF49E50()
{
  v1 = *(v0 + 3032);
  v2 = *(v0 + 3024);
  v3 = *(v0 + 2664);
  v4 = *(v0 + 2488);
  v5 = *(v0 + 2448);
  v6 = *(v0 + 2376);
  sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);
  v7 = *(v0 + 1808);
  v8 = *(v0 + 1824);
  v9 = *(v0 + 1776);
  *(v6 + 16) = *(v0 + 1792);
  *(v6 + 32) = v7;
  *v6 = v9;
  *(v6 + 48) = v8;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  *(v6 + 113) = 2;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26BF4A0B4()
{
  *(*v1 + 3096) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF4C968;
  }

  else
  {
    v2 = sub_26BF4A234;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF4A234()
{
  v34 = v0;
  v1 = *(v0 + 2384);
  if (*(v0 + 1052) == *(v1 + 152) && *(v0 + 2856) == *(v1 + 24))
  {
    v18 = *(v0 + 2664);
    v19 = *(v0 + 2488);
    v20 = *(v0 + 2448);
    v21 = *(v0 + 2376);
    sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
    sub_26BF7F05C(v20, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
    sub_26BF7F05C(v19, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v18, type metadata accessor for MLS.MLSMessage);
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 1024;

    v22 = *(v0 + 8);
  }

  else
  {
    swift_retain_n();
    v3 = sub_26C009A3C();
    v4 = sub_26C00AA0C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v5 = 136315650;

      v6 = sub_26BE3D034();
      v8 = v7;

      v9 = sub_26BE29740(v6, v8, &v31);

      *(v5 + 4) = v9;

      *(v5 + 12) = 2080;
      v10 = *(v0 + 2280);
      v32 = *(v0 + 2272);
      v33 = v10;
      v11 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v13 = sub_26BE29740(v11, v12, &v31);

      *(v5 + 14) = v13;
      *(v5 + 22) = 2080;
      v14 = *(v1 + 24);
      v32 = *(v1 + 152);
      v33 = v14;
      v15 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v17 = sub_26BE29740(v15, v16, &v31);

      *(v5 + 24) = v17;

      _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Received proposal for %s but currently at %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v30, -1, -1);
      MEMORY[0x26D69A4E0](v5, -1, -1);
    }

    else
    {

      v10 = *(v0 + 2856);
    }

    v23 = *(v0 + 2688);
    v24 = *(v0 + 2680);
    v25 = *(v0 + 2664);
    v26 = *(v0 + 2488);
    v27 = *(v0 + 2448);
    *(v0 + 1416) = *(v1 + 24);
    *(v0 + 1424) = v10;
    *(v0 + 1432) = 0;
    *(v0 + 1528) = 19;
    sub_26BE7D22C(v0 + 1416);
    sub_26BE2DC9C(v0 + 1416);
    sub_26BE01654();
    swift_allocError();
    *v28 = *(v1 + 24);
    *(v28 + 8) = v10;
    *(v28 + 16) = 0;
    *(v28 + 112) = 19;
    swift_willThrow();
    sub_26BE00258(v24, v23);
    sub_26BF7F05C(v27, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
    sub_26BF7F05C(v26, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v25, type metadata accessor for MLS.MLSMessage);

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_26BF4A878()
{
  *(*v1 + 3208) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {

    v2 = sub_26BF4CDEC;
  }

  else
  {
    v2 = sub_26BF4AA64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF4AA64()
{
  v13 = *(v0 + 379);
  v12 = *(v0 + 3176);
  v1 = *(v0 + 378);
  v2 = *(v0 + 3168);
  v3 = *(v0 + 3160);
  v4 = *(v0 + 2664);
  v5 = *(v0 + 2488);
  v6 = *(v0 + 2480);
  v7 = *(v0 + 2448);
  v8 = *(v0 + 2376);
  v11 = *(v0 + 3144);
  sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
  sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v7, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v4, type metadata accessor for MLS.MLSMessage);
  *v8 = v11;
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;
  *(v8 + 32) = v1;
  *(v8 + 40) = v12;
  *(v8 + 48) = v13;
  *(v8 + 113) = 3;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26BF4ACF8()
{
  *(*v1 + 3240) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {

    v2 = sub_26BF4CBA0;
  }

  else
  {
    v2 = sub_26BF4AEE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF4AEE4()
{
  v32 = v0;
  swift_retain_n();
  v1 = sub_26C009A3C();
  v2 = sub_26C00AA0C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 2384);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v5 = 136315650;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v29);

    *(v5 + 4) = v9;

    *(v5 + 12) = 2080;
    v10 = *(v0 + 2280);
    v30 = *(v0 + 2272);
    v31 = v10;
    v11 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v13 = sub_26BE29740(v11, v12, &v29);

    *(v5 + 14) = v13;
    *(v5 + 22) = 2080;
    v14 = *(v4 + 24);
    v30 = *(v4 + 152);
    v31 = v14;
    v15 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v17 = sub_26BE29740(v15, v16, &v29);

    *(v5 + 24) = v17;

    _os_log_impl(&dword_26BDFE000, v1, v2, "%s: Received commit for epoch %s but current epoch is %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v28, -1, -1);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }

  else
  {

    v10 = *(v0 + 3136);
  }

  v18 = *(v0 + 2688);
  v19 = *(v0 + 2680);
  v20 = *(v0 + 2664);
  v21 = *(v0 + 2488);
  v22 = *(v0 + 2480);
  v23 = *(v0 + 2448);
  v24 = *(v0 + 2384);
  *(v0 + 1296) = *(v24 + 24);
  *(v0 + 1304) = v10;
  *(v0 + 1312) = 0;
  *(v0 + 1408) = 19;
  sub_26BE7D22C(v0 + 1296);
  sub_26BE2DC9C(v0 + 1296);
  sub_26BE01654();
  swift_allocError();
  *v25 = *(v24 + 24);
  *(v25 + 8) = v10;
  *(v25 + 16) = 0;
  *(v25 + 112) = 19;
  swift_willThrow();
  sub_26BE00258(v19, v18);
  sub_26BF7F05C(v22, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v23, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v21, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v20, type metadata accessor for MLS.MLSMessage);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26BF4B398()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[333];
  v4 = v0[323];
  v5 = v0[314];
  sub_26BE6FF8C((v0 + 73));
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  sub_26BE2E258(v4, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);

  v6 = v0[1];

  return v6();
}