void sub_230D4372C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v1 + 16);
      v8 = (v5 + 88 * v4);
      v9 = v4;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
          return;
        }

        v11 = v8[3];
        v10 = v8[4];
        v12 = *(v8 + 40);
        v34 = v8[2];
        v13 = v8[1];
        v32 = *v8;
        v33 = v13;
        v37 = v12;
        v35 = v11;
        v36 = v10;
        v4 = v9 + 1;
        if ((BYTE9(v34) & 1) == 0)
        {
          break;
        }

        v8 = (v8 + 88);
        ++v9;
        if (v2 == v4)
        {
          goto LABEL_15;
        }
      }

      v30 = v5;
      sub_230D2C310(&v32, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_230D488A0(0, v6[2] + 1, 1);
        v6 = v38;
      }

      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_230D488A0((v15 > 1), v16 + 1, 1);
        v6 = v38;
      }

      v6[2] = v16 + 1;
      v17 = &v6[11 * v16];
      v18 = v33;
      *(v17 + 2) = v32;
      *(v17 + 3) = v18;
      v19 = v34;
      v20 = v35;
      v21 = v36;
      *(v17 + 56) = v37;
      *(v17 + 5) = v20;
      *(v17 + 6) = v21;
      *(v17 + 4) = v19;
      v5 = v30;
    }

    while (v2 - 1 != v9);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v22 = v6[2];
  if (v22)
  {
    *&v32 = v3;
    sub_230D48880(0, v22, 0);
    v23 = v32;
    v24 = v6 + 5;
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      *&v32 = v23;
      v27 = *(v23 + 16);
      v28 = *(v23 + 24);

      if (v27 >= v28 >> 1)
      {
        sub_230D48880((v28 > 1), v27 + 1, 1);
        v23 = v32;
      }

      *(v23 + 16) = v27 + 1;
      v29 = v23 + 16 * v27;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v24 += 11;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  sub_230D0ABEC(v23);
}

const char *sub_230D43970()
{
  v1 = *(v0 + 112);
  result = sqlite3_errmsg(v1);
  if (result)
  {
    v3 = sub_230E69120();
    v5 = v4;
    v6 = sqlite3_errcode(v1);
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E811F0);
    v7 = sub_230E69890();
    MEMORY[0x23191DA00](v7);

    MEMORY[0x23191DA00](0x67617373656D202CLL, 0xEB00000000203A65);
    MEMORY[0x23191DA00](v3, v5);
    sub_230E68950();

    if (v6 == 19)
    {
      sub_230E68950();
      sub_230D0D278();
      if (sub_230E69490())
      {
        sub_230E69540();

        v9 = 0x8000000230E81410;
        v10 = 0xD000000000000021;
      }

      else if (sub_230E69490() & 1) != 0 || (sub_230E69490())
      {
        sub_230E69540();

        v9 = 0x8000000230E813E0;
        v10 = 0xD00000000000002BLL;
      }

      else if (sub_230E69490())
      {
        sub_230E69540();

        v9 = 0x8000000230E813C0;
        v10 = 0xD00000000000001ELL;
      }

      else if (sub_230E69490())
      {
        sub_230E69540();

        v9 = 0x8000000230E813A0;
        v10 = 0xD00000000000001BLL;
      }

      else
      {
        sub_230E69540();

        v9 = 0x8000000230E81380;
        v10 = 0xD000000000000015;
      }

      v12 = v10;
      v13 = v9;
      MEMORY[0x23191DA00](v3, v5);

      v3 = v12;
      v5 = v13;
      v8 = 5;
    }

    else
    {
      sub_230E68950();
      if (v6 == 8)
      {
        sub_230E69540();
        MEMORY[0x23191DA00](0xD000000000000038, 0x8000000230E81480);
        MEMORY[0x23191DA00](v3, v5);

        v3 = 0;
        v5 = 0xE000000000000000;
        v8 = 6;
      }

      else
      {
        v8 = 2;
      }
    }

    sub_230D0D224();
    swift_allocError();
    *v11 = v3;
    *(v11 + 8) = v5;
    *(v11 + 16) = v8;
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_230D43E04(uint64_t a1)
{
  result = sub_230D43E2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_230D43E2C()
{
  result = qword_27DB5B0B0;
  if (!qword_27DB5B0B0)
  {
    type metadata accessor for SQLDatabaseClient(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0B0);
  }

  return result;
}

uint64_t type metadata accessor for SQLDatabaseClient(uint64_t a1)
{
  result = qword_281566638;
  if (!qword_281566638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230D43ED8(uint64_t a1)
{
  result = type metadata accessor for SQLDatabaseConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SQLDatabaseClient.fetchFromDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_230D1BF00;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of SQLDatabaseClient.deleteFromDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 168) + **(*v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_230D1D2F8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of SQLDatabaseClient.upsertIntoDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_230D1D2F8;

  return v10(a1, a2, a3);
}

uint64_t sub_230D4434C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D450F4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_230D4441C(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_230D443B8()
{
  result = qword_281565F50;
  if (!qword_281565F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D8F0, &unk_230E70E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565F50);
  }

  return result;
}

uint64_t sub_230D4441C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_230E69880();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_230E69270();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_230D44640(v7, v8, a1, v4);
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
    return sub_230D44514(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_230D44514(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 88);
      v12 = *v10 == *(v10 - 88) && *(v10 + 8) == *(v10 - 80);
      if (v12 || (result = sub_230E698C0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 88;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v21 = *(v10 + 80);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 40);
      *(v10 + 32) = *(v10 - 56);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 24);
      *(v10 + 80) = *(v10 - 8);
      v14 = *(v10 - 72);
      *v10 = *v11;
      *(v10 + 16) = v14;
      *(v10 - 56) = v18;
      *(v10 - 40) = v19;
      *(v10 - 24) = v20;
      *(v10 - 8) = v21;
      v10 -= 88;
      *v11 = v16;
      v11[1] = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_230D44640(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  __dst = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_230D44FDC(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (1)
      {
        v88 = *v6;
        if (!*v6)
        {
          goto LABEL_143;
        }

        v89 = &v9[16 * v87];
        v6 = *v89;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_230D44CB8((v88 + 88 * *v89), (v88 + 88 * *v90), (v88 + 88 * v91), __dst);
        if (v5)
        {
        }

        if (v91 < v6)
        {
          goto LABEL_131;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_132;
        }

        *v89 = v6;
        *(v89 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_133;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        v6 = a3;
        if (v87 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 88 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 88 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_230E698C0();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 88 * v10 + 96);
        v18 = v17;
        do
        {
          result = v17[10];
          v20 = v18[11];
          v18 += 11;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_230E698C0();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v22 = 88 * v8 - 88;
          v23 = v10;
          v24 = 88 * v10;
          v25 = v8;
          v94 = v23;
          do
          {
            if (v23 != --v25)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v26 = v27 + v22;
              v103 = *(v27 + v24 + 32);
              v105 = *(v27 + v24 + 48);
              v107 = *(v27 + v24 + 64);
              v109 = *(v27 + v24 + 80);
              v99 = *(v27 + v24);
              v101 = *(v27 + v24 + 16);
              result = memmove((v27 + v24), (v27 + v22), 0x58uLL);
              *(v26 + 32) = v103;
              *(v26 + 48) = v105;
              *(v26 + 64) = v107;
              *(v26 + 80) = v109;
              *v26 = v99;
              *(v26 + 16) = v101;
            }

            ++v23;
            v22 -= 88;
            v24 += 88;
          }

          while (v23 < v25);
          v10 = v94;
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D44FF0(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_230D44FF0((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *__dst;
    if (!*__dst)
    {
      goto LABEL_144;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_76:
          if (v48)
          {
            goto LABEL_122;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_125;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_129;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_90:
        if (v66)
        {
          goto LABEL_124;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_127;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_97:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_230D44CB8((*v6 + 88 * v83), (*v6 + 88 * *&v9[16 * v44 + 32]), (*v6 + 88 * v84), v43);
        if (v5)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_230D44FDC(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_230D44F50(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_120;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_121;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_123;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_126;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_130;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  v93 = v5;
  if (v10 + a4 >= v28)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v5)
  {
LABEL_55:
    v5 = v93;
    goto LABEL_56;
  }

  v29 = *v6;
  v30 = *v6 + 88 * v8;
  v95 = v10;
  v31 = v10 - v8;
LABEL_44:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 88);
    v35 = *v33 == *(v33 - 88) && *(v33 + 8) == *(v33 - 80);
    if (v35 || (result = sub_230E698C0(), (result & 1) == 0))
    {
LABEL_43:
      ++v8;
      v30 += 88;
      --v31;
      if (v8 != v5)
      {
        goto LABEL_44;
      }

      v8 = v5;
      v6 = a3;
      v10 = v95;
      goto LABEL_55;
    }

    if (!v29)
    {
      break;
    }

    v104 = *(v33 + 32);
    v106 = *(v33 + 48);
    v108 = *(v33 + 64);
    v110 = *(v33 + 80);
    v100 = *v33;
    v102 = *(v33 + 16);
    v36 = *(v33 - 40);
    *(v33 + 32) = *(v33 - 56);
    *(v33 + 48) = v36;
    *(v33 + 64) = *(v33 - 24);
    *(v33 + 80) = *(v33 - 8);
    v37 = *(v33 - 72);
    *v33 = *v34;
    *(v33 + 16) = v37;
    *(v33 - 56) = v104;
    *(v33 - 40) = v106;
    *(v33 - 24) = v108;
    *(v33 - 8) = v110;
    v33 -= 88;
    *v34 = v100;
    v34[1] = v102;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_43;
    }
  }

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
  return result;
}

uint64_t sub_230D44CB8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 88;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 88;
  if (v9 < v11)
  {
    v12 = 88 * v9;
    if (__dst != __src || &__src[v12] <= __dst)
    {
      memmove(__dst, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 88 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v14 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v14 || (sub_230E698C0() & 1) == 0)
      {
        break;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 88;
      if (!v14)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 88;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v15 = v4;
    v14 = v7 == v4;
    v4 += 88;
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v15, 0x58uLL);
    goto LABEL_17;
  }

  v16 = 88 * v11;
  if (__dst != a2 || &a2[v16] <= __dst)
  {
    memmove(__dst, a2, 88 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 88 && v6 > v7)
  {
    do
    {
      v17 = v6 - 88;
      v5 -= 88;
      v18 = v13;
      while (1)
      {
        v19 = *(v18 - 11);
        v20 = *(v18 - 10);
        v18 -= 88;
        v21 = v19 == *(v6 - 11) && v20 == *(v6 - 10);
        if (!v21 && (sub_230E698C0() & 1) != 0)
        {
          break;
        }

        if (v5 + 88 != v13)
        {
          memmove(v5, v18, 0x58uLL);
        }

        v5 -= 88;
        v13 = v18;
        if (v18 <= v4)
        {
          v13 = v18;
          goto LABEL_41;
        }
      }

      if (v5 + 88 != v6)
      {
        memmove(v5, v6 - 88, 0x58uLL);
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 88;
    }

    while (v17 > v7);
    v6 = v17;
  }

LABEL_41:
  v22 = 88 * ((v13 - v4) / 88);
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_230D44F50(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_230D44FDC(v3);
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

char *sub_230D44FF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0B8, &qword_230E6E838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_230D45184(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_230E69270();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for CreateVectorDatabaseResponse(uint64_t a1)
{
  result = qword_281566158;
  if (!qword_281566158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230D452A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0D0, &qword_230E6E968);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v15 = *(v1 + 16);
  v14 = v1[3];
  v10 = *(v1 + 32);
  v12 = *(v1 + 33);
  v13 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D45ADC();

  sub_230E69A50();
  v16 = v8;
  v17 = v9;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  sub_230D45B84();
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_230D45444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0C0, &qword_230E6E960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D45ADC();
  sub_230E69A30();
  if (!v2)
  {
    sub_230D45B30();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    v10 = v16[2];
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    *a2 = v16[1];
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 33) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D455D4(uint64_t a1)
{
  v2 = sub_230D45ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D45610(uint64_t a1)
{
  v2 = sub_230D45ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D4567C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_230E68860();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0D8, &qword_230E6E970);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - v9;
  VectorDatabaseResponse = type metadata accessor for CreateVectorDatabaseResponse(0);
  MEMORY[0x28223BE20](VectorDatabaseResponse - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D45BD8();
  v15 = v22;
  sub_230E69A30();
  if (!v15)
  {
    v16 = v20;
    sub_230D09088(&qword_27DB5A680, MEMORY[0x277CC9280]);
    sub_230E69760();
    (*(v7 + 8))(v10, v6);
    (*(v16 + 32))(v14, v21, v3);
    sub_230D45C2C(v14, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D458E8(uint64_t a1)
{
  v2 = sub_230D45BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D45924(uint64_t a1)
{
  v2 = sub_230D45BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D45978(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0E8, &qword_230E6E978);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D45BD8();
  sub_230E69A50();
  sub_230E68860();
  sub_230D09088(&qword_2815668A8, MEMORY[0x277CC9268]);
  sub_230E69850();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_230D45ADC()
{
  result = qword_27DB5B0C8;
  if (!qword_27DB5B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0C8);
  }

  return result;
}

unint64_t sub_230D45B30()
{
  result = qword_27DB5D7F0;
  if (!qword_27DB5D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D7F0);
  }

  return result;
}

unint64_t sub_230D45B84()
{
  result = qword_281566190;
  if (!qword_281566190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566190);
  }

  return result;
}

unint64_t sub_230D45BD8()
{
  result = qword_27DB5B0E0;
  if (!qword_27DB5B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0E0);
  }

  return result;
}

uint64_t sub_230D45C2C(uint64_t a1, uint64_t a2)
{
  VectorDatabaseResponse = type metadata accessor for CreateVectorDatabaseResponse(0);
  (*(*(VectorDatabaseResponse - 8) + 32))(a2, a1, VectorDatabaseResponse);
  return a2;
}

unint64_t sub_230D45CB4()
{
  result = qword_27DB5B0F0;
  if (!qword_27DB5B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0F0);
  }

  return result;
}

unint64_t sub_230D45D0C()
{
  result = qword_27DB5B0F8;
  if (!qword_27DB5B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0F8);
  }

  return result;
}

unint64_t sub_230D45D64()
{
  result = qword_27DB5B100;
  if (!qword_27DB5B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B100);
  }

  return result;
}

unint64_t sub_230D45DBC()
{
  result = qword_27DB5B108;
  if (!qword_27DB5B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B108);
  }

  return result;
}

unint64_t sub_230D45E14()
{
  result = qword_27DB5B110;
  if (!qword_27DB5B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B110);
  }

  return result;
}

unint64_t sub_230D45E6C()
{
  result = qword_27DB5B118;
  if (!qword_27DB5B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B118);
  }

  return result;
}

uint64_t DeleteFromVectorDatabaseRequest.identifiers.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_230D45F24(uint64_t a1)
{
  v2 = sub_230D46584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D45F60(uint64_t a1)
{
  v2 = sub_230D46584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D45F9C()
{
  if (*v0)
  {
    return 0x6369666963657073;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_230D45FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230D460AC(uint64_t a1)
{
  v2 = sub_230D464DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D460E8(uint64_t a1)
{
  v2 = sub_230D464DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D46124(uint64_t a1)
{
  v2 = sub_230D46530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D46160(uint64_t a1)
{
  v2 = sub_230D46530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromVectorDatabaseRequest.Identifiers.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B120, &qword_230E6EBA0);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B128, &qword_230E6EBA8);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B130, &unk_230E6EBB0);
  v11 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v12);
  v14 = &v20 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D464DC();
  sub_230E69A50();
  if (v15)
  {
    v28 = 1;
    sub_230D46530();
    v16 = v25;
    sub_230E697A0();
    v26 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D46AD4(&qword_27DB5B148, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v17 = v24;
    sub_230E69850();
    (*(v23 + 8))(v6, v17);
    return (*(v11 + 8))(v14, v16);
  }

  else
  {
    v27 = 0;
    sub_230D46584();
    v19 = v25;
    sub_230E697A0();
    (*(v21 + 8))(v10, v22);
    return (*(v11 + 8))(v14, v19);
  }
}

unint64_t sub_230D464DC()
{
  result = qword_27DB5B138;
  if (!qword_27DB5B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B138);
  }

  return result;
}

unint64_t sub_230D46530()
{
  result = qword_27DB5B140;
  if (!qword_27DB5B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B140);
  }

  return result;
}

unint64_t sub_230D46584()
{
  result = qword_27DB5B150;
  if (!qword_27DB5B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B150);
  }

  return result;
}

uint64_t DeleteFromVectorDatabaseRequest.Identifiers.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B158, &qword_230E6EBC0);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B160, &qword_230E6EBC8);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B168, &unk_230E6EBD0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - v13;
  v15 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_230D464DC();
  v16 = v33;
  sub_230E69A30();
  if (!v16)
  {
    v28 = v6;
    v33 = v11;
    v17 = v32;
    v18 = sub_230E69780();
    v19 = (2 * *(v18 + 16)) | 1;
    v35 = v18;
    v36 = v18 + 32;
    v37 = 0;
    v38 = v19;
    v20 = sub_230D089CC();
    if (v20 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_230E69580();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
      *v25 = &type metadata for DeleteFromVectorDatabaseRequest.Identifiers;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else if (v20)
    {
      LOBYTE(v39) = 1;
      sub_230D46530();
      v21 = v5;
      sub_230E69690();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
      sub_230D46AD4(&qword_27DB5B170, MEMORY[0x277D83808], MEMORY[0x277D83978]);
      v22 = v29;
      sub_230E69760();
      (*(v31 + 8))(v21, v22);
      (*(v33 + 8))(v14, v10);
      swift_unknownObjectRelease();
      *v17 = v39;
    }

    else
    {
      LOBYTE(v39) = 0;
      sub_230D46584();
      sub_230E69690();
      (*(v30 + 8))(v9, v28);
      (*(v33 + 8))(v14, v10);
      swift_unknownObjectRelease();
      *v17 = 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_230D46AD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D8F0, &unk_230E70E80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D46B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D46C28(uint64_t a1)
{
  v2 = sub_230D46E00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D46C64(uint64_t a1)
{
  v2 = sub_230D46E00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromVectorDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B178, &qword_230E6EBE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D46E00();

  sub_230E69A50();
  v10[1] = v8;
  sub_230D46E54();
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D46E00()
{
  result = qword_27DB5B180;
  if (!qword_27DB5B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B180);
  }

  return result;
}

unint64_t sub_230D46E54()
{
  result = qword_27DB5B188;
  if (!qword_27DB5B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B188);
  }

  return result;
}

uint64_t DeleteFromVectorDatabaseRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B190, &qword_230E6EBE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D46E00();
  sub_230E69A30();
  if (!v2)
  {
    sub_230D47014();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D47014()
{
  result = qword_27DB5B198;
  if (!qword_27DB5B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B198);
  }

  return result;
}

uint64_t sub_230D470D0(uint64_t a1)
{
  v2 = sub_230D47280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D4710C(uint64_t a1)
{
  v2 = sub_230D47280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromVectorDatabaseResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B1A0, &qword_230E6EBF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D47280();
  sub_230E69A50();
  sub_230E69860();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_230D47280()
{
  result = qword_27DB5B1A8;
  if (!qword_27DB5B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1A8);
  }

  return result;
}

uint64_t DeleteFromVectorDatabaseResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B1B0, &qword_230E6EBF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D47280();
  sub_230E69A30();
  if (!v2)
  {
    v10 = sub_230E69770();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D47440(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B1A0, &qword_230E6EBF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D47280();
  sub_230E69A50();
  sub_230E69860();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_230D47578(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_230D475D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_230D47634(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230D47684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_230D476D8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_230D476F0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_230D47784()
{
  result = qword_27DB5B1B8;
  if (!qword_27DB5B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1B8);
  }

  return result;
}

unint64_t sub_230D477DC()
{
  result = qword_27DB5B1C0;
  if (!qword_27DB5B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1C0);
  }

  return result;
}

unint64_t sub_230D47834()
{
  result = qword_27DB5B1C8;
  if (!qword_27DB5B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1C8);
  }

  return result;
}

unint64_t sub_230D4788C()
{
  result = qword_27DB5B1D0;
  if (!qword_27DB5B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1D0);
  }

  return result;
}

unint64_t sub_230D478E4()
{
  result = qword_27DB5B1D8;
  if (!qword_27DB5B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1D8);
  }

  return result;
}

unint64_t sub_230D4793C()
{
  result = qword_27DB5B1E0;
  if (!qword_27DB5B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1E0);
  }

  return result;
}

unint64_t sub_230D47994()
{
  result = qword_27DB5B1E8;
  if (!qword_27DB5B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1E8);
  }

  return result;
}

unint64_t sub_230D479EC()
{
  result = qword_27DB5B1F0;
  if (!qword_27DB5B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1F0);
  }

  return result;
}

unint64_t sub_230D47A44()
{
  result = qword_27DB5B1F8;
  if (!qword_27DB5B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1F8);
  }

  return result;
}

unint64_t sub_230D47A9C()
{
  result = qword_27DB5B200;
  if (!qword_27DB5B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B200);
  }

  return result;
}

unint64_t sub_230D47AF4()
{
  result = qword_27DB5B208;
  if (!qword_27DB5B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B208);
  }

  return result;
}

unint64_t sub_230D47B4C()
{
  result = qword_27DB5B210;
  if (!qword_27DB5B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B210);
  }

  return result;
}

unint64_t sub_230D47BA4()
{
  result = qword_27DB5B218;
  if (!qword_27DB5B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B218);
  }

  return result;
}

unint64_t sub_230D47BFC()
{
  result = qword_27DB5B220;
  if (!qword_27DB5B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B220);
  }

  return result;
}

uint64_t InsertIntoVectorDatabaseRequest.vectors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *InsertIntoVectorDatabaseRequest.init(vectors:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B228, &qword_230E6F2B0);
  result = sub_230E69620();
  v4 = result;
  v5 = 0;
  v6 = *(a1 + 64);
  v31 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v34 = a1;
  v35 = result + 8;
  v32 = v10;
  v33 = result;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = *(*(*(a1 + 56) + 8 * v14) + 16);
      if (v17)
      {
        v37 = *v15;
        v38 = v14;
        v39 = v9;
        v40 = MEMORY[0x277D84F90];
        v36 = v15[1];

        sub_230D488E0(0, v17, 0);
        v18 = v40;
        v19 = 32;
        do
        {

          v20 = sub_230E69230();
          v22 = v21;

          v24 = *(v40 + 16);
          v23 = *(v40 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_230D488E0((v23 > 1), v24 + 1, 1);
          }

          *(v40 + 16) = v24 + 1;
          v25 = v40 + 16 * v24;
          *(v25 + 32) = v20;
          *(v25 + 40) = v22;
          v19 += 8;
          --v17;
        }

        while (v17);

        v4 = v33;
        a1 = v34;
        v10 = v32;
        v14 = v38;
        v9 = v39;
        result = v36;
        v16 = v37;
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

      *(v35 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v26 = (v4[6] + 16 * v14);
      *v26 = v16;
      v26[1] = result;
      *(v4[7] + 8 * v14) = v18;
      v27 = v4[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v4[2] = v29;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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

        *a2 = v4;
        return result;
      }

      v13 = *(v31 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_230D47F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726F74636576 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D47FA4(uint64_t a1)
{
  v2 = sub_230D48900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D47FE0(uint64_t a1)
{
  v2 = sub_230D48900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InsertIntoVectorDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B230, &qword_230E6F2B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48900();

  sub_230E69A50();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B240, &qword_230E6F2C0);
  sub_230D48954();
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

uint64_t InsertIntoVectorDatabaseRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B260, &qword_230E6F2D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48900();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B240, &qword_230E6F2C0);
    sub_230D48A10();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D4839C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465747265736E69 && a2 == 0xED0000746E756F43)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D4842C(uint64_t a1)
{
  v2 = sub_230D48B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D48468(uint64_t a1)
{
  v2 = sub_230D48B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InsertIntoVectorDatabaseResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B278, &qword_230E6F2D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48B44();
  sub_230E69A50();
  sub_230E69860();
  return (*(v3 + 8))(v6, v2);
}

uint64_t InsertIntoVectorDatabaseResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B288, &qword_230E6F2E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48B44();
  sub_230E69A30();
  if (!v2)
  {
    v10 = sub_230E69770();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D48748(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B278, &qword_230E6F2D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48B44();
  sub_230E69A50();
  sub_230E69860();
  return (*(v3 + 8))(v6, v2);
}

char *sub_230D48880(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D488A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D488C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D488E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_230D48900()
{
  result = qword_27DB5B238;
  if (!qword_27DB5B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B238);
  }

  return result;
}

unint64_t sub_230D48954()
{
  result = qword_27DB5B248;
  if (!qword_27DB5B248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B240, &qword_230E6F2C0);
    sub_230D48ACC(&qword_27DB5B250, sub_230D2C474, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B248);
  }

  return result;
}

unint64_t sub_230D48A10()
{
  result = qword_27DB5B268;
  if (!qword_27DB5B268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B240, &qword_230E6F2C0);
    sub_230D48ACC(&qword_27DB5B270, sub_230D2C420, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B268);
  }

  return result;
}

uint64_t sub_230D48ACC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B258, &qword_230E6F2C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D48B44()
{
  result = qword_27DB5B280;
  if (!qword_27DB5B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B280);
  }

  return result;
}

unint64_t sub_230D48BDC()
{
  result = qword_27DB5B290;
  if (!qword_27DB5B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B290);
  }

  return result;
}

unint64_t sub_230D48C34()
{
  result = qword_27DB5B298;
  if (!qword_27DB5B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B298);
  }

  return result;
}

unint64_t sub_230D48C8C()
{
  result = qword_27DB5B2A0;
  if (!qword_27DB5B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B2A0);
  }

  return result;
}

unint64_t sub_230D48CE4()
{
  result = qword_27DB5B2A8;
  if (!qword_27DB5B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B2A8);
  }

  return result;
}

unint64_t sub_230D48D3C()
{
  result = qword_27DB5B2B0;
  if (!qword_27DB5B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B2B0);
  }

  return result;
}

unint64_t sub_230D48D94()
{
  result = qword_27DB5B2B8;
  if (!qword_27DB5B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B2B8);
  }

  return result;
}

void *sub_230D48DE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D48E08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4976C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48E28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D498A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48E48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D499A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D48E68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49AA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D48E88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48EA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49D10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48EC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A6FC(a1, a2, a3, *v3, &qword_27DB5B320, &qword_230E6F6A0, &type metadata for AppsInsights.AppInsight);
  *v3 = result;
  return result;
}

char *sub_230D48F00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D49F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48F20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A20C(a1, a2, a3, *v3, &qword_27DB5B3A8, &qword_230E6F728, &type metadata for MusicInsights.ArtistInsight);
  *v3 = result;
  return result;
}

char *sub_230D48F58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A498(a1, a2, a3, *v3, &qword_27DB5B390, &qword_230E6F710, &type metadata for MusicInsights.SongInsight);
  *v3 = result;
  return result;
}

char *sub_230D48F90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A498(a1, a2, a3, *v3, &qword_27DB5B378, &qword_230E6F6F8, &type metadata for MusicInsights.AlbumInsight);
  *v3 = result;
  return result;
}

char *sub_230D48FC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48FE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A20C(a1, a2, a3, *v3, &qword_27DB5B358, &qword_230E6F6D8, &type metadata for PodcastInsights.ChannelInsight);
  *v3 = result;
  return result;
}

char *sub_230D49020(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A498(a1, a2, a3, *v3, &qword_27DB5B340, &qword_230E6F6C0, &type metadata for PodcastInsights.EpisodeInsight);
  *v3 = result;
  return result;
}

char *sub_230D49058(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A6FC(a1, a2, a3, *v3, &qword_27DB5B338, &qword_230E6F6B8, &type metadata for VideoInsights.ContentInsight);
  *v3 = result;
  return result;
}

char *sub_230D49090(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D490B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4A914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D490D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4AA5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D490F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4AB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D49110(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_230D4ACB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D49130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49254(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3D8, &unk_230E6F760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230D49594(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3D0, &qword_230E6F758);
  v10 = *(sub_230E68B80() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_230E68B80() - 8);
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

void *sub_230D4976C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3C0, &qword_230E6F748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3C8, &qword_230E6F750);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D498A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2E0, &qword_230E6F660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_230D499A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2D8, &qword_230E6F658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_230D49AA8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC20, &qword_230E6C230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230D49BDC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49D10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2D0, &qword_230E6F650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230D49E20(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B328, &qword_230E6F6A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B330, &qword_230E6F6B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49F54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2F8, &qword_230E6F678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D4A0EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B370, &qword_230E6F6F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D4A20C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 48);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[48 * v11])
    {
      memmove(v15, v16, 48 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_230D4A350(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_230D4A498(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 + 31;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 6);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[64 * v11])
    {
      memmove(v16, v17, v11 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_230D4A5C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 + 31;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 6);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[8 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, v14 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_230D4A6FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_230D4A808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B310, &qword_230E6F690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230D4A914(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B300, &qword_230E6F680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B308, &qword_230E6F688);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D4AA5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B318, &qword_230E6F698);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230D4AB7C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2E8, &qword_230E6F668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2F0, &qword_230E6F670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D4ACB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C8, &unk_230E6F640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t SearchVectorDatabaseRequest.vector.getter()
{
  v1 = *v0;
  sub_230D0DD0C(*v0, *(v0 + 8));
  return v1;
}

uint64_t SearchVectorDatabaseRequest.vector.setter(uint64_t a1, uint64_t a2)
{
  result = sub_230D0F4A8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SearchVectorDatabaseRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SearchVectorDatabaseRequest.init(vector:limit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t SearchVectorDatabaseRequest.init(vector:limit:)@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_230E69230();
  v9 = v8;

  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3 & 1;
  return result;
}

uint64_t sub_230D4AEE0()
{
  if (*v0)
  {
    return 0x74696D696CLL;
  }

  else
  {
    return 0x726F74636576;
  }
}

uint64_t sub_230D4AF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F74636576 && a2 == 0xE600000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230D4AFE8(uint64_t a1)
{
  v2 = sub_230D4B20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D4B024(uint64_t a1)
{
  v2 = sub_230D4B20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchVectorDatabaseRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3E0, &qword_230E6F770);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 16);
  v15 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D0DD0C(v8, v9);
  sub_230D4B20C();
  sub_230E69A50();
  v13 = v8;
  v14 = v9;
  v16 = 0;
  sub_230D2C474();
  sub_230E69850();
  sub_230D0F4A8(v13, v14);
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_230E697D0();
  }

  return (*(v12 + 8))(v7, v4);
}

unint64_t sub_230D4B20C()
{
  result = qword_27DB5B3E8;
  if (!qword_27DB5B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B3E8);
  }

  return result;
}

uint64_t SearchVectorDatabaseRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3F0, &qword_230E6F778);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4B20C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_230D2C420();
  sub_230E69760();
  v11 = v17[0];
  v10 = v17[1];
  LOBYTE(v17[0]) = 1;
  v12 = sub_230E696E0();
  v13 = v9;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15 & 1;
  sub_230D0DD0C(v11, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_230D0F4A8(v11, v10);
}

uint64_t SearchVectorDatabaseResponse.results.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_230D4B50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D4B594(uint64_t a1)
{
  v2 = sub_230D4B780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D4B5D0(uint64_t a1)
{
  v2 = sub_230D4B780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchVectorDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3F8, &qword_230E6F780);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4B780();

  sub_230E69A50();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B408, &qword_230E6F788);
  sub_230D4B7D4();
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D4B780()
{
  result = qword_27DB5B400;
  if (!qword_27DB5B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B400);
  }

  return result;
}

unint64_t sub_230D4B7D4()
{
  result = qword_27DB5B410;
  if (!qword_27DB5B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B408, &qword_230E6F788);
    sub_230D4BAB4(&qword_27DB5B418, MEMORY[0x277D83A08], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B410);
  }

  return result;
}

uint64_t SearchVectorDatabaseResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B428, &qword_230E6F798);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4B780();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B408, &qword_230E6F788);
    sub_230D4BA04();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D4BA04()
{
  result = qword_27DB5B430;
  if (!qword_27DB5B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B408, &qword_230E6F788);
    sub_230D4BAB4(&qword_27DB5B438, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B430);
  }

  return result;
}

uint64_t sub_230D4BAB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B420, &qword_230E6F790);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D4BB50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 25))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_230D4BBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_230D4BC3C()
{
  result = qword_27DB5B440;
  if (!qword_27DB5B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B440);
  }

  return result;
}

unint64_t sub_230D4BC94()
{
  result = qword_27DB5B448;
  if (!qword_27DB5B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B448);
  }

  return result;
}

unint64_t sub_230D4BCEC()
{
  result = qword_27DB5B450;
  if (!qword_27DB5B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B450);
  }

  return result;
}

unint64_t sub_230D4BD44()
{
  result = qword_27DB5B458;
  if (!qword_27DB5B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B458);
  }

  return result;
}

unint64_t sub_230D4BD9C()
{
  result = qword_27DB5B460;
  if (!qword_27DB5B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B460);
  }

  return result;
}

unint64_t sub_230D4BDF4()
{
  result = qword_27DB5B468;
  if (!qword_27DB5B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B468);
  }

  return result;
}

ServicesIntelligence::VectorDatabaseDistanceMetric_optional __swiftcall VectorDatabaseDistanceMetric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VectorDatabaseDistanceMetric.rawValue.getter()
{
  v1 = 7630692;
  if (*v0 != 1)
  {
    v1 = 12908;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E69736F63;
  }
}

uint64_t sub_230D4BEE8()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D4BF74(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230D4BFEC(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230D4C080(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 7630692;
  if (v2 != 1)
  {
    v5 = 12908;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E69736F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_230D4C178(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7630692;
  if (v2 != 1)
  {
    v4 = 12908;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E69736F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7630692;
  if (*a2 != 1)
  {
    v8 = 12908;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E69736F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  return v11 & 1;
}

ServicesIntelligence::VectorDatabaseFieldType_optional __swiftcall VectorDatabaseFieldType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

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

uint64_t VectorDatabaseFieldType.rawValue.getter()
{
  if (*v0)
  {
    return 0x323374616F6C66;
  }

  else
  {
    return 0x363174616F6C66;
  }
}

uint64_t sub_230D4C2E8()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D4C360(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230D4C3BC(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D4C430@<X0>(char *a2@<X8>)
{
  v3 = sub_230E69680();

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

  *a2 = v5;
  return result;
}

void sub_230D4C490(uint64_t *a1@<X8>)
{
  v2 = 0x363174616F6C66;
  if (*v1)
  {
    v2 = 0x323374616F6C66;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_230D4C578(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x323374616F6C66;
  }

  else
  {
    v2 = 0x363174616F6C66;
  }

  if (*a2)
  {
    v3 = 0x323374616F6C66;
  }

  else
  {
    v3 = 0x363174616F6C66;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_230E698C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t VectorDatabaseConfiguration.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VectorDatabaseConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VectorDatabaseConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B470, &qword_230E6FB60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4CAA8();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v19 = v10;
  v26 = 1;
  sub_230D0D17C();
  sub_230E69760();
  v13 = v27;
  v25 = 2;
  v14 = sub_230E69750();
  v17 = v13;
  v18 = v14;
  v23 = 3;
  sub_230D4CAFC();
  sub_230E69760();
  LOBYTE(v13) = v24;
  v21 = 4;
  sub_230D4CB50();
  sub_230E69760();
  v16 = v22;
  v20 = 5;
  sub_230D0D1D0();
  sub_230E69700();
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v13;
  *(a2 + 33) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D4CAA8()
{
  result = qword_2815661A8;
  if (!qword_2815661A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661A8);
  }

  return result;
}

unint64_t sub_230D4CAFC()
{
  result = qword_27DB5B478;
  if (!qword_27DB5B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B478);
  }

  return result;
}

unint64_t sub_230D4CB50()
{
  result = qword_27DB5B480;
  if (!qword_27DB5B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B480);
  }

  return result;
}

uint64_t VectorDatabaseConfiguration.init(name:domain:dimension:distanceMetric:fieldType:dataClass:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *a5;
  v9 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a4;
  *(a7 + 32) = v8;
  *(a7 + 33) = v9;
  return result;
}

uint64_t sub_230D4CBCC()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x65636E6174736964;
  v4 = 0x707954646C656966;
  if (v1 != 4)
  {
    v4 = 0x73616C4361746164;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69616D6F64;
  if (v1 != 1)
  {
    v5 = 0x6F69736E656D6964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230D4CC8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D4DBF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D4CCB4(uint64_t a1)
{
  v2 = sub_230D4CAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D4CCF0(uint64_t a1)
{
  v2 = sub_230D4CAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VectorDatabaseConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B488, &qword_230E6FB68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - v6;
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v8 = *(v1 + 32);
  v14 = *(v1 + 33);
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4CAA8();
  sub_230E69A50();
  v27 = 0;
  v9 = v18;
  sub_230E69810();
  if (!v9)
  {
    v10 = v14;
    v11 = v15;
    v26 = v17;
    v25 = 1;
    sub_230D0D0D4();
    sub_230E69850();
    v24 = 2;
    sub_230E69840();
    v23 = v11;
    v22 = 3;
    sub_230D4D784();
    sub_230E69850();
    v21 = v10;
    v20 = 4;
    sub_230D4D7D8();
    sub_230E69850();
    v19 = 5;
    sub_230D0D128();
    sub_230E69850();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t VectorDatabaseConfiguration.path.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v64 = sub_230E687F0();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v2);
  v4 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_230E68860();
  v66 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v54 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = v54 - v15;
  v17 = *(v1 + 8);
  v63 = *v1;
  v65 = v17;
  v18 = *(v1 + 16);
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  v21 = v68;
  sub_230DA3FDC();

  v22 = v21;
  if (!v21)
  {
    v54[1] = 0;
    v58 = v9;
    v59 = v19;
    v60 = v13;
    v61 = v5;
    v23 = v62;
    v24 = v16;
    if (v18 > 4)
    {
      v33 = 0x6E6F6D6D6F63;
      v26 = 0xE800000000000000;
      v34 = 0x65676175676E616CLL;
      if (v18 != 8)
      {
        v34 = 0x7974697275636573;
        v26 = 0xE800000000000000;
      }

      if (v18 == 7)
      {
        v26 = 0xE600000000000000;
      }

      else
      {
        v33 = v34;
      }

      v35 = 0x7374736163646F70;
      v30 = 0xE500000000000000;
      if (v18 == 5)
      {
        v30 = 0xE800000000000000;
      }

      else
      {
        v35 = 0x6F65646976;
      }

      v31 = v18 <= 6;
      if (v18 <= 6)
      {
        v32 = v35;
      }

      else
      {
        v32 = v33;
      }
    }

    else
    {
      v25 = 0x6C616E7265746E69;
      v26 = 0xE500000000000000;
      v27 = 0x736B6F6F62;
      v28 = 0xE700000000000000;
      v29 = 0x7373656E746966;
      if (v18 != 3)
      {
        v29 = 0x636973756DLL;
        v28 = 0xE500000000000000;
      }

      if (v18 != 2)
      {
        v27 = v29;
        v26 = v28;
      }

      v30 = 0xE400000000000000;
      if (v18)
      {
        v25 = 1936748641;
      }

      else
      {
        v30 = 0xE800000000000000;
      }

      v31 = v18 <= 1;
      if (v18 <= 1)
      {
        v32 = v25;
      }

      else
      {
        v32 = v27;
      }
    }

    if (v31)
    {
      v26 = v30;
    }

    v54[2] = v26;
    v69 = v32;
    v70 = v26;
    LODWORD(v68) = *MEMORY[0x277CC91D8];
    v36 = *(v62 + 13);
    v37 = v64;
    v36(v4);
    v38 = v36;
    v55 = v36;
    v39 = sub_230D0D278();
    v40 = v58;
    v57 = v39;
    v62 = v24;
    sub_230E68840();
    v41 = *(v23 + 1);
    v41(v4, v37);
    v56 = v41;

    v69 = 0x6144726F74636556;
    v70 = 0xEF73657361626174;
    (v38)(v4, v68, v37);
    v42 = v60;
    sub_230E68840();
    v41(v4, v37);
    v43 = *(v66 + 8);
    v43(v40, v61);
    v69 = v63;
    v70 = v65;
    (v55)(v4, v68, v37);

    v44 = v67;
    sub_230E68840();
    v45 = v43;
    v46 = v37;
    v47 = v61;
    v56(v4, v46);

    v43(v42, v47);
    v48 = [v59 defaultManager];
    v49 = sub_230E68800();
    v69 = 0;
    LOBYTE(v40) = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:&v69];

    if (v40)
    {
      v50 = v69;
      return (v43)(v62, v47);
    }

    v52 = v69;
    v22 = sub_230E687E0();

    swift_willThrow();
    v45(v44, v47);
    v45(v62, v47);
  }

  sub_230D0D224();
  swift_allocError();
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  swift_willThrow();
  return MEMORY[0x23191E910](v22);
}

uint64_t _s20ServicesIntelligence27VectorDatabaseConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_230E698C0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v10 = sub_230D0B544(v2, v6);
  v11 = 0;
  if ((v10 & 1) == 0 || v3 != v7)
  {
    return v11 & 1;
  }

  v12 = 0xE300000000000000;
  v13 = 7630692;
  if (v4 != 1)
  {
    v13 = 12908;
    v12 = 0xE200000000000000;
  }

  if (v4)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x656E69736F63;
  }

  if (v4)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  v16 = 0xE300000000000000;
  v17 = 7630692;
  if (v8 != 1)
  {
    v17 = 12908;
    v16 = 0xE200000000000000;
  }

  if (v8)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x656E69736F63;
  }

  if (v8)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE600000000000000;
  }

  if (v14 != v18 || v15 != v19)
  {
    v20 = sub_230E698C0();

    if (v20)
    {
      goto LABEL_26;
    }

LABEL_34:
    v11 = 0;
    return v11 & 1;
  }

LABEL_26:
  if (v5)
  {
    v21 = 0x323374616F6C66;
  }

  else
  {
    v21 = 0x363174616F6C66;
  }

  if (v9)
  {
    v22 = 0x323374616F6C66;
  }

  else
  {
    v22 = 0x363174616F6C66;
  }

  if (v21 == v22)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  swift_bridgeObjectRelease_n();
  return v11 & 1;
}

unint64_t sub_230D4D784()
{
  result = qword_2815660F8[0];
  if (!qword_2815660F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815660F8);
  }

  return result;
}

unint64_t sub_230D4D7D8()
{
  result = qword_281566488;
  if (!qword_281566488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566488);
  }

  return result;
}

unint64_t sub_230D4D830()
{
  result = qword_27DB5B490;
  if (!qword_27DB5B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B490);
  }

  return result;
}

unint64_t sub_230D4D888()
{
  result = qword_27DB5B498;
  if (!qword_27DB5B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B498);
  }

  return result;
}

unint64_t sub_230D4D8DC(void *a1)
{
  a1[1] = sub_230D45B30();
  a1[2] = sub_230D45B84();
  result = sub_230D4D914();
  a1[3] = result;
  return result;
}

unint64_t sub_230D4D914()
{
  result = qword_27DB5B4A0;
  if (!qword_27DB5B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B4A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VectorDatabaseConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VectorDatabaseConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_230D4DAEC()
{
  result = qword_27DB5B4A8;
  if (!qword_27DB5B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B4A8);
  }

  return result;
}

unint64_t sub_230D4DB44()
{
  result = qword_281566198;
  if (!qword_281566198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566198);
  }

  return result;
}

unint64_t sub_230D4DB9C()
{
  result = qword_2815661A0;
  if (!qword_2815661A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661A0);
  }

  return result;
}

uint64_t sub_230D4DBF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69736E656D6964 && a2 == 0xE90000000000006ELL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xEE0063697274654DLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954646C656966 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73616C4361746164 && a2 == 0xE900000000000073)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_230D4DDF8()
{
  result = qword_281566480;
  if (!qword_281566480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566480);
  }

  return result;
}

unint64_t sub_230D4DE4C()
{
  result = qword_2815660F0;
  if (!qword_2815660F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660F0);
  }

  return result;
}

uint64_t ServicesIntelligenceProvider.getVectorDatabaseClient(domain:name:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a3;
  *(v5 + 128) = v4;
  *(v5 + 112) = a2;
  v8 = sub_230E68D80();
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 653) = *a1;
  v9 = *(a4 + 16);
  *(v5 + 160) = *a4;
  *(v5 + 176) = v9;
  *(v5 + 192) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_230D4DFB8, v4, 0);
}

uint64_t sub_230D4DFB8()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if (v1)
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    *(v0 + 208) = v1;
    *(v0 + 216) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    v29 = v3 >> 8;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    sub_230E68D70();

    v6 = sub_230E68D60();
    v7 = sub_230E693E0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v8 = 136315650;
      *(v8 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80610, v30);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_230D7E620(v4, v1, v30);
      *(v8 + 22) = 2080;
      v9 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v9);

      v10 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

      *(v8 + 24) = v10;
      _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v28, -1, -1);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    if (v3 & 1) != 0 && ((v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v2), , , (v11) || v29 >= 2u))
    {
      sub_230E68950();
      *(v0 + 224) = CFAbsoluteTimeGetCurrent();
      *(v0 + 272) = 0u;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      *(v0 + 320) = 0u;
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      *(v0 + 384) = 0u;
      *(v0 + 400) = 0u;
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      *(v0 + 464) = 0u;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0u;
      *(v0 + 608) = 0u;
      *(v0 + 624) = 0u;
      *(v0 + 640) = 0;
      *(v0 + 644) = 93;
      v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 272), (v0 + 644));
      *(v0 + 648) = v18;
      v19 = 0.0;
      if (!v18)
      {
        v20 = *(v0 + 320);
        v21 = *(v0 + 392);
        v22 = __CFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          __break(1u);
        }

        v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
      }

      *(v0 + 248) = v19;
      *(v0 + 104) = 0;
      v14 = swift_task_alloc();
      *(v0 + 256) = v14;
      *v14 = v0;
      v15 = sub_230D4EA98;
    }

    else
    {
      v14 = swift_task_alloc();
      *(v0 + 232) = v14;
      *v14 = v0;
      v15 = sub_230D2F8C8;
    }

    v14[1] = v15;
    v24 = *(v0 + 120);
    v25 = *(v0 + 128);
    v26 = *(v0 + 112);
    v27 = *(v0 + 653);

    return sub_230D4EE84(v0 + 96, v27, v26, v24, v25, v0 + 16);
  }

  else
  {
    *(v0 + 652) = 17;
    v16 = swift_task_alloc();
    *(v0 + 200) = v16;
    *v16 = v0;
    v16[1] = sub_230D4E4C0;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 652), 0, 0);
  }
}

uint64_t sub_230D4E4C0()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_230D4E5FC, v1, 0);
}

uint64_t sub_230D4E5FC()
{
  v39 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = *(v0 + 56);
  v1 = v0 + 16;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v1 + 192) = v3;
  *(v1 + 200) = v6;
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v11 = *(v1 + 144);
  v35 = v2;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  v36 = v4;
  *(v1 + 24) = v4;
  v34 = v5;
  *(v1 + 25) = v5;
  *(v1 + 32) = v6;

  sub_230D0585C(v11, v10, v9, v7, v8);
  sub_230E68D70();

  v12 = sub_230E68D60();
  v13 = sub_230E693E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80610, v38);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_230D7E620(v35, v3, v38);
    *(v14 + 22) = 2080;
    v16 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v16);

    v17 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v38);

    *(v14 + 24) = v17;
    _os_log_impl(&dword_230D02000, v12, v13, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v15, -1, -1);
    MEMORY[0x23191EAE0](v14, -1, -1);

    if (!v36)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v36)
    {
LABEL_7:
      v21 = swift_task_alloc();
      *(v37 + 232) = v21;
      *v21 = v37;
      v21[1] = sub_230D2F8C8;
      v22 = *(v37 + 120);
      v23 = *(v37 + 128);
      v24 = *(v37 + 112);
      v25 = *(v37 + 653);
      goto LABEL_12;
    }
  }

  v18 = RequestType.rawValue.getter();
  v20 = v19;

  LOBYTE(v18) = sub_230D33FDC(v18, v20, v6);

  if ((v18 & 1) == 0 && v34 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v37 + 224) = CFAbsoluteTimeGetCurrent();
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 528) = 0u;
  *(v1 + 544) = 0u;
  *(v1 + 560) = 0u;
  *(v1 + 576) = 0u;
  *(v1 + 592) = 0u;
  *(v1 + 608) = 0u;
  *(v1 + 624) = 0;
  *(v37 + 644) = 93;
  v26 = task_info(*MEMORY[0x277D85F48], 0x16u, (v1 + 256), (v1 + 628));
  *(v37 + 648) = v26;
  v27 = 0.0;
  if (!v26)
  {
    v28 = *(v37 + 320);
    v29 = *(v37 + 392);
    v30 = __CFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
    }

    v27 = vcvtd_n_f64_u64(v31, 0x14uLL);
  }

  *(v37 + 248) = v27;
  *(v37 + 104) = 0;
  v32 = swift_task_alloc();
  *(v37 + 256) = v32;
  *v32 = v37;
  v32[1] = sub_230D4EA98;
  v22 = *(v37 + 120);
  v23 = *(v37 + 128);
  v24 = *(v37 + 112);
  v25 = *(v37 + 653);
LABEL_12:

  return sub_230D4EE84(v1 + 80, v25, v24, v22, v23, v1);
}

uint64_t sub_230D4EA98()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_230D4ED20;
  }

  else
  {
    v4 = sub_230D4EBF0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D4EBF0()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_230D37054(17, *(v0 + 248), *(v0 + 648) != 0, v0 + 16, (v0 + 104), *(v0 + 224));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230D4ED20(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  v4 = *(v1 + 224);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 136);
  v8 = *(v1 + 648) != 0;
  *(v1 + 104) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D37054(17, v3, v8, v1 + 16, (v1 + 104), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230D4EE84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = a6;
  *(v6 + 232) = a3;
  *(v6 + 240) = a4;
  *(v6 + 170) = a2;
  *(v6 + 224) = a1;
  *(v6 + 171) = *a6;
  *(v6 + 264) = *(a6 + 8);
  *(v6 + 172) = *(a6 + 24);
  *(v6 + 280) = *(a6 + 32);
  return MEMORY[0x2822009F8](sub_230D4EED4, a5, 0);
}

uint64_t sub_230D4EED4()
{
  v1 = *(v0 + 248);
  swift_beginAccess();
  v2 = *(v1 + 128);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 170);

    v7 = sub_230DB4B4C(v6, v5, v4, 1);
    if (v8)
    {
      v9 = v7;

      v10 = *(*(v2 + 56) + 8 * v9);

      **(v0 + 224) = v10;
      v11 = *(v0 + 8);

      return v11();
    }
  }

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v17 = *(v0 + 172) & 1 | (*(v0 + 173) << 8);
  *(v0 + 16) = *(v0 + 171);
  *(v0 + 24) = v15;
  *(v0 + 32) = v14;
  *(v0 + 40) = v17;
  *(v0 + 48) = v13;
  sub_230D1CDE0(v16, v0 + 56);
  sub_230D1CDE0(v16, v0 + 96);

  v18 = swift_task_alloc();
  *(v0 + 288) = v18;
  *v18 = v0;
  v18[1] = sub_230D4F0A0;
  v19 = *(v0 + 256);

  return (sub_230D6F7D0)(39, v19);
}

uint64_t sub_230D4F0A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230D4F3CC;
  }

  else
  {
    v7 = sub_230D4F1F0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230D4F1F0()
{
  sub_230D1CE3C(*(v0 + 256));
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_230D4F2A0;
  v2 = *(v0 + 296);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 170);

  return sub_230D4FE00(v0 + 136, v5, v3, v4, 1, v2, v0 + 16);
}

uint64_t sub_230D4F2A0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_230D4F604;
  }

  else
  {
    v4 = sub_230D4F43C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D4F3CC()
{
  sub_230D1CE3C(*(v0 + 256));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D4F43C()
{
  v20 = v0;
  v1 = *(v0 + 144);
  if (!v1)
  {

    sub_230D0D224();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 3;
    swift_willThrow();

    goto LABEL_5;
  }

  v2 = *(v0 + 320);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v16[0] = *(v0 + 136);
  v16[1] = v1;
  v17 = v5;
  v18 = v4;
  v19 = v3 & 0x1FF;
  type metadata accessor for VectorDatabaseClient();
  swift_allocObject();
  v6 = sub_230D50744(v16);
  if (v2)
  {

LABEL_5:
    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  v9 = v6;
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 170);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = *(v11 + 128);
  *(v11 + 128) = 0x8000000000000000;
  sub_230E1BAF0(v9, v13, v12, v10, 1, isUniquelyReferenced_nonNull_native);

  *(v11 + 128) = v16[0];
  swift_endAccess();

  **(v0 + 224) = v9;
  v8 = *(v0 + 8);
LABEL_7:

  return v8();
}

uint64_t sub_230D4F604()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ServicesIntelligenceProvider.getVectorDatabaseClient(name:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  v5 = *(a3 + 16);
  *(v4 + 80) = *a3;
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D4F6A8, v3, 0);
}

uint64_t sub_230D4F6A8()
{
  sub_230DCB5D4((v0 + 136));
  v1 = *(v0 + 112);
  *(v0 + 137) = *(v0 + 136);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_230D313D0;
  v4 = *(v0 + 64);
  v5 = *(v0 + 56);

  return ServicesIntelligenceProvider.getVectorDatabaseClient(domain:name:requestContext:)((v0 + 137), v5, v4, v0 + 16);
}

uint64_t sub_230D4F7B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 432) = a6;
  *(v7 + 440) = a7;
  *(v7 + 130) = a5;
  *(v7 + 416) = a3;
  *(v7 + 424) = a4;
  *(v7 + 129) = a2;
  *(v7 + 408) = a1;
  *(v7 + 448) = type metadata accessor for SQLDatabaseConfiguration(0);

  return MEMORY[0x2822009F8](sub_230D4F838, 0, 0);
}

uint64_t sub_230D4F838()
{
  v16 = v0;
  v1 = *(v0 + 440);
  LOBYTE(v13[0]) = *(v0 + 129);
  v13[1] = *(v0 + 416);
  v13[2] = *(v0 + 424);
  v14 = *(v0 + 130);
  v2 = DatabaseIdentifier.stringRepresentation()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_230E6B3B0;
  *(v3 + 32) = 0x6144616D65686373;
  *(v3 + 40) = 0xEA00000000006174;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  sub_230E69540();

  strcpy(v13, "identifier = '");
  HIBYTE(v13[1]) = -18;
  MEMORY[0x23191DA00](v2._countAndFlagsBits, v2._object);

  MEMORY[0x23191DA00](39, 0xE100000000000000);
  v4 = v13[0];
  v5 = v13[1];
  LOBYTE(v13[0]) = 1;
  v15 = 1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000230E81B30;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = v4;
  *(v0 + 96) = v5;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 128) = 1;
  v6 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v6;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = 1;
  v7 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v7;
  v8 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 16);
  *(v0 + 360) = *v1;
  *(v0 + 376) = v10;
  *(v0 + 392) = v9;
  v11 = swift_task_alloc();
  *(v0 + 456) = v11;
  *v11 = v0;
  v11[1] = sub_230D4FA94;

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230D4FA94()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_230D4FD9C;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v3 = sub_230D4FBB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230D4FBB0()
{
  v1 = v0[50];
  if (!*(v1 + 16) || (v2 = *(v1 + 32), , , !*(v2 + 16)) || (v3 = sub_230DA41A0(0x6144616D65686373, 0xEA00000000006174), (v4 & 1) == 0))
  {

    goto LABEL_7;
  }

  v5 = *(v2 + 56) + 24 * v3;
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  sub_230D0DCD8(*v5, v6, *(v5 + 16));

  if (v8)
  {
    sub_230D0F474(v7, v6, v8);
LABEL_7:
    v9 = 1;
LABEL_8:
    (*(*(v0[56] - 8) + 56))(v0[51], v9, 1);
    v10 = v0[1];
    goto LABEL_9;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v12 = v0[58];
  sub_230E686C0();
  swift_allocObject();
  sub_230E686B0();
  sub_230D503C4();
  sub_230E686A0();
  if (!v12)
  {
    sub_230D0F474(v7, v6, 0);

    v9 = 0;
    goto LABEL_8;
  }

  sub_230D0F474(v7, v6, 0);
  v10 = v0[1];
LABEL_9:

  return v10();
}

uint64_t sub_230D4FD9C()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D4FE00(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 432) = a6;
  *(v7 + 440) = a7;
  *(v7 + 130) = a5;
  *(v7 + 416) = a3;
  *(v7 + 424) = a4;
  *(v7 + 129) = a2;
  *(v7 + 408) = a1;
  return MEMORY[0x2822009F8](sub_230D4FE30, 0, 0);
}

uint64_t sub_230D4FE30()
{
  v16 = v0;
  v1 = *(v0 + 440);
  LOBYTE(v13[0]) = *(v0 + 129);
  v13[1] = *(v0 + 416);
  v13[2] = *(v0 + 424);
  v14 = *(v0 + 130);
  v2 = DatabaseIdentifier.stringRepresentation()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_230E6B3B0;
  *(v3 + 32) = 0x6144616D65686373;
  *(v3 + 40) = 0xEA00000000006174;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  sub_230E69540();

  strcpy(v13, "identifier = '");
  HIBYTE(v13[1]) = -18;
  MEMORY[0x23191DA00](v2._countAndFlagsBits, v2._object);

  MEMORY[0x23191DA00](39, 0xE100000000000000);
  v4 = v13[0];
  v5 = v13[1];
  LOBYTE(v13[0]) = 1;
  v15 = 1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000230E81B30;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = v4;
  *(v0 + 96) = v5;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 128) = 1;
  v6 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v6;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = 1;
  v7 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v7;
  v8 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 16);
  *(v0 + 360) = *v1;
  *(v0 + 376) = v10;
  *(v0 + 392) = v9;
  v11 = swift_task_alloc();
  *(v0 + 448) = v11;
  *v11 = v0;
  v11[1] = sub_230D5008C;

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230D5008C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_230D50360;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v3 = sub_230D501A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230D501A8()
{
  v1 = v0[50];
  if (!*(v1 + 16) || (v2 = *(v1 + 32), , , !*(v2 + 16)) || (v3 = sub_230DA41A0(0x6144616D65686373, 0xEA00000000006174), (v4 & 1) == 0))
  {

    goto LABEL_7;
  }

  v5 = *(v2 + 56) + 24 * v3;
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  sub_230D0DCD8(*v5, v6, *(v5 + 16));

  if (v8)
  {
    sub_230D0F474(v7, v6, v8);
LABEL_7:
    v9 = v0[51];
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
LABEL_8:
    v10 = v0[1];
    goto LABEL_9;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v12 = v0[57];
  sub_230E686C0();
  swift_allocObject();
  sub_230E686B0();
  sub_230D45B30();
  sub_230E686A0();
  if (!v12)
  {
    sub_230D0F474(v7, v6, 0);

    goto LABEL_8;
  }

  sub_230D0F474(v7, v6, 0);
  v10 = v0[1];
LABEL_9:

  return v10();
}

uint64_t sub_230D50360()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_230D503C4()
{
  result = qword_27DB5AC40;
  if (!qword_27DB5AC40)
  {
    type metadata accessor for SQLDatabaseConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC40);
  }

  return result;
}

uint64_t sub_230D5041C(uint64_t a1)
{
  v31 = sub_230E68B80();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v30 = v6;
  v25[1] = v1;
  v34 = MEMORY[0x277D84F90];
  sub_230D48DE8(0, v7, 0);
  v8 = v34;
  v32 = a1 + 64;
  result = sub_230E694B0();
  v10 = result;
  v11 = 0;
  v33 = *(a1 + 36);
  v28 = v3 + 32;
  v29 = v3;
  v26 = a1 + 72;
  v27 = v7;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v32 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v15 = v30;
    sub_230E68B70();
    v34 = v8;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_230D48DE8((v16 > 1), v17 + 1, 1);
      v8 = v34;
    }

    *(v8 + 16) = v17 + 1;
    result = (*(v29 + 32))(v8 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v17, v15, v31);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_24;
    }

    v18 = *(v32 + 8 * v14);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_25;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v13 = v27;
    }

    else
    {
      v20 = v14 << 6;
      v21 = v14 + 1;
      v13 = v27;
      v22 = (v26 + 8 * v14);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_230D52C58(v10, v33, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_230D52C58(v10, v33, 0);
    }

LABEL_4:
    ++v11;
    v10 = v12;
    if (v11 == v13)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_230D50744(uint64_t *a1)
{
  v2 = v1;
  v34 = sub_230E68B60();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_230E68B20();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_230E68860();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_230E68B10();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v30 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  v18 = *(a1 + 16);
  v19 = a1[3];
  v20 = *(a1 + 32);
  v21 = *(a1 + 33);
  swift_defaultActor_initialize();
  v36 = v17;
  v37 = v17;
  v38 = v16;
  v31 = v18;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v42 = v21;
  v22 = v43;
  VectorDatabaseConfiguration.path.getter(v12);
  v43 = v22;
  if (v22)
  {

    type metadata accessor for VectorDatabaseClient();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = *(v29 + 104);
    LODWORD(v29) = v20;
    v23(v33, **(&unk_2788F3428 + v20), v6);
    v24 = MEMORY[0x277D78218];
    if (!v21)
    {
      v24 = MEMORY[0x277D78210];
    }

    (*(v32 + 104))(v35, *v24, v34);
    sub_230E68B00();
    sub_230E68AF0();
    swift_allocObject();
    v25 = sub_230E68A90();
    v26 = v36;
    *(v2 + 112) = v25;
    *(v2 + 120) = v26;
    *(v2 + 128) = v16;
    *(v2 + 136) = v31;
    *(v2 + 144) = v19;
    *(v2 + 152) = v29;
    *(v2 + 153) = v21;
    v37 = 0;
    v38 = 0xE000000000000000;

    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E81E10);
    MEMORY[0x23191DA00](v26, v16);

    sub_230E68950();
  }

  return v2;
}

uint64_t sub_230D50B48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 120) = *a3;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  *(v4 + 112) = *a2;
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D50B84, v3, 0);
}

uint64_t sub_230D50B84()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    *(v0 + 168) = v1;
    *(v0 + 176) = v2;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v4, v5, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_230D50F88;
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_230D73C94(v9, 11, v0 + 16, v7, v7, v8);
  }

  else
  {
    *(v0 + 192) = 11;
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_230D50D44;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 192), 0, 0);
  }
}

uint64_t sub_230D50D44()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D50E54, v1, 0);
}

uint64_t sub_230D50E54()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 168) = v3;
  *(v0 + 176) = v6;
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v7, v8);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_230D50F88;
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 96);

  return sub_230D73C94(v15, 11, v0 + 16, v13, v13, v14);
}

uint64_t sub_230D50F88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230D510BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_230D510DC, a2, 0);
}

uint64_t sub_230D510DC()
{
  v1 = v0[5];
  if (v1)
  {
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000034, 0x8000000230E81D50);
    v0[2] = *(v1 + 16);
    v2 = sub_230E69890();
    MEMORY[0x23191DA00](v2);

    MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
    sub_230E68950();

    v3 = sub_230E68AA0();
  }

  else
  {
    sub_230E68950();
    v3 = sub_230E68A80();
    sub_230E68AE0();
  }

  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E81D90);
  v0[2] = v3;
  v4 = sub_230E69890();
  MEMORY[0x23191DA00](v4);

  MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
  v5 = v0[3];
  sub_230E68950();

  *v5 = v3;
  v6 = v0[1];

  return v6();
}

uint64_t sub_230D5139C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 120) = *a3;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  *(v4 + 112) = *a2;
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D513D8, v3, 0);
}

uint64_t sub_230D513D8()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    *(v0 + 168) = v1;
    *(v0 + 176) = v2;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v4, v5, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_230D52C64;
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_230D747EC(v9, 12, v0 + 16, v7, v8, v7);
  }

  else
  {
    *(v0 + 192) = 12;
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_230D51598;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 192), 0, 0);
  }
}

uint64_t sub_230D51598()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D516A8, v1, 0);
}

uint64_t sub_230D516A8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 168) = v3;
  *(v0 + 176) = v6;
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v7, v8);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_230D52C64;
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 96);

  return sub_230D747EC(v15, 12, v0 + 16, v13, v14, v13);
}

uint64_t sub_230D517DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_230D51800, a3, 0);
}

uint64_t sub_230D51800()
{
  v1 = v0[4];
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000035, 0x8000000230E81C10);
  v0[2] = *(v1 + 16);
  v2 = sub_230E69890();
  MEMORY[0x23191DA00](v2);

  MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
  sub_230E68950();

  v3 = sub_230D5041C(v1);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000032, 0x8000000230E81C50);
  v0[2] = *(v3 + 16);
  v4 = sub_230E69890();
  MEMORY[0x23191DA00](v4);

  MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
  sub_230E68950();

  v5 = sub_230E68AB0();

  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000034, 0x8000000230E81C90);
  v0[2] = v5;
  v6 = sub_230E69890();
  MEMORY[0x23191DA00](v6);

  MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
  sub_230E68950();

  sub_230E68950();
  sub_230E68AD0();
  v8 = v0[3];
  sub_230E68950();
  *v8 = v5;
  v9 = v0[1];

  return v9();
}

uint64_t sub_230D51B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = *a2;
  v5 = *(a3 + 16);
  *(v4 + 136) = *a3;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  *(v4 + 128) = *(a2 + 16);
  *(v4 + 209) = *(a2 + 24);
  *(v4 + 152) = v5;
  *(v4 + 168) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D51B5C, v3, 0);
}

uint64_t sub_230D51B5C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    *(v0 + 184) = v1;
    *(v0 + 192) = v2;
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    sub_230D0DD0C(v6, v7);

    sub_230D0585C(v4, v5, v1, v3, v2);
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_230D51F94;

    JUMPOUT(0x230D75344);
  }

  *(v0 + 208) = 13;
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_230D51D38;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 208), 0, 0);
}

uint64_t sub_230D51D38()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D51E48, v1, 0);
}

void sub_230D51E48()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 184) = v3;
  *(v0 + 192) = v6;
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0DD0C(v12, v13);

  sub_230D0585C(v11, v10, v9, v8, v7);
  v14 = swift_task_alloc();
  *(v0 + 200) = v14;
  *v14 = v0;
  v14[1] = sub_230D51F94;

  JUMPOUT(0x230D75344);
}

uint64_t sub_230D51F94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230D520C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  *(v6 + 96) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v8 = sub_230E68B50();
  *(v6 + 72) = v8;
  *(v6 + 80) = *(v8 - 8);
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D52198, a6, 0);
}

void *sub_230D52198()
{
  if (*(v0 + 96))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 56);
  }

  v2 = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000038, 0x8000000230E81BA0);
  if (v1 < 1)
  {
    v4 = 0;
  }

  else
  {
    sub_230E69540();

    *(v0 + 24) = v1;
    v3 = sub_230E69890();
    MEMORY[0x23191DA00](v3);

    MEMORY[0x23191DA00](0x73746C7573657220, 0xE800000000000000);
    v4 = 0x206F74207075;
    v2 = 0xE600000000000000;
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  MEMORY[0x23191DA00](v4, v2);

  sub_230E68950();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3D8, &unk_230E6F760);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_230E6B3B0;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_230D0DD0C(v6, v5);
  if (v1 < 1)
  {
    sub_230E68A80();
  }

  v8 = sub_230E68AC0();

  if (!*(v8 + 16))
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v10 = *(v8 + 32);

  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000002DLL, 0x8000000230E81BE0);
  *(v0 + 16) = *(v10 + 16);
  v11 = sub_230E69890();
  MEMORY[0x23191DA00](v11);

  MEMORY[0x23191DA00](0x73746C7573657220, 0xE800000000000000);
  v12 = MEMORY[0x277D84F90];
  sub_230E68950();

  result = sub_230D0DE84(v12);
  v13 = result;
  v44 = *(v10 + 16);
  if (!v44)
  {
LABEL_29:
    v39 = *(v0 + 32);

    *v39 = v13;

    v40 = *(v0 + 8);

    return v40();
  }

  v14 = 0;
  v15 = *(v0 + 80);
  v42 = v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v43 = v15;
  v41 = (v15 + 8);
  while (1)
  {
    if (v14 >= *(v10 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v16 = v10;
    (*(v43 + 16))(*(v0 + 88), v42 + *(v43 + 72) * v14, *(v0 + 72));
    v17 = sub_230E68B30();
    v19 = v18;
    sub_230E68B40();
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_230DA41A0(v17, v19);
    v25 = v13[2];
    v26 = (v23 & 1) == 0;
    result = (v25 + v26);
    if (__OFADD__(v25, v26))
    {
      goto LABEL_36;
    }

    v27 = v23;
    if (v13[3] < result)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v23)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_230DB9CAC();
      if (v27)
      {
LABEL_20:

        goto LABEL_24;
      }
    }

LABEL_22:
    v13[(v24 >> 6) + 8] |= 1 << v24;
    v29 = (v13[6] + 16 * v24);
    *v29 = v17;
    v29[1] = v19;
    *(v13[7] + 8 * v24) = MEMORY[0x277D84F90];
    v30 = v13[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_37;
    }

    v13[2] = v32;
LABEL_24:
    v33 = v13[7];
    v34 = *(v33 + 8 * v24);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 8 * v24) = v34;
    if ((v35 & 1) == 0)
    {
      v34 = sub_230E4A0DC(0, *(v34 + 2) + 1, 1, v34);
      *(v33 + 8 * v24) = v34;
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      *(v33 + 8 * v24) = sub_230E4A0DC((v36 > 1), v37 + 1, 1, v34);
    }

    ++v14;
    result = (*v41)(*(v0 + 88), *(v0 + 72));
    v38 = *(v33 + 8 * v24);
    *(v38 + 16) = v37 + 1;
    *(v38 + 8 * v37 + 32) = v21;
    v10 = v16;
    if (v44 == v14)
    {
      goto LABEL_29;
    }
  }

  sub_230DB674C(result, isUniquelyReferenced_nonNull_native);
  result = sub_230DA41A0(v17, v19);
  if ((v27 & 1) == (v28 & 1))
  {
    v24 = result;
    if (v27)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  return sub_230E69950();
}

uint64_t VectorDatabaseClient.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VectorDatabaseClient.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_230D527EC(uint64_t a1)
{
  result = sub_230D52814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_230D52814()
{
  result = qword_27DB5B4B0;
  if (!qword_27DB5B4B0)
  {
    type metadata accessor for VectorDatabaseClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B4B0);
  }

  return result;
}

uint64_t dispatch thunk of VectorDatabaseClient.deleteFromDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_230D1BF00;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of VectorDatabaseClient.insertIntoDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_230D1D2F8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of VectorDatabaseClient.searchDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_230D1D2F8;

  return v10(a1, a2, a3);
}

uint64_t sub_230D52C58(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_230D52C68(uint64_t a1)
{
  v2 = sub_230D53D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52CA4(uint64_t a1)
{
  v2 = sub_230D53D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D52CE0(uint64_t a1)
{
  v2 = sub_230D53CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52D1C(uint64_t a1)
{
  v2 = sub_230D53CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D52D58()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000014;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6146737365636361;
    v3 = 0xD000000000000011;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x7475706E49646162;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_230D52E78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D559EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D52EAC(uint64_t a1)
{
  v2 = sub_230D53AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52EE8(uint64_t a1)
{
  v2 = sub_230D53AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D52F24(uint64_t a1)
{
  v2 = sub_230D53C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52F60(uint64_t a1)
{
  v2 = sub_230D53C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D52F9C(uint64_t a1)
{
  v2 = sub_230D53B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52FD8(uint64_t a1)
{
  v2 = sub_230D53B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D53014(uint64_t a1)
{
  v2 = sub_230D53BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D53050(uint64_t a1)
{
  v2 = sub_230D53BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D5308C(uint64_t a1)
{
  v2 = sub_230D53C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D530C8(uint64_t a1)
{
  v2 = sub_230D53C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D53104(uint64_t a1)
{
  v2 = sub_230D53AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D53140(uint64_t a1)
{
  v2 = sub_230D53AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D5317C(uint64_t a1)
{
  v2 = sub_230D53BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D531B8(uint64_t a1)
{
  v2 = sub_230D53BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DatabaseError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4B8, &qword_230E700A0);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v62 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4C0, &qword_230E700A8);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v59 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4C8, &qword_230E700B0);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v56 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4D0, &qword_230E700B8);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v53 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4D8, &qword_230E700C0);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v50 = &v43 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4E0, &qword_230E700C8);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v18);
  v46 = &v43 - v19;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4E8, &qword_230E700D0);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v20);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4F0, &qword_230E700D8);
  v44 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v43 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B4F8, &qword_230E700E0);
  v68 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v43 - v29;
  v31 = v1[1];
  v65 = *v1;
  v66 = v31;
  v32 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D53AA4();
  v67 = v30;
  sub_230E69A50();
  if (v32 > 3)
  {
    if (v32 > 5)
    {
      v33 = v27;
      v36 = v67;
      if (v32 != 6)
      {
        v71 = 2;
        sub_230D53C9C();
        v42 = v46;
        sub_230E697A0();
        (*(v48 + 8))(v42, v49);
        return (*(v68 + 8))(v36, v33);
      }

      v76 = 7;
      sub_230D53AF8();
      v37 = v62;
      sub_230E697A0();
      v38 = v64;
      sub_230E697B0();
      v39 = v63;
    }

    else
    {
      v33 = v27;
      v36 = v67;
      if (v32 == 4)
      {
        v74 = 5;
        sub_230D53BA0();
        v37 = v56;
        sub_230E697A0();
        v38 = v58;
        sub_230E697B0();
        v39 = v57;
      }

      else
      {
        v75 = 6;
        sub_230D53B4C();
        v37 = v59;
        sub_230E697A0();
        v38 = v61;
        sub_230E697B0();
        v39 = v60;
      }
    }
  }

  else
  {
    if (v32 <= 1)
    {
      v33 = v27;
      if (!v32)
      {
        v69 = 0;
        sub_230D53D44();
        v34 = v67;
        sub_230E697A0();
        sub_230E697B0();
        (*(v44 + 8))(v26, v23);
        return (*(v68 + 8))(v34, v33);
      }

      v70 = 1;
      sub_230D53CF0();
      v36 = v67;
      sub_230E697A0();
      v38 = v47;
      sub_230E697B0();
      v40 = *(v45 + 8);
      v41 = v22;
      goto LABEL_16;
    }

    v33 = v27;
    if (v32 == 2)
    {
      v72 = 3;
      sub_230D53C48();
      v37 = v50;
      v36 = v67;
      sub_230E697A0();
      v38 = v52;
      sub_230E697B0();
      v39 = v51;
    }

    else
    {
      v73 = 4;
      sub_230D53BF4();
      v37 = v53;
      v36 = v67;
      sub_230E697A0();
      v38 = v55;
      sub_230E697B0();
      v39 = v54;
    }
  }

  v40 = *(v39 + 8);
  v41 = v37;
LABEL_16:
  v40(v41, v38);
  return (*(v68 + 8))(v36, v33);
}

unint64_t sub_230D53AA4()
{
  result = qword_27DB5B500;
  if (!qword_27DB5B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B500);
  }

  return result;
}

unint64_t sub_230D53AF8()
{
  result = qword_27DB5B508;
  if (!qword_27DB5B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B508);
  }

  return result;
}

unint64_t sub_230D53B4C()
{
  result = qword_27DB5B510;
  if (!qword_27DB5B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B510);
  }

  return result;
}

unint64_t sub_230D53BA0()
{
  result = qword_27DB5B518;
  if (!qword_27DB5B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B518);
  }

  return result;
}

unint64_t sub_230D53BF4()
{
  result = qword_27DB5B520;
  if (!qword_27DB5B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B520);
  }

  return result;
}

unint64_t sub_230D53C48()
{
  result = qword_27DB5B528;
  if (!qword_27DB5B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B528);
  }

  return result;
}

unint64_t sub_230D53C9C()
{
  result = qword_27DB5B530;
  if (!qword_27DB5B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B530);
  }

  return result;
}

unint64_t sub_230D53CF0()
{
  result = qword_27DB5B538;
  if (!qword_27DB5B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B538);
  }

  return result;
}

unint64_t sub_230D53D44()
{
  result = qword_27DB5B540;
  if (!qword_27DB5B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B540);
  }

  return result;
}

uint64_t DatabaseError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B548, &qword_230E700E8);
  v4 = *(v3 - 8);
  v100 = v3;
  v101 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v107 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B550, &qword_230E700F0);
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v106 = &v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B558, &qword_230E700F8);
  v11 = *(v10 - 8);
  v96 = v10;
  v97 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v105 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B560, &qword_230E70100);
  v94 = *(v14 - 8);
  v95 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v104 = &v82 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B568, &qword_230E70108);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v17);
  v103 = &v82 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B570, &qword_230E70110);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v19);
  v102 = &v82 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B578, &qword_230E70118);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v21);
  v23 = &v82 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B580, &qword_230E70120);
  v87 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v82 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B588, &unk_230E70128);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v82 - v31;
  v33 = a1[3];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_230D53AA4();
  v34 = v109;
  sub_230E69A30();
  if (!v34)
  {
    v83 = v27;
    v82 = v24;
    v84 = v23;
    v85 = 0;
    v36 = v103;
    v35 = v104;
    v38 = v105;
    v37 = v106;
    v39 = v107;
    v86 = v29;
    v40 = v108;
    v109 = v32;
    v41 = sub_230E69780();
    v42 = (2 * *(v41 + 16)) | 1;
    v111 = v41;
    v112 = v41 + 32;
    v113 = 0;
    v114 = v42;
    v43 = sub_230D07A94();
    if (v43 == 8 || v113 != v114 >> 1)
    {
      v50 = sub_230E69580();
      swift_allocError();
      v52 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
      *v52 = &type metadata for DatabaseError;
      v53 = v109;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
      swift_willThrow();
      (*(v86 + 8))(v53, v28);
LABEL_30:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v110);
    }

    if (v43 > 3u)
    {
      v45 = v109;
      v54 = v85;
      if (v43 > 5u)
      {
        if (v43 == 6)
        {
          v115 = 6;
          sub_230D53B4C();
          sub_230E69690();
          if (!v54)
          {
            v59 = v99;
            v72 = sub_230E696B0();
            v74 = v77;
            (*(v98 + 8))(v37, v59);
            (*(v86 + 8))(v45, v28);
            swift_unknownObjectRelease();
            v75 = 5;
            goto LABEL_33;
          }
        }

        else
        {
          v115 = 7;
          sub_230D53AF8();
          v68 = v39;
          sub_230E69690();
          if (!v54)
          {
            v69 = v100;
            v72 = sub_230E696B0();
            v74 = v80;
            (*(v101 + 8))(v68, v69);
            (*(v86 + 8))(v45, v28);
            swift_unknownObjectRelease();
            v75 = 6;
            goto LABEL_33;
          }
        }
      }

      else if (v43 == 4)
      {
        v115 = 4;
        sub_230D53BF4();
        sub_230E69690();
        if (!v54)
        {
          v55 = v95;
          v72 = sub_230E696B0();
          v74 = v76;
          (*(v94 + 8))(v35, v55);
          (*(v86 + 8))(v45, v28);
          swift_unknownObjectRelease();
          v75 = 3;
          goto LABEL_33;
        }
      }

      else
      {
        v115 = 5;
        sub_230D53BA0();
        v64 = v38;
        sub_230E69690();
        if (!v54)
        {
          v65 = v96;
          v72 = sub_230E696B0();
          v74 = v78;
          (*(v97 + 8))(v64, v65);
          (*(v86 + 8))(v45, v28);
          swift_unknownObjectRelease();
          v75 = 4;
          goto LABEL_33;
        }
      }

      goto LABEL_28;
    }

    if (v43 > 1u)
    {
      if (v43 != 2)
      {
        v115 = 3;
        sub_230D53C48();
        v45 = v109;
        v66 = v85;
        sub_230E69690();
        if (!v66)
        {
          v67 = v93;
          v72 = sub_230E696B0();
          v74 = v79;
          (*(v92 + 8))(v36, v67);
          (*(v86 + 8))(v45, v28);
          swift_unknownObjectRelease();
          v75 = 2;
          goto LABEL_33;
        }

LABEL_28:
        v62 = *(v86 + 8);
        v63 = v45;
        goto LABEL_29;
      }

      v115 = 2;
      sub_230D53C9C();
      v56 = v102;
      v57 = v109;
      v58 = v85;
      sub_230E69690();
      if (!v58)
      {
        (*(v89 + 8))(v56, v91);
        (*(v86 + 8))(v57, v28);
        swift_unknownObjectRelease();
        v72 = 0;
        v74 = 0;
        v75 = 7;
        goto LABEL_33;
      }
    }

    else
    {
      if (!v43)
      {
        v115 = 0;
        sub_230D53D44();
        v44 = v83;
        v45 = v109;
        v46 = v85;
        sub_230E69690();
        if (!v46)
        {
          v47 = v82;
          v48 = sub_230E696B0();
          v49 = v86;
          v72 = v48;
          v74 = v73;
          (*(v87 + 8))(v44, v47);
          (*(v49 + 8))(v45, v28);
          swift_unknownObjectRelease();
          v75 = 0;
LABEL_33:
          *v40 = v72;
          *(v40 + 8) = v74;
          *(v40 + 16) = v75;
          return __swift_destroy_boxed_opaque_existential_1(v110);
        }

        goto LABEL_28;
      }

      v115 = 1;
      sub_230D53CF0();
      v60 = v84;
      v57 = v109;
      v61 = v85;
      sub_230E69690();
      if (!v61)
      {
        v71 = v90;
        v72 = sub_230E696B0();
        v74 = v81;
        (*(v88 + 8))(v60, v71);
        (*(v86 + 8))(v109, v28);
        swift_unknownObjectRelease();
        v75 = 1;
        goto LABEL_33;
      }
    }

    v62 = *(v86 + 8);
    v63 = v57;
LABEL_29:
    v62(v63, v28);
    goto LABEL_30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v110);
}

unint64_t DatabaseError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 3)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (!*(v0 + 16))
      {

        sub_230E69540();

        v10 = 0xD000000000000019;
        v4 = 0x8000000230E820A0;
        v5 = 0xD000000000000028;
        goto LABEL_17;
      }

      sub_230E69540();

      v5 = 0xD00000000000001CLL;
      v10 = 0xD000000000000018;
      v7 = "Invalid database input: ";
LABEL_16:
      v4 = v7 | 0x8000000000000000;
      goto LABEL_17;
    }

    if (v3 != 2)
    {

      sub_230E69540();

      v5 = 0xD000000000000020;
      v10 = 0xD000000000000020;
      v7 = " configuration: ";
      goto LABEL_16;
    }

    sub_230E69540();

    v10 = 0xD00000000000001BLL;
    v6 = "The database operation could not be completed";
LABEL_12:
    v4 = (v6 - 32) | 0x8000000000000000;
    v5 = 0xD00000000000002DLL;
    goto LABEL_17;
  }

  if (*(v0 + 16) > 5u)
  {
    if (v3 != 6)
    {
      return 0xD000000000000044;
    }

    sub_230E69540();

    v10 = 0xD000000000000015;
    v6 = "A write was attempted on a read only database";
    goto LABEL_12;
  }

  if (v3 == 4)
  {

    sub_230E69540();

    v10 = 0xD00000000000001CLL;
    v4 = 0x8000000230E81F10;
    v5 = 0xD000000000000024;
  }

  else
  {

    sub_230E69540();

    v10 = 0xD00000000000001FLL;
    v4 = 0x8000000230E81EC0;
    v5 = 0xD000000000000022;
  }

LABEL_17:
  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = v5;
  }

  if (!v1)
  {
    v1 = v4;
  }

  MEMORY[0x23191DA00](v8, v1);

  return v10;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence13DatabaseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_230D54E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230D54EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_230D54F04(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DatabaseError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230D55100()
{
  result = qword_27DB5B590;
  if (!qword_27DB5B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B590);
  }

  return result;
}

unint64_t sub_230D55158()
{
  result = qword_27DB5B598;
  if (!qword_27DB5B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B598);
  }

  return result;
}

unint64_t sub_230D551B0()
{
  result = qword_27DB5B5A0;
  if (!qword_27DB5B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5A0);
  }

  return result;
}

unint64_t sub_230D55208()
{
  result = qword_27DB5B5A8;
  if (!qword_27DB5B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5A8);
  }

  return result;
}

unint64_t sub_230D55260()
{
  result = qword_27DB5B5B0;
  if (!qword_27DB5B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5B0);
  }

  return result;
}

unint64_t sub_230D552B8()
{
  result = qword_27DB5B5B8;
  if (!qword_27DB5B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5B8);
  }

  return result;
}

unint64_t sub_230D55310()
{
  result = qword_27DB5B5C0;
  if (!qword_27DB5B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5C0);
  }

  return result;
}

unint64_t sub_230D55368()
{
  result = qword_27DB5B5C8;
  if (!qword_27DB5B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5C8);
  }

  return result;
}

unint64_t sub_230D553C0()
{
  result = qword_27DB5B5D0;
  if (!qword_27DB5B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5D0);
  }

  return result;
}

unint64_t sub_230D55418()
{
  result = qword_27DB5B5D8;
  if (!qword_27DB5B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5D8);
  }

  return result;
}

unint64_t sub_230D55470()
{
  result = qword_27DB5B5E0;
  if (!qword_27DB5B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5E0);
  }

  return result;
}

unint64_t sub_230D554C8()
{
  result = qword_27DB5B5E8;
  if (!qword_27DB5B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5E8);
  }

  return result;
}

unint64_t sub_230D55520()
{
  result = qword_27DB5B5F0;
  if (!qword_27DB5B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5F0);
  }

  return result;
}

unint64_t sub_230D55578()
{
  result = qword_27DB5B5F8;
  if (!qword_27DB5B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B5F8);
  }

  return result;
}

unint64_t sub_230D555D0()
{
  result = qword_27DB5B600;
  if (!qword_27DB5B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B600);
  }

  return result;
}

unint64_t sub_230D55628()
{
  result = qword_27DB5B608;
  if (!qword_27DB5B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B608);
  }

  return result;
}

unint64_t sub_230D55680()
{
  result = qword_27DB5B610;
  if (!qword_27DB5B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B610);
  }

  return result;
}

unint64_t sub_230D556D8()
{
  result = qword_27DB5B618;
  if (!qword_27DB5B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B618);
  }

  return result;
}

unint64_t sub_230D55730()
{
  result = qword_27DB5B620;
  if (!qword_27DB5B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B620);
  }

  return result;
}

unint64_t sub_230D55788()
{
  result = qword_27DB5B628;
  if (!qword_27DB5B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B628);
  }

  return result;
}

unint64_t sub_230D557E0()
{
  result = qword_27DB5B630;
  if (!qword_27DB5B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B630);
  }

  return result;
}

unint64_t sub_230D55838()
{
  result = qword_27DB5B638;
  if (!qword_27DB5B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B638);
  }

  return result;
}

unint64_t sub_230D55890()
{
  result = qword_27DB5B640;
  if (!qword_27DB5B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B640);
  }

  return result;
}

unint64_t sub_230D558E8()
{
  result = qword_27DB5B648;
  if (!qword_27DB5B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B648);
  }

  return result;
}

unint64_t sub_230D55940()
{
  result = qword_27DB5B650;
  if (!qword_27DB5B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B650);
  }

  return result;
}

unint64_t sub_230D55998()
{
  result = qword_27DB5B658;
  if (!qword_27DB5B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B658);
  }

  return result;
}

uint64_t sub_230D559EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6146737365636361 && a2 == 0xED00006572756C69;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475706E49646162 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E820D0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E820F0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80D10 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E82110 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E82130 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E82150 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D55C8C(uint64_t a1, unsigned __int8 a2)
{
  sub_230E69100();
}

uint64_t sub_230D55DE4(uint64_t a1, unsigned __int8 a2)
{
  sub_230E69100();
}

ServicesIntelligence::DatabaseIdentifier __swiftcall DatabaseIdentifier.init(domain:name:type:)(ServicesIntelligence::Domain domain, Swift::String name, ServicesIntelligence::DatabaseType type)
{
  v4 = *type;
  *v3 = *domain;
  *(v3 + 8) = name;
  *(v3 + 24) = v4;
  result.name = name;
  result.type = type;
  result.domain = domain;
  return result;
}

Swift::String __swiftcall DatabaseIdentifier.stringRepresentation()()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  if (v1 > 4)
  {
    v13 = 0xE600000000000000;
    v14 = 0x6E6F6D6D6F63;
    v15 = 0x65676175676E616CLL;
    if (v1 != 8)
    {
      v15 = 0x7974697275636573;
    }

    if (v1 != 7)
    {
      v14 = v15;
      v13 = 0xE800000000000000;
    }

    v16 = 0xE800000000000000;
    v17 = 0x7374736163646F70;
    if (v1 != 5)
    {
      v17 = 0x6F65646976;
      v16 = 0xE500000000000000;
    }

    if (*v0 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v14;
    }

    if (*v0 <= 6u)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6C616E7265746E69;
    v7 = 0xE500000000000000;
    v8 = 0x736B6F6F62;
    v9 = 0xE700000000000000;
    v10 = 0x7373656E746966;
    if (v1 != 3)
    {
      v10 = 0x636973756DLL;
      v9 = 0xE500000000000000;
    }

    if (v1 != 2)
    {
      v8 = v10;
      v7 = v9;
    }

    if (*v0)
    {
      v6 = 1936748641;
      v5 = 0xE400000000000000;
    }

    if (*v0 <= 1u)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    if (*v0 <= 1u)
    {
      v12 = v5;
    }

    else
    {
      v12 = v7;
    }
  }

  MEMORY[0x23191DA00](v11, v12);

  MEMORY[0x23191DA00](46, 0xE100000000000000);
  v18 = 0xE600000000000000;
  v19 = 0x524F54434556;
  if (v4 != 1)
  {
    v19 = 22091;
    v18 = 0xE200000000000000;
  }

  if (v4)
  {
    v20 = v19;
  }

  else
  {
    v20 = 5001555;
  }

  if (v4)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x23191DA00](v20, v21);

  MEMORY[0x23191DA00](46, 0xE100000000000000);
  MEMORY[0x23191DA00](v2, v3);
  v22 = 0;
  v23 = 0xE000000000000000;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}