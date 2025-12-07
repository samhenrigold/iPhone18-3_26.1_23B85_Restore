unint64_t sub_266AB0728()
{
  result = qword_2800B2A20;
  if (!qword_2800B2A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TrumpReason, &type metadata for TrumpReason, v0, v1);
    atomic_store(result, &qword_2800B2A20);
  }

  return result;
}

unint64_t sub_266AB077C()
{
  result = qword_2800B2A28;
  if (!qword_2800B2A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlarmTimerState, &type metadata for AlarmTimerState, v0, v1);
    atomic_store(result, &qword_2800B2A28);
  }

  return result;
}

unint64_t sub_266AB07D0()
{
  result = qword_2800B2A30;
  if (!qword_2800B2A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaState, &type metadata for MediaState, v0, v1);
    atomic_store(result, &qword_2800B2A30);
  }

  return result;
}

unint64_t sub_266AB0824()
{
  result = qword_2800B2A38;
  if (!qword_2800B2A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriggerType, &type metadata for TriggerType, v0, v1);
    atomic_store(result, &qword_2800B2A38);
  }

  return result;
}

unint64_t sub_266AB0878()
{
  result = qword_2800B2A40;
  if (!qword_2800B2A40)
  {
    result = swift_getWitnessTable(byte_266AC26F8, &type metadata for SCDAFeedbackDecodingError, v0, v1);
    atomic_store(result, &qword_2800B2A40);
  }

  return result;
}

unint64_t sub_266AB08CC()
{
  result = qword_2800B2A50;
  if (!qword_2800B2A50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B29D0, &qword_266AC5F58);
    v4[0] = sub_266AA8FEC();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_2800B2A50);
  }

  return result;
}

unint64_t sub_266AB0950()
{
  result = qword_2800B2A58;
  if (!qword_2800B2A58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B29E0, &qword_266AC5F60);
    v4[0] = sub_266A71BAC();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_2800B2A58);
  }

  return result;
}

unint64_t sub_266AB09D4()
{
  result = qword_2800B2A70;
  if (!qword_2800B2A70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2A00, &qword_266AC5F68);
    v4[0] = sub_266A70EFC();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_2800B2A70);
  }

  return result;
}

unint64_t sub_266AB0A58()
{
  result = qword_2800B2A80;
  if (!qword_2800B2A80)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2A10, &qword_266AC5F70);
    v4[0] = sub_266AB0ADC();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_2800B2A80);
  }

  return result;
}

unint64_t sub_266AB0ADC()
{
  result = qword_2800B2A88;
  if (!qword_2800B2A88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TrumpReason, &type metadata for TrumpReason, v0, v1);
    atomic_store(result, &qword_2800B2A88);
  }

  return result;
}

unint64_t sub_266AB0B30(uint64_t a1, uint64_t a2)
{
  sub_266ABE244();
  sub_266ABDB04();
  sub_266ABE2A4();
  v2 = OUTLINED_FUNCTION_79();

  return sub_266AB0D48(v2, v3, v4);
}

unint64_t sub_266AB0BA4(unint64_t a1)
{
  sub_266ABE244();
  sub_266AB4FC0(v4, a1);
  v2 = sub_266ABE2A4();

  return sub_266AB0DFC(a1, v2);
}

unint64_t sub_266AB0C10(unint64_t a1)
{
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  sub_266ABE244();
  sub_266ABE264();
  MEMORY[0x26D5E8B00](BYTE1(a1));
  sub_266ABE264();
  sub_266ABE264();
  sub_266ABE274();
  MEMORY[0x26D5E8B00](BYTE6(a1));
  sub_266ABE264();
  v4 = sub_266ABE2A4();

  return sub_266AB0ECC(a1 & 0xFF00FFFFFFFF0000 | (v3 << 48) | (v2 << 8) | a1, v4);
}

unint64_t sub_266AB0D04(uint64_t a1)
{
  v2 = sub_266ABDE34();

  return sub_266AB0FA0(a1, v2);
}

unint64_t sub_266AB0D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266ABE1C4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_266AB0DFC(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = a1 & 0xFF000000000000;
    do
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if ((v8 & 0xFF000000000000) == 0x9000000000000)
      {
        if (v7 == 0x9000000000000)
        {
          return result;
        }
      }

      else if (v7 != 0x9000000000000)
      {
        v9 = a1 == v8 && ((v8 ^ a1) & 0xFF00) == 0;
        v10 = v9 && BYTE2(v8) == BYTE2(a1);
        v11 = v10 && BYTE3(v8) == BYTE3(a1);
        v12 = v11 && WORD2(v8) == WORD2(a1);
        v13 = (v8 ^ a1) >> 48;
        if (v12 && v13 == 0)
        {
          return result;
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_266AB0ECC(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = *(v7 + 2);
      v13 = v7[6];
      v14 = v7[7];
      if (v8 == a1 && BYTE1(a1) == v9 && BYTE2(a1) == v10 && BYTE3(a1) == v11 && WORD2(a1) == v12 && BYTE6(a1) == v13 && HIBYTE(a1) == v14)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_266AB0FA0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_266AB50EC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D5E86F0](v8, a1);
    sub_266A79218(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_266AB1100(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_266ABE184();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_266ABDC74();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_266AB121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_266ABD7A4();
  v8 = MEMORY[0x28223BE20](v38);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v14 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v31 = *a4;
    v16 = v31 + 40 * a3;
    v17 = a1 - a3;
    while (2)
    {
      v29 = v16;
      v30 = a3;
      v28 = v17;
      do
      {
        sub_266A6FFD8(v16, &v35);
        sub_266A6FFD8(v16 - 40, v32);
        v18 = v36;
        v19 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, v36);
        (*(v19 + 88))(v18, v19);
        v20 = v33;
        v21 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v21 + 88))(v20, v21);
        LOBYTE(v20) = sub_266ABD724();
        v22 = *v15;
        v23 = v38;
        (*v15)(v10, v38);
        v22(v14, v23);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v35);
        if ((v20 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {
          __break(1u);
          return result;
        }

        sub_266A6DBC4(v16, &v35);
        v24 = *(v16 - 24);
        *v16 = *(v16 - 40);
        *(v16 + 16) = v24;
        *(v16 + 32) = *(v16 - 8);
        result = sub_266A6DBC4(&v35, v16 - 40);
        v16 -= 40;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v30 + 1;
      v16 = v29 + 40;
      v17 = v28 - 1;
      if (v30 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_266AB1470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_266ABD7A4();
  v8 = MEMORY[0x28223BE20](v62);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v8);
  v14 = &v38[-v13];
  v39 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v43 = *a4;
    v16 = v43 + 40 * a3;
    v17 = a1 - a3;
    while (2)
    {
      v42 = a3;
      v40 = v17;
      v41 = v16;
      v18 = v16;
      while (1)
      {
        sub_266A6FFD8(v18, &v59);
        sub_266A6FFD8(v18 - 40, v56);
        v20 = v60;
        v19 = v61;
        __swift_project_boxed_opaque_existential_1(&v59, v60);
        v21 = (*(v19 + 16))(v20, v19);
        if (*(v21 + 16))
        {
          sub_266A6FFD8(v21 + 32, &v50);
        }

        else
        {
          v52 = 0;
          v50 = 0u;
          v51 = 0u;
        }

        if (!*(&v51 + 1))
        {
          sub_266A798F4(&v50, &qword_2800B1D78, "^X");
          goto LABEL_19;
        }

        sub_266A6DBC4(&v50, v53);
        v22 = v57;
        v23 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v24 = (*(v23 + 16))(v22, v23);
        if (*(v24 + 16))
        {
          sub_266A6FFD8(v24 + 32, &v47);
        }

        else
        {
          v49 = 0;
          v48 = 0u;
          v47 = 0u;
        }

        if (!*(&v48 + 1))
        {
          break;
        }

        sub_266A6DBC4(&v47, &v50);
        v25 = v54;
        v26 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        (*(v26 + 32))(&v47, v25, v26);
        v27 = *(&v48 + 1);
        v28 = v49;
        __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
        (*(v28 + 88))(v27, v28);
        v29 = *(&v51 + 1);
        v30 = v52;
        __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        (*(v30 + 32))(v44, v29, v30);
        v31 = v45;
        v32 = v46;
        __swift_project_boxed_opaque_existential_1(v44, v45);
        (*(v32 + 88))(v31, v32);
        v33 = sub_266ABD724();
        v34 = *v15;
        v35 = v62;
        (*v15)(v10, v62);
        v34(v14, v35);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        __swift_destroy_boxed_opaque_existential_1Tm(&v47);
        __swift_destroy_boxed_opaque_existential_1Tm(&v50);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v59);
        if (v33)
        {
          if (!v43)
          {
            __break(1u);
            return result;
          }

          sub_266A6DBC4(v18, &v59);
          v36 = *(v18 - 24);
          *v18 = *(v18 - 40);
          *(v18 + 16) = v36;
          *(v18 + 32) = *(v18 - 8);
          result = sub_266A6DBC4(&v59, v18 - 40);
          v18 -= 40;
          if (!__CFADD__(v17++, 1))
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      sub_266A798F4(&v47, &qword_2800B1D78, "^X");
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v59);
LABEL_20:
      a3 = v42 + 1;
      v16 = v41 + 40;
      v17 = v40 - 1;
      if (v42 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_266AB18F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v115 = a1;
  v132 = sub_266ABD7A4();
  v6 = MEMORY[0x28223BE20](v132);
  v125 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v124 = &v111 - v12;
  v119 = a3;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_92:
    v132 = *v115;
    if (!v132)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_94;
    }

    goto LABEL_129;
  }

  v112 = a4;
  v14 = 0;
  v123 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v17 = *v119;
      sub_266A6FFD8(*v119 + 40 * v14, &v129);
      sub_266A6FFD8(&v17[40 * v16], v126);
      v18 = v121;
      LODWORD(v122) = sub_266A7EC68(&v129, v126);
      v121 = v18;
      if (v18)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        __swift_destroy_boxed_opaque_existential_1Tm(&v129);
LABEL_104:

        return;
      }

      v113 = v15;
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      __swift_destroy_boxed_opaque_existential_1Tm(&v129);
      v118 = 40 * v16;
      v15 = &v17[40 * v16 + 80];
      v114 = v16;
      v19 = v16 + 2;
      while (1)
      {
        v20 = v19;
        v21 = v14 + 1;
        if (v21 >= v13)
        {
          break;
        }

        sub_266A6FFD8(v15, &v129);
        sub_266A6FFD8((v15 - 40), v126);
        v120 = v21;
        v22 = v13;
        v23 = v130;
        v24 = v131;
        __swift_project_boxed_opaque_existential_1(&v129, v130);
        v25 = v124;
        (*(v24 + 88))(v23, v24);
        v26 = v127;
        v27 = v128;
        __swift_project_boxed_opaque_existential_1(v126, v127);
        v28 = v125;
        (*(v27 + 88))(v26, v27);
        v29 = sub_266ABD724() & 1;
        v30 = *v123;
        v31 = v132;
        (*v123)(v28, v132);
        v32 = v31;
        v13 = v22;
        v14 = v120;
        v30(v25, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        __swift_destroy_boxed_opaque_existential_1Tm(&v129);
        v15 += 40;
        v19 = v20 + 1;
        if ((v122 & 1) != v29)
        {
          goto LABEL_10;
        }
      }

      v14 = v13;
LABEL_10:
      if (v122)
      {
        if (v14 < v114)
        {
          goto LABEL_128;
        }

        if (v114 >= v14)
        {
          v15 = v113;
          v16 = v114;
          goto LABEL_23;
        }

        if (v13 >= v20)
        {
          v33 = v20;
        }

        else
        {
          v33 = v13;
        }

        v34 = 40 * v33 - 40;
        v35 = v14;
        v36 = v114;
        v37 = v118;
        do
        {
          if (v36 != --v35)
          {
            v38 = *v119;
            if (!*v119)
            {
              goto LABEL_133;
            }

            v39 = v38 + v37;
            v40 = v38 + v34;
            v41 = v37;
            sub_266A6DBC4((v38 + v37), &v129);
            v42 = *(v40 + 32);
            v43 = *(v40 + 16);
            *v39 = *v40;
            *(v39 + 16) = v43;
            *(v39 + 32) = v42;
            sub_266A6DBC4(&v129, v40);
            v37 = v41;
          }

          ++v36;
          v34 -= 40;
          v37 += 40;
        }

        while (v36 < v35);
      }

      v15 = v113;
      v16 = v114;
    }

LABEL_23:
    v44 = v119[1];
    if (v14 < v44)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_125;
      }

      if (v14 - v16 < v112)
      {
        break;
      }
    }

LABEL_39:
    if (v14 < v16)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_266A981C8();
      v15 = v101;
    }

    v59 = *(v15 + 2);
    v60 = v59 + 1;
    if (v59 >= *(v15 + 3) >> 1)
    {
      sub_266A981C8();
      v15 = v102;
    }

    *(v15 + 2) = v60;
    v61 = v15 + 32;
    v62 = &v15[16 * v59 + 32];
    *v62 = v16;
    *(v62 + 1) = v14;
    v122 = *v115;
    if (!v122)
    {
      goto LABEL_134;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v15[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_59:
          if (v69)
          {
            goto LABEL_111;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_114;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_119;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v60 < 2)
        {
          goto LABEL_113;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_74:
        if (v84)
        {
          goto LABEL_116;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_118;
        }

        if (v91 < v83)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v63 - 1 >= v60)
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v119)
        {
          goto LABEL_131;
        }

        v95 = v15;
        v96 = &v61[16 * v63 - 16];
        v97 = *v96;
        v15 = &v61[16 * v63];
        v98 = *(v15 + 1);
        v99 = v121;
        sub_266AB2F88((*v119 + 40 * *v96), (*v119 + 40 * *v15), *v119 + 40 * v98, v122);
        v121 = v99;
        if (v99)
        {
          goto LABEL_104;
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        v100 = *(v95 + 2);
        if (v63 > v100)
        {
          goto LABEL_107;
        }

        *v96 = v97;
        *(v96 + 1) = v98;
        if (v63 >= v100)
        {
          goto LABEL_108;
        }

        v60 = v100 - 1;
        memmove(&v61[16 * v63], v15 + 16, 16 * (v100 - 1 - v63));
        v15 = v95;
        *(v95 + 2) = v100 - 1;
        if (v100 <= 2)
        {
          goto LABEL_88;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_109;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_110;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_112;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_115;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_123;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v13 = v119[1];
    if (v14 >= v13)
    {
      goto LABEL_92;
    }
  }

  v45 = v16 + v112;
  if (__OFADD__(v16, v112))
  {
    goto LABEL_126;
  }

  if (v45 >= v44)
  {
    v45 = v119[1];
  }

  if (v45 < v16)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v15 = sub_266AB36C4(v15, v8, v9, v10);
LABEL_94:
    v103 = v15 + 16;
    v104 = *(v15 + 2);
    while (v104 >= 2)
    {
      if (!*v119)
      {
        goto LABEL_132;
      }

      v105 = v15;
      v106 = &v15[16 * v104];
      v107 = *v106;
      v15 = &v103[2 * v104];
      v108 = *(v15 + 1);
      v109 = v121;
      sub_266AB2F88((*v119 + 40 * *v106), (*v119 + 40 * *v15), *v119 + 40 * v108, v132);
      v121 = v109;
      if (v109)
      {
        break;
      }

      if (v108 < v107)
      {
        goto LABEL_120;
      }

      if (v104 - 2 >= *v103)
      {
        goto LABEL_121;
      }

      *v106 = v107;
      *(v106 + 1) = v108;
      v110 = *v103 - v104;
      if (*v103 < v104)
      {
        goto LABEL_122;
      }

      v104 = *v103 - 1;
      memmove(v15, v15 + 16, 16 * v110);
      *v103 = v104;
      v15 = v105;
    }

    goto LABEL_104;
  }

  if (v14 == v45)
  {
    goto LABEL_39;
  }

  v113 = v15;
  v122 = *v119;
  v46 = &v122[40 * v14];
  v114 = v16;
  v47 = v16 - v14;
  v116 = v45;
LABEL_32:
  v120 = v14;
  v117 = v47;
  v118 = v46;
  while (1)
  {
    sub_266A6FFD8(v46, &v129);
    sub_266A6FFD8((v46 - 40), v126);
    v48 = v130;
    v49 = v131;
    __swift_project_boxed_opaque_existential_1(&v129, v130);
    v50 = v124;
    (*(v49 + 88))(v48, v49);
    v51 = v127;
    v52 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    v53 = v125;
    (*(v52 + 88))(v51, v52);
    v54 = sub_266ABD724();
    v55 = *v123;
    v56 = v132;
    (*v123)(v53, v132);
    v55(v50, v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    __swift_destroy_boxed_opaque_existential_1Tm(&v129);
    if ((v54 & 1) == 0)
    {
LABEL_37:
      v14 = v120 + 1;
      v46 = (v118 + 40);
      v47 = v117 - 1;
      if (v120 + 1 == v116)
      {
        v14 = v116;
        v15 = v113;
        v16 = v114;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v122)
    {
      break;
    }

    sub_266A6DBC4(v46, &v129);
    v57 = *(v46 - 24);
    *v46 = *(v46 - 40);
    *(v46 + 1) = v57;
    *(v46 + 4) = *(v46 - 1);
    sub_266A6DBC4(&v129, (v46 - 40));
    v46 -= 40;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_266AB21D4(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v143 = a1;
  v152 = sub_266ABD7A4();
  v6 = MEMORY[0x28223BE20](v152);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v171 = &v140 - v13;
  v147 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_118:
    v171 = *v143;
    if (!v171)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_120;
    }

    goto LABEL_154;
  }

  v140 = a4;
  v15 = 0;
  v151 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    if (v18 >= v14)
    {
      v149 = v18;
      goto LABEL_36;
    }

    v19 = *v147;
    v20 = v18;
    sub_266A6FFD8(&(*v147)[40 * v18], &v168);
    sub_266A6FFD8(&v19[40 * v17], &v165);
    v21 = v148;
    v22 = sub_266A7FBA0(&v168, &v165);
    v148 = v21;
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v165);
      __swift_destroy_boxed_opaque_existential_1Tm(&v168);
LABEL_129:

      return;
    }

    v23 = v22;
    v141 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(&v165);
    __swift_destroy_boxed_opaque_existential_1Tm(&v168);
    v146 = 40 * v17;
    v24 = &v19[40 * v17 + 80];
    v142 = v17;
    v25 = v17 + 2;
    v150 = v14;
    while (1)
    {
      v26 = v25;
      if ((v20 + 1) >= v14)
      {
        break;
      }

      v149 = v20;
      sub_266A6FFD8(v24, &v168);
      sub_266A6FFD8(v24 - 40, &v165);
      v27 = v169;
      v28 = v170;
      __swift_project_boxed_opaque_existential_1(&v168, v169);
      v29 = (*(v28 + 16))(v27, v28);
      if (*(v29 + 16))
      {
        sub_266A6FFD8(v29 + 32, &v159);
      }

      else
      {
        v161 = 0;
        v159 = 0u;
        v160 = 0u;
      }

      if (!*(&v160 + 1))
      {
        sub_266A798F4(&v159, &qword_2800B1D78, "^X");
LABEL_18:
        v16 = 0;
        goto LABEL_19;
      }

      sub_266A6DBC4(&v159, v162);
      v30 = v166;
      v31 = v167;
      __swift_project_boxed_opaque_existential_1(&v165, v166);
      v32 = (*(v31 + 16))(v30, v31);
      if (*(v32 + 16))
      {
        sub_266A6FFD8(v32 + 32, &v156);
      }

      else
      {
        v158 = 0;
        v157 = 0u;
        v156 = 0u;
      }

      if (!*(&v157 + 1))
      {
        sub_266A798F4(&v156, &qword_2800B1D78, "^X");
        __swift_destroy_boxed_opaque_existential_1Tm(v162);
        goto LABEL_18;
      }

      sub_266A6DBC4(&v156, &v159);
      v33 = v163;
      v34 = v164;
      __swift_project_boxed_opaque_existential_1(v162, v163);
      (*(v34 + 32))(&v156, v33, v34);
      v35 = *(&v157 + 1);
      v36 = v158;
      __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
      v37 = v171;
      (*(v36 + 88))(v35, v36);
      v38 = *(&v160 + 1);
      v39 = v161;
      __swift_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
      (*(v39 + 32))(v153, v38, v39);
      v40 = v154;
      v41 = v155;
      __swift_project_boxed_opaque_existential_1(v153, v154);
      (*(v41 + 88))(v40, v41);
      v16 = sub_266ABD724();
      v42 = *v151;
      v43 = v23;
      v44 = v152;
      (*v151)(v8, v152);
      v45 = v37;
      v14 = v150;
      v46 = v44;
      v23 = v43;
      v42(v45, v46);
      __swift_destroy_boxed_opaque_existential_1Tm(v153);
      __swift_destroy_boxed_opaque_existential_1Tm(&v156);
      __swift_destroy_boxed_opaque_existential_1Tm(&v159);
      __swift_destroy_boxed_opaque_existential_1Tm(v162);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1Tm(&v165);
      __swift_destroy_boxed_opaque_existential_1Tm(&v168);
      v24 += 40;
      v20 = (v149 + 1);
      v25 = v26 + 1;
      if ((v23 & 1) != (v16 & 1))
      {
        goto LABEL_23;
      }
    }

    v20 = v14;
LABEL_23:
    v149 = v20;
    if ((v23 & 1) == 0)
    {
LABEL_34:
      v16 = v141;
      v17 = v142;
      goto LABEL_36;
    }

    v47 = v142;
    if (v20 < v142)
    {
      goto LABEL_153;
    }

    if (v142 < v20)
    {
      if (v14 >= v26)
      {
        v48 = v26;
      }

      else
      {
        v48 = v14;
      }

      v49 = 40 * v48 - 40;
      v50 = v20;
      v51 = v146;
      do
      {
        if (v47 != --v50)
        {
          v52 = *v147;
          if (!*v147)
          {
            goto LABEL_158;
          }

          v53 = &v52[v51];
          v54 = &v52[v49];
          sub_266A6DBC4(&v52[v51], &v168);
          v55 = *(v54 + 32);
          v56 = *(v54 + 16);
          *v53 = *v54;
          *(v53 + 1) = v56;
          *(v53 + 4) = v55;
          sub_266A6DBC4(&v168, v54);
        }

        ++v47;
        v49 -= 40;
        v51 += 40;
      }

      while (v47 < v50);
      goto LABEL_34;
    }

    v16 = v141;
    v17 = v142;
LABEL_36:
    v57 = v147[1];
    if (v149 < v57)
    {
      if (__OFSUB__(v149, v17))
      {
        goto LABEL_150;
      }

      if (v149 - v17 < v140)
      {
        break;
      }
    }

LABEL_65:
    if (v149 < v17)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_266A981C8();
      v16 = v129;
    }

    v82 = *(v16 + 16);
    v83 = v82 + 1;
    if (v82 >= *(v16 + 24) >> 1)
    {
      sub_266A981C8();
      v16 = v130;
    }

    *(v16 + 16) = v83;
    v84 = v16 + 32;
    v85 = (v16 + 32 + 16 * v82);
    v86 = v149;
    *v85 = v17;
    v85[1] = v86;
    v150 = *v143;
    if (!v150)
    {
      goto LABEL_159;
    }

    v87 = v8;
    if (v82)
    {
      while (1)
      {
        v88 = v83 - 1;
        v89 = (v84 + 16 * (v83 - 1));
        v90 = (v16 + 16 * v83);
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v91 = *(v16 + 32);
          v92 = *(v16 + 40);
          v101 = __OFSUB__(v92, v91);
          v93 = v92 - v91;
          v94 = v101;
LABEL_85:
          if (v94)
          {
            goto LABEL_136;
          }

          v106 = *v90;
          v105 = v90[1];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_139;
          }

          v110 = v89[1];
          v111 = v110 - *v89;
          if (__OFSUB__(v110, *v89))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v108, v111))
          {
            goto LABEL_144;
          }

          if (v108 + v111 >= v93)
          {
            if (v93 < v111)
            {
              v88 = v83 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v83 < 2)
        {
          goto LABEL_138;
        }

        v113 = *v90;
        v112 = v90[1];
        v101 = __OFSUB__(v112, v113);
        v108 = v112 - v113;
        v109 = v101;
LABEL_100:
        if (v109)
        {
          goto LABEL_141;
        }

        v115 = *v89;
        v114 = v89[1];
        v101 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v101)
        {
          goto LABEL_143;
        }

        if (v116 < v108)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v88 - 1 >= v83)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
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
          goto LABEL_152;
        }

        if (!*v147)
        {
          goto LABEL_156;
        }

        v120 = v16;
        v121 = (v84 + 16 * (v88 - 1));
        v122 = *v121;
        v123 = (v84 + 16 * v88);
        v16 = v123[1];
        v124 = v148;
        sub_266AB33C8(&(*v147)[40 * *v121], &(*v147)[40 * *v123], &(*v147)[40 * v16], v150);
        v148 = v124;
        if (v124)
        {
          goto LABEL_129;
        }

        if (v16 < v122)
        {
          goto LABEL_131;
        }

        v125 = v84;
        v126 = v87;
        v127 = v120;
        v128 = *(v120 + 16);
        if (v88 > v128)
        {
          goto LABEL_132;
        }

        *v121 = v122;
        v121[1] = v16;
        if (v88 >= v128)
        {
          goto LABEL_133;
        }

        v83 = v128 - 1;
        memmove(v123, v123 + 2, 16 * (v128 - 1 - v88));
        v16 = v127;
        *(v127 + 16) = v128 - 1;
        v87 = v126;
        v84 = v125;
        if (v128 <= 2)
        {
          goto LABEL_114;
        }
      }

      v95 = v84 + 16 * v83;
      v96 = *(v95 - 64);
      v97 = *(v95 - 56);
      v101 = __OFSUB__(v97, v96);
      v98 = v97 - v96;
      if (v101)
      {
        goto LABEL_134;
      }

      v100 = *(v95 - 48);
      v99 = *(v95 - 40);
      v101 = __OFSUB__(v99, v100);
      v93 = v99 - v100;
      v94 = v101;
      if (v101)
      {
        goto LABEL_135;
      }

      v102 = v90[1];
      v103 = v102 - *v90;
      if (__OFSUB__(v102, *v90))
      {
        goto LABEL_137;
      }

      v101 = __OFADD__(v93, v103);
      v104 = v93 + v103;
      if (v101)
      {
        goto LABEL_140;
      }

      if (v104 >= v98)
      {
        v118 = *v89;
        v117 = v89[1];
        v101 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v101)
        {
          goto LABEL_148;
        }

        if (v93 < v119)
        {
          v88 = v83 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_114:
    v14 = v147[1];
    v15 = v149;
    v8 = v87;
    if (v149 >= v14)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v17, v140))
  {
    goto LABEL_151;
  }

  if (v17 + v140 >= v57)
  {
    v58 = v147[1];
  }

  else
  {
    v58 = (v17 + v140);
  }

  if (v58 < v17)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    v16 = sub_266AB36C4(v16, v9, v10, v11);
LABEL_120:
    v131 = v16;
    v132 = (v16 + 16);
    v133 = *(v16 + 16);
    while (v133 >= 2)
    {
      if (!*v147)
      {
        goto LABEL_157;
      }

      v16 = v131;
      v134 = (v131 + 16 * v133);
      v135 = *v134;
      v136 = &v132[2 * v133];
      v137 = v136[1];
      v138 = v148;
      sub_266AB33C8(&(*v147)[40 * *v134], &(*v147)[40 * *v136], &(*v147)[40 * v137], v171);
      v148 = v138;
      if (v138)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_145;
      }

      if (v133 - 2 >= *v132)
      {
        goto LABEL_146;
      }

      *v134 = v135;
      v134[1] = v137;
      v139 = *v132 - v133;
      if (*v132 < v133)
      {
        goto LABEL_147;
      }

      v133 = *v132 - 1;
      memmove(v136, v136 + 2, 16 * v139);
      *v132 = v133;
      v131 = v16;
    }

    goto LABEL_129;
  }

  v59 = v149;
  if (v149 == v58)
  {
    goto LABEL_65;
  }

  v141 = v16;
  v150 = *v147;
  v60 = &v150[40 * v149];
  v142 = v17;
  v61 = v17 - v149;
  v144 = v58;
  while (2)
  {
    v149 = v59;
    v145 = v61;
    v146 = v60;
LABEL_47:
    sub_266A6FFD8(v60, &v168);
    sub_266A6FFD8((v60 - 40), &v165);
    v62 = v169;
    v63 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    v64 = (*(v63 + 16))(v62, v63);
    if (*(v64 + 16))
    {
      sub_266A6FFD8(v64 + 32, &v159);
    }

    else
    {
      v161 = 0;
      v159 = 0u;
      v160 = 0u;
    }

    if (!*(&v160 + 1))
    {
      sub_266A798F4(&v159, &qword_2800B1D78, "^X");
LABEL_62:
      __swift_destroy_boxed_opaque_existential_1Tm(&v165);
      __swift_destroy_boxed_opaque_existential_1Tm(&v168);
LABEL_63:
      v59 = v149 + 1;
      v60 = (v146 + 40);
      v61 = v145 - 1;
      if ((v149 + 1) == v144)
      {
        v149 = v144;
        v16 = v141;
        v17 = v142;
        goto LABEL_65;
      }

      continue;
    }

    break;
  }

  sub_266A6DBC4(&v159, v162);
  v65 = v166;
  v66 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v67 = (*(v66 + 16))(v65, v66);
  if (*(v67 + 16))
  {
    sub_266A6FFD8(v67 + 32, &v156);
  }

  else
  {
    v158 = 0;
    v157 = 0u;
    v156 = 0u;
  }

  if (!*(&v157 + 1))
  {
    sub_266A798F4(&v156, &qword_2800B1D78, "^X");
    __swift_destroy_boxed_opaque_existential_1Tm(v162);
    goto LABEL_62;
  }

  sub_266A6DBC4(&v156, &v159);
  v68 = v163;
  v69 = v164;
  __swift_project_boxed_opaque_existential_1(v162, v163);
  (*(v69 + 32))(&v156, v68, v69);
  v70 = *(&v157 + 1);
  v71 = v158;
  __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
  v72 = v171;
  (*(v71 + 88))(v70, v71);
  v73 = *(&v160 + 1);
  v74 = v161;
  __swift_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
  (*(v74 + 32))(v153, v73, v74);
  v75 = v154;
  v76 = v155;
  __swift_project_boxed_opaque_existential_1(v153, v154);
  (*(v76 + 88))(v75, v76);
  v77 = sub_266ABD724();
  v78 = *v151;
  v79 = v152;
  (*v151)(v8, v152);
  v78(v72, v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v153);
  __swift_destroy_boxed_opaque_existential_1Tm(&v156);
  __swift_destroy_boxed_opaque_existential_1Tm(&v159);
  __swift_destroy_boxed_opaque_existential_1Tm(v162);
  __swift_destroy_boxed_opaque_existential_1Tm(&v165);
  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  if ((v77 & 1) == 0)
  {
    goto LABEL_63;
  }

  if (v150)
  {
    sub_266A6DBC4(v60, &v168);
    v80 = *(v60 - 24);
    *v60 = *(v60 - 40);
    *(v60 + 1) = v80;
    *(v60 + 4) = *(v60 - 1);
    sub_266A6DBC4(&v168, (v60 - 40));
    v60 -= 40;
    if (__CFADD__(v61++, 1))
    {
      goto LABEL_63;
    }

    goto LABEL_47;
  }

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
}

uint64_t sub_266AB2F88(char *a1, char *a2, unint64_t a3, char *a4)
{
  v57 = sub_266ABD7A4();
  v8 = MEMORY[0x28223BE20](v57);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = (a2 - a1) / 40;
  v55 = (v13 + 8);
  v14 = (a3 - a2) / 40;
  if (v12 < v14)
  {
    sub_266A9D164(a1, (a2 - a1) / 40, a4);
    v64 = &a4[40 * v12];
    while (1)
    {
      if (a4 >= v64 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v16 = a3;
      sub_266A6FFD8(a2, v61);
      sub_266A6FFD8(a4, v58);
      v17 = v62;
      v18 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      (*(v18 + 88))(v17, v18);
      v19 = v59;
      v20 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v21 = v56;
      (*(v20 + 88))(v19, v20);
      LOBYTE(v19) = sub_266ABD724();
      v22 = *v55;
      v23 = v21;
      v24 = v57;
      (*v55)(v23, v57);
      v22(v11, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v25 = a2;
      v26 = a1 == a2;
      a2 += 40;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 += 40;
      a3 = v16;
    }

    v25 = a4;
    v26 = a1 == a4;
    a4 += 40;
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_12:
    v27 = *v25;
    v28 = *(v25 + 1);
    *(a1 + 4) = *(v25 + 4);
    *a1 = v27;
    *(a1 + 1) = v28;
    goto LABEL_13;
  }

  sub_266A9D164(a2, (a3 - a2) / 40, a4);
  v29 = &a4[40 * v14];
  v52 = a4;
  v53 = a1;
LABEL_15:
  v30 = a2 - 40;
  a3 -= 40;
  v31 = (v29 - 40);
  v54 = a2;
  while (1)
  {
    v64 = (v31 + 40);
    if (v31 + 40 <= a4 || a2 <= a1)
    {
      break;
    }

    sub_266A6FFD8(v31, v61);
    v33 = v30;
    sub_266A6FFD8(v30, v58);
    v35 = v62;
    v34 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v34 + 88))(v35, v34);
    v36 = v59;
    v37 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v38 = v11;
    v39 = v56;
    (*(v37 + 88))(v36, v37);
    v40 = sub_266ABD724();
    v41 = *v55;
    v42 = v39;
    v11 = v38;
    v43 = v57;
    (*v55)(v42, v57);
    v41(v38, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    if (v40)
    {
      v29 = (v31 + 40);
      a1 = v53;
      a2 = v33;
      a4 = v52;
      if ((a3 + 40) != v54)
      {
        v46 = *v33;
        v47 = *(v33 + 1);
        *(a3 + 32) = *(v33 + 4);
        *a3 = v46;
        *(a3 + 16) = v47;
        a2 = v33;
      }

      goto LABEL_15;
    }

    if (v64 != (a3 + 40))
    {
      v44 = *v31;
      v45 = *(v31 + 16);
      *(a3 + 32) = *(v31 + 32);
      *a3 = v44;
      *(a3 + 16) = v45;
    }

    a3 -= 40;
    v31 -= 40;
    a4 = v52;
    a1 = v53;
    a2 = v54;
    v30 = v33;
  }

LABEL_28:
  v48 = (v64 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[40 * v48])
  {
    memmove(a2, a4, 40 * v48);
  }

  return 1;
}

uint64_t sub_266AB33C8(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = (a2 - __src) / 40;
  v10 = (a3 - a2) / 40;
  if (v9 < v10)
  {
    sub_266A9D164(__src, (a2 - __src) / 40, __dst);
    v11 = v5 + 40 * v9;
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v34 = v8;
        goto LABEL_30;
      }

      sub_266A6FFD8(v7, v45);
      sub_266A6FFD8(v5, v44);
      v13 = sub_266A7FBA0(v45, v44);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        v38 = (v11 - v5) / 40;
        v39 = v8 < v5 || v8 >= v5 + 40 * v38;
        if (v39 || v8 != v5)
        {
          v37 = 40 * v38;
          v34 = v8;
LABEL_42:
          v40 = v5;
LABEL_49:
          memmove(v34, v40, v37);
        }

        return 1;
      }

      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 40;
      if (!v16)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 += 40;
    }

    v15 = v5;
    v16 = v8 == v5;
    v5 += 40;
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_13:
    v17 = *v15;
    v18 = *(v15 + 16);
    *(v8 + 4) = *(v15 + 32);
    *v8 = v17;
    *(v8 + 1) = v18;
    goto LABEL_14;
  }

  sub_266A9D164(a2, (a3 - a2) / 40, __dst);
  v19 = v5 + 40 * v10;
  v20 = -v5;
  v43 = -v5;
LABEL_16:
  v46 = v7;
  v21 = (v7 - 40);
  v6 -= 40;
  v22 = v19 - 40;
  for (i = v20 + v19; ; i -= 40)
  {
    v11 = v22 + 40;
    if (v22 + 40 <= v5 || v46 <= v8)
    {
      v34 = v46;
LABEL_30:
      v35 = (v11 - v5) / 40;
      v36 = v34 < v5 || v34 >= v5 + 40 * v35;
      if (v36 || v34 != v5)
      {
        v37 = 40 * v35;
        goto LABEL_42;
      }

      return 1;
    }

    v25 = v5;
    sub_266A6FFD8(v22, v45);
    v26 = v21;
    sub_266A6FFD8(v21, v44);
    v27 = sub_266A7FBA0(v45, v44);
    if (v4)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    if (v28)
    {
      v19 = v22 + 40;
      v31 = v26;
      v7 = v26;
      v20 = v43;
      v5 = v25;
      if (v6 + 40 != v46)
      {
        v32 = *v31;
        v33 = *(v31 + 1);
        *(v6 + 32) = *(v31 + 4);
        *v6 = v32;
        *(v6 + 16) = v33;
        v7 = v31;
      }

      goto LABEL_16;
    }

    if (v11 != v6 + 40)
    {
      v29 = *v22;
      v30 = *(v22 + 16);
      *(v6 + 32) = *(v22 + 32);
      *v6 = v29;
      *(v6 + 16) = v30;
    }

    v6 -= 40;
    v22 -= 40;
    v21 = v26;
    v5 = v25;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  v34 = v46;
  v41 = v46 < v25 || v46 >= v25 + 40 * (i / 40);
  if (v41 || v46 != v25)
  {
    v37 = 40 * (i / 40);
    v40 = v25;
    goto LABEL_49;
  }

  return 1;
}

char *sub_266AB36DC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_266AB3708(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22E0, &unk_266AC3570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_266AB3808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B48, &qword_266AC6358);
  v34 = v4;
  v6 = sub_266ABDFB4();
  if (!*(v5 + 16))
  {
LABEL_30:

LABEL_31:
    *v3 = v6;
    return;
  }

  v32 = v2;
  v33 = v5;
  v7 = 0;
  v8 = (v5 + 64);
  OUTLINED_FUNCTION_14_6();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_31;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      sub_266AB3D70(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_266ABE244();
    if ((v19 & 0xFF000000000000) != 0x9000000000000)
    {
      sub_266ABE264();
      sub_266ABE264();
      MEMORY[0x26D5E8B00](BYTE1(v19));
      v5 = v33;
      sub_266ABE264();
      sub_266ABE264();
      sub_266ABE274();
      MEMORY[0x26D5E8B00](BYTE6(v19));
    }

    sub_266ABE264();
    v21 = sub_266ABE2A4();
    v22 = -1 << *(v6 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v26 = v20;
LABEL_22:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v6 + 48) + 8 * v25) = v19;
    *(*(v6 + 56) + 8 * v25) = v26;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  v27 = 0;
  v28 = (63 - v22) >> 6;
  v26 = v20;
  while (++v24 != v28 || (v27 & 1) == 0)
  {
    v29 = v24 == v28;
    if (v24 == v28)
    {
      v24 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v24);
    if (v30 != -1)
    {
      v25 = __clz(__rbit64(~v30)) + (v24 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

double sub_266AB3B10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_266AB0B30(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B50, &qword_266AC6368);
    sub_266ABDF34();

    sub_266A6DBC4((*(v9 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
    sub_266ABDF44();
    *v3 = v9;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t *sub_266AB3C0C(uint64_t a1)
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
      v2 = sub_266AB3F20(v8, v4, v2);
      MEMORY[0x26D5E9280](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_266AB3D70(0, v4, v5);
  v6 = sub_266AB3DD4(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_266AB3D70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266AC5F30;
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

unint64_t *sub_266AB3DD4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v21 = *(*(a3 + 48) + 8 * v14);
    v16 = *(v15 + 8 * v14);

    v17 = sub_266A7F060(&v21, v16);

    if (v17)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_266AB3F98(v20, a2, v4, a3);
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

    if (v5 >= v10)
    {
      return sub_266AB3F98(v20, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_266AB3F20(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_266AB3DD4(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_266AB3F98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B48, &qword_266AC6358);
  result = sub_266ABDFC4();
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
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + 8 * v16);
    v29 = *(v17 + 8 * v16);
    sub_266ABE244();
    if ((v18 & 0xFF000000000000) != 0x9000000000000)
    {
      sub_266ABE264();
      sub_266ABE264();
      MEMORY[0x26D5E8B00](BYTE1(v18));
      sub_266ABE264();
      sub_266ABE264();
      sub_266ABE274();
      MEMORY[0x26D5E8B00](BYTE6(v18));
    }

    sub_266ABE264();
    result = sub_266ABE2A4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_32;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v18;
    result = v29;
    *(*(v9 + 56) + 8 * v22) = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_33;
    }

    v4 = v28;
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
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_266AB4240(uint64_t a1, unint64_t a2, char a3)
{
  sub_266AB0C10(a2);
  OUTLINED_FUNCTION_23_0();
  if (__OFADD__(v8, v9))
  {
    __break(1u);
LABEL_14:
    result = sub_266ABE1F4();
    __break(1u);
    return result;
  }

  v10 = v6;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
  if (sub_266ABDF34())
  {
    sub_266AB0C10(a2);
    OUTLINED_FUNCTION_46();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    v14 = *(*v3 + 56);
    v15 = type metadata accessor for ParticipantModel(0);
    OUTLINED_FUNCTION_21(v15);
    v17 = v14 + *(v16 + 72) * v10;

    return sub_266A81518(a1, v17);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_79();

    return sub_266AB44F8(v19, v20, a1, v21);
  }
}

uint64_t sub_266AB4368(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_266AB0B30(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B50, &qword_266AC6368);
  if ((sub_266ABDF34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_266AB0B30(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_266ABE1F4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 40 * v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    return sub_266A6DBC4(a1, v17);
  }

  else
  {
    sub_266AB45BC(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_266AB44B4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_266AB44F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_21(v8);
  result = sub_266A7977C(a3, v7 + *(v9 + 72) * a1);
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

uint64_t sub_266AB45BC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_266A6DBC4(a4, a5[7] + 40 * a1);
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

uint64_t sub_266AB462C(uint64_t a1)
{
  result = sub_266A6F7D0(&qword_2800B2AC0, type metadata accessor for ParticipantModel, protocol conformance descriptor for ParticipantModel);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266AB46EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266AB4728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_266AB4774(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_266AB4A28(uint64_t a1)
{
  sub_266AB4D9C(319, &qword_2800B2AE0, &qword_2800B1CD0, &unk_266AC12E0, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_266AB4D9C(319, &qword_2800B2AE8, &qword_2800B22E8, &unk_266AC5F40, MEMORY[0x277D83940]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    v4 = sub_266AB4D40();
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_266AB4E58(319, &qword_2800B2AF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_266AB4D9C(319, &qword_2800B2B00, &qword_2800B1E00, &qword_266AC13A0, MEMORY[0x277D83940]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_266AB4E58(319, &qword_2800B2B08, MEMORY[0x277D84B78], MEMORY[0x277D83D88]);
    if (v10 > 0x3F)
    {
      return v4;
    }

    v4 = sub_266ABD7A4();
    if (v11 > 0x3F)
    {
      return v4;
    }

    sub_266AB4D9C(319, &qword_2800B2B10, &qword_2800B1CD0, &unk_266AC12E0, MEMORY[0x277D83940]);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_266AB4E58(319, &qword_2800B2B18, &type metadata for TrumpReason, MEMORY[0x277D83940]);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_266AB4E00(319);
    if (v14 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_266AB4E58(319, &qword_2800B2B28, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      v2 = v15;
      if (v16 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

unint64_t sub_266AB4D40()
{
  result = qword_2800B2AF0;
  if (!qword_2800B2AF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2800B2AF0);
  }

  return result;
}

void sub_266AB4D9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_266AB4E00(uint64_t a1)
{
  if (!qword_2800B2B20)
  {
    sub_266ABD7A4();
    v1 = sub_266ABDDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_2800B2B20);
    }
  }
}

void sub_266AB4E58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_266AB4EBC()
{
  result = qword_2800B2B30;
  if (!qword_2800B2B30)
  {
    result = swift_getWitnessTable(aW_0, &type metadata for ParticipantModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2B30);
  }

  return result;
}

unint64_t sub_266AB4F14()
{
  result = qword_2800B2B38;
  if (!qword_2800B2B38)
  {
    result = swift_getWitnessTable(byte_266AC61F8, &type metadata for ParticipantModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2B38);
  }

  return result;
}

unint64_t sub_266AB4F6C()
{
  result = qword_2800B2B40;
  if (!qword_2800B2B40)
  {
    result = swift_getWitnessTable(byte_266AC6220, &type metadata for ParticipantModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2B40);
  }

  return result;
}

uint64_t sub_266AB4FC0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFF000000000000) != 0x9000000000000)
  {
    sub_266ABE264();
    sub_266ABE264();
    MEMORY[0x26D5E8B00](BYTE1(a2));
    sub_266ABE264();
    sub_266ABE264();
    sub_266ABE274();
    MEMORY[0x26D5E8B00](BYTE6(a2));
  }

  return sub_266ABE264();
}

uint64_t sub_266AB50A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_32(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_9_2();
  v6(v5);
  return v4;
}

BOOL OUTLINED_FUNCTION_24_5@<W0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>, uint8x8_t a3@<D1>)
{
  *(v3 + 864) = a1;

  return static AdvertisementModel.== infix(_:_:)(v3 + 1200, v3 + 864, a2, a3);
}

void OUTLINED_FUNCTION_29_5()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_52(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_57(void *a1)
{

  return memcpy(a1, (v1 + 1200), 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_266ABE264();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return type metadata accessor for ParticipantModel(0);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return sub_266ABDB04();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_266ABE264();
}

uint64_t OUTLINED_FUNCTION_63()
{
}

uint64_t OUTLINED_FUNCTION_64()
{
  __swift_project_boxed_opaque_existential_1((v0 - 136), *(v0 - 112));

  return sub_266ABE1A4();
}

uint64_t OUTLINED_FUNCTION_71()
{
  result = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 128) = 0;
  return result;
}

void OUTLINED_FUNCTION_76(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_81(uint64_t *a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_83()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_84()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_85()
{

  return type metadata accessor for ParticipantModel(0);
}

SiriCrossDeviceArbitrationFeedback::Version_optional __swiftcall Version.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266ABDFD4();

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

  *v2 = v5;
  return result;
}

uint64_t Version.rawValue.getter()
{
  if (*v0)
  {
    return 3157554;
  }

  else
  {
    return 3157553;
  }
}

unint64_t sub_266AB54F4()
{
  result = qword_2800B2B58;
  if (!qword_2800B2B58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Version, &type metadata for Version, v0, v1);
    atomic_store(result, &qword_2800B2B58);
  }

  return result;
}

uint64_t sub_266AB556C@<X0>(uint64_t *a1@<X8>)
{
  result = Version.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Version(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266AB5760()
{
  result = qword_2800B2B60;
  if (!qword_2800B2B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Version, &type metadata for Version, v0, v1);
    atomic_store(result, &qword_2800B2B60);
  }

  return result;
}

uint64_t sub_266AB583C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_2();
  sub_266ABDB04();
  return sub_266ABE2A4();
}

uint64_t sub_266AB5884(char a1)
{
  OUTLINED_FUNCTION_32_2();
  sub_266A79E4C(v3, a1);
  return sub_266ABE2A4();
}

uint64_t sub_266AB58D0(uint64_t a1)
{
  OUTLINED_FUNCTION_32_2();
  MEMORY[0x26D5E8B00](a1);
  return sub_266ABE2A4();
}

uint64_t sub_266AB5928(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_32_2();
  v4 = a2(a1);
  OUTLINED_FUNCTION_4_11(v4, v5, v6);

  return sub_266ABE2A4();
}

uint64_t sub_266AB5990(uint64_t a1, char a2)
{
  sub_266ABE244();
  sub_266A79E4C(v4, a2);
  return sub_266ABE2A4();
}

uint64_t sub_266AB59EC(uint64_t a1, char a2)
{
  sub_266ABE244();
  sub_266ABDB04();

  return sub_266ABE2A4();
}

uint64_t sub_266AB5A80(uint64_t a1, uint64_t a2)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](a2);
  return sub_266ABE2A4();
}

uint64_t sub_266AB5B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_266ABE244();
  v5 = a3(a2);
  OUTLINED_FUNCTION_4_11(v5, v6, v7);

  return sub_266ABE2A4();
}

uint64_t sub_266AB5B80(uint64_t a1, char a2)
{
  sub_266ABE244();
  sub_266ABDB04();

  return sub_266ABE2A4();
}

uint64_t sub_266AB5C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266ABE244();
  sub_266ABDB04();
  return sub_266ABE2A4();
}

uint64_t sub_266AB5C78(uint64_t a1, char a2)
{
  sub_266ABE244();
  sub_266ABDB04();

  return sub_266ABE2A4();
}

uint64_t sub_266AB5CD4(uint64_t a1, unsigned __int8 a2)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](a2);
  return sub_266ABE2A4();
}

void sub_266AB5D18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v63[3] = a1;
  v3 = *(a1 + 16);
  v4 = a1 + 32;

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = v4;
  while (v3 != v5)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    sub_266A6FFD8(v7, &v59);
    v8 = v60;
    v9 = v61;
    __swift_project_boxed_opaque_existential_1(&v59, v60);
    (*(v9 + 72))(&v56, v8, v9);
    if (v56 == 3)
    {
      sub_266A6DBC4(&v59, &v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266A98BE8();
        v6 = v62;
      }

      v11 = *(v6 + 16);
      if (v11 >= *(v6 + 24) >> 1)
      {
        sub_266A98BE8();
      }

      v12 = v57;
      v13 = v58;
      __swift_mutable_project_boxed_opaque_existential_1(&v56, v57);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v14);
      v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_266A9E8BC(v11, v16, &v62, v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(&v56);
      v6 = v62;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    }

    v7 += 40;
    ++v5;
  }

  if (*(v6 + 16) != 1)
  {

    if (qword_280BB6C30 == -1)
    {
LABEL_33:
      v36 = sub_266ABD8D4();
      __swift_project_value_buffer(v36, qword_280BB7028);
      v37 = sub_266ABD8C4();
      v38 = sub_266ABDD64();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        OUTLINED_FUNCTION_7_11(&dword_266A65000, v40, v41, "There should be exactly one winner in an arbitraiton. Returning nil arbitration.");
        MEMORY[0x26D5E9280](v39, -1, -1);
      }

LABEL_41:
      v48 = v55;
      *(v55 + 64) = 0;
      v48[2] = 0u;
      v48[3] = 0u;
      *v48 = 0u;
      v48[1] = 0u;
      return;
    }

LABEL_51:
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
    goto LABEL_33;
  }

  sub_266A79954(v6, &v59);
  if (v60)
  {

    sub_266A6DBC4(&v59, v64);
    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    v18 = OUTLINED_FUNCTION_16_0();
    v19(v18);
    if (!v57)
    {

      sub_266AB7210(&v56);
      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280BB6C30);
      }

      v42 = sub_266ABD8D4();
      __swift_project_value_buffer(v42, qword_280BB7028);
      v43 = sub_266ABD8C4();
      v44 = sub_266ABDD64();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        OUTLINED_FUNCTION_7_11(&dword_266A65000, v46, v47, "There should always be one winning advertisement. Returning nil arbitration.");
        MEMORY[0x26D5E9280](v45, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      goto LABEL_41;
    }

    sub_266A6DBC4(&v56, &v59);
    __swift_project_boxed_opaque_existential_1(&v59, v60);
    v20 = OUTLINED_FUNCTION_16_0();
    v63[0] = v21(v20);
    v63[1] = v22;
    if (v3)
    {
      v23 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_266A6FFD8(v4, &v56);
        v24 = v57;
        v25 = v58;
        __swift_project_boxed_opaque_existential_1(&v56, v57);
        v26 = (*(v25 + 48))(v24, v25);
        __swift_destroy_boxed_opaque_existential_1Tm(&v56);
        v27 = *(v26 + 16);
        v28 = *(v23 + 16);
        v29 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        v30 = swift_isUniquelyReferenced_nonNull_native();
        if (!v30 || v29 > *(v23 + 24) >> 1)
        {
          if (v28 <= v29)
          {
            v31 = v28 + v27;
          }

          else
          {
            v31 = v28;
          }

          sub_266A98098(v30, v31, 1, v23);
          v23 = v32;
        }

        if (*(v26 + 16))
        {
          if ((*(v23 + 24) >> 1) - *(v23 + 16) < v27)
          {
            goto LABEL_49;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
          swift_arrayInitWithCopy();

          if (v27)
          {
            v33 = *(v23 + 16);
            v34 = __OFADD__(v33, v27);
            v35 = v33 + v27;
            if (v34)
            {
              goto LABEL_50;
            }

            *(v23 + 16) = v35;
          }
        }

        else
        {

          if (v27)
          {
            goto LABEL_48;
          }
        }

        v4 += 40;
        if (!--v3)
        {
          goto LABEL_42;
        }
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_42:

    sub_266A70C04();
    v50 = v49;

    if (v50)
    {
      v51 = sub_266A96DE4(v50);
      v52 = sub_266A96EBC(v51);
      v53 = sub_266A6DA98(v52);
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
    }

    v54 = v55;
    v63[2] = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    sub_266A841B0(v63, v54);
    sub_266A8420C(v63);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArbitrationModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArbitrationModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArbitrationModel.nearbyDevices.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ArbitrationModel.participants.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ArbitrationModel.winner.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return sub_266A6DBC4(a1, v1 + 32);
}

uint64_t sub_266AB648C(uint64_t a1, uint64_t a2)
{
  v2 = sub_266ABDFD4();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266AB64E0(char a1)
{
  if (a1)
  {
    return 0x654479627261656ELL;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_266AB6560@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266AB648C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266AB6590@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266AB64E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266AB65C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AB648C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AB65F8(uint64_t a1)
{
  v2 = sub_266AB6DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AB6634(uint64_t a1)
{
  v2 = sub_266AB6DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ArbitrationModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B68, &qword_266AC6490);
  OUTLINED_FUNCTION_2_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v62 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AB6DBC();
  sub_266ABE2B4();
  if (v2)
  {
    v11 = 0;
    v12 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (v11)
    {
    }

    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
    }

    return;
  }

  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B78, &qword_266AC6498);
  LOBYTE(v69) = 0;
  sub_266AB7278(&qword_2800B2B80, &qword_2800B1C88, "5Bw\x1BpA", MEMORY[0x277D83978]);
  sub_266ABE084();
  v64 = v10;
  v65 = v7;
  v66 = v5;
  v62[1] = 0;
  v67 = a1;
  sub_266A94558();
  v14 = v13;

  v74[3] = v14;
  v15 = *(v14 + 16);
  v16 = v14 + 32;

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v63 = v14 + 32;
  while (v15 != v17)
  {
    if (v17 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    sub_266A6FFD8(v16, &v72);
    __swift_project_boxed_opaque_existential_1(&v72, v73);
    v19 = OUTLINED_FUNCTION_16_0();
    v20(v19);
    if (v69 == 3)
    {
      sub_266A6DBC4(&v72, &v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266A98BE8();
        v18 = v76;
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_266A98BE8();
      }

      v23 = v70;
      v24 = v71;
      __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v25);
      v27 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27);
      sub_266A9E8BC(v22, v27, &v76, v23, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(&v69);
      v18 = v76;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
    }

    v16 += 40;
    ++v17;
  }

  if (*(v18 + 16) != 1)
  {

    sub_266AB71BC();
    swift_allocError();
    *v49 = 0xD000000000000050;
    v49[1] = 0x8000000266AC0840;
    swift_willThrow();
    v50 = OUTLINED_FUNCTION_3_10();
    v51(v50);
    v12 = 0;
    v11 = 1;
LABEL_41:
    a1 = v67;
    goto LABEL_4;
  }

  sub_266A79954(v18, &v72);
  if (!v73)
  {
LABEL_51:
    __break(1u);
    return;
  }

  sub_266A6DBC4(&v72, v75);
  __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  v29 = OUTLINED_FUNCTION_16_0();
  v30(v29);
  v31 = v63;
  if (!v70)
  {
    sub_266AB7210(&v69);
    sub_266AB71BC();
    swift_allocError();
    *v52 = 0xD00000000000004CLL;
    v52[1] = 0x8000000266AC08A0;
    swift_willThrow();
    v53 = OUTLINED_FUNCTION_3_10();
    v54(v53);
    v11 = 1;
    v12 = 1;
    goto LABEL_41;
  }

  sub_266A6DBC4(&v69, &v72);
  __swift_project_boxed_opaque_existential_1(&v72, v73);
  v32 = OUTLINED_FUNCTION_16_0();
  v74[0] = v33(v32);
  v74[1] = v34;
  v35 = *(v14 + 16);
  if (v35)
  {
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_266A6FFD8(v31, &v69);
      __swift_project_boxed_opaque_existential_1(&v69, v70);
      v37 = OUTLINED_FUNCTION_16_0();
      v39 = v38(v37);
      __swift_destroy_boxed_opaque_existential_1Tm(&v69);
      v40 = *(v39 + 16);
      v41 = *(v36 + 16);
      v42 = v41 + v40;
      if (__OFADD__(v41, v40))
      {
        break;
      }

      v43 = swift_isUniquelyReferenced_nonNull_native();
      if (!v43 || v42 > *(v36 + 24) >> 1)
      {
        if (v41 <= v42)
        {
          v44 = v41 + v40;
        }

        else
        {
          v44 = v41;
        }

        sub_266A98098(v43, v44, 1, v36);
        v36 = v45;
      }

      if (*(v39 + 16))
      {
        if ((*(v36 + 24) >> 1) - *(v36 + 16) < v40)
        {
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
        swift_arrayInitWithCopy();

        if (v40)
        {
          v46 = *(v36 + 16);
          v47 = __OFADD__(v46, v40);
          v48 = v46 + v40;
          if (v47)
          {
            goto LABEL_50;
          }

          *(v36 + 16) = v48;
        }
      }

      else
      {

        if (v40)
        {
          goto LABEL_48;
        }
      }

      v31 += 40;
      if (!--v35)
      {
        goto LABEL_42;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_42:
  sub_266A70C04();
  v56 = v55;

  if (v56)
  {
    v57 = sub_266A96DE4(v56);
    v58 = sub_266A96EBC(v57);
    v59 = sub_266A6DA98(v58);
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  v60 = v67;
  v61 = v68;
  (*(v65 + 8))(v64, v66);
  v74[2] = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  sub_266A841B0(v74, v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  sub_266A8420C(v74);
}

unint64_t sub_266AB6DBC()
{
  result = qword_2800B2B70;
  if (!qword_2800B2B70)
  {
    result = swift_getWitnessTable(byte_266AC6768, &unk_28783D8E0, v0, v1);
    atomic_store(result, &qword_2800B2B70);
  }

  return result;
}

uint64_t ArbitrationModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B90, &qword_266AC64A0);
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  sub_266A95358();
  if (v8)
  {
    v9 = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_266AB6DBC();
    sub_266ABE2C4();
    v12 = v9;
    v11[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B78, &qword_266AC6498);
    sub_266AB7278(&qword_2800B2B98, &qword_2800B2158, protocol conformance descriptor for ParticipantModel, MEMORY[0x277D83948]);
    sub_266ABE154();
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    sub_266A829DC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t static ArbitrationModel.== infix(_:_:)()
{
  sub_266A95358();
  v1 = v0;
  sub_266A95358();
  if (v1)
  {
    if (v2)
    {
      v3 = sub_266A83AC4(v1, v2);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    v3 = 0;
  }

  return v3 & 1;
}

void ArbitrationModel.hash(into:)(uint64_t a1)
{
  sub_266A95358();
  if (v2)
  {
    sub_266A9CB98(a1, v2);
  }
}

uint64_t ArbitrationModel.hashValue.getter()
{
  OUTLINED_FUNCTION_32_2();
  sub_266A95358();
  if (v0)
  {
    sub_266A9CB98(v2, v0);
  }

  return sub_266ABE2A4();
}

uint64_t sub_266AB7164(uint64_t a1)
{
  sub_266ABE244();
  sub_266A95358();
  if (v1)
  {
    sub_266A9CB98(v3, v1);
  }

  return sub_266ABE2A4();
}

unint64_t sub_266AB71BC()
{
  result = qword_2800B2B88;
  if (!qword_2800B2B88)
  {
    result = swift_getWitnessTable("qMw\x1B", &unk_28783FD60, v0, v1);
    atomic_store(result, &qword_2800B2B88);
  }

  return result;
}

uint64_t sub_266AB7210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC8, &unk_266AC0FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266AB7278(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2B78, &qword_266AC6498);
    v10 = sub_266A8DC7C(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266AB7304()
{
  result = qword_2800B2BA0;
  if (!qword_2800B2BA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArbitrationModel, &type metadata for ArbitrationModel, v0, v1);
    atomic_store(result, &qword_2800B2BA0);
  }

  return result;
}

uint64_t sub_266AB73B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266AB73F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_266AB744C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266AB748C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_266AB74D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266AB75B0()
{
  result = qword_2800B2BA8;
  if (!qword_2800B2BA8)
  {
    result = swift_getWitnessTable(byte_266AC6700, &unk_28783D8E0, v0, v1);
    atomic_store(result, &qword_2800B2BA8);
  }

  return result;
}

unint64_t sub_266AB7608()
{
  result = qword_2800B2BB0;
  if (!qword_2800B2BB0)
  {
    result = swift_getWitnessTable(aIiw, &unk_28783D8E0, v0, v1);
    atomic_store(result, &qword_2800B2BB0);
  }

  return result;
}

unint64_t sub_266AB7660()
{
  result = qword_2800B2BB8;
  if (!qword_2800B2BB8)
  {
    result = swift_getWitnessTable(aYew, &unk_28783D8E0, v0, v1);
    atomic_store(result, &qword_2800B2BB8);
  }

  return result;
}

uint64_t static Mock.devices(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (result)
    {
      v12 = MEMORY[0x277D84F90];
      v3 = OUTLINED_FUNCTION_3();
      sub_266A6BD88(v3, v4, v5);
      v2 = v12;
      do
      {
        static Mock.device()();
        v12 = v2;
        v7 = *(v2 + 16);
        v6 = *(v2 + 24);
        if (v7 >= v6 >> 1)
        {
          OUTLINED_FUNCTION_14(v6);
          OUTLINED_FUNCTION_33();
          sub_266A6BD88(v8, v9, v10);
          v2 = v12;
        }

        *(v2 + 16) = v7 + 1;
        memcpy((v2 + 168 * v7 + 32), v11, 0xA8uLL);
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

void static Mock.device()()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - v3;
  v64 = sub_266ABD864();
  OUTLINED_FUNCTION_1_0();
  v54 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  v53 = (v7 - v8);
  MEMORY[0x28223BE20](v9);
  v61 = &v52 - v10;
  sub_266ABD8B4();
  OUTLINED_FUNCTION_1_0();
  v62 = v12;
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v65 = v14 - v13;
  v60 = sub_266ABD7F4();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2BC0, &qword_266AC6818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266AC67C0;
  *(inited + 32) = &unk_28783F130;
  *(inited + 40) = &unk_28783F160;
  *(inited + 48) = &unk_28783F190;
  *(inited + 56) = &unk_28783F1C0;
  *(inited + 64) = &unk_28783F1F0;
  *(inited + 72) = &unk_28783F220;
  *(inited + 80) = &unk_28783F250;
  *(inited + 88) = &unk_28783F280;
  *(inited + 96) = &unk_28783F2B0;
  *(inited + 104) = &unk_28783F2E0;
  *(inited + 112) = &unk_28783F310;
  *(inited + 120) = &unk_28783F340;
  *(inited + 128) = &unk_28783F370;
  *(inited + 136) = &unk_28783F3B0;
  *(inited + 144) = &unk_28783F3F0;
  *(inited + 152) = &unk_28783F430;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2338, &unk_266AC35C0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_266AC67D0;
  *(v22 + 32) = 0x45433542423923;
  *(v22 + 40) = 0xE700000000000000;
  *(v22 + 48) = 0x37354235433523;
  *(v22 + 56) = 0xE700000000000000;
  *(v22 + 64) = 0x39433545394623;
  *(v22 + 72) = 0xE700000000000000;
  *(v22 + 80) = 0x30463546354623;
  *(v22 + 88) = 0xE700000000000000;
  *(v22 + 96) = 0x45344635303523;
  *(v22 + 104) = 0xE700000000000000;
  *(v22 + 112) = 0x43374535313223;
  *(v22 + 120) = 0xE700000000000000;
  *(v22 + 128) = 0x37324531373123;
  *(v22 + 136) = 0xE700000000000000;
  *(v22 + 144) = 0x38443045414623;
  *(v22 + 152) = 0xE700000000000000;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_266AC67E0;
  *(v23 + 32) = 1835100492;
  *(v23 + 40) = 0xE400000000000000;
  *(v23 + 48) = 0x5220676E6976694CLL;
  *(v23 + 56) = 0xEB000000006D6F6FLL;
  *(v23 + 64) = 0x6E65686374694BLL;
  *(v23 + 72) = 0xE700000000000000;
  *(v23 + 80) = 6383949;
  *(v23 + 88) = 0xE300000000000000;
  *(v23 + 96) = 6387265;
  *(v23 + 104) = 0xE300000000000000;
  *(v23 + 112) = 0x79726E6548;
  *(v23 + 120) = 0xE500000000000000;
  *(v23 + 128) = 0x68616A696C45;
  *(v23 + 136) = 0xE600000000000000;
  *(v23 + 144) = 0x79656C6952;
  *(v23 + 152) = 0xE500000000000000;
  *(v23 + 160) = 0x617373656E6156;
  *(v23 + 168) = 0xE700000000000000;
  *(v23 + 176) = 0x797472614DLL;
  *(v23 + 184) = 0xE500000000000000;
  v24 = sub_266AB99D0(v23, inited);
  if (v24)
  {
    v25 = v24;
    v55 = sub_266AB9964(v24, v22);
    if (v26)
    {
      v27 = v26;
      swift_setDeallocating();
      sub_266AB98C0();
      swift_setDeallocating();
      v28 = sub_266AB9920();
      v29 = sub_266AB9964(v28, v23);
      v58 = v30;
      v59 = v29;
      swift_setDeallocating();
      sub_266AB9920();
      sub_266ABD7E4();
      v31 = sub_266ABD7C4();
      v56 = v32;
      v57 = v31;
      (*(v16 + 8))(v20, v60);
      if (v25[2])
      {
        v33 = v25[4];
        v34 = v25[5];

        v35._countAndFlagsBits = v33;
        v35._object = v34;
        DeviceClass.init(model:)(v35);
        v66 = 0;
        v36 = DeviceClass.displayName(productType:)(&v66);
        countAndFlagsBits = v36._countAndFlagsBits;
        object = v36._object;
      }

      else
      {
        object = 0xEB00000000657365;
        countAndFlagsBits = 0x6874666F656E6F6ELL;
      }

      v40 = v64;
      v39 = v65;
      v41 = v61;
      sub_266ABD884();
      sub_266ABD8A4();
      if (__swift_getEnumTagSinglePayload(v4, 1, v40) == 1)
      {
        (*(v62 + 8))(v39, v63);
        sub_266A798F4(v4, &qword_2800B1D88, &qword_266AC20D0);
      }

      else
      {
        v42 = v54;
        (*(v54 + 32))(v41, v4, v40);
        v43 = v53;
        (*(v42 + 16))(v53, v41, v40);
        if ((*(v42 + 88))(v43, v40) == *MEMORY[0x277D85508])
        {
          (*(v42 + 96))(v43, v40);
          v44 = sub_266AA6004(*v43, v43[1], v43[2]);
          v45 = v42;
          v47 = v46;
          (*(v45 + 8))(v41, v40);
          (*(v62 + 8))(v65, v63);

          v27 = v47;
LABEL_12:
          *v1 = 0u;
          *(v1 + 16) = 0u;
          *(v1 + 32) = v44;
          *(v1 + 40) = v27;
          *(v1 + 48) = 0;
          *(v1 + 56) = 0;
          v49 = v58;
          *(v1 + 64) = v59;
          *(v1 + 72) = v49;
          *(v1 + 80) = countAndFlagsBits;
          *(v1 + 88) = object;
          *(v1 + 96) = v25;
          *(v1 + 104) = 0;
          v50 = v56;
          v51 = v57;
          *(v1 + 112) = 0;
          *(v1 + 120) = v51;
          *(v1 + 128) = v50;
          *(v1 + 136) = 0u;
          *(v1 + 152) = 0u;
          OUTLINED_FUNCTION_30();
          return;
        }

        v48 = *(v42 + 8);
        v48(v41, v40);
        (*(v62 + 8))(v65, v63);
        v48(v43, v40);
      }

      v44 = v55;
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static Mock.boosts(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = MEMORY[0x277D84F90];
    if (result)
    {
      v19 = MEMORY[0x277D84F90];
      v5 = OUTLINED_FUNCTION_3();
      sub_266A70BE4(v5, v6, v7);
      v4 = v19;
      do
      {
        v18 = 0;
        MEMORY[0x26D5E92A0](&v18, 8);
        v8 = qword_28783F470[3 * (v18 >> 62) + 6];
        OUTLINED_FUNCTION_15_6();
        if (v11)
        {
          OUTLINED_FUNCTION_14(v9);
          OUTLINED_FUNCTION_33();
          v17 = v13;
          sub_266A70BE4(v14, v15, v16);
          v10 = v17;
          v4 = v19;
        }

        *(v4 + 16) = v1;
        v12 = v4 + 24 * v2;
        *(v12 + 32) = v10;
        *(v12 + 48) = v8;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  return result;
}

unint64_t static Mock.boost()@<X0>(uint64_t a1@<X8>)
{
  result = sub_266AB9A2C(4uLL);
  if (result > 3)
  {
    __break(1u);
  }

  else
  {
    v3 = &unk_28783F4F0 + 24 * result;
    v4 = *(v3 + 6);
    *a1 = *(v3 + 2);
    *(a1 + 16) = v4;
  }

  return result;
}

uint64_t static Mock.advertisements(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = MEMORY[0x277D84F90];
    if (result)
    {
      v23 = MEMORY[0x277D84F90];
      v6 = OUTLINED_FUNCTION_3();
      sub_266A6AFB0(v6, v7, v8);
      v5 = v23;
      do
      {
        static Mock.advertisement(goodnessScore:)(256, &v19);
        v3.i32[0] = v19;
        v9 = v20;
        v10 = v21;
        v11 = v22;
        OUTLINED_FUNCTION_15_6();
        if (v13)
        {
          OUTLINED_FUNCTION_14(v12);
          OUTLINED_FUNCTION_33();
          sub_266A6AFB0(v16, v17, v18);
          v5 = v23;
        }

        v14 = vmovl_u8(v3).u64[0];
        *(v5 + 16) = v1;
        v15 = v5 + 8 * v2;
        *(v15 + 32) = vuzp1_s8(v14, v14).u32[0];
        *(v15 + 36) = v9;
        *(v15 + 38) = v10;
        *(v15 + 39) = v11;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  return result;
}

void static Mock.advertisement(goodnessScore:)(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_5_8();
  v4 = sub_266AB9A2C(0xBuLL);
  if (v4 > 0xA)
  {
    __break(1u);
  }

  else
  {
    v5 = byte_28783E5D8[v4 + 32];
    if ((a1 & 0x100) != 0)
    {
      OUTLINED_FUNCTION_5_8();
      LOBYTE(a1) = v6;
    }

    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_5_8();
    *a2 = v6;
    *(a2 + 1) = v5;
    *(a2 + 2) = 0;
    *(a2 + 3) = a1;
    *(a2 + 4) = v6;
    *(a2 + 6) = 0;
    *(a2 + 7) = v6;
  }
}

void static Mock.participants(count:)(uint64_t a1)
{
  v3 = type metadata accessor for ParticipantModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11_7();
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    v11 = MEMORY[0x277D84F90];
    v5 = OUTLINED_FUNCTION_3();
    sub_266A98B68(v5, v6, v7);
    do
    {
      static Mock.participant(participation:triggerType:)();
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = OUTLINED_FUNCTION_14(v8);
        sub_266A98B68(v10, v9 + 1, 1);
      }

      *(v11 + 16) = v9 + 1;
      sub_266A7977C(v1, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9);
      --a1;
    }

    while (a1);
  }
}

void static Mock.participant(participation:triggerType:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v111 = sub_266ABD7F4();
  OUTLINED_FUNCTION_1_0();
  v106 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_2();
  v108 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v110 = &v98 - v12;
  MEMORY[0x28223BE20](v11);
  v107 = &v98 - v13;
  v14 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v98 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  MEMORY[0x28223BE20](v24 - 8);
  v25 = *v3;
  v26 = *v1;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v28 = &v98 - v27;
  __swift_storeEnumTagSinglePayload(&v98 - v27, 1, 1, v14);
  sub_266ABD794();
  sub_266AB9AB8(0.0, 2.0);
  v112 = v23;
  sub_266ABD734();
  v29 = *(v16 + 8);
  v114 = v14;
  v105 = v29;
  v29(v20, v14);
  v109 = v25;
  HIDWORD(v113) = v26;
  switch(v25)
  {
    case 2:
      *(&v119 + 1) = &type metadata for AdvertisementModel;
      v33 = sub_266A6D9F0();
      v120 = v33;
      static Mock.advertisement(goodnessScore:)(256, &v118);
      sub_266A791A4(&v118, &v121, &qword_2800B1CC8, &unk_266AC0FD0);
      *(&v119 + 1) = &type metadata for AdvertisementModel;
      v120 = v33;
      static Mock.advertisement(goodnessScore:)(256, &v118);
      sub_266A798F4(&v124, &qword_2800B1CC8, &unk_266AC0FD0);
      v124 = v118;
      v125 = v119;
      v126 = v120;
      v34 = static Mock.advertisements(count:)(5);
      v31 = sub_266A6E3AC(v34);

      sub_266A6F918(&v121, &v118, &qword_2800B1CC8, &unk_266AC0FD0);
      if (!*(&v119 + 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      v30 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266A986CC(0, *(v31 + 16) + 1, 1, v31);
        v31 = v89;
      }

      v35 = HIDWORD(v113);
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v90 = OUTLINED_FUNCTION_14(v36);
        sub_266A986CC(v90, v37 + 1, 1, v31);
        v31 = v91;
      }

      OUTLINED_FUNCTION_8_10();
      sub_266A6F918(&v124, &v118, &qword_2800B1CC8, &unk_266AC0FD0);
      if (!*(&v119 + 1))
      {
        goto LABEL_26;
      }

      v39 = *(v31 + 24);
      v40 = v37 + 2;
      if (v40 > (v39 >> 1))
      {
        OUTLINED_FUNCTION_14(v39);
        OUTLINED_FUNCTION_33();
        sub_266A986CC(v94, v95, v96, v31);
        v31 = v97;
      }

      *(v31 + 16) = v40;
      sub_266A6DBC4(&v118, v31 + 40 * v38 + 32);
      if (v35 == 2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 3:
      *(&v119 + 1) = &type metadata for AdvertisementModel;
      v120 = sub_266A6D9F0();
      static Mock.advertisement(goodnessScore:)(256, &v118);
      OUTLINED_FUNCTION_17_6(&v124);
      sub_266A791A4(&v118, &v121, &qword_2800B1CC8, &unk_266AC0FD0);
      sub_266A6F918(&v121, &v124, &qword_2800B1CC8, &unk_266AC0FD0);
      sub_266A6F918(&v121, &v118, &qword_2800B1CC8, &unk_266AC0FD0);
      if (*(&v119 + 1))
      {
        v30 = v28;
        sub_266A986CC(0, 1, 1, MEMORY[0x277D84F90]);
        v31 = v41;
        v43 = *(v41 + 16);
        v42 = *(v41 + 24);
        if (v43 >= v42 >> 1)
        {
          v92 = OUTLINED_FUNCTION_14(v42);
          sub_266A986CC(v92, v43 + 1, 1, v31);
          v31 = v93;
        }

        OUTLINED_FUNCTION_8_10();
        if (v26 == 2)
        {

          v44 = static Mock.advertisements(count:)(3);
          v31 = sub_266A6E3AC(v44);

LABEL_18:
          sub_266A798F4(v30, &qword_2800B1DB8, "h9");
          (*(v16 + 16))(v30, v112, v114);
          v32 = 0;
LABEL_19:
          __swift_storeEnumTagSinglePayload(v30, v32, 1, v114);
        }

LABEL_20:
        v103 = v31;
        sub_266A6F918(&v121, &v118, &qword_2800B1CC8, &unk_266AC0FD0);
        v45 = static Mock.boosts(count:)(4);
        sub_266A946BC(v45, v46, v47, v48, v49, v50, v51, v52, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
        v54 = v53;

        v116 = &type metadata for DeviceModel;
        v117 = sub_266A6DA44();
        OUTLINED_FUNCTION_14_7();
        *&v115 = swift_allocObject();
        static Mock.device()();
        v55 = static Mock.devices(count:)(10);
        v56 = sub_266A6DA98(v55);

        v57 = *(&v122 + 1);
        v104 = v16 + 8;
        v102 = v54;
        v101 = v56;
        if (*(&v122 + 1))
        {
          v58 = v123;
          v59 = __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
          v60 = *(v57 - 8);
          MEMORY[0x28223BE20](v59);
          OUTLINED_FUNCTION_2();
          v63 = v62 - v61;
          (*(v60 + 16))(v62 - v61);
          HIDWORD(v100) = (*(v58 + 48))(v57, v58);
          (*(v60 + 8))(v63, v57);
        }

        else
        {
          HIDWORD(v100) = 0;
        }

        LODWORD(v100) = v57 == 0;
        v99 = 0x8000000266AC08F0;
        v64 = type metadata accessor for ParticipantModel(0);
        v65 = v112;
        v66 = v114;
        (*(v16 + 16))(v5 + v64[11], v112, v114);
        sub_266A6F918(v30, v5 + v64[15], &qword_2800B1DB8, "h9");
        sub_266A6F918(&v124, v5 + v64[16], &qword_2800B1CC8, &unk_266AC0FD0);
        v67 = v107;
        sub_266ABD7E4();
        *(&v98 + 1) = sub_266ABD7C4();
        *&v98 = v68;
        v69 = *(v106 + 8);
        v70 = v30;
        v71 = v111;
        v69(v67, v111);
        v72 = v110;
        sub_266ABD7E4();
        v73 = sub_266ABD7C4();
        v106 = v74;
        v69(v72, v71);
        v75 = v108;
        sub_266ABD7E4();
        v110 = sub_266ABD7C4();
        v107 = v76;
        v69(v75, v71);
        v105(v65, v66);
        sub_266A798F4(v70, &qword_2800B1DB8, "h9");
        sub_266A798F4(&v124, &qword_2800B1CC8, &unk_266AC0FD0);
        v77 = v119;
        *v5 = v118;
        *(v5 + 16) = v77;
        v78 = v102;
        *(v5 + 32) = v120;
        *(v5 + 40) = v78;
        sub_266A6DBC4(&v115, v5 + 48);
        *(v5 + 88) = 0xD000000000000061;
        v79 = v101;
        *(v5 + 96) = v99;
        *(v5 + 104) = v79;
        *(v5 + 112) = v109;
        *(v5 + 113) = BYTE4(v100);
        *(v5 + 114) = v100;
        *(v5 + v64[12]) = v103;
        *(v5 + v64[13]) = MEMORY[0x277D84F90];
        *(v5 + v64[14]) = xmmword_266AC67F0;
        v80 = (v5 + v64[17]);
        v81 = v98;
        *v80 = *(&v98 + 1);
        v80[1] = v81;
        v82 = (v5 + v64[18]);
        v83 = v106;
        *v82 = v73;
        v82[1] = v83;
        *(v5 + v64[19]) = 0;
        *(v5 + v64[20]) = 0;
        *(v5 + v64[21]) = 0;
        *(v5 + v64[22]) = BYTE4(v113);
        v84 = (v5 + v64[23]);
        *v84 = 0;
        v84[1] = 0;
        v85 = v5 + v64[24];
        *v85 = 0;
        *(v85 + 8) = 1;
        v86 = v5 + v64[25];
        *v86 = 0;
        *(v86 + 8) = 1;
        v87 = (v5 + v64[26]);
        v88 = v107;
        *v87 = v110;
        v87[1] = v88;
        OUTLINED_FUNCTION_17_6(&v121);
        OUTLINED_FUNCTION_30();
      }

      else
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      return;
    default:
      OUTLINED_FUNCTION_17_6(&v124);
      OUTLINED_FUNCTION_17_6(&v121);
      v121 = 0u;
      v122 = 0u;
      v123 = 0;
      v124 = 0u;
      v125 = 0u;
      v126 = 0;
      v30 = v28;
      sub_266A798F4(v28, &qword_2800B1DB8, "h9");
      v31 = MEMORY[0x277D84F90];
      v32 = 1;
      goto LABEL_19;
  }
}

void static Mock.arbitrations(count:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11_7();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    if (!v2)
    {
LABEL_10:
      OUTLINED_FUNCTION_30();
      return;
    }

    v21 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_3();
    sub_266A98B88(v6, v7, v8);
    v9 = v21;
    while (1)
    {
      v18[0] = v5;
      sub_266A98BE8();
      v10 = v18[0];
      v20[0] = byte_28783F590;
      v19 = byte_28783F591;
      static Mock.participant(participation:triggerType:)();
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_14(v11);
        sub_266A98BE8();
        v10 = v18[0];
      }

      *&v20[24] = v3;
      *&v20[32] = sub_266A81304();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
      sub_266A6E9E4(v0, boxed_opaque_existential_1);
      *(v10 + 16) = v12 + 1;
      sub_266A6DBC4(v20, v10 + 40 * v12 + 32);
      sub_266A6A63C(v0);

      sub_266AB5D18(v14, v18);
      if (!v18[1])
      {
        break;
      }

      memcpy(v20, v18, sizeof(v20));
      v21 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        v17 = OUTLINED_FUNCTION_14(v15);
        sub_266A98B88(v17, v16 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v16 + 1;
      memcpy((v9 + 72 * v16 + 32), v20, 0x48uLL);
      if (!--v2)
      {
        goto LABEL_10;
      }
    }
  }

  __break(1u);
}

void static Mock.arbitration(participants:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11_7();
  v7 = *(v2 + 16);
  if (v7)
  {
    v17 = MEMORY[0x277D84F90];
    sub_266A98BE8();
    v8 = v17;
    v9 = (v2 + 33);
    do
    {
      v10 = *v9;
      v15[0] = *(v9 - 1);
      v16 = v10;
      static Mock.participant(participation:triggerType:)();
      v17 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_14(v11);
        sub_266A98BE8();
        v8 = v17;
      }

      v9 += 2;
      *&v15[24] = v5;
      *&v15[32] = sub_266A81304();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
      sub_266A6E9E4(v0, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      sub_266A6DBC4(v15, v8 + 40 * v12 + 32);
      sub_266A6A63C(v0);
      --v7;
    }

    while (v7);
  }

  sub_266AB5D18(v14, v15);
  if (*&v15[8])
  {

    memcpy(v4, v15, 0x48uLL);
    OUTLINED_FUNCTION_30();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Mock.requests(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (result)
    {
      v10 = MEMORY[0x277D84F90];
      v3 = OUTLINED_FUNCTION_3();
      sub_266A98CA8(v3, v4, v5);
      v2 = v10;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2318, &qword_266AC35A0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_266AC0EB0;
        *(v6 + 56) = &type metadata for ArbitrationModel;
        *(v6 + 64) = &protocol witness table for ArbitrationModel;
        OUTLINED_FUNCTION_13_5();
        *(v6 + 32) = swift_allocObject();
        static Mock.arbitration(participants:)();
        v8 = *(v10 + 16);
        v7 = *(v10 + 24);
        if (v8 >= v7 >> 1)
        {
          v9 = OUTLINED_FUNCTION_14(v7);
          sub_266A98CA8(v9, v8 + 1, 1);
        }

        *(v10 + 16) = v8 + 1;
        *(v10 + 8 * v8 + 32) = v6;
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

void static Mock.feedbacks(count:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = sub_266ABD7F4();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11_7();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v2)
    {
      v21 = MEMORY[0x277D84F90];
      v7 = OUTLINED_FUNCTION_3();
      sub_266A98CC8(v7, v8, v9);
      v10 = (v5 + 8);
      v11 = v21;
      do
      {
        sub_266ABD7E4();
        v12 = sub_266ABD7C4();
        v14 = v13;
        (*v10)(v0, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2318, &qword_266AC35A0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_266AC0EB0;
        *(v15 + 56) = &type metadata for ArbitrationModel;
        *(v15 + 64) = &protocol witness table for ArbitrationModel;
        OUTLINED_FUNCTION_13_5();
        *(v15 + 32) = swift_allocObject();
        static Mock.arbitration(participants:)();
        v20[12] = &protocol witness table for RequestModel;
        v20[11] = &type metadata for RequestModel;
        v20[8] = v15;
        v19[3] = &type metadata for DeviceModel;
        v19[4] = sub_266A6DA44();
        OUTLINED_FUNCTION_14_7();
        v19[0] = swift_allocObject();
        static Mock.device()();
        v20[17] = &type metadata for UserInputModel;
        v20[18] = &protocol witness table for UserInputModel;
        v20[14] = swift_allocObject();
        static Mock.userInput()(v20[14] + 16);
        memset(&v20[3], 0, 40);
        v20[0] = v12;
        v20[1] = v14;
        LOBYTE(v20[2]) = 1;
        sub_266A791A4(v19, &v20[3], &qword_2800B1E08, &qword_266AC1370);
        LOBYTE(v20[13]) = 1;
        LOBYTE(v20[19]) = 0;
        v21 = v11;
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          v18 = OUTLINED_FUNCTION_14(v16);
          sub_266A98CC8(v18, v17 + 1, 1);
          v11 = v21;
        }

        *(v11 + 16) = v17 + 1;
        memcpy((v11 + 160 * v17 + 32), v20, 0x99uLL);
        --v2;
      }

      while (v2);
    }

    OUTLINED_FUNCTION_30();
  }
}

uint64_t static Mock.feedback()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_266ABD7F4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  sub_266ABD7E4();
  v9 = sub_266ABD7C4();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2318, &qword_266AC35A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_266AC0EB0;
  *(v12 + 56) = &type metadata for ArbitrationModel;
  *(v12 + 64) = &protocol witness table for ArbitrationModel;
  OUTLINED_FUNCTION_13_5();
  *(v12 + 32) = swift_allocObject();
  static Mock.arbitration(participants:)();
  *(a1 + 88) = &type metadata for RequestModel;
  *(a1 + 96) = &protocol witness table for RequestModel;
  *(a1 + 64) = v12;
  v16[3] = &type metadata for DeviceModel;
  v16[4] = sub_266A6DA44();
  OUTLINED_FUNCTION_14_7();
  v16[0] = swift_allocObject();
  static Mock.device()();
  *(a1 + 136) = &type metadata for UserInputModel;
  *(a1 + 144) = &protocol witness table for UserInputModel;
  v13 = swift_allocObject();
  *(a1 + 112) = v13;
  static Mock.userInput()(v13 + 16);
  OUTLINED_FUNCTION_7_12();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 1;
  result = sub_266A791A4(v16, v14, &qword_2800B1E08, &qword_266AC1370);
  *(a1 + 104) = 1;
  *(a1 + 152) = 0;
  return result;
}

double static Mock.userInput()@<D0>(uint64_t a1@<X8>)
{
  v4[3] = type metadata accessor for ParticipantModel(0);
  v4[4] = sub_266A81304();
  __swift_allocate_boxed_opaque_existential_1(v4);
  static Mock.participant(participation:triggerType:)();
  OUTLINED_FUNCTION_7_12();
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 8) = 0x4037000000000000;
  *(a1 + 16) = 0;
  *a1 = 1;
  sub_266A791A4(v4, v2, &qword_2800B1C48, &unk_266AC1310);
  *(a1 + 64) = 1;
  sub_266A8CEE4(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  result = 1.4987574e161;
  *(a1 + 72) = xmmword_266AC6800;
  *(a1 + 88) = 259;
  return result;
}

uint64_t static Mock.userInputs(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (result)
    {
      v13 = MEMORY[0x277D84F90];
      v3 = OUTLINED_FUNCTION_3();
      sub_266A98CE8(v3, v4, v5);
      v2 = v13;
      v6 = type metadata accessor for ParticipantModel(0);
      v7 = sub_266A81304();
      do
      {
        v11[3] = v6;
        v11[4] = v7;
        __swift_allocate_boxed_opaque_existential_1(v11);
        static Mock.participant(participation:triggerType:)();
        memset(&__src[3], 0, 40);
        *&__src[9] = 0uLL;
        LOBYTE(__src[11]) = -1;
        __src[1] = 0x4037000000000000;
        LOBYTE(__src[2]) = 0;
        LOBYTE(__src[0]) = 1;
        sub_266A791A4(v11, &__src[3], &qword_2800B1C48, &unk_266AC1310);
        LOBYTE(__src[8]) = 1;
        sub_266A8CEE4(__src[9], __src[10], __src[11]);
        *&__src[9] = xmmword_266AC6800;
        LOWORD(__src[11]) = 259;
        v13 = v2;
        v9 = *(v2 + 16);
        v8 = *(v2 + 24);
        if (v9 >= v8 >> 1)
        {
          v10 = OUTLINED_FUNCTION_14(v8);
          sub_266A98CE8(v10, v9 + 1, 1);
          v2 = v13;
        }

        *(v2 + 16) = v9 + 1;
        memcpy((v2 + 96 * v9 + 32), __src, 0x5AuLL);
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

uint64_t sub_266AB9878()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266AB98C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266AB9920()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_266AB9964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_266AB9A2C(*(a2 + 16));
  if (result < v2)
  {
    v5 = *(a2 + 16 * result + 32);

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_266AB99D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_266AB9A2C(*(a2 + 16));
  if (result < v2)
  {
  }

  __break(1u);
  return result;
}

unint64_t sub_266AB9A2C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D5E92A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D5E92A0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266AB9AB8(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = 0;
  result = MEMORY[0x26D5E92A0](&v6, 8);
  if (v4 * vcvtd_n_f64_u64(v6 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    return sub_266AB9AB8(a1, a2);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Mock(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}