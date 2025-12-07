uint64_t sub_265CA68C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_265D58560();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
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

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_265D58530();
          v49 = v48;
          sub_265D58530();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v49 < v51)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
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

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_265D58530();
        v29 = v28;
        sub_265D58530();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v29 >= v31)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_265CA6F08(&v68, &v67, &v66);
  return 1;
}

uint64_t sub_265CA6E68(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_265CA6EF4(v3);
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

uint64_t sub_265CA6F08(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_265D58560();
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

char *sub_265CA6FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E360, qword_265D5B718);
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

unint64_t sub_265CA7108()
{
  v1 = sub_265D57E50();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  if (!(v6 >> 6))
  {
    return 0xD000000000000011;
  }

  if (v6 >> 6 != 1)
  {
    return 0x6576697463616E69;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  v7 = v3;
  sub_265D5A200();

  v12 = 0xD000000000000014;
  v13 = 0x8000000265D60440;
  sub_265D59830();
  sub_265CA72EC();
  v8 = sub_265D5A3B0();
  MEMORY[0x26676FFC0](v8);

  (*(v2 + 8))(v5, v7);
  MEMORY[0x26676FFC0](0x737269467369202CLL, 0xEE00206E696F4A74);
  if (v6)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v6)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x26676FFC0](v9, v10);

  return v12;
}

unint64_t sub_265CA72EC()
{
  result = qword_28003E368;
  if (!qword_28003E368)
  {
    sub_265D57E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E368);
  }

  return result;
}

uint64_t sub_265CA7344(uint64_t a1, uint64_t a2)
{
  v3 = sub_265D59650();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_265CB5E54(&qword_2813B8FA8, MEMORY[0x277D4F998], MEMORY[0x277D4F9A0]), v7 = sub_265D59E60(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_265CB5E54(&qword_2813B8FA0, MEMORY[0x277D4F998], MEMORY[0x277D4F9A8]);
      v15 = sub_265D59E80();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_265CA755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_265D5A460();
  sub_265D59EF0();
  v6 = sub_265D5A4A0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_265D5A3C0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_265CA7654(uint64_t a1, uint64_t a2)
{
  v3 = sub_265D58330();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]), v7 = sub_265D59E60(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_265CB5E54(&qword_28003E338, MEMORY[0x277D51510], MEMORY[0x277D51528]);
      v15 = sub_265D59E80();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_265CA786C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_265D5A460(), sub_265D58140(), sub_265D59EF0(), , v3 = sub_265D5A4A0(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_265D58140();
      v9 = v8;
      if (v7 == sub_265D58140() && v9 == v10)
      {
        break;
      }

      v12 = sub_265D5A3C0();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_265CA79BC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_265D5A140();
    v5 = v4;
    v6 = sub_265D5A1B0();
    v8 = v7;
    v9 = MEMORY[0x266770220](v3, v5, v6, v7);
    sub_265CB9728(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_265CB9728(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_265D5A120();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_265CB9368(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_265CB9728(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_265CA7AD8(uint64_t a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 72);
  if ((v6 & 0xC0) == 0x80 && ((v7 = vorrq_s8(*(a1 + 40), *(a1 + 56)), v8 = *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | *(a1 + 32), v6 == 128) ? (v9 = v8 == 0) : (v9 = 0), v9))
  {
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF28, &qword_265D5B160);
    sub_265CB9320(&qword_2813B8F98, &unk_28003DF28, &qword_265D5B160, MEMORY[0x277CCB148]);
    v14 = sub_265D59E10();

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    *(a1 + 32) = v14;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    v20 = *(a1 + 72);
    *(a1 + 72) = 0;
    return sub_265CB90F8(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    sub_265D59610();
    v10 = sub_265D59DD0();
    v11 = sub_265D5A070();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_265C01000, v10, v11, "Link: Failed to activate because state was not inactive", v12, 2u);
      MEMORY[0x266770CF0](v12, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_265CA7D30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265CA7D90(v2);
  }

  return result;
}

uint64_t sub_265CA7D90(uint64_t a1)
{
  v2 = 0;
  v188[4] = *MEMORY[0x277D85DE8];
  v3 = sub_265D59900();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v142 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3D0, &qword_265D5B8E8);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v141 - v6;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3D8, &qword_265D5B8F0);
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v141 - v7;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3E0, &qword_265D5B8F8);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v141 - v8;
  v152 = sub_265D593B0();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_265D59E20();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_265D59E40();
  v173 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_265D59DE0();
  v169 = *(v170 - 8);
  v12 = MEMORY[0x28223BE20](v170);
  v14 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v162 = &v141 - v16;
  MEMORY[0x28223BE20](v15);
  *&v183 = &v141 - v17;
  v18 = sub_265D59D70();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_265D58330();
  v165 = *(v171 - 8);
  v22 = MEMORY[0x28223BE20](v171);
  v149 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v148 = &v141 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v141 - v26;
  sub_265D598A0();
  v172 = v27;
  sub_265D59D60();
  (*(v19 + 8))(v21, v18);
  sub_265D597D0();
  swift_allocObject();

  v168 = sub_265D597C0();
  v28 = [objc_allocWithZone(MEMORY[0x277D6EE98]) init];
  v29 = [v28 activeConversations];

  sub_265C932E0(0, &qword_28003E3E8, 0x277D6EE60);
  sub_265CB917C();
  v30 = sub_265D5A040();

  v32 = MEMORY[0x277D84FA0];
  v167 = a1;
  v144 = v3;
  v143 = v4;
  v163 = v14;
  if ((v30 & 0xC000000000000001) == 0)
  {
    v48 = *(v30 + 32);
    v182 = ((1 << v48) + 63) >> 6;
    if ((v48 & 0x3Fu) <= 0xD)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  aBlock = MEMORY[0x277D84FA0];
  sub_265D5A150();
  v33 = sub_265D5A1A0();
  if (v33)
  {
    v34 = MEMORY[0x277D84FA0];
    do
    {
      v184 = v33;
      swift_dynamicCast();
      v35 = [v185 state];
      v36 = v185;
      if (v35 == 3)
      {
        v37 = *(v34 + 16);
        if (*(v34 + 24) <= v37)
        {
          sub_265CB5E9C(v37 + 1);
        }

        v34 = aBlock;
        v30 = v36;
        v38 = sub_265D5A0C0();
        v39 = v34 + 56;
        v40 = -1 << *(v34 + 32);
        v41 = v38 & ~v40;
        v42 = v41 >> 6;
        if (((-1 << v41) & ~*(v34 + 56 + 8 * (v41 >> 6))) != 0)
        {
          v43 = __clz(__rbit64((-1 << v41) & ~*(v34 + 56 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v44 = 0;
          v45 = (63 - v40) >> 6;
          do
          {
            if (++v42 == v45 && (v44 & 1) != 0)
            {
              __break(1u);
              goto LABEL_56;
            }

            v46 = v42 == v45;
            if (v42 == v45)
            {
              v42 = 0;
            }

            v44 |= v46;
            v47 = *(v39 + 8 * v42);
          }

          while (v47 == -1);
          v43 = __clz(__rbit64(~v47)) + (v42 << 6);
        }

        *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        *(*(v34 + 48) + 8 * v43) = v36;
        ++*(v34 + 16);
      }

      else
      {
      }

      v33 = sub_265D5A1A0();
    }

    while (v33);
  }

  else
  {
    v34 = v32;
  }

  while (1)
  {
LABEL_38:
    v62 = sub_265CA79BC(v34);

    if (v62)
    {
      v63 = [v62 localMember];
      v64 = v167;
      v65 = v183;
      if (v63)
      {
        v66 = v63;
        v67 = [v63 handle];

        v68 = [v67 value];
        v69 = sub_265D59EA0();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }
    }

    else
    {
      v69 = 0;
      v71 = 0;
      v64 = v167;
      v65 = v183;
    }

    *&v183 = v2;
    v164 = v71;
    sub_265D59610();

    v72 = sub_265D59DD0();
    v73 = v164;
    v74 = v72;
    v75 = sub_265D5A080();

    v76 = os_log_type_enabled(v74, v75);
    v147 = v62;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v185 = v78;
      *v77 = 136315138;
      aBlock = v69;
      v187 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v79 = sub_265D5A0E0();
      v81 = sub_265CF4FFC(v79, v80, &v185);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_265C01000, v74, v75, "Link: Local address: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266770CF0](v78, -1, -1);
      MEMORY[0x266770CF0](v77, -1, -1);
    }

    v146 = *(v169 + 8);
    v82 = v146(v65, v170);
    MEMORY[0x28223BE20](v82);
    *(&v141 - 6) = v83;
    *(&v141 - 5) = v64;
    v84 = v168;
    *(&v141 - 4) = v172;
    *(&v141 - 3) = v84;
    *(&v141 - 2) = v69;
    *(&v141 - 1) = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3F8, &qword_265D5B900);
    v2 = v183;
    sub_265D58CA0();
    v182 = aBlock;
    v177 = *(aBlock + 16);
    if (!v177)
    {
      break;
    }

    v30 = 0;
    v176 = v182 + 32;
    v175 = v188;
    ++v174;
    ++v173;
    while (v30 < *(v182 + 16))
    {
      v85 = swift_allocObject();
      v183 = *(v176 + 16 * v30);
      *(v85 + 16) = v183;
      sub_265C932E0(0, &qword_2813B6CE0, 0x277D85C78);
      swift_retain_n();
      v86 = sub_265D5A090();
      v87 = swift_allocObject();
      *(v87 + 16) = sub_265CB9208;
      *(v87 + 24) = v85;
      v188[2] = sub_265CB9248;
      v188[3] = v87;
      aBlock = MEMORY[0x277D85DD0];
      v187 = 1107296256;
      v188[0] = sub_265D4BEAC;
      v188[1] = &block_descriptor_0;
      v88 = _Block_copy(&aBlock);

      v2 = v178;
      sub_265D59E30();
      aBlock = MEMORY[0x277D84F90];
      sub_265CB5E54(&qword_28003E400, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E408, &qword_265D5B908);
      sub_265CB9320(&qword_28003E410, &qword_28003E408, &qword_265D5B908, MEMORY[0x277D83970]);
      v90 = v180;
      v89 = v181;
      sub_265D5A110();
      MEMORY[0x266770160](0, v2, v90, v88);
      _Block_release(v88);

      (*v174)(v90, v89);
      (*v173)(v2, v179);
      if (v177 == ++v30)
      {
        goto LABEL_49;
      }
    }

LABEL_56:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_58:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

LABEL_21:
      v177 = &v141;
      MEMORY[0x28223BE20](v31);
      v50 = &v141 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v50, v49);
      v51 = 0;
      v52 = 0;
      v53 = 1 << *(v30 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v30 + 56);
      v56 = (v53 + 63) >> 6;
      while (v55)
      {
        v57 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
LABEL_31:
        v60 = v57 | (v52 << 6);
        if ([*(*(v30 + 48) + 8 * v60) state] == 3)
        {
          *&v50[(v60 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v60;
          if (__OFADD__(v51++, 1))
          {
            __break(1u);
LABEL_35:
            v34 = sub_265CB6BD8(v50, v182, v51, v30);
            goto LABEL_38;
          }
        }
      }

      v58 = v52;
      while (1)
      {
        v52 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v52 >= v56)
        {
          goto LABEL_35;
        }

        v59 = *(v30 + 56 + 8 * v52);
        ++v58;
        if (v59)
        {
          v57 = __clz(__rbit64(v59));
          v55 = (v59 - 1) & v59;
          goto LABEL_31;
        }
      }
    }

    v140 = swift_slowAlloc();
    v34 = sub_265CB6B48(v140, v182, v30, sub_265CA9724);

    MEMORY[0x266770CF0](v140, -1, -1);
  }

LABEL_49:
  v145 = v69;

  v91 = v162;
  sub_265D59610();
  v92 = v165;
  v93 = *(v165 + 16);
  v94 = v148;
  v95 = v171;
  v93(v148, v172, v171);
  v96 = sub_265D59DD0();
  v97 = sub_265D5A080();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    aBlock = v99;
    *v98 = 136446210;
    sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
    v100 = sub_265D5A3B0();
    v102 = v101;
    (*(v92 + 8))(v94, v171);
    v103 = sub_265CF4FFC(v100, v102, &aBlock);

    *(v98 + 4) = v103;
    _os_log_impl(&dword_265C01000, v96, v97, "Link: Broadcasting new session created for: %{public}s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    v104 = v99;
    v95 = v171;
    MEMORY[0x266770CF0](v104, -1, -1);
    MEMORY[0x266770CF0](v98, -1, -1);

    v105 = v162;
  }

  else
  {

    (*(v92 + 8))(v94, v95);
    v105 = v91;
  }

  v146(v105, v170);
  v106 = v167;
  v107 = v158;
  v108 = v166;
  swift_getObjectType();
  v93(v149, v172, v95);
  v109 = v150;
  sub_265D593A0();
  v110 = v152;
  sub_265D58ED0();
  (*(v151 + 8))(v109, v110);
  swift_beginAccess();
  *(v108 + 104) = MEMORY[0x277D84FA0];

  v111 = v153;
  sub_265D59890();
  v112 = swift_allocObject();
  swift_weakInit();
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = v106;
  v114 = MEMORY[0x277CBCEC8];
  sub_265CB9320(&qword_28003E418, &qword_28003E3E0, &qword_265D5B8F8, MEMORY[0x277CBCEC8]);

  v115 = v155;
  sub_265D59E10();

  (*(v154 + 8))(v111, v115);
  swift_beginAccess();
  sub_265D59DF0();
  swift_endAccess();

  v116 = v156;
  sub_265D59810();
  v117 = swift_allocObject();
  swift_weakInit();
  v118 = swift_allocObject();
  v119 = v145;
  v118[2] = v106;
  v118[3] = v119;
  v118[4] = v164;
  v118[5] = v117;
  sub_265CB9320(&qword_28003E420, &qword_28003E3D8, &qword_265D5B8F0, v114);

  sub_265D59E10();

  (*(v157 + 8))(v116, v107);
  swift_beginAccess();
  sub_265D59DF0();
  swift_endAccess();

  v185 = sub_265D59820();
  v120 = swift_allocObject();
  swift_weakInit();
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v106;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E428, &unk_265D5B910);
  sub_265CB9320(&qword_28003E430, &qword_28003E428, &unk_265D5B910, MEMORY[0x277CBCD90]);
  sub_265D59E10();

  swift_beginAccess();
  sub_265D59DF0();
  swift_endAccess();

  type metadata accessor for MultiUserLinkMessage(0);
  sub_265CB5E54(&qword_28003E3C0, type metadata accessor for MultiUserLinkMessage, &unk_265D5B2C8);
  sub_265CB5E54(&qword_28003E3C8, type metadata accessor for MultiUserLinkMessage, &unk_265D5B2A0);
  v122 = v159;
  sub_265D597B0();
  v123 = swift_allocObject();
  swift_weakInit();
  v124 = swift_allocObject();
  *(v124 + 16) = sub_265CB92C4;
  *(v124 + 24) = v123;
  sub_265CB9320(&qword_28003E438, &qword_28003E3D0, &qword_265D5B8E8, MEMORY[0x277CCB188]);
  v125 = v161;
  sub_265D59E10();

  (*(v160 + 8))(v122, v125);
  swift_beginAccess();
  sub_265D59DF0();
  swift_endAccess();

  v126 = v163;
  sub_265D59610();

  v127 = sub_265D59DD0();
  v128 = sub_265D5A080();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *&v183 = swift_slowAlloc();
    v185 = v183;
    *v129 = 134218242;
    v130 = v142;
    sub_265D597E0();
    v131 = sub_265D598C0();
    v132 = *(v143 + 8);
    v133 = v144;
    v132(v130, v144);
    *(v129 + 4) = v131;

    *(v129 + 12) = 2080;
    sub_265D597E0();
    v134 = sub_265D598F0();
    v136 = v135;
    v132(v130, v133);
    v137 = sub_265CF4FFC(v134, v136, &v185);

    *(v129 + 14) = v137;
    _os_log_impl(&dword_265C01000, v127, v128, "Link: Local source id: %llu, handle: %s", v129, 0x16u);
    v138 = v183;
    __swift_destroy_boxed_opaque_existential_1Tm(v183);
    MEMORY[0x266770CF0](v138, -1, -1);
    MEMORY[0x266770CF0](v129, -1, -1);

    (*(v169 + 8))(v163, v170);
  }

  else
  {

    (*(v169 + 8))(v126, v170);
  }

  return (*(v165 + 8))(v172, v171);
}

uint64_t sub_265CA9760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v193 = a4;
  v194 = a6;
  v192 = a5;
  v200 = a3;
  v198 = a2;
  v188 = sub_265D59D70();
  v191 = *(v188 - 8);
  v9 = MEMORY[0x28223BE20](v188);
  v177 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v181 = &v167 - v11;
  v190 = sub_265D57E50();
  v12 = *(v190 - 8);
  v13 = MEMORY[0x28223BE20](v190);
  v180 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v189 = &v167 - v15;
  v204 = sub_265D58330();
  v201 = *(v204 - 8);
  v16 = MEMORY[0x28223BE20](v204);
  v195 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v182 = (&v167 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v179 = &v167 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v167 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v167 - v25;
  v27 = sub_265D59DE0();
  v196 = *(v27 - 8);
  v197 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v167 - v33;
  MEMORY[0x28223BE20](v32);
  v37 = &v167 - v36;
  v38 = *(a1 + 40);
  v199 = *(a1 + 32);
  v39 = *(a1 + 48);
  v40 = *(a1 + 56);
  v41 = *(a1 + 64);
  v42 = *(a1 + 72);
  if (!(v42 >> 6))
  {
    v178 = v12;
    v186 = v39;
    v183 = v40;
    v184 = v41;
    v72 = v42;
    v185 = v38;
    sub_265CB5DE4(v199, v38, v39, v40, v41, v42);

    sub_265D59610();
    v73 = v204;
    (*(v201 + 16))(v26, v200, v204);
    v74 = v198;

    v75 = sub_265D59DD0();
    v76 = sub_265D5A080();

    LODWORD(v191) = v76;
    v77 = os_log_type_enabled(v75, v76);
    v187 = a7;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v203 = v188;
      *v78 = 136315394;
      v79 = v189;
      v182 = v75;
      sub_265D59830();
      v80 = sub_265D57E40();
      v176 = v72;
      v81 = v74;
      v83 = v82;
      (*(v178 + 8))(v79, v190);
      v84 = sub_265CF4FFC(v80, v83, &v203);
      v74 = v81;

      *(v78 + 4) = v84;
      *(v78 + 12) = 2080;
      sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
      v85 = sub_265D5A3B0();
      v87 = v86;
      (*(v201 + 8))(v26, v204);
      v88 = sub_265CF4FFC(v85, v87, &v203);

      *(v78 + 14) = v88;
      v89 = v182;
      _os_log_impl(&dword_265C01000, v182, v191, "Link: Idle -> Received new session %s for %s", v78, 0x16u);
      v90 = v188;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v90, -1, -1);
      v91 = v78;
      v73 = v204;
      MEMORY[0x266770CF0](v91, -1, -1);

      v92 = v199;
      sub_265CB90F8(v199, v185, v186, v183, v184, v176);
    }

    else
    {

      v92 = v199;
      sub_265CB90F8(v199, v185, v186, v183, v184, v72);
      (*(v201 + 8))(v26, v73);
    }

    (*(v196 + 8))(v37, v197);
    v117 = v92;
    v119 = *(a1 + 32);
    v118 = *(a1 + 40);
    v120 = *(a1 + 48);
    v121 = *(a1 + 56);
    v122 = *(a1 + 64);
    *(a1 + 32) = v74;
    v123 = v194;
    *(a1 + 40) = v193;
    *(a1 + 48) = v117;
    *(a1 + 56) = v192;
    *(a1 + 64) = v123;
    v124 = *(a1 + 72);
    *(a1 + 72) = 65;

    sub_265CB90F8(v119, v118, v120, v121, v122, v124);
    a7 = v187;
    v96 = v200;
    v97 = v195;
    goto LABEL_24;
  }

  if (v42 >> 6 != 1)
  {
    sub_265D59610();
    v93 = sub_265D59DD0();
    v94 = sub_265D5A070();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_265C01000, v93, v94, "Link: Unable to handle activity because link state is not idle or not activityRequested", v95, 2u);
      MEMORY[0x266770CF0](v95, -1, -1);
    }

    (*(v196 + 8))(v30, v197);
    v96 = v200;
    v97 = v195;
    goto LABEL_23;
  }

  v187 = a7;
  v178 = v12;
  v172 = v35;
  v43 = v39;
  v44 = v41;
  v45 = v42;

  v183 = v40;
  v176 = v45;
  sub_265CB5DE4(v46, v38, v43, v40, v44, v45);
  v184 = v44;

  v185 = v38;

  v186 = v43;

  sub_265D59610();
  v47 = v201;
  v48 = *(v201 + 16);
  v171 = v201 + 16;
  v170 = v48;
  v48(v24, v200, v204);

  v49 = sub_265D59DD0();
  v50 = sub_265D5A080();

  LODWORD(v173) = v50;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v203 = v169;
    *v51 = 136315650;
    v52 = v189;
    sub_265D59830();
    v53 = sub_265D57E40();
    v55 = v54;
    v175 = *(v178 + 8);
    v168 = v49;
    v56 = v190;
    v175(v52, v190);
    v57 = sub_265CF4FFC(v53, v55, &v203);

    *(v51 + 4) = v57;
    *(v51 + 12) = 2080;
    sub_265D59830();
    v58 = sub_265D57E40();
    v60 = v59;
    v175(v52, v56);
    v61 = sub_265CF4FFC(v58, v60, &v203);

    *(v51 + 14) = v61;
    *(v51 + 22) = 2080;
    v62 = v51;
    sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
    v63 = v204;
    v64 = sub_265D5A3B0();
    v66 = v65;
    v67 = *(v201 + 8);
    v174 = (v201 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v175 = v67;
    v67(v24, v63);
    v68 = sub_265CF4FFC(v64, v66, &v203);

    *(v62 + 24) = v68;
    v69 = v168;
    _os_log_impl(&dword_265C01000, v168, v173, "Link: Overwriting session %s with new session %s for %s", v62, 0x20u);
    v70 = v169;
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v70, -1, -1);
    MEMORY[0x266770CF0](v62, -1, -1);

    v173 = *(v196 + 8);
    v173(v34, v197);
    v71 = v191;
  }

  else
  {

    v98 = *(v47 + 8);
    v174 = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v175 = v98;
    v98(v24, v204);
    v173 = *(v196 + 8);
    v173(v34, v197);
    v56 = v190;
    v71 = v191;
    v52 = v189;
  }

  sub_265D59830();
  v99 = v180;
  sub_265D59830();
  sub_265CB5E54(&qword_28003E478, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v100 = sub_265D59E80();
  v101 = *(v178 + 8);
  v101(v99, v56);
  v101(v52, v56);
  LODWORD(v190) = v100 ^ 1;
  v102 = v181;
  sub_265D598A0();
  v103 = v179;
  sub_265D59D60();
  v106 = *(v71 + 8);
  v104 = v71 + 8;
  v105 = v106;
  v107 = v188;
  v106(v102, v188);
  v108 = sub_265D58310();
  v110 = v109;
  v175(v103, v204);
  v111 = sub_265D58310();
  v113 = v182;
  if (v108 == v111 && v110 == v112)
  {
  }

  else
  {
    v114 = sub_265D5A3C0();

    if ((v114 & 1) == 0)
    {
      v191 = v104;
      v125 = v172;
      sub_265D59610();
      v170(v113, v200, v204);
      v126 = sub_265D59DD0();
      v127 = sub_265D5A080();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v189 = v128;
        v129 = swift_slowAlloc();
        v203 = v129;
        *v128 = 136315138;
        sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
        v130 = v204;
        v131 = sub_265D5A3B0();
        v132 = v113;
        v134 = v133;
        v135 = v130;
        v136 = v175;
        v175(v132, v135);
        v137 = sub_265CF4FFC(v131, v134, &v203);

        v138 = v189;
        *(v189 + 4) = v137;
        v139 = v127;
        v140 = v136;
        v141 = v138;
        _os_log_impl(&dword_265C01000, v126, v139, "Link: Saving overwritten session activity as replaced %s", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        v142 = v129;
        v107 = v188;
        MEMORY[0x266770CF0](v142, -1, -1);
        MEMORY[0x266770CF0](v141, -1, -1);
      }

      else
      {

        v140 = v175;
        v175(v113, v204);
      }

      v173(v125, v197);
      v143 = v177;
      v144 = v199;
      sub_265D598A0();
      v97 = v195;
      sub_265D59D60();
      v105(v143, v107);
      v145 = v144;
      v146 = sub_265D58310();
      v148 = v147;
      v140(v97, v204);
      swift_beginAccess();
      sub_265CB6DCC(v202, v146, v148);
      swift_endAccess();
      v116 = v186;
      sub_265CB90F8(v145, v185, v186, v183, v184, v176);

      goto LABEL_22;
    }
  }

  v115 = v199;

  v116 = v186;
  sub_265CB90F8(v115, v185, v186, v183, v184, v176);
  v97 = v195;
LABEL_22:
  v149 = v194;

  v150 = v193;

  v151 = v198;

  v152 = v190 & 1 | 0x40;
  v153 = *(a1 + 32);
  v154 = *(a1 + 40);
  v155 = *(a1 + 48);
  v156 = *(a1 + 56);
  v157 = *(a1 + 64);
  *(a1 + 32) = v151;
  *(a1 + 40) = v150;
  v158 = v192;
  *(a1 + 48) = v116;
  *(a1 + 56) = v158;
  *(a1 + 64) = v149;
  v159 = *(a1 + 72);
  *(a1 + 72) = v152;
  sub_265CB90F8(v153, v154, v155, v156, v157, v159);
  a7 = v187;
  v96 = v200;
LABEL_23:
  v73 = v204;
LABEL_24:
  v160 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_sessionConnectionCompletions;
  swift_beginAccess();
  v161 = *(a1 + v160);
  if (*(v161 + 16) && (v162 = sub_265CE2A20(v96), (v163 & 1) != 0))
  {
    v164 = *(*(v161 + 56) + 8 * v162);
  }

  else
  {
    v164 = 0;
  }

  swift_endAccess();
  (*(v201 + 16))(v97, v96, v73);
  swift_beginAccess();
  sub_265CE11B4(0, v97);
  result = swift_endAccess();
  v166 = MEMORY[0x277D84F90];
  if (v164)
  {
    v166 = v164;
  }

  *a7 = v166;
  return result;
}

void sub_265CAA8B8(void (*a1)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A4B0();
  a1(v2, v3);
  sub_265CA4470(v2, v3);
}

uint64_t sub_265CAA934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265CAA9A8(a3, a1);
  }

  return result;
}

uint64_t sub_265CAA9A8(uint64_t a1, uint64_t a2)
{
  v147 = a1;
  v3 = sub_265D59310();
  v149 = *(v3 - 8);
  v150 = v3;
  MEMORY[0x28223BE20](v3);
  v148 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D58330();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v134 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = v114 - v8;
  v9 = sub_265D59D70();
  v145 = *(v9 - 8);
  v146 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v133 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = v114 - v12;
  v13 = sub_265D57E50();
  v143 = *(v13 - 8);
  v144 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v131 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v121 = v114 - v17;
  MEMORY[0x28223BE20](v16);
  v139 = v114 - v18;
  v19 = sub_265D583A0();
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v132 = v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v122 = v114 - v22;
  v138 = sub_265D59900();
  v137 = *(v138 - 8);
  v23 = MEMORY[0x28223BE20](v138);
  v129 = v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v136 = v114 - v26;
  MEMORY[0x28223BE20](v25);
  v119 = v114 - v27;
  v28 = sub_265D58300();
  v141 = *(v28 - 8);
  v142 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v130 = v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v140 = v114 - v32;
  MEMORY[0x28223BE20](v31);
  v120 = v114 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v128 = v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = (v114 - v38);
  v40 = sub_265D59DE0();
  v41 = *(v40 - 1);
  v42 = MEMORY[0x28223BE20](v40);
  v125 = v114 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = v114 - v44;
  v156 = 0;
  v157 = 0xE000000000000000;
  v151 = v34;
  sub_265D5A290();
  v47 = v156;
  v46 = v157;
  sub_265D59610();

  v48 = sub_265D59DD0();
  v49 = sub_265D5A080();

  v50 = os_log_type_enabled(v48, v49);
  v135 = v35;
  v126 = v40;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v127 = v41;
    v52 = v40;
    v53 = v51;
    v54 = a2;
    v55 = swift_slowAlloc();
    v156 = v55;
    *v53 = 136446210;
    v56 = sub_265CF4FFC(v47, v46, &v156);

    *(v53 + 4) = v56;
    _os_log_impl(&dword_265C01000, v48, v49, "Link: Session state changed to: %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v57 = v55;
    a2 = v54;
    v35 = v135;
    MEMORY[0x266770CF0](v57, -1, -1);
    MEMORY[0x266770CF0](v53, -1, -1);

    v58 = *(v127 + 8);
    v58(v45, v52);
  }

  else
  {

    v58 = *(v41 + 8);
    v58(v45, v40);
  }

  v60 = v35 + 16;
  v59 = *(v35 + 16);
  v61 = v151;
  v59(v39, a2, v151);
  v62 = *(v35 + 88);
  v63 = v62(v39, v61);
  LODWORD(v127) = *MEMORY[0x277CCB1F8];
  if (v63 != v127)
  {
    (*(v35 + 8))(v39, v61);
    v71 = a2;
    v70 = v137;
    goto LABEL_19;
  }

  v116 = v62;
  v117 = v59;
  v118 = a2;
  (*(v35 + 96))(v39, v61);
  v64 = *v39;
  v65 = v125;
  sub_265D59610();
  v66 = sub_265D59DD0();
  v67 = sub_265D5A080();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_265C01000, v66, v67, "Link: Clearing session subscriptions for invalidated session", v68, 2u);
    MEMORY[0x266770CF0](v68, -1, -1);
  }

  v58(v65, v126);
  v69 = v152;
  swift_beginAccess();
  *(v69 + 104) = MEMORY[0x277D84FA0];

  v154 = 0;
  v155 = 0xE000000000000000;
  v153 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A290();
  if (v154 == 0x664F6465646E6168 && v155 == 0xE900000000000066)
  {

    v70 = v137;
  }

  else
  {
    v72 = sub_265D5A3C0();

    v70 = v137;
    if ((v72 & 1) == 0)
    {

      v71 = v118;
      v61 = v151;
      v59 = v117;
      v62 = v116;
      goto LABEL_19;
    }
  }

  v126 = v64;
  sub_265D58CA0();
  v125 = 0;
  v114[3] = v154;
  v73 = v119;
  sub_265D597E0();
  v74 = sub_265D598F0();
  v76 = v75;
  v77 = *(v70 + 8);
  v78 = v138;
  v77(v73, v138);

  v79 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v79 = v74 & 0xFFFFFFFFFFFFLL;
  }

  v115 = v60;
  if (v79)
  {
    v80 = v136;
    sub_265D597E0();
    sub_265D598F0();
    v119 = v81;
    v77(v80, v78);
  }

  else
  {
    v119 = 0;
    v80 = v136;
  }

  sub_265D597E0();
  v82 = v139;
  sub_265D598E0();
  v77(v80, v78);
  sub_265D57E40();
  v83 = *(v143 + 8);
  v84 = v82;
  v85 = v144;
  v83(v84, v144);
  sub_265D58340();
  v86 = v121;
  sub_265D59830();
  v119 = sub_265D57E40();
  v83(v86, v85);
  v87 = v124;
  sub_265D598A0();
  sub_265D59D60();
  (*(v145 + 8))(v87, v146);
  sub_265D59800();
  sub_265D5A030();
  v88 = v120;
  sub_265D582C0();
  swift_getObjectType();
  v89 = v141;
  v90 = v142;
  (*(v141 + 16))(v140, v88, v142);
  v91 = v148;
  sub_265D59300();
  v92 = v150;
  sub_265D58ED0();

  (*(v149 + 8))(v91, v92);
  (*(v89 + 8))(v88, v90);
  v70 = v137;
  v71 = v118;
  v61 = v151;
  v59 = v117;
  v62 = v116;
LABEL_19:
  v93 = v128;
  v59(v128, v71, v61);
  v94 = v62(v93, v61);
  if (v94 == v127)
  {
    LODWORD(v151) = 1;
    v137 = 0;
    v127 = 2;
    v95 = v138;
    v96 = v136;
LABEL_21:
    (*(v135 + 8))(v93, v61);
    goto LABEL_27;
  }

  v95 = v138;
  v96 = v136;
  if (v94 == *MEMORY[0x277CCB208])
  {
    v127 = 0;
    v137 = 0;
  }

  else
  {
    if (v94 != *MEMORY[0x277CCB200])
    {
      LODWORD(v151) = v94 == v127;
      v137 = 0xE700000000000000;
      v127 = 0x6E776F6E6B6E75;
      goto LABEL_21;
    }

    v137 = 0;
    v127 = 1;
  }

  LODWORD(v151) = 1;
LABEL_27:
  sub_265D58CA0();
  v97 = v129;
  sub_265D597E0();
  v98 = sub_265D598F0();
  v100 = v99;
  v101 = *(v70 + 8);
  v101(v97, v95);

  v102 = HIBYTE(v100) & 0xF;
  if ((v100 & 0x2000000000000000) == 0)
  {
    v102 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (v102)
  {
    sub_265D597E0();
    sub_265D598F0();
    v101(v96, v95);
  }

  sub_265D597E0();
  v103 = v139;
  sub_265D598E0();
  v101(v96, v95);
  sub_265D57E40();
  v104 = v144;
  v105 = *(v143 + 8);
  v105(v103, v144);
  sub_265D58340();
  v106 = v131;
  sub_265D59830();
  sub_265D57E40();
  v105(v106, v104);
  v107 = v133;
  sub_265D598A0();
  sub_265D59D60();
  (*(v145 + 8))(v107, v146);
  sub_265D59800();
  sub_265D5A030();
  v108 = v130;
  sub_265D582C0();
  swift_getObjectType();
  v109 = v141;
  v110 = v142;
  (*(v141 + 16))(v140, v108, v142);
  v111 = v148;
  sub_265D59300();
  v112 = v150;
  sub_265D58ED0();
  (*(v149 + 8))(v111, v112);
  return (*(v109 + 8))(v108, v110);
}

uint64_t sub_265CABAD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v59 = a3;
  v8 = sub_265D59580();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D59DE0();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265D58330();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_265D59D70();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_265D586F0();
  v58 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v48 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - v25;
  v27 = *a1;

  v28 = sub_265CB9AC4(v27, a2, v59, a4);

  sub_265CB958C(v28);

  sub_265D598A0();
  sub_265D59D60();
  (*(v16 + 8))(v18, v15);
  sub_265D58310();
  (v52[1])(v14, v53);
  v29 = v58;
  sub_265D5A030();
  sub_265D586D0();
  sub_265D59610();
  v30 = *(v29 + 16);
  v31 = v24;
  v32 = v24;
  v59 = v19;
  v33 = v30;
  v30(v32, v26, v19);
  v34 = sub_265D59DD0();
  v35 = sub_265D5A080();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v26;
    v60[0] = v52;
    *v36 = 136315138;
    sub_265CB5E54(&qword_28003E458, MEMORY[0x277D53008], MEMORY[0x277D53010]);
    v37 = v31;
    v38 = v59;
    v39 = sub_265D5A3B0();
    v41 = v40;
    v42 = *(v29 + 8);
    v42(v37, v38);
    v43 = sub_265CF4FFC(v39, v41, v60);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_265C01000, v34, v35, "Link: Active participants updated to %s", v36, 0xCu);
    v44 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v26 = v53;
    MEMORY[0x266770CF0](v44, -1, -1);
    MEMORY[0x266770CF0](v36, -1, -1);
  }

  else
  {

    v42 = *(v29 + 8);
    v42(v31, v59);
  }

  (*(v54 + 8))(v57, v55);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    v33(v48, v26, v59);
    v45 = v49;
    sub_265D59570();
    v46 = v51;
    sub_265D58ED0();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v45, v46);
  }

  return (v42)(v26, v59);
}

uint64_t sub_265CAC10C(uint64_t a1, uint64_t a2)
{
  v2 = sub_265D58330();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D59D70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D598A0();
    sub_265D59D60();
    (*(v7 + 8))(v9, v6);
    sub_265CAC2BC(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_265CAC2BC(uint64_t a1)
{
  v2 = sub_265D59560();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265D58330();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = sub_265D59DE0();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v13 = a1;
  v14 = v4;
  v31 = *(v5 + 16);
  v31(v9, a1, v4);
  v15 = sub_265D59DD0();
  v16 = sub_265D5A080();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v2;
    v18 = v17;
    v28 = swift_slowAlloc();
    v37 = v28;
    *v18 = 136315138;
    sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
    v19 = sub_265D5A3B0();
    v29 = v13;
    v21 = v20;
    (*(v5 + 8))(v9, v14);
    v22 = sub_265CF4FFC(v19, v21, &v37);
    v13 = v29;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_265C01000, v15, v16, "Link: Server requested catch-up for %s", v18, 0xCu);
    v23 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266770CF0](v23, -1, -1);
    v24 = v18;
    v2 = v30;
    MEMORY[0x266770CF0](v24, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v14);
  }

  (*(v32 + 8))(v12, v33);
  swift_getObjectType();
  v31(v34, v13, v14);
  v25 = v36;
  sub_265D59550();
  sub_265D58ED0();
  return (*(v35 + 8))(v25, v2);
}

uint64_t sub_265CAC6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_265D59900();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D59790();
    sub_265CAC7CC(a1);

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_265CAC7CC(uint64_t a1)
{
  v29 = a1;
  v30 = sub_265D59DE0();
  v2 = *(v30 - 8);
  v3 = MEMORY[0x28223BE20](v30);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = sub_265D57E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D598E0();
  v12 = sub_265D57E40();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = *(v1 + 16);
  if (v15)
  {
    v16 = *(v1 + 24);

    sub_265D59610();

    v17 = sub_265D59DD0();
    v18 = sub_265D5A080();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      v21 = sub_265CF4FFC(v12, v14, &v31);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_265C01000, v17, v18, "Link: Received message from source id: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266770CF0](v20, -1, -1);
      MEMORY[0x266770CF0](v19, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v7, v30);
    v15(v29);
    return sub_265C959D0(v15, v16);
  }

  else
  {
    sub_265D59610();

    v22 = sub_265D59DD0();
    v23 = sub_265D5A070();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136446210;
      v26 = sub_265CF4FFC(v12, v14, &v31);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_265C01000, v22, v23, "Link: No receivedMessageHandler. Dropping received message for source: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x266770CF0](v25, -1, -1);
      MEMORY[0x266770CF0](v24, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v5, v30);
  }
}

uint64_t sub_265CACB98()
{
  sub_265C959D0(*(v0 + 16), *(v0 + 24));
  sub_265CB90F8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_sessionConnectionObserver;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF28, &qword_265D5B160);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_265CACC68()
{
  sub_265CACB98();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MultiUserLink(uint64_t a1)
{
  result = qword_2813B7C70;
  if (!qword_2813B7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CACD14(uint64_t a1)
{
  sub_265CACDE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_265CACDE4(uint64_t a1)
{
  if (!qword_2813B8F90)
  {
    sub_265D59D70();
    sub_265CB5E54(&unk_2813B8F70, MEMORY[0x277D4FB20], MEMORY[0x277D4FB18]);
    v1 = sub_265D59780();
    if (!v2)
    {
      atomic_store(v1, &qword_2813B8F90);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices13MultiUserLinkC5StateO(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
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

uint64_t sub_265CACEB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0xFFFFFFD && *(a1 + 41))
  {
    return (*a1 + 268435454);
  }

  if ((((*(a1 + 40) >> 6) & 0xF0000003 | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x1FFFFF | (((*(a1 + 40) >> 1) & 0x1F) << 21) & 0x3FFFFFF))) ^ 0xFFFFFFF) >= 0xFFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 40) >> 6) & 0xF0000003 | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x1FFFFF | (((*(a1 + 40) >> 1) & 0x1F) << 21) & 0x3FFFFFF))) ^ 0xFFFFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_265CACF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 268435454;
    if (a3 >= 0xFFFFFFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x3FFFFFF) - (a2 << 26);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_265D5B760), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_265D5B770), vdupq_n_s64(0xF000000000000000)));
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = (v3 >> 20) & 0xFE;
    }
  }

  return result;
}

int8x16_t sub_265CAD018(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8;
    v4 = *(a1 + 40) & 1 | (a2 << 6);
    result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *a1 = result;
    *(a1 + 16) = v3;
    *(a1 + 40) = v4;
  }

  else
  {
    *a1 = 8 * (a2 - 2);
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0x80;
  }

  return result;
}

uint64_t sub_265CAD084(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_265D58CA0();
}

uint64_t sub_265CAD13C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_265CAD17C(uint64_t a1, void (*a2)(void, void), uint64_t a3, void (*a4)(void, void))
{
  v148 = a2;
  v147 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v138 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v128 - v7;
  v9 = sub_265D59D70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_265D58330();
  v146 = *(v144 - 8);
  v13 = MEMORY[0x28223BE20](v144);
  v136 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v137 = &v128 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v135 = (&v128 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v139 = &v128 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v143 = &v128 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v128 - v23;
  v25 = sub_265D59DE0();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v36 = &v128 - v35;
  v145 = a1;
  v37 = *(a1 + 72) >> 6;
  if (v37)
  {
    if (v37 == 1)
    {
      v129 = v28;
      v130 = v34;
      v131 = v33;
      v140 = v31;
      v141 = v32;
      v142 = a3;
      v38 = v145;
      v40 = v145[5];
      v39 = v145[6];
      v41 = v145[4];
      v133 = v145[8];

      v132 = v40;

      v134 = v39;

      sub_265D598A0();
      v42 = v143;
      sub_265D59D60();
      v43 = v12;
      v44 = v42;
      (*(v10 + 8))(v43, v9);
      v45 = v147;
      if (MEMORY[0x26676E3E0](v42, v147))
      {
        sub_265D59880();
        v46 = v138;
        v47 = (*(v138 + 88))(v8, v6);
        v48 = *MEMORY[0x277CCB1F8];
        (*(v46 + 8))(v8, v6);
        if (v47 == v48)
        {
          sub_265D59610();
          v49 = v44;
          v50 = v146;
          v51 = v144;
          (*(v146 + 16))(v139, v49, v144);

          v52 = sub_265D59DD0();
          v53 = sub_265D5A080();

          v138 = v41;

          LODWORD(v137) = v53;
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v149 = v136;
            *v54 = 136315394;
            sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
            v135 = v52;
            v55 = v139;
            v56 = sub_265D5A3B0();
            v58 = v57;
            v59 = v55;
            v60 = *(v50 + 8);
            v60(v59, v51);
            v61 = sub_265CF4FFC(v56, v58, &v149);

            *(v54 + 4) = v61;
            *(v54 + 12) = 2080;
            v151 = v138;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3A0, &qword_265D5B8D8);
            sub_265CB9320(&qword_28003E3A8, &qword_28003E3A0, &qword_265D5B8D8, MEMORY[0x277CCB228]);
            v62 = sub_265D5A3B0();
            v64 = sub_265CF4FFC(v62, v63, &v149);

            *(v54 + 14) = v64;
            v65 = v143;
            v66 = v135;
            _os_log_impl(&dword_265C01000, v135, v137, "Link: Waiting for session because requested activity matches connected %s but session is invalidated %s", v54, 0x16u);
            v67 = v136;
            swift_arrayDestroy();
            MEMORY[0x266770CF0](v67, -1, -1);
            v68 = v54;
            v45 = v147;
            MEMORY[0x266770CF0](v68, -1, -1);

            (*(v141 + 8))(v131, v140);
            v69 = v148;
          }

          else
          {

            v60 = *(v50 + 8);
            v60(v139, v51);
            (*(v141 + 8))(v131, v140);
            v69 = v148;
            v65 = v143;
          }

          sub_265CAE0F4(v69, v142, v45);

          v60(v65, v51);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
          sub_265D5A4B0();
          v103 = v149;
          v104 = v150;
          v148(v149, v150);
          sub_265CA4470(v103, v104);

          (*(v146 + 8))(v44, v144);
        }
      }

      else
      {
        v138 = v41;
        v85 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_replacedActivitySessionIdentifiers;
        swift_beginAccess();
        v86 = *(v38 + v85);

        v87 = sub_265D58310();
        v89 = sub_265CA755C(v87, v88, v86);

        v90 = (v146 + 16);
        if (v89)
        {
          v91 = v129;
          sub_265D59610();
          v92 = v136;
          v93 = v144;
          (*v90)(v136, v45, v144);
          v94 = sub_265D59DD0();
          v95 = sub_265D5A080();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v151 = v145;
            *v96 = 136315138;
            sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
            v97 = sub_265D5A3B0();
            v99 = v98;
            v147 = *(v146 + 8);
            v147(v92, v93);
            v100 = sub_265CF4FFC(v97, v99, &v151);
            v101 = v143;

            *(v96 + 4) = v100;
            _os_log_impl(&dword_265C01000, v94, v95, "Link: Not waiting for activity because it was already replaced: %s", v96, 0xCu);
            v102 = v145;
            __swift_destroy_boxed_opaque_existential_1Tm(v145);
            MEMORY[0x266770CF0](v102, -1, -1);
            MEMORY[0x266770CF0](v96, -1, -1);
          }

          else
          {

            v101 = v44;
            v147 = *(v146 + 8);
            v147(v92, v93);
          }

          (*(v141 + 8))(v91, v140);
          v125 = v148;
          sub_265C9EB84();
          v126 = swift_allocError();
          *v127 = 1;
          v125(v126, 1);

          v147(v101, v93);
        }

        else
        {
          v105 = v130;
          sub_265D59610();
          v106 = *v90;
          v107 = v135;
          v108 = v144;
          (*v90)(v135, v44, v144);
          v109 = v137;
          v106(v137, v45, v108);
          v110 = sub_265D59DD0();
          v111 = sub_265D5A080();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = v109;
            v113 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v151 = v139;
            *v113 = 136315394;
            sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
            LODWORD(v136) = v111;
            v114 = sub_265D5A3B0();
            v116 = v115;
            v117 = *(v146 + 8);
            v117(v107, v144);
            v118 = sub_265CF4FFC(v114, v116, &v151);
            v108 = v144;

            *(v113 + 4) = v118;
            *(v113 + 12) = 2080;
            v119 = v112;
            v120 = sub_265D5A3B0();
            v122 = v121;
            v117(v119, v108);
            v123 = sub_265CF4FFC(v120, v122, &v151);

            *(v113 + 14) = v123;
            _os_log_impl(&dword_265C01000, v110, v136, "Link: Waiting for session because connected %s mismatches waiting request %s", v113, 0x16u);
            v124 = v139;
            swift_arrayDestroy();
            MEMORY[0x266770CF0](v124, -1, -1);
            MEMORY[0x266770CF0](v113, -1, -1);

            (*(v141 + 8))(v130, v140);
          }

          else
          {

            v117 = *(v146 + 8);
            v117(v109, v108);
            v117(v107, v108);
            (*(v141 + 8))(v105, v140);
          }

          sub_265CAE0F4(v148, v142, v147);

          v117(v143, v108);
        }
      }
    }

    else
    {
      sub_265C9EB84();
      v83 = swift_allocError();
      *v84 = 8;
      v148(v83, 1);
    }
  }

  else
  {
    v140 = v31;
    v141 = v32;
    v142 = a3;
    sub_265D59610();
    v71 = v146;
    v70 = v147;
    v72 = v144;
    (*(v146 + 16))(v24, v147, v144);
    v73 = sub_265D59DD0();
    v74 = sub_265D5A080();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v149 = v76;
      *v75 = 136315138;
      sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
      v77 = sub_265D5A3B0();
      v78 = v72;
      v80 = v79;
      (*(v71 + 8))(v24, v78);
      v81 = sub_265CF4FFC(v77, v80, &v149);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_265C01000, v73, v74, "Link: Waiting for session. Adding %s to session completions.", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266770CF0](v76, -1, -1);
      v82 = v75;
      v70 = v147;
      MEMORY[0x266770CF0](v82, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v24, v72);
    }

    (*(v141 + 8))(v36, v140);
    sub_265CAE0F4(v148, v142, v70);
  }
}

uint64_t sub_265CAE0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_265D58C90();
  v8 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_sessionConnectionCompletions;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_265CE2A20(a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v12 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3B0, &qword_265D5B8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265D5AF60;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(inited + 32) = sub_265CB90C4;
  *(inited + 40) = v14;

  sub_265CB87F0(inited);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_265CE52C4(v12, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v8) = v17;
  return swift_endAccess();
}

uint64_t sub_265CAE26C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_265D58CA0();
}

void sub_265CAE324(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v44 = a4;
  v8 = sub_265D59DE0();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = sub_265D58330();
  v39 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  if (sub_265CAE760())
  {
    v37 = a3;
    v38 = v4;
    v20 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_registeredLocalActivities;
    swift_beginAccess();
    v21 = *(a1 + v20);

    v22 = sub_265CA7654(a2, v21);

    if (v22)
    {
      sub_265D59610();
      v23 = sub_265D59DD0();
      v24 = sub_265D5A070();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_265C01000, v23, v24, "Link: willBeginActivity - activity already registered.", v25, 2u);
        MEMORY[0x266770CF0](v25, -1, -1);
      }

      (*(v40 + 8))(v13, v41);
      sub_265C9EB84();
      v26 = swift_allocError();
      *v27 = 0;
      v37(v26, 1);
    }

    else
    {
      v33 = v39;
      (*(v39 + 16))(v17, a2, v14);
      swift_beginAccess();
      sub_265CB71FC(v19, v17);
      swift_endAccess();
      (*(v33 + 8))(v19, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
      sub_265D5A4B0();
      v34 = v42;
      v35 = v43;
      v37(v42, v43);
      sub_265CA4470(v34, v35);
    }
  }

  else
  {
    sub_265D59610();
    v28 = sub_265D59DD0();
    v29 = sub_265D5A070();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_265C01000, v28, v29, "Link: willBeginActivity condition unmet - can't create activity.", v30, 2u);
      MEMORY[0x266770CF0](v30, -1, -1);
    }

    (*(v40 + 8))(v11, v41);
    sub_265C9EB84();
    v31 = swift_allocError();
    *v32 = 0;
    a3(v31, 1);
  }
}

uint64_t sub_265CAE760()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  v8 = sub_265D59DE0();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  sub_265D58C90();
  v17 = (v0 + 32);
  v18 = *(v0 + 72);
  if (v18 <= 0x3F)
  {
    sub_265D59610();
    v19 = sub_265D59DD0();
    v20 = sub_265D5A080();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_265C01000, v19, v20, "Link: can create activity. State is idle.", v21, 2u);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    (*(v45 + 8))(v16, v46);
    return 1;
  }

  if ((v18 & 0xC0) == 0x40)
  {
    v41 = v14;
    v24 = *(v0 + 40);
    v23 = *(v0 + 48);
    v42 = *(v0 + 64);

    v44 = v24;

    v43 = v23;

    sub_265D59880();
    (*(v2 + 104))(v5, *MEMORY[0x277CCB200], v1);
    sub_265CB9320(&qword_28003E398, &qword_28003E370, &unk_265D5B8B8, MEMORY[0x277CCB210]);
    v25 = sub_265D59E80();
    v26 = *(v2 + 8);
    v26(v5, v1);
    v26(v7, v1);
    if ((v25 & 1) == 0)
    {
      v36 = v41;
      sub_265D59610();
      v37 = sub_265D59DD0();
      v38 = sub_265D5A080();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_265C01000, v37, v38, "Link: can create activity. Link has session not in joined state.", v39, 2u);
        MEMORY[0x266770CF0](v39, -1, -1);
      }

      else
      {
      }

      (*(v45 + 8))(v36, v46);
      return 1;
    }
  }

  sub_265D59610();

  v27 = sub_265D59DD0();
  v28 = sub_265D5A080();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136315138;
    v31 = v17[1];
    v49 = *v17;
    v50[0] = v31;
    *(v50 + 9) = *(v17 + 25);
    sub_265CB8F04(&v49, v47);
    v32 = sub_265CA7108();
    v34 = v33;
    sub_265CB8F3C(&v49);
    v35 = sub_265CF4FFC(v32, v34, &v48);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_265C01000, v27, v28, "Link: can't create new activity due to link state: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266770CF0](v30, -1, -1);
    MEMORY[0x266770CF0](v29, -1, -1);
  }

  (*(v45 + 8))(v11, v46);
  return 0;
}

void sub_265CAECD4(uint64_t a1@<X8>)
{
  v175 = sub_265D59310();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v173 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265D583A0();
  MEMORY[0x28223BE20](v4 - 8);
  v168 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_265D59900();
  v166 = *(v167 - 8);
  v6 = MEMORY[0x28223BE20](v167);
  v165 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v162 = &v151 - v8;
  v179 = sub_265D58300();
  v170 = *(v179 - 8);
  v9 = MEMORY[0x28223BE20](v179);
  v171 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v169 = &v151 - v12;
  MEMORY[0x28223BE20](v11);
  v178 = &v151 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v15 = *(v14 - 8);
  v183 = v14;
  v184 = v15;
  MEMORY[0x28223BE20](v14);
  v188 = (&v151 - v16);
  v17 = sub_265D59D70();
  v181 = *(v17 - 8);
  v182 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v164 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v151 - v20;
  v22 = sub_265D58330();
  v177 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v163 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v151 - v25;
  v27 = sub_265D57E50();
  v186 = *(v27 - 8);
  v187 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v161 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v185 = &v151 - v30;
  v31 = sub_265D59DE0();
  v189 = *(v31 - 8);
  v190 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v160 = &v151 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v158 = &v151 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v180 = &v151 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v176 = &v151 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v159 = &v151 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v151 - v45;
  v172 = v1;
  sub_265D58CA0();
  v47 = v193;
  v48 = v197;
  if ((v198 & 0xC0) == 0x40)
  {
    v152 = v198;
    v155 = v195;
    v156 = v194;

    sub_265D59610();

    v49 = sub_265D59DD0();
    v50 = sub_265D5A080();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v154 = a1;
      v52 = v51;
      v53 = swift_slowAlloc();
      v153 = v48;
      v151 = v53;
      v193 = v53;
      *v52 = 136446466;
      v54 = v185;
      sub_265D59830();
      v55 = sub_265D57E40();
      v157 = v47;
      v57 = v56;
      (v186[1])(v54, v187);
      v58 = sub_265CF4FFC(v55, v57, &v193);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2082;
      sub_265D598A0();
      sub_265D59D60();
      (*(v181 + 8))(v21, v182);
      sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
      v59 = sub_265D5A3B0();
      v61 = v60;
      v177[1](v26, v22);
      v62 = sub_265CF4FFC(v59, v61, &v193);
      v47 = v157;

      *(v52 + 14) = v62;
      _os_log_impl(&dword_265C01000, v49, v50, "Link: Attempting to join session %{public}s with %{public}s", v52, 0x16u);
      v63 = v151;
      swift_arrayDestroy();
      v48 = v153;
      MEMORY[0x266770CF0](v63, -1, -1);
      v64 = v52;
      a1 = v154;
      MEMORY[0x266770CF0](v64, -1, -1);
    }

    v65 = v189;
    v66 = v190;
    v67 = *(v189 + 8);
    (v67)(v46, v190);
    v68 = v188;
    sub_265D59880();
    v70 = v183;
    v69 = v184;
    v71 = (*(v184 + 88))(v68, v183);
    if (v71 == *MEMORY[0x277CCB1F8])
    {
      v177 = v67;
      (*(v69 + 96))(v68, v70);
      v72 = *v68;
      v73 = v180;
      sub_265D59610();

      v74 = v72;
      v75 = sub_265D59DD0();
      v76 = sub_265D5A070();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v153 = v48;
        v79 = v78;
        v193 = v78;
        *v77 = 136446466;
        v80 = v185;
        sub_265D59830();
        v81 = sub_265D57E40();
        v83 = v82;
        (v186[1])(v80, v187);
        v84 = sub_265CF4FFC(v81, v83, &v193);

        *(v77 + 4) = v84;
        *(v77 + 12) = 2082;
        swift_getErrorValue();
        v85 = MEMORY[0x2667704D0](v191, v192);
        v87 = sub_265CF4FFC(v85, v86, &v193);

        *(v77 + 14) = v87;
        _os_log_impl(&dword_265C01000, v75, v76, "Link: Failed to join session %{public}s because it was invalidated with error %{public}s", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v79, -1, -1);
        MEMORY[0x266770CF0](v77, -1, -1);

        v88 = v190;
        v89 = v180;
      }

      else
      {

        v89 = v73;
        v88 = v66;
      }

      (v177)(v89, v88);
      *(swift_allocObject() + 16) = v72;
      v107 = v72;
LABEL_19:
      sub_265D58940();

      return;
    }

    if (v71 == *MEMORY[0x277CCB208])
    {
      v95 = v159;
      sub_265D59610();
      v96 = sub_265D59DD0();
      v97 = sub_265D5A080();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_265C01000, v96, v97, "Link: Calling session.join()", v98, 2u);
        MEMORY[0x266770CF0](v98, -1, -1);
      }

      v177 = v67;
      v189 = v65 + 8;
      (v67)(v95, v66);
      sub_265D59850();

      v99 = v162;
      sub_265D597E0();
      v100 = sub_265D598F0();
      v102 = v101;
      v103 = *(v166 + 8);
      v104 = v167;
      v103(v99, v167);

      v105 = HIBYTE(v102) & 0xF;
      if ((v102 & 0x2000000000000000) == 0)
      {
        v105 = v100 & 0xFFFFFFFFFFFFLL;
      }

      v154 = a1;
      v106 = v165;
      if (v105)
      {
        sub_265D597E0();
        sub_265D598F0();
        v103(v106, v104);
      }

      sub_265D597E0();
      v126 = v185;
      sub_265D598E0();
      v103(v106, v104);
      sub_265D57E40();
      v127 = v187;
      v128 = v186[1];
      v128(v126, v187);
      sub_265D58340();
      v129 = v161;
      sub_265D59830();
      sub_265D57E40();
      v128(v129, v127);
      v130 = v164;
      sub_265D598A0();
      sub_265D59D60();
      (*(v181 + 8))(v130, v182);
      sub_265D59800();
      sub_265D5A030();
      v131 = v178;
      sub_265D582C0();
      v157 = v47;

      v132 = v176;
      sub_265D59610();
      v133 = v170;
      v134 = v169;
      v135 = v179;
      v188 = *(v170 + 16);
      (v188)(v169, v131, v179);
      v136 = sub_265D59DD0();
      v137 = sub_265D5A080();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = v134;
        v139 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        v193 = v186;
        *v139 = 136315138;
        sub_265CB5E54(&qword_28003E320, MEMORY[0x277D50FB0], MEMORY[0x277D50FB8]);
        v140 = sub_265D5A3B0();
        v142 = v141;
        v187 = *(v133 + 8);
        v187(v138, v179);
        v143 = sub_265CF4FFC(v140, v142, &v193);
        v135 = v179;

        *(v139 + 4) = v143;
        _os_log_impl(&dword_265C01000, v136, v137, "Link: Joined session. Publishing update %s", v139, 0xCu);
        v144 = v186;
        __swift_destroy_boxed_opaque_existential_1Tm(v186);
        MEMORY[0x266770CF0](v144, -1, -1);
        MEMORY[0x266770CF0](v139, -1, -1);

        v145 = v176;
      }

      else
      {

        v187 = *(v133 + 8);
        v187(v134, v135);
        v145 = v132;
      }

      (v177)(v145, v190);
      swift_getObjectType();
      v146 = v178;
      (v188)(v171, v178, v135);
      v147 = v173;
      sub_265D59300();
      v148 = v175;
      sub_265D58ED0();
      (*(v174 + 8))(v147, v148);
      sub_265D58970();

      v187(v146, v135);
    }

    else
    {
      if (v71 == *MEMORY[0x277CCB200])
      {
        v108 = v158;
        sub_265D59610();

        v109 = sub_265D59DD0();
        v110 = sub_265D5A070();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v177 = v67;
          v112 = v111;
          v113 = swift_slowAlloc();
          v193 = v113;
          *v112 = 136446210;
          v114 = v185;
          sub_265D59830();
          v115 = sub_265D57E40();
          v157 = v47;
          v117 = v116;
          (v186[1])(v114, v187);
          v118 = sub_265CF4FFC(v115, v117, &v193);

          *(v112 + 4) = v118;
          _os_log_impl(&dword_265C01000, v109, v110, "Link: Failed to join session %{public}s because it is already joined", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v113);
          MEMORY[0x266770CF0](v113, -1, -1);
          MEMORY[0x266770CF0](v112, -1, -1);

          (v177)(v158, v66);
        }

        else
        {

          (v67)(v108, v66);
        }

        sub_265C9EB84();
        v72 = swift_allocError();
        *v149 = 6;
        *(swift_allocObject() + 16) = v72;
        v150 = v72;
        goto LABEL_19;
      }

      sub_265D59610();
      v119 = sub_265D59DD0();
      v120 = sub_265D5A070();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&dword_265C01000, v119, v120, "Link: Unknown session state", v121, 2u);
        v122 = v121;
        v69 = v184;
        MEMORY[0x266770CF0](v122, -1, -1);
      }

      (v67)(v160, v66);
      sub_265C9EB84();
      v123 = swift_allocError();
      *v124 = 17;
      *(swift_allocObject() + 16) = v123;
      v125 = v123;
      sub_265D58940();

      (*(v69 + 8))(v188, v70);
    }
  }

  else
  {
    sub_265CB90F8(v193, v194, v195, v196, v197, v198);
    sub_265D59610();
    v90 = sub_265D59DD0();
    v91 = sub_265D5A070();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_265C01000, v90, v91, "Link: Failed to join session because link state isn't connected.", v92, 2u);
      MEMORY[0x266770CF0](v92, -1, -1);
    }

    (*(v189 + 8))(v34, v190);
    sub_265C9EB84();
    v93 = swift_allocError();
    *v94 = 9;
    *(swift_allocObject() + 16) = v93;
    sub_265D58940();
  }
}

uint64_t sub_265CB02E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a2;
  v146 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  isa = v4[-1].isa;
  v145 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v140 = &v120[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v143 = &v120[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E318, &unk_265D5B690);
  MEMORY[0x28223BE20](v8 - 8);
  v139 = &v120[-v9];
  v10 = sub_265D58330();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v142 = &v120[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v120[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v120[-v16];
  v18 = sub_265D59D70();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v120[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_265D59DE0();
  v151 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v120[-v27];
  MEMORY[0x28223BE20](v26);
  v33 = &v120[-v32];
  v34 = *(a1 + 72);
  if ((v34 & 0xC0) == 0x40)
  {
    v126 = v28;
    v130 = v31;
    v127 = v30;
    v128 = v29;
    v141 = v22;
    v35 = *(a1 + 56);
    v36 = *(a1 + 64);
    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v135 = *(a1 + 48);
    v136 = v37;
    v137 = v36;
    sub_265CB5DE4(v38, v37, v135, v35, v36, v34);

    sub_265D598A0();
    sub_265D59D60();
    v40 = *(v19 + 8);
    v39 = v19 + 8;
    v133 = v21;
    v134 = v18;
    v129 = v40;
    v40(v21, v18);
    v41 = MEMORY[0x26676E3E0](v147, v17);
    v42 = *(v11 + 8);
    v131 = v17;
    v132 = v42;
    v42(v17, v10);
    if (v41)
    {
      v125 = v11 + 8;
      v124 = v39;
      v130 = v10;
      v142 = v38;
      v43 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_registeredLocalActivities;
      swift_beginAccess();
      v44 = *(a1 + v43);

      v45 = v147;
      v46 = sub_265CA7654(v147, v44);

      v47 = v134;
      v48 = v133;
      v49 = isa;
      if (v46)
      {
        v50 = v45;
        v123 = v43;
        v51 = v126;
        sub_265D59610();
        v52 = v138;
        v53 = v130;
        (*(v11 + 16))(v138, v50, v130);
        v54 = sub_265D59DD0();
        v55 = sub_265D5A080();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v148 = v122;
          *v56 = 136446210;
          sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
          v121 = v55;
          v57 = sub_265D5A3B0();
          v59 = v58;
          v132(v52, v53);
          v60 = sub_265CF4FFC(v57, v59, &v148);
          v48 = v133;

          *(v56 + 4) = v60;
          _os_log_impl(&dword_265C01000, v54, v121, "Link: Leave: Removing registered %{public}s", v56, 0xCu);
          v61 = v122;
          __swift_destroy_boxed_opaque_existential_1Tm(v122);
          MEMORY[0x266770CF0](v61, -1, -1);
          MEMORY[0x266770CF0](v56, -1, -1);
        }

        else
        {

          v132(v52, v53);
        }

        (*(v151 + 8))(v51, v141);
        swift_beginAccess();
        v90 = v139;
        sub_265CB88F4(v147, v139);
        swift_endAccess();
        sub_265CA4AE8(v90, &qword_28003E318, &unk_265D5B690);
        v47 = v134;
      }

      v91 = v143;
      sub_265D59880();
      v92 = v145;
      v93 = (*(v49 + 11))(v91, v145);
      v94 = *MEMORY[0x277CCB200];
      v95 = *(v49 + 1);
      v95(v91, v92);
      v96 = v131;
      if (v93 == v94)
      {
        v97 = v47;
        v98 = v128;
        sub_265D59610();

        v99 = sub_265D59DD0();
        v100 = sub_265D5A080();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v148 = v102;
          *v101 = 136315138;
          sub_265D598A0();
          sub_265D59D60();
          v129(v48, v97);
          sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
          v103 = v130;
          v104 = sub_265D5A3B0();
          v105 = v96;
          v107 = v106;
          v132(v105, v103);
          v108 = sub_265CF4FFC(v104, v107, &v148);

          *(v101 + 4) = v108;
          _os_log_impl(&dword_265C01000, v99, v100, "Link: Leaving session for %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
          MEMORY[0x266770CF0](v102, -1, -1);
          MEMORY[0x266770CF0](v101, -1, -1);
        }

        (*(v151 + 8))(v98, v141);
        sub_265D59870();
        sub_265D58970();
        goto LABEL_24;
      }

      v148 = 0;
      v149 = 0xE000000000000000;
      v109 = v140;
      sub_265D59880();
      sub_265D5A290();
      v95(v109, v92);
      v111 = v148;
      v110 = v149;
      v112 = v127;
      sub_265D59610();

      v113 = sub_265D59DD0();
      v114 = sub_265D5A070();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v148 = v116;
        *v115 = 136446210;
        v117 = sub_265CF4FFC(v111, v110, &v148);

        *(v115 + 4) = v117;
        _os_log_impl(&dword_265C01000, v113, v114, "Link: Failed to leave because session isn't in joined state. State: %{public}s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v116);
        MEMORY[0x266770CF0](v116, -1, -1);
        MEMORY[0x266770CF0](v115, -1, -1);
      }

      else
      {
      }

      (*(v151 + 8))(v112, v141);
      sub_265C9EB84();
      v118 = swift_allocError();
      *v119 = 7;
      *(swift_allocObject() + 16) = v118;
    }

    else
    {
      v68 = v130;
      sub_265D59610();
      v69 = v142;
      (*(v11 + 16))(v142, v147, v10);

      v70 = sub_265D59DD0();
      v71 = sub_265D5A070();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v150 = v147;
        *v72 = 136315394;
        v143 = sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
        v145 = v70;
        v73 = sub_265D5A3B0();
        LODWORD(isa) = v71;
        v74 = v10;
        v76 = v75;
        v77 = v69;
        v78 = v132;
        v132(v77, v10);
        v79 = sub_265CF4FFC(v73, v76, &v150);

        *(v72 + 4) = v79;
        *(v72 + 12) = 2080;
        v80 = v133;
        sub_265D598A0();
        v81 = v131;
        sub_265D59D60();
        v129(v80, v134);
        v82 = sub_265D5A3B0();
        v84 = v83;
        v78(v81, v74);
        v85 = sub_265CF4FFC(v82, v84, &v150);

        *(v72 + 14) = v85;
        v86 = v145;
        _os_log_impl(&dword_265C01000, v145, isa, "Link: Leave - Session activity mismatch. Requested: %s, Session: %s", v72, 0x16u);
        v87 = v147;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v87, -1, -1);
        MEMORY[0x266770CF0](v72, -1, -1);

        (*(v151 + 8))(v130, v141);
      }

      else
      {

        v132(v69, v10);
        (*(v151 + 8))(v68, v141);
      }

      sub_265C9EB84();
      v88 = swift_allocError();
      *v89 = 16;
      *(swift_allocObject() + 16) = v88;
    }

    sub_265D58940();
LABEL_24:
  }

  sub_265D59610();
  v62 = sub_265D59DD0();
  v63 = sub_265D5A070();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_265C01000, v62, v63, "Link: Leave - Failed to leave session because link state isn't connected", v64, 2u);
    MEMORY[0x266770CF0](v64, -1, -1);
  }

  (*(v151 + 8))(v33, v22);
  sub_265C9EB84();
  v65 = swift_allocError();
  *v66 = 9;
  *(swift_allocObject() + 16) = v65;
  return sub_265D58940();
}

uint64_t sub_265CB1200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v24 = a1;
  v2 = sub_265D58330();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E248, &unk_265D5B5D0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v25);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  sub_265D59DC0();
  (*(v11 + 8))(v13, v10);
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v2);
  v14 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v26;
  (*(v3 + 32))(v15 + v14, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3A0, &qword_265D5B8D8);
  sub_265D58940();
  v16 = v23;
  v17 = v25;
  (*(v5 + 16))(v23, v9, v25);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v18, v16, v17);
  v20 = (v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_265CB1F50;
  v20[1] = 0;
  sub_265D58930();
  return (*(v5 + 8))(v9, v17);
}

uint64_t sub_265CB15B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v80 = a3;
  v5 = sub_265D59D70();
  v6 = *(v5 - 8);
  v88 = v5;
  v89 = v6;
  MEMORY[0x28223BE20](v5);
  v87 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E318, &unk_265D5B690);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v75[-v9];
  v10 = sub_265D58330();
  v90 = *(v10 - 8);
  v91 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v84 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v86 = &v75[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v75[-v15];
  v92 = sub_265D59DE0();
  v17 = *(v92 - 8);
  v18 = MEMORY[0x28223BE20](v92);
  v20 = &v75[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v75[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v75[-v24];
  v26 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_registeredLocalActivities;
  swift_beginAccess();
  v27 = *(a1 + v26);

  v94 = a2;
  LOBYTE(a2) = sub_265CA7654(a2, v27);

  v85 = v20;
  if (a2)
  {
    v79 = v23;
    sub_265D59610();
    v29 = v90;
    v28 = v91;
    (*(v90 + 16))(v16, v94, v91);
    v30 = sub_265D59DD0();
    v31 = sub_265D5A080();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v82 = v17;
      v33 = v32;
      v77 = v32;
      v78 = swift_slowAlloc();
      v93[0] = v78;
      *v33 = 136315138;
      sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
      v76 = v31;
      v34 = sub_265D5A3B0();
      v36 = v35;
      (*(v29 + 8))(v16, v28);
      v37 = sub_265CF4FFC(v34, v36, v93);
      v17 = v82;

      v38 = v77;
      *(v77 + 4) = v37;
      _os_log_impl(&dword_265C01000, v30, v76, "Link: Terminating - Removing registered %s", v38, 0xCu);
      v39 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266770CF0](v39, -1, -1);
      MEMORY[0x266770CF0](v38, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v16, v28);
    }

    (*(v17 + 8))(v25, v92);
    swift_beginAccess();
    v40 = v83;
    sub_265CB88F4(v94, v83);
    swift_endAccess();
    sub_265CA4AE8(v40, &qword_28003E318, &unk_265D5B690);
    v23 = v79;
  }

  if ((*(a1 + 72) & 0xC0) == 0x40)
  {
    v82 = v17;
    v41 = *(a1 + 64);
    v42 = *(a1 + 40);
    v43 = *(a1 + 32);

    v44 = v87;
    v83 = v43;
    sub_265D598A0();
    v45 = v86;
    sub_265D59D60();
    v46 = v89 + 8;
    v78 = *(v89 + 8);
    (v78)(v44, v88);
    v47 = v94;
    LOBYTE(v43) = MEMORY[0x26676E3E0](v94, v45);
    v48 = v90;
    v49 = v45;
    v50 = v91;
    v79 = *(v90 + 8);
    (v79)(v49, v91);
    if (v43)
    {
      *v80 = v83;
    }

    else
    {
      sub_265D59610();
      (*(v48 + 16))(v84, v47, v50);

      v56 = sub_265D59DD0();
      v57 = sub_265D5A070();

      LODWORD(v90) = v57;
      v94 = v56;
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v89 = v46;
        v59 = v58;
        v77 = swift_slowAlloc();
        v93[0] = v77;
        *v59 = 136315394;
        sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
        v80 = v41;
        v81 = v42;
        v60 = v84;
        v61 = sub_265D5A3B0();
        v63 = v62;
        v64 = v79;
        (v79)(v60, v50);
        v65 = sub_265CF4FFC(v61, v63, v93);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2080;
        v66 = v87;
        sub_265D598A0();
        v67 = v86;
        sub_265D59D60();
        (v78)(v66, v88);
        v68 = sub_265D5A3B0();
        v70 = v69;
        v64(v67, v50);
        v71 = sub_265CF4FFC(v68, v70, v93);

        *(v59 + 14) = v71;
        v72 = v94;
        _os_log_impl(&dword_265C01000, v94, v90, "Link: Terminating - Session activity mismatch. Requested: %s != Session: %s", v59, 0x16u);
        v73 = v77;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v73, -1, -1);
        MEMORY[0x266770CF0](v59, -1, -1);
      }

      else
      {

        (v79)(v84, v50);
      }

      (*(v82 + 8))(v85, v92);
      sub_265C9EB84();
      swift_allocError();
      *v74 = 16;
      swift_willThrow();
    }
  }

  else
  {
    sub_265D59610();
    v52 = sub_265D59DD0();
    v53 = sub_265D5A070();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_265C01000, v52, v53, "Link: Terminating - Failed to leave session because link state isn't connected", v54, 2u);
      MEMORY[0x266770CF0](v54, -1, -1);
    }

    (*(v17 + 8))(v23, v92);
    sub_265C9EB84();
    swift_allocError();
    *v55 = 9;
    return swift_willThrow();
  }
}

uint64_t sub_265CB1F50@<X0>(uint64_t a2@<X8>)
{
  v27 = sub_265D59D70();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_265D58330();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265D59DE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();

  v11 = sub_265D59DD0();
  v12 = sub_265D5A080();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a2;
    v14 = v13;
    v22 = swift_slowAlloc();
    v23 = v7;
    v29 = v22;
    *v14 = 136315138;
    sub_265D598A0();
    sub_265D59D60();
    (*(v25 + 8))(v4, v27);
    sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
    v15 = v28;
    v16 = sub_265D5A3B0();
    v18 = v17;
    (*(v26 + 8))(v6, v15);
    v19 = sub_265CF4FFC(v16, v18, &v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_265C01000, v11, v12, "Link: Terminating %s", v14, 0xCu);
    v20 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266770CF0](v20, -1, -1);
    MEMORY[0x266770CF0](v14, -1, -1);

    (*(v8 + 8))(v10, v23);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_265D59840();
  return sub_265D58970();
}

uint64_t sub_265CB22CC(uint64_t a1)
{
  v51 = a1;
  v1 = sub_265D59910();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  v52 = &v45[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_265D57E50();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_265D59DE0();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v45[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45[-v17];
  sub_265D58CA0();
  if ((v61 & 0xC0) == 0x40)
  {
    v49 = v60;
    v50 = v58;
    sub_265D59880();
    v19 = (*(v16 + 88))(v18, v15);
    v20 = *MEMORY[0x277CCB208];
    (*(v16 + 8))(v18, v15);
    if (v19 == v20)
    {
      sub_265D59610();

      v21 = sub_265D59DD0();
      v22 = sub_265D5A080();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v57[0] = v24;
        *v23 = 136446210;
        v46 = v22;
        sub_265D59830();
        sub_265CB5E54(&qword_28003E368, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v25 = v48;
        v26 = sub_265D5A3B0();
        v28 = v27;
        (*(v47 + 8))(v5, v25);
        v29 = sub_265CF4FFC(v26, v28, v57);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_265C01000, v21, v46, "Link: attempting to send data to non-joined session %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x266770CF0](v24, -1, -1);
        MEMORY[0x266770CF0](v23, -1, -1);
      }

      (*(v55 + 8))(v14, v56);
    }

    else
    {
      sub_265D59610();

      v34 = sub_265D59DD0();
      v35 = sub_265D5A080();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v57[0] = v37;
        *v36 = 136446210;
        sub_265D59830();
        v38 = sub_265D57E40();
        v40 = v39;
        (*(v47 + 8))(v5, v48);
        v41 = sub_265CF4FFC(v38, v40, v57);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_265C01000, v34, v35, "Link: sending data to session %{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x266770CF0](v37, -1, -1);
        MEMORY[0x266770CF0](v36, -1, -1);
      }

      (*(v55 + 8))(v12, v56);
    }

    v43 = v52;
    v42 = v53;
    v44 = v54;
    (*(v53 + 104))(v52, *MEMORY[0x277CCB260], v54);
    type metadata accessor for MultiUserLinkMessage(0);
    sub_265CB5E54(&qword_28003E3C0, type metadata accessor for MultiUserLinkMessage, &unk_265D5B2C8);
    sub_265CB5E54(&qword_28003E3C8, type metadata accessor for MultiUserLinkMessage, &unk_265D5B2A0);
    sub_265D597A0();

    return (*(v42 + 8))(v43, v44);
  }

  else
  {
    sub_265CB90F8(v57[0], v57[1], v58, v59, v60, v61);
    sub_265D59610();
    v30 = sub_265D59DD0();
    v31 = sub_265D5A070();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_265C01000, v30, v31, "Link: Failed to send data because session state isn't joined", v32, 2u);
      MEMORY[0x266770CF0](v32, -1, -1);
    }

    return (*(v55 + 8))(v9, v56);
  }
}

uint64_t sub_265CB2A94(void *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_265D59610();
    v8 = a1;
    v9 = sub_265D59DD0();
    v10 = sub_265D5A070();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = MEMORY[0x2667704D0](v16[2], v16[3]);
      v15 = sub_265CF4FFC(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_265C01000, v9, v10, "Link: Failed to send data with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x266770CF0](v12, -1, -1);
      MEMORY[0x266770CF0](v11, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_265CB2C84@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = sub_265D59D70();
  v79 = *(v1 - 8);
  v80 = v1;
  MEMORY[0x28223BE20](v1);
  v76 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265D58330();
  v82 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v77 = v5;
  v78 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - v12;
  v14 = sub_265D59DE0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v75 = &v67 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v67 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  sub_265D59610();
  sub_265D59DC0();
  v84 = *(v15 + 8);
  v85 = v14;
  v84(v24, v14);
  sub_265D58CA0();
  v25 = v87;
  if ((v92 & 0xC0) == 0x40)
  {
    v71 = v89;
    v72 = v88;
    v73 = v91;
    v74 = v3;
    v87 = 0;
    v88 = 0xE000000000000000;

    sub_265D59880();
    sub_265D5A290();
    v26 = *(v8 + 8);
    v26(v13, v7);
    v27 = v88;
    v70 = v87;
    sub_265D59880();
    v28 = (*(v8 + 88))(v11, v7);
    v29 = *MEMORY[0x277CCB200];
    v26(v11, v7);
    if (v28 == v29)
    {
      v30 = v83;
      sub_265D59610();

      v31 = v25;
      v32 = sub_265D59DD0();
      v33 = sub_265D5A070();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v75 = v31;
        v35 = v34;
        v69 = swift_slowAlloc();
        v87 = v69;
        *v35 = 136315394;
        v36 = sub_265CF4FFC(v70, v27, &v87);
        LODWORD(v70) = v33;
        v37 = v36;

        *(v35 + 4) = v37;
        *(v35 + 12) = 2080;
        v68 = v32;
        v38 = v76;
        sub_265D598A0();
        v39 = v81;
        sub_265D59D60();
        v40 = v79;
        v41 = v80;
        (*(v79 + 8))(v38, v80);
        sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
        v42 = v74;
        v43 = sub_265D5A3B0();
        v45 = v44;
        v46 = v82;
        (*(v82 + 8))(v39, v42);
        v47 = sub_265CF4FFC(v43, v45, &v87);

        *(v35 + 14) = v47;
        v48 = v68;
        _os_log_impl(&dword_265C01000, v68, v70, "Link: queryJoinedActivity found session with state: %s, activity: %s", v35, 0x16u);
        v49 = v69;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v49, -1, -1);
        MEMORY[0x266770CF0](v35, -1, -1);

        v84(v83, v85);
      }

      else
      {

        v84(v30, v85);
        v42 = v74;
        v39 = v81;
        v46 = v82;
        v40 = v79;
        v41 = v80;
        v38 = v76;
      }

      sub_265D598A0();
      sub_265D59D60();
      (*(v40 + 8))(v38, v41);
      v62 = v78;
      (*(v46 + 16))(v78, v39, v42);
      v63 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v64 = swift_allocObject();
      (*(v46 + 32))(v64 + v63, v62, v42);
      sub_265D58940();

      return (*(v46 + 8))(v39, v42);
    }

    else
    {
      v56 = v75;
      sub_265D59610();

      v57 = sub_265D59DD0();
      v58 = sub_265D5A070();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v87 = v60;
        *v59 = 136315138;
        v61 = sub_265CF4FFC(v70, v27, &v87);

        *(v59 + 4) = v61;
        _os_log_impl(&dword_265C01000, v57, v58, "Link: queryJoinedActivity session isn't joined, with state: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x266770CF0](v60, -1, -1);
        MEMORY[0x266770CF0](v59, -1, -1);
      }

      else
      {
      }

      v84(v56, v85);
      sub_265C9EB84();
      v65 = swift_allocError();
      *v66 = 7;
      *(swift_allocObject() + 16) = v65;
      sub_265D58940();
    }
  }

  else
  {
    sub_265CB90F8(v87, v88, v89, v90, v91, v92);
    sub_265D59610();
    v50 = sub_265D59DD0();
    v51 = sub_265D5A070();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_265C01000, v50, v51, "Link: Failed to get current activity because session state isn't joined", v52, 2u);
      MEMORY[0x266770CF0](v52, -1, -1);
    }

    v84(v18, v85);
    sub_265C9EB84();
    v53 = swift_allocError();
    *v54 = 9;
    *(swift_allocObject() + 16) = v53;
    return sub_265D58940();
  }
}

uint64_t sub_265CB36F0@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v63 = sub_265D59DE0();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v2 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265D58330();
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D59D70();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_265D57E50();
  v70 = *(v73 - 8);
  v7 = MEMORY[0x28223BE20](v73);
  v69 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v56 - v9;
  v10 = sub_265D583A0();
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_265D59900();
  v64 = *(v65 - 8);
  v12 = MEMORY[0x28223BE20](v65);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v78 = sub_265D58300();
  v71 = *(v78 - 8);
  v24 = *(v71 + 64);
  v25 = MEMORY[0x28223BE20](v78);
  v67 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v68 = &v56 - v26;
  sub_265D58CA0();
  if ((v85 & 0xC0) == 0x40)
  {
    v60 = v85;
    v61 = v82;
    v62 = v81;
    v63 = v84;

    sub_265D59880();
    (*(v18 + 16))(v21, v23, v17);
    v27 = (*(v18 + 88))(v21, v17);
    if (v27 == *MEMORY[0x277CCB1F8])
    {
      v28 = *(v18 + 8);
      v28(v23, v17);
      v28(v21, v17);
      v59 = 0;
      v58 = 1;
      v29 = 2;
LABEL_4:
      v57 = v29;
LABEL_13:
      v38 = v65;
      sub_265D597E0();
      v39 = sub_265D598F0();
      v41 = v40;
      v42 = *(v64 + 8);
      v42(v16, v38);

      v43 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v43 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        sub_265D597E0();
        sub_265D598F0();
        v42(v14, v38);
      }

      sub_265D597E0();
      v44 = v66;
      sub_265D598E0();
      v42(v14, v38);
      sub_265D57E40();
      v45 = *(v70 + 8);
      v46 = v44;
      v47 = v73;
      v45(v46, v73);
      sub_265D58340();
      v48 = v69;
      sub_265D59830();
      sub_265D57E40();
      v45(v48, v47);
      v49 = v74;
      sub_265D598A0();
      sub_265D59D60();
      (*(v75 + 8))(v49, v76);
      sub_265D59800();
      sub_265D5A030();
      v50 = v68;
      sub_265D582C0();

      v51 = v71;
      v52 = v67;
      v53 = v78;
      (*(v71 + 16))(v67, v50, v78);
      v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v55 = swift_allocObject();
      (*(v51 + 32))(v55 + v54, v52, v53);
      sub_265D58940();

      return (*(v51 + 8))(v50, v53);
    }

    if (v27 == *MEMORY[0x277CCB208])
    {
      (*(v18 + 8))(v23, v17);
      v57 = 0;
      v59 = 0;
    }

    else
    {
      LODWORD(v59) = *MEMORY[0x277CCB200];
      v36 = *(v18 + 8);
      v37 = v27;
      v36(v23, v17);
      if (v37 != v59)
      {
        v36(v21, v17);
        v58 = 0;
        v59 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
        goto LABEL_4;
      }

      v59 = 0;
      v57 = 1;
    }

    v58 = 1;
    goto LABEL_13;
  }

  sub_265CB90F8(v80, v81, v82, v83, v84, v85);
  sub_265D59610();
  v30 = sub_265D59DD0();
  v31 = sub_265D5A070();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_265C01000, v30, v31, "Link: Failed to get session because link isn't connected.", v32, 2u);
    MEMORY[0x266770CF0](v32, -1, -1);
  }

  (*(v62 + 8))(v2, v63);
  sub_265C9EB84();
  v33 = swift_allocError();
  *v34 = 9;
  *(swift_allocObject() + 16) = v33;
  return sub_265D58940();
}

uint64_t sub_265CB4124@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_265D58330();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265D59D70();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D586F0();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v35 - v9;
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  sub_265D59610();
  sub_265D59DC0();
  v35 = *(v11 + 8);
  v35(v16, v10);
  sub_265D58CA0();
  v17 = v46;
  v18 = v49;
  v19 = v50;
  if ((v51 & 0xC0) == 0x40)
  {
    v35 = v47;
    v20 = sub_265D597F0();

    v21 = sub_265CB9AC4(v20, v17, v18, v19);

    sub_265CB958C(v21);

    sub_265D598A0();
    v22 = v39;
    sub_265D59D60();
    (*(v36 + 8))(v5, v37);
    sub_265D58310();
    (*(v40 + 8))(v22, v41);
    sub_265D5A030();
    v23 = v42;
    sub_265D586D0();
    v25 = v43;
    v24 = v44;
    v26 = v38;
    (*(v43 + 16))(v38, v23, v44);
    v27 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v28 = swift_allocObject();
    (*(v25 + 32))(v28 + v27, v26, v24);
    sub_265D58940();

    return (*(v25 + 8))(v23, v24);
  }

  else
  {
    sub_265CB90F8(v46, v47, v48, v49, v50, v51);
    sub_265D59610();
    v30 = sub_265D59DD0();
    v31 = sub_265D5A070();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_265C01000, v30, v31, "Link: Failed to get session because link isn't connected.", v32, 2u);
      MEMORY[0x266770CF0](v32, -1, -1);
    }

    v35(v14, v10);
    sub_265C9EB84();
    v33 = swift_allocError();
    *v34 = 9;
    *(swift_allocObject() + 16) = v33;
    return sub_265D58940();
  }
}

void sub_265CB46F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v147 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  MEMORY[0x28223BE20](v2 - 8);
  v133 = &v122 - v3;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E488, &qword_265D5B948);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v122 - v4;
  v5 = sub_265D58740();
  v137 = *(v5 - 8);
  v138 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v139 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v122 - v9;
  MEMORY[0x28223BE20](v8);
  v128 = &v122 - v11;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E490, &qword_265D5B950);
  v142 = *(v140 - 8);
  v12 = MEMORY[0x28223BE20](v140);
  v132 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v130 = &v122 - v15;
  MEMORY[0x28223BE20](v14);
  v144 = &v122 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E498, &unk_265D5B958);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v122 - v18;
  v20 = sub_265D59900();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v131 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v143 = &v122 - v24;
  v25 = sub_265D59DE0();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v122 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v129 = &v122 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v122 - v35;
  sub_265D59610();
  sub_265D59DC0();
  v37 = *(v26 + 8);
  v145 = v26 + 8;
  v146 = v25;
  v38 = v25;
  v39 = v37;
  v37(v36, v38);
  sub_265D58CA0();
  if ((v153 & 0xC0) == 0x40)
  {
    v124 = v150;
    v125 = v149;
    v127 = v152;
    v126 = v148;
    v40 = sub_265D597F0();
    MEMORY[0x28223BE20](v40);
    v41 = v141;
    *(&v122 - 2) = v141;
    sub_265CB58E8(sub_265CB9804, v40, v19);

    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_265CA4AE8(v19, &qword_28003E498, &unk_265D5B958);
      sub_265D59610();
      v43 = v137;
      v42 = v138;
      v44 = *(v137 + 16);
      v44(v10, v41, v138);
      v45 = v139;
      v44(v139, v41, v42);
      v46 = sub_265D59DD0();
      v47 = sub_265D5A070();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v148 = v144;
        *v48 = 136315394;
        LODWORD(v143) = v47;
        v49 = sub_265D58700();
        v51 = v50;
        v52 = *(v43 + 8);
        v52(v10, v42);
        v53 = sub_265CF4FFC(v49, v51, &v148);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2080;
        sub_265CB5E54(&qword_28003E4A0, MEMORY[0x277D53180], MEMORY[0x277D53188]);
        v54 = v139;
        v55 = sub_265D5A3B0();
        v57 = v56;
        v52(v54, v42);
        v58 = sub_265CF4FFC(v55, v57, &v148);

        *(v48 + 14) = v58;
        _os_log_impl(&dword_265C01000, v46, v143, "Link: Announcement: Unknown participant %s, dropping %s", v48, 0x16u);
        v59 = v144;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v59, -1, -1);
        MEMORY[0x266770CF0](v48, -1, -1);
      }

      else
      {

        v78 = *(v43 + 8);
        v78(v45, v42);
        v78(v10, v42);
      }

      v39(v32, v146);
      sub_265C9EB84();
      v79 = swift_allocError();
      *v80 = 18;
      *(swift_allocObject() + 16) = v79;
      sub_265D58940();

      return;
    }

    v65 = v20;
    v66 = v39;
    v67 = *(v21 + 32);
    v139 = v65;
    v67(v143, v19);
    v68 = *MEMORY[0x277CCB1E0];
    v69 = *(v142 + 104);
    v70 = v140;
    v69(v144, *MEMORY[0x277CCB1E0], v140);
    sub_265D58730();
    v71 = sub_265D59E90();

    v72 = sub_265D59EA0();
    v74 = v73;
    v75 = sub_265D59EA0();
    v123 = v71;
    if (v72 == v75 && v74 == v76)
    {

LABEL_19:
      sub_265D58720();
      v86 = v85;
      v87 = v142;
      v88 = *(v142 + 8);
      v145 = (v142 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v146 = v88;
      v89 = v144;
      v88(v144, v70);
      if (v86 <= 0.0)
      {
        v90 = *MEMORY[0x277CCB1F0];
      }

      else
      {
        v90 = v68;
      }

      v91 = v130;
      v69(v130, v90, v70);
      (*(v87 + 32))(v89, v91, v70);
      goto LABEL_23;
    }

    v77 = sub_265D5A3C0();

    if (v77)
    {
      goto LABEL_12;
    }

    v81 = sub_265D59EA0();
    v83 = v82;
    if (v81 == sub_265D59EA0() && v83 == v84)
    {

      goto LABEL_18;
    }

    v98 = sub_265D5A3C0();

    if (v98)
    {
LABEL_12:

LABEL_18:
      v70 = v140;
      goto LABEL_19;
    }

    v99 = sub_265D59EA0();
    v101 = v100;
    if (v99 == sub_265D59EA0() && v101 == v102)
    {

      v70 = v140;
LABEL_29:
      v87 = v142;
      v104 = *(v142 + 8);
      v145 = (v142 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v146 = v104;
      v89 = v144;
      v104(v144, v70);
      v69(v89, *MEMORY[0x277CCB1E8], v70);
LABEL_23:
      v92 = v21;
      v93 = *(v21 + 16);
      v94 = v143;
      v95 = v139;
      v93(v131, v143, v139);
      (*(v87 + 16))(v132, v89, v70);
      v96 = sub_265D57DA0();
      (*(*(v96 - 8) + 56))(v133, 1, 1, v96);
      sub_265D59D70();
      sub_265CB5E54(&unk_2813B8F70, MEMORY[0x277D4FB20], MEMORY[0x277D4FB18]);
      v97 = v134;
      sub_265D59860();
      sub_265D598B0();
      sub_265D58970();

      (*(v135 + 8))(v97, v136);
      v146(v89, v70);
      (*(v92 + 8))(v94, v95);
      return;
    }

    v103 = sub_265D5A3C0();

    v70 = v140;
    if (v103)
    {
      goto LABEL_29;
    }

    v105 = v129;
    sub_265D59610();
    v107 = v137;
    v106 = v138;
    v108 = v128;
    (*(v137 + 16))(v128, v41, v138);
    v109 = sub_265D59DD0();
    v110 = sub_265D5A070();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v148 = v112;
      *v111 = 136315138;
      v113 = sub_265D58730();
      v114 = v108;
      v116 = v115;
      (*(v107 + 8))(v114, v106);
      v117 = sub_265CF4FFC(v113, v116, &v148);

      *(v111 + 4) = v117;
      _os_log_impl(&dword_265C01000, v109, v110, "Link: Announcement: Unknown player command %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      MEMORY[0x266770CF0](v112, -1, -1);
      MEMORY[0x266770CF0](v111, -1, -1);

      v118 = v129;
    }

    else
    {

      (*(v107 + 8))(v108, v106);
      v118 = v105;
    }

    v66(v118, v146);
    sub_265C9EB84();
    v119 = swift_allocError();
    *v120 = 5;
    *(swift_allocObject() + 16) = v119;
    v121 = v119;
    sub_265D58940();

    (*(v142 + 8))(v144, v140);
    (*(v21 + 8))(v143, v139);
  }

  else
  {
    sub_265CB90F8(v148, v149, v150, v151, v152, v153);
    sub_265D59610();
    v60 = sub_265D59DD0();
    v61 = sub_265D5A070();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_265C01000, v60, v61, "Link: Announcement: Failed to get session because link isn't connected.", v62, 2u);
      MEMORY[0x266770CF0](v62, -1, -1);
    }

    v39(v29, v146);
    sub_265C9EB84();
    v63 = swift_allocError();
    *v64 = 9;
    *(swift_allocObject() + 16) = v63;
    sub_265D58940();
  }
}

uint64_t sub_265CB57A8()
{
  v0 = sub_265D57E50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D598E0();
  v4 = sub_265D57E40();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v4 == sub_265D58700() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_265D5A3C0();
  }

  return v9 & 1;
}

uint64_t sub_265CB58E8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_265D59900();
  v6 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265CB5BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_265D58330();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = *v5;
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  return sub_265D58930();
}

uint64_t sub_265CB5DB0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_265C959D0(v4, v5);
}

uint64_t sub_265CB5DE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6)
  {
    if (a6 >> 6 != 1)
    {
      return v7;
    }
  }
}

uint64_t sub_265CB5E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265CB5E9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E448, &qword_265D5B920);
  result = sub_265D5A1D0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_265D5A0C0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_265CB60C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF90, &qword_265D5B1C8);
  result = sub_265D5A1D0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_265D5A460();
      sub_265D59EF0();
      result = sub_265D5A4A0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_265CB6324(uint64_t a1)
{
  v2 = v1;
  v36 = sub_265D583A0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E470, &unk_265D5B930);
  result = sub_265D5A1D0();
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
      sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550], MEMORY[0x277D51558]);
      result = sub_265D59E60();
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

uint64_t sub_265CB6680(uint64_t a1)
{
  v2 = v1;
  v36 = sub_265D58330();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E388, &qword_265D5B8C8);
  result = sub_265D5A1D0();
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
      sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
      result = sub_265D59E60();
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

void sub_265CB69DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_265CB6BD8(a1, a2, v20, a3);
        return;
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
      goto LABEL_16;
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
}

void *sub_265CB6B48(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_265CB69DC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_265CB6BD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E448, &qword_265D5B920);
  result = sub_265D5A1E0();
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
    result = sub_265D5A0C0();
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

uint64_t sub_265CB6DCC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_265D5A460();
  sub_265D59EF0();
  v8 = sub_265D5A4A0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_265D5A3C0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_265CB74DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_265CB6F1C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_265D583A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550], MEMORY[0x277D51558]);
  v33 = a2;
  v11 = sub_265D59E60();
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
      sub_265CB5E54(&qword_28003E468, MEMORY[0x277D51550], MEMORY[0x277D51560]);
      v21 = sub_265D59E80();
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
    sub_265CB765C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_265CB71FC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_265D58330();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
  v33 = a2;
  v11 = sub_265D59E60();
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
      sub_265CB5E54(&qword_28003E338, MEMORY[0x277D51510], MEMORY[0x277D51528]);
      v21 = sub_265D59E80();
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
    sub_265CB7924(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_265CB74DC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_265CB60C4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_265CB7BEC();
      goto LABEL_16;
    }

    sub_265CB7F80(v8 + 1);
  }

  v10 = *v4;
  sub_265D5A460();
  sub_265D59EF0();
  result = sub_265D5A4A0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_265D5A3C0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_265D5A3E0();
  __break(1u);
  return result;
}

uint64_t sub_265CB765C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_265D583A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
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
    sub_265CB6324(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_265CB7D48(MEMORY[0x277D51550], &qword_28003E470, &unk_265D5B930);
      goto LABEL_12;
    }

    sub_265CB81B8(v10 + 1);
  }

  v12 = *v3;
  sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550], MEMORY[0x277D51558]);
  v13 = sub_265D59E60();
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
      sub_265CB5E54(&qword_28003E468, MEMORY[0x277D51550], MEMORY[0x277D51560]);
      v21 = sub_265D59E80();
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
  result = sub_265D5A3E0();
  __break(1u);
  return result;
}

uint64_t sub_265CB7924(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_265D58330();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
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
    sub_265CB6680(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_265CB7D48(MEMORY[0x277D51510], &qword_28003E388, &qword_265D5B8C8);
      goto LABEL_12;
    }

    sub_265CB84D4(v10 + 1);
  }

  v12 = *v3;
  sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
  v13 = sub_265D59E60();
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
      sub_265CB5E54(&qword_28003E338, MEMORY[0x277D51510], MEMORY[0x277D51528]);
      v21 = sub_265D59E80();
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
  result = sub_265D5A3E0();
  __break(1u);
  return result;
}

void *sub_265CB7BEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF90, &qword_265D5B1C8);
  v2 = *v0;
  v3 = sub_265D5A1C0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

void *sub_265CB7D48(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_265D5A1C0();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_265CB7F80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF90, &qword_265D5B1C8);
  result = sub_265D5A1D0();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_265D5A460();

      sub_265D59EF0();
      result = sub_265D5A4A0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_265CB81B8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_265D583A0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E470, &unk_265D5B930);
  v7 = sub_265D5A1D0();
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
      sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550], MEMORY[0x277D51558]);
      result = sub_265D59E60();
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

uint64_t sub_265CB84D4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_265D58330();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E388, &qword_265D5B8C8);
  v7 = sub_265D5A1D0();
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
      sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
      result = sub_265D59E60();
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

void *sub_265CB87F0(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_265D467C0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3B8, &qword_265D5DDA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_265CB88F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_265D58330();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
  v31 = a1;
  v10 = sub_265D59E60();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_265CB5E54(&qword_28003E338, MEMORY[0x277D51510], MEMORY[0x277D51528]);
      v19 = sub_265D59E80();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_265CB7D48(MEMORY[0x277D51510], &qword_28003E388, &qword_265D5B8C8);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_265CB8BC0(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_265CB8BC0(int64_t a1)
{
  v3 = sub_265D58330();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_265D5A130();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
        v24 = sub_265D59E60();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_265CB8FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_265D58330() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_265CB9064(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_265CB90F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {
  }

  return v7;
}

unint64_t sub_265CB917C()
{
  result = qword_28003E3F0;
  if (!qword_28003E3F0)
  {
    sub_265C932E0(255, &qword_28003E3E8, 0x277D6EE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E3F0);
  }

  return result;
}

uint64_t sub_265CB9208(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_48Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265CB92CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E450, &qword_265D5B928);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_265CB9320(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_265CB9368(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x266770250](a1, a2, v7);
      sub_265C932E0(0, &qword_28003E3E8, 0x277D6EE60);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_265C932E0(0, &qword_28003E3E8, 0x277D6EE60);
    if (sub_265D5A170() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_265D5A180();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_265D5A0C0();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_265D5A0D0();

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

uint64_t sub_265CB958C(uint64_t a1)
{
  v2 = sub_265D583A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550], MEMORY[0x277D51558]);
  result = MEMORY[0x266770110](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_265CB6F1C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_265CB9728(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_265CB9734(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 72) & 1;
  if ((*(v1 + 72) & 0xC0) != 0x40)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_265D58330();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265CB98E8()
{
  sub_265D58330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3A0, &qword_265D5B8D8);
  return sub_265D58CA0();
}

uint64_t sub_265CB99A4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E248, &unk_265D5B5D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265C9EBD8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_265CB9A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 72);
  *(a1 + 40) = v7;
  return sub_265CB5DE4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_265CB9AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v62 = a2;
  v61 = sub_265D57E50();
  v6 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_265D59900();
  v8 = *(v70 - 8);
  v9 = MEMORY[0x28223BE20](v70);
  v59 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = v46 - v11;
  v58 = sub_265D583A0();
  v12 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v46[1] = v4;
    v72 = MEMORY[0x277D84F90];
    sub_265CF56C8(0, v15, 0);
    v71 = v72;
    v68 = a1 + 56;
    result = sub_265D5A120();
    v17 = result;
    v18 = 0;
    v51 = (v6 + 8);
    v52 = v8 + 16;
    v56 = v8;
    v67 = v8 + 8;
    v50 = v12 + 32;
    v47 = a1 + 64;
    v57 = a1;
    v54 = v14;
    v55 = v12;
    v53 = v15;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
    {
      v20 = v17 >> 6;
      if ((*(v68 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_24;
      }

      v21 = *(a1 + 36);
      v63 = v18;
      v64 = v21;
      v22 = v56;
      v23 = *(a1 + 48) + *(v56 + 72) * v17;
      v24 = v69;
      v25 = v70;
      (*(v56 + 16))(v69, v23, v70);
      v26 = v60;
      sub_265D598E0();
      v27 = sub_265D57E40();
      v65 = v28;
      v66 = v27;
      (*v51)(v26, v61);
      v29 = v59;
      sub_265D597E0();
      v30 = MEMORY[0x26676F990](v29, v24);
      v31 = *(v22 + 8);
      v31(v29, v25);
      if (v30)
      {
      }

      v33 = v54;
      v32 = v55;
      sub_265D58340();
      v31(v69, v70);
      v34 = v71;
      v72 = v71;
      v36 = *(v71 + 16);
      v35 = *(v71 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_265CF56C8((v35 > 1), v36 + 1, 1);
        v34 = v72;
      }

      *(v34 + 16) = v36 + 1;
      v37 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v71 = v34;
      result = (*(v32 + 32))(v34 + v37 + *(v32 + 72) * v36, v33, v58);
      a1 = v57;
      v19 = 1 << *(v57 + 32);
      v38 = v53;
      if (v17 >= v19)
      {
        goto LABEL_25;
      }

      v39 = *(v68 + 8 * v20);
      if ((v39 & (1 << v17)) == 0)
      {
        goto LABEL_26;
      }

      if (v64 != *(v57 + 36))
      {
        goto LABEL_27;
      }

      v40 = v39 & (-2 << (v17 & 0x3F));
      if (v40)
      {
        v19 = __clz(__rbit64(v40)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v20 << 6;
        v42 = v20 + 1;
        v43 = (v47 + 8 * v20);
        while (v42 < (v19 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_265CB9728(v17, v64, 0);
            v19 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_265CB9728(v17, v64, 0);
      }

LABEL_4:
      v18 = v63 + 1;
      v17 = v19;
      if (v63 + 1 == v38)
      {
        return v71;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_67Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_265CBA164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265CBA1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_265CBA26C(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 48); ; i += 3)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;
      swift_unknownObjectRetain();
      v5(&v8);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265CBA34C(uint64_t a1)
{
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v3 = *(v102 - 8);
  v4 = MEMORY[0x28223BE20](v102);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v85 - v7;
  v110 = sub_265D58130();
  v101 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = v9;
  v109 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
  v97 = *(v98 - 8);
  v10 = MEMORY[0x28223BE20](v98);
  v95 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v11;
  MEMORY[0x28223BE20](v10);
  v96 = &v85 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v108 = *(v106 - 8);
  v13 = *(v108 + 64);
  v14 = MEMORY[0x28223BE20](v106);
  v104 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v103 = &v85 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v99 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v100 = &v85 - v19;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_265C9D5CC();
  v111 = a1;
  v20 = sub_265D580D0();
  v22 = v21;
  v107 = v1;
  v23 = off_287780190;
  type metadata accessor for SessionConnectionPool();
  if (v23())
  {
    __swift_project_boxed_opaque_existential_1(v107 + 7, v107[10]);

    sub_265CB36F0(v8);
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v22;
    v25 = v102;
    (*(v3 + 16))(v6, v8, v102);
    v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v27 = (v93 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    (*(v3 + 32))(v28 + v26, v6, v25);
    v29 = (v28 + v27);
    *v29 = sub_265CC4B48;
    v29[1] = v24;
    v30 = v103;
    sub_265D58930();
    (*(v3 + 8))(v8, v25);
  }

  else
  {
    v30 = v103;
    sub_265D58970();
  }

  v31 = v107;
  v32 = *__swift_project_boxed_opaque_existential_1(v107 + 2, v107[5]);
  v113[3] = type metadata accessor for MultiUserIdentityProvider(0);
  v113[4] = &off_28777ADE0;
  v113[0] = v32;
  sub_265C97624(v113, v112);
  v33 = swift_allocObject();
  sub_265C033C4(v112, v33 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_265CC46E0;
  *(v34 + 24) = v33;
  v35 = v108;
  v36 = *(v108 + 16);
  v92 = v108 + 16;
  v93 = v36;
  v37 = v104;
  v38 = v106;
  v36(v104, v30, v106);
  v39 = *(v35 + 80);
  v91 = v39;
  v40 = v30;
  v41 = (v39 + 16) & ~v39;
  v88 = v41;
  v42 = (v13 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = v42;
  v43 = swift_allocObject();
  v44 = v31;
  v45 = *(v35 + 32);
  v87 = v35 + 32;
  v89 = v45;
  v45(v43 + v41, v37, v38);
  v46 = (v43 + v42);
  *v46 = sub_265CC4B4C;
  v46[1] = v34;
  sub_265D583A0();
  v47 = v96;
  sub_265D58930();
  v48 = *(v35 + 8);
  v108 = v35 + 8;
  v90 = v48;
  v48(v40, v38);
  v49 = v101;
  v50 = *(v101 + 16);
  v102 = v101 + 16;
  v103 = v50;
  v51 = v109;
  v52 = v110;
  (v50)(v109, v111, v110);
  v53 = *(v49 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v44;
  v101 = *(v49 + 32);
  (v101)(v54 + ((v53 + 24) & ~v53), v51, v52);
  v55 = swift_allocObject();
  *(v55 + 16) = sub_265CC47E8;
  *(v55 + 24) = v54;
  v56 = v97;
  v57 = v95;
  v58 = v98;
  (*(v97 + 16))(v95, v47, v98);
  v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v60 = (v94 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v56 + 32))(v61 + v59, v57, v58);
  v62 = (v61 + v60);
  *v62 = sub_265CC4B50;
  v62[1] = v55;
  v63 = v107;

  v64 = v99;
  sub_265D58930();
  (*(v56 + 8))(v47, v58);
  v65 = v109;
  v66 = v110;
  (v103)(v109, v111, v110);
  v105 += (v53 + 16) & ~v53;
  v98 = (v53 + 16) & ~v53;
  v67 = (v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (v101)(v68 + ((v53 + 16) & ~v53), v65, v66);
  *(v68 + v67) = v63;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_265CC4918;
  *(v69 + 24) = v68;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_265CC49A4;
  *(v70 + 24) = v69;
  v71 = v104;
  v72 = v106;
  v93(v104, v64, v106);
  v73 = v86;
  v74 = swift_allocObject();
  v89(v74 + v88, v71, v72);
  v75 = (v74 + v73);
  *v75 = sub_265CC49C0;
  v75[1] = v70;

  v76 = v100;
  sub_265D58930();
  v77 = v64;
  v78 = v90;
  v90(v77, v72);
  v79 = v109;
  v80 = v110;
  (v103)(v109, v111, v110);
  v81 = swift_allocObject();
  (v101)(v81 + v98, v79, v80);
  v82 = sub_265D58960();
  v83 = swift_allocObject();
  *(v83 + 16) = sub_265CC4A90;
  *(v83 + 24) = v81;

  v82(sub_265CA4BF4, v83);

  return v78(v76, v72);
}

uint64_t sub_265CBAE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_265CBAFBC(void *a1)
{
  v113 = sub_265D59310();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v3 - 8);
  v115 = v108 - v4;
  v118 = sub_265D58300();
  v116 = *(v118 - 8);
  v5 = MEMORY[0x28223BE20](v118);
  v110 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v108 - v8;
  MEMORY[0x28223BE20](v7);
  v117 = v108 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2E8, &qword_265D5B670);
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v130 = v13;
  v131 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v132 = v108 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v124 = *(v126 - 8);
  v15 = MEMORY[0x28223BE20](v126);
  v121 = v16;
  v122 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v123 = v108 - v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v140 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v19 = v108 - v18;
  v20 = sub_265D58AC0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v127 = v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = v108 - v24;
  v135 = sub_265D59DE0();
  v26 = *(v135 - 1);
  v27 = MEMORY[0x28223BE20](v135);
  v114 = v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v108 - v29;
  sub_265D59610();
  v31 = *(v21 + 16);
  v138 = a1;
  v120 = v21 + 16;
  v119 = v31;
  v31(v25, a1, v20);
  v32 = sub_265D59DD0();
  v33 = sub_265D5A080();
  v34 = os_log_type_enabled(v32, v33);
  v109 = v9;
  v128 = v21;
  v129 = v20;
  v139 = v19;
  v108[1] = v26;
  if (v34)
  {
    v35 = v26;
    v36 = swift_slowAlloc();
    v37 = v20;
    v38 = swift_slowAlloc();
    v141 = v38;
    *v36 = 136315138;
    v39 = sub_265D589D0();
    v40 = v21;
    v42 = v41;
    (*(v40 + 8))(v25, v37);
    v43 = sub_265CF4FFC(v39, v42, &v141);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_265C01000, v32, v33, "System: Activated session with identifier: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266770CF0](v38, -1, -1);
    MEMORY[0x266770CF0](v36, -1, -1);

    v44 = *(v35 + 8);
  }

  else
  {

    (*(v21 + 8))(v25, v20);
    v44 = *(v26 + 8);
  }

  v44(v30, v135);
  v45 = sub_265D589D0();
  v46 = v136;
  v136[30] = v45;
  v46[31] = v47;

  __swift_project_boxed_opaque_existential_1(v46 + 2, v46[5]);
  v48 = off_28777ADF0;
  type metadata accessor for MultiUserIdentityProvider(0);
  v49 = v139;
  v48();
  v50 = v137;
  v51 = sub_265D58960();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  v51(sub_265CA4BF4, v52);

  v53 = v140 + 8;
  v54 = *(v140 + 8);
  (v54)(v49, v50);
  v55 = off_287780190;
  type metadata accessor for SessionConnectionPool();
  if (v55())
  {
    __swift_project_boxed_opaque_existential_1(v46 + 7, v46[10]);
    v135 = v54;
    v56 = v123;
    sub_265CB36F0(v123);
    v57 = swift_allocObject();
    *(v57 + 16) = sub_265CC4414;
    *(v57 + 24) = v46;
    v58 = v124;
    v59 = v122;
    v60 = v126;
    (*(v124 + 16))(v122, v56, v126);
    v61 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v62 = (v121 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    (*(v58 + 32))(v63 + v61, v59, v60);
    v64 = (v63 + v62);
    *v64 = sub_265CC4430;
    v64[1] = v57;

    v65 = v139;
    sub_265D58930();
    (*(v58 + 8))(v56, v60);
    v66 = v137;
    v67 = sub_265D58960();
    v68 = swift_allocObject();
    *(v68 + 16) = sub_265CBE23C;
    *(v68 + 24) = 0;
    v67(sub_265CA4BF4, v68);

    (v135)(v65, v66);
    __swift_project_boxed_opaque_existential_1(v46 + 7, v46[10]);
    v69 = v132;
    sub_265CB4124(v132);
    v70 = v127;
    v71 = v129;
    v119(v127, v138, v129);
    v72 = v128;
    v73 = (*(v128 + 80) + 16) & ~*(v128 + 80);
    v74 = (v125 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    (*(v72 + 32))(v75 + v73, v70, v71);
    *(v75 + v74) = v46;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_265CC447C;
    *(v76 + 24) = v75;
    v140 = v53;
    v77 = v66;
    v79 = v133;
    v78 = v134;
    v80 = v131;
    (*(v133 + 16))(v131, v69, v134);
    v81 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v82 = (v130 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    (*(v79 + 32))(v83 + v81, v80, v78);
    v84 = (v83 + v82);
    *v84 = sub_265CC4570;
    v84[1] = v76;

    v85 = v139;
    sub_265D58930();
    (*(v79 + 8))(v69, v78);
    v86 = sub_265D58960();
    v87 = swift_allocObject();
    *(v87 + 16) = sub_265CBE6CC;
    *(v87 + 24) = 0;
    v86(sub_265CA4BF4, v87);

    return (v135)(v85, v77);
  }

  else
  {
    v89 = v115;
    sub_265D58980();
    v90 = v116;
    v91 = v118;
    if ((*(v116 + 48))(v89, 1, v118) == 1)
    {
      return sub_265CA4AE8(v89, &qword_28003E200, &unk_265D5B580);
    }

    else
    {
      v92 = v117;
      (*(v90 + 32))(v117, v89, v91);
      v93 = v114;
      sub_265D59610();
      v94 = v109;
      v140 = *(v90 + 16);
      (v140)(v109, v92, v91);
      v95 = sub_265D59DD0();
      v96 = sub_265D5A080();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = v94;
        v98 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v141 = v138;
        *v98 = 136315138;
        sub_265CC4B00(&qword_28003E320, MEMORY[0x277D50FB0], MEMORY[0x277D50FB8]);
        v99 = sub_265D5A3B0();
        v101 = v100;
        v139 = *(v90 + 8);
        v139(v97, v118);
        v102 = sub_265CF4FFC(v99, v101, &v141);
        v91 = v118;

        *(v98 + 4) = v102;
        _os_log_impl(&dword_265C01000, v95, v96, "System: publishing MultiUserSessionUpdated after activation %s", v98, 0xCu);
        v103 = v138;
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
        MEMORY[0x266770CF0](v103, -1, -1);
        MEMORY[0x266770CF0](v98, -1, -1);

        v104 = v114;
      }

      else
      {

        v139 = *(v90 + 8);
        v139(v94, v91);
        v104 = v93;
      }

      v44(v104, v135);
      swift_getObjectType();
      v105 = v117;
      (v140)(v110, v117, v91);
      v106 = v111;
      sub_265D59300();
      v107 = v113;
      sub_265D58ED0();
      (*(v112 + 8))(v106, v107);
      return (v139)(v105, v91);
    }
  }
}

uint64_t sub_265CBBEE8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - v6;
  v7 = sub_265D58AC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D59DE0();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v14 = *(v8 + 16);
  v39 = a1;
  v14(v10, a1, v7);
  v15 = sub_265D59DD0();
  v16 = sub_265D5A080();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v1;
    v20 = v19;
    v41 = v19;
    *v18 = 136315138;
    v21 = sub_265D589D0();
    v35 = v5;
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = sub_265CF4FFC(v21, v23, &v41);
    v5 = v35;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_265C01000, v15, v16, "Observed session deactivation %s. Leaving activity.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v25 = v20;
    v2 = v34;
    MEMORY[0x266770CF0](v25, -1, -1);
    v26 = v18;
    v4 = v36;
    MEMORY[0x266770CF0](v26, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v37 + 8))(v13, v38);
  v27 = sub_265D589D0();
  sub_265CBE8E4(v27, v28);

  v2[30] = 0;
  v2[31] = 0;

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v29 = off_28777ADF0;
  type metadata accessor for MultiUserIdentityProvider(0);
  v30 = v40;
  v29();
  v31 = sub_265D58960();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v31(sub_265CA442C, v32);

  return (*(v5 + 8))(v30, v4);
}

uint64_t sub_265CBC32C(uint64_t a1)
{
  v2 = sub_265D58330();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D59DE0();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_265D59DD0();
  v10 = sub_265D5A080();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = a1;
    v12 = v11;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v12 = 136446210;
    sub_265CC4B00(&qword_28003E378, MEMORY[0x277D51510], MEMORY[0x277D51538]);
    v13 = sub_265D5A3B0();
    v22 = v6;
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v16 = sub_265CF4FFC(v13, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_265C01000, v9, v10, "Broadcasting activity received: %{public}s", v12, 0xCu);
    v17 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266770CF0](v17, -1, -1);
    v18 = v12;
    a1 = v24;
    MEMORY[0x266770CF0](v18, -1, -1);

    (*(v25 + 8))(v8, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v25 + 8))(v8, v6);
  }

  v19 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v20 = v19();
  MEMORY[0x28223BE20](v20);
  *(&v22 - 2) = a1;
  sub_265CBA26C(sub_265CC4398, (&v22 - 4), v20);
}

uint64_t sub_265CBC6E8(uint64_t a1)
{
  v2 = sub_265D58300();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D59DE0();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_265D59DD0();
  v10 = sub_265D5A080();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = a1;
    v12 = v11;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v12 = 136446210;
    sub_265CC4B00(&qword_28003E320, MEMORY[0x277D50FB0], MEMORY[0x277D50FB8]);
    v13 = sub_265D5A3B0();
    v22 = v6;
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v16 = sub_265CF4FFC(v13, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_265C01000, v9, v10, "Broadcasting multi-user session updated: %{public}s", v12, 0xCu);
    v17 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266770CF0](v17, -1, -1);
    v18 = v12;
    a1 = v24;
    MEMORY[0x266770CF0](v18, -1, -1);

    (*(v25 + 8))(v8, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v25 + 8))(v8, v6);
  }

  v19 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v20 = v19();
  MEMORY[0x28223BE20](v20);
  *(&v22 - 2) = a1;
  sub_265CBA26C(sub_265CC4350, (&v22 - 4), v20);
}

uint64_t sub_265CBCAA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58330();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59DE0();
  v37 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = sub_265D58310();
  v16 = *(v1 + 248);
  if (!v16)
  {

    goto LABEL_10;
  }

  if (v14 != *(v1 + 240) || v16 != v15)
  {
    v17 = sub_265D5A3C0();

    if (v17)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_265D59610();
    (*(v5 + 16))(v7, a1, v4);

    v24 = sub_265D59DD0();
    v25 = sub_265D5A070();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v26 = 136446466;
      v27 = sub_265D58310();
      v36 = v8;
      v29 = v28;
      (*(v5 + 8))(v7, v4);
      v30 = sub_265CF4FFC(v27, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v38 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v31 = sub_265D5A0E0();
      v33 = sub_265CF4FFC(v31, v32, &v39);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_265C01000, v24, v25, "Remote catchup request session %{public}s doesn't match local session %{public}s", v26, 0x16u);
      v34 = v35;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v34, -1, -1);
      MEMORY[0x266770CF0](v26, -1, -1);

      return (*(v37 + 8))(v11, v36);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v37 + 8))(v11, v8);
    }
  }

LABEL_7:
  sub_265D59610();
  v18 = sub_265D59DD0();
  v19 = sub_265D5A080();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_265C01000, v18, v19, "Broadcasting server-side catchup request", v20, 2u);
    MEMORY[0x266770CF0](v20, -1, -1);
  }

  (*(v37 + 8))(v13, v8);
  v21 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v22 = v21();
  MEMORY[0x28223BE20](v22);
  *(&v35 - 2) = a1;
  sub_265CBA26C(sub_265CC4308, (&v35 - 4), v22);
}

void *sub_265CBCF48()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_265CBCFA8()
{
  sub_265CBCF48();

  return swift_deallocClassInstance();
}

uint64_t sub_265CBD000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v47 = sub_265D58330();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
  v7 = *(v51 - 8);
  v50 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](v51);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v57 = *(v53 - 8);
  v12 = v57[8];
  v13 = MEMORY[0x28223BE20](v53);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v52 = &v47 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v58 = &v47 - v18;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_265C9D03C(v11);
  v19 = v47;
  (*(v5 + 16))(&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v47);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v5 + 32))(v21 + v20, &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  *(v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_265CC3AA0;
  *(v22 + 24) = v21;
  v23 = v48;
  v24 = v11;
  v25 = v11;
  v26 = v51;
  (*(v7 + 16))(v48, v25, v51);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v28 = (v50 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v7 + 32))(v29 + v27, v23, v26);
  v30 = (v29 + v28);
  *v30 = sub_265CC3AE0;
  v30[1] = v22;

  sub_265D58930();
  (*(v7 + 8))(v24, v26);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  v31 = v56;
  sub_265CB1200(v49, v56);
  v32 = v57;
  v33 = v57[2];
  v34 = v52;
  v35 = v31;
  v36 = v53;
  v33(v52, v35, v53);
  v37 = v32;
  v38 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v39 = swift_allocObject();
  v40 = v37[4];
  v40(v39 + v38, v34, v36);
  v41 = v54;
  v33(v54, v58, v36);
  v42 = (v38 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v40(v43 + v38, v41, v36);
  v44 = (v43 + v42);
  *v44 = sub_265CC40D0;
  v44[1] = v39;
  sub_265D58930();
  v45 = v57[1];
  v45(v56, v36);
  return (v45)(v58, v36);
}

uint64_t sub_265CBD560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v44 = sub_265D58EB0();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265D59DE0();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265D58560();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  sub_265D58350();
  sub_265D58310();
  sub_265D5A030();
  v48 = 1;
  sub_265D58540();
  sub_265D59610();
  v14 = *(v8 + 16);
  v41 = v13;
  v15 = v13;
  v16 = v6;
  v14(v11, v15, v7);
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  v19 = os_log_type_enabled(v17, v18);
  v46 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v47 = v21;
    *v20 = 136315138;
    sub_265CC4B00(&qword_28003E350, MEMORY[0x277D52470], MEMORY[0x277D52478]);
    v22 = sub_265D5A3B0();
    v23 = v7;
    v25 = v24;
    v26 = *(v8 + 8);
    v37 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38 = v26;
    v26(v11, v23);
    v27 = sub_265CF4FFC(v22, v25, &v47);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_265C01000, v17, v18, "System: Broadcasting %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x266770CF0](v21, -1, -1);
    MEMORY[0x266770CF0](v20, -1, -1);
  }

  else
  {

    v28 = *(v8 + 8);
    v37 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38 = v28;
    v28(v11, v7);
  }

  (*(v39 + 8))(v16, v40);
  v40 = *(v45 + 104);
  swift_getObjectType();
  v29 = *MEMORY[0x277D4E0D0];
  v31 = v42;
  v30 = v43;
  v32 = *(v42 + 104);
  v33 = v44;
  v32(v43, v29, v44);
  v34 = v41;
  sub_265D58C70();
  v35 = *(v31 + 8);
  v35(v30, v33);
  v32(v30, v29, v33);
  sub_265CBDA40(v30, v34, MEMORY[0x277D52470], MEMORY[0x277D52460], sub_265CC4B54);
  v35(v30, v33);
  return v38(v34, v46);
}

uint64_t sub_265CBDA40(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t a4, uint64_t a5)
{
  v37 = a5;
  v41 = a2;
  v42 = a4;
  v39 = a1;
  v40 = a3;
  v6 = sub_265D58EB0();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v43 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v13 = *(v5 + 160);
  v14 = off_287780190;
  v15 = type metadata accessor for SessionConnectionPool();
  result = v14();
  if (!result)
  {
    v34[0] = v15;
    v34[1] = v13;
    v35 = v12;
    v36 = v9;
    v17 = v38;
    v18 = v39;
    v40(0);
    v41 = sub_265D586A0();
    v42 = v19;
    sub_265D59610();
    v20 = v8;
    v21 = v18;
    v22 = v6;
    (*(v17 + 16))(v8, v18, v6);
    v23 = sub_265D59DD0();
    v24 = sub_265D5A080();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      v26 = sub_265D58EA0();
      (*(v17 + 8))(v20, v22);
      *(v25 + 4) = v26;
      _os_log_impl(&dword_265C01000, v23, v24, "Proxying from tv event %ld", v25, 0xCu);
      v21 = v18;
      MEMORY[0x266770CF0](v25, -1, -1);
    }

    else
    {
      (*(v17 + 8))(v20, v6);
    }

    v28 = v36;
    v27 = v37;
    v29 = v43;
    v30 = v34[0];

    (*(v29 + 8))(v35, v28);
    v31 = off_2877801D8(v30);
    MEMORY[0x28223BE20](v31);
    v32 = v41;
    v33 = v42;
    v34[-4] = v21;
    v34[-3] = v32;
    v34[-2] = v33;
    sub_265CBA26C(v27, &v34[-6], v31);

    return sub_265C9889C(v32, v33);
  }

  return result;
}

uint64_t sub_265CBDE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D59310();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D58300();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = sub_265D59DE0();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v15 = *(v7 + 16);
  v39 = a1;
  v16 = v6;
  v34 = v15;
  v15(v11, a1, v6);
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a2;
    v20 = v19;
    v31 = v19;
    v32 = swift_slowAlloc();
    v42 = v32;
    *v20 = 136315138;
    sub_265CC4B00(&qword_28003E320, MEMORY[0x277D50FB0], MEMORY[0x277D50FB8]);
    v21 = sub_265D5A3B0();
    v23 = v22;
    (*(v7 + 8))(v11, v16);
    v24 = sub_265CF4FFC(v21, v23, &v42);

    v25 = v31;
    *(v31 + 4) = v24;
    v26 = v25;
    _os_log_impl(&dword_265C01000, v17, v18, "System: Publishing MultiUserSessionUpdated for session: %s", v25, 0xCu);
    v27 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266770CF0](v27, -1, -1);
    MEMORY[0x266770CF0](v26, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v16);
  }

  (*(v35 + 8))(v14, v36);
  swift_getObjectType();
  v34(v37, v39, v16);
  v28 = v38;
  sub_265D59300();
  v29 = v41;
  sub_265D58ED0();
  return (*(v40 + 8))(v28, v29);
}

uint64_t sub_265CBE248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v4 = sub_265D59580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_265D586F0();
  v7 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = sub_265D59DE0();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v15 = sub_265D586E0();
  v17 = v16;
  if (v15 == sub_265D589D0() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_265D5A3C0();

    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  v38 = v5;
  v39 = v4;
  v21 = v14;
  sub_265D59610();
  v22 = *(v7 + 16);
  v23 = v45;
  v22(v11, v46, v45);
  v24 = sub_265D59DD0();
  v25 = sub_265D5A080();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v37 = v21;
    v27 = v26;
    v36 = swift_slowAlloc();
    v47 = v36;
    *v27 = 136315138;
    sub_265CC4B00(&qword_28003E458, MEMORY[0x277D53008], MEMORY[0x277D53010]);
    v28 = sub_265D5A3B0();
    v29 = v22;
    v31 = v30;
    (*(v7 + 8))(v11, v45);
    v32 = sub_265CF4FFC(v28, v31, &v47);
    v22 = v29;
    v23 = v45;

    *(v27 + 4) = v32;
    _os_log_impl(&dword_265C01000, v24, v25, "System: Republishing MultiUserSessionIdentitiesUpdated: %s", v27, 0xCu);
    v33 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266770CF0](v33, -1, -1);
    MEMORY[0x266770CF0](v27, -1, -1);

    (*(v40 + 8))(v37, v41);
  }

  else
  {

    (*(v7 + 8))(v11, v23);
    (*(v40 + 8))(v21, v41);
  }

  swift_getObjectType();
  v22(v42, v46, v23);
  v34 = v44;
  sub_265D59570();
  v35 = v39;
  sub_265D58ED0();
  return (*(v38 + 8))(v34, v35);
}

uint64_t sub_265CBE6D8(uint64_t a1, const char *a2, ...)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v9 = *a1;
    v10 = *a1;
    sub_265D59610();
    v11 = v9;
    v12 = sub_265D59DD0();
    v13 = sub_265D5A070();
    sub_265CA4470(v9, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20[0] = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = MEMORY[0x2667704D0](v20[2], v20[3]);
      v19 = sub_265CF4FFC(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_265C01000, v12, v13, v20[0], v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266770CF0](v16, -1, -1);
      MEMORY[0x266770CF0](v15, -1, -1);

      sub_265CA4470(v9, 1);
    }

    else
    {
      sub_265CA4470(v9, 1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_265CBE8E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D8, &qword_265D5B660);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  MEMORY[0x28223BE20](v13);
  v26 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_265CB2C84(v12);
  v16 = swift_allocObject();
  *(v16 + 2) = a1;
  *(v16 + 3) = a2;
  *(v16 + 4) = v3;
  (*(v7 + 16))(v10, v12, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v10, v6);
  v19 = (v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_265CC43E0;
  v19[1] = v16;

  v20 = v26;
  sub_265D58930();
  (*(v7 + 8))(v12, v6);
  v21 = v27;
  v22 = sub_265D58960();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v22(sub_265CA4BF4, v23);

  return (*(v28 + 8))(v20, v21);
}

uint64_t sub_265CBEBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_265D58310() == a2 && v6 == a3)
  {

LABEL_5:
    __swift_project_boxed_opaque_existential_1((a4 + 56), *(a4 + 80));
    v8 = off_28777BD30;
    type metadata accessor for MultiUserLink(0);
    return v8();
  }

  v7 = sub_265D5A3C0();

  if (v7)
  {
    goto LABEL_5;
  }

  sub_265C9EB84();
  v10 = swift_allocError();
  *v11 = 16;
  *(swift_allocObject() + 16) = v10;

  return sub_265D58940();
}

uint64_t sub_265CBED4C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v21);
  v6 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = off_287780190;
  type metadata accessor for SessionConnectionPool();
  if (v9())
  {
    v10 = v22;
    if (v22)
    {
      __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));

      sub_265CB36F0(v8);
      v11 = swift_allocObject();
      v12 = v21;
      *(v11 + 16) = v20;
      *(v11 + 24) = v10;
      (*(v3 + 16))(v6, v8, v12);
      v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v14 = swift_allocObject();
      (*(v3 + 32))(v14 + v13, v6, v12);
      v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v15 = sub_265CC3930;
      v15[1] = v11;
      sub_265D58930();
      return (*(v3 + 8))(v8, v12);
    }

    else
    {
      sub_265C9EB84();
      v17 = swift_allocError();
      *v18 = 13;
      *(swift_allocObject() + 16) = v17;

      return sub_265D58940();
    }
  }

  else
  {

    return sub_265D58970();
  }
}

uint64_t sub_265CBF05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_265D58330();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D582F0();
  v9 = sub_265D58310();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v9 == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = sub_265D5A3C0();

    if ((v13 & 1) == 0)
    {
      sub_265C9EB84();
      v14 = swift_allocError();
      *v15 = 13;
      *(swift_allocObject() + 16) = v14;
      return sub_265D58940();
    }
  }

  return sub_265D58970();
}

uint64_t sub_265CBF200(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33[-v9];
  v11 = sub_265D57ED0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v33[-v16];
  sub_265D58080();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_265CA4AE8(v10, &qword_28003E840, &unk_265D5D0D0);
  }

  v38 = v5;
  v39 = v4;
  v40 = a1;
  (*(v12 + 32))(v17, v10, v11);
  sub_265D59610();
  (*(v12 + 16))(v15, v17, v11);
  v19 = sub_265D59DD0();
  v20 = sub_265D5A080();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v21;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v21 = 136315138;
    sub_265CC4B00(&qword_28003E4C0, MEMORY[0x277D50140], MEMORY[0x277D50148]);
    v22 = sub_265D5A3B0();
    v37 = a2;
    v24 = v23;
    v34 = v20;
    v25 = *(v12 + 8);
    v25(v15, v11);
    v26 = v25;
    v27 = sub_265CF4FFC(v22, v24, &v41);

    v28 = v35;
    *(v35 + 1) = v27;
    _os_log_impl(&dword_265C01000, v19, v34, "Handling SessionUpdate %s. Leaving activity.", v28, 0xCu);
    v29 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266770CF0](v29, -1, -1);
    MEMORY[0x266770CF0](v28, -1, -1);
  }

  else
  {

    v30 = *(v12 + 8);
    v30(v15, v11);
    v26 = v30;
  }

  (*(v38 + 8))(v7, v39);
  v31 = sub_265D580D0();
  sub_265CBE8E4(v31, v32);

  return v26(v17, v11);
}

uint64_t sub_265CBF600(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58130();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 8) == 1)
  {
    v13 = *a1;
    v14 = v13;
    sub_265D59610();
    (*(v5 + 16))(v7, a2, v4);
    v15 = v13;
    v16 = sub_265D59DD0();
    v17 = sub_265D5A070();
    sub_265CA4470(v13, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v8;
      v19 = v18;
      v30 = swift_slowAlloc();
      v34 = v30;
      *v19 = 136446466;
      sub_265CC4B00(&qword_28003E4B8, MEMORY[0x277D506A0], MEMORY[0x277D506A8]);
      v29 = v17;
      v20 = sub_265D5A3B0();
      v22 = v21;
      (*(v5 + 8))(v7, v4);
      v23 = sub_265CF4FFC(v20, v22, &v34);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      swift_getErrorValue();
      v24 = MEMORY[0x2667704D0](v32, v33);
      v26 = sub_265CF4FFC(v24, v25, &v34);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_265C01000, v16, v29, "Failed to handle local session update %{public}s with error %{public}s", v19, 0x16u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v27, -1, -1);
      MEMORY[0x266770CF0](v19, -1, -1);

      sub_265CA4470(v13, 1);
      return (*(v9 + 8))(v12, v31);
    }

    else
    {

      sub_265CA4470(v13, 1);
      (*(v5 + 8))(v7, v4);
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t sub_265CBF974(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D584B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59DE0();
  v37 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = sub_265D584A0();
  v16 = *(v1 + 248);
  if (!v16)
  {

    goto LABEL_10;
  }

  if (v14 != *(v1 + 240) || v16 != v15)
  {
    v17 = sub_265D5A3C0();

    if (v17)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_265D59610();
    (*(v5 + 16))(v7, a1, v4);

    v24 = sub_265D59DD0();
    v25 = sub_265D5A070();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v26 = 136446466;
      v27 = sub_265D584A0();
      v36 = v8;
      v29 = v28;
      (*(v5 + 8))(v7, v4);
      v30 = sub_265CF4FFC(v27, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v38 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v31 = sub_265D5A0E0();
      v33 = sub_265CF4FFC(v31, v32, &v39);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_265C01000, v24, v25, "Remote mediaPlayerSyncUpdate session %{public}s doesn't match local session %{public}s", v26, 0x16u);
      v34 = v35;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v34, -1, -1);
      MEMORY[0x266770CF0](v26, -1, -1);

      return (*(v37 + 8))(v11, v36);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v37 + 8))(v11, v8);
    }
  }

LABEL_7:
  sub_265D59610();
  v18 = sub_265D59DD0();
  v19 = sub_265D5A080();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_265C01000, v18, v19, "Received media synchronization event", v20, 2u);
    MEMORY[0x266770CF0](v20, -1, -1);
  }

  (*(v37 + 8))(v13, v8);
  v21 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v22 = v21();
  MEMORY[0x28223BE20](v22);
  *(&v35 - 2) = a1;
  sub_265CBA26C(sub_265CC36B0, (&v35 - 4), v22);
}

uint64_t sub_265CBFE18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D586C0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = sub_265D59DE0();
  v49 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = sub_265D586B0();
  v19 = *(v1 + 248);
  if (!v19)
  {

    goto LABEL_9;
  }

  if (v17 != *(v1 + 240) || v19 != v18)
  {
    v48 = v10;
    v20 = sub_265D5A3C0();
    v10 = v48;

    if (v20)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_265D59610();
    (*(v5 + 16))(v8, a1, v4);

    v30 = sub_265D59DD0();
    v31 = sub_265D5A070();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v32 = 136446466;
      sub_265CC4B00(&qword_28003E4B0, MEMORY[0x277D52FF8], MEMORY[0x277D53000]);
      v33 = sub_265D5A3B0();
      v48 = v11;
      v34 = v33;
      v36 = v35;
      (*(v5 + 8))(v8, v4);
      v37 = sub_265CF4FFC(v34, v36, &v51);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v50 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v38 = sub_265D5A0E0();
      v40 = sub_265CF4FFC(v38, v39, &v51);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_265C01000, v30, v31, "Remote %{public}s doesn't match local session %{public}s", v32, 0x16u);
      v41 = v47;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v41, -1, -1);
      MEMORY[0x266770CF0](v32, -1, -1);

      return (*(v49 + 8))(v14, v48);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return (*(v49 + 8))(v14, v11);
    }
  }

LABEL_7:
  sub_265D59610();
  v21 = *(v5 + 16);
  v47 = a1;
  v21(v10, a1, v4);
  v22 = sub_265D59DD0();
  v23 = sub_265D5A080();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v50 = v46;
    *v24 = 136315138;
    sub_265CC4B00(&qword_28003E4B0, MEMORY[0x277D52FF8], MEMORY[0x277D53000]);
    v25 = sub_265D5A3B0();
    v48 = v11;
    v27 = v26;
    (*(v5 + 8))(v10, v4);
    v28 = sub_265CF4FFC(v25, v27, &v50);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_265C01000, v22, v23, "Received MultiUserParticipantUpdate: %s", v24, 0xCu);
    v29 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266770CF0](v29, -1, -1);
    MEMORY[0x266770CF0](v24, -1, -1);

    (*(v49 + 8))(v16, v48);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
    (*(v49 + 8))(v16, v11);
  }

  v43 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v44 = v43();
  MEMORY[0x28223BE20](v44);
  *(&v45 - 2) = v47;
  sub_265CBA26C(sub_265CC36F8, (&v45 - 4), v44);
}

uint64_t sub_265CC0474(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58560();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = sub_265D59DE0();
  v49 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = sub_265D58550();
  v19 = *(v1 + 248);
  if (!v19)
  {

    goto LABEL_9;
  }

  if (v17 != *(v1 + 240) || v19 != v18)
  {
    v48 = v10;
    v20 = sub_265D5A3C0();
    v10 = v48;

    if (v20)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_265D59610();
    (*(v5 + 16))(v8, a1, v4);

    v30 = sub_265D59DD0();
    v31 = sub_265D5A070();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v32 = 136446466;
      sub_265CC4B00(&qword_28003E350, MEMORY[0x277D52470], MEMORY[0x277D52478]);
      v33 = sub_265D5A3B0();
      v48 = v11;
      v34 = v33;
      v36 = v35;
      (*(v5 + 8))(v8, v4);
      v37 = sub_265CF4FFC(v34, v36, &v51);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v50 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v38 = sub_265D5A0E0();
      v40 = sub_265CF4FFC(v38, v39, &v51);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_265C01000, v30, v31, "Remote %{public}s doesn't match local session %{public}s", v32, 0x16u);
      v41 = v47;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v41, -1, -1);
      MEMORY[0x266770CF0](v32, -1, -1);

      return (*(v49 + 8))(v14, v48);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return (*(v49 + 8))(v14, v11);
    }
  }

LABEL_7:
  sub_265D59610();
  v21 = *(v5 + 16);
  v47 = a1;
  v21(v10, a1, v4);
  v22 = sub_265D59DD0();
  v23 = sub_265D5A080();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v50 = v46;
    *v24 = 136446210;
    sub_265CC4B00(&qword_28003E350, MEMORY[0x277D52470], MEMORY[0x277D52478]);
    v25 = sub_265D5A3B0();
    v48 = v11;
    v27 = v26;
    (*(v5 + 8))(v10, v4);
    v28 = sub_265CF4FFC(v25, v27, &v50);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_265C01000, v22, v23, "Received MultiUserWorkoutUpdate: %{public}s", v24, 0xCu);
    v29 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266770CF0](v29, -1, -1);
    MEMORY[0x266770CF0](v24, -1, -1);

    (*(v49 + 8))(v16, v48);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
    (*(v49 + 8))(v16, v11);
  }

  v43 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v44 = v43();
  MEMORY[0x28223BE20](v44);
  *(&v45 - 2) = v47;
  sub_265CBA26C(sub_265CC3620, (&v45 - 4), v44);
}

uint64_t sub_265CC0AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v5 = *(v48 - 8);
  v6 = MEMORY[0x28223BE20](v48);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v54 = sub_265D584B0();
  v11 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = v12;
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v49 = *(v57 - 8);
  v13 = MEMORY[0x28223BE20](v57);
  v52 = v14;
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v46 - v15;
  v16 = sub_265D59DE0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  sub_265D59DC0();
  (*(v17 + 8))(v19, v16);
  v55 = a1;
  v20 = sub_265D584A0();
  v22 = v21;
  v59 = v3;
  v23 = off_287780190;
  type metadata accessor for SessionConnectionPool();
  if (v23())
  {
    __swift_project_boxed_opaque_existential_1((v59 + 56), *(v59 + 80));

    sub_265CB36F0(v10);
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v22;
    v25 = v8;
    v26 = v8;
    v27 = v48;
    (*(v5 + 16))(v26, v10, v48);
    v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    (*(v5 + 32))(v30 + v28, v25, v27);
    v31 = (v30 + v29);
    *v31 = sub_265CC4B48;
    v31[1] = v24;
    v32 = v56;
    sub_265D58930();
    (*(v5 + 8))(v10, v27);
  }

  else
  {
    v32 = v56;
    sub_265D58970();
  }

  v33 = v51;
  v34 = v54;
  (*(v11 + 16))(v51, v55, v54);
  v35 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v59;
  (*(v11 + 32))(v36 + v35, v33, v34);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_265CC3A0C;
  *(v37 + 24) = v36;
  v38 = v49;
  v39 = v53;
  v40 = v57;
  (*(v49 + 16))(v53, v32, v57);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v52 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v41, v39, v40);
  v44 = (v43 + v42);
  *v44 = sub_265CC4B4C;
  v44[1] = v37;

  sub_265D58930();
  return (*(v38 + 8))(v32, v40);
}

uint64_t sub_265CC10D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v5 = sub_265D58EB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  swift_getObjectType();
  v9 = *MEMORY[0x277D4E0A8];
  v10 = *(v6 + 104);
  v10(v8, v9, v5);
  sub_265D584B0();
  sub_265D58C70();
  v11 = *(v6 + 8);
  v11(v8, v5);
  v10(v8, v9, v5);
  sub_265CBDA40(v8, a2, MEMORY[0x277D520F8], MEMORY[0x277D520E8], sub_265CC3A80);
  v11(v8, v5);
  return sub_265D58970();
}

uint64_t sub_265CC12BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v5 = *(v48 - 8);
  v6 = MEMORY[0x28223BE20](v48);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v54 = sub_265D58740();
  v11 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = v12;
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v49 = *(v57 - 8);
  v13 = MEMORY[0x28223BE20](v57);
  v52 = v14;
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v46 - v15;
  v16 = sub_265D59DE0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  sub_265D59DC0();
  (*(v17 + 8))(v19, v16);
  v55 = a1;
  v20 = sub_265D58710();
  v22 = v21;
  v59 = v3;
  v23 = off_287780190;
  type metadata accessor for SessionConnectionPool();
  if (v23())
  {
    __swift_project_boxed_opaque_existential_1((v59 + 56), *(v59 + 80));

    sub_265CB36F0(v10);
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v22;
    v25 = v8;
    v26 = v8;
    v27 = v48;
    (*(v5 + 16))(v26, v10, v48);
    v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    (*(v5 + 32))(v30 + v28, v25, v27);
    v31 = (v30 + v29);
    *v31 = sub_265CC4B48;
    v31[1] = v24;
    v32 = v56;
    sub_265D58930();
    (*(v5 + 8))(v10, v27);
  }

  else
  {
    v32 = v56;
    sub_265D58970();
  }

  v33 = v51;
  v34 = v54;
  (*(v11 + 16))(v51, v55, v54);
  v35 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v59;
  (*(v11 + 32))(v36 + v35, v33, v34);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_265CC3960;
  *(v37 + 24) = v36;
  v38 = v49;
  v39 = v53;
  v40 = v57;
  (*(v49 + 16))(v53, v32, v57);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v52 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v41, v39, v40);
  v44 = (v43 + v42);
  *v44 = sub_265CC4B4C;
  v44[1] = v37;

  sub_265D58930();
  return (*(v38 + 8))(v32, v40);
}

uint64_t sub_265CC18BC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16[0] = a2;
  v7 = sub_265D58EB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultiUserLinkMessage(0);
  MEMORY[0x28223BE20](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = a1[1];
  (*(v8 + 16))(v13, v16[0], v7);
  v14 = &v13[*(v11 + 20)];
  *v14 = a3;
  *(v14 + 1) = a4;
  swift_getObjectType();
  (*(v8 + 104))(v10, *MEMORY[0x277D4E080], v7);
  sub_265C987E0(a3, a4);
  sub_265CC4B00(qword_2813B7920, type metadata accessor for MultiUserLinkMessage, &unk_265D5BC00);
  sub_265CC4B00(&qword_2813B7918, type metadata accessor for MultiUserLinkMessage, &unk_265D5BBC0);
  sub_265D58C70();
  (*(v8 + 8))(v10, v7);
  return sub_265C98770(v13);
}

uint64_t sub_265CC1AF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58460();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = sub_265D59DE0();
  v49 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = sub_265D58440();
  v19 = *(v1 + 248);
  if (!v19)
  {

    goto LABEL_9;
  }

  if (v17 != *(v1 + 240) || v19 != v18)
  {
    v48 = v10;
    v20 = sub_265D5A3C0();
    v10 = v48;

    if (v20)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_265D59610();
    (*(v5 + 16))(v8, a1, v4);

    v30 = sub_265D59DD0();
    v31 = sub_265D5A070();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v32 = 136315394;
      sub_265CC4B00(&qword_28003E4A8, MEMORY[0x277D51EC0], MEMORY[0x277D51EC8]);
      v33 = sub_265D5A3B0();
      v48 = v11;
      v34 = v33;
      v36 = v35;
      (*(v5 + 8))(v8, v4);
      v37 = sub_265CF4FFC(v34, v36, &v51);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v50 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v38 = sub_265D5A0E0();
      v40 = sub_265CF4FFC(v38, v39, &v51);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_265C01000, v30, v31, "Remote %s doesn't match local session %s", v32, 0x16u);
      v41 = v47;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v41, -1, -1);
      MEMORY[0x266770CF0](v32, -1, -1);

      return (*(v49 + 8))(v14, v48);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return (*(v49 + 8))(v14, v11);
    }
  }

LABEL_7:
  sub_265D59610();
  v21 = *(v5 + 16);
  v47 = a1;
  v21(v10, a1, v4);
  v22 = sub_265D59DD0();
  v23 = sub_265D5A080();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v50 = v46;
    *v24 = 136315138;
    sub_265CC4B00(&qword_28003E4A8, MEMORY[0x277D51EC0], MEMORY[0x277D51EC8]);
    v25 = sub_265D5A3B0();
    v48 = v11;
    v27 = v26;
    (*(v5 + 8))(v10, v4);
    v28 = sub_265CF4FFC(v25, v27, &v50);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_265C01000, v22, v23, "Received %s", v24, 0xCu);
    v29 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266770CF0](v29, -1, -1);
    MEMORY[0x266770CF0](v24, -1, -1);

    (*(v49 + 8))(v16, v48);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
    (*(v49 + 8))(v16, v11);
  }

  v43 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v44 = v43();
  MEMORY[0x28223BE20](v44);
  *(&v45 - 2) = v47;
  sub_265CBA26C(sub_265CC3668, (&v45 - 4), v44);
}

uint64_t sub_265CC2150(uint64_t *a1, uint64_t a2, unsigned int *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v13[0] = a5;
  v13[1] = a6;
  v8 = sub_265D58EB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v9 + 104))(v11, *a3, v8);
  a4(0);
  sub_265D58C70();
  return (*(v9 + 8))(v11, v8);
}