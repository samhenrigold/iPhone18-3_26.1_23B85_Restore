uint64_t sub_22B18FE20(uint64_t a1)
{
  v2 = sub_22B35DE9C();
  v114 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v96[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Event = type metadata accessor for CDRawLoadEvent(0);
  v6 = *(Event - 8);
  MEMORY[0x28223BE20](Event);
  v103 = &v96[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v102 = &v96[-v9];
  MEMORY[0x28223BE20](v10);
  v12 = &v96[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  MEMORY[0x28223BE20](v13 - 8);
  v105 = &v96[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v104 = &v96[-v16];
  MEMORY[0x28223BE20](v17);
  v100 = &v96[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v96[-v20];
  v23 = MEMORY[0x28223BE20](v22);
  v24 = *(v6 + 56);
  v113 = &v96[-v25];
  v24(v23);
  v106 = v21;
  v116 = Event;
  v111 = v24;
  v112 = v6 + 56;
  (v24)(v21, 1, 1, Event);
  v26 = *(a1 + 16);
  v108 = v6;
  if (!v26)
  {
    LOBYTE(v31) = 0;
    LOBYTE(v28) = 0;
    v30 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v115 = v2;
  v27 = 0;
  v28 = 0;
  v110 = 0;
  v29 = 0;
  v107 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  ++v114;
  v98 = (v6 + 48);
  v30 = MEMORY[0x277D84F90];
LABEL_3:
  v31 = v27;
  v99 = v27;
  do
  {
    v101 = v31;
    while (1)
    {
      v109 = v30;
      if (v29 >= v26)
      {
        goto LABEL_89;
      }

      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_90;
      }

      Event = *(v108 + 72);
      sub_22B18B868(v107 + Event * v29, v12, type metadata accessor for CDRawLoadEvent);
      sub_22B35D89C();
      v32 = sub_22B35DDFC();
      v33 = *v114;
      (*v114)(v4, v115);
      if (!(v110 & 1 | ((v32 & 1) == 0)))
      {
        v35 = v113;
        sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v12, v35, type metadata accessor for CDRawLoadEvent);
        (v111)(v35, 0, 1, v116);
        if (v30 == v26)
        {
LABEL_45:
          LOBYTE(v28) = 0;
          v30 = v109;
          LOBYTE(v31) = v101;
          goto LABEL_47;
        }

        v36 = v107 + Event * v30;
        while (v30 < v26)
        {
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_90;
          }

          sub_22B18B868(v36, v12, type metadata accessor for CDRawLoadEvent);
          sub_22B35D89C();
          v37 = sub_22B35DDFC();
          v33(v4, v115);
          if ((v37 & 1) == 0)
          {
            v32 = 0;
            v34 = 0;
            v110 = 0;
            goto LABEL_17;
          }

          v38 = v113;
          sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
          sub_22B19127C(v12, v38, type metadata accessor for CDRawLoadEvent);
          (v111)(v38, 0, 1, v116);
          ++v30;
          v36 += Event;
          if (v29 == v26)
          {
            goto LABEL_45;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        v95 = v106;
        sub_22B123284(v106, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v12, v95, type metadata accessor for CDRawLoadEvent);
        (v111)(v95, 0, 1, v116);
        LOBYTE(v31) = 0;
        LOBYTE(v28) = Event;
        goto LABEL_47;
      }

      v34 = v28;
      ++v29;
LABEL_17:
      sub_22B35D89C();
      v39 = sub_22B35DE4C();
      v33(v4, v115);
      v30 = v109;
      if ((v39 & 1) == 0)
      {
        break;
      }

      v40 = *&v12[*(v116 + 80)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
      }

      Event = *(v30 + 2);
      v41 = *(v30 + 3);
      if (Event >= v41 >> 1)
      {
        v30 = sub_22B32D688((v41 > 1), Event + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = Event + 1;
      *&v30[8 * Event + 32] = v40;
      v28 = 1;
      v110 = 1;
      if (v29 == v26)
      {
        LOBYTE(v31) = v101;
        goto LABEL_47;
      }
    }

    LODWORD(Event) = v32 | v34;
    sub_22B35D86C();
    v97 = sub_22B35DE4C();
    v42 = v115;
    v33(v4, v115);
    if (v97)
    {
      v52 = *&v12[*(v116 + 80)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
      }

      v28 = Event;
      Event = *(v30 + 2);
      v53 = *(v30 + 3);
      if (Event >= v53 >> 1)
      {
        v30 = sub_22B32D688((v53 > 1), Event + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = Event + 1;
      *&v30[8 * Event + 32] = v52;
      v27 = 1;
      LOBYTE(v31) = 1;
      if (v29 == v26)
      {
        break;
      }

      goto LABEL_3;
    }

    sub_22B35D86C();
    v97 = sub_22B35DDEC();
    v33(v4, v42);
    if ((v97 & 1) == 0)
    {
      v31 = v101;
      goto LABEL_29;
    }

    v43 = v100;
    sub_22B170BE0(v106, v100, &qword_27D8BA428, &qword_22B364920);
    v44 = (*v98)(v43, 1, v116);
    v45 = v44 == 1;
    v97 = v44 != 1;
    sub_22B123284(v43, &qword_27D8BA428, &qword_22B364920);
    if (((v97 | v99) & 1) == 0)
    {
      goto LABEL_91;
    }

    v31 = v45 | v101;
LABEL_29:
    sub_22B35D89C();
    v46 = sub_22B35DDEC();
    v33(v4, v115);
    if (v46 & 1) != 0 && (sub_22B35D86C(), v47 = sub_22B35DDFC(), v33(v4, v115), (v47))
    {
      v48 = *&v12[*(v116 + 80)];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
      }

      v51 = *(v30 + 2);
      v50 = *(v30 + 3);
      if (v51 >= v50 >> 1)
      {
        v30 = sub_22B32D688((v50 > 1), v51 + 1, 1, v30);
      }

      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
      *(v30 + 2) = v51 + 1;
      *&v30[8 * v51 + 32] = v48;
      v31 = v101;
    }

    else
    {
      sub_22B1912E4(v12, type metadata accessor for CDRawLoadEvent);
    }

    v28 = Event;
  }

  while (v29 != v26);
LABEL_47:
  v54 = v104;
  sub_22B170BE0(v113, v104, &qword_27D8BA428, &qword_22B364920);
  v55 = *(v108 + 48);
  if (v55(v54, 1, v116) == 1)
  {
    sub_22B123284(v54, &qword_27D8BA428, &qword_22B364920);
    goto LABEL_51;
  }

  v56 = v102;
  sub_22B19127C(v54, v102, type metadata accessor for CDRawLoadEvent);
  if (v28)
  {
    sub_22B1912E4(v56, type metadata accessor for CDRawLoadEvent);
LABEL_51:
    v57 = v106;
  }

  else
  {
    v58 = *&v56[*(v116 + 80)];
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v106;
    if ((v59 & 1) == 0)
    {
      v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
    }

    v61 = *(v30 + 2);
    v60 = *(v30 + 3);
    if (v61 >= v60 >> 1)
    {
      v30 = sub_22B32D688((v60 > 1), v61 + 1, 1, v30);
    }

    sub_22B1912E4(v56, type metadata accessor for CDRawLoadEvent);
    *(v30 + 2) = v61 + 1;
    *&v30[8 * v61 + 32] = v58;
  }

  v62 = v105;
  sub_22B170BE0(v57, v105, &qword_27D8BA428, &qword_22B364920);
  if (v55(v62, 1, v116) == 1)
  {
    sub_22B123284(v62, &qword_27D8BA428, &qword_22B364920);
    v63 = *(v30 + 2);
    if (!v63)
    {
      goto LABEL_71;
    }

LABEL_62:
    v66 = *(v30 + 4);
    v67 = v63 - 1;
    if (v63 == 1)
    {
      v68 = *(v30 + 32);
      goto LABEL_88;
    }

    if (v63 >= 5)
    {
      v73 = vdupq_n_s64(v66);
      v69 = v67 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v74 = (v30 + 56);
      v75 = v67 & 0xFFFFFFFFFFFFFFFCLL;
      v76 = v73;
      do
      {
        v73 = vbslq_s8(vcgtq_s64(v73, v74[-1]), v74[-1], v73);
        v76 = vbslq_s8(vcgtq_s64(v76, *v74), *v74, v76);
        v74 += 2;
        v75 -= 4;
      }

      while (v75);
      v77 = vbslq_s8(vcgtq_s64(v76, v73), v73, v76);
      v78 = vextq_s8(v77, v77, 8uLL).u64[0];
      v68 = vbsl_s8(vcgtd_s64(v78, v77.i64[0]), *v77.i8, v78);
      if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_75;
      }
    }

    else
    {
      v69 = 1;
      v68 = *(v30 + 32);
LABEL_75:
      v79 = v63 - v69;
      v80 = &v30[8 * v69 + 32];
      do
      {
        v82 = *v80;
        v80 += 8;
        v81 = v82;
        if (*&v82 < *&v68)
        {
          v68 = v81;
        }

        --v79;
      }

      while (v79);
    }

    if (v63 >= 5)
    {
      v83 = v67 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v84 = vdupq_n_s64(v66);
      v85 = (v30 + 56);
      v86 = v67 & 0xFFFFFFFFFFFFFFFCLL;
      v87 = v84;
      do
      {
        v84 = vbslq_s8(vcgtq_s64(v84, v85[-1]), v84, v85[-1]);
        v87 = vbslq_s8(vcgtq_s64(v87, *v85), v87, *v85);
        v85 += 2;
        v86 -= 4;
      }

      while (v86);
      v88 = vbslq_s8(vcgtq_s64(v84, v87), v84, v87);
      v89 = vextq_s8(v88, v88, 8uLL).u64[0];
      v66 = vbsl_s8(vcgtd_s64(v88.i64[0], v89), *v88.i8, v89);
      if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v83 = 1;
LABEL_84:
      v90 = v63 - v83;
      v91 = &v30[8 * v83 + 32];
      do
      {
        v93 = *v91++;
        v92 = v93;
        if (v66 <= v93)
        {
          v66 = v92;
        }

        --v90;
      }

      while (v90);
    }
  }

  else
  {
    v64 = v62;
    v65 = v103;
    sub_22B19127C(v64, v103, type metadata accessor for CDRawLoadEvent);
    if (v31)
    {
      sub_22B1912E4(v65, type metadata accessor for CDRawLoadEvent);
      v63 = *(v30 + 2);
      if (!v63)
      {
        goto LABEL_71;
      }

      goto LABEL_62;
    }

    v70 = *&v65[*(v116 + 80)];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_22B32D688(0, *(v30 + 2) + 1, 1, v30);
    }

    v72 = *(v30 + 2);
    v71 = *(v30 + 3);
    if (v72 >= v71 >> 1)
    {
      v30 = sub_22B32D688((v71 > 1), v72 + 1, 1, v30);
    }

    sub_22B1912E4(v103, type metadata accessor for CDRawLoadEvent);
    *(v30 + 2) = v72 + 1;
    *&v30[8 * v72 + 32] = v70;
    v63 = *(v30 + 2);
    if (v63)
    {
      goto LABEL_62;
    }

LABEL_71:
    v68 = 0;
  }

LABEL_88:

  sub_22B123284(v57, &qword_27D8BA428, &qword_22B364920);
  sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
  return v68;
}

uint64_t sub_22B190B30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Event = type metadata accessor for CDRawLoadEvent(0);
  v7 = *(Event - 8);
  MEMORY[0x28223BE20](Event);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v49 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  MEMORY[0x28223BE20](v14 - 8);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v49 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v49 - v23;
  v25 = *(v7 + 56);
  v25(&v49 - v23, 1, 1, Event, v22);
  v55 = v20;
  v56 = v25;
  v57 = v7 + 56;
  result = (v25)(v20, 1, 1, Event);
  v54 = a3;
  v27 = *a3;
  v28 = Event;
  if (v27 >= 1)
  {
    while (v27 < *(a1 + 16))
    {
      result = sub_22B35DDEC();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }

      if (v27-- <= 1)
      {
        v27 = 0;
        v30 = *(a1 + 16);
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_7:
  v30 = *(a1 + 16);
  if (v30 < v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_8:
  v58 = a2;
  if (v27 != v30)
  {
    v32 = v27;
    v31 = v27;
    while ((v27 & 0x8000000000000000) == 0)
    {
      v33 = v32;
      sub_22B18B868(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v13, type metadata accessor for CDRawLoadEvent);
      sub_22B35DE9C();
      sub_22B18DC68(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (sub_22B36074C())
      {
        v34 = v55;
        sub_22B123284(v55, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v13, v34, type metadata accessor for CDRawLoadEvent);
        (v56)(v34, 0, 1, v28);
        goto LABEL_17;
      }

      ++v32;
      sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
      sub_22B19127C(v13, v24, type metadata accessor for CDRawLoadEvent);
      result = (v56)(v24, 0, 1, v28);
      v31 = v33;
      if (v30 == v33 + 1)
      {
        v31 = v33;
        goto LABEL_15;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v27;
LABEL_15:
  v34 = v55;
LABEL_17:
  v35 = v53;
  *v54 = v31;
  sub_22B170BE0(v24, v35, &qword_27D8BA428, &qword_22B364920);
  v36 = *(v7 + 48);
  if (v36(v35, 1, v28) == 1)
  {
    sub_22B123284(v34, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v35, &qword_27D8BA428, &qword_22B364920);
    return 0;
  }

  v38 = v52;
  sub_22B19127C(v35, v52, type metadata accessor for CDRawLoadEvent);
  v39 = v51;
  sub_22B170BE0(v34, v51, &qword_27D8BA428, &qword_22B364920);
  if (v36(v39, 1, v28) == 1)
  {
    sub_22B123284(v34, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v39, &qword_27D8BA428, &qword_22B364920);
    v37 = *(v38 + *(v28 + 76));
    sub_22B1912E4(v38, type metadata accessor for CDRawLoadEvent);
    return v37;
  }

  v40 = v50;
  sub_22B19127C(v39, v50, type metadata accessor for CDRawLoadEvent);
  sub_22B35DE9C();
  sub_22B18DC68(&qword_27D8BA430, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if (sub_22B36078C())
  {
    sub_22B1912E4(v40, type metadata accessor for CDRawLoadEvent);
    sub_22B123284(v34, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
    v37 = *(v38 + *(v28 + 76));
    sub_22B1912E4(v38, type metadata accessor for CDRawLoadEvent);
    return v37;
  }

  sub_22B35DD3C();
  v42 = v41;
  sub_22B35DD3C();
  v44 = v43;
  sub_22B123284(v34, &qword_27D8BA428, &qword_22B364920);
  sub_22B123284(v24, &qword_27D8BA428, &qword_22B364920);
  v45 = *(v40 + *(v28 + 76));
  sub_22B1912E4(v40, type metadata accessor for CDRawLoadEvent);
  v46 = *(v38 + *(v28 + 76));
  result = sub_22B1912E4(v38, type metadata accessor for CDRawLoadEvent);
  if (__OFSUB__(v45, v46))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v47 = v44 / v42 * (v45 - v46);
  if (COERCE__INT64(fabs(v47)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v48 = __OFADD__(v46, v47);
  v37 = v46 + v47;
  if (!v48)
  {
    return v37;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22B19127C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B1912E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_22B1913C8()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22B35DE9C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22B1829B0(v0 + v2, v0 + v5, v6);
}

uint64_t objectdestroy_30Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_22B1915F0(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v5);
}

uint64_t sub_22B1916C8(uint64_t a1)
{
  result = sub_22B35DE9C();
  if (v2 <= 0x3F)
  {
    result = sub_22B35DF1C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B1917C0(uint64_t a1)
{
  result = sub_22B35DF1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22B191868(uint64_t a1)
{
  sub_22B35DF1C();
  if (v1 <= 0x3F)
  {
    sub_22B35DE9C();
    if (v2 <= 0x3F)
    {
      sub_22B191954();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B191954()
{
  if (!qword_27D8BA498)
  {
    v0 = sub_22B36077C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8BA498);
    }
  }
}

uint64_t sub_22B191A78()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22B191B04()
{
  type metadata accessor for UtilityDiscoveryNotification();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_28140BC48 = v0;
  return result;
}

uint64_t sub_22B191B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_22B36052C();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = sub_22B35DF1C();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B191C8C, v5, 0);
}

uint64_t sub_22B191C8C()
{
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_22B35F45C();

  sub_22B35F1EC();
  sub_22B35DEAC();
  v4 = sub_22B35DECC();
  v6 = v5;
  v0[23] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_22B191DE4;

  return sub_22B22250C(v4, v6, 1, 1);
}

uint64_t sub_22B191DE4(uint64_t a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_22B191F18, v2, 0);
}

uint64_t sub_22B191F18()
{
  v47 = v0;
  v1 = v0[25];
  if (v1)
  {
    v2 = sub_22B35F12C();
    if (v3)
    {
      v4 = v2;
      v5 = v3;

      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        if (qword_28140A0C8[0] != -1)
        {
          swift_once();
        }

        v7 = v0[19];
        v8 = v0[14];
        v9 = v0[15];
        v10 = __swift_project_value_buffer(v8, qword_28140BD10);
        swift_beginAccess();
        (*(v9 + 16))(v7, v10, v8);

        v11 = sub_22B36050C();
        v12 = sub_22B360D0C();

        v13 = os_log_type_enabled(v11, v12);
        v14 = v0[19];
        v16 = v0[14];
        v15 = v0[15];
        if (v13)
        {
          v45 = v0[19];
          v18 = v0[10];
          v17 = v0[11];
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v46 = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_22B1A7B20(v18, v17, &v46);
          _os_log_impl(&dword_22B116000, v11, v12, "[UtilityDiscoveryNotification] Already onboarded for %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x23188F650](v20, -1, -1);
          MEMORY[0x23188F650](v19, -1, -1);

          (*(v15 + 8))(v45, v16);
        }

        else
        {

          (*(v15 + 8))(v14, v16);
        }

        v44 = v0[1];

        return v44(0);
      }
    }
  }

  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v21 = v0[18];
  v22 = v0[14];
  v23 = v0[15];
  v24 = __swift_project_value_buffer(v22, qword_28140BD10);
  v0[26] = v24;
  swift_beginAccess();
  v25 = *(v23 + 16);
  v0[27] = v25;
  v0[28] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v21, v24, v22);

  v26 = sub_22B36050C();
  v27 = sub_22B360D0C();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[18];
  v30 = v0[14];
  v31 = v0[15];
  if (v28)
  {
    v33 = v0[10];
    v32 = v0[11];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_22B1A7B20(v33, v32, &v46);
    _os_log_impl(&dword_22B116000, v26, v27, "[UtilityDiscoveryNotification] Not onboarded for %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x23188F650](v35, -1, -1);
    MEMORY[0x23188F650](v34, -1, -1);
  }

  v36 = *(v31 + 8);
  v36(v29, v30);
  v0[29] = v36;
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v37 = v0[12];
  v0[30] = qword_28140BCB0;

  [v37 coordinate];
  v39 = v38;
  v41 = v40;
  v42 = swift_task_alloc();
  v0[31] = v42;
  *v42 = v0;
  v42[1] = sub_22B1923F0;

  return sub_22B2029CC(v39, v41);
}

uint64_t sub_22B1923F0(uint64_t a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_22B192524, v2, 0);
}

uint64_t sub_22B192524()
{
  v33 = v0;
  v1 = *(v0 + 256);
  if (!v1)
  {
LABEL_6:
    (*(v0 + 216))(*(v0 + 128), *(v0 + 208), *(v0 + 112));

    v16 = sub_22B36050C();
    v17 = sub_22B360D0C();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 232);
    v20 = *(v0 + 128);
    v21 = *(v0 + 112);
    if (v18)
    {
      v31 = *(v0 + 232);
      v23 = *(v0 + 80);
      v22 = *(v0 + 88);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_22B1A7B20(v23, v22, &v32);
      _os_log_impl(&dword_22B116000, v16, v17, "[UtilityDiscoveryNotification] No utility detected for %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23188F650](v25, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      v31(v20, v21);
    }

    else
    {

      v19(v20, v21);
    }

    v26 = 0;
    goto LABEL_12;
  }

  if (!*(v1 + 16))
  {

    goto LABEL_6;
  }

  (*(v0 + 216))(*(v0 + 136), *(v0 + 208), *(v0 + 112));

  v2 = sub_22B36050C();
  v3 = sub_22B360D0C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 232);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  if (v4)
  {
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v30 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v29 = v6;
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_22B1A7B20(v9, v8, &v32);
    *(v10 + 12) = 2080;
    v12 = MEMORY[0x23188E390](v1, MEMORY[0x277D837D0]);
    v14 = v13;

    v15 = sub_22B1A7B20(v12, v14, &v32);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_22B116000, v2, v3, "[UtilityDiscoveryNotification] Utility detected for %s.%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);

    v30(v29, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v26 = 1;
LABEL_12:

  v27 = *(v0 + 8);

  return v27(v26);
}

uint64_t sub_22B1928C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a3;
  v5[14] = a4;
  v5[11] = a1;
  v5[12] = a2;
  v6 = sub_22B35DF1C();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  sub_22B3607EC();
  v5[21] = swift_task_alloc();
  sub_22B35DF8C();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  sub_22B36080C();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B192A80, v4, 0);
}

uint64_t sub_22B192A80()
{
  v43 = v0;
  sub_22B3607AC();
  if (qword_27D8BA000 != -1)
  {
    swift_once();
  }

  v1 = qword_27D8BB248;
  sub_22B35DF3C();
  v40 = v1;
  v2 = [v1 localizations];
  sub_22B360A5C();

  v3 = objc_opt_self();
  v4 = sub_22B360A3C();
  v5 = sub_22B360A3C();
  v39 = v3;
  v6 = [v3 preferredLocalizationsFromArray:v4 forPreferences:v5];

  v7 = sub_22B360A5C();
  if (*(v7 + 16))
  {
  }

  sub_22B35DF2C();

  v8 = v40;
  v9 = sub_22B3608AC();
  v11 = v10;
  sub_22B3607DC();
  sub_22B3607CC();
  sub_22B3607BC();
  sub_22B3607CC();
  sub_22B3607FC();
  sub_22B35DF3C();
  v12 = [v8 localizations];
  sub_22B360A5C();

  v13 = sub_22B360A3C();
  v14 = sub_22B360A3C();
  v15 = [v39 preferredLocalizationsFromArray:v13 forPreferences:v14];

  v16 = sub_22B360A5C();
  if (*(v16 + 16))
  {
  }

  sub_22B35DF2C();
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);

  v19 = sub_22B3608AC();
  v21 = v20;
  *&v41[0] = 0xD00000000000001ELL;
  *(&v41[0] + 1) = 0x800000022B36B930;
  MEMORY[0x23188E270](v18, v17);
  v22 = v41[0];
  *(v0 + 16) = v9;
  *(v0 + 24) = v11;
  *(v0 + 32) = v19;
  *(v0 + 40) = v21;
  *(v0 + 48) = v22;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  if (qword_28140A7B0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 160);
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  v27 = *(v0 + 128);
  v26 = *(v0 + 136);
  v28 = *(v0 + 120);
  sub_22B35DE6C();
  sub_22B35DF0C();
  v29 = sub_22B35DECC();
  v31 = v30;
  (*(v27 + 8))(v26, v28);
  v32 = *(v0 + 64);
  v41[2] = *(v0 + 48);
  v41[3] = v32;
  v42 = *(v0 + 80);
  v33 = *(v0 + 32);
  v41[0] = *(v0 + 16);
  v41[1] = v33;
  v34 = sub_22B28E828(v23, v29, v31, v41);
  v36 = v35;

  (*(v24 + 8))(v23, v25);
  sub_22B172400(v0 + 16);

  v37 = *(v0 + 8);

  return v37(v34, v36);
}

uint64_t sub_22B192FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a4;
  v6[9] = v5;
  v6[6] = a2;
  v6[7] = a3;
  v6[5] = a1;
  v12 = sub_22B36052C();
  v6[10] = v12;
  v6[11] = *(v12 - 8);
  v6[12] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[13] = v13;
  *v13 = v6;
  v13[1] = sub_22B1930D4;

  return sub_22B191B44(a1, a2, a3, a4, a5);
}

uint64_t sub_22B1930D4(char a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_22B1931EC, v2, 0);
}

uint64_t sub_22B1931EC(uint64_t a1)
{
  if (*(v1 + 120) != 1)
  {
LABEL_8:

    v13 = *(v1 + 8);

    return v13(0, 0);
  }

  if (sub_22B360BFC())
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 88);
    v2 = *(v1 + 96);
    v4 = *(v1 + 80);
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_22B36050C();
    v7 = sub_22B360D2C();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v1 + 88);
    v9 = *(v1 + 96);
    v11 = *(v1 + 80);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[UtilityDiscoveryNotification] Task Cancelled", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    goto LABEL_8;
  }

  v15 = swift_task_alloc();
  *(v1 + 112) = v15;
  *v15 = v1;
  v15[1] = sub_22B1933F8;
  v16 = *(v1 + 64);
  v17 = *(v1 + 48);
  v18 = *(v1 + 56);
  v19 = *(v1 + 40);

  return sub_22B1928C4(v19, v17, v18, v16);
}

uint64_t sub_22B1933F8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_22B193520()
{
  v1[21] = v0;
  v2 = sub_22B35DF1C();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_22B36052C();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1936E4, v0, 0);
}

uint64_t sub_22B1936E4()
{
  v18 = v0;
  v0[42] = os_transaction_create();
  sub_22B19683C();
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[25];
  v3 = v0[26];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[43] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[44] = v5;
  v0[45] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  v10 = v0[25];
  v11 = v0[26];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000025, 0x800000022B36B7E0, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "[UtilityDiscoveryNotification] Executing task %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[46] = v14;
  if (qword_281408968 != -1)
  {
    swift_once();
  }

  v15 = qword_28140BC48;
  v0[47] = qword_28140BC48;

  return MEMORY[0x2822009F8](sub_22B193948, v15, 0);
}

uint64_t sub_22B193948()
{
  v1 = *(v0 + 168);
  *(v0 + 562) = *(*(v0 + 376) + 112);
  return MEMORY[0x2822009F8](sub_22B193970, v1, 0);
}

uint64_t sub_22B193970()
{
  if (*(v0 + 562) == 1)
  {
    (*(v0 + 352))(*(v0 + 320), *(v0 + 344), *(v0 + 200));
    v1 = sub_22B36050C();
    v2 = sub_22B360D2C();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 368);
    v5 = *(v0 + 320);
    v6 = *(v0 + 200);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v1, v2, "[UtilityDiscoveryNotification] Discovery in progress already", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    swift_unknownObjectRelease();

    v4(v5, v6);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 376);

    return MEMORY[0x2822009F8](sub_22B193B9C, v10, 0);
  }
}

uint64_t sub_22B193B9C()
{
  v1 = *(v0 + 168);
  *(*(v0 + 376) + 112) = 1;
  return MEMORY[0x2822009F8](sub_22B193BC4, v1, 0);
}

uint64_t sub_22B193BC4(uint64_t a1)
{
  if (sub_22B360BFC())
  {
    v2 = v1[47];

    return MEMORY[0x2822009F8](sub_22B193D90, v2, 0);
  }

  else
  {
    if (qword_281408F18 != -1)
    {
      swift_once();
    }

    v3 = v1[44];
    v4 = v1[43];
    v5 = v1[39];
    v6 = v1[25];
    v1[48] = qword_28140BCA8;
    v3(v5, v4, v6);
    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "[UtilityDiscoveryNotification] Load Homes", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v10 = v1[46];
    v11 = v1[39];
    v12 = v1[25];

    v10(v11, v12);
    v13 = swift_task_alloc();
    v1[49] = v13;
    *v13 = v1;
    v13[1] = sub_22B193EE0;

    return sub_22B242190();
  }
}

uint64_t sub_22B193D90()
{
  v1 = *(v0 + 168);
  *(*(v0 + 376) + 112) = 0;
  return MEMORY[0x2822009F8](sub_22B193DB4, v1, 0);
}

uint64_t sub_22B193DB4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B193EE0()
{

  return MEMORY[0x2822009F8](sub_22B193FDC, 0, 0);
}

uint64_t sub_22B193FDC()
{
  v1 = v0[48];
  v2 = v0[21];
  v3 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  v0[50] = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  v0[51] = [*(v1 + v3) dataSyncState];

  return MEMORY[0x2822009F8](sub_22B194064, v2, 0);
}

uint64_t sub_22B194064()
{
  v40 = v0;
  if (v0[51] == 1)
  {
    v1 = [*(v0[48] + v0[50]) hasOptedToHH2];
    v2 = v0[44];
    v3 = v0[43];
    v4 = v0[25];
    if (v1)
    {
      v2(v0[36], v3, v4);
      v5 = sub_22B36050C();
      v6 = sub_22B360D0C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v39 = v8;
        *v7 = 136315138;
        if (qword_27D8BA000 != -1)
        {
          swift_once();
        }

        v37 = v0[36];
        v38 = v0[46];
        v36 = v0[25];
        v9 = qword_27D8BB248;
        v10 = sub_22B35DF3C();
        v11 = [v9 localizations];
        v12 = sub_22B360A5C();

        v13 = sub_22B357898(v10, v12, 0, 0);
        v15 = v14;

        v16 = sub_22B1A7B20(v13, v15, &v39);

        *(v7 + 4) = v16;
        _os_log_impl(&dword_22B116000, v5, v6, "%s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x23188F650](v8, -1, -1);
        MEMORY[0x23188F650](v7, -1, -1);

        v38(v37, v36);
      }

      else
      {
        v28 = v0[46];
        v29 = v0[36];
        v30 = v0[25];

        v28(v29, v30);
      }

      if (qword_281408E18 != -1)
      {
        swift_once();
      }

      v31 = qword_28140BCA0;
      v0[52] = qword_28140BCA0;
      if (v31 && (v32 = sub_22B36081C(), v33 = [v31 dictionaryForKey_], v32, v33))
      {
        v34 = sub_22B3606EC();
      }

      else
      {
        v34 = sub_22B321AAC(MEMORY[0x277D84F90]);
      }

      v0[53] = v34;
      v35 = swift_task_alloc();
      v0[54] = v35;
      *v35 = v0;
      v35[1] = sub_22B1945D8;

      return sub_22B2430B4();
    }

    v2(v0[37], v3, v4);
    v17 = sub_22B36050C();
    v18 = sub_22B360D2C();
    v25 = os_log_type_enabled(v17, v18);
    v20 = v0[46];
    v21 = v0[37];
    v22 = v0[25];
    if (v25)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "[UtilityDiscoveryNotification] HH2 not enabled";
      goto LABEL_11;
    }
  }

  else
  {
    (v0[44])(v0[38], v0[43], v0[25]);
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[46];
    v21 = v0[38];
    v22 = v0[25];
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "[UtilityDiscoveryNotification] Data sync state not good";
LABEL_11:
      _os_log_impl(&dword_22B116000, v17, v18, v24, v23, 2u);
      MEMORY[0x23188F650](v23, -1, -1);
    }
  }

  swift_unknownObjectRelease();

  v20(v21, v22);

  v26 = v0[1];

  return v26();
}

uint64_t sub_22B1945D8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 440) = a1;

  v4 = *(v3 + 168);
  if (v1)
  {

    v5 = sub_22B196658;
  }

  else
  {
    v5 = sub_22B194718;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B194718()
{
  v155 = v0;
  if (qword_28140A1F0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v1 = qword_28140BD28;

  v2 = sub_22B35EEFC();
  v4 = v3;
  v5 = *(v1 + 40);
  if (v5)
  {
    v6 = v2;
    v7 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);

    v9(ObjectType, v7);
    v10 = *(v5 + 24);
    v11 = swift_getObjectType();
    v12 = (*(v10 + 48))(v6, v4, v11, v10);

    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = sub_22B321AAC(MEMORY[0x277D84F90]);

LABEL_7:
  *(v0 + 448) = v12;
  v13 = *(v0 + 440);
  if (v13 >> 62)
  {
    v139 = sub_22B36109C();
    *(v0 + 456) = v139;
    if (v139)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 456) = v14;
    if (v14)
    {
LABEL_9:
      v15 = 0;
      v16 = *(v0 + 424);
      v17 = &off_2786FB000;
      v18 = &off_2786FB000;
      v19 = &off_2786FB000;
      v152 = v16;
      while (1)
      {
        *(v0 + 464) = v16;
        *(v0 + 472) = v16;
        v20 = *(v0 + 440);
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x23188EAC0](v15);
        }

        else
        {
          if (v15 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v21 = *(v20 + 8 * v15 + 32);
        }

        v22 = v21;
        *(v0 + 480) = v21;
        *(v0 + 488) = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v23 = [v21 v17[484]];
        v24 = [v22 v18[485]];
        v25 = v24;
        if (v23)
        {
          if (v24)
          {
            sub_22B1972C4();
            v26 = sub_22B360FBC();

            if (v26)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        else
        {
          if (!v24)
          {
LABEL_23:
            if (sub_22B360BFC())
            {
              v105 = *(v0 + 352);
              v106 = *(v0 + 344);
              v107 = *(v0 + 280);
              v108 = *(v0 + 200);

              v105(v107, v106, v108);
              v109 = sub_22B36050C();
              v110 = sub_22B360D2C();
              v111 = os_log_type_enabled(v109, v110);
              v112 = *(v0 + 368);
              v113 = *(v0 + 280);
              v114 = *(v0 + 200);
              if (v111)
              {
                v115 = swift_slowAlloc();
                *v115 = 0;
                _os_log_impl(&dword_22B116000, v109, v110, "[UtilityDiscoveryNotification] Task Cancelled", v115, 2u);
                MEMORY[0x23188F650](v115, -1, -1);
              }

              else
              {
              }

              v112(v113, v114);
              v16 = v152;
              goto LABEL_63;
            }

            v27 = *(v0 + 184);
            v28 = *(v0 + 192);
            v29 = *(v0 + 176);
            v30 = [v22 uniqueIdentifier];
            sub_22B35DEFC();

            v31 = sub_22B35DECC();
            v33 = v32;
            *(v0 + 496) = v31;
            *(v0 + 504) = v32;
            (*(v27 + 8))(v28, v29);
            if (*(v16 + 16) && (v34 = sub_22B33B28C(v31, v33), (v35 & 1) != 0) && (sub_22B170C58(*(v16 + 56) + 32 * v34, v0 + 16), swift_dynamicCast()) && (*(v0 + 561) & 1) != 0)
            {
              v36 = *(v0 + 352);
              v37 = *(v0 + 344);
              v38 = *(v0 + 272);
              v39 = *(v0 + 200);

              v36(v38, v37, v39);
              v40 = v22;
              v41 = sub_22B36050C();
              v42 = sub_22B360D0C();

              v43 = os_log_type_enabled(v41, v42);
              v44 = *(v0 + 368);
              v45 = *(v0 + 272);
              v46 = *(v0 + 200);
              if (v43)
              {
                v147 = *(v0 + 272);
                v47 = swift_slowAlloc();
                v48 = swift_slowAlloc();
                v154 = v48;
                *v47 = 136315138;
                v49 = [v40 v19[487]];
                v144 = v46;
                v50 = sub_22B36084C();
                v52 = v51;

                v53 = sub_22B1A7B20(v50, v52, &v154);
                v19 = &off_2786FB000;

                *(v47 + 4) = v53;
                v16 = v152;
                v54 = v42;
                v55 = v41;
                v56 = "[UtilityDiscoveryNotification] Already notified for %s";
                goto LABEL_36;
              }

LABEL_46:

              v44(v45, v46);
            }

            else if (*(*(v0 + 448) + 16) && (v57 = sub_22B33B28C(v31, v33), (v58 & 1) != 0) && (sub_22B170C58(*(*(v0 + 448) + 56) + 32 * v57, v0 + 48), swift_dynamicCast()) && (*(v0 + 560) & 1) != 0)
            {
              v59 = *(v0 + 352);
              v60 = *(v0 + 344);
              v61 = *(v0 + 264);
              v62 = *(v0 + 200);

              v59(v61, v60, v62);
              v40 = v22;
              v41 = sub_22B36050C();
              v63 = sub_22B360D0C();

              v64 = os_log_type_enabled(v41, v63);
              v44 = *(v0 + 368);
              v45 = *(v0 + 264);
              v46 = *(v0 + 200);
              if (!v64)
              {
                goto LABEL_46;
              }

              v147 = *(v0 + 264);
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v154 = v48;
              *v47 = 136315138;
              v65 = [v40 v19[487]];
              v144 = v46;
              v66 = sub_22B36084C();
              v68 = v67;

              v69 = sub_22B1A7B20(v66, v68, &v154);
              v19 = &off_2786FB000;

              *(v47 + 4) = v69;
              v16 = v152;
              v54 = v63;
              v55 = v41;
              v56 = "[UtilityDiscoveryNotification] Banner dismissed for %s";
LABEL_36:
              _os_log_impl(&dword_22B116000, v55, v54, v56, v47, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v48);
              MEMORY[0x23188F650](v48, -1, -1);
              MEMORY[0x23188F650](v47, -1, -1);

              v44(v147, v144);
            }

            else
            {
              v150 = v31;
              (*(v0 + 352))(*(v0 + 256), *(v0 + 344), *(v0 + 200));
              v70 = v22;
              v71 = sub_22B36050C();
              v72 = sub_22B360D0C();

              v73 = os_log_type_enabled(v71, v72);
              v74 = *(v0 + 368);
              v75 = *(v0 + 256);
              v76 = *(v0 + 200);
              if (v73)
              {
                v142 = *(v0 + 368);
                v77 = swift_slowAlloc();
                v148 = v33;
                v78 = swift_slowAlloc();
                v154 = v78;
                *v77 = 136315138;
                v79 = [v70 v19[487]];
                v80 = sub_22B36084C();
                v141 = v75;
                v82 = v81;

                v83 = sub_22B1A7B20(v80, v82, &v154);

                *(v77 + 4) = v83;
                _os_log_impl(&dword_22B116000, v71, v72, "[UtilityDiscoveryNotification] Not notified for %s", v77, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v78);
                v84 = v78;
                v33 = v148;
                MEMORY[0x23188F650](v84, -1, -1);
                MEMORY[0x23188F650](v77, -1, -1);

                v142(v141, v76);
              }

              else
              {

                v74(v75, v76);
              }

              v85 = [v70 location];
              *(v0 + 512) = v85;
              v86 = *(v0 + 352);
              v87 = *(v0 + 344);
              if (v85)
              {
                v153 = v85;
                v86(*(v0 + 248), v87, *(v0 + 200));
                v116 = v70;
                v117 = sub_22B36050C();
                v118 = sub_22B360D0C();

                v119 = os_log_type_enabled(v117, v118);
                v120 = *(v0 + 368);
                v121 = *(v0 + 248);
                v122 = *(v0 + 200);
                if (v119)
                {
                  v146 = *(v0 + 200);
                  v123 = swift_slowAlloc();
                  v124 = swift_slowAlloc();
                  v154 = v124;
                  *v123 = 136315138;
                  v151 = v121;
                  v125 = v33;
                  v126 = [v116 name];
                  v127 = sub_22B36084C();
                  v143 = v120;
                  v129 = v128;

                  v130 = v127;
                  v131 = &off_2786FB000;
                  v132 = sub_22B1A7B20(v130, v129, &v154);

                  *(v123 + 4) = v132;
                  v33 = v125;
                  _os_log_impl(&dword_22B116000, v117, v118, "[UtilityDiscoveryNotification] Valid location for %s", v123, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v124);
                  MEMORY[0x23188F650](v124, -1, -1);
                  MEMORY[0x23188F650](v123, -1, -1);

                  v143(v151, v146);
                }

                else
                {

                  v120(v121, v122);
                  v131 = &off_2786FB000;
                }

                v133 = [v116 v131[487]];
                v134 = sub_22B36084C();
                v136 = v135;

                *(v0 + 520) = v136;
                v137 = swift_task_alloc();
                *(v0 + 528) = v137;
                *v137 = v0;
                v137[1] = sub_22B1953F8;

                return sub_22B192FA8(v150, v33, v134, v136, v153);
              }

              v88 = *(v0 + 224);
              v89 = *(v0 + 200);

              v86(v88, v87, v89);
              v90 = v70;
              v91 = sub_22B36050C();
              v92 = sub_22B360D0C();

              v93 = os_log_type_enabled(v91, v92);
              v94 = *(v0 + 368);
              v95 = *(v0 + 224);
              v96 = *(v0 + 200);
              if (v93)
              {
                v149 = *(v0 + 224);
                v97 = swift_slowAlloc();
                v98 = swift_slowAlloc();
                v154 = v98;
                *v97 = 136315138;
                v145 = v94;
                v99 = [v90 name];
                v100 = sub_22B36084C();
                v102 = v101;

                v103 = sub_22B1A7B20(v100, v102, &v154);

                *(v97 + 4) = v103;
                _os_log_impl(&dword_22B116000, v91, v92, "[UtilityDiscoveryNotification] Invalid location for %s", v97, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v98);
                MEMORY[0x23188F650](v98, -1, -1);
                MEMORY[0x23188F650](v97, -1, -1);

                v104 = v96;
                v19 = &off_2786FB000;
                v145(v149, v104);
              }

              else
              {

                v94(v95, v96);
                v19 = &off_2786FB000;
              }

              v16 = v152;
            }

            v17 = &off_2786FB000;
            v18 = &off_2786FB000;
            goto LABEL_11;
          }
        }

LABEL_11:
        v15 = *(v0 + 488);
        if (v15 == *(v0 + 456))
        {

          goto LABEL_63;
        }
      }
    }
  }

  v16 = *(v0 + 424);
LABEL_63:
  *(v0 + 552) = v16;
  v140 = *(v0 + 376);

  return MEMORY[0x2822009F8](sub_22B1964FC, v140, 0);
}

uint64_t sub_22B1953F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  *(v3 + 536) = a1;
  *(v3 + 544) = a2;

  return MEMORY[0x2822009F8](sub_22B195530, v4, 0);
}

uint64_t sub_22B195530()
{
  v193 = v0;
  v1 = *(v0 + 544);
  if (v1)
  {
    v2 = *(v0 + 480);
    (*(v0 + 352))(*(v0 + 240), *(v0 + 344), *(v0 + 200));
    v3 = v2;

    v4 = sub_22B36050C();
    v5 = sub_22B360D2C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 536);
      v7 = *(v0 + 480);
      v189 = *(v0 + 368);
      v8 = *(v0 + 240);
      v9 = *(v0 + 200);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v192 = v11;
      *v10 = 136315394;
      v12 = sub_22B1A7B20(v6, v1, &v192);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2080;
      v13 = [v7 name];
      v14 = sub_22B36084C();
      v16 = v15;

      v17 = sub_22B1A7B20(v14, v16, &v192);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_22B116000, v4, v5, "[UtilityDiscoveryNotification] [%s]Notified utility discovery for %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v11, -1, -1);
      MEMORY[0x23188F650](v10, -1, -1);

      v189(v8, v9);
    }

    else
    {
      v41 = *(v0 + 368);
      v42 = *(v0 + 240);
      v43 = *(v0 + 200);

      v41(v42, v43);
    }

    v45 = *(v0 + 496);
    v44 = *(v0 + 504);
    v46 = *(v0 + 464);
    v47 = *(v0 + 416);
    *(v0 + 104) = MEMORY[0x277D839B0];
    *(v0 + 80) = 1;
    sub_22B172454((v0 + 80), (v0 + 112));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v192 = v46;
    sub_22B33F298((v0 + 112), v45, v44, isUniquelyReferenced_nonNull_native);

    v49 = v192;
    v50 = *(v0 + 512);
    v51 = *(v0 + 480);
    if (v47)
    {
      v52 = *(v0 + 416);
      v53 = sub_22B3606CC();
      v54 = sub_22B36081C();
      [v52 setObject:v53 forKey:v54];
    }

    else
    {
    }

    v55 = v49;
  }

  else
  {
    v18 = *(v0 + 480);
    v19 = *(v0 + 352);
    v20 = *(v0 + 344);
    v21 = *(v0 + 232);
    v22 = *(v0 + 200);

    v19(v21, v20, v22);
    v23 = v18;
    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 512);
    v28 = *(v0 + 480);
    v29 = *(v0 + 368);
    v30 = *(v0 + 232);
    v31 = *(v0 + 200);
    if (v26)
    {
      v187 = *(v0 + 368);
      v32 = swift_slowAlloc();
      v184 = v30;
      v33 = swift_slowAlloc();
      v192 = v33;
      *v32 = 136315138;
      v182 = v31;
      v34 = [v28 name];
      v35 = sub_22B36084C();
      v37 = v36;

      v38 = sub_22B1A7B20(v35, v37, &v192);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_22B116000, v24, v25, "[UtilityDiscoveryNotification] Did not notify for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);

      v39 = v187(v184, v182);
    }

    else
    {

      v39 = v29(v30, v31);
    }

    v49 = *(v0 + 464);
    v55 = *(v0 + 472);
  }

  v56 = *(v0 + 488);
  if (v56 != *(v0 + 456))
  {
    v58 = &off_2786FB000;
    v59 = &off_2786FB000;
    v60 = &off_2786FB000;
    v183 = v49;
    v185 = v55;
    do
    {
      *(v0 + 464) = v49;
      *(v0 + 472) = v55;
      v57 = *(v0 + 440);
      if ((v57 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x23188EAC0](v56);
      }

      else
      {
        if (v56 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v39 = *(v57 + 8 * v56 + 32);
      }

      v61 = v39;
      *(v0 + 480) = v39;
      *(v0 + 488) = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
        return MEMORY[0x2822009F8](v39, v57, v40);
      }

      v62 = [v39 v58[484]];
      v63 = [v61 v59[485]];
      v64 = v63;
      if (v62)
      {
        if (v63)
        {
          sub_22B1972C4();
          v65 = sub_22B360FBC();

          if (v65)
          {
            goto LABEL_32;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v63)
        {
LABEL_32:
          if (sub_22B360BFC())
          {
            v144 = *(v0 + 352);
            v145 = *(v0 + 344);
            v146 = *(v0 + 280);
            v147 = *(v0 + 200);

            v144(v146, v145, v147);
            v148 = sub_22B36050C();
            v149 = sub_22B360D2C();
            v150 = os_log_type_enabled(v148, v149);
            v151 = *(v0 + 368);
            v152 = *(v0 + 280);
            v153 = *(v0 + 200);
            if (v150)
            {
              v154 = swift_slowAlloc();
              *v154 = 0;
              _os_log_impl(&dword_22B116000, v148, v149, "[UtilityDiscoveryNotification] Task Cancelled", v154, 2u);
              MEMORY[0x23188F650](v154, -1, -1);
            }

            else
            {
            }

            v151(v152, v153);
            goto LABEL_15;
          }

          v66 = *(v0 + 184);
          v67 = *(v0 + 192);
          v68 = *(v0 + 176);
          v69 = [v61 uniqueIdentifier];
          sub_22B35DEFC();

          v70 = sub_22B35DECC();
          v72 = v71;
          *(v0 + 496) = v70;
          *(v0 + 504) = v71;
          (*(v66 + 8))(v67, v68);
          if (*(v55 + 16))
          {
            v73 = sub_22B33B28C(v70, v72);
            if (v74)
            {
              sub_22B170C58(*(v55 + 56) + 32 * v73, v0 + 16);
              if (swift_dynamicCast())
              {
                if (*(v0 + 561))
                {
                  v75 = *(v0 + 352);
                  v76 = *(v0 + 344);
                  v77 = *(v0 + 272);
                  v78 = *(v0 + 200);

                  v75(v77, v76, v78);
                  v79 = v61;
                  v80 = sub_22B36050C();
                  v81 = sub_22B360D0C();

                  v82 = os_log_type_enabled(v80, v81);
                  v83 = *(v0 + 368);
                  v84 = *(v0 + 272);
                  v190 = *(v0 + 200);
                  if (v82)
                  {
                    v177 = *(v0 + 272);
                    v85 = swift_slowAlloc();
                    v86 = swift_slowAlloc();
                    v192 = v86;
                    *v85 = 136315138;
                    v87 = [v79 v60[487]];
                    v88 = sub_22B36084C();
                    v90 = v89;

                    v91 = v88;
                    v60 = &off_2786FB000;
                    v92 = sub_22B1A7B20(v91, v90, &v192);
                    v55 = v185;

                    *(v85 + 4) = v92;
                    v49 = v183;
                    v93 = v81;
                    v94 = v80;
                    v95 = "[UtilityDiscoveryNotification] Already notified for %s";
                    goto LABEL_45;
                  }

LABEL_55:

                  v110 = v84;
                  goto LABEL_56;
                }
              }
            }
          }

          if (*(*(v0 + 448) + 16) && (v96 = sub_22B33B28C(v70, v72), (v97 & 1) != 0) && (sub_22B170C58(*(*(v0 + 448) + 56) + 32 * v96, v0 + 48), swift_dynamicCast()) && (*(v0 + 560) & 1) != 0)
          {
            v98 = *(v0 + 352);
            v99 = *(v0 + 344);
            v100 = *(v0 + 264);
            v101 = *(v0 + 200);

            v98(v100, v99, v101);
            v79 = v61;
            v80 = sub_22B36050C();
            v102 = sub_22B360D0C();

            v103 = os_log_type_enabled(v80, v102);
            v83 = *(v0 + 368);
            v84 = *(v0 + 264);
            v190 = *(v0 + 200);
            if (!v103)
            {
              goto LABEL_55;
            }

            v177 = *(v0 + 264);
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v192 = v86;
            *v85 = 136315138;
            v104 = [v79 v60[487]];
            v105 = sub_22B36084C();
            v107 = v106;

            v108 = v105;
            v60 = &off_2786FB000;
            v109 = sub_22B1A7B20(v108, v107, &v192);
            v55 = v185;

            *(v85 + 4) = v109;
            v49 = v183;
            v93 = v102;
            v94 = v80;
            v95 = "[UtilityDiscoveryNotification] Banner dismissed for %s";
LABEL_45:
            _os_log_impl(&dword_22B116000, v94, v93, v95, v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v86);
            MEMORY[0x23188F650](v86, -1, -1);
            MEMORY[0x23188F650](v85, -1, -1);

            v110 = v177;
LABEL_56:
            v39 = v83(v110, v190);
          }

          else
          {
            v180 = v70;
            (*(v0 + 352))(*(v0 + 256), *(v0 + 344), *(v0 + 200));
            v111 = v61;
            v112 = sub_22B36050C();
            v113 = sub_22B360D0C();

            v114 = os_log_type_enabled(v112, v113);
            v115 = *(v0 + 368);
            v116 = *(v0 + 256);
            v117 = *(v0 + 200);
            v191 = v72;
            if (v114)
            {
              v176 = *(v0 + 368);
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v192 = v119;
              *v118 = 136315138;
              v175 = v116;
              v120 = [v111 v60[487]];
              v121 = sub_22B36084C();
              v123 = v122;

              v124 = sub_22B1A7B20(v121, v123, &v192);

              *(v118 + 4) = v124;
              v60 = &off_2786FB000;
              _os_log_impl(&dword_22B116000, v112, v113, "[UtilityDiscoveryNotification] Not notified for %s", v118, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v119);
              MEMORY[0x23188F650](v119, -1, -1);
              MEMORY[0x23188F650](v118, -1, -1);

              v176(v175, v117);
            }

            else
            {

              v115(v116, v117);
            }

            v125 = [v111 location];
            *(v0 + 512) = v125;
            v126 = *(v0 + 352);
            v127 = *(v0 + 344);
            if (v125)
            {
              v186 = v125;
              v126(*(v0 + 248), v127, *(v0 + 200));
              v155 = v111;
              v156 = sub_22B36050C();
              v157 = sub_22B360D0C();

              v158 = os_log_type_enabled(v156, v157);
              v159 = *(v0 + 368);
              v160 = *(v0 + 248);
              v161 = *(v0 + 200);
              if (v158)
              {
                v179 = *(v0 + 248);
                v162 = swift_slowAlloc();
                v163 = swift_slowAlloc();
                v192 = v163;
                *v162 = 136315138;
                v164 = [v155 v60[487]];
                v165 = sub_22B36084C();
                v188 = v159;
                v167 = v166;

                v168 = sub_22B1A7B20(v165, v167, &v192);

                *(v162 + 4) = v168;
                v60 = &off_2786FB000;
                _os_log_impl(&dword_22B116000, v156, v157, "[UtilityDiscoveryNotification] Valid location for %s", v162, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v163);
                MEMORY[0x23188F650](v163, -1, -1);
                MEMORY[0x23188F650](v162, -1, -1);

                v188(v179, v161);
              }

              else
              {

                v159(v160, v161);
              }

              v169 = [v155 v60[487]];
              v170 = sub_22B36084C();
              v172 = v171;

              *(v0 + 520) = v172;
              v173 = swift_task_alloc();
              *(v0 + 528) = v173;
              *v173 = v0;
              v173[1] = sub_22B1953F8;

              return sub_22B192FA8(v180, v191, v170, v172, v186);
            }

            v128 = *(v0 + 224);
            v129 = *(v0 + 200);

            v126(v128, v127, v129);
            v130 = v111;
            v131 = sub_22B36050C();
            v132 = sub_22B360D0C();

            v133 = os_log_type_enabled(v131, v132);
            v134 = *(v0 + 368);
            v135 = *(v0 + 224);
            v136 = *(v0 + 200);
            if (v133)
            {
              v181 = *(v0 + 224);
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v192 = v138;
              *v137 = 136315138;
              v178 = v134;
              v139 = [v130 v60[487]];
              v140 = sub_22B36084C();
              v142 = v141;

              v143 = sub_22B1A7B20(v140, v142, &v192);
              v60 = &off_2786FB000;

              *(v137 + 4) = v143;
              _os_log_impl(&dword_22B116000, v131, v132, "[UtilityDiscoveryNotification] Invalid location for %s", v137, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v138);
              MEMORY[0x23188F650](v138, -1, -1);
              MEMORY[0x23188F650](v137, -1, -1);

              v39 = v178(v181, v136);
            }

            else
            {

              v39 = v134(v135, v136);
            }

            v49 = v183;
            v55 = v185;
          }

          v58 = &off_2786FB000;
          v59 = &off_2786FB000;
          goto LABEL_20;
        }
      }

LABEL_20:
      v56 = *(v0 + 488);
    }

    while (v56 != *(v0 + 456));
  }

LABEL_15:
  *(v0 + 552) = v55;
  v57 = *(v0 + 376);
  v39 = sub_22B1964FC;
  v40 = 0;

  return MEMORY[0x2822009F8](v39, v57, v40);
}

uint64_t sub_22B1964FC()
{
  v1 = *(v0 + 168);
  *(*(v0 + 376) + 112) = 0;
  return MEMORY[0x2822009F8](sub_22B196520, v1, 0);
}

uint64_t sub_22B196520()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B196658()
{
  (*(v0 + 352))(*(v0 + 216), *(v0 + 344), *(v0 + 200));
  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 368);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[UtilityDiscoveryNotification] Failed to load homes", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  swift_unknownObjectRelease();

  v4(v5, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B19683C()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "[UtilityDiscoveryNotification] Taking extended lifetime", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22B1969F0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B196A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_22B360B6C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_22B12B3CC(a1, v12);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  sub_22B11A02C(v12, (v8 + 5));

  v9 = sub_22B145224(0, 0, v6, &unk_22B364B78, v8);
  sub_22B123284(v6, &qword_27D8BA8D0, &qword_22B363610);
  return v9;
}

uint64_t sub_22B196B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22B119A60;

  return sub_22B3448A4(a5, a4);
}

unint64_t sub_22B196C6C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23188F670](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23188F670](&v3, 8);
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

unint64_t sub_22B196CF8()
{
  v0 = sub_22B35E04C();
  v39 = *(v0 - 8);
  v40 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v38 - v4;
  v5 = sub_22B35DE9C();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_22B36052C();
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() sharedScheduler];
  v42 = 0x800000022B36B7E0;
  v19 = sub_22B36081C();
  v20 = [v18 taskRequestForIdentifier_];

  if (v20)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v21 = v43;
    v22 = __swift_project_value_buffer(v43, qword_28140BD10);
    swift_beginAccess();
    v23 = v44;
    (*(v44 + 16))(v17, v22, v21);
    v24 = sub_22B36050C();
    v25 = sub_22B360D2C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_22B1A7B20(0xD000000000000025, v42, &v45);
      _os_log_impl(&dword_22B116000, v24, v25, "[BackgroundTask] %s is already scheduled", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x23188F650](v27, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    return (*(v23 + 8))(v17, v21);
  }

  else
  {
    sub_22B35DE6C();
    sub_22B35DE0C();
    sub_22B35DFFC();
    v29 = v41;
    sub_22B35F61C();
    (*(v39 + 8))(v2, v40);
    v30 = v38;
    v31 = *(v38 + 8);
    v31(v7, v5);
    if ((*(v30 + 48))(v29, 1, v5) == 1)
    {
      v31(v13, v5);
      return sub_22B123284(v29, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      (*(v30 + 32))(v10, v29, v5);
      sub_22B35DE2C();
      v33 = v32;
      result = sub_22B196C6C(0x3CuLL);
      v34 = 60 * (result + 1);
      if (((result + 1) * 60) >> 64 == v34 >> 63)
      {
        v35 = v33 + v34;
        v46[3] = &type metadata for BackgroundSystemTaskRequest;
        v46[4] = &off_283EFE7E8;
        v36 = swift_allocObject();
        v46[0] = v36;
        v37 = v42;
        *(v36 + 16) = 0xD000000000000025;
        *(v36 + 24) = v37;
        *(v36 + 32) = v35;
        *(v36 + 40) = 0;
        sub_22B348FC8(v46, 0, 0);
        v31(v10, v5);
        v31(v13, v5);
        return __swift_destroy_boxed_opaque_existential_0(v46);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_22B1972C4()
{
  result = qword_281408560;
  if (!qword_281408560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281408560);
  }

  return result;
}

uint64_t sub_22B197310()
{
  v5[3] = &type metadata for BackgroundSystemTaskScheduler;
  v5[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v0 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v5, &type metadata for BackgroundSystemTaskScheduler);
  v3 = &type metadata for BackgroundSystemTaskScheduler;
  v4 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v2, v0 + 112);
  __swift_destroy_boxed_opaque_existential_0(v5);

  sub_22B348848(0xD000000000000025, 0x800000022B36B7E0, sub_22B1973DC, v0);
}

uint64_t sub_22B1973E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B119A60;

  return sub_22B196B94(a1, v4, v5, v6, (v1 + 5));
}

uint64_t type metadata accessor for NextEnergyWindow(uint64_t a1)
{
  result = qword_281409180;
  if (!qword_281409180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B197518(uint64_t a1)
{
  sub_22B180EAC(319);
  if (v1 <= 0x3F)
  {
    sub_22B19759C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B19759C()
{
  if (!qword_2814085D0)
  {
    v0 = sub_22B360FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_2814085D0);
    }
  }
}

uint64_t sub_22B1975EC()
{
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3614CC();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B1976A4(uint64_t a1)
{
  sub_22B3608FC();
  sub_22B3614CC();
  sub_22B3608FC();
  sub_22B3608FC();

  return sub_22B3608FC();
}

uint64_t sub_22B19773C(uint64_t a1)
{
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3614CC();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B1977F0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v16 = a1[8];
  v17 = a1[7];
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v14 = *(a2 + 64);
  v15 = *(a2 + 56);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_22B36134C();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v7)
    {
      return result;
    }
  }

  if ((v3 != v9 || v4 != v8) && (sub_22B36134C() & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v15 && v16 == v14)
  {
    return 1;
  }

  return sub_22B36134C();
}

void *sub_22B197958()
{
  type metadata accessor for HomeEnergyForecastCache();
  swift_allocObject();
  result = sub_22B198A8C();
  qword_28140BD50 = result;
  return result;
}

uint64_t sub_22B197994()
{
  v0 = sub_22B321DD4(&unk_283EF8148);
  result = sub_22B123284(&unk_283EF8168, &qword_27D8BA550, &qword_22B364D50);
  qword_28140BD58 = v0;
  return result;
}

uint64_t sub_22B1979E4()
{
  v1[32] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v2 = type metadata accessor for CDEnergyGuidanceTracker(0);
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  v3 = sub_22B35DE9C();
  v1[38] = v3;
  v1[39] = *(v3 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v4 = sub_22B36052C();
  v1[44] = v4;
  v1[45] = *(v4 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B197BDC, v0, 0);
}

uint64_t sub_22B197BDC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[48];
  v2 = v0[44];
  v3 = v0[45];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[49] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[50] = v5;
  v0[51] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Initializing cache", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[48];
  v10 = v0[44];
  v11 = v0[45];
  v12 = v0[42];
  v13 = v0[38];
  v14 = v0[39];

  v15 = *(v11 + 8);
  v0[52] = v15;
  v15(v9, v10);
  sub_22B35DE6C();
  v16 = [objc_opt_self() processInfo];
  [v16 systemUptime];

  sub_22B35DE1C();
  v17 = *(v14 + 8);
  v0[53] = v17;
  v0[54] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v12, v13);
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v18 = qword_28140BDC0;
  v0[55] = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B197E28, v18, 0);
}

uint64_t sub_22B197E28()
{
  v1 = *(v0 + 256);
  *(v0 + 448) = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B197E98, v1, 0);
}

uint64_t sub_22B197E98()
{
  v31 = v0;
  v1 = *(v0 + 448);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
    v5 = *(v0 + 280);
    v25 = v4;
    v23 = (v4 + v5[9]);
    v24 = (v4 + v5[7]);
    v22 = (v4 + v5[8]);
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    for (i = v2 - 1; ; --i)
    {
      v7 = v6;
      sub_22B12B168(v6, v4);
      v8 = *v4;
      v9 = v25[1];
      v10 = *(v25 + 8);
      v11 = v24[1];
      v13 = *v23;
      v12 = v23[1];
      v14 = v22[1];
      v26 = *v22;
      v27 = *v24;

      sub_22B1A2058(v4, type metadata accessor for CDEnergyGuidanceTracker);
      *(v0 + 16) = v8;
      *(v0 + 24) = v9;
      *(v0 + 32) = v10;
      *(v0 + 40) = v27;
      *(v0 + 48) = v11;
      *(v0 + 56) = v13;
      *(v0 + 64) = v12;
      *(v0 + 72) = v26;
      *(v0 + 80) = v14;
      swift_beginAccess();
      sub_22B32E0A0(v29, (v0 + 16));
      swift_endAccess();
      v15 = v29[0];
      *(v0 + 104) = v29[1];
      v16 = v29[3];
      *(v0 + 120) = v29[2];
      *(v0 + 136) = v16;
      *(v0 + 152) = v30;
      *(v0 + 88) = v15;
      sub_22B172074(v0 + 88);
      if (!i)
      {
        break;
      }

      v4 = *(v0 + 296);
      v6 = v7 + v21;
    }
  }

  v17 = *(v0 + 256);
  swift_beginAccess();
  if (*(*(v17 + 120) + 16))
  {
    if (qword_28140AC88 != -1)
    {
      swift_once();
    }

    v18 = qword_28140BD80;
    *(v0 + 456) = qword_28140BD80;

    return MEMORY[0x2822009F8](sub_22B19818C, v18, 0);
  }

  else
  {
    (*(v0 + 424))(*(v0 + 344), *(v0 + 304));

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22B19818C()
{
  v1 = v0[57];
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[32];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  v0[58] = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[59] = v7;
  v0[60] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_22B198258, v5, 0);
}

uint64_t sub_22B198258()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 304);
  sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v4 = sub_22B36074C();
  v1(v2, v3);
  if (v4)
  {
    v5 = *(v0 + 456);
    v6 = sub_22B198624;
  }

  else
  {
    (*(v0 + 400))(*(v0 + 376), *(v0 + 392), *(v0 + 352));
    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "Device has rebooted. Schedule cache refresh.", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v10 = *(v0 + 424);
    v17 = *(v0 + 456);
    v11 = *(v0 + 416);
    v12 = *(v0 + 376);
    v13 = *(v0 + 352);
    v14 = *(v0 + 336);
    v15 = *(v0 + 304);

    v11(v12, v13);
    sub_22B35DE6C();
    sub_22B35DE0C();
    v10(v14, v15);
    v6 = sub_22B198440;
    v5 = v17;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B198440()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  (*(v0 + 472))(v4, *(v0 + 328), v1);
  (*(v2 + 56))(v4, 0, 1, v1);
  sub_22B255CFC(v4, v3);
  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 272);
    (*(v0 + 424))(*(v0 + 328), *(v0 + 304));
    sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v6 = *(v0 + 424);
    v8 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 304);
    (*(*(v0 + 312) + 32))(v8, *(v0 + 272), v9);
    sub_22B255B48(v8);
    v6(v8, v9);
    v6(v7, v9);
  }

  v10 = *(v0 + 456);

  return MEMORY[0x2822009F8](sub_22B1985B8, v10, 0);
}

uint64_t sub_22B1985B8()
{
  v1 = *(v0 + 256);
  sub_22B255804();

  return MEMORY[0x2822009F8](sub_22B1A20C0, v1, 0);
}

uint64_t sub_22B198624()
{
  v1 = *(v0 + 256);
  (*(v0 + 472))(*(v0 + 336), *(v0 + 456) + *(v0 + 464), *(v0 + 304));

  return MEMORY[0x2822009F8](sub_22B1986A0, v1, 0);
}

uint64_t sub_22B1986A0()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = sub_22B35DDEC();
  v1(v2, v3);
  if (v4)
  {
    (*(v0 + 400))(*(v0 + 368), *(v0 + 392), *(v0 + 352));
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Daemon restarted, no cache refresh needed", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = *(v0 + 456);
    v9 = *(v0 + 416);
    v10 = *(v0 + 368);
    v11 = *(v0 + 352);

    v9(v10, v11);

    return MEMORY[0x2822009F8](sub_22B1988AC, v8, 0);
  }

  else
  {
    (*(v0 + 424))(*(v0 + 344), *(v0 + 304));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22B1988AC()
{
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  v2 = *(v0 + 256);
  sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);

  sub_22B1B23B0();

  *(*(v1 + 112) + 40) = 0;
  swift_unknownObjectWeakAssign();
  sub_22B255804();

  return MEMORY[0x2822009F8](sub_22B19899C, v2, 0);
}

uint64_t sub_22B19899C()
{
  (*(v0 + 424))(*(v0 + 344), *(v0 + 304));

  v1 = *(v0 + 8);

  return v1();
}

void *sub_22B198A8C()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84FA0];
  v0[14] = MEMORY[0x277D84FA0];
  v0[15] = v1;
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  v3 = [objc_opt_self() sessionWithConfiguration_];

  v0[16] = v3;
  v0[17] = [objc_opt_self() standardUserDefaults];
  if (qword_28140AA38 != -1)
  {
    swift_once();
  }

  sub_22B2A5D90(qword_28140BD58);
  v0[18] = v4;
  return v0;
}

uint64_t sub_22B198B80(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v3;
  v4[1] = sub_22B198C18;

  return MEMORY[0x282172090]();
}

uint64_t sub_22B198C18(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_22B198D30, v2, 0);
}

uint64_t sub_22B198D30()
{
  v1 = v0[16];
  if (!v1)
  {
    if (qword_28140AA38 != -1)
    {
      swift_once();
    }

    sub_22B2A5D90(qword_28140BD58);
  }

  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  *(v3 + 144) = v1;

  sub_22B36116C();

  MEMORY[0x23188E270](v4, v2);
  v5 = *(v3 + 144);
  if (*(v5 + 16) && (, v6 = sub_22B33B28C(0xD000000000000021, 0x800000022B36BA20), v8 = v7, , (v8 & 1) != 0))
  {
    sub_22B170C58(*(v5 + 56) + 32 * v6, (v0 + 2));

    if (swift_dynamicCast())
    {
      v9 = v0[11];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v10 = *(v3 + 144);
  if (*(v10 + 16))
  {

    v11 = sub_22B33B28C(0xD000000000000020, 0x800000022B368230);
    if (v12)
    {
      sub_22B170C58(*(v10 + 56) + 32 * v11, (v0 + 6));

      if (swift_dynamicCast())
      {
        v9 = v0[10];
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v9 = 2;
LABEL_16:
  v13 = v0[1];

  return v13(v9);
}

uint64_t sub_22B198F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v5 = sub_22B35DE9C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B199070, v3, 0);
}

void sub_22B199070()
{
  v2 = v0 + 6;
  v1 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  sub_22B35E1BC();
  v5 = *(v4 + 48);
  if (v5(v1, 1, v3) == 1)
  {
    goto LABEL_4;
  }

  v2 = v0 + 5;
  v6 = v0[5];
  v7 = v0[7];
  v8 = *(v0[8] + 32);
  v8(v0[10], v0[6], v7);
  sub_22B35E18C();
  if (v5(v6, 1, v7) != 1)
  {
    v8(v0[9], v0[5], v0[7]);
    sub_22B35DD3C();
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        if ((v10 * v0[4]) >> 64 == (v10 * v0[4]) >> 63)
        {
          v11 = v0[9];
          v12 = v0[10];
          v13 = v0[7];
          v14 = v0[8];
          sub_22B35DDCC();
          v15 = *(v14 + 8);
          v15(v11, v13);
          v15(v12, v13);
          v9 = 0;
          goto LABEL_10;
        }

LABEL_16:
        __break(1u);
        return;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  (*(v0[8] + 8))(v0[10], v0[7]);
LABEL_4:
  sub_22B123284(*v2, &qword_27D8BA340, &qword_22B363FB0);
  v9 = 1;
LABEL_10:
  (*(v0[8] + 56))(v0[2], v9, 1, v0[7]);

  v16 = v0[1];

  v16();
}

uint64_t sub_22B1992BC(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_22B36052C();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1993AC, v1, 0);
}

uint64_t sub_22B1993AC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[37];
  v3 = v0[38];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[44] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[45] = v5;
  v0[46] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Notifying clients of grid data refresh", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[43];
  v10 = v0[37];
  v11 = v0[38];

  v12 = *(v11 + 8);
  v0[47] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[48] = v13;
  *v13 = v0;
  v13[1] = sub_22B199588;

  return sub_22B3512F8(0xD000000000000018, 0x800000022B36BA50);
}

uint64_t sub_22B199588()
{
  v1 = *(*v0 + 288);

  return MEMORY[0x2822009F8](sub_22B199698, v1, 0);
}

uint64_t sub_22B199698()
{
  v64 = v0;
  (*(v0 + 360))(*(v0 + 336), *(v0 + 352), *(v0 + 296));
  v1 = sub_22B36050C();
  v2 = sub_22B360CFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "Updating Client on guidance data refresh", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  v4 = *(v0 + 376);
  v5 = *(v0 + 336);
  v6 = *(v0 + 296);

  v4(v5, v6);
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 280);
  v58 = qword_28140BDD8;
  v57 = *(qword_28140BDD8 + 112);
  v56 = sub_22B36081C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(v0 + 248) = sub_22B35EEDC();
  *(v0 + 256) = v9;
  sub_22B36110C();
  v61 = v7;
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = *(v0 + 280);
    v12 = sub_22B32DCA4(*(v7 + 16), 0);
    v54 = sub_22B24FA90(&v63, v12 + 4, v10, v11);
    v13 = v63;

    sub_22B1A20B8(v13);
    if (v54 == v10)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_9:
  v14 = *(v0 + 360);
  v15 = *(v0 + 352);
  v16 = *(v0 + 328);
  v17 = *(v0 + 296);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
  *(inited + 96) = v55;
  *(inited + 72) = v12;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v18 = sub_22B3606CC();

  [v57 postNotificationName:v56 object:0 userInfo:v18 deliverImmediately:1];

  v14(v16, v15, v17);
  v19 = sub_22B36050C();
  v20 = sub_22B360CFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22B116000, v19, v20, "Updated Client on guidance data refresh", v21, 2u);
    MEMORY[0x23188F650](v21, -1, -1);
  }

  v22 = *(v0 + 376);
  v23 = *(v0 + 352);
  v24 = *(v0 + 360);
  v26 = *(v0 + 320);
  v25 = *(v0 + 328);
  v27 = *(v0 + 296);

  v22(v25, v27);
  v24(v26, v23, v27);
  v28 = sub_22B36050C();
  v29 = sub_22B360CFC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22B116000, v28, v29, "Updating Client on grid data refresh", v30, 2u);
    MEMORY[0x23188F650](v30, -1, -1);
  }

  v31 = *(v0 + 376);
  v32 = *(v0 + 320);
  v33 = *(v0 + 296);

  v31(v32, v33);
  v34 = *(v58 + 112);
  sub_22B35EF0C();
  v59 = sub_22B36081C();

  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_22B3634B0;
  *(v0 + 264) = sub_22B35EEDC();
  *(v0 + 272) = v36;
  sub_22B36110C();
  v37 = *(v61 + 16);
  if (v37)
  {
    v60 = v34;
    v38 = *(v0 + 280);
    v39 = sub_22B32DCA4(v37, 0);
    v62 = sub_22B24FA90(&v63, v39 + 4, v37, v38);
    v40 = v63;

    result = sub_22B1A20B8(v40);
    if (v62 != v37)
    {
      __break(1u);
      return result;
    }

    v34 = v60;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v42 = *(v0 + 360);
  v43 = *(v0 + 352);
  v44 = *(v0 + 312);
  v45 = *(v0 + 296);
  *(v35 + 96) = v55;
  *(v35 + 72) = v39;
  sub_22B321BDC(v35);
  swift_setDeallocating();
  sub_22B123284(v35 + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v46 = sub_22B3606CC();

  [v34 postNotificationName:v59 object:0 userInfo:v46 deliverImmediately:1];

  v42(v44, v43, v45);
  v47 = sub_22B36050C();
  v48 = sub_22B360CFC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_22B116000, v47, v48, "Updated Client on grid data refresh", v49, 2u);
    MEMORY[0x23188F650](v49, -1, -1);
  }

  v50 = *(v0 + 376);
  v51 = *(v0 + 312);
  v52 = *(v0 + 296);

  v50(v51, v52);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_22B199D68(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 192) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v3 = sub_22B35DE9C();
  *(v2 + 88) = v3;
  *(v2 + 96) = *(v3 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v4 = sub_22B36052C();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B199EE4, v1, 0);
}

uint64_t sub_22B199EE4()
{
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BD80;
  *(v0 + 152) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B199F7C, v1, 0);
}

uint64_t sub_22B199F7C()
{
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);

  sub_22B1B23B0();

  *(*(v1 + 112) + 40) = 0;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](sub_22B19A058, v1, 0);
}

uint64_t sub_22B19A058()
{
  if (qword_28140AC90 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v2, qword_28140BD88);
  v5 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v5, v4, v2);
  swift_endAccess();
  if (qword_28140AC78 != -1)
  {
    swift_once();
  }

  v6 = v0[19];
  v7 = qword_28140AC80;
  v8 = sub_22B36081C();
  [v7 removeObjectForKey_];

  return MEMORY[0x2822009F8](sub_22B19A1D0, v6, 0);
}

uint64_t sub_22B19A1D0()
{
  v1 = *(v0 + 64);
  *(v0 + 193) = *(*(v0 + 152) + 120);
  return MEMORY[0x2822009F8](sub_22B19A1F8, v1, 0);
}

uint64_t sub_22B19A1F8()
{
  if (*(v0 + 193) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_22B36134C();
  }

  *(v0 + 194) = v1 & 1;
  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_22B19A2C0, v2, 0);
}

uint64_t sub_22B19A2C0()
{
  v1 = *(v0 + 64);
  *(*(v0 + 152) + OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_missedCacheRefresh) = *(v0 + 194);
  return MEMORY[0x2822009F8](sub_22B19A2F4, v1, 0);
}

uint64_t sub_22B19A2F4()
{
  if (*(v0 + 194) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 136);
    v1 = *(v0 + 144);
    v3 = *(v0 + 128);
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Cache refresh will be skipped because network is offline", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);

    (*(v11 + 8))(v9, v10);
    sub_22B35DE6C();
    sub_22B35DE0C();
    v15 = *(v14 + 8);
    *(v0 + 160) = v15;
    *(v0 + 168) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v13);

    return MEMORY[0x2822009F8](sub_22B19A550, v8, 0);
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 176) = v16;
    *v16 = v0;
    v16[1] = sub_22B19A704;
    v17 = *(v0 + 192);

    return sub_22B292A64(v17);
  }
}

uint64_t sub_22B19A550()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  (*(v2 + 16))(v4, *(v0 + 120), v1);
  (*(v2 + 56))(v4, 0, 1, v1);
  sub_22B255CFC(v4, v3);
  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v5 = (*(v2 + 48))(v3, 1, v1);
  v6 = *(v0 + 160);
  if (v5 == 1)
  {
    v7 = *(v0 + 80);
    v6(*(v0 + 120), *(v0 + 88));
    sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    (*(*(v0 + 96) + 32))(v9, *(v0 + 80), v10);
    sub_22B255B48(v9);
    v6(v9, v10);
    v6(v8, v10);
  }

  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_22B19A704;
  v12 = *(v0 + 192);

  return sub_22B292A64(v12);
}

uint64_t sub_22B19A704()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_22B19A814, v1, 0);
}

uint64_t sub_22B19A814(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_22B255804();

  return MEMORY[0x2822009F8](sub_22B19A880, v2, 0);
}

uint64_t sub_22B19A880()
{
  if (sub_22B35EEBC())
  {
    type metadata accessor for HomeEnergyDaemonUtilities();
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_22B19A9A8;

    return sub_22B34A2E4(1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_22B19A9A8(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B19AB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X8>)
{
  v173 = a6;
  v189 = a5;
  v190 = a4;
  v191 = a3;
  v202 = a2;
  v184 = a1;
  v180 = a7;
  v217 = sub_22B36052C();
  v215 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v182 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v170 - v9;
  MEMORY[0x28223BE20](v11);
  v176 = &v170 - v12;
  MEMORY[0x28223BE20](v13);
  v172 = &v170 - v14;
  v187 = sub_22B35E26C();
  v211 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v186 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v16 - 8);
  v195 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v170 - v19;
  v21 = sub_22B35DE9C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v178 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v177 = &v170 - v25;
  MEMORY[0x28223BE20](v26);
  v175 = &v170 - v27;
  MEMORY[0x28223BE20](v28);
  v174 = &v170 - v29;
  MEMORY[0x28223BE20](v30);
  v188 = &v170 - v31;
  MEMORY[0x28223BE20](v32);
  v171 = &v170 - v33;
  MEMORY[0x28223BE20](v34);
  v203 = &v170 - v35;
  MEMORY[0x28223BE20](v36);
  v206 = &v170 - v37;
  v38 = sub_22B35E17C();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v170 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA540, &qword_22B364D40);
  v42 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v199 = (&v170 - v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA548, &qword_22B364D48);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v170 - v47;
  v179 = 0;
  v49 = 0;
  v50 = *(v202 + 16);
  v198 = v39 + 16;
  v212 = (v42 + 48);
  v213 = (v42 + 56);
  v208 = (v39 + 32);
  v216 = (v22 + 48);
  v196 = (v22 + 32);
  v185 = (v211 + 8);
  v181 = v22;
  v201 = (v22 + 8);
  v200 = v39;
  v209 = (v39 + 8);
  v52 = v51;
  v204 = (v215 + 16);
  v205 = (v215 + 8);
  v46.n128_u64[0] = 134349056;
  v192 = v46;
  v215 = v21;
  v210 = v38;
  v211 = v51;
  v207 = v50;
  v197 = v41;
  v194 = v10;
  v193 = v20;
  while (2)
  {
    v53 = v214;
    while (1)
    {
      if (v49 == v50)
      {
        v54 = 1;
        v49 = v50;
      }

      else
      {
        if (v49 >= v50)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v144 = v217;
          v145 = __swift_project_value_buffer(v217, qword_28140BD10);
          swift_beginAccess();
          v146 = v172;
          (*v204)(v172, v145, v144);
          v147 = v181;
          v148 = *(v181 + 16);
          v149 = v171;
          v150 = v215;
          v148(v171, v184, v215);
          v216 = v148;
          v148(v53, v203, v150);
          v151 = sub_22B36050C();
          v152 = sub_22B360CFC();
          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v214 = swift_slowAlloc();
            v218 = v214;
            *v153 = 136446466;
            sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v154 = sub_22B36131C();
            v156 = v155;
            v157 = *v201;
            (*v201)(v149, v215);
            v158 = sub_22B1A7B20(v154, v156, &v218);

            *(v153 + 4) = v158;
            *(v153 + 12) = 2082;
            v159 = v188;
            v160 = sub_22B36131C();
            v162 = v161;
            v157(v159, v215);
            v163 = sub_22B1A7B20(v160, v162, &v218);
            v150 = v215;

            *(v153 + 14) = v163;
            _os_log_impl(&dword_22B116000, v151, v152, "Good windows found between %{public}s-%{public}s", v153, 0x16u);
            v164 = v214;
            swift_arrayDestroy();
            MEMORY[0x23188F650](v164, -1, -1);
            MEMORY[0x23188F650](v153, -1, -1);

            (*v205)(v172, v217);
            v157(v206, v150);
            v147 = v181;
          }

          else
          {

            v165 = *v201;
            (*v201)(v53, v150);
            v165(v149, v150);
            (*v205)(v146, v144);
            v165(v206, v150);
          }

          (*v209)(v197, v210);
          v166 = v180;
          v216(v180, v184, v150);
          v167 = *(v147 + 56);
          v167(v166, 0, 1, v150);
          EnergyWindow = type metadata accessor for NextEnergyWindow(0);
          v169 = *(EnergyWindow + 20);
          v183(&v166[v169], v203, v150);
          result = (v167)(&v166[v169], 0, 1, v150);
          v166[*(EnergyWindow + 24)] = 1;
          return result;
        }

        if (__OFADD__(v49, 1))
        {
          goto LABEL_45;
        }

        v55 = v200;
        v56 = v202 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v49;
        v57 = *(v53 + 12);
        v58 = v21;
        v59 = v10;
        v60 = v199;
        *v199 = v49;
        (*(v55 + 16))(&v60[v57], v56, v38);
        v61 = v60;
        v10 = v59;
        v21 = v58;
        v52 = v211;
        sub_22B170CD0(v61, v211, &qword_27D8BA540, &qword_22B364D40);
        v54 = 0;
        ++v49;
      }

      (*v213)(v52, v54, 1, v53);
      sub_22B170CD0(v52, v48, &qword_27D8BA548, &qword_22B364D48);
      if ((*v212)(v48, 1, v53) == 1)
      {
        goto LABEL_30;
      }

      v62 = v53;
      v63 = *v48;
      (*v208)(v41, &v48[*(v62 + 12)], v38);
      sub_22B35E16C();
      v64 = *v216;
      v65 = (*v216)(v20, 1, v21);
      v66 = v20;
      if (v65 == 1)
      {
        goto LABEL_14;
      }

      v67 = *v196;
      v68 = v206;
      (*v196)(v206, v20, v21);
      v69 = v195;
      sub_22B35E15C();
      if (v64(v69, 1, v21) != 1)
      {
        break;
      }

      (*v201)(v68, v21);
      v66 = v69;
      v41 = v197;
      v10 = v194;
      v20 = v193;
      v52 = v211;
LABEL_14:
      sub_22B123284(v66, &qword_27D8BA340, &qword_22B363FB0);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v70 = v217;
      v71 = __swift_project_value_buffer(v217, qword_28140BD10);
      swift_beginAccess();
      (*v204)(v10, v71, v70);
      v72 = sub_22B36050C();
      v73 = sub_22B360D1C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = v192.n128_u32[0];
        *(v74 + 4) = v63;
        _os_log_impl(&dword_22B116000, v72, v73, "Error parsing window at idx: %{public}ld", v74, 0xCu);
        MEMORY[0x23188F650](v74, -1, -1);
      }

      (*v205)(v10, v217);
      v21 = v215;
LABEL_4:
      v38 = v210;
      (*v209)(v41, v210);
      v53 = v214;
      v50 = v207;
    }

    v67(v203, v69, v21);
    sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (sub_22B36074C())
    {
      v183 = v67;
      v75 = v186;
      v41 = v197;
      sub_22B35E14C();
      v76 = sub_22B35E25C();
      v78 = v77;
      (*v185)(v75, v187);
      if (v76 == v191 && v78 == v190)
      {

        v53 = v188;
        v10 = v194;
        v20 = v193;
        v52 = v211;
LABEL_23:
        if (sub_22B36074C() & 1) == 0 && (sub_22B35DDEC())
        {
          if (v173)
          {
            v82 = v203;
            v21 = v215;
            v83 = sub_22B36074C();
            v84 = *v201;
            (*v201)(v82, v21);
            v84(v206, v21);
            v41 = v197;
            v38 = v210;
            (*v209)(v197, v210);
            v179 |= v83 ^ 1;
            v50 = v207;
            continue;
          }

          goto LABEL_46;
        }

        v80 = v206;
        if (sub_22B35DDEC())
        {
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v114 = v217;
          v115 = __swift_project_value_buffer(v217, qword_28140BD10);
          swift_beginAccess();
          v116 = v176;
          (*v204)(v176, v115, v114);
          v117 = v181;
          v118 = *(v181 + 16);
          v119 = v174;
          v120 = v215;
          v118(v174, v206, v215);
          v121 = v175;
          v118(v175, v203, v120);
          v122 = sub_22B36050C();
          v123 = sub_22B360CFC();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v216 = swift_slowAlloc();
            v218 = v216;
            *v124 = 136446466;
            sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v125 = sub_22B36131C();
            v126 = v121;
            v128 = v127;
            v129 = v119;
            v130 = *v201;
            (*v201)(v129, v215);
            v131 = sub_22B1A7B20(v125, v128, &v218);

            *(v124 + 4) = v131;
            *(v124 + 12) = 2082;
            v132 = sub_22B36131C();
            v134 = v133;
            v130(v126, v215);
            v135 = sub_22B1A7B20(v132, v134, &v218);
            v120 = v215;

            *(v124 + 14) = v135;
            _os_log_impl(&dword_22B116000, v122, v123, "Good windows found between %{public}s-%{public}s", v124, 0x16u);
            v136 = v216;
            swift_arrayDestroy();
            MEMORY[0x23188F650](v136, -1, -1);
            MEMORY[0x23188F650](v124, -1, -1);

            (*v205)(v176, v217);
          }

          else
          {

            v137 = *v201;
            (*v201)(v121, v120);
            v137(v119, v120);
            (*v205)(v116, v114);
          }

          (*v209)(v197, v210);
          v138 = v180;
          v139 = v183;
          v183(v180, v206, v120);
          v140 = *(v117 + 56);
          v140(v138, 0, 1, v120);
          v141 = type metadata accessor for NextEnergyWindow(0);
          v142 = v120;
          v143 = *(v141 + 20);
          v139(&v138[v143], v203, v142);
          result = (v140)(&v138[v143], 0, 1, v142);
          v138[*(v141 + 24)] = 0;
          return result;
        }
      }

      else
      {
        v79 = sub_22B36134C();

        v80 = v206;
        v53 = v188;
        v10 = v194;
        v20 = v193;
        v52 = v211;
        if (v79)
        {
          goto LABEL_23;
        }
      }

      v81 = *v201;
      v21 = v215;
      (*v201)(v203, v215);
      v81(v80, v21);
      goto LABEL_4;
    }

    break;
  }

  v85 = *v201;
  v21 = v215;
  (*v201)(v203, v215);
  v85(v206, v21);
  (*v209)(v197, v210);
LABEL_30:
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v86 = v217;
  v87 = __swift_project_value_buffer(v217, qword_28140BD10);
  swift_beginAccess();
  v88 = v182;
  (*v204)(v182, v87, v86);
  v89 = v181;
  v90 = *(v181 + 16);
  v91 = v177;
  v90(v177, v184, v21);
  v92 = v178;
  v90(v178, v189, v21);
  v93 = sub_22B36050C();
  v94 = sub_22B360CFC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v218 = v216;
    *v95 = 136446466;
    sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v96 = v21;
    LODWORD(v215) = v94;
    v97 = sub_22B36131C();
    v99 = v98;
    v100 = v91;
    v101 = *v201;
    (*v201)(v100, v21);
    v102 = sub_22B1A7B20(v97, v99, &v218);

    *(v95 + 4) = v102;
    *(v95 + 12) = 2082;
    v103 = sub_22B36131C();
    v105 = v104;
    v101(v92, v96);
    v106 = sub_22B1A7B20(v103, v105, &v218);

    *(v95 + 14) = v106;
    _os_log_impl(&dword_22B116000, v93, v215, "No good windows found between %{public}s-%{public}s", v95, 0x16u);
    v107 = v216;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v107, -1, -1);
    MEMORY[0x23188F650](v95, -1, -1);

    (*v205)(v182, v217);
    v108 = v180;
  }

  else
  {

    v109 = *v201;
    (*v201)(v92, v21);
    v109(v91, v21);
    (*v205)(v88, v86);
    v108 = v180;
    v96 = v21;
  }

  v110 = *(v89 + 56);
  v110(v108, 1, 1, v96);
  v111 = type metadata accessor for NextEnergyWindow(0);
  result = (v110)(&v108[*(v111 + 20)], 1, 1, v96);
  v113 = *(v111 + 24);
  if (v179)
  {
    v108[v113] = 1;
  }

  else
  {
    v108[v113] = 2;
  }

  return result;
}

void sub_22B19C32C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v133 = a6;
  v130 = a5;
  v137 = a4;
  v138 = a3;
  v125 = a1;
  v117 = a7;
  v158 = sub_22B36052C();
  v8 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v122 = &v110 - v13;
  v132 = sub_22B35D8BC();
  v151 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v121 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v118 = &v110 - v16;
  MEMORY[0x28223BE20](v17);
  v119 = &v110 - v18;
  v135 = sub_22B35E26C();
  v149 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v128 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120 = &v110 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v22 - 8);
  v139 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v155 = &v110 - v25;
  v26 = sub_22B35DE9C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v115 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v126 = &v110 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v110 - v32;
  MEMORY[0x28223BE20](v34);
  v159 = &v110 - v35;
  v160 = sub_22B35E17C();
  v36 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v161 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA540, &qword_22B364D40);
  v38 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v142 = (&v110 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA548, &qword_22B364D48);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v110 - v45;
  v47 = 0;
  v141 = v36 + 16;
  v144 = a2;
  v48 = *(a2 + 16);
  v152 = (v38 + 48);
  v153 = (v38 + 56);
  v150 = (v36 + 32);
  v156 = (v27 + 48);
  v140 = (v27 + 32);
  v134 = (v149 + 1);
  v114 = (v151 + 7);
  v131 = (v151 + 6);
  v124 = (v151 + 4);
  v116 = (v27 + 16);
  v123 = v151 + 1;
  v113 = v27;
  v147 = (v27 + 8);
  v143 = v36;
  v151 = (v36 + 8);
  v148 = (v8 + 8);
  v149 = (v8 + 16);
  v44.n128_u64[0] = 134349056;
  v136 = v44;
  v145 = v33;
  v146 = v48;
  while (1)
  {
    v49 = v154;
    if (v47 != v48)
    {
      break;
    }

    v50 = 1;
    v47 = v48;
LABEL_9:
    (*v153)(v42, v50, 1, v49);
    sub_22B170CD0(v42, v46, &qword_27D8BA548, &qword_22B364D48);
    if ((*v152)(v46, 1, v49) == 1)
    {
      goto LABEL_47;
    }

    v55 = *v46;
    (*v150)(v161, &v46[*(v49 + 48)], v160);
    v56 = v155;
    sub_22B35E16C();
    v57 = *v156;
    if ((*v156)(v56, 1, v26) == 1)
    {
      goto LABEL_13;
    }

    v58 = *v140;
    (*v140)(v159, v155, v26);
    v59 = v139;
    sub_22B35E15C();
    if (v57(v59, 1, v26) == 1)
    {
      (*v147)(v159, v26);
      v56 = v59;
      v48 = v146;
LABEL_13:
      sub_22B123284(v56, &qword_27D8BA340, &qword_22B363FB0);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v60 = v158;
      v61 = __swift_project_value_buffer(v158, qword_28140BD10);
      swift_beginAccess();
      (*v149)(v157, v61, v60);
      v62 = sub_22B36050C();
      v63 = sub_22B360D1C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = v136.n128_u32[0];
        *(v64 + 4) = v55;
        _os_log_impl(&dword_22B116000, v62, v63, "Error parsing window at idx: %{public}ld", v64, 0xCu);
        MEMORY[0x23188F650](v64, -1, -1);
      }

      (*v148)(v157, v158);
LABEL_3:
      (*v151)(v161, v160);
    }

    else
    {
      v65 = v145;
      v58(v145, v59, v26);
      sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if ((sub_22B36074C() & 1) == 0)
      {
        v103 = *v147;
        (*v147)(v65, v26);
        v103(v159, v26);
        (*v151)(v161, v160);
LABEL_47:
        EnergyWindow = type metadata accessor for NextEnergyWindow(0);
        (*(*(EnergyWindow - 8) + 56))(v117, 1, 1, EnergyWindow);
        return;
      }

      v127 = v58;
      v48 = v146;
      if (!v55)
      {
        v74 = v120;
        sub_22B35E14C();
        v75 = sub_22B35E25C();
        v77 = v76;
        (*v134)(v74, v135);
        if (v75 == v138 && v77 == v137)
        {

          v78 = v122;
        }

        else
        {
          v87 = sub_22B36134C();

          v78 = v122;
          if ((v87 & 1) == 0)
          {
            v100 = v133;
            sub_22B123284(v133, &qword_27D8BA3E8, &unk_22B364790);
            (*v114)(v100, 1, 1, v132);
            goto LABEL_19;
          }
        }

        sub_22B170BE0(v133, v78, &qword_27D8BA3E8, &unk_22B364790);
        v88 = *v131;
        v89 = v132;
        if ((*v131)(v78, 1, v132) == 1)
        {
          sub_22B123284(v78, &qword_27D8BA3E8, &unk_22B364790);
        }

        else
        {
          v112 = v88;
          (*v124)(v119, v78, v89);
          v90 = *v116;
          (*v116)(v126, v159, v26);
          v111 = v90;
          v90(v115, v145, v26);
          v91 = v118;
          sub_22B35D88C();
          v92 = v119;
          if (sub_22B35D83C())
          {
            v93 = v89;
            v94 = v126;
            v95 = v92;
            sub_22B35D86C();
            v96 = sub_22B35DDFC();
            v97 = *v147;
            (*v147)(v94, v26);
            if (v96 & 1) != 0 || (sub_22B35D86C(), v98 = sub_22B35DDEC(), v97(v94, v26), (v98))
            {
              if (!v112(v133, 1, v93))
              {
                v111(v94, v145, v26);
                sub_22B35D87C();
              }

              v99 = *v123;
              (*v123)(v118, v93);
              v99(v119, v93);
            }

            else
            {
              v102 = *v123;
              (*v123)(v118, v93);
              v102(v95, v93);
            }
          }

          else
          {
            v101 = *v123;
            (*v123)(v91, v89);
            v101(v92, v89);
          }
        }
      }

LABEL_19:
      v66 = v128;
      sub_22B35E14C();
      v67 = sub_22B35E25C();
      v69 = v68;
      (*v134)(v66, v135);
      if (v67 == v138 && v69 == v137)
      {

        v70 = v129;
      }

      else
      {
        v71 = sub_22B36134C();

        v70 = v129;
        if ((v71 & 1) == 0)
        {
          v82 = *v147;
          v83 = v145;
          v84 = v26;
          goto LABEL_33;
        }
      }

      v72 = v70;
      sub_22B170BE0(v133, v70, &qword_27D8BA3E8, &unk_22B364790);
      v73 = v132;
      if ((*v131)(v72, 1, v132) == 1)
      {
        sub_22B123284(v72, &qword_27D8BA3E8, &unk_22B364790);
      }

      else
      {
        v79 = v121;
        (*v124)(v121, v72, v73);
        v80 = v126;
        sub_22B35D86C();
        v81 = sub_22B35DDFC();
        v48 = v146;
        v82 = *v147;
        (*v147)(v80, v26);
        (*v123)(v79, v73);
        if (v81)
        {
          v83 = v145;
          v84 = v26;
LABEL_33:
          v82(v83, v84);
          v82(v159, v26);
          goto LABEL_3;
        }
      }

      v85 = sub_22B35DDEC();
      (*v151)(v161, v160);
      if (v85)
      {
        v105 = v117;
        v106 = v127;
        v127(v117, v159, v26);
        v107 = *(v113 + 56);
        v107(v105, 0, 1, v26);
        v108 = type metadata accessor for NextEnergyWindow(0);
        v109 = *(v108 + 20);
        v106(&v105[v109], v145, v26);
        v107(&v105[v109], 0, 1, v26);
        v105[*(v108 + 24)] = 2;
        (*(*(v108 - 8) + 56))(v105, 0, 1, v108);
        return;
      }

      v86 = *v147;
      (*v147)(v145, v26);
      v86(v159, v26);
    }
  }

  if (v47 < v48)
  {
    if (__OFADD__(v47, 1))
    {
      goto LABEL_50;
    }

    v51 = v143;
    v52 = v144 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v47;
    v53 = *(v154 + 48);
    v54 = v142;
    *v142 = v47;
    (*(v51 + 16))(v54 + v53, v52, v160);
    sub_22B170CD0(v54, v42, &qword_27D8BA540, &qword_22B364D40);
    v50 = 0;
    ++v47;
    goto LABEL_9;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_22B19D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 296) = a4;
  *(v6 + 304) = v5;
  *(v6 + 754) = a5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a3;
  *(v6 + 272) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v7 = sub_22B35DE9C();
  *(v6 + 328) = v7;
  *(v6 + 336) = *(v7 - 8);
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = type metadata accessor for NextEnergyWindow(0);
  *(v6 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3B0, &unk_22B364610);
  *(v6 + 400) = swift_task_alloc();
  v8 = sub_22B35E1DC();
  *(v6 + 408) = v8;
  *(v6 + 416) = *(v8 - 8);
  *(v6 + 424) = swift_task_alloc();
  v9 = sub_22B35E26C();
  *(v6 + 432) = v9;
  *(v6 + 440) = *(v9 - 8);
  *(v6 + 448) = swift_task_alloc();
  v10 = sub_22B35E33C();
  *(v6 + 456) = v10;
  *(v6 + 464) = *(v10 - 8);
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  v11 = sub_22B36052C();
  *(v6 + 488) = v11;
  *(v6 + 496) = *(v11 - 8);
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = swift_task_alloc();
  v12 = sub_22B35E20C();
  *(v6 + 552) = v12;
  *(v6 + 560) = *(v12 - 8);
  *(v6 + 568) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B19D8C0, v5, 0);
}

uint64_t sub_22B19D8C0()
{
  v44 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  v38 = *MEMORY[0x277D17EE8];
  v37 = *(v2 + 104);
  v37(v1);

  v7 = sub_22B35E1FC();
  v8 = *(v2 + 8);
  v8(v1, v3);
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v7;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  v9 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v10 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v10;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 88) = v9;
  swift_beginAccess();
  v11 = *(v5 + 120);

  LOBYTE(v4) = sub_22B325AD4((v0 + 88), v11);
  sub_22B172074(v0 + 16);

  if (v4)
  {
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 568);
    v13 = *(v0 + 552);
    v14 = qword_28140BDC8;
    *(v0 + 576) = qword_28140BDC8;
    (v37)(v12, v38, v13);
    *(v0 + 752) = sub_22B35E1FC();
    v8(v12, v13);

    return MEMORY[0x2822009F8](sub_22B19DDAC, v14, 0);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 544);
    v16 = *(v0 + 488);
    v17 = *(v0 + 496);
    v18 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v17 + 16))(v15, v18, v16);
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "API Misuse! Enable caching before using this API", v21, 2u);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    v22 = *(v0 + 544);
    v23 = *(v0 + 488);
    v24 = *(v0 + 496);
    v25 = *(v0 + 384);
    v26 = *(v0 + 328);
    v27 = *(v0 + 336);
    v28 = *(v0 + 272);

    (*(v24 + 8))(v22, v23);
    v29 = [objc_opt_self() processInfo];
    v30 = [v29 processName];

    v31 = sub_22B36084C();
    v33 = v32;

    v39 = 0;
    v40 = 7;
    v41 = v31;
    v42 = v33;
    v43 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v39);

    v34 = *(v27 + 56);
    v34(v28, 1, 1, v26);
    v34(v28 + *(v25 + 20), 1, 1, v26);
    *(v28 + *(v25 + 24)) = 2;

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_22B19DDAC()
{
  v32 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 536);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 584) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 592) = v5;
  *(v0 + 600) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 752);
    v30 = *(v0 + 536);
    v9 = *(v0 + 488);
    v10 = *(v0 + 496);
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136381187;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v31);
    *(v13 + 12) = 512;
    *(v13 + 14) = v8;
    *(v13 + 16) = 1024;
    *(v13 + 18) = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Get energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v15 = *(v10 + 8);
    v15(v30, v9);
  }

  else
  {
    v16 = *(v0 + 536);
    v17 = *(v0 + 488);
    v18 = *(v0 + 496);

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  *(v0 + 608) = v15;
  v19 = *(*(v0 + 576) + 112);
  if (v19)
  {
    v20 = *(v0 + 752);
    v22 = *(v0 + 296);
    v21 = *(v0 + 304);
    v23 = *(v0 + 288);
    v24 = *(v19 + 48);
    v25 = swift_task_alloc();
    *(v25 + 16) = v19;
    *(v25 + 24) = v23;
    *(v25 + 32) = v22;
    *(v25 + 40) = v20;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0xE000000000000000;
    *(v25 + 64) = 0;
    *(v25 + 72) = 0xE000000000000000;
    *(v25 + 80) = 0;
    *(v25 + 88) = 0xE000000000000000;
    v26 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA530, &qword_22B364D38);
    sub_22B360E7C();
    *(v0 + 616) = 0;

    *(v0 + 624) = *(v0 + 256);
    v27 = sub_22B19E0B8;
    v28 = v21;
  }

  else
  {
    v28 = *(v0 + 304);
    v27 = sub_22B19E870;
  }

  return MEMORY[0x2822009F8](v27, v28, 0);
}

uint64_t sub_22B19E0B8()
{
  v69 = v0;
  if (*(v0 + 632) >> 60 == 15)
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 328);
    v3 = *(v0 + 336);
    v4 = *(v0 + 272);
LABEL_10:
    v34 = *(v3 + 56);
    v34(v4, 1, 1, v2);
    v34(v4 + *(v1 + 20), 1, 1, v2);
LABEL_11:
    *(v4 + *(v1 + 24)) = 2;

    v35 = *(v0 + 8);

    return v35();
  }

  v5 = *(v0 + 616);
  v6 = MEMORY[0x23188EEB0]();
  sub_22B35D7FC();
  swift_allocObject();
  sub_22B35D7EC();
  sub_22B1A1F70(&qword_27D8BA538, MEMORY[0x277D17FB0], MEMORY[0x277D17FC0]);
  sub_22B35D7DC();
  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  v9 = *(v0 + 488);
  if (v5)
  {
    v10 = *(v0 + 520);

    objc_autoreleasePoolPop(v6);
    v7(v10, v8, v9);
    v11 = v5;
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 632);
    v16 = *(v0 + 624);
    if (v14)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v5;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_22B116000, v12, v13, "Error unarchiving guidance data from cache. %@", v17, 0xCu);
      sub_22B123284(v18, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);
      sub_22B11EDC0(v16, v15);
    }

    else
    {

      sub_22B11EDC0(v16, v15);
    }

    v1 = *(v0 + 384);
    v2 = *(v0 + 328);
    v3 = *(v0 + 336);
    v4 = *(v0 + 272);
    (*(v0 + 608))(*(v0 + 520), *(v0 + 488));
    goto LABEL_10;
  }

  v21 = *(v0 + 528);
  v60 = *(v0 + 472);
  v62 = *(v0 + 480);
  v23 = *(v0 + 456);
  v22 = *(v0 + 464);

  objc_autoreleasePoolPop(v6);
  (*(v22 + 32))(v62, v60, v23);
  v7(v21, v8, v9);

  v24 = sub_22B36050C();
  v25 = sub_22B360D2C();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 608);
  v28 = *(v0 + 528);
  v29 = *(v0 + 488);
  if (v26)
  {
    v65 = *(v0 + 608);
    v31 = *(v0 + 288);
    v30 = *(v0 + 296);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v68 = v33;
    *v32 = 136380675;
    *(v32 + 4) = sub_22B1A7B20(v31, v30, &v68);
    _os_log_impl(&dword_22B116000, v24, v25, "Returning cached energy guidance for %{private}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23188F650](v33, -1, -1);
    MEMORY[0x23188F650](v32, -1, -1);

    v65(v28, v29);
  }

  else
  {

    v27(v28, v29);
  }

  v37 = *(v0 + 408);
  v38 = *(v0 + 416);
  v39 = *(v0 + 400);
  (*(*(v0 + 440) + 104))(*(v0 + 448), *MEMORY[0x277D17F20], *(v0 + 432));
  sub_22B35E31C();
  if ((*(v38 + 48))(v39, 1, v37) == 1)
  {
    v40 = *(v0 + 456);
    v41 = *(v0 + 464);
    v43 = *(v0 + 440);
    v42 = *(v0 + 448);
    v44 = *(v0 + 432);
    v63 = *(v0 + 480);
    v66 = *(v0 + 400);
    v1 = *(v0 + 384);
    v46 = *(v0 + 328);
    v45 = *(v0 + 336);
    v4 = *(v0 + 272);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v63, v40);
    sub_22B123284(v66, &qword_27D8BA3B0, &unk_22B364610);
    v47 = *(v45 + 56);
    v47(v4, 1, 1, v46);
    v47(v4 + *(v1 + 20), 1, 1, v46);
    goto LABEL_11;
  }

  (*(*(v0 + 416) + 32))(*(v0 + 424), *(v0 + 400), *(v0 + 408));
  v48 = sub_22B35E1AC();
  *(v0 + 640) = v48;
  if (!v48)
  {
    v51 = *(v0 + 464);
    v64 = *(v0 + 456);
    v67 = *(v0 + 480);
    v52 = *(v0 + 440);
    v53 = *(v0 + 424);
    v59 = *(v0 + 432);
    v61 = *(v0 + 448);
    v55 = *(v0 + 408);
    v54 = *(v0 + 416);
    v1 = *(v0 + 384);
    v57 = *(v0 + 328);
    v56 = *(v0 + 336);
    v4 = *(v0 + 272);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    (*(v54 + 8))(v53, v55);
    (*(v52 + 8))(v61, v59);
    (*(v51 + 8))(v67, v64);
    v58 = *(v56 + 56);
    v58(v4, 1, 1, v57);
    v58(v4 + *(v1 + 20), 1, 1, v57);
    goto LABEL_11;
  }

  *(v0 + 648) = sub_22B35E25C();
  *(v0 + 656) = v49;
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v50 = qword_28140BD80;
  *(v0 + 664) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B19EA28, v50, 0);
}

uint64_t sub_22B19E870()
{
  v1 = v0[48];
  v2 = v0[41];
  v3 = v0[34];
  v4 = *(v0[42] + 56);
  v4(v3, 1, 1, v2);
  v4(v3 + *(v1 + 20), 1, 1, v2);
  *(v3 + *(v1 + 24)) = 2;

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B19EA28()
{
  v1 = v0[83];
  v2 = v0[47];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[38];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[84] = v7;
  v0[85] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_22B19EAF4, v5, 0);
}

uint64_t sub_22B19EAF4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v5 = *(v0 + 320);
  sub_22B19AB60(*(v0 + 280), *(v0 + 640), *(v0 + 648), *(v0 + 656), v2, *(v0 + 754), v1);

  v6 = *(v4 + 8);
  *(v0 + 688) = v6;
  *(v0 + 696) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  sub_22B170BE0(v1, v5, &qword_27D8BA340, &qword_22B363FB0);
  v7 = *(v4 + 48);
  *(v0 + 704) = v7;
  *(v0 + 712) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v5, 1, v3) == 1)
  {
    v27 = *(v0 + 480);
    v8 = *(v0 + 456);
    v9 = *(v0 + 464);
    v11 = *(v0 + 440);
    v10 = *(v0 + 448);
    v13 = *(v0 + 424);
    v12 = *(v0 + 432);
    v15 = *(v0 + 408);
    v14 = *(v0 + 416);
    v16 = *(v0 + 320);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v27, v8);
    sub_22B123284(v16, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B1A1FF4(*(v0 + 392), *(v0 + 272));

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 368);
    v20 = *(v0 + 328);
    v21 = *(v0 + 336);
    v22 = *(v0 + 320);
    v23 = *(v21 + 32);
    *(v0 + 720) = v23;
    *(v0 + 728) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v19, v22, v20);
    v24 = swift_task_alloc();
    *(v0 + 736) = v24;
    *v24 = v0;
    v24[1] = sub_22B19EE58;
    v25 = *(v0 + 296);
    v26 = *(v0 + 288);

    return sub_22B198B80(v26, v25);
  }
}

uint64_t sub_22B19EE58(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  v5 = swift_task_alloc();
  v3[93] = v5;
  *v5 = v4;
  v5[1] = sub_22B19EFD4;
  v6 = v3[53];
  v7 = v3[39];

  return sub_22B198F5C(v7, v6, a1);
}

uint64_t sub_22B19EFD4()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x2822009F8](sub_22B19F0E4, v1, 0);
}

uint64_t sub_22B19F0E4()
{
  v87 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  if ((*(v0 + 704))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 464);
    v79 = *(v0 + 456);
    v82 = *(v0 + 480);
    v5 = *(v0 + 440);
    v75 = *(v0 + 448);
    v6 = *(v0 + 424);
    v71 = *(v0 + 432);
    v8 = *(v0 + 408);
    v7 = *(v0 + 416);
    v9 = *(v0 + 368);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    v3(v9, v1);
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v75, v71);
    (*(v4 + 8))(v82, v79);
    sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
LABEL_5:
    sub_22B1A1FF4(*(v0 + 392), *(v0 + 272));
    goto LABEL_12;
  }

  (*(v0 + 720))(*(v0 + 360), v2, v1);
  sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    v10 = *(v0 + 688);
    v11 = *(v0 + 464);
    v80 = *(v0 + 456);
    v83 = *(v0 + 480);
    v12 = *(v0 + 440);
    v72 = *(v0 + 432);
    v76 = *(v0 + 448);
    v68 = *(v0 + 424);
    v14 = *(v0 + 408);
    v13 = *(v0 + 416);
    v16 = *(v0 + 360);
    v15 = *(v0 + 368);
    v17 = *(v0 + 328);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    v10(v16, v17);
    v10(v15, v17);
    (*(v13 + 8))(v68, v14);
    (*(v12 + 8))(v76, v72);
    (*(v11 + 8))(v83, v80);
    goto LABEL_5;
  }

  (*(v0 + 592))(*(v0 + 512), *(v0 + 584), *(v0 + 488));
  v18 = sub_22B36050C();
  v19 = sub_22B360D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22B116000, v18, v19, "Grid Data stale and aged out. Not eligible for notification usage", v20, 2u);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v21 = *(v0 + 672);
  v22 = *(v0 + 608);
  v77 = *(v0 + 592);
  v66 = *(v0 + 584);
  v24 = *(v0 + 504);
  v23 = *(v0 + 512);
  v25 = *(v0 + 488);
  v84 = *(v0 + 360);
  v26 = *(v0 + 352);
  v69 = *(v0 + 368);
  v73 = *(v0 + 344);
  v27 = *(v0 + 328);

  v22(v23, v25);
  v77(v24, v66, v25);
  v21(v26, v69, v27);
  v21(v73, v84, v27);
  v28 = sub_22B36050C();
  v59 = sub_22B360D1C();
  log = v28;
  v29 = os_log_type_enabled(v28, v59);
  v30 = *(v0 + 688);
  v65 = *(v0 + 608);
  v31 = *(v0 + 480);
  v62 = *(v0 + 488);
  v63 = *(v0 + 504);
  v33 = *(v0 + 456);
  v32 = *(v0 + 464);
  v34 = *(v0 + 440);
  v81 = *(v0 + 432);
  v85 = *(v0 + 448);
  v74 = *(v0 + 424);
  v78 = *(v0 + 416);
  v70 = *(v0 + 408);
  v67 = *(v0 + 392);
  v61 = *(v0 + 368);
  v60 = *(v0 + 360);
  v36 = *(v0 + 344);
  v35 = *(v0 + 352);
  v37 = *(v0 + 328);
  if (v29)
  {
    v54 = *(v0 + 624);
    v55 = *(v0 + 632);
    v58 = *(v0 + 480);
    v38 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v86 = v53;
    *v38 = 136315394;
    sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v56 = v34;
    v57 = v32;
    v39 = sub_22B36131C();
    v41 = v40;
    v30(v35, v37);
    v42 = sub_22B1A7B20(v39, v41, &v86);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = sub_22B36131C();
    v45 = v44;
    v30(v36, v37);
    v46 = sub_22B1A7B20(v43, v45, &v86);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_22B116000, log, v59, "nextStartDate: %s vs ageOutDate: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v53, -1, -1);
    MEMORY[0x23188F650](v38, -1, -1);
    sub_22B11EDC0(v54, v55);

    v65(v63, v62);
    v30(v60, v37);
    v30(v61, v37);
    sub_22B1A2058(v67, type metadata accessor for NextEnergyWindow);
    (*(v78 + 8))(v74, v70);
    (*(v56 + 8))(v85, v81);
    (*(v57 + 8))(v58, v33);
  }

  else
  {
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));

    v30(v36, v37);
    v30(v35, v37);
    v65(v63, v62);
    v30(v60, v37);
    v30(v61, v37);
    sub_22B1A2058(v67, type metadata accessor for NextEnergyWindow);
    (*(v78 + 8))(v74, v70);
    (*(v34 + 8))(v85, v81);
    (*(v32 + 8))(v31, v33);
  }

  v47 = *(v0 + 384);
  v48 = *(v0 + 328);
  v49 = *(v0 + 272);
  v50 = *(*(v0 + 336) + 56);
  v50(v49, 1, 1, v48);
  v50(v49 + *(v47 + 20), 1, 1, v48);
  *(v49 + *(v47 + 24)) = 2;
LABEL_12:

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_22B19F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[38] = a5;
  v6[39] = v5;
  v6[36] = a3;
  v6[37] = a4;
  v6[34] = a1;
  v6[35] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v6[42] = v7;
  v6[43] = *(v7 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA528, &unk_22B364D28);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3B0, &unk_22B364610);
  v6[51] = swift_task_alloc();
  v8 = sub_22B35E1DC();
  v6[52] = v8;
  v6[53] = *(v8 - 8);
  v6[54] = swift_task_alloc();
  v9 = sub_22B35E26C();
  v6[55] = v9;
  v6[56] = *(v9 - 8);
  v6[57] = swift_task_alloc();
  v10 = sub_22B35E33C();
  v6[58] = v10;
  v6[59] = *(v10 - 8);
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v11 = sub_22B36052C();
  v6[62] = v11;
  v6[63] = *(v11 - 8);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v12 = sub_22B35E20C();
  v6[70] = v12;
  v6[71] = *(v12 - 8);
  v6[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B19FCB8, v5, 0);
}

uint64_t sub_22B19FCB8()
{
  v41 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v35 = *MEMORY[0x277D17EE8];
  v34 = *(v2 + 104);
  v34(v1);

  v7 = sub_22B35E1FC();
  v8 = *(v2 + 8);
  v8(v1, v3);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v7;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  v9 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v10 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v10;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 88) = v9;
  swift_beginAccess();
  v11 = *(v4 + 120);

  LOBYTE(v6) = sub_22B325AD4((v0 + 88), v11);
  sub_22B172074(v0 + 16);

  if (v6)
  {
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 576);
    v13 = *(v0 + 560);
    v14 = qword_28140BDC8;
    *(v0 + 584) = qword_28140BDC8;
    (v34)(v12, v35, v13);
    *(v0 + 776) = sub_22B35E1FC();
    v8(v12, v13);

    return MEMORY[0x2822009F8](sub_22B1A01A0, v14, 0);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 552);
    v16 = *(v0 + 496);
    v17 = *(v0 + 504);
    v18 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v17 + 16))(v15, v18, v16);
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "API Misuse! Enable caching before using this API", v21, 2u);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    v22 = *(v0 + 552);
    v23 = *(v0 + 496);
    v24 = *(v0 + 504);
    v25 = *(v0 + 272);

    (*(v24 + 8))(v22, v23);
    v26 = [objc_opt_self() processInfo];
    v27 = [v26 processName];

    v28 = sub_22B36084C();
    v30 = v29;

    v36 = 0;
    v37 = 7;
    v38 = v28;
    v39 = v30;
    v40 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v36);

    EnergyWindow = type metadata accessor for NextEnergyWindow(0);
    (*(*(EnergyWindow - 8) + 56))(v25, 1, 1, EnergyWindow);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22B1A01A0()
{
  v32 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 544);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 592) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 600) = v5;
  *(v0 + 608) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 776);
    v30 = *(v0 + 544);
    v9 = *(v0 + 496);
    v10 = *(v0 + 504);
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136381187;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v31);
    *(v13 + 12) = 512;
    *(v13 + 14) = v8;
    *(v13 + 16) = 1024;
    *(v13 + 18) = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Get energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v15 = *(v10 + 8);
    v15(v30, v9);
  }

  else
  {
    v16 = *(v0 + 544);
    v17 = *(v0 + 496);
    v18 = *(v0 + 504);

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  *(v0 + 616) = v15;
  v19 = *(*(v0 + 584) + 112);
  if (v19)
  {
    v20 = *(v0 + 776);
    v21 = *(v0 + 312);
    v23 = *(v0 + 288);
    v22 = *(v0 + 296);
    v24 = *(v19 + 48);
    v25 = swift_task_alloc();
    *(v25 + 16) = v19;
    *(v25 + 24) = v23;
    *(v25 + 32) = v22;
    *(v25 + 40) = v20;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0xE000000000000000;
    *(v25 + 64) = 0;
    *(v25 + 72) = 0xE000000000000000;
    *(v25 + 80) = 0;
    *(v25 + 88) = 0xE000000000000000;
    v26 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA530, &qword_22B364D38);
    sub_22B360E7C();
    *(v0 + 624) = 0;

    *(v0 + 632) = *(v0 + 256);
    v27 = sub_22B1A04B0;
    v28 = v21;
  }

  else
  {
    v28 = *(v0 + 312);
    v27 = sub_22B1A0BCC;
  }

  return MEMORY[0x2822009F8](v27, v28, 0);
}

uint64_t sub_22B1A04B0()
{
  v60 = v0;
  if (*(v0 + 640) >> 60 == 15)
  {
    v1 = *(v0 + 272);
LABEL_20:
    EnergyWindow = type metadata accessor for NextEnergyWindow(0);
    (*(*(EnergyWindow - 8) + 56))(v1, 1, 1, EnergyWindow);

    v53 = *(v0 + 8);

    return v53();
  }

  v2 = *(v0 + 624);
  v3 = MEMORY[0x23188EEB0]();
  sub_22B35D7FC();
  swift_allocObject();
  sub_22B35D7EC();
  sub_22B1A1F70(&qword_27D8BA538, MEMORY[0x277D17FB0], MEMORY[0x277D17FC0]);
  sub_22B35D7DC();
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 496);
  if (v2)
  {
    v7 = *(v0 + 528);

    objc_autoreleasePoolPop(v3);
    v4(v7, v5, v6);
    v8 = v2;
    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 640);
    v13 = *(v0 + 632);
    if (v11)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_22B116000, v9, v10, "Error unarchiving guidance data from cache. %@", v14, 0xCu);
      sub_22B123284(v15, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v15, -1, -1);
      MEMORY[0x23188F650](v14, -1, -1);
      sub_22B11EDC0(v13, v12);
    }

    else
    {

      sub_22B11EDC0(v13, v12);
    }

    v1 = *(v0 + 272);
    (*(v0 + 616))(*(v0 + 528), *(v0 + 496));
    goto LABEL_20;
  }

  v18 = *(v0 + 536);
  v55 = *(v0 + 480);
  v56 = *(v0 + 488);
  v20 = *(v0 + 464);
  v19 = *(v0 + 472);

  objc_autoreleasePoolPop(v3);
  (*(v19 + 32))(v56, v55, v20);
  v4(v18, v5, v6);

  v21 = sub_22B36050C();
  v22 = sub_22B360D2C();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 616);
  v25 = *(v0 + 536);
  v26 = *(v0 + 496);
  if (v23)
  {
    v57 = *(v0 + 616);
    v28 = *(v0 + 288);
    v27 = *(v0 + 296);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v59 = v30;
    *v29 = 136380675;
    *(v29 + 4) = sub_22B1A7B20(v28, v27, &v59);
    _os_log_impl(&dword_22B116000, v21, v22, "Returning cached energy guidance for %{private}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23188F650](v30, -1, -1);
    MEMORY[0x23188F650](v29, -1, -1);

    v57(v25, v26);
  }

  else
  {

    v24(v25, v26);
  }

  v31 = *(v0 + 416);
  v32 = *(v0 + 424);
  v33 = *(v0 + 408);
  (*(*(v0 + 448) + 104))(*(v0 + 456), *MEMORY[0x277D17F20], *(v0 + 440));
  sub_22B35E31C();
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    v34 = *(v0 + 488);
    v35 = *(v0 + 464);
    v36 = *(v0 + 472);
    v38 = *(v0 + 448);
    v37 = *(v0 + 456);
    v39 = *(v0 + 440);
    v40 = *(v0 + 408);
    v1 = *(v0 + 272);
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));
    (*(v38 + 8))(v37, v39);
    (*(v36 + 8))(v34, v35);
    sub_22B123284(v40, &qword_27D8BA3B0, &unk_22B364610);
    goto LABEL_20;
  }

  (*(*(v0 + 424) + 32))(*(v0 + 432), *(v0 + 408), *(v0 + 416));
  v41 = sub_22B35E1AC();
  *(v0 + 648) = v41;
  if (!v41)
  {
    v58 = *(v0 + 488);
    v44 = *(v0 + 464);
    v45 = *(v0 + 472);
    v47 = *(v0 + 448);
    v46 = *(v0 + 456);
    v49 = *(v0 + 432);
    v48 = *(v0 + 440);
    v51 = *(v0 + 416);
    v50 = *(v0 + 424);
    v1 = *(v0 + 272);
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));
    (*(v50 + 8))(v49, v51);
    (*(v47 + 8))(v46, v48);
    (*(v45 + 8))(v58, v44);
    goto LABEL_20;
  }

  *(v0 + 656) = sub_22B35E25C();
  *(v0 + 664) = v42;
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v43 = qword_28140BD80;
  *(v0 + 672) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B1A0D80, v43, 0);
}

uint64_t sub_22B1A0BCC()
{
  v1 = *(v0 + 272);
  EnergyWindow = type metadata accessor for NextEnergyWindow(0);
  (*(*(EnergyWindow - 8) + 56))(v1, 1, 1, EnergyWindow);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B1A0D80()
{
  v1 = v0[84];
  v2 = v0[48];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[39];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[85] = v7;
  v0[86] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_22B1A0E4C, v5, 0);
}

uint64_t sub_22B1A0E4C()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[42];
  v5 = v0[43];
  sub_22B19C32C(v0[35], v0[81], v0[82], v0[83], v3, v0[38], v2);

  v6 = *(v5 + 8);
  v0[87] = v6;
  v0[88] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  sub_22B170BE0(v2, v1, &qword_27D8BA528, &unk_22B364D28);
  EnergyWindow = type metadata accessor for NextEnergyWindow(0);
  v0[89] = EnergyWindow;
  v8 = *(EnergyWindow - 8);
  v0[90] = v8;
  if ((*(v8 + 48))(v1, 1, EnergyWindow) == 1)
  {
    v9 = v0[59];
    v42 = v0[58];
    v43 = v0[61];
    v11 = v0[56];
    v10 = v0[57];
    v13 = v0[54];
    v12 = v0[55];
    v15 = v0[52];
    v14 = v0[53];
    v16 = v0[49];
    v17 = v0[43];
    v44 = v0[41];
    v45 = v0[42];
    sub_22B11EDC0(v0[79], v0[80]);
    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v43, v42);
    sub_22B123284(v16, &qword_27D8BA528, &unk_22B364D28);
    (*(v17 + 56))(v44, 1, 1, v45);
LABEL_5:
    sub_22B123284(v0[41], &qword_27D8BA340, &qword_22B363FB0);
    sub_22B170CD0(v0[50], v0[34], &qword_27D8BA528, &unk_22B364D28);

    v32 = v0[1];

    return v32();
  }

  v18 = v0[49];
  v19 = v0[42];
  v20 = v0[43];
  v21 = v0[41];
  sub_22B170BE0(v18, v21, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B1A2058(v18, type metadata accessor for NextEnergyWindow);
  v22 = *(v20 + 48);
  v0[91] = v22;
  v0[92] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v22(v21, 1, v19) == 1)
  {
    v23 = v0[61];
    v24 = v0[58];
    v25 = v0[59];
    v27 = v0[56];
    v26 = v0[57];
    v29 = v0[54];
    v28 = v0[55];
    v30 = v0[52];
    v31 = v0[53];
    sub_22B11EDC0(v0[79], v0[80]);
    (*(v31 + 8))(v29, v30);
    (*(v27 + 8))(v26, v28);
    (*(v25 + 8))(v23, v24);
    goto LABEL_5;
  }

  v34 = v0[47];
  v35 = v0[42];
  v36 = v0[43];
  v37 = v0[41];
  v38 = *(v36 + 32);
  v0[93] = v38;
  v0[94] = (v36 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v38(v34, v37, v35);
  v39 = swift_task_alloc();
  v0[95] = v39;
  *v39 = v0;
  v39[1] = sub_22B1A1310;
  v41 = v0[36];
  v40 = v0[37];

  return sub_22B198B80(v41, v40);
}

uint64_t sub_22B1A1310(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  v5 = swift_task_alloc();
  v3[96] = v5;
  *v5 = v4;
  v5[1] = sub_22B1A148C;
  v6 = v3[54];
  v7 = v3[40];

  return sub_22B198F5C(v7, v6, a1);
}

uint64_t sub_22B1A148C()
{
  v1 = *(*v0 + 312);

  return MEMORY[0x2822009F8](sub_22B1A159C, v1, 0);
}

uint64_t sub_22B1A159C()
{
  v83 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  if ((*(v0 + 728))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 696);
    v4 = *(v0 + 472);
    v75 = *(v0 + 464);
    v78 = *(v0 + 488);
    v5 = *(v0 + 448);
    v71 = *(v0 + 456);
    v6 = *(v0 + 432);
    v67 = *(v0 + 440);
    v8 = *(v0 + 416);
    v7 = *(v0 + 424);
    v9 = *(v0 + 376);
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));
    v3(v9, v1);
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v71, v67);
    (*(v4 + 8))(v78, v75);
    sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
LABEL_5:
    sub_22B170CD0(*(v0 + 400), *(v0 + 272), &qword_27D8BA528, &unk_22B364D28);
    goto LABEL_12;
  }

  (*(v0 + 744))(*(v0 + 368), v2, v1);
  sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    v10 = *(v0 + 696);
    v11 = *(v0 + 472);
    v76 = *(v0 + 464);
    v79 = *(v0 + 488);
    v12 = *(v0 + 448);
    v68 = *(v0 + 440);
    v72 = *(v0 + 456);
    v64 = *(v0 + 432);
    v14 = *(v0 + 416);
    v13 = *(v0 + 424);
    v16 = *(v0 + 368);
    v15 = *(v0 + 376);
    v17 = *(v0 + 336);
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));
    v10(v16, v17);
    v10(v15, v17);
    (*(v13 + 8))(v64, v14);
    (*(v12 + 8))(v72, v68);
    (*(v11 + 8))(v79, v76);
    goto LABEL_5;
  }

  (*(v0 + 600))(*(v0 + 520), *(v0 + 592), *(v0 + 496));
  v18 = sub_22B36050C();
  v19 = sub_22B360D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22B116000, v18, v19, "Grid Data stale and aged out. Not eligible for notification usage", v20, 2u);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v21 = *(v0 + 680);
  v22 = *(v0 + 616);
  v73 = *(v0 + 600);
  v62 = *(v0 + 592);
  v23 = *(v0 + 520);
  v24 = *(v0 + 512);
  v25 = *(v0 + 496);
  v80 = *(v0 + 368);
  v26 = *(v0 + 360);
  v65 = *(v0 + 376);
  v69 = *(v0 + 352);
  v27 = *(v0 + 336);

  v22(v23, v25);
  v73(v24, v62, v25);
  v21(v26, v65, v27);
  v21(v69, v80, v27);
  v28 = sub_22B36050C();
  v55 = sub_22B360D1C();
  log = v28;
  v29 = os_log_type_enabled(v28, v55);
  v30 = *(v0 + 696);
  v61 = *(v0 + 616);
  v31 = *(v0 + 488);
  v58 = *(v0 + 496);
  v59 = *(v0 + 512);
  v33 = *(v0 + 464);
  v32 = *(v0 + 472);
  v34 = *(v0 + 448);
  v77 = *(v0 + 440);
  v81 = *(v0 + 456);
  v70 = *(v0 + 432);
  v74 = *(v0 + 424);
  v66 = *(v0 + 416);
  v63 = *(v0 + 400);
  v57 = *(v0 + 376);
  v56 = *(v0 + 368);
  v36 = *(v0 + 352);
  v35 = *(v0 + 360);
  v37 = *(v0 + 336);
  if (v29)
  {
    v50 = *(v0 + 632);
    v51 = *(v0 + 640);
    v54 = *(v0 + 488);
    v38 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v82 = v49;
    *v38 = 136315394;
    sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v52 = v34;
    v53 = v32;
    v39 = sub_22B36131C();
    v41 = v40;
    v30(v35, v37);
    v42 = sub_22B1A7B20(v39, v41, &v82);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = sub_22B36131C();
    v45 = v44;
    v30(v36, v37);
    v46 = sub_22B1A7B20(v43, v45, &v82);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_22B116000, log, v55, "nextStartDate: %s vs ageOutDate: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v49, -1, -1);
    MEMORY[0x23188F650](v38, -1, -1);
    sub_22B11EDC0(v50, v51);

    v61(v59, v58);
    v30(v56, v37);
    v30(v57, v37);
    sub_22B123284(v63, &qword_27D8BA528, &unk_22B364D28);
    (*(v74 + 8))(v70, v66);
    (*(v52 + 8))(v81, v77);
    (*(v53 + 8))(v54, v33);
  }

  else
  {
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));

    v30(v36, v37);
    v30(v35, v37);
    v61(v59, v58);
    v30(v56, v37);
    v30(v57, v37);
    sub_22B123284(v63, &qword_27D8BA528, &unk_22B364D28);
    (*(v74 + 8))(v70, v66);
    (*(v34 + 8))(v81, v77);
    (*(v32 + 8))(v31, v33);
  }

  (*(*(v0 + 720) + 56))(*(v0 + 272), 1, 1, *(v0 + 712));
LABEL_12:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_22B1A1D88()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B1A1E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22B1A1E70(uint64_t result, int a2, int a3)
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

unint64_t sub_22B1A1ED4()
{
  result = qword_281409D58[0];
  if (!qword_281409D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281409D58);
  }

  return result;
}

uint64_t sub_22B1A1F28@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22B1A1F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B1A1FF4(uint64_t a1, uint64_t a2)
{
  EnergyWindow = type metadata accessor for NextEnergyWindow(0);
  (*(*(EnergyWindow - 8) + 32))(a2, a1, EnergyWindow);
  return a2;
}

uint64_t sub_22B1A2058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B1A20DC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B35EA1C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_22B35DE9C();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_22B35D8BC();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v7 = sub_22B35DF1C();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A2318, 0, 0);
}

uint64_t sub_22B1A2318()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[6];
  v5 = [v4 uniqueIdentifier];
  sub_22B35DEFC();

  sub_22B35DE6C();
  sub_22B35DDCC();
  (*(v3 + 8))(v1, v2);
  sub_22B35DE6C();
  sub_22B35D88C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA558, &qword_22B364D60);
  v6 = sub_22B35EA4C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22B3634B0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277D17650], v6);
  v0[23] = sub_22B316178(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  v10 = [v4 currentUser];
  v11 = [v4 owner];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      sub_22B1972C4();
      v13 = sub_22B360FBC();

      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v14 = MEMORY[0x277D175C0];
      goto LABEL_10;
    }

    v12 = v10;
  }

  else if (!v11)
  {
    goto LABEL_6;
  }

LABEL_9:
  v14 = MEMORY[0x277D175C8];
LABEL_10:
  (*(v0[11] + 104))(v0[12], *v14, v0[10]);
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_22B1A2614;
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[12];

  return sub_22B132EB8(v16, v17, v18);
}

uint64_t sub_22B1A2614(uint64_t a1)
{
  v3 = *v2;
  v14 = *(*v2 + 176);
  v4 = *(*v2 + 168);
  v13 = *(*v2 + 160);
  v12 = *(*v2 + 152);
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v7 = *(*v2 + 96);
  v8 = *(*v2 + 88);
  v9 = *(*v2 + 80);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v14, v13);
  if (v1)
  {
    v10 = sub_22B1A2A40;
  }

  else
  {
    v10 = sub_22B1A2870;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22B1A2870()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_22B116000, v5, v6, "Downloaded %ld digests", v8, 0xCu);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B1A2A40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B1A2AEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22B35EA1C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22B35DF1C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A2C0C, 0, 0);
}

uint64_t sub_22B1A2C0C()
{
  v1 = v0[4];
  v2 = [v1 uniqueIdentifier];
  sub_22B35DEFC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA558, &qword_22B364D60);
  v3 = sub_22B35EA4C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B3634B0;
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D17650], v3);
  v7 = sub_22B316178(v6);
  v0[11] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = [v1 currentUser];
  v9 = [v1 owner];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      sub_22B1972C4();
      v11 = sub_22B360FBC();

      if ((v11 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v12 = MEMORY[0x277D175C0];
      goto LABEL_10;
    }

    v10 = v8;
  }

  else if (!v9)
  {
    goto LABEL_6;
  }

LABEL_9:
  v12 = MEMORY[0x277D175C8];
LABEL_10:
  (*(v0[6] + 104))(v0[7], *v12, v0[5]);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_22B1A2EA8;
  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[2];

  return sub_22B130DA0(v14, v16, v7, v15);
}

uint64_t sub_22B1A2EA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = v1;

  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  (*(v4[6] + 8))(v4[7], v4[5]);
  (*(v7 + 8))(v6, v8);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1A30DC, 0, 0);
  }

  else
  {

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_22B1A30DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t EKEnergySite.save(reset:tokenUpdate:)(char a1, char a2)
{
  *(v3 + 88) = v2;
  *(v3 + 409) = a2;
  *(v3 + 408) = a1;
  v4 = sub_22B35EDDC();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  v5 = sub_22B36052C();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_22B35DE9C();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v7 = sub_22B36037C();
  *(v3 + 200) = v7;
  *(v3 + 208) = *(v7 - 8);
  *(v3 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970);
  *(v3 + 224) = swift_task_alloc();
  v8 = type metadata accessor for CDEnergySite(0);
  *(v3 + 232) = v8;
  *(v3 + 240) = *(v8 - 8);
  *(v3 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A3418, 0, 0);
}

uint64_t sub_22B1A3418()
{
  if (*(v0 + 408))
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 88);
    v3 = *(v0 + 409);
    v4 = sub_22B35EDCC();
    *(v0 + 64) = xmmword_22B364D70;
    v5 = MEMORY[0x23188EEB0](v4);
    sub_22B1A4FE0(v2, v1, 1, v3, (v0 + 64), (v0 + 80));
    objc_autoreleasePoolPop(v5);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    *(v0 + 304) = v9;
    *(v0 + 312) = v10;
    if (v10 >> 60 == 15)
    {
      v11 = *(v0 + 104);
      v12 = *(v0 + 112);
      v13 = *(v0 + 96);
      sub_22B11EDC0(v9, v10);
      (*(v11 + 8))(v12, v13);

      v14 = *(v0 + 8);

      return v14();
    }

    sub_22B144B30(v9, v10);
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v6 = qword_28140BDD0;
    *(v0 + 320) = qword_28140BDD0;
    *(v0 + 328) = sub_22B35F3AC();
    *(v0 + 336) = v15;
    *(v0 + 344) = sub_22B35F04C();
    *(v0 + 352) = v16;
    v8 = sub_22B1A43D4;
  }

  else
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v6 = qword_28140BDD0;
    *(v0 + 256) = qword_28140BDD0;
    *(v0 + 264) = sub_22B35F3AC();
    *(v0 + 272) = v7;
    v8 = sub_22B1A373C;
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

uint64_t sub_22B1A373C()
{
  sub_22B141AE8(*(v0 + 264), *(v0 + 272), 0, *(v0 + 224));

  return MEMORY[0x2822009F8](sub_22B1A37BC, 0, 0);
}

uint64_t sub_22B1A37BC()
{
  v1 = *(v0 + 224);
  if ((*(*(v0 + 240) + 48))(v1, 1, *(v0 + 232)) == 1)
  {
    sub_22B123284(v1, &qword_27D8BA8A0, &unk_22B365970);
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  sub_22B144DC0(v1, *(v0 + 248));
  sub_22B35EAFC();
  v2 = sub_22B35EAEC();
  *(v0 + 280) = v2;
  v3 = v2;
  v4 = sub_22B35F14C();
  if (!v5)
  {
    v34 = *(v0 + 248);

    v11 = v34;
    goto LABEL_14;
  }

  v6 = v5;
  if (v4 == 0x4E454B4F544B43 && v5 == 0xE700000000000000)
  {
    goto LABEL_13;
  }

  v8 = v4;
  if (sub_22B36134C())
  {
    goto LABEL_13;
  }

  v9 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
LABEL_13:
    v10 = *(v0 + 248);

    v11 = v10;
LABEL_14:
    sub_22B16F530(v11);
    goto LABEL_15;
  }

  sub_22B36034C();
  *(v0 + 288) = 0;
  *(v0 + 410) = sub_22B36035C() & 1;
  v35 = sub_22B35EEBC();
  if (v35)
  {
    if (qword_28140A0B8 != -1)
    {
      swift_once();
    }

    v33 = qword_28140BD08;
    *(v0 + 296) = qword_28140BD08;
    v32 = sub_22B1A3DF4;
    goto LABEL_27;
  }

  if (*(v0 + 410) == 1 && (*(v0 + 409) & 1) == 0)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 144);
    v37 = *(v0 + 120);
    v38 = *(v0 + 128);
    v39 = __swift_project_value_buffer(v37, qword_28140BD10);
    swift_beginAccess();
    (*(v38 + 16))(v36, v39, v37);
    v40 = sub_22B36050C();
    v41 = sub_22B360D1C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22B116000, v40, v41, "Cannot save site with expired token in order to avoid mangling", v42, 2u);
      MEMORY[0x23188F650](v42, -1, -1);
    }

    v43 = *(v0 + 280);
    v44 = *(v0 + 248);
    v46 = *(v0 + 208);
    v45 = *(v0 + 216);
    v47 = *(v0 + 200);
    v48 = *(v0 + 144);
    v49 = *(v0 + 120);
    v50 = *(v0 + 128);

    (*(v50 + 8))(v48, v49);
    sub_22B134CDC();
    swift_allocError();
    *v51 = 23;
    swift_willThrow();

    (*(v46 + 8))(v45, v47);
    sub_22B16F530(v44);
    goto LABEL_18;
  }

  v52 = *(v0 + 280);
  v53 = *(v0 + 248);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  sub_22B16F530(v53);
  v12 = *(v0 + 288);
LABEL_16:
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 409);
  v16 = *(v0 + 408);
  v17 = sub_22B35EDCC();
  *(v0 + 64) = xmmword_22B364D70;
  v18 = MEMORY[0x23188EEB0](v17);
  sub_22B1A4FE0(v14, v13, v16, v15, (v0 + 64), (v0 + 80));
  if (v12)
  {
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    v21 = *(v0 + 96);
    objc_autoreleasePoolPop(v18);
    sub_22B11EDC0(*(v0 + 64), *(v0 + 72));
    (*(v19 + 8))(v20, v21);
LABEL_18:

    v22 = *(v0 + 8);
LABEL_21:

    return v22();
  }

  objc_autoreleasePoolPop(v18);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  *(v0 + 304) = v23;
  *(v0 + 312) = v24;
  if (v24 >> 60 == 15)
  {
    v25 = *(v0 + 104);
    v26 = *(v0 + 112);
    v27 = *(v0 + 96);
    sub_22B11EDC0(v23, v24);
    (*(v25 + 8))(v26, v27);

    v22 = *(v0 + 8);
    goto LABEL_21;
  }

  sub_22B144B30(v23, v24);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v29 = qword_28140BDD0;
  *(v0 + 320) = qword_28140BDD0;
  *(v0 + 328) = sub_22B35F3AC();
  *(v0 + 336) = v30;
  *(v0 + 344) = sub_22B35F04C();
  *(v0 + 352) = v31;
  v32 = sub_22B1A43D4;
  v33 = v29;
LABEL_27:

  return MEMORY[0x2822009F8](v32, v33, 0);
}

uint64_t sub_22B1A3E1C(uint64_t a1)
{
  if (*(v1 + 411) != 1)
  {
LABEL_4:
    if (*(v1 + 410) != 1 || (*(v1 + 409) & 1) != 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = *(v1 + 144);
    v15 = *(v1 + 120);
    v16 = *(v1 + 128);
    v17 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v14, v17, v15);
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v18, v19, "Cannot save site with expired token in order to avoid mangling", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    v21 = *(v1 + 280);
    v22 = *(v1 + 248);
    v24 = *(v1 + 208);
    v23 = *(v1 + 216);
    v25 = *(v1 + 200);
    v26 = *(v1 + 144);
    v27 = *(v1 + 120);
    v28 = *(v1 + 128);

    (*(v28 + 8))(v26, v27);
    sub_22B134CDC();
    swift_allocError();
    *v29 = 23;
    swift_willThrow();

    (*(v24 + 8))(v23, v25);
    sub_22B16F530(v22);
    goto LABEL_16;
  }

  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  v4 = *(v1 + 152);
  sub_22B36036C();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_22B123284(*(v1 + 152), &qword_27D8BA340, &qword_22B363FB0);
    goto LABEL_4;
  }

  v5 = *(v1 + 410);
  v7 = *(v1 + 184);
  v6 = *(v1 + 192);
  v9 = *(v1 + 168);
  v8 = *(v1 + 176);
  v10 = *(v1 + 160);
  v11 = *(v1 + 409);
  (*(v9 + 32))(v6, *(v1 + 152), v10);
  sub_22B35F62C();
  sub_22B35DDCC();
  sub_22B35DE6C();
  sub_22B1A80C8(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v12 = sub_22B36074C();
  v13 = *(v9 + 8);
  v13(v8, v10);
  v13(v7, v10);
  v13(v6, v10);
  if ((v12 & ~v5 & 1) == 0 && (v11 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_14:
  v30 = *(v1 + 280);
  v31 = *(v1 + 248);
  (*(*(v1 + 208) + 8))(*(v1 + 216), *(v1 + 200));

  sub_22B16F530(v31);
  v32 = *(v1 + 288);
  v33 = *(v1 + 112);
  v34 = *(v1 + 88);
  v35 = *(v1 + 409);
  v36 = *(v1 + 408);
  v37 = sub_22B35EDCC();
  *(v1 + 64) = xmmword_22B364D70;
  v38 = MEMORY[0x23188EEB0](v37);
  sub_22B1A4FE0(v34, v33, v36, v35, (v1 + 64), (v1 + 80));
  if (v32)
  {
    v39 = *(v1 + 104);
    v40 = *(v1 + 112);
    v41 = *(v1 + 96);
    objc_autoreleasePoolPop(v38);
    sub_22B11EDC0(*(v1 + 64), *(v1 + 72));
    (*(v39 + 8))(v40, v41);
LABEL_16:

    v42 = *(v1 + 8);
LABEL_17:

    return v42();
  }

  objc_autoreleasePoolPop(v38);
  v44 = *(v1 + 64);
  v45 = *(v1 + 72);
  *(v1 + 304) = v44;
  *(v1 + 312) = v45;
  if (v45 >> 60 == 15)
  {
    v46 = *(v1 + 104);
    v47 = *(v1 + 112);
    v48 = *(v1 + 96);
    sub_22B11EDC0(v44, v45);
    (*(v46 + 8))(v47, v48);

    v42 = *(v1 + 8);
    goto LABEL_17;
  }

  sub_22B144B30(v44, v45);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v49 = qword_28140BDD0;
  *(v1 + 320) = qword_28140BDD0;
  *(v1 + 328) = sub_22B35F3AC();
  *(v1 + 336) = v50;
  *(v1 + 344) = sub_22B35F04C();
  *(v1 + 352) = v51;

  return MEMORY[0x2822009F8](sub_22B1A43D4, v49, 0);
}

uint64_t sub_22B1A43D4()
{
  v35 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 328);
    v7 = *(v0 + 336);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136380675;
    *(v12 + 4) = sub_22B1A7B20(v8, v7, &v34);
    _os_log_impl(&dword_22B116000, v5, v6, "Adding energy site for %{private}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 320);
  v18 = v17[14];
  *(v0 + 360) = v18;
  v19 = v17[15];
  *(v0 + 368) = v19;
  if (v18)
  {
    v20 = v17[16];
    *(v0 + 376) = v20;
    if (v20)
    {
      sub_22B1231A0(v18, v19);
      v21 = v20;
      v22 = swift_task_alloc();
      *(v0 + 384) = v22;
      *v22 = v0;
      v22[1] = sub_22B1A4720;
      v23 = *(v0 + 344);
      v24 = *(v0 + 352);
      v26 = *(v0 + 328);
      v25 = *(v0 + 336);
      v27 = *(v0 + 304);
      v28 = *(v0 + 312);
      v29 = *(v0 + 409);
      v37 = v18;
      v38 = v19;

      return sub_22B13C304(v26, v25, v27, v28, v23, v24, v21, v29);
    }

    sub_22B134CDC();
    v32 = swift_allocError();
    *v33 = 7;
    swift_willThrow();

    *(v0 + 400) = v32;
    v31 = sub_22B1A4A90;
  }

  else
  {

    v31 = sub_22B1A4974;
  }

  return MEMORY[0x2822009F8](v31, 0, 0);
}

uint64_t sub_22B1A4720()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_22B1A48DC;
  }

  else
  {
    v4 = sub_22B1A484C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B1A484C()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);

  return MEMORY[0x2822009F8](sub_22B1A4974, 0, 0);
}

uint64_t sub_22B1A48DC()
{
  v2 = v0[46];
  v1 = v0[47];

  v0[50] = v0[49];

  return MEMORY[0x2822009F8](sub_22B1A4A90, 0, 0);
}

uint64_t sub_22B1A4974()
{
  sub_22B11EDC0(v0[38], v0[39]);
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_22B11EDC0(v0[8], v0[9]);
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B1A4A90()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_22B11EDC0(v0[38], v0[39]);
  sub_22B11EDC0(v0[8], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t static EKEnergySite.generateSiteID(clientID:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B35DF1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F45C();

  sub_22B35F1EC();
  sub_22B35DEAC();
  v6 = sub_22B35DECC();
  (*(v3 + 8))(v5, v2);
  return v6;
}

Swift::Void __swiftcall EKEnergySite.setCKZoneName(ckZoneName:)(Swift::String ckZoneName)
{

  sub_22B35F05C();
}

Swift::Void __swiftcall EKEnergySite.resetMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA560, &unk_22B366200);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-v4];
  sub_22B35F39C();
  sub_22B35F44C();
  sub_22B35F13C();
  sub_22B35F07C();
  sub_22B35F0CC();
  v6 = sub_22B35EC2C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_22B35F17C();
  sub_22B35F25C();
  sub_22B35F27C();
  sub_22B35F29C();
  sub_22B35F15C();
  sub_22B35F09C();
  sub_22B35F0EC();
  sub_22B35F3CC();
  sub_22B35F1DC();
  sub_22B35F1BC();
  v7 = sub_22B35DE9C();
  v8 = *(*(v7 - 8) + 56);
  v8(v2, 1, 1, v7);
  sub_22B35F2DC();
  v8(v2, 1, 1, v7);
  sub_22B35F33C();
  v8(v2, 1, 1, v7);
  sub_22B35F20C();
  sub_22B35F03C();
  v8(v2, 1, 1, v7);
  sub_22B35F31C();
  v8(v2, 1, 1, v7);
  sub_22B35F35C();
  v8(v2, 1, 1, v7);
  sub_22B35F37C();
  v9[12] = 1;
  sub_22B35F2FC();
}

uint64_t sub_22B1A4FE0(void *a1, uint64_t a2, int a3, int a4, uint64_t *a5, void *a6)
{
  v223 = a6;
  v208 = a5;
  v196 = a4;
  v227 = a3;
  v242 = a2;
  v222 = sub_22B3603DC();
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v220 = &v195[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22B35EDDC();
  v233 = *(v8 - 8);
  v234 = v8;
  MEMORY[0x28223BE20](v8);
  v232 = &v195[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v231 = &v195[-v11];
  v225 = sub_22B36052C();
  v236 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v207 = &v195[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v224 = &v195[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA570, &qword_22B364DA0);
  MEMORY[0x28223BE20](v15 - 8);
  v214 = &v195[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v218 = &v195[-v18];
  v19 = sub_22B3603BC();
  v229 = *(v19 - 8);
  v230 = v19;
  MEMORY[0x28223BE20](v19);
  v202 = &v195[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v219 = &v195[-v22];
  MEMORY[0x28223BE20](v23);
  v206 = &v195[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA560, &unk_22B366200);
  MEMORY[0x28223BE20](v25 - 8);
  v210 = &v195[-v26];
  v211 = sub_22B35EC2C();
  v226 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v198 = &v195[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v197 = &v195[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA578, qword_22B364DA8);
  MEMORY[0x28223BE20](v30 - 8);
  v237 = &v195[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v32 - 8);
  v217 = &v195[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v216 = &v195[-v35];
  MEMORY[0x28223BE20](v36);
  v215 = &v195[-v37];
  MEMORY[0x28223BE20](v38);
  v228 = &v195[-v39];
  MEMORY[0x28223BE20](v40);
  v213 = &v195[-v41];
  MEMORY[0x28223BE20](v42);
  v212 = &v195[-v43];
  MEMORY[0x28223BE20](v44);
  v46 = &v195[-v45];
  MEMORY[0x28223BE20](v47);
  v49 = &v195[-v48];
  MEMORY[0x28223BE20](v50);
  v52 = &v195[-v51];
  v53 = sub_22B35DE9C();
  v240 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v205 = &v195[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55);
  v204 = &v195[-v56];
  MEMORY[0x28223BE20](v57);
  v203 = &v195[-v58];
  MEMORY[0x28223BE20](v59);
  v201 = &v195[-v60];
  MEMORY[0x28223BE20](v61);
  v200 = &v195[-v62];
  MEMORY[0x28223BE20](v63);
  v199 = &v195[-v64];
  MEMORY[0x28223BE20](v65);
  v209 = &v195[-v66];
  MEMORY[0x28223BE20](v67);
  v69 = &v195[-v68];
  MEMORY[0x28223BE20](v70);
  v239 = &v195[-v71];
  MEMORY[0x28223BE20](v72);
  v74 = &v195[-v73];
  v75 = sub_22B35F3DC();
  if (v75)
  {
    v76 = v75;
    [v75 coordinate];

    sub_22B35ED7C();
  }

  v77 = sub_22B35F3DC();
  if (v77)
  {
    v78 = v77;
    [v77 coordinate];

    sub_22B35EDAC();
  }

  sub_22B35F3FC();
  sub_22B35ED8C();
  sub_22B35F41C();
  if (v79)
  {
    sub_22B35ED9C();
  }

  sub_22B35F2AC();
  v80 = v240;
  v81 = *(v240 + 48);
  v238 = v240 + 48;
  v241 = v81;
  if (v81(v52, 1, v53) == 1)
  {
    sub_22B123284(v52, &qword_27D8BA340, &qword_22B363FB0);
    v82 = v237;
  }

  else
  {
    (*(v80 + 32))(v74, v52, v53);
    (*(v80 + 16))(v239, v74, v53);
    v82 = v237;
    sub_22B36039C();
    v83 = sub_22B3603AC();
    (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
    sub_22B35ECFC();
    (*(v80 + 8))(v74, v53);
  }

  sub_22B35F22C();
  if (v241(v49, 1, v53) == 1)
  {
    sub_22B123284(v49, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v84 = v49;
    v85 = v240;
    (*(v240 + 32))(v69, v84, v53);
    (*(v85 + 16))(v239, v69, v53);
    sub_22B36039C();
    v86 = sub_22B3603AC();
    (*(*(v86 - 8) + 56))(v82, 0, 1, v86);
    sub_22B35ECBC();
    (*(v85 + 8))(v69, v53);
  }

  sub_22B35F0FC();
  v87 = v241(v46, 1, v53);
  v88 = v226;
  if (v87 == 1)
  {
    sub_22B123284(v46, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v89 = v240;
    v90 = v209;
    (*(v240 + 32))(v209, v46, v53);
    (*(v89 + 16))(v239, v90, v53);
    sub_22B36039C();
    v91 = sub_22B3603AC();
    (*(*(v91 - 8) + 56))(v82, 0, 1, v91);
    sub_22B35EB6C();
    (*(v89 + 8))(v90, v53);
  }

  v92 = sub_22B35F2EC();
  v93 = v236;
  if ((v92 & 0x100000000) == 0)
  {
    LOBYTE(v244) = 0;
    sub_22B35ED1C();
  }

  sub_22B35F0AC();
  LOBYTE(v244) = 0;
  sub_22B35EB3C();
  if (v227)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v94 = v225;
    v95 = __swift_project_value_buffer(v225, qword_28140BD10);
    swift_beginAccess();
    v96 = v224;
    (*(v93 + 16))(v224, v95, v94);
    v97 = a1;
    v98 = sub_22B36050C();
    v99 = sub_22B360D1C();

    v100 = os_log_type_enabled(v98, v99);
    v241 = v97;
    if (v100)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v244 = v102;
      *v101 = 136315394;
      v103 = sub_22B35F3AC();
      v105 = sub_22B1A7B20(v103, v104, &v244);

      *(v101 + 4) = v105;
      *(v101 + 12) = 2080;
      v106 = v239;
      sub_22B35DE6C();
      sub_22B1A80C8(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v107 = sub_22B36131C();
      v109 = v108;
      (*(v240 + 8))(v106, v53);
      v110 = sub_22B1A7B20(v107, v109, &v244);

      *(v101 + 14) = v110;
      _os_log_impl(&dword_22B116000, v98, v99, "Setting Tombstone for %s as %s", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v102, -1, -1);
      MEMORY[0x23188F650](v101, -1, -1);

      (*(v236 + 8))(v224, v225);
    }

    else
    {

      (*(v93 + 8))(v96, v94);
    }

    v112 = v233;
    v111 = v234;
    v113 = v235;
    v114 = v232;
    sub_22B35DE6C();
    v122 = v237;
    sub_22B36039C();
    v123 = sub_22B3603AC();
    (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
    sub_22B35EB6C();
    v124 = v214;
    sub_22B35F11C();
    v125 = v229;
    v126 = v230;
    if ((*(v229 + 48))(v124, 1, v230) == 1)
    {
      sub_22B123284(v124, &qword_27D8BA570, &qword_22B364DA0);
    }

    else
    {
      v135 = v113;
      v136 = v202;
      (*(v125 + 32))(v202, v124, v126);
      (*(v125 + 16))(v219, v136, v126);
      sub_22B35EB7C();
      v137 = v136;
      v113 = v135;
      (*(v125 + 8))(v137, v126);
    }

    EKEnergySite.resetMetadata()();
    v138 = v231;
  }

  else
  {
    sub_22B35F12C();
    if (v115)
    {
      sub_22B35EB8C();
    }

    sub_22B35F06C();
    v116 = v212;
    v117 = v210;
    if (v118)
    {
      sub_22B35EB1C();
    }

    sub_22B35F0BC();
    if (v119)
    {
      sub_22B35EB4C();
    }

    sub_22B35F43C();
    if (v120)
    {
      sub_22B35EDBC();
    }

    sub_22B35F16C();
    v121 = v211;
    if ((*(v88 + 48))(v117, 1, v211) == 1)
    {
      sub_22B123284(v117, &qword_27D8BA560, &unk_22B366200);
    }

    else
    {
      v127 = v197;
      (*(v88 + 32))(v197, v117, v121);
      (*(v88 + 16))(v198, v127, v121);
      sub_22B35EC5C();
      v128 = v127;
      v82 = v237;
      (*(v88 + 8))(v128, v121);
    }

    sub_22B35F24C();
    sub_22B35ECCC();
    sub_22B35F26C();
    sub_22B35ECDC();
    sub_22B35F28C();
    sub_22B35ECEC();
    sub_22B35F14C();
    if (v129)
    {
      sub_22B35EC4C();
    }

    sub_22B35F08C();
    if (v130)
    {
      sub_22B35EB2C();
    }

    sub_22B35F0DC();
    if (v131)
    {
      sub_22B35EB5C();
    }

    sub_22B35F3BC();
    if (v132)
    {
      sub_22B35ED6C();
    }

    sub_22B35F1CC();
    if (v133)
    {
      sub_22B35EC8C();
    }

    sub_22B35F1AC();
    if (v134)
    {
      sub_22B35EC7C();
    }

    sub_22B35F2CC();
    if (v241(v116, 1, v53) == 1)
    {
      sub_22B123284(v116, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v139 = v240;
      v140 = v199;
      (*(v240 + 32))(v199, v116, v53);
      (*(v139 + 16))(v239, v140, v53);
      sub_22B36039C();
      v141 = sub_22B3603AC();
      (*(*(v141 - 8) + 56))(v82, 0, 1, v141);
      sub_22B35ED0C();
      (*(v139 + 8))(v140, v53);
    }

    v142 = v213;
    sub_22B35F32C();
    if (v241(v142, 1, v53) == 1)
    {
      sub_22B123284(v142, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v143 = v240;
      v144 = v200;
      (*(v240 + 32))(v200, v142, v53);
      (*(v143 + 16))(v239, v144, v53);
      sub_22B36039C();
      v145 = sub_22B3603AC();
      (*(*(v145 - 8) + 56))(v82, 0, 1, v145);
      sub_22B35ED3C();
      (*(v143 + 8))(v144, v53);
    }

    v146 = v215;
    sub_22B35F1FC();
    v147 = v228;
    if (v241(v228, 1, v53) == 1)
    {
      sub_22B123284(v147, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v148 = v240;
      v149 = v201;
      (*(v240 + 32))(v201, v147, v53);
      (*(v148 + 16))(v239, v149, v53);
      sub_22B36039C();
      v150 = sub_22B3603AC();
      (*(*(v150 - 8) + 56))(v82, 0, 1, v150);
      sub_22B35ECAC();
      (*(v148 + 8))(v149, v53);
    }

    sub_22B35F02C();
    sub_22B35EB0C();
    sub_22B35F30C();
    if (v241(v146, 1, v53) == 1)
    {
      sub_22B123284(v146, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v151 = v240;
      v152 = v203;
      (*(v240 + 32))(v203, v146, v53);
      (*(v151 + 16))(v239, v152, v53);
      sub_22B36039C();
      v153 = sub_22B3603AC();
      (*(*(v153 - 8) + 56))(v82, 0, 1, v153);
      sub_22B35ED2C();
      (*(v151 + 8))(v152, v53);
    }

    v154 = v216;
    sub_22B35F34C();
    if (v241(v154, 1, v53) == 1)
    {
      sub_22B123284(v154, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v155 = v240;
      v156 = v204;
      (*(v240 + 32))(v204, v154, v53);
      (*(v155 + 16))(v239, v156, v53);
      sub_22B36039C();
      v157 = sub_22B3603AC();
      (*(*(v157 - 8) + 56))(v82, 0, 1, v157);
      sub_22B35ED4C();
      (*(v155 + 8))(v156, v53);
    }

    v158 = v217;
    sub_22B35F36C();
    if (v241(v158, 1, v53) == 1)
    {
      sub_22B123284(v158, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v159 = v240;
      v160 = v205;
      (*(v240 + 32))(v205, v158, v53);
      (*(v159 + 16))(v239, v160, v53);
      sub_22B36039C();
      v161 = sub_22B3603AC();
      (*(*(v161 - 8) + 56))(v82, 0, 1, v161);
      sub_22B35ED5C();
      (*(v159 + 8))(v160, v53);
    }

    v112 = v233;
    v111 = v234;
    v114 = v232;
    v162 = v218;
    sub_22B35F38C();
    sub_22B35EC9C();
    sub_22B35F11C();
    v164 = v229;
    v163 = v230;
    if ((*(v229 + 48))(v162, 1, v230) == 1)
    {
      sub_22B123284(v162, &qword_27D8BA570, &qword_22B364DA0);
    }

    else
    {
      v165 = v206;
      (*(v164 + 32))(v206, v162, v163);
      (*(v164 + 16))(v219, v165, v163);
      sub_22B35EB7C();
      (*(v164 + 8))(v165, v163);
    }

    v138 = v231;
    v166 = sub_22B35F18C();
    v113 = v235;
    if (v166)
    {
      sub_22B35EC6C();
    }

    if ((sub_22B35F2EC() & 0x100000000) == 0)
    {
      LOBYTE(v244) = 0;
      sub_22B35ED1C();
    }
  }

  v167 = sub_22B35EEBC();
  v168 = *(v112 + 16);
  if (v167)
  {
    v241 = *(v112 + 16);
    v168(v138, v242, v111);
    v169 = v138;
    v170 = v220;
    sub_22B3603CC();
    sub_22B1A80C8(qword_281408638, MEMORY[0x277D07340], MEMORY[0x277D07338]);
    v171 = sub_22B36040C();
    if (v113)
    {

      (*(v221 + 8))(v170, v222);
      (*(v112 + 8))(v169, v111);
      v113 = 0;
    }

    else
    {
      v173 = v172;
      v235 = 0;
      v240 = v171;
      (*(v221 + 8))(v170, v222);
      (*(v112 + 8))(v169, v111);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v174 = v225;
      v175 = __swift_project_value_buffer(v225, qword_28140BD10);
      swift_beginAccess();
      v176 = v236;
      v177 = v207;
      (*(v236 + 16))(v207, v175, v174);
      v178 = a1;

      v179 = sub_22B36050C();
      v180 = sub_22B360CFC();

      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v243 = v182;
        *v181 = 136315650;
        LODWORD(v239) = v180;
        v183 = sub_22B35F3AC();
        v185 = sub_22B1A7B20(v183, v184, &v243);

        *(v181 + 4) = v185;
        *(v181 + 12) = 1024;
        *(v181 + 14) = v196 & 1;
        *(v181 + 18) = 2080;
        v186 = sub_22B1A7B20(v240, v173, &v243);

        *(v181 + 20) = v186;
        _os_log_impl(&dword_22B116000, v179, v239, "Updating site: %s (tokenUpdate: %{BOOL}d with %s", v181, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v182, -1, -1);
        MEMORY[0x23188F650](v181, -1, -1);

        (*(v176 + 8))(v207, v174);
      }

      else
      {

        (*(v176 + 8))(v177, v174);
      }

      v112 = v233;
      v111 = v234;
      v113 = v235;
      v114 = v232;
    }

    v168 = v241;
  }

  v168(v114, v242, v111);
  sub_22B1A80C8(qword_281408638, MEMORY[0x277D07340], MEMORY[0x277D07338]);
  v187 = sub_22B36042C();
  if (v113)
  {
    result = (*(v112 + 8))(v114, v111);
    *v223 = v113;
  }

  else
  {
    v190 = v187;
    v191 = v188;
    (*(v112 + 8))(v114, v111);
    v192 = v208;
    v193 = *v208;
    v194 = v208[1];
    *v208 = v190;
    v192[1] = v191;
    return sub_22B11EDC0(v193, v194);
  }

  return result;
}

uint64_t EKEnergySite.createCKZone()()
{
  v1[5] = v0;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A6E70, 0, 0);
}

uint64_t sub_22B1A6E70()
{
  v1 = sub_22B35F3AC();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = sub_22B35F21C();
    v7 = v6;
    v0[9] = v6;

    sub_22B35F05C();
    if (qword_2814097C0 != -1)
    {
      swift_once();
    }

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22B1A7004;

    return sub_22B3357C4(v5, v7);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v10 = 19;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22B1A7004(void *a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1A7190, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_22B1A7190()
{
  v26 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[11];
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B1A7B20(0x4B43657461657263, 0xEE002928656E6F5ALL, &v25);
    *(v13 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22B116000, v7, v8, "%s error: %@", v13, 0x16u);
    sub_22B123284(v14, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[11];
  sub_22B134CDC();
  swift_allocError();
  *v22 = 19;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t EKEnergySite.deleteCKZone()()
{
  v1[5] = v0;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A750C, 0, 0);
}

uint64_t sub_22B1A750C()
{
  v1 = sub_22B35F04C();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if (qword_2814097C0 != -1)
    {
      swift_once();
    }

    v5 = sub_22B35F04C();
    v7 = v6;
    v0[9] = v6;
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22B1A7690;

    return sub_22B336B9C(v5, v7);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v10 = 19;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22B1A7690()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B1A77D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22B1A77D8()
{
  v26 = v0;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[11];
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B1A7B20(0x4B436574656C6564, 0xEE002928656E6F5ALL, &v25);
    *(v13 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22B116000, v7, v8, "%s error: %@", v13, 0x16u);
    sub_22B123284(v14, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[11];
  sub_22B134CDC();
  swift_allocError();
  *v22 = 19;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_22B1A7AC4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22B1A7B20(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_22B1A7B20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B1A7BEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22B170C58(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22B1A7BEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22B1A7CF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22B3611BC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_22B1A7CF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B1A7D44(a1, a2);
  sub_22B1A7E74(&unk_283EF8090);
  return v3;
}

void *sub_22B1A7D44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22B1A7F60(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22B3611BC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22B36096C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B1A7F60(v10, 0);
        result = sub_22B36115C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B1A7E74(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22B1A7FD4(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22B1A7F60(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA568, &qword_22B364D98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B1A7FD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA568, &qword_22B364D98);
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

uint64_t sub_22B1A80C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22B1A8110(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_22B1A8534();
    v4 = sub_22B3606CC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_22B1A81C0(uint64_t a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281408CF0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BC68);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v9 = 136315650;
    *(v9 + 4) = sub_22B1A7B20(0xD000000000000011, 0x800000022B36BAE0, aBlock);
    *(v9 + 12) = 2080;
    v10 = sub_22B2546D4(*(a1 + 16));
    v12 = sub_22B1A7B20(v10, v11, aBlock);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2080;
    sub_22B254A74();
    sub_22B1A8534();
    v13 = sub_22B3606FC();
    v15 = v14;

    v16 = sub_22B1A7B20(v13, v15, aBlock);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_22B116000, v7, v8, "%s Sending analytics event for [%s]: %s", v9, 0x20u);
    v17 = v20;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_22B2546D4(*(a1 + 16));
  v18 = sub_22B36081C();

  aBlock[4] = sub_22B1A8530;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B1A8110;
  aBlock[3] = &block_descriptor_7;
  v19 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

unint64_t sub_22B1A8534()
{
  result = qword_281409270;
  if (!qword_281409270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281409270);
  }

  return result;
}

void sub_22B1A8580(uint64_t a1, void *a2)
{
  v3 = sub_22B35DF1C();
  v18[7] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18[6] = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36052C();
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35EE6C();
  v19 = sub_22B35EE5C();
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22B3634B0;
  v9 = sub_22B35DEDC();
  *(v8 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v8 + 64) = sub_22B12805C();
  *(v8 + 32) = v9;
  v10 = sub_22B360CCC();
  [v19 setPredicate_];

  v11 = sub_22B360E9C();
  v12 = v11;
  v18[4] = v7;
  v18[5] = v5;
  v18[0] = v3;
  if (v11 >> 62)
  {
    v13 = sub_22B36109C();
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x23188EAC0](i, v12);
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    [a2 deleteObject_];
  }

LABEL_10:

  sub_22B2A534C(2);
  v17 = v19;
}

uint64_t sub_22B1A8B10()
{
  type metadata accessor for EnergyKitAppTrackerManager();
  v0 = swift_allocObject();
  result = sub_22B17499C();
  qword_27D8BB1B8 = v0;
  return result;
}

uint64_t sub_22B1A8B4C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22B35DF1C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A8C14, v1, 0);
}

uint64_t sub_22B1A8C14()
{
  v1 = v0[9];
  if (!*(v1 + 120))
  {
    goto LABEL_6;
  }

  aBlock = v0 + 2;
  v2 = *(v1 + 112);

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = sub_22B2A632C();
    v3 = [v4 newBackgroundContext];
    v5 = sub_22B36081C();
    [v3 setTransactionAuthor_];

    [v3 setMergePolicy_];
    [v3 setUndoManager_];
    [v3 setShouldRefreshAfterSave_];
    [v3 setStalenessInterval_];
    [v3 setShouldDeleteInaccessibleFaults_];
  }

  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  (*(v9 + 16))(v7, v0[8], v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v10, v7, v8);
  *(v12 + v11) = v3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22B1A8F48;
  *(v13 + 24) = v12;
  v0[6] = sub_22B12819C;
  v0[7] = v13;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B32556C;
  v0[5] = &block_descriptor_8;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  v16 = v2;

  [v15 performBlockAndWait_];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
LABEL_6:

    v18 = v0[1];

    return v18();
  }

  return result;
}

void sub_22B1A8F48()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22B1A8580(v0 + v2, v3);
}

uint64_t sub_22B1A8FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_22B35D8BC();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = sub_22B35DF1C();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v7 = sub_22B36052C();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = sub_22B35EE8C();
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A91F4, 0, 0);
}

uint64_t sub_22B1A91F4()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_281408F18 != -1)
    {
      swift_once();
    }

    v0[40] = qword_28140BCA8;
    v5 = swift_task_alloc();
    v0[41] = v5;
    *v5 = v0;
    v5[1] = sub_22B1A93E4;

    return sub_22B242190();
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_22B1A93E4()
{

  return MEMORY[0x2822009F8](sub_22B1A94E0, 0, 0);
}

uint64_t sub_22B1A94E0()
{
  v1 = v0[40];
  v2 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  if ([*(v1 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState] == 1)
  {
    if ([*(v1 + v2) hasOptedToHH2])
    {
      v3 = swift_task_alloc();
      v0[42] = v3;
      *v3 = v0;
      v3[1] = sub_22B1A9890;

      return sub_22B2430B4();
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v5 = v0 + 35;
    v14 = v0[35];
    v15 = v0[30];
    v16 = v0[31];
    v17 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v14, v17, v15);
    v10 = sub_22B36050C();
    v18 = sub_22B360D1C();
    if (!os_log_type_enabled(v10, v18))
    {
      v12 = 0;
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B116000, v10, v18, "HomeKit HH2 not enabled", v13, 2u);
    v12 = 0;
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v5 = v0 + 36;
    v6 = v0[36];
    v7 = v0[30];
    v8 = v0[31];
    v9 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_22B36050C();
    v11 = sub_22B360D1C();
    v12 = 2;
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B116000, v10, v11, "Data sync state not good", v13, 2u);
  }

  MEMORY[0x23188F650](v13, -1, -1);
LABEL_16:
  v19 = *v5;
  v20 = v0[30];
  v21 = v0[31];

  (*(v21 + 8))(v19, v20);
  sub_22B134CDC();
  swift_allocError();
  *v22 = v12;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_22B1A9890(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {

    v4 = sub_22B1AA5E8;
  }

  else
  {
    v4 = sub_22B1A99AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B1A99AC()
{
  v1 = v0[43];
  if (v1 >> 62)
  {
LABEL_29:
    v2 = sub_22B36109C();
    v3 = v0[43];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = v0[33];
    v25 = v0[30];
    v26 = v0[31];
    v27 = __swift_project_value_buffer(v25, qword_28140BD10);
    swift_beginAccess();
    (*(v26 + 16))(v24, v27, v25);
    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B116000, v28, v29, "No matching Home found", v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    v31 = v0[33];
    v32 = v0[30];
    v33 = v0[31];

    (*(v33 + 8))(v31, v32);
    sub_22B134CDC();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[43];
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  v43 = v0 + 17;
  v4 = v0[26];
  v5 = 0;
  sub_22B35F45C();
  v48 = v1 & 0xC000000000000001;
  v41 = v3 + 32;
  v42 = v1 & 0xFFFFFFFFFFFFFF8;
  v49 = v0[44];
  v47 = (v4 + 8);
  v45 = v0;
  v46 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44 = v2;
  while (1)
  {
    if (v48)
    {
      v7 = MEMORY[0x23188EAC0](v5, v0[43]);
    }

    else
    {
      if (v5 >= *(v42 + 16))
      {
        goto LABEL_28;
      }

      v7 = *(v41 + 8 * v5);
    }

    v0[45] = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v50 = v5 + 1;
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[25];
    v1 = v7;
    v11 = [v7 uniqueIdentifier];
    sub_22B35DEFC();

    sub_22B35DECC();
    v12 = v0;
    v13 = *v47;
    v12[46] = *v47;
    v12[47] = v46;
    v13(v8, v10);
    sub_22B35F1EC();
    sub_22B35DEAC();
    v14 = sub_22B35DECC();
    v16 = v15;
    v13(v9, v10);
    if (v14 == sub_22B35DECC() && v16 == v17)
    {
      break;
    }

    v18 = sub_22B36134C();

    if (v18)
    {
      goto LABEL_15;
    }

    v0 = v45;
    v6 = v1;
LABEL_5:

    ++v5;
    if (v50 == v44)
    {
      goto LABEL_17;
    }
  }

LABEL_15:
  v6 = v1;
  v19 = [v1 restrictedGuests];
  sub_22B1972C4();
  v20 = sub_22B360A5C();

  v21 = [v1 currentUser];
  *v43 = v21;
  v22 = swift_task_alloc();
  *(v22 + 16) = v43;
  v1 = v49;
  v23 = sub_22B207D24(sub_22B1ABB4C, v22, v20);

  if (v23)
  {
    v0 = v45;
    goto LABEL_5;
  }

  v37 = v45[21];

  v38 = *(v37 + 16);
  v39 = swift_task_alloc();
  v45[48] = v39;
  *v39 = v45;
  v39[1] = sub_22B1A9F30;
  v40 = v45[19];

  return sub_22B1A2AEC(v40, v38);
}

uint64_t sub_22B1A9F30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_22B1AA4F4;
  }

  else
  {
    v4 = sub_22B1AA044;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B1AA044()
{
  v59 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[26];
  v51 = v0[27];
  v54 = v0[45];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[19];
  v47 = v0[18];
  v49 = v0[25];
  v9 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v1, v9, v2);
  (*(v7 + 16))(v5, v8, v6);
  (*(v4 + 16))(v51, v47, v49);
  v10 = v54;
  v11 = sub_22B36050C();
  v12 = sub_22B360CFC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[49];
    v45 = v0[46];
    v46 = v0[45];
    v50 = v0[31];
    v52 = v0[30];
    v55 = v0[34];
    v14 = v0[27];
    v15 = v0[24];
    v17 = v0[22];
    v16 = v0[23];
    v43 = v0[20];
    v44 = v0[25];
    v18 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58 = v48;
    *v18 = 134219010;
    *(v18 + 4) = v13;
    *(v18 + 12) = 2080;
    sub_22B1ABB04(&qword_2814091E0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v19 = sub_22B36131C();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_22B1A7B20(v19, v21, &v58);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v43;
    *(v18 + 32) = 2080;
    sub_22B1ABB04(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_22B36131C();
    v25 = v24;
    v45(v14, v44);
    v26 = sub_22B1A7B20(v23, v25, &v58);

    *(v18 + 34) = v26;
    *(v18 + 42) = 2080;
    v27 = [v46 name];
    v28 = sub_22B36084C();
    v30 = v29;

    v31 = sub_22B1A7B20(v28, v30, &v58);

    *(v18 + 44) = v31;
    _os_log_impl(&dword_22B116000, v11, v12, "Fetched %ld events between %s with limit %ld for %s at %s", v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v48, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v50 + 8))(v55, v52);
  }

  else
  {
    v32 = v0[46];
    v33 = v11;
    v34 = v0[45];
    v35 = v0[31];
    v53 = v0[30];
    v56 = v0[34];
    v36 = v0[27];
    v38 = v0[24];
    v37 = v0[25];
    v40 = v0[22];
    v39 = v0[23];

    v32(v36, v37);
    (*(v39 + 8))(v38, v40);
    (*(v35 + 8))(v56, v53);
  }

  v57 = v0[49];

  v41 = v0[1];

  return v41(v57);
}

uint64_t sub_22B1AA4F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B1AA5E8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "No homes found", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];

  (*(v9 + 8))(v8, v10);
  sub_22B134CDC();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B1AA7FC(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_22B35DF1C();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = sub_22B35EE8C();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1AA9A4, 0, 0);
}

uint64_t sub_22B1AA9A4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_281408F18 != -1)
    {
      swift_once();
    }

    v0[30] = qword_28140BCA8;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_22B1AAB54;

    return sub_22B242190();
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B1AAB54()
{

  return MEMORY[0x2822009F8](sub_22B1AAC50, 0, 0);
}

uint64_t sub_22B1AAC50()
{
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  if ([*(v1 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState] == 1)
  {
    if ([*(v1 + v2) hasOptedToHH2])
    {
      v3 = swift_task_alloc();
      v0[32] = v3;
      *v3 = v0;
      v3[1] = sub_22B1AAFCC;

      return sub_22B2430B4();
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v6 = v0 + 25;
    v14 = v0[25];
    v15 = v0[21];
    v16 = v0[22];
    v17 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v14, v17, v15);
    v10 = sub_22B36050C();
    v18 = sub_22B360D1C();
    if (!os_log_type_enabled(v10, v18))
    {
      v12 = 0;
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B116000, v10, v18, "HomeKit HH2 not enabled", v13, 2u);
    v12 = 0;
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v6 = v0 + 26;
    v5 = v0[26];
    v7 = v0[21];
    v8 = v0[22];
    v9 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v8 + 16))(v5, v9, v7);
    v10 = sub_22B36050C();
    v11 = sub_22B360D1C();
    v12 = 2;
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B116000, v10, v11, "Data sync state not good", v13, 2u);
  }

  MEMORY[0x23188F650](v13, -1, -1);
LABEL_16:
  v19 = *v6;
  v20 = v0[21];
  v21 = v0[22];

  (*(v21 + 8))(v19, v20);
  sub_22B134CDC();
  swift_allocError();
  *v22 = v12;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_22B1AAFCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = sub_22B1AB7E4;
  }

  else
  {
    v4 = sub_22B1AB0E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B1AB0E8()
{
  v1 = v0[33];
  if (v1 >> 62)
  {
LABEL_29:
    v2 = sub_22B36109C();
    v3 = v0[33];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = v0[24];
    v24 = v0[21];
    v25 = v0[22];
    v26 = __swift_project_value_buffer(v24, qword_28140BD10);
    swift_beginAccess();
    (*(v25 + 16))(v23, v26, v24);
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B116000, v27, v28, "No matching Home found", v29, 2u);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    v30 = v0[24];
    v31 = v0[21];
    v32 = v0[22];

    (*(v32 + 8))(v30, v31);
    sub_22B134CDC();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();

    v34 = v0[1];

    return v34();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[33];
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  v41 = v0 + 14;
  v4 = v0[18];
  v5 = 0;
  sub_22B35F45C();
  v45 = v1 & 0xC000000000000001;
  v39 = v3 + 32;
  v40 = v1 & 0xFFFFFFFFFFFFFF8;
  v43 = v0;
  v44 = (v4 + 8);
  v46 = v0[34];
  v42 = v2;
  while (1)
  {
    if (v45)
    {
      v7 = MEMORY[0x23188EAC0](v5, v0[33]);
    }

    else
    {
      if (v5 >= *(v40 + 16))
      {
        goto LABEL_28;
      }

      v7 = *(v39 + 8 * v5);
    }

    v0[35] = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v47 = v5 + 1;
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[17];
    v1 = v7;
    v11 = [v7 uniqueIdentifier];
    sub_22B35DEFC();

    sub_22B35DECC();
    v12 = *v44;
    (*v44)(v8, v10);
    sub_22B35F1EC();
    sub_22B35DEAC();
    v13 = sub_22B35DECC();
    v15 = v14;
    v12(v9, v10);
    if (v13 == sub_22B35DECC() && v15 == v16)
    {
      break;
    }

    v17 = sub_22B36134C();

    if (v17)
    {
      goto LABEL_15;
    }

    v0 = v43;
    v6 = v1;
LABEL_5:

    ++v5;
    if (v47 == v42)
    {
      goto LABEL_17;
    }
  }

LABEL_15:
  v6 = v1;
  v18 = [v1 restrictedGuests];
  sub_22B1972C4();
  v19 = sub_22B360A5C();

  v20 = [v1 currentUser];
  *v41 = v20;
  v21 = swift_task_alloc();
  *(v21 + 16) = v41;
  v1 = v46;
  v22 = sub_22B207D24(sub_22B1ABAE4, v21, v19);

  if (v22)
  {
    v0 = v43;
    goto LABEL_5;
  }

  v36 = v43[16];

  v37 = *(v36 + 16);
  v38 = swift_task_alloc();
  v43[36] = v38;
  *v38 = v43;
  v38[1] = sub_22B1AB618;

  return sub_22B1A20DC(v37);
}