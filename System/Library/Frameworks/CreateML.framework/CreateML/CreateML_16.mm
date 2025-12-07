void sub_237B3C658()
{
  OUTLINED_FUNCTION_74();
  v44 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0();
  v48 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v46 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v47 = v42 - v11;
  MEMORY[0x28223BE20](v12);
  v52 = v42 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  OUTLINED_FUNCTION_0();
  v45 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = v42 - v16;
  v18 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v49 = (v22 - v23);
  MEMORY[0x28223BE20](v24);
  v26 = v42 - v25;
  v27 = v4;
  v50 = v2;
  sub_237C05DFC();
  sub_237C05FFC();
  v28 = *(v20 + 8);
  v28(v26, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080);
  if (swift_dynamicCastMetatype())
  {
    v42[1] = v27;
    v43 = v17;
    sub_237C05DEC();
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
    v29 = v52;
    v30 = v44;
    sub_237C05ECC();
    v44 = v30;
    v31 = v48;
    (*(v48 + 16))(v46, v29, v5);
    sub_237B42128(&qword_27DE9D3F8, &qword_27DE9B090, &unk_237C14050, MEMORY[0x277CE1900]);
    v32 = v5;
    v33 = v45;
    swift_bridgeObjectRetain_n();
    v34 = v47;
    sub_237C05EFC();
    sub_237C05EBC();
    v35 = *(v31 + 8);
    v35(v34, v32);
    sub_237C05E0C();
    v35(v52, v32);
    (*(v33 + 8))(v43, v51);
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000062, 0x8000000237C1CE60);
    v36 = v49;
    sub_237C05DFC();
    sub_237C05FFC();
    v28(v36, v18);
    v37 = sub_237C094DC();
    MEMORY[0x2383DC360](v37);

    OUTLINED_FUNCTION_51_7();
    v38 = v53;
    v39 = v54;
    sub_2379E8AF0();
    v40 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v41 = v38;
    v41[1] = v39;
    OUTLINED_FUNCTION_52(v40, v41);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B3CAEC()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v60 = v2;
  v4 = v3;
  v55 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_237BA2F3C();
  v12 = 0;
  v61 = *(v11 + 16);
  v62 = v11;
  v70 = v6;
  v67 = (v6 + 32);
  v13 = v11 + 40;
  v14 = MEMORY[0x277D84F90];
  v54 = v11 + 40;
LABEL_2:
  for (i = (v13 + 16 * v12); ; i += 2)
  {
    if (v61 == v12)
    {
      goto LABEL_40;
    }

    if (v12 >= *(v62 + 16))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v16 = *(i - 1);
    v17 = *i;

    v65 = v16;
    v18 = sub_237ACDA88();
    if (!v18)
    {
      goto LABEL_48;
    }

    v19 = v18;
    v20 = sub_2379DFF68(0, *(v18 + 16));
    v21 = v1;
    sub_237B3D088(v20, v4, v60);
    v66 = v22;
    if (v1)
    {

LABEL_40:

      OUTLINED_FUNCTION_73();
      return;
    }

    if (*(v4 + 16))
    {
      break;
    }

    ++v12;
  }

  v56 = *(v4 + 16);
  v23 = 0;
  v71 = v19;
  v63 = v17;
  v57 = v12 + 1;
  v58 = v4;
  while (1)
  {
    v64 = v23;
    if (*(v14 + 16) <= v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      v24 = sub_237C085AC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_40_13();
        sub_237BC1E44();
        v14 = v52;
      }

      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_106(v25);
        OUTLINED_FUNCTION_40_13();
        sub_237BC1E44();
        v14 = v53;
      }

      *(v14 + 16) = v26 + 1;
      *(v14 + 8 * v26 + 32) = v24;
      v19 = v71;
    }

    if (v23 >= *(v66 + 16))
    {
      break;
    }

    v27 = *(v66 + 32 + 8 * v23);
    v28 = *(v27 + 16);
    if (v28)
    {
      v59 = v14;
      v72 = MEMORY[0x277D84F90];

      sub_237AC8AF4(0, v28, 0);
      v29 = v72;
      v69 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v68 = v19 + v69;
      v30 = 32;
      v31 = v55;
      while (1)
      {
        v32 = *(v27 + v30);
        if ((v32 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v32 >= *(v19 + 16))
        {
          goto LABEL_42;
        }

        v33 = v27;
        v34 = *(v70 + 72);
        (*(v70 + 16))(v10, v68 + v34 * v32, v31);
        v36 = *(v72 + 16);
        v35 = *(v72 + 24);
        if (v36 >= v35 >> 1)
        {
          v37 = OUTLINED_FUNCTION_106(v35);
          sub_237AC8AF4(v37, v36 + 1, 1);
          v31 = v55;
        }

        *(v72 + 16) = v36 + 1;
        (*v67)(v72 + v69 + v36 * v34, v10, v31);
        v30 += 8;
        --v28;
        v19 = v71;
        v27 = v33;
        if (!v28)
        {

          v14 = v59;
          v17 = v63;
          v23 = v64;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237B05FE4(v14, v38, v39, v40);
      v14 = v51;
    }

    if (v23 >= *(v14 + 16))
    {
      goto LABEL_45;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v14 + 32 + 8 * v23);
    *(v14 + 32 + 8 * v23) = 0x8000000000000000;
    v41 = sub_237ACAC78(v65, v17);
    if (__OFADD__(v73[2], (v42 & 1) == 0))
    {
      goto LABEL_46;
    }

    v43 = v41;
    v44 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
    if (sub_237C090AC())
    {
      v45 = sub_237ACAC78(v65, v63);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_49;
      }

      v43 = v45;
    }

    v19 = v71;
    v17 = v63;
    if (v44)
    {
      *(v73[7] + 8 * v43) = v29;
    }

    else
    {
      OUTLINED_FUNCTION_27_14(&v73[v43 >> 6]);
      v47 = (v73[6] + 16 * v43);
      *v47 = v65;
      v47[1] = v63;
      *(v73[7] + 8 * v43) = v29;
      v48 = v73[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_47;
      }

      v73[2] = v50;
    }

    *(v14 + 32 + 8 * v64) = v73;

    v23 = v64 + 1;
    v12 = v57;
    v4 = v58;
    v1 = v21;
    if (v64 + 1 == v56)
    {

      v13 = v54;
      goto LABEL_2;
    }
  }

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
  sub_237C0932C();
  __break(1u);
}

void sub_237B3D088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD000000000000024;
  if (!*(a2 + 16))
  {
    v8 = "-zero proportion is required.";
    goto LABEL_16;
  }

  v73 = *(a2 + 16);
  v6 = COERCE_DOUBLE(sub_237B0251C(a2));
  if (v7)
  {
    goto LABEL_61;
  }

  if (v6 < 0.0)
  {
    v8 = "ed.";
    v3 = 0xD00000000000002ALL;
LABEL_16:
    v21 = v8 | 0x8000000000000000;
    sub_2379E8AF0();
    v22 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v23 = v3;
    v23[1] = v21;
    OUTLINED_FUNCTION_52(v22, v23);
    return;
  }

  v9 = COERCE_DOUBLE(sub_2379FBDB8(a2));
  if ((v10 & 1) == 0)
  {
    if (v9 <= 0.0)
    {
      v8 = "e proportions are allowed.";
      v3 = 0xD00000000000002DLL;
      goto LABEL_16;
    }

    v71 = a1;
    v69 = *(a1 + 16);
    v75 = sub_2379DFF68(0, v69);
    sub_237B4A36C();
    v11 = 0;
    v74 = v75;
    v12 = a2 + 32;
    v13 = 0.0;
    do
    {
      v14 = *(v12 + 8 * v11++);
      v13 = v13 + v14;
    }

    while (v73 != v11);
    v76 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v15 = v73;
    v16 = 0;
    v17 = *(v76 + 16);
    do
    {
      v18 = *(v12 + 8 * v16);
      v19 = *(v76 + 24);
      v20 = v17 + 1;
      if (v17 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_106(v19);
        sub_237AC8B54();
        v15 = v73;
      }

      ++v16;
      *(v76 + 16) = v20;
      *(v76 + 8 * v17++ + 32) = v18 / v13;
    }

    while (v15 != v16);
    v24 = MEMORY[0x277D84F90];
    sub_237BC0EDC(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = v25;
    v27 = 0;
    v28 = *(v25 + 16);
    v29 = 8 * v28;
    do
    {
      if (v28 + v27)
      {
        v30 = *(v26 + v29 + 8 * v27 + 24);
      }

      else
      {
        v30 = 0.0;
      }

      v31 = *(v76 + 32 + 8 * v27);
      if ((v28 + v27) >= *(v26 + 24) >> 1)
      {
        OUTLINED_FUNCTION_40_13();
        sub_237BC0EDC(v32, v33, v34, v35);
        v26 = v36;
      }

      *(v26 + 16) = v28 + v27 + 1;
      *(v26 + v29 + 8 * v27++ + 32) = v31 + v30;
    }

    while (v20 != v27);

    v37 = *(v26 + 16);
    if (v37)
    {
      sub_237AC8A34(0, v37, 0);
      v38 = 32;
      v39 = v24;
      while (1)
      {
        v40 = round(*(v26 + v38) * v69);
        if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v40 <= -9.22337204e18)
        {
          goto LABEL_57;
        }

        if (v40 >= 9.22337204e18)
        {
          goto LABEL_58;
        }

        v77 = v39;
        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v42 >= v41 >> 1)
        {
          v43 = OUTLINED_FUNCTION_106(v41);
          sub_237AC8A34(v43, v42 + 1, 1);
          v39 = v77;
        }

        *(v39 + 16) = v42 + 1;
        *(v39 + 8 * v42 + 32) = v40;
        v38 += 8;
        if (!--v37)
        {
          v44 = v39;

          v45 = v44;
          goto LABEL_33;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
LABEL_33:
      v46 = 0;
      v47 = 0;
      v48 = v45 + 32;
      v49 = v73;
      v50 = v71 + 32;
      v51 = MEMORY[0x277D84F90];
      v72 = v45;
      while (v47 != v49)
      {
        if (v47 >= *(v45 + 16))
        {
          goto LABEL_60;
        }

        if (v46 < *(v48 + 8 * v47))
        {
          v70 = v51;
          sub_237BC0EB4(0, 1, 1, MEMORY[0x277D84F90]);
          v52 = v69;
          v51 = v70;
          v54 = v53;
          v55 = v74;
          v56 = v46;
          v57 = v74 + 4;
          while ((v46 & 0x8000000000000000) == 0)
          {
            if (v56 >= v55[2])
            {
              goto LABEL_54;
            }

            v58 = v57[v56];
            if (v58 >= v52)
            {
              goto LABEL_55;
            }

            v59 = *(v50 + 8 * v58);
            v61 = *(v54 + 16);
            v60 = *(v54 + 24);
            if (v61 >= v60 >> 1)
            {
              v62 = OUTLINED_FUNCTION_106(v60);
              sub_237BC0EB4(v62, v61 + 1, 1, v54);
              v52 = v69;
              v51 = v70;
              v54 = v63;
              v57 = v74 + 4;
              v55 = v74;
            }

            *(v54 + 16) = v61 + 1;
            *(v54 + 8 * v61 + 32) = v59;
            if (++v56 >= *(v48 + 8 * v47))
            {
              goto LABEL_46;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v56 = v46;
        v54 = MEMORY[0x277D84F90];
LABEL_46:
        v64 = v51;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v51 = v64;
        }

        else
        {
          sub_237BC0DEC();
          v51 = v67;
        }

        v66 = *(v51 + 16);
        v65 = *(v51 + 24);
        v49 = v73;
        v45 = v72;
        if (v66 >= v65 >> 1)
        {
          OUTLINED_FUNCTION_106(v65);
          sub_237BC0DEC();
          v51 = v68;
          v45 = v72;
          v49 = v73;
        }

        ++v47;
        *(v51 + 16) = v66 + 1;
        *(v51 + 8 * v66 + 32) = v54;
        v46 = v56;
        if (v47 == v49)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
}

void MLSoundClassifier.DataSource.labeledSounds()()
{
  OUTLINED_FUNCTION_74();
  v88 = v1;
  v2 = v0;
  *&v89 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - v8;
  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = (v22 - v21);
  OUTLINED_FUNCTION_2_68();
  sub_237B4216C(v2, v23, v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v12 + 32))(v16, v23, v10);
      sub_237C0820C();
      v31 = v88;
      sub_237A5D608();
      if (v31)
      {
        OUTLINED_FUNCTION_46_11();
        v33(v6, v89);
        (*(v12 + 8))(v16, v10);
        goto LABEL_41;
      }

      v29 = v32;
      v88 = 0;
      OUTLINED_FUNCTION_46_11();
      v35(v6, v89);
      (*(v12 + 8))(v16, v10);
      goto LABEL_12;
    case 2u:
      v29 = *v23;
      goto LABEL_12;
    case 3u:
      sub_237B421C8(v23, type metadata accessor for MLSoundClassifier.DataSource);
      goto LABEL_7;
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);

      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v28 + 8))(v23);
LABEL_7:
      v30 = sub_237C08C1C();
      sub_237BABE74(0xD000000000000044, 0x8000000237C1CD10, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      sub_237C085AC();
      goto LABEL_41;
    default:
      (*(v12 + 32))(v19, v23, v10);
      sub_237C0820C();
      v25 = v88;
      sub_237A5C58C();
      if (v25)
      {
        OUTLINED_FUNCTION_46_11();
        v27(v9, v89);
        (*(v12 + 8))(v19, v10);
        goto LABEL_41;
      }

      v29 = v26;
      v88 = 0;
      OUTLINED_FUNCTION_46_11();
      v34(v9, v89);
      (*(v12 + 8))(v19, v10);
LABEL_12:
      v36 = 0;
      OUTLINED_FUNCTION_5_33();
      v40 = v39 & v38;
      v42 = (v41 + 63) >> 6;
      v43 = MEMORY[0x277D84F98];
      v86 = v42;
      v87 = v37;
      v92 = v29;
      if ((v39 & v38) != 0)
      {
        goto LABEL_17;
      }

      break;
  }

  while (1)
  {
LABEL_13:
    v44 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      sub_237C0932C();
      __break(1u);
      JUMPOUT(0x237B3DEC8);
    }

    if (v44 >= v42)
    {
      break;
    }

    v40 = v37[v44];
    ++v36;
    if (v40)
    {
      v36 = v44;
      while (1)
      {
LABEL_17:
        v45 = (*(v29 + 48) + 16 * (__clz(__rbit64(v40)) | (v36 << 6)));
        v47 = *v45;
        v46 = v45[1];

        *&v89 = sub_237BF3078(v48);

        swift_isUniquelyReferenced_nonNull_native();
        v90 = v43;
        v49 = sub_237ACAC78(v47, v46);
        if (__OFADD__(v43[2], (v50 & 1) == 0))
        {
          goto LABEL_44;
        }

        v51 = v49;
        v52 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
        if (sub_237C090AC())
        {
          v53 = sub_237ACAC78(v47, v46);
          v29 = v92;
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_46;
          }

          v51 = v53;
          if ((v52 & 1) == 0)
          {
LABEL_21:
            v43 = v90;
            OUTLINED_FUNCTION_27_14(v90 + 8 * (v51 >> 6));
            v55 = (v43[6] + 16 * v51);
            *v55 = v47;
            v55[1] = v46;
            *(v43[7] + 8 * v51) = v89;
            v56 = v43[2];
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_45;
            }

            v43[2] = v58;
            goto LABEL_25;
          }
        }

        else
        {
          v29 = v92;
          if ((v52 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v43 = v90;
        *(*(v90 + 56) + 8 * v51) = v89;

LABEL_25:
        v40 &= v40 - 1;
        v42 = v86;
        v37 = v87;
        if (!v40)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v59 = v88;
  v87 = sub_237B41D1C(v43);
  v88 = v59;
  v60 = v87 + 8;
  OUTLINED_FUNCTION_5_33();
  v63 = v62 & v61;
  v65 = (v64 + 63) >> 6;
  v86 = 0x8000000237C1A100;

  v66 = 0;
  v89 = xmmword_237C0B660;
  if (!v63)
  {
    goto LABEL_29;
  }

  do
  {
    v67 = v66;
LABEL_33:
    v68 = (v87[6] + ((v67 << 10) | (16 * __clz(__rbit64(v63)))));
    v69 = *v68;
    v70 = v68[1];
    v63 &= v63 - 1;
    v90 = 0;
    v91 = 0xE000000000000000;

    sub_237C08EDC();

    v90 = 0xD000000000000019;
    v91 = v86;
    MEMORY[0x2383DC360](v69, v70);

    MEMORY[0x2383DC360](11815, 0xE200000000000000);
    v71 = v90;
    v72 = v91;
    v93 = sub_237C08C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v73 = swift_allocObject();
    *(v73 + 16) = v89;
    *(v73 + 56) = MEMORY[0x277D837D0];
    *(v73 + 32) = v71;
    *(v73 + 40) = v72;

    sub_237C0939C();

    sub_2379E8EE0(0, &qword_27DE9AD70, 0x277D86200);
    v74 = sub_237C08CFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v75 = swift_allocObject();
    *(v75 + 16) = v89;
    *(v75 + 56) = MEMORY[0x277D837D0];
    *(v75 + 64) = sub_237A8E8E4();
    *(v75 + 32) = v71;
    *(v75 + 40) = v72;
    sub_237C0826C("%@\n", 3, 2, &dword_2379D3000, v74, v93, v75);
  }

  while (v63);
  while (1)
  {
LABEL_29:
    v67 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_43;
    }

    if (v67 >= v65)
    {
      break;
    }

    v63 = v60[v67];
    ++v66;
    if (v63)
    {
      v66 = v67;
      goto LABEL_33;
    }
  }

  v76 = v87;

  if (*(v76 + 16))
  {

    v77 = 0xE000000000000000;
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C1CD60);
    v78 = sub_237B3B28C(v76);
    if (v79)
    {
      v77 = v79;
    }

    else
    {
      v78 = 0;
    }

    MEMORY[0x2383DC360](v78, v77);

    MEMORY[0x2383DC360](0xD000000000000029, 0x8000000237C1CD80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
    v80 = sub_237C085CC();
    MEMORY[0x2383DC360](v80);

    OUTLINED_FUNCTION_51_7();
    v81 = v90;
    v82 = v91;
    sub_2379E8AF0();
    v83 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v84 = v81;
    v84[1] = v82;
    OUTLINED_FUNCTION_52(v83, v84);
  }

  else
  {
  }

LABEL_41:
  OUTLINED_FUNCTION_73();
}

void sub_237B3DEDC(uint64_t a1)
{
  v3 = v1;
  v36 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_2_68();
  sub_237B4216C(v3, v17, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v35 = a1;
    v25 = *v17;
    v26 = *(v17 + 8);
    v27 = *(v17 + 48);
    v34 = *(v17 + 56);
    LODWORD(v33) = *(v17 + 64);
    v32 = *(v17 + 72);
    v31 = *(v17 + 80);
    v37 = v25;
    LOBYTE(v38) = v26;
    v28 = v25;
    sub_2379DBCF4(v25, v26);
    sub_237A70ED4(&v37, v10);
    sub_237B3E278();
    if (v2)
    {
      (*(v6 + 8))(v10, v36);
      sub_2379DBC9C(v28, v26);

      goto LABEL_7;
    }

    (*(v6 + 8))(v10, v36);

    v37 = v27;
    v38 = v34;
    v39 = v33;
    v40 = v32;
    v41 = v31;
    sub_237B4AFF4(&v37, v35);
    sub_2379DBC9C(v28, v26);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v35 = a1;
    v20 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770) + 80);
    v21 = *v20;
    v22 = *(v20 + 8);
    LODWORD(v34) = *(v20 + 16);
    v33 = *(v20 + 24);
    LODWORD(v32) = *(v20 + 32);
    v23 = v17;
    v24 = v36;
    (*(v6 + 32))(v13, v23, v36);
    sub_237B3E278();
    if (v2)
    {
      (*(v6 + 8))(v13, v24);

LABEL_7:

      return;
    }

    v37 = v21;
    v38 = v22;
    v39 = v34;
    v40 = v33;
    v41 = v32;
    sub_237B4AFF4(&v37, v35);
    (*(v6 + 8))(v13, v24);
  }

  else
  {
    OUTLINED_FUNCTION_6_52();
    sub_237B421C8(v17, v29);
  }
}

void sub_237B3E278()
{
  OUTLINED_FUNCTION_74();
  v26 = v1;
  v27 = v2;
  v4 = v3;
  v6 = v5;
  v31 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v28 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237C05CFC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  sub_237C05D0C();
  v11 = sub_237AC1A4C(v10);
  v12 = OUTLINED_FUNCTION_29_11();
  v13(v12);
  if (!v11)
  {
    sub_237C05C9C();
    if (v17)
    {
      OUTLINED_FUNCTION_4_5();
      sub_237C08EDC();

      OUTLINED_FUNCTION_36_13("Provided feature table does not contain column ");
      MEMORY[0x2383DC360](v6, v4);
      OUTLINED_FUNCTION_51_7();
      sub_2379E8AF0();
      v14 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      *v15 = v29;
      v15[1] = v30;
      goto LABEL_5;
    }

    sub_237C05D5C();
    v18 = sub_237C05FFC();
    if (sub_237B3E574(v18))
    {
      sub_237C05C9C();
      if (v19)
      {
        OUTLINED_FUNCTION_4_5();
        sub_237C08EDC();

        OUTLINED_FUNCTION_36_13("Provided feature table does not contain column ");
        MEMORY[0x2383DC360](v26, v27);
        OUTLINED_FUNCTION_51_7();
        sub_2379E8AF0();
        v20 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v21 = v29;
        v21[1] = v30;
LABEL_11:
        OUTLINED_FUNCTION_52(v20, v21);
LABEL_12:
        (*(v28 + 8))(v0, v31);
        goto LABEL_13;
      }

      if (sub_237B3BBC0(v26, v27))
      {
        goto LABEL_12;
      }

      v22 = 0x8000000237C1CF80;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      OUTLINED_FUNCTION_25_24();
      v24 = v25 + 11;
    }

    else
    {
      v22 = 0x8000000237C1CF30;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      OUTLINED_FUNCTION_25_24();
      v24 = v23 + 17;
    }

    *v21 = v24;
    v21[1] = v22;
    goto LABEL_11;
  }

  sub_2379E8AF0();
  OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  OUTLINED_FUNCTION_25_24();
  *v15 = v16 - 15;
  v15[1] = 0x8000000237C1CFC0;
LABEL_5:
  OUTLINED_FUNCTION_52(v14, v15);
LABEL_13:
  OUTLINED_FUNCTION_73();
}

uint64_t MLSoundClassifier.DataSource.stratifiedSplit(proportions:seed:)(uint64_t a1, uint64_t a2)
{
  MLSoundClassifier.DataSource.labeledSounds()();
  if (!v2)
  {
    sub_237B03618(a2, __src);
    sub_237B3CAEC();
    a1 = v6;
    memcpy(v7, __src, sizeof(v7));
    sub_237B07C38(v7);
  }

  return a1;
}

uint64_t MLSoundClassifier.DataSource.stratifiedSplit<A>(proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MLSoundClassifier.DataSource.labeledSounds()();
  if (!v4)
  {
    v8 = v7;
    v9 = OUTLINED_FUNCTION_29_11();
    a4 = sub_237B038C8(v9, v10, v8, a3, a4);
  }

  return a4;
}

void *sub_237B3E7C4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  if (!*result)
  {
    v9 = 0;
LABEL_13:
    *a2 = v9;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_237C10D30;
  v6 = *(v4 + 16);
  *(v5 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v8 = sub_237AC8938(v5, 65600);
  if (!v2)
  {
    v9 = v8;
    result = sub_237C08D4C();
    if (v6)
    {
      v10 = result;
      v11 = v4 + 32;
      while (1)
      {
        sub_2379E9068(v11, v13, &qword_27DE9A998, &unk_237C0C100);
        if (!v14)
        {
          break;
        }

        result = swift_dynamicCast();
        if (!result)
        {
          goto LABEL_9;
        }

        v12 = v15;
LABEL_10:
        *v10++ = v12;
        v11 += 32;
        if (!--v6)
        {
          goto LABEL_13;
        }
      }

      result = sub_237B42220(v13, &qword_27DE9A998);
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t MLSoundClassifier.DataSource.diagnose()()
{
  v2 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_2_68();
  sub_237B4216C(v0, v1, v10);
  OUTLINED_FUNCTION_32_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v18 = OUTLINED_FUNCTION_147();
      v19(v18);
      v13 = sub_237B3F6C8();
      goto LABEL_8;
    case 2u:
      v15 = sub_237B40080(*v1);

      return v15;
    case 3u:
      OUTLINED_FUNCTION_6_52();
      sub_237B421C8(v1, v16);
      goto LABEL_6;
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);

      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v14 + 8))(v1);
LABEL_6:
      v17 = sub_237C08C1C();
      sub_237BABE74(0xD000000000000047, 0x8000000237C1CDB0, v17);
      v15 = MEMORY[0x277D84F90];
      break;
    default:
      v11 = OUTLINED_FUNCTION_147();
      v12(v11);
      sub_237B3EBEC(v8);
LABEL_8:
      v15 = v13;
      (*(v4 + 8))(v8, v2);
      break;
  }

  return v15;
}

void sub_237B3EBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D458, &qword_237C13B98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v60 - v3;
  v5 = type metadata accessor for DataSourceIssue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v74 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v88 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v81 = &v60 - v11;
  v69 = sub_237C0825C();
  v12 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_237C05ADC();
  v71 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v91 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  v19 = 0;
  sub_237A5CD94();
  v21 = *(v20 + 16);
  v73 = v18;
  v70 = v21;
  if (!v21)
  {
    v89 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
    v22 = v71;
    v23 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_237C0B660;
    (*(v22 + 16))(v24 + v23, a1, v90);
    v20 = v24;
    v70 = *(v24 + 16);
    if (!v70)
    {

      v89 = MEMORY[0x277D84F90];
      return;
    }

    v18 = v73;
    v12 = v89;
  }

  v25 = 0;
  v61 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v66 = v20 + v61;
  v65 = (v12 + 8);
  v78 = 0x8000000237C1CFF0;
  v77 = "unreadableAudioFile";
  v86 = (v71 + 8);
  v64 = 0x8000000237C1BC60;
  v63 = "noExamplesForLabel";
  v62 = xmmword_237C0B660;
  v89 = MEMORY[0x277D84F90];
  v26 = v81;
  v80 = v71 + 16;
  v79 = v6;
  v68 = v14;
  v67 = v20;
LABEL_5:
  if (v25 < *(v20 + 16))
  {
    v27 = *(v71 + 72);
    v75 = v25;
    v85 = v27;
    v87 = *(v71 + 16);
    v87(v18, v66 + v27 * v25, v90);
    sub_237C0820C();
    sub_237A5D3A4();
    if (v19)
    {

      v29 = MEMORY[0x277D84F90];
    }

    else
    {
      v29 = v28;
    }

    v76 = 0;
    (*v65)(v14, v69);
    v30 = *(v29 + 16);
    if (!v30)
    {

      goto LABEL_27;
    }

    v82 = 0;
    v72 = v29;
    v31 = v29 + v61;
    while (1)
    {
      v32 = v91;
      v87(v91, v31, v90);
      sub_237BF3444(v32);
      if (!v33)
      {
        sub_237BF0A78(v4);
        goto LABEL_17;
      }

      if (v33 == 1)
      {
        break;
      }

      if (v33 == 2)
      {
        v92 = 0;
        v93 = 0xE000000000000000;
        sub_237C08EDC();

        v92 = sub_237C05A8C();
        v93 = v34;
        MEMORY[0x2383DC360](0xD000000000000024, v77 | 0x8000000000000000);
        v83 = v93;
        v84 = v92;
        sub_237B0778C();
        v35 = sub_237C085AC();
        v36 = *(v5 + 24);
        v37 = v90;
        __swift_storeEnumTagSinglePayload(&v4[v36], 1, 1, v90);
        v38 = *(v5 + 28);
        sub_237C085AC();

        v39 = v78;
        *v4 = 0xD000000000000013;
        *(v4 + 1) = v39;
        v40 = v83;
        *(v4 + 2) = v84;
        *(v4 + 3) = v40;
        *&v4[v38] = v35;
        v26 = v81;
        sub_237B42220(&v4[v36], &qword_27DE9AA18);
        v87(&v4[v36], v91, v37);
        v41 = &v4[v36];
        v6 = v79;
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v37);
LABEL_17:
        __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
        sub_237B07BD4(v4, v26);
        sub_237B4216C(v26, v88, type metadata accessor for DataSourceIssue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237BC1F0C();
          v89 = v46;
        }

        v42 = *(v89 + 16);
        if (v42 >= *(v89 + 24) >> 1)
        {
          sub_237BC1F0C();
          v89 = v47;
        }

        sub_237B421C8(v26, type metadata accessor for DataSourceIssue);
        v43 = *v86;
        (*v86)(v91, v90);
        v44 = v88;
        v45 = v89;
        *(v89 + 16) = v42 + 1;
        sub_237B07BD4(v44, v45 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v42);
        goto LABEL_23;
      }

      v43 = *v86;
      (*v86)(v91, v90);
      v82 = 1;
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
      sub_237B42220(v4, &qword_27DE9D458);
LABEL_23:
      v31 += v85;
      if (!--v30)
      {

        if (v82)
        {
          v18 = v73;
          v43(v73, v90);
          v14 = v68;
          v19 = v76;
          goto LABEL_32;
        }

LABEL_27:
        v48 = sub_237C059DC();
        v50 = v49;
        v92 = 0;
        v93 = 0xE000000000000000;
        sub_237C08EDC();

        v92 = 0x22206C6562614CLL;
        v93 = 0xE700000000000000;
        MEMORY[0x2383DC360](v48, v50);
        MEMORY[0x2383DC360](0xD000000000000012, v63 | 0x8000000000000000);
        v87 = v92;
        v85 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDA8, &qword_237C16720);
        inited = swift_initStackObject();
        *(inited + 16) = v62;
        *(inited + 32) = 0x6C6562616CLL;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v48;
        *(inited + 56) = v50;
        sub_237B0778C();

        v52 = sub_237C085AC();
        v53 = v74;
        __swift_storeEnumTagSinglePayload(v74 + *(v5 + 24), 1, 1, v90);
        v54 = *(v5 + 28);
        sub_237C085AC();

        *v53 = 0xD000000000000012;
        v55 = v87;
        v53[1] = v64;
        v53[2] = v55;
        v53[3] = v85;
        *(v53 + v54) = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237BC1F0C();
          v89 = v58;
        }

        v56 = *(v89 + 16);
        v26 = v81;
        v14 = v68;
        v18 = v73;
        v19 = v76;
        if (v56 >= *(v89 + 24) >> 1)
        {
          sub_237BC1F0C();
          v89 = v59;
        }

        (*v86)(v18, v90);
        v57 = v89;
        *(v89 + 16) = v56 + 1;
        sub_237B07BD4(v74, v57 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v56);
LABEL_32:
        v25 = v75 + 1;
        v20 = v67;
        if (v75 + 1 == v70)
        {

          return;
        }

        goto LABEL_5;
      }
    }

    sub_237BF0C98(v4);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_237B3F6C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D458, &qword_237C13B98);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v84 - v1;
  v3 = type metadata accessor for DataSourceIssue(0);
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  MEMORY[0x28223BE20](v3);
  v85 = (v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v97 = (v84 - v7);
  MEMORY[0x28223BE20](v8);
  v88 = (v84 - v9);
  MEMORY[0x28223BE20](v10);
  v87 = v84 - v11;
  v12 = sub_237C05ADC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_237C0825C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C0820C();
  sub_237A5D3A4();
  v21 = v20;
  v84[0] = 0;
  (*(v17 + 8))(v19, v16);
  v22 = *(v21 + 16);
  v90 = v12;
  if (v22)
  {
    v23 = v13 + 16;
    v96 = *(v13 + 16);
    v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v84[1] = v21;
    v25 = v21 + v24;
    v26 = *(v23 + 56);
    v94 = (v23 - 8);
    *&v95 = v26;
    v27 = MEMORY[0x277D84F90];
    v28 = MEMORY[0x277D84F98];
    v86 = v23;
    while (1)
    {
      v96(v15, v25, v12);
      v29 = sub_237C059DC();
      v31 = v30;
      v32 = sub_2379EB318(46, 0xE100000000000000, v29, v30);
      if ((v33 & 1) != 0 || v32 < 0x4000)
      {
        break;
      }

      v93 = v27;
      v34 = sub_237C0884C();
      v36 = v35;
      v37 = v2;
      v39 = v38;
      v41 = v40;

      v42 = v39;
      v2 = v37;
      v43 = MEMORY[0x2383DC310](v34, v36, v42, v41);
      v45 = v44;

      v46 = sub_237AC9C00(v43, v45, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v28;
      sub_237B41728(v46 & 1, v43, v45, isUniquelyReferenced_nonNull_native);
      v28 = v98;
      sub_237B40990(v15, v37);
      if (__swift_getEnumTagSinglePayload(v37, 1, v91) != 1)
      {

        v52 = v87;
        sub_237B07BD4(v37, v87);
        sub_237B4216C(v52, v88, type metadata accessor for DataSourceIssue);
        v27 = v93;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v12 = v90;
        if ((v53 & 1) == 0)
        {
          sub_237BC1F0C();
          v27 = v57;
        }

        v54 = *(v27 + 16);
        if (v54 >= *(v27 + 24) >> 1)
        {
          sub_237BC1F0C();
          v27 = v58;
        }

        sub_237B421C8(v87, type metadata accessor for DataSourceIssue);
        (*v94)(v15, v12);
        *(v27 + 16) = v54 + 1;
        v50 = v27 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v54;
        v51 = v88;
LABEL_17:
        sub_237B07BD4(v51, v50);
        goto LABEL_18;
      }

      sub_237B42220(v37, &qword_27DE9D458);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v28;
      sub_237B41728(1, v43, v45, v48);

      v12 = v90;
      (*v94)(v15, v90);
      v28 = v98;
      v27 = v93;
LABEL_18:
      v25 += v95;
      if (!--v22)
      {

        goto LABEL_21;
      }
    }

    sub_237BF0708(v29, v31, v97);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237BC1F0C();
      v27 = v55;
    }

    v49 = *(v27 + 16);
    if (v49 >= *(v27 + 24) >> 1)
    {
      sub_237BC1F0C();
      v27 = v56;
    }

    (*v94)(v15, v12);
    *(v27 + 16) = v49 + 1;
    v50 = v27 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v49;
    v51 = v97;
    goto LABEL_17;
  }

  v28 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F90];
LABEL_21:
  v59 = v28 + 64;
  v60 = 1 << *(v28 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v28 + 64);
  v63 = (v60 + 63) >> 6;
  v64 = 0x8000000237C1BC60;
  v65 = "noExamplesForLabel";
  v66 = v28;

  v68 = 0;
  v69 = xmmword_237C0B660;
  while (v62)
  {
LABEL_29:
    v71 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v72 = v71 | (v68 << 6);
    if ((*(*(v66 + 56) + v72) & 1) == 0)
    {
      v73 = (*(v66 + 48) + 16 * v72);
      v94 = v73[1];
      v96 = v65;
      v74 = *v73;
      v98 = 0;
      v99 = 0xE000000000000000;
      v95 = v69;

      v97 = v64;
      sub_237C08EDC();

      v98 = 0x22206C6562614CLL;
      v99 = 0xE700000000000000;
      v75 = v94;
      MEMORY[0x2383DC360](v74, v94);
      MEMORY[0x2383DC360](0xD000000000000012, v96 | 0x8000000000000000);
      v93 = v98;
      v89 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDA8, &qword_237C16720);
      inited = swift_initStackObject();
      *(inited + 16) = v95;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v74;
      *(inited + 56) = v75;
      v87 = sub_237B0778C();

      v88 = sub_237C085AC();
      v77 = v91;
      v78 = v85;
      __swift_storeEnumTagSinglePayload(v85 + *(v91 + 24), 1, 1, v90);
      v79 = *(v77 + 28);
      sub_237C085AC();

      *v78 = 0xD000000000000012;
      v80 = v93;
      v78[1] = v97;
      v78[2] = v80;
      v78[3] = v89;
      *(v78 + v79) = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC1F0C();
        v27 = v82;
      }

      v81 = *(v27 + 16);
      v65 = v96;
      if (v81 >= *(v27 + 24) >> 1)
      {
        sub_237BC1F0C();
        v27 = v83;
      }

      *(v27 + 16) = v81 + 1;
      result = sub_237B07BD4(v85, v27 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v81);
      v64 = v97;
      v69 = v95;
    }
  }

  while (1)
  {
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v70 >= v63)
    {

      return v27;
    }

    v62 = *(v59 + 8 * v70);
    ++v68;
    if (v62)
    {
      v68 = v70;
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237B40080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D458, &qword_237C13B98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v57 - v3;
  v5 = type metadata accessor for DataSourceIssue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v68 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v83 = &v57 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v13 = sub_237C05ADC();
  MEMORY[0x28223BE20](v13);
  v85 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v75 = v14 + 16;
  v72 = 0x8000000237C1CFF0;
  v71 = "unreadableAudioFile";
  v58 = v14;
  v80 = (v14 + 8);
  v61 = 0x8000000237C1BC60;
  v60 = "noExamplesForLabel";
  v67 = a1;

  v22 = 0;
  v59 = xmmword_237C0B660;
  v84 = MEMORY[0x277D84F90];
  v74 = v12;
  v77 = v13;
  v64 = a1 + 64;
  v63 = v20;
  v73 = v6;
  if (!v19)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    v70 = (v19 - 1) & v19;
    v69 = v22;
    v24 = __clz(__rbit64(v19)) | (v22 << 6);
    v25 = (*(v67 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(*(v67 + 56) + 8 * v24);
    v29 = *(v28 + 16);
    if (!v29)
    {
      v46 = v25[1];

      goto LABEL_27;
    }

    v62 = *v25;
    v30 = v28 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v31 = *(v58 + 16);
    v81 = *(v58 + 72);
    v82 = v31;
    v66 = v26;

    v65 = v28;

    v76 = 0;
    do
    {
      v32 = v85;
      v82(v85, v30, v13);
      sub_237BF3444(v32);
      if (v33)
      {
        if (v33 == 1)
        {
          sub_237BF0C98(v4);
        }

        else
        {
          if (v33 != 2)
          {
            (*v80)(v85, v13);
            v76 = 1;
            __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
            sub_237B42220(v4, &qword_27DE9D458);
            goto LABEL_22;
          }

          v86 = 0;
          v87 = 0xE000000000000000;
          sub_237C08EDC();

          v86 = sub_237C05A8C();
          v87 = v34;
          MEMORY[0x2383DC360](0xD000000000000024, v71 | 0x8000000000000000);
          v78 = v87;
          v79 = v86;
          sub_237B0778C();
          v35 = sub_237C085AC();
          v36 = *(v5 + 24);
          __swift_storeEnumTagSinglePayload(&v4[v36], 1, 1, v13);
          v37 = *(v5 + 28);
          sub_237C085AC();

          v38 = v72;
          *v4 = 0xD000000000000013;
          *(v4 + 1) = v38;
          v39 = v78;
          *(v4 + 2) = v79;
          *(v4 + 3) = v39;
          v12 = v74;
          *&v4[v37] = v35;
          v13 = v77;
          sub_237B42220(&v4[v36], &qword_27DE9AA18);
          v82(&v4[v36], v85, v13);
          v40 = &v4[v36];
          v6 = v73;
          __swift_storeEnumTagSinglePayload(v40, 0, 1, v13);
        }
      }

      else
      {
        sub_237BF0A78(v4);
      }

      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      sub_237B07BD4(v4, v12);
      sub_237B4216C(v12, v83, type metadata accessor for DataSourceIssue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC1F0C();
        v84 = v44;
      }

      v41 = *(v84 + 16);
      if (v41 >= *(v84 + 24) >> 1)
      {
        sub_237BC1F0C();
        v84 = v45;
      }

      sub_237B421C8(v12, type metadata accessor for DataSourceIssue);
      (*v80)(v85, v13);
      v42 = v83;
      v43 = v84;
      *(v84 + 16) = v41 + 1;
      sub_237B07BD4(v42, v43 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v41);
LABEL_22:
      v30 += v81;
      --v29;
    }

    while (v29);

    if (v76)
    {

      v16 = v64;
      v20 = v63;
      goto LABEL_32;
    }

    v46 = v66;
    v27 = v62;
LABEL_27:
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_237C08EDC();

    v86 = 0x22206C6562614CLL;
    v87 = 0xE700000000000000;
    MEMORY[0x2383DC360](v27, v46);
    MEMORY[0x2383DC360](0xD000000000000012, v60 | 0x8000000000000000);
    v81 = v87;
    v82 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDA8, &qword_237C16720);
    inited = swift_initStackObject();
    *(inited + 16) = v59;
    *(inited + 32) = 0x6C6562616CLL;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v27;
    *(inited + 56) = v46;
    sub_237B0778C();

    v48 = sub_237C085AC();
    v49 = v68;
    __swift_storeEnumTagSinglePayload(v68 + *(v5 + 24), 1, 1, v77);
    v50 = *(v5 + 28);
    sub_237C085AC();

    *v49 = 0xD000000000000012;
    v51 = v81;
    v52 = v82;
    v49[1] = v61;
    v49[2] = v52;
    v49[3] = v51;
    *(v49 + v50) = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237BC1F0C();
      v84 = v55;
    }

    v53 = *(v84 + 16);
    v12 = v74;
    v13 = v77;
    v16 = v64;
    v20 = v63;
    if (v53 >= *(v84 + 24) >> 1)
    {
      sub_237BC1F0C();
      v84 = v56;
    }

    v54 = v84;
    *(v84 + 16) = v53 + 1;
    result = sub_237B07BD4(v68, v54 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v53);
LABEL_32:
    v19 = v70;
    v22 = v69;
  }

  while (v70);
LABEL_4:
  while (2)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      if (v23 < v20)
      {
        v19 = *(v16 + 8 * v23);
        ++v22;
        if (!v19)
        {
          continue;
        }

        v22 = v23;
        goto LABEL_8;
      }

      return v84;
    }

    return result;
  }
}

uint64_t sub_237B40990@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_237BF3444(a1);
  switch(v4)
  {
    case 0:
      sub_237BF0A78(a2);
      goto LABEL_7;
    case 1:
      sub_237BF0C98(a2);
      goto LABEL_7;
    case 2:
      sub_237BF08B8(a1, a2);
LABEL_7:
      v5 = 0;
      goto LABEL_9;
  }

  v5 = 1;
LABEL_9:
  v6 = type metadata accessor for DataSourceIssue(0);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_237B40A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_20_27(a1, a2, a3);
  OUTLINED_FUNCTION_3_68();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_237C0932C();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
  if (OUTLINED_FUNCTION_12_38(v12))
  {
    sub_237ACAC78(v5, v3);
    OUTLINED_FUNCTION_13_31();
    if (!v14)
    {
      goto LABEL_12;
    }

    v10 = v13;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    OUTLINED_FUNCTION_53_8();
  }

  else
  {
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_47_13();
    sub_237B41854(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_53_8();
  }
}

uint64_t type metadata accessor for MLSoundClassifier.DataSource(uint64_t a1)
{
  result = qword_27DE9D3A8;
  if (!qword_27DE9D3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_237B40B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48_12();
  v9 = OUTLINED_FUNCTION_129(v7, v8);
  sub_237ACAC78(v9, v10);
  OUTLINED_FUNCTION_3_68();
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D400, &qword_237C13B60);
  if (OUTLINED_FUNCTION_12_38(v16))
  {
    sub_237ACAC78(a2, a3);
    OUTLINED_FUNCTION_13_31();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v4 + 56) + 32 * v14));
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_53_8();

    return sub_2379DAD24(v19, v20);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_107();
    sub_237B4188C(v23, v24, a3, v3, v25);
    OUTLINED_FUNCTION_53_8();
  }
}

uint64_t sub_237B40C78()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_237ACAC78(v3, v1);
  OUTLINED_FUNCTION_3_68();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE00, &qword_237C0C068);
  if ((sub_237C090AC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_237ACAC78(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_150();
  }

  else
  {
    sub_237B418F8(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_150();
  }
}

uint64_t sub_237B40DA8(uint64_t a1, double a2)
{
  v5 = sub_237C06A4C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_237ACB254();
  OUTLINED_FUNCTION_3_68();
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D468, &qword_237C13BA8);
  OUTLINED_FUNCTION_26_20();
  result = sub_237C090AC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_237ACB254();
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_9:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v15 = result;
LABEL_5:
  v19 = *v2;
  if (v16)
  {
    *(v19[7] + 8 * v15) = a2;
  }

  else
  {
    (*(v7 + 16))(v11, a1, v5);
    return sub_237B41944(v15, v11, v19, a2);
  }

  return result;
}

uint64_t sub_237B40F68()
{
  OUTLINED_FUNCTION_153();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_20_27(v8, v9, v10);
  OUTLINED_FUNCTION_3_68();
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  if (OUTLINED_FUNCTION_12_38(v16))
  {
    sub_237ACAC78(v2, v0);
    OUTLINED_FUNCTION_13_31();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  if (v15)
  {
    *(*(*v3 + 56) + 8 * v14) = v1;
    OUTLINED_FUNCTION_150();
  }

  else
  {
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_47_13();
    sub_237B41854(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_150();
  }
}

uint64_t sub_237B41088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t a8)
{
  OUTLINED_FUNCTION_48_12();
  v16 = OUTLINED_FUNCTION_129(v14, v15);
  sub_237ACAC78(v16, v17);
  OUTLINED_FUNCTION_3_68();
  if (v20)
  {
    __break(1u);
LABEL_14:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (sub_237C090AC())
  {
    sub_237ACAC78(a2, a3);
    OUTLINED_FUNCTION_28_16();
    if (!v24)
    {
      goto LABEL_14;
    }

    v21 = v23;
  }

  if (v22)
  {
    v25 = *(*v9 + 56);
    a7(0);
    OUTLINED_FUNCTION_4();
    v27 = *(v26 + 40);
    v29 = v28;
    v30 = v25 + *(v26 + 72) * v21;

    return v27(v30, v8, v29);
  }

  else
  {
    v32 = OUTLINED_FUNCTION_29_11();
    sub_237B41ABC(v32, v33, a3, v8, v34, a8);
  }
}

void sub_237B41238()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_38_13();
  sub_237C0909C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_43_9();
  sub_237ACB31C();
  OUTLINED_FUNCTION_3_68();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_237C0932C();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D210, &unk_237C132F0);
  if (OUTLINED_FUNCTION_12_38(v8))
  {
    sub_237ACB31C();
    OUTLINED_FUNCTION_28_16();
    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = v9;
  }

  v11 = *v1;
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1((v11[7] + 32 * v6));
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_150();

    sub_2379DAD24(v12, v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_42_11();
    v16(v15);
    v17 = OUTLINED_FUNCTION_29_11();
    sub_237B419FC(v17, v18, v0, v11);
    OUTLINED_FUNCTION_150();
  }
}

uint64_t sub_237B413C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_12();
  sub_237ACB370(v4);
  OUTLINED_FUNCTION_3_68();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C000, &unk_237C132D0);
  OUTLINED_FUNCTION_26_20();
  if (sub_237C090AC())
  {
    sub_237ACB370(a2);
    OUTLINED_FUNCTION_13_31();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v2 + 56) + 40 * v8));
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_53_8();

    return sub_237A1FCF0(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_53_8();

    return sub_237B41B44(v16, v17, v18, v19);
  }
}

void sub_237B414C8()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_38_13();
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_43_9();
  sub_237ACB424();
  OUTLINED_FUNCTION_3_68();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_237C0932C();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D260, &qword_237C13470);
  if (OUTLINED_FUNCTION_12_38(v8))
  {
    sub_237ACB424();
    OUTLINED_FUNCTION_28_16();
    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = v9;
  }

  v11 = *v1;
  if (v7)
  {
    *(*(v11 + 56) + 8 * v6) = v0;
    OUTLINED_FUNCTION_150();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_42_11();
    v15(v14);
    v16 = OUTLINED_FUNCTION_29_11();
    sub_237B41BB0(v16, v17, v0, v11);
    OUTLINED_FUNCTION_150();
  }
}

_OWORD *sub_237B4160C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_12();
  sub_237ACB4EC();
  OUTLINED_FUNCTION_3_68();
  if (v7)
  {
    __break(1u);
LABEL_12:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC60, &qword_237C12220);
  OUTLINED_FUNCTION_26_20();
  if (sub_237C090AC())
  {
    sub_237ACB4EC();
    OUTLINED_FUNCTION_13_31();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  v12 = *v3;
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1((v12[7] + 32 * v8));
    v13 = OUTLINED_FUNCTION_37_0();

    return sub_2379DAD24(v13, v14);
  }

  else
  {
    sub_2379E8F20(a2, v16);
    return sub_237B41C58(v8, v16, v2, v12);
  }
}

unint64_t sub_237B41728(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_237ACAC78(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D460, &qword_237C13BA0);
  result = sub_237C090AC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_237ACAC78(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + v12) = a1 & 1;
  }

  else
  {
    sub_237B41CD4(v12, a2, a3, a1 & 1, v16);
  }

  return result;
}

unint64_t sub_237B41854(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_11_40(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

_OWORD *sub_237B4188C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2379DAD24(a4, (a5[7] + 32 * a1));
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

unint64_t sub_237B418F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_237B41944(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_237C06A4C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

_OWORD *sub_237B419FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_237C0909C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2379DAD24(a3, (a4[7] + 32 * a1));
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

uint64_t sub_237B41ABC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_11_40(a1, a2, a3, a4, a5);
  v10 = *(v9 + 56);
  v11(0);
  OUTLINED_FUNCTION_4();
  result = (*(v12 + 32))(v10 + *(v12 + 72) * a1, a4);
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

uint64_t sub_237B41B44(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_237A1FCF0(a3, a4[7] + 40 * a1);
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

uint64_t sub_237B41BB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_14(a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  sub_237C05ADC();
  OUTLINED_FUNCTION_4();
  result = (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

_OWORD *sub_237B41C58(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2379DAD24(a3, (a4[7] + 32 * a1));
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

unint64_t sub_237B41CD4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

unint64_t *sub_237B41D1C(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_237B42360(v8, v4, v2);
      MEMORY[0x2383DD950](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_237B468E8(0, v4, v5);
  v6 = sub_237B42274(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_237B41E80(uint64_t a1)
{
  sub_237A6191C();
  if (v1 <= 0x3F)
  {
    sub_2379FCE48(319);
    if (v2 <= 0x3F)
    {
      sub_237B41F1C(319);
      if (v3 <= 0x3F)
      {
        sub_237B42024();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_237B41F1C(uint64_t a1)
{
  v1 = qword_27DE9D3B8;
  if (!qword_27DE9D3B8)
  {
    MEMORY[0x28223BE20](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D3B8);
    }
  }

  return v1;
}

void sub_237B42024()
{
  if (!qword_27DE9D3C0)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05DBC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D3C0);
    }
  }
}

uint64_t sub_237B42128(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_129(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237B4216C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237B421C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237B42220(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_129(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t *sub_237B42274(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (!*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_237B423D8(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_237B423D8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_237B42360(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_237B42274(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_237B423D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C990, &qword_237C11798);
  result = sub_237C0912C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_237C093CC();

    sub_237C0878C();
    result = sub_237C0940C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237B42614(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t OUTLINED_FUNCTION_11_40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_38(uint64_t a1)
{

  return sub_237C090AC();
}

uint64_t OUTLINED_FUNCTION_15_35(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_16_25(uint64_t a1, ...)
{

  return sub_237C08B9C();
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237ACAC78(a2, a3);
}

void OUTLINED_FUNCTION_51_7()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_52_12(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237B42128(a1, v4, v5, a4);
}

uint64_t sub_237B42924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0) - 8;
  MEMORY[0x28223BE20](v55);
  v7 = &v49 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4F0, &unk_237C14A80);
  MEMORY[0x28223BE20](v50);
  v53 = &v49 - v8;
  sub_2379D9224(&qword_27DE9D438, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1900]);
  v9 = sub_237C0887C();
  v10 = sub_237C0887C();
  if (v10 < v9)
  {
    v9 = v10;
  }

  v58 = MEMORY[0x277D84F90];
  sub_237AC8EB4(0, v9 & ~(v9 >> 63), 0);
  v56 = v58;
  v11 = v7;
  sub_2379FC864(a1, v7, &qword_27DE9D478, &qword_237C13BC0);
  v12 = *(v3 + 32);
  v12(v5, v7, v2);
  v13 = v53;
  sub_237C0885C();
  v12(v5, &v11[*(v55 + 60)], v2);
  v14 = v2;
  v15 = v13 + *(v50 + 52);
  sub_237C0885C();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v51 = v14;
    v52 = v15;
    if (!v9)
    {
LABEL_19:
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80);
      v30 = *(v55 + 36);
      sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1908]);
      for (i = v30; ; v30 = i)
      {
        sub_237C08B5C();
        if (*(v13 + v30) == v57[0])
        {
          break;
        }

        v31 = sub_237C08B9C();
        v34 = *v32;
        v33 = v32[1];

        v31(v57, 0);
        sub_237C08B6C();
        v35 = *(v55 + 36);
        v36 = v52;
        sub_237C08B5C();
        if (*(v36 + v35) == v57[0])
        {

          break;
        }

        v37 = sub_237C08B9C();
        v40 = *v38;
        v39 = v38[1];

        v37(v57, 0);
        sub_237C08B6C();
        if (v33)
        {
          v41 = v34;
        }

        else
        {
          v41 = 0;
        }

        if (v33)
        {
          v42 = v33;
        }

        else
        {
          v42 = 0xE000000000000000;
        }

        if (v39)
        {
          v43 = v40;
        }

        else
        {
          v43 = 0;
        }

        if (!v39)
        {
          v39 = 0xE000000000000000;
        }

        v44 = v56;
        v58 = v56;
        v46 = *(v56 + 16);
        v45 = *(v56 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_237AC8EB4(v45 > 1, v46 + 1, 1);
          v44 = v58;
        }

        *(v44 + 16) = v46 + 1;
        v56 = v44;
        v47 = (v44 + 32 * v46);
        v47[4] = v41;
        v47[5] = v42;
        v47[6] = v43;
        v47[7] = v39;
        v13 = v53;
      }

      *(v13 + *(v50 + 56)) = 1;
      sub_2379D9054(v13, &qword_27DE9D4F0, &unk_237C14A80);
      return v56;
    }

    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80) + 36);
    sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1908]);
    while (1)
    {
      sub_237C08B5C();
      if (*(v13 + v16) == v57[0])
      {
        break;
      }

      v55 = v9;
      v17 = sub_237C08B9C();
      v20 = *v18;
      v19 = v18[1];

      v17(v57, 0);
      sub_237C08B6C();
      sub_237C08B5C();
      if (*(v15 + v16) == v57[0])
      {
        goto LABEL_40;
      }

      v21 = sub_237C08B9C();
      v23 = v22[1];
      i = *v22;

      v21(v57, 0);
      sub_237C08B6C();
      if (v19)
      {
        v24 = v19;
      }

      else
      {
        v20 = 0;
        v24 = 0xE000000000000000;
      }

      if (v23)
      {
        v25 = i;
      }

      else
      {
        v25 = 0;
      }

      if (!v23)
      {
        v23 = 0xE000000000000000;
      }

      v26 = v56;
      v58 = v56;
      v28 = *(v56 + 16);
      v27 = *(v56 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_237AC8EB4(v27 > 1, v28 + 1, 1);
        v26 = v58;
      }

      *(v26 + 16) = v28 + 1;
      v56 = v26;
      v29 = (v26 + 32 * v28);
      v29[4] = v20;
      v29[5] = v24;
      v29[6] = v25;
      v29[7] = v23;
      v9 = v55 - 1;
      v15 = v52;
      v13 = v53;
      if (v55 == 1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:

  __break(1u);
  return result;
}

uint64_t sub_237B42F98(uint64_t a1)
{
  result = MEMORY[0x2383DC660](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_237B4694C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_237B43058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B948, &qword_237C13CD0);
  OUTLINED_FUNCTION_9_42();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_13_32(&qword_27DE9B938);
  OUTLINED_FUNCTION_16_26();
  v3 = sub_237C0887C();
  v11 = MEMORY[0x2383DC660](v3, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  v4 = *(v1 + 44);
  OUTLINED_FUNCTION_12_39(&qword_27DE9AA90);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    if (*(v0 + v4) == v10)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_6_53(&v10);
    v7 = *v6;
    v8 = v6[1];

    v5(&v10, 0);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    sub_237B4694C(&v10, v7, v8);
  }

  sub_2379D9054(v0, &qword_27DE9B948, &qword_237C13CD0);
  return v11;
}

void sub_237B431E0()
{
  OUTLINED_FUNCTION_153();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D520, &qword_237C13D00);
  OUTLINED_FUNCTION_9_42();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_13_32(&qword_27DE9D530);
  OUTLINED_FUNCTION_16_26();
  sub_237C0887C();
  v2 = OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  sub_237B4A304(&qword_27DE9D4C8, &qword_27DE9CA40, &unk_237C11B10);
  v4 = OUTLINED_FUNCTION_175();
  v10[4] = MEMORY[0x2383DC660](v4);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  sub_2379D9224(&qword_27DE9D538, &qword_27DE9D528, &qword_237C13D08, MEMORY[0x277CE18D8]);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    OUTLINED_FUNCTION_26_21();
    if (v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_53(v10);
    v6 = OUTLINED_FUNCTION_31_18();
    v7(v6);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    v8 = OUTLINED_FUNCTION_28_17();
    sub_237B46A98(v8, v9, &qword_237C13D08);
  }

  sub_2379D9054(v0, &qword_27DE9D520, &qword_237C13D00);
  OUTLINED_FUNCTION_150();
}

void sub_237B43384()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v2 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  v12 = *(v1 + 16);
  v13 = sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v22[1] = MEMORY[0x2383DC660](v12, v2, v13);
  v14 = *(v1 + 16);
  if (v14)
  {
    v17 = *(v4 + 16);
    v15 = v4 + 16;
    v16 = v17;
    v18 = *(v15 + 64);
    v22[0] = v1;
    v19 = v1 + ((v18 + 32) & ~v18);
    v20 = *(v15 + 56);
    do
    {
      v21 = OUTLINED_FUNCTION_55_1();
      v16(v21);
      sub_237B46BEC(v11, v8);
      (*(v15 - 8))(v11, v2);
      v19 += v20;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B4351C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D510, &unk_237C13CF0);
  OUTLINED_FUNCTION_9_42();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_13_32(&qword_27DE9D518);
  OUTLINED_FUNCTION_16_26();
  v3 = sub_237C0887C();
  v10 = MEMORY[0x2383DC660](v3, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  v4 = *(v1 + 44);
  OUTLINED_FUNCTION_12_39(&qword_27DE9C9E0);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    if (*(v0 + v4) == v9[0])
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_6_53(v9);
    v7 = *v6;
    v5(v9, 0);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    sub_237B46EB4(v9, v7);
  }

  sub_2379D9054(v0, &qword_27DE9D510, &unk_237C13CF0);
  return v10;
}

void sub_237B4368C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_237B4A928(&qword_27DE9A920, type metadata accessor for URLResourceKey, &unk_237C0B2E8);
  v6 = MEMORY[0x2383DC660](v2, v4, v5);
  v7 = 0;
  v10[1] = v6;
  v8 = *(a1 + 16);
  while (1)
  {
    if (v8 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = v7 + 1;
    sub_237B46F84(v10, *(a1 + 8 * v7 + 32));

    v7 = v9;
  }

  __break(1u);
}

void sub_237B43770()
{
  OUTLINED_FUNCTION_153();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80);
  OUTLINED_FUNCTION_9_42();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_11_41(&qword_27DE9D438);
  OUTLINED_FUNCTION_16_26();
  sub_237C0887C();
  v2 = OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  sub_237B4A304(&qword_27DE9D4B0, &qword_27DE9B210, &unk_237C11B00);
  v4 = OUTLINED_FUNCTION_175();
  v13[4] = MEMORY[0x2383DC660](v4);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  OUTLINED_FUNCTION_0_73();
  sub_2379D9224(v5, &qword_27DE9ACA0, &unk_237C0E0E0, v6);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    OUTLINED_FUNCTION_26_21();
    if (v7)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_6_53(v13);
    v10 = *(v9 + 8);

    v8(v13, 0);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    v11 = OUTLINED_FUNCTION_28_17();
    sub_237B47128(v11, v12, v10);
  }

  sub_2379D9054(v0, &qword_27DE9D448, &unk_237C13C80);
  OUTLINED_FUNCTION_150();
}

void sub_237B43914()
{
  OUTLINED_FUNCTION_153();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4B8, &qword_237C13C98);
  OUTLINED_FUNCTION_9_42();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_11_41(&qword_27DE9D4C0);
  OUTLINED_FUNCTION_16_26();
  sub_237C0887C();
  v2 = OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  sub_237B4A304(&qword_27DE9D4C8, &qword_27DE9CA40, &unk_237C11B10);
  v4 = OUTLINED_FUNCTION_175();
  v12[4] = MEMORY[0x2383DC660](v4);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  OUTLINED_FUNCTION_0_73();
  sub_2379D9224(v5, &qword_27DE9AB98, &unk_237C0B900, v6);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    OUTLINED_FUNCTION_26_21();
    if (v7)
    {
      break;
    }

    OUTLINED_FUNCTION_6_53(v12);
    v8 = OUTLINED_FUNCTION_31_18();
    v9(v8);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    v10 = OUTLINED_FUNCTION_28_17();
    sub_237B46A98(v10, v11, &unk_237C0B900);
  }

  sub_2379D9054(v0, &qword_27DE9D4B8, &qword_237C13C98);
  OUTLINED_FUNCTION_150();
}

void sub_237B43A98(uint64_t a1)
{
  v2 = 0;
  MEMORY[0x2383DC660](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_5_33();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      do
      {
LABEL_7:
        v5 &= v5 - 1;

        OUTLINED_FUNCTION_22_24();
        sub_237B4694C(v9, v10, v11);
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_237B43B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = sub_237AF2238(a3);
  if (!v3)
  {
    v8 = v7;
    v9 = *(a1 + 16);
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D837D0];
    v33 = v7;
    if (v9)
    {
      v32 = a2;
      aBlock = MEMORY[0x277D84F90];
      sub_237C08FCC();
      sub_2379E8EE0(0, &qword_27DE9D4D8, 0x277CBEAC0);
      v12 = (a1 + 56);
      do
      {
        v13 = *(v12 - 3);
        v14 = *(v12 - 2);
        v15 = *(v12 - 1);
        v16 = *v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4E0, &unk_237C13CC0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_237C0B670;
        *(v17 + 32) = 0x6C6562614CLL;
        *(v17 + 40) = 0xE500000000000000;
        *(v17 + 56) = v11;
        *(v17 + 64) = v15;
        *(v17 + 72) = v16;
        *(v17 + 88) = v11;
        *(v17 + 96) = 0x676E69727453;
        *(v17 + 104) = 0xE600000000000000;
        *(v17 + 152) = v11;
        *(v17 + 120) = v11;
        *(v17 + 128) = v13;
        *(v17 + 136) = v14;

        sub_237C08C0C();
        sub_237C08F8C();
        sub_237C08FEC();
        sub_237C08FFC();
        sub_237C08F9C();
        v12 += 4;
        --v9;
      }

      while (v9);
      v10 = aBlock;
      v8 = v33;
      a2 = v32;
    }

    v18 = *(a2 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      aBlock = MEMORY[0x277D84F90];
      sub_237C08FCC();
      sub_2379E8EE0(0, &qword_27DE9D4D8, 0x277CBEAC0);
      v20 = (a2 + 56);
      do
      {
        v22 = *(v20 - 3);
        v21 = *(v20 - 2);
        v24 = *(v20 - 1);
        v23 = *v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4E0, &unk_237C13CC0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_237C0B670;
        *(v25 + 32) = 0x6C6562614CLL;
        *(v25 + 40) = 0xE500000000000000;
        *(v25 + 56) = v11;
        *(v25 + 64) = v24;
        *(v25 + 72) = v23;
        *(v25 + 88) = v11;
        *(v25 + 96) = 0x676E69727453;
        *(v25 + 104) = 0xE600000000000000;
        *(v25 + 152) = v11;
        *(v25 + 120) = v11;
        *(v25 + 128) = v22;
        *(v25 + 136) = v21;

        sub_237C08C0C();
        sub_237C08F8C();
        sub_237C08FEC();
        sub_237C08FFC();
        sub_237C08F9C();
        v20 += 4;
        --v18;
      }

      while (v18);
      v19 = aBlock;
      v8 = v33;
    }

    v40 = 0;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v10 < 0 || (v10 & 0x4000000000000000) != 0)
    {
      sub_237B06298();
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v19 < 0 || (v19 & 0x4000000000000000) != 0)
    {
      sub_237B06298();
    }

    v38 = sub_237AF2E0C;
    v39 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_237B440E4;
    v37 = &block_descriptor_7;
    v26 = _Block_copy(&aBlock);
    v38 = nullsub_1;
    v39 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_237B44140;
    v37 = &block_descriptor_4;
    v27 = _Block_copy(&aBlock);
    TrainedModelWithData = NLPClassifierModelCreateTrainedModelWithData();
    _Block_release(v27);
    _Block_release(v26);

    v28 = v40;
    if (v40)
    {
      type metadata accessor for CFError(0);
      sub_237B4A928(&qword_27DE9D4E8, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      swift_allocError();
      *v29 = v28;
    }

    else
    {
      if (TrainedModelWithData)
      {

        return TrainedModelWithData;
      }

      sub_2379E8AF0();
      swift_allocError();
      *v31 = 0xD00000000000002DLL;
      *(v31 + 8) = 0x8000000237C1D160;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 0;
    }

    swift_willThrow();
  }

  return TrainedModelWithData;
}

uint64_t sub_237B440E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

void sub_237B44140(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void (*MLTextClassifier.model.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_237B44268;
}

void sub_237B44268(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 16) = v5;
  }

  else
  {

    *(v2 + 16) = v4;
  }
}

uint64_t MLTextClassifier.modelParameters.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLTextClassifier(0);
  OUTLINED_FUNCTION_1_70();
  return sub_237B46504(v1 + v3, a1, v4);
}

uint64_t type metadata accessor for MLTextClassifier(uint64_t a1)
{
  result = qword_27DE9D490;
  if (!qword_27DE9D490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLTextClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  a10 = v27;
  v28 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v29 = OUTLINED_FUNCTION_20(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_0();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  sub_237B460B4(v26, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, v43);

  if (v20)
  {
    OUTLINED_FUNCTION_0_74();
    sub_237B46560(v24, v44);
  }

  else
  {
    (*(v35 + 16))(v39, v42, v33);
    OUTLINED_FUNCTION_1_70();
    sub_237B46504(v24, v32, v45);
    MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)();
    OUTLINED_FUNCTION_0_74();
    sub_237B46560(v24, v46);
    (*(v35 + 8))(v42, v33);
  }

  OUTLINED_FUNCTION_73();
}

void MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v170 = v1;
  v171 = v0;
  v3 = v2;
  v177 = v4;
  v172 = v5;
  v169 = v6;
  v8 = v7;
  v10 = v9;
  v159 = sub_237C05CFC();
  OUTLINED_FUNCTION_0();
  v163 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_21_3(v14 - v13);
  v161 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = OUTLINED_FUNCTION_21_3(v18 - v17);
  v20 = type metadata accessor for MLTextClassifier.FeatureExtractorType(v19);
  v21 = OUTLINED_FUNCTION_20(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v158 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v165 = v149 - v25;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = OUTLINED_FUNCTION_21_3(v149 - v27);
  v166 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(v28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v167 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v32);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v35 = v149 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v168 = v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  v40 = v149 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_20(v41);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  v44 = v149 - v43;
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18_0();
  v48 = v46 - v47;
  v50 = MEMORY[0x28223BE20](v49);
  v175 = v52;
  v176 = v51;
  v53 = *(v52 + 16);
  v178 = v149 - v54;
  v173 = v8;
  v53(v50);
  v55 = type metadata accessor for MLTextClassifier(0);
  v56 = v10;
  v57 = v10 + *(v55 + 28);
  OUTLINED_FUNCTION_1_70();
  v174 = v3;
  sub_237B46504(v3, v57, v58);
  v59 = v171;
  sub_237BADC50();
  v182 = v57;
  if (v59)
  {

LABEL_6:
    v65 = OUTLINED_FUNCTION_37_13();
    (v55)(v65);
    v66 = OUTLINED_FUNCTION_175();
    (v55)(v66);
    OUTLINED_FUNCTION_0_74();
    sub_237B46560(v174, v67);
LABEL_7:
    OUTLINED_FUNCTION_0_74();
    v69 = v182;
LABEL_8:
    sub_237B46560(v69, v68);
    OUTLINED_FUNCTION_73();
    return;
  }

  v155 = v44;
  v171 = v40;
  v153 = v35;
  v156 = v36;
  v152 = v48;
  v60 = v172;
  v151 = v55;
  v154 = v56;
  v61 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v62 = v57 + *(v61 + 36);
  if ((*(v62 + 8) & 1) == 0 && *v62 <= 0)
  {

    OUTLINED_FUNCTION_20_1();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_25_25(v70, 0xD000000000000036);
    *(v71 + 48) = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_237BADE40();
  v63 = v177;
  v64 = v178;
  sub_237B45630();
  sub_237C05DEC();
  *&v181 = 0;
  *(&v181 + 1) = 0xE000000000000000;
  v72 = sub_2379D9224(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE18F0]);
  v73 = v156;
  v149[1] = v72;
  v74 = v171;
  sub_237C05EAC();
  v75 = *(v168 + 8);
  v168 += 8;
  v149[0] = v75;
  v75(v74, v73);
  v150 = sub_237B43058();
  v154[1] = v150;
  sub_2379FC864(v182 + *(v61 + 24), &v179, &qword_27DE9A998, &unk_237C0C100);
  if (v180)
  {
    sub_2379DAD24(&v179, &v181);
    swift_dynamicCast();
    v76 = v153;
    sub_237B68E28(v64, v169, v60, v170, v63, v153);
    v166 = v61;
    OUTLINED_FUNCTION_17_25();
    v78 = v176;
    if (__swift_getEnumTagSinglePayload(v76, 1, v176) == 1)
    {
      sub_2379D9054(v76, &qword_27DE9A9A0, &qword_237C0BF60);
      v171 = MEMORY[0x277D84F90];
      v79 = v160;
    }

    else
    {
      v80 = v175;
      (*(v175 + 32))(v152, v76, v78);
      v81 = v171;
      sub_237C05DEC();
      *&v181 = 0;
      *(&v181 + 1) = 0xE000000000000000;
      v82 = v156;
      sub_237C05EAC();
      (v149[0])(v81, v82);
      v83 = sub_237B43058();
      v84 = sub_237B458F8(v150, v83);

      if ((v84 & 1) == 0)
      {

        OUTLINED_FUNCTION_20_1();
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_25_25(v106, 0xD00000000000003ELL);
        *(v107 + 48) = 2;
        swift_willThrow();
        v108 = *(v80 + 8);
        v108(v173, v78);
        v108(v152, v78);
        v108(v178, v78);
        OUTLINED_FUNCTION_0_74();
        sub_237B46560(v174, v109);
LABEL_12:

        goto LABEL_7;
      }

      v85 = v152;
      v79 = v160;
      OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_38_14();
      sub_237C05DEC();
      OUTLINED_FUNCTION_30_18();
      OUTLINED_FUNCTION_38_14();
      sub_237C05DEC();
      v171 = sub_237B42924(v79);
      sub_2379D9054(v79, &qword_27DE9D478, &qword_237C13BC0);
      (*(v80 + 8))(v85, v78);
    }

    OUTLINED_FUNCTION_38_14();
    sub_237C05DEC();

    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_38_14();
    sub_237C05DEC();

    v86 = sub_237B42924(v79);
    v87 = 0;
    sub_2379D9054(v79, &qword_27DE9D478, &qword_237C13BC0);
    v88 = v162;
    sub_237B46504(v182, v162, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v90 = v163;
    v91 = v165;
    if (EnumCaseMultiPayload != 2)
    {
      sub_237B46560(v88, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
      v103 = v174;
      v104 = v159;
      v105 = v171;
LABEL_38:
      v124 = sub_237B43B9C(v86, v105, v182);
      if (!v87)
      {
        v126 = v154;
        *v154 = v124;
        v127 = v124;
        v128 = sub_237AAB394();
        v177 = 0;
        v134 = v128;

        v126[2] = v134;
        v135 = v151;
        OUTLINED_FUNCTION_37_0();
        sub_237B45AB8();

        if (*(v105 + 16))
        {
          sub_237B45AB8();
        }

        else
        {

          OUTLINED_FUNCTION_20_1();
          sub_2379E8AF0();
          OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          OUTLINED_FUNCTION_25_25(v136, 0xD00000000000001CLL);
          *(v137 + 48) = 2;
          *(v126 + *(v135 + 36)) = v138;
          type metadata accessor for MLClassifierMetrics.Contents(0);
          swift_storeEnumTagMultiPayload();
        }

        v139 = v157;
        sub_237C05D0C();
        v140 = sub_237C05CEC();
        (*(v90 + 8))(v139, v104);
        v141 = *(v150 + 16);
        v142 = *(v103 + *(v166 + 20));
        if ((sub_237A37A64() & 1) == 0)
        {
          OUTLINED_FUNCTION_45_10(" training session", v140);
          OUTLINED_FUNCTION_45_10("Number of Images", v141);
          v143 = MLTextClassifier.ModelAlgorithmType.description.getter();
          v140 = v144;
          sub_237A3825C(15, 0x687469726F676C41, 0xE90000000000006DLL, v143, v144);

          if (v142)
          {
            v145 = sub_237C086EC();
            v142 = v146;
          }

          else
          {
            OUTLINED_FUNCTION_20_1();
            v145 = 0xD000000000000014;
          }

          sub_237A3825C(15, 0x65676175676E614CLL, 0xE800000000000000, v145, v142);
        }

        v148 = OUTLINED_FUNCTION_18_31();
        v142(v148);
        (v142)(v178, v140);
        OUTLINED_FUNCTION_0_74();
        v69 = v103;
        goto LABEL_8;
      }

      v125 = OUTLINED_FUNCTION_18_31();
      (v86)(v125);
      (v86)(v178, v87);
      OUTLINED_FUNCTION_0_74();
      sub_237B46560(v103, v77);
      OUTLINED_FUNCTION_41_10();
      goto LABEL_12;
    }

    v177 = 0;
    v92 = OUTLINED_FUNCTION_55_1();
    sub_237AF2E40(v92, v93, v94);
    v95 = *(v86 + 16);
    v96 = MEMORY[0x277D84F90];
    if (v95)
    {
      *&v181 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_27_15();
      sub_237AC8A74();
      v96 = v181;
      v97 = (v86 + 40);
      do
      {
        v99 = *(v97 - 1);
        v98 = *v97;
        *&v181 = v96;
        v101 = *(v96 + 16);
        v100 = *(v96 + 24);

        if (v101 >= v100 >> 1)
        {
          sub_237AC8A74();
          v96 = v181;
        }

        *(v96 + 16) = v101 + 1;
        v102 = v96 + 16 * v101;
        *(v102 + 32) = v99;
        *(v102 + 40) = v98;
        v97 += 4;
        --v95;
      }

      while (v95);
      v90 = v163;
      v91 = v165;
    }

    v110 = *(v182 + *(v166 + 20));
    v103 = v174;
    v105 = v171;
    if (v110)
    {
      v111 = v110;
    }

    else
    {
      v129 = sub_2379E8EE0(0, &qword_27DE9D480, 0x277CD89C0);
      v130 = v177;
      v111 = sub_237A2AB98(v96);
      v177 = v130;
      if (v130)
      {

        v131 = OUTLINED_FUNCTION_18_31();
        (v86)(v131);
        OUTLINED_FUNCTION_2_69();
        sub_237B46560(v91, v132);
        (v86)(v178, v129);
        OUTLINED_FUNCTION_0_74();
        sub_237B46560(v103, v133);
        OUTLINED_FUNCTION_41_10();

        goto LABEL_7;
      }
    }

    v112 = v111;

    v113 = v158;
    sub_237B46504(v91, v158, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    v114 = sub_237B0C068(v113);
    if (sub_237C086EC() == 0x6D6F74737543 && v115 == 0xE600000000000000)
    {
    }

    else
    {
      v117 = sub_237C0929C();

      if ((v117 & 1) == 0)
      {
        sub_2379E8EE0(0, &qword_27DE9D488, 0x277CD89B0);
        v118 = v177;
        sub_237A2B084(v114, v112);
        v87 = v118;
        v119 = v165;
        if (v118)
        {

          v120 = OUTLINED_FUNCTION_42_12();
          (v86)(v120);
          OUTLINED_FUNCTION_2_69();
          sub_237B46560(v119, v121);
          (v86)(v178, v112);
          OUTLINED_FUNCTION_0_74();
          sub_237B46560(v103, v122);
          OUTLINED_FUNCTION_41_10();

          goto LABEL_7;
        }

        OUTLINED_FUNCTION_2_69();
        sub_237B46560(v119, v147);

        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_2_69();
    sub_237B46560(v165, v123);

    v87 = v177;
LABEL_37:
    v104 = v159;
    goto LABEL_38;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C05DBC();
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = (v12 - v11);
  LOBYTE(v12) = *(v3 + 8);
  v16 = *v3;
  v17 = v12;
  sub_237A70ED4(&v16, v13);
  OUTLINED_FUNCTION_1_70();
  sub_237B46504(v1, v8, v14);
  MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)();
  OUTLINED_FUNCTION_0_74();
  sub_237B46560(v1, v15);
  OUTLINED_FUNCTION_73();
}

void sub_237B45630()
{
  OUTLINED_FUNCTION_74();
  v26 = v0;
  v25 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  sub_237C05C9C();
  if (v14)
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C1D190);
    v15 = v5;
    v16 = v3;
LABEL_6:
    MEMORY[0x2383DC360](v15, v16);
    MEMORY[0x2383DC360](0xD000000000000024, 0x8000000237C1D1B0);
    v21 = 0;
    v20 = 0xE000000000000000;
    v22 = sub_237C08C3C();
LABEL_11:
    sub_237BABE74(v21, v20, v22);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v24 = v21;
    *(v24 + 8) = v20;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 1;
    swift_willThrow();
    goto LABEL_12;
  }

  sub_237C05D5C();
  sub_237C05FFC();
  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_55_1();
  v17(v18);
  if (!swift_dynamicCastMetatype())
  {
    v20 = 0x8000000237C1D1E0;
    v22 = sub_237C08C3C();
    v23 = 9;
LABEL_10:
    v21 = v23 | 0xD000000000000024;
    goto LABEL_11;
  }

  sub_237C05C9C();
  if (v19)
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1D210);
    v15 = v25;
    v16 = v26;
    goto LABEL_6;
  }

  sub_237C05D5C();
  sub_237C05FFC();
  (v17)(v12, v6);
  if (!swift_dynamicCastMetatype())
  {
    v20 = 0x8000000237C1D230;
    v22 = sub_237C08C3C();
    v23 = 10;
    goto LABEL_10;
  }

LABEL_12:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B458F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_237C093CC();

        sub_237C0878C();
        v17 = sub_237C0940C();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_237C0929C();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_237B45AB8()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = *(v3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v33 = &v31 - v10;
    v34 = v8;
    v35 = v6;
    v36 = v5;
    v38 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_27_15();
    sub_237AC8A74();
    v14 = v38;
    v32 = v3;
    v15 = v3 + 56;
    v16 = v12;
    do
    {

      v17 = sub_237C086BC();
      v18 = [v1 predictedLabelForString_];

      if (v18)
      {
        v19 = sub_237C086EC();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v38 = v14;
      v22 = *(v14 + 16);
      if (v22 >= *(v14 + 24) >> 1)
      {
        sub_237AC8A74();
        v14 = v38;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
      v15 += 32;
      --v16;
    }

    while (v16);
    v38 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_27_15();
    sub_237AC8A74();
    v13 = v38;
    v11 = v33;
    v24 = (v32 + 56);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      v38 = v13;
      v28 = *(v13 + 16);
      v27 = *(v13 + 24);
      v29 = v13;

      v13 = v29;
      if (v28 >= v27 >> 1)
      {
        sub_237AC8A74();
        v13 = v38;
      }

      *(v13 + 16) = v28 + 1;
      v30 = v13 + 16 * v28;
      *(v30 + 32) = v25;
      *(v30 + 40) = v26;
      v24 += 4;
      --v12;
    }

    while (v12);
    v6 = v35;
    v5 = v36;
    v8 = v34;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v37 = v13;
  v38 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  sub_2379D9224(&qword_27DE9B8B8, &qword_27DE9AE60, &qword_237C0D000, MEMORY[0x277D83988]);
  sub_237C06FBC();
  (*(v8 + 32))(v5, v11, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_150();
}

void sub_237B45F18(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  OUTLINED_FUNCTION_5_33();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = 0;

  if (v5)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v20 = OUTLINED_FUNCTION_37_0();
      v22 = sub_237B4A66C(v20, v21);

      sub_237B99678(v22);

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_6:
        v10 = __clz(__rbit64(v5)) | (v8 << 6);
        v11 = *(*(v1 + 56) + 8 * v10);
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = (*(v1 + 48) + 16 * v10);
          v15 = *v13;
          v14 = v13[1];

          v16 = sub_237C0898C();
          *(v16 + 16) = v12;
          v17 = v12 - 1;
          for (i = 32; ; i += 16)
          {
            v19 = (v16 + i);
            *v19 = v15;
            v19[1] = v14;
            if (!v17)
            {
              break;
            }

            --v17;
          }

          v1 = v23;
        }

        else
        {

          v16 = MEMORY[0x277D84F90];
        }

        v5 &= v5 - 1;
        sub_237A96708(v16);
        sub_237A96708(v11);
      }

      while (v5);
    }
  }

  __break(1u);
}

uint64_t sub_237B460B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_237B45F18(a1);
  v34 = v9;
  sub_237B4A484();
  v10 = v34[2];
  if (v10)
  {
    v30 = a3;
    v31 = a4;
    v32 = a5;
    OUTLINED_FUNCTION_34_16();
    v11 = v34;
    v12 = v34 + 5;
    v13 = v10;
    do
    {
      v15 = *(v12 - 1);
      v14 = *v12;
      v17 = v34[2];
      v16 = v34[3];

      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_33_18();
      }

      v34[2] = v17 + 1;
      v18 = &v34[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
      v12 += 4;
      --v13;
    }

    while (v13);
    OUTLINED_FUNCTION_34_16();
    v19 = v34;
    v20 = v34 + 7;
    a4 = v31;
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v24 = v34[2];
      v23 = v34[3];

      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_33_18();
      }

      v34[2] = v24 + 1;
      v25 = &v34[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      v20 += 4;
      --v10;
    }

    while (v10);

    a5 = v32;
    a3 = v30;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4F8, &qword_237C13CD8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_237C0B670;
  *(v26 + 32) = a2;
  *(v26 + 40) = a3;

  v27 = sub_237B99DC0(v11);

  *(v26 + 48) = v27;
  *(v26 + 56) = a4;
  *(v26 + 64) = a5;

  v28 = sub_237B99DC0(v19);

  *(v26 + 72) = v28;
  return sub_237C05CBC();
}

void MLTextClassifier.debugDescription.getter()
{
  OUTLINED_FUNCTION_153();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = type metadata accessor for MLTextClassifier(0);
  v6 = MLTextClassifier.ModelParameters.description.getter();
  v8 = v7;
  v9 = MLClassifierMetrics.description.getter();
  v11 = v10;
  sub_237B46504(v0 + *(v5 + 36), v4, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v5) = swift_getEnumCaseMultiPayload();
  sub_237B46560(v4, type metadata accessor for MLClassifierMetrics.Contents);
  v12 = MLClassifierMetrics.description.getter();
  v14 = v13;
  MEMORY[0x2383DC360](v6, v8);

  MEMORY[0x2383DC360](v9, v11);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v5 <= 1)
  {
    MEMORY[0x2383DC360](v12, v14);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  OUTLINED_FUNCTION_150();
}

id MLTextClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLTextClassifier.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237B46504(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237B46560(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_237B465B8@<X0>(void *a1@<X8>)
{
  result = MLTextClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B465FC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237B466DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_237B467A4(uint64_t a1)
{
  sub_2379E8EE0(319, &qword_27DE9C5F8, 0x277CD89D0);
  if (v1 <= 0x3F)
  {
    sub_237B46890();
    if (v2 <= 0x3F)
    {
      sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MLTextClassifier.ModelParameters(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MLClassifierMetrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237B46890()
{
  if (!qword_27DE9D4A0)
  {
    v0 = sub_237C08ADC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9D4A0);
    }
  }
}

uint64_t sub_237B468E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_237C10D40;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_237B4694C(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_237C093CC();
  sub_237C0878C();
  v8 = sub_237C0940C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_237C0929C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_237B481F8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_237B46A98(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_237C093CC();
  sub_237C093EC();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x2383DCF70](a2);
  }

  v8 = sub_237C0940C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_12;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_12;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_237B48360(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
  v14 = a3;
LABEL_12:
  *a1 = a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

BOOL sub_237B46BEC(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_237C05ADC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v27 = a2;
  v9 = sub_237C0861C();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_237B48500(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_237B4A928(&qword_27DE9C860, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v15 = sub_237C0867C();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_237B46EB4(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_237C093BC();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_237B4878C(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_237B46F84(void *a1, void *a2)
{
  v4 = *v2;
  sub_237C086EC();
  sub_237C093CC();
  sub_237C0878C();
  v5 = sub_237C0940C();

  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;
      v16 = a2;
      sub_237B48890(v16, v7, isUniquelyReferenced_nonNull_native);
      *v20 = v22;
      *a1 = v16;
      return v8 == 0;
    }

    v9 = sub_237C086EC();
    v11 = v10;
    if (v9 == sub_237C086EC() && v11 == v12)
    {

      goto LABEL_12;
    }

    v14 = sub_237C0929C();

    if (v14)
    {
      break;
    }

    v5 = v7 + 1;
  }

LABEL_12:
  v17 = *(*(v4 + 48) + 8 * v7);
  *a1 = v17;
  v18 = v17;
  return v8 == 0;
}

uint64_t sub_237B47128(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_237C093CC();
  sub_237C093EC();
  if (a3)
  {
    sub_237C0878C();
  }

  v8 = sub_237C0940C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_237B48A60(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_237C0929C() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_237B472B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4A8, &qword_237C13C78);
  result = sub_237C08E9C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_237B468E8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_237C093CC();
    sub_237C0878C();
    result = sub_237C0940C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237B4750C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA38, &unk_237C13CA0);
  result = sub_237C08E9C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_237B468E8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_237C093CC();
    sub_237C093EC();
    if (v18 != 1)
    {
      MEMORY[0x2383DCF70](v17);
    }

    result = sub_237C0940C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v5 + 48) + 16 * v22;
    *v27 = v17;
    *(v27 + 8) = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237B4778C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_237C05ADC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4D0, &unk_237C13CB0);
  result = sub_237C08E9C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_237B468E8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    result = sub_237C0861C();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237B47AE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D508, &qword_237C13CE8);
  result = sub_237C08E9C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_237B468E8(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_237C093BC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237B47D08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D500, &qword_237C13CE0);
  result = sub_237C08E9C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v27 = v1;
  v28 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_237B468E8(0, (v26 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_237C086EC();
    sub_237C093CC();
    sub_237C0878C();
    v17 = sub_237C0940C();

    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    v3 = v28;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237B47F80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA30, &qword_237C13C90);
  result = sub_237C08E9C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_237B468E8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_237C093CC();
    sub_237C093EC();
    if (v17)
    {
      sub_237C0878C();
    }

    result = sub_237C0940C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_237B481F8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237B472B0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_237B494DC(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_237C093CC();
      sub_237C0878C();
      result = sub_237C0940C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_237C0929C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_237B48C1C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_237B48360(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237B4750C(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_237B48D74();
        goto LABEL_18;
      }

      sub_237B49710(v8 + 1);
    }

    v10 = *v4;
    sub_237C093CC();
    sub_237C093EC();
    if ((a2 & 1) == 0)
    {
      MEMORY[0x2383DCF70](v7);
    }

    result = sub_237C0940C();
    v11 = -1 << *(v10 + 32);
    a3 = result & ~v11;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      do
      {
        v13 = *(v10 + 48) + 16 * a3;
        if (*(v13 + 8))
        {
          if (a2)
          {
            goto LABEL_21;
          }
        }

        else if ((a2 & 1) == 0 && *v13 == v7)
        {
          goto LABEL_21;
        }

        a3 = (a3 + 1) & v12;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_18:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v7;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA40, &unk_237C11B10);
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

uint64_t sub_237B48500(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_237C05ADC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237B4778C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_237B49960(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v14 = sub_237C0861C();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_237B4A928(&qword_27DE9C860, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v16 = sub_237C0867C();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_237B48EC4();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_237B4878C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237B47AE4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_237B49C78(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_237C093BC();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_237B490F8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_237B48890(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237B47D08(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_237B49E64(v7 + 1);
LABEL_10:
      v13 = *v3;
      sub_237C086EC();
      sub_237C093CC();
      sub_237C0878C();
      v14 = sub_237C0940C();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for URLResourceKey(0);
        v16 = sub_237C086EC();
        v18 = v17;
        if (v16 == sub_237C086EC() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = sub_237C0929C();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    result = sub_237B49238();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t sub_237B48A60(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237B47F80(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_237B49388();
        goto LABEL_22;
      }

      sub_237B4A0B4(v9 + 1);
    }

    v11 = *v4;
    sub_237C093CC();
    sub_237C093EC();
    if (a2)
    {
      sub_237C0878C();
    }

    result = sub_237C0940C();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_237C0929C();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B210, &unk_237C11B00);
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_237B48C1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4A8, &qword_237C13C78);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_237B48D74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA38, &unk_237C13CA0);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(v4 + 48) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_237B48EC4()
{
  v1 = v0;
  v2 = sub_237C05ADC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4D0, &unk_237C13CB0);
  v6 = *v0;
  v7 = sub_237C08E8C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_237B490F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D508, &qword_237C13CE8);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_237B49238()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D500, &qword_237C13CE0);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_237B49388()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA30, &qword_237C13C90);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_237B494DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4A8, &qword_237C13C78);
  result = sub_237C08E9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_237C093CC();

        sub_237C0878C();
        result = sub_237C0940C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_237B49710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA38, &unk_237C13CA0);
  result = sub_237C08E9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 16 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        sub_237C093CC();
        sub_237C093EC();
        if (v17 != 1)
        {
          MEMORY[0x2383DCF70](v16);
        }

        result = sub_237C0940C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = *(v5 + 48) + 16 * v21;
        *v26 = v16;
        *(v26 + 8) = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_237B49960(uint64_t a1)
{
  v2 = v1;
  v33 = sub_237C05ADC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4D0, &unk_237C13CB0);
  v7 = sub_237C08E9C();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        result = sub_237C0861C();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237B49C78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D508, &qword_237C13CE8);
  result = sub_237C08E9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_237C093BC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_237B49E64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D500, &qword_237C13CE0);
  result = sub_237C08E9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_237C086EC();
        sub_237C093CC();
        v17 = v16;
        sub_237C0878C();
        v18 = sub_237C0940C();

        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v5 + 48) + 8 * v22) = v17;
        ++*(v5 + 16);
        v3 = v28;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v27;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_237B4A0B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA30, &qword_237C13C90);
  result = sub_237C08E9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_237C093CC();
        sub_237C093EC();
        if (v16)
        {

          sub_237C0878C();
        }

        result = sub_237C0940C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v17;
        v26[1] = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_237B4A304(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_237B4A36C()
{
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 < 2)
  {
LABEL_18:
    OUTLINED_FUNCTION_150();
  }

  else
  {
    v4 = 0;
    while (1)
    {
      sub_237B03780();
      v6 = (v5 * v2) >> 64;
      if (v2 > v5 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v5 * v2)
        {
          do
          {
            sub_237B03780();
          }

          while (v7 > v8 * v2);
          v6 = (v8 * v2) >> 64;
        }
      }

      v9 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v9)
      {
        v10 = *(v1 + 16);
        if (v4 >= v10)
        {
          goto LABEL_20;
        }

        if (v9 >= v10)
        {
          goto LABEL_21;
        }

        v11 = *(v1 + 32 + 8 * v4);
        v12 = *(v1 + 32 + 8 * v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237A1FC48();
          v1 = v13;
        }

        v14 = *(v1 + 16);
        if (v4 >= v14)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + 8 * v4) = v12;
        if (v9 >= v14)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + 8 * v9) = v11;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_237B4A484()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v23 = v2 - 2;
  if (v2 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v24 = 0;
      MEMORY[0x2383DD970](&v24, 8);
      v4 = (v24 * v2) >> 64;
      if (v2 > v24 * v2)
      {
        v5 = -v2 % v2;
        if (v5 > v24 * v2)
        {
          do
          {
            v24 = 0;
            MEMORY[0x2383DD970](&v24, 8);
          }

          while (v5 > v24 * v2);
          v4 = (v24 * v2) >> 64;
        }
      }

      v6 = v3 + v4;
      if (__OFADD__(v3, v4))
      {
        break;
      }

      if (v3 != v6)
      {
        v7 = *(v1 + 16);
        if (v3 >= v7)
        {
          goto LABEL_20;
        }

        if (v6 >= v7)
        {
          goto LABEL_21;
        }

        v8 = (v1 + 32 + 32 * v3);
        v9 = v8[1];
        v10 = v8[2];
        v11 = v8[3];
        v12 = (v1 + 32 + 32 * v6);
        v13 = v12[1];
        v22 = *v12;
        v14 = v12[3];
        v20 = *v8;
        v21 = v12[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237A1FD1C();
          v1 = v15;
        }

        if (v3 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v16 = (v1 + 32 + 32 * v3);
        *v16 = v22;
        v16[1] = v13;
        v16[2] = v21;
        v16[3] = v14;

        if (v6 >= *(v1 + 16))
        {
          goto LABEL_23;
        }

        v17 = (v1 + 32 + 32 * v6);
        *v17 = v20;
        v17[1] = v9;
        v17[2] = v10;
        v17[3] = v11;

        *v19 = v1;
      }

      --v2;
      if (v3++ == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void *sub_237B4A66C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
    v7 = swift_allocObject();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 32);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 24);
  }

  v10 = v7 + 4;
  v11 = v8 >> 1;
  v36 = v5;
  if (v6)
  {
    v12 = 0;
    v11 -= v6;
    v13 = v6;
    do
    {
      v14 = *(v3 + v12 + 40);
      v15 = *(v2 + v12 + 32);
      v16 = *(v2 + v12 + 40);
      *v10 = *(v3 + v12 + 32);
      v10[1] = v14;
      v10[2] = v15;
      v10[3] = v16;
      v10 += 4;

      v12 += 16;
      --v13;
    }

    while (v13);
    v5 = v36;
  }

  v34 = v4;
  v35 = 16 * v6;
  while (1)
  {
    if (v4 == v6)
    {
LABEL_35:
      v31 = v7[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v11);
        v33 = v32 - v11;
        if (v30)
        {
          goto LABEL_44;
        }

        v7[2] = v33;
      }

      return v7;
    }

    if (v6 >= v4)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_40;
    }

    if (v5 == v6)
    {
      goto LABEL_35;
    }

    if (v6 >= v5)
    {
      goto LABEL_41;
    }

    v17 = *(v3 + v35 + 32);
    v18 = *(v3 + v35 + 40);
    v37 = v2;
    v19 = v2 + v35;
    v20 = *(v2 + v35 + 32);
    v21 = *(v19 + 40);
    if (v11)
    {

      v22 = v7;
    }

    else
    {
      v23 = v7[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
      v22 = swift_allocObject();
      v26 = (_swift_stdlib_malloc_size(v22) - 32) / 32;
      v22[2] = v25;
      v22[3] = 2 * v26;
      v27 = v22 + 4;
      v28 = v7[3] >> 1;
      v10 = &v22[4 * v28 + 4];
      v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;
      if (v7[2])
      {
        if (v22 != v7 || v27 >= &v7[4 * v28 + 4])
        {
          memmove(v27, v7 + 4, 32 * v28);
        }

        v7[2] = 0;
      }

      else
      {
      }
    }

    v30 = __OFSUB__(v11--, 1);
    if (v30)
    {
      goto LABEL_42;
    }

    *v10 = v17;
    v10[1] = v18;
    v10[2] = v20;
    v10[3] = v21;
    v10 += 4;
    ++v6;
    v5 = v36;
    v2 = v37 + 16;
    v3 += 16;
    v7 = v22;
    v4 = v34;
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
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237B4A928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_6_53(uint64_t a1)
{

  return sub_237C08B9C();
}

uint64_t OUTLINED_FUNCTION_11_41(unint64_t *a1)
{
  v4 = MEMORY[0x277CE1900];

  return sub_2379D9224(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_12_39(unint64_t *a1)
{
  v4 = MEMORY[0x277CE18B0];

  return sub_2379D9224(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_13_32(unint64_t *a1)
{

  return sub_2379D9224(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_14_30@<X0>(uint64_t a1@<X8>)
{

  return sub_237B46504(v2 + a1, v1, type metadata accessor for MLClassifierMetrics);
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return sub_237B46560(v0, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
}

void *OUTLINED_FUNCTION_19_29()
{

  return sub_237C08B5C();
}

double OUTLINED_FUNCTION_25_25@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void OUTLINED_FUNCTION_33_18()
{

  sub_237AC8A74();
}

void OUTLINED_FUNCTION_34_16()
{

  sub_237AC8A74();
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_45_10@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{

  return sub_237A38140(15, 0xD000000000000011, a1 | 0x8000000000000000, a2);
}

BOOL sub_237B4AC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_237C08ECC();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtof_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

void sub_237B4AD2C()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  sub_237C06A4C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D580, &unk_237C16990);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D588, &unk_237C13EA0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_237C0B660;
  v12 = (v11 + v10);
  *v12 = 0xD000000000000011;
  v12[1] = 0x8000000237C1D330;
  sub_237C06A1C();
  v13 = sub_237C085AC();
  if (v1)
  {
    sub_237C06A2C();
    v14 = OUTLINED_FUNCTION_85_3();
    v15(v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_237B40F18(v7, 0xD000000000000013, 0x8000000237C1D350, isUniquelyReferenced_nonNull_native);
  }

  v17 = type metadata accessor for TrainingTablePrinter(0);
  *(v3 + *(v17 + 24)) = v13;
  sub_2379E8EE0(0, &qword_27DE9AD70, 0x277D86200);
  *(v3 + *(v17 + 20)) = sub_237C08D0C();
  sub_237C05BEC();
  OUTLINED_FUNCTION_150();
}

double sub_237B4AFA4@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  sub_237C0720C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_237B4AFF4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3 != *(a2 + *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 24)))
  {
    v10 = 0xD00000000000004DLL;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v11 = swift_allocError();
    v13 = "Mismatching feature extraction parameters and model parameters: overlapFactor";
LABEL_11:
    v14 = (v13 - 32);
LABEL_25:
    *v12 = v10;
    v12[1] = v14 | 0x8000000000000000;
    OUTLINED_FUNCTION_23_3(v11, v12);
    return swift_willThrow();
  }

  if (*(a1 + 16))
  {
    v6 = 0.975;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v6 != MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter())
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v11 = swift_allocError();
    v10 = 0xD00000000000005FLL;
    v13 = "Mismatching feature extraction parameters and model parameters: featureExtractionTimeWindowSize";
    goto LABEL_11;
  }

  sub_237A40628();
  if (v20)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v8 = v17;
      v9 = v18;
      goto LABEL_14;
    }
  }

  else
  {
    result = sub_237A7B808(v19, &qword_27DE9A998, &unk_237C0C100);
  }

  v8 = 1;
  v9 = 1;
LABEL_14:
  if (v5)
  {
    if (v4 == v8)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (v4 == v8)
  {
    v16 = v9;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_24:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v11 = swift_allocError();
    v14 = "featureExtractionTimeWindowSize";
    v10 = 0xD000000000000051;
    goto LABEL_25;
  }

  return result;
}

void sub_237B4B1D8()
{
  OUTLINED_FUNCTION_74();
  v80 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  OUTLINED_FUNCTION_0();
  v62 = v3;
  v63 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  v61 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5A8, &qword_237C14028);
  OUTLINED_FUNCTION_0();
  v65 = v7;
  v66 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v64 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5B0, &unk_237C14030);
  OUTLINED_FUNCTION_0();
  v68 = v11;
  v69 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23();
  v67 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  OUTLINED_FUNCTION_0();
  v71 = v15;
  v72 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23();
  v70 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  OUTLINED_FUNCTION_0();
  v74 = v19;
  v75 = v18;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23();
  v73 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  OUTLINED_FUNCTION_0();
  v76 = v22;
  v77 = v23;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0();
  v78 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = &v58 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  OUTLINED_FUNCTION_0();
  v79 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_108();
  sub_237C05FFC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
  }

  else
  {
    v36 = v79;
    v59 = v27;
    v60 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
    if (swift_dynamicCastMetatype())
    {
      sub_237C05FEC();
      OUTLINED_FUNCTION_76_5();
      sub_237C05F6C();
      (*(v36 + 8))(v0, v32);
    }

    else
    {
      sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
      if (swift_dynamicCastMetatype())
      {
        sub_237C05FEC();
        OUTLINED_FUNCTION_76_5();
        v37 = v59;
        sub_237C05F6C();
        v38 = v78;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
        if (swift_dynamicCastMetatype())
        {
          v39 = v26;
          sub_237C05FEC();
          OUTLINED_FUNCTION_76_5();
          v40 = v76;
          sub_237C05F6C();
          (*(v77 + 8))(v39, v40);
          goto LABEL_10;
        }

        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
        if (OUTLINED_FUNCTION_59_7(v41))
        {
          v31 = v73;
          OUTLINED_FUNCTION_60_9();
          v42 = OUTLINED_FUNCTION_39_13();
          v37 = v75;
          OUTLINED_FUNCTION_43_10(v42, v43);
          v38 = v74;
        }

        else
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
          if (OUTLINED_FUNCTION_59_7(v44))
          {
            v31 = v70;
            OUTLINED_FUNCTION_60_9();
            v45 = OUTLINED_FUNCTION_39_13();
            v37 = v72;
            OUTLINED_FUNCTION_43_10(v45, v46);
            v38 = v71;
          }

          else
          {
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D450, &unk_237C14070);
            if (OUTLINED_FUNCTION_59_7(v47))
            {
              v31 = v67;
              OUTLINED_FUNCTION_60_9();
              v48 = OUTLINED_FUNCTION_39_13();
              v37 = v69;
              OUTLINED_FUNCTION_43_10(v48, v49);
              v38 = v68;
            }

            else
            {
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE48, &qword_237C0ECC8);
              if (OUTLINED_FUNCTION_59_7(v50))
              {
                v31 = v64;
                OUTLINED_FUNCTION_60_9();
                v51 = OUTLINED_FUNCTION_39_13();
                v37 = v66;
                OUTLINED_FUNCTION_43_10(v51, v52);
                v38 = v65;
              }

              else
              {
                v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080);
                if (!OUTLINED_FUNCTION_59_7(v53))
                {
                  sub_2379E8AF0();
                  OUTLINED_FUNCTION_50();
                  v56 = swift_allocError();
                  *v57 = 0xD000000000000040;
                  v57[1] = 0x8000000237C1D3A0;
                  OUTLINED_FUNCTION_23_3(v56, v57);
                  swift_willThrow();
                  goto LABEL_10;
                }

                v31 = v61;
                OUTLINED_FUNCTION_60_9();
                v54 = OUTLINED_FUNCTION_39_13();
                v37 = v63;
                OUTLINED_FUNCTION_43_10(v54, v55);
                v38 = v62;
              }
            }
          }
        }
      }

      (*(v38 + 8))(v31, v37);
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B4B934()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9D540);
  v1 = __swift_project_value_buffer(v0, qword_27DE9D540);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 50;
  *(v1 + v4) = 100;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLSoundClassifier._defaultSessionParameters.getter()
{
  if (qword_27DE9A6B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v1, qword_27DE9D540);
  OUTLINED_FUNCTION_12_40();
  return sub_237B57D10();
}

id MLSoundClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLSoundClassifier(0) + 24));

  return v1;
}

uint64_t type metadata accessor for MLSoundClassifier(uint64_t a1)
{
  result = qword_27DE9D570;
  if (!qword_27DE9D570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLSoundClassifier.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLSoundClassifier(v2) + 24);

  *(v1 + v3) = v0;
}

uint64_t MLSoundClassifier.model.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLSoundClassifier(0) + 24);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_30();
}

uint64_t MLSoundClassifier.modelParameters.getter()
{
  type metadata accessor for MLSoundClassifier(0);
  OUTLINED_FUNCTION_1_71();
  return sub_237B57D10();
}

uint64_t sub_237B4BC0C()
{
  OUTLINED_FUNCTION_9();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[5] = v4;
  OUTLINED_FUNCTION_1(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_237B4BCC4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = type metadata accessor for MLSoundClassifier(0);
  *(v0 + 64) = v9;
  v10 = v9[8];
  *(v0 + 96) = v10;
  v11 = (v4 + v10);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v12 = OUTLINED_FUNCTION_106_1();
  sub_2379E51D0(v12);
  v13 = OUTLINED_FUNCTION_106_1();
  sub_2379E5C70(v13);
  (*(v2 + 8))(v1, v3);
  *v11 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v14 = v9[9];
  *(v0 + 100) = v14;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v15 = swift_allocError();
  *v16 = 0xD0000000000000C0;
  v16[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v15, v16);
  *(v4 + v14) = v17;
  swift_storeEnumTagMultiPayload();
  *(v0 + 104) = v9[5];
  OUTLINED_FUNCTION_8_39();
  sub_237B57D10();
  OUTLINED_FUNCTION_13_19(&dword_237C150A8);
  v21 = v18;
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_237B4BE9C;

  return v21();
}

uint64_t sub_237B4BE9C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237B4BFA8()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[2];
  OUTLINED_FUNCTION_2_70();
  sub_237B57CC0();
  *(v3 + *(v2 + 24)) = v1;
  OUTLINED_FUNCTION_15_36();
  sub_237B5805C();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_121_1();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_237B4C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v11 = *(v10 + 16);
  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();
  sub_237B57CC0();
  sub_237A7B808(v11, &qword_27DE9B8D0, &qword_237C0E1E8);
  sub_237B57CC0();
  sub_237B57CC0();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_68();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void MLSoundClassifier.init(trainingData:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v56 = v1;
  v57 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLSoundClassifier(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v51 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v53 = v9;
  v10 = OUTLINED_FUNCTION_41_0();
  v11 = type metadata accessor for MLSoundClassifier.ModelParameters(v10);
  v12 = OUTLINED_FUNCTION_1(v11);
  v54 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v55 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = (v3 + *(v5 + 40));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v26);
  sub_2379E5C70(v26);
  (*(v23 + 8))(v26, v21);
  v32 = v31;
  v33 = v56;
  *v32 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v34 = *(v5 + 44);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v35 = swift_allocError();
  *v36 = 0xD0000000000000C0;
  v36[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v35, v36);
  *(v3 + v34) = v37;
  swift_storeEnumTagMultiPayload();
  v38 = v57;
  sub_237A39CD0();
  if (v38)
  {
    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
    OUTLINED_FUNCTION_4_59();
    sub_237B57CC0();
    sub_237A7B808(v3, &qword_27DE9B8D0, &qword_237C0E1E8);
    OUTLINED_FUNCTION_49_8();
    sub_237B57CC0();
    sub_237B57CC0();
  }

  else
  {
    sub_237B19584(v33);
    v57 = v32;
    v50 = v3;
    sub_237B3BD1C();
    if (v39)
    {
      v46 = sub_237B1903C(v39);
      v51 = v47;

      sub_237B57D10();
      v52 = v20;
      sub_237B57D10();
      OUTLINED_FUNCTION_113_1();
      v48 = swift_allocObject();
      v49 = v51;
      *(v48 + 16) = v46;
      *(v48 + 24) = v49;
      OUTLINED_FUNCTION_15_36();
      sub_237B5805C();
      sub_2379DDD38(&unk_237C13D30, v48);
    }

    else
    {
      sub_237B3C1CC();
      v41 = sub_237B192F8(v40);
      v43 = v42;

      v53 = v43;
      sub_237B57D10();
      sub_237B57D10();
      OUTLINED_FUNCTION_113_1();
      v44 = swift_allocObject();
      v45 = v53;
      *(v44 + 16) = v41;
      *(v44 + 24) = v45;
      OUTLINED_FUNCTION_15_36();
      sub_237B5805C();
      sub_2379DDD38(&unk_237C13D20, v44);
    }

    OUTLINED_FUNCTION_24_27();
    sub_237B57CC0();
    OUTLINED_FUNCTION_4_59();
    sub_237B57CC0();
    sub_237B57CC0();
    sub_237A7B808(v50, &qword_27DE9B8D0, &qword_237C0E1E8);
    OUTLINED_FUNCTION_49_8();
    sub_237B57CC0();
    sub_237B57CC0();
    OUTLINED_FUNCTION_22_25();
    sub_237B5805C();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B4C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4C808);
}

uint64_t sub_237B4C808()
{
  OUTLINED_FUNCTION_123_1();
  v7 = v1;
  OUTLINED_FUNCTION_33();
  sub_237B57D10();
  OUTLINED_FUNCTION_53_9(&dword_237C13FD0);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 56) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_66_5(v2);

  return v5(v4);
}

uint64_t sub_237B4C8E0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_237B4C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for MLClassifierMetrics(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  _s5ModelVMa_0(0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for TrainingTablePrinter(0);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8D0, &qword_237C0E1E8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[24] = swift_task_alloc();
  v8 = *(_s10ClassifierVMa_0(0) - 8);
  v4[25] = v8;
  v4[26] = *(v8 + 64);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4CD20);
}

void sub_237B4CD20()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = type metadata accessor for MLSoundClassifier(0);
  *(v0 + 272) = v9;
  v10 = *(v9 + 32);
  *(v0 + 352) = v10;
  v11 = (v4 + v10);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v12 = OUTLINED_FUNCTION_106_1();
  sub_2379E51D0(v12);
  v13 = OUTLINED_FUNCTION_106_1();
  sub_2379E5C70(v13);
  (*(v2 + 8))(v1, v3);
  *v11 = 0;
  *(v0 + 280) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v14 = *(v9 + 36);
  *(v0 + 356) = v14;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v15 = swift_allocError();
  *v16 = 0xD0000000000000C0;
  v16[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v15, v16);
  *(v4 + v14) = v17;
  swift_storeEnumTagMultiPayload();
  sub_237A39CD0();
  *(v0 + 288) = 0;
  v20 = *(v0 + 40);
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  KeyPath = swift_getKeyPath();
  v22 = *(v20 + 16);
  *(v0 + 296) = v22;
  if (v22)
  {
    v23 = *(v0 + 144);
    v24 = *(v0 + 40);
    v68 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v25 = v68;
    v26 = *(v23 + 16);
    v23 += 16;
    v27 = v24 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v66 = *(v23 + 56);
    v67 = v26;
    v28 = (v23 - 8);
    do
    {
      v29 = *(v0 + 152);
      v30 = *(v0 + 136);
      v67(v29, v27, v30);
      v31 = KeyPath;
      swift_getAtKeyPath();
      (*v28)(v29, v30);
      v32 = *(v0 + 16);
      v33 = *(v0 + 24);
      v34 = *(v68 + 16);
      if (v34 >= *(v68 + 24) >> 1)
      {
        sub_237AC8A74();
      }

      *(v68 + 16) = v34 + 1;
      v35 = v68 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v33;
      v27 += v66;
      --v22;
      KeyPath = v31;
    }

    while (v22);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v36 = *(v0 + 224);
  v37 = *(v0 + 184);
  v38 = *(v0 + 192);
  v39 = *(v0 + 96);
  *(v0 + 304) = sub_237B42F98(v25);
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();

  sub_237B59204(v40, v38, v36);
  type metadata accessor for EventCollector();
  swift_allocObject();
  v41 = sub_237AD988C();
  *(v0 + 312) = v41;
  sub_237A40628();
  v42 = OUTLINED_FUNCTION_71_5();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v42, v43, v39);
  sub_237A7B808(v37, &qword_27DE9B8D0, &qword_237C0E1E8);
  if (v39 != 1)
  {
LABEL_17:
    v48 = *(v0 + 160);
    v49 = *(v0 + 96);
    sub_237A40628();
    if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
    {
      sub_237A7B808(*(v0 + 160), &qword_27DE9B8D0, &qword_237C0E1E8);
      sub_237C090DC();
      OUTLINED_FUNCTION_116_1();
      return;
    }

    v50 = *(v0 + 224);
    v51 = *(v0 + 200);
    v52 = *(v0 + 208);
    v53 = *(v0 + 48);
    OUTLINED_FUNCTION_10_40();
    sub_237B5805C();
    v54 = *(v53 + 16);
    *(v0 + 320) = v54;
    sub_237B57D10();
    OUTLINED_FUNCTION_23_28();
    sub_237B57D10();
    v55 = (v52 + ((*(v51 + 80) + 16) & ~*(v51 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    if (v54)
    {
      v57 = *(v0 + 48);
      v65 = *(v0 + 40);
      swift_allocObject();
      OUTLINED_FUNCTION_44_13();
      *(v50 + v55) = v65;
      *(v50 + v56) = v57;
      *(v50 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
      OUTLINED_FUNCTION_10_40();
      sub_237B5805C();

      OUTLINED_FUNCTION_117_1();
      if (v55)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v58 = *(v0 + 40);
      swift_allocObject();
      OUTLINED_FUNCTION_44_13();
      *(v50 + v55) = v58;
      *(v50 + v56) = v41;
      OUTLINED_FUNCTION_10_40();
      sub_237B5805C();

      OUTLINED_FUNCTION_117_1();
      if (v55)
      {
LABEL_23:

        OUTLINED_FUNCTION_0_75();
        sub_237B57CC0();
        OUTLINED_FUNCTION_5_55();
        sub_237B57CC0();
        OUTLINED_FUNCTION_3_69();
        sub_237B57CC0();
        sub_237A7B808(*(v0 + 32), &qword_27DE9B8D0, &qword_237C0E1E8);
        if (!*(v0 + 288))
        {
          OUTLINED_FUNCTION_67_5();
          OUTLINED_FUNCTION_0_75();
          sub_237B57CC0();
        }

        OUTLINED_FUNCTION_62_6();
        OUTLINED_FUNCTION_20_28();
        sub_237B57CC0();
        sub_237B57CC0();

        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_116_1();

        __asm { BRAA            X1, X16 }
      }
    }

    OUTLINED_FUNCTION_21_28();
    sub_237B5805C();
    sub_237C08C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_237C0B660;
    v60 = MEMORY[0x277D83C10];
    *(v59 + 56) = MEMORY[0x277D83B88];
    *(v59 + 64) = v60;
    *(v59 + 32) = 3;
    sub_237C0826C("event: %lu", v64);

    OUTLINED_FUNCTION_13_19(&dword_237C150A8);
    v61 = swift_task_alloc();
    *(v0 + 328) = v61;
    *v61 = v0;
    v61[1] = sub_237B4D6B8;
    OUTLINED_FUNCTION_116_1();

    __asm { BR              X0 }
  }

  v44 = *(v0 + 176);
  v45 = *(v0 + 96);
  sub_237B4AD2C();
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
  sub_237A6F014();
  sub_237A40628();
  v46 = OUTLINED_FUNCTION_71_5();
  if (__swift_getEnumTagSinglePayload(v46, v47, v45) != 1)
  {
    sub_237BAC5E0();
    OUTLINED_FUNCTION_5_55();
    sub_237B57CC0();
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_237B4D6B8()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 336) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 344) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237B4D7CC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 256);
  v3 = *(v0 + 40);
  *(*(v0 + 32) + *(*(v0 + 272) + 24)) = *(v0 + 344);
  sub_237B4EEE4(v3, v2);
  if (v1)
  {

    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
    OUTLINED_FUNCTION_5_55();
    sub_237B57CC0();
    OUTLINED_FUNCTION_3_69();
    sub_237B57CC0();
    sub_237A7B808(*(v0 + 32), &qword_27DE9B8D0, &qword_237C0E1E8);
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_2_70();
    sub_237B57CC0();
    OUTLINED_FUNCTION_67_5();

    if (!*(v0 + 288))
    {
      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_0_75();
      sub_237B57CC0();
    }

    OUTLINED_FUNCTION_62_6();
    OUTLINED_FUNCTION_20_28();
    sub_237B57CC0();
    sub_237B57CC0();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    v7 = *(v0 + 320);
    v8 = *(v0 + 352);
    v9 = *(v0 + 72);
    v10 = *(v0 + 32);
    v11 = *(*(v0 + 240) + 32);
    v11(v9, *(v0 + 256), *(v0 + 232));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v9, v10 + v8);
    if (v7)
    {
      sub_237B4EEE4(*(v0 + 48), *(v0 + 248));
      v12 = *(v0 + 356);
      v13 = *(v0 + 64);
      v14 = *(v0 + 32);
      v11(v13, *(v0 + 248), *(v0 + 232));
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v13, v14 + v12);
    }

    v15 = *(v0 + 296);
    v16 = *(v0 + 56);
    v17 = *(*(v0 + 304) + 16);

    sub_237B4F48C(v15, v17, v16);

    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
    OUTLINED_FUNCTION_5_55();
    sub_237B57CC0();
    OUTLINED_FUNCTION_3_69();
    sub_237B57CC0();

    OUTLINED_FUNCTION_8();
  }

  return v6();
}

uint64_t sub_237B4DC00()
{

  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();
  OUTLINED_FUNCTION_5_55();
  sub_237B57CC0();
  OUTLINED_FUNCTION_3_69();
  sub_237B57CC0();
  sub_237A7B808(*(v0 + 32), &qword_27DE9B8D0, &qword_237C0E1E8);
  OUTLINED_FUNCTION_67_5();
  OUTLINED_FUNCTION_2_70();
  sub_237B57CC0();
  if (!*(v0 + 288))
  {
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
  }

  OUTLINED_FUNCTION_20_28();
  sub_237B57CC0();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_237B4DDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4DE90);
}

uint64_t sub_237B4DE90()
{
  OUTLINED_FUNCTION_123_1();
  v7 = v1;
  OUTLINED_FUNCTION_33();
  sub_237B57D10();
  OUTLINED_FUNCTION_53_9(&dword_237C14018);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 56) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_66_5(v2);

  return v5(v4);
}

uint64_t sub_237B4DF6C(uint64_t a1)
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_46();
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(v2);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_113_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_57_7();
  OUTLINED_FUNCTION_121_1();

  return sub_237B4DDFC(v6, v7, v8, v9);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_88_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v4 = OUTLINED_FUNCTION_87_3();
  if (v4 == 2)
  {
LABEL_5:
  }

  else if (v4 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(OUTLINED_FUNCTION_87_3())
    {
      case 0u:
      case 1u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_12_0();
        (*(v5 + 8))(v0 + v3);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        OUTLINED_FUNCTION_101_0();
        goto LABEL_5;
      case 4u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v7 + 8))(v0 + v3);
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_56(*(v8 + 48));

        OUTLINED_FUNCTION_56(*(v8 + 64));
        goto LABEL_5;
      default:
        break;
    }
  }

  v6 = (v0 + v3 + *(v1 + 28));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return MEMORY[0x2821FE8E8](v0);
}