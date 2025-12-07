uint64_t sub_2278ABA70(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2278C7B80();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2278C7B80();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2278AC678(&qword_27D7D6630, &qword_27D7D6628, &qword_2278CE650);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6628, &qword_2278CE650);
            v9 = sub_2278ABC98(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_227839268(0, &qword_27D7D6620, 0x277CCDBE8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2278ABC10(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA9DBF0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2278ABC90;
  }

  __break(1u);
  return result;
}

void (*sub_2278ABC98(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA9DBF0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2278AC6DC;
  }

  __break(1u);
  return result;
}

void sub_2278ABD20(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v7)
    {
      goto LABEL_20;
    }

    v101 = v7;
    v13 = *v6;
    v14 = *(v13 + 8 * v9);
    v9 = *(v13 + 8 * v12);
    v15 = v14;
    v16 = a5(v9, v15);
    if (v5)
    {

      return;
    }

    v17 = v16;

    v18 = v11 + 2;
    v97 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (1)
    {
      v21 = v101;
      if (v101 == v18)
      {
        break;
      }

      v22 = *(v20 - 1);
      v9 = *v20;
      v23 = v22;
      LODWORD(v22) = a5(v9, v23);

      ++v18;
      ++v20;
      if ((v17 ^ v22))
      {
        v21 = v18 - 1;
        break;
      }
    }

    v6 = a3;
    v8 = a4;
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v97;
    if (v21 < v97)
    {
      goto LABEL_123;
    }

    if (v97 < v21)
    {
      v25 = 8 * v21 - 8;
      v26 = v21;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v28 = *(v27 + v19);
          *(v27 + v19) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v19 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v12 = v21;
      v11 = v97;
      goto LABEL_20;
    }

    v12 = v21;
    v11 = v97;
LABEL_20:
    v29 = v6[1];
    if (v12 >= v29)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_119;
    }

    if (v12 - v11 >= v8)
    {
      goto LABEL_132;
    }

    v30 = v11 + v8;
    if (__OFADD__(v11, v8))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v30 >= v29)
    {
      v30 = v6[1];
    }

    if (v30 < v11)
    {
      goto LABEL_122;
    }

    if (v12 == v30)
    {
LABEL_132:
      if (v12 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v79 = *v6;
      v80 = v79 + 8 * v12 - 8;
      v98 = v11;
      v81 = v11 - v12;
      v94 = v30;
      do
      {
        v102 = v12;
        v82 = *(v79 + 8 * v12);
        v83 = v81;
        v95 = v80;
        do
        {
          v84 = *v80;
          v9 = v82;
          v85 = v84;
          v86 = a5(v9, v85);
          if (v5)
          {

            return;
          }

          v87 = v86;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_125;
          }

          v88 = *v80;
          v82 = *(v80 + 8);
          *v80 = v82;
          *(v80 + 8) = v88;
          v80 -= 8;
        }

        while (!__CFADD__(v83++, 1));
        v12 = v102 + 1;
        v80 = v95 + 8;
        --v81;
      }

      while (v102 + 1 != v94);
      v12 = v94;
      v6 = a3;
      v11 = v98;
      if (v94 < v98)
      {
        goto LABEL_118;
      }
    }

    v31 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22780202C(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = sub_22780202C((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v31;
    *(v35 + 5) = v12;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    v9 = v12;
    if (v33)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v37 = v34 - 1;
    if (v34 >= 4)
    {
      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_111;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_117;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v38 = *(v10 + 4);
      v39 = *(v10 + 5);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_48:
      if (v41)
      {
        goto LABEL_107;
      }

      v54 = &v10[16 * v34];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_110;
      }

      v60 = &v10[16 * v37 + 32];
      v62 = *v60;
      v61 = *(v60 + 1);
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_114;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v64 = &v10[16 * v34];
    v66 = *v64;
    v65 = *(v64 + 1);
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_62:
    if (v59)
    {
      goto LABEL_109;
    }

    v67 = &v10[16 * v37];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_112;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_69:
    v75 = v37 - 1;
    if (v37 - 1 >= v34)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_124;
    }

    v76 = *&v10[16 * v75 + 32];
    v77 = *&v10[16 * v37 + 40];
    sub_2278AB0A8((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36, a5);
    if (v5)
    {
      goto LABEL_99;
    }

    if (v77 < v76)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22786934C(v10);
    }

    if (v75 >= *(v10 + 2))
    {
      goto LABEL_104;
    }

    v78 = &v10[16 * v75];
    *(v78 + 4) = v76;
    *(v78 + 5) = v77;
    sub_2278692C0(v37);
    v34 = *(v10 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
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
  v10 = sub_22786934C(v10);
LABEL_91:
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
LABEL_99:
  }

  else
  {
    while (*v6)
    {
      v91 = *&v10[16 * v90];
      v92 = *&v10[16 * v90 + 24];
      sub_2278AB0A8((*v6 + 8 * v91), (*v6 + 8 * *&v10[16 * v90 + 16]), (*v6 + 8 * v92), v9, a5);
      if (v5)
      {
        goto LABEL_99;
      }

      if (v92 < v91)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_22786934C(v10);
      }

      if (v90 - 2 >= *(v10 + 2))
      {
        goto LABEL_116;
      }

      v93 = &v10[16 * v90];
      *v93 = v91;
      *(v93 + 1) = v92;
      sub_2278692C0(v90 - 1);
      v90 = *(v10 + 2);
      if (v90 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

void sub_2278AC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_2278AC490(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = a1[1];
  v5 = sub_2278C7D90();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227839268(0, &qword_27D7D6620, 0x277CCDBE8);
        v8 = sub_2278C77D0();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_2278ABD20(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_2278AC398(0, v4, 1, a1, a2);
  }
}

uint64_t sub_2278AC5C4(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22786A18C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_2278AC490(v8, a2);
  return sub_2278C7CC0();
}

uint64_t sub_2278AC678(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for NotificationRequest(uint64_t a1)
{
  result = qword_2813BACF0;
  if (!qword_2813BACF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2278AC754(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_2278C6820();
  if (v2 <= 0x3F)
  {
    sub_2278AC864(319, &qword_2813B9BC8, v1);
    if (v3 <= 0x3F)
    {
      sub_2278AC864(319, qword_2813BA1A0, &type metadata for NotificationRequestUserInfo);
      if (v4 <= 0x3F)
      {
        sub_2278AC864(319, qword_2813BB538, &type metadata for NotificationSound);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2278AC864(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2278C7AB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2278AC8C0()
{
  v1 = v0;
  v2 = sub_2278C7560();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6410, &unk_2278CE830);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - v6;
  v8 = sub_2278C6640();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v13 = sub_2278C76F0();
  [v12 setTitle_];

  v14 = sub_2278C76F0();
  [v12 setBody_];

  v15 = sub_2278C76F0();
  [v12 setCategoryIdentifier_];

  v16 = type metadata accessor for NotificationRequest(0);
  [v12 setInterruptionLevel_];
  v17 = sub_2278C67D0();
  [v12 setExpirationDate_];

  if ((*(v1 + v16[14]) & 1) == 0)
  {
    v18 = [objc_opt_self() defaultSound];
    if (v18)
    {
      v19 = v18;
      [v12 setSound_];
    }
  }

  if (*(v1 + v16[11] + 8))
  {
    v20 = sub_2278C76F0();
    [v12 setSubtitle_];
  }

  v21 = (v1 + v16[12]);
  v22 = v21[1];
  if (v22 >> 60 == 15)
  {
    sub_2278C3BA4(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_2278A6694(*v21, v22);
  }

  v23 = sub_2278C7640();

  [v12 setUserInfo_];

  if (*(v1 + v16[13] + 8))
  {
    sub_2278C6630();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_227802FC4(v7, &qword_27D7D6410, &unk_2278CE830);
    }

    else
    {
      v38 = v9;
      (*(v9 + 32))(v11, v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2278CC820;
      v37[1] = *(v1 + v16[9]);
      v25 = v11;
      sub_2278C7550();
      sub_2278C7540();
      v39 = v8;
      (*(v40 + 8))(v4, v41);
      v26 = objc_allocWithZone(MEMORY[0x277CE1F90]);
      v27 = sub_2278C76F0();
      v28 = sub_2278C6620();
      v29 = sub_2278C76F0();

      v30 = [v26 initWithIdentifier:v27 URL:v28 type:v29 options:0];

      *(v24 + 32) = v30;
      sub_2278B00B0();
      v31 = sub_2278C7790();

      [v12 setAttachments_];

      (*(v38 + 8))(v25, v39);
    }
  }

  if (*(v1 + 48) == 2)
  {
    v32 = [objc_opt_self() triggerWithTimeInterval:0 repeats:60.0];
  }

  else
  {
    v32 = 0;
  }

  v33 = v12;
  v34 = sub_2278C76F0();
  v35 = [objc_opt_self() requestWithIdentifier:v34 content:v33 trigger:v32];

  return v35;
}

unint64_t sub_2278ACE90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2278CABF0;
  v38 = 0x656D614E707061;
  v39 = 0xE700000000000000;
  v3 = MEMORY[0x277D837D0];
  sub_2278C7BF0();
  v5 = *v0;
  v4 = v0[1];
  *(v2 + 96) = v3;
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;
  v38 = 2036625250;
  v39 = 0xE400000000000000;

  sub_2278C7BF0();
  v7 = v0[2];
  v6 = v0[3];
  *(v2 + 168) = v3;
  *(v2 + 144) = v7;
  *(v2 + 152) = v6;
  v38 = 0x79726F6765746163;
  v39 = 0xE800000000000000;

  sub_2278C7BF0();
  v9 = v0[4];
  v8 = v0[5];
  *(v2 + 240) = v3;
  *(v2 + 216) = v9;
  *(v2 + 224) = v8;
  v38 = 0x79616C6564;
  v39 = 0xE500000000000000;

  sub_2278C7BF0();
  v10 = *(v0 + 48) + 1;
  v11 = MEMORY[0x277D83B88];
  *(v2 + 312) = MEMORY[0x277D83B88];
  *(v2 + 288) = v10;
  v38 = 0x6974617269707865;
  v39 = 0xEA00000000006E6FLL;
  sub_2278C7BF0();
  v12 = type metadata accessor for NotificationRequest(0);
  v13 = v12[8];
  v14 = sub_2278C6820();
  *(v2 + 384) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 360));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v0 + v13, v14);
  v38 = 0x696669746E656469;
  v39 = 0xEA00000000007265;
  sub_2278C7BF0();
  v16 = (v0 + v12[9]);
  v18 = *v16;
  v17 = v16[1];
  *(v2 + 456) = v3;
  *(v2 + 432) = v18;
  *(v2 + 440) = v17;
  v38 = 0xD000000000000011;
  v39 = 0x80000002278D3110;

  sub_2278C7BF0();
  v19 = 1;
  if (*(v0 + v12[10]))
  {
    v19 = 2;
  }

  *(v2 + 528) = v11;
  *(v2 + 504) = v19;
  v20 = sub_2278C3BA4(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = (v1 + v12[13]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;

    sub_2278C7BF0();
    v37 = v3;
    *&v36 = v23;
    *(&v36 + 1) = v22;
    sub_2278A7620(&v36, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2278AFAD4(v35, &v38, isUniquelyReferenced_nonNull_native);
    sub_227815D88(&v38);
  }

  if ((*(v1 + v12[14]) & 1) == 0)
  {
    *&v36 = 0x646E756F73;
    *(&v36 + 1) = 0xE500000000000000;
    sub_2278C7BF0();
    v37 = v3;
    *&v36 = 0x746C7561666564;
    *(&v36 + 1) = 0xE700000000000000;
    sub_2278A7620(&v36, v35);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_2278AFAD4(v35, &v38, v25);
    sub_227815D88(&v38);
  }

  v26 = (v1 + v12[11]);
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;
    *&v36 = 0x656C746974;
    *(&v36 + 1) = 0xE500000000000000;

    sub_2278C7BF0();
    v37 = v3;
    *&v36 = v28;
    *(&v36 + 1) = v27;
    sub_2278A7620(&v36, v35);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_2278AFAD4(v35, &v38, v29);
    sub_227815D88(&v38);
  }

  v30 = (v1 + v12[12]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    v32 = *v30;
    *&v36 = 0x6F666E4972657375;
    *(&v36 + 1) = 0xE800000000000000;
    sub_2278AFFDC(v32, v31);
    sub_2278C7BF0();
    v37 = MEMORY[0x277CC9318];
    *&v36 = v32;
    *(&v36 + 1) = v31;
    sub_2278A7620(&v36, v35);
    sub_227837280(v32, v31);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_2278AFAD4(v35, &v38, v33);
    sub_22785267C(v32, v31);
    sub_227815D88(&v38);
  }

  return v20;
}

uint64_t sub_2278AD3D0()
{
  sub_2278C7E60();
  sub_2278C7730();
  return sub_2278C7E90();
}

uint64_t sub_2278AD43C(uint64_t a1)
{
  sub_2278C7E60();
  sub_2278C7730();
  return sub_2278C7E90();
}

void sub_2278AD48C(BOOL *a2@<X8>)
{
  v3 = sub_2278C7D70();

  *a2 = v3 != 0;
}

unint64_t sub_2278AD500()
{
  result = qword_27D7D6648;
  if (!qword_27D7D6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6648);
  }

  return result;
}

uint64_t sub_2278AD554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - v5;
  v7 = sub_2278C6820();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59 = 0x656D614E707061;
  *(&v59 + 1) = 0xE700000000000000;
  sub_2278C7BF0();
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v11 = sub_2278AE394(v60);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_227802850(*(a1 + 56) + 32 * v11, &v61);
  sub_227815D88(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

LABEL_23:
    sub_2278B00FC();
    swift_allocError();
    return swift_willThrow();
  }

  v13 = *(&v59 + 1);
  v63 = v59;
  *&v59 = 2036625250;
  *(&v59 + 1) = 0xE400000000000000;
  sub_2278C7BF0();
  if (!*(a1 + 16) || (v14 = sub_2278AE394(v60), (v15 & 1) == 0))
  {

LABEL_22:

    sub_227815D88(v60);
    goto LABEL_23;
  }

  sub_227802850(*(a1 + 56) + 32 * v14, &v61);
  sub_227815D88(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    goto LABEL_18;
  }

  v58 = v59;
  *&v59 = 0x79726F6765746163;
  *(&v59 + 1) = 0xE800000000000000;
  sub_2278C7BF0();
  if (!*(a1 + 16) || (v16 = sub_2278AE394(v60), (v17 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_227802850(*(a1 + 56) + 32 * v16, &v61);
  sub_227815D88(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    goto LABEL_20;
  }

  v57 = v59;
  *&v59 = 0x79616C6564;
  *(&v59 + 1) = 0xE500000000000000;
  sub_2278C7BF0();
  if (!*(a1 + 16) || (v18 = sub_2278AE394(v60), (v19 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_227802850(*(a1 + 56) + 32 * v18, &v61);
  sub_227815D88(v60);
  if ((swift_dynamicCast() & 1) == 0 || (v59 - 1) >= 3)
  {

    goto LABEL_24;
  }

  v56 = v59 - 1;
  *&v59 = 0x6974617269707865;
  *(&v59 + 1) = 0xEA00000000006E6FLL;
  sub_2278C7BF0();
  if (!*(a1 + 16) || (v20 = sub_2278AE394(v60), (v21 & 1) == 0))
  {

    sub_227815D88(v60);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_28;
  }

  sub_227802850(*(a1 + 56) + 32 * v20, &v61);
  sub_227815D88(v60);
  v22 = swift_dynamicCast();
  (*(v8 + 56))(v6, v22 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

LABEL_28:
    sub_227802FC4(v6, &qword_27D7D60A8, qword_2278C9730);
    goto LABEL_23;
  }

  (*(v8 + 32))(v10, v6, v7);
  *&v59 = 0xD000000000000011;
  *(&v59 + 1) = 0x80000002278D3110;
  sub_2278C7BF0();
  if (!*(a1 + 16))
  {
    goto LABEL_43;
  }

  v24 = sub_2278AE394(v60);
  if ((v25 & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_227802850(*(a1 + 56) + 32 * v24, &v61);
  sub_227815D88(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  if (v59 == 1)
  {
    v26 = 0;
    goto LABEL_36;
  }

  if (v59 != 2)
  {
LABEL_44:

    goto LABEL_45;
  }

  v26 = 1;
LABEL_36:
  *&v59 = 0x696669746E656469;
  *(&v59 + 1) = 0xEA00000000007265;
  sub_2278C7BF0();
  if (!*(a1 + 16) || (v27 = sub_2278AE394(v60), (v28 & 1) == 0))
  {
LABEL_43:

    sub_227815D88(v60);
LABEL_45:
    sub_2278B00FC();
    swift_allocError();
    swift_willThrow();
    return (*(v8 + 8))(v10, v7);
  }

  sub_227802850(*(a1 + 56) + 32 * v27, &v61);
  sub_227815D88(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v54 = *(&v59 + 1);
  v55 = v59;
  *a2 = v63;
  *(a2 + 8) = v13;
  v29 = *(&v58 + 1);
  *(a2 + 16) = v58;
  *(a2 + 24) = v29;
  v30 = *(&v57 + 1);
  *(a2 + 32) = v57;
  *(a2 + 40) = v30;
  v31 = type metadata accessor for NotificationRequest(0);
  (*(v8 + 16))(a2 + v31[8], v10, v7);
  v32 = (a2 + v31[9]);
  v33 = v54;
  *v32 = v55;
  v32[1] = v33;
  *(a2 + v31[10]) = v26;
  v61 = 0x656C746974;
  v62 = 0xE500000000000000;
  sub_2278C7BF0();
  if (*(a1 + 16) && (v34 = sub_2278AE394(v60), (v35 & 1) != 0))
  {
    sub_227802850(*(a1 + 56) + 32 * v34, &v61);
    sub_227815D88(v60);
    v36 = swift_dynamicCast();
    v38 = *(&v59 + 1);
    v37 = v59;
    if (!v36)
    {
      v37 = 0;
      v38 = 0;
    }
  }

  else
  {
    sub_227815D88(v60);
    v37 = 0;
    v38 = 0;
  }

  v39 = (a2 + v31[11]);
  *v39 = v37;
  v39[1] = v38;
  *(a2 + 48) = v56;
  v61 = 0x6D65686361747461;
  v62 = 0xEF68746150746E65;
  sub_2278C7BF0();
  if (*(a1 + 16) && (v40 = sub_2278AE394(v60), (v41 & 1) != 0))
  {
    sub_227802850(*(a1 + 56) + 32 * v40, &v61);
    sub_227815D88(v60);
    v42 = swift_dynamicCast();
    v44 = *(&v59 + 1);
    v43 = v59;
    if (!v42)
    {
      v43 = 0;
      v44 = 0;
    }
  }

  else
  {
    sub_227815D88(v60);
    v43 = 0;
    v44 = 0;
  }

  v45 = (a2 + v31[13]);
  *v45 = v43;
  v45[1] = v44;
  *&v59 = 0x6F666E4972657375;
  *(&v59 + 1) = 0xE800000000000000;
  sub_2278C7BF0();
  if (!*(a1 + 16) || (v46 = sub_2278AE394(v60), (v47 & 1) == 0))
  {
    sub_227815D88(v60);
    goto LABEL_57;
  }

  sub_227802850(*(a1 + 56) + 32 * v46, &v61);
  sub_227815D88(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    v48 = xmmword_2278CA1C0;
    goto LABEL_58;
  }

  v48 = v59;
LABEL_58:
  *(a2 + v31[12]) = v48;
  *&v59 = 0x646E756F73;
  *(&v59 + 1) = 0xE500000000000000;
  sub_2278C7BF0();
  if (!*(a1 + 16) || (v49 = sub_2278AE394(v60), (v50 & 1) == 0))
  {

    sub_227815D88(v60);
    goto LABEL_64;
  }

  sub_227802850(*(a1 + 56) + 32 * v49, &v61);
  sub_227815D88(v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_64:
    result = (*(v8 + 8))(v10, v7);
    goto LABEL_65;
  }

  v51 = sub_2278C7D70();

  result = (*(v8 + 8))(v10, v7);
  if (v51)
  {
LABEL_65:
    v52 = 1;
    goto LABEL_66;
  }

  v52 = 0;
LABEL_66:
  *(a2 + v31[14]) = v52;
  return result;
}

uint64_t sub_2278ADFE4(uint64_t a1)
{
  sub_2278C7730();
  sub_2278C7730();
  sub_2278C7730();
  MEMORY[0x22AA9DDE0](*(v1 + 48) + 1);
  v2 = type metadata accessor for NotificationRequest(0);
  sub_2278C6820();
  sub_2278AE2D4(&qword_27D7D6658, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2278C7690();
  sub_2278C7730();
  if (*(v1 + v2[10]))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x22AA9DDE0](v3);
  if (*(v1 + v2[11] + 8))
  {
    sub_2278C7E80();
    sub_2278C7730();
  }

  else
  {
    sub_2278C7E80();
  }

  if (*(v1 + v2[12] + 8) >> 60 == 15)
  {
    sub_2278C7E80();
  }

  else
  {
    sub_2278C7E80();
    sub_2278C6680();
  }

  if (*(v1 + v2[13] + 8))
  {
    sub_2278C7E80();
    sub_2278C7730();
  }

  else
  {
    sub_2278C7E80();
  }

  if (*(v1 + v2[14]) == 1)
  {
    return sub_2278C7E80();
  }

  sub_2278C7E80();

  return sub_2278C7730();
}

uint64_t sub_2278AE208()
{
  sub_2278C7E60();
  sub_2278ADFE4(v1);
  return sub_2278C7E90();
}

uint64_t sub_2278AE24C(uint64_t a1)
{
  sub_2278C7E60();
  sub_2278ADFE4(v2);
  return sub_2278C7E90();
}

uint64_t sub_2278AE2D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2278AE31C(uint64_t a1, uint64_t a2)
{
  sub_2278C7E60();
  sub_2278C7730();
  v4 = sub_2278C7E90();

  return sub_2278AE4D8(a1, a2, v4);
}

unint64_t sub_2278AE394(uint64_t a1)
{
  v2 = sub_2278C7BD0();

  return sub_2278AE590(a1, v2);
}

unint64_t sub_2278AE3D8(uint64_t a1, uint64_t a2)
{
  sub_2278C7E60();
  sub_2278C7E80();
  if (a2)
  {
    sub_2278C7730();
  }

  v4 = sub_2278C7E90();

  return sub_2278AE658(a1, a2, v4);
}

unint64_t sub_2278AE46C(uint64_t a1)
{
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](a1);
  v2 = sub_2278C7E90();

  return sub_2278AE724(a1, v2);
}

unint64_t sub_2278AE4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2278C7DC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2278AE590(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2278AFFF0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA9DB50](v9, a1);
      sub_227815D88(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2278AE658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2278C7DC0() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2278AE724(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2278AE790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60E0, &qword_2278CE840);
  v35 = v4;
  result = sub_2278C7D40();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2278C7E60();
      sub_2278C7730();
      result = sub_2278C7E90();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2278AEA34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NotificationRequest(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6668, &qword_2278CE828);
  v40 = v4;
  result = sub_2278C7D40();
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
        sub_227810264(v28, v41);
      }

      else
      {
        sub_2278101A4(v28, v41);
      }

      sub_2278C7E60();
      sub_2278C7730();
      result = sub_2278C7E90();
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
      result = sub_227810264(v41, *(v9 + 56) + v27 * v17);
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

uint64_t sub_2278AED70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6678, qword_2278CE848);
  v34 = v4;
  result = sub_2278C7D40();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2278C7E60();
      sub_2278C7730();
      result = sub_2278C7E90();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2278AF010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6660, &qword_2278CE820);
  result = sub_2278C7D40();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2278A7620((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2278AFFF0(v23, &v36);
        sub_227802850(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_2278C7BD0();
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
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2278A7620(v35, (*(v7 + 56) + 32 * v15));
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_2278AF2C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60E0, &qword_2278CE840);
  v2 = *v0;
  v3 = sub_2278C7D30();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_2278AF434()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationRequest(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6668, &qword_2278CE828);
  v4 = *v0;
  v5 = sub_2278C7D30();
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
        sub_2278101A4(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_227810264(v25, *(v27 + 56) + v26);
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

void *sub_2278AF664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6678, qword_2278CE848);
  v2 = *v0;
  v3 = sub_2278C7D30();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_2278AF7CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6660, &qword_2278CE820);
  v2 = *v0;
  v3 = sub_2278C7D30();
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_2278AFFF0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_227802850(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2278A7620(v22, (*(v4 + 56) + v17));
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

uint64_t sub_2278AF970(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2278AE31C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2278AF434();
      goto LABEL_7;
    }

    sub_2278AEA34(v15, a4 & 1);
    v22 = sub_2278AE31C(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2278C7E00();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for NotificationRequest(0) - 8) + 72) * v12;

    return sub_2278B004C(a1, v20);
  }

LABEL_13:
  sub_2278AFC20(v12, a2, a3, a1, v18);
}

_OWORD *sub_2278AFAD4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2278AE394(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2278AF7CC();
      goto LABEL_7;
    }

    sub_2278AF010(v13, a3 & 1);
    v19 = sub_2278AE394(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2278AFFF0(a2, v21);
      return sub_2278AFCB8(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_2278C7E00();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_2278A7620(a1, v17);
}

uint64_t sub_2278AFC20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for NotificationRequest(0);
  result = sub_227810264(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

_OWORD *sub_2278AFCB8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2278A7620(a3, (a4[7] + 32 * a1));
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

BOOL sub_2278AFD34(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_2278C7DC0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_2278C7DC0() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_2278C7DC0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v6 = type metadata accessor for NotificationRequest(0);
  if ((sub_2278C67F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v6[9];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_2278C7DC0() & 1) == 0 || *(a1 + v6[10]) != *(a2 + v6[10]))
  {
    return 0;
  }

  v12 = v6[11];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (sub_2278C7DC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = v6[12];
  v19 = *(a1 + v17);
  v18 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v22 = *v20;
  v21 = v20[1];
  if (v18 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      sub_2278AFFDC(v19, v18);
      sub_2278AFFDC(v22, v21);
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (v21 >> 60 == 15)
  {
LABEL_33:
    sub_2278AFFDC(v19, v18);
    sub_2278AFFDC(v22, v21);
    sub_22785267C(v19, v18);
    v23 = v22;
    v24 = v21;
LABEL_34:
    sub_22785267C(v23, v24);
    return 0;
  }

  sub_2278AFFDC(v19, v18);
  sub_2278AFFDC(v22, v21);
  v26 = sub_2278A71EC(v19, v18, v22, v21);
  sub_22785267C(v22, v21);
  if (!v26)
  {
    v23 = v19;
    v24 = v18;
    goto LABEL_34;
  }

LABEL_37:
  sub_22785267C(v19, v18);
  v27 = v6[13];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_2278C7DC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v6[14];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33)
  {
    return (v34 & 1) != 0;
  }

  return (v34 & 1) == 0;
}

uint64_t sub_2278AFFDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_227837280(result, a2);
  }

  return result;
}

uint64_t sub_2278B004C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2278B00B0()
{
  result = qword_27D7D6670;
  if (!qword_27D7D6670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7D6670);
  }

  return result;
}

unint64_t sub_2278B00FC()
{
  result = qword_27D7D6680;
  if (!qword_27D7D6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6680);
  }

  return result;
}

id sub_2278B0188()
{
  result = sub_2278B022C();
  if (result)
  {
    v1 = result;
    v2 = [result getPairedDevices];

    if (v2)
    {
      sub_2278B0388();
      v3 = sub_2278C77A0();

      if (v3 >> 62)
      {
        v4 = sub_2278C7B80();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v4 != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2278B022C()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    sub_2278C73A0();
    v5 = sub_2278C7590();
    v6 = sub_2278C7950();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2277F7000, v5, v6, "Failed to get device registry", v7, 2u);
      MEMORY[0x22AA9E860](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

unint64_t sub_2278B0388()
{
  result = qword_2813B9A88;
  if (!qword_2813B9A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9A88);
  }

  return result;
}

uint64_t FitnessPlusPlanDataProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2278C6C90();
  v16 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2278C6BB0();
  sub_2278002AC();
  sub_2278C7A60();
  v7 = *MEMORY[0x277D4F368];
  v15 = *(v3 + 104);
  v15(v5, v7, v2);
  v8 = sub_2278C6C80();
  v18 = v8;
  v19 = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_2278C6C70();
  sub_2278C6CC0();
  swift_allocObject();
  sub_2278C6CB0();
  sub_2278C7A60();
  v9 = sub_2278C6BA0();
  v10 = MEMORY[0x277D4DB98];
  a1[3] = v6;
  a1[4] = v10;
  *a1 = v9;
  v11 = sub_2278C6BF0();
  sub_2278C7A60();
  v15(v5, v7, v16);
  v18 = v8;
  v19 = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_2278C6C70();
  swift_allocObject();
  sub_2278C6CB0();
  sub_2278C7A60();
  result = sub_2278C6BE0();
  v13 = MEMORY[0x277D4DD58];
  a1[8] = v11;
  a1[9] = v13;
  a1[5] = result;
  return result;
}

uint64_t FitnessPlusPlanDataProvider.notificationSchedule(forDate:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2278C6960();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6688, &qword_2278CE8C8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6690, &unk_2278CE8D0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B076C, 0, 0);
}

uint64_t sub_2278B076C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2278B0828;
  v5 = v0[3];

  return MEMORY[0x2821ADF50](v5, v2, v3);
}

uint64_t sub_2278B0828(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2278B09B0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2278B09B0()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  v9 = swift_dynamicCast();
  v10 = *(v7 + 56);
  v10(v3, v9 ^ 1u, 1, v6);
  (*(v7 + 104))(v2, *MEMORY[0x277D511A8], v6);
  v10(v2, 0, 1, v6);
  v11 = *(v5 + 48);
  sub_227850448(v3, v4, &qword_27D7D6690, &unk_2278CE8D0);
  sub_227850448(v2, v4 + v11, &qword_27D7D6690, &unk_2278CE8D0);
  v12 = *(v7 + 48);
  if (v12(v4, 1, v6) == 1)
  {
    v13 = *(v0 + 40);
    sub_227802FC4(*(v0 + 88), &qword_27D7D6690, &unk_2278CE8D0);
    if (v12(v4 + v11, 1, v13) == 1)
    {
      v14 = *(v0 + 96);
      sub_227802FC4(*(v0 + 72), &qword_27D7D6690, &unk_2278CE8D0);
      sub_227802FC4(v14, &qword_27D7D6690, &unk_2278CE8D0);
LABEL_11:

      v30 = *(v0 + 8);
      v31 = MEMORY[0x277D84F90];

      return v30(v31);
    }

    goto LABEL_6;
  }

  v15 = *(v0 + 40);
  sub_227850448(*(v0 + 72), *(v0 + 80), &qword_27D7D6690, &unk_2278CE8D0);
  if (v12(v4 + v11, 1, v15) == 1)
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    sub_227802FC4(*(v0 + 88), &qword_27D7D6690, &unk_2278CE8D0);
    (*(v18 + 8))(v16, v17);
LABEL_6:
    v19 = *(v0 + 96);
    sub_227802FC4(*(v0 + 72), &qword_27D7D6688, &qword_2278CE8C8);
    sub_227802FC4(v19, &qword_27D7D6690, &unk_2278CE8D0);
    goto LABEL_7;
  }

  v22 = *(v0 + 88);
  v32 = *(v0 + 96);
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 40);
  (*(v26 + 32))(v25, v4 + v11, v27);
  sub_2278B0DD8();
  v28 = sub_2278C76E0();
  v29 = *(v26 + 8);
  v29(v25, v27);
  sub_227802FC4(v22, &qword_27D7D6690, &unk_2278CE8D0);
  v29(v23, v27);
  sub_227802FC4(v24, &qword_27D7D6690, &unk_2278CE8D0);
  sub_227802FC4(v32, &qword_27D7D6690, &unk_2278CE8D0);
  if (v28)
  {
    goto LABEL_11;
  }

LABEL_7:
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_2278B0DD8()
{
  result = qword_27D7D6698;
  if (!qword_27D7D6698)
  {
    sub_2278C6960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6698);
  }

  return result;
}

uint64_t FitnessPlusPlanDataProvider.isUserSubscribedToFitnessPlus()()
{
  v1[2] = v0;
  v2 = sub_2278C6820();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66A0, &qword_2278CE8E8);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_2278C6980();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_2278C69F0();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B1010, 0, 0);
}

uint64_t sub_2278B1010()
{
  v1 = v0[8];
  v2 = v0[2];
  sub_2278C69E0();
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  sub_2278C6C00();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = "FitnessCoachingServices/FitnessPlusPlanDataProvider.swift";
  *(v3 + 24) = 57;
  *(v3 + 32) = 2;
  *(v3 + 40) = 46;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_2278B116C;
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x80000002278D2430, sub_2278B2BD0, v3, v6);
}

uint64_t sub_2278B116C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v3 = sub_2278B13E4;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v6 = v2[6];

    (*(v5 + 8))(v4, v6);
    v3 = sub_2278B12C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278B12C4(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[3];
  sub_2278C6810();
  v13 = sub_2278C6970();
  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v4, v6);
  (*(v3 + 8))(v2, v5);

  v11 = v1[1];

  return v11(v13 & 1);
}

uint64_t sub_2278B13E4()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  *(v0 + 144) = 4;
  sub_2278B2BE0();
  v1 = sub_2278C69D0();
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  if (v1)
  {
    (*(v4 + 8))(*(v0 + 112), *(v0 + 96));
  }

  else
  {
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t FitnessPlusPlanDataProvider.activeWorkoutPlan()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2278C6960();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6688, &qword_2278CE8C8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6690, &unk_2278CE8D0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B16A0, 0, 0);
}

uint64_t sub_2278B16A0()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2278B175C;
  v5 = v0[3];

  return MEMORY[0x2821ADE88](v5, v2, v3);
}

uint64_t sub_2278B175C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2278B1948;
  }

  else
  {
    v2 = sub_2278B1870;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2278B1870()
{
  v1 = *(v0 + 24);
  v2 = sub_2278C6940();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2278B1948()
{
  v1 = v0[14];
  v0[2] = v1;
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  v9 = swift_dynamicCast();
  v10 = *(v7 + 56);
  v10(v3, v9 ^ 1u, 1, v6);
  (*(v7 + 104))(v2, *MEMORY[0x277D511A8], v6);
  v10(v2, 0, 1, v6);
  v11 = *(v5 + 48);
  sub_227850448(v3, v4, &qword_27D7D6690, &unk_2278CE8D0);
  sub_227850448(v2, v4 + v11, &qword_27D7D6690, &unk_2278CE8D0);
  v12 = *(v7 + 48);
  if (v12(v4, 1, v6) != 1)
  {
    v15 = v0[5];
    sub_227850448(v0[9], v0[10], &qword_27D7D6690, &unk_2278CE8D0);
    if (v12(v4 + v11, 1, v15) != 1)
    {
      v21 = v0[11];
      v33 = v0[12];
      v23 = v0[9];
      v22 = v0[10];
      v25 = v0[6];
      v24 = v0[7];
      v26 = v0[5];
      (*(v25 + 32))(v24, v4 + v11, v26);
      sub_2278B0DD8();
      v27 = sub_2278C76E0();
      v28 = *(v25 + 8);
      v28(v24, v26);
      sub_227802FC4(v21, &qword_27D7D6690, &unk_2278CE8D0);
      v28(v22, v26);
      sub_227802FC4(v23, &qword_27D7D6690, &unk_2278CE8D0);
      sub_227802FC4(v33, &qword_27D7D6690, &unk_2278CE8D0);
      if (v27)
      {
        goto LABEL_9;
      }

LABEL_7:
      swift_willThrow();

      v20 = v0[1];
      goto LABEL_10;
    }

    v16 = v0[10];
    v17 = v0[5];
    v18 = v0[6];
    sub_227802FC4(v0[11], &qword_27D7D6690, &unk_2278CE8D0);
    (*(v18 + 8))(v16, v17);
LABEL_6:
    v19 = v0[12];
    sub_227802FC4(v0[9], &qword_27D7D6688, &qword_2278CE8C8);
    sub_227802FC4(v19, &qword_27D7D6690, &unk_2278CE8D0);
    goto LABEL_7;
  }

  v13 = v0[5];
  sub_227802FC4(v0[11], &qword_27D7D6690, &unk_2278CE8D0);
  if (v12(v4 + v11, 1, v13) != 1)
  {
    goto LABEL_6;
  }

  v14 = v0[12];
  sub_227802FC4(v0[9], &qword_27D7D6690, &unk_2278CE8D0);
  sub_227802FC4(v14, &qword_27D7D6690, &unk_2278CE8D0);
LABEL_9:
  v29 = v0[14];
  v30 = v0[3];
  v31 = sub_2278C6940();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);

  v20 = v0[1];
LABEL_10:

  return v20();
}

uint64_t sub_2278B1D7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22782F87C;

  return FitnessPlusPlanDataProvider.notificationSchedule(forDate:)(a1);
}

uint64_t sub_2278B1E10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2278B1E9C;

  return FitnessPlusPlanDataProvider.isUserSubscribedToFitnessPlus()();
}

uint64_t sub_2278B1E9C(char a1)
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

uint64_t sub_2278B1FA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2278003CC;

  return FitnessPlusPlanDataProvider.activeWorkoutPlan()(a1);
}

uint64_t sub_2278B203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B0, &unk_2278CE9C0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_2278C75A0();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2278B2FB0(0x65uLL);
  sub_2278C6CA0();
  v17 = sub_2278C7590();
  v40 = sub_2278C7970();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_2278C7C60();
    v38 = v8;
    v22 = sub_2278021B4(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_2277F7000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9E860](v29, -1, -1);
    MEMORY[0x22AA9E860](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v33 = sub_2278C6A60();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2278B398C;
  *(v34 + 24) = v32;

  v33(sub_2278B3A64, v34);
}

uint64_t sub_2278B2418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B8, &unk_2278CE9D0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_2278C75A0();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2278B2FB0(0x65uLL);
  sub_2278C6CA0();
  v17 = sub_2278C7590();
  v40 = sub_2278C7970();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_2278C7C60();
    v38 = v8;
    v22 = sub_2278021B4(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_2277F7000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9E860](v29, -1, -1);
    MEMORY[0x22AA9E860](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6418, &qword_2278CD3C0);
  v33 = sub_2278C6A60();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2278B3AAC;
  *(v34 + 24) = v32;

  v33(sub_2278B3C4C, v34);
}

uint64_t sub_2278B27F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66C8, &qword_2278CE9E8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_2278C75A0();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2278B2FB0(0x65uLL);
  sub_2278C6CA0();
  v17 = sub_2278C7590();
  v40 = sub_2278C7970();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_2278C7C60();
    v38 = v8;
    v22 = sub_2278021B4(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_2277F7000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9E860](v29, -1, -1);
    MEMORY[0x22AA9E860](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66A0, &qword_2278CE8E8);
  v33 = sub_2278C6A60();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2278B3B58;
  *(v34 + 24) = v32;

  v33(sub_2278B3C18, v34);
}

unint64_t sub_2278B2BE0()
{
  result = qword_27D7D66A8;
  if (!qword_27D7D66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D66A8);
  }

  return result;
}

uint64_t dispatch thunk of FitnessPlusPlanDataProviding.notificationSchedule(forDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22780523C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FitnessPlusPlanDataProviding.isUserSubscribedToFitnessPlus()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22780523C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of FitnessPlusPlanDataProviding.activeWorkoutPlan()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

unint64_t sub_2278B2FB0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AA9E880](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AA9E880](&v3, 8);
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

uint64_t sub_2278B303C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v29 = a8;
  v28 = a7;
  v30 = a3;
  v31 = a1;
  v11 = sub_2278C75A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C6CA0();
  v15 = sub_2278C7590();
  v16 = sub_2278C7970();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a9;
    v20 = v19;
    v32[0] = v19;
    *v18 = 134218498;
    *(v18 + 4) = a4;
    *(v18 + 12) = 2080;
    v21 = sub_2278C7C60();
    v23 = sub_2278021B4(v21, v22, v32);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_2277F7000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA9E860](v20, -1, -1);
    v24 = v18;
    a2 = v27[0];
    MEMORY[0x22AA9E860](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v32[0] = v31;
  if (v30)
  {
    v25 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B0, &unk_2278CE9C0);
    return sub_2278C7800();
  }

  else
  {
    v32[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B0, &unk_2278CE9C0);
    return sub_2278C7810();
  }
}

uint64_t sub_2278B32A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_2278C69B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66C0, &qword_2278CE9E0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_2278C75A0();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C6CA0();
  v19 = sub_2278C7590();
  v20 = sub_2278C7970();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_2278C7C60();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_2278021B4(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_2277F7000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9E860](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9E860](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_227850448(a1, v15, &qword_27D7D66C0, &qword_2278CE9E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B8, &unk_2278CE9D0);
    return sub_2278C7800();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B8, &unk_2278CE9D0);
    return sub_2278C7810();
  }
}

uint64_t sub_2278B3618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_2278C6980();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66D0, qword_2278CE9F0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_2278C75A0();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C6CA0();
  v19 = sub_2278C7590();
  v20 = sub_2278C7970();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_2278C7C60();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_2278021B4(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_2277F7000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9E860](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9E860](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_227850448(a1, v15, &qword_27D7D66D0, qword_2278CE9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66C8, &qword_2278CE9E8);
    return sub_2278C7800();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66C8, &qword_2278CE9E8);
    return sub_2278C7810();
  }
}

__int128 *sub_2278B3A1C(__int128 *result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

__int128 *sub_2278B3A64(__int128 *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2278B3B80(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_2278B3C1C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2278B3C50(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_2278B3D68(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return v7(a1, a2);
}

uint64_t sub_2278B3E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_2278B3FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

void sub_2278B40D0(uint64_t a1)
{
  v3 = type metadata accessor for NotificationRequest(0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v24[1] = v1;
    v31 = MEMORY[0x277D84F90];
    sub_2278B4820(0, v5, 0);
    v6 = v31;
    v7 = a1 + 64;
    v8 = sub_2278C7B00();
    v9 = 0;
    v25 = a1 + 72;
    v26 = v5;
    v27 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      v30 = *(a1 + 36);
      v12 = v28;
      sub_2278101A4(*(a1 + 56) + *(v29 + 72) * v8, v28);
      v13 = sub_2278ACE90();
      sub_227810208(v12);
      v31 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      v16 = v6;
      if (v15 >= v14 >> 1)
      {
        sub_2278B4820((v14 > 1), v15 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = v15 + 1;
      *(v16 + 8 * v15 + 32) = v13;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_22;
      }

      v7 = v27;
      v17 = *(v27 + 8 * v11);
      if ((v17 & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      v6 = v16;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v18 = v17 & (-2 << (v8 & 0x3F));
      if (v18)
      {
        v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (v25 + 8 * v11);
        while (v20 < (v10 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_2278B4F84(v8, v30, 0);
            v10 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_2278B4F84(v8, v30, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_2278B4388()
{
  swift_beginAccess();

  sub_2278B40D0(v0);

  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_2278C76F0();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D8, &qword_2278CE440);
  v4 = sub_2278C7790();

  sub_2278C72B0();
  v5 = sub_2278C76F0();

  [v3 setObject:v4 forKey:v5];
}

uint64_t sub_2278B44C0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2278B451C()
{
  v1[5] = v0;
  v2 = sub_2278C75A0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B45DC, v0, 0);
}

uint64_t sub_2278B45DC()
{
  v20 = v0;
  v1 = v0[5];
  sub_2278B4F90();
  v3 = v2;
  swift_beginAccess();
  *(v1 + 112) = v3;

  sub_2278C73A0();

  v4 = sub_2278C7590();
  v5 = sub_2278C7970();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[6];
  if (v6)
  {
    v18 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    type metadata accessor for NotificationRequest(0);
    v12 = sub_2278C7670();
    v14 = v13;

    v15 = sub_2278021B4(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2277F7000, v4, v5, "Loaded stored notification requests %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);

    (*(v7 + 8))(v18, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v16 = v0[1];

  return v16();
}

char *sub_2278B47E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2278B492C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2278B4800(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2278B4A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2278B4820(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2278B4B40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2278B4840(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2278B4DA8(a1, a2, a3, *v3, &qword_27D7D65B0, &qword_2278CE250, type metadata accessor for NotificationRequest);
  *v3 = result;
  return result;
}

char *sub_2278B4884(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2278B4C74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2278B48A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2278B4DA8(a1, a2, a3, *v3, &qword_27D7D6080, &qword_2278C96A0, MEMORY[0x277D09AE8]);
  *v3 = result;
  return result;
}

void *sub_2278B48E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2278B4DA8(a1, a2, a3, *v3, &qword_27D7D66E8, &qword_2278CEAF0, MEMORY[0x277D53210]);
  *v3 = result;
  return result;
}

char *sub_2278B492C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66F0, &unk_2278CEAF8);
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

char *sub_2278B4A3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66E0, &unk_2278CEAE0);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2278B4B40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66D8, &unk_2278CEAD0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D8, &qword_2278CE440);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2278B4C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6088, &qword_2278C96A8);
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

void *sub_2278B4DA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double sub_2278B4F84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_2278B4F90()
{
  v48 = sub_2278C75A0();
  v0 = *(v48 - 8);
  v1 = MEMORY[0x28223BE20](v48);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v44 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v47 = type metadata accessor for NotificationRequest(0);
  v8 = *(v47 - 8);
  v9 = MEMORY[0x28223BE20](v47);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v35 - v11;
  sub_2278C72B0();
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v13 = sub_2278C76F0();
  v14 = [v12 initWithSuiteName_];

  if (!v14)
  {
    v14 = [objc_opt_self() standardUserDefaults];
  }

  v15 = sub_2278C76F0();

  v16 = [v14 arrayForKey_];

  if (v16 && (v17 = sub_2278C77A0(), v16, v18 = sub_2278860B8(v17), , v18))
  {
    v39 = sub_2278C3EE0(MEMORY[0x277D84F90]);
    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = (v8 + 56);
      v45 = v0 + 8;
      v46 = v18 + 32;
      v37 = v20 - 1;
      *&v19 = 136315138;
      v41 = v19;
      v42 = v20;
      v43 = v18;
      while (v21 < *(v18 + 16))
      {
        v23 = *(v46 + 8 * v21);
        swift_bridgeObjectRetain_n();
        sub_2278AD554(v23, v7);
        v24 = v47;
        (*v22)(v7, 0, 1, v47);
        v25 = v38;
        sub_227810264(v7, v38);
        v26 = (v25 + *(v24 + 36));
        v27 = v26[1];
        v36 = *v26;
        sub_2278101A4(v25, v40);

        v28 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v28;
        sub_2278AF970(v40, v36, v27, isUniquelyReferenced_nonNull_native);

        v39 = v49;
        v30 = v25;
        v18 = v43;
        sub_227810208(v30);

        if (v37 == v21++)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
    sub_2278C73A0();
    v32 = sub_2278C7590();
    v33 = sub_2278C7970();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2277F7000, v32, v33, "No stored requests to load", v34, 2u);
      MEMORY[0x22AA9E860](v34, -1, -1);
    }

    (*(v0 + 8))(v3, v48);
    sub_2278C3EE0(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2278B55AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2278B5614()
{
  result = sub_2278C76F0();
  qword_2813BC398 = result;
  return result;
}

uint64_t sub_2278B5654()
{
  result = *MEMORY[0x277D09538];
  if (*MEMORY[0x277D09538])
  {
    result = sub_2278C7750();
    qword_2813BC378 = result;
    unk_2813BC380 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278B568C()
{
  result = sub_2278C7700();
  qword_2813BC3A0 = result;
  *algn_2813BC3A8 = v1;
  return result;
}

uint64_t sub_2278B56BC()
{
  result = sub_2278C7700();
  qword_2813BC388 = result;
  unk_2813BC390 = v1;
  return result;
}

uint64_t sub_2278B56EC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278B5804;

  return v7(a1, a2);
}

uint64_t sub_2278B5804(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_2278B5934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = sub_2278C6920();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2278C6910();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2278C6820();
  v11 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 displayCount];
  if (v14 <= 2)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v20 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    return v20(a2);
  }

  else
  {
    v15 = v14;
    v16 = [a1 lastDisplayDate];
    sub_2278C6800();

    v17 = *(v8 + 104);
    v18 = (v11 + 8);
    if (v15 == 5 || v15 == 4)
    {
      v22 = v24;
      v17(v10, *MEMORY[0x277CC9998], v24);
      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      sub_227804920();
    }

    else
    {
      if (v15 == 3)
      {
        v19 = MEMORY[0x277CC9998];
      }

      else
      {
        v19 = MEMORY[0x277CC9988];
      }

      v22 = v24;
      v17(v10, *v19, v24);
      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      sub_227804920();
    }

    sub_2278C6750();
    (*(v5 + 8))(v7, v26);
    (*(v8 + 8))(v10, v22);
    return (*v18)(v13, v25);
  }
}

uint64_t sub_2278B5CD8()
{
  v1[3] = v0;
  v2 = sub_2278C7160();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_2278C65D0();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_2278C6910();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v6 = sub_2278C6820();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = sub_2278C6920();
  v1[23] = v7;
  v1[24] = *(v7 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = sub_2278C75A0();
  v1[28] = v8;
  v1[29] = *(v8 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B602C, 0, 0);
}

uint64_t sub_2278B602C(uint64_t a1)
{
  v2 = v1[32];
  v4 = v1[28];
  v3 = v1[29];
  v6 = v1[24];
  v5 = v1[25];
  v31 = v1[23];
  v7 = v1[21];
  v8 = v1[18];
  v32 = v1[17];
  v34 = v1[16];
  v36 = v1[15];
  v35 = v1[14];
  v9 = v1[3];
  sub_2278C73A0();
  sub_2278C7580();
  v10 = *(v3 + 8);
  v1[33] = v10;
  v1[34] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);
  __swift_project_boxed_opaque_existential_1((v9 + 40), *(v9 + 64));
  sub_227804920();
  v11 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_2278C68C0();

  __swift_project_boxed_opaque_existential_1((v9 + 40), *(v9 + 64));
  v12 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v12(v7);
  sub_2278C6900();
  sub_2278C66C0();
  v13 = *(v6 + 8);
  v1[35] = v13;
  v1[36] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v5, v31);
  v14 = *(v8 + 8);
  v1[37] = v14;
  v1[38] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v32);
  v15 = *MEMORY[0x277CC9968];
  v33 = *(v36 + 104);
  v33(v34, v15, v35);
  sub_2278C66E0();
  v16 = *(v36 + 8);
  v16(v34, v35);
  v33(v34, v15, v35);
  sub_2278C66E0();
  v16(v34, v35);
  sub_2278C6730();
  sub_2278C6730();
  v17 = [objc_opt_self() sharedBehavior];
  if (!v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v17;
  v20 = [v17 features];

  if (!v20)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x2821603A0](v17, v18);
  }

  v21 = [v20 scheduledGoals];

  if (v21)
  {
    v22 = v1[3];
    v23 = v22[3];
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v25 = swift_task_alloc();
    v1[39] = v25;
    *v25 = v1;
    v25[1] = sub_2278B654C;
    v17 = v23;
    v18 = v24;

    return MEMORY[0x2821603A0](v17, v18);
  }

  v27 = v1[5];
  v26 = v1[6];
  v28 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1[3], *(v1[3] + 24));
  v1[2] = MEMORY[0x277D84F90];
  sub_2278B8850(&qword_2813BC0F8, MEMORY[0x277D09AB8], MEMORY[0x277D09AC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227829300();
  sub_2278C7AF0();
  sub_2278C6FE0();
  (*(v27 + 8))(v26, v28);
  v29 = swift_task_alloc();
  v1[41] = v29;
  *v29 = v1;
  v29[1] = sub_2278B6A58;

  return sub_22785B1C8();
}

uint64_t sub_2278B654C(char a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = sub_2278B7260;
  }

  else
  {
    *(v4 + 352) = a1 & 1;
    v5 = sub_2278B6678;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2278B6678(uint64_t a1)
{
  if (*(v1 + 352) == 1)
  {
    sub_2278C73A0();
    v2 = sub_2278C7590();
    v3 = sub_2278C7970();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 296);
    v27 = *(v1 + 264);
    v24 = *(v1 + 224);
    v6 = *(v1 + 176);
    v28 = *(v1 + 152);
    v29 = *(v1 + 160);
    v7 = *(v1 + 136);
    v8 = *(v1 + 96);
    v25 = *(v1 + 104);
    v26 = *(v1 + 248);
    v10 = *(v1 + 80);
    v9 = *(v1 + 88);
    if (v4)
    {
      v23 = *(v1 + 176);
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2277F7000, v2, v3, "Goal schedules exist, not generating goal recommendation", v11, 2u);
      v12 = v11;
      v6 = v23;
      MEMORY[0x22AA9E860](v12, -1, -1);
    }

    v27(v26, v24);
    v13 = *(v9 + 8);
    v13(v8, v10);
    v13(v25, v10);
    v5(v28, v7);
    v5(v29, v7);
    v5(v6, v7);
    v14 = *(v1 + 280);
    v15 = *(v1 + 216);
    v16 = *(v1 + 184);
    v14(*(v1 + 208), v16);
    v14(v15, v16);

    v17 = *(v1 + 8);

    return v17(0, 1);
  }

  else
  {
    v20 = *(v1 + 40);
    v19 = *(v1 + 48);
    v21 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(*(v1 + 24), *(*(v1 + 24) + 24));
    *(v1 + 16) = MEMORY[0x277D84F90];
    sub_2278B8850(&qword_2813BC0F8, MEMORY[0x277D09AB8], MEMORY[0x277D09AC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
    sub_227829300();
    sub_2278C7AF0();
    sub_2278C6FE0();
    (*(v20 + 8))(v19, v21);
    v22 = swift_task_alloc();
    *(v1 + 328) = v22;
    *v22 = v1;
    v22[1] = sub_2278B6A58;

    return sub_22785B1C8();
  }
}

uint64_t sub_2278B6A58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_2278B7538;
  }

  else
  {
    v4 = sub_2278B6B6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2278B6B6C()
{
  v2 = v0[21].u64[0];
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(v0[13], v0[13], 8uLL);
  sub_2278B7AD0(sub_2278B8830, v3, v2);
  v5 = v4;
  v7 = v6;

  v8 = v0[21].i64[0];
  v70 = v7;
  if (v7)
  {
    v10 = v0[4].i64[0];
    v9 = v0[4].i64[1];
    v11 = v0[3].i64[1];

    v12 = sub_2278C6ED0();
    sub_2278B8850(&qword_27D7D66F8, MEMORY[0x277D099D0], MEMORY[0x277D099D8]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D099C8], v12);
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    sub_2278C73A0();
    v15 = v13;
    v16 = sub_2278C7590();
    v17 = sub_2278C7950();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_2277F7000, v16, v17, "Error creating weekly goal: %@", v18, 0xCu);
      sub_227802FC4(v19, &qword_27D7D64B0, &qword_2278CA010);
      MEMORY[0x22AA9E860](v19, -1, -1);
      MEMORY[0x22AA9E860](v18, -1, -1);
    }

    v22 = v0[18].i64[1];
    v58 = v0[16].i64[1];
    v23 = v0[15].i64[0];
    v24 = v0[14].i64[0];
    v65 = v0[10].i64[0];
    v67 = v0[11].i64[0];
    v25 = v0[8].i64[1];
    v61 = v0[6].i64[1];
    v63 = v0[9].i64[1];
    v26 = v16;
    v28 = v0[5].i64[1];
    v27 = v0[6].i64[0];
    v29 = v0[5].i64[0];

    v58(v23, v24);
    v30 = *(v28 + 8);
    v30(v27, v29);
    v30(v61, v29);
    v22(v63, v25);
    v22(v65, v25);
    v22(v67, v25);
    v68 = 0;
    goto LABEL_32;
  }

  v31 = v8 >> 62;
  if (!(v8 >> 62))
  {
    v32 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32 >= v5)
    {
      goto LABEL_7;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v8 < 0)
  {
    v1 = v0[21].i64[0];
  }

  else
  {
    v1 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_2278C7B80();
  if (result < v5)
  {
    __break(1u);
    return result;
  }

  v32 = result;
  if (sub_2278C7B80() < v5)
  {
    __break(1u);
    goto LABEL_41;
  }

LABEL_7:
  if (v5 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v31)
  {
    v33 = sub_2278C7B80();
  }

  else
  {
    v33 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v33 < v32)
  {
    goto LABEL_43;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((v8 & 0xC000000000000001) == 0 || v5 == v32)
  {

    if (v31)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (v5 >= v32)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_227848DDC();

  v34 = v5;
  do
  {
    v35 = v34 + 1;
    sub_2278C7C70();
    v34 = v35;
  }

  while (v32 != v35);

  if (v31)
  {
LABEL_19:
    v8 = sub_2278C7D20();
    v1 = v36;
    v5 = v37;
    v32 = v38;

    if (v32)
    {
      goto LABEL_20;
    }

LABEL_28:
    swift_unknownObjectRetain();
LABEL_29:
    sub_227848CF8(v8, v1, v5, v32);
LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

LABEL_27:
  v8 &= 0xFFFFFFFFFFFFFF8uLL;
  v1 = v8 + 32;
  v32 = (2 * v32) | 1;
  if ((v32 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  sub_2278C7DD0();
  swift_unknownObjectRetain_n();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    swift_unknownObjectRelease();
    v39 = MEMORY[0x277D84F90];
  }

  v40 = *(v39 + 16);

  if (__OFSUB__(v32 >> 1, v5))
  {
    goto LABEL_46;
  }

  if (v40 != (v32 >> 1) - v5)
  {
LABEL_47:
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v41 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v41)
  {
    goto LABEL_30;
  }

LABEL_31:
  v42 = v0[18].i64[1];
  v66 = v0[10].i64[0];
  v69 = v0[11].i64[0];
  v43 = v0[8].i64[1];
  v62 = v0[6].i64[1];
  v64 = v0[9].i64[1];
  v45 = v0[5].i64[0];
  v44 = v0[5].i64[1];
  v59 = v0[4].i64[1];
  v60 = v0[6].i64[0];
  v46 = v0[4].i64[0];
  v57 = v0[3].i64[1];
  v47 = objc_opt_self();
  sub_227848DDC();
  v48 = sub_2278C7790();

  [v47 recommendedNewWeeklyGoalForActivitySummaries_];
  v50 = v49;

  swift_unknownObjectRelease();
  (*(v46 + 8))(v59, v57);
  v51 = *(v44 + 8);
  v51(v60, v45);
  v51(v62, v45);
  v42(v64, v43);
  v42(v66, v43);
  v42(v69, v43);
  v68 = v50;
LABEL_32:
  v52 = v0[17].i64[1];
  v53 = v0[13].i64[1];
  v54 = v0[11].i64[1];
  v52(v0[13].i64[0], v54);
  v52(v53, v54);

  v55 = v0->i64[1];

  return v55(v68, v70 & 1);
}

uint64_t sub_2278B7260(uint64_t a1)
{
  v2 = v1[40];
  sub_2278C73A0();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error creating weekly goal: %@", v6, 0xCu);
    sub_227802FC4(v7, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v7, -1, -1);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  v10 = v1[37];
  v24 = v1[33];
  v11 = v1[30];
  v12 = v1[28];
  v27 = v1[20];
  v28 = v1[22];
  v13 = v1[17];
  v25 = v1[13];
  v26 = v1[19];
  v14 = v4;
  v16 = v1[11];
  v15 = v1[12];
  v17 = v1[10];

  v24(v11, v12);
  v18 = *(v16 + 8);
  v18(v15, v17);
  v18(v25, v17);
  v10(v26, v13);
  v10(v27, v13);
  v10(v28, v13);
  v19 = v1[35];
  v20 = v1[27];
  v21 = v1[23];
  v19(v1[26], v21);
  v19(v20, v21);

  v22 = v1[1];

  return v22(0, 1);
}

uint64_t sub_2278B7538()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[43];
  sub_2278C73A0();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error creating weekly goal: %@", v5, 0xCu);
    sub_227802FC4(v6, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v6, -1, -1);
    MEMORY[0x22AA9E860](v5, -1, -1);
  }

  v9 = v0[37];
  v23 = v0[33];
  v10 = v0[30];
  v11 = v0[28];
  v26 = v0[20];
  v27 = v0[22];
  v12 = v0[17];
  v24 = v0[13];
  v25 = v0[19];
  v13 = v3;
  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];

  v23(v10, v11);
  v17 = *(v15 + 8);
  v17(v14, v16);
  v17(v24, v16);
  v9(v25, v12);
  v9(v26, v12);
  v9(v27, v12);
  v18 = v0[35];
  v19 = v0[27];
  v20 = v0[23];
  v18(v0[26], v20);
  v18(v19, v20);

  v21 = v0[1];

  return v21(0, 1);
}

uint64_t sub_2278B7828(void **a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_2278C65D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_2278C6820();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = sub_2278C68B0();
  v16 = [v14 dateComponentsForCalendar_];

  sub_2278C65B0();
  sub_2278C68D0();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_227802FC4(v9, &qword_27D7D60A8, qword_2278C9730);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (sub_2278C66B0())
    {
      HasNonZeroMoveGoal = FIActivitySummaryHasNonZeroMoveGoal();
    }

    else
    {
      HasNonZeroMoveGoal = 0;
    }

    (*(v11 + 8))(v13, v10);
  }

  return HasNonZeroMoveGoal;
}

void sub_2278B7AD0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_2278C7B80();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AA9DBF0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_2278B7BE4(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_2278C6820();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v88 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v87 = (&v85 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v85 - v14;
  MEMORY[0x28223BE20](v13);
  v93 = &v85 - v16;
  v17 = sub_2278C75A0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v85 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v90 = (&v85 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v85 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v85 - v29;
  sub_2278C73A0();
  sub_2278C7580();
  v31 = *(v18 + 8);
  v94 = v17;
  v95 = v18 + 8;
  result = v31(v30, v17);
  if (a2)
  {
    return 0;
  }

  if (*&a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*&a1 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (a1 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_27;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (a1 == *&a3)
  {
    sub_2278C73A0();
    v33 = sub_2278C7590();
    v34 = sub_2278C7970();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2277F7000, v33, v34, "Goal recommendation matches current goal", v35, 2u);
      MEMORY[0x22AA9E860](v35, -1, -1);
    }

    v31(v21, v94);
    return 0;
  }

  v36 = [*(v4 + 80) currentDisplayContext];
  if (v36)
  {
    v37 = v36;
    v38 = v93;
    sub_2278B5934(v36, v93);
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    v39 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v39(v15);
    v40 = sub_2278C6710();
    v41 = v92;
    v42 = v91 + 8;
    v91 = *(v91 + 8);
    (v91)(v15, v92);
    v43 = (v42 + 8);
    v86 = v37;
    if (v40)
    {
      v44 = v89;
      sub_2278C73A0();
      v45 = v87;
      (*v43)(v87, v38, v41);
      v46 = v37;
      v47 = sub_2278C7590();
      v48 = sub_2278C7970();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v96 = v90;
        *v49 = 136315394;
        sub_2278B8850(&qword_2813BC158, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v88 = v47;
        v51 = sub_2278C7DA0();
        v52 = v41;
        v54 = v53;
        v55 = v45;
        v56 = v52;
        v57 = v91;
        (v91)(v55, v52);
        v58 = sub_2278021B4(v51, v54, &v96);

        *(v49 + 4) = v58;
        *(v49 + 12) = 2112;
        *(v49 + 14) = v46;
        *v50 = v86;
        v59 = v46;
        v60 = v48;
        v61 = v88;
        _os_log_impl(&dword_2277F7000, v88, v60, "Goal recommendation allow, next valid date %s, display context: %@", v49, 0x16u);
        sub_227802FC4(v50, &qword_27D7D64B0, &qword_2278CA010);
        MEMORY[0x22AA9E860](v50, -1, -1);
        v62 = v90;
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x22AA9E860](v62, -1, -1);
        MEMORY[0x22AA9E860](v49, -1, -1);

        v31(v89, v94);
        v57(v93, v56);
      }

      else
      {

        v83 = v91;
        (v91)(v45, v41);
        v31(v44, v94);
        v83(v38, v41);
      }

      return 1;
    }

    v66 = v90;
    sub_2278C73A0();
    v67 = v88;
    (*v43)(v88, v38, v41);
    v68 = v37;
    v69 = sub_2278C7590();
    v70 = sub_2278C7970();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v89 = v31;
      v74 = v73;
      v96 = v73;
      *v71 = 136315394;
      sub_2278B8850(&qword_2813BC158, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v87 = v69;
      v75 = sub_2278C7DA0();
      v77 = v76;
      v78 = v67;
      v79 = v91;
      (v91)(v78, v41);
      v80 = sub_2278021B4(v75, v77, &v96);

      *(v71 + 4) = v80;
      *(v71 + 12) = 2112;
      *(v71 + 14) = v68;
      *v72 = v86;
      v81 = v68;
      v82 = v87;
      _os_log_impl(&dword_2277F7000, v87, v70, "Goal recommendation not allow, next valid date: %s, display context: %@", v71, 0x16u);
      sub_227802FC4(v72, &qword_27D7D64B0, &qword_2278CA010);
      MEMORY[0x22AA9E860](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x22AA9E860](v74, -1, -1);
      MEMORY[0x22AA9E860](v71, -1, -1);

      (v89)(v90, v94);
      v79(v93, v41);
    }

    else
    {

      v84 = v91;
      (v91)(v67, v41);
      v31(v66, v94);
      v84(v38, v41);
    }

    return 0;
  }

  sub_2278C73A0();
  v63 = sub_2278C7590();
  v64 = sub_2278C7970();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2277F7000, v63, v64, "Goal recommendation allow, no display context", v65, 2u);
    MEMORY[0x22AA9E860](v65, -1, -1);
  }

  v31(v24, v94);
  return 1;
}

char *sub_2278B8568()
{
  v1 = v0;
  v2 = sub_2278C6820();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2278C75A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v10 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v10(v5);
  v11 = v1[10];
  v12 = [v11 currentDisplayContext];
  if (!v12)
  {
    v19 = objc_allocWithZone(MEMORY[0x277D09D10]);
    v20 = sub_2278C67D0();
    v18 = [v19 initWithDisplayCount:1 lastDisplayDate:v20];

    [v11 updateDisplayContext_];
    goto LABEL_5;
  }

  v13 = v12;
  result = [v12 displayCount];
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v16 = objc_allocWithZone(MEMORY[0x277D09D10]);
    v17 = sub_2278C67D0();
    v18 = [v16 initWithDisplayCount:v15 lastDisplayDate:v17];

    [v11 updateDisplayContext_];
LABEL_5:

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_2278B8850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Daemon.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Daemon.init()@<X0>(uint64_t *a1@<X8>)
{
  v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  MEMORY[0x28223BE20](v737);
  v736 = (&v696 - v2);
  v732 = sub_2278C6EC0();
  Description = v732[-1].Description;
  MEMORY[0x28223BE20](v732);
  v4 = &v696 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2278C75A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v696 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x80000002278CFF00;
  v9 = a1;
  v728 = 0x80000002278CFF00;
  sub_2278C73A0();
  v10 = sub_2278C7590();
  v11 = sub_2278C7970();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2277F7000, v10, v11, "Starting Up...", v12, 2u);
    MEMORY[0x22AA9E860](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = [objc_allocWithZone(MEMORY[0x277D09C58]) init];
  v9[32] = v13;
  v14 = type metadata accessor for DateProvider(0);
  v9[41] = v14;
  v9[42] = &off_283AE99D8;
  v738 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9 + 38);
  v15 = *MEMORY[0x277D09990];
  v16 = (Description + 104);
  v17 = Description[6].Description;
  v727 = v4;
  v18 = v4;
  v19 = v732;
  v17(v18, v15, v732);
  v725 = v17;
  Description = v16;
  v20 = sub_2278C6820();
  (*(*(v20 - 8) + 56))(v736, 1, 1, v20);
  sub_2278043F4(&qword_2813BC148, &qword_27D7D60A8, qword_2278C9730);
  v723 = v13;
  v21 = v727;
  sub_2278C6E20();
  v17(v21, *MEMORY[0x277D099C0], v19);
  v743 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
  sub_2278043F4(&qword_2813B9BC0, &qword_27D7D60C0, &qword_2278C98B0);
  sub_2278C6E20();
  v9[46] = &type metadata for DuetObserver;
  v9[47] = &off_283AEA5D0;
  v9[36] = &type metadata for BiomeObserver;
  v9[37] = &off_283AEAFC0;
  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  v24 = type metadata accessor for FitnessModeObserver();
  v736 = v24;
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v25 + 112) = v23;
  *(v25 + 120) = 0;
  *(v25 + 124) = 1;
  v9[51] = v24;
  v9[52] = &off_283AEBF40;
  v9[48] = v25;
  v26 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v9[100] = v26;
  v27 = type metadata accessor for LanguageChangeObserver();
  v28 = swift_allocObject();
  v29 = v26;
  swift_defaultActor_initialize();
  *(v28 + 112) = 0;
  *(v28 + 116) = 1;
  v9[134] = v27;
  v9[135] = &off_283AE9750;
  v9[131] = v28;
  v9[215] = &type metadata for LockStateProvider;
  v9[216] = &off_283AE99C0;
  v30 = [objc_allocWithZone(MEMORY[0x277D62528]) init];
  v9[220] = v30;
  v31 = objc_allocWithZone(MEMORY[0x277D095D8]);
  v737 = v30;
  v32 = [v31 initWithHealthStore_];
  v9[221] = v32;
  v33 = objc_allocWithZone(MEMORY[0x277D095B0]);
  v721 = v32;
  v34 = [v33 initWithHealthStore_];
  v9[196] = v34;
  v730 = type metadata accessor for XPCActivityScheduler();
  v35 = swift_allocObject();
  v729 = v35;
  v718 = v34;
  swift_defaultActor_initialize();
  v9[238] = v35;
  v731 = sub_2278C6DF0();
  swift_retain_n();
  v36 = sub_2278C6DE0();
  v9[241] = v36;
  v722 = v36;
  boxed_opaque_existential_1 = v22;
  v9[239] = [v22 defaultCenter];
  v9[240] = &unk_283AE9540;
  v37 = sub_2278C6EF0();
  v38 = MEMORY[0x277D099E0];
  v9[25] = v37;
  v9[26] = v38;
  __swift_allocate_boxed_opaque_existential_1(v9 + 22);
  v726 = v29;
  sub_2278C6EE0();
  PickupDateValidator = type metadata accessor for FirstPickupDateValidator(0);
  v724 = PickupDateValidator;
  v9[72] = PickupDateValidator;
  v9[73] = &off_283AEB958;
  v739 = v9;
  v40 = __swift_allocate_boxed_opaque_existential_1(v9 + 69);
  sub_2278040AC((v9 + 38), v40 + *(PickupDateValidator + 24));
  v41 = v727;
  v42 = v732;
  v43 = v725;
  (v725)(v727, *MEMORY[0x277D099B8], v732);
  *&v743 = 0;
  BYTE8(v743) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6140, &qword_2278CC4D0);
  sub_2278043F4(&qword_2813B9BA0, &qword_27D7D6140, &qword_2278CC4D0);
  sub_2278C6E20();
  (v43)(v41, *MEMORY[0x277D099B0], v42);
  *&v743 = 0;
  BYTE8(v743) = 1;
  sub_2278C6E20();
  v44 = v739;
  sub_2278040AC((v739 + 38), &v743);
  sub_2278040AC((v44 + 43), &v740);
  v45 = boxed_opaque_existential_1;
  v46 = [boxed_opaque_existential_1 defaultCenter];
  LODWORD(PickupDateValidator) = sub_2278C7440();
  v47 = __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  MEMORY[0x28223BE20](v47);
  v49 = &v696 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v49);
  __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  v51 = sub_2278C2D50(v49, v46, PickupDateValidator);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v44[218] = v51;
  v44[219] = &off_283AE9868;
  v52 = objc_allocWithZone(MEMORY[0x277D095B8]);
  v53 = v737;
  v54 = [v52 initWithSleepStore:v737 delegate:v51];

  v44[217] = v54;
  sub_2278040AC((v44 + 33), &v743);
  sub_2278040AC((v44 + 38), &v740);
  sub_2278040AC((v44 + 69), &v833);
  sub_2278040AC((v44 + 43), &v830);
  v720 = v54;
  v717 = [v45 defaultCenter];
  LODWORD(v715) = sub_2278C7440();
  __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  v55 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  v719 = &v696;
  MEMORY[0x28223BE20](v55);
  v57 = &v696 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v57);
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  v716 = &v696;
  MEMORY[0x28223BE20](v59);
  v61 = &v696 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v62 + 16))(v61);
  __swift_mutable_project_boxed_opaque_existential_1(&v830, v831);
  v828 = &type metadata for BiomeObserver;
  v829 = &off_283AEAFC0;
  v63 = v738;
  v825 = v738;
  v826 = &off_283AE99D8;
  v64 = __swift_allocate_boxed_opaque_existential_1(&v824);
  v737 = type metadata accessor for DateProvider;
  sub_2278C4690(v57, v64, type metadata accessor for DateProvider);
  v65 = v724;
  v822 = v724;
  v823 = &off_283AEB958;
  v66 = __swift_allocate_boxed_opaque_existential_1(&v821);
  sub_2278C4690(v61, v66, type metadata accessor for FirstPickupDateValidator);
  v819 = &type metadata for DuetObserver;
  v820 = &off_283AEA5D0;
  v816 = &type metadata for FirstPickupStore;
  v817 = &off_283AE9938;
  PickupObserver = type metadata accessor for FirstPickupObserver(0);
  v67 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v827, &type metadata for BiomeObserver);
  v68 = __swift_mutable_project_boxed_opaque_existential_1(&v824, v825);
  v714 = &v696;
  MEMORY[0x28223BE20](v68);
  v70 = &v696 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v70);
  v72 = __swift_mutable_project_boxed_opaque_existential_1(&v821, v822);
  v713 = &v696;
  MEMORY[0x28223BE20](v72);
  v74 = &v696 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v75 + 16))(v74);
  __swift_mutable_project_boxed_opaque_existential_1(&v818, &type metadata for DuetObserver);
  __swift_mutable_project_boxed_opaque_existential_1(&v815, &type metadata for FirstPickupStore);
  v813 = &type metadata for BiomeObserver;
  v814 = &off_283AEAFC0;
  v810 = v63;
  v811 = &off_283AE99D8;
  v76 = __swift_allocate_boxed_opaque_existential_1(&v809);
  sub_2278C4690(v70, v76, type metadata accessor for DateProvider);
  v807 = v65;
  v808 = &off_283AEB958;
  v77 = __swift_allocate_boxed_opaque_existential_1(&v806);
  sub_2278C4690(v74, v77, type metadata accessor for FirstPickupDateValidator);
  v804 = &type metadata for DuetObserver;
  v805 = &off_283AEA5D0;
  v801 = &type metadata for FirstPickupStore;
  v802 = &off_283AE9938;
  swift_defaultActor_initialize();
  *(v67 + 288) = 0;
  *(v67 + 296) = -1;
  (v725)(v727, *MEMORY[0x277D099A8], v732);
  LOBYTE(v797) = 1;
  sub_2278C6E20();
  sub_2277F9D0C(&v812, v67 + 112);
  sub_2277F9D0C(&v809, v67 + 152);
  sub_2277F9D0C(&v806, v67 + 192);
  sub_2277F9D0C(&v803, v67 + 232);
  *(v67 + 272) = v717;
  *(v67 + 280) = v715;
  type metadata accessor for FirstPickupObserver.State(0);
  swift_storeEnumTagMultiPayload();
  sub_2277F9D0C(&v800, v67 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store);
  __swift_destroy_boxed_opaque_existential_0(&v815);
  __swift_destroy_boxed_opaque_existential_0(&v818);
  __swift_destroy_boxed_opaque_existential_0(&v821);
  __swift_destroy_boxed_opaque_existential_0(&v824);
  __swift_destroy_boxed_opaque_existential_0(&v827);
  __swift_destroy_boxed_opaque_existential_0(&v830);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v78 = v739;
  v739[77] = PickupObserver;
  v78[78] = &off_283AEB078;
  v78[74] = v67;
  sub_2278040AC((v78 + 38), &v743);
  sub_2278040AC((v78 + 74), &v740);
  v79 = [boxed_opaque_existential_1 defaultCenter];
  v80 = __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  MEMORY[0x28223BE20](v80);
  v82 = &v696 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v83 + 16))(v82);
  v84 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  MEMORY[0x28223BE20](v84);
  v86 = (&v696 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v87 + 16))(v86);
  v88 = sub_2278C2FB0(v82, *v86, v720, v79);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  Description = type metadata accessor for UserDayProvider();
  v78[225] = Description;
  v78[226] = &off_283AEB868;
  v78[222] = v88;
  v78[30] = &type metadata for NotificationSettingsProvider;
  v78[31] = &off_283AE9E40;
  v89 = swift_allocObject();
  v78[27] = v89;
  v90 = v78 + 27;
  sub_2278040AC((v78 + 48), v89 + 16);
  *(v89 + 56) = 0xD000000000000019;
  *(v89 + 64) = 0x80000002278D32E0;
  v78[149] = &type metadata for NotificationSettingsProvider;
  v78[150] = &off_283AE9E40;
  v91 = swift_allocObject();
  v78[146] = v91;
  sub_2278040AC((v78 + 48), v91 + 16);
  *(v91 + 56) = 0xD000000000000017;
  *(v91 + 64) = 0x80000002278D3300;
  v78[210] = &type metadata for PrivacySettingsProvider;
  v78[211] = &off_283AEBD28;
  v92 = type metadata accessor for NotificationRequestStore();
  v93 = swift_allocObject();
  swift_defaultActor_initialize();
  v94 = MEMORY[0x277D84F90];
  *(v93 + 112) = sub_2278C3EE0(MEMORY[0x277D84F90]);
  v78[179] = v92;
  v78[180] = &off_283AED820;
  v78[176] = v93;
  sub_2278C7440();
  sub_2278C7460();
  v95 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v96 = sub_2278C76F0();

  v97 = [v95 initWithBundleIdentifier_];

  v78[227] = v97;
  v78[164] = &type metadata for NotificationRequestPublisher;
  v78[165] = &off_283AEB7B8;
  v78[161] = v97;
  sub_2278040AC((v78 + 43), &v743);
  sub_2278040AC((v78 + 161), &v740);
  sub_2278040AC((v78 + 212), &v833);
  v98 = swift_allocObject();
  v99 = v97;
  swift_defaultActor_initialize();
  *(v98 + 112) = sub_2278C3EE0(v94);
  __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  v100 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  MEMORY[0x28223BE20](v100);
  v102 = (&v696 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v103 + 16))(v102);
  __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  v104 = sub_2278C320C(*v102, v98);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v732 = type metadata accessor for NotificationRequestScheduler();
  v78[169] = v732;
  v78[170] = &off_283AEA0D0;
  v78[166] = v104;
  v78[174] = &type metadata for NotificationRequestServiceFactory;
  v78[175] = &off_283AEB4F0;
  v78[171] = v99;
  sub_2278040AC((v78 + 171), &v743);
  v105 = __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  v727 = &v696;
  MEMORY[0x28223BE20](v105);
  v107 = (&v696 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107);
  v109 = *v107;
  v741 = &type metadata for NotificationRequestServiceFactory;
  v742 = &off_283AEB4F0;
  *&v740 = v109;
  v834 = v731;
  v835 = MEMORY[0x277D09898];
  v110 = v722;
  *&v833 = v722;
  v111 = type metadata accessor for NotificationRequestListener();
  v112 = swift_allocObject();
  v113 = __swift_mutable_project_boxed_opaque_existential_1(&v740, &type metadata for NotificationRequestServiceFactory);
  MEMORY[0x28223BE20](v113);
  v115 = (&v696 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v116 + 16))(v115);
  v117 = *v115;
  v831 = &type metadata for NotificationRequestServiceFactory;
  v832 = &off_283AEB4F0;
  *&v830 = v117;
  v728 = v110;
  v722 = v99;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v830, v112 + 112);
  sub_2277F9D0C(&v833, v112 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v78[159] = v111;
  v78[160] = &off_283AECF60;
  v78[156] = v112;
  sub_2278040AC((v78 + 27), &v743);
  sub_2278040AC((v78 + 146), &v740);
  v724 = [boxed_opaque_existential_1 defaultCenter];
  LODWORD(v725) = sub_2278C7440();
  v118 = __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  v727 = &v696;
  MEMORY[0x28223BE20](v118);
  v120 = &v696 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v121 + 16))(v120);
  v122 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  v720 = &v696;
  MEMORY[0x28223BE20](v122);
  v124 = &v696 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v125 + 16))(v124);
  v834 = &type metadata for NotificationSettingsProvider;
  v835 = &off_283AE9E40;
  v126 = swift_allocObject();
  v832 = &off_283AE9E40;
  *&v833 = v126;
  v127 = *(v120 + 1);
  *(v126 + 16) = *v120;
  *(v126 + 32) = v127;
  *(v126 + 48) = *(v120 + 2);
  *(v126 + 64) = *(v120 + 6);
  v831 = &type metadata for NotificationSettingsProvider;
  v128 = swift_allocObject();
  *&v830 = v128;
  v129 = *(v124 + 1);
  *(v128 + 16) = *v124;
  *(v128 + 32) = v129;
  *(v128 + 48) = *(v124 + 2);
  *(v128 + 64) = *(v124 + 6);
  v828 = &type metadata for PairedDeviceRegistry;
  v829 = &off_283AED678;
  v719 = type metadata accessor for NotificationSettingsSystem();
  v130 = swift_allocObject();
  v131 = __swift_mutable_project_boxed_opaque_existential_1(&v833, &type metadata for NotificationSettingsProvider);
  v717 = &v696;
  v132 = off_283AE9E20;
  v133 = *(off_283AE9E20 + 8);
  MEMORY[0x28223BE20](v131);
  v134 = &v696 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v132[2];
  v135(v134);
  v136 = __swift_mutable_project_boxed_opaque_existential_1(&v830, &type metadata for NotificationSettingsProvider);
  MEMORY[0x28223BE20](v136);
  v135(v134);
  __swift_mutable_project_boxed_opaque_existential_1(&v827, &type metadata for PairedDeviceRegistry);
  v825 = &type metadata for NotificationSettingsProvider;
  v826 = &off_283AE9E40;
  v137 = swift_allocObject();
  *&v824 = v137;
  v138 = *(v134 + 1);
  *(v137 + 16) = *v134;
  *(v137 + 32) = v138;
  *(v137 + 48) = *(v134 + 2);
  *(v137 + 64) = *(v134 + 6);
  v822 = &type metadata for NotificationSettingsProvider;
  v823 = &off_283AE9E40;
  v139 = swift_allocObject();
  *&v821 = v139;
  v140 = *(v134 + 1);
  *(v139 + 16) = *v134;
  *(v139 + 32) = v140;
  *(v139 + 48) = *(v134 + 2);
  *(v139 + 64) = *(v134 + 6);
  v819 = &type metadata for PairedDeviceRegistry;
  v820 = &off_283AED678;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v824, v130 + 112);
  sub_2277F9D0C(&v821, v130 + 152);
  *(v130 + 192) = v724;
  sub_2277F9D0C(&v818, v130 + 200);
  *(v130 + 240) = v725;
  *(v130 + 248) = 0;
  __swift_destroy_boxed_opaque_existential_0(&v827);
  __swift_destroy_boxed_opaque_existential_0(&v830);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v90[157] = v719;
  v90[158] = &off_283AE9D10;
  v90[154] = v130;
  sub_2278040AC((v739 + 38), &v743);
  v725 = [objc_allocWithZone(MEMORY[0x277D09CE8]) init];
  v724 = [objc_allocWithZone(MEMORY[0x277D09D20]) init];
  v141 = __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  v727 = &v696;
  MEMORY[0x28223BE20](v141);
  v143 = &v696 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v144 + 16))(v143);
  v145 = v738;
  v741 = v738;
  v742 = &off_283AE99D8;
  v146 = __swift_allocate_boxed_opaque_existential_1(&v740);
  v147 = v737;
  sub_2278C4690(v143, v146, v737);
  v148 = type metadata accessor for NotificationSuppressionSystem();
  v149 = swift_allocObject();
  v150 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  MEMORY[0x28223BE20](v150);
  v152 = &v696 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v153 + 16))(v152);
  v834 = v145;
  v835 = &off_283AE99D8;
  v154 = __swift_allocate_boxed_opaque_existential_1(&v833);
  sub_2278C4690(v152, v154, v147);
  sub_2278040AC(&v833, v149 + 16);
  v155 = v724;
  *(v149 + 56) = v725;
  *(v149 + 64) = v155;
  [(ValueMetadata *)v155 setDelegate:v149];
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v90[167] = v148;
  v90[168] = &off_283AEC520;
  v90[164] = v149;
  sub_2278040AC((v90 + 164), &v743);
  v156 = __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  v725 = &v696;
  MEMORY[0x28223BE20](v156);
  v158 = (&v696 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v159 + 16))(v158);
  v160 = *v158;
  v741 = v148;
  v742 = &off_283AEC520;
  *&v740 = v160;
  v161 = v731;
  v834 = v731;
  v835 = MEMORY[0x277D09898];
  v162 = v728;
  *&v833 = v728;
  v163 = type metadata accessor for NotificationSuppressionListener();
  v164 = swift_allocObject();
  v165 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v148);
  MEMORY[0x28223BE20](v165);
  v167 = (&v696 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v168 + 16))(v167);
  v169 = *v167;
  v831 = v148;
  v832 = &off_283AEC520;
  *&v830 = v169;
  v727 = v162;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v830, v164 + 112);
  sub_2277F9D0C(&v833, v164 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v170 = v726;
  v90[162] = v163;
  v90[163] = &off_283AED4C8;
  v90[159] = v164;
  v90[35] = &type metadata for FirstGlanceStore;
  v90[36] = &off_283AEC780;
  v90[32] = v170;
  v90[30] = &type metadata for FirstGlanceServiceFactory;
  v90[31] = &off_283AEC6A8;
  v171 = swift_allocObject();
  v90[27] = v171;
  v172 = v739;
  sub_2278040AC((v739 + 22), v171 + 16);
  sub_2278040AC((v172 + 38), v171 + 56);
  sub_2278040AC((v172 + 48), v171 + 96);
  *(v171 + 136) = v170;
  v173 = v721;
  *(v171 + 144) = v721;
  sub_2278040AC((v90 + 27), &v743);
  v174 = __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  v728 = &v696;
  MEMORY[0x28223BE20](v174);
  v176 = &v696 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v177 + 16))(v176);
  v741 = &type metadata for FirstGlanceServiceFactory;
  v742 = &off_283AEC6A8;
  v178 = swift_allocObject();
  *&v740 = v178;
  v179 = *(v176 + 7);
  *(v178 + 112) = *(v176 + 6);
  *(v178 + 128) = v179;
  *(v178 + 144) = *(v176 + 16);
  v180 = *(v176 + 3);
  *(v178 + 48) = *(v176 + 2);
  *(v178 + 64) = v180;
  v181 = *(v176 + 5);
  *(v178 + 80) = *(v176 + 4);
  *(v178 + 96) = v181;
  v182 = *(v176 + 1);
  *(v178 + 16) = *v176;
  *(v178 + 32) = v182;
  v834 = v161;
  v835 = MEMORY[0x277D09898];
  v183 = v727;
  *&v833 = v727;
  type metadata accessor for FirstGlanceListener();
  v184 = swift_allocObject();
  v185 = __swift_mutable_project_boxed_opaque_existential_1(&v740, &type metadata for FirstGlanceServiceFactory);
  MEMORY[0x28223BE20](v185);
  v187 = &v696 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v188 + 16))(v187);
  v831 = &type metadata for FirstGlanceServiceFactory;
  v832 = &off_283AEC6A8;
  v189 = swift_allocObject();
  *&v830 = v189;
  v190 = *(v187 + 7);
  *(v189 + 112) = *(v187 + 6);
  *(v189 + 128) = v190;
  *(v189 + 144) = *(v187 + 16);
  v191 = *(v187 + 3);
  *(v189 + 48) = *(v187 + 2);
  *(v189 + 64) = v191;
  v192 = *(v187 + 5);
  *(v189 + 80) = *(v187 + 4);
  *(v189 + 96) = v192;
  v193 = *(v187 + 1);
  *(v189 + 16) = *v187;
  *(v189 + 32) = v193;
  v720 = v726;
  v721 = v173;
  v719 = v183;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v830, v184 + 112);
  sub_2277F9D0C(&v833, v184 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v90[26] = v184;
  v194 = v739;
  sub_2278040AC((v739 + 22), &v743);
  sub_2278040AC((v194 + 38), &v740);
  sub_2278040AC((v194 + 48), &v833);
  sub_2278040AC((v90 + 32), &v830);
  sub_2278040AC((v194 + 74), &v827);
  sub_2278040AC((v90 + 139), &v824);
  sub_2278040AC((v90 + 119), &v821);
  sub_2278040AC((v90 + 180), &v818);
  sub_2278040AC((v90 + 27), &v815);
  sub_2278040AC((v194 + 222), &v812);
  v714 = v723;
  v716 = [boxed_opaque_existential_1 defaultCenter];
  v195 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  v724 = &v696;
  MEMORY[0x28223BE20](v195);
  v728 = (&v696 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v197 + 16))();
  v198 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  v723 = &v696;
  MEMORY[0x28223BE20](v198);
  v200 = (&v696 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v201 + 16))(v200);
  v202 = __swift_mutable_project_boxed_opaque_existential_1(&v830, v831);
  v717 = &v696;
  MEMORY[0x28223BE20](v202);
  v204 = (&v696 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v205 + 16))(v204);
  v206 = __swift_mutable_project_boxed_opaque_existential_1(&v827, v828);
  v715 = &v696;
  MEMORY[0x28223BE20](v206);
  v208 = (&v696 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v209 + 16))(v208);
  v210 = __swift_mutable_project_boxed_opaque_existential_1(&v824, v825);
  v713 = &v696;
  MEMORY[0x28223BE20](v210);
  v212 = (&v696 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v213 + 16))(v212);
  v214 = __swift_mutable_project_boxed_opaque_existential_1(&v821, v822);
  v712 = &v696;
  MEMORY[0x28223BE20](v214);
  v216 = &v696 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v217 + 16))(v216);
  __swift_mutable_project_boxed_opaque_existential_1(&v818, v819);
  v218 = __swift_mutable_project_boxed_opaque_existential_1(&v815, v816);
  v711 = &v696;
  MEMORY[0x28223BE20](v218);
  v220 = &v696 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v221 + 16))(v220);
  v222 = __swift_mutable_project_boxed_opaque_existential_1(&v812, v813);
  v710 = &v696;
  MEMORY[0x28223BE20](v222);
  v224 = (&v696 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v225 + 16))(v224);
  v226 = *v200;
  v227 = *v204;
  v228 = *v208;
  v229 = *v212;
  v230 = *v224;
  v810 = v738;
  v811 = &off_283AE99D8;
  v231 = __swift_allocate_boxed_opaque_existential_1(&v809);
  sub_2278C4690(v728, v231, v737);
  v808 = &off_283AEBF40;
  v807 = v736;
  *&v806 = v226;
  v805 = &off_283AEC780;
  v804 = &type metadata for FirstGlanceStore;
  *&v803 = v227;
  v802 = &off_283AEB078;
  v801 = PickupObserver;
  *&v800 = v228;
  v799 = &off_283AEA0D0;
  v798 = v732;
  *&v797 = v229;
  v795 = &type metadata for NotificationSettingsProvider;
  v796 = &off_283AE9E40;
  v232 = swift_allocObject();
  *&v794 = v232;
  v233 = *(v216 + 1);
  *(v232 + 16) = *v216;
  *(v232 + 32) = v233;
  *(v232 + 48) = *(v216 + 2);
  *(v232 + 64) = *(v216 + 6);
  v792 = &type metadata for PrivacySettingsProvider;
  v793 = &off_283AEBD28;
  v789 = &type metadata for FirstGlanceServiceFactory;
  v790 = &off_283AEC6A8;
  v234 = swift_allocObject();
  *&v788 = v234;
  v235 = *(v220 + 7);
  *(v234 + 112) = *(v220 + 6);
  *(v234 + 128) = v235;
  *(v234 + 144) = *(v220 + 16);
  v236 = *(v220 + 3);
  *(v234 + 48) = *(v220 + 2);
  *(v234 + 64) = v236;
  v237 = *(v220 + 5);
  *(v234 + 80) = *(v220 + 4);
  *(v234 + 96) = v237;
  v238 = *(v220 + 1);
  *(v234 + 16) = *v220;
  *(v234 + 32) = v238;
  v787 = &off_283AEB868;
  v786 = Description;
  *&v785 = v230;
  GlanceSystem = type metadata accessor for FirstGlanceSystem();
  v239 = swift_allocObject();
  v240 = __swift_mutable_project_boxed_opaque_existential_1(&v809, v810);
  v708 = &v696;
  MEMORY[0x28223BE20](v240);
  v702 = (&v696 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v242 + 16))();
  v243 = v736;
  v244 = __swift_mutable_project_boxed_opaque_existential_1(&v806, v736);
  v707 = &v696;
  v727 = *(v243[-1].Description + 8);
  MEMORY[0x28223BE20](v244);
  v728 = ((v245 + 15) & 0xFFFFFFFFFFFFFFF0);
  v700 = (&v696 - v728);
  v247 = *(v246 + 16);
  v725 = (v246 + 16);
  v726 = v247;
  (v247)();
  v248 = __swift_mutable_project_boxed_opaque_existential_1(&v803, v804);
  v706 = &v696;
  MEMORY[0x28223BE20](v248);
  v250 = (&v696 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v251 + 16))(v250);
  v252 = __swift_mutable_project_boxed_opaque_existential_1(&v800, v801);
  v705 = &v696;
  MEMORY[0x28223BE20](v252);
  v254 = (&v696 - ((v253 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v255 + 16))(v254);
  v256 = __swift_mutable_project_boxed_opaque_existential_1(&v797, v798);
  v704 = &v696;
  MEMORY[0x28223BE20](v256);
  v258 = (&v696 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v259 + 16))(v258);
  v260 = __swift_mutable_project_boxed_opaque_existential_1(&v794, v795);
  v703 = &v696;
  MEMORY[0x28223BE20](v260);
  v262 = &v696 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v263 + 16))(v262);
  __swift_mutable_project_boxed_opaque_existential_1(&v791, v792);
  v264 = __swift_mutable_project_boxed_opaque_existential_1(&v788, v789);
  v701 = &v696;
  MEMORY[0x28223BE20](v264);
  v266 = &v696 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v267 + 16))(v266);
  v268 = __swift_mutable_project_boxed_opaque_existential_1(&v785, v786);
  v699 = &v696;
  MEMORY[0x28223BE20](v268);
  v270 = (&v696 - ((v269 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v271 + 16))(v270);
  v272 = *v700;
  v273 = *v250;
  v274 = *v254;
  v275 = *v258;
  v276 = *v270;
  v783 = v738;
  v784 = &off_283AE99D8;
  v277 = __swift_allocate_boxed_opaque_existential_1(&v782);
  sub_2278C4690(v702, v277, v737);
  v781 = &off_283AEBF40;
  v780 = v736;
  *&v779 = v272;
  v778 = &off_283AEC780;
  v777 = &type metadata for FirstGlanceStore;
  *&v776 = v273;
  v775 = &off_283AEB078;
  v774 = PickupObserver;
  *&v773 = v274;
  v772 = &off_283AEA0D0;
  v771 = v732;
  *&v770 = v275;
  v768 = &type metadata for NotificationSettingsProvider;
  v769 = &off_283AE9E40;
  v278 = swift_allocObject();
  *&v767 = v278;
  v279 = *(v262 + 1);
  *(v278 + 16) = *v262;
  *(v278 + 32) = v279;
  *(v278 + 48) = *(v262 + 2);
  *(v278 + 64) = *(v262 + 6);
  v765 = &type metadata for PrivacySettingsProvider;
  v766 = &off_283AEBD28;
  v762 = &type metadata for FirstGlanceServiceFactory;
  v763 = &off_283AEC6A8;
  v280 = swift_allocObject();
  *&v761 = v280;
  v281 = *(v266 + 7);
  *(v280 + 112) = *(v266 + 6);
  *(v280 + 128) = v281;
  *(v280 + 144) = *(v266 + 16);
  v282 = *(v266 + 3);
  *(v280 + 48) = *(v266 + 2);
  *(v280 + 64) = v282;
  v283 = *(v266 + 5);
  *(v280 + 80) = *(v266 + 4);
  *(v280 + 96) = v283;
  v284 = *(v266 + 1);
  *(v280 + 16) = *v266;
  *(v280 + 32) = v284;
  v760 = &off_283AEB868;
  v759 = Description;
  *&v758 = v276;
  swift_defaultActor_initialize();
  v285 = v714;
  v239[14] = v714;
  sub_2277F9D0C(&v743, (v239 + 15));
  sub_2277F9D0C(&v782, (v239 + 20));
  sub_2277F9D0C(&v779, (v239 + 25));
  sub_2277F9D0C(&v776, (v239 + 30));
  sub_2277F9D0C(&v773, (v239 + 35));
  v239[40] = v716;
  sub_2277F9D0C(&v770, (v239 + 41));
  sub_2277F9D0C(&v767, (v239 + 46));
  sub_2277F9D0C(&v764, (v239 + 51));
  sub_2277F9D0C(&v761, (v239 + 56));
  v239[61] = 0;
  sub_2277F9D0C(&v758, (v239 + 62));
  __swift_destroy_boxed_opaque_existential_0(&v785);
  __swift_destroy_boxed_opaque_existential_0(&v788);
  __swift_destroy_boxed_opaque_existential_0(&v791);
  __swift_destroy_boxed_opaque_existential_0(&v794);
  __swift_destroy_boxed_opaque_existential_0(&v797);
  __swift_destroy_boxed_opaque_existential_0(&v800);
  __swift_destroy_boxed_opaque_existential_0(&v803);
  __swift_destroy_boxed_opaque_existential_0(&v806);
  __swift_destroy_boxed_opaque_existential_0(&v809);
  __swift_destroy_boxed_opaque_existential_0(&v812);
  __swift_destroy_boxed_opaque_existential_0(&v815);
  __swift_destroy_boxed_opaque_existential_0(&v818);
  __swift_destroy_boxed_opaque_existential_0(&v821);
  __swift_destroy_boxed_opaque_existential_0(&v824);
  __swift_destroy_boxed_opaque_existential_0(&v827);
  __swift_destroy_boxed_opaque_existential_0(&v830);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v90[40] = GlanceSystem;
  v90[41] = &off_283AE9AC0;
  v90[37] = v239;
  v90[55] = &type metadata for FitnessPlusPlanDataProvider;
  v90[56] = &protocol witness table for FitnessPlusPlanDataProvider;
  v286 = swift_allocObject();
  v90[52] = v286;
  FitnessPlusPlanDataProvider.init()((v286 + 16));
  v90[61] = &type metadata for FitnessPlusPlanServiceFactory;
  v90[62] = &off_283AEA238;
  v287 = swift_allocObject();
  v90[58] = v287;
  v288 = v739;
  sub_2278040AC((v739 + 22), v287 + 16);
  sub_2278040AC((v288 + 38), v287 + 56);
  sub_2278040AC((v90 + 52), v287 + 96);
  sub_2278040AC((v90 + 139), v287 + 144);
  v289 = v720;
  *(v287 + 136) = v720;
  v90[66] = &type metadata for FitnessPlusPlanStore;
  v90[67] = &off_283AECBD8;
  v290 = swift_allocObject();
  v90[63] = v290;
  sub_2278040AC((v288 + 48), v290 + 16);
  sub_2278040AC((v90 + 52), &v743);
  sub_2278040AC((v288 + 48), &v740);
  sub_2278040AC((v288 + 38), &v833);
  sub_2278040AC((v90 + 63), &v830);
  sub_2278040AC((v288 + 74), &v827);
  sub_2278040AC((v90 + 139), &v824);
  sub_2278040AC((v90 + 119), &v821);
  sub_2278040AC((v90 + 180), &v818);
  sub_2278040AC((v90 + 58), &v815);
  sub_2278040AC((v288 + 222), &v812);
  sub_2278040AC((v90 + 185), &v809);
  v724 = v285;
  v717 = v289;
  v716 = [boxed_opaque_existential_1 defaultCenter];
  v291 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  v715 = &v696;
  MEMORY[0x28223BE20](v291);
  v723 = (&v696 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v293 + 16))();
  v294 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  v714 = &v696;
  MEMORY[0x28223BE20](v294);
  v296 = &v696 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v297 + 16))(v296);
  v298 = __swift_mutable_project_boxed_opaque_existential_1(&v830, v831);
  v713 = &v696;
  MEMORY[0x28223BE20](v298);
  v300 = &v696 - ((v299 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v301 + 16))(v300);
  v302 = __swift_mutable_project_boxed_opaque_existential_1(&v827, v828);
  v712 = &v696;
  MEMORY[0x28223BE20](v302);
  v304 = (&v696 - ((v303 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v305 + 16))(v304);
  v306 = __swift_mutable_project_boxed_opaque_existential_1(&v824, v825);
  v711 = &v696;
  MEMORY[0x28223BE20](v306);
  v308 = (&v696 - ((v307 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v309 + 16))(v308);
  v310 = __swift_mutable_project_boxed_opaque_existential_1(&v821, v822);
  v710 = &v696;
  MEMORY[0x28223BE20](v310);
  v312 = &v696 - ((v311 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v313 + 16))(v312);
  __swift_mutable_project_boxed_opaque_existential_1(&v818, v819);
  v314 = __swift_mutable_project_boxed_opaque_existential_1(&v815, v816);
  GlanceSystem = &v696;
  MEMORY[0x28223BE20](v314);
  v316 = &v696 - ((v315 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v317 + 16))(v316);
  v318 = __swift_mutable_project_boxed_opaque_existential_1(&v812, v813);
  v708 = &v696;
  MEMORY[0x28223BE20](v318);
  v320 = (&v696 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v321 + 16))(v320);
  __swift_mutable_project_boxed_opaque_existential_1(&v809, v810);
  v322 = *v723;
  v323 = *v304;
  v324 = *v308;
  v325 = *v320;
  v808 = &off_283AEBF40;
  v326 = v736;
  v807 = v736;
  *&v806 = v322;
  v804 = v738;
  v805 = &off_283AE99D8;
  v327 = __swift_allocate_boxed_opaque_existential_1(&v803);
  sub_2278C4690(v296, v327, v737);
  v801 = &type metadata for FitnessPlusPlanStore;
  v802 = &off_283AECBD8;
  v328 = swift_allocObject();
  *&v800 = v328;
  v329 = *(v300 + 1);
  *(v328 + 16) = *v300;
  *(v328 + 32) = v329;
  *(v328 + 48) = *(v300 + 4);
  v799 = &off_283AEB078;
  v798 = PickupObserver;
  *&v797 = v323;
  v796 = &off_283AEA0D0;
  v795 = v732;
  *&v794 = v324;
  v792 = &type metadata for NotificationSettingsProvider;
  v793 = &off_283AE9E40;
  v330 = swift_allocObject();
  *&v791 = v330;
  v331 = *(v312 + 1);
  *(v330 + 16) = *v312;
  *(v330 + 32) = v331;
  *(v330 + 48) = *(v312 + 2);
  *(v330 + 64) = *(v312 + 6);
  v789 = &type metadata for PrivacySettingsProvider;
  v790 = &off_283AEBD28;
  v786 = &type metadata for FitnessPlusPlanServiceFactory;
  v787 = &off_283AEA238;
  v332 = swift_allocObject();
  *&v785 = v332;
  v333 = *(v316 + 9);
  *(v332 + 144) = *(v316 + 8);
  *(v332 + 160) = v333;
  *(v332 + 176) = *(v316 + 20);
  v334 = *(v316 + 5);
  *(v332 + 80) = *(v316 + 4);
  *(v332 + 96) = v334;
  v335 = *(v316 + 7);
  *(v332 + 112) = *(v316 + 6);
  *(v332 + 128) = v335;
  v336 = *(v316 + 1);
  *(v332 + 16) = *v316;
  *(v332 + 32) = v336;
  v337 = *(v316 + 3);
  *(v332 + 48) = *(v316 + 2);
  *(v332 + 64) = v337;
  v784 = &off_283AEB868;
  v783 = Description;
  *&v782 = v325;
  v781 = &off_283AEC190;
  v780 = v730;
  *&v779 = v729;
  v777 = &type metadata for LockStateProvider;
  v778 = &off_283AE99C0;
  v720 = type metadata accessor for FitnessPlusPlanSystem();
  v723 = swift_allocObject();
  v338 = __swift_mutable_project_boxed_opaque_existential_1(&v806, v326);
  v707 = &v696;
  MEMORY[0x28223BE20](v338);
  v699 = (&v696 - v728);
  (v726)();
  v339 = __swift_mutable_project_boxed_opaque_existential_1(&v803, v804);
  v706 = &v696;
  MEMORY[0x28223BE20](v339);
  v697 = &v696 - ((v340 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v341 + 16))();
  v342 = __swift_mutable_project_boxed_opaque_existential_1(&v800, v801);
  v705 = &v696;
  MEMORY[0x28223BE20](v342);
  v344 = &v696 - ((v343 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v345 + 16))(v344);
  v346 = __swift_mutable_project_boxed_opaque_existential_1(&v797, v798);
  v704 = &v696;
  MEMORY[0x28223BE20](v346);
  v348 = (&v696 - ((v347 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v349 + 16))(v348);
  v350 = __swift_mutable_project_boxed_opaque_existential_1(&v794, v795);
  v703 = &v696;
  MEMORY[0x28223BE20](v350);
  v352 = (&v696 - ((v351 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v353 + 16))(v352);
  v354 = __swift_mutable_project_boxed_opaque_existential_1(&v791, v792);
  v702 = &v696;
  MEMORY[0x28223BE20](v354);
  v356 = &v696 - ((v355 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v357 + 16))(v356);
  __swift_mutable_project_boxed_opaque_existential_1(&v788, v789);
  v358 = __swift_mutable_project_boxed_opaque_existential_1(&v785, v786);
  v701 = &v696;
  MEMORY[0x28223BE20](v358);
  v360 = &v696 - ((v359 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v361 + 16))(v360);
  v362 = __swift_mutable_project_boxed_opaque_existential_1(&v782, v783);
  v700 = &v696;
  MEMORY[0x28223BE20](v362);
  v364 = (&v696 - ((v363 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v365 + 16))(v364);
  v366 = __swift_mutable_project_boxed_opaque_existential_1(&v779, v780);
  v698 = &v696;
  MEMORY[0x28223BE20](v366);
  v368 = (&v696 - ((v367 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v369 + 16))(v368);
  __swift_mutable_project_boxed_opaque_existential_1(&v776, v777);
  v370 = *v699;
  v371 = *v348;
  v372 = *v352;
  v373 = *v364;
  v374 = *v368;
  v775 = &off_283AEBF40;
  v774 = v736;
  *&v773 = v370;
  v771 = v738;
  v772 = &off_283AE99D8;
  v375 = __swift_allocate_boxed_opaque_existential_1(&v770);
  sub_2278C4690(v697, v375, v737);
  v768 = &type metadata for FitnessPlusPlanStore;
  v769 = &off_283AECBD8;
  v376 = swift_allocObject();
  *&v767 = v376;
  v377 = *(v344 + 1);
  *(v376 + 16) = *v344;
  *(v376 + 32) = v377;
  *(v376 + 48) = *(v344 + 4);
  v766 = &off_283AEB078;
  v765 = PickupObserver;
  *&v764 = v371;
  v763 = &off_283AEA0D0;
  v762 = v732;
  *&v761 = v372;
  v759 = &type metadata for NotificationSettingsProvider;
  v760 = &off_283AE9E40;
  v378 = swift_allocObject();
  *&v758 = v378;
  v379 = *(v356 + 1);
  *(v378 + 16) = *v356;
  *(v378 + 32) = v379;
  *(v378 + 48) = *(v356 + 2);
  *(v378 + 64) = *(v356 + 6);
  v756 = &type metadata for PrivacySettingsProvider;
  v757 = &off_283AEBD28;
  v753 = &type metadata for FitnessPlusPlanServiceFactory;
  v754 = &off_283AEA238;
  v380 = swift_allocObject();
  v752[0] = v380;
  v381 = *(v360 + 9);
  *(v380 + 144) = *(v360 + 8);
  *(v380 + 160) = v381;
  *(v380 + 176) = *(v360 + 20);
  v382 = *(v360 + 5);
  *(v380 + 80) = *(v360 + 4);
  *(v380 + 96) = v382;
  v383 = *(v360 + 7);
  *(v380 + 112) = *(v360 + 6);
  *(v380 + 128) = v383;
  v384 = *(v360 + 1);
  *(v380 + 16) = *v360;
  *(v380 + 32) = v384;
  v385 = *(v360 + 3);
  *(v380 + 48) = *(v360 + 2);
  *(v380 + 64) = v385;
  v751 = &off_283AEB868;
  v750 = Description;
  v749[0] = v373;
  v748[4] = &off_283AEC190;
  v748[3] = v730;
  v748[0] = v374;
  v747[3] = &type metadata for LockStateProvider;
  v747[4] = &off_283AE99C0;

  v386 = v723;
  swift_defaultActor_initialize();
  v386[14] = v724;
  sub_2278040AC(&v743, (v386 + 15));
  sub_2278040AC(&v773, (v386 + 20));
  sub_2278040AC(&v770, (v386 + 25));
  sub_2278040AC(&v767, (v386 + 30));
  sub_2278040AC(&v764, (v386 + 35));
  v386[40] = v716;
  sub_2278040AC(&v761, (v386 + 41));
  sub_2278040AC(&v758, (v386 + 46));
  sub_2278040AC(v755, (v386 + 51));
  sub_2278040AC(v752, (v386 + 56));
  sub_2278040AC(v749, (v386 + 61));
  sub_2278040AC(v747, (v386 + 66));
  v387 = v386;
  sub_2278040AC(v748, (v386 + 71));
  v716 = sub_2278C7490();
  v388 = sub_2278C7480();

  __swift_destroy_boxed_opaque_existential_0(&v743);
  __swift_destroy_boxed_opaque_existential_0(v747);
  __swift_destroy_boxed_opaque_existential_0(v748);
  __swift_destroy_boxed_opaque_existential_0(v749);
  __swift_destroy_boxed_opaque_existential_0(v752);
  __swift_destroy_boxed_opaque_existential_0(v755);
  __swift_destroy_boxed_opaque_existential_0(&v758);
  __swift_destroy_boxed_opaque_existential_0(&v761);
  __swift_destroy_boxed_opaque_existential_0(&v764);
  __swift_destroy_boxed_opaque_existential_0(&v767);
  __swift_destroy_boxed_opaque_existential_0(&v770);
  __swift_destroy_boxed_opaque_existential_0(&v773);
  v387[76] = v388;
  v387[77] = 0;
  __swift_destroy_boxed_opaque_existential_0(&v776);
  __swift_destroy_boxed_opaque_existential_0(&v779);
  __swift_destroy_boxed_opaque_existential_0(&v782);
  __swift_destroy_boxed_opaque_existential_0(&v785);
  __swift_destroy_boxed_opaque_existential_0(&v788);
  __swift_destroy_boxed_opaque_existential_0(&v791);
  __swift_destroy_boxed_opaque_existential_0(&v794);
  __swift_destroy_boxed_opaque_existential_0(&v797);
  __swift_destroy_boxed_opaque_existential_0(&v800);
  __swift_destroy_boxed_opaque_existential_0(&v803);
  __swift_destroy_boxed_opaque_existential_0(&v806);
  __swift_destroy_boxed_opaque_existential_0(&v809);
  __swift_destroy_boxed_opaque_existential_0(&v812);
  __swift_destroy_boxed_opaque_existential_0(&v815);
  __swift_destroy_boxed_opaque_existential_0(&v818);
  __swift_destroy_boxed_opaque_existential_0(&v821);
  __swift_destroy_boxed_opaque_existential_0(&v824);
  __swift_destroy_boxed_opaque_existential_0(&v827);
  __swift_destroy_boxed_opaque_existential_0(&v830);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v389 = v720;
  v90[71] = v720;
  v90[72] = &off_283AED130;
  v90[68] = v387;
  sub_2278040AC((v739 + 38), &v743);
  sub_2278040AC((v90 + 52), &v740);
  sub_2278040AC((v90 + 58), &v833);
  v390 = __swift_mutable_project_boxed_opaque_existential_1(&v743, v744);
  v714 = &v696;
  MEMORY[0x28223BE20](v390);
  v392 = &v696 - ((v391 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v393 + 16))(v392);
  v394 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  v713 = &v696;
  MEMORY[0x28223BE20](v394);
  v396 = &v696 - ((v395 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v397 + 16))(v396);
  v398 = v738;
  v831 = v738;
  v832 = &off_283AE99D8;
  v399 = __swift_allocate_boxed_opaque_existential_1(&v830);
  v400 = v737;
  sub_2278C4690(v392, v399, v737);
  v828 = v389;
  v829 = &off_283AED130;
  *&v827 = v387;
  v825 = &type metadata for FitnessPlusPlanServiceFactory;
  v826 = &off_283AEA238;
  v401 = swift_allocObject();
  *&v824 = v401;
  v402 = *(v396 + 9);
  *(v401 + 144) = *(v396 + 8);
  *(v401 + 160) = v402;
  *(v401 + 176) = *(v396 + 20);
  v403 = *(v396 + 5);
  *(v401 + 80) = *(v396 + 4);
  *(v401 + 96) = v403;
  v404 = *(v396 + 7);
  *(v401 + 112) = *(v396 + 6);
  *(v401 + 128) = v404;
  v405 = *(v396 + 1);
  *(v401 + 16) = *v396;
  *(v401 + 32) = v405;
  v406 = *(v396 + 3);
  *(v401 + 48) = *(v396 + 2);
  *(v401 + 64) = v406;
  v823 = MEMORY[0x277D09898];
  v822 = v731;
  *&v821 = v719;
  type metadata accessor for FitnessPlusPlanListener();
  v407 = swift_allocObject();
  v408 = __swift_mutable_project_boxed_opaque_existential_1(&v830, v831);
  v712 = &v696;
  MEMORY[0x28223BE20](v408);
  v410 = &v696 - ((v409 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v411 + 16))(v410);
  v412 = __swift_mutable_project_boxed_opaque_existential_1(&v827, v389);
  v711 = &v696;
  MEMORY[0x28223BE20](v412);
  v414 = (&v696 - ((v413 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v415 + 16))(v414);
  v416 = __swift_mutable_project_boxed_opaque_existential_1(&v824, v825);
  v710 = &v696;
  MEMORY[0x28223BE20](v416);
  v418 = &v696 - ((v417 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v419 + 16))(v418);
  v420 = *v414;
  v819 = v398;
  v820 = &off_283AE99D8;
  v421 = __swift_allocate_boxed_opaque_existential_1(&v818);
  sub_2278C4690(v410, v421, v400);
  v817 = &off_283AED130;
  v816 = v389;
  *&v815 = v420;
  v813 = &type metadata for FitnessPlusPlanServiceFactory;
  v814 = &off_283AEA238;
  v422 = swift_allocObject();
  *&v812 = v422;
  v423 = *(v418 + 9);
  *(v422 + 144) = *(v418 + 8);
  *(v422 + 160) = v423;
  *(v422 + 176) = *(v418 + 20);
  v424 = *(v418 + 5);
  *(v422 + 80) = *(v418 + 4);
  *(v422 + 96) = v424;
  v425 = *(v418 + 7);
  *(v422 + 112) = *(v418 + 6);
  *(v422 + 128) = v425;
  v426 = *(v418 + 1);
  *(v422 + 16) = *v418;
  *(v422 + 32) = v426;
  v427 = *(v418 + 3);
  *(v422 + 48) = *(v418 + 2);
  *(v422 + 64) = v427;
  swift_retain_n();
  v715 = v719;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v818, v407 + 112);
  sub_2277F9D0C(&v740, v407 + 192);
  sub_2277F9D0C(&v815, v407 + 152);
  sub_2277F9D0C(&v812, v407 + 232);
  sub_2277F9D0C(&v821, v407 + 272);
  __swift_destroy_boxed_opaque_existential_0(&v824);
  __swift_destroy_boxed_opaque_existential_0(&v827);
  __swift_destroy_boxed_opaque_existential_0(&v830);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v743);
  v90[57] = v407;
  v428 = v739;
  sub_2278040AC((v739 + 22), &v743);
  sub_2278040AC((v428 + 38), v745);
  v745[10] = &off_283AECC40;
  v745[9] = &type metadata for PauseRingsSampleQuery;
  v429 = v717;
  v745[6] = v717;
  sub_2278040AC((v90 + 139), &v746);
  v745[5] = v429;
  sub_2278040AC((v428 + 48), &v740);
  sub_2278040AC((v428 + 38), &v833);
  sub_2278040AC((v428 + 74), &v830);
  sub_2278040AC((v90 + 139), &v827);
  sub_2278040AC((v90 + 119), &v824);
  sub_2278040AC((v90 + 180), &v821);
  sub_2278040AC((v428 + 222), &v818);
  sub_2278040AC((v90 + 185), &v815);
  v717 = v429;
  GlanceSystem = [boxed_opaque_existential_1 defaultCenter];
  v430 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  v714 = &v696;
  MEMORY[0x28223BE20](v430);
  v432 = (&v696 - ((v431 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v433 + 16))(v432);
  v434 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  v713 = &v696;
  MEMORY[0x28223BE20](v434);
  v436 = &v696 - ((v435 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v437 + 16))(v436);
  v438 = __swift_mutable_project_boxed_opaque_existential_1(&v830, v831);
  v712 = &v696;
  MEMORY[0x28223BE20](v438);
  v440 = (&v696 - ((v439 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v441 + 16))(v440);
  v442 = __swift_mutable_project_boxed_opaque_existential_1(&v827, v828);
  v711 = &v696;
  MEMORY[0x28223BE20](v442);
  v444 = (&v696 - ((v443 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v445 + 16))(v444);
  v446 = __swift_mutable_project_boxed_opaque_existential_1(&v824, v825);
  v710 = &v696;
  MEMORY[0x28223BE20](v446);
  v448 = &v696 - ((v447 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v449 + 16))(v448);
  __swift_mutable_project_boxed_opaque_existential_1(&v821, v822);
  v450 = __swift_mutable_project_boxed_opaque_existential_1(&v818, v819);
  v708 = &v696;
  MEMORY[0x28223BE20](v450);
  v452 = (&v696 - ((v451 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v453 + 16))(v452);
  __swift_mutable_project_boxed_opaque_existential_1(&v815, v816);
  v454 = *v432;
  v455 = *v440;
  v456 = *v444;
  v457 = *v452;
  v814 = &off_283AEBF40;
  v458 = v736;
  v813 = v736;
  *&v812 = v454;
  v810 = v738;
  v811 = &off_283AE99D8;
  v459 = __swift_allocate_boxed_opaque_existential_1(&v809);
  sub_2278C4690(v436, v459, v400);
  v807 = &type metadata for PauseRingsStore;
  v808 = &off_283AEB2B8;
  v805 = &off_283AEB078;
  v804 = PickupObserver;
  *&v803 = v455;
  v802 = &off_283AEA0D0;
  v801 = v732;
  *&v800 = v456;
  v798 = &type metadata for NotificationSettingsProvider;
  v799 = &off_283AE9E40;
  v460 = swift_allocObject();
  *&v797 = v460;
  v461 = *(v448 + 1);
  *(v460 + 16) = *v448;
  *(v460 + 32) = v461;
  *(v460 + 48) = *(v448 + 2);
  *(v460 + 64) = *(v448 + 6);
  v795 = &type metadata for PrivacySettingsProvider;
  v796 = &off_283AEBD28;
  v792 = &type metadata for PauseRingsServiceFactory;
  v793 = &off_283AEAF90;
  *&v791 = swift_allocObject();
  sub_2278C40C8(&v743, v791 + 16);
  v790 = &off_283AEB868;
  v789 = Description;
  *&v788 = v457;
  v787 = &off_283AEC190;
  v786 = v730;
  *&v785 = v729;
  v783 = &type metadata for LockStateProvider;
  v784 = &off_283AE99C0;
  v729 = type metadata accessor for PauseRingsSystem();
  v719 = swift_allocObject();
  v462 = __swift_mutable_project_boxed_opaque_existential_1(&v812, v458);
  v707 = &v696;
  MEMORY[0x28223BE20](v462);
  v700 = (&v696 - v728);
  (v726)();
  v463 = __swift_mutable_project_boxed_opaque_existential_1(&v809, v810);
  v706 = &v696;
  MEMORY[0x28223BE20](v463);
  v465 = &v696 - ((v464 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v466 + 16))(v465);
  __swift_mutable_project_boxed_opaque_existential_1(&v806, v807);
  v467 = __swift_mutable_project_boxed_opaque_existential_1(&v803, v804);
  v705 = &v696;
  MEMORY[0x28223BE20](v467);
  v469 = (&v696 - ((v468 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v470 + 16))(v469);
  v471 = __swift_mutable_project_boxed_opaque_existential_1(&v800, v801);
  v704 = &v696;
  MEMORY[0x28223BE20](v471);
  v473 = (&v696 - ((v472 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v474 + 16))(v473);
  v475 = __swift_mutable_project_boxed_opaque_existential_1(&v797, v798);
  v703 = &v696;
  MEMORY[0x28223BE20](v475);
  v477 = &v696 - ((v476 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v478 + 16))(v477);
  __swift_mutable_project_boxed_opaque_existential_1(&v794, v795);
  v479 = __swift_mutable_project_boxed_opaque_existential_1(&v791, v792);
  v702 = &v696;
  MEMORY[0x28223BE20](v479);
  v481 = &v696 - ((v480 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v482 + 16))(v481);
  v483 = __swift_mutable_project_boxed_opaque_existential_1(&v788, v789);
  v701 = &v696;
  MEMORY[0x28223BE20](v483);
  v485 = (&v696 - ((v484 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v486 + 16))(v485);
  v487 = __swift_mutable_project_boxed_opaque_existential_1(&v785, v786);
  v699 = &v696;
  MEMORY[0x28223BE20](v487);
  v489 = (&v696 - ((v488 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v490 + 16))(v489);
  __swift_mutable_project_boxed_opaque_existential_1(&v782, v783);
  v491 = *v700;
  v492 = *v469;
  v493 = *v473;
  v494 = *v485;
  v495 = *v489;
  v781 = &off_283AEBF40;
  v780 = v736;
  *&v779 = v491;
  v777 = v738;
  v778 = &off_283AE99D8;
  v496 = __swift_allocate_boxed_opaque_existential_1(&v776);
  sub_2278C4690(v465, v496, v737);
  v774 = &type metadata for PauseRingsStore;
  v775 = &off_283AEB2B8;
  v772 = &off_283AEB078;
  v771 = PickupObserver;
  *&v770 = v492;
  v769 = &off_283AEA0D0;
  v768 = v732;
  *&v767 = v493;
  v765 = &type metadata for NotificationSettingsProvider;
  v766 = &off_283AE9E40;
  v497 = swift_allocObject();
  *&v764 = v497;
  v498 = *(v477 + 1);
  *(v497 + 16) = *v477;
  *(v497 + 32) = v498;
  *(v497 + 48) = *(v477 + 2);
  *(v497 + 64) = *(v477 + 6);
  v762 = &type metadata for PrivacySettingsProvider;
  v763 = &off_283AEBD28;
  v759 = &type metadata for PauseRingsServiceFactory;
  v760 = &off_283AEAF90;
  v499 = swift_allocObject();
  *&v758 = v499;
  v500 = *(v481 + 9);
  *(v499 + 144) = *(v481 + 8);
  *(v499 + 160) = v500;
  *(v499 + 176) = *(v481 + 20);
  v501 = *(v481 + 5);
  *(v499 + 80) = *(v481 + 4);
  *(v499 + 96) = v501;
  v502 = *(v481 + 7);
  *(v499 + 112) = *(v481 + 6);
  *(v499 + 128) = v502;
  v503 = *(v481 + 1);
  *(v499 + 16) = *v481;
  *(v499 + 32) = v503;
  v504 = *(v481 + 3);
  *(v499 + 48) = *(v481 + 2);
  *(v499 + 64) = v504;
  v757 = &off_283AEB868;
  v756 = Description;
  v755[0] = v494;
  v754 = &off_283AEC190;
  v753 = v730;
  v752[0] = v495;
  v750 = &type metadata for LockStateProvider;
  v751 = &off_283AE99C0;
  v505 = v719;
  swift_defaultActor_initialize();
  v505[14] = v724;
  sub_2278040AC(&v779, (v505 + 15));
  sub_2278040AC(&v776, (v505 + 20));
  sub_2278040AC(&v773, (v505 + 25));
  sub_2278040AC(&v770, (v505 + 30));
  v505[35] = GlanceSystem;
  sub_2278040AC(&v767, (v505 + 36));
  sub_2278040AC(&v764, (v505 + 41));
  sub_2278040AC(&v761, (v505 + 46));
  sub_2278040AC(&v758, (v505 + 51));
  sub_2278040AC(v755, (v505 + 56));
  sub_2278040AC(v749, (v505 + 61));
  v506 = v505;
  sub_2278040AC(v752, (v505 + 66));
  v507 = sub_2278C7480();
  __swift_destroy_boxed_opaque_existential_0(v749);
  __swift_destroy_boxed_opaque_existential_0(v752);
  __swift_destroy_boxed_opaque_existential_0(v755);
  __swift_destroy_boxed_opaque_existential_0(&v758);
  __swift_destroy_boxed_opaque_existential_0(&v761);
  __swift_destroy_boxed_opaque_existential_0(&v764);
  __swift_destroy_boxed_opaque_existential_0(&v767);
  __swift_destroy_boxed_opaque_existential_0(&v770);
  __swift_destroy_boxed_opaque_existential_0(&v773);
  __swift_destroy_boxed_opaque_existential_0(&v776);
  __swift_destroy_boxed_opaque_existential_0(&v779);
  v506[71] = v507;
  v506[72] = 0;
  v508 = v506;
  __swift_destroy_boxed_opaque_existential_0(&v782);
  __swift_destroy_boxed_opaque_existential_0(&v785);
  __swift_destroy_boxed_opaque_existential_0(&v788);
  __swift_destroy_boxed_opaque_existential_0(&v791);
  __swift_destroy_boxed_opaque_existential_0(&v794);
  __swift_destroy_boxed_opaque_existential_0(&v797);
  __swift_destroy_boxed_opaque_existential_0(&v800);
  __swift_destroy_boxed_opaque_existential_0(&v803);
  __swift_destroy_boxed_opaque_existential_0(&v806);
  __swift_destroy_boxed_opaque_existential_0(&v809);
  __swift_destroy_boxed_opaque_existential_0(&v812);
  __swift_destroy_boxed_opaque_existential_0(&v815);
  __swift_destroy_boxed_opaque_existential_0(&v818);
  __swift_destroy_boxed_opaque_existential_0(&v821);
  __swift_destroy_boxed_opaque_existential_0(&v824);
  __swift_destroy_boxed_opaque_existential_0(&v827);
  __swift_destroy_boxed_opaque_existential_0(&v830);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v90[173] = v729;
  v90[174] = &off_283AEC8E0;
  v90[170] = v506;
  v509 = v739;
  sub_2278040AC((v739 + 38), &v833);
  v510 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  MEMORY[0x28223BE20](v510);
  v512 = &v696 - ((v511 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v513 + 16))(v512);
  sub_2278C40C8(&v743, &v740);
  v514 = v508;
  swift_retain_n();
  v515 = v715;
  v516 = sub_2278C34A8(v512, v514, &v740, v515);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  v90[178] = type metadata accessor for PauseRingsListener();
  v90[179] = &off_283AEA460;
  v90[175] = v516;
  v90[82] = &type metadata for GoalCompletionServiceFactory;
  v90[83] = &off_283AEA428;
  v517 = swift_allocObject();
  v90[79] = v517;
  sub_2278040AC((v509 + 38), v517 + 16);
  sub_2278040AC((v90 + 134), v517 + 64);
  sub_2278040AC((v90 + 119), v517 + 104);
  sub_2278040AC((v90 + 180), v517 + 144);
  v518 = v717;
  *(v517 + 56) = v717;
  sub_2278040AC((v90 + 79), &v740);
  v519 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  PickupObserver = &v696;
  MEMORY[0x28223BE20](v519);
  v521 = &v696 - ((v520 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v522 + 16))(v521);
  v834 = &type metadata for GoalCompletionServiceFactory;
  v835 = &off_283AEA428;
  v523 = swift_allocObject();
  *&v833 = v523;
  v524 = *(v521 + 9);
  *(v523 + 144) = *(v521 + 8);
  *(v523 + 160) = v524;
  *(v523 + 176) = *(v521 + 20);
  v525 = *(v521 + 5);
  *(v523 + 80) = *(v521 + 4);
  *(v523 + 96) = v525;
  v526 = *(v521 + 7);
  *(v523 + 112) = *(v521 + 6);
  *(v523 + 128) = v526;
  v527 = *(v521 + 1);
  *(v523 + 16) = *v521;
  *(v523 + 32) = v527;
  v528 = *(v521 + 3);
  *(v523 + 48) = *(v521 + 2);
  *(v523 + 64) = v528;
  v529 = v731;
  v831 = v731;
  v832 = MEMORY[0x277D09898];
  *&v830 = v515;
  v530 = type metadata accessor for GoalCompletionListener();
  v531 = swift_allocObject();
  v532 = __swift_mutable_project_boxed_opaque_existential_1(&v833, &type metadata for GoalCompletionServiceFactory);
  MEMORY[0x28223BE20](v532);
  v534 = &v696 - v533;
  (*(v535 + 16))(&v696 - v533);
  v828 = &type metadata for GoalCompletionServiceFactory;
  v829 = &off_283AEA428;
  v536 = swift_allocObject();
  *&v827 = v536;
  v537 = *(v534 + 9);
  *(v536 + 144) = *(v534 + 8);
  *(v536 + 160) = v537;
  *(v536 + 176) = *(v534 + 20);
  v538 = *(v534 + 5);
  *(v536 + 80) = *(v534 + 4);
  *(v536 + 96) = v538;
  v539 = *(v534 + 7);
  *(v536 + 112) = *(v534 + 6);
  *(v536 + 128) = v539;
  v540 = *(v534 + 1);
  *(v536 + 16) = *v534;
  *(v536 + 32) = v540;
  v541 = *(v534 + 3);
  *(v536 + 48) = *(v534 + 2);
  *(v536 + 64) = v541;
  v542 = v518;
  v543 = v515;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v827, v531 + 112);
  sub_2277F9D0C(&v830, v531 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v90[77] = v530;
  v90[78] = &off_283AEB6A0;
  v90[74] = v531;
  v90[87] = &type metadata for GoalProgressServiceFactory;
  v90[88] = &off_283AEB490;
  v544 = swift_allocObject();
  v90[84] = v544;
  sub_2278040AC((v739 + 38), v544 + 16);
  sub_2278040AC((v90 + 134), v544 + 64);
  sub_2278040AC((v90 + 119), v544 + 104);
  sub_2278040AC((v90 + 180), v544 + 144);
  *(v544 + 56) = v542;
  *(v544 + 184) = v721;
  sub_2278040AC((v90 + 84), &v740);
  v545 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  PickupObserver = &v696;
  MEMORY[0x28223BE20](v545);
  v547 = (&v696 - v546);
  (*(v548 + 16))(&v696 - v546);
  v834 = &type metadata for GoalProgressServiceFactory;
  v835 = &off_283AEB490;
  v549 = swift_allocObject();
  *&v833 = v549;
  v550 = v547[9];
  v549[9] = v547[8];
  v549[10] = v550;
  v549[11] = v547[10];
  v551 = v547[5];
  v549[5] = v547[4];
  v549[6] = v551;
  v552 = v547[7];
  v549[7] = v547[6];
  v549[8] = v552;
  v553 = v547[1];
  v549[1] = *v547;
  v549[2] = v553;
  v554 = v547[3];
  v549[3] = v547[2];
  v549[4] = v554;
  v831 = v529;
  v832 = MEMORY[0x277D09898];
  *&v830 = v543;
  v555 = type metadata accessor for GoalProgressListener();
  v556 = swift_allocObject();
  v557 = __swift_mutable_project_boxed_opaque_existential_1(&v833, &type metadata for GoalProgressServiceFactory);
  MEMORY[0x28223BE20](v557);
  v559 = (&v696 - v558);
  (*(v560 + 16))(&v696 - v558);
  v828 = &type metadata for GoalProgressServiceFactory;
  v829 = &off_283AEB490;
  v561 = swift_allocObject();
  *&v827 = v561;
  v562 = v559[9];
  v561[9] = v559[8];
  v561[10] = v562;
  v561[11] = v559[10];
  v563 = v559[5];
  v561[5] = v559[4];
  v561[6] = v563;
  v564 = v559[7];
  v561[7] = v559[6];
  v561[8] = v564;
  v565 = v559[1];
  v561[1] = *v559;
  v561[2] = v565;
  v566 = v559[3];
  v561[3] = v559[2];
  v561[4] = v566;
  v567 = v542;
  v732 = v543;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v827, v556 + 112);
  sub_2277F9D0C(&v830, v556 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v90[92] = v555;
  v90[93] = &off_283AEB9C8;
  v90[89] = v556;
  v90[97] = sub_2278C71A0();
  v90[98] = MEMORY[0x277D09AC8];
  __swift_allocate_boxed_opaque_existential_1(v90 + 94);
  PickupObserver = v567;
  sub_2278C7190();
  v568 = v739;
  sub_2278040AC((v739 + 38), &v740);
  sub_2278040AC((v568 + 48), &v833);
  sub_2278040AC((v90 + 119), &v830);
  sub_2278040AC((v90 + 94), &v827);
  sub_2278040AC((v90 + 180), &v824);
  sub_2278040AC((v568 + 222), &v821);
  v717 = [boxed_opaque_existential_1 defaultCenter];
  v569 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  boxed_opaque_existential_1 = &v696;
  MEMORY[0x28223BE20](v569);
  v571 = &v696 - v570;
  (*(v572 + 16))(&v696 - v570);
  v573 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  v730 = &v696;
  MEMORY[0x28223BE20](v573);
  v575 = (&v696 - v574);
  (*(v576 + 16))(&v696 - v574);
  v577 = __swift_mutable_project_boxed_opaque_existential_1(&v830, v831);
  v716 = &v696;
  MEMORY[0x28223BE20](v577);
  v579 = &v696 - v578;
  (*(v580 + 16))(&v696 - v578);
  __swift_mutable_project_boxed_opaque_existential_1(&v824, v825);
  v581 = __swift_mutable_project_boxed_opaque_existential_1(&v821, v822);
  v715 = &v696;
  MEMORY[0x28223BE20](v581);
  v583 = (&v696 - v582);
  (*(v584 + 16))(&v696 - v582);
  v585 = *v575;
  v586 = *v583;
  v819 = v738;
  v820 = &off_283AE99D8;
  v587 = __swift_allocate_boxed_opaque_existential_1(&v818);
  sub_2278C4690(v571, v587, v737);
  v817 = &off_283AEBF40;
  v588 = v736;
  v816 = v736;
  *&v815 = v585;
  v813 = &type metadata for NotificationSettingsProvider;
  v814 = &off_283AE9E40;
  v589 = swift_allocObject();
  *&v812 = v589;
  v590 = *(v579 + 1);
  *(v589 + 16) = *v579;
  *(v589 + 32) = v590;
  *(v589 + 48) = *(v579 + 2);
  *(v589 + 64) = *(v579 + 6);
  v810 = &type metadata for PrivacySettingsProvider;
  v811 = &off_283AEBD28;
  v808 = &off_283AEB868;
  v591 = Description;
  v807 = Description;
  *&v806 = v586;
  v804 = &type metadata for GoalProgressConfigurationFactory;
  v805 = &off_283AEBB40;
  v714 = type metadata accessor for GoalProgressSystem();
  v592 = swift_allocObject();
  v593 = __swift_mutable_project_boxed_opaque_existential_1(&v818, v819);
  v713 = &v696;
  MEMORY[0x28223BE20](v593);
  v595 = &v696 - v594;
  (*(v596 + 16))(&v696 - v594);
  v597 = __swift_mutable_project_boxed_opaque_existential_1(&v815, v588);
  v712 = &v696;
  MEMORY[0x28223BE20](v597);
  v598 = (&v696 - v728);
  (v726)(&v696 - v728);
  v599 = __swift_mutable_project_boxed_opaque_existential_1(&v812, v813);
  v728 = &v696;
  MEMORY[0x28223BE20](v599);
  v601 = &v696 - v600;
  (*(v602 + 16))(&v696 - v600);
  __swift_mutable_project_boxed_opaque_existential_1(&v809, v810);
  v603 = __swift_mutable_project_boxed_opaque_existential_1(&v806, v807);
  v727 = &v696;
  MEMORY[0x28223BE20](v603);
  v605 = (&v696 - v604);
  (*(v606 + 16))(&v696 - v604);
  __swift_mutable_project_boxed_opaque_existential_1(&v803, v804);
  v607 = *v598;
  v608 = *v605;
  v801 = v738;
  v802 = &off_283AE99D8;
  v609 = __swift_allocate_boxed_opaque_existential_1(&v800);
  sub_2278C4690(v595, v609, v737);
  v799 = &off_283AEBF40;
  v798 = v588;
  *&v797 = v607;
  v795 = &type metadata for NotificationSettingsProvider;
  v796 = &off_283AE9E40;
  v610 = swift_allocObject();
  *&v794 = v610;
  v611 = *(v601 + 1);
  *(v610 + 16) = *v601;
  *(v610 + 32) = v611;
  *(v610 + 48) = *(v601 + 2);
  *(v610 + 64) = *(v601 + 6);
  v792 = &type metadata for PrivacySettingsProvider;
  v793 = &off_283AEBD28;
  v790 = &off_283AEB868;
  v789 = v591;
  *&v788 = v608;
  v786 = &type metadata for GoalProgressConfigurationFactory;
  v787 = &off_283AEBB40;
  swift_defaultActor_initialize();
  v592[14] = v724;
  sub_2277F9D0C(&v785, (v592 + 15));
  sub_2277F9D0C(&v800, (v592 + 20));
  sub_2277F9D0C(&v797, (v592 + 25));
  v592[30] = v717;
  sub_2277F9D0C(&v794, (v592 + 31));
  sub_2277F9D0C(&v827, (v592 + 41));
  sub_2277F9D0C(&v791, (v592 + 36));
  v592[46] = 0;
  sub_2277F9D0C(&v788, (v592 + 47));
  __swift_destroy_boxed_opaque_existential_0(&v803);
  __swift_destroy_boxed_opaque_existential_0(&v806);
  __swift_destroy_boxed_opaque_existential_0(&v809);
  __swift_destroy_boxed_opaque_existential_0(&v812);
  __swift_destroy_boxed_opaque_existential_0(&v815);
  __swift_destroy_boxed_opaque_existential_0(&v818);
  __swift_destroy_boxed_opaque_existential_0(&v821);
  __swift_destroy_boxed_opaque_existential_0(&v824);
  __swift_destroy_boxed_opaque_existential_0(&v830);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v90[102] = v714;
  v90[103] = &off_283AEBBE0;
  v90[99] = v592;
  v90[117] = &type metadata for MoveModeServiceFactory;
  v90[118] = &off_283AEA2D0;
  v90[114] = v722;
  sub_2278040AC((v90 + 114), &v740);
  v612 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  v738 = &v696;
  MEMORY[0x28223BE20](v612);
  v614 = (&v696 - v613);
  (*(v615 + 16))(&v696 - v613);
  v616 = *v614;
  v834 = &type metadata for MoveModeServiceFactory;
  v835 = &off_283AEA2D0;
  *&v833 = v616;
  v617 = v731;
  v618 = v732;
  v831 = v731;
  v832 = MEMORY[0x277D09898];
  *&v830 = v732;
  v619 = type metadata accessor for MoveModeListener();
  v620 = swift_allocObject();
  v621 = __swift_mutable_project_boxed_opaque_existential_1(&v833, &type metadata for MoveModeServiceFactory);
  MEMORY[0x28223BE20](v621);
  v623 = (&v696 - v622);
  (*(v624 + 16))(&v696 - v622);
  v625 = *v623;
  v828 = &type metadata for MoveModeServiceFactory;
  v829 = &off_283AEA2D0;
  *&v827 = v625;
  v626 = v618;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v827, v620 + 112);
  sub_2277F9D0C(&v830, v620 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v90[112] = v619;
  v90[113] = &off_283AEA248;
  v90[109] = v620;
  v90[209] = &type metadata for WalkSuggestionServiceFactory;
  v90[210] = &off_283AEC058;
  v627 = swift_allocObject();
  v90[206] = v627;
  v628 = v739;
  sub_2278040AC((v739 + 22), v627 + 16);
  sub_2278040AC((v628 + 38), v627 + 56);
  *(v627 + 96) = PickupObserver;
  sub_2278040AC((v90 + 206), &v740);
  v629 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  MEMORY[0x28223BE20](v629);
  v631 = &v696 - v630;
  (*(v632 + 16))(&v696 - v630);
  v834 = &type metadata for WalkSuggestionServiceFactory;
  v835 = &off_283AEC058;
  v633 = swift_allocObject();
  *&v833 = v633;
  v634 = *(v631 + 3);
  *(v633 + 48) = *(v631 + 2);
  *(v633 + 64) = v634;
  *(v633 + 80) = *(v631 + 4);
  *(v633 + 96) = *(v631 + 10);
  v635 = *(v631 + 1);
  *(v633 + 16) = *v631;
  *(v633 + 32) = v635;
  v831 = v617;
  v832 = MEMORY[0x277D09898];
  *&v830 = v626;
  v636 = v626;
  v637 = type metadata accessor for WalkSuggestionListener();
  v638 = swift_allocObject();
  v639 = __swift_mutable_project_boxed_opaque_existential_1(&v833, &type metadata for WalkSuggestionServiceFactory);
  MEMORY[0x28223BE20](v639);
  v641 = &v696 - v640;
  (*(v642 + 16))(&v696 - v640);
  v828 = &type metadata for WalkSuggestionServiceFactory;
  v829 = &off_283AEC058;
  v643 = swift_allocObject();
  *&v827 = v643;
  v644 = *(v641 + 3);
  *(v643 + 48) = *(v641 + 2);
  *(v643 + 64) = v644;
  *(v643 + 80) = *(v641 + 4);
  *(v643 + 96) = *(v641 + 10);
  v645 = *(v641 + 1);
  *(v643 + 16) = *v641;
  *(v643 + 32) = v645;
  v646 = v636;
  v738 = v646;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v827, v638 + 112);
  sub_2277F9D0C(&v830, v638 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v90[204] = v637;
  v90[205] = &off_283AEB968;
  v90[201] = v638;
  *(v90 - 17) = &type metadata for AchievementNotificationServiceFactory;
  *(v90 - 16) = &off_283AE9C30;
  v647 = swift_allocObject();
  *(v90 - 20) = v647;
  v648 = v739;
  sub_2278040AC((v739 + 22), (v647 + 2));
  sub_2278040AC((v648 + 38), (v647 + 7));
  sub_2278040AC((v90 + 134), (v647 + 13));
  sub_2278040AC((v90 + 180), (v647 + 18));
  v647[12] = PickupObserver;
  v649 = v718;
  v647[23] = v721;
  v647[24] = v649;
  sub_2278040AC((v90 - 20), &v740);
  v650 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  v737 = &v696;
  MEMORY[0x28223BE20](v650);
  v652 = &v696 - v651;
  (*(v653 + 16))(&v696 - v651);
  v834 = &type metadata for AchievementNotificationServiceFactory;
  v835 = &off_283AE9C30;
  v654 = swift_allocObject();
  *&v833 = v654;
  v655 = *(v652 + 9);
  *(v654 + 144) = *(v652 + 8);
  *(v654 + 160) = v655;
  *(v654 + 176) = *(v652 + 10);
  *(v654 + 192) = *(v652 + 22);
  v656 = *(v652 + 5);
  *(v654 + 80) = *(v652 + 4);
  *(v654 + 96) = v656;
  v657 = *(v652 + 7);
  *(v654 + 112) = *(v652 + 6);
  *(v654 + 128) = v657;
  v658 = *(v652 + 1);
  *(v654 + 16) = *v652;
  *(v654 + 32) = v658;
  v659 = *(v652 + 3);
  *(v654 + 48) = *(v652 + 2);
  *(v654 + 64) = v659;
  v831 = v617;
  v832 = MEMORY[0x277D09898];
  *&v830 = v646;
  v660 = type metadata accessor for AchievementNotificationListener();
  v661 = swift_allocObject();
  v662 = __swift_mutable_project_boxed_opaque_existential_1(&v833, &type metadata for AchievementNotificationServiceFactory);
  MEMORY[0x28223BE20](v662);
  v664 = &v696 - v663;
  (*(v665 + 16))(&v696 - v663);
  v828 = &type metadata for AchievementNotificationServiceFactory;
  v829 = &off_283AE9C30;
  v666 = swift_allocObject();
  *&v827 = v666;
  v667 = *(v664 + 9);
  *(v666 + 144) = *(v664 + 8);
  *(v666 + 160) = v667;
  *(v666 + 176) = *(v664 + 10);
  *(v666 + 192) = *(v664 + 22);
  v668 = *(v664 + 5);
  *(v666 + 80) = *(v664 + 4);
  *(v666 + 96) = v668;
  v669 = *(v664 + 7);
  *(v666 + 112) = *(v664 + 6);
  *(v666 + 128) = v669;
  v670 = *(v664 + 1);
  *(v666 + 16) = *v664;
  *(v666 + 32) = v670;
  v671 = *(v664 + 3);
  *(v666 + 48) = *(v664 + 2);
  *(v666 + 64) = v671;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v827, v661 + 112);
  sub_2277F9D0C(&v830, v661 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  *(v90 - 22) = v660;
  *(v90 - 21) = &off_283AEA498;
  *(v90 - 25) = v661;
  sub_2278040AC((v90 + 32), &v740);
  sub_2278040AC((v739 + 74), &v833);
  v672 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  MEMORY[0x28223BE20](v672);
  v674 = (&v696 - v673);
  (*(v675 + 16))(&v696 - v673);
  v676 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v834);
  MEMORY[0x28223BE20](v676);
  v678 = (&v696 - v677);
  (*(v679 + 16))(&v696 - v677);
  v680 = sub_2278C38A0(*v674, *v678);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  v681 = type metadata accessor for AdminSystem();
  *(v90 - 7) = v681;
  *(v90 - 6) = &off_283AE9C68;
  *(v90 - 10) = v680;
  sub_2278040AC((v90 - 10), &v740);
  v682 = __swift_mutable_project_boxed_opaque_existential_1(&v740, v741);
  MEMORY[0x28223BE20](v682);
  v684 = (&v696 - v683);
  (*(v685 + 16))(&v696 - v683);
  v686 = *v684;
  v834 = v681;
  v835 = &off_283AE9C68;
  *&v833 = v686;
  v831 = v731;
  v832 = MEMORY[0x277D09898];
  *&v830 = v738;
  v687 = type metadata accessor for AdminListener();
  v688 = swift_allocObject();
  v689 = __swift_mutable_project_boxed_opaque_existential_1(&v833, v681);
  MEMORY[0x28223BE20](v689);
  v691 = (&v696 - v690);
  (*(v692 + 16))(&v696 - v690);
  v693 = *v691;
  v828 = v681;
  v829 = &off_283AE9C68;
  *&v827 = v693;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v827, v688 + 112);
  sub_2277F9D0C(&v830, v688 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v833);
  __swift_destroy_boxed_opaque_existential_0(&v740);
  *(v90 - 12) = v687;
  *(v90 - 11) = &off_283AE9968;
  *(v90 - 15) = v688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6700, &qword_2278CEBC8);
  v694 = swift_allocObject();
  *(v694 + 16) = xmmword_2278C9F50;
  *(v694 + 56) = v720;
  *(v694 + 64) = &off_283AED120;
  *(v694 + 32) = v723;
  *(v694 + 96) = v729;
  *(v694 + 104) = &off_283AEC8D0;
  *(v694 + 72) = v719;
  v90[127] = &type metadata for NotificationConfigurationCoordinator;
  v90[128] = &off_283AEDC90;
  v90[124] = v722;
  v90[125] = v694;
  return sub_2278C4124(&v743);
}

uint64_t Daemon.activate()()
{
  v1[14] = v0;
  v2 = sub_2278C75A0();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278BFBB4, 0, 0);
}

uint64_t sub_2278BFBB4()
{
  v1 = *(*(v0 + 112) + 1904);
  *(v0 + 168) = v1;
  return MEMORY[0x2822009F8](sub_2278BFBD8, v1, 0);
}

uint64_t sub_2278BFBD8(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[15];
  v4 = v1[16];
  sub_2278C73A0();
  sub_2278C7580();
  v5 = *(v4 + 8);
  v1[22] = v5;
  v1[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = swift_task_alloc();
  v1[24] = v6;
  *v6 = v1;
  v6[1] = sub_2278BFCD8;

  return sub_22786364C();
}

uint64_t sub_2278BFCD8()
{

  return MEMORY[0x2822009F8](sub_2278BFDD4, 0, 0);
}

uint64_t sub_2278BFDD4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 384), *(*(v0 + 112) + 408));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_2278BFE74;

  return sub_227861A10();
}

uint64_t sub_2278BFE74()
{

  return MEMORY[0x2822009F8](sub_2278BFF70, 0, 0);
}

uint64_t sub_2278BFF70()
{
  v1 = *(*(v0 + 112) + 424);
  *(v0 + 208) = v1;
  return MEMORY[0x2822009F8](sub_2278BFF94, v1, 0);
}

uint64_t sub_2278BFF94()
{
  v1 = v0[26];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[27] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[28] = v5;
  v6 = sub_2278C6F70();
  *v5 = v0;
  v5[1] = sub_2278C00B4;
  v7 = MEMORY[0x277D09A00];

  return MEMORY[0x2821603E0](2, &unk_2278CEBD8, v4, v2, v6, v3, v7);
}

uint64_t sub_2278C00B4()
{

  return MEMORY[0x2822009F8](sub_2278C01CC, 0, 0);
}

uint64_t sub_2278C01CC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1088), *(*(v0 + 112) + 1112));
  v1 = off_283AEA250;
  v2 = type metadata accessor for MoveModeListener();
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_2278C0310;

  return (v5)(v2, &off_283AEA248);
}

uint64_t sub_2278C0310()
{

  return MEMORY[0x2822009F8](sub_2278C040C, 0, 0);
}

uint64_t sub_2278C040C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v1 = off_283AEA4A0;
  v2 = type metadata accessor for AchievementNotificationListener();
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  *v3 = v0;
  v3[1] = sub_2278C0550;

  return (v5)(v2, &off_283AEA498);
}

uint64_t sub_2278C0550()
{

  return MEMORY[0x2822009F8](sub_2278C064C, 0, 0);
}

uint64_t sub_2278C064C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1248), *(*(v0 + 112) + 1272));
  v1 = off_283AECF68;
  v2 = type metadata accessor for NotificationRequestListener();
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_2278C0790;

  return (v5)(v2, &off_283AECF60);
}

uint64_t sub_2278C0790()
{

  return MEMORY[0x2822009F8](sub_2278C088C, 0, 0);
}

uint64_t sub_2278C088C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 808), *(*(v0 + 112) + 832));
  v1 = off_283AEB6A8;
  v2 = type metadata accessor for GoalCompletionListener();
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_2278C09D0;

  return (v5)(v2, &off_283AEB6A0);
}

uint64_t sub_2278C09D0()
{

  return MEMORY[0x2822009F8](sub_2278C0ACC, 0, 0);
}

uint64_t sub_2278C0ACC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 928), *(*(v0 + 112) + 952));
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_2278C0B6C;

  return sub_2278568BC();
}

uint64_t sub_2278C0B6C()
{

  return MEMORY[0x2822009F8](sub_2278C0C68, 0, 0);
}

uint64_t sub_2278C0C68()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1824), *(*(v0 + 112) + 1848));
  v1 = off_283AEB970;
  v2 = type metadata accessor for WalkSuggestionListener();
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  v3[1] = sub_2278C0DAC;

  return (v5)(v2, &off_283AEB968);
}

uint64_t sub_2278C0DAC()
{

  return MEMORY[0x2822009F8](sub_2278C0EA8, 0, 0);
}

uint64_t sub_2278C0EA8()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1008), *(*(v0 + 112) + 1032));
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_2278C0F48;

  return sub_227858E84();
}

uint64_t sub_2278C0F48()
{

  return MEMORY[0x2822009F8](sub_2278C1044, 0, 0);
}

uint64_t sub_2278C1044()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 512), *(*(v0 + 112) + 536));
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_2278C10E4;

  return sub_22780F210();
}

uint64_t sub_2278C10E4()
{

  return MEMORY[0x2822009F8](sub_2278C11E0, 0, 0);
}

uint64_t sub_2278C11E0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1776), *(*(v0 + 112) + 1800));
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_2278C1280;

  return sub_227853530();
}

uint64_t sub_2278C1280()
{

  return MEMORY[0x2822009F8](sub_2278C137C, 0, 0);
}

uint64_t sub_2278C137C()
{
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_2278C1410;

  return sub_22785F5BC();
}

uint64_t sub_2278C1410()
{

  return MEMORY[0x2822009F8](sub_2278C150C, 0, 0);
}

uint64_t sub_2278C150C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1616), *(*(v0 + 112) + 1640));
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_2278C15AC;

  return sub_227826000();
}

uint64_t sub_2278C15AC()
{

  return MEMORY[0x2822009F8](sub_2278C16A8, 0, 0);
}

uint64_t sub_2278C16A8()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1488), *(*(v0 + 112) + 1512));
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_2278C1748;

  return sub_2278A8678();
}

uint64_t sub_2278C1748()
{

  return MEMORY[0x2822009F8](sub_2278C1844, 0, 0);
}

uint64_t sub_2278C1844()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1448), *(*(v0 + 112) + 1472));
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_2278C18E4;

  return sub_227813DE4();
}

uint64_t sub_2278C18E4()
{

  return MEMORY[0x2822009F8](sub_2278C19E0, 0, 0);
}

uint64_t sub_2278C19E0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 96), *(*(v0 + 112) + 120));
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_2278C1A80;

  return sub_227803294();
}

uint64_t sub_2278C1A80()
{

  return MEMORY[0x2822009F8](sub_2278C1B7C, 0, 0);
}

uint64_t sub_2278C1B7C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1048), *(*(v0 + 112) + 1072));
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_2278C1C1C;

  return sub_2277FFBB4();
}

uint64_t sub_2278C1C1C()
{

  return MEMORY[0x2822009F8](sub_2278C1D18, 0, 0);
}

uint64_t sub_2278C1D18()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1208), *(*(v0 + 112) + 1232));
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_2278C1DC0;

  return sub_2278C5138(v3, v2);
}

uint64_t sub_2278C1DC0()
{

  return MEMORY[0x2822009F8](sub_2278C1EBC, 0, 0);
}

uint64_t sub_2278C1EBC()
{
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1(v1 + 191, v1[194]);
  sub_22786CFE0();
  __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
  sub_22780445C();
  __swift_project_boxed_opaque_existential_1(v1 + 166, v1[169]);
  v2 = swift_task_alloc();
  *(v0 + 360) = v2;
  *v2 = v0;
  v2[1] = sub_2278C1F84;

  return sub_227822110();
}

uint64_t sub_2278C1F84()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_2278C2138;
  }

  else
  {
    v2 = sub_2278C2098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2278C2098()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 592), *(*(v0 + 112) + 616));
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  v1[1] = sub_2278C2344;

  return sub_22783DE6C();
}

uint64_t sub_2278C2138(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 368);
  sub_2278C73A0();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 368);
    v19 = *(v1 + 176);
    v7 = *(v1 + 152);
    v8 = *(v1 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA9DD80](*(v1 + 72), *(v1 + 80));
    v13 = sub_2278021B4(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error activating notification request scheduler: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);

    v19(v7, v8);
  }

  else
  {
    v14 = *(v1 + 176);
    v15 = *(v1 + 152);
    v16 = *(v1 + 120);

    v14(v15, v16);
  }

  __swift_project_boxed_opaque_existential_1((*(v1 + 112) + 592), *(*(v1 + 112) + 616));
  v17 = swift_task_alloc();
  *(v1 + 376) = v17;
  *v17 = v1;
  v17[1] = sub_2278C2344;

  return sub_22783DE6C();
}

uint64_t sub_2278C2344()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_2278C2678;
  }

  else
  {
    v2 = sub_2278C2458;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2278C2458()
{
  v19 = v0;
  v1 = v0[48];
  sub_2278007E4();
  if (v1)
  {
    sub_2278C73A0();
    v2 = v1;
    v3 = sub_2278C7590();
    v4 = sub_2278C7950();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[22];
    v7 = v0[17];
    v8 = v0[15];
    if (v5)
    {
      v17 = v0[22];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = MEMORY[0x22AA9DD80](v0[3], v0[4]);
      v13 = sub_2278021B4(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2277F7000, v3, v4, "Error activating sleep observer: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA9E860](v10, -1, -1);
      MEMORY[0x22AA9E860](v9, -1, -1);

      v17(v7, v8);
    }

    else
    {

      v6(v7, v8);
    }
  }

  v14 = v0[14];
  [*(v14 + 1736) activate];
  __swift_project_boxed_opaque_existential_1((v14 + 760), *(v14 + 784));
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_2278C29E4;

  return sub_2278A086C();
}

uint64_t sub_2278C2678(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 384);
  sub_2278C73A0();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 384);
    v20 = *(v1 + 176);
    v7 = *(v1 + 144);
    v8 = *(v1 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA9DD80](*(v1 + 48), *(v1 + 56));
    v13 = sub_2278021B4(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error activating first pickup observer: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);

    v20(v7, v8);
  }

  else
  {
    v14 = *(v1 + 176);
    v15 = *(v1 + 144);
    v16 = *(v1 + 120);

    v14(v15, v16);
  }

  sub_2278007E4();
  v17 = *(v1 + 112);
  [*(v17 + 1736) activate];
  __swift_project_boxed_opaque_existential_1((v17 + 760), *(v17 + 784));
  v18 = swift_task_alloc();
  *(v1 + 392) = v18;
  *v18 = v1;
  v18[1] = sub_2278C29E4;

  return sub_2278A086C();
}

uint64_t sub_2278C29E4()
{

  return MEMORY[0x2822009F8](sub_2278C2AE0, 0, 0);
}

uint64_t sub_2278C2AE0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1576), *(*(v0 + 112) + 1600));
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v1[1] = sub_2278C2B80;

  return sub_22787E42C();
}

uint64_t sub_2278C2B80()
{

  return MEMORY[0x2822009F8](sub_2278C2C7C, 0, 0);
}

uint64_t sub_2278C2C7C()
{
  v4 = *(*(v0 + 112) + 1912);
  v1 = v4;

  XPCStreamHandler.activate()();

  sub_2278C6DD0();

  v2 = *(v0 + 8);

  return v2();
}

id sub_2278C2D50(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v19) = a3;
  v5 = type metadata accessor for DateProvider(0);
  v27 = v5;
  v28 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_2278C4690(a1, boxed_opaque_existential_1, type metadata accessor for DateProvider);
  v24 = &type metadata for DuetObserver;
  v25 = &off_283AEA5D0;
  v7 = type metadata accessor for SleepObserver();
  v8 = objc_allocWithZone(v7);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v22[3] = v5;
  v22[4] = &off_283AE99D8;
  v13 = __swift_allocate_boxed_opaque_existential_1(v22);
  sub_2278C4690(v11, v13, type metadata accessor for DateProvider);
  v21[3] = &type metadata for DuetObserver;
  v21[4] = &off_283AEA5D0;
  sub_2278040AC(v22, &v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider]);
  sub_2278040AC(v21, &v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_duetObserver]);
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *&v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_lock] = v14;
  *&v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_notificationCenter] = a2;
  v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_platform] = BYTE4(v19);
  v16 = &v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_state];
  *v16 = 0;
  v16[8] = -1;
  v20.receiver = v8;
  v20.super_class = v7;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v17;
}

void *sub_2278C2FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DateProvider(0);
  v32 = v8;
  v33 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_2278C4690(a1, boxed_opaque_existential_1, type metadata accessor for DateProvider);
  PickupObserver = type metadata accessor for FirstPickupObserver(0);
  v30[3] = PickupObserver;
  v30[4] = &off_283AEB078;
  v30[0] = a2;
  type metadata accessor for UserDayProvider();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, PickupObserver);
  MEMORY[0x28223BE20](v16);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v28 = v8;
  v29 = &off_283AE99D8;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v27);
  sub_2278C4690(v14, v21, type metadata accessor for DateProvider);
  v25 = PickupObserver;
  v26 = &off_283AEB078;
  *&v24 = v20;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v27, (v11 + 14));
  sub_2277F9D0C(&v24, (v11 + 19));
  v11[24] = a4;
  v11[25] = a3;
  v11[26] = 0;
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v11;
}

uint64_t sub_2278C320C(uint64_t a1, uint64_t a2)
{
  v32[3] = &type metadata for DuetObserver;
  v32[4] = &off_283AEA5D0;
  v31[3] = &type metadata for NotificationRequestPublisher;
  v31[4] = &off_283AEB7B8;
  v31[0] = a1;
  v30[3] = &type metadata for LockStateProvider;
  v30[4] = &off_283AE99C0;
  v3 = type metadata accessor for NotificationRequestStore();
  v29[3] = v3;
  v29[4] = &off_283AED820;
  v29[0] = a2;
  type metadata accessor for NotificationRequestScheduler();
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v32, &type metadata for DuetObserver);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v31, &type metadata for NotificationRequestPublisher);
  MEMORY[0x28223BE20](v5);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for LockStateProvider);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v29, v3);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v7;
  v14 = *v11;
  v27 = &type metadata for DuetObserver;
  v28 = &off_283AEA5D0;
  v24 = &type metadata for NotificationRequestPublisher;
  v25 = &off_283AEB7B8;
  v22 = &off_283AE99C0;
  *&v23 = v13;
  v21 = &type metadata for LockStateProvider;
  v18 = v3;
  v19 = &off_283AED820;
  *&v17 = v14;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v26, v4 + 112);
  sub_2277F9D0C(&v23, v4 + 152);
  sub_2277F9D0C(&v17, v4 + 192);
  sub_2277F9D0C(&v20, v4 + 232);
  *(v4 + 272) = 0;
  *(v4 + 280) = -1;
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v4;
}

uint64_t sub_2278C34A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DateProvider(0);
  v56 = v8;
  v57 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  sub_2278C4690(a1, boxed_opaque_existential_1, type metadata accessor for DateProvider);
  v10 = type metadata accessor for PauseRingsSystem();
  v54[3] = v10;
  v54[4] = &off_283AEC8E0;
  v54[0] = a2;
  v52 = &type metadata for PauseRingsServiceFactory;
  v53 = &off_283AEAF90;
  v11 = swift_allocObject();
  v51[0] = v11;
  v12 = *(a3 + 144);
  *(v11 + 144) = *(a3 + 128);
  *(v11 + 160) = v12;
  *(v11 + 176) = *(a3 + 160);
  v13 = *(a3 + 80);
  *(v11 + 80) = *(a3 + 64);
  *(v11 + 96) = v13;
  v14 = *(a3 + 112);
  *(v11 + 112) = *(a3 + 96);
  *(v11 + 128) = v14;
  v15 = *(a3 + 16);
  *(v11 + 16) = *a3;
  *(v11 + 32) = v15;
  v16 = *(a3 + 48);
  *(v11 + 48) = *(a3 + 32);
  *(v11 + 64) = v16;
  v49 = sub_2278C6DF0();
  v50 = MEMORY[0x277D09898];
  *&v48 = a4;
  type metadata accessor for PauseRingsListener();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v54, v10);
  MEMORY[0x28223BE20](v22);
  v24 = (&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  MEMORY[0x28223BE20](v26);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  v30 = *v24;
  v46 = v8;
  v47 = &off_283AE99D8;
  v31 = __swift_allocate_boxed_opaque_existential_1(&v45);
  sub_2278C4690(v20, v31, type metadata accessor for DateProvider);
  v43 = v10;
  v44 = &off_283AEC8E0;
  *&v42 = v30;
  v40 = &type metadata for PauseRingsServiceFactory;
  v41 = &off_283AEAF90;
  v32 = swift_allocObject();
  *&v39 = v32;
  v33 = *(v28 + 9);
  *(v32 + 144) = *(v28 + 8);
  *(v32 + 160) = v33;
  *(v32 + 176) = *(v28 + 20);
  v34 = *(v28 + 5);
  *(v32 + 80) = *(v28 + 4);
  *(v32 + 96) = v34;
  v35 = *(v28 + 7);
  *(v32 + 112) = *(v28 + 6);
  *(v32 + 128) = v35;
  v36 = *(v28 + 1);
  *(v32 + 16) = *v28;
  *(v32 + 32) = v36;
  v37 = *(v28 + 3);
  *(v32 + 48) = *(v28 + 2);
  *(v32 + 64) = v37;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v45, v17 + 112);
  sub_2277F9D0C(&v42, v17 + 152);
  sub_2277F9D0C(&v39, v17 + 192);
  sub_2277F9D0C(&v48, v17 + 232);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v55);
  return v17;
}

uint64_t sub_2278C38A0(uint64_t a1, uint64_t a2)
{
  v23[3] = &type metadata for FirstGlanceStore;
  v23[4] = &off_283AEC780;
  v23[0] = a1;
  PickupObserver = type metadata accessor for FirstPickupObserver(0);
  v22[3] = PickupObserver;
  v22[4] = &off_283AEB078;
  v22[0] = a2;
  type metadata accessor for AdminSystem();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, &type metadata for FirstGlanceStore);
  MEMORY[0x28223BE20](v5);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v22, PickupObserver);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v7;
  v14 = *v11;
  v20 = &type metadata for FirstGlanceStore;
  v21 = &off_283AEC780;
  v18 = &off_283AEB078;
  *&v19 = v13;
  v17 = PickupObserver;
  *&v16 = v14;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v19, v4 + 112);
  sub_2277F9D0C(&v16, v4 + 152);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v4;
}

unint64_t sub_2278C3AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60E0, &qword_2278CE840);
    v3 = sub_2278C7D50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2278AE31C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2278C3BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6660, &qword_2278CE820);
    v3 = sub_2278C7D50();
    v4 = a1 + 32;

    while (1)
    {
      sub_227850448(v4, v13, &qword_27D7D6150, &unk_2278CAAE0);
      result = sub_2278AE394(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2278A7620(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2278C3CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6678, qword_2278CE848);
    v3 = sub_2278C7D50();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2278AE31C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2278C3DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6720, qword_2278CEE20);
    v3 = sub_2278C7D50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2278AE3D8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2278C3EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6718, &unk_2278CEE10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6668, &qword_2278CE828);
    v7 = sub_2278C7D50();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_227850448(v9, v5, &qword_27D7D6718, &unk_2278CEE10);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2278AE31C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for NotificationRequest(0);
      result = sub_2278C4690(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for NotificationRequest);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2278C4178(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_22781CCB0(a1, v1);
}

uint64_t sub_2278C421C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1936))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2278C4264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1928) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1936) = 1;
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

    *(result + 1936) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2278C44B4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6710, &qword_2278CEE08);
  v3 = sub_2278C7D50();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_2278AE46C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_2278AE46C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2278C45B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6708, &qword_2278CEE00);
    v3 = sub_2278C7D50();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2278AE46C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2278C4690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2278C46F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x6169726F67657267 && a2 == 0xE90000000000006ELL;
  if (v5 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9830];
LABEL_7:
    v8 = *v7;
    v9 = sub_2278C6870();
    v16 = *(v9 - 8);
    (*(v16 + 104))(a3, v8, v9);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
    goto LABEL_8;
  }

  if (a1 == 0x7473696864647562 && a2 == 0xE800000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9820];
    goto LABEL_7;
  }

  if (a1 == 0x6573656E696863 && a2 == 0xE700000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9800];
    goto LABEL_7;
  }

  if (a1 == 0x636974706F63 && a2 == 0xE600000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97E8];
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x80000002278D33B0 == a2 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97E0];
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x80000002278D33D0 == a2 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97D8];
    goto LABEL_7;
  }

  if (a1 == 0x776572626568 && a2 == 0xE600000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97F0];
    goto LABEL_7;
  }

  if (a1 == 0x313036386F7369 && a2 == 0xE700000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9810];
    goto LABEL_7;
  }

  if (a1 == 0x6E6169646E69 && a2 == 0xE600000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97F8];
    goto LABEL_7;
  }

  if (a1 == 0x63696D616C7369 && a2 == 0xE700000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9808];
    goto LABEL_7;
  }

  if (a1 == 0x4363696D616C7369 && a2 == 0xEC0000006C697669 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97B8];
    goto LABEL_7;
  }

  if (a1 == 0x6573656E6170616ALL && a2 == 0xE800000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9828];
    goto LABEL_7;
  }

  if (a1 == 0x6E616973726570 && a2 == 0xE700000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9818];
    goto LABEL_7;
  }

  if (a1 == 0x63696C6275706572 && a2 == 0xEF616E696843664FLL || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97C8];
    goto LABEL_7;
  }

  if (a1 == 0x5463696D616C7369 && a2 == 0xEE0072616C756261 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97C0];
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x80000002278D33F0 == a2 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97D0];
    goto LABEL_7;
  }

  v15 = sub_2278C6870();
  v10 = *(*(v15 - 8) + 56);
  v13 = v15;
  v11 = a3;
  v12 = 1;
LABEL_8:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_2278C4CA8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

void sub_2278C4DD0(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2278C7B80();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2278B4884(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_2278C7B30();
    }

    else
    {
      v3 = sub_2278C7B00();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_2278C59C4(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 identifier];
        v14 = sub_2278C7700();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2278B4884((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_2278C7B50())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6730, qword_2278CEF20);
          v6 = sub_2278C78F0();
          sub_2278C7BC0();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_2278B4F84(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_2278B4F84(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_2278B4F84(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_2278C5138(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2278C5158, 0, 0);
}

uint64_t sub_2278C5158()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v1[20];
  v4 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 32;
    do
    {
      sub_2278040AC(v6, v2);
      v7 = v1[13];
      v8 = v1[14];
      __swift_project_boxed_opaque_existential_1(v2, v7);
      v9 = (*(v8 + 8))(v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v2);
      sub_2278056E4(v9);
      v6 += 40;
      --v5;
    }

    while (v5);
    v4 = v15;
  }

  v10 = v1[19];
  v11 = sub_2278A4CF8(v4);
  v1[21] = v11;

  sub_2278C4DD0(v11);
  v1[22] = v12;
  v1[23] = 0;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_2278C532C;
  v13 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6728, &unk_2278CEF10);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2278C54E8;
  v1[13] = &block_descriptor_24;
  v1[14] = v13;
  [v10 getNotificationCategoriesWithCompletionHandler_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_2278C532C()
{

  return MEMORY[0x2822009F8](sub_2278C540C, 0, 0);
}

uint64_t sub_2278C540C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_2278C60E0(v0[18], v0[22]);

  sub_2278C5570(v1, v3);
  sub_22780670C();
  sub_2278C6368();
  v4 = sub_2278C78C0();

  [v2 setNotificationCategories_];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2278C54E8(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_22780670C();
  sub_2278C6368();
  **(*(v2 + 64) + 40) = sub_2278C78D0();

  return MEMORY[0x282200948](v2);
}

void sub_2278C5570(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2278C7B40();
    sub_22780670C();
    sub_2278C6368();
    sub_2278C7900();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_227806704(v2);
      return;
    }

    while (1)
    {
      sub_2278A3750(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2278C7BB0())
      {
        sub_22780670C();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_2278C5734(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2278C5BF0(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_2278C57D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65A8, &unk_2278CE228);
  result = sub_2278C7C30();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2278C7A80();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2278C59C4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA9DB10](a1, a2, v7);
      sub_22780670C();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22780670C();
    if (sub_2278C7B60() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2278C7B70();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2278C7A80();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2278C7A90();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_2278C5BF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = 0;
  v29 = a4;
  v26 = a2;
  v27 = a1;
  v6 = 0;
  v30 = a3;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v33 = v5;
    v12 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v30 + 48) + 8 * v15);
    v17 = [v16 identifier];
    v18 = sub_2278C7700();
    v20 = v19;

    v32[0] = v18;
    v32[1] = v20;
    MEMORY[0x28223BE20](v21);
    v25[2] = v32;
    v22 = v33;
    LOBYTE(v17) = sub_227886AFC(sub_2278C63E0, v25, v29);
    v5 = v22;

    v10 = v31;
    if ((v17 & 1) == 0)
    {
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_15:
        v24 = v30;

        sub_2278C57D0(v27, v26, v28, v24);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v33 = v5;
      v12 = __clz(__rbit64(v14));
      v31 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2278C5DDC(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v30 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v30;
  v34 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29[1] = v29;
    MEMORY[0x28223BE20](v8);
    v31 = v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v7);
    v32 = 0;
    v33 = v4;
    v7 = 0;
    v9 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v4 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
      v36 = v3;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = *(*(v33 + 48) + 8 * v16);
      v18 = [v17 identifier];
      v19 = sub_2278C7700();
      v21 = v20;

      v37[0] = v19;
      v37[1] = v21;
      MEMORY[0x28223BE20](v22);
      v29[-2] = v37;
      v23 = v36;
      LOBYTE(v18) = sub_227886AFC(sub_2278C63E0, &v29[-4], v34);
      v3 = v23;

      v12 = v35;
      if ((v18 & 1) == 0)
      {
        *&v31[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_2278C57D0(v31, v30, v32, v33);
          goto LABEL_17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_16;
      }

      v15 = *(v9 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
        v36 = v3;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;

  v25 = sub_2278C5734(v27, v30, v4, v28);

  MEMORY[0x22AA9E860](v27, -1, -1);
LABEL_17:

  return v25;
}

uint64_t sub_2278C60E0(int64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2278C5DDC(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];

  sub_2278C7B40();
  v4 = sub_2278C7BB0();
  if (v4)
  {
    v5 = v4;
    sub_22780670C();
    v6 = v5;
    do
    {
      v25[0] = v6;
      swift_dynamicCast();
      v7 = [v26 identifier];
      v8 = sub_2278C7700();
      v10 = v9;

      v25[0] = v8;
      v25[1] = v10;
      MEMORY[0x28223BE20](v11);
      v24[2] = v25;
      LOBYTE(v7) = sub_227886AFC(sub_2278C63C0, v24, a2);

      v12 = v26;
      if (v7)
      {
      }

      else
      {
        v13 = *(v3 + 16);
        if (*(v3 + 24) <= v13)
        {
          sub_2278A3BE8(v13 + 1);
        }

        v3 = v27;
        result = sub_2278C7A80();
        v15 = v3 + 56;
        v16 = -1 << *(v3 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v15 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v3 + 48) + 8 * v19) = v12;
        ++*(v3 + 16);
      }

      v6 = sub_2278C7BB0();
    }

    while (v6);
  }

  return v3;
}

unint64_t sub_2278C6368()
{
  result = qword_2813B9AE0;
  if (!qword_2813B9AE0)
  {
    sub_22780670C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9AE0);
  }

  return result;
}

unint64_t sub_2278C6410()
{
  result = qword_27D7D6738;
  if (!qword_27D7D6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6738);
  }

  return result;
}