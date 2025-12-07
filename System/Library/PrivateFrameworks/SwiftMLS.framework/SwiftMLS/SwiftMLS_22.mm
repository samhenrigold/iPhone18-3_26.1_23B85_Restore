void sub_26BFB0958(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  while (1)
  {
    sub_26BF7ED2C(v3, &v78);
    sub_26BF7ED2C(v4, &v68);
    v6 = v78;
    v5 = v79;
    v8 = v68;
    v7 = v69;
    if ((v79 & 0x2000000000000000) != 0)
    {
      if ((v69 & 0x2000000000000000) == 0)
      {
        goto LABEL_79;
      }

      sub_26BE04890(v68, v69);
      sub_26BE04890(v6, v5);
      v14 = sub_26BFB0104(v6, v8);
      goto LABEL_34;
    }

    if ((v69 & 0x2000000000000000) != 0)
    {
      goto LABEL_79;
    }

    v9 = v79 >> 62;
    v10 = v69 >> 62;
    if (v79 >> 62 == 3)
    {
      v11 = 0;
      if (!v78 && v79 == 0xC000000000000000 && v69 >> 62 == 3)
      {
        v11 = 0;
        if (!v68 && v69 == 0xC000000000000000)
        {
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE0489C(0, 0xC000000000000000);
          v12 = 0;
          v13 = 0xC000000000000000;
          goto LABEL_38;
        }
      }
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        LODWORD(v11) = HIDWORD(v78) - v78;
        if (__OFSUB__(HIDWORD(v78), v78))
        {
          goto LABEL_86;
        }

        v11 = v11;
      }

      else
      {
        v16 = *(v78 + 16);
        v15 = *(v78 + 24);
        v17 = __OFSUB__(v15, v16);
        v11 = v15 - v16;
        if (v17)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v11 = BYTE6(v79);
    }

    if (v10 > 1)
    {
      if (v10 != 2)
      {
        if (v11)
        {
          goto LABEL_79;
        }

LABEL_37:
        sub_26BE04890(v68, v69);
        sub_26BE04890(v6, v5);
        sub_26BE0489C(v6, v5);
        v12 = v8;
        v13 = v7;
LABEL_38:
        sub_26BE0489C(v12, v13);
        goto LABEL_39;
      }

      v20 = *(v68 + 16);
      v19 = *(v68 + 24);
      v17 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (v17)
      {
        goto LABEL_83;
      }

      goto LABEL_31;
    }

    if (v10)
    {
      break;
    }

    v18 = BYTE6(v69);
LABEL_31:
    if (v11 != v18)
    {
      goto LABEL_79;
    }

    if (v11 < 1)
    {
      goto LABEL_37;
    }

    sub_26BE04890(v68, v69);
    sub_26BE04890(v8, v7);
    sub_26BE04890(v6, v5);
    v14 = sub_26BECB6A4(v6, v5, v8, v7);
LABEL_34:
    v21 = v14;
    sub_26BE0489C(v6, v5);
    sub_26BE0489C(v8, v7);
    if ((v21 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_39:
    v23 = v81;
    v22 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(*(v22 + 8) + 24))(v67, v23);
    v24 = LOBYTE(v67[0]);

    v26 = v71;
    v25 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    (*(*(v25 + 8) + 24))(v66, v26);
    LODWORD(v25) = LOBYTE(v66[0]);

    if (v24 != v25)
    {
      goto LABEL_80;
    }

    v28 = v81;
    v27 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v29 = (*(*(v27 + 8) + 16))(v28);
    v31 = v30;
    v33 = v71;
    v32 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v34 = (*(*(v32 + 8) + 16))(v33);
    v36 = v35;
    v37 = sub_26BE02DEC(v29, v31, v34, v35);
    sub_26BE00258(v34, v36);
    sub_26BE00258(v29, v31);
    if (!v37)
    {
      goto LABEL_80;
    }

    v6 = v83;
    v5 = v84;
    v8 = v73;
    v7 = v74;
    if ((v84 & 0x2000000000000000) != 0)
    {
      if ((v74 & 0x2000000000000000) == 0)
      {
        goto LABEL_79;
      }

      sub_26BE04890(v73, v74);
      sub_26BE04890(v6, v5);
      v43 = sub_26BFB0104(v6, v8);
      goto LABEL_69;
    }

    if ((v74 & 0x2000000000000000) != 0)
    {
      goto LABEL_79;
    }

    v38 = v84 >> 62;
    v39 = v74 >> 62;
    if (v84 >> 62 == 3)
    {
      v40 = 0;
      if (!v83 && v84 == 0xC000000000000000 && v74 >> 62 == 3)
      {
        v40 = 0;
        if (!v73 && v74 == 0xC000000000000000)
        {
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE0489C(0, 0xC000000000000000);
          v41 = 0;
          v42 = 0xC000000000000000;
          goto LABEL_73;
        }
      }

LABEL_58:
      if (v39 > 1)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    if (v38 == 2)
    {
      v45 = *(v83 + 16);
      v44 = *(v83 + 24);
      v17 = __OFSUB__(v44, v45);
      v40 = v44 - v45;
      if (v17)
      {
        goto LABEL_89;
      }

      goto LABEL_58;
    }

    if (v38 == 1)
    {
      LODWORD(v40) = HIDWORD(v83) - v83;
      if (__OFSUB__(HIDWORD(v83), v83))
      {
        goto LABEL_88;
      }

      v40 = v40;
      if (v39 > 1)
      {
LABEL_64:
        if (v39 != 2)
        {
          if (v40)
          {
LABEL_79:
            sub_26BE04890(v8, v7);
            sub_26BE04890(v6, v5);
            sub_26BE0489C(v6, v5);
            sub_26BE0489C(v8, v7);
LABEL_80:
            sub_26BF7ED88(&v68);
            sub_26BF7ED88(&v78);
            return;
          }

LABEL_72:
          sub_26BE04890(v73, v74);
          sub_26BE04890(v6, v5);
          sub_26BE0489C(v6, v5);
          v41 = v8;
          v42 = v7;
LABEL_73:
          sub_26BE0489C(v41, v42);
          goto LABEL_74;
        }

        v48 = *(v73 + 16);
        v47 = *(v73 + 24);
        v17 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (v17)
        {
          goto LABEL_85;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v40 = BYTE6(v84);
      if (v39 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_59:
    if (v39)
    {
      LODWORD(v46) = HIDWORD(v73) - v73;
      if (__OFSUB__(HIDWORD(v73), v73))
      {
        goto LABEL_84;
      }

      v46 = v46;
    }

    else
    {
      v46 = BYTE6(v74);
    }

LABEL_66:
    if (v40 != v46)
    {
      goto LABEL_79;
    }

    if (v40 < 1)
    {
      goto LABEL_72;
    }

    sub_26BE04890(v73, v74);
    sub_26BE04890(v8, v7);
    sub_26BE04890(v6, v5);
    v43 = sub_26BECB6A4(v6, v5, v8, v7);
LABEL_69:
    v49 = v43;
    sub_26BE0489C(v6, v5);
    sub_26BE0489C(v8, v7);
    if ((v49 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_74:
    v51 = v86;
    v50 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    (*(*(v50 + 8) + 24))(v67, v51);
    v52 = LOBYTE(v67[0]);

    v54 = v76;
    v53 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(*(v53 + 8) + 24))(v66, v54);
    LODWORD(v53) = LOBYTE(v66[0]);

    if (v52 != v53)
    {
      goto LABEL_80;
    }

    v56 = v86;
    v55 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v57 = (*(*(v55 + 8) + 16))(v56);
    v59 = v58;
    v61 = v76;
    v60 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v62 = (*(*(v60 + 8) + 16))(v61);
    v64 = v63;
    v65 = sub_26BE02DEC(v57, v59, v62, v63);
    sub_26BE00258(v62, v64);
    sub_26BE00258(v57, v59);
    sub_26BF7ED88(&v68);
    sub_26BF7ED88(&v78);
    if (v65)
    {
      v3 += 112;
      v4 += 112;
      if (--v2)
      {
        continue;
      }
    }

    return;
  }

  LODWORD(v18) = HIDWORD(v68) - v68;
  if (!__OFSUB__(HIDWORD(v68), v68))
  {
    v18 = v18;
    goto LABEL_31;
  }

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
}

uint64_t sub_26BFB1064(uint64_t a1, uint64_t a2)
{
  v4 = _s9AttributeVMa(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_26BFB75D8(v13, v10, _s9AttributeVMa);
      sub_26BFB75D8(v14, v7, _s9AttributeVMa);
      if ((sub_26C00945C() & 1) == 0)
      {
        break;
      }

      v16 = sub_26BFCCAA8(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
      sub_26BFB7640(v7, _s9AttributeVMa);
      sub_26BFB7640(v10, _s9AttributeVMa);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_26BFB7640(v7, _s9AttributeVMa);
    sub_26BFB7640(v10, _s9AttributeVMa);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_26BFB12EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_26BFB75D8(v18, v15, a4);
        sub_26BFB75D8(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_26BFB7640(v12, a4);
        sub_26BFB7640(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_26BFB1488(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v51 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v11 = MEMORY[0x28223BE20](v65);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = _s21RCSParticipantKeyRollVMa(0);
  v16 = MEMORY[0x28223BE20](v15);
  v64 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v51 - v19;
  v20 = *(a2 + 16);
  v67 = *(a1 + 16);
  if (v67 != v20)
  {
LABEL_28:
    v49 = 0;
    return v49 & 1;
  }

  if (!v67 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v55 = v14;
  v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v63 = (v5 + 48);
  v53 = (v5 + 32);
  v54 = (v5 + 8);
  v52 = *(v18 + 72);
  v24 = v64;
  v57 = v15;
  v66 = v4;
  while (1)
  {
    result = sub_26BFB75D8(v22, v68, _s21RCSParticipantKeyRollVMa);
    if (!v67)
    {
      break;
    }

    v58 = v23;
    sub_26BFB75D8(v23, v24, _s21RCSParticipantKeyRollVMa);
    if ((sub_26C00945C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v59 = type metadata accessor for MLS.AlgorithmIdentifier(0);
    v26 = *(v59 + 20);
    v27 = *(v65 + 48);
    v28 = v55;
    sub_26BE2E1F0(v68 + v26, v55, &qword_28045EE48, &unk_26C022430);
    sub_26BE2E1F0(v24 + v26, v28 + v27, &qword_28045EE48, &unk_26C022430);
    v29 = *v63;
    if ((*v63)(v28, 1, v4) == 1)
    {
      if (v29(v28 + v27, 1, v4) != 1)
      {
        goto LABEL_26;
      }

      sub_26BE2E258(v28, &qword_28045EE48, &unk_26C022430);
    }

    else
    {
      v30 = v56;
      sub_26BE2E1F0(v28, v56, &qword_28045EE48, &unk_26C022430);
      if (v29(v28 + v27, 1, v4) == 1)
      {
        goto LABEL_24;
      }

      v31 = v62;
      (*v53)(v62, v28 + v27, v4);
      sub_26BFB76A0(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
      v32 = sub_26C00A43C();
      v33 = *v54;
      v34 = v31;
      v24 = v64;
      (*v54)(v34, v66);
      v35 = v30;
      v15 = v57;
      v33(v35, v66);
      v4 = v66;
      sub_26BE2E258(v28, &qword_28045EE48, &unk_26C022430);
      if ((v32 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((sub_26C00956C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v36 = *(v15 + 24);
    v37 = v68 + v36;
    v38 = v24 + v36;
    if ((sub_26C00945C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v39 = v60;
    v40 = *(v59 + 20);
    v41 = *(v65 + 48);
    sub_26BE2E1F0(v37 + v40, v60, &qword_28045EE48, &unk_26C022430);
    sub_26BE2E1F0(v38 + v40, v39 + v41, &qword_28045EE48, &unk_26C022430);
    if (v29(v39, 1, v4) == 1)
    {
      if (v29(v39 + v41, 1, v4) != 1)
      {
        v28 = v39;
        v24 = v64;
LABEL_26:
        sub_26BE2E258(v28, &qword_28045F0D8, &unk_26C01A530);
LABEL_27:
        sub_26BFB7640(v24, _s21RCSParticipantKeyRollVMa);
        sub_26BFB7640(v68, _s21RCSParticipantKeyRollVMa);
        goto LABEL_28;
      }

      sub_26BE2E258(v39, &qword_28045EE48, &unk_26C022430);
      v24 = v64;
      v15 = v57;
    }

    else
    {
      sub_26BE2E1F0(v39, v61, &qword_28045EE48, &unk_26C022430);
      if (v29(v39 + v41, 1, v4) == 1)
      {
        v30 = v61;
        v28 = v39;
        v24 = v64;
LABEL_24:
        (*v54)(v30, v4);
        goto LABEL_26;
      }

      v42 = v62;
      (*v53)(v62, v39 + v41, v4);
      sub_26BFB76A0(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
      v59 = v22;
      v43 = v61;
      v44 = sub_26C00A43C();
      v4 = v66;
      v45 = v44;
      v46 = v39;
      v47 = *v54;
      (*v54)(v42, v66);
      v48 = v43;
      v22 = v59;
      v47(v48, v4);
      sub_26BE2E258(v46, &qword_28045EE48, &unk_26C022430);
      v24 = v64;
      v15 = v57;
      if ((v45 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    v49 = sub_26C00956C();
    sub_26BFB7640(v24, _s21RCSParticipantKeyRollVMa);
    sub_26BFB7640(v68, _s21RCSParticipantKeyRollVMa);
    if (v49)
    {
      v50 = v67;
      v23 = v58 + v52;
      v22 += v52;
      --v67;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB1C64(uint64_t a1, uint64_t a2)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      if (*(v4 - 8) != *(i - 8))
      {
        return 0;
      }

      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v18 = *(v7 + 16);
          v17 = *(v7 + 24);
          v15 = __OFSUB__(v17, v18);
          v12 = v17 - v18;
          if (v15)
          {
            goto LABEL_59;
          }

          goto LABEL_24;
        }

        v12 = 0;
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

      else if (v10)
      {
        LODWORD(v12) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_58;
        }

        v12 = v12;
        if (v11 <= 1)
        {
LABEL_25:
          if (v11)
          {
            LODWORD(v16) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
            }

            v16 = v16;
          }

          else
          {
            v16 = BYTE6(v8);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v12 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

LABEL_18:
      if (v11 != 2)
      {
        if (v12)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_57;
      }

LABEL_29:
      if (v12 != v16)
      {
        return 0;
      }

      if (v12 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v29 = v3;
          v19 = *(v7 + 16);
          v28 = *(v7 + 24);
          sub_26BE00608(v7, v6);
          sub_26BE00608(v9, v8);
          v20 = sub_26C008E9C();
          if (v20)
          {
            v21 = sub_26C008ECC();
            if (__OFSUB__(v19, v21))
            {
              goto LABEL_62;
            }

            v20 += v19 - v21;
          }

          if (__OFSUB__(v28, v19))
          {
            goto LABEL_61;
          }

          sub_26C008EBC();
          v22 = v20;
          v23 = v9;
          v24 = v8;
          v3 = v29;
          goto LABEL_50;
        }

        memset(v31, 0, 14);
        sub_26BE00608(v7, v6);
        sub_26BE00608(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_60;
          }

          sub_26BE00608(v7, v6);
          sub_26BE00608(v9, v8);
          v25 = sub_26C008E9C();
          if (v25)
          {
            v26 = sub_26C008ECC();
            if (__OFSUB__(v7, v26))
            {
              goto LABEL_63;
            }

            v25 += v7 - v26;
          }

          sub_26C008EBC();
          v22 = v25;
          v23 = v9;
          v24 = v8;
LABEL_50:
          sub_26BE567B0(v22, v23, v24, v31);
          sub_26BE00258(v9, v8);
          sub_26BE00258(v7, v6);
          if ((v31[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v31[0] = *(v4 - 1);
        LOWORD(v31[1]) = v6;
        BYTE2(v31[1]) = BYTE2(v6);
        BYTE3(v31[1]) = BYTE3(v6);
        BYTE4(v31[1]) = BYTE4(v6);
        BYTE5(v31[1]) = BYTE5(v6);
        sub_26BE00608(v7, v6);
        sub_26BE00608(v9, v8);
      }

      sub_26BE567B0(v31, v9, v8, &v30);
      sub_26BE00258(v9, v8);
      sub_26BE00258(v7, v6);
      if (!v30)
      {
        return 0;
      }

LABEL_6:
      v4 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    v12 = 0;
    if (!v7 && v6 == 0xC000000000000000 && *i >> 62 == 3)
    {
      v12 = 0;
      if (!v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    if (v11 <= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_26BFB20A0(uint64_t result, uint64_t a2)
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

uint64_t sub_26BFB20FC(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_26BE00608(v7, v6);
          sub_26BE00608(v9, v8);
          v22 = sub_26C008E9C();
          if (v22)
          {
            v23 = sub_26C008ECC();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_26C008EBC();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_26BE00608(v7, v6);
        sub_26BE00608(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_26BE00608(v7, v6);
          sub_26BE00608(v9, v8);
          v27 = sub_26C008E9C();
          if (v27)
          {
            v28 = sub_26C008ECC();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_26C008EBC();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_26BE567B0(v24, v25, v26, v33);
          sub_26BE00258(v9, v8);
          sub_26BE00258(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_26BE00608(v7, v6);
        sub_26BE00608(v9, v8);
      }

      sub_26BE567B0(v33, v9, v8, &v32);
      sub_26BE00258(v9, v8);
      sub_26BE00258(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_26BFB2508(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26C00AF2C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26BFB2598(uint64_t a1, uint64_t a2)
{
  v5 = _s21RCSParticipantKeyRollVMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFB75D8(a1, v11, type metadata accessor for MLS.SubjectPublicKeyInfo);
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    while (1)
    {
      sub_26BFB75D8(v13, v8, _s21RCSParticipantKeyRollVMa);
      v15 = sub_26BEE1FD8(v11);
      if (v2)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        type metadata accessor for MLS.IdentityError(0);
        sub_26BFB76A0(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        break;
      }

      sub_26BFB7640(v11, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BFB75D8(&v8[*(v5 + 24)], v11, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BFB7640(v8, _s21RCSParticipantKeyRollVMa);
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_9;
      }
    }

    sub_26BFB7640(v8, _s21RCSParticipantKeyRollVMa);
  }

LABEL_9:
  sub_26BFB7640(v11, type metadata accessor for MLS.SubjectPublicKeyInfo);
  return 1;
}

uint64_t sub_26BFB281C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_26BFB290C()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C007978(v3, v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFB295C(uint64_t a1)
{
  v2 = *v1;
  sub_26C00B05C();
  sub_26C007978(v4, v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFB29AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s21RCSParticipantKeyRollVMa(0);
  MEMORY[0x28223BE20](v4);
  sub_26BFB75D8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s21RCSParticipantKeyRollVMa);
  result = sub_26C00A51C();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_26BFB2A58()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEA0, &unk_26C022440);
  sub_26BED2530();
  v0 = sub_26C00A3EC();

  return v0;
}

unint64_t sub_26BFB2AF4()
{
  sub_26C00AC1C();

  sub_26BFB7498();
  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_26BFB2BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF30, &qword_26C022460);
  return sub_26C00A70C();
}

uint64_t sub_26BFB2C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  result = sub_26BFD9BBC();
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v3, v8, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = *(*v8 + 16);
    }

    else
    {
      result = sub_26BE2E258(v8, &qword_28045E520, &unk_26C016B80);
      v12 = 1;
    }

    if (v10 <= v12)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26BFB2DE8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BFB2E54(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26BE58848(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = *(_s21RCSParticipantKeyRollVMa(0) - 8);
    result = sub_26BFB7570(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, _s21RCSParticipantKeyRollVMa);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*sub_26BFB2F34(void *a1, unint64_t *a2))(uint64_t ***a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(_s21RCSParticipantKeyRollVMa(0) - 8);
  v9 = *(v8 + 64);
  if (v5)
  {
    v7[1] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v7[1] = malloc(*(v8 + 64));
    result = malloc(v9);
  }

  v11 = *a2;
  v7[2] = result;
  v7[3] = v11;
  v12 = *v2;
  v7[4] = *v2;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v12 + 16))
  {
    v13 = *(v8 + 80);
    *(v7 + 12) = v13;
    v14 = v12 + ((v13 + 32) & ~v13);
    v15 = *(v8 + 72);
    v7[5] = v15;
    sub_26BFB75D8(v14 + v15 * v11, result, _s21RCSParticipantKeyRollVMa);
    return sub_26BFB30A0;
  }

  __break(1u);
  return result;
}

void sub_26BFB30A0(uint64_t ***a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26BFB75D8(v2[2], v2[1], _s21RCSParticipantKeyRollVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v2[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_26BE58848(v2[4]);
    }

    v5 = v2[3];
    if (v5 < v4[2])
    {
      v7 = v2[1];
      v6 = v2[2];
      v8 = *v2;
      sub_26BFB7570(v7, v4 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v5, _s21RCSParticipantKeyRollVMa);
      *v8 = v4;
      sub_26BFB7640(v6, _s21RCSParticipantKeyRollVMa);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v9 = swift_isUniquelyReferenced_nonNull_native();
  v4 = v2[4];
  if ((v9 & 1) == 0)
  {
LABEL_13:
    v4 = sub_26BE58848(v4);
  }

  v10 = v2[3];
  if (v10 >= v4[2])
  {
    __break(1u);
    return;
  }

  v7 = v2[1];
  v6 = v2[2];
  v11 = *v2;
  sub_26BFB7570(v6, v4 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v10, _s21RCSParticipantKeyRollVMa);
  *v11 = v4;
LABEL_9:
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_26BFB3220(int64_t *a1, unint64_t *a2)
{
  sub_26BFB5F1C(v2, *a2, a2[1], *a1, a1[1], a1[2], _s21RCSParticipantKeyRollVMa, sub_26BE58848, _s21RCSParticipantKeyRollVMa, _s21RCSParticipantKeyRollVMa);
}

uint64_t (*sub_26BFB32C4(uint64_t *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = sub_26BFB3384(v4, *a2, a2[1]);
  return sub_26BFB333C;
}

void sub_26BFB333C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_26BFB3384(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (result = *v3, *(*v3 + 16) < a3))
  {
    __break(1u);
  }

  else
  {
    *v8 = a2;
    *(v8 + 1) = a3;
    *(v8 + 2) = result;

    return sub_26BFB3430;
  }

  return result;
}

uint64_t (*sub_26BFB3484(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (result = *v3, *(*v3 + 16) < a3))
  {
    __break(1u);
  }

  else
  {
    *v8 = a2;
    *(v8 + 1) = a3;
    *(v8 + 2) = result;

    return sub_26BFB3530;
  }

  return result;
}

uint64_t (*sub_26BFB3584(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (result = *v3, *(*v3 + 16) < a3))
  {
    __break(1u);
  }

  else
  {
    *v8 = a2;
    *(v8 + 1) = a3;
    *(v8 + 2) = result;

    return sub_26BFB3630;
  }

  return result;
}

void sub_26BFB3684(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = **a1;
  v11 = (*a1)[1];
  v12 = (*a1)[4];
  v13 = (*a1)[5];
  v15 = (*a1)[2];
  v14 = (*a1)[3];
  if (a2)
  {

    sub_26BFB5F1C(v13, v14, v12, v10, v11, v15, a3, a4, a5, a6);
  }

  else
  {
    sub_26BFB5F1C(v13, v14, v12, v10, v11, v15, a3, a4, a5, a6);
  }

  free(v9);
}

uint64_t sub_26BFB376C@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(char *)@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BFB673C(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26BFB385C(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v13 = a3(0) - 8;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v20 = &v25 - v19;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *v6;
      v21 = *(*v6 + 16);
      if (v21 > a1)
      {
        v26 = a5;
        v27 = v6;
        v28 = a6;
        v6 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        a6 = *(v18 + 72);
        a1 *= a6;
        sub_26BFB75D8(v7 + v6 + a1, &v25 - v19, a4);
        if (v21 > a2)
        {
          a6 *= a2;
          sub_26BFB75D8(v7 + v6 + a6, v16, a4);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v7 = v26(v7);
LABEL_6:
        v22 = v28;
        v23 = v7 + v6;
        result = sub_26BFB7570(v16, v7 + v6 + a1, v28);
        v24 = v27;
        *v27 = v7;
        if (*(v7 + 16) <= a2)
        {
          __break(1u);
        }

        else
        {
          result = sub_26BFB7570(v20, v23 + a6, v22);
          *v24 = v7;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_26BFB3AD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BFB2BA0(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_26BFB3B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF20, &qword_26C022450);
  result = MEMORY[0x28223BE20](v6);
  v9 = (&v11 - v8);
  v12 = MEMORY[0x277D84F90];
  if (!a2)
  {
    result = sub_26BFB7640(a1, _s21RCSParticipantKeyRollVMa);
    v10 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *v9 = a2;
    sub_26BFB7508(a1, v9 + *(result + 28), _s21RCSParticipantKeyRollVMa);
    result = sub_26BFB3D94(v9);
    v10 = v12;
LABEL_5:
    *a3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB3C6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E0, &unk_26C011340);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(*v1 + 16);
  sub_26BFB7508(a1, &v11 - v7, _s21RCSParticipantKeyRollVMa);
  sub_26BE2E1F0(v8, v6, &qword_28045E6E0, &unk_26C011340);
  sub_26BE56464(v9, v9, v6);
  return sub_26BE2E258(v8, &qword_28045E6E0, &unk_26C011340);
}

uint64_t sub_26BFB3D94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E0, &unk_26C011340);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF28, &qword_26C022458);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - v11);
  sub_26BE33F30(a1, &v24 - v11, &qword_28045FF20, &qword_26C022450);
  v13 = *(v10 + 44);
  *(v12 + v13) = 0;
  v14 = *v12;
  if (!*v12)
  {
    return sub_26BE2E258(v12, &qword_28045FF28, &qword_26C022458);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF20, &qword_26C022450);
  if (v14 >= 1)
  {
    v26 = v13;
    v27 = v1;
    v28 = *(result + 28);
    v29 = v12;
    v16 = *v1;
    v25 = v14;
    while (1)
    {
      v17 = v16[2];
      sub_26BFB75D8(v12 + v28, v8, _s21RCSParticipantKeyRollVMa);
      sub_26BE2E1F0(v8, v6, &qword_28045E6E0, &unk_26C011340);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v17 >= v16[3] >> 1)
      {
        v16 = sub_26BEEBFEC(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v16);
      }

      v19 = *(_s21RCSParticipantKeyRollVMa(0) - 8);
      v20 = *(v19 + 72);
      v21 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + v20 * v17;
      swift_arrayDestroy();
      v22 = v16[2];
      if (v20 < 0 || v20 >= ((v22 - v17) * v20))
      {
        swift_arrayInitWithTakeFrontToBack();
        ++v16[2];
        if (v20 <= 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!v20)
        {
          v16[2] = v22 + 1;
          goto LABEL_6;
        }

        swift_arrayInitWithTakeBackToFront();
        ++v16[2];
      }

      sub_26BFB75D8(v6, v21, _s21RCSParticipantKeyRollVMa);
LABEL_6:
      sub_26BE2E258(v6, &qword_28045E6E0, &unk_26C011340);
      sub_26BE2E258(v8, &qword_28045E6E0, &unk_26C011340);
      --v14;
      v12 = v29;
      if (!v14)
      {
        v23 = v26;
        *v27 = v16;
        *(v12 + v23) = v25;
        return sub_26BE2E258(v12, &qword_28045FF28, &qword_26C022458);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB40D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF40, &qword_26C022470);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - v11);
  sub_26BE33F30(a1, &v24 - v11, &qword_28045FF48, &qword_26C022478);
  v13 = *(v10 + 44);
  *(v12 + v13) = 0;
  v14 = *v12;
  if (!*v12)
  {
    return sub_26BE2E258(v12, &qword_28045FF40, &qword_26C022470);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF48, &qword_26C022478);
  if (v14 >= 1)
  {
    v26 = v13;
    v27 = v1;
    v28 = *(result + 28);
    v29 = v12;
    v16 = *v1;
    v25 = v14;
    while (1)
    {
      v17 = v16[2];
      sub_26BFB75D8(v12 + v28, v8, _s25RelativeDistinguishedNameVMa);
      sub_26BE2E1F0(v8, v6, &qword_28045E6E8, &unk_26C022D90);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v17 >= v16[3] >> 1)
      {
        v16 = sub_26BEEBFC4(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v16);
      }

      v19 = *(_s25RelativeDistinguishedNameVMa(0) - 8);
      v20 = *(v19 + 72);
      v21 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + v20 * v17;
      swift_arrayDestroy();
      v22 = v16[2];
      if (v20 < 0 || v20 >= ((v22 - v17) * v20))
      {
        swift_arrayInitWithTakeFrontToBack();
        ++v16[2];
        if (v20 <= 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!v20)
        {
          v16[2] = v22 + 1;
          goto LABEL_6;
        }

        swift_arrayInitWithTakeBackToFront();
        ++v16[2];
      }

      sub_26BFB75D8(v6, v21, _s25RelativeDistinguishedNameVMa);
LABEL_6:
      sub_26BE2E258(v6, &qword_28045E6E8, &unk_26C022D90);
      sub_26BE2E258(v8, &qword_28045E6E8, &unk_26C022D90);
      --v14;
      v12 = v29;
      if (!v14)
      {
        v23 = v26;
        *v27 = v16;
        *(v12 + v23) = v25;
        return sub_26BE2E258(v12, &qword_28045FF40, &qword_26C022470);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB4414(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF50, &unk_26C022490);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - v11);
  sub_26BE33F30(a1, &v24 - v11, &qword_28045FF58, &qword_26C024AE0);
  v13 = *(v10 + 44);
  *(v12 + v13) = 0;
  v14 = *v12;
  if (!*v12)
  {
    return sub_26BE2E258(v12, &qword_28045FF50, &unk_26C022490);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF58, &qword_26C024AE0);
  if (v14 >= 1)
  {
    v26 = v13;
    v27 = v1;
    v28 = *(result + 28);
    v29 = v12;
    v16 = *v1;
    v25 = v14;
    while (1)
    {
      v17 = v16[2];
      sub_26BFB75D8(v12 + v28, v8, _s11GeneralNameOMa);
      sub_26BE2E1F0(v8, v6, &qword_28045E6F0, &unk_26C011350);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v17 >= v16[3] >> 1)
      {
        v16 = sub_26BEEC014(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v16);
      }

      v19 = *(_s11GeneralNameOMa(0) - 8);
      v20 = *(v19 + 72);
      v21 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + v20 * v17;
      swift_arrayDestroy();
      v22 = v16[2];
      if (v20 < 0 || v20 >= ((v22 - v17) * v20))
      {
        swift_arrayInitWithTakeFrontToBack();
        ++v16[2];
        if (v20 <= 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!v20)
        {
          v16[2] = v22 + 1;
          goto LABEL_6;
        }

        swift_arrayInitWithTakeBackToFront();
        ++v16[2];
      }

      sub_26BFB75D8(v6, v21, _s11GeneralNameOMa);
LABEL_6:
      sub_26BE2E258(v6, &qword_28045E6F0, &unk_26C011350);
      sub_26BE2E258(v8, &qword_28045E6F0, &unk_26C011350);
      --v14;
      v12 = v29;
      if (!v14)
      {
        v23 = v26;
        *v27 = v16;
        *(v12 + v23) = v25;
        return sub_26BE2E258(v12, &qword_28045FF50, &unk_26C022490);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB4754(uint64_t a1, unint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E0, &unk_26C011340);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *a2;
  sub_26BFB7508(a1, &v12 - v8, _s21RCSParticipantKeyRollVMa);
  sub_26BE2E1F0(v9, v7, &qword_28045E6E0, &unk_26C011340);
  sub_26BE56464(v10, v10, v7);
  return sub_26BE2E258(v9, &qword_28045E6E0, &unk_26C011340);
}

unint64_t sub_26BFB4914@<X0>(unint64_t result@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(unint64_t, unint64_t)@<X3>, uint64_t a5@<X8>)
{
  v7 = *v5;
  v8 = *(*v5 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = *(a2(0) - 8);
  sub_26BFB75D8(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, a5, a3);

  return a4(v9, v9 + 1);
}

uint64_t sub_26BFB4A54@<X0>(uint64_t a1@<X8>)
{
  v2 = _s21RCSParticipantKeyRollVMa(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_26BFB4AC0(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(_s21RCSParticipantKeyRollVMa(0) - 8);
    sub_26BFB75D8(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), a1, _s21RCSParticipantKeyRollVMa);

    sub_26BE5AE0C(0, 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26BFB4B68(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_26BFB2DE8(0, result, *(*v1 + 16), *v1);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_26BE5AE0C(0, result);
}

unint64_t sub_26BFB4BD0(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    return sub_26BE5AE0C(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t (*sub_26BFB4C20(uint64_t (*a1)(uint64_t), uint64_t a2))(void)
{
  result = sub_26BFB70F8(a1, a2, _s21RCSParticipantKeyRollVMa, _s21RCSParticipantKeyRollVMa, sub_26BE58848, _s21RCSParticipantKeyRollVMa);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_26BE5AE0C(result, v5);
    }
  }

  return result;
}

void *sub_26BFB4CB4@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_26BFB4CE0(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_26BFB4D14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_26BFB2DE8(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t (*sub_26BFB4D64(uint64_t (**a1)(), unint64_t *a2))()
{
  v5 = *(_s21RCSParticipantKeyRollVMa(0) - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_26BFB75D8(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result, _s21RCSParticipantKeyRollVMa);
    return sub_26BFB4E74;
  }

  __break(1u);
  return result;
}

void sub_26BFB4E74(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFB7640(*a1, _s21RCSParticipantKeyRollVMa);

  free(v1);
}

uint64_t *sub_26BFB4EC4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
  }

  return result;
}

void sub_26BFB4EF0(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_26BFB4F24@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_26BFB4F50(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_26BFB4F78(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_26BFB4F94(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_26BFB4FB0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_26BFB4FCC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_26BFB4FF0(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_26BFB5034()
{
  v1 = sub_26BFB649C(*v0, sub_26BE32630, _s21RCSParticipantKeyRollVMa, sub_26BE3297C);

  return v1;
}

void sub_26BFB50D4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    if (v4 == v3)
    {
      break;
    }

    _s21RCSParticipantKeyRollVMa(0);
    sub_26BFB76A0(&qword_28045F0B0, _s21RCSParticipantKeyRollVMa, &unk_26C01A400);
    sub_26C00976C();
    ++v3;
  }

  while (!v2);
}

uint64_t sub_26BFB51E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s21RCSParticipantKeyRollVMa(0);
  sub_26BFB76A0(&qword_28045F0A8, _s21RCSParticipantKeyRollVMa, &unk_26C01A428);
  v7 = sub_26C0097EC();
  if (v3)
  {
    v8 = sub_26C00934C();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_26C00950C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_26C00934C();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_26C00950C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

unint64_t sub_26BFB5464()
{
  result = qword_28045FE78;
  if (!qword_28045FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FE78);
  }

  return result;
}

unint64_t sub_26BFB54BC()
{
  result = qword_28045FE80;
  if (!qword_28045FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FE80);
  }

  return result;
}

unint64_t sub_26BFB5558()
{
  result = qword_28045FE98;
  if (!qword_28045FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FE98);
  }

  return result;
}

unint64_t sub_26BFB55EC()
{
  result = qword_28045FEA8;
  if (!qword_28045FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FEA8);
  }

  return result;
}

unint64_t sub_26BFB5688()
{
  result = qword_28045FEC0;
  if (!qword_28045FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FEC0);
  }

  return result;
}

unint64_t sub_26BFB57A0()
{
  result = qword_28045FEE0;
  if (!qword_28045FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FEE0);
  }

  return result;
}

unint64_t sub_26BFB583C()
{
  result = qword_28045FEF0;
  if (!qword_28045FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FEF0);
  }

  return result;
}

uint64_t sub_26BFB58C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E270, &unk_26C00E290);
    sub_26BFB55EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BFB5988(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045FEB8, &qword_26C0220B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFB5A00()
{
  result = qword_28045FF08;
  if (!qword_28045FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FF08);
  }

  return result;
}

unint64_t sub_26BFB5A58()
{
  result = qword_28045FF10;
  if (!qword_28045FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FF10);
  }

  return result;
}

uint64_t sub_26BFB5AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF38, &qword_26C022468);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - v6);
  v8 = _s9AttributeVMa(0);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = (v7 + *(v5 + 56));
  sub_26BE2E1F0(a1, v7, &qword_28045E520, &unk_26C016B80);
  sub_26BE2E1F0(a2, v20, &qword_28045E520, &unk_26C016B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26BFB7508(v7, v17, _s9AttributeVMa);
      sub_26BFB7508(v20, v14, _s9AttributeVMa);
      if (sub_26C00945C())
      {
        v22 = sub_26BFCCAA8(&v17[*(v26 + 20)], &v14[*(v26 + 20)]);
        sub_26BFB7640(v14, _s9AttributeVMa);
        sub_26BFB7640(v17, _s9AttributeVMa);
        return v22 & 1;
      }

      sub_26BFB7640(v14, _s9AttributeVMa);
      v23 = v17;
      goto LABEL_15;
    }

    v21 = *v20;
LABEL_7:
    sub_26BFB7508(v7, v19, _s9AttributeVMa);
    if (*(v21 + 16) != 1)
    {
      sub_26BFB7640(v19, _s9AttributeVMa);

LABEL_16:
      v22 = 0;
      return v22 & 1;
    }

    sub_26BFB75D8(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v11, _s9AttributeVMa);

    if (sub_26C00945C())
    {
      v22 = sub_26BFCCAA8(&v19[*(v26 + 20)], &v11[*(v26 + 20)]);
      sub_26BFB7640(v11, _s9AttributeVMa);
      sub_26BFB7640(v19, _s9AttributeVMa);
      return v22 & 1;
    }

    sub_26BFB7640(v11, _s9AttributeVMa);
    v23 = v19;
LABEL_15:
    sub_26BFB7640(v23, _s9AttributeVMa);
    goto LABEL_16;
  }

  v21 = *v7;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v7 = v20;
    goto LABEL_7;
  }

  v22 = sub_26BFB1064(v21, *v20);

  return v22 & 1;
}

uint64_t sub_26BFB5F1C(uint64_t *a1, unint64_t a2, int64_t a3, int64_t a4, int64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t), uint64_t (*a9)(void), uint64_t (*a10)(void))
{
  v32 = a4;
  v17 = a7(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - v19;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v10 = *a1;
  if (*(*a1 + 16) < a3)
  {
    goto LABEL_23;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v28 = a1;
    *a1 = v10;
    v22 = v32;
    v23 = v32 == a5;
    v24 = a2 == a3;
    if (a2 == a3 || v32 == a5)
    {
      break;
    }

    v30 = a10;
    v31 = a9;
    v29 = a3 - 1;
    a1 = (a5 - 1);
    v25 = v32;
    while (v25 < a5)
    {
      if (v22 < 0)
      {
        goto LABEL_19;
      }

      if (v25 >= *(a6 + 16))
      {
        goto LABEL_20;
      }

      a3 = a5;
      a5 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      a8 = *(v18 + 72);
      sub_26BFB75D8(a6 + a5 + a8 * v25, v20, v31);
      if (a2 >= *(v10 + 16))
      {
        goto LABEL_21;
      }

      result = sub_26BFB7570(v20, v10 + a5 + a8 * a2, v30);
      if (a2 >= *(v10 + 16))
      {
        goto LABEL_22;
      }

      v23 = a1 == v25;
      v24 = v29 == a2;
      if (v29 != a2)
      {
        ++a2;
        v26 = a1 == v25++;
        a5 = a3;
        v22 = v32;
        if (!v26)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = a8(v10);
    v10 = result;
  }

LABEL_15:
  *v28 = v10;
  if (!v24)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!v23)
  {
LABEL_26:
    __break(1u);
  }

  return result;
}

void *sub_26BFB61A0(uint64_t a1)
{
  v2 = _s25RelativeDistinguishedNameVMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E530, &unk_26C022480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  sub_26BE2E1F0(a1, &v18 - v9, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_26BE2E258(v10, &qword_28045E520, &unk_26C016B80);
  }

  v11 = sub_26BFD9BBC();
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = v11;
  v13 = sub_26BE325B8(v11, 0);
  v14 = *(_s9AttributeVMa(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  sub_26BFB75D8(a1, v4, _s25RelativeDistinguishedNameVMa);
  v16 = sub_26BE32B1C(v7, v13 + v15, v12);
  sub_26BE2E258(v7, &qword_28045E530, &unk_26C022480);
  if (v16 != v12)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_26BFB649C(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, unint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = a4(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v4, a1);

  if (v10 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

void sub_26BFB6580(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_26BFB6640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2C0, &qword_26C0224A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 136);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C8, &unk_26C0112A0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_26BFB673C(uint64_t (*a1)(char *), uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v4 = _s21RCSParticipantKeyRollVMa(0);
  v30 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  result = MEMORY[0x28223BE20](v5);
  v29 = &v26 - v8;
  v9 = *v2;
  v10 = *(*v2 + 16);
  if (v10)
  {
    v27 = v2;
    v28 = v7;
    v11 = 0;
    v12 = v10;
LABEL_3:
    v13 = v11;
    while (1)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v14 = v29;
      v15 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v16 = *(v30 + 72);
      v17 = v9;
      sub_26BFB75D8(v9 + v15 + v16 * v13, v29, _s21RCSParticipantKeyRollVMa);
      v18 = v31(v14);
      if (v3)
      {
        sub_26BFB7640(v14, _s21RCSParticipantKeyRollVMa);
        return v13;
      }

      v19 = v18;
      result = sub_26BFB7640(v14, _s21RCSParticipantKeyRollVMa);
      v10 = *(v17 + 16);
      v9 = v17;
      if (v19)
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_24;
      }

      if (++v13 >= v12)
      {
        return v13;
      }
    }

    v20 = v17 + v15 + (v12 - 1) * v16;
    v21 = -v16;
    while (--v12 < v10)
    {
      if (v13 >= v12)
      {
        return v13;
      }

      if (v12 >= *(v9 + 16))
      {
        goto LABEL_26;
      }

      v22 = v9;
      v23 = v28;
      sub_26BFB75D8(v20, v28, _s21RCSParticipantKeyRollVMa);
      v24 = v31(v23);
      result = sub_26BFB7640(v23, _s21RCSParticipantKeyRollVMa);
      v20 += v21;
      v9 = v22;
      if ((v24 & 1) == 0)
      {
        v25 = v27;
        result = sub_26BFB385C(v13, v12, _s21RCSParticipantKeyRollVMa, _s21RCSParticipantKeyRollVMa, sub_26BE58848, _s21RCSParticipantKeyRollVMa);
        v9 = *v25;
        v10 = *(*v25 + 16);
        if (v13 >= v10)
        {
          goto LABEL_27;
        }

        v11 = v13 + 1;
        if ((v13 + 1) >= v12)
        {
          return ++v13;
        }

        goto LABEL_3;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_26BFB6A58(uint64_t (*a1)(char *), uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v4 = _s25RelativeDistinguishedNameVMa(0);
  v30 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  result = MEMORY[0x28223BE20](v5);
  v29 = &v26 - v8;
  v9 = *v2;
  v10 = *(*v2 + 16);
  if (v10)
  {
    v27 = v2;
    v28 = v7;
    v11 = 0;
    v12 = v10;
LABEL_3:
    v13 = v11;
    while (1)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v14 = v29;
      v15 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v16 = *(v30 + 72);
      v17 = v9;
      sub_26BFB75D8(v9 + v15 + v16 * v13, v29, _s25RelativeDistinguishedNameVMa);
      v18 = v31(v14);
      if (v3)
      {
        sub_26BFB7640(v14, _s25RelativeDistinguishedNameVMa);
        return v13;
      }

      v19 = v18;
      result = sub_26BFB7640(v14, _s25RelativeDistinguishedNameVMa);
      v10 = *(v17 + 16);
      v9 = v17;
      if (v19)
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_24;
      }

      if (++v13 >= v12)
      {
        return v13;
      }
    }

    v20 = v17 + v15 + (v12 - 1) * v16;
    v21 = -v16;
    while (--v12 < v10)
    {
      if (v13 >= v12)
      {
        return v13;
      }

      if (v12 >= *(v9 + 16))
      {
        goto LABEL_26;
      }

      v22 = v9;
      v23 = v28;
      sub_26BFB75D8(v20, v28, _s25RelativeDistinguishedNameVMa);
      v24 = v31(v23);
      result = sub_26BFB7640(v23, _s25RelativeDistinguishedNameVMa);
      v20 += v21;
      v9 = v22;
      if ((v24 & 1) == 0)
      {
        v25 = v27;
        result = sub_26BFB385C(v13, v12, _s25RelativeDistinguishedNameVMa, _s25RelativeDistinguishedNameVMa, sub_26BE58834, _s25RelativeDistinguishedNameVMa);
        v9 = *v25;
        v10 = *(*v25 + 16);
        if (v13 >= v10)
        {
          goto LABEL_27;
        }

        v11 = v13 + 1;
        if ((v13 + 1) >= v12)
        {
          return ++v13;
        }

        goto LABEL_3;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_26BFB6D74(uint64_t (*a1)(char *), uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v4 = _s11GeneralNameOMa(0);
  v30 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  result = MEMORY[0x28223BE20](v5);
  v29 = &v26 - v8;
  v9 = *v2;
  v10 = *(*v2 + 16);
  if (v10)
  {
    v27 = v2;
    v28 = v7;
    v11 = 0;
    v12 = v10;
LABEL_3:
    v13 = v11;
    while (1)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v14 = v29;
      v15 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v16 = *(v30 + 72);
      v17 = v9;
      sub_26BFB75D8(v9 + v15 + v16 * v13, v29, _s11GeneralNameOMa);
      v18 = v31(v14);
      if (v3)
      {
        sub_26BFB7640(v14, _s11GeneralNameOMa);
        return v13;
      }

      v19 = v18;
      result = sub_26BFB7640(v14, _s11GeneralNameOMa);
      v10 = *(v17 + 16);
      v9 = v17;
      if (v19)
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_24;
      }

      if (++v13 >= v12)
      {
        return v13;
      }
    }

    v20 = v17 + v15 + (v12 - 1) * v16;
    v21 = -v16;
    while (--v12 < v10)
    {
      if (v13 >= v12)
      {
        return v13;
      }

      if (v12 >= *(v9 + 16))
      {
        goto LABEL_26;
      }

      v22 = v9;
      v23 = v28;
      sub_26BFB75D8(v20, v28, _s11GeneralNameOMa);
      v24 = v31(v23);
      result = sub_26BFB7640(v23, _s11GeneralNameOMa);
      v20 += v21;
      v9 = v22;
      if ((v24 & 1) == 0)
      {
        v25 = v27;
        result = sub_26BFB385C(v13, v12, _s11GeneralNameOMa, _s11GeneralNameOMa, sub_26BE5885C, _s11GeneralNameOMa);
        v9 = *v25;
        v10 = *(*v25 + 16);
        if (v13 >= v10)
        {
          goto LABEL_27;
        }

        v11 = v13 + 1;
        if ((v13 + 1) >= v12)
        {
          return ++v13;
        }

        goto LABEL_3;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t (*sub_26BFB70F8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void), uint64_t *a6))(void)
{
  v47 = a6;
  v45 = a5;
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v40 = v6;
  v20 = *v6;
  v21 = a2;
  v22 = a2;
  v23 = v48;
  v24 = a4;
  result = sub_26BFB281C(a1, v22, v20, a4);
  if (v23)
  {
    return result;
  }

  v44 = v21;
  v46 = v19;
  v41 = v17;
  v39 = a4;
  v27 = *(v20 + 16);
  if (v26)
  {
    v45 = *(v20 + 16);
    return v27;
  }

  v28 = result;
  v48 = 0;
  if (result >= v27)
  {
LABEL_31:
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v40;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }
  }

  v20 = (v45)(v20);
LABEL_6:
  *v24 = v20;
  v30 = *(v20 + 16);
  v45 = v28;
  v31 = v46;
  v42 = a1;
  v43 = v11;
  v38 = v14;
  while (1)
  {
    if (++v28 == v30)
    {
      *v40 = v20;
      return v45;
    }

    if (v28 >= v30)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v14 = v20;
    v24 = (v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
    v20 = *(v11 + 9);
    v32 = v24 + v20 * v28;
    v33 = v47;
    sub_26BFB75D8(v32, v31, v47);
    v34 = v48;
    v35 = a1(v31);
    v48 = v34;
    if (v34)
    {
      break;
    }

    a1 = v35;
    sub_26BFB7640(v31, v33);
    if (a1)
    {
      v20 = v14;
      v30 = *(v14 + 2);
      v31 = v46;
    }

    else
    {
      v11 = v45;
      v31 = v46;
      if (v28 != v45)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        v36 = *(v14 + 2);
        if (v45 >= v36)
        {
          goto LABEL_28;
        }

        a1 = (v24 + v20 * v45);
        v24 = v47;
        sub_26BFB75D8(a1, v41, v47);
        if (v28 >= v36)
        {
          goto LABEL_29;
        }

        v37 = v38;
        sub_26BFB75D8(v32, v38, v24);
        v20 = v39;
        sub_26BFB7570(v37, a1, v39);
        if (v28 >= *(v14 + 2))
        {
          goto LABEL_30;
        }

        sub_26BFB7570(v41, v32, v20);
        v31 = v46;
      }

      v30 = *(v14 + 2);
      if (v11 >= v30)
      {
        goto LABEL_26;
      }

      v20 = v14;
      v45 = v11 + 1;
    }

    a1 = v42;
    v11 = v43;
    if (v28 >= v30)
    {
      goto LABEL_25;
    }
  }

  *v40 = v14;
  return sub_26BFB7640(v31, v33);
}

unint64_t sub_26BFB7498()
{
  result = qword_28045FF18;
  if (!qword_28045FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FF18);
  }

  return result;
}

uint64_t sub_26BFB7508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFB7570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFB75D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFB7640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFB76A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 MLS.LeafNodeOptions.init(credential:capabilities:extensions:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a1;
  v6 = *(a2 + 4);
  sub_26BE71980(0, 0x3000000000000000uLL);
  sub_26BE701EC(0, 0, 0, 0, 0);
  result = v9;
  *a4 = v10;
  *(a4 + 16) = v8;
  *(a4 + 32) = v9;
  *(a4 + 48) = v6;
  *(a4 + 56) = a3;
  return result;
}

uint64_t sub_26BFB77AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_26BFB7808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t MLS.AlgorithmIdentifier.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C00947C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MLS.AlgorithmIdentifier.algorithm.setter(uint64_t a1)
{
  v3 = sub_26C00947C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for MLS.AlgorithmIdentifier(uint64_t a1)
{
  result = qword_2804601F8;
  if (!qword_2804601F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.AlgorithmIdentifier.parameters.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.AlgorithmIdentifier(0) + 20);

  return sub_26BFB7A64(a1, v3);
}

uint64_t sub_26BFB7A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.AlgorithmIdentifier.init(algorithm:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for MLS.AlgorithmIdentifier(0) + 20);
  v7 = sub_26C0094DC();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = sub_26C00947C();
  (*(*(v8 - 8) + 32))(a3, a1, v8);

  return sub_26BFB7A64(a2, a3 + v6);
}

uint64_t MLS.AlgorithmIdentifier.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

void *sub_26BFB7CD0@<X0>(uint64_t a2@<X8>)
{
  v45 = a2;
  v2 = sub_26C00950C();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460210, &qword_26C022788);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = sub_26C00934C();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_26C00947C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0096AC();
  v21 = v46;
  result = sub_26C0096BC();
  if (!v21)
  {
    v36 = 0;
    v37 = v20;
    v38 = v18;
    v23 = v40;
    v24 = v41;
    v46 = v15;
    sub_26C0093EC();
    v25 = v23;
    v26 = v42;
    sub_26BE2E1F0(v23, v42, &qword_280460210, &qword_26C022788);
    v28 = v43;
    v27 = v44;
    v29 = 1;
    if ((*(v43 + 48))(v26, 1, v44) != 1)
    {
      (*(v28 + 32))(v24, v26, v27);
      (*(v28 + 16))(v39, v24, v27);
      sub_26C00948C();
      (*(v28 + 8))(v24, v27);
      v29 = 0;
    }

    sub_26BE2E258(v25, &qword_280460210, &qword_26C022788);
    v30 = sub_26C0094DC();
    v44 = *(*(v30 - 8) + 56);
    v31 = v46;
    v44(v46, v29, 1, v30);
    v32 = v37;
    v33 = v38;
    v34 = v45;
    (*(v38 + 16))(v45, v37, v17);
    sub_26BE2E1F0(v31, v13, &qword_28045EE48, &unk_26C022430);
    v35 = *(type metadata accessor for MLS.AlgorithmIdentifier(0) + 20);
    v44(v34 + v35, 1, 1, v30);
    sub_26BFB7A64(v13, v34 + v35);
    sub_26BE2E258(v31, &qword_28045EE48, &unk_26C022430);
    return (*(v33 + 8))(v32, v17);
  }

  return result;
}

uint64_t MLS.AlgorithmIdentifier.init(berEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C00934C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00950C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v17 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26C0097FC();
  v13 = *(v5 + 8);
  v13(a2, v4);
  v14 = *(v9 + 8);
  v14(v17, v8);
  v13(v7, v4);
  return (v14)(v11, v8);
}

uint64_t sub_26BFB83FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_26C0094DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  result = sub_26C00976C();
  if (!v2)
  {
    v12 = type metadata accessor for MLS.AlgorithmIdentifier(0);
    sub_26BE2E1F0(a2 + *(v12 + 20), v6, &qword_28045EE48, &unk_26C022430);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_26BE2E258(v6, &qword_28045EE48, &unk_26C022430);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_26C00976C();
      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t MLS.AlgorithmIdentifier.hash(into:)(uint64_t a1)
{
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v9 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BE2E1F0(v1 + *(v9 + 20), v8, &qword_28045EE48, &unk_26C022430);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_26C00B07C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_26C00B07C();
  sub_26BFBC2DC(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
  sub_26C00A3CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MLS.AlgorithmIdentifier.hashValue.getter()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BE2E1F0(v0 + *(v8 + 20), v7, &qword_28045EE48, &unk_26C022430);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_26C00B07C();
    sub_26BFBC2DC(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v2 + 8))(v4, v1);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFB8AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C0097FC();
  v5 = sub_26C00934C();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_26C00950C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t sub_26BFB8BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  sub_26BE2E1F0(v2 + *(a2 + 20), v10, &qword_28045EE48, &unk_26C022430);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_26C00B07C();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_26C00B07C();
  sub_26BFBC2DC(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
  sub_26C00A3CC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26BFB8E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  sub_26BE2E1F0(v2 + *(a2 + 20), v10, &qword_28045EE48, &unk_26C022430);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_26C00B07C();
    sub_26BFBC2DC(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v5 + 8))(v7, v4);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFB9380()
{
  v0 = sub_26C00952C();
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = sub_26C00947C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v8, qword_280460008);
  v9 = __swift_project_value_buffer(v8, qword_280460008);
  if (qword_28045E0D0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280479068);
  (*(v5 + 16))(v7, v10, v4);
  sub_26C00951C();
  sub_26C0094BC();
  v11 = sub_26C0094DC();
  v12 = *(*(v11 - 8) + 56);
  v12(v3, 0, 1, v11);
  v13 = *(v8 + 20);
  v12((v9 + v13), 1, 1, v11);
  (*(v5 + 32))(v9, v7, v4);
  return sub_26BFB7A64(v3, v9 + v13);
}

uint64_t sub_26BFB9828(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v12, a2);
  v13 = __swift_project_value_buffer(v12, a2);
  a3();
  v14 = sub_26C0094DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v16 = *(v12 + 20);
  v15((v13 + v16), 1, 1, v14);
  (*(v9 + 32))(v13, v11, v8);
  return sub_26BFB7A64(v7, v13 + v16);
}

uint64_t sub_26BFB9A38(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_26C00952C();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-v7];
  v9 = sub_26C00947C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v13, a2);
  v14 = __swift_project_value_buffer(v13, a2);
  a3();
  sub_26C00951C();
  sub_26C0094BC();
  v15 = sub_26C0094DC();
  v16 = *(*(v15 - 8) + 56);
  v16(v8, 0, 1, v15);
  v17 = *(v13 + 20);
  v16((v14 + v17), 1, 1, v15);
  (*(v10 + 32))(v14, v12, v9);
  return sub_26BFB7A64(v8, v14 + v17);
}

uint64_t sub_26BFB9D10()
{
  v0 = sub_26C00952C();
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = sub_26C00947C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v8, qword_2804600F8);
  v9 = __swift_project_value_buffer(v8, qword_2804600F8);
  if (qword_28045E0D8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280479080);
  (*(v5 + 16))(v7, v10, v4);
  sub_26C00951C();
  sub_26C0094BC();
  v11 = sub_26C0094DC();
  v12 = *(*(v11 - 8) + 56);
  v12(v3, 0, 1, v11);
  v13 = *(v8 + 20);
  v12((v9 + v13), 1, 1, v11);
  (*(v5 + 32))(v9, v7, v4);
  return sub_26BFB7A64(v3, v9 + v13);
}

uint64_t sub_26BFBA038()
{
  v0 = sub_26C00952C();
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = sub_26C00947C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v8, qword_280460128);
  v9 = __swift_project_value_buffer(v8, qword_280460128);
  if (qword_28045E0E0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280479098);
  (*(v5 + 16))(v7, v10, v4);
  sub_26C00951C();
  sub_26C0094BC();
  v11 = sub_26C0094DC();
  v12 = *(*(v11 - 8) + 56);
  v12(v3, 0, 1, v11);
  v13 = *(v8 + 20);
  v12((v9 + v13), 1, 1, v11);
  (*(v5 + 32))(v9, v7, v4);
  return sub_26BFB7A64(v3, v9 + v13);
}

uint64_t sub_26BFBA360()
{
  v0 = sub_26C00952C();
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = sub_26C00947C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v8, qword_280460158);
  v9 = __swift_project_value_buffer(v8, qword_280460158);
  if (qword_28045E0E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_2804790B0);
  (*(v5 + 16))(v7, v10, v4);
  sub_26C00951C();
  sub_26C0094BC();
  v11 = sub_26C0094DC();
  v12 = *(*(v11 - 8) + 56);
  v12(v3, 0, 1, v11);
  v13 = *(v8 + 20);
  v12((v9 + v13), 1, 1, v11);
  (*(v5 + 32))(v9, v7, v4);
  return sub_26BFB7A64(v3, v9 + v13);
}

uint64_t sub_26BFBA664(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = sub_26C00947C();
  v14 = __swift_project_value_buffer(v13, a4);
  (*(*(v13 - 8) + 16))(v12, v14, v13);
  v15 = sub_26C0094DC();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v17 = *(v11 + 20);
  v16((v12 + v17), 1, 1, v15);
  return sub_26BFB7A64(v10, v12 + v17);
}

uint64_t sub_26BFBA80C()
{
  v0 = sub_26C00952C();
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = sub_26C00947C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v8, qword_280460188);
  v9 = __swift_project_value_buffer(v8, qword_280460188);
  if (qword_28045E0F0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_2804790C8);
  (*(v5 + 16))(v7, v10, v4);
  sub_26C00951C();
  sub_26C0094BC();
  v11 = sub_26C0094DC();
  v12 = *(*(v11 - 8) + 56);
  v12(v3, 0, 1, v11);
  v13 = *(v8 + 20);
  v12((v9 + v13), 1, 1, v11);
  (*(v5 + 32))(v9, v7, v4);
  return sub_26BFB7A64(v3, v9 + v13);
}

unint64_t MLS.AlgorithmIdentifier.description.getter()
{
  v1 = v0;
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v6 = MEMORY[0x28223BE20](v55);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v1;
  sub_26BE13564(v1, v16);
  if (qword_28045DFF8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v14, qword_28045FF60);
  v56 = v16;
  if (sub_26C00945C())
  {
    v52 = v14;
    v53 = v8;
    v18 = *(v14 + 20);
    v19 = *(v11 + 48);
    sub_26BE2E1F0(v17 + v18, v13, &qword_28045EE48, &unk_26C022430);
    sub_26BE2E1F0(&v56[v18], &v13[v19], &qword_28045EE48, &unk_26C022430);
    v20 = *(v3 + 48);
    if (v20(v13, 1, v2) == 1)
    {
      if (v20(&v13[v19], 1, v2) == 1)
      {
        sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
LABEL_23:
        sub_26BFBBEA0(v56);
        v23 = 909455984;
        return v23 | 0x6C62755000000000;
      }

      goto LABEL_9;
    }

    sub_26BE2E1F0(v13, v10, &qword_28045EE48, &unk_26C022430);
    if (v20(&v13[v19], 1, v2) == 1)
    {
      (*(v3 + 8))(v10, v2);
LABEL_9:
      sub_26BE2E258(v13, &qword_28045F0D8, &unk_26C01A530);
      v14 = v52;
      v8 = v53;
      goto LABEL_10;
    }

    (*(v3 + 32))(v5, &v13[v19], v2);
    sub_26BFBC2DC(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
    v27 = sub_26C00A43C();
    v28 = *(v3 + 8);
    v28(v5, v2);
    v28(v10, v2);
    sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
    v14 = v52;
    v8 = v53;
    if (v27)
    {
      goto LABEL_23;
    }
  }

LABEL_10:
  if (qword_28045E000 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_28045FF78);
  v22 = v56;
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v21, v56))
  {
    sub_26BFBBEA0(v22);
    v23 = 876098416;
    return v23 | 0x6C62755000000000;
  }

  if (qword_28045E008 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_28045FF90);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v24, v22))
  {
    sub_26BFBBEA0(v22);
    v23 = 825374064;
    return v23 | 0x6C62755000000000;
  }

  if (qword_28045E018 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_28045FFC0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v25, v22))
  {
    goto LABEL_21;
  }

  if (qword_28045E020 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v14, qword_28045FFD8);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v29, v22))
  {
    goto LABEL_21;
  }

  if (qword_28045E028 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v14, qword_28045FFF0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v30, v22))
  {
LABEL_21:
    sub_26BFBBEA0(v22);
    return 0x7469576173646365;
  }

  if (qword_28045E040 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v14, qword_280460038);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v31, v22))
  {
    goto LABEL_38;
  }

  if (qword_28045E048 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v14, qword_280460050);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v32, v22))
  {
    goto LABEL_38;
  }

  if (qword_28045E050 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v14, qword_280460068);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v33, v22))
  {
    goto LABEL_38;
  }

  if (qword_28045E058 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v14, qword_280460080);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v34, v22) || _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v24, v22))
  {
    goto LABEL_38;
  }

  if (qword_28045E068 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v14, qword_2804600B0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v35, v22))
  {
LABEL_38:
    sub_26BFBBEA0(v22);
    return 0xD000000000000017;
  }

  if (qword_28045E080 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v14, qword_2804600F8);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v36, v22))
  {
    goto LABEL_57;
  }

  if (qword_28045E078 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v14, qword_2804600E0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v37, v22))
  {
LABEL_57:
    sub_26BFBBEA0(v22);
    return 828467315;
  }

  v38 = v14;
  v39 = v8;
  v40 = v54;
  if (qword_28045E090 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v38, qword_280460128);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v41, v22))
  {
    goto LABEL_64;
  }

  if (qword_28045E088 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v38, qword_280460110);
  v22 = v56;
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v42, v56))
  {
LABEL_64:
    sub_26BFBBEA0(v22);
    return 0x363532616873;
  }

  if (qword_28045E0A0 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v38, qword_280460158);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v43, v56))
  {
    goto LABEL_71;
  }

  if (qword_28045E098 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v38, qword_280460140);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v44, v56))
  {
LABEL_71:
    sub_26BFBBEA0(v56);
    return 0x343833616873;
  }

  if (qword_28045E0B0 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v38, qword_280460188);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v45, v56))
  {
    sub_26BFBBEA0(v56);
    return 0x323135616873;
  }

  if (qword_28045E0A8 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v38, qword_280460170);
  v47 = v56;
  v48 = _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v46, v56);
  sub_26BFBBEA0(v47);
  if (v48)
  {
    return 0x323135616873;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_26C00AC1C();

  v57 = 0xD000000000000014;
  v58 = 0x800000026C02D5A0;
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045E920, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);
  v49 = sub_26C00AEFC();
  MEMORY[0x26D699090](v49);

  MEMORY[0x26D699090](2108704, 0xE300000000000000);
  sub_26BE2E1F0(v40 + *(v38 + 20), v39, &qword_28045EE48, &unk_26C022430);
  v50 = sub_26C00A51C();
  MEMORY[0x26D699090](v50);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return v57;
}

uint64_t sub_26BFBB890(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-v6];
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  __swift_allocate_value_buffer(v13, a2);
  v14 = __swift_project_value_buffer(v13, a2);
  v15 = sub_26C00942C();
  a3(v15);
  sub_26C0094BC();
  v16 = sub_26C0094DC();
  v17 = *(*(v16 - 8) + 56);
  v17(v7, 0, 1, v16);
  v18 = *(v13 + 20);
  v17((v14 + v18), 1, 1, v16);
  (*(v9 + 32))(v14, v12, v8);
  return sub_26BFB7A64(v7, v14 + v18);
}

uint64_t sub_26BFBBAEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_26BE13564(v7, a4);
}

BOOL _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for MLS.AlgorithmIdentifier(0) + 20);
  v15 = *(v11 + 48);
  sub_26BE2E1F0(a1 + v14, v13, &qword_28045EE48, &unk_26C022430);
  sub_26BE2E1F0(a2 + v14, &v13[v15], &qword_28045EE48, &unk_26C022430);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
      return 1;
    }

    goto LABEL_7;
  }

  sub_26BE2E1F0(v13, v10, &qword_28045EE48, &unk_26C022430);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_26BE2E258(v13, &qword_28045F0D8, &unk_26C01A530);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_26BFBC2DC(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
  v19 = sub_26C00A43C();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
  return (v19 & 1) != 0;
}

uint64_t sub_26BFBBEA0(uint64_t a1)
{
  v2 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFBBFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BFBC0F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26BFBC200(uint64_t a1)
{
  sub_26C00947C();
  if (v1 <= 0x3F)
  {
    sub_26BFBC284(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BFBC284(uint64_t a1)
{
  if (!qword_280460208)
  {
    sub_26C0094DC();
    v1 = sub_26C00AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_280460208);
    }
  }
}

uint64_t sub_26BFBC2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFBC33C(uint64_t a1)
{
  v3 = sub_26C0094DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  sub_26BFBD0C0(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  v16 = a1;
  sub_26C00A3CC();
  v7 = *(v1 + *(_s14descr287CB9999C9AttributeVMa(0) + 20));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v3);
      sub_26C00B0DC();
      sub_26C0094AC();
      (*(v10 - 8))(v6, v3);
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v22 = v17;
      v23 = v18;
      v9 ^= sub_26C00B0BC();
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x26D699B20](v9);
}

uint64_t sub_26BFBC518()
{
  sub_26C00B05C();
  sub_26BFBC33C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFBC55C(uint64_t a1)
{
  sub_26C00B05C();
  sub_26BFBC33C(v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFBC59C()
{
  sub_26C00AC1C();

  sub_26C00947C();
  sub_26BFBD0C0(&qword_28045E920, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);
  v1 = sub_26C00AEFC();
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](0x7365756C6176202CLL, 0xEA0000000000203ALL);
  v2 = *(v0 + *(_s14descr287CB9999C9AttributeVMa(0) + 20));
  v3 = sub_26C0094DC();
  v4 = MEMORY[0x26D6991B0](v2, v3);
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0x7475626972747441;
}

void *sub_26BFBC6E0@<X0>(uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_26C00934C();
  v17 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = sub_26C00947C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0096AC();
  result = sub_26C0096BC();
  if (!v2)
  {
    v12 = v17;
    sub_26C0094DC();
    sub_26C0092FC();
    v13 = sub_26C0097CC();
    (*(v12 + 8))(v6, v3);
    v14 = v16;
    (*(v8 + 32))(v16, v10, v7);
    result = _s14descr287CB9999C9AttributeVMa(0);
    *(v14 + *(result + 5)) = v13;
  }

  return result;
}

uint64_t sub_26BFBC93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C00934C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  result = sub_26C00976C();
  if (!v2)
  {
    v9[1] = *(a2 + *(_s14descr287CB9999C9AttributeVMa(0) + 20));

    sub_26C0092FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460238, &qword_26C0228B8);
    sub_26BFBD05C();
    sub_26C00970C();
    (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_26BFBCAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C0097FC();
  v5 = sub_26C00934C();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_26C00950C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t _s14descr287CB9999C9AttributeVMa(uint64_t a1)
{
  result = qword_280460250;
  if (!qword_280460250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFBCDD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  sub_26BFBD0C0(&qword_280460230, MEMORY[0x277D6A958], MEMORY[0x277D6A968]);
  if ((sub_26C00A43C() & 1) == 0)
  {
    return 0;
  }

  result = _s14descr287CB9999C9AttributeVMa(0);
  v9 = *(result + 20);
  v10 = *(a1 + v9);
  v11 = *(v10 + 16);
  v12 = *(a2 + v9);
  if (v11 != *(v12 + 16))
  {
    return 0;
  }

  if (!v11)
  {
    return 1;
  }

  v13 = 0;
  v20 = *(a1 + v9);
  v21 = (v5 + 8);
  v18 = v5 + 16;
  v19 = v11;
  while (2)
  {
    if (v13 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v15 = *(v5 + 72);
      (*(v5 + 16))(v7, v10 + v14 + v15 * v13++, v4);
      v16 = v12 + v14;
      v17 = *(v12 + 16) + 1;
      do
      {
        if (!--v17)
        {
          (*v21)(v7, v4);
          return 0;
        }

        sub_26BFBD0C0(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
        v16 += v15;
      }

      while ((sub_26C00A43C() & 1) == 0);
      (*v21)(v7, v4);
      result = 1;
      v10 = v20;
      if (v13 != v19)
      {
        continue;
      }
    }

    break;
  }

  return result;
}

unint64_t sub_26BFBD05C()
{
  result = qword_280460240;
  if (!qword_280460240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460238, &qword_26C0228B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460240);
  }

  return result;
}

uint64_t sub_26BFBD0C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFBD11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BFBD1EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C00947C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_26BFBD2A4(uint64_t a1)
{
  sub_26C00947C();
  if (v1 <= 0x3F)
  {
    sub_26BFBD328(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BFBD328(uint64_t a1)
{
  if (!qword_280460260)
  {
    sub_26C0094DC();
    v1 = sub_26C00A7AC();
    if (!v2)
    {
      atomic_store(v1, &qword_280460260);
    }
  }
}

unint64_t sub_26BFBD380(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = result;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(result + 16);
  v11 = *(result + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = HIDWORD(result) - result;
  }

LABEL_11:
  result = sub_26BF30414(v10);
  if (v4)
  {
    return result;
  }

  v13 = result;
  result = sub_26BE11228(v8, a2);
  v14 = __OFADD__(v13, v10);
  v15 = v13 + v10;
  if (v14)
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a4);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_24;
  }

  v19 = *(a3 + 16);
  v18 = *(a3 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v17 = HIDWORD(a3) - a3;
  }

LABEL_24:
  v20 = sub_26BF30414(v17);
  result = sub_26BE11228(a3, a4);
  v21 = v20 + v17;
  if (__OFADD__(v20, v17))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = v15 + v21;
  if (__OFADD__(v15, v21))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_26BFBD4E0(uint64_t a1)
{
  v2 = _s25RelativeDistinguishedNameVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00B05C();
  v6 = *(a1 + 16);
  MEMORY[0x26D699B20](v6);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_26BFBEE3C(v7, v5);
      sub_26BFDBB64(v11);
      sub_26BFBEEA0(v5);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFBD5F8(uint64_t a1)
{
  v3 = _s25RelativeDistinguishedNameVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  result = MEMORY[0x26D699B20](*(*v1 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_26BFBEE3C(v10, v6);
      sub_26BFDBB64(a1);
      result = sub_26BFBEEA0(v6);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_26BFBD6F4(uint64_t a1)
{
  v2 = _s25RelativeDistinguishedNameVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_26C00B05C();
  MEMORY[0x26D699B20](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_26BFBEE3C(v8, v5);
      sub_26BFDBB64(v12);
      sub_26BFBEEA0(v5);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFBD814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804602E8, &qword_26C022DA0);
  return sub_26C00A70C();
}

uint64_t sub_26BFBD90C(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26BE58834(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = *(_s25RelativeDistinguishedNameVMa(0) - 8);
    result = sub_26BFBEEFC(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*sub_26BFBD9D8(void *a1, unint64_t *a2))(uint64_t ***a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(_s25RelativeDistinguishedNameVMa(0) - 8);
  v9 = *(v8 + 64);
  if (v5)
  {
    v7[1] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v7[1] = malloc(*(v8 + 64));
    result = malloc(v9);
  }

  v11 = *a2;
  v7[2] = result;
  v7[3] = v11;
  v12 = *v2;
  v7[4] = *v2;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v12 + 16))
  {
    v13 = *(v8 + 80);
    *(v7 + 12) = v13;
    v14 = v12 + ((v13 + 32) & ~v13);
    v15 = *(v8 + 72);
    v7[5] = v15;
    sub_26BFBEE3C(v14 + v15 * v11, result);
    return sub_26BFBDB30;
  }

  __break(1u);
  return result;
}

void sub_26BFBDB30(uint64_t ***a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26BFBEE3C(v2[2], v2[1]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v2[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_26BE58834(v2[4]);
    }

    v5 = v2[3];
    if (v5 < v4[2])
    {
      v7 = v2[1];
      v6 = v2[2];
      v8 = *v2;
      sub_26BFBEEFC(v7, v4 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v5);
      *v8 = v4;
      sub_26BFBEEA0(v6);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v9 = swift_isUniquelyReferenced_nonNull_native();
  v4 = v2[4];
  if ((v9 & 1) == 0)
  {
LABEL_13:
    v4 = sub_26BE58834(v4);
  }

  v10 = v2[3];
  if (v10 >= v4[2])
  {
    __break(1u);
    return;
  }

  v7 = v2[1];
  v6 = v2[2];
  v11 = *v2;
  sub_26BFBEEFC(v6, v4 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v10);
  *v11 = v4;
LABEL_9:
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_26BFBDC60(uint64_t *a1, unint64_t *a2)
{
  sub_26BFB5EAC(v2, *a2, a2[1], *a1, a1[1], a1[2]);
}

void (*sub_26BFBDCAC(uint64_t (***a1)(), uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = sub_26BFB3484(v4, *a2, a2[1]);
  return sub_26BFB333C;
}

uint64_t sub_26BFBDD24@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26BFB6A58(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_26BFBDD5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BFBD814(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_26BFBDDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF48, &qword_26C022478);
  result = MEMORY[0x28223BE20](v6);
  v9 = (&v11 - v8);
  v12 = MEMORY[0x277D84F90];
  if (!a2)
  {
    result = sub_26BFBEEA0(a1);
    v10 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *v9 = a2;
    sub_26BFBF034(a1, v9 + *(result + 28));
    result = sub_26BFB40D4(v9);
    v10 = v12;
LABEL_5:
    *a3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFBDEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>)
{
  v7 = sub_26BFBEF60(a1, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v7;
  return result;
}

uint64_t sub_26BFBDF24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(*v1 + 16);
  sub_26BFBF034(a1, &v11 - v7);
  sub_26BFBF098(v8, v6);
  sub_26BE56358(v9, v9, v6);
  return sub_26BFBF108(v8);
}

uint64_t sub_26BFBE000(uint64_t a1, unint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *a2;
  sub_26BFBF034(a1, &v12 - v8);
  sub_26BFBF098(v9, v7);
  sub_26BE56358(v10, v10, v7);
  return sub_26BFBF108(v9);
}

uint64_t sub_26BFBE0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = _s25RelativeDistinguishedNameVMa(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_26BFBE15C(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(_s25RelativeDistinguishedNameVMa(0) - 8);
    sub_26BFBEE3C(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), a1);

    sub_26BE5ADE0(0, 1);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_26BFBE1F0(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_26BFB76E8();
  if (v1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_26BE5ADE0(0, result);
}

unint64_t sub_26BFBE258(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    return sub_26BE5ADE0(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t (*sub_26BFBE2A8(uint64_t (*a1)(uint64_t), uint64_t a2))(void)
{
  result = sub_26BFB7090(a1, a2);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_26BE5ADE0(result, v5);
    }
  }

  return result;
}

uint64_t (*sub_26BFBE2F0(uint64_t (**a1)(), unint64_t *a2))()
{
  v5 = *(_s25RelativeDistinguishedNameVMa(0) - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_26BFBEE3C(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_26BFBE3EC;
  }

  __break(1u);
  return result;
}

void sub_26BFBE3EC(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFBEEA0(*a1);

  free(v1);
}

uint64_t sub_26BFBE428@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BFB76E8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26BFBE464()
{
  v1 = sub_26BFB645C(*v0);

  return v1;
}

uint64_t sub_26BFBE4A4@<X0>(uint64_t *a1@<X8>)
{
  _s25RelativeDistinguishedNameVMa(0);
  sub_26BFBF23C(&qword_280460310, &unk_26C0242CC);
  result = sub_26C00AEFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BFBE50C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804602F0, &qword_26C022DA8);
  sub_26BFBF170();
  v0 = sub_26C00A3EC();

  return v0;
}

uint64_t sub_26BFBE5A8(uint64_t a1)
{
  sub_26BE85E88();
  sub_26C00AEFC();
  return sub_26C00A51C();
}

void sub_26BFBE600(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    if (v4 == v3)
    {
      break;
    }

    _s25RelativeDistinguishedNameVMa(0);
    sub_26BFBF23C(&qword_280460318, &unk_26C02425C);
    sub_26C0096FC();
    ++v3;
  }

  while (!v2);
}

uint64_t sub_26BFBE6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s25RelativeDistinguishedNameVMa(0);
  sub_26BFBF23C(&qword_280460320, &unk_26C024234);
  v7 = sub_26C0097EC();
  if (v3)
  {
    v8 = sub_26C00934C();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_26C00950C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_26C00934C();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_26C00950C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

unint64_t sub_26BFBE968()
{
  result = qword_280460268;
  if (!qword_280460268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460268);
  }

  return result;
}

unint64_t sub_26BFBEA08()
{
  result = qword_280460280;
  if (!qword_280460280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460280);
  }

  return result;
}

unint64_t sub_26BFBEAA4()
{
  result = qword_280460298;
  if (!qword_280460298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460298);
  }

  return result;
}

unint64_t sub_26BFBEB40()
{
  result = qword_2804602A8;
  if (!qword_2804602A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602A8);
  }

  return result;
}

uint64_t sub_26BFBEBDC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460290, &qword_26C022A68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFBEC54()
{
  result = qword_2804602B8;
  if (!qword_2804602B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602B8);
  }

  return result;
}

unint64_t sub_26BFBECF0()
{
  result = qword_2804602C8;
  if (!qword_2804602C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602C8);
  }

  return result;
}

unint64_t sub_26BFBED90()
{
  result = qword_2804602D8;
  if (!qword_2804602D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602D8);
  }

  return result;
}

unint64_t sub_26BFBEDE8()
{
  result = qword_2804602E0;
  if (!qword_2804602E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602E0);
  }

  return result;
}

uint64_t sub_26BFBEE3C(uint64_t a1, uint64_t a2)
{
  v4 = _s25RelativeDistinguishedNameVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFBEEA0(uint64_t a1)
{
  v2 = _s25RelativeDistinguishedNameVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFBEEFC(uint64_t a1, uint64_t a2)
{
  v4 = _s25RelativeDistinguishedNameVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFBEF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s25RelativeDistinguishedNameVMa(0);
  return sub_26C00A7CC();
}

uint64_t sub_26BFBF034(uint64_t a1, uint64_t a2)
{
  v4 = _s25RelativeDistinguishedNameVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFBF098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFBF108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BFBF170()
{
  result = qword_2804602F8;
  if (!qword_2804602F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804602F0, &qword_26C022DA8);
    sub_26BE13630(&qword_280460300, &qword_280460308, &unk_26C022DB0, MEMORY[0x277D84438]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602F8);
  }

  return result;
}

uint64_t sub_26BFBF23C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s25RelativeDistinguishedNameVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFBF280()
{
  result = qword_280460328;
  if (!qword_280460328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460328);
  }

  return result;
}

uint64_t static DER.Serializer.serialized<A>(element:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26C00978C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00977C();
  sub_26C00976C();
  if (!v3)
  {
    a3 = sub_26C00971C();
  }

  (*(v6 + 8))(v8, v5);
  return a3;
}

uint64_t sub_26BFBF41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.CertificationRequestInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s18SignatureAlgorithmVMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26BFBF53C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLS.CertificationRequestInfo(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s18SignatureAlgorithmVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t _s25CertificateSigningRequestVMa(uint64_t a1)
{
  result = qword_280460330;
  if (!qword_280460330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BFBF690(uint64_t a1)
{
  type metadata accessor for MLS.CertificationRequestInfo(319);
  if (v1 <= 0x3F)
  {
    _s18SignatureAlgorithmVMa(319);
    if (v2 <= 0x3F)
    {
      sub_26BFBF73C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BFBF73C()
{
  if (!qword_280460340)
  {
    v0 = sub_26C00AB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280460340);
    }
  }
}

uint64_t sub_26BFBF78C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v60 - v8;
  v10 = _s25RelativeDistinguishedNameVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D699B20](*v1);
  v14 = v1[1];
  MEMORY[0x26D699B20](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    do
    {
      sub_26BFC16EC(v16, v13, _s25RelativeDistinguishedNameVMa);
      sub_26BFDBB64(a1);
      sub_26BFC1754(v13, _s25RelativeDistinguishedNameVMa);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  v18 = type metadata accessor for MLS.CertificationRequestInfo(0);
  sub_26BFCE15C(a1);
  sub_26BFD1C44(a1, *(v1 + *(v18 + 28)));
  v19 = _s25CertificateSigningRequestVMa(0);
  v20 = v1 + v19[5];
  sub_26C00947C();
  sub_26BFC17B4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v21 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(&v20[*(v21 + 20)], v9);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v22 = v61;
    (*(v5 + 32))(v61, v9, v4);
    sub_26C00B07C();
    sub_26BFC17B4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v5 + 8))(v22, v4);
  }

  v23 = v2 + v19[6];
  v24 = *(v23 + 1);
  if (v23[64])
  {
    MEMORY[0x26D699B20](1);
    sub_26C00911C();
  }

  else
  {
    v25 = *(v23 + 5);
    v26 = *(v23 + 6);
    v27 = *(v23 + 7);
    v29 = *(v23 + 2);
    v28 = *(v23 + 3);
    MEMORY[0x26D699B20](0);
    v30 = v28 >> 1;
    result = v30 - v29;
    if (__OFSUB__(v30, v29))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    result = MEMORY[0x26D699B20](result);
    v32 = __OFSUB__(v30, v29);
    v33 = v30 - v29;
    if (v33)
    {
      if ((v33 < 0) ^ v32 | (v33 == 0))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v34 = v24 + v29;
      do
      {
        ++v34;
        sub_26C00B07C();
        --v33;
      }

      while (v33);
    }

    v35 = v27 >> 1;
    result = (v27 >> 1) - v26;
    if (__OFSUB__(v27 >> 1, v26))
    {
      goto LABEL_39;
    }

    result = MEMORY[0x26D699B20](result);
    v36 = __OFSUB__(v35, v26);
    v37 = v35 - v26;
    if (v37)
    {
      if ((v37 < 0) ^ v36 | (v37 == 0))
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v38 = v25 + v26;
      do
      {
        ++v38;
        sub_26C00B07C();
        --v37;
      }

      while (v37);
    }
  }

  v39 = (v2 + v19[7]);
  v40 = v39[2];
  v41 = v39[3] >> 1;
  result = v41 - v40;
  if (__OFSUB__(v41, v40))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v42 = v39[1];
  result = MEMORY[0x26D699B20](result);
  v43 = __OFSUB__(v41, v40);
  v44 = v41 - v40;
  if (v44)
  {
    if ((v44 < 0) ^ v43 | (v44 == 0))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v45 = v42 + v40;
    do
    {
      ++v45;
      sub_26C00B07C();
      --v44;
    }

    while (v44);
  }

  v46 = (v2 + v19[8]);
  v47 = v46[2];
  v48 = v46[3] >> 1;
  result = v48 - v47;
  if (__OFSUB__(v48, v47))
  {
    goto LABEL_36;
  }

  v49 = v46[1];
  result = MEMORY[0x26D699B20](result);
  v50 = __OFSUB__(v48, v47);
  v51 = v48 - v47;
  if (v51)
  {
    if ((v51 < 0) ^ v50 | (v51 == 0))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v52 = v49 + v47;
    do
    {
      ++v52;
      sub_26C00B07C();
      --v51;
    }

    while (v51);
  }

  v53 = (v2 + v19[9]);
  v54 = v53[2];
  v55 = v53[3] >> 1;
  result = v55 - v54;
  if (__OFSUB__(v55, v54))
  {
    goto LABEL_37;
  }

  v56 = v53[1];
  result = MEMORY[0x26D699B20](result);
  v57 = __OFSUB__(v55, v54);
  v58 = v55 - v54;
  if (!v58)
  {
    return result;
  }

  if ((v58 < 0) ^ v57 | (v58 == 0))
  {
    goto LABEL_42;
  }

  v59 = v56 + v54;
  do
  {
    ++v59;
    result = sub_26C00B07C();
    --v58;
  }

  while (v58);
  return result;
}

uint64_t sub_26BFBFCC8()
{
  sub_26C00B05C();
  sub_26BFBF78C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFBFD0C(uint64_t a1)
{
  sub_26C00B05C();
  sub_26BFBF78C(v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFBFD4C()
{
  v1 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s9PublicKeyVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_26C00AC1C();
  result = MEMORY[0x26D699090](0xD000000000000023, 0x800000026C02D650);
  v8 = *v0;
  if (*v0)
  {
    v27 = 1985106755;
    v28 = 0xE400000000000000;
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      __break(1u);
      return result;
    }

    v26[1] = v10;
    v11 = sub_26C00AEFC();
    MEMORY[0x26D699090](v11);

    v12 = v27;
    v13 = v28;
  }

  else
  {
    v13 = 0xE500000000000000;
    v12 = 0x3176525343;
  }

  MEMORY[0x26D699090](v12, v13);

  MEMORY[0x26D699090](0x63656A627573202CLL, 0xEB00000000203A74);
  v27 = v0[1];
  sub_26BE85E88();
  v14 = sub_26C00AEFC();
  MEMORY[0x26D699090](v14);

  MEMORY[0x26D699090](0x63696C627570202CLL, 0xED0000203A79654BLL);
  v15 = type metadata accessor for MLS.CertificationRequestInfo(0);
  sub_26BFC16EC(v0 + *(v15 + 24), v6, _s9PublicKeyVMa);
  sub_26BFC16EC(v6, v3, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = 0x6275502E36353250;
  v18 = 0x6275502E31323550;
  v19 = 0x800000026C02C3C0;
  if (EnumCaseMultiPayload == 2)
  {
    v19 = 0xEE0079654B63696CLL;
  }

  else
  {
    v18 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload)
  {
    v17 = 0x6275502E34383350;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v21 = 0xEE0079654B63696CLL;
  }

  else
  {
    v21 = v19;
  }

  sub_26BFC1754(v3, _s9PublicKeyV16BackingPublicKeyOMa);
  MEMORY[0x26D699090](v20, v21);

  sub_26BFC1754(v6, _s9PublicKeyVMa);
  MEMORY[0x26D699090](0x626972747461202CLL, 0xEE00203A73657475);
  v22 = sub_26BFD219C(*(v0 + *(v15 + 28)));
  MEMORY[0x26D699090](v22);

  MEMORY[0x26D699090](0xD000000000000016, 0x800000026C02C380);
  v23 = _s25CertificateSigningRequestVMa(0);
  v24 = sub_26BFD12E4();
  MEMORY[0x26D699090](v24);

  MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
  if (*(v0 + *(v23 + 24) + 64))
  {
    v25 = 0x4153444445;
  }

  else
  {
    v25 = 0x4153444345;
  }

  MEMORY[0x26D699090](v25, 0xE500000000000000);

  return v29;
}

__n128 sub_26BFC0150@<Q0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v1 = _s18SignatureAlgorithmVMa(0);
  MEMORY[0x28223BE20](v1 - 8);
  v105 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C00959C();
  v109 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v106 = &v92 - v7;
  MEMORY[0x28223BE20](v6);
  v112 = &v92 - v8;
  v114 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v9 = MEMORY[0x28223BE20](v114);
  v103 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v108 = &v92 - v12;
  MEMORY[0x28223BE20](v11);
  v115 = &v92 - v13;
  v117 = type metadata accessor for MLS.CertificationRequestInfo(0);
  v14 = MEMORY[0x28223BE20](v117);
  v107 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460210, &qword_26C022788);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v121 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v92 - v23;
  v25 = sub_26C00950C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v111 = (&v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v113 = (&v92 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v116 = &v92 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v120 = &v92 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v124 = &v92 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v92 - v37;
  sub_26C0093EC();
  v39 = *(v26 + 48);
  if (v39(v24, 1, v25) == 1)
  {
    goto LABEL_2;
  }

  v102 = v3;
  v40 = v24;
  v41 = *(v26 + 32);
  v41(v38, v40, v25);
  sub_26C0093EC();
  if (v39(v22, 1, v25) == 1)
  {
    (*(v26 + 8))(v38, v25);
    goto LABEL_5;
  }

  v101 = v26;
  v43 = v124;
  v44 = v22;
  v45 = v41;
  v41(v124, v44, v25);
  v24 = v121;
  sub_26C0093EC();
  if (v39(v24, 1, v25) == 1)
  {
    v46 = *(v101 + 8);
    v46(v43, v25);
    v46(v38, v25);
LABEL_2:
    v22 = v24;
LABEL_5:
    sub_26BFC1684(v22);
    sub_26C00955C();
    sub_26BFC17B4(&qword_28045ED80, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
    swift_allocError();
    sub_26C00953C();
    swift_willThrow();
    return result;
  }

  v47 = v120;
  v45(v120, v24, v25);
  v48 = v101;
  v49 = v25;
  v50 = *(v101 + 16);
  v51 = v38;
  v50(v116, v38, v49);
  sub_26BFC17B4(&qword_280460360, type metadata accessor for MLS.CertificationRequestInfo, &protocol conformance descriptor for MLS.CertificationRequestInfo);
  v52 = v118;
  v53 = v119;
  sub_26C0096EC();
  if (v52)
  {
    v54 = *(v48 + 8);
    v54(v47, v49);
    v54(v124, v49);
    v54(v51, v49);
  }

  else
  {
    v50(v113, v124, v49);
    sub_26BFC17B4(&qword_28045EEC0, type metadata accessor for MLS.AlgorithmIdentifier, &protocol conformance descriptor for MLS.AlgorithmIdentifier);
    sub_26C0096EC();
    v50(v111, v120, v49);
    v55 = v112;
    v56 = v102;
    sub_26C0096EC();
    v121 = v49;
    v113 = type metadata accessor for MLS.CertificationRequestInfo;
    v57 = v107;
    sub_26BFC16EC(v53, v107, type metadata accessor for MLS.CertificationRequestInfo);
    v58 = v51;
    v111 = type metadata accessor for MLS.AlgorithmIdentifier;
    v59 = v108;
    sub_26BFC16EC(v115, v108, type metadata accessor for MLS.AlgorithmIdentifier);
    v60 = *(v109 + 16);
    v61 = v106;
    v60(v106, v55);
    v118 = v58;
    v114 = sub_26C0094FC();
    v100 = v62;
    v99 = v63;
    v98 = v64;
    v117 = sub_26C0094FC();
    v97 = v65;
    v96 = v66;
    v95 = v67;
    v116 = sub_26C0094FC();
    v94 = v68;
    v93 = v69;
    v92 = v70;
    v71 = v110;
    sub_26BFC16EC(v57, v110, v113);
    v72 = v103;
    sub_26BFC16EC(v59, v103, v111);
    v73 = _s25CertificateSigningRequestVMa(0);
    v74 = v73[5];
    sub_26BFD001C(v72, v71 + v74);
    v75 = v105;
    sub_26BFC16EC(v71 + v74, v105, _s18SignatureAlgorithmVMa);
    v76 = v104;
    (v60)(v104, v61, v56);
    sub_26BFE6910(v75, v76, v122);
    v77 = *(v109 + 8);
    v77(v61, v56);
    sub_26BFC1754(v108, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BFC1754(v107, type metadata accessor for MLS.CertificationRequestInfo);
    v77(v112, v56);
    sub_26BFC1754(v115, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BFC1754(v119, type metadata accessor for MLS.CertificationRequestInfo);
    v78 = *(v101 + 8);
    v79 = v121;
    v78(v120, v121);
    v78(v124, v79);
    v78(v118, v79);
    v80 = v110;
    v81 = v110 + v73[6];
    v82 = v122[3];
    *(v81 + 32) = v122[2];
    *(v81 + 48) = v82;
    *(v81 + 64) = v123;
    result = v122[1];
    *v81 = v122[0];
    *(v81 + 16) = result;
    v83 = (v80 + v73[7]);
    v84 = v100;
    *v83 = v114;
    v83[1] = v84;
    v85 = v98;
    v83[2] = v99;
    v83[3] = v85;
    v86 = (v80 + v73[8]);
    v87 = v97;
    *v86 = v117;
    v86[1] = v87;
    v88 = v95;
    v86[2] = v96;
    v86[3] = v88;
    v89 = (v80 + v73[9]);
    v90 = v94;
    *v89 = v116;
    v89[1] = v90;
    v91 = v92;
    v89[2] = v93;
    v89[3] = v91;
  }

  return result;
}

uint64_t sub_26BFC0DE0(uint64_t a1, uint64_t a2)
{
  _s25CertificateSigningRequestVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  sub_26BFC1620();
  sub_26C00972C();
  sub_26C00972C();
  return sub_26C00972C();
}

uint64_t sub_26BFC0EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C0097FC();
  v5 = sub_26C00934C();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_26C00950C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t sub_26BFC1194(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_26BFB126C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MLS.CertificationRequestInfo(0);
  if (!sub_26BFCF4B8(a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    return 0;
  }

  if ((sub_26BFD1C40(*(a1 + *(v4 + 28)), *(a2 + *(v4 + 28))) & 1) == 0)
  {
    return 0;
  }

  v5 = _s25CertificateSigningRequestVMa(0);
  if ((static MLS.AlgorithmIdentifier.== infix(_:_:)(a1 + v5[5], a2 + v5[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1 + v5[6];
  v7 = *(v6 + 1);
  v8 = *(v6 + 3);
  v76 = *(v6 + 2);
  v77 = v8;
  v78 = v6[64];
  v9 = *(v6 + 1);
  v75[0] = *v6;
  v75[1] = v9;
  v10 = a2 + v5[6];
  v11 = *(v10 + 1);
  v12 = *(v10 + 3);
  v80 = *(v10 + 2);
  v81 = v12;
  v13 = *(v10 + 1);
  v79[0] = *v10;
  v79[1] = v13;
  v14 = *(v6 + 3);
  v72 = v76;
  v73 = v14;
  v70 = v75[0];
  v71 = v7;
  v15 = *(v10 + 3);
  v67 = v80;
  v68 = v15;
  v82 = v10[64];
  v74 = v6[64];
  v69 = v10[64];
  v65 = v79[0];
  v66 = v11;
  sub_26BEC9F28(v75, v64);
  sub_26BEC9F28(v79, v64);
  v16 = sub_26BFE73B0(&v70, &v65);
  v83[2] = v67;
  v83[3] = v68;
  v84 = v69;
  v83[0] = v65;
  v83[1] = v66;
  sub_26BFC15B0(v83);
  v85[2] = v72;
  v85[3] = v73;
  v86 = v74;
  v85[0] = v70;
  v85[1] = v71;
  result = sub_26BFC15B0(v85);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v18 = v5[7];
  v19 = a1 + v18;
  v20 = *(a1 + v18 + 16);
  v21 = *(a1 + v18 + 24) >> 1;
  v22 = v21 - v20;
  if (__OFSUB__(v21, v20))
  {
    __break(1u);
    goto LABEL_71;
  }

  v23 = a2 + v18;
  v24 = *(a2 + v18 + 16);
  v25 = *(a2 + v18 + 24) >> 1;
  v26 = v25 - v24;
  if (__OFSUB__(v25, v24))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v22 != v26)
  {
    return 0;
  }

  if (v22)
  {
    v27 = *(v19 + 1) + v20;
    v28 = *(v23 + 1) + v24;
    if (v27 != v28 && v20 != v21)
    {
      if (v20 >= v21)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (v24 != v25)
      {
        v29 = 0;
        if (v24 <= v25)
        {
          v30 = v25;
        }

        else
        {
          v30 = v24;
        }

        v31 = v30 - v24;
        while (v31 != v29)
        {
          if (*(v27 + v29) != *(v28 + v29))
          {
            return 0;
          }

          if (~v20 + v21 == v29)
          {
            goto LABEL_26;
          }

          v32 = v20 + v29 + 1;
          if (v32 < v20 || v32 >= v21)
          {
            goto LABEL_73;
          }

          if (v26 == ++v29)
          {
            return 0;
          }
        }

        goto LABEL_72;
      }

      return 0;
    }
  }

LABEL_26:
  v33 = v5[8];
  v34 = a1 + v33;
  v35 = *(a1 + v33 + 16);
  v36 = *(a1 + v33 + 24) >> 1;
  if (__OFSUB__(v36, v35))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v37 = a2 + v33;
  v38 = *(a2 + v33 + 16);
  v39 = *(a2 + v33 + 24) >> 1;
  v40 = v39 - v38;
  if (__OFSUB__(v39, v38))
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v36 - v35 != v40)
  {
    return 0;
  }

  v41 = *(v34 + 1) + v35;
  v42 = *(v37 + 1) + v38;
  if (v36 == v35 || v41 == v42 || v35 == v36)
  {
LABEL_37:
    v45 = v5[9];
    v46 = a1 + v45;
    v47 = *(a1 + v45 + 16);
    v48 = *(a1 + v45 + 24) >> 1;
    v49 = v48 - v47;
    if (__OFSUB__(v48, v47))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v50 = a2 + v45;
    v51 = *(a2 + v45 + 16);
    v52 = *(a2 + v45 + 24) >> 1;
    v53 = v52 - v51;
    if (__OFSUB__(v52, v51))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v49 == v53)
    {
      if (!v49)
      {
        return 1;
      }

      v54 = *(v46 + 1) + v47;
      v55 = *(v50 + 1) + v51;
      if (v54 == v55 || v47 == v48)
      {
        return 1;
      }

      if (v47 >= v48)
      {
        goto LABEL_84;
      }

      if (v51 != v52)
      {
        v60 = 0;
        if (v51 <= v52)
        {
          v61 = v52;
        }

        else
        {
          v61 = v51;
        }

        v62 = v61 - v51;
        while (v62 != v60)
        {
          if (*(v54 + v60) != *(v55 + v60))
          {
            return 0;
          }

          if (~v47 + v48 == v60)
          {
            return 1;
          }

          v63 = v47 + v60 + 1;
          if (v63 < v47 || v63 >= v48)
          {
            goto LABEL_82;
          }

          if (v53 == ++v60)
          {
            return 0;
          }
        }

        goto LABEL_81;
      }
    }

    return 0;
  }

  if (v35 < v36)
  {
    if (v38 != v39)
    {
      v56 = 0;
      if (v38 <= v39)
      {
        v57 = v39;
      }

      else
      {
        v57 = v38;
      }

      v58 = v57 - v38;
      while (v58 != v56)
      {
        if (*(v41 + v56) != *(v42 + v56))
        {
          return 0;
        }

        if (~v35 + v36 == v56)
        {
          goto LABEL_37;
        }

        v59 = v35 + v56 + 1;
        if (v59 < v35 || v59 >= v36)
        {
          goto LABEL_77;
        }

        if (v40 == ++v56)
        {
          return 0;
        }
      }

      goto LABEL_76;
    }

    return 0;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

unint64_t sub_26BFC1620()
{
  result = qword_280460358;
  if (!qword_280460358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E410, &qword_26C021270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460358);
  }

  return result;
}

uint64_t sub_26BFC1684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460210, &qword_26C022788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFC16EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFC1754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFC17B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void MLS.Client.Client.ResyncInput.init(groupInfo:ratchetTree:keyPackage:useReflection:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  *(a6 + 49) = 0;
  *a6 = *a1;
  sub_26BE136AC(0, 0xF000000000000000);
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = v10;
  *(a6 + 40) = v11;
  *(a6 + 48) = a5;
}

uint64_t MLS.Client.Client.resync(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  return MEMORY[0x2822009F8](sub_26BFC1898, 0, 0);
}

uint64_t sub_26BFC1898()
{

  sub_26BF270AC((v0 + 2), (v0 + 9));
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BFC195C;
  v2 = v0[16];
  v3 = v0[17];

  return sub_26BEA202C(v2, v3, v3, (v0 + 2));
}

uint64_t sub_26BFC195C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void MLS.Client.Client.ResyncInput.groupInfo.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_26BE00608(v2, v3);
}

void MLS.Client.Client.ResyncInput.groupInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE00258(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t MLS.Client.Client.ResyncInput.ratchetTree.getter()
{
  v1 = *(v0 + 16);
  sub_26BE2E408(v1, *(v0 + 24));
  return v1;
}

void MLS.Client.Client.ResyncInput.ratchetTree.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE136AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void MLS.Client.Client.ResyncInput.keyPackage.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  sub_26BE00608(v2, v3);
}

void MLS.Client.Client.ResyncInput.keyPackage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE00258(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t MLS.Client.Client.ResyncInput.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000017, 0x800000026C02D6E0);
  v6 = sub_26BE83594(v1, v2);
  MEMORY[0x26D699090](v6);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  MEMORY[0x26D699090](0x666E4970756F7247, 0xEA0000000000286FLL);

  MEMORY[0x26D699090](0x656863746172202CLL, 0xEF203A6565725474);
  if (v3 >> 60 == 15)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v8 = sub_26C00901C();
    v7 = v9;
  }

  MEMORY[0x26D699090](v8, v7);

  MEMORY[0x26D699090](0x63615079656B202CLL, 0xEE00203A6567616BLL);
  v10 = sub_26BE83594(v4, v5);
  MEMORY[0x26D699090](v10);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  MEMORY[0x26D699090](0x616B63615079654BLL, 0xEB00000000286567);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

void MLS.Client.Client.ResyncOutput.externalCommit.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_26BE00608(v2, v3);
}

void MLS.Client.Client.ResyncOutput.externalCommit.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE00258(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t MLS.Client.Client.ResyncOutput.group.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26BFC1EC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26BFC1F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26BFC1F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BFC1FC4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26BFC2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[248] = a3;
  v3[247] = a2;
  v3[246] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v3[249] = swift_task_alloc();
  v3[250] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v3[251] = swift_task_alloc();
  v3[252] = swift_task_alloc();
  v3[253] = type metadata accessor for MLS.GroupState(0);
  v3[254] = swift_task_alloc();
  v3[255] = swift_task_alloc();
  v3[256] = swift_task_alloc();
  v4 = type metadata accessor for MLS.MLSMessage(0);
  v3[257] = v4;
  v3[258] = *(v4 - 8);
  v3[259] = swift_task_alloc();
  type metadata accessor for MLS.GroupInfo(0);
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v3[262] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BFC21E8, 0, 0);
}

uint64_t sub_26BFC21E8()
{
  v199 = v0;
  v1 = *(v0 + 1976);
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    *(v0 + 1592) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 1600) = sub_26BE295D8();
    *(v0 + 1568) = 0;
    v4 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 1568));
    if ((v4 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v5 = 0xD000000000000030;
      *(v5 + 8) = 0x800000026C02D700;
      *(v5 + 112) = 2;
      swift_willThrow();
LABEL_12:

      v45 = *(v0 + 8);

      return v45();
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 1984);
  v7 = sub_26C009A5C();
  __swift_project_value_buffer(v7, qword_280478E70);

  sub_26BF270AC(v6, v0 + 1416);
  v8 = sub_26C009A3C();
  v9 = sub_26C00AA1C();

  sub_26BEAFA4C(v6);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1984);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v198[0] = v12;
    *v11 = 136315394;
    v13 = sub_26BE16A38();
    v15 = sub_26BE29740(v13, v14, v198);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v186 = *v10;
    v187 = *(v10 + 16);
    v188 = *(v10 + 32);
    LOWORD(v189) = *(v10 + 48);
    sub_26BF270AC(v10, v0 + 1352);
    v16 = MLS.Client.Client.ResyncInput.description.getter();
    v18 = v17;
    v19 = v187;
    *(v0 + 1472) = v186;
    *(v0 + 1488) = v19;
    *(v0 + 1504) = v188;
    *(v0 + 1520) = v189;
    sub_26BEAFA4C(v0 + 1472);
    v20 = sub_26BE29740(v16, v18, v198);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_26BDFE000, v8, v9, "%s: performing resync with input: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v12, -1, -1);
    MEMORY[0x26D69A4E0](v11, -1, -1);
  }

  sub_26BE16490(&v186);
  v21 = *(v0 + 1984);
  v22 = v186;
  *(v0 + 2104) = v186;
  *(v0 + 1952) = *(v21 + 32);
  *(v0 + 1888) = *(v21 + 32);
  sub_26BFC50FC(v0 + 1952, v0 + 1856);
  MLS.Client.KeyPackage.asKeyPackage()(v0 + 384);
  v181 = (v0 + 1936);
  sub_26BE00258(*(v0 + 1888), *(v0 + 1896));
  v23 = *(v0 + 528);
  *(v0 + 144) = *(v0 + 512);
  *(v0 + 160) = v23;
  *(v0 + 176) = *(v0 + 544);
  *(v0 + 192) = *(v0 + 560);
  v24 = *(v0 + 464);
  *(v0 + 80) = *(v0 + 448);
  *(v0 + 96) = v24;
  v25 = *(v0 + 496);
  *(v0 + 112) = *(v0 + 480);
  *(v0 + 128) = v25;
  v26 = *(v0 + 400);
  *(v0 + 16) = *(v0 + 384);
  *(v0 + 32) = v26;
  v27 = *(v0 + 432);
  *(v0 + 48) = *(v0 + 416);
  *(v0 + 64) = v27;

  sub_26BE2DFC0(v0 + 16, v0 + 568);
  v28 = sub_26C009A3C();
  v29 = sub_26C00A9FC();

  sub_26BE2E01C(v0 + 16);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v198[0] = v31;
    *v30 = 136315394;
    v32 = sub_26BE16A38();
    v34 = sub_26BE29740(v32, v33, v198);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = *(v0 + 160);
    v194 = *(v0 + 144);
    v195 = v35;
    v196 = *(v0 + 176);
    v197 = *(v0 + 192);
    v36 = *(v0 + 96);
    v190 = *(v0 + 80);
    v191 = v36;
    v37 = *(v0 + 128);
    v192 = *(v0 + 112);
    v193 = v37;
    v38 = *(v0 + 32);
    v186 = *(v0 + 16);
    v187 = v38;
    v39 = *(v0 + 64);
    v188 = *(v0 + 48);
    v189 = v39;
    v40 = MLS.KeyPackage.description.getter();
    v42 = sub_26BE29740(v40, v41, v198);

    *(v30 + 14) = v42;
    _os_log_impl(&dword_26BDFE000, v28, v29, "%s: parsed key package: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v31, -1, -1);
    MEMORY[0x26D69A4E0](v30, -1, -1);
  }

  v43 = *(v0 + 2096);
  v44 = *(v0 + 1984);
  *v181 = *v44;
  v186 = *v44;
  sub_26BFC5158(v181, v0 + 1872);
  MLS.Group.GroupInfo.asGroupInfo()(v43);
  v47 = *(v0 + 2096);
  v48 = *(v0 + 2088);
  sub_26BE00258(v186, *(&v186 + 1));
  v50 = *(v47 + 8);
  v49 = *(v47 + 16);
  sub_26BFC5258(v47, v48, type metadata accessor for MLS.GroupInfo);

  sub_26BE00608(v50, v49);
  v51 = sub_26C009A3C();
  v52 = sub_26C00A9FC();
  v53 = v49;

  sub_26BE00258(v50, v49);
  v54 = os_log_type_enabled(v51, v52);
  v55 = *(v0 + 2088);
  v182 = v50;
  if (v54)
  {
    v178 = v52;
    v56 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    *&v186 = v174;
    *v56 = 136315650;
    v57 = sub_26BE16A38();
    v59 = sub_26BE29740(v57, v58, &v186);

    *(v56 + 4) = v59;
    *(v56 + 12) = 2080;
    v60 = MLS.GroupInfo.description.getter();
    v62 = v61;
    sub_26BFC51F8(v55, type metadata accessor for MLS.GroupInfo);
    v63 = sub_26BE29740(v60, v62, &v186);

    *(v56 + 14) = v63;
    *(v56 + 22) = 2080;
    v64 = sub_26C00901C();
    v66 = sub_26BE29740(v64, v65, &v186);

    *(v56 + 24) = v66;
    _os_log_impl(&dword_26BDFE000, v51, v178, "%s: parsed group info: %s, group ID: %s", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v174, -1, -1);
    MEMORY[0x26D69A4E0](v56, -1, -1);
  }

  else
  {

    sub_26BFC51F8(v55, type metadata accessor for MLS.GroupInfo);
  }

  v67 = *(v0 + 2096);
  v68 = *(v0 + 1976);
  swift_beginAccess();
  *(v0 + 2280) = *(v68 + 48);
  v69 = sub_26BE81FE0(*(v67 + 64));
  if ((v69 & 0x100000000) != 0)
  {
    v77 = 0;
    v78 = 0xC000000000000000;
    goto LABEL_23;
  }

  v175 = v53;
  v179 = v69;

  v70 = sub_26C009A3C();
  v71 = sub_26C00AA1C();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v186 = v73;
    *v72 = 136315394;
    v74 = sub_26BE16A38();
    v76 = sub_26BE29740(v74, v75, &v186);

    *(v72 + 4) = v76;
    *(v72 + 12) = 1024;
    *(v72 + 14) = v179;
    _os_log_impl(&dword_26BDFE000, v70, v71, "%s: including era %u in external commit", v72, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x26D69A4E0](v73, -1, -1);
    MEMORY[0x26D69A4E0](v72, -1, -1);
  }

  *(v0 + 1640) = 0;
  *(v0 + 1608) = 0u;
  *(v0 + 1624) = 0u;
  *(v0 + 1312) = 0u;
  *(v0 + 1328) = 0u;
  *(v0 + 1344) = 0;
  *(v0 + 1280) = 1;
  *(v0 + 1288) = 0;
  *(v0 + 1296) = 0xC000000000000000;
  *(v0 + 1304) = v179;
  sub_26BE7170C(v0 + 1608, v0 + 1312, &qword_28045E2A8, &qword_26C028DD0);
  v186 = xmmword_26C00BBD0;
  *&v187 = 0;
  sub_26BFF933C((v0 + 1280));
  v53 = v175;
  v83 = v186;
  v84 = *(&v186 + 1) >> 62;
  if ((*(&v186 + 1) >> 62) <= 1)
  {
    if (!v84)
    {
      goto LABEL_41;
    }

    v105 = v186 >> 32;
LABEL_39:
    if (v105 < 0)
    {
      __break(1u);
    }

    goto LABEL_41;
  }

  if (v84 == 2)
  {
    v105 = *(v186 + 24);
    goto LABEL_39;
  }

LABEL_41:
  v77 = sub_26C00909C();
  v78 = v114;
  sub_26BE00258(v83, *(&v83 + 1));
  sub_26BE6FDD8(v0 + 1280);
  sub_26BE00258(0, 0xC000000000000000);
LABEL_23:
  *(v0 + 2128) = v78;
  *(v0 + 2120) = v77;
  v79 = *(v0 + 1984);
  v80 = *(v79 + 24);
  if (v80 >> 60 == 15)
  {
    v81 = 0;
  }

  else
  {
    v82 = *(v79 + 16);
    sub_26BE00608(v82, *(v79 + 24));
    MLS.RatchetTree.init(rawValue:)(v82, v80, &v186);
    v81 = v186;
  }

  v85 = *(v0 + 2096);
  v186 = v22;
  v198[0] = v81;

  static MLS.Identity.findPriorAppearance(groupInfo:credential:ratchetTree:)(v85, &v186, v198, &v184);
  v86 = *(v0 + 1984);

  v180 = v77;
  if ((*(v86 + 49) & 1) == 0 && v185)
  {
    v87 = *(v0 + 2096);
    v88 = *(v0 + 2080);

    sub_26BFC5258(v87, v88, type metadata accessor for MLS.GroupInfo);

    sub_26BE04890(v22, *(&v22 + 1));
    v89 = sub_26C009A3C();
    v90 = v22;
    v91 = sub_26C00AA0C();

    sub_26BE0489C(v22, *(&v22 + 1));
    v92 = os_log_type_enabled(v89, v91);
    v93 = *(v0 + 2080);
    if (v92)
    {
      v94 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v198[0] = v183;
      *v94 = 136315650;
      v95 = sub_26BE16A38();
      v97 = sub_26BE29740(v95, v96, v198);

      *(v94 + 4) = v97;
      *(v94 + 12) = 2080;
      v186 = v22;
      v98 = MLS.Identity.Credential.description.getter();
      v100 = sub_26BE29740(v98, v99, v198);

      *(v94 + 14) = v100;
      *(v94 + 22) = 2080;
      v101 = MLS.GroupInfo.description.getter();
      v103 = v102;
      sub_26BFC51F8(v93, type metadata accessor for MLS.GroupInfo);
      v104 = sub_26BE29740(v101, v103, v198);
      v90 = v22;

      *(v94 + 24) = v104;
      _os_log_impl(&dword_26BDFE000, v89, v22, "%s: no prior appearance found for credential %s in group %s", v94, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v183, -1, -1);
      MEMORY[0x26D69A4E0](v94, -1, -1);
    }

    else
    {

      sub_26BFC51F8(v93, type metadata accessor for MLS.GroupInfo);
    }

    v115 = *(v0 + 2096);
    sub_26BE01654();
    swift_allocError();
    *v116 = 37;
    *(v116 + 8) = 0u;
    *(v116 + 24) = 0u;
    *(v116 + 40) = 0u;
    *(v116 + 56) = 0u;
    *(v116 + 72) = 0u;
    *(v116 + 88) = 0u;
    *(v116 + 104) = 0;
    *(v116 + 112) = 23;
    swift_willThrow();
    sub_26BE2E01C(v0 + 16);
    sub_26BE0489C(v90, *(&v22 + 1));
    sub_26BFC51F8(v115, type metadata accessor for MLS.GroupInfo);
    sub_26BE00258(v180, v78);
    goto LABEL_12;
  }

  v171 = v184;
  v172 = v185;

  v106 = sub_26C009A3C();
  v107 = sub_26C00AA1C();

  if (os_log_type_enabled(v106, v107))
  {
    v176 = v107;
    v108 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v198[0] = v169;
    *v108 = 136315394;
    v109 = sub_26BE16A38();
    v111 = sub_26BE29740(v109, v110, v198);

    *(v108 + 4) = v111;
    *(v108 + 12) = 2080;
    if (v172)
    {
      v112 = 0xE500000000000000;
      v113 = 0x3E6C696E3CLL;
    }

    else
    {
      *&v186 = 0;
      *(&v186 + 1) = 0xE000000000000000;
      sub_26C00AC1C();

      *&v186 = 0xD000000000000011;
      *(&v186 + 1) = 0x800000026C02B9D0;
      *(v0 + 1412) = v171;
      v117 = sub_26C00AEFC();
      MEMORY[0x26D699090](v117);

      MEMORY[0x26D699090](41, 0xE100000000000000);
      v112 = *(&v186 + 1);
      v113 = v186;
    }

    v118 = sub_26BE29740(v113, v112, v198);

    *(v108 + 14) = v118;
    _os_log_impl(&dword_26BDFE000, v106, v176, "%s: found prior appearance: %s", v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v169, -1, -1);
    MEMORY[0x26D69A4E0](v108, -1, -1);
  }

  else
  {
  }

  v173 = v78;
  v177 = v53;
  if (v81)
  {

    v119 = sub_26C009A3C();
    v120 = sub_26C00A9FC();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v198[0] = v122;
      *v121 = 136315138;
      *&v186 = v81;
      v123 = MLS.RatchetTree.description.getter();
      v125 = sub_26BE29740(v123, v124, v198);

      *(v121 + 4) = v125;
      _os_log_impl(&dword_26BDFE000, v119, v120, "parsed ratchet tree: %s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x26D69A4E0](v122, -1, -1);
      MEMORY[0x26D69A4E0](v121, -1, -1);
    }

    LOWORD(v184) = **(v0 + 2096);
    v198[0] = v81;
    MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v184, v198, &v186);
    v166 = *(&v22 + 1);
    v126 = v186;
    v127 = *(&v186 + 1);
    v128 = v187;
    v81 = *(&v187 + 1);
  }

  else
  {
    v166 = *(&v22 + 1);
    v126 = 0;
    v127 = 0;
    v128 = 0;
  }

  v168 = *(v0 + 2072);
  v170 = *(v0 + 2096);
  v167 = *(v0 + 2048);
  v129 = *(v0 + 1976);
  v130 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v129 + v130, v0 + 1528);
  v131 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v131;
  *(v0 + 360) = *(v0 + 176);
  *(v0 + 376) = *(v0 + 192);
  v132 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v132;
  v133 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v133;
  v134 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v134;
  v135 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 248) = v135;
  *(v0 + 1648) = v126;
  *(v0 + 1656) = v127;
  *(v0 + 1664) = v128;
  *(v0 + 1672) = v81;
  *(v0 + 1680) = *(v0 + 2280);
  *(v0 + 1688) = v180;
  *(v0 + 1696) = v173;
  *(v0 + 1704) = 0;
  *(v0 + 1404) = v171;
  *(v0 + 1408) = v172;
  sub_26BE00608(v180, v173);
  v136 = sub_26C001A78(MEMORY[0x277D84F90]);
  static MLS.GroupState.externalJoin(signaturePrivateKey:keyPackage:groupInfo:tree:messageOptions:removePrior:psks:)(v168, v167, (v0 + 1104), v0 + 1528, (v0 + 200), v170, (v0 + 1648), (v0 + 1680), (v0 + 1404), v136);
  v137 = *(v0 + 2072);
  v138 = *(v0 + 2064);

  sub_26BE00258(*(v0 + 1688), *(v0 + 1696));
  sub_26BFC51B4(*(v0 + 1648), *(v0 + 1656));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1528));
  v139 = *(v0 + 1248);
  *(v0 + 1056) = *(v0 + 1232);
  *(v0 + 1072) = v139;
  *(v0 + 1088) = *(v0 + 1264);
  v140 = *(v0 + 1184);
  *(v0 + 992) = *(v0 + 1168);
  *(v0 + 1008) = v140;
  v141 = *(v0 + 1216);
  *(v0 + 1024) = *(v0 + 1200);
  *(v0 + 1040) = v141;
  v142 = *(v0 + 1120);
  *(v0 + 928) = *(v0 + 1104);
  *(v0 + 944) = v142;
  v143 = *(v0 + 1152);
  *(v0 + 960) = *(v0 + 1136);
  *(v0 + 976) = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F248, &qword_26C01A888);
  v144 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_26C011280;
  sub_26BFC5258(v137, v145 + v144, type metadata accessor for MLS.MLSMessage);
  sub_26BEE6FC0(v145);
  *(v0 + 2136) = v146;
  *(v0 + 2144) = v147;
  v148 = v146;
  v149 = v147;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26BE00608(v148, v149);
  v150 = sub_26C009A3C();
  v151 = sub_26C00A9FC();
  v152 = v149;
  v153 = v151;
  v154 = v152;
  sub_26BE00258(v148, v152);
  if (os_log_type_enabled(v150, v153))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v198[0] = v156;
    *v155 = 136315138;
    *&v186 = 0x286567617373654DLL;
    *(&v186 + 1) = 0xE800000000000000;
    v157 = sub_26BE83594(v148, v154);
    MEMORY[0x26D699090](v157);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    v158 = sub_26BE29740(v186, *(&v186 + 1), v198);

    *(v155 + 4) = v158;
    _os_log_impl(&dword_26BDFE000, v150, v153, "generated external commit: %s", v155, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v156);
    MEMORY[0x26D69A4E0](v156, -1, -1);
    MEMORY[0x26D69A4E0](v155, -1, -1);
  }

  if (*(*(v0 + 1984) + 48))
  {
    *(v0 + 2152) = type metadata accessor for MLS.Group.PureSwiftGroup(0);

    sub_26BE00608(v182, v177);
    v159 = swift_task_alloc();
    *(v0 + 2160) = v159;
    *v159 = v0;
    v159[1] = sub_26BFC3980;
    v160 = *(v0 + 1976);

    return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v160, v182, v177);
  }

  else
  {
    v161 = *(v0 + 2048);
    v162 = *(v0 + 2032);
    *(v0 + 1904) = v22;
    *(v0 + 1912) = v166;
    sub_26BFC5258(v161, v162, type metadata accessor for MLS.GroupState);
    type metadata accessor for MLS.Group.PureSwiftGroup(0);
    swift_allocObject();

    sub_26BE04890(v22, v166);
    v163 = swift_task_alloc();
    *(v0 + 2256) = v163;
    *v163 = v0;
    v163[1] = sub_26BFC4938;
    v164 = *(v0 + 2032);
    v165 = *(v0 + 1976);

    return sub_26BF3DD04(v165, (v0 + 1904), v164);
  }
}

uint64_t sub_26BFC3980(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2168) = v1;

  if (v1)
  {
    v5 = sub_26BFC4DAC;
  }

  else
  {
    *(v4 + 2176) = a1;
    v5 = sub_26BFC3AA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BFC3AA8()
{
  v1 = *(v0 + 2176);
  if (v1)
  {
    *(v0 + 2208) = v1;
    v2 = *(v0 + 2048);
    v3 = swift_task_alloc();
    *(v0 + 2216) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_task_alloc();
    *(v0 + 2224) = v4;
    *v4 = v0;
    v4[1] = sub_26BFC4018;

    return (sub_26BE1A434)();
  }

  else
  {
    v6 = *(v0 + 2112);
    v7 = *(v0 + 2104);
    v8 = *(v0 + 2048);
    v9 = *(v0 + 2040);
    *(v0 + 1920) = v7;
    *(v0 + 1928) = v6;
    sub_26BFC5258(v8, v9, type metadata accessor for MLS.GroupState);
    swift_allocObject();

    sub_26BE04890(v7, v6);
    v10 = swift_task_alloc();
    *(v0 + 2184) = v10;
    *v10 = v0;
    v10[1] = sub_26BFC3C6C;
    v11 = *(v0 + 2040);
    v12 = *(v0 + 1976);

    return sub_26BF3DD04(v12, (v0 + 1920), v11);
  }
}

uint64_t sub_26BFC3C6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2192) = v1;

  if (v1)
  {
    v5 = sub_26BFC3E74;
  }

  else
  {
    *(v4 + 2200) = a1;
    v5 = sub_26BFC3D94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BFC3D94()
{
  v1 = v0[275];
  v0[276] = v1;
  v2 = v0[256];
  v3 = swift_task_alloc();
  v0[277] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[278] = v4;
  *v4 = v0;
  v4[1] = sub_26BFC4018;

  return sub_26BE1A434(sub_26BE1A434, &unk_26C00E218, v3);
}

uint64_t sub_26BFC3E74()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[264];
  v6 = v0[263];
  v7 = v0[262];
  v8 = v0[259];
  v9 = v0[256];
  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v2, v1);
  sub_26BE0489C(v6, v5);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v8, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v9, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v7, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v4, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BFC4018()
{
  *(*v1 + 2232) = v0;

  if (v0)
  {
    v2 = sub_26BFC44D0;
  }

  else
  {
    v2 = sub_26BFC414C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BFC414C()
{
  v1 = *(v0 + 2232);
  v2 = sub_26BE81FE0(*(*(v0 + 2048) + *(*(v0 + 2024) + 40)));
  if (v1)
  {
  }

  else
  {
    v3 = v2;
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v3 = sub_26BE4126C();
LABEL_5:
  v4 = *(*(v0 + 2048) + 24);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 2008);
  v6 = __swift_project_value_buffer(*(v0 + 2000), qword_28045E4F0);
  swift_beginAccess();
  sub_26BE30C8C(v6, v5);
  v7 = sub_26C00921C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = *(v0 + 2008);
  if (v10 == 1)
  {
    sub_26C00920C();
    if (v9(v11, 1, v7) != 1)
    {
      sub_26BE30E14(*(v0 + 2008));
    }
  }

  else
  {
    (*(v8 + 32))(*(v0 + 2016), *(v0 + 2008), v7);
  }

  v12 = *(v0 + 2208);
  v13 = *(v0 + 2048);
  v14 = *(v0 + 2016);
  v15 = *(v0 + 1992);
  (*(v8 + 56))(v14, 0, 1, v7);
  swift_beginAccess();
  sub_26BE4D1CC(v14, v3, v4);
  swift_endAccess();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v17 = (v15 + *(v16 + 48));
  sub_26BFC5258(v13, v15, type metadata accessor for MLS.GroupState);
  v19 = *(v0 + 944);
  v18 = *(v0 + 960);
  *v17 = *(v0 + 928);
  v17[1] = v19;
  v17[2] = v18;
  v20 = *(v0 + 1024);
  v22 = *(v0 + 976);
  v21 = *(v0 + 992);
  v17[5] = *(v0 + 1008);
  v17[6] = v20;
  v17[3] = v22;
  v17[4] = v21;
  v23 = *(v0 + 1056);
  v24 = *(v0 + 1088);
  v25 = *(v0 + 1040);
  v17[9] = *(v0 + 1072);
  v17[10] = v24;
  v17[7] = v25;
  v17[8] = v23;
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v26 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  swift_beginAccess();
  sub_26BE6FF30(v0 + 928, v0 + 752);
  sub_26BE7170C(v15, v12 + v26, &qword_28045E8D8, &qword_26C012580);
  swift_endAccess();
  v27 = swift_task_alloc();
  *(v0 + 2240) = v27;
  *v27 = v0;
  v27[1] = sub_26BFC467C;
  v28 = MEMORY[0x277D84F90];

  return sub_26BF394D4(v28);
}

uint64_t sub_26BFC44D0()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[264];
  v6 = v0[263];
  v7 = v0[262];
  v8 = v0[259];
  v9 = v0[256];

  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v2, v1);
  sub_26BE0489C(v6, v5);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v8, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v9, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v7, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v4, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BFC467C()
{
  *(*v1 + 2248) = v0;

  if (v0)
  {
    v2 = sub_26BFC4F50;
  }

  else
  {
    v2 = sub_26BFC4790;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BFC4790()
{
  v1 = *(v0 + 2112);
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2048);
  sub_26BE6FF8C(v0 + 928);
  sub_26BE0489C(v2, v1);
  sub_26BE2E01C(v0 + 16);
  sub_26BFC51F8(v3, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v4, type metadata accessor for MLS.GroupState);
  v5 = *(v0 + 2208);
  v6 = *(v0 + 2128);
  v7 = *(v0 + 2120);
  v8 = *(v0 + 2096);
  v9 = *(v0 + 1968);
  *v9 = *(v0 + 2136);
  *(v9 + 16) = v5;
  sub_26BFC51F8(v8, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v7, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26BFC4938(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2264) = v1;

  if (v1)
  {
    v5 = sub_26BFC4C08;
  }

  else
  {
    *(v4 + 2272) = a1;
    v5 = sub_26BFC4A60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BFC4A60()
{
  v1 = *(v0 + 2112);
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2048);
  sub_26BE6FF8C(v0 + 928);
  sub_26BE0489C(v2, v1);
  sub_26BE2E01C(v0 + 16);
  sub_26BFC51F8(v3, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v4, type metadata accessor for MLS.GroupState);
  v5 = *(v0 + 2272);
  v6 = *(v0 + 2128);
  v7 = *(v0 + 2120);
  v8 = *(v0 + 2096);
  v9 = *(v0 + 1968);
  *v9 = *(v0 + 2136);
  *(v9 + 16) = v5;
  sub_26BFC51F8(v8, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v7, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26BFC4C08()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[264];
  v6 = v0[263];
  v7 = v0[262];
  v8 = v0[259];
  v9 = v0[256];
  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v2, v1);
  sub_26BE0489C(v6, v5);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v8, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v9, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v7, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v4, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BFC4DAC()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[264];
  v6 = v0[263];
  v7 = v0[262];
  v8 = v0[259];
  v9 = v0[256];
  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v2, v1);
  sub_26BE0489C(v6, v5);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v8, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v9, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v7, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v4, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BFC4F50()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[264];
  v6 = v0[263];
  v7 = v0[262];
  v8 = v0[259];
  v9 = v0[256];

  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v2, v1);
  sub_26BE0489C(v6, v5);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v8, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v9, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v7, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v4, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BFC51B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26BFC51F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFC5258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFC52C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE28F58;

  return sub_26BF71D9C(a1, v5, v4);
}

uint64_t type metadata accessor for MLS.Digest(uint64_t a1)
{
  result = qword_280460370;
  if (!qword_280460370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFC53B8(uint64_t a1)
{
  result = sub_26C00A34C();
  if (v2 <= 0x3F)
  {
    result = sub_26C009C0C();
    if (v3 <= 0x3F)
    {
      result = sub_26C009C1C();
      if (v4 <= 0x3F)
      {
        result = sub_26C009C2C();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BFC5454(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_26C009C2C();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C009C1C();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009C0C();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A34C();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.Digest(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460380, &qword_26C0231B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_26C00A12C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v55 = *(a1 + 64);
  v21 = *(a1 + 48);
  v54[2] = *(a1 + 32);
  v54[3] = v21;
  v22 = *(a1 + 16);
  v54[0] = *a1;
  v54[1] = v22;
  if ((v55 & 1) == 0)
  {
    v36 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *(a1 + 16);
    v49[0] = *a1;
    v49[1] = v24;
    v25 = *(a1 + 48);
    v50 = *(a1 + 32);
    v51 = v25;
    v52[2] = v50;
    v52[3] = v25;
    v53 = *(a1 + 64);
    v52[0] = v49[0];
    v52[1] = v24;
    sub_26BFC5AA4(v54, v48);
    sub_26BFC5B00(v52, v48);
    P256.Signing.ECDSASignature.init(_:)(v49, v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_26BFC15B0(v54);
      sub_26BE2E258(v17, &qword_280460380, &qword_26C0231B0);
      v23 = 0;
      return v23 & 1;
    }

    (*(v19 + 32))(v36, v17, v18);
    sub_26BFC5B5C(v47, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v30 = v41;
        v29 = v42;
        v31 = v43;
        (*(v42 + 32))(v41, v14, v43);
        v32 = &unk_280460390;
        v33 = MEMORY[0x277CC52C8];
        v34 = MEMORY[0x277CC52C0];
      }

      else
      {
        v30 = v44;
        v29 = v45;
        v31 = v46;
        (*(v45 + 32))(v44, v14, v46);
        v32 = &unk_280460388;
        v33 = MEMORY[0x277CC52E8];
        v34 = MEMORY[0x277CC52E0];
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v27 = v37;
        (*(v37 + 32))(v11, v14, v9);
        sub_26BFC5BC0(&qword_2804603A0, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
        v28 = v36;
        v23 = sub_26C00A14C();
        sub_26BFC15B0(v54);
        (*(v27 + 8))(v11, v9);
LABEL_13:
        (*(v19 + 8))(v28, v18);
        return v23 & 1;
      }

      v30 = v38;
      v29 = v39;
      v31 = v40;
      (*(v39 + 32))(v38, v14, v40);
      v32 = &unk_280460398;
      v33 = MEMORY[0x277CC5290];
      v34 = MEMORY[0x277CC5288];
    }

    sub_26BFC5BC0(v32, v33, v34);
    v28 = v36;
    v23 = sub_26C00A14C();
    sub_26BFC15B0(v54);
    (*(v29 + 8))(v30, v31);
    goto LABEL_13;
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_26BFC5B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Digest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFC5BC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFC5C08(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_26C009C2C();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C009C1C();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009C0C();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A34C();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.Digest(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804603A8, &qword_26C0231B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_26C00A20C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v55 = *(a1 + 64);
  v21 = *(a1 + 48);
  v54[2] = *(a1 + 32);
  v54[3] = v21;
  v22 = *(a1 + 16);
  v54[0] = *a1;
  v54[1] = v22;
  if ((v55 & 1) == 0)
  {
    v36 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *(a1 + 16);
    v49[0] = *a1;
    v49[1] = v24;
    v25 = *(a1 + 48);
    v50 = *(a1 + 32);
    v51 = v25;
    v52[2] = v50;
    v52[3] = v25;
    v53 = *(a1 + 64);
    v52[0] = v49[0];
    v52[1] = v24;
    sub_26BFC5AA4(v54, v48);
    sub_26BFC5B00(v52, v48);
    P384.Signing.ECDSASignature.init(_:)(v49, v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_26BFC15B0(v54);
      sub_26BE2E258(v17, &qword_2804603A8, &qword_26C0231B8);
      v23 = 0;
      return v23 & 1;
    }

    (*(v19 + 32))(v36, v17, v18);
    sub_26BFC5B5C(v47, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v30 = v41;
        v29 = v42;
        v31 = v43;
        (*(v42 + 32))(v41, v14, v43);
        v32 = &unk_280460390;
        v33 = MEMORY[0x277CC52C8];
        v34 = MEMORY[0x277CC52C0];
      }

      else
      {
        v30 = v44;
        v29 = v45;
        v31 = v46;
        (*(v45 + 32))(v44, v14, v46);
        v32 = &unk_280460388;
        v33 = MEMORY[0x277CC52E8];
        v34 = MEMORY[0x277CC52E0];
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v27 = v37;
        (*(v37 + 32))(v11, v14, v9);
        sub_26BFC5BC0(&qword_2804603A0, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
        v28 = v36;
        v23 = sub_26C00A21C();
        sub_26BFC15B0(v54);
        (*(v27 + 8))(v11, v9);
LABEL_13:
        (*(v19 + 8))(v28, v18);
        return v23 & 1;
      }

      v30 = v38;
      v29 = v39;
      v31 = v40;
      (*(v39 + 32))(v38, v14, v40);
      v32 = &unk_280460398;
      v33 = MEMORY[0x277CC5290];
      v34 = MEMORY[0x277CC5288];
    }

    sub_26BFC5BC0(v32, v33, v34);
    v28 = v36;
    v23 = sub_26C00A21C();
    sub_26BFC15B0(v54);
    (*(v29 + 8))(v30, v31);
    goto LABEL_13;
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_26BFC6258(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_26C009C2C();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C009C1C();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009C0C();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A34C();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.Digest(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804603B0, &unk_26C0231C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_26C00A29C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v55 = *(a1 + 64);
  v21 = *(a1 + 48);
  v54[2] = *(a1 + 32);
  v54[3] = v21;
  v22 = *(a1 + 16);
  v54[0] = *a1;
  v54[1] = v22;
  if ((v55 & 1) == 0)
  {
    v36 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *(a1 + 16);
    v49[0] = *a1;
    v49[1] = v24;
    v25 = *(a1 + 48);
    v50 = *(a1 + 32);
    v51 = v25;
    v52[2] = v50;
    v52[3] = v25;
    v53 = *(a1 + 64);
    v52[0] = v49[0];
    v52[1] = v24;
    sub_26BFC5AA4(v54, v48);
    sub_26BFC5B00(v52, v48);
    P521.Signing.ECDSASignature.init(_:)(v49, v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_26BFC15B0(v54);
      sub_26BE2E258(v17, qword_2804603B0, &unk_26C0231C0);
      v23 = 0;
      return v23 & 1;
    }

    (*(v19 + 32))(v36, v17, v18);
    sub_26BFC5B5C(v47, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v30 = v41;
        v29 = v42;
        v31 = v43;
        (*(v42 + 32))(v41, v14, v43);
        v32 = &unk_280460390;
        v33 = MEMORY[0x277CC52C8];
        v34 = MEMORY[0x277CC52C0];
      }

      else
      {
        v30 = v44;
        v29 = v45;
        v31 = v46;
        (*(v45 + 32))(v44, v14, v46);
        v32 = &unk_280460388;
        v33 = MEMORY[0x277CC52E8];
        v34 = MEMORY[0x277CC52E0];
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v27 = v37;
        (*(v37 + 32))(v11, v14, v9);
        sub_26BFC5BC0(&qword_2804603A0, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
        v28 = v36;
        v23 = sub_26C00A2AC();
        sub_26BFC15B0(v54);
        (*(v27 + 8))(v11, v9);
LABEL_13:
        (*(v19 + 8))(v28, v18);
        return v23 & 1;
      }

      v30 = v38;
      v29 = v39;
      v31 = v40;
      (*(v39 + 32))(v38, v14, v40);
      v32 = &unk_280460398;
      v33 = MEMORY[0x277CC5290];
      v34 = MEMORY[0x277CC5288];
    }

    sub_26BFC5BC0(v32, v33, v34);
    v28 = v36;
    v23 = sub_26C00A2AC();
    sub_26BFC15B0(v54);
    (*(v29 + 8))(v30, v31);
    goto LABEL_13;
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_26BFC68AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _TinyArray.Storage(0, *(a2 + 16), a3, a4);

  return sub_26BFC8444(a1, v6, a3);
}

uint64_t sub_26BFC6900(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  v6 = type metadata accessor for _TinyArray.Storage(0, *(a1 + 16), v4, v5);
  sub_26BFC8444(v8, v6, a2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFC6998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = sub_26C00AC6C();
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  v9 = sub_26C00A76C();
  if (v9 == 1)
  {
    sub_26C00A7DC();

    sub_26C00AC7C();
    WitnessTable = swift_getWitnessTable();
    v12 = a3;
    v13 = v8;
    v14 = a2;
    v15 = v6;
    return sub_26BFC6B5C(v13, v14, v15, WitnessTable, v12);
  }

  if (v9)
  {
    v18 = a1;
    v16 = sub_26C00A7AC();
    WitnessTable = swift_getWitnessTable();
    v13 = &v18;
    v12 = a3;
    v14 = a2;
    v15 = v16;
    return sub_26BFC6B5C(v13, v14, v15, WitnessTable, v12);
  }

  return sub_26BFC7660(a2, a3);
}

uint64_t sub_26BFC6B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1);
  sub_26BFC75A0(v12, a2, a3, a4, a5);
  return (*(v10 + 8))(a1, a3);
}

uint64_t sub_26BFC6C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for _TinyArray.Storage(0, *(a2 + 16), a3, a4);

  return sub_26BFC6CBC(a1, v7, a5);
}

uint64_t sub_26BFC6CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C00A7DC();
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v10, v12, v6);
    if (a1)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_26C00AC1C();

      v19 = 0x207865646E69;
      v20 = 0xE600000000000000;
      v18[1] = a1;
      v17 = sub_26C00AEFC();
      MEMORY[0x26D699090](v17);

      MEMORY[0x26D699090](0x20666F2074756F20, 0xEE0073646E756F62);
      result = sub_26C00AD6C();
      __break(1u);
    }

    else
    {
      return (v16)(a3, v10, v6);
    }
  }

  return result;
}

uint64_t sub_26BFC6F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _TinyArray.Storage(0, *(a1 + 16), a3, a4);

  return sub_26BFC6F64(v4);
}

uint64_t sub_26BFC6F64(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26C00A76C();

    return v5;
  }

  else
  {
    (*(v2 + 8))(v4, a1);
    return 1;
  }
}

uint64_t sub_26BFC7070(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_26BFC710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26BFC7190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_26C00A89C();
}

uint64_t sub_26BFC7214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26BFC7288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_26BFC6F34(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t (*sub_26BFC72B0(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26BFC7338(v6, *a2, a3);
  return sub_26BFC9AF4;
}

uint64_t (*sub_26BFC7338(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v10 = v7;
  a1[2] = v7;
  v11 = type metadata accessor for _TinyArray.Storage(0, v5, v8, v9);
  sub_26BFC6CBC(a2, v11, v10);
  return sub_26BFC9AF8;
}

uint64_t sub_26BFC7414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_26BFC7480(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_26C00A8AC();
}

uint64_t sub_26BFC7534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_26BFC75A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = sub_26C00A73C();
  v11 = type metadata accessor for _TinyArray.Storage(0, a2, v9, v10);
  swift_storeEnumTagMultiPayload();
  sub_26BFC76BC(a1, v11, a3, a4);
  v12 = *(*(a3 - 8) + 8);

  return v12(a1, a3);
}

uint64_t sub_26BFC7660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_26C00A73C();
  type metadata accessor for _TinyArray.Storage(0, a1, v3, v4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26BFC76BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v101 = a1;
  v9 = *(a2 + 16);
  v10 = sub_26C00AAAC();
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v88 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v91 = (&v87 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v97 = &v87 - v16;
  v100 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v93 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v87 - v23;
  v103 = v9;
  v25 = *(v9 - 8);
  v26 = MEMORY[0x28223BE20](v22);
  v87 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v89 = &v87 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v92 = &v87 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v90 = &v87 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v87 - v35;
  v37 = *(a2 - 8);
  MEMORY[0x28223BE20](v34);
  v39 = (&v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v37 + 16);
  v99 = v5;
  v40(v39, v5, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v93 = v37;
    v96 = a2;
    v50 = v103;
    v91 = *(v25 + 4);
    (v91)(v36, v39, v103);
    (*(v100 + 16))(v18, v101, a3);
    sub_26C00A67C();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v52 = v97;
    v100 = AssociatedConformanceWitness;
    sub_26C00AADC();
    if ((*(v25 + 6))(v52, 1, v50) == 1)
    {
      (*(v98 + 8))(v24, AssociatedTypeWitness);
      (*(v25 + 1))(v36, v103);
      return (*(v94 + 1))(v52, v95);
    }

    v89 = v36;
    v94 = v24;
    v95 = AssociatedTypeWitness;
    v54 = v25;
    v55 = v99;
    (*(v93 + 8))(v99, v96);
    v56 = v90;
    (v91)(v90, v52, v103);
    v105 = sub_26C00A73C();
    result = sub_26C00A68C();
    if (!__OFADD__(result, 1))
    {
      v57 = v103;
      v58 = sub_26C00A7AC();
      sub_26C00A71C();
      v59 = v55;
      v60 = v54;
      v61 = v56;
      v62 = *(v54 + 2);
      v63 = v92;
      v64 = v89;
      v62(v92, v89, v57);
      sub_26C00A78C();
      v62(v63, v61, v57);
      sub_26C00A78C();
      v66 = v94;
      v65 = v95;
      Array.appendRemainingElements<A>(from:)(v94, v58, v95, v100);
      v67 = *(v60 + 1);
      v67(v61, v57);
      (*(v98 + 8))(v66, v65);
      v67(v64, v57);
      *v59 = v105;
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
    goto LABEL_19;
  }

  v41 = v100;
  v97 = v25;
  v104 = *v39;
  v105 = v104;
  v42 = sub_26C00A7AC();
  swift_getWitnessTable();
  if (sub_26C00A96C())
  {
    v90 = v42;
    v96 = a2;
    (*(v41 + 16))(v18, v101, a3);
    v43 = v93;
    sub_26C00A67C();
    v44 = swift_getAssociatedConformanceWitness();
    v45 = v91;
    sub_26C00AADC();
    v46 = v45;
    v47 = v97;
    v48 = *(v97 + 6);
    if (v48(v46, 1, v103) == 1)
    {
      (*(v98 + 8))(v43, AssociatedTypeWitness);

      return (*(v94 + 1))(v46, v95);
    }

    v100 = a3;
    (*(v37 + 8))(v99, v96);
    v68 = *(v47 + 4);
    v69 = v46;
    v70 = v43;
    v71 = AssociatedTypeWitness;
    v72 = v103;
    v68(v89, v69, v103);
    v73 = v88;
    v91 = v44;
    sub_26C00AADC();
    if (v48(v73, 1, v72) == 1)
    {
      (*(v98 + 8))(v70, v71);

      (*(v94 + 1))(v73, v95);
      v68(v99, v89, v103);
      return swift_storeEnumTagMultiPayload();
    }

    v95 = v71;
    v74 = v87;
    v68(v87, v73, v103);
    v75 = sub_26C00A76C();
    v76 = sub_26C00A68C();
    v77 = __OFADD__(v75, v76);
    result = v75 + v76;
    if (!v77)
    {
      v78 = v90;
      sub_26C00A71C();
      v79 = v97;
      v80 = *(v97 + 2);
      v81 = v92;
      v82 = v89;
      v83 = v103;
      v80(v92, v89, v103);
      sub_26C00A78C();
      v80(v81, v74, v83);
      sub_26C00A78C();
      v84 = v93;
      v85 = v95;
      Array.appendRemainingElements<A>(from:)(v93, v78, v95, v91);
      v86 = *(v79 + 1);
      v86(v74, v83);
      v86(v82, v83);
      (*(v98 + 8))(v84, v85);
      v53 = v99;
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v53 = v99;
  (*(v37 + 8))(v99, a2);
  (*(v41 + 16))(v18, v101, a3);
  sub_26C00A77C();
LABEL_9:
  *v53 = v105;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26BFC80CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a4;
  v28 = a1;
  v29 = a2;
  v5 = type metadata accessor for _TinyArray.Storage(255, a3, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v9 = v27 - v8;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v27 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v27 - v18;
  v20 = &v9[*(v17 + 56)];
  v21 = *(*(v5 - 8) + 16);
  v21(v9, v28, v5);
  v21(v20, v29, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = sub_26C00A7BC();

      return v22 & 1;
    }

    v9 = v20;
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = *(v10 + 32);
    v24(v16, v9, a3);
    v24(v13, v20, a3);
    v22 = sub_26C00A43C();
    v25 = *(v10 + 8);
    v25(v13, a3);
    v25(v16, a3);
    return v22 & 1;
  }

  (*(v10 + 32))(v19, v9, a3);
  if (sub_26C00A76C() == 1)
  {
    sub_26C00A7DC();

    v22 = sub_26C00A43C();
    v23 = *(v10 + 8);
    v23(v16, a3);
    v23(v19, a3);
  }

  else
  {
    (*(v10 + 8))(v19, a3);

    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_26BFC8444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_26C00AD5C();
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = sub_26C00A95C();
  MEMORY[0x26D699B20](v12);
  (*(*(a2 - 8) + 16))(v11, v3, a2);
  v18 = v9;
  v13 = *(v9 + 36);
  *&v11[v13] = 0;
  if (sub_26BFC6F64(a2))
  {
    v14 = 0;
    do
    {
      sub_26BFC6CBC(v14, a2, v8);
      v20 = v14;
      swift_getWitnessTable();
      sub_26C00A8AC();
      sub_26C00A3CC();
      (*(v6 + 8))(v8, v5);
      v15 = sub_26BFC6F64(a2);
      v14 = *&v11[v13];
    }

    while (v14 != v15);
  }

  return (*(v17 + 8))(v11, v18);
}

uint64_t sub_26BFC86C0(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  sub_26BFC8444(v5, a1, a2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFC8740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_26C00B05C();
  a4(v8, a2, v6);
  return sub_26C00B0CC();
}

uint64_t sub_26BFC87B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_26BFC8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26BFC88D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_26C00A89C();
}

uint64_t sub_26BFC895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26BFC89D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26BFC6F64(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_26BFC89F8(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26BFC8ACC(v6, *a2, a3);
  return sub_26BFC8A80;
}

void sub_26BFC8A84(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_26BFC8ACC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_26BFC6CBC(a2, a3, v9);
  return sub_26BFC8B9C;
}

void sub_26BFC8BA0(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_26BFC8BF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_26BFC8CE8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_26C00A8AC();
}

uint64_t sub_26BFC8D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, void))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a5(&v9, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_26BFC8E04@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a1 - 8) + 32))(a3, v4, a1);
  swift_getWitnessTable();
  result = sub_26C00AD5C();
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26BFC8E8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_26BFC8EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_26BFC99AC(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

uint64_t Array.appendRemainingElements<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = *(a2 + 16);
  v8 = sub_26C00AAAC();
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = *(v7 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v23 = a1;
  v25 = a3;
  v26 = a4;
  sub_26C00AADC();
  v22 = *(v12 + 48);
  if (v22(v11, 1, v7) != 1)
  {
    v18 = *(v12 + 32);
    do
    {
      v18(v17, v11, v7);
      (*(v12 + 16))(v15, v17, v7);
      sub_26C00A78C();
      (*(v12 + 8))(v17, v7);
      sub_26C00AADC();
    }

    while (v22(v11, 1, v7) != 1);
  }

  return (*(v20 + 8))(v11, v21);
}

uint64_t sub_26BFC91D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _TinyArray.Storage(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFC9244(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}